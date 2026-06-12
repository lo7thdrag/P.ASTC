unit uNetSessionClient;

interface

uses

  Classes, OverbyteIcsWSocket,  uTCPClient, uNetSessionData,
  uBaseNetHandler, uExecuter, uThreadTimer, uSteppers, uT3GroupList,
  uGamePlayType;

type

  TNetSessionClient = class(TBaseNetHandler)
  protected
    FThread     : TMSTimer;
    FNetOnline  : boolean;
    FNetConnect : TDelayer;
    FTCPClient  : TTCPClient;

    FAppGame    : TAppExecute;
    FAppDBEdit  : TAppExecute;
    FAppSynchMap: TAppExecute;

    FGameSessionInfo : TSessionVar;

    // controller
    FDBEditSessionInfo : TSessionVar;

    FSesionMembers: TStrings;
    FGroupList: T3GroupList;

  protected
    FOnReceiveOnlineList: TNotifyEvent;
    FOnExecuteApp   : TNotifyEvent;
    FOnTerminateApp : TNotifyEvent;

    procedure eventExecDBEdit(sender :TObject);
    procedure eventTerminDBEdit(sender :TObject);

  private
    FMyIPAddress,
    FMyConsoleName : string;
    FIsInstructor  : boolean;

    FOnReceiveSession: TNotifyEvent;

    function getGameSession: boolean;
    function getGameScenarioID: integer;

  protected
    FTimeREQ : TDateTime;
    FTimeFlag : word;

    procedure netOnConnected (sender: TObject);
    procedure netOnDisConnected (sender: TObject);

    procedure FNetConnectOnTimer(sender: TObject);

    procedure threadOnRunning(const dt: double);

    procedure netOnRecv_Session (apRec: PAnsiChar; aSize: Word);
    procedure netSend_RequestSession;

    procedure netSend_RequestClientList; // for assignment
    procedure netOnRecv_SessionOnlineList (apRec: PAnsiChar; aSize: Word);

    procedure netOnRecv_CubicleAssign (apRec: PAnsiChar; aSize: Word);
    procedure netOnRecv_SynchTime(apRec: PAnsiChar; aSize: Word);

    procedure netOnRecv_Notify(apRec: PAnsiChar; aSize: Word);
  public
    CubicleGroupAssign : TAssignGroup;   //daftar group assignment untuk ip ini.

    constructor Create;
    destructor Destroy; override;

    procedure ApplySetting; override;
    procedure StartNetworking; override;
    procedure StopNetworking; override;
    // T3 specific

    procedure SendStartGameSession(const scID: integer;
      const excName: string;
      const snapshotName: string;
      const cGPMType : byte;
      const cGPMFName : string);

    procedure SendTerminateGameSession;
    procedure ConnectGameSession;
    procedure DeleteGameSession;

    function StartDBEditSession: boolean;

    procedure RequestOnlineList;
    procedure SendCubicleAssign(const ipAdd: string;
      const cmd: byte; const param: Integer);
    procedure SendRequestSynchMap();

    property GameSessionExist: boolean read getGameSession;
    property GameSessionSCID: integer read getGameScenarioID;
    property OnReceiveOnlineList: TNotifyEvent
      read  FOnReceiveOnlineList write FOnReceiveOnlineList;
    property OnReceiveSession: TNotifyEvent
      read  FOnReceiveSession write FOnReceiveSession;
    property ConsoleName: string read FMyConsoleName;
    property IpAddress: string read FMyIPAddress;
    property IsController: boolean read FIsInstructor;
    property OnExecuteApp: TNotifyEvent read FOnExecuteApp write FOnExecuteApp;
    property OnTerminateApp: TNotifyEvent read FOnTerminateApp write FOnTerminateApp;
  end;

var
   theClient : TNetSessionClient;
   j : integer = 1;

  procedure BeginClient;
  procedure EndClient;

implementation

uses
  Windows,SysUtils, uStringFunc, uLibSettingTTT, uNetBaseSocket, uAppUtils;


procedure BeginClient;
begin
  vSettingFile := getFileSetting;

  LoadFF_NetSetting(vSettingFile, vNetSetting);
  LoadFF_NetClientSetting(vSettingFile, vNetClientSetting);
  LoadFF_dBaseSetting(vSettingFile, vDBSetting);

  LoadFF_AppSetting(vSettingFile, vAppSetting);
  LoadFF_GameSetting(vSettingFile, vGameDataSetting);

  LoadFF_CubicalAssignSetting(vSettingFile, vCubicalAssignSetting);


  theClient := TNetSessionClient.Create;

