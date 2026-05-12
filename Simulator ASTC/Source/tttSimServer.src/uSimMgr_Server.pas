// ini komentar
unit uSimMgr_Server;

interface

uses
   MapXLib_TLB, Classes, SysUtils, Windows,
   uSteppers, uLibSettingTTT, uThreadTimer , uVirtualTime, uSimContainers, uT3simManager,
   uDBAssetObject , tttData, uGameData_TTT, uNetSessionData,
   uCommonLogReplay, uNewReplay, uNewLog , uGamePlayType ,
   uSRRFunction, uSnapshotRec, uT3Missile,
   uT3Weapon, uT3Radar, uT3Sonar, uT3UnitContainer,uT3Sensor , uT3counterMeasure,
   uT3Vehicle , uT3Unit, uT3Gun, uT3Torpedo, uT3Bomb, uT3Mine, uT3Sonobuoy, uT3Visual, uT3OtherSensor
   ,uDBAsset_Scripted, uDBAsset_Vehicle, uBaseCoordSystem , uSnapshotData,
   uT3DataLink, uRecorder, uT3Listener ;

type
//==============================================================================
// TTT simCenter
// contain: 'session' , scenario management,  objects run..

//==============================================================================
  TOnUpdateGameInfo = procedure (const st: byte;
    const gSpeed: double) of object;

