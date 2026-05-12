unit uT3ReplayManager;

interface

uses
  Classes, SysUtils, Windows, Controls,  uT3ReplayClient,
  uSimManager, uLibSettingTTT, uThreadTimer, uVirtualTime,
  uSteppers, uNewReplay, uT3DetectedTrack, uDBAsset_Scripted,
  uRecorder, DateUtils, tttData;

type
  TOnUpdateGameInfo = procedure (const st: byte;
    const gSpeed: double) of object;

  TT3ReplayManager = class(TThread) // wait thread
  private

    FOnLogStr: TLogStrProc;
    FReader : TDBObjectReader;

    isFirstStart : Boolean;
    FOnUpdateGameInfo: TOnUpdateGameInfo;
    FJumpToTime: TDateTime;
    FJumpMode : Boolean;
    FLastTick : Int64;
    FLastEventID : Int64;
    FOnResetReplay: TNotifyEvent;

    procedure ExecuteClient;
    procedure OnCloseDisplayEvent(Sender : TObject);
    procedure PrepareDisplay;
    procedure ReplayOnEnd(sender: TObject);
    procedure SetOnLogStr(const Value: TLogStrProc);

    function LoadReplayFile: boolean;
    function getGameSpeed: double;
    function getGameState: boolean;
    function GetGameTime: TDateTime;
    procedure setGameSpeed(const Value: double);
    procedure SetJumpToTime(const Value: TDateTime);
    procedure ReplayJumpTo(const Value : Int64 );
    procedure EventClientJumpTo(const Value : TTime);
    procedure SetOnResetReplay(const Value: TNotifyEvent);

  protected
    FGameThread   : TMSTimer;
    FUpdateThread : TMSTimer;
    FUpdateDelay  : TDelayer;
    FMainVTime    : TVirtualTime;
    FGameSpeed    : double;

    FGameState    : TGamePlayState;

    procedure Execute; override;

    procedure FGameThread_OnTerminate(sender: TObject);
    procedure FGameThread_OnRunning(const dt: double); virtual;
    procedure FGameThread_OnPaused(const dt: double); virtual;

    procedure FUpdateThread_OnTerminate(sender: TObject); virtual;
    procedure FUpdateThread_OnRunning(const dt: double); virtual;
    procedure FUpdateThread_OnPaused(const dt: double); virtual;

    procedure OnUpdateDelay(sender: TObject);

  public
    ReplayClients: TThreadList;

    property OnLogStr : TLogStrProc read FOnLogStr write SetOnLogStr;
    property GameTIME: TDateTime read GetGameTime;
    property GameSPEED: double read getGameSpeed write setGameSpeed;
    property GameIsRunning: boolean read getGameState;
    property GameState: TGamePlayState read FGameState;

    property OnUpdateGameInfo: TOnUpdateGameInfo
      read FOnUpdateGameInfo  write FOnUpdateGameInfo;

    procedure OnGameControl(control : integer);
    procedure GameStart; virtual;
    procedure GamePause; virtual;
    procedure GameTerminate; virtual;

    procedure ReaderOnGetFrame(const aEventID: Int64; const aTick : Int64;streamData: TStream);

    constructor Create(CreateSuspended: Boolean);
    destructor Destroy; override;

    property Reader : TDBObjectReader read FReader;
    property JumpToTime : TDateTime read FJumpToTime write SetJumpToTime;
    property OnResetReplay : TNotifyEvent read FOnResetReplay write SetOnResetReplay;
  end;

  TT3ReplayClientThread = class(TThread) // worker thread;
  private
    procedure CreateReplay;
  protected
    procedure Execute; override;
  public
    ReplayClient: TT3ReplayClient;
    destructor Destroy; override;
  end;

var
  ReplayManager: TT3ReplayManager;

implementation

uses  Forms, ufMainDisplay, ufrmLog, uSRRFunction, uGameData_TTT,
  uSimObjects, uCommonLogReplay, uT3Unit, Dialogs,uDataModuleTTT;

//const
//  REPLAY_CLIENTS = 1;

{ TT3ReplayClientThread }

procedure TT3ReplayClientThread.CreateReplay;
begin
  ReplayClient := TT3ReplayClient.Create(nil);
end;

destructor TT3ReplayClientThread.Destroy;
begin
  Terminate;
  FreeAndNil(ReplayClient);
  inherited;
end;

procedure TT3ReplayClientThread.Execute;
begin
  inherited;
  Synchronize(CreateReplay);
end;

{ TT3Replay }

constructor TT3ReplayManager.Create;
begin
  inherited;

  LoadFF_GameSetting(vSettingFile, vGameDataSetting);
  LoadFF_dBaseSetting(vSettingFile, vDBSetting);

  isFirstStart := true;
  FMainVTime    := TVirtualTime.Create;
  FGameSpeed    := 0.0;

  FGameThread   := TMSTimer.Create;
  FGameThread.Interval := 10;
  FGameThread.OnRunning   := FGameThread_OnPaused;
  FGameThread.OnTerminate := FGameThread_OnTerminate;

  FUpdateThread := TMSTimer.Create;
  FUpdateThread.Interval := 50;
  FUpdateThread.OnRunning := FUpdateThread_OnRunning;

  FUpdateDelay := TDelayer.Create;
  FUpdateDelay.DInterval := 0.5;
  FUpdateDelay.OnTime := OnUpdateDelay;
  FUpdateDelay.Enabled := True;

  FGameState    := gsStop;
  FJumpMode   := False;
  FLastTick   := 0;
  FLastEventID  := 0;

  ReplayClients := TThreadList.Create;

  if not LoadReplayFile then begin
    MessageDlg('File Replay Invalid..!', mtError, [mbOK], 0);
    Application.Terminate;
  end;

end;

destructor TT3ReplayManager.Destroy;
var
  i : integer;
  item : TObject;