end;

procedure EndClient;
begin

  theClient.Free;
end;


//==============================================================================
{ TNetSessionServer }


constructor TNetSessionClient.Create;
begin
  CubicleGroupAssign := TAssignGroup.Create;
  FSesionMembers := TStringList.Create;

  FGroupList := T3GroupList.Create;

  FTCPClient := TTCPClient.Create;
  FNetSock   := FTCPClient;

  FTCPClient.OnConnected    := netOnConnected;
  FTCPClient.OnDisConnected := netOnDisConnected;

  with FGameSessionInfo do begin
    SessionType := ssPlaying;
    StateActive := false;
    ScenarioID  := -1;
  end;

  FAppGame    := TAppExecute.Create;
  FAppGame.OnStartExecute := nil;
  FAppGame.OnEndExecute   := nil;

  with FDBEditSessionInfo do begin
    SessionType := ssEditing;
    StateActive := false;
    ScenarioID := -1;
  end;

  FAppDBEdit  := TAppExecute.Create;
  FAppDBEdit.OnStartExecute := eventExecDBEdit;
  FAppDBEdit.OnEndExecute   := eventTerminDBEdit;

  FAppSynchMap := TAppExecute.Create;


  FNetConnect := TDelayer.Create;

  FNetConnect.DInterval := 2.0;
  FNetConnect.OnTime    := FNetConnectOnTimer;
  FNetConnect.Enabled   := false;

  FThread   := TMSTimer.Create;
  FThread.Interval := 200;
  FThread.OnRunning := threadOnRunning;

end;

destructor TNetSessionClient.Destroy;
begin
  CubicleGroupAssign.Free;

  FThread.Free;
  FNetConnect.Free;

  FTCPClient.CloseSocket;
  FTCPClient.Disconnect;
  FTCPClient.Free;

  FNetSock := nil;

  FAppDBEdit.Free;
  FAppGame.Free;

  FSesionMembers.Free;
  FGroupList.Free;

  inherited;
end;

procedure TNetSessionClient.ApplySetting;
var i: integer;
    ss: TStrings;
    found: boolean;
    ip,host: string;
begin
//  FPortSession := IntTostr(vNetSetting.SessionPort);
  FMyIPAddress := '';

  FGroupList.LoadFromFile(vGameDataSetting.GroupSetting);
  FAppGame.FExecFname     := vAppSetting.GameClientName;
  FAppDBEdit.FExecFname   := vAppSetting.DBEditorName;
  FAppSynchMap.FExecFname := vAppSetting.MapSynchName;

  //why not ?
  //if vNetSetting.AutoStart then
  StartNetworking;

  ss := TStringList.Create;
  if GetHostandIPList(host, ss) then begin
    /// periksa semua, jika ada salah satu ip masuk di daftar controller,
    ///  maka jadilah controller.
    FIsInstructor  := false;
    for I := 0 to ss.Count - 1 do begin
      ip := ss[i];
      FIsInstructor  := FIsInstructor or  FGroupList.IsController(ip);
      if FIsInstructor then begin
        FMyIPAddress   := ip;
        FMyConsoleName := FGroupList.GetConsoleName(ip);
        Break;
      end;
    end;


    if not FIsInstructor then begin
      I := 0;
      found := false;
      while not found and (i< ss.Count) do begin

        ip := ss[i];
        found := FGroupList.IsGroupMember(ip);

        inc(i);
      end;
      if found then begin
        FMyIPAddress   := ip;
        FMyConsoleName := FGroupList.GetConsoleName(FMyIPAddress);
      end;
    end;
  end;

  ss.Free;
end;


//= protected method ===========================================================
procedure TNetSessionClient.netOnConnected (sender: TObject);
begin
  netSend_RequestSession; // request game session

end;

procedure TNetSessionClient.netOnDisConnected (sender: TObject);
begin

end;

function TNetSessionClient.getGameScenarioID: integer;
begin
  result := FGameSessionInfo.ScenarioID ;

end;

function TNetSessionClient.getGameSession: boolean;
begin
  result := FGameSessionInfo.StateActive;

end;

procedure TNetSessionClient.FNetConnectOnTimer(sender: TObject);
var sessionPort: string;
begin
  if FNetOnline and not FTCPClient.Connected then begin
    sessionPort := IntToStr(vNetSetting.SessionPort);
    FTCPClient.Connect(vNetClientSetting.ServerIP, sessionPort);
  end;