//==============================================================================
  TSimMgr_Server = class(TT3SimManager)
  protected //thread  procedures
    FCounter : Double; // untuk delay check bomb mine;

    procedure FGameThread_OnRunning(const dt: double); override;
    procedure FGameThread_OnPaused(const dt: double); override;

    procedure FNetworkThread_OnRunning(const dt: double);override;
  private
    FOnUpdateGameInfo: TOnUpdateGameInfo;
    FConnectDelay: TDelayer;
    FRecorderListener : TPropertyEventListener;

    procedure setBroadcastData(const Value: boolean);
    function getBroadcastData: boolean;

    procedure OnPropertyChange(Sender : TObject;Props : TPropsID; Value : Integer);overload;
    procedure OnPropertyChange(Sender : TObject;Props : TPropsID; Value : Double) ;overload;
    procedure OnPropertyChange(Sender : TObject;Props : TPropsID; Value : Boolean);overload;
    procedure OnPropertyChange(Sender : TObject;Props : TPropsID; Value : Byte) ;overload;
    procedure OnPropertyChange(Sender : TObject;Props : TPropsID; Value : String);overload;

  protected //networks procedures
    FSendCounter: integer;
    FNetSender    : TDelayer;
    FNetSendGT    : TDelayer;
    FSyncPosWrite : TDelayer;
    FGamePlayType : TGamePlayType;
    FAllCubAssign: TStrings;
    FWriter       : TDBObjectWriter;

    IDEmbarkTemp : Integer;

    procedure OnDelayerNotify(Sender : TObject);override;
    procedure setGameSpeed(const Value: double); override;

    // send UDP
    procedure NetSendUDP_BroadCast(sender: TObject);
    procedure NetSendUDP_MovementData(sender: TObject);
    procedure netSendUDP_GameTime(sender: TObject);
    procedure NetSendUDP_Target_Missile(sender : TObject);

    //received TCP
    procedure netRecv_TCPRequest(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_TCPRemote(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_TCPSnapshot(apRec: PAnsiChar; aSize: Word);

    //received TCP
    procedure netRecv_CmdPlatform_Move(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdSensor(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdSonarDeploy(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdIFFSearchMode(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdSensorIFF(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdTargetIFF(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdEmbark(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdSYNCH(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLaunchMissile(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdMissileProperties(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdMissileEngageProperties(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLaunchTorpedo(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLaunchChaff(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLauncherChaffState(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLauncherProperties(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CopyChaffLauncherProperty(apRec: PAnsiChar; aSize: word);
    procedure netRecv_GameSetting(apRec: PAnsiChar; aSize: Word);

    procedure netRecv_CmdDecoys(apRec: PAnsiChar; aSize: word);
    //Bubble
    procedure netRecv_CmdLaunchBubble(apRec: PAnsiChar; aSize: word);
    procedure netRecv_CmdBubbleLauncherProperties(apRec: PAnsiChar; aSize: word);
    procedure netRecv_CmdLaunchBubbleState(apRec: PAnsiChar; aSize: word);

    //check mine Bomb mine
    procedure CheckBombMine(aDeltaMs : Double);
    //Mine
    procedure netRecv_CmdLaunchMines(apRec: PAnsiChar; aSize: word);
    //Bomb
    procedure netRecv_CmdLaunchBomb(apRec: PAnsiChar; aSize: word);
    //Sonobuoy
    procedure netRecv_CmdLaunchSonobuoy(apRec: PAnsiChar; aSize: word);

    //hit bomb mine sync
    procedure netRecv_CmdSync_Hit_Mine_Bomb(apRec: PAnsiChar; aSize: word); virtual;
    procedure netRecv_CmdGunFire(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_CmdGameControl(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLaunch_RP(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdLaunch_NonRP(apRec: PAnsiChar; aSize: Word);

    {Prince}
    procedure netRecv_CmdOverlayDynamicShape(apRec: PAnsiChar; aSize: word);
    procedure netRecv_CmdOverlayStaticShape(apRec: PAnsiChar; aSize: word);
    procedure netRecv_CmdOverlayTemplate(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdDynamicTrack(apRec: PAnsiChar; aSize: word);
    procedure netRecv_CmdTransferSonobuoy(apRec: PAnsiChar; aSize: word);
    //--------------------------------------------------------------------------

    procedure netRecv_CmdUpdatePlatform_PROPERTY(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdRemovePlatfromByOperator(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdChangeTrackNumber(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdUpdateNRP_PROPERTY(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdESM_CHANGE_PROPERTY(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_CmdPlatform_Repair(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_Cmd_FireControl(apRec : PAnsiChar; aSize: word); override;
    procedure netRecv_Cmd_LastUpdate_Platform(apRec: PAnsiChar; aSize: word);

    ///session section
    procedure netRecv_Session_Cub_Assign(apRec: PAnsiChar; aSize: Word);
    procedure netSend_CubicleAssignInfo(const toIp: string);

    procedure RemovePlatformByOperator(rec : TRecCmd_SelectPlatformToRemove);

    function LaunchRuntimePlatform(const rec : TRecCmd_LaunchRP ): TT3PlatformInstance; override;
    function UpdatePropertyPlatform(const rec : TRecCmd_Platform_SET_PROPERTY): TT3PlatformInstance; override;

    procedure ChaffLauncherFire(Sender : TObject); override;
    procedure ChaffLauncherStop(Sender : TObject); override;

    procedure BubbleLauncherFire(Sender : TObject); override;
    procedure BubbleLauncherStop(Sender : TObject); override;

    procedure GunFire(rec: TRecCmd_GunFire); override;
    procedure OnBombFire(Sender : TObject);

    //added by choco : modify communication
    procedure netRecv_ModifComm(apRec : PAnsiChar; aSize: Word);
    procedure FOnConnectDelay(sender: TObject);
    procedure netRecvMapCmd (apRec: PAnsiChar; aSize: Word);

    //added by choco : Vectac Plan
    procedure netRecv_Vectac(apRec: PAnsiChar; aSize: word); override;
    procedure netRecv_PlatformGroupChange(apRec: PAnsiChar; aSize: word);

    {ESM sinc}
    procedure netRecv_Synch_ESMvarian(apRec: PAnsiChar; aSize: word);

    {System State}
    procedure netRecv_Cmd_Change_SystemState(apRec: PAnsiChar; aSize: word);

  public
//    NReplay       : TNewReplay;

    function  LaunchNonRealtimeRuntimePlatform(const rec : TRecCmd_LaunchNonRP ):
              TT3PlatformInstance; override;
    procedure CheckWaypointVehicle;
    procedure AssignWeaponEvent(weapon : TT3Weapon); override;
    procedure UnassignWeaponEvent(weapon : TT3Weapon); override;
    procedure OnGunFire(Sender : TObject); override;
    procedure OnGunCeaseFire(Sender : TObject); override;

    procedure netSend_PlatformFreeMe(Sender : TObject);
    procedure netSend_SynchObject(rSynch : TRecUDP_Synch_Obj); override;
    procedure netSend_CmdSync_Hit_Mine_Bomb(recSynch: TRecCmd_Sync_Hit_BombMine); override;
    procedure netSendTCP_RemoveDataLink(rec : TrecCmd_DataLink_RemoveTrack);
	  procedure NetSendPlatformHitPlatform(rec : TRecPlatformHitPlatform);

    // Tambahan : Prince
    procedure NetSendWeaponOut(rec : TRecWeaponOut);
    procedure netRecv_CmdTorpedoSyncPanelWeapon(apRec: PAnsiChar; aSize: word);override;
    procedure netRecv_CmdBombSyncPanelWeapon(apRec: PAnsiChar; aSize: word);override;
    procedure netRecv_CmdTorpedoProperty(apRec : PAnsiChar; aSize: Word);override;
    procedure netRecv_CmdBombProperty(apRec: PAnsiChar; aSize: word);override;
    procedure netRecv_CmdMineProperty(apRec: PAnsiChar; aSize: word);override;

    procedure NetSendPlatformHancur(recPH : TRecPlatformHancur);
    procedure NetSendDeploy(aRec : TRecCmd_Sensor);
    procedure NetSendUpdateSonar(aRec : TRecCmd_UpdateSonar);
    procedure NetSessionOnConnectedRequestCubicle(sender: TObject);
    procedure NetSendUpdateAcualCable(aRec : TRecCmd_UpdateActualCable);
    procedure netSend_SyncBearingMissile(r : TRec_SyncTarget);

    procedure NetSendMapStub(rec : TRec_MapData);
    procedure NetSendECMCommand(rec : TRecECMCommand);
    procedure netSend_CmdRadarNoiseJammer(rec : TrecRadarNoiseJammer);

    //send UDP
    {nando}
    procedure NetSendUDP_WaypointSyncMissileData(const aRecEnvi : TrecMissile_Envi;
      const aRecRBLW : TrecSinc_RBLW; const aRecMode : TRecFiringModeWeapon);
    procedure NetSendUDP_WaypointCmdLaunchMissile(rec : TRecCmd_LaunchMissile);
    procedure NetSendUDP_WaypointCmdLaunchTorpedo(const rec : TRecCmd_LaunchMissile);
    procedure NetSendUDP_WaypointCmdSensor(const pi_id: Integer;
      const sensType: byte; const sensID: integer;
      const ordID, ordParam: byte);
    procedure NetSendUDP_HybridlaunchTorpedo(rec : TrecCmd_LaunchHybrid);

    //received TCP
    {nando}
    procedure NetRecv_SincWaypoint(apRec : PAnsiChar; aSize: Word); override;
    procedure NetRecv_SincRBLWMissile(apRec : PAnsiChar; aSize: Word); override;
    procedure NetRecv_SincBOLWMissile(apRec : PAnsiChar; aSize: Word); override;
    procedure NetRecv_SincMissileEnvi(apRec : PAnsiChar; aSize: Word); override;
    procedure netRecv_RecordTrack(apRec: PAnsiChar; aSize: word);
    procedure netRecv_MessageHandling(apRec: PAnsiChar; aSize: word);
    // farah
    procedure NetRecv_cmd_environment(apRec: PAnsiChar; aSize: Word); override;
    //embark landing
    procedure netRecv_Cmd_Embark_Land(apRec : PAnsiChar; aSize: word); override;
    procedure FinishReadyingTime(const r : TRecCmd_Embark_Landing); override;

    //Data Link
    procedure netRecv_Cmd_DataLink(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_CMD_DataLink_AddTrack(apRec: PAnsiChar; aSize: word); override;
    procedure netRecv_CMD_DataLink_RemoveTrack(apRec: PAnsiChar; aSize: word); override;
    procedure netSend_Cmd_Datalink(rec : TRecCmd_DataLink);

    procedure netRecv_Cmd_MergeTrack(apRec: PAnsiChar; aSize: Word);
    procedure netRecv_EngageTrack(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_platform_cmd(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_SetLauncherQty(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_SetQuantity(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_SetStatus(apRec: PAnsiChar; aSize: Word); override;
    procedure netRecv_CmdEmcon(apRec: PAnsiChar; aSize: word); override;

    //jammer
    procedure netRecv_ECMCommand(apRec: PAnsiChar; aSize: word);override;
    procedure netRecv_CmdRadarNoiseJammer(apRec: PAnsiChar; aSize: Word); override;

    procedure RemoveDatalinkPlatform(rec : TRecCmd_SelectPlatformToRemove); overload;
    procedure RemoveDatalinkPlatform(aPfID: integer); overload;

    {Add/Edit Formation - mm}
    procedure netRecv_CmdEditFormation(apRec: PAnsiChar; aSize: word);  override;

    {Edit Detectability Type}
    procedure netRecv_CmdDetectabilityChange(apRec: PAnsiChar; aSize: Word);

  public
    constructor Create(Map : TMap);
    destructor Destroy; override;

    procedure GameStart; override;
    procedure GamePause; override;

    procedure InitNetwork; override;
    procedure StopNetwork;  override;

    procedure SendDataToVBS();

    procedure CreateThread;

    procedure PrepareNewScenario;
    procedure ClearScenario;

    procedure LoadScenarioID(const vSet: TGameDataSetting); override;
    // map fix dulu
    //procedure SetMap(const mGeoset: string);

    //add by bebe
    procedure LoadPredefinedPattern;
    procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
    procedure NetSendTCP_Synch_WaypointData(rec : TRecSync_WaypointData);

    //public scenario
    procedure FNetServerOnClientConnect(const S: string);
    procedure FNetServerOnClientDisConnect(const S: string);

    procedure WaypointEventLaunchBomb(aParentID, aTargetID, aBombID : integer);
    procedure WaypointEventDeploySonobuoy(aShipID, aSonoIndex: Integer;
              aSonoMode: Byte; aDepth: Double);
    procedure WaypointEventDeployCountermeasure(aShipID, aCMIndex: Integer);
    procedure WaypointEventDeployMine(aShipID, aMineIndex: Integer;
              aDepth: Double);
    procedure WaypointEventCountermeasure(aShipID, aCMIndex: Integer;
              aEventMode: Byte);
    procedure WaypointEventDatalink(aShipID, aDatalinkIndex: Integer;
              aEventMode: Byte);
    procedure SyncWaypointContinousEvent(aShipID, aObjIndex: Integer; aObjType,
              aObjMode: Byte; aObjDepth, aObjSpacing: Double; aObjQty : Integer;
              aDeployUntilNextWaypoint: Boolean);
    function  IsGameStart: Boolean; override;
    procedure SnapshotToFile( r :TRecCommandSnapshot);
    procedure SnapshotLoadFile( fName : string ) ;

    property BroadcastData: boolean read getBroadcastData write setBroadcastData;
    property OnUpdateGameInfo: TOnUpdateGameInfo
        read FOnUpdateGameInfo  write FOnUpdateGameInfo;
    property GamePlayType  : TGamePlayType read FGamePlayType;
  end;

const

  CTTT_defmap = 'maps\mapdata.gst';

  xOffset = 42.700378312;
  yOffset = 41.854946496;

var
  simMgrServer: TSimMgr_Server;

implementation

uses
  uNetHandle_Server, uMapXData, uTCPDatatype, uT3ServerEventManager,
  uSimObjects, uSnapshotUtils, uGameSetting,
  uDBAsset_GameEnvironment, uDBGame_Defaults, uDBCubicles, uT3HybridMissile,
  uWaypoint, uT3DatalinkManager, Forms;
{ TSimMgr_Server }


constructor TSimMgr_Server.Create(Map : TMap);
var
  i : Integer;
begin
  inherited;

  FNetSender := TDelayer.Create;
  FNetSender.Enabled := false;
  FNetSender.OnTime := NetSendUDP_BroadCast;
  FNetSender.DInterval := 0.5;

  FConnectDelay := TDelayer.Create;
  with FConnectDelay do
  begin
    DInterval := 8.0;
    OnTime := FOnConnectDelay;
    Enabled := false;
  end;

  FSendCounter    := 0;
  IDEmbarkTemp := 0;

  EventManager    := TT3ServerEventManager.Create;
  AssignGameSettingChange(GameSetting.getListener as TPropertyEventListener);

  for I := 1 to C_DATALINK_ALLOWED do
    AssignSensorEvent(DataLinkManager.getDatalink(I));

  FAllCubAssign   := TStringList.Create;

  FRecorderListener := TPropertyEventListener.Create;

  FRecorderListener.OnPropertyByteChange := OnPropertyChange;
  FRecorderListener.OnPropertyIntChange := OnPropertyChange;
  FRecorderListener.OnPropertyDblChange := OnPropertyChange;
  FRecorderListener.OnPropertyBoolChange := OnPropertyChange;
  FRecorderListener.OnPropertyStrChange := OnPropertyChange;

  SimManager := Self;
end;

procedure TSimMgr_Server.CreateThread;
begin
  FNetworkThreadTemp := TMSTimer.Create;
  FNetworkThreadTemp.Interval := 2;
  FNetworkThreadTemp.OnRunning := FNetworkThread_OnRunning;
  FNetworkThreadTemp.OnTerminate := FNetworkThread_OnTerminate;
  FNetworkThreadTemp.Enabled := True;
end;

destructor TSimMgr_Server.Destroy;
begin
  // wait until writer idle
  if Assigned(FWriter) then
  begin
    while FWriter.WriterState <> wsIdle do
      Application.ProcessMessages;

    FWriter.FinishWriter(FMainVTime.GetTime);
    if Assigned(OnLogEventStr) then
          OnLogEventStr('TSimMgr_Server.Destroy', 'destroy');
    Fwriter.Free;
  end;

  FAllCubAssign.Free;

  EventManager.Free;

  FNetSender.Free;

  inherited;
end;

procedure TSimMgr_Server.setGameSpeed(const Value: double);
begin
  inherited;

  //if not Assigned(fGameSPEED)then Exit;
  //OnLogEventStr(FloatToStr(fGameSPEED));

  if Assigned(FOnUpdateGameInfo) then
    FOnUpdateGameInfo(byte(FGameState), GameSPEED);
end;

procedure TSimMgr_Server.setBroadcastData(const Value: boolean);
begin
  FNetSender.Enabled := Value;
end;

function TSimMgr_Server.getBroadcastData: boolean;
begin
  result := FNetSender.Enabled;
end;

procedure TSimMgr_Server.FGameThread_OnRunning(const dt: double);
    procedure SlowDown ;
    var i, gS: integer;
    begin // d
      if GameSPEED < 1.0 then begin
         // slow down baby...

      end
      else begin
        gS := Round(GameSPEED);


        for I := 0 to gs - 1 do
        begin
          FNetSender.Run(dt);
        end;
      end;
    end;
var
  nLongWord : LongWord ;
  i, gS : integer;
  recSyncPos : TRecSyncPos;
begin
  //send data.
  inherited;

  case FGamePlayType of
  gpmScenario,
  gpmScenAndRecord :
    begin
      SlowDown ;

    end;
  gpmReplay   :
    begin
      SlowDown;
    end;
  end;

  //check bomb mine
  //CheckBombMine(dt);

  FConnectDelay.Run(dt);
end;

procedure TSimMgr_Server.FinishReadyingTime(const r: TRecCmd_Embark_Landing);
begin
  inherited;
end;

procedure TSimMgr_Server.FNetServerOnClientConnect(const S: string);
var rSyn: TRecCmdSYNCH;
begin
  rSyn.SynchID        := CORD_ID_Synch_NextPID;
  rSyn.Synch_IParam   := FLastPlatformID;
  VNetServer.SendTo(CPID_CMD_SYNCH, @rSyn, s);

  FOnLogStr('TSimMgr_Server.FNetServerOnClientConnect', s + ': _ONLINE_ ' );
end;


procedure TSimMgr_Server.FNetServerOnClientDisConnect(const S: string);
begin
  FOnLogStr('TSimMgr_Server.FNetServerOnClientDisConnect', s + ': _OFFLINE_ ' );
end;

procedure TSimMgr_Server.FNetworkThread_OnRunning(const dt: double);
begin
  inherited;
  VNetServer.GetPacket;
end;

procedure TSimMgr_Server.FOnConnectDelay(sender: TObject);
begin
  VNetServer.TryReconnect; // tcp only.
end;


procedure TSimMgr_Server.FGameThread_OnPaused(const dt: double);
begin

end;

procedure TSimMgr_Server.NetSendTCP_Synch_WaypointData(
  rec: TRecSync_WaypointData);
begin
//  OnLogStr('TSimMgr_Server.NetSendTCP_Synch_WaypointDataTo3D', 'Sending Data Waypoint');
//  OnLogStr('TSimMgr_Server.NetSendTCP_Synch_WaypointDataTo3D', 'WaypointID : ' + IntToStr(rec.WaypointID) + #13#10 +
//           'Course : ' + FormatFloat('0.00',rec.Course) + #13#10 +
//           'Speed : ' + FormatFloat('0.00',rec.Speed) + #13#10 +
//           'PosX : ' + FormatFloat('0.00',rec.PosX) + #13#10 +
//           'PosY : ' + FormatFloat('0.00',rec.PosY));
  VNetServer.SendBroadcastCommand(CPID_CMD_SYNC_WAYPOINTDATA, @rec);
end;

procedure TSimMgr_Server.NetSendUDP_BroadCast(sender: TObject);
begin
  FSendCounter := (FSendCounter + 1) mod 2; //edited by nando...


  case FSendCounter of
    0 : NetSendUDP_MovementData(nil);
    1 : netSendUDP_GameTime(nil);
    {nando added}
    //2 : NetSendUDP_Target_Missile(nil);
  end;

end;

procedure TSimMgr_Server.NetSendUDP_HybridlaunchTorpedo(
  rec: TrecCmd_LaunchHybrid);
begin
  rec.SessionID := FSessionID;
  VNetServer.SendBroadcast_UDP_Data(CPID_UDP_HYBRID, @rec);
end;

procedure TSimMgr_Server.NetSendUDP_MovementData(sender: TObject);
var i : integer;
    rec:  TRecUDP_PlatformMovement;
    pi : TT3PlatformInstance;
begin

  for i := 0 to SimPlatforms.itemCount - 1 do begin
    pi := SimPlatforms.getObject(i) as TT3PlatformInstance;
    rec := pi.GetMovementData;
    rec.SessionID := FSessionID;

    //Nando Added for Flag in Voip,,
    //Flag 1 for Vehicle, 0 for other
    if pi is TT3Vehicle then
    begin
      rec.ObjectType := 1;
    end
    else
    begin
      rec.ObjectType := 0;
    end;

    VNetServer.SendBroadcast_UDP_Data(CPID_PLATFORM_MOVE, @rec);
  end;

end;

{nando synch Missile target}
procedure TSimMgr_Server.NetSendUDP_Target_Missile(sender: TObject);
var
  i : Integer;
  rec : TRecUDP_Synch_Missile;
  pi : TT3PlatformInstance;

  Mis : TT3Missile;
begin
  for i := 0 to SimPlatforms.itemCount - 1 do
  begin
    pi := SimPlatforms.getObject(i) as TT3PlatformInstance;

    if pi is TT3Missile then
    begin
      Mis := TT3Missile(pi);

      //Send Synch
      if Assigned(mis.Target) then
      begin
        rec.PlatformID        := TT3PlatformInstance(Mis).InstanceIndex;
        rec.TargetPlatformID  := TT3PlatformInstance(Mis.Target).InstanceIndex;
        rec.TargetPosX        := Mis.Target.getPositionX;
        rec.TargetPosY        := Mis.Target.getPositionY;
        rec.TargetPosZ        := Mis.Target.getPositionZ;

        VNetServer.SendBroadcast_UDP_Data(CPID_Synch_MISSILE_TARGET, @rec);
      end;
    end;
  end;
end;

{nando waypoint}
procedure TSimMgr_Server.CheckWaypointVehicle;
var i : integer;
    rec:  TRecUDP_PlatformMovement;
    pi : TT3PlatformInstance;
begin
  for i := 0 to SimPlatforms.itemCount - 1 do begin
    pi := SimPlatforms.getObject(i) as TT3PlatformInstance;
    rec := pi.GetMovementData;

    // tidak semua item di Simplatform itu Vehicle....!!!!
    if pi is TT3Vehicle then
    if TT3Vehicle(pi).Waypoints.Enabled then
    begin
     // TT3Vehicle(pi).Waypoints.CheckWaypointReach;
    end;
  end;
end;

procedure TSimMgr_Server.NetSendUDP_WaypointCmdLaunchMissile(
  rec: TRecCmd_LaunchMissile);
var
  projectile : TT3Missile;
begin
  projectile := LaunchMissile(rec) as TT3Missile;

  if Assigned(projectile) then
    rec.ProjectileInstanceIndex := projectile.InstanceIndex;

  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_MISSILE, @rec );
end;

procedure TSimMgr_Server.NetSendUDP_WaypointCmdLaunchTorpedo(
  const rec: TRecCmd_LaunchMissile);
begin
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_TORPEDO, @rec );
  LaunchTorpedo(rec);
end;

procedure TSimMgr_Server.NetSendUDP_WaypointCmdSensor(const pi_id: Integer;
  const sensType: byte; const sensID: integer; const ordID, ordParam: byte);
var rec : TRecCmd_Sensor;
begin
  with rec do begin
    SensorType := sensType;
    PlatformID := pi_id;
    SensorID   := sensID;
    OrderID    := ordID;
    OrderParam := ordParam;
  end;

  rec.SessionID := FSessionID;

  //VNetServer.SendBroadcast_UDP_Data(CPID_CMD_SENSOR, @rec);
  VNetServer.SendBroadcastCommand(CPID_CMD_SENSOR, @rec);
end;

procedure TSimMgr_Server.NetSendUDP_WaypointSyncMissileData(
  const aRecEnvi: TrecMissile_Envi; const aRecRBLW: TrecSinc_RBLW;
  const aRecMode: TRecFiringModeWeapon);
begin
  VNetServer.SendBroadcastCommand(CPID_CMD_Missile_Envi, @aRecEnvi);
  VNetServer.SendBroadcastCommand(CPID_SincRBLW, @aRecRBLW);
  VNetServer.SendBroadcastCommand(CPID_CMD_FIRINGMODE, @aRecMode);
end;

procedure TSimMgr_Server.netSendUDP_GameTime(sender: TObject);
var rGT: TRecUDP_GameTime;
begin
  rGT.ServerTime  := Now;
  rGT.GameMS      := FMainVTime.GetMillisecond;
  rGT.GameTime    := FMainVTime.GetTime;
  rGT.GameStart   := FMainVTime.DateTimeOffset;
  rGT.SessionID   := FSessionID;

  VNetServer.SendBroadcast_UDP_Data(CPID_GAMETIME, @rGT);
end;

procedure TSimMgr_Server.netSend_SyncBearingMissile(r: TRec_SyncTarget);
var
  wpn, pi  : TT3PlatformInstance;
begin
  r.SessionID := FSessionID;

  if Assigned(FWriter) then FWriter.WriteData(@r, FMainVTime.GetMillisecond,GameSPEED,CPID_SYNC_TARGET);
  VNetServer.SendBroadcastCommand(CPID_SYNC_TARGET, @r);

  wpn := FindT3PlatformByID(r.WeaponID);
  pi  := FindT3PlatformByID(r.TargetID);

  if wpn is TT3Missile then
    TT3Missile(wpn).SetTargetObject(pi);
end;

procedure TSimMgr_Server.netSend_SynchObject(rSynch : TRecUDP_Synch_Obj);
begin
{  rSynch.PlatformID   := r^.ParentPlatformID;
  rSynch.PlatformType := CPT_PLATFORM_VEHICLE_MEMBER;
  rSynch.ObjectType   := CV_Guns;
  rSynch.ObjectID     := r^.GunID;
  rSynch.SynchType    := CSO_Number;
  rSynch.iValue1      :=
}
  inherited;
  rSynch.SessionID := FSessionID;

  if Assigned(VNetServer)  and VNetServer.Online then
    VNetServer.SendBroadcast_UDP_Data(CPID_UDP_Synch_Obj, @rSynch);
end;

procedure TSimMgr_Server.NetSendPlatformHitPlatform(rec: TRecPlatformHitPlatform);
var
  Sender, Target : TT3PlatformInstance;
  i : Integer;
  sObj : TSimObject;
  v : TT3Vehicle;
begin
  rec.SessionId := SessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@rec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_PLATFORM_HIT_PLATFORM);

  if Assigned(VNetServer) then
    VNetServer.SendBroadcastCommand(CPID_CMD_PLATFORM_HIT_PLATFORM, @rec);

  if (rec.FreeWeapon) then
  begin
    Sender := FindT3PlatformByID(rec.SenderID);
    if Sender = nil then
      Sender := FindWeaponByID(rec.SenderID);

    Target := FindT3PlatformByID(rec.TargetID);

    if Sender is TT3Torpedo then
    begin
      TT3Torpedo(Sender).FreeChilds;
      Sender.FreeMe := True;
      Sender.AbsoluteFree := True;

      if Target is TT3Bomb then
      begin
        TT3Bomb(Target).FreeChilds;
        Target.FreeMe := True;
        Target.AbsoluteFree := True;
      end;
    end
    else if Sender is TT3Bomb then
    begin
      TT3Bomb(Sender).FreeChilds;
      Sender.FreeMe := True;
      Sender.AbsoluteFree := True;
    end
    else if Sender is TT3Missile then
    begin
      if Target is TT3Chaff then
      begin
        if TT3Missile(Sender).Definition.ECM_Detonation = 0 then //No Detonate to Chaff
          Exit;

        if TT3Chaff(Target).ChaffCategory = ecgDistraction then
        begin
          TT3Missile(Sender).FreeChilds;
          Sender.FreeMe := True;
          Sender.AbsoluteFree := True;

          TT3Chaff(Target).FreeChilds;
          Target.FreeMe := True;
          Target.AbsoluteFree := True;
        end
        else if TT3Chaff(Target).ChaffCategory = ecgSeduction then
        begin
          TT3Chaff(Target).FreeChilds;
          Target.FreeMe := True;
          Target.AbsoluteFree := True;
        end;
      end
      else if Target is TT3InfraredDecoy then
      begin
        if TT3Missile(Sender).Definition.IRCM_Detonation = 0 then //No Detonate to Chaff
          Exit;

        TT3Missile(Sender).FreeChilds;
        Sender.FreeMe := True;
        Sender.AbsoluteFree := True;

        TT3InfraredDecoy(Target).FreeChilds;
        Target.FreeMe := True;
        Target.AbsoluteFree := True;
      end
      else if Target is TT3FloatingDecoy then
      begin
        TT3Missile(Sender).FreeChilds;
        Sender.FreeMe := True;
        Sender.AbsoluteFree := True;

        TT3FloatingDecoy(Target).FreeChilds;
        Target.FreeMe := True;
        Target.AbsoluteFree := True;
      end
      else
      begin
        TT3Missile(Sender).FreeChilds;
        Sender.FreeMe := True;
        Sender.AbsoluteFree := True;
      end;
    end
    else if Sender is TT3GunShoot then
    begin
      TT3GunShoot(Sender).FreeChilds;
      Sender.FreeMe := True;
      Sender.AbsoluteFree := True;

      if Target is TT3Missile then
      begin
        TT3Missile(Target).FreeChilds;
        Target.FreeMe := True;
        Target.AbsoluteFree := True;
      end;
    end;

    for i := 0 to simMgrServer.SimPlatforms.itemCount - 1 do
    begin
      sObj := simMgrServer.SimPlatforms.getObject(i);

      if sObj is TT3Vehicle then
      begin
        v := TT3Vehicle(sObj);

        if (Sender is TT3Missile) and
           (v.InstanceIndex = TT3Missile(Sender).EngagementParentID) then
          v.isEngagementWeaponFire := False
        else if (Sender is TT3Torpedo) and
           (v.InstanceIndex = TT3Torpedo(Sender).EngagementParentID) then
          v.isEngagementWeaponFire := False;
      end;
    end;
  end;
end;

procedure TSimMgr_Server.netSend_CmdRadarNoiseJammer(rec: TrecRadarNoiseJammer);
begin
  Rec.SessionID := FSessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@rec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_RADAR_NOISE_JAMMER);
  VNetServer.SendBroadcastCommand(CPID_CMD_RADAR_NOISE_JAMMER, @Rec);
end;

//ham 04052012
procedure TSimMgr_Server.NetSendWeaponOut(rec: TRecWeaponOut);
begin
  rec.SessionID := SessionID;

  if Assigned(FWriter) then FWriter.WriteData(@rec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_WEAPON_OUT);

  if Assigned(VNetServer) then
    VNetServer.SendBroadcastCommand(CPID_CMD_WEAPON_OUT, @rec);
end;

procedure TSimMgr_Server.NetSendDeploy(aRec: TRecCmd_Sensor);
begin
  aRec.SessionID := FSessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@aRec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SENSOR);
  VNetServer.SendBroadcastCommand(CPID_CMD_SENSOR, @aRec);
end;

procedure TSimMgr_Server.NetSendECMCommand(rec: TRecECMCommand);
begin
  Rec.SessionID := FSessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@Rec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ECM);
  VNetServer.SendBroadcastCommand(CPID_CMD_ECM, @Rec);
end;

procedure TSimMgr_Server.NetSendMapStub(rec: TRec_MapData);
begin
  VNetServer.SendRequestMapStub(CPID_CMD_MAPS,@rec);
end;

procedure TSimMgr_Server.NetSendUpdateAcualCable(
  aRec: TRecCmd_UpdateActualCable);
begin
  aRec.SessionID := FSessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@aRec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_UPDATE_ACTUAL_CABLE);
  VNetServer.SendBroadcastCommand(CPID_CMD_UPDATE_ACTUAL_CABLE, @aRec);
end;

procedure TSimMgr_Server.NetSendUpdateSonar(aRec: TRecCmd_UpdateSonar);
begin
  aRec.SessionID := FSessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@aRec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_UPDATE_SONAR);
  VNetServer.SendBroadcastCommand(CPID_CMD_UPDATE_SONAR, @aRec);
end;

procedure TSimMgr_Server.NetSendPlatformHancur(recPH: TRecPlatformHancur);
begin
  recPH.SessionID := SessionID;
  if Assigned(FWriter) then FWriter.WriteData(@recPH, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_PLATFORM_HANCUR);

  if Assigned(VNetServer) then
    VNetServer.SendBroadcastCommand(CPID_CMD_PLATFORM_HANCUR, @recPH);
end;

procedure TSimMgr_Server.netSend_CmdSync_Hit_Mine_Bomb(recSynch: TRecCmd_Sync_Hit_BombMine);
begin
  inherited;

  recSynch.SessionId := SessionID;
  if Assigned(FWriter) then FWriter.WriteData(@recSynch, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SYNC_HIT_MINE_BOMB);
  if Assigned(VNetServer) then
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNC_HIT_MINE_BOMB, @recSynch);
end;

procedure TSimMgr_Server.netSend_Cmd_Datalink(rec: TRecCmd_DataLink);
begin
  rec.SessionID := SessionID;
  if Assigned(FWriter) then
    FWriter.WriteData(@rec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DATALINK);
  VNetServer.SendBroadcastCommand(CPID_CMD_DATALINK, @rec);
end;

procedure TSimMgr_Server.netSendTCP_RemoveDataLink(rec : TrecCmd_DataLink_RemoveTrack);
begin
  rec.SessionID := SessionID;

  FOnLogStr('TSimMgr_Server.netSendTCP_RemoveDataLink', 'stop datalink, remove detected track by datalink');
  if Assigned(FWriter) then FWriter.WriteData(@rec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DATALINK_REMOVETRACK);
  VNetServer.SendBroadcastCommand(CPID_CMD_DATALINK_REMOVETRACK, @rec);
end;

//==============================================================================
procedure TSimMgr_Server.netRecv_TCPRequest(apRec: PAnsiChar; aSize: Word);
procedure EmptyRec(var rec : TRecSynch_GunOnVehicle);overload;
begin
  with rec do begin
    Common.WeaponStatus := 0;
    Common.WeaponTarget := 0;
    Common.Quantity     := 0;
    Common.ControlMode  := 0;
    Common.WeaponID     := 0;
    SalvoSize := 0;
    SalvoMode := 0;
    IsAssigned := false;
    IntercepRange := 0;
    ThressholSpeed := 0;
  end;
end;
// request ini di kirim client ketika startup,
// untuk sinkronisasi event-event yg ketinggalan.
var //the reequest;
  rec:  ^TRecTCP_Request;
  //the reply
  ipTo: string;
  rGC: TRecUDP_GameCtrl_info;
  rSyn: TRecCmdSYNCH;
  i : integer;
  rSynch : TRecSynch_Vehicle;
  rSynchGun : TRecSynch_GunOnVehicle;
  pf : TObject;
begin
  rec := @apRec^;
  ipTo := LongIp_To_StrIp(rec^.pid.ipSender);
  rGC.Flag := rec^.reqFlag;

  FOnLogStr('TSimMgr_Server.netRecv_TCPRequest', ipTo + ': ' + getPacketIDname(rec^.pid.recID) + ' : '+ getRecString(rec^));
  if Assigned(FWriter) then FWriter.WriteData(apRec,
     FMainVTime.GetMillisecond, GameSPEED,CPID_TCP_REQUEST);

  case rec^.reqID of
    REQ_SYNCH_GAMECTRL_INFO:
    begin
      rGC.GameState  := Byte(GameState);
      rGC.GameSpeed  := GameSPEED;
      rGC.GameTimeMS := FMainVTime.GetMillisecond;
      rGC.SessionID  := FSessionID;
      VNetServer.SendUDP_To(CPID_UDP_GAMECTRL_INFO, @rGC, ipTo);
    end;

    REQ_LAST_PLATFORMID_INFO:
    begin
      rSyn.SynchID        := CORD_ID_Synch_NextPID;
      rSyn.Synch_IParam   := FLastPlatformID;

      VNetServer.SendTo(CPID_CMD_SYNCH, @rSyn, ipTo);
    end;

    REQ_CUBICLE_ASSIGNMENT :
    begin
      netSend_CubicleAssignInfo(ipTo);
    end;

    REQ_MISSED_PACKET:
    begin
      VNetServer.SendAllSentTo(ipTo);

      // finally set all last object state..
      // ....
      for i := 0 to SimWeapons.itemCount - 1 do
      begin
        pf := SimWeapons.getObject(i);

        if pf is TT3GunOnVehicle then begin
          EmptyRec(rSynchGun);

          with TT3GunOnVehicle(pf) do begin
            rSynchGun.SessionID    := FSessionID;
            rSynchGun.Common.WeaponID := InstanceIndex;
            rSynchGun.Common.WeaponStatus := Byte(WeaponStatus);

            if Assigned(TargetObject) then
              rSynchGun.Common.WeaponTarget := TT3Unit(TargetObject).InstanceIndex;

            rSynchGun.Common.Quantity := Quantity;
            rSynchGun.Common.ControlMode := ControlMode;
            rSynchGun.SalvoSize := SalvoSize;
            rSynchGun.SalvoMode := SalvoMode;
            rSynchGun.IsAssigned := IsAssigned;
            rSynchGun.IntercepRange := InterceptRange;
            rSynchGun.ThressholSpeed := ThresholdSpeed;

            VNetServer.SendTo(CPID_SYNCH_GUNVEHICLE, @rSynchGun, ipTo);
          end;
        end;
      end;

      for i := 0 to SimPlatforms.itemCount - 1 do
      begin
        pf := SimPlatforms.getObject(i);

        if pf is TT3Vehicle then begin
          with TT3Vehicle(pf) do begin
            rSynch.PlatformID   := InstanceIndex;
            rSynch.SessionID    := FSessionID;
            rSynch.DormantState := Dormant;
            rSynch.OnGrounded   := OnGrounded;
            rSynch.OnLand       := OnLand;
            rSynch.DamageSensor := DamageSensor;
            rSynch.DamageWeapon := DamageWeapon;
            rSynch.DamageComm   := DamageComm;
            rSynch.DamageHelm   := DamageHelm;
            rSynch.DamagePropulsion := DamagePropulsion;
            rSynch.FuelLeakage  := FuelLeakage;
            rSynch.FuelRemaining  := FuelRemaining;

            VNetServer.SendTo(CPID_SYNCH_VEHICLE, @rSynch, ipTo);
          end;
        end;
      end;
    end;
  end;
end;

procedure TSimMgr_Server.netRecv_Vectac(apRec: PAnsiChar; aSize: word);
begin
  inherited;

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_VECTAC);

  VNetServer.SendBroadcastCommand(CPID_CMD_VECTAC, apRec);
end;

procedure TSimMgr_Server.InitNetwork;
begin
  FNetSender.DCounter := 0;
  FNetSender.DInterval := vNetServerSetting.SendInterval;

//>> UDP SECTION  --------------------------------------------------------------
  VNetServer.RegisterUDPPacket(CPID_PLATFORM_MOVE,
    SizeOf(TRecUDP_PlatformMovement),
    nil );

  VNetServer.RegisterUDPPacket(CPID_PLATFORM_LANDDATA,
    SizeOf(TRecUDP_PlatfomLandData),
    nil );

  VNetServer.RegisterUDPPacket(CPID_GAMETIME,
    SizeOf(TRecUDP_GameTime),
    nil);

  VNetServer.RegisterUDPPacket(CPID_UDP_GAMECTRL_INFO,
    SizeOf(TRecUDP_GameCtrl_Info),
    nil);

  VNetServer.RegisterUDPPacket(CPID_CMD_GAME_CTRL, SizeOf(TRecCmd_GameCtrl),
    nil);

  VNetServer.RegisterUDPPacket(CPID_UDP_Synch_Obj, SizeOf(TRecUDP_Synch_Obj),
    nil);

  {nando added}
  VNetServer.RegisterUDPPacket(CPID_Synch_MISSILE_TARGET, SizeOf(TRecUDP_Synch_Missile),
    nil);

  VNetServer.RegisterUDPPacket(CPID_UDP_REPOSITION, SizeOf(TRecCmd_Platform_MOVE),
    nil);

  VNetServer.RegisterUDPPacket(CPID_UDP_TRACKNUMBER, SizeOf(TRecCmd_Platform_CHANGE_TRACKNUMBER),
    nil);

  {farid added for hybrid}
  VNetServer.RegisterUDPPacket(CPID_UDP_HYBRID,SizeOf(TrecCmd_LaunchHybrid),nil);

  {
  VNetServer.RegisterUDPPacket(CPID_CMD_DATALINK,
    SizeOf(TRecCmd_DataLink),
    netRecv_Cmd_DataLink);
  }
//>> TCP Section ---------------------------------------------------------------

  VNetServer.RegisterTCPPacket(CPID_CMD_PLATFORM, SizeOf(TRecCmd_Platform),
    netRecv_platform_cmd);

  VNetServer.RegisterTCPPacket(CPID_CMD_EMCON_MODE, SizeOf(TRecCmd_ModeEmcon),
    netRecv_CmdEmcon);

  VNetServer.RegisterTCPPacket(CPID_CMD_SET_LAUNCHERQTY, SizeOf(TRecCmd_Set_LauncherQty),
    netRecv_SetLauncherQty);
  VNetServer.RegisterTCPPacket(CPID_CMD_SET_QUANTITY, SizeOf(TRecCmd_Set_Quantity),
    netRecv_SetQuantity);
  VNetServer.RegisterTCPPacket(CPID_CMD_SET_STATUS, SizeOf(TRecCmd_Set_Status),
    netRecv_SetStatus);
  VNetServer.RegisterTCPPacket(CPID_CMD_PLATFORM_REPOS,SizeOf(TRecCmd_Platform_MOVE),
    netRecv_CmdPlatform_Move);

  VNetServer.RegisterTCPPacket(CPID_CMD_ENGAGE_TRACK,SizeOf(TRecCmd_EngageTrack),
    netRecv_EngageTrack);

  VNetServer.RegisterTCPPacket(CPID_CMD_RADAR_NOISE_JAMMER, SizeOf(TrecRadarNoiseJammer),
    netRecv_CmdRadarNoiseJammer);
  VNetServer.RegisterTCPPacket(CPID_CMD_SENSOR, SizeOf(TRecCmd_Sensor),
    netRecv_CmdSensor); // radar, sonar, esm

  VNetServer.RegisterTCPPacket(CPID_CMD_UPDATE_SONAR, SizeOf(TRecCmd_UpdateSonar),
    nil);

  VNetServer.RegisterTCPPacket(CPID_CMD_UPDATE_ACTUAL_CABLE, SizeOf(TRecCmd_UpdateActualCable),
    nil);

  VNetServer.RegisterTCPPacket(CPID_CMD_SONAR_DEPLOY, SizeOf(TRecCmd_SonarDeploy),
    netRecv_CmdSonarDeploy);

  VNetServer.RegisterTCPPacket(CPID_IFF_MODE_SEARCH, SizeOf(TRecCmd_IFFSearchMode),
    netRecv_CmdIFFSearchMode);

  VNetServer.RegisterTCPPacket(CPID_CMD_SENSOR_IFF, SizeOf(TRecCmd_SensorIFF),
    netRecv_CmdSensorIFF);

  VNetServer.RegisterTCPPacket(CPID_CMD_TARGET_IFF, SizeOf(TRecCmd_TargetIFF),
    netRecv_CmdTargetIFF);

  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_EMBARK, SizeOf(TRecCmd_Embark),
     netRecv_CmdEmbark);

  VNetServer.RegisterTCPPacket(CPID_CMD_SYNCH, SizeOf(TRecCmdSYNCH),
    netRecv_CmdSYNCH);

  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_MISSILE, SizeOf(TRecCmd_LaunchMissile),
    netRecv_CmdLaunchMissile);

  VNetServer.RegisterTCPPacket(CPID_CMD_GUN_FIRE, SizeOf(TRecCmd_GunFire),
    netRecv_CmdGunFire);

  VNetServer.RegisterTCPPacket(CPID_CMD_GUN_FIRE_STATE, SizeOf(TRecCmd_GunFireState),
    nil);

  VNetServer.RegisterTCPPacket(CPID_CMD_GAME_CTRL, SizeOf(TRecCmd_GameCtrl),
    netRecv_CmdGameControl);

  VNetServer.RegisterTCPPacket(CPID_TCP_REQUEST, SizeOf(TRecTCP_Request),
    netRecv_TCPRequest);

  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_RUNTIME_PLATFORM,
    SizeOf(TRecCmd_LaunchRP),
    netRecv_CmdLaunch_RP
    );

  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM,
    SizeOf(TRecCmd_LaunchNonRP),
    netRecv_CmdLaunch_NonRP
    );

  {Prince}
  VNetServer.RegisterTCPPacket(CPID_CMD_OVERLAYSTATICSHAPE,
    SizeOf(TRecCmd_OverlayStaticShape), netRecv_CmdOverlayStaticShape);

  VNetServer.RegisterTCPPacket(CPID_CMD_OVERLAYDYNAMICSHAPE,
    SizeOf(TRecCmd_OverlayDynamicShape), netRecv_CmdOverlayDynamicShape);

  VNetServer.RegisterTCPPacket(CPID_CMD_OVERLAYTEMPLATE,
    SizeOf(TRecCmd_OverlayTemplate), netRecv_CmdOverlayTemplate);

  VNetServer.RegisterTCPPacket(CPID_CMD_DYNAMIC_TRACK,
    SizeOf(TRecCmd_OverlayDynamicTrack), netRecv_CmdDynamicTrack);

  VNetServer.RegisterTCPPacket(CPID_TORPEDO_PROPERTY,
    SizeOf(TRecTorpedoProperty),netRecv_CmdTorpedoProperty);

  VNetServer.RegisterTCPPacket(CPID_BOMB_PROPERTY,
    SizeOf(TRecBombProperty),netRecv_CmdBombProperty);

  VNetServer.RegisterTCPPacket(CPID_MINE_PROPERTY,
    SizeOf(TRecMineProperty),netRecv_CmdMineProperty);

  VNetServer.RegisterTCPPacket(CPID_CMD_TRANSFER_SONOBUOY,
    SizeOf(TRecCmd_TransferSonobuoy),netRecv_CmdTransferSonobuoy);

  VNetServer.RegisterTCPPacket(CPID_TORPEDO_SYNC_PANEL_WEAPON,
    SizeOf(TRecTorpedoPanelWeapon),netRecv_CmdTorpedoSyncPanelWeapon);

  VNetServer.RegisterTCPPacket(CPID_BOMB_SYNC_PANEL_WEAPON,
    SizeOf(TRecBombPanelWeapon),netRecv_CmdBombSyncPanelWeapon);
  //----------------------------------------------------------------

  VNetServer.RegisterTCPPacket(CPID_CMD_REMOVE_PLATFORM,
    SizeOf(TRecCmd_SelectPlatformToRemove),
    netRecv_CmdRemovePlatfromByOperator);

  VNetServer.RegisterTCPPacket(CPID_CMD_UPDATE_PLATFORM_PROPERTY,
    SizeOf(TRecCmd_Platform_SET_PROPERTY),
    netRecv_CmdUpdatePlatform_PROPERTY);

  VNetServer.RegisterTCPPacket(CPID_CMD_UPDATE_NRP_PROPERTY,
    SizeOf(TRecCmd_NRP_SET_PROPERTY),
    netRecv_CmdUpdateNRP_PROPERTY);

  VNetServer.RegisterTCPPacket(CPID_CMD_ESM_SET_PROPERTY,
    SizeOf(TRecCmd_ESM_SET_PROPERTY),
    netRecv_CmdESM_CHANGE_PROPERTY);

  VNetServer.RegisterTCPPacket(CPID_CMD_PLATFORM_REPAIR,
    SizeOf(TRecCmd_Platform_Repair),
    netRecv_CmdPlatform_Repair);

  VNetServer.RegisterTCPPacket(CPID_LASTUPDATE_PLATFORM,
    SizeOf(TRecCmd_LastUpdatePlatform),
    netRecv_Cmd_LastUpdate_Platform);

  VNetServer.RegisterTCPPacket(CPID_CMD_MERGE_TRACK,
    SizeOf(TRecCmd_MergeTrack),
    netRecv_Cmd_MergeTrack);

  VNetServer.RegisterTCPPacket(CPID_CMD_DATALINK,
    SizeOf(TRecCmd_DataLink),
    netRecv_Cmd_DataLink);

  VNetServer.RegisterTCPPacket(CPID_CMD_DATALINK_ADDTRACK,
    SizeOf(TRecCmd_DataLink_AddTrack),
    netRecv_CMD_DataLink_AddTrack);

  VNetServer.RegisterTCPPacket(CPID_CMD_DATALINK_REMOVETRACK,
    SizeOf(TRecCmd_DataLink_RemoveTrack),
    netRecv_CMD_DataLink_RemoveTrack);

  VNetServer.RegisterTCPPacket(CPID_CMD_ASSIGN_FIRECONTROL,
    SizeOf(TRecCmd_FC),
    netRecv_Cmd_FireControl);

  VNetServer.RegisterTCPPacket(CPID_CMD_EMBARK_LAND,
  SizeOf(TRecCmd_Embark_Landing), netRecv_Cmd_Embark_Land);

  VNetServer.RegisterTCPPacket(CPID_CMD_CHANGE_TRACK_NUMBER,
    SizeOf(TRecCmd_Platform_CHANGE_TRACKNUMBER),
    netRecv_CmdChangeTrackNumber);

  VNetServer.RegisterTCPPacket(CPID_CMD_FIRINGMODE,
    SizeOf(TRecFiringModeWeapon),netRecv_CmdMissileProperties);

  VNetServer.RegisterTCPPacket(CPID_CMD_ENGAGEMENTMODE,
    SizeOf(TRecEngagementModeWeapon),netRecv_CmdMissileEngageProperties);

  //Bubble
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_BUBBLE,
    SizeOf(TRecCmd_LaunchChaff), netRecv_CmdLaunchBubble);
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCHER_BUBBLE_STATE,
    SizeOf(TRecCmd_LaunchChaffState), netRecv_CmdLaunchBubbleState);
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCHER_BUBBLE_PROPS,
    SizeOf(TRecCmd_ChaffLauncherProperties), netRecv_CmdBubbleLauncherProperties);

  //Mine
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_MINES,
    SizeOf(TRecCmd_LaunchMine), netRecv_CmdLaunchMines);

  //Bomb
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_BOMB,
    SizeOf(TRecCmd_LaunchBomb), netRecv_CmdLaunchBomb);

  // Sonobuoy
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_SONOBUOY,
    SizeOf(TRecCmd_LaunchSonobuoy), netRecv_CmdLaunchSonobuoy);

  VNetServer.RegisterTCPPacket(CPID_CMD_SYNC_HIT_MINE_BOMB,
    SizeOf(TRecCmd_Sync_Hit_BombMine), netRecv_CmdSync_Hit_Mine_Bomb);

  {nando}
  VNetServer.RegisterTCPPacket(CPID_SincWaypoint,SizeOf(TrecSinc_Waypoint),
    netRecv_SincWaypoint);
  VNetServer.RegisterTCPPacket(CPID_SincRBLW,SizeOf(TrecSinc_RBLW),netRecv_SincRBLWMissile);
  VNetServer.RegisterTCPPacket(CPID_SincBOLW,SizeOf(TrecSinc_BOLW),netRecv_SincBOLWMissile);
  VNetServer.RegisterTCPPacket(CPID_CMD_Missile_Envi, SizeOf(TrecMissile_envi), netRecv_SincMissileEnvi);
  VNetServer.RegisterTCPPacket(CPID_CMD_RECORDTRACK, SizeOf(TRecRecordVoice) , netRecv_RecordTrack);
  {end}

  // farah
  VNetServer.RegisterTCPPacket(CPID_CMD_ENVI,SizeOf(TrecSinc_Envi),
    netRecv_cmd_environment);

  //Client Session -------------------------------------------------------------
  VNetServer.RegisterSessionPacket(CPID_REQ, SizeOf(TRecRequest),
   nil);

  VNetServer.RegisterSessionPacket(CPID_CUBICLEASSIGN,
    SizeOf(TRecCubAssign ),
    netRecv_Session_Cub_Assign );

  VNetServer.RegisterTCPPacket(CPID_REMOTE_CMD,
    SizeOf(TRecSendRemote),
    netRecv_TCPRemote
    );

  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_CHAFF, SizeOf(TRecCmd_LaunchChaff),
    netRecv_CmdLaunchChaff);
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCHER_CHAFF_STATE, SizeOf(TRecCmd_LaunchChaffState),
    netRecv_CmdLauncherChaffState);
  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCHER_CHAFF_PROPS, SizeOf(TRecCmd_ChaffLauncherProperties),
    netRecv_CmdLauncherProperties);
  VNetServer.RegisterTCPPacket(CPID_CHAFF_PROPERTY,
    SizeOf(TRecCmd_LaunchChaffState), netRecv_CopyChaffLauncherProperty);

  VNetServer.RegisterTCPPacket(CPID_CMD_LAUNCH_TORPEDO, SizeOf(TRecCmd_LaunchMissile),
    netRecv_CmdLaunchTorpedo);
  VNetServer.RegisterTCPPacket(CPID_GAME_SETTING, SizeOf(TRecCmd_GameSetting),
    netRecv_GameSetting);
  VNetServer.RegisterTCPPacket(CPID_PLATFORM_FREEME, SizeOf(TRecPlatformFreeMe),
    nil);

  VNetServer.RegisterTCPPacket(CPID_SYNCH_VEHICLE,sizeof(TRecSynch_Vehicle),nil);
  VNetServer.RegisterTCPPacket(CPID_SYNCH_MISSILE,sizeof(TRecSynch_Vehicle),nil);
//  VNetServer.RegisterTCPPacket(CPID_SYNCH_TORPEDO,sizeof(TRecSynch_Vehicle),nil);
  VNetServer.RegisterTCPMapStubPacket(CPID_CMD_MAPS,SizeOf(TRec_MapData), netRecvMapCmd);

  VNetServer.RegisterTCPPacket(CPID_CMD_MAPS,SizeOf(TRec_MapData),nil);
  VNetServer.RegisterTCPPacket(CPID_CMD_PLATFORM_HIT_PLATFORM, SizeOf(TRecPlatformHitPlatform), nil);
  //ham 04052012
  VNetServer.RegisterTCPPacket(CPID_CMD_WEAPON_OUT, SizeOf(TRecWeaponOut), nil);
  VNetServer.RegisterTCPPacket(CPID_CMD_PLATFORM_HANCUR, SizeOf(TRecPlatformHancur), nil);

  //choco
  VNetServer.RegisterTCPPacket(CPID_CMD_MODIF_COMM, SizeOf(TRecModifComm), netRecv_ModifComm);
  VNetServer.RegisterTCPPacket(CPID_CMD_VECTAC, SizeOf(TrecVectac), netRecv_Vectac);

  VNetServer.RegisterTCPPacket(CPID_CMD_PLAT_GROUP_CHANGE, SizeOf(TRecPlatformGroupChange),
    netRecv_PlatformGroupChange);

  VNetServer.RegisterTCPPacket(CPID_SYNC_TARGET,
    SizeOf(TRec_SyncTarget), nil);

  VNetServer.RegisterTCPPacket(CPID_CMD_SNAPSHOT, SizeOf(TRecCommandSnapshot), netRecv_TCPSnapshot);

  {ESM sinc variance}
  VNetServer.RegisterTCPPacket(CPID_CMD_SYNC_ESM_VARIANCE, SizeOf(TRecCmd_EsmVariance),
    netRecv_Synch_ESMvarian);

  {System State}
  VNetServer.RegisterTCPPacket(CPID_CMD_CHANGE_SYSTEMSTATE, SizeOf(TRecCmd_Change_SystemState),
    netRecv_Cmd_Change_SystemState);

  //edit n add formation
  VNetServer.RegisterTCPPacket(CPID_EDIT_FORMATION, SizeOf(TRecEditFormation),
    netRecv_CmdEditFormation);

  VNetServer.RegisterTCPPacket(CPID_CMD_DECOYS, SizeOf(TRecCmdDecoys),netRecv_CmdDecoys);

  VNetServer.RegisterTCPPacket(CPID_CMD_ECM, SizeOf(TRecECMCommand),netRecv_ECMCommand);

  VNetServer.RegisterTCPPacket(CPID_REC_MESSAGE, SizeOf(TRecSendMessage), NetRecv_MessageHandling);

  VNetServer.RegisterTCPPacket(CPID_EDIT_DETECTABILITY,
    SizeOf(TRecDetectability), netRecv_CmdDetectabilityChange);

  VNetServer.RegisterTCPPacket(CPID_CMD_SYNC_WAYPOINTDATA, SizeOf(TRecSync_WaypointData), nil);

  VNetServer.ConnectToSessionServer;
  VNetServer.StartListen;

  FConnectDelay.Enabled := true;
end;

function TSimMgr_Server.IsGameStart: Boolean;
begin
  Result := inherited;
end;

procedure TSimMgr_Server.netRecv_TCPSnapshot(apRec: PAnsiChar; aSize: Word);
var
  rec  :  ^TRecCommandSnapshot;
  sn   : string;
begin
  rec  := @apRec^;
  if rec^.OrderID <= CPID_CMD_SNAPSHOT_SAVE then begin
    sn   := UpperCase(Trim(rec^.SnapshotName)) ;
    FOnLogStr('TSimMgr_Server.netRecv_TCPSnapshot', getPacketIDname(rec^.pid.recID)+': '+sn);
    SnapshotToFile(rec^);
  end;
end;

procedure TSimMgr_Server.netRecv_TCPRemote(apRec: PAnsiChar; aSize: Word);
var
  rec  :  ^TRecSendRemote;
  ipTo : string;
begin
  rec  := @apRec^;
  ipTo := LongIp_To_StrIp(rec^.pid.ipReceiver);
  FOnLogStr('TSimMgr_Server.netRecv_TCPRemote', getPacketIDname(rec^.pid.recID)+':'+ipTo);
  VNetServer.SendTo(CPID_REMOTE_CMD, apRec, ipTo);
end;

procedure TSimMgr_Server.netRecv_platform_cmd(apRec: PAnsiChar; aSize: Word);
var
    // pid: ^TPacketID;
    sIP: string;
    rec: ^TRecCmd_Platform;
begin
  //pid := @apRec^;
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_platform_cmd', sIP + ' : ' + getPacketIDname(rec^.pid.recID) + ' : ' +getRecString(rec^));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_PLATFORM);

  inherited;

  VNetServer.SendBroadcastCommand(CPID_CMD_PLATFORM, apRec);
  //VNetServer.SendAlmostBroadcastCommand(CPID_CMD_PLATFORM, apRec, sIP);
end;

procedure TSimMgr_Server.netRecv_RecordTrack(apRec: PAnsiChar; aSize: word);
var
  sIP: string;
  rec : ^TRecRecordVoice;
begin
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_RecordTrack', sIP + ' : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond, GameSPEED,CPID_CMD_RECORDTRACK);
  VNetServer.SendBroadcastCommand(CPID_CMD_RECORDTRACK,apRec);
end;

procedure TSimMgr_Server.netRecv_CmdEmcon(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_ModeEmcon;
  sIP: string;
begin
  //pid := @apRec^;
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_CmdEmcon', sIP + ' : ' + getPacketIDname(r^.pid.recID));

	if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_EMCON_MODE);
	VNetServer.SendBroadcastCommand(CPID_CMD_EMCON_MODE,apRec);

  inherited;
end;

procedure TSimMgr_Server.netRecv_ECMCommand(apRec: PAnsiChar; aSize: word);
var
  rec : ^TRecECMCommand;
  sIP: string;
begin
  inherited;

  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_ECMCommand', sIP + ' : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ECM);

  VNetServer.SendBroadcastCommand(CPID_CMD_ECM, apRec);
end;

procedure TSimMgr_Server.netRecv_EngageTrack(apRec: PAnsiChar; aSize: Word);
var
    sIP: string;
    rec : ^TRecCmd_EngageTrack;
begin
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_EngageTrack', sIP + ' : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ENGAGE_TRACK);
  VNetServer.SendBroadcastCommand(CPID_CMD_ENGAGE_TRACK,apRec);
end;

procedure TSimMgr_Server.netRecv_SetLauncherQty(apRec: PAnsiChar; aSize: Word);
var
  rec : ^TRecCmd_Set_LauncherQty;
  sIP : string;
begin
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_SetLauncherQty', sIP + ' : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SET_LAUNCHERQTY);

  inherited;

  VNetServer.SendBroadcastCommand(CPID_CMD_SET_LAUNCHERQTY,apRec);
end;

procedure TSimMgr_Server.netRecv_SetQuantity(apRec: PAnsiChar; aSize: Word);
var
    // pid: ^TPacketID;
    sIP: string;
    rec: ^TRecCmd_Set_Quantity;
begin
  //pid := @apRec^;
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  if rec^.SessionID = 0 then
    rec^.SessionID := FSessionID;

  FOnLogStr('TSimMgr_Server.netRecv_SetQuantity', sIP + ' : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SET_QUANTITY);

  inherited;

  VNetServer.SendBroadcastCommand(CPID_CMD_SET_QUANTITY,apRec);
  //VNetServer.SendAlmostBroadcastCommand(CPID_CMD_PLATFORM, apRec, sIP);
end;

procedure TSimMgr_Server.netRecv_SetStatus(apRec: PAnsiChar; aSize: Word);
var // pid: ^TPacketID;
    sIP: string;
    rec: ^TRecCmd_Set_Status;
begin
  //pid := @apRec^;
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_SetStatus', sIP + ' : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SET_STATUS);
  inherited;

  VNetServer.SendBroadcastCommand(CPID_CMD_SET_STATUS,apRec);
end;

procedure TSimMgr_Server.netRecv_CmdPlatform_Move(apRec: PAnsiChar; aSize: Word);
var rec: ^TRecCmd_Platform_Move;
    p: TT3PlatformInstance;
    sIP: string;
begin
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_CmdPlatform_Move', sIP + ' : ' + getPacketIDname(rec^.pid.recID));
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_PLATFORM_REPOS);
  // msh perlu di cek, apa ada pengaruhnya dengan Replay?? - RYU

  p := FindT3PlatformByID(rec^.PlatfomID);
   if not Assigned(p) then
    p := FindNonRealPlatformByID(rec^.PlatfomID);

  if p <> nil then begin
    if rec^.OrderID = CORD_ID_REPOS then
    begin
       begin
        p.RepositionTo(rec^.X, rec^.Y);
        //NetSendUDP_MovementData(nil);
        VNetServer.SendBroadcast_UDP_Data(CPID_UDP_REPOSITION,apRec);
       end;
    end;
  end;
end;

procedure TSimMgr_Server.netRecv_CmdRadarNoiseJammer(apRec: PAnsiChar; aSize: Word);
var
    pid: ^TPacketID;
    sIP: string;
begin
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_RADAR_NOISE_JAMMER);

  inherited;

  pid := @apRec^;
  sIP := LongIp_To_StrIp(pid^.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdRadarNoiseJammer', sIP + ' : ' + getPacketIDname(pid^.recID));

  VNetServer.SendBroadcastCommand(CPID_CMD_RADAR_NOISE_JAMMER, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdSensor(apRec: PAnsiChar; aSize: Word);
var pid: ^TPacketID;
    sIP: string;
  r: ^TRecCmd_Sensor;
begin
  pid := @apRec^;
  sIP := LongIp_To_StrIp(pid^.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdSensor', sIP + ' : ' + getPacketIDname(pid^.recID));

  r := @apRec^;

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SENSOR);
  SensorCommand(r^);

  VNetServer.SendBroadcastCommand(CPID_CMD_SENSOR, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdSensorIFF(apRec: PAnsiChar; aSize: Word);
var pid: ^TPacketID;
    sIP: string;
begin
  pid := @apRec^;
  sIP := LongIp_To_StrIp(pid^.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdSensorIFF', sIP + ' : ' + getPacketIDname(pid^.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SENSOR_IFF);
  VNetServer.SendBroadcastCommand(CPID_CMD_SENSOR_IFF, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdSonarDeploy(apRec: PAnsiChar; aSize: Word);
var
 r : ^TRecCmd_SonarDeploy;
 pid: ^TPacketID;
 sIP: string;
 PlatformObj : TSimObject;
 dev : TObject;
 son : TT3Sonar;

begin
  r := @apRec^;
  pid := @apRec^;
  sIP := LongIp_To_StrIp(pid^.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdSonarDeploy', sIP + ' : ' + getPacketIDname(pid^.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_TARGET_IFF);
  VNetServer.SendBroadcastCommand(CPID_CMD_SONAR_DEPLOY, apRec);

  PlatformObj := FindT3PlatformByID(r.PlatformID);
  if Assigned(PlatformObj) then
  begin
    dev := TT3Vehicle(PlatformObj).FindDevice(TT3Sonar,r.SensorID);

    if dev is TT3Sonar then
    begin
      son              := TT3Sonar(dev);
      son.timeToActive := r.TimeToActive;
      son.isParam      := r.Param;
      son.ActualCable  := r.ActualCable;
      son.OrderCable   := r.OrderCable;
      son.DeployCounter := 0;
      son.isDeploy      := True;
    end;
  end;
end;

procedure TSimMgr_Server.netRecv_CmdTargetIFF(apRec: PAnsiChar; aSize: Word);
var pid: ^TPacketID;
    sIP: string;
begin
  pid := @apRec^;
  sIP := LongIp_To_StrIp(pid^.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdTargetIFF', sIP + ' : ' + getPacketIDname(pid^.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_TARGET_IFF);
  VNetServer.SendBroadcastCommand(CPID_CMD_TARGET_IFF, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdTransferSonobuoy(apRec: PAnsiChar; aSize: word);
var
  r  : ^TRecCmd_TransferSonobuoy;
  sip: string;
begin
  r   := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_TRANSFER_SONOBUOY);
  VNetServer.SendBroadcastCommand(CPID_CMD_TRANSFER_SONOBUOY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdEditFormation(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TRecEditFormation;
  sIP: string;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_CmdEditFormation', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond, GameSPEED, CPID_EDIT_FORMATION);

	VNetServer.SendBroadcastCommand(CPID_EDIT_FORMATION, apRec);

  inherited;
end;

procedure TSimMgr_Server.netRecv_CmdEmbark(apRec: PAnsiChar; aSize: Word);
var
  rEmb: ^TRecCmd_Embark;
  sIP: string;
  embarked : TT3PlatformInstance;
  evntime : Cardinal;
begin
  rEmb := @apRec^;
  sIP := LongIp_To_StrIp(rEmb.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', sIP + ' : ' + getPacketIDname(rEmb^.pid.recID));

  if Assigned(FOnLogStr) then begin
    FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', ' parent pid' + InttoSTr(rEmb.ParentPlatformID));
    FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', ' this pid  ' + InttoSTr(rEmb.EmbarkPlatformID));
    FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', ' hosted    ' + InttoSTr(rEmb.Hosted_Index));
    FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', ' speed     ' + FloatToStr(rEmb.InitSpeed));
    FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', ' course    ' + FloatToStr(rEmb.InitCourse));
    FOnLogStr('TSimMgr_Server.netRecv_CmdEmbark', ' altitud   ' + FloatToStr(rEmb.InitAltitude));
  end;

  evntime := FMainVTime.GetMillisecond;
  case rEmb^.OrderID of
    { readying timer start }
    CORD_ID_INITIATE :
      if InitiateEmbarkPlatform(rEmb^) then
        VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_EMBARK, apRec);

    { launch embark start immediately }
    CORD_ID_LAUNCH   :
      begin
        embarked := LaunchEmbarkPlatform(rEmb^);
        if Assigned(embarked) then begin
          rEmb^.EmbarkPlatformID := embarked.InstanceIndex;
          VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_EMBARK, apRec);
        end;
      end;
    { launch canceled }
    CORD_ID_CANCEL   : ;
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime,GameSPEED,CPID_CMD_LAUNCH_EMBARK);
end;

procedure TSimMgr_Server.netRecv_CmdSYNCH(apRec: PAnsiChar; aSize: Word);
begin
// walah.. kok dikirimi... ga usah repot-repot.. server aja yg ngirim...

end;

procedure TSimMgr_Server.netRecv_CmdLaunchChaff(apRec: PAnsiChar; aSize: Word);
var
  chaff : TObject;
  r: ^TRecCmd_LaunchChaff;
  sip: string;
  evntime : Cardinal;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchChaff', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  evntime := FMainVTime.GetMillisecond;
  chaff := LaunchChaff(r^);

  if Assigned(chaff) then
  begin
    r.ChaffInstanceIndex := TT3Chaff(chaff).InstanceIndex;
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime,GameSPEED,CPID_CMD_LAUNCH_CHAFF);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_CHAFF , apRec);

  
end;

procedure TSimMgr_Server.netRecv_CmdLauncherChaffState(apRec: PAnsiChar;
  aSize: Word);
var r: ^TRecCmd_LaunchChaffState;
    sip: string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLauncherChaffState', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  //VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCHER_CHAFF_STATE , apRec);
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCHER_CHAFF_STATE);

  LauncherChaffState(r^);
end;

procedure TSimMgr_Server.netRecv_CmdLauncherProperties(apRec: PAnsiChar;
  aSize: Word);
var r: ^TRecCmd_ChaffLauncherProperties;
    sip: string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLauncherProperties', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCHER_CHAFF_PROPS);
  LauncherChaffProp(r^);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCHER_CHAFF_PROPS , apRec);
end;

//bubble
procedure TSimMgr_Server.netRecv_CmdLaunchBubble(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_LaunchBubble;
  sip: string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchBubble', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCH_BUBBLE);
  LaunchBubble(r^);
end;

procedure TSimMgr_Server.netRecv_CmdLaunchBubbleState(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TRecCmd_LaunchBubbleState;
  sip: string;
  evntime : Cardinal;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchBubbleState', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  evntime := FMainVTime.GetMillisecond;
  LauncherBubbleState(r^);
  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime,GameSPEED,CPID_CMD_LAUNCHER_BUBBLE_STATE);
end;

procedure TSimMgr_Server.CheckBombMine(aDeltaMs : Double);
//var
//  I: Integer;
//  weapon : TT3Weapon;
//  FDelay : Double;
//  rec : TRecCmd_Sync_Hit_BombMine;
//  plIndex : Integer;
begin
//  FDelay := 20;

//  FCounter := FCounter + aDeltaMs;
//  if FCounter > FDelay then
//  begin
//    for I := 0 to SimWeapons.itemCount - 1 do
//    begin
//      weapon := SimWeapons.getObject(I) as TT3Weapon;

//      if not (weapon is TT3Bomb) or not (weapon is TT3Mine) then
//        Continue;
//      plIndex := OnCheckBombHit(weapon);
//      if plIndex <> 0 then
//      begin
//        rec.WeaponID := weapon.InstanceIndex;
//        rec.TargetId := plIndex;

//        if weapon is TT3Mine then
//          rec.Lethality := TT3Mine(weapon).MineDefinition.FMine_Def.Mine_Lethality
//        else if weapon is TT3Bomb then
//          rec.Lethality := TT3Bomb(weapon).BombDefinition.FData.Lethality;

//        netSend_CmdSync_Hit_Mine_Bomb(rec);
//      end;
//    end;

//    FCounter := 0;
//  end;
end;

procedure TSimMgr_Server.netRecv_CmdLaunchBomb(apRec: PAnsiChar; aSize: word);
var
  sip         : string;
  aRec        : ^TRecCmd_LaunchBomb;
  projectile  : TT3Bomb;
  rSyn        : TRecCmdSYNCH;
  evntime : Cardinal;
begin
  aRec := @apRec^;

  sip :=  LongIp_To_StrIp(aRec^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchBomb', sIP + ' : ' + getPacketIDname(aRec^.pid.recID));

  evntime := FMainVTime.GetMillisecond;
  projectile := LaunchBomb(aRec^) as TT3Bomb;

  if projectile <> nil then begin
    projectile.Enable         := true;
    aRec^.ProjectileInstanceIndex := projectile.InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime,GameSPEED,CPID_CMD_LAUNCH_BOMB);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_BOMB , apRec);

end;

procedure TSimMgr_Server.netRecv_CmdLaunchMines(apRec: PAnsiChar; aSize: word);
var
  aRec : ^TRecCmd_LaunchMine;
  sip : String;
  projectile : TT3Mine;
  rSyn: TRecCmdSYNCH;
  evntime : Cardinal;
begin
  aRec := @apRec^;

  sip :=  LongIp_To_StrIp(aRec^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchMines', sIP + ' : ' + getPacketIDname(aRec^.pid.recID));

  evntime := FMainVTime.GetMillisecond;
  projectile := LaunchMine(aRec^) as TT3Mine;

  if projectile <> nil then
  begin
    projectile.Enable         := true;
    aRec^.ProjectileInstanceIndex := projectile.InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime, GameSPEED, CPID_CMD_LAUNCH_MINES);

  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_MINES, apRec);
end;


procedure TSimMgr_Server.netRecv_CmdLaunchSonobuoy(apRec: PAnsiChar; aSize: word);
var
  aRec : ^TRecCmd_LaunchSonobuoy;
  sip : String;
  projectile : TT3Sonobuoy;
  rSyn: TRecCmdSYNCH;
  evntime : Cardinal;
begin
  aRec := @apRec^;

  sip :=  LongIp_To_StrIp(aRec^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchSonobuoy', sIP + ' : ' + getPacketIDname(aRec^.pid.recID));

  evntime := FMainVTime.GetMillisecond;
  projectile := LaunchSonobuoy(aRec^) as TT3Sonobuoy;

  if projectile <> nil then
  begin
    projectile.Enable         := true;
    aRec^.ProjectileInstanceIndex := projectile.InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime, GameSPEED, CPID_CMD_LAUNCH_SONOBUOY);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_SONOBUOY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdSync_Hit_Mine_Bomb(apRec: PAnsiChar; aSize: word);
begin

end;

procedure TSimMgr_Server.netRecv_CmdBubbleLauncherProperties(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TRecCmd_BubbleLauncherProperties;
  sip: string;
  evntime : Cardinal;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdBubbleLauncherProperties', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  evntime := FMainVTime.GetMillisecond;
  LauncherBubbleProp(r^);

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime,GameSPEED,CPID_CMD_LAUNCHER_BUBBLE_PROPS);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCHER_BUBBLE_PROPS , apRec);
end;

procedure TSimMgr_Server.netRecv_CmdLaunchMissile(apRec: PAnsiChar; aSize: Word);
var r: ^TRecCmd_LaunchMissile;
    sip: string;
    projectile : TT3Weapon;
    rSyn: TRecCmdSYNCH;
    evntime : Cardinal;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchMissile', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  // check hybrid missile ato bukan
  evntime := FMainVTime.GetMillisecond;
  if r^.Order = CORD_ID_launch_hybrid then
    // launch hybrid
    projectile := LaunchHybrid(r^) as TT3HybridMissile
  else
    projectile := LaunchMissile( r^) as TT3Missile;

  if projectile <> nil then begin
    projectile.Enable         := true;
    r^.ProjectileInstanceIndex := projectile.InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, evntime,GameSPEED,CPID_CMD_LAUNCH_MISSILE);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_MISSILE , apRec);
end;

procedure TSimMgr_Server.netRecv_CmdMissileEngageProperties(apRec: PAnsiChar;
  aSize: Word);
var
  r : ^TRecEngagementModeWeapon;
  sip : string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdMissileEngageProperties', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  LaunchMissileEngageProps(r^);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ENGAGEMENTMODE);
  VNetServer.SendBroadcastCommand(CPID_CMD_ENGAGEMENTMODE , apRec);
end;

procedure TSimMgr_Server.netRecv_CmdMissileProperties(apRec: PAnsiChar;
  aSize: Word);
var r: ^TRecFiringModeWeapon;
    sip: string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdMissileProperties', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  LaunchMissileProps(r^);
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_FIRINGMODE);

  VNetServer.SendBroadcastCommand(CPID_CMD_FIRINGMODE , apRec);
end;

procedure TSimMgr_Server.netRecv_CmdLaunchTorpedo(apRec: PAnsiChar;
  aSize: Word);
var r: ^TRecCmd_LaunchMissile;
    sip: string;
    projectile : TT3Torpedo;
    rSyn: TRecCmdSYNCH;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunchTorpedo', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  projectile :=  LaunchTorpedo( r^) as TT3Torpedo;

  if projectile <> nil then begin
    projectile.Enable         := true;
    r^.ProjectileInstanceIndex := projectile.InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCH_TORPEDO);

  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_TORPEDO , apRec);
