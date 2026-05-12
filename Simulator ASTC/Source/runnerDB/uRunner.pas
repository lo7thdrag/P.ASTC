unit uRunner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, uLibSettingTTT,
  ufDBSetting, uExecuter, Menus, ShellApi;

const
  WM_ICONTRAY = WM_USER + 1;

type
  TfrmRunner = class(TForm)
    btnRun: TButton;
    btnCancel: TButton;
    ZConn: TZConnection;
    Label1: TLabel;
    mmInfo: TMemo;
    mnMain: TPopupMenu;
    Show2: TMenuItem;
    StopModule1: TMenuItem;
    N1: TMenuItem;
    Show1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRunClick(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure StopModule1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FAppDB: TAppExecute;
    isShow : boolean;
    TrayIconData: TNotifyIconData;
    FAppParam : String;
    procedure TrayMessage(var Msg: TMessage); message WM_ICONTRAY;
    function UpdateDBConnection: Boolean;
    function InitZDB(const zDbServer, zDBProto, zDBname, zDBuser,
      zDBPass: string): Boolean;
    procedure RunApp;
    procedure CreateIconied;
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure OnEndExecute(Sender : TObject);
    public
    { Public declarations }
  end;

var
  frmRunner: TfrmRunner;
  MyMsg : Cardinal;

implementation

{$R *.dfm}

procedure TfrmRunner.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.Message = MyMsg then begin
     Application.Restore;
     SetForeGroundWindow(Application.MainForm.Handle);
     Handled := true;
  end;

end;

procedure TfrmRunner.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRunner.btnRunClick(Sender: TObject);
begin
  UpdateDBConnection;

  RunApp;
  StopModule1.Enabled := True;
  Hide;
end;

procedure TfrmRunner.CreateIconied;
begin
 with TrayIconData do
  begin
    cbSize := SizeOf(TrayIconData);
    Wnd := Handle;
    uID := 0;
    uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
    uCallbackMessage := WM_ICONTRAY;
    hIcon := Application.Icon.Handle;
    StrPCopy(szTip, Application.Title);
  end;
  Shell_NotifyIcon(NIM_ADD, @TrayIconData);
end;

procedure TfrmRunner.FormCreate(Sender: TObject);
begin
  { load game setting }
  vSettingFile := getFileSetting;
  LoadFF_MapSetting(vSettingFile, vMapSetting);
  LoadFF_GameSetting(vSettingFile, vGameDataSetting);
  LoadFF_dBaseSetting(vSettingFile, vDBSetting);
  LoadFF_AppSetting(vSettingFile, vAppSetting);
  LoadFF_NetSetting(vSettingFile, vNetSetting);
  LoadFF_NetClientSetting(vSettingFile, vNetClientSetting);

  Caption := 'TTT Scenario Generator' ;

  if ParamCount > 0 then
  begin
    FAppParam := ParamStr(1);

    if ParamStr(1) = '1' then
    begin
      mmInfo.Lines.Add('1. Asset Development');
    end
    else
    if ParamStr(1) = '2' then
    begin
      mmInfo.Lines.Add('1. Waypoint dan Rute');
      mmInfo.Lines.Add('2. Penjadwalan');
    end
    else
    if ParamStr(1) = '3' then
    begin
      mmInfo.Lines.Add('1. Pengaturan Waktu Permainan');
      mmInfo.Lines.Add('2. Pengaturan Kendali Unsur');
      mmInfo.Lines.Add('3. Pembagian Pihak (Merah Biru)');
    end
    else
    if ParamStr(1) = '4' then
    begin
      mmInfo.Lines.Add('1. Pembagian Level Kemampuan Trainee');
      mmInfo.Lines.Add('2. Pembuatan Scenario dengan Multi Operator');
      mmInfo.Lines.Add('3. Editing Scenario dengan Multi Operator');
    end
    else
    begin
      MessageDlg('Invalid Parameter..!'+#13+#10+'Please use correct parameter to load (between 1-4)..!', mtError, [mbOK], 0);
      Application.Terminate;
    end;
  end
  else
  begin
    MessageDlg('Invalid Parameter..!'+#13+#10+'Please use correct parameter to load (between 1-4)..!', mtError, [mbOK], 0);
    Application.Terminate;
  end;

  CreateIconied;
  isShow := false;

end;

procedure TfrmRunner.FormDestroy(Sender: TObject);
begin
  if Assigned(FAppDB) then
  begin
    FAppDB.Terminates;
    FAppDB.Free;
  end;

  Shell_NotifyIcon(NIM_DELETE, @TrayIconData);

end;

function TfrmRunner.InitZDB(const zDbServer, zDBProto, zDBname, zDBuser,
  zDBPass: string): Boolean;
var
  connStr: String;
begin
  with ZConn do
  begin
    HostName := zDbServer;
    Protocol := zDBProto;
    Database := zDBname;
    User := zDBuser;
    Password := zDBPass;
  end;

  try
    ZConn.Connect;
    Result := ZConn.Connected;
  except
    on Exception do
    begin
      MessageDlg('Error Database Connection on ' + zDbServer, mtError, [mbOK],
        0);
      Result := False;
      exit;
    end
  end;
end;

procedure TfrmRunner.OnEndExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmRunner.RunApp;
begin
  Cursor := crHourGlass;

  FAppDB := TAppExecute.Create;
  FAppDB.OnStartExecute := nil;
  FAppDB.OnEndExecute := OnEndExecute;
  FAppDB.FExecFname := vAppSetting.DBEditorName;

  FAppDB.ExecutesWithParams(FAppParam);
  Sleep(1000);

  btnRun.Enabled := False;
  btnCancel.Enabled := False;

  Cursor := crDefault;

end;

procedure TfrmRunner.Show1Click(Sender: TObject);
begin
  if not isShow then
    Show
  else
    Hide;

  isShow := not isShow;
end;

procedure TfrmRunner.StopModule1Click(Sender: TObject);
begin
  if Assigned(FAppDB) then
  begin
    FAppDB.Terminates;
  end;

  btnRun.Enabled := True;
  btnCancel.Enabled := True;

  StopModule1.Enabled := False;

  Show;

end;

procedure TfrmRunner.TrayMessage(var Msg: TMessage);
var
  p : TPoint;
begin
  case Msg.lParam of

    WM_LBUTTONDOWN:
    begin
      //Show;
    end;

    WM_RBUTTONDOWN:
    begin
      SetForegroundWindow(Handle);
       GetCursorPos(p);
       mnMain.Popup(p.x, p.y);
       PostMessage(Handle, WM_NULL, 0, 0);
    end;
  end;
end;

function TfrmRunner.UpdateDBConnection: Boolean;
var
  iResult: Integer;
  bResult: Boolean;
begin
  frmDBSEtting := TfrmDBSetting.Create(nil);

  iResult := mrNone;
  repeat
    with vDBSetting do
      bResult := InitZDB(dbServer, dbProto, dbName, dbUser, dbPass);

    if not bResult then
    begin

      with vDBSetting do
      begin
        frmDBSEtting.dbServer := dbServer;
        frmDBSEtting.dbName := dbName;
        frmDBSEtting.dbUser := dbUser;
        frmDBSEtting.dbPass := dbPass;
      end;

      iResult := frmDBSEtting.ShowModal;

      if iResult = mrOk then
      begin
        vDBSetting.dbServer := frmDBSEtting.dbServer;
        vDBSetting.dbName := frmDBSEtting.dbName;
        vDBSetting.dbUser := frmDBSEtting.dbUser;
        vDBSetting.dbPass := frmDBSEtting.dbPass;
        vDBSetting.dbProto := c_defaultDBProto;
      end;
    end
    else
    begin
      if (iResult = mrOk) then
        SaveFF_dBaseSetting(vSettingFile, vDBSetting);

    end;
  until bResult or (iResult = mrCancel);
  frmDBSEtting.Free;

  if (iResult = mrCancel) then
    Application.Terminate;
end;

end.