end;

procedure TNetSessionClient.threadOnRunning(const dt: double);
begin
  FNetConnect.Run(dt);
  FTCPClient.GetPacket;
end;


procedure TNetSessionClient.StartNetworking;
var sessionPort: string;
begin
  // request sender, not request handler.
  FTCPClient.RegisterProcedure(CPID_REQ,          nil,
    SizeOf(TRecRequest));

  FTCPClient.RegisterProcedure(CPID_NOTIFY,          netOnRecv_Notify,
    SizeOf(TRecNotify));

  FTCPClient.RegisterProcedure(CPID_SESSIONSTATE, netOnRecv_Session,
    SizeOf(TRecSessionState));

  FTCPClient.RegisterProcedure(CPID_SESSIONONLINELIST, netOnRecv_SessionOnlineList,
    SizeOf(TRecNodeOnlineList));

  FTCPClient.RegisterProcedure(CPID_CUBICLEASSIGN, netOnRecv_CubicleAssign,
   SizeOf(TRecCubAssign));

  FTCPClient.RegisterProcedure(CPID_SYNCH_TIME, netOnRecv_SynchTime ,
    SizeOf(TRecServerTime));

  sessionPort := IntToStr(vNetSetting.SessionPort);
  FTCPClient.Connect(vNetClientSetting.ServerIP, sessionPort);

  FNetOnline := true;
  FNetConnect.Enabled := true;

  FThread.Enabled := true;
end;

procedure TNetSessionClient.StopNetworking;
begin
  FThread.Enabled := false;
  FNetOnline := False;
  FNetConnect.Enabled := false;
end;

// Client session routine:
// instructor can send 'CID_UPDATE'
// all client can receive 'CID_INFO'

procedure TNetSessionClient.eventExecDBEdit(sender :TObject);
begin

 if Assigned(FOnExecuteApp) then
    FOnExecuteApp(nil);

end;

procedure TNetSessionClient.eventTerminDBEdit(sender :TObject);
begin
  if Assigned(FOnTerminateApp) then
    FOnTerminateApp(nil);

end;


procedure TNetSessionClient.netOnRecv_Session (apRec: PAnsiChar; aSize: Word);
var rec  : ^TRecSessionState;
    OrdID  : Integer;
    {strIP, }strData,
    sSnap   : string;
    nType   : TSessionType;
    nState  : boolean;
    nSCID   : Integer;
    gpmType : TGamePlayType;
    gpmFName: string;
//    strIP: string;

begin
  rec := @aprec^;

  OrdID   := rec^.Order;
  nType   := TSessionType(rec^.SessionType);
  nState  := Boolean(rec^.SessionStat) ; // <> 0;
  nSCID   := rec^.ScenarioID;
  sSnap   := rec^.SnapshotName ;
  gpmType := TGamePlayType(rec^.GPMType);
  gpmFName:= rec^.GPMFName;

  if (nType = ssPlaying) then begin
    //if in authorize user then then

    case OrdID of
      CID_INFO : begin
        with FGameSessionInfo do begin
          StateActive   := Boolean(rec^.SessionStat);
          ScenarioID    := rec^.ScenarioID;
          SnapshotName  := rec^.SnapshotName;
          GamePlayMode.GameType    := gpmType;
          GamePlayMode.RecFileName := rec^.GPMFName;
        end;
      end;
      CID_CREATE : begin
        if (FGameSessionInfo.StateActive)  then
          FAppGame.Terminates;

        with FGameSessionInfo do begin

          StateActive := nState; // harusnya true
          ScenarioID  := nSCID;

          vGameDataSetting.ScenarioID     := nSCID;
          vGameDataSetting.SnapshotName   := sSnap;
          vGameDataSetting.GamePlayMode.GameType    := rec^.GPMType ;
          vGameDataSetting.GamePlayMode.RecFileName := gpmFName ;

          SaveFF_GameSetting(vSettingFile, vGameDataSetting);

          strData := 'Execute Game Client with ScenarioID = ' + IntToStr(nscID);

          if not IsController then  begin
            if CubicleGroupAssign.Count > 0 then
