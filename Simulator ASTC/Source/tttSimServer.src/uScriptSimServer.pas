unit uScriptSimServer;


interface

  procedure BeginGame_Server;
  procedure EndGame_Server;

implementation

uses
  SysUtils,
  uScriptCommon,
  uMapXData,

  uLibSettingTTT, ufMainGServer,
  uNetHandle_Server, uSimMgr_Server,
  uT3ServerEventManager,
  uCoordConvertor, uGamePlayType, uSRRFunction;


procedure BeginGame_Server;
begin
  BeginGameCommon;


  {procedure dipindah untuk load peta sama dengan db}
  VMapData := TSimMapData.Create;
//  if FileExists(vMapSetting.MapDataGeoset)  then
//    VMapData.LoadDataMap(vMapSetting.MapDataGeoset);

  simMgrServer := TSimMgr_Server.Create(VMapData.DMap);

  simMgrServer.OnLogStr         := fMainGServer.LogStr;
  simMgrServer.OnLogInitStr     := fMainGServer.LogInitStr;
  simMgrServer.OnLogEventStr    := fMainGServer.LogEventStr;
  simMgrServer.EventManager.OnLogEventStr := fMainGServer.LogEventStr;
  simMgrServer.OnUpdateGameInfo := fMainGServer.updateGameInfo;
  simMgrServer.SessionID  := vGameDataSetting.GameSessionID;

  if TGamePlayType(vGameDataSetting.GamePlayMode.GameType)=gpmReplay then
     simMgrServer.OnReplayStr      := fMainGServer.LogReplayGetFrame;
//--1
  if UseSnapshot(vGameDataSetting) then
  begin
    simMgrServer.LoadFromSnapshot := True;
    simMgrServer.SnapshotLoadFile(vGameDataSetting.SnapshotName);
  end
  else
  begin
    simMgrServer.LoadFromSnapshot := False;
    simMgrServer.LoadScenarioId(vGameDataSetting);
  end;

  simMgrServer.SensorSetEnvi;
  simMgrServer.VehicleSetEnvi;
  simMgrServer.DeviceSetEnvi;

  LoadFF_NetClientSetting(vSettingFile, vNetClientSetting);
  LoadFF_NetServerSetting(vSettingFile, vNetServerSetting);

  VNetServer                  := TNetHandle_Server.Create;
  VNetServer.GamePort         := vNetSetting.GamePort;
  VNetServer.CommandPort      := vNetSetting.CommandPort;
  VNetServer.BroadCastAddress := vNetSetting.GameAddress;
  VNetServer.SessionPort      := vNetSetting.SessionPort;
  VNetServer.SessionServerIP  := vNetClientSetting.ServerIP;
  VNetServer.StubPort         := vNetSetting.MapStubPort;
  VNetServer.StubAddr         := vNetSetting.MapStubAddr;

  VNetServer.OnClientConnect    :=  simMgrServer.FNetServerOnClientConnect;
  VNetServer.OnClientDisConnect :=  simMgrServer.FNetServerOnClientDisConnect;
  VNetServer.OnConnectedToSession := simMgrServer.netSessionOnConnectedRequestCubicle;

  VNetServer.StartNetworking;  // Create server port
  simMgrServer.InitNetwork;    // register procedure
  VNetServer.OnlogRecv := fMainGServer.LogRecv;

  //VNetServer.startListen di pindah, dijalankan setelah
  //sequence request session selesai.
  simMgrServer.BroadcastData := true;
//--2-
//  simMgrServer.LoadScenarioId(vGameDataSetting);
  ////

  fMainGServer.UpdateViewSetting;

  simMgrServer.LoadPredefinedPattern;

end;




procedure EndGame_Server;
begin

  simMgrServer.GamePause;

  VNetServer.StopNetworking;
  VNetServer.Free;

  simMgrServer.Free;

  VMapData.Free;
end;



end.


