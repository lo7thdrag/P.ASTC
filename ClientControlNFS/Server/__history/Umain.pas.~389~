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
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    imgHeaderNafs: TImage;
    advsmthpnl1: TAdvSmoothPanel;
    Label2: TLabel;
    btnRunServerNafs: TImage;
    btnStopServerNafs: TImage;
    imgServerNafs: TImage;
    lblStatusServerNafs: TLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    imgBridgeNafs: TImage;
    lblStatusBridgeNafs: TLabel;
    Label5: TLabel;
    btnRunBridgeNafs: TImage;
    btnStopBridgeNafs: TImage;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label7: TLabel;
    imgIntructorNafs: TImage;
    btnRunInstructorNafs: TImage;
    btnStopIntructorNafs: TImage;
    lblStatusInstructorNafs: TLabel;
    AdvSmoothPanel5: TAdvSmoothPanel;
    AdvSmoothPanel6: TAdvSmoothPanel;
    AdvSmoothPanel7: TAdvSmoothPanel;
    AdvSmoothPanel8: TAdvSmoothPanel;
    Image1: TImage;
    Label4: TLabel;
    imgServerNsfs: TImage;
    lblStatusServerNsfs: TLabel;
    btnRunServerNsfs: TImage;
    btnStopServerNsfs: TImage;
    Label8: TLabel;
    lblStatusBridgeNsfs: TLabel;
    imgBridgeNsfs: TImage;
    btnRunBridgeNsfs: TImage;
    btnStopBridgeNsfs: TImage;
    lblStatusInstructorNsfs: TLabel;
    Label10: TLabel;
    imgIntructorNsfs: TImage;
    btnRunInstructorNsfs: TImage;
    btnStopIntructorNsfs: TImage;
    AdvSmoothPanel9: TAdvSmoothPanel;
    AdvSmoothPanel10: TAdvSmoothPanel;
    AdvSmoothPanel11: TAdvSmoothPanel;
    Image11: TImage;
    Label12: TLabel;
    lblStatusServerNssfs: TLabel;
    imgServerNssfs: TImage;
    btnRunServerNssfs: TImage;
    btnStopServerNssfs: TImage;
    Label14: TLabel;
    lblStatusBridgeNssfs: TLabel;
    imgBridgeNssfs: TImage;
    btnRunBridgeNssfs: TImage;
    btnStopBridgeNssfs: TImage;
    Label16: TLabel;
    lblStatusInstructorNssfs: TLabel;
    imgIntructorNssfs: TImage;
    btnRunInstructorNssfs: TImage;
    btnStopIntructorNssfs: TImage;
    AdvSmoothPanel12: TAdvSmoothPanel;
    AdvSmoothPanel13: TAdvSmoothPanel;
    btnRunSessionVoip: TImage;
    btnStopSessionVoip: TImage;
    imgSessionVoip: TImage;
    lblStatusSessionVoip: TLabel;
    lvSystem: TListView;
    Label20: TLabel;
    btnRestart: TImage;
    btnShutdown: TImage;
    btnRestartAll: TImage;
    btnShutdownAll: TImage;
    AdvSmoothPanel14: TAdvSmoothPanel;
    AdvSmoothPanel18: TAdvSmoothPanel;
    pmClient: TPopupMenu;
    mniRestart: TMenuItem;
    mniShutdown: TMenuItem;
    mniRestartAll: TMenuItem;
    mniShutdownAll: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnSingleSystemClick(Sender: TObject);
    procedure btnAllSystemClick(Sender: TObject);

    procedure GetPacketTimerTimer(Sender: TObject);

    procedure btnRunClick(Sender: TObject);
    procedure btnKillClick(Sender: TObject);
    procedure btnRefreshSystemStateClick(Sender: TObject);
    procedure tmrCekAplicationTimer(Sender: TObject);
    procedure lvSystemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    vSettingFile: string;
    server: TTCPServer;

    FAppGame : TAppExecute;
    FAppGame2 : TAppExecute;

    function GetApp(appName : String): Boolean;

    procedure Client_Connect(const S: string);
    procedure Client_Disconnect(const S: string);

    procedure UpdateSystemClientState;
    procedure UpdateConnectState(const S: string);
    procedure UpdateDisconnectState(const S: string);

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
end;

