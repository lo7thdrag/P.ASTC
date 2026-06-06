unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, uLibSetting, uExecuter, Winapi.TlHelp32,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  uTCPServer, ShellApi, Vcl.Imaging.jpeg, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, AdvSmoothPanel, Vcl.Menus;

type
  TMainForm = class(TForm)
    GetPacketTimer: TTimer;
    ilClientStateColor: TImageList;
    tmrCekAplication: TTimer;
    pnlINS1: TPanel;
    pnlINS2: TPanel;
    pnlINS3: TPanel;
    pnlCub_01_01: TPanel;
    pnlCub_01_02: TPanel;
    pnlCub_01_03: TPanel;
    pnlCub_01_04: TPanel;
    pnlCub_01_05: TPanel;
    pnlCub_01_06: TPanel;
    pnlCub_02_01: TPanel;
    pnlCub_02_02: TPanel;
    pnlCub_02_03: TPanel;
    pnlCub_02_04: TPanel;
    pnlCub_02_05: TPanel;
    pnlCub_02_06: TPanel;
    pnlCub_03_01: TPanel;
    pnlCub_03_02: TPanel;
    pnlCub_03_03: TPanel;
    pnlCub_03_04: TPanel;
    pnlCub_03_05: TPanel;
    pnlCub_03_06: TPanel;
    pnlCub_04_01: TPanel;
    pnlCub_04_02: TPanel;
    pnlCub_04_03: TPanel;
    pnlCub_04_04: TPanel;
    pnlCub_04_05: TPanel;
    pnlCub_04_06: TPanel;
    pnlCub_05_01: TPanel;
    pnlCub_05_02: TPanel;
    pnlCub_05_03: TPanel;
    pnlCub_05_04: TPanel;
    pnlCub_05_05: TPanel;
    pnlCub_05_06: TPanel;
    pnlCub_06_01: TPanel;
    pnlCub_06_02: TPanel;
    pnlCub_06_03: TPanel;
    pnlCub_06_04: TPanel;
    pnlCub_06_05: TPanel;
    pnlCub_06_06: TPanel;
    pnlCub_07_01: TPanel;
    pnlCub_07_02: TPanel;
    pnlCub_07_03: TPanel;
    pnlCub_07_04: TPanel;
    pnlCub_07_05: TPanel;
    pnlCub_07_06: TPanel;
    pnlCub_08_01: TPanel;
    pnlCub_08_02: TPanel;
    pnlCub_08_03: TPanel;
    pnlCub_08_04: TPanel;
    pnlCub_08_05: TPanel;
    pnlCub_08_06: TPanel;
    pnlCub_09_01: TPanel;
    pnlCub_09_02: TPanel;
    pnlCub_09_03: TPanel;
    pnlCub_09_04: TPanel;
    pnlCub_09_05: TPanel;
    pnlCub_09_06: TPanel;
    pnlCub_10_01: TPanel;
    pnlCub_10_02: TPanel;
    pnlCub_10_03: TPanel;
    pnlCub_10_04: TPanel;
    pnlCub_10_05: TPanel;
    pnlCub_10_06: TPanel;
    pmPanel: TPopupMenu;
    btnShutdownAll: TImage;
    btnRestartAll: TImage;
    GC1: TMenuItem;
    Console1: TMenuItem;
    Run1: TMenuItem;
    Kill1: TMenuItem;
    Restart1: TMenuItem;
    Shutdown1: TMenuItem;
    AdvSmoothPanel14: TAdvSmoothPanel;
    AdvSmoothPanel13: TAdvSmoothPanel;
    btnRunSessionVoip: TImage;
    btnStopSessionVoip: TImage;
    imgSessionVoip: TImage;
    lblStatusSessionVoip: TLabel;
    Label20: TLabel;
    AdvSmoothPanel18: TAdvSmoothPanel;
    imgBackground: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnSingleSystemClick(Sender: TObject);

    procedure GetPacketTimerTimer(Sender: TObject);

    procedure btnRunClick(Sender: TObject);
    procedure btnKillClick(Sender: TObject);
    procedure btnRefreshSystemStateClick(Sender: TObject);
    procedure tmrCekAplicationTimer(Sender: TObject);
    
    procedure pnlMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    FpnlIP : string;
    vSettingFile: string;
    server: TTCPServer;

    FAppGame : TAppExecute;
    FAppGame2 : TAppExecute;

    function GetApp(appName : String): Boolean;

    procedure Client_Connect(const S: string);
    procedure Client_Disconnect(const S: string);