begin


  FUpdateThread.OnTerminate := nil;
  FUpdateThread.OnRunning := nil;
  FGameThread.OnRunning   := nil;
  FGameThread.OnTerminate := nil;

  FUpdateDelay.Enabled := false;
  FUpdateThread.Enabled := false;
  FGameThread.Enabled := false;

  FUpdateThread.Terminate;
  FGameThread.Terminate;

  try
    with ReplayClients.LockList do
      for I := 0 to Count - 1 do begin
        item := Items[i];
        FreeAndNil(item);
      end;
  finally
    ReplayClients.UnlockList;
  end;

  ReplayClients.Free;
  //FUpdateThread.Free;  --> ini buat hang
  FGameThread.Free;
  FUpdateDelay.Free;
  FMainVTime.Free;

  inherited;
end;


procedure TT3ReplayManager.EventClientJumpTo(const Value: TTime);
var
  dt1, dt2 : TDateTime;
  h,n,s: integer;
  y,m,d, hh,nn,ss,mm : Word;
begin

  dt1 := GameTIME;

  DecodeTime(Value,hh,nn,ss,mm);
  DecodeDate(dt1,y,m,d);

  dt2 := EncodeDateTime(y,m,d,hh,nn,ss,mm);

  if (dt2 <= dt1) or (dt2 > ReplayManager.Reader.RecordStop) then
  begin
    MessageDlg('Jump time not valid..', mtWarning, [mbOK], 0);
    Exit;
  end;

  JumpToTime := dt2;
  OnGameControl(5);

end;

procedure TT3ReplayManager.Execute;
begin
  inherited;

  if vGameDataSetting.ReplayScreen <= 0 then exit;

  ExecuteClient;

end;

procedure TT3ReplayManager.ExecuteClient;
const MAX_HANDLE = 64;
var
  i : integer;
  hndlArr : Array [0..MAX_HANDLE-1] of THandle;
  thrArr  : Array of TT3ReplayClientThread;
begin
  inherited;

  SetLength(thrArr, vGameDataSetting.ReplayScreen);

  for I := 0 to vGameDataSetting.ReplayScreen - 1 do begin
    thrArr[i]   := TT3ReplayClientThread.Create(False);
    hndlArr[i]  := thrArr[I].Handle;
    Sleep(100);
  end;
  WaitForMultipleObjects(vGameDataSetting.ReplayScreen, @hndlArr, True, INFINITE);

  try
    with ReplayClients.LockList do
      for I := 0 to vGameDataSetting.ReplayScreen - 1 do begin
        Add(thrArr[i]);
      end;
  finally
    ReplayClients.UnlockList;
  end;

  PrepareDisplay;
end;

procedure TT3ReplayManager.FGameThread_OnPaused(const dt: double);
begin

end;

procedure TT3ReplayManager.FGameThread_OnRunning(const dt: double);
var
  i,j, gS: integer;
  nLongWord : LongWord ;
  track : TT3DetectedTrack;
begin

  if GameSPEED < 1.0 then begin
       // slow down baby...
  end
  else begin

    try
      with ReplayClients.LockList do
        for I := 0 to Count - 1 do begin
          with TT3ReplayClientThread(Items[i]).ReplayClient do begin
            SimWeapons.Validate;
            SimDevices.Validate;
            SimPlatforms.Validate;
            simNonRealPlatform.Validate;

            if not IsController then begin
              SimDetectedTrackList.Validate;

              // avoid track blinking
              for j := 0 to SimDetectedTrackList.itemCount - 1 do begin
                track := SimDetectedTrackList.getObject(j) as TT3DetectedTrack;
                track.ISBlinking := false;
              end;
            end;
          end;
        end;
    finally
      ReplayClients.UnlockList;
    end;

    gS := Round(GameSPEED);
    for I := 0 to gs - 1 do begin
      FMainVTime.IncreaseMillisecond(dt * 1000.0 );

      if assigned(FReader) then
      begin
        nLongWord := FMainVTime.GetMillisecond;
        if FReader.ReaderState = rdReading then
          FReader.PlayNextFrames(nLongWord);
      end;

      try
        with ReplayClients.LockList do
          for j := 0 to Count - 1 do begin
            with TT3ReplayClientThread(Items[j]).ReplayClient do begin

              SimPlatforms.Moves(dt);

              SimDevices.Moves(dt);
              SimWeapons.Moves(dt);
              simNonRealPlatform.Moves(dt);

              if not IsController then begin
                SimDetectedTrackList.Moves(dt);
              end;

            end;
          end;
      finally
        ReplayClients.UnlockList;
      end;
    end;
  end;

end;

procedure TT3ReplayManager.FGameThread_OnTerminate(sender: TObject);
begin

end;

procedure TT3ReplayManager.FUpdateThread_OnPaused(const dt: double);
begin
end;

procedure TT3ReplayManager.FUpdateThread_OnRunning(const dt: double);
var
  j : integer;
begin
  try
    with ReplayClients.LockList do
      for j := 0 to Count - 1 do
        with TT3ReplayClientThread(Items[j]).ReplayClient do
          SimMap.DrawMap;

  finally
    ReplayClients.UnlockList;
  end;

  FUpdateDelay.Run(dt);
end;

procedure TT3ReplayManager.FUpdateThread_OnTerminate(sender: TObject);
begin

end;

procedure TT3ReplayManager.GamePause;
var
  i: Integer;
begin

  if FGameState = gsPlaying then begin
    FGameThread.OnRunning := FGameThread_OnPaused;
  end;

  FGameState    := gsStop;

end;

procedure TT3ReplayManager.GameStart;
var
  j : integer;