//              FAppGame.Executes;
//              if Assigned(FOnExecuteApp) then
//                FOnExecuteApp(self);

              FAppGame.Executes;


          end

        end;
      end;
      CID_DESTROY: begin
        with FGameSessionInfo do begin

          StateActive := nState; // harusnya false
          ScenarioID  := nSCID;
          SnapshotName:= '';
          GamePlayMode.GameType    := gpmScenario;
          GamePlayMode.RecFileName := '';

        end;
        strData := 'Terminate game session.';

        FAppGame.Terminates;

        if processExists(vAppSetting.RemoteServerName) then
           CloseCurrentHandleApplication(vAppSetting.RemoteServerName);

        if processExists(vAppSetting.RemoteClientName) then
          CloseCurrentHandleApplication(vAppSetting.RemoteClientName);

      end;
    end;
  end;

  if Assigned(FOnReceiveSession) then
    FOnReceiveSession(self);


 // if instructor say 'PLAY NOW', then launch the game client
//    CekSessionChanged();
end;

procedure TNetSessionClient.netSend_RequestSession;
var req   : TRecRequest;
{    sPort : string;}
begin
{  if not FTCPClient.Connected then begin
    sPort :=  IntToStr(vNetSetting.SessionPort);
    FTCPClient.Connect(vNetClientSetting.ServerIP, sPort);
  end;}
  FTimeFlag         := Random(255);
  req.RequestID     := CREQID_SYNCH_TIME;
  req.RequestParam  := FTimeFlag;
  FTimeREQ          := now;
  FTCPClient.SendData(CPID_REQ, @req);

  //di pindah waktu connect aja
  req.RequestID     := CREQID_GAME_SESSION;
  FTCPClient.SendData(CPID_REQ, @req);

end;

procedure TNetSessionClient.netSend_RequestClientList; // for assignment
var req: TRecRequest;
begin
  req.RequestID := CREQID_ONLINE_LIST;
  FTCPClient.SendData(CPID_REQ, @req);
end;

procedure TNetSessionClient.netOnRecv_SessionOnlineList(apRec: PAnsiChar; aSize: Word);
var rec: ^TRecNodeOnlineList;
    ss, ss1, ss2 : TStrings;
//  I,b: Integer;

begin
  //j := 1;
  rec := @apRec^;
  ss  := TStringList.Create;
  ss1 := TStringList.Create;
  ss2 := TStringList.Create;

 // RecToOnlineList(rec^, ss);

  if j <> 2 then
  begin
    ss.Free;
    FSesionMembers.Clear;

    RecToOnlineList(rec^, ss1);
    ss.AddStrings(ss1);

    FSesionMembers.AddStrings(ss);

    ss1.Free;
  end
  else
  begin
    RecToOnlineList(rec^, ss2);
    ss.AddStrings(ss2);

    FSesionMembers.AddStrings(ss);

    //b := FSesionMembers.Count;

    if Assigned(FOnReceiveOnlineList) then
      FOnReceiveOnlineList(FSesionMembers);

    ss2.Free;
  end;

  if j <> 2 then
  begin
    j := 2;
    netSend_RequestClientList;
  end
  else
    j := 1;


end;

//== public method =============================================================
//------------------------------------------------------------------------------
procedure TNetSessionClient.SendStartGameSession(const scID: integer;
  const excName: string;
  const snapshotName: string;
  const cGPMType : byte;
  const cGPMFName : string);
var rs : TRecSessionState;
begin
  rs.Order := CID_CREATE;
  rs.SessionType  := Byte(ssPlaying);
  rs.ScenarioID   := scID;
  rs.SessionStat  := Byte(True);
  rs.SessionID    := 0;
  rs.ExerciseName := LimitStr(excName, 60);
  rs.SnapshotName := LimitStr(snapshotName, 20);
  rs.GPMType      := cGPMType;
  rs.GPMFName     := cGPMFName;
  FTCPClient.SendData(CPID_SESSIONSTATE, @rs);
  //client Create a session. automaticaly connect to.
end;

procedure TNetSessionClient.SendTerminateGameSession;
var rs : TRecSessionState;
begin
  rs.Order := CID_DESTROY;
  rs.SessionType  := Byte(ssPlaying);
  rs.ScenarioID   := 0;                  // ignored
  rs.SessionStat  := Byte(True);         // ignored
  rs.SessionID    := 0;                  // ignored
  rs.GPMType      := 0;
  FTCPClient.SendData(CPID_SESSIONSTATE, @rs);
end;


