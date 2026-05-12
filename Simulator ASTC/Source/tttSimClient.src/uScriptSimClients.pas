unit uScriptSimClients;


interface

  procedure BeginGame;
  procedure EndGame;

implementation

uses
   uScriptCommon,
   SysUtils, Controls, Forms,
   uLibSettingTTT, uSimMgr_Client,
   uNetHandle_Client, uNetVoipCtrl_Server,
   uMapXHandler,
   ufTacticalDisplay, uCoordConvertor, ufToteDisplay,
   uT3Listener, uGameSetting, ufLog, uSRRFunction, uFilter;


procedure BeginGame;
begin
  BeginGameCommon;

  if vMapSetting.FullScreen then
    frmTacticalDisplay.Be_A_FullMap(true);

  LoadFF_NetClientSetting(vSettingFile, vNetClientSetting);
  LoadFF_CubicalAssignSetting(vSettingFile, vCubicalAssignSetting);
  LoadFF_AppSetting(vSettingFile, vAppSetting);

  simMgrClient := TSimMgr_Client.Create(frmTacticalDisplay.fmMapWindow1.Map);
  simMgrClient.ApplyCubicleSetting;
  simMgrClient.OnMapViewChange  := frmTacticalDisplay.MapViewChanged;

  VSimMap := TSimMap.Create(frmTacticalDisplay.fmMapWindow1.Map );
  VSimMap.OnDrawToCanvas  := simMgrClient.DrawAll;
  VSimMap.OnMapChange     := simMgrClient.OnMapChange;
  VSimMap.OnToolUsed      := frmTacticalDisplay.MapToolUsed;
  VSimMap.OnMapMouseMove  := frmTacticalDisplay.MapMouseMove;
  VSimMap.OnMapMouseDown  := frmTacticalDisplay.MapMouseDown;
  VSimMap.OnMapMouseUp    := frmTacticalDisplay.MapMouseUp;
  VSimMap.OnLogTemporary  := frmLog.LogTemporary;

  simMgrClient.Scenario.OnGetExternalCom := frmToteDisplay.ObjectCommunicationCreate;
  simMgrClient.SessionID := vGameDataSetting.GameSessionID;

  try
    simMgrClient.EventManager.OnLogEventStr := frmLog.LogStr;
    simMgrClient.OnLogEventStr  :=  frmLog.NetworkEventLogs;
    simMgrClient.OnLogStr       :=  frmLog.LogStr;
    simMgrClient.OnLogTemporary :=  frmLog.LogTemporary;
  finally

  end;

  if UseSnapshot(vGameDataSetting) then
  begin
    simMgrClient.LoadFromSnapshot := True;
    simMgrClient.SnapshotLoadFile(vGameDataSetting.SnapshotName);
  end
  else
  begin
    simMgrClient.LoadFromSnapshot := False;
    simMgrClient.LoadScenarioId(vGameDataSetting);
  end;

  //tambahan aldy environment
  simMgrClient.SensorSetEnvi;
  simMgrClient.VehicleSetEnvi;
  simMgrClient.DeviceSetEnvi;

  simMgrClient.OnUpdateForm    := frmTacticalDisplay.UpdateFormData;
  simMgrClient.OnUpdateTime    := frmTacticalDisplay.UpdateGameTime;
  simMgrClient.OnUpdateCenter  := frmTacticalDisplay.UpdateCenter;
  simMgrClient.OnUpdateMessage := frmToteDisplay.UpdateMessageHandling;

  vFilter := TFilter.Create;
  frmTacticalDisplay.Initialize;
  frmTacticalDisplay.SetRoleClient(simMgrClient.ClientRole);
  frmToteDisplay.Initialize;
  frmToteDisplay.setRoleClient(simMgrClient.ClientRole);
  with frmToteDisplay do
  begin
    if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
      btnPlatformStatusClick(frmToteDisplay)
    else
      btnPlatformStatusClick(frmToteDisplay);
  end;

  VNetClient                  := TNetHandler_Client.Create;
  VNetClient.GamePort         := vNetSetting.GamePort;
  VNetClient.CommandPort      := vNetSetting.CommandPort;
  VNetClient.BroadCastAddress := vNetSetting.GameAddress;
  VNetClient.ServerIP         := vNetClientSetting.ServerIP;

  VNetClient.StartNetworking;
//  VNetClient.OnReceivedLog := simMgrClient.LogNetworkEvent;
  VNetClient.OnReceivedLog := frmLog.LogNetworkEvent;
  VNetClient.OnConnected := simMgrClient.netOnConnected;
  VNetClient.OnLogRecv        := frmLog.LogDataBuffer;
  VNetClient.OnFinishBuffer := frmLog.FinishBuffer;

  VNetVoipCtrlServer              :=  TNetVoipCtrl_Server.Create;
  VNetVoipCtrlServer.VoipCtrlPort := vNetSetting.VoipCtrlPort;

  simMgrClient.InitNetwork;
  simMgrClient.GameStart;
  //bebe
  simMgrClient.LoadPredefinedPattern;

  if Assigned(simMgrClient.ControlledPlatform) then
    simMgrClient.ControlledPlatform.Controlled := true;


end;

procedure EndGame;
begin

  simMgrClient.GamePause;

  VNetClient.StopNetworking;
  VNetClient.Free;

  VNetVoipCtrlServer.StopNetworking;
  VNetVoipCtrlServer.Free;

  simMgrClient.Free;

  VSimMap.Free;
  vFilter.Free
end;



end.