{$ENDREGION}

{$REGION ' System Section '}

procedure TMainForm.btnRefreshSystemStateClick(Sender: TObject);
begin
  UpdateSystemClientState;
end;

procedure TMainForm.btnRunClick(Sender: TObject);
var
  CommandData: RecCommandData;

begin
  case TImage(Sender).Tag of
    1 :
    begin
      {$REGION ' Serevr NAFS '}
      if not GetApp(vNetSetting.Nafsserverapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Nafsserver + vNetSetting.Nafsserverapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Server System NAFS');
      {$ENDREGION}
    end;
    3 :
    begin
      {$REGION ' Bridge NAFS '}
      if not GetApp(vNetSetting.Nafsbridgeapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Nafsbridge + vNetSetting.Nafsbridgeapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Bridge NAFS');
      {$ENDREGION}
    end;
    5:
    begin
      {$REGION ' Instructor NAFS '}
      if lblStatusServerNafs.Caption <> 'running' then
      begin
        ShowMessage('Turn on server application ');
        Exit;
      end;

      if lblStatusBridgeNafs.Caption <> 'running' then
      begin
        ShowMessage('Turn on bridge application ');
        Exit;
      end;

      CommandData.command := 2;
      server.SendDataToIPAddress(CommandID, @CommandData, vNetSetting.InstNafs);
      {$ENDREGION}
    end;
    7 :
    begin
      {$REGION ' Serevr NSFS '}
      if not GetApp(vNetSetting.Nsfsserverapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Nsfsserver + vNetSetting.Nsfsserverapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Server System NSFS');
      {$ENDREGION}
    end;
    9 :
    begin
      {$REGION ' Bridge NSFS '}
      if not GetApp(vNetSetting.Nsfsbridgeapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Nsfsbridge + vNetSetting.Nsfsbridgeapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Bridge NSFS');
      {$ENDREGION}
    end;
    11:
    begin
      {$REGION ' Instructor NSFS '}
      if lblStatusServerNsfs.Caption <> 'running' then
      begin
        ShowMessage('Turn on server application ');
        Exit;
      end;

      if lblStatusBridgeNsfs.Caption <> 'running' then
      begin
        ShowMessage('Turn on bridge application ');
        Exit;
      end;

      CommandData.command := 2;
      server.SendDataToIPAddress(CommandID, @CommandData, vNetSetting.InstNsfs);
      {$ENDREGION}
    end;
    13 :
    begin
      {$REGION ' Serevr NSSFS '}
      if not GetApp(vNetSetting.Nssfsserverapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Nssfsserver + vNetSetting.Nssfsserverapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Server System NSSFS');
      {$ENDREGION}
    end;
    15 :
    begin
      {$REGION ' Bridge NSSFS '}
      if not GetApp(vNetSetting.Nssfsbridgeapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Nssfsbridge + vNetSetting.Nssfsbridgeapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Bride NSSFS');
      {$ENDREGION}
    end;
    17:
    begin
      {$REGION ' Instructor NSSFS '}
      if lblStatusServerNssfs.Caption <> 'running' then
      begin
        ShowMessage('Turn on server application ');
        Exit;
      end;

      if lblStatusBridgeNssfs.Caption <> 'running' then
      begin
        ShowMessage('Turn on bridge application ');
        Exit;
      end;

      CommandData.command := 2;
      server.SendDataToIPAddress(CommandID, @CommandData, vNetSetting.InstNssfs);
      {$ENDREGION}
    end;
    19:
    begin
      {$REGION ' Session Voip '}
      if not GetApp(vNetSetting.Sessionvoipapp) then
      begin
        FAppGame.FExecFname := vNetSetting.Sessionvoip + vNetSetting.Sessionvoipapp;
        FAppGame.Executes;
      end
      else
        ShowMessage('Can not Run, double load Session Voip');
      {$ENDREGION}
    end;
  end;
end;

procedure TMainForm.btnAllSystemClick(Sender: TObject);
var
  i: Integer;
  SelectedIndex: Integer;
  CommandData: RecCommandData;
  ipaddress: string;
  li : TListItem;

begin
  for i := 0 to lvSystem.Items.Count - 1 do
  begin
    li := lvSystem.Items[i];
    ipaddress := li.SubItems[0];

    {0: Shutdown; 1: Restart;}
    CommandData.command := TButton(Sender).Tag;;
    server.SendDataToIPAddress(CommandID, @CommandData, ipaddress);
  end;

  case TButton(Sender).Tag of
    0 : ShowMessage('Shutdown All');
    1 : ShowMessage('Restart All');
  end;
end;

procedure TMainForm.btnSingleSystemClick(Sender: TObject);
var
  li : TListItem;
  ipaddress: string;
  CommandData: RecCommandData;

begin
  if lvSystem.Selected <> nil then
  begin
    li := lvSystem.Items[lvSystem.Selected.Index];
    ipaddress := li.SubItems[0];

    CommandData.command := TButton(Sender).Tag;
    server.SendDataToIPAddress(CommandID, @CommandData, ipaddress);

    case TButton(Sender).Tag of
      0 : ShowMessage('Shutdown ' + ipaddress);
      1 : ShowMessage('Restart ' + ipaddress);
    end;
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

procedure TMainForm.UpdateConnectState(const S: string);
begin
  if S = vNetSetting.InstNafs then
  begin
    lblStatusInstructorNafs.Caption := 'online';
    imgIntructorNafs.Picture.LoadFromFile('Image\online.png');
  end
  else if S = vNetSetting.InstNsfs then
  begin
    lblStatusInstructorNsfs.Caption := 'online';
    imgIntructorNsfs.Picture.LoadFromFile('Image\online.png');
  end
  else if S = vNetSetting.InstNssfs then
  begin
    lblStatusInstructorNssfs.Caption := 'online';
    imgIntructorNssfs.Picture.LoadFromFile('Image\online.png');
  end;
end;

procedure TMainForm.UpdateDisconnectState(const S: string);
begin
  if S = vNetSetting.InstNafs then
  begin
    lblStatusInstructorNafs.Caption := 'offline';
    imgIntructorNafs.Picture.LoadFromFile('Image\offline.png');
  end
  else if S = vNetSetting.InstNsfs then
  begin
    lblStatusInstructorNsfs.Caption := 'offline';
    imgIntructorNsfs.Picture.LoadFromFile('Image\offline.png');
  end
  else if S = vNetSetting.InstNssfs then
  begin
    lblStatusInstructorNssfs.Caption := 'offline';
    imgIntructorNssfs.Picture.LoadFromFile('Image\offline.png');
  end;
end;

procedure TMainForm.UpdateSystemClientState;
var
  i : Integer;
  li : TListItem;

begin
  for i := 0 to lvSystem.Items.Count-1 do
  begin
    li := lvSystem.Items[i];

    if server.getClientState(li.SubItems[0]) then
    begin
      li.StateIndex := 1;
    end
    else
    begin
      li.StateIndex := 0;
    end;
  end;
end;

procedure TMainForm.LoadConsoleList;
var
  i : Integer;
  li : TListItem;

begin
  for i := 0 to lvSystem.Items.Count-1 do
  begin
    li := lvSystem.Items[i];

    li.StateIndex := 0;

    if li.Caption = 'INS_01' then li.SubItems[0] := vNetSetting.INS_01
    else if li.Caption = 'INS_02' then li.SubItems[0] := vNetSetting.INS_02
    else if li.Caption = 'INS_03' then li.SubItems[0] := vNetSetting.INS_03

    else if li.Caption = 'CUB_01_01' then li.SubItems[0] := vNetSetting.CUB_01_01
    else if li.Caption = 'CUB_01_02' then li.SubItems[0] := vNetSetting.CUB_01_02
    else if li.Caption = 'CUB_01_03' then li.SubItems[0] := vNetSetting.CUB_01_03
    else if li.Caption = 'CUB_01_04' then li.SubItems[0] := vNetSetting.CUB_01_04
    else if li.Caption = 'CUB_01_05' then li.SubItems[0] := vNetSetting.CUB_01_05
    else if li.Caption = 'CUB_01_06' then li.SubItems[0] := vNetSetting.CUB_01_06

    else if li.Caption = 'CUB_02_01' then li.SubItems[0] := vNetSetting.CUB_02_01
    else if li.Caption = 'CUB_02_02' then li.SubItems[0] := vNetSetting.CUB_02_02
    else if li.Caption = 'CUB_02_03' then li.SubItems[0] := vNetSetting.CUB_02_03
    else if li.Caption = 'CUB_02_04' then li.SubItems[0] := vNetSetting.CUB_02_04
    else if li.Caption = 'CUB_02_05' then li.SubItems[0] := vNetSetting.CUB_02_05
    else if li.Caption = 'CUB_02_06' then li.SubItems[0] := vNetSetting.CUB_02_06

    else if li.Caption = 'CUB_03_01' then li.SubItems[0] := vNetSetting.CUB_03_01
    else if li.Caption = 'CUB_03_02' then li.SubItems[0] := vNetSetting.CUB_03_02
    else if li.Caption = 'CUB_03_03' then li.SubItems[0] := vNetSetting.CUB_03_03
    else if li.Caption = 'CUB_03_04' then li.SubItems[0] := vNetSetting.CUB_03_04
    else if li.Caption = 'CUB_03_05' then li.SubItems[0] := vNetSetting.CUB_03_05
    else if li.Caption = 'CUB_03_06' then li.SubItems[0] := vNetSetting.CUB_03_06

    else if li.Caption = 'CUB_04_01' then li.SubItems[0] := vNetSetting.CUB_04_01
    else if li.Caption = 'CUB_04_02' then li.SubItems[0] := vNetSetting.CUB_04_02
    else if li.Caption = 'CUB_04_03' then li.SubItems[0] := vNetSetting.CUB_04_03
    else if li.Caption = 'CUB_04_04' then li.SubItems[0] := vNetSetting.CUB_04_04
    else if li.Caption = 'CUB_04_05' then li.SubItems[0] := vNetSetting.CUB_04_05
    else if li.Caption = 'CUB_04_06' then li.SubItems[0] := vNetSetting.CUB_04_06

    else if li.Caption = 'CUB_05_01' then li.SubItems[0] := vNetSetting.CUB_05_01
    else if li.Caption = 'CUB_05_02' then li.SubItems[0] := vNetSetting.CUB_05_02
    else if li.Caption = 'CUB_05_03' then li.SubItems[0] := vNetSetting.CUB_05_03
    else if li.Caption = 'CUB_05_04' then li.SubItems[0] := vNetSetting.CUB_05_04
    else if li.Caption = 'CUB_05_05' then li.SubItems[0] := vNetSetting.CUB_05_05
    else if li.Caption = 'CUB_05_06' then li.SubItems[0] := vNetSetting.CUB_05_06

    else if li.Caption = 'CUB_06_01' then li.SubItems[0] := vNetSetting.CUB_06_01
    else if li.Caption = 'CUB_06_02' then li.SubItems[0] := vNetSetting.CUB_06_02
    else if li.Caption = 'CUB_06_03' then li.SubItems[0] := vNetSetting.CUB_06_03
    else if li.Caption = 'CUB_06_04' then li.SubItems[0] := vNetSetting.CUB_06_04
    else if li.Caption = 'CUB_06_05' then li.SubItems[0] := vNetSetting.CUB_06_05
    else if li.Caption = 'CUB_06_06' then li.SubItems[0] := vNetSetting.CUB_06_06

    else if li.Caption = 'CUB_07_01' then li.SubItems[0] := vNetSetting.CUB_07_01
    else if li.Caption = 'CUB_07_02' then li.SubItems[0] := vNetSetting.CUB_07_02
    else if li.Caption = 'CUB_07_03' then li.SubItems[0] := vNetSetting.CUB_07_03
    else if li.Caption = 'CUB_07_04' then li.SubItems[0] := vNetSetting.CUB_07_04
    else if li.Caption = 'CUB_07_05' then li.SubItems[0] := vNetSetting.CUB_07_05
    else if li.Caption = 'CUB_07_06' then li.SubItems[0] := vNetSetting.CUB_07_06

    else if li.Caption = 'CUB_08_01' then li.SubItems[0] := vNetSetting.CUB_08_01
    else if li.Caption = 'CUB_08_02' then li.SubItems[0] := vNetSetting.CUB_08_02
    else if li.Caption = 'CUB_08_03' then li.SubItems[0] := vNetSetting.CUB_08_03
    else if li.Caption = 'CUB_08_04' then li.SubItems[0] := vNetSetting.CUB_08_04
    else if li.Caption = 'CUB_08_05' then li.SubItems[0] := vNetSetting.CUB_08_05
    else if li.Caption = 'CUB_08_06' then li.SubItems[0] := vNetSetting.CUB_08_06

    else if li.Caption = 'CUB_09_01' then li.SubItems[0] := vNetSetting.CUB_09_01
    else if li.Caption = 'CUB_09_02' then li.SubItems[0] := vNetSetting.CUB_09_02
    else if li.Caption = 'CUB_09_03' then li.SubItems[0] := vNetSetting.CUB_09_03
    else if li.Caption = 'CUB_09_04' then li.SubItems[0] := vNetSetting.CUB_09_04
    else if li.Caption = 'CUB_09_05' then li.SubItems[0] := vNetSetting.CUB_09_05
    else if li.Caption = 'CUB_09_06' then li.SubItems[0] := vNetSetting.CUB_09_06

    else if li.Caption = 'CUB_10_01' then li.SubItems[0] := vNetSetting.CUB_10_01
    else if li.Caption = 'CUB_10_02' then li.SubItems[0] := vNetSetting.CUB_10_02
    else if li.Caption = 'CUB_10_03' then li.SubItems[0] := vNetSetting.CUB_10_03
    else if li.Caption = 'CUB_10_04' then li.SubItems[0] := vNetSetting.CUB_10_04
    else if li.Caption = 'CUB_10_05' then li.SubItems[0] := vNetSetting.CUB_10_05
    else if li.Caption = 'CUB_10_06' then li.SubItems[0] := vNetSetting.CUB_10_06
  end;
end;

procedure TMainForm.lvSystemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
    p : TPoint;
begin
  if ( Button = mbright ) then
  begin
    GetCursorPos(p);

    if Assigned(lvSystem.Selected) then
    begin
      pmClient.Popup(p.X, p.Y);
    end;


  end;
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
    UpdateConnectState(s);
    UpdateSystemClientState;
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
    UpdateDisconnectState(s);
    UpdateSystemClientState;
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

  {$REGION ' Cek System Server NAFS '}
  if GetApp(vNetSetting.Nafsserverapp) then
  begin
    if lblStatusServerNafs.Caption <> 'running' then
    begin
      lblStatusServerNafs.Caption := 'running';
      imgServerNafs.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusServerNafs.Caption <> 'online' then
    begin
      lblStatusServerNafs.Caption := 'online';
      imgServerNafs.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

  {$REGION ' Cek Bridge NAFS '}
  if GetApp(vNetSetting.Nafsbridgeapp) then
  begin
    if lblStatusBridgeNafs.Caption <> 'running' then
    begin
      lblStatusBridgeNafs.Caption := 'running';
      imgBridgeNafs.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusBridgeNafs.Caption <> 'online' then
    begin
      lblStatusBridgeNafs.Caption := 'online';
      imgBridgeNafs.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

  {$REGION ' Cek System Server NSFS '}
  if GetApp(vNetSetting.Nsfsserverapp) then
  begin
    if lblStatusServerNsfs.Caption <> 'running' then
    begin
      lblStatusServerNsfs.Caption := 'running';
      imgServerNsfs.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusServerNsfs.Caption <> 'online' then
    begin
      lblStatusServerNsfs.Caption := 'online';
      imgServerNsfs.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

  {$REGION ' Cek Bridge NSFS '}
  if GetApp(vNetSetting.Nsfsbridgeapp) then
  begin
    if lblStatusBridgeNsfs.Caption <> 'running' then
    begin
      lblStatusBridgeNsfs.Caption := 'running';
      imgBridgeNsfs.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusBridgeNsfs.Caption <> 'online' then
    begin
      lblStatusBridgeNsfs.Caption := 'online';
      imgBridgeNsfs.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

  {$REGION ' Cek System Server NSSFS '}
  if GetApp(vNetSetting.Nssfsserverapp) then
  begin
    if lblStatusServerNssfs.Caption <> 'running' then
    begin
      lblStatusServerNssfs.Caption := 'running';
      imgServerNssfs.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusServerNssfs.Caption <> 'online' then
    begin
      lblStatusServerNssfs.Caption := 'online';
      imgServerNssfs.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

  {$REGION ' Cek Bridge NSSFS '}
  if GetApp(vNetSetting.Nssfsbridgeapp) then
  begin
    if lblStatusBridgeNssfs.Caption <> 'running' then
    begin
      lblStatusBridgeNssfs.Caption := 'running';
      imgBridgeNssfs.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusBridgeNssfs.Caption <> 'online' then
    begin
      lblStatusBridgeNssfs.Caption := 'online';
      imgBridgeNssfs.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

  {$REGION ' Cek Session Voip '}
  if GetApp(vNetSetting.Sessionvoipapp) then
  begin
    if lblStatusSessionVoip.Caption <> 'running' then
    begin
      lblStatusSessionVoip.Caption := 'running';
      imgSessionVoip.Picture.LoadFromFile('Image\running.png');
    end;
  end
  else
  begin
    if lblStatusSessionVoip.Caption <> 'online' then
    begin
      lblStatusSessionVoip.Caption := 'online';
      imgSessionVoip.Picture.LoadFromFile('Image\online.png');
    end;
  end;
  {$ENDREGION}

end;

procedure TMainForm.GetPacketTimerTimer(Sender: TObject);
begin
  server.getPacket;
end;

procedure TMainForm.NetRecv_AppData(apRec: PAnsiChar; aSize: word);
var
  rec: ^RecAppData;

begin
  rec := @apRec^;

  if rec = nil then
    Exit;

  case rec.command of
    0 :
    begin
      if rec.state then
      begin
        lblStatusInstructorNsfs.Caption := 'running';
        imgIntructorNsfs.Picture.LoadFromFile('Image\running.png');
      end
      else
      begin
        lblStatusInstructorNsfs.Caption := 'online';
        imgIntructorNsfs.Picture.LoadFromFile('Image\online.png');
      end;
    end;
    1 :
    begin
      if rec.state then
      begin
        lblStatusInstructorNafs.Caption := 'running';
        imgIntructorNafs.Picture.LoadFromFile('Image\running.png');
      end
      else
      begin
        lblStatusInstructorNafs.Caption := 'online';
        imgIntructorNafs.Picture.LoadFromFile('Image\online.png');
      end;
    end;
    2 :
    begin
      if rec.state then
      begin
        lblStatusInstructorNssfs.Caption := 'running';
        imgIntructorNssfs.Picture.LoadFromFile('Image\running.png');
      end
      else
      begin
        lblStatusInstructorNssfs.Caption := 'online';
        imgIntructorNssfs.Picture.LoadFromFile('Image\online.png');
      end;
    end;
  end;
end;

procedure TMainForm.NetRecv_CommandData(apRec: PAnsiChar; aSize: word);
begin
  //
end;

procedure TMainForm.Server_Log(const S: string);
begin
//  LogMemo.Lines.Add(S);
end;



{$ENDREGION}

end.