begin
  if Assigned(FReader) then
  begin
    if FReader.ReaderState = rdEnd then
    begin
      FMainVTime.DateTimeOffset := FReader.RecordStart;
      FMainVTime.Reset();
      FReader.ResetReader;

      if Assigned(FOnResetReplay) then
        FOnResetReplay(Self);

      try
        with ReplayClients.LockList do
          for j := 0 to Count - 1 do
            with TT3ReplayClientThread(Items[j]).ReplayClient do begin
              ResetReplay;
              ResetScenario;
              LoadScenarioID(vGameDataSetting);
            end;

      finally
        ReplayClients.UnlockList;
      end;
    end;

  end;

  if isFirstStart then
    FGameThread.Enabled := true;

  if FGameState = gsStop then begin
    FGameThread.OnRunning := FGameThread_OnRunning;
    if FGameThread.Suspended then
      FGameThread.Start;
  end;

  FGameState    := gsPlaying;

  if FUpdateThread.Suspended then
    FUpdateThread.Start;

  isFirstStart := false;

  FOnUpdateGameInfo( byte(FGameState) , GameSPEED);
end;

procedure TT3ReplayManager.GameTerminate;
begin
  FGameState    := gsTerminated;
  FGameThread.Terminate;
end;

function TT3ReplayManager.getGameSpeed: double;
begin
  result := FGameSpeed;
end;

function TT3ReplayManager.getGameState: boolean;
begin
  result := FGameState = gsPlaying;
end;

function TT3ReplayManager.GetGameTime: TDateTime;
begin
  result := FMainVTime.GetTime;
end;

function TT3ReplayManager.LoadReplayFile: boolean;
var
  FullName : String;
  RecAvail : Boolean;
begin
  Result := (vGameDataSetting.GamePlayMode.GameType = 2);
  FullName := GetFullNameRecsFileFromName(vGameDataSetting.GamePlayMode.RecFileName);

  if Result then
  begin
    FReader := TDBObjectReader.Create(dmTTT);
    RecAvail := FReader.InitiateReader(vGameDataSetting.GamePlayMode.RecFileName);
    FReader.OnReaderFrameNotify := ReaderOnGetFrame;
    FReader.OnReaderEnd := ReplayOnEnd;
    FMainVTime.DateTimeOffset := FReader.RecordStart;

    if not RecAvail then
    begin
      Result := False;
    end;
  end
end;