end;

procedure TSimMgr_Server.netRecv_CmdGunFire(apRec: PAnsiChar; aSize: Word);
var
    r: ^TRecCmd_GunFire;
    sip: string;
begin
  r := @apRec^;
  r^.SessionID := SessionID;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdGunFire', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  GunFire(r^);
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED, CPID_CMD_GUN_FIRE);
end;

procedure TSimMgr_Server.netRecv_CmdIFFSearchMode(apRec: PAnsiChar;
  aSize: Word);
var
 //r : ^TRecCmd_IFFSearchMode;
 pid: ^TPacketID;
 sIP: string;
begin
  //r := @apRec^;
  pid := @apRec^;
  sIP := LongIp_To_StrIp(pid^.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdIFFSearchMode', sIP + ' : ' + getPacketIDname(pid^.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_IFF_MODE_SEARCH);
  VNetServer.SendBroadcastCommand(CPID_IFF_MODE_SEARCH, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdGameControl(apRec: PAnsiChar; aSize: Word);
var
    r: ^TRecCmd_GameCtrl;
    sip: string;
begin
  r := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdGameControl', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  case r^.GameCtrl of
    CORD_ID_start       : begin
      FOnLogStr('TSimMgr_Server.netRecv_CmdGameControl', sip +  ' Game Start' );

      GameSPEED           := 1.0;
      GameStart;
    end;
    CORD_ID_pause       : begin
      FOnLogStr('TSimMgr_Server.netRecv_CmdGameControl', sip +  ' Game Pause' );

      GamePause;
      GameSPEED           := 0.0;
    end;
    CORD_ID_game_speed  : begin;
      FOnLogStr('TSimMgr_Server.netRecv_CmdGameControl', sip +  ' Game speed: ' + IntToStr(Round(r^.GameSpeed)) );

      GameSPEED :=  r^.GameSpeed;

//      if Assigned(NReplay) then NReplay.ReplaySpeedMultiplier :=  Round(r^.GameSpeed);
    end;
  end;

  FOnUpdateGameInfo(byte(FGameState) , GameSPEED);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_GAME_CTRL);
  VNetServer.SendBroadcast_UDP_Data(CPID_CMD_GAME_CTRL , apRec);
end;

procedure TSimMgr_Server.netRecv_CmdLaunch_RP(apRec: PAnsiChar; aSize: Word);
var
    r  : ^TRecCmd_LaunchRP;
    sIP: string;
    pi : TT3PlatformInstance;
begin
  r  := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunch_RP', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  pi := LaunchRuntimePlatform(r^);
  r^.NewPlatformID := pi.InstanceIndex;

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCH_RUNTIME_PLATFORM);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_RUNTIME_PLATFORM, apRec);
end;