//------------------------------------------------------------------------------
{
procedure TNetSessionClient.ConnectGameSession;
var rs : TRecSessionState;
begin

  rs.Order := CID_CONNECT;
  rs.SessionType  := Byte(ssPlaying);
  rs.ScenarioID   := 0;                  // ignored
  rs.SessionStat  := Byte(True);         // ignored
  rs.SessionID    := 0;                  // ignored

  FTCPClient.SendData(CPID_SESSIONSTATE, @rs);
end;
procedure TNetSessionClient.DeleteGameSession;
var rs : TRecSessionState;
begin
  rs.Order := CID_DISCONNECT;
  rs.SessionType  := Byte(ssPlaying);
  rs.ScenarioID   := 0;                  // ignored
  rs.SessionStat  := Byte(True);         // ignored
  rs.SessionID    := 0;                  // ignored

  FTCPClient.SendData(CPID_SESSIONSTATE, @rs);
end;
}
procedure TNetSessionClient.ConnectGameSession;
begin
   //if IsController then

  with FGameSessionInfo do begin

    if  StateActive  then begin
      if FAppGame.Active then
         FAppGame.Terminates;

      FAppGame.Executes;
    end;

  end;


end;

procedure TNetSessionClient.DeleteGameSession;
begin
// delete replay
end;


function TNetSessionClient.StartDBEditSession: boolean;
begin
  if FAppGame.Active then begin
    FAppGame.Terminates;
  end;

   // terminate dulu ?
  if FAppDBEdit.Active then begin
     FAppDBEdit.Terminates;
  end;

  FAppDBEdit.ExecutesAndWait;
  result := true;
end;


procedure TNetSessionClient.RequestOnlineList;
var rq: TRecRequest;
begin
  rq.RequestID := CREQID_ONLINE_LIST;
  FTCPClient.SendData(CPID_REQ, @rq);

end;

// -- assign cubicle to client -------------------------------------------------

procedure TNetSessionClient.SendCubicleAssign(const ipAdd: string;
 const cmd: Byte; const param: Integer);
var rq: TRecCubAssign;
begin
  rq.cmdID    := cmd;
  rq.GroupID  := param;
  rq.pid.ipReceiver := StrIp_To_LongIp(ipAdd);
  rq.LongIP   := rq.pid.ipReceiver;

  FTCPClient.SendData(CPID_CUBICLEASSIGN, @rq);
end;


procedure TNetSessionClient.netOnRecv_CubicleAssign(apRec: PAnsiChar;
  aSize: Word);
var rq: ^TRecCubAssign;
    ip: string;
    i: Integer;
begin
  rq := @apRec^;
  ip := LongIp_To_StrIp(rq^.LongIP);
  // ipne sopo to ?

  case rq.cmdID  of
    CMD_ASSIGN_CLEAR : begin
      CubicleGroupAssign.Clear;

      // clear from file setting
      SetLength(vCubicalAssignSetting.GroupIDs, 0);
      SaveFF_CubicalAssignSetting(vSettingFile, vCubicalAssignSetting);
    end;
    CMD_ASSIGN_ADD: begin
      CubicleGroupAssign.Add(rq^.GroupID);

    end;
    CMD_ASSIGN_END: begin
      // end of assignment; save to file setting;
      SetLength(vCubicalAssignSetting.GroupIDs, CubicleGroupAssign.Count);

      for I := 0 to CubicleGroupAssign.Count - 1 do
        vCubicalAssignSetting.GroupIDs[i] := CubicleGroupAssign.AssList[i];

      SaveFF_CubicalAssignSetting(vSettingFile, vCubicalAssignSetting);
    end;

  end;

end;
//------------------------------------------------------------------------------

procedure TNetSessionClient.netOnRecv_SynchTime(apRec: PAnsiChar; aSize: Word);
var r: ^TRecServerTime;
    svrTime: TDateTime;
    st: TSystemTime;
begin
  r := @apRec^;
  if r^.flag = FTimeFlag then begin
    svrTime := 0.5 * (Now - FTimeREQ) + r^.ServerTime;
    DateTimeToSystemTime(svrTime, st);

    SetLocalTime(st);
    FTimeFlag := 0;
  end;

end;

procedure TNetSessionClient.netOnRecv_Notify(apRec: PAnsiChar; aSize: Word);
var r: ^TRecNotify;
begin
  r := @apRec^;
  if r^.NotifyID = CNOT_MAPSYNCH then begin
    FAppSynchMap.Executes;
  end;
end;

procedure TNetSessionClient.SendRequestSynchMap();
var r: TRecRequest;
begin
  r.RequestID := CREQID_MAPSYNCH;
  FTCPClient.SendData(CPID_REQ, @r);


end;

end.