//    procedure UpdateSystemClientState;
    procedure UpdateWarnaPanel;
//    procedure UpdateConnectState(const S: string);
//    procedure UpdateDisconnectState(const S: string);

    procedure LoadConsoleList;

    procedure Server_Log(const S: string);

    procedure KillApp(appName : string);

    procedure NetRecv_CommandData(apRec: PAnsiChar; aSize: word);
    procedure NetRecv_AppData(apRec: PAnsiChar; aSize: word);

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UNetData;

{$REGION ' Form Section '}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FAppGame    := TAppExecute.Create;
  FAppGame.OnStartExecute := nil;
  FAppGame.OnEndExecute   := nil;

  server := TTCPServer.Create;
  server.OnClient_Connect := Client_Connect;
  server.OnClient_DisConnect := Client_Disconnect;
  server.OnGetStatusLog := Server_Log;
  server.RegisterProcedure(CommandID, NetRecv_CommandData,SizeOf(RecCommandData));
  server.RegisterProcedure(CommandApp, NetRecv_AppData,SizeOf(RecAppData));

  GetPacketTimer.Interval := 50;

end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  server.UnregisterAllProcedure;
  server.Stop;
  server.Free;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  vSettingFile := getFileSetting;
  LoadFF_NetSetting(vSettingFile, vNetSetting);

  if vNetSetting.AutoStart then
  begin
    server.Listen(vNetSetting.Port);
    GetPacketTimer.Enabled := True;
  end;

  LoadConsoleList;
  UpdateWarnaPanel;
end;

{$ENDREGION}

{$REGION ' System Section '}

procedure TMainForm.btnRefreshSystemStateClick(Sender: TObject);
begin
//  UpdateSystemClientState;
end;

procedure TMainForm.btnRunClick(Sender: TObject);
begin
//
end;

procedure TMainForm.btnSingleSystemClick(Sender: TObject);
var
  CommandData: RecCommandData;

begin
  CommandData.command := TMenuItem(Sender).Tag;;
  server.SendDataToIPAddress(CommandID, @CommandData, FpnlIP);

    case TMenuItem(Sender).Tag of
      0 : ShowMessage('Shutdown ' + FpnlIP);
      1 : ShowMessage('Restart ' + FpnlIP);
      2 : ShowMessage('Run GC ' + FpnlIP);
      3 : ShowMessage('Run Simclient ' + FpnlIP);
      4 : ShowMessage('Kill GC ' + FpnlIP);
      5 : ShowMessage('Kill Simclient ' + FpnlIP);
    end;
end;

procedure TMainForm.btnKillClick(Sender: TObject);
var
  CommandData: RecCommandData;

begin
  case TImage(Sender).Tag of
    2 : KillApp(vNetSetting.Nafsserverapp);
    4 : KillApp(vNetSetting.Nafsbridgeapp);
    6 :
    begin
      CommandData.command := 4;
      server.SendDataToIPAddress(CommandID, @CommandData, vNetSetting.InstNafs);
    end;
    8 : KillApp(vNetSetting.Nsfsserverapp);
    10 : KillApp(vNetSetting.Nsfsbridgeapp);
    12 :
    begin
      CommandData.command := 4;
      server.SendDataToIPAddress(CommandID, @CommandData, vNetSetting.InstNsfs);
    end;
    14 : KillApp(vNetSetting.Nssfsserverapp);
    16 : KillApp(vNetSetting.Nssfsbridgeapp);
    18 :
    begin
      CommandData.command := 4;
      server.SendDataToIPAddress(CommandID, @CommandData, vNetSetting.InstNssfs);
    end;
    20 : KillApp(vNetSetting.Sessionvoipapp);
  end;