//aldy sefan --
procedure TSimMgr_Server.netRecv_CmdLaunch_NonRP(apRec: PAnsiChar; aSize: Word);
var
    r  : ^TRecCmd_LaunchNonRP;
    sIP: string;
    pi : TT3PlatformInstance;
begin
  r  := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  pi := LaunchNonRealtimeRuntimePlatform(r^);
  r^.NewPlatformID := pi.InstanceIndex;

  FOnLogStr('TSimMgr_Server.netRecv_CmdLaunch_NonRP', sIP + ' : ' + getPacketIDname(r^.pid.recID) + '\n type: ' + IntToStr(r^.PointType) + '\n symbol : ' + r^.Symbol + '\n id ' + IntToStr(r^.NewPlatformID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdOverlayTemplate(apRec: PAnsiChar; aSize: Word);
var
    r  : ^TRecCmd_OverlayTemplate;
    sIP, s: string;
begin
  r  := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  case r^.IdAction of
    1 : s := 'Create';
    2 : s := 'Edit';
    3 : s := 'Delete';
  end;

  FOnLogStr('TSimMgr_Server.netRecv_CmdOverlayTemplate', sIP + ' : '+ s + ' Overlay Template : ' + r^.Name);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_OVERLAYTEMPLATE);
  VNetServer.SendBroadcastCommand(CPID_CMD_OVERLAYTEMPLATE, apRec);
end;

procedure TSimMgr_Server.netRecv_CopyChaffLauncherProperty(apRec: PAnsiChar;
  aSize: word);
var
  r : ^TRecCmd_LaunchChaffState;
  sip : string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CopyChaffLauncherProperty', sIP + ' : ' + getPacketIDname(r^.pid.recID));


  CopyChaffLauncherProp(r^);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond, GameSPEED,
      CPID_CHAFF_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_CHAFF_PROPERTY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdDecoys(apRec: PAnsiChar; aSize: word);
var
  r  : ^TRecCmdDecoys;
  decoys : TT3PlatformInstance;
begin
  r   := @apRec^;

  decoys := DeployDecoys(r^);

  if Assigned(decoys) then
  begin
    r.DecoyInstanceIndex := decoys.InstanceIndex;
    decoys.Parent := nil;
  end;

  if Assigned(FWriter) then FWriter.WriteData(apRec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DECOYS);
  VNetServer.SendBroadcastCommand(CPID_CMD_DECOYS, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdOverlayStaticShape(apRec: PAnsiChar; aSize: word);
var
  r  : ^TRecCmd_OverlayStaticShape;
  sip, s, ss: string;
begin
  r   := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  case r^.IdAction of
    1 : s := 'Create';
    2 : s := 'Edit';
    3 : s := 'Delete';
  end;

  case r^.ShapeID of
    1 : ss := 'Text';
    2 : ss := 'Line';
    3 : ss := 'Rectangle';
    4 : ss := 'Circle';
    5 : ss := 'Elipse';
    6 : ss := 'Arc';
    7 : ss := 'Sector';
    8 : ss := 'Grid';
    9 : ss := 'Polygon';
  end;

  FOnLogStr('TSimMgr_Server.netRecv_CmdOverlayStaticShape', sIP + ' : '+s+' Static '+ss+' in ' + r^.TemplateName);

  if Assigned(FWriter) then FWriter.WriteData(apRec,FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_OVERLAYSTATICSHAPE);
  VNetServer.SendBroadcastCommand(CPID_CMD_OVERLAYSTATICSHAPE, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdDetectabilityChange(apRec: PAnsiChar;
  aSize: Word);
var
  rec : ^TRecDetectability;
  sip : string;
begin
  rec := @apRec^;
  sip := LongIp_To_StrIp(rec^.pid.ipSender);

  if Assigned(FWriter) then
    FWriter.WriteData(apRec, FMainVTime.GetMillisecond, GameSPEED,
      CPID_EDIT_DETECTABILITY);

  VNetServer.SendBroadcastCommand(CPID_EDIT_DETECTABILITY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdOverlayDynamicShape(apRec: PAnsiChar; aSize: word);
var
  r  : ^TRecCmd_OverlayDynamicShape;
  sip, s, ss: string;
begin
  r   := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  case r^.IdAction of
    1 : s := 'Create';
    2 : s := 'Edit';
    3 : s := 'Delete';
  end;

  case r^.ShapeID of
    1 : ss := 'Text';
    2 : ss := 'Line';
    3 : ss := 'Rectangle';
    4 : ss := 'Circle';
    5 : ss := 'Elipse';
    6 : ss := 'Arc';
    7 : ss := 'Sector';
    8 : ss := 'Grid';
    9 : ss := 'Polygon';
  end;

  FOnLogStr('TSimMgr_Server.netRecv_CmdOverlayDynamicShape', sIP + ' : '+s+' Dynamic '+ss+' in ' + r^.TemplateName);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_OVERLAYDYNAMICSHAPE);
  VNetServer.SendBroadcastCommand(CPID_CMD_OVERLAYDYNAMICSHAPE, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdDynamicTrack(apRec: PAnsiChar; aSize: word);
var
  r  : ^TRecCmd_OverlayDynamicTrack;
  sip: string;
begin
  r   := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DYNAMIC_TRACK);
  VNetServer.SendBroadcastCommand(CPID_CMD_DYNAMIC_TRACK, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdUpdatePlatform_PROPERTY(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecCmd_Platform_SET_PROPERTY;
  sIP : string;
  //pi : TT3PlatformInstance;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_CmdUpdatePlatform_PROPERTY', sIP + ' : ' + getPacketIDname(r^.pid.recID));
  //pi :=
  UpdatePropertyPlatform(r^);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_UPDATE_PLATFORM_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_CMD_UPDATE_PLATFORM_PROPERTY, apRec);
end;

procedure TSimMgr_Server.netRecv_GameSetting(apRec: PAnsiChar; aSize: Word);
var
    r: ^TRecCmd_GameSetting;
    sip: string;
begin
  r := @apRec^;

  sip :=  LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_GameSetting', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_GAME_SETTING);

  ChangeGameSetting(r^);
  FOnLogStr('TSimMgr_Server.netRecv_GameSetting', sIP + ' : Update Game Setting : ');
  VNetServer.SendBroadcastCommand(CPID_GAME_SETTING , apRec);
end;

procedure TSimMgr_Server.netRecv_MessageHandling(apRec: PAnsiChar; aSize: word);
var
  recRecv : ^TRecSendMessage;
  sip : string;
begin
  recRecv := @apRec^;
  sip :=  LongIp_To_StrIp(recRecv^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_MessageHandling', sIP + ' : Message Handling : ' + getPacketIDname(recRecv^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_MODIF_COMM);
  VNetServer.SendBroadcastCommand(CPID_REC_MESSAGE, apRec);
end;

procedure TSimMgr_Server.netRecv_ModifComm(apRec: PAnsiChar; aSize: Word);
var
  rc  : ^TRecModifComm;
  sip : string;
begin
  rc := @apRec^;

  sip :=  LongIp_To_StrIp(rc^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_ModifComm', sIP + ' : Modify Communication : ' + getPacketIDname(rc^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_MODIF_COMM);

  VNetServer.SendBroadcastCommand(CPID_CMD_MODIF_COMM, apRec);
end;

procedure TSimMgr_Server.netRecv_PlatformGroupChange(apRec: PAnsiChar;
  aSize: word);
var
  rec : ^TRecPlatformGroupChange;
  sip : string;
begin
  rec := @apRec^;

  sip :=  LongIp_To_StrIp(rec^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_PlatformGroupChange', sIP + ' : Platform Change Group : ' + getPacketIDname(rec^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_PLAT_GROUP_CHANGE);

  VNetServer.SendBroadcastCommand(CPID_CMD_PLAT_GROUP_CHANGE, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdUpdateNRP_PROPERTY(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecCmd_NRP_SET_PROPERTY;
  sIP : string;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_CmdUpdateNRP_PROPERTY', sIP + ' : Update Non Real Platfrom Property : ' + getPacketIDname(r^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_UPDATE_NRP_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_CMD_UPDATE_NRP_PROPERTY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdESM_CHANGE_PROPERTY(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecCmd_ESM_SET_PROPERTY;
  sIP : String;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ESM_SET_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_CMD_ESM_SET_PROPERTY, apRec);

  FOnLogStr('TSimMgr_Server.netRecv_CmdESM_CHANGE_PROPERTY', sIP + ' : Change Domain or Identity ESM : identity ('+IntToStr(r^.identity)+')' + 'domain('+IntToStr(r^.domain)+')');
end;

procedure TSimMgr_Server.netRecv_CmdPlatform_Repair(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecCmd_Platform_Repair;
  sIP : String;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_PLATFORM_REPAIR);

  FOnLogStr('TSimMgr_Server.netRecv_CmdPlatform_Repair', sIP + ' : Repair Platform id : ' + IntToStr(r^.PlatfomID) + ' >> health >> ' + FloatToStr(r^.Health));

  RepairPlatform(r^);

  VNetServer.SendBroadcastCommand(CPID_CMD_PLATFORM_REPAIR, apRec);
end;

procedure TSimMgr_Server.netRecv_Cmd_MergeTrack(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecCmd_MergeTrack;
  sIP : String;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,
    GameSPEED,CPID_CMD_MERGE_TRACK);

  if r^.OrderMerge then
    FOnLogStr('TSimMgr_Server.netRecv_Cmd_MergeTrack', sIP + ' : Merge Track ')
  else
    FOnLogStr('TSimMgr_Server.netRecv_Cmd_MergeTrack', sIP + ' : Unmerge Track ');

  VNetServer.SendBroadcastCommand(CPID_CMD_MERGE_TRACK, apRec);
end;

procedure TSimMgr_Server.netRecv_Cmd_Change_SystemState(apRec: PAnsiChar;
  aSize: word);
var
  rec : ^TRecCmd_Change_SystemState;
  sIP : String;
begin
  rec := @apRec^;
  sIP := LongIp_To_StrIp(rec^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,
    GameSPEED, CPID_CMD_CHANGE_SYSTEMSTATE);

  FOnLogStr('TSimMgr_Server.netRecv_Cmd_Change_SystemState', sIP + ' : Change System State Platform id : ' + IntToStr(rec^.PlatfomID)
                + ' , with State ID : ' + IntToStr(rec^.StateID)
                + ' >> Value >> ' + FloatToStr(rec^.nValue));

  ChangeSystemState(rec^);

  VNetServer.SendBroadcastCommand(CPID_CMD_CHANGE_SYSTEMSTATE, apRec);
end;

procedure TSimMgr_Server.netRecv_Cmd_DataLink(apRec: PAnsiChar; aSize: Word);
var
  sIP, logString : string;
  r : ^TRecCmd_DataLink;
  rec : TrecCmd_DataLink_RemoveTrack;
  dataLink : TT3DataLink;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  case r^.OrderDL of
    odlAdd      : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' platformID: ' + IntToStr(r^.platformID);
    odlRemove   : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' platformID: ' + IntToStr(r^.platformID);
    odlForce    : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' force: ' + IntToStr(r^.Force);
    odlBand     : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' band : ' + IntToStr(r^.Band);
    odlActivate : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' platformID: ' + IntToStr(r^.platformID);
    odlPlay     : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' play';
    odlStop     : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' stop';
    odlPUStatus : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' set PU Status';
    odlPool     : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' pooling data';
    odlPooledTracks : logString := sIP + ' Datalink ' + IntToStr(r^.DataLinkID) + ' | order: ' + IntToStr(r^.OrderDL) + ' retreive datalink tracks';
  end;

  FOnLogStr('TSimMgr_Server.netRecv_Cmd_DataLink', logString);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DATALINK);
  VNetServer.SendBroadcastCommand(CPID_CMD_DATALINK, apRec);

  // if not pooling request, update track datalink
  if (r^.OrderDL <> odlPool) and (r^.OrderDL <> odlPooledTracks) then
  begin
    dataLink := DataLinkManager.getDatalink(r^.DataLinkID);
    if Assigned(EventManager) then
      EventManager.OnDatalinkTracksUpdate(dataLink);
  end;

  //jika stop kirim lagi remove datalink
  if r^.OrderDL = odlStop then
  begin
     FOnLogStr('TSimMgr_Server.netRecv_Cmd_DataLink', sIP + ': remove detectedtrack by datalink ');
     rec.pid := r^.pid;
     rec.SessionID := SessionID;
     rec.DataLinkID := r^.DataLinkID;

    if Assigned(FWriter) then FWriter.WriteData(@rec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DATALINK_REMOVETRACK);
     VNetServer.SendBroadcastCommand(CPID_CMD_DATALINK_REMOVETRACK, @rec);
     FOnLogStr('TSimMgr_Server.netRecv_Cmd_DataLink', 'stop datalink, remove detected track by datalink');
  end;
end;

procedure TSimMgr_Server.netRecv_CMD_DataLink_AddTrack(apRec: PAnsiChar; aSize: word);
var
  sIP, logString : string;
  r : ^TRecCmd_DataLink_AddTrack;
begin
  r := @apRec^;

  if not (r^.SessionID = FSessionID) then
    Exit;

  sIP := LongIp_To_StrIp(r^.pid.ipSender);
  logString := sIP + ' DataLink AddTrack ' + 'source : ' + IntToStr(r^.PlatformSourceID) + ' addtrackid : ' + IntToStr(r^.PlatformDetectedID);

  FOnLogStr('TSimMgr_Server.netRecv_CMD_DataLink_AddTrack', logString);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DATALINK_ADDTRACK);
  VNetServer.SendBroadcastCommand(CPID_CMD_DATALINK_ADDTRACK, apRec);
end;

procedure TSimMgr_Server.netRecv_CMD_DataLink_RemoveTrack(apRec: PAnsiChar;
  aSize: word);
var
  sIP, logString : string;
  r : ^TRecCmd_DataLink_AddTrack;
begin
  r := @apRec^;

  if not (r^.SessionID = FSessionID) then
    Exit;

  sIP := LongIp_To_StrIp(r^.pid.ipSender);
  logString := sIP + ' DataLink RemoveTrack ' + 'source : ' + IntToStr(r^.PlatformSourceID) + ' trackid : ' + IntToStr(r^.PlatformDetectedID);

  FOnLogStr('TSimMgr_Server.netRecv_CMD_DataLink_RemoveTrack', logString);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_DATALINK_REMOVETRACK);
  VNetServer.SendBroadcastCommand(CPID_CMD_DATALINK_REMOVETRACK, apRec);
end;

procedure TSimMgr_Server.netRecv_Cmd_FireControl(apRec : PAnsiChar; aSize: word);
var
  r : ^TRecCmd_FC;
  sIP : string;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_Cmd_FireControl', sIP + ' FC order ID: ' + IntToStr(r^.OrderID) + ' radar id: ' + IntToStr(r^.FCRadarID));

  FireControlCommand(r^);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ASSIGN_FIRECONTROL);
  VNetServer.SendBroadcastCommand(CPID_CMD_ASSIGN_FIRECONTROL, apRec);
end;

procedure TSimMgr_Server.netRecv_Cmd_LastUpdate_Platform(apRec: PAnsiChar;
  aSize: word);
var
  r : ^TRecCmd_LastUpdatePlatform;
  pi : TT3PlatformInstance;
  nrp : TT3NonRealVehicle;
  updateTime : TDateTime;
  MySettings: TFormatSettings;
begin
  r := @apRec^;

  MySettings := GetFormatSettings();

  pi := FindNonRealPlatformByID(r^.PlatfomID);
  if pi is TT3NonRealVehicle then
  begin
    nrp := TT3NonRealVehicle(pi);
    nrp.LastUpdate := r^.UpdateTime;
    //TryStrToDateTime(nrp.LastUpdate, updateTime);
    updateTime := StrToDateTime(nrp.LastUpdate, MySettings);

    nrp.UpdateGrowNRP(updateTime, GameTIME);
  end;

  if not (r^.SessionID = FSessionID) then
    Exit;

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_LASTUPDATE_PLATFORM);
  VNetServer.SendBroadcastCommand(CPID_LASTUPDATE_PLATFORM, apRec);
end;

procedure TSimMgr_Server.netRecv_Cmd_Embark_Land(apRec : PAnsiChar; aSize: word);
var
  r : ^TRecCmd_Embark_Landing;
  rRemove : TRecCmd_SelectPlatformToRemove;
  sIP : string;
  embarkObj : TSimObject;
begin
  r := @apRec^;

  case r^.OrderID of
    CORD_SET_READYING : begin
      if IDEmbarkTemp <> r^.EmbarkPlatformID then
      begin
        inherited;
        IDEmbarkTemp := r^.EmbarkPlatformID;
        FOnLogStr('TSimMgr_Server.netRecv_Cmd_Embark_Land', sIP + ' Landing Embark: ' + IntToStr(r^.EmbarkPlatformID) + ' to: ' + IntToStr(r^.ParentPlatformID));

        if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_EMBARK_LAND);
        VNetServer.SendBroadcastCommand(CPID_CMD_EMBARK_LAND, apRec);
      end;
    end;
    CORD_FINISH_READYING :
    begin
      FinishReadyingTime(r^);
      FOnLogStr('TSimMgr_Server.netRecv_Cmd_Embark_Land', sIP + ' Landing Embark: ' + IntToStr(r^.EmbarkPlatformID) + ' to: ' + IntToStr(r^.ParentPlatformID));

      if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_EMBARK_LAND);
      VNetServer.SendBroadcastCommand(CPID_CMD_EMBARK_LAND, apRec);
    end;
  end;


  embarkObj := FindT3PlatformByID(r.EmbarkPlatformID);
  if Assigned(embarkObj) then
  begin
    //embarkObj.FreeMe := True;
    rRemove.SessionID := SessionID;
    rRemove.PlatfomID := TT3PlatformInstance(embarkObj).InstanceIndex;
    rRemove.isNRPlatform := False;

    if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_REMOVE_PLATFORM);
    VNetServer.SendBroadcastCommand(CPID_CMD_REMOVE_PLATFORM, @rRemove);

    RemovePlatformByOperator(rRemove);
  end;