procedure TT3ReplayManager.OnCloseDisplayEvent(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TT3ReplayManager.OnGameControl(control: integer);
var
  i: integer;
  gs : extended;
begin

  case control of
    1:
      begin
        GameSpeed := 1.0;

        GameStart;

      end;
    2:
      begin
        GamePause;
        GameSpeed := 0.0;

      end;
    3:
      begin ;
        if GameSpeed >= 1.0 then
        begin

          gs := Round(GameSpeed);
          if abs(gs) < 0.0001 then // nol
            gs := 1.0
          else
          begin
            gs := 2.0 * gs;
            if gs > 16.0 then
              exit;
          end;

          GameSpeed := gs;
        end;


      end;
    4 : // rewind
    begin

      GameSpeed := 0.0;
      GamePause;

      FMainVTime.DateTimeOffset := FReader.RecordStart;
      FMainVTime.Reset();
      FReader.ResetReader;

      if Assigned(FOnResetReplay) then
        FOnResetReplay(Self);

      try
        with ReplayClients.LockList do
          for i := 0 to Count - 1 do
          begin
            with TT3ReplayClientThread(Items[i]).ReplayClient do
            begin
              ResetReplay;
              ResetScenario;
              LoadScenarioID(vGameDataSetting);
            end;
          end;

      finally
        ReplayClients.UnlockList;
      end;
    end;

    5 : // jump to...
    begin
      if GameTIME > FJumpToTime then
        Exit;

      GameSpeed := 0.0;
      GamePause;

      Screen.Cursor := crHourGlass;
      ReplayJumpTo(MilliSecondsBetween(FJumpToTime,FReader.RecordStart ));
      Screen.Cursor := crDefault;

    end;
  end;

  FOnUpdateGameInfo(byte(FGameState) , GameSPEED);

end;

procedure TT3ReplayManager.OnUpdateDelay(sender: TObject);
var
  i : integer;
begin
  try
    with ReplayClients.LockList do
      for i := 0 to Count - 1 do begin
        TT3ReplayClientThread(Items[i]).ReplayClient.Display.UpdateForm;
        TT3ReplayClientThread(Items[i]).ReplayClient.Display.UpdateCenterOnHook;
        TT3ReplayClientThread(Items[i]).ReplayClient.Display.DisplayGameTime(GameSPEED,FMainVTime.GetTime);
      end;

  finally
    ReplayClients.UnlockList;
  end;

  if Assigned(FOnUpdateGameInfo) then
    FOnUpdateGameInfo( byte(FGameState) , GameSPEED);
end;

procedure TT3ReplayManager.PrepareDisplay;
  procedure SetDisplay(Display : TfrmMainDIsplay; MonitorIdx : integer);
  var
    sm : integer;
  begin

    with Display do begin
      BorderStyle := bsToolWindow;

      if MonitorIdx <= (Screen.MonitorCount - 1) then
        sm := MonitorIdx
      else
        sm := Screen.MonitorCount - 1;

      Width  := Screen.Monitors[sm].Width;
      Height := Screen.Monitors[sm].Height;
      Top    := Screen.Monitors[sm].Top;
      Left   := Screen.Monitors[sm].Left;

      Show;
    end;
  end;
var
  i : integer;
begin
  try
    with ReplayClients.LockList do
      for I := 0 to Count - 1 do begin

        with TT3ReplayClientThread(Items[i]).ReplayClient do begin
          SetDisplay(Display,i);
          Display.OnCloseForm   := OnCloseDisplayEvent;
          Display.OnGameControl := Self.onGameControl;
          Display.DisplayID := i;
          OnJumpTo              := EventClientJumpTo;
          EventManager.OnLogEventStr := FOnLogStr;
          OnLogStr := FOnLogStr;
          Display.DisplayValidTime(FReader.RecordStart, FReader.RecordStop);
        end;

      end;
  finally
    ReplayClients.UnlockList;
  end;
end;

procedure TT3ReplayManager.ReaderOnGetFrame(const aEventID: Int64;
  const aTick : Int64;streamData: TStream);
var
  i,j,k         : Integer;
  doUpdatePos   : Boolean;
  dtVTime       : double;
  pf            : TT3PlatformInstance;

  embarkObj                     : TSimObject;

  rCmd_Platform                 : TRecCmd_Platform;
  rCmd_Platform_MOVE            : TRecCmd_Platform_MOVE;
  rCmd_Set_LauncherQty          : TRecCmd_Set_LauncherQty;
  rCmd_ModeEmcon                : TRecCmd_ModeEmcon ;
  rCmd_Set_Quantity             : TRecCmd_Set_Quantity;
  rCmd_Set_Status               : TRecCmd_Set_Status;
  rCmd_EngageTrack              : TRecCmd_EngageTrack;
  rRadarNoiseJammer             : TrecRadarNoiseJammer;
  rCmd_Sensor                   : TRecCmd_Sensor ;
  rCmd_SensorIFF                : TRecCmd_SensorIFF;
  rCmd_Embark                   : TRecCmd_Embark ;
  rCmdSYNCH                     : TRecCmdSYNCH;
  rCmd_LaunchMissile            : TRecCmd_LaunchMissile;
  rCmd_GunFire                  : TRecCmd_GunFire ;
  rCmd_GameCtrl                 : TRecCmd_GameCtrl;
  rTCP_Request                  : TRecTCP_Request;
  rCmd_LaunchRP                 : TRecCmd_LaunchRP;
  rCmd_LaunchNonRP              : TRecCmd_LaunchNonRP;
  rCmd_SelectPlatformToRemove   : TRecCmd_SelectPlatformToRemove ;
  rCmd_Platform_SET_PROPERTY    : TRecCmd_Platform_SET_PROPERTY ;
  rCmd_NRP_SET_PROPERTY         : TRecCmd_NRP_SET_PROPERTY ;
  rCmd_ESM_SET_PROPERTY         : TRecCmd_ESM_SET_PROPERTY;
  rCmd_Platform_Repair          : TRecCmd_Platform_Repair ;
  rCmd_MergeTrack               : TRecCmd_MergeTrack;
  rCmd_DataLink                 : TRecCmd_DataLink;
  rCmd_DataLink_AddTrack        : TRecCmd_DataLink_AddTrack;
  rCmd_FC                       : TRecCmd_FC;
  rCmd_Embark_Landing           : TRecCmd_Embark_Landing;
  rCmd_Platform_CHANGE_TRACKNUMBER  : TRecCmd_Platform_CHANGE_TRACKNUMBER ;
  rCmd_FiringModeWeapon         : TRecFiringModeWeapon;
  rEngagementModeWeapon         : TRecEngagementModeWeapon;
  rCmd_LaunchChaff              : TRecCmd_LaunchChaff;
  rCmd_LaunchChaffState         : TRecCmd_LaunchChaffState;
  rCmd_ChaffLauncherProperties  : TRecCmd_ChaffLauncherProperties;
  rCmd_LaunchBubble             : TRecCmd_LaunchBubble;
  rCmd_LaunchBubbleState        : TRecCmd_LaunchBubbleState;
  rCmd_BubbleLauncherProperties : TRecCmd_BubbleLauncherProperties;
  rCmd_LaunchBomb               : TRecCmd_LaunchBomb;
  rCmd_LaunchMine               : TRecCmd_LaunchMine;
  rCmd_Sync_Hit_BombMine        : TRecCmd_Sync_Hit_BombMine;
  rSinc_Waypoint                : TrecSinc_Waypoint;
  rSinc_RBLW                    : TrecSinc_RBLW;
  rSinc_BOLW                    : TrecSinc_BOLW;
  rMissile_envi                 : TrecMissile_envi;
  rSinc_Envi                    : TrecSinc_Envi;
  rCmd_GameSetting              : TRecCmd_GameSetting;
  r_MapData                     : TRec_MapData ;
  r_PlatformHitPlatform         : TRecPlatformHitPlatform;
  r_WeaponOut                   : TRecWeaponOut;
  r_PlatformHancur              : TRecPlatformHancur;
  rCmd_DataLink_RemoveTrack     : TrecCmd_DataLink_RemoveTrack;
  rCmd_TargetIFF                : TRecCmd_TargetIFF;
  rCmd_Vectac                   : TRecVectac;
  rCmd_PlatformFree             : TRecPlatformFreeMe;
  rTorpedoPanelWeapon           : TRecTorpedoPanelWeapon;
  RecCmd_LaunchSonobuoy         : TRecCmd_LaunchSonobuoy;
  rSyncObject                   : TRecSyncPos;

  rCmd_OverlayStaticShape       : TRecCmd_OverlayStaticShape;
  rCmd_OverlayTemplate          : TRecCmd_OverlayTemplate;
  rCmd_OverlayDynamicTrack      : TRecCmd_OverlayDynamicTrack;
  rCmd_OverlayDynamicShape      : TRecCmd_OverlayDynamicShape;
begin

  doUpdatePos := False;

  if not (FLastEventID = CPID_SYNC_OBJECT)  then
    doUpdatePos := True;

  // update pos before apply event when jump mode is true
  if FJumpMode and doUpdatePos then
  begin

    dtVTime := ( aTick - FLastTick ) / 1000; // second

    try
      with ReplayClients.LockList do
        for j := 0 to Count - 1 do begin
          with TT3ReplayClientThread(Items[j]).ReplayClient do begin

            SimPlatforms.Moves(dtVTime);

            SimDevices.Moves(dtVTime);
            SimWeapons.Moves(dtVTime);
            simNonRealPlatform.Moves(dtVTime);

            if not IsController then begin
              SimDetectedTrackList.Moves(dtVTime);
            end;

          end;
        end;
    finally
      ReplayClients.UnlockList;
    end;

    FMainVTime.SetMilliSecond(aTick);

  end;

  FLastTick := aTick;
  FLastEventID := aEventID;

  with ReplayClients.LockList do
    for i := 0 to Count - 1 do
    begin
      with TT3ReplayClientThread(Items[i]).ReplayClient do begin

        case aEventID of

        CPID_SYNC_OBJECT :
        begin

          if FJumpMode then
          begin

            streamData.Read(rSyncObject,sizeof(rSyncObject));
            k := 0;

            while k <= Length(rSyncObject.InstanceIndexes) - 1 do
            begin

              if rSyncObject.InstanceIndexes[k] = -1 then
                Break;

              pf := FindT3PlatformByID(rSyncObject.InstanceIndexes[k]);

              if Assigned(pf) then
              begin
                with rSyncObject.PositionPoints[k] do
                begin
                  pf.setPositionX(FPosX);
                  pf.setPositionY(FPosY);
                  pf.setPositionZ(FPosZ);

                  pf.Speed := FSpeed;
                  pf.Heading := FHeading;
                  pf.GroundSpeed := FGroundSpeed;
                  pf.Altitude := FAltitude;
                  pf.Health := FHealth;
                  pf.Course := FCourse;
//                  pf.FuelEndurance.FuelMinimum := FFuelEndurance.FuelMinimum;
//                  pf.FuelEndurance.FuelCruise  := FFuelEndurance.FuelCruise;
//                  pf.FuelEndurance.FuelHigh    := FFuelEndurance.FuelHigh;
//                  pf.FuelEndurance.FuelMaximum := FFuelEndurance.FuelMaximum;
                  pf.FuelCapacity := FFuelCapacity;
                  pf.FuelRemaining := FFuelRemaining;

                  pf.LaunchTime := FLaunchTime;
                  pf.DormantTime := FDormantTime;
                  pf.Dormant := FDormant;

                end;
              end;

              Inc(k);
            end;

            FMainVTime.SetMilliSecond(aTick);

          end;

        end;

        CPID_CMD_PLATFORM :
        begin
          try
            streamData.Read(rCmd_Platform,sizeof(rCmd_Platform));
            netRecv_platform_cmd( @rCmd_Platform, CONST_SZOFR_Cmd_Platform);
          finally
          end;
        end;
        CPID_CMD_PLATFORM_REPOS :
        begin
          try
            streamData.Read( rCmd_Platform_MOVE ,CONST_SZOFR_Cmd_Platform_MOVE);
            Frame_CmdPlatform_Move( @rCmd_Platform_MOVE, CONST_SZOFR_Cmd_Platform_MOVE);
          finally
          end;
        end;

        // add all events here
        CPID_CMD_DATALINK_REMOVETRACK :
        begin
          try
            streamData.Read(rCmd_DataLink_RemoveTrack,CONST_SZOFR_Cmd_DataLink_RemoveTrack );
            Frame_Cmd_DataLink_RemoveTrack(@rCmd_DataLink_RemoveTrack,CONST_SZOFR_Cmd_DataLink_RemoveTrack );
          finally
          end;
        end;
        CPID_CMD_PLATFORM_HANCUR :
        begin
          try
            streamData.Read(r_PlatformHancur,CONST_SZOFR_PlatformHancur );
            Frame_CmdPlatformHancurin(@r_PlatformHancur,CONST_SZOFR_PlatformHancur );
          finally
          end;
        end;
        CPID_CMD_WEAPON_OUT :
        begin
          try
            streamData.Read(r_WeaponOut,CONST_SZOFR_WeaponOut );
            Frame_CmdWeaponInOut(@r_WeaponOut,CONST_SZOFR_WeaponOut );
          finally
          end;
        end;
        CPID_CMD_SYNC_HIT_MINE_BOMB :
        begin
          try
            streamData.Read(rCmd_Sync_Hit_BombMine,CONST_SZOFR_Sync_Hit_BombMine );
            Frame_CmdSync_Hit_Mine_Bomb(@rCmd_Sync_Hit_BombMine,CONST_SZOFR_Sync_Hit_BombMine );
          finally
          end;
        end;
        CPID_CMD_PLATFORM_HIT_PLATFORM:
        begin
          streamData.Read(r_PlatformHitPlatform,CONST_SZOFR_PlatformHitPlatform );
        end;
        CPID_CMD_MAPS :
        begin
          streamData.Read(r_MapData,CONST_SZOFR_MapData );
        end;
        CPID_GAME_SETTING :
        begin
          try
            streamData.Read( rCmd_GameSetting,CONST_SZOFR_Cmd_GameSetting );
            ChangeGameSetting(rCmd_GameSetting);
          finally
          end;
        end;
        CPID_TORPEDO_SYNC_PANEL_WEAPON :
        begin
          try
            streamData.Read(rTorpedoPanelWeapon,CONST_SZOFR_Torpedo_Sync_Panel );
            netRecv_CmdTorpedoSyncPanelWeapon(@rTorpedoPanelWeapon, CONST_SZOFR_Torpedo_Sync_Panel);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_TORPEDO :
        begin
          try
            streamData.Read(rCmd_LaunchMissile,CONST_SZOFR_Cmd_LaunchMissile );
            Frame_CmdLaunchTorpedo(@rCmd_LaunchMissile, CONST_SZOFR_Cmd_LaunchMissile);
          finally
          end;
        end;
        CPID_CMD_LAUNCHER_CHAFF_PROPS :
        begin
          try
            streamData.Read(rCmd_ChaffLauncherProperties,CONST_SZOFR_Cmd_ChaffLauncherProperties );
            LauncherChaffProp(rCmd_ChaffLauncherProperties);
          finally
          end;
        end;
        CPID_CMD_LAUNCHER_CHAFF_STATE :
        begin
          try
            streamData.Read(rCmd_LaunchChaffState,CONST_SZOFR_Cmd_LaunchChaffState );
            LauncherChaffState(rCmd_LaunchChaffState);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_CHAFF :
        begin
          try
            streamData.Read(rCmd_LaunchChaff,CONST_SZOFR_Cmd_LaunchChaff );
            LaunchChaff(rCmd_LaunchChaff);
          finally
          end;
        end;
        CPID_CMD_ENVI :
        begin
          try
            streamData.Read( rSinc_Envi,CONST_SZOFR_Sinc_Envi );
            netRecv_cmd_environment(@rSinc_Envi,CONST_SZOFR_Sinc_Envi);
          finally
          end;
        end;
        CPID_CMD_Missile_Envi :
        begin
          try
            streamData.Read( rMissile_envi,CONST_SZOFR_Missile_envi );
            netRecv_SincMissileEnvi(@rMissile_envi,CONST_SZOFR_Missile_envi);
          finally
          end;
        end;
        CPID_SincBOLW :
        begin
          try
            streamData.Read( rSinc_BOLW,CONST_SZOFR_Sinc_BOLW );
            netRecv_SincBOLWMissile(@rSinc_BOLW,CONST_SZOFR_Sinc_BOLW);
          finally
          end;
        end;
        CPID_SincRBLW :
        begin
          try
            streamData.Read( rSinc_RBLW,CONST_SZOFR_Sinc_RBLW );
            netRecv_SincRBLWMissile(@rSinc_RBLW,CONST_SZOFR_Sinc_RBLW);
          finally
          end;
        end;
        CPID_SincWaypoint :
        begin
          try
            streamData.Read( rSinc_Waypoint,CONST_SZOFR_Sinc_Waypoint );
            netRecv_SincWaypoint(@rSinc_Waypoint,CONST_SZOFR_Sinc_Waypoint);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_MINES :
        begin
          try
            streamData.Read( rCmd_LaunchMine,CONST_SZOFR_Cmd_LaunchMine );
            LaunchMine(rCmd_LaunchMine);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_BOMB :
        begin
          try
            streamData.Read( rCmd_LaunchBomb,CONST_SZOFR_Cmd_LaunchBomb );
            Frame_CmdLaunchBomb(@rCmd_LaunchBomb,CONST_SZOFR_Cmd_LaunchBomb);
          finally
          end;
        end;
        CPID_CMD_LAUNCHER_BUBBLE_PROPS :
        begin
          try
            streamData.Read( rCmd_BubbleLauncherProperties,CONST_SZOFR_Cmd_BubbleLauncherProperties );
            LauncherBubbleProp(rCmd_BubbleLauncherProperties);
          finally
          end;
        end;
        CPID_CMD_LAUNCHER_BUBBLE_STATE :
        begin
          try
            streamData.Read( rCmd_LaunchBubbleState,CONST_SZOFR_Cmd_LaunchBubbleState );
            LauncherBubbleState(rCmd_LaunchBubbleState);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_BUBBLE :
        begin
          try
            streamData.Read( rCmd_LaunchBubble,CONST_SZOFR_Cmd_LaunchBubble );
            LaunchBubble(rCmd_LaunchBubble);
          finally
          end;
        end;
        CPID_CMD_ENGAGEMENTMODE :
        begin
          try
            streamData.Read( rEngagementModeWeapon,CONST_SZOFR_EngagementModeWeapon );
            LaunchMissileEngageProps(rEngagementModeWeapon);
          finally
          end;
        end;
        CPID_CMD_FIRINGMODE :
        begin
          try
            streamData.Read(rCmd_FiringModeWeapon,CONST_SZOFR_Cmd_FiringModeWeapon );
            LaunchMissileProps(rCmd_FiringModeWeapon);
          finally
          end;
        end;
        CPID_CMD_CHANGE_TRACK_NUMBER :
        begin
          try
            streamData.Read(rCmd_Platform_CHANGE_TRACKNUMBER,CONST_SZOFR_Cmd_Platform_CHANGE_TRACKNUMBER );
            // implementasi belum
          finally
          end;
        end;
        CPID_CMD_EMBARK_LAND :
        begin
          try
            streamData.Read( rCmd_Embark_Landing,CONST_SZOFR_Cmd_Embark_Landing );
            netRecv_Cmd_Embark_Land(@rCmd_Embark_Landing,CONST_SZOFR_Cmd_Embark_Landing);

            embarkObj := FindT3PlatformByID(rCmd_Embark_Landing.EmbarkPlatformID);
            if Assigned(embarkObj) then
            begin
              if embarkObj.ClassNameIs('TT3PlatformInstance') then
                TT3PlatformInstance(embarkObj).FreeChilds;

              embarkObj.FreeMe := True;
              embarkObj.AbsoluteFree := True;
            end;
          finally
          end;
        end;
        CPID_CMD_ASSIGN_FIRECONTROL :
        begin
          try
            streamData.Read( rCmd_FC,CONST_SZOFR_Cmd_FC );
          finally
          end;
        end;
        CPID_CMD_DATALINK_ADDTRACK :
        begin
          try
            streamData.Read( rCmd_DataLink_AddTrack,CONST_SZOFR_Cmd_DataLink_AddTrack );
            netRecv_CMD_DataLink_AddTrack(@rCmd_DataLink_AddTrack,CONST_SZOFR_Cmd_DataLink_AddTrack);
          finally
          end;
        end;
        CPID_CMD_DATALINK :
        begin
          try
            streamData.Read( rCmd_DataLink,CONST_SZOFR_Cmd_DataLink );
            Frame_Cmd_DataLink(@rCmd_DataLink,CONST_SZOFR_Cmd_DataLink);
          finally
          end;
        end;
        CPID_CMD_MERGE_TRACK :
        begin
          try
            streamData.Read( rCmd_MergeTrack,CONST_SZOFR_Cmd_MergeTrack );
            Frame_Cmd_MergeTrack(@rCmd_MergeTrack,CONST_SZOFR_Cmd_MergeTrack);
          finally
          end;
        end;
        CPID_CMD_PLATFORM_REPAIR :
        begin
          try
            streamData.Read(rCmd_Platform_Repair,CONST_SZOFR_Cmd_Platform_Repair );
            RepairPlatform(rCmd_Platform_Repair);
          finally
          end;
        end;
        CPID_CMD_ESM_SET_PROPERTY :
        begin
          try
            streamData.Read( rCmd_ESM_SET_PROPERTY,CONST_SZOFR_Cmd_ESM_SET_PROPERTY );
            Frame_CmdESM_CHANGE_PROPERTY(@rCmd_ESM_SET_PROPERTY, CONST_SZOFR_Cmd_ESM_SET_PROPERTY);
          finally
          end;
        end;
        CPID_CMD_UPDATE_NRP_PROPERTY :
        begin
          try
            streamData.Read(rCmd_NRP_SET_PROPERTY,CONST_SZOFR_Cmd_NRP_SET_PROPERTY );
      //        netRecv_CmdUpdateNRP_PROPERTY(@rCmd_NRP_SET_PROPERTY, CONST_SZOFR_Cmd_NRP_SET_PROPERTY);
          finally
          end;
        end;
        CPID_CMD_UPDATE_PLATFORM_PROPERTY :
        begin
          try
            streamData.Read(rCmd_Platform_SET_PROPERTY,CONST_SZOFR_Cmd_Platform_SET_PROPERTY );
      //        netRecv_CmdUpdatePlatform_PROPERTY(@rCmd_Platform_SET_PROPERTY, CONST_SZOFR_Cmd_Platform_SET_PROPERTY);
          finally
          end;
        end;
        CPID_CMD_REMOVE_PLATFORM :
        begin
          try
            streamData.Read(rCmd_SelectPlatformToRemove,CONST_SZOFR_Cmd_SelectPlatformToRemove );
            RemovePlatformByOperator(rCmd_SelectPlatformToRemove);

            Display.RefreshTrackList;
            Display.SetPerspectivesOption;
          finally
          end;
        end;
        CPID_CMD_OVERLAYSTATICSHAPE :
        begin
          try
            streamData.Read( rCmd_OverlayStaticShape,CONST_SZOFR_Cmd_OverlayStaticShape );
            Frame_CmdOverlayStaticShape(@rCmd_OverlayStaticShape,CONST_SZOFR_Cmd_OverlayStaticShape);
          finally
          end;
        end;
        CPID_CMD_DYNAMIC_TRACK :
        begin
          try
            streamData.Read( rCmd_OverlayDynamicTrack,CONST_SZOFR_Cmd_OverlayDynamicTrack );
            Frame_CmdDynamicTrack(@rCmd_OverlayDynamicTrack, CONST_SZOFR_Cmd_OverlayDynamicTrack);
          finally
          end;
        end;
        CPID_CMD_OVERLAYTEMPLATE :
        begin
          try
            streamData.Read( rCmd_OverlayTemplate,CONST_SZOFR_Cmd_OverlayTemplate );
            Frame_CmdOverlayTemplate(@rCmd_OverlayTemplate, CONST_SZOFR_Cmd_OverlayTemplate);
          finally
          end;
        end;
        CPID_CMD_OVERLAYDYNAMICSHAPE :
        begin
          try
            streamData.Read( rCmd_OverlayDynamicShape,CONST_SZOFR_Cmd_OverlayDynamicShape );
            Frame_CmdOverlayDynamicShape(@rCmd_OverlayDynamicShape, CONST_SZOFR_Cmd_OverlayDynamicShape);
          finally
          end;
        end;

        CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM :
        begin
          try
            streamData.Read(rCmd_LaunchNonRP,CONST_SZOFR_Cmd_LaunchNonRP );
      //        netRecv_CmdLaunch_NonRP(@rCmd_LaunchNonRP, CONST_SZOFR_Cmd_LaunchNonRP);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_RUNTIME_PLATFORM :
        begin
          try
            streamData.Read(rCmd_LaunchRP,CONST_SZOFR_Cmd_LaunchRP );
            LaunchRuntimePlatform(rCmd_LaunchRP);
          finally
          end;
        end;
        CPID_TCP_REQUEST :
        begin
          try
            streamData.Read(rTCP_Request,CONST_SZOFR_TCP_Request );
          finally
          end;
        end;
        CPID_CMD_GAME_CTRL :
        begin
          try
            streamData.Read(rCmd_GameCtrl,CONST_SZOFR_Cmd_GameCtrl );
          finally
          end;
        end;
        {
        CPID_CMD_GUN_FIRE_STATE :
        }
        CPID_CMD_GUN_FIRE :
        begin
          try
            streamData.Read( rCmd_GunFire , CONST_SZOFR_Cmd_GunFire);
            GunFire(rCmd_GunFire);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_MISSILE :
        begin
          try
            streamData.Read( rCmd_LaunchMissile , CONST_SZOFR_Cmd_LaunchMissile);
            Frame_CmdLaunchMissile( @rCmd_LaunchMissile, CONST_SZOFR_Cmd_LaunchMissile);
          finally
          end;
        end;
        CPID_CMD_SYNCH :
        begin
          try
            streamData.Read( rCmdSYNCH , CONST_SZOFR_CmdSYNCH);
            Frame_CmdSYNCH( @rCmdSYNCH, CONST_SZOFR_CmdSYNCH );
          finally
          end;
        end;
        CPID_CMD_LAUNCH_EMBARK :
        begin
          try
            streamData.Read( rCmd_Embark , CONST_SZOFR_Cmd_Embark);
            Frame_CmdEmbark( @rCmd_Embark, CONST_SZOFR_Cmd_Embark);
          finally
          end;
        end;
        CPID_CMD_SENSOR_IFF :
        begin
          try
            streamData.Read( rCmd_SensorIFF,CONST_SZOFR_Cmd_SensorIFF );
            Frame_CmdSensorIFF( @rCmd_SensorIFF, CONST_SZOFR_Cmd_SensorIFF);
          finally
          end;
        end;
        CPID_CMD_SENSOR :
        begin
          try
            streamData.Read( rCmd_Sensor , CONST_SZOFR_Cmd_Sensor);
            Frame_CmdSensor( @rCmd_Sensor, CONST_SZOFR_Cmd_Sensor);
          finally
          end;
        end;
        CPID_CMD_RADAR_NOISE_JAMMER :
        begin
          try
            streamData.Read( rRadarNoiseJammer,CONST_SZOFR_RadarNoiseJammer );
            Frame_CmdRadarNoiseJammer( @rRadarNoiseJammer, CONST_SZOFR_RadarNoiseJammer);
          finally
          end;
        end;
        CPID_CMD_ENGAGE_TRACK :
        begin
          try
            streamData.Read( rCmd_EngageTrack,CONST_SZOFR_Cmd_EngageTrack );
            netRecv_EngageTrack( @rCmd_EngageTrack, CONST_SZOFR_Cmd_EngageTrack);
          finally
          end;
        end;
        CPID_CMD_SET_STATUS :
        begin
          try
            streamData.Read( rCmd_Set_Status,CONST_SZOFR_Cmd_Set_Status );
            netRecv_SetStatus(@rCmd_Set_Status,CONST_SZOFR_Cmd_Set_Status );
          finally
          end;
        end;
        CPID_CMD_SET_QUANTITY :
        begin
          try
            streamData.Read( rCmd_Set_Quantity,CONST_SZOFR_Cmd_Set_Quantity );
            netRecv_SetQuantity(@rCmd_Set_Quantity,CONST_SZOFR_Cmd_Set_Quantity );
          finally
          end;
        end;
        CPID_CMD_SET_LAUNCHERQTY :
        begin
          try
            streamData.Read( rCmd_Set_LauncherQty,CONST_SZOFR_Cmd_Set_LauncherQty );
            netRecv_SetLauncherQty(@rCmd_Set_LauncherQty,CONST_SZOFR_Cmd_Set_LauncherQty );
          finally
          end;
        end;
        CPID_CMD_EMCON_MODE :
        begin
          try
            streamData.Read( rCmd_ModeEmcon,CONST_SZOFR_Cmd_ModeEmcon );
            netRecv_CmdEmcon(@rCmd_ModeEmcon,CONST_SZOFR_Cmd_ModeEmcon );
          finally
          end;
        end;
        CPID_CMD_TARGET_IFF :
        begin
          try
            streamData.Read( rCmd_TargetIFF , CONST_SZOFR_Cmd_TargetIFF);
            Frame_CmdTargetIFF( @rCmd_TargetIFF , CONST_SZOFR_Cmd_TargetIFF);
          finally
          end;
        end;
        CPID_CMD_VECTAC :
        begin
          try
            streamData.Read( rCmd_Vectac , CONST_SZOFR_Vectac);
            Frame_CmdVectac(@rCmd_Vectac , CONST_SZOFR_Vectac);
          finally
          end;
        end;
        CPID_CMD_PLAT_GROUP_CHANGE :
        begin

        end;
        CPID_PLATFORM_FREEME :
        begin
          try
            streamData.Read(rCmd_PlatformFree , CONST_SZOFR_Free_Platform);
            Frame_CmdPlatformFreeMe(@rCmd_PlatformFree , CONST_SZOFR_Free_Platform);
          finally
          end;
        end;
        CPID_CMD_LAUNCH_SONOBUOY :
        begin
          try
            streamData.Read(RecCmd_LaunchSonobuoy, CONST_SZOFR_Cmd_LaunchSonobuoy);
            Frame_CmdLaunchSonobuoy(@RecCmd_LaunchSonobuoy, CONST_SZOFR_Cmd_LaunchSonobuoy);
          finally

          end;
        end;
      end;
    end;
  end;

  streamData.Free;

end;

procedure TT3ReplayManager.ReplayJumpTo(const Value: Int64);
var
  dtVTime : double;
  j : Integer;
begin

  FJumpMode := True;

  FReader.PlayNextFrames(Value);

  if Value > FMainVTime.GetMillisecond then
  begin
    dtVTime := ( Value - FMainVTime.GetMillisecond ) / 1000; // second

    try
      with ReplayClients.LockList do
        for j := 0 to Count - 1 do begin
          with TT3ReplayClientThread(Items[j]).ReplayClient do begin

            SimPlatforms.Moves(dtVTime);

            SimDevices.Moves(dtVTime);
            SimWeapons.Moves(dtVTime);
            simNonRealPlatform.Moves(dtVTime);

            if not IsController then begin
              SimDetectedTrackList.Moves(dtVTime);
            end;

          end;
        end;
    finally
      ReplayClients.UnlockList;
    end;

    FMainVTime.SetMilliSecond(Value);
  end;

  FJumpMode := False;

end;

procedure TT3ReplayManager.ReplayOnEnd(sender: TObject);
begin
  GameSPEED := 0.0;
  GamePause;

  FOnLogStr('TT3ReplayManager', 'Replay Info : Replay "'+ FReader.ReplayName + '" Finished. ');
end;

procedure TT3ReplayManager.setGameSpeed(const Value: double);
begin
  FGameSpeed := Value;

  if Assigned(FOnUpdateGameInfo) then
    FOnUpdateGameInfo(byte(FGameState), GameSPEED);
end;

procedure TT3ReplayManager.SetJumpToTime(const Value: TDateTime);
begin
  FJumpToTime := Value;
end;

procedure TT3ReplayManager.SetOnLogStr(const Value: TLogStrProc);
begin
  FOnLogStr := Value;
end;

procedure TT3ReplayManager.SetOnResetReplay(const Value: TNotifyEvent);
begin
  FOnResetReplay := Value;
end;

end.