end;

//procedure TMainForm.UpdateConnectState(const S: string);
//begin
//
//end;
//
//procedure TMainForm.UpdateDisconnectState(const S: string);
//begin
//
//end;
//
//procedure TMainForm.UpdateSystemClientState;
//begin
//
//end;

procedure TMainForm.UpdateWarnaPanel;
var
  i : Integer;

begin
  for i := 0 to ComponentCount-1 do
  begin
    if Components[i] is TPanel then
    begin
      if TPanel(Components[i]).Tag = 100 then
      begin
        if server.getClientState(TPanel(Components[i]).Hint) then
        begin
          TPanel(Components[i]).Color := clLime;
        end
        else
        begin
          TPanel(Components[i]).Color := clRed;
        end;
      end;
    end;
  end;
end;

procedure TMainForm.LoadConsoleList;
begin

end;

{$ENDREGION}

{$REGION ' Join Section '}

procedure TMainForm.Client_Connect(const S: string);
var
  ss: TStringList;
begin
  ss := TStringList.Create;
  try
    server.GetConnectedList(ss);
//    UpdateConnectState(s);
    UpdateWarnaPanel;
  finally
    ss.Free;
  end;
end;

procedure TMainForm.Client_Disconnect(const S: string);
var
  ss: TStringList;
begin
  ss := TStringList.Create;
  try
    server.GetConnectedList(ss);
//    UpdateDisconnectState(s);
    UpdateWarnaPanel;
  finally
    ss.Free;
  end;
end;

function TMainForm.GetApp(appName: String): Boolean;
var
  connector, killer :THandle;
  stamped : LongBool;
  exe : TProcessEntry32;
  IDExe : Integer;
  flag : Boolean;

begin

  Result := False;

  connector := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  exe.dwSize := sizeOf(exe);
  stamped := Process32First(connector, exe);

  while stamped do
  begin
    stamped := Process32Next(connector, exe);

    if exe.szExeFile = appName then
    begin
      IDExe := exe.th32ProcessID;
      Result := True;
      Break
    end;

  end;
end;

procedure TMainForm.KillApp(appName : string);
var
  connector, killer :THandle;
  stamped : LongBool;
  exe : TProcessEntry32;
  IDExe : Integer;
  flag : Boolean;

begin

  connector := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  exe.dwSize := sizeOf(exe);
  stamped := Process32First(connector, exe);

  flag := False;
  while stamped do
  begin
    stamped := Process32Next(connector, exe);

    if exe.szExeFile = appName then
    begin
      IDExe := exe.th32ProcessID;
      flag := True;
      Break
    end;

  end;

  if flag then
  begin
    killer := OpenProcess(PROCESS_TERMINATE, False, IDExe );

    if TerminateProcess(killer, 0) then
    begin
      //LogMemo.Lines.Add('Kill ' + vNetSetting.Application2);
    end
  end;
end;

procedure TMainForm.tmrCekAplicationTimer(Sender: TObject);
begin
//
end;

procedure TMainForm.GetPacketTimerTimer(Sender: TObject);
begin
  server.getPacket;
end;

procedure TMainForm.NetRecv_AppData(apRec: PAnsiChar; aSize: word);
begin
//
end;

procedure TMainForm.NetRecv_CommandData(apRec: PAnsiChar; aSize: word);
begin
//
end;

procedure TMainForm.pnlMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    p : TPoint;
begin
if ( Button = mbright ) then
  begin
    FpnlIP := TPanel(Sender).Hint;
    GetCursorPos(p);

    pmPanel.Popup(p.X, p.Y);
  end;
end;

procedure TMainForm.Server_Log(const S: string);
begin
//  LogMemo.Lines.Add(S);
end;
{$ENDREGION}

end.