end;

procedure TSimMgr_Server.netRecv_CmdRemovePlatfromByOperator(apRec: PAnsiChar; aSize: Word);
var
    r: ^TRecCmd_SelectPlatformToRemove;
    sIP : String;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.netRecv_CmdRemovePlatfromByOperator', sIP + ' : ' + getPacketIDname(r^.pid.recID) + ' => ' + IntToStr(r^.PlatfomID));

  { call remove datalink platform first }
  RemoveDatalinkPlatform(r^);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_REMOVE_PLATFORM);
  VNetServer.SendBroadcastCommand(CPID_CMD_REMOVE_PLATFORM, apRec);

  RemovePlatformByOperator(r^);

end;

procedure TSimMgr_Server.netRecvMapCmd(apRec: PAnsiChar; aSize: Word);
var
  r: ^TRec_MapData;
  pf : TT3PlatformInstance;
begin
  r := @apRec^;

  if r^.SessionID <> SessionID then exit;

  pf := FindT3PlatformByID(r^.PlatformID);
  if pf = nil then exit;

  if r^.OrderID = CORD_MAPS_DEPTH then begin
    pf.LandCheck(r^.IsOnLand, r^.dMin, r^.dMax);

    if not r^.IsOnLand then begin
      pf.DepthCheck(r^.dAvail, r^.dMin, r^.dMax);
    end;
  end;

  VNetServer.SendBroadcastCommand(CPID_CMD_MAPS,apRec);
end;

procedure TSimMgr_Server.netRecv_CmdChangeTrackNumber(apRec: PAnsiChar; aSize: Word);
var
  r: ^TRecCmd_Platform_CHANGE_TRACKNUMBER;
  sIP : String;
begin
  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_CmdChangeTrackNumber', sIP + ' : ' + getPacketIDname(r^.pid.recID) + 'platform => ' + IntToStr(r^.PlatfomID) + ' Track => ' + IntToStr(r^.newTrackNumber) + ' ['+r^.oldESMNumber+','+r^.newESMNumber+']');
  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_CHANGE_TRACK_NUMBER);
  VNetServer.SendBroadcastCommand(CPID_CMD_CHANGE_TRACK_NUMBER, apRec);

end;

procedure TSimMgr_Server.UnassignWeaponEvent(weapon: TT3Weapon);
begin
  inherited;

  if weapon is TT3GunOnVehicle then
  begin
    TT3GunOnVehicle(weapon).OnGunFire     := nil;
    TT3GunOnVehicle(weapon).OnGunCeaseFire := nil;
  end
end;

function TSimMgr_Server.UpdatePropertyPlatform(const rec : TRecCmd_Platform_SET_PROPERTY): TT3PlatformInstance;
begin
   //update domain
   Result := inherited;
end;

procedure TSimMgr_Server.netRecv_Session_Cub_Assign(apRec: PAnsiChar; aSize: Word);
var
    rq: ^TRecCubAssign;
    ipTo, ipFrom, str: string;
    i: Integer;
    g : TAssignGroup;
begin
  rq := @apRec^;

  ipTo   := LongIp_To_StrIp(rq^.LongIP);

  //if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CUBICLEASSIGN);

  case rq.cmdID  of
    CMD_ASSIGN_INFO_START : begin
      if rq^.LongIP = 0 then begin

        FAllCubAssign.Clear; // mestinya clear and free item.
        ClearAndFreeItems(FAllCubAssign);
        str := ' CMD_ASSIGN_INFO_START ';
      end;

    end;
    CMD_ASSIGN_INFO_DATA: begin

      if TStringList(FAllCubAssign).Find(ipTo, i) then begin
        g := FAllCubAssign.Objects[i] as TAssignGroup;
        g.Add(rq^.GroupID);
      end
      else begin
        g := TAssignGroup.Create;
        g.Add(rq^.GroupID);
        FAllCubAssign.AddObject(ipTo, g);
      end;
      str := ' CMD_ASSIGN_INFO_DATA groupID ' + IntToStr(rq^.GroupID)
       +' to ' + ipTo;

    end;
    CMD_ASSIGN_INFO_END: begin
       // disconnect
       VNetServer.DisconnectFromSessionServer;

        str := ' CMD_ASSIGN_INFO_END ';
//       VNetServer.StartListen;
    end;
  end;
  ipFrom := LongIp_To_StrIp(rq^.pid.ipSender);
  FOnLogStr('TSimMgr_Server.netRecv_Session_Cub_Assign', ipFrom + ' : ' + getPacketIDname(rq^.pid.recID) + ' : ' + str);

end;

procedure TSimMgr_Server.NetRecv_cmd_environment(apRec: PAnsiChar; aSize: Word);
var
  r : ^TrecSinc_Envi;
  sIP : string;
begin
  inherited;

  r   := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_ENVI);
  VNetServer.SendBroadcastCommand(CPID_CMD_ENVI, apRec);
end;

procedure TSimMgr_Server.NetRecv_SincBOLWMissile(apRec: PAnsiChar; aSize: Word);
var
  r : ^TrecSinc_BOLW;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_SincBOLW);
  VNetServer.SendBroadcastCommand(CPID_SincBOLW, apRec);
end;

procedure TSimMgr_Server.NetRecv_SincMissileEnvi(apRec: PAnsiChar; aSize: Word);
var
  r : ^TrecMissile_Envi;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_Missile_Envi);
  VNetServer.SendBroadcastCommand(CPID_CMD_Missile_Envi, apRec);
end;

procedure TSimMgr_Server.NetRecv_SincRBLWMissile(apRec: PAnsiChar; aSize: Word);
var
  r : ^TrecSinc_RBLW;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_SincRBLW);
  VNetServer.SendBroadcastCommand(CPID_SincRBLW, apRec);
end;

procedure TSimMgr_Server.NetRecv_SincWaypoint(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecSinc_Waypoint;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  FOnLogStr('TSimMgr_Server.NetRecv_SincWaypoint ', sIP + ' : ' + getPacketIDname(r^.pid.recID));

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_SincWaypoint);
  VNetServer.SendBroadcastCommand(CPID_SincWaypoint, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdBombProperty(apRec: PAnsiChar; aSize: word);
var
  r : ^TRecBombProperty;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_BOMB_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_BOMB_PROPERTY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdMineProperty(apRec: PAnsiChar; aSize: word);
var
  r : ^TRecMineProperty;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_MINE_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_MINE_PROPERTY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdTorpedoProperty(apRec: PAnsiChar; aSize: Word);
var
  r : ^TRecTorpedoProperty;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_TORPEDO_PROPERTY);
  VNetServer.SendBroadcastCommand(CPID_TORPEDO_PROPERTY, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdBombSyncPanelWeapon(apRec: PAnsiChar;
  aSize: word);
var
  r  : ^TRecBombPanelWeapon;
  sip: string;
begin
  inherited;

  r   := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec,FMainVTime.GetMillisecond,GameSPEED,CPID_BOMB_SYNC_PANEL_WEAPON);
  VNetServer.SendBroadcastCommand(CPID_BOMB_SYNC_PANEL_WEAPON, apRec);
end;

procedure TSimMgr_Server.netRecv_CmdTorpedoSyncPanelWeapon(apRec: PAnsiChar;
  aSize: word);
var
  r  : ^TRecTorpedoPanelWeapon;
  sip: string;
begin
  inherited;

  r   := @apRec^;
  sip :=  LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec,FMainVTime.GetMillisecond,GameSPEED,CPID_TORPEDO_SYNC_PANEL_WEAPON);

  VNetServer.SendBroadcastCommand(CPID_TORPEDO_SYNC_PANEL_WEAPON, apRec);
end;

procedure TSimMgr_Server.netRecv_Synch_ESMvarian(apRec: PAnsiChar;
  aSize: word);
var
  r : ^TRecCmd_EsmVariance;
  sIP : String;
begin
  inherited;

  r := @apRec^;
  sIP := LongIp_To_StrIp(r^.pid.ipSender);

  if Assigned(FWriter) then FWriter.WriteData(apRec, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_SYNC_ESM_VARIANCE);
  VNetServer.SendBroadcastCommand(CPID_CMD_SYNC_ESM_VARIANCE, apRec);
end;

procedure TSimMgr_Server.NetSessionOnConnectedRequestCubicle(sender: TObject);
var r: TRecRequest;
begin
  r.RequestID := CREQID_ALL_CUB_ASSIGN;
  VNetServer.SendRequestToSession(CPID_REQ, @r);
end;

procedure TSimMgr_Server.netSend_CubicleAssignInfo(const toIp: string);
var
    rq: TRecCubAssign;
    ip: string;
    i, j: Integer;
    g : TAssignGroup;
