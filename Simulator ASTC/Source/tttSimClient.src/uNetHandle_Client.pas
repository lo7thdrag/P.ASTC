unit uNetHandle_Client;

interface

uses
   Classes, SysUtils, OverbyteIcsWSocket,
   uTCPClient, uNetHandle_TTT;

type
  TOnFinishBuffer = procedure(const b : Boolean) of object;

//==============================================================================
  TNetHandler_Client = class(TNetHandle_TTT)
  private
    FLogRecv: TGetStrProc;
    FOnFinishBuffer: TOnFinishBuffer;
    function getOnConnected: TNotifyEvent;
    procedure setOnConnected(const Value: TNotifyEvent);

    function getOnDisConnected: TNotifyEvent;
    procedure setOnDisConnected(const Value: TNotifyEvent);
    procedure SetOnReceivedLog(const Value: TGetStrProc);
    function getOnReceivedLog: TGetStrProc;
    procedure setLogRcv(const Value: TGetStrProc);
    procedure setFinishBuffer(const Value: TOnFinishBuffer);

  protected
    FUseDebug : Boolean;
    FNetClient: TTCPClient;

  public

    constructor Create;
    destructor Destroy; override;

    procedure StartNetworking; override;
    procedure StopNetworking;  override;

    procedure SendCommand(const aID: word; aBuffer: PAnsiChar);
    procedure SendUDPRequest(const aID: word; aBuffer: PAnsiChar);


    procedure TryReconnect();

  public
    ServerIP: string;

    procedure getPacket();
  public
    property OnConnected: TNotifyEvent read getOnConnected write setOnConnected;
    property OnDisConnected: TNotifyEvent read getOnDisConnected write setOnDisConnected;
    property OnReceivedLog : TGetStrProc read getOnReceivedLog write setOnReceivedLog;
    property OnLogRecv : TGetStrProc read FLogRecv write setLogRcv;
    property OnFinishBuffer : TOnFinishBuffer read FOnFinishBuffer write setFinishBuffer;
  end;

var
  VNetClient: TNetHandler_Client;

implementation

uses
  uTCPDatatype;
{ TNetHandlerServer }


constructor TNetHandler_Client.Create;
begin
  inherited;

  FUseDebug := false;
end;

destructor TNetHandler_Client.Destroy;
begin

end;

function TNetHandler_Client.getOnConnected: TNotifyEvent;
begin
  result := FNetClient.OnConnected;
end;


procedure TNetHandler_Client.setFinishBuffer(const Value: TOnFinishBuffer);
begin
  FOnFinishBuffer := Value;
  FNetClient.OnFinishBuffer := Value;
end;

procedure TNetHandler_Client.setLogRcv(const Value: TGetStrProc);
begin
  FLogRecv := Value;
  FNetClient.OnlogRecv := Value;
end;

procedure TNetHandler_Client.setOnConnected(const Value: TNotifyEvent);
begin
  FNetClient.OnConnected := Value;
end;

function TNetHandler_Client.getOnDisConnected: TNotifyEvent;
begin
  result := FNetClient.OnDisConnected;
end;

function TNetHandler_Client.getOnReceivedLog: TGetStrProc;
begin
  //result :=  FNetTCPSock.OnGetRecvLog;
end;

procedure TNetHandler_Client.getPacket;
begin
  FNetClient.GetPacket;
end;

procedure TNetHandler_Client.setOnDisConnected(const Value: TNotifyEvent);
begin
  FNetClient.OnDisConnected := Value;
end;

{procedure TNetMgr_Client.FNetClient_OnStateChange(st: TSocketState);
begin
  if FUseDebug then begin

    FrmDebugNet.Add_NetStatusLog(SockStateToString(st));
  end;
end;
}


procedure TNetHandler_Client.SetOnReceivedLog(const Value: TGetStrProc);
begin
//  FNetTCPSock.OnGetRecvLog := Value;
//  FNetUDPNode.OnGetRecvLog := Value;
end;

procedure TNetHandler_Client.StartNetworking;
begin
  inherited;

  FNetClient    := TTCPClient.Create;
  FNetTCPSock   := FNetClient;

  FNetUDPNode.Listen(IntToStr(GamePort));
  FNetClient.Connect(ServerIP, IntToStr(CommandPort));

end;

procedure TNetHandler_Client.StopNetworking;
begin
  FNetClient.Disconnect;
  FNetClient.Free;


  inherited;
end;

procedure TNetHandler_Client.TryReconnect;
begin
  if not FNetClient.Connected then
    FNetClient.Connect(ServerIP, IntToStr(CommandPort));

end;

//==============================================================================

procedure TNetHandler_Client.SendCommand(const aID: word; aBuffer: PAnsiChar);
var pid: ^TPacketID;
begin
  pid := @aBuffer^;
  pid.ipSender := FNetClient.MyLongIP;

  FNetClient.SendData(aID, aBuffer);
end;

procedure TNetHandler_Client.SendUDPRequest(const aID: word; aBuffer: PAnsiChar);
var pid: ^TPacketID;
begin
  pid := @aBuffer^;
  pid.ipSender := FNetClient.MyLongIP;

  FNetUDPNode.SendDataTo(ServerIP, aID, aBuffer);
end;


end.