begin
  rq.LongIP := 0;
  rq.cmdID  := CMD_ASSIGN_INFO_START;

  VNetServer.SendTo(CPID_CUBICLEASSIGN, @rq, toip);

  OnLogEventStr('TSimMgr_Server.netSend_CubicleAssignInfo', 'Cubicle Count : ' + IntToStr(FAllCubAssign.Count));

  rq.cmdID  := CMD_ASSIGN_INFO_DATA;
  for i := 0 to FAllCubAssign.Count - 1 do  begin
    ip := FAllCubAssign[i];
    g := FAllCubAssign.Objects[i] as TAssignGroup;
    rq.LongIP  := StrIp_To_LongIp(ip);
    for j := 0 to g.Count - 1 do begin
      rq.GroupID := g.AssList[j];
      VNetServer.SendTo(CPID_CUBICLEASSIGN, @rq, toip);
    end;
  end;

  rq.LongIP := 0;
  rq.cmdID  := CMD_ASSIGN_INFO_END;
  VNetServer.SendTo(CPID_CUBICLEASSIGN, @rq, toip);
end;

procedure TSimMgr_Server.netSend_PlatformFreeMe(Sender: TObject);
Var
  rec : TRecPlatformFreeMe;
begin
  inherited;

   if Assigned(FWriter) then FWriter.WriteData(@rec, FMainVTime.GetMillisecond,GameSPEED,CPID_PLATFORM_FREEME);

  if Sender is TT3PlatformInstance then begin
    rec.SessionID   := FSessionID;
    rec.PlatformID  := TT3PlatformInstance(Sender).InstanceIndex;
    rec.reasondestroy := TT3PlatformInstance(Sender).reasonDestroy;
    rec.FreeMe      := TT3PlatformInstance(Sender).FreeMe;
  end;

  VNetServer.SendBroadcastCommand(CPID_PLATFORM_FREEME,@rec);
end;

procedure TSimMgr_Server.StopNetwork;
begin
  VNetServer.UnRegisterAllPacket;
end;

procedure TSimMgr_Server.SyncWaypointContinousEvent(aShipID, aObjIndex: Integer;
  aObjType, aObjMode: Byte; aObjDepth, aObjSpacing: Double; aObjQty: Integer;
  aDeployUntilNextWaypoint: Boolean);
var
  recSycn : TRecSinc_Waypoint;
begin
  with recSycn do
  begin
    Cmd := 7;
    List_Index := aObjType;
    SessionID := FSessionID;
    platformID := aShipID;
    Obj_Index := aObjIndex;
    Obj_Type := aObjType;
    Obj_Mode := aObjMode;
    Obj_Depth := aObjDepth;
    Obj_Spacing := aObjSpacing;
    Obj_Qty := aObjQty;
    Obj_ContinueDeploy := aDeployUntilNextWaypoint;
  end;
  NetRecv_SincWaypoint(@recSycn, SizeOf(recSycn));
end;

procedure TSimMgr_Server.GameStart;
begin
  inherited;
  FOnUpdateGameInfo( byte(FGameState) , GameSPEED);
end;


procedure TSimMgr_Server.GamePause;
begin

  inherited;
  FOnUpdateGameInfo( byte(FGameState) , GameSPEED);

end;

procedure TSimMgr_Server.PrepareNewScenario;
begin
  FMainVTime.Reset();

end;


procedure TSimMgr_Server.ChaffLauncherFire(Sender: TObject);
var
  chaff : TObject;
  pi : TT3PlatformInstance;
  cob : TObject;
  lc : TObject;
  rChaff : TRecCmd_LaunchChaff;
  rSyn: TRecCmdSYNCH;
begin
  inherited;
  if not (Sender is TT3ChaffLauncher) then exit;
  pi   := FindT3PlatformByID(TT3PlatformInstance(TT3ChaffLauncher(Sender).Parent).InstanceIndex);

  if Assigned(OnLogEventStr) then
    OnLogEventStr('TSimMgr_Server.ChaffLauncherFire', 'Server : ' + TT3ChaffLauncher(Sender).InstanceName + ' fire');

  if (pi = nil) and not (pi is TT3Vehicle) then
    exit;

  cob := FindT3DeviceByID(TT3ChaffOnVehicle,TT3ChaffLauncher(Sender).Parent,TT3ChaffLauncher(Sender).ChaffInstanceIndex) ;
  lc  := FindT3DeviceByID(TT3ChaffLauncher,TT3ChaffLauncher(Sender).Parent,TT3ChaffLauncher(Sender).Number) ;

  if (cob = nil) or (lc = nil) then exit;

  rChaff.SessionID := SessionID;
  rChaff.ParentPlatformID := TT3PlatformInstance(TT3ChaffLauncher(Sender).Parent).InstanceIndex;
  rChaff.ChaffOnVehicleID := TT3ChaffLauncher(Sender).ChaffInstanceIndex;
  rChaff.LauncherID := TT3ChaffLauncher(Sender).InstanceIndex;
  rChaff.ChaffInstanceIndex := 0; // klo ini server biar di kasih

  chaff := LaunchChaff(rChaff);

  if chaff <> nil then begin
    //chaff.Enable         := true;
    rChaff.ChaffInstanceIndex := TT3Chaff(chaff).InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;

  if Assigned(FWriter) then
    FWriter.WriteData(@rChaff, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCH_CHAFF);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_CHAFF , @rChaff);
end;

procedure TSimMgr_Server.ChaffLauncherStop(Sender: TObject);
var
  pi : TT3PlatformInstance;
  cob : TObject;
  lc : TObject;
  rLC : TRecCmd_LaunchChaffState;
begin
  inherited;

  if not (Sender is TT3ChaffLauncher) then exit;
  pi   := FindT3PlatformByID(TT3PlatformInstance(TT3ChaffLauncher(Sender).Parent).InstanceIndex);

  if Assigned(OnLogEventStr) then
    OnLogEventStr('TSimMgr_Server.ChaffLauncherStop', 'Server : ' + TT3ChaffLauncher(Sender).InstanceName + ' stop');

  if (pi = nil) and not (pi is TT3Vehicle) then
    exit;

  cob := FindT3DeviceByID(TT3ChaffOnVehicle,TT3ChaffLauncher(Sender).Parent,TT3ChaffLauncher(Sender).ChaffInstanceIndex) ;
  lc  := FindT3DeviceByID(TT3ChaffLauncher,TT3ChaffLauncher(Sender).Parent,TT3ChaffLauncher(Sender).Number) ;

  if (cob = nil) or (lc = nil) then exit;

  rLC.SessionID := SessionID;
  rLC.ParentPlatformID := TT3PlatformInstance(TT3ChaffLauncher(lc).Parent).InstanceIndex;
  rLC.ChaffOnVehicleID := TT3ChaffLauncher(lc).ChaffInstanceIndex;
  rLC.LauncherID := TT3ChaffLauncher(lc).Number - 1;
  rLC.StateID := 0;

  if Assigned(FWriter) then
    FWriter.WriteData(@rLC, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCHER_CHAFF_STATE);
  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCHER_CHAFF_STATE, @rLC);

  TT3ChaffLauncher(lc).State := 0;
  TT3ChaffLauncher(lc).OnFire := nil;
  TT3ChaffLauncher(lc).OnStopFire := nil;
end;

procedure TSimMgr_Server.AssignWeaponEvent(weapon: TT3Weapon);
begin
  inherited;

  if weapon is TT3GunOnVehicle then begin
    TT3GunOnVehicle(weapon).OnGunFire := OnGunFire;
    TT3GunOnVehicle(weapon).OnGunCeaseFire := OnGunCeaseFire;
  end;
end;

procedure TSimMgr_Server.BubbleLauncherFire(Sender: TObject);
var
  Bubble : TObject;
  pi : TT3PlatformInstance;
  cob : TObject;
  rBubble : TRecCmd_LaunchBubble;
  rSyn: TRecCmdSYNCH;
begin
  inherited;
  if not (Sender is TT3AirBubbleOnVehicle) then exit;
  pi   := FindT3PlatformByID(TT3PlatformInstance(TT3AirBubbleOnVehicle(Sender).Parent).InstanceIndex);

  if Assigned(OnLogEventStr) then
    OnLogEventStr('TSimMgr_Server.BubbleLauncherFire', 'Server : ' + TT3AirBubbleOnVehicle(Sender).InstanceName + ' fire');

  if (pi = nil) and not (pi is TT3Vehicle) then
    exit;

  cob := FindT3DeviceByID(TT3AirBubbleOnVehicle,TT3AirBubbleOnVehicle(Sender).Parent,TT3AirBubbleOnVehicle(Sender).InstanceIndex) ;

  if (cob = nil)then exit;

  rBubble.SessionID := SessionID;
  rBubble.ParentPlatformID := TT3PlatformInstance(TT3AirBubbleOnVehicle(Sender).Parent).InstanceIndex;
  rBubble.ChaffOnVehicleID := TT3AirBubbleOnVehicle(Sender).InstanceIndex;
  rBubble.BubbleInstanceIndex := 0; // klo ini server biar di kasih

  Bubble := LaunchBubble(rBubble);

  if Bubble <> nil then begin
    //Bubble.Enable         := true;
    rBubble.BubbleInstanceIndex := TT3AirBubble(Bubble).InstanceIndex;

    rSyn.SynchID        := CORD_ID_Synch_NextPID;
    rSyn.Synch_IParam   := FLastPlatformID;
    VNetServer.SendBroadcastCommand(CPID_CMD_SYNCH, @rSyn);
  end;
  if Assigned(FWriter) then FWriter.WriteData(@rBubble, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_LAUNCH_BUBBLE);

  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_BUBBLE , @rBubble);
end;

procedure TSimMgr_Server.BubbleLauncherStop(Sender: TObject);
var
  pi : TT3PlatformInstance;
  cob : TObject;
  rLC : TRecCmd_LaunchBubbleState;
begin
  inherited;

  if not (Sender is TT3AirBubbleOnVehicle) then exit;
  pi   := FindT3PlatformByID(TT3PlatformInstance(TT3AirBubbleOnVehicle(Sender).Parent).InstanceIndex);

  if Assigned(OnLogEventStr) then
    OnLogEventStr('TSimMgr_Server.BubbleLauncherStop', 'Server : ' + TT3AirBubbleOnVehicle(Sender).InstanceName + ' stop');

  if (pi = nil) and not (pi is TT3Vehicle) then
    exit;

  cob := FindT3DeviceByID(TT3AirBubbleOnVehicle,TT3AirBubbleOnVehicle(Sender).Parent,TT3AirBubbleOnVehicle(Sender).InstanceIndex) ;
 // lc  := FindT3DeviceByID(TT3AirBubbleOnVehicle,TT3AirBubbleOnVehicle(Sender).Parent,TT3AirBubbleOnVehicle(Sender).Number) ;

  if (cob = nil){ or (lc = nil)} then exit;

  rLC.SessionID := SessionID;
  rLC.ParentPlatformID := TT3PlatformInstance(TT3AirBubbleOnVehicle(cob).Parent).InstanceIndex;
  rLC.ChaffOnVehicleID := TT3AirBubbleOnVehicle(cob).InstanceIndex;
  rLC.LauncherID := TT3AirBubbleOnVehicle(cob).Number;
  rLC.StateID := 0;

  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCHER_BUBBLE_STATE, @rLC);

  TT3AirBubbleOnVehicle(cob).State := 0;
  TT3AirBubbleOnVehicle(cob).OnFire := nil;
  TT3AirBubbleOnVehicle(cob).OnStopFire := nil;
end;

procedure TSimMgr_Server.GunFire(rec: TRecCmd_GunFire);
  procedure CloneRec(var recDest:TRecCmd_GunFire; const recSrc : TRecCmd_GunFire);
  begin
    recDest.SessionID         := recSrc.SessionID;
    recDest.ParentPlatformID  := recSrc.ParentPlatformID;
    recDest.GunID             := recSrc.GunID;
    recDest.TargetPlatformID  := recSrc.TargetPlatformID;
    recDest.OrderID           := recSrc.OrderID;
    recDest.ControlMode       := recSrc.ControlMode;
    recDest.SalvoMode         := recSrc.SalvoMode;
    recDest.SalvoSize         := recSrc.SalvoSize;
    recDest.GunCapacityRemain := recSrc.GunCapacityRemain;
    recDest.InterceptRange    := recSrc.InterceptRange;
    recDest.ThresSpeed        := recSrc.ThresSpeed;
    recDest.HitProbability    := recSrc.HitProbability;
    recDest.GunName           := recSrc.GunName;
  end;
var
    pi, tgt: TT3PlatformInstance;
    wpn   : TT3GunOnVehicle;
    recGF : TRecCmd_GunFire;
begin
  inherited;
  pi   := FindT3PlatformByID(rec.ParentPlatformID);
  tgt  := FindT3PlatformByID(rec.TargetPlatformID);

  if (pi = nil) and not (pi is TT3Vehicle) then
    exit;

  //wpn := TT3Vehicle(pi).getWeapon(rec.GunName, TT3GunOnVehicle) as TT3GunOnVehicle;
  wpn := TT3Vehicle(pi).getWeapon(rec.GunID, TT3GunOnVehicle) as TT3GunOnVehicle;
  if wpn <> nil then begin
    wpn.TargetObject        := tgt;
    wpn.ControlMode         := rec.ControlMode;
    wpn.SalvoMode           := rec.SalvoMode;
    wpn.SalvoSize           := rec.SalvoSize;
    AssignWeaponEvent(wpn);

    case rec.OrderID of
      CORD_ID_assign : //assign gun
        begin
          if tgt = nil then exit;

          wpn.IsAssigned := true;
          tgt.IsAssigned := True;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_break  : // break assignment
        begin
          wpn.IsAssigned := false;

          if (tgt <> nil) and (tgt.IsAssigned) then
            tgt.IsAssigned := false;

          // asumsi : jika dalam keadaan firing, batalkan firing
          if wpn.WeaponStatus = wsFiring then
          begin
            wpn.CeaseFire;
            wpn.State := 0;

            if Assigned(wpn.OnGunCeaseFire) then
              OnGunCeaseFire(wpn);
          end;

          OnLogEventStr('TSimMgr_Server.GunFire', 'Break : ' + wpn.InstanceName);
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_fire   : // gun fire
        begin
          case wpn.ControlMode of
            1 :
              begin
                //automatic
              end;
            2 :
              begin
                if tgt = nil then exit;
                if (not wpn.IsAssigned) and (not tgt.IsAssigned) and (wpn.GunDefinition.FData.Fire_Cntl_Director_Req = 1) then
                  Exit;
              end;
            3 :
              begin

              end;
            4:
              begin

              end;
          end;

          wpn.WeaponStatus := wsFiring;
          wpn.State := 1;
        end;
      CORD_ID_cease  : // stop gun fire
        begin
          wpn.State := 0;

          if Assigned(wpn.OnGunCeaseFire) and (wpn.WeaponStatus = wsFiring) then
          begin
            OnGunCeaseFire(wpn);

            wpn.CeaseFire;
          end;

          {if Assigned(wpn.TargetObject) then
          begin
            if wpn.TargetObject.FreeMe then
              wpn.TargetObject    := nil;
          end; }
        end;
      CORD_ID_control_mode  : // set control mode
        begin
          // jika control mode berubah, maka batalkan smua pekerjaan sekarang.
          if (wpn.ControlMode <> rec.ControlMode) and (wpn.ControlMode > 0) then begin

            // jika sedang menembak, hentikan menembak
            if wpn.IsAssigned then // berarti sdg mengassign target
            begin
              CloneRec(recGF,rec);
              recGF.OrderID := CORD_ID_break;
              GunFire(recGF);
            end else begin // berarti sedang menembak mode manual
              CloneRec(recGF,rec);
              recGF.OrderID := CORD_ID_cease;
              GunFire(rec);
            end;
          end;

          wpn.ControlMode := rec.ControlMode;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_salvo_mode :
        begin
          wpn.SalvoMode := rec.SalvoMode;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_target :
        begin
          tgt  := FindT3PlatformByID(rec.TargetPlatformID);
          wpn.TargetObject := tgt;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_salvo_size :
        begin
          wpn.SalvoSize := rec.SalvoSize;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_intercp_range :
        begin
          wpn.InterceptRange := rec.InterceptRange;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_thresh_speed :
        begin
          wpn.ThresholdSpeed := rec.ThresSpeed;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_chaff_bloom :
        begin
          wpn.ChaffBloom := rec.ChaffBloom;
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      CORD_ID_chaff_pos :
        begin
          wpn.SetChaffPosition(rec.ChaffX,rec.ChaffY);
          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      {send post n altitude NGS target}
      CORD_ID_postNGS  :
        begin
          wpn.NGSPosX := rec.px;
          wpn.NGSPosY := rec.py;
          wpn.NGSPosZ := rec.pAltitude;
          wpn.NGSSpotLine := rec.degSpotLine;
          wpn.NGSGunLine  := rec.degGunLine;

          //system error
          wpn.NGSFlashX   := rec.pXflash;
          wpn.NGSFlashY   := rec.pYflash;

          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      { NGS correction L/R }
      CORD_ID_NGSCorrLR :
        begin
          wpn.NGSPosX := rec.px;
          wpn.NGSPosY := rec.py;
          wpn.NGSFlashX   := rec.pXflash;
          wpn.NGSFlashY   := rec.pYflash;
          wpn.NGSCorrMode := rec.NGSCorrMode;

          if wpn.NGSCorrMode = 1  then
            wpn.OptDefCorr  := -(rec.NGSDefCorr)
          else if wpn.NGSCorrMode = 2 then
            wpn.OptDefCorr  := rec.NGSDefCorr
          else
            wpn.OptDefCorr  := 0;

          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
      { NGS correction D/A }
      CORD_ID_NGSCorrDA :
        begin
          wpn.NGSPosX := rec.px;
          wpn.NGSPosY := rec.py;
          wpn.NGSFlashX   := rec.pXflash;
          wpn.NGSFlashY   := rec.pYflash;
          wpn.NGSCorrMode := rec.NGSCorrMode;

          if wpn.NGSCorrMode = 1  then
            wpn.OptRangeCorr  := -(rec.NGSRangeCorr)
          else if wpn.NGSCorrMode = 2 then
            wpn.OptRangeCorr:= rec.NGSRangeCorr
          else
            wpn.OptRangeCorr:= 0;

          VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @rec);
        end;
    end;
  end;
end;

procedure TSimMgr_Server.OnGunFire(Sender : TObject);
var
  gun : TT3GunOnVehicle;
  shoot : TT3GunShoot;
  pi, pl, parentShoot : TT3PlatformInstance;
  tgt : TT3PlatformInstance;
  r: TRecCmd_GunFire;
  i : Integer;
  TRIPRange : double;
begin
  if not (Sender is TT3GunOnVehicle) then
    Exit;

  gun := Sender as TT3GunOnVehicle;
  if not Assigned(gun) then       //mk
    Exit;

  pi := FindT3PlatformByID(TT3PlatformInstance(gun.Parent).InstanceIndex);
  if not Assigned(pi) and not (pi is TT3Vehicle) then
    Exit;

  if gun.ControlMode <> 4 then
  begin
    if not Assigned(gun.TargetObject) then       //mk
      Exit;

    tgt := gun.TargetObject as TT3PlatformInstance;
    if not Assigned(tgt) then
      Exit;
  end;

  //set record value
  //r.pid.recSize := SizeOf(TRecCmd_GunFire);
  r.SessionID := FSessionID;
  r.ParentPlatformID := pi.InstanceIndex;
  r.GunID := gun.InstanceIndex;
  r.GunName := gun.InstanceName;
  
  if gun.ControlMode <> 4 then
  begin
    shoot := gun.PrepareShoot;
    AssignWeaponEvent(shoot);

    if shoot.InstanceIndex = 0 then
      shoot.InstanceIndex := GetSerialPlatformID
    else
      shoot.InstanceIndex := shoot.InstanceIndex;

    r.TargetPlatformID := TT3PlatformInstance(gun.TargetObject).InstanceIndex;
    r.HitProbability :=  Byte(shoot.Shoot);
  end
  else
  begin
    for i := 0 to SimPlatforms.itemCount - 1 do
    begin
      pl := SimPlatforms.getObject(i) as TT3PlatformInstance;

      if not(Assigned(pl)) then
        Continue;

      if not Assigned(gun.Parent) then
        Continue;

      //cek apakah parent dari gun sendiri
      parentShoot := gun.Parent as TT3PlatformInstance;
      if pl = parentShoot then Continue;

      //cek apakah subsurface
      if (pl.PlatformDomain = 2) and (pl.Altitude <> 0) then
        Continue;

      //cek apakah altitudenya > max altitude
      if pl.Altitude > (gun.GunDefinition.FData.Max_Target_Altitude_Delta * C_Feet_To_Meter) then
        Continue;

      //cek max range point area
      TRIPRange := CalcRange(gun.NGSFlashX, gun.NGSFlashY, pl.getPositionX, pl.getPositionY);
      if ((TRIPRange) > gun.GunDefinition.FData.NGS_EffectiveRadius) then
        Continue;

      gun.TargetObject := pl;
      shoot := gun.PrepareShoot;
      AssignWeaponEvent(shoot);

      if shoot.InstanceIndex = 0 then
        shoot.InstanceIndex := GetSerialPlatformID
      else
        shoot.InstanceIndex := shoot.InstanceIndex;

      r.HitProbability :=  Byte(shoot.Shoot);
    end;

    gun.TargetObject := nil;
    r.TargetPlatformID := 0;
  end;

  r.OrderID := CORD_ID_fire_result;
  r.ControlMode := gun.ControlMode;
  r.SalvoMode := gun.SalvoMode;
  r.SalvoSize := gun.SalvoSize;

  gun.Quantity := gun.Quantity - 1;

  r.GunCapacityRemain := gun.Quantity;

  //if Assigned(OnLogEventStr) then
    //OnLogEventStr('Server Gun Fire Order : ' + IntToStr(r.OrderID) + ' salvo mode : ' + IntToStr(r.SalvoMode) + ' Quantity : ' + IntToStr(r.GunCapacityRemain));

  if Assigned(FWriter) then
    FWriter.WriteData(@r, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_GUN_FIRE);
  VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @r);
end;

procedure TSimMgr_Server.OnPropertyChange(Sender: TObject; Props: TPropsID;
  Value: Double);
var
  recCommon : TRecCommonProperty;
begin
  if not (Sender.ClassType = TT3Vehicle) then
    Exit;

  recCommon.CommandID     := CORD_ID_UPDATESTATE;
  recCommon.InstanceIndex := TT3Vehicle(Sender).InstanceIndex;
  recCommon.ClassValType  := 'Double';
  recCommon.ClassDblVal   := Value;
  recCommon.ClassProperty := '';

  if Sender.ClassType = TT3Vehicle then
  begin
    case Props of
      psFuelCapacity : recCommon.ClassProperty := 'FuelCapacity';
      psHeading      : recCommon.ClassProperty := 'Heading';
    end;
  end;

  // record to DB
  if recCommon.ClassProperty <> '' then
    if Assigned(FWriter) then
      FWriter.WriteData(@recCommon, FMainVTime.GetMillisecond,GameSPEED,CPID_OBJECTSTATE);

end;

procedure TSimMgr_Server.OnPropertyChange(Sender: TObject; Props: TPropsID;
  Value: Integer);
begin

end;

procedure TSimMgr_Server.OnPropertyChange(Sender: TObject; Props: TPropsID;
  Value: Boolean);
begin

end;

procedure TSimMgr_Server.OnPropertyChange(Sender: TObject; Props: TPropsID;
  Value: String);
begin

end;

procedure TSimMgr_Server.OnPropertyChange(Sender: TObject; Props: TPropsID;
  Value: Byte);
var
  recCommon : TRecCommonProperty;
begin
  if not (Sender.ClassParent = TT3Vehicle) then
    Exit;

  recCommon.CommandID     := CORD_ID_UPDATESTATE;
  recCommon.InstanceIndex := TT3Vehicle(Sender).InstanceIndex;
  recCommon.ClassValType  := 'Byte';
  recCommon.ClassDblVal   := Value;
  recCommon.ClassProperty := '';

  if Sender.ClassType = TT3Vehicle then
  begin
    case Props of
      psForceDesig : recCommon.ClassProperty := 'Force_Designation';
    end;
  end;

  // record to DB
  if recCommon.ClassProperty <> '' then
    if Assigned(FWriter) then
      FWriter.WriteData(@recCommon, FMainVTime.GetMillisecond,GameSPEED,CPID_OBJECTSTATE);
end;

procedure TSimMgr_Server.OnGunCeaseFire(Sender : TObject);
var
  gun : TT3GunOnVehicle;
  pi : TT3PlatformInstance;
  r: TRecCmd_GunFire;
begin
  if not (Sender is TT3GunOnVehicle) then
    Exit;

  gun := Sender as TT3GunOnVehicle;
  pi := FindT3PlatformByID(TT3PlatformInstance(gun.Parent).InstanceIndex);

  if not Assigned(pi) and not (pi is TT3Vehicle) then
    Exit;

  //set nil event pada server
  gun.State := 0;

  //r.pid.recSize := SizeOf(TRecCmd_GunFire);
  r.SessionID := FSessionID;
  r.ParentPlatformID := pi.InstanceIndex;
  r.GunID := gun.InstanceIndex;
  r.GunName := gun.InstanceName;

  if Assigned(gun.TargetObject) then
    r.TargetPlatformID := TT3PlatformInstance(gun.TargetObject).InstanceIndex
  else
    r.TargetPlatformID := 0;

  r.ControlMode := gun.ControlMode;
  r.SalvoMode := gun.SalvoMode;
  r.SalvoSize := gun.SalvoSize;
  r.HitProbability :=  0;
  r.GunCapacityRemain := gun.Quantity;

  if gun.GunDefinition.FData.Fire_Cntl_Director_Req = 1  then
  begin
    if Assigned(gun.TargetObject) then
    begin
      if gun.TargetObject.FreeMe or TT3PlatformInstance(gun.TargetObject).Dormant then
      begin
        OnLogEventStr('TSimMgr_Server.OnGunCeaseFire', 'Break : ' + gun.InstanceName);
        r.OrderID := CORD_ID_break;
        VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @r);    //break
      end;
    end
    else
    begin
      OnLogEventStr('TSimMgr_Server.OnGunCeaseFire', 'Break : ' + gun.InstanceName);
      r.OrderID := CORD_ID_break;
      VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @r);    //break
    end;
  end;

  OnLogEventStr('TSimMgr_Server.OnGunCeaseFire', 'Cease : ' + gun.InstanceName);
  r.OrderID := CORD_ID_cease;

  if Assigned(FWriter) then
    FWriter.WriteData(@r, FMainVTime.GetMillisecond,GameSPEED,CPID_CMD_GUN_FIRE);
  VNetServer.SendBroadcastCommand(CPID_CMD_GUN_FIRE, @r);  //chease
end;

procedure TSimMgr_Server.OnBombFire(Sender : TObject);
//var
//  bomb : TT3BombONVehicle;
//  rec : TRecCmd_LaunchBomb;
begin
//  if not (Sender is TT3BombONVehicle) then
//    Exit;

//  bomb := Sender as TT3BombONVehicle;

//  rec.SessionID := SessionID;
//  rec.ParentPlatformID := TT3PlatformInstance(bomb.Parent).InstanceIndex;
//  rec.BombOnVehicleID := bomb.InstanceIndex;
//  rec.TargetID := TT3PlatformInstance(bomb.TargetObject).InstanceIndex;
//  rec.SalvoSize := bomb.SalvoSize;
//  rec.AvailableQuantity := bomb.Quantity;

//  FOnLogStr('Server Bomb Fire Order : ' + ' Quantity : ' + IntToStr(bomb.Quantity));

//  LaunchBomb(rec);

//  VNetServer.SendBroadcastCommand(CPID_CMD_LAUNCH_BOMB, @rec);
end;

procedure TSimMgr_Server.OnDelayerNotify(Sender: TObject);
  procedure InitRecSync(var rec : TRecSyncPos);
  var
    i : Integer;
  begin
    i := 0;

    while  I <= Length(rec.InstanceIndexes) - 1 do
    begin
      rec.InstanceIndexes[i] := -1;
      rec.PositionPoints[i].FPosX := 0.00;
      rec.PositionPoints[i].FPosY := 0.00;
      rec.PositionPoints[i].FPosZ := 0.00;
      rec.PositionPoints[i].FSpeed := 0.00;
      rec.PositionPoints[i].FHeading := 0.00;
      rec.PositionPoints[i].FGroundSpeed := 0.00;
      rec.PositionPoints[i].FAltitude := 0.00;
      rec.PositionPoints[i].FHealth := 0.00;
      rec.PositionPoints[i].FCourse := 0.00;
      rec.PositionPoints[i].FFuelEndurance.FuelMinimum := 0.00;
      rec.PositionPoints[i].FFuelEndurance.FuelCruise := 0.00;
      rec.PositionPoints[i].FFuelEndurance.FuelHigh := 0.00;
      rec.PositionPoints[i].FFuelEndurance.FuelMaximum := 0.00;
      rec.PositionPoints[i].FFuelCapacity := 0.00;
      rec.PositionPoints[i].FFuelRemaining := 0.00;
      rec.PositionPoints[i].FLaunchTime := 0;
      rec.PositionPoints[i].FDormantTime := 0;
      rec.PositionPoints[i].FDormant := False;

      Inc(i);
    end;
  end;

var
  recSync : TRecSyncPos;
  i, cnt : Integer;
  obj : TT3PlatformInstance;
begin
  inherited;

  InitRecSync(recSync);
  cnt := 0;

  for I := 0 to SimPlatforms.itemCount - 1 do
  begin
    Inc(cnt);
    obj := SimPlatforms.getObject(i) as TT3PlatformInstance;

    with recSync do
    begin
      InstanceIndexes[i] := obj.InstanceIndex;
      PositionPoints[i].FPosX := obj.PosX;
      PositionPoints[i].FPosY := obj.PosY;
      PositionPoints[i].FPosZ := obj.PosZ;
      PositionPoints[i].FSpeed := obj.Speed;
      PositionPoints[i].FHeading := obj.Heading;
      PositionPoints[i].FGroundSpeed := obj.GroundSpeed;
      PositionPoints[i].FAltitude := obj.Altitude;
      PositionPoints[i].FHealth := obj.Health;
      PositionPoints[i].FCourse := obj.Course;
      PositionPoints[i].FFuelEndurance.FuelMinimum := obj.FuelEndurance.FuelMinimum;
      PositionPoints[i].FFuelEndurance.FuelCruise := obj.FuelEndurance.FuelCruise;
      PositionPoints[i].FFuelEndurance.FuelHigh := obj.FuelEndurance.FuelHigh;
      PositionPoints[i].FFuelEndurance.FuelMaximum := obj.FuelEndurance.FuelMaximum;
      PositionPoints[i].FFuelCapacity := obj.FuelCapacity;
      PositionPoints[i].FFuelRemaining := obj.FuelRemaining;
      PositionPoints[i].FLaunchTime := obj.LaunchTime;
      PositionPoints[i].FDormantTime := obj.DormantTime;
      PositionPoints[i].FDormant := obj.Dormant;
    end;
  end;

  if Assigned(FWriter) then FWriter.WriteData(@recSync,
    FMainVTime.GetMillisecond,GameSPEED,CPID_SYNC_OBJECT);
end;

procedure TSimMgr_Server.ClearScenario;
begin
  FGameThread.OnRunning := nil;
  FMainList.ClearAndFreeObject;
  FMainVTime.Reset();
end;

function TSimMgr_Server.LaunchRuntimePlatform(
  const rec: TRecCmd_LaunchRP): TT3PlatformInstance;
begin
  result := inherited;
  result.Enable := true;
end;

procedure TSimMgr_Server.RemoveDatalinkPlatform(
  rec: TRecCmd_SelectPlatformToRemove);
var
  obj : TT3PlatformInstance;
begin
  if rec.SessionID <> FSessionID then
    Exit;

  obj := nil;
  if not rec.isNRPlatform then
    obj := FindT3PlatformByID(rec.PlatfomID);

  if not Assigned(obj) then
    Exit;

  RemoveDatalinkPlatform(rec.PlatfomID);
end;

procedure TSimMgr_Server.RemoveDatalinkPlatform(aPfID: integer);
var
  obj : TT3PlatformInstance;
  recDL : TRecCmd_DataLink;
  dl : TT3Datalink;
  i : Integer;
begin

  obj := FindT3PlatformByID(aPfID);

  if not Assigned(obj) then
    Exit;

  if obj is TT3Vehicle then
  begin
    { cek ap di datalink }
    dl := DataLinkManager.getDatalinkOnPU(obj);
    if not Assigned(dl) then Exit;

    if DataLinkManager.RemoveDestroyedPlatform(obj) then
    begin

      with recDL do begin
        platformID          := 0;
        PUStatus            := 0;
        for I := 0 to Length(PooledTracksID) - 1 do
          PooledTracksID[i] := 0;
      end;

      recDL.DataLinkID := dl.IDLink;
      recDL.platformID := obj.InstanceIndex;
      recDL.OrderDL    := odlRemovePermanently;
      netSend_Cmd_Datalink(recDL);
    end;
  end;

end;

procedure TSimMgr_Server.RemovePlatformByOperator(rec : TRecCmd_SelectPlatformToRemove);
var
  obj : TT3PlatformInstance;
  i : Integer;
  sObj : TSimObject;
  v : TT3Vehicle;
begin
  if rec.SessionID <> FSessionID then
    Exit;

  //  obj := FindT3PlatformByID(rec.PlatfomID);
  if not rec.isNRPlatform then
    obj := FindT3PlatformByID(rec.PlatfomID)
  else
    obj := FindNonRealPlatformByID(rec.PlatfomID);

  if not Assigned(obj) then
    Exit;

  //if obj is TT3Vehicle then
  // TT3Vehicle(obj).FreeChilds;
  if obj is TT3Vehicle then
  begin
    if obj is TT3NonRealVehicle then
    begin
//      TT3NonRealVehicle(obj).FreeChilds;
      obj.FreeMe := true;
      obj.Dormant:= True;
      obj.Enable := False;
    end
    else  if obj is TT3Vehicle then
    begin
//      TT3Vehicle(obj).FreeChilds;
      obj.FreeMe := true;
      obj.Dormant := True;
    end;
  end
  else if obj is TT3Missile then
  begin
    TT3Missile(obj).FreeChilds;
    obj.FreeMe := true;
    obj.AbsoluteFree := true;
  end
  else if obj is TT3Torpedo then
  begin
    TT3Torpedo(obj).FreeChilds;
    obj.FreeMe := true;
    obj.AbsoluteFree := true;
  end
  else if obj is TT3Mine then
  begin
    TT3Mine(obj).FreeChilds;
    obj.FreeMe := true;
    obj.AbsoluteFree := true;
  end
  else if obj is TT3Chaff then
  begin
    TT3Chaff(obj).FreeChilds;
    obj.FreeMe := true;
    obj.AbsoluteFree := true;
  end
  else if obj is TT3Sonobuoy then
  begin
    TT3Sonobuoy(obj).PlatformDetectBySonobuoy.Clear;
    TT3Sonobuoy(obj).FreeChilds;
    obj.FreeMe := true;
    obj.AbsoluteFree := true;
  end;

  for i := 0 to simMgrServer.SimPlatforms.itemCount - 1 do
  begin
    sObj := simMgrServer.SimPlatforms.getObject(i);

    if sObj is TT3Vehicle then
    begin
      v := TT3Vehicle(sObj);

      if (obj is TT3Missile) and
         (v.InstanceIndex = TT3Missile(obj).EngagementParentID) then
        v.isEngagementWeaponFire := False
      else if (obj is TT3Torpedo) and
         (v.InstanceIndex = TT3Torpedo(obj).EngagementParentID) then
        v.isEngagementWeaponFire := False;
    end;
  end;
end;

procedure TSimMgr_Server.SendDataToVBS;
var
  i, j  : Integer;
  pi : TPlatform_Instance;
  rec : TRec_AOPR_Data_Initialize;
  xpos, ypos : double;
begin
  if Assigned(FScenario.Platform_Insts) then
  begin
//    ypos := 3891.53;
//    xpos := 3274.32;

//    ypos := (yOffset * C_Degree_To_Meter);
//    xpos := (xOffset * C_Degree_To_Meter);


//    for j := 0 to 20 do
//    begin
//      xpos := 3274.32;

      for i := 0 to FScenario.Platform_Insts.Count - 1 do
      begin
         pi := FScenario.Platform_Insts.Items[i];
  //      pi.FActivation.


//        rec.nameClass := Copy(pi.Vehicle.FData.Vehicle_Identifier, 0, length(pi.Vehicle.FData.Vehicle_Identifier));

        rec.PlatformID := pi.FData.Platform_Instance_Index;
        rec.IDPlatformName := pi.FData.Instance_Ident_Index;
        rec.IDPlatformClass := pi.FData.Vehicle_Index;
//        StrToChar(pi.Vehicle.FData.Vehicle_Identifier, rec.nameClass);
//        StrToChar(pi.FData.Instance_Name, rec.namePlatform);
//        StrToChar(pi.Vehicle.FData.VBS_Class_Name, rec.VBSClassName);
        rec.PosX := pi.FActivation.Init_Position_Longitude;
        rec.PosY := pi.FActivation.Init_Position_Latitude;
        rec.PosZ := pi.FActivation.Init_Altitude;

//        xpos := xpos + 20.0;
//        rec.PosX := xpos;
//        rec.PosY := ypos;
//        rec.PosZ := 0;

        VNetServer.SendBroadcastCommand(CPID_REC_AOPR_DATA, @rec);

        Sleep(1000);
      end;
      ypos := ypos + 100;
//    end;
  end;
end;

function TSimMgr_Server.LaunchNonRealtimeRuntimePlatform(const rec : TRecCmd_LaunchNonRP ): TT3PlatformInstance;
begin
  Result := inherited;
  Result.Enable := true;
end;

procedure TSimMgr_Server.LoadScenarioID(const vSet: TGameDataSetting);
var
    i, l : integer;
    aObject : TT3PlatformInstance;
    fName : string;
    scInfo : TRecScenario_Definition;
    sensor : TT3Sensor;
    aDevice : TT3Unit;
    S, fgeo : String;
    recName : String;
begin
  inherited;

  //===========
    S := UpperCase(Trim(GameEnvironment.FGameArea.Detail_Map));
    if S = 'ENC' then
      fGeo := vMapSetting.MapENCPath + FScenario.MapGeosetName
    else
      fGeo := vMapSetting.MapPath + FScenario.MapGeosetName;

    if FileExists(fGeo) then
    begin
      VMapData.LoadMap(fGeo);
    end;
  //===========

  for I := 0 to SimPlatforms.itemCount - 1 do begin
    aObject := TT3PlatformInstance(SimPlatforms.getObject(i));
    aObject.UnitGroup := true;
    aObject.Enable    := true;

    // environment
    aObject.Environment := GameEnvironment;

    if aObject is TT3Vehicle then
      for l := 0 to TT3Vehicle(aObject).Devices.Count - 1 do
      begin
        sensor := TT3Vehicle(aObject).Devices[l];
        sensor.Environment := GameEnvironment;
      end;

    // add recorder listener
    aObject.addListener(FRecorderListener);
  end;

  for I := 0 to SimDevices.itemCount - 1 do begin

    aDevice := TT3Unit(SimDevices.getObject(i));
    aDevice.GameDefaults := GameDefaults;

  end;

  FGamePlayType := TGamePlayType(vSet.GamePlayMode.GameType) ;
  //// untuk replay
  case GamePlayType of

  gpmScenAndRecord :
  begin

    recName := NewRecsFileName;
    FWriter := TDBObjectWriter.Create(FScenario.DataModule);
    FWriter.InitiateWriter(recName,FScenario.Scenario_def.FData.Scenario_Index,FMainVTime.GetTime);
    if Assigned(OnLogEventStr) then
          OnLogEventStr('TSimMgr_Server.LoadScenarioID', 'Start record');
    fName := GetFullNameRecsFileFromName(recName) ;
    ScInfo.Scenario_Index := FScenario.Scenario_def.FData.Scenario_Index;
    ScInfo.Scenario_Identifier  :=  FScenario.Scenario_def.FData.Scenario_Identifier;
    ScInfo.Resource_Alloc_Index :=  FScenario.Scenario_def.FData.Resource_Alloc_Index;

  end;

  gpmReplay :
      begin
        // remove to tt3simreplay
      end;
  end;
end;

procedure TSimMgr_Server.LoadPredefinedPattern;
var
  i, j : Integer;
  aObject: TT3PlatformInstance;
  pLong, pLatt : Double;
  Behav: TScripted_Behav_Definition;
  WpEvent, ObjEvent, dev : TObject;

  A : TStringList;
  myString : string;
  directoryFile: string;
  myFile : TextFile;
  pX, pY, counter : Integer;
begin
  //load pattern  (platform activation)
  for i := 0 to SimPlatforms.itemCount - 1 do
  begin
    aObject := TT3PlatformInstance(SimPlatforms.getObject(i));

    if aObject is TT3Vehicle then
    begin
      if TT3Vehicle(aObject).PatternName <> '' then
      begin

        A := TStringList.Create;
        try
        begin
          directoryFile := vMapSetting.PatternPath + TT3Vehicle(aObject).PatternName + '.dat';
          if FileExists(directoryFile) then
          begin
            AssignFile(myFile, directoryFile);
            FileMode := fmOpenRead;
            reset(myFile);
            counter := 0;
            //seek(myfile,i);
            while not Eof(myFile) do
            begin
              Readln(myFile, myString);
              Split(',', myString, A) ;
              pX := strtoint(A[0]);
              pY := strtoint(A[1]);

              if Assigned(Converter) then
              begin
                if Converter.FMap.Geoset <> '' then
                begin
                  Converter.ConvertToMap(pX,pY,pLong,pLatt);

                  behav := TScripted_Behav_Definition.Create;
                  with behav.FData do
                  begin
                    Scripted_Event_Index  := counter;
                    Waypoint_Latitude     := pLatt;
                    Waypoint_Longitude    := pLong;
                    Speed                 := Round(TT3Vehicle(aObject).Speed);
                  end;

                  //FFocusedBehav := Behav;
                  TT3Vehicle(aObject).Waypoints.Add(Behav, nil);
                  TT3Vehicle(aObject).Waypoints.Enabled := True;

                  //Add Waypoint Event
                  with TT3Vehicle(aObject) do
                  begin

                    for j := 0 to SimDevices.itemCount - 1 do begin
                      dev :=  SimDevices.getObject(j);
                      if TT3Unit(dev).Parent <> TT3Vehicle(aObject) then continue;

                      // radar
                      if dev is TT3Radar then begin
                        objEvent  := TScripted_Radar_Event.Create;
                        with TScripted_Radar_Event(objEvent).FData do
                        begin
                          Scripted_Event_Index := counter;
                          Radar_Index          := TT3Radar(dev).InstanceIndex;
                          Radar_Control        := 0; // off
                        end;

                        wpevent   := TWaypointEventClass.Create;
                        TWaypointEventClass(wpevent).FType := wetRadar;
                        TWaypointEventClass(wpevent).FData := objEvent;
                        TWaypointEventClass(wpevent).FEnable := false;
                        TWaypointEventClass(wpevent).FObjectInstanceIndex := TT3Radar(dev).InstanceIndex;

                        Waypoints.Add(behav,TWaypointEventClass(wpevent));
                      end else
                      // sonar
                      if dev is TT3Sonar then begin
                        objEvent  := TScripted_Sonar_Event.Create;
                        with TScripted_Sonar_Event(objEvent).FData do
                        begin
                          Scripted_Event_Index := counter;
                          Sonar_Index          := TT3Sonar(dev).InstanceIndex;
                          Sonar_Control        := 0; // off
                        end;

                        wpevent   := TWaypointEventClass.Create;
                        TWaypointEventClass(wpevent).FType := wetSonar;
                        TWaypointEventClass(wpevent).FData := objEvent;
                        TWaypointEventClass(wpevent).FEnable := false;
                        TWaypointEventClass(wpevent).FObjectInstanceIndex := TT3Sonar(dev).InstanceIndex;

                        Waypoints.Add(behav,TWaypointEventClass(wpevent));
                      end else
                      // iff
                      if dev is TT3IFFSensor then begin
                        objEvent  := TScripted_IFF_Event.Create;
                        with TScripted_IFF_Event(objEvent).FData do
                        begin
                          Scripted_Event_Index   := counter;
                          IFF_Instance_Index     := TT3IFFSensor(dev).InstanceIndex;

                          IFF_Interrogator_Control  := 0; // off
                          IFF_Transponder_Control   := 0; // off
                        end;

                        // wp event untuk transpondernya
                        wpevent   := TWaypointEventClass.Create;
                        TWaypointEventClass(wpevent).FType := wetIFFTransponder;
                        TWaypointEventClass(wpevent).FData := objEvent;
                        TWaypointEventClass(wpevent).FEnable := false;
                        TWaypointEventClass(wpevent).FObjectInstanceIndex := TT3IFFSensor(dev).InstanceIndex;
                        Waypoints.Add(behav,TWaypointEventClass(wpevent));

                        // wp event untuk interogatornya
                        wpevent   := TWaypointEventClass.Create;
                        TWaypointEventClass(wpevent).FType := wetIFFInterogator;
                        TWaypointEventClass(wpevent).FData := objEvent;
                        TWaypointEventClass(wpevent).FEnable := false;
                        TWaypointEventClass(wpevent).FObjectInstanceIndex := TT3IFFSensor(dev).InstanceIndex;
                        Waypoints.Add(behav,TWaypointEventClass(wpevent));
                      end;
                    end;

                    //Check Weapon
                    //5 Weapon / 1 Coordinat Wayoint
                    for j := 1 to 5 do
                    begin
                      objEvent := TScripted_Weapon_Event.Create;
                      with TScripted_Weapon_Event(objEvent).FData do
                      begin
                        Scripted_Event_Index := counter;
                        List_Index           := -1;
                        Salvo_Size           := 0;
                        Target_Index         := 0;
                        Weapon_Type          := 0;
                      end;

                      wpevent   := TWaypointEventClass.Create;

                      case j of
                        1 : TWaypointEventClass(wpevent).FType := wetWeapon1;
                        2 : TWaypointEventClass(wpevent).FType := wetWeapon2;
                        3 : TWaypointEventClass(wpevent).FType := wetWeapon3;
                        4 : TWaypointEventClass(wpevent).FType := wetWeapon4;
                        5 : TWaypointEventClass(wpevent).FType := wetWeapon5;
                      end;

                      TWaypointEventClass(wpevent).FData := objEvent;
                      TWaypointEventClass(wpevent).FEnable := false;
                      TWaypointEventClass(wpevent).FObjectInstanceIndex := 0;
                      Waypoints.Add(behav,TWaypointEventClass(wpevent));
                    end;
                  end;
                end;
              end;

              inc(counter);
            end;
            CloseFile(myFile);
          end;
        end;
        finally
        A.Free;
        end;
      end;
    end;
  end;
end;


procedure TSimMgr_Server.Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings));
   Strings.Clear;
   Strings.Delimiter     := Delimiter;
   Strings.DelimitedText := Input;
end;

procedure TSimMgr_Server.WaypointEventCountermeasure(aShipID, aCMIndex: Integer;
  aEventMode: Byte);
var
  recNoiseJammer : TrecRadarNoiseJammer;
begin
  recNoiseJammer.SessionID := FSessionID;
  recNoiseJammer.JammerPlatformOwnerID := aShipID;
  recNoiseJammer.JammerID := aCMIndex;
  recNoiseJammer.JammerStatus := aEventMode;

  netRecv_CmdRadarNoiseJammer(@recNoiseJammer, SizeOf(recNoiseJammer));
end;

procedure TSimMgr_Server.WaypointEventDatalink(aShipID, aDatalinkIndex: Integer;
  aEventMode: Byte);
var
  recDatalink : TRecCmd_DataLink;
begin
  recDatalink.SessionID := FSessionID;
  recDatalink.platformID := aShipID;
  recDatalink.OrderDL := odlPUStatus;
  recDatalink.DataLinkID := aDatalinkIndex;

  case aEventMode of
    0 : recDatalink.PUStatus := 1; //Transmit and receive
    1 : recDatalink.PUStatus := 0; //Receive only
  end;

  netRecv_Cmd_DataLink(@recDatalink, SizeOf(recDatalink));
end;

procedure TSimMgr_Server.WaypointEventDeployCountermeasure(aShipID,
  aCMIndex: Integer);
var
  recChaff        : TRecCmd_LaunchChaff;
begin
  recChaff.SessionID               := FSessionID;
  recChaff.ParentPlatformID        := aShipID;
  recChaff.ChaffOnVehicleID        := aCMIndex;
  netRecv_CmdLaunchSonobuoy(@recChaff, SizeOf(recChaff));
end;

procedure TSimMgr_Server.WaypointEventDeployMine(aShipID, aMineIndex: Integer;
  aDepth: Double);
var
  recMine        : TRecCmd_LaunchMine;
begin
  recMine.SessionID               := FSessionID;
  recMine.ParentPlatformID        := aShipID;
  recMine.MineOnVehicleID         := aMineIndex;
//  recMine.Depth                   := aDepth;
  recMine.ProjectileInstanceIndex := 0;
  netRecv_CmdLaunchMines(@recMine, SizeOf(recMine));
end;

procedure TSimMgr_Server.WaypointEventDeploySonobuoy(aShipID,
  aSonoIndex: Integer; aSonoMode: Byte; aDepth: Double);
var
  recSonobuoy        : TRecCmd_LaunchSonobuoy;
begin
  recSonobuoy.SessionID               := FSessionID;
  recSonobuoy.ParentPlatformID        := aShipID;
  recSonobuoy.SonobuoyOnVehicleID     := aSonoIndex;
  recSonobuoy.SonobuoyMode            := aSonoMode;
  recSonobuoy.Depth                   := aDepth;
  recSonobuoy.ProjectileInstanceIndex := 0;
  netRecv_CmdLaunchSonobuoy(@recSonobuoy, SizeOf(recSonobuoy));
end;

procedure TSimMgr_Server.WaypointEventLaunchBomb(aParentID, aTargetID, aBombID: integer);
var 
  aRec : TRecCmd_LaunchBomb;
begin

  aRec.SessionID := SessionID;
  aRec.ParentPlatformID := aParentID;
  aRec.BombOnVehicleID  := aBombID;
  aRec.TargetPlatformID := aTargetID;
  aRec.AvailableQuantity := 10;
  aRec.ProjectileInstanceIndex := 0;

  netRecv_CmdLaunchBomb(@arec,SizeOf(aRec));
end;

{*******************************************snapshot**********************************}
procedure TSimMgr_Server.SnapshotToFile ( r : TRecCommandSnapshot ) ;
  function SnapshotGetInstanceName ( m : T3CubicleGroupMember ) : string ;
  var
    k     : integer ;
    found : boolean ;
    pi    : TPlatform_Instance ;
  begin
    k := 0;
    found := False;
    pi := nil ;
    while not found and (k < FScenario.Platform_Insts.Count) do
    begin
      pi := FScenario.Platform_Insts[k];
      found := m.FData.Platform_Instance_Index = pi.FData.Platform_Instance_Index;
      Inc(k);
    end;

    if found then
      Result := pi.FData.Instance_Name ;
  end;
var
  obj         : TObject;
  lFile       : TFileStream ;
  Sce         : TRecScenario_Definition;
  i,j         : integer ;
  ip,
  addName,
  sName,
  sFileInfo,
  ipTo,slog   : string ;
  g           : TAssignGroup;
  gCub        : T3CubicleGroup ;
  gCubMember  : T3CubicleGroupMember;
  Datalink1,
  Datalink2,
  Datalink3   : TT3DataLink;
begin
  addName  := UpperCase(Trim(r.SnapshotName));
  if Length(addName)> 0 then
    sName     := NewSnapshotWithParams(FScenario.Scenario_def.FData.Scenario_Index,addName)
  else begin
    sName     := NewSnapshotFileName ;
    addName   := sName;
  end;
  sFileInfo   := GetFullNameSnapshotFileFromName(sName);

  if FileExists(sFileInfo) then
  begin
    r.OrderID := CPID_CMD_SNAPSHOT_EXIST ;
    r.SnapshotName := addName ;
    ipTo  := LongIp_To_StrIp(r.pid.ipSender);
    VNetServer.SendTo(CPID_CMD_SNAPSHOT, @r, ipTo);
    FOnLogStr('TSimMgr_Server.SnapshotToFile', 'Snapshot :: Failed to save file "'+ExtractFileName(sFileInfo)+'". already exist.');
    Exit ;
  end;

  Sce          := Scenario.Scenario_def.FData ;
  lRec.ID      := Sce.Scenario_Index ;
  lRec.Name    := Sce.Scenario_Identifier;
  lRec.AddName := addName ;

  __snapshot_getGameScenario(FScenario);
  __snapshot_getGameDefaults(GameDefaults);
  __snapshot_getCloudEffects(FCloud_Effects);
  __snapshot_getDefaultVar(FDefault_Var);

  with lRec.FRGameInfo do
  begin
    mServerTime       := Now;
    mGameMS           := FMainVTime.GetMillisecond;
    mGameTime         := FMainVTime.GetTime;
    mGameStart        := FMainVTime.DateTimeOffset;
    mSessionID        := FSessionID;
    mGameState        := Byte(GameState);
  end;

  SetLength(lRec.FRCubicleGroupList,Scenario.CubiclesGroupsList.Count);
  for i := 0 to Scenario.CubiclesGroupsList.Count - 1 do begin
      gCub := Scenario.CubiclesGroupsList.Items[i] as T3CubicleGroup;
      lRec.FRCubicleGroupList[i].FData := gCub.FData ;
      lRec.FRCubicleGroupList[i].CubicleName := gCub.CubicleName;
      SetLength(lRec.FRCubicleGroupList[i].FSList,gCub.FSList.Count);
      for j := 0 to gCub.FSList.Count - 1 do
      begin
        gCubMember := T3CubicleGroupMember(gCub.FSList.Objects[j]);
        lRec.FRCubicleGroupList[i].FSList[j].FData := gCubMember.FData ;
        lRec.FRCubicleGroupList[i].FSList[j].Instance_Name := SnapshotGetInstanceName(gCubMember);
      end;
  end;

  SetLength(lRec.FRAssignCGList,FAllCubAssign.Count);
  for i := 0 to FAllCubAssign.Count - 1 do begin
     ip := FAllCubAssign[i];
     g  := FAllCubAssign.Objects[i] as TAssignGroup;
     lRec.FRAssignCGList[i].LongIP := StrIp_To_LongIp(ip);
     SetLength(lRec.FRAssignCGList[i].AssList,g.Count);
     for j := 0 to g.Count - 1 do begin
        lRec.FRAssignCGList[i].AssList[j] := g.AssList[j];
     end;
  end;

  lRec.SnapshotResetVarCount;

  //// SimPlatforms
  for i := 0 to SimPlatforms.itemCount - 1 do begin
    obj := SimPlatforms.getObject(i);
    lRec.SnapshotGetPlatforms(obj,slog);
    if Length(slog)>0 then
       FOnLogStr('TSimMgr_Server.SnapshotToFile', slog);
  end;
  //// SimPlatforms
  /// --------------------------------------------------------------------------
  //// SimDevice
  for i := 0 to SimDevices.itemCount - 1 do begin
    obj := SimDevices.getObject(i);
    if obj is TT3Sensor then
        lRec.SnapshotGetDeviceSensor(obj,slog)
    else if obj is TT3CounterMeasure then
        lRec.SnapshotGetDeviceCounterMeasure(obj,slog)
    else if obj is TT3Weapon then
        lRec.SnapshotGetWeaponOnVehicle(obj,slog)
    else
      FOnLogStr('TSimMgr_Server.SnapshotToFile', 'Snapshot :: UnListed TT3Device "'+obj.ClassName+'".');

    if Length(slog)>0 then
       FOnLogStr('TSimMgr_Server.SnapshotToFile', slog);
  end;
  //// SimDevice
  /// --------------------------------------------------------------------------
  //// SimWeapons
  for i := 0 to SimWeapons.itemCount - 1 do begin
    obj := SimWeapons.getObject(i);
    FOnLogStr('TSimMgr_Server.SnapshotToFile', 'Snapshot :: Weapons NOT LISTED SimWeapons :: "'+TT3Weapon(obj).ClassName+'".');
  end;
  //// SimWeapons
  /// --------------------------------------------------------------------------
  //// simNonRealPlatform
  for i := 0 to simNonRealPlatform.itemCount - 1 do begin
    obj := simNonRealPlatform.getObject(i) ;
    lRec.SnapshotGetNonRealTimePlatforms(obj,slog);
    if Length(slog)>0 then
       FOnLogStr('TSimMgr_Server.SnapshotToFile', slog);
  end;
  //// simNonRealPlatform

  for i := 0 to SimPointRBLW_VehicleMissile.itemCount - 1 do begin
    obj := SimPointRBLW_VehicleMissile.getObject(i) ;
    lRec.SnapshotGetPointRBLW_VehicleMissile(obj,slog);
    if Length(slog)>0 then
       FOnLogStr('TSimMgr_Server.SnapshotToFile', slog);
  end;

   for i := 0 to SimPointBOLW_VehicleMissile.itemCount - 1 do begin
    obj := SimPointBOLW_VehicleMissile.getObject(i) ;
    lRec.SnapshotGetPointBOLW_VehicleMissile(obj,slog);
    if Length(slog)>0 then
       FOnLogStr('TSimMgr_Server.SnapshotToFile', slog);
  end;

  Datalink1 := DataLinkManager.getDatalink(1);
  Datalink2 := DataLinkManager.getDatalink(2);
  Datalink3 := DataLinkManager.getDatalink(3);

  __snapshot_getDatalink(Datalink1, Datalink2, Datalink3);

  lFile := TFileStream.Create(sFileInfo, fmCreate);
  try
    lRec.SaveTo(lFile, Sce.Scenario_Index );
  finally
    lFile.Free;
    r.OrderID := CPID_CMD_SNAPSHOT_SUCCESS ;
    r.SnapshotName := FScenario.Scenario_def.FData.Scenario_Identifier+'-'+addName ;
    ipTo  := LongIp_To_StrIp(r.pid.ipSender);
    VNetServer.SendTo(CPID_CMD_SNAPSHOT, @r, ipTo);
  end;
end;

procedure TSimMgr_Server.SnapshotLoadFile ( fName : string );
var
  ip,slog         : string;
  i,j             : integer ;
  g               : TAssignGroup;
  gCub            : T3CubicleGroup ;
  gCubMember      : T3CubicleGroupMember ;
  Datalink1, Datalink2, Datalink3 : TT3DataLink;
begin

  GamePause ;

  __snapshot_showprogress(true);

  if __snapshot_loadfile(fName) then begin
    slog := lRec.Name+'-'+lRec.AddName;
    FOnLogStr('TSimMgr_Server.SnapshotLoadFile', 'Snapshot :: Use snapshot '+QuotedStr(slog));
  end
  else begin
    FOnLogStr('TSimMgr_Server.SnapshotLoadFile', 'Snapshot :: Error Load file snapshot ');
    Exit ;
  end;

  __snapshot_setprogress('Snapshot :: Use snapshot '+QuotedStr(slog));

  { scenario }
  ResetScenario ;

  FLastPlatformID := 100;
  FMainVTime.Reset(0);
  FLastPlatformID := ((FLastPlatformID  div 100) + 1 ) * 100;

  __snapshot_setGameScenario(FScenario);
  __snapshot_setGameEnvironment(GameEnvironment);
  __snapshot_setGameDefault(GameDefaults);
  __snapshot_setRainfall(FRainfall);
  __snapshot_setCloudEffects(FCloud_Effects);
  __snapshot_setDefaultVar(FDefault_Var);

  GameEnvironment.COnverter := Converter ;

  with lRec.FRGameInfo do
  begin
    FMainVTime.SetMilliSecond(mGameMS);
    FMainVTime.DateTimeOffset := mGameStart ;
  end;

  for i := low(lRec.FRAssignCGList) to high(lRec.FRAssignCGList) do begin
    ip := LongIp_To_StrIp(lRec.FRAssignCGList[i].LongIP );
    if TStringList(FAllCubAssign).Find(ip, j) then begin
      g := FAllCubAssign.Objects[j] as TAssignGroup;
      g.Add(lRec.FRAssignCGList[i].GroupID);
    end
    else begin
      g := TAssignGroup.Create;
      SetLength(g.AssList,length(lRec.FRAssignCGList[i].AssList));
      for j := low(lRec.FRAssignCGList[i].AssList) to high(lRec.FRAssignCGList[i].AssList) do begin
         g.AssList[j] := lRec.FRAssignCGList[i].AssList[j];
      end;
      g.Add(lRec.FRAssignCGList[i].GroupID);
      FAllCubAssign.AddObject(ip, g);
    end;
  end;

  for i := Low(lRec.FRCubicleGroupList) to High(lRec.FRCubicleGroupList) do begin
      recSSCubGroup := lRec.FRCubicleGroupList[i] ;
      gCub := T3CubicleGroup.Create;
      gCub.FData        := recSSCubGroup.FData ;
      gCub.CubicleName  := recSSCubGroup.CubicleName;
      gCub.InitData;
      for j := Low(lRec.FRCubicleGroupList[i].FSList) to High(lRec.FRCubicleGroupList[i].FSList) do
      begin
         gCubMember := T3CubicleGroupMember.Create;
         gCubMember.FData := lRec.FRCubicleGroupList[i].FSList[j].FData ;
         gCub.FSList.AddObject(IntToStr(gCubMember.FData.Group_Index), gCubMember);
      end;
      Scenario.CubiclesGroupsList.FSList.AddObject(IntToStr(gCub.FData.Group_Index), gCub);
      __snapshot_setprogress('Snapshot List Cubilce :: '+gCub.CubicleName);
  end;

  for i := 1 to 5 do
  begin
    gCub := T3CubicleGroup.Create;
    with gCub.FData do
    begin
      Group_Index       := 0;
      Deployment_Index  := 0;
      Group_Identifier  := 'Controller';
      Force_Designation := i;
      Tracks_Block      := 0;
      Track_Block_Start := 0;
      Track_Block_End   := 0;
      Zulu_Zulu         := 0;
    end;

    gCub.InitData;
    Scenario.CubiclesGroupsList.FSList.AddObject(IntToStr(i), gCub);
  end;

  ///------------------------------------SimPlatform ---------------------------------------
  __snapshotSetVehicleList(SimPlatforms,Self,FIsInstructor,slog);
  __snapshotSetVehicleDefList(SimPlatforms,Self,FIsInstructor,slog);

  __snapshotSetNonRealtimeList(simNonRealPlatform,Self,FIsInstructor,slog);
  __snapshotSetPointRBLW_VehicleMissile(SimPointRBLW_VehicleMissile,Self,FIsInstructor,slog);
  __snapshotSetPointBOLW_VehicleMissile(SimPointBOLW_VehicleMissile,Self,FIsInstructor,slog);
  __snapshotSetSonobuoyList(SimPlatforms,Self,FIsInstructor);

  ///------------------------------------SimPlatform :: TT3Weapon---------------------------------------
  __snapshotSetMissileList(SimPlatforms,Self,FIsInstructor);
  __snapshotSetTorpedoList(SimPlatforms,Self,FIsInstructor);
  __snapshotSetBombList(SimPlatforms,Self,FIsInstructor);
  __snapshotSetGunList(SimPlatforms,Self,FIsInstructor);
  __snapshotSetMineList(SimPlatforms,Self,FIsInstructor);
  __snapshotSetAirBubbleList(SimPlatforms,Self,FIsInstructor);
  __snapshotSetChaffList(SimPlatforms,Self,FIsInstructor);
//  __snapshotSetVectacList(SimPlatforms,Self,FIsInstructor);
  ///------------------------------------SimPlatform :: TT3Weapon---------------------------------------
  ///  ---------------------------------Datalink-------------------------------------------------------
  ///
  Datalink1 := DataLinkManager.getDatalink(1);
  Datalink2 := DataLinkManager.getDatalink(2);
  Datalink3 := DataLinkManager.getDatalink(3);

  __snapshot_setDatalinks(SimPlatforms, Datalink1, Datalink2, Datalink3);
  ///-----------------------------------Datalink-------------------------------------------------------
  {*** Clear Object yang tidak dipakai ***}
//  SimWeapons.ClearObjectAfterSnapshot;
//  SimDevices.ClearObjectAfterSnapshot;
//  SimPlatforms.ClearObjectAfterSnapshot;
//  simNonRealPlatform.ClearObjectAfterSnapshot;

  FOnLogStr('TSimMgr_Server.SnapshotLoadFile', '...........................................................................');
  FOnLogStr('TSimMgr_Server.SnapshotLoadFile', 'Snapshot :: Load Success');
  FOnLogStr('TSimMgr_Server.SnapshotLoadFile', '...........................................................................');
  __snapshot_showprogress(false);

end;

{*******************************************snapshot**********************************}

end.
