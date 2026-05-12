unit uRunner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GmXml, ZAbstractConnection, ZConnection, uExecuter,
  ZDataset, ShellApi, Menus;

const
  WM_ICONTRAY = WM_USER + 1;

type
  TfrmRunner = class(TForm)
    edtServer: TEdit;
    Label1: TLabel;
    btnRun: TButton;
    btnCancel: TButton;
    Label5: TLabel;
    edtScenario: TEdit;
    Label6: TLabel;
    edtMapPath: TEdit;
    ZConn: TZConnection;
    mnMain: TPopupMenu;
    Show2: TMenuItem;
    N1: TMenuItem;
    Show1: TMenuItem;
    StopModule1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnRunClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure Show2Click(Sender: TObject);
    procedure StopModule1Click(Sender: TObject);
  private
    FXML: TGmXML;
    FNodeControllers, FNodeCubicles: TGmXmlNode;
    FAppClient, FAppServer, FAppMap: TAppExecute;
    FGC, FSession : TAppExecute;
    FModulName: String;
    isShow : boolean;
    TrayIconData: TNotifyIconData;

    procedure TrayMessage(var Msg: TMessage); message WM_ICONTRAY;
    { Private declarations }
    procedure UpdateXMLFile(const fName: string; ctrlIP: String);

    function UpdateDBConnection: Boolean;
    procedure UpdateScenario;
    function InitZDB(const zDbServer, zDBProto, zDBname, zDBuser,
      zDBPass: string): Boolean;

    procedure OnEndExecute(Sender : TObject);
    procedure RunApp;

    procedure CreateIconied;
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
  end;

var
  frmRunner: TfrmRunner;
  MyMsg : Cardinal;

implementation

uses
  Winsock, uLibSettingTTT, GmXMLInterface, ufDBSetting;

type
  TNode = class(TXMLObjInterface)
  private
    function getValue(const Index: Integer): string;
  public
    property IPAddress: string index 1 read getValue;
    property ConsoleName: string index 2 read getValue;
  end;


{$R *.dfm}

const
  cTag_t3groups = 't3groups';
  cTag_controllers = 'controllers';
  cTag_cubicles = 'cubicles';
  cTag_console = 'console';

Function GetIPAddress(): String;
type
  pu_long = ^u_long;
var
  varTWSAData: TWSAData;
  varPHostEnt: PHostEnt;
  varTInAddr: TInAddr;
  namebuf: Array [0 .. 255] of Ansichar;
begin
  If WSAStartup($101, varTWSAData) <> 0 Then
    Result := 'No. IP Address'
  Else
  Begin
    gethostname(namebuf, sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := inet_ntoa(varTInAddr);
  End;
  WSACleanup;
end;

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
  if FModulName = '' then
  begin
    MessageDlg('Invalid module name..!.'+#13+#10 +
          'Please update your database first..!', mtError, [mbOK], 0);
    Application.Terminate;
    Exit;
  end;

  if not DirectoryExists(edtMapPath.Text) then
  begin
    MessageDlg('Invalid map path.'+#13+#10 +
          'Please select valid path..!', mtError, [mbOK], 0);
    Exit;
  end;

  vGameDataSetting.ReplayScreen := 1;

  SaveFF_MapSetting(vSettingFile, vMapSetting);
  SaveFF_NetClientSetting(vSettingFile, vNetClientSetting);
  SaveFF_NetSetting(vSettingFile, vNetSetting);
  SaveFF_GameSetting(vSettingFile, vGameDataSetting);

  UpdateXMLFile(vGameDataSetting.GroupSetting, edtServer.Text);
  UpdateDBConnection;
  UpdateScenario;


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

procedure TfrmRunner.UpdateScenario;
var
  qry: TZQuery;
  idx: Integer;
  f: Boolean;
begin

  qry := TZQuery.Create(nil);

  qry.Connection := ZConn;
  f := False;

  with qry do
  begin
    SQL.Add('SELECT SCENARIO_INDEX FROM SCENARIO_DEFINITION ');
    SQL.Add('WHERE  Scenario_Identifier like ' + QuotedStr('%' + FModulName));
    Open;

    if RecordCount > 0 then
    begin
      First;
      idx := FieldByName('Scenario_Index').AsInteger;
      f := True;
    end;
  end;

  qry.Free;

  if not f then
  begin
    MessageDlg('Module data can''t find in database.'+#13+#10 +
          'Please update your database first..!', mtError, [mbOK], 0);
    Application.Terminate;
  end else
  begin
    vGameDataSetting.ScenarioID := idx;
    SaveFF_GameSetting(vSettingFile,vGameDataSetting);
  end;
end;

procedure TfrmRunner.UpdateXMLFile(const fName: string; ctrlIP: String);
var
  i, j: Integer;
  nCon: TNode;
  found: Boolean;
  node: TGmXmlNode;
begin
  FXML := TGmXML.Create(nil);

  FXML.LoadFromFile(fName);
  FNodeControllers := FXML.Nodes.node[0].Children.NodeByName[cTag_controllers];

  nCon := TNode.Create;
  found := False;

  { find controller IP }
  for i := 0 to FNodeControllers.Children.Count - 1 do
  begin
    nCon.Assign(FNodeControllers.Children.node[i]);

    if ctrlIP = nCon.IPAddress then
    begin
      found := True;
      break;
    end;
  end;

  { if not exist, then add to controller console }
  if not found then
  begin

    node := FNodeControllers.Children.AddLeaf('console');
    node.Attribute.AddNameValue('ip', ctrlIP);
    node.Attribute.AddNameValue('name', 'Controller 0');

    FXML.SaveToFile(vGameDataSetting.GroupSetting);
  end;

  nCon.Free;
  FXML.Free;
end;

procedure TfrmRunner.FormCreate(Sender: TObject);
var
  path: String;
begin

  { load game setting }
  vSettingFile := getFileSetting;
  LoadFF_MapSetting(vSettingFile, vMapSetting);
  LoadFF_GameSetting(vSettingFile, vGameDataSetting);
  LoadFF_dBaseSetting(vSettingFile, vDBSetting);
  LoadFF_AppSetting(vSettingFile, vAppSetting);
  LoadFF_NetSetting(vSettingFile, vNetSetting);
  LoadFF_NetClientSetting(vSettingFile, vNetClientSetting);

  edtServer.Text := GetIPAddress;

  // default map path
//  path := ExtractFileDir(ExcludeTrailingBackslash
//      (ExtractFilePath(Application.ExeName)));
  path := ExtractFilePath(Application.ExeName);
  edtMapPath.Text := path + 'map';
  vMapSetting.MapPath := edtMapPath.Text;

  // set network setting
  vNetClientSetting.ServerIP := edtServer.Text;
  vNetSetting.MapStubAddr := edtServer.Text;
  vNetSetting.VoipCtrlAddress := edtServer.Text;

  if ParamCount > 0 then
  begin
    // Label5.Caption := 'Scenario : ' + IntToStr(ParamCount);
    FModulName := ParamStr(ParamCount - 1);
    edtScenario.Text := FModulName;
  end;

  Caption := 'TTT Module ' + FModulName ;
  Application.Title := Caption;
  CreateIconied;

  isShow := false;

end;

procedure TfrmRunner.FormDestroy(Sender: TObject);
begin
  if Assigned(FGC) then
  begin
    FGC.Terminates;
    FGC.Free;
  end;

  if Assigned(FSession) then
  begin
    FSession.Terminates;
    FSession.Free;
  end;

  if Assigned(FAppMap) then
  begin
    FAppMap.Terminates;
    FAppMap.Free;
  end;

  if Assigned(FAppClient) then
  begin
    FAppClient.Terminates;
    FAppClient.Free;
  end;

  if Assigned(FAppServer) then
  begin
    FAppServer.Terminates;
    FAppServer.Free;
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
  { run mapstub, server and client }
  btnRun.Caption := 'WAIT......';
  btnRun.Enabled := False;
  btnCancel.Enabled := False;

  Cursor := crHourGlass;

  if FModulName = 'REKAM' then
  begin
    FGC := TAppExecute.Create;
    FGC.OnStartExecute := nil;
    FGC.OnEndExecute := OnEndExecute;
    FGC.FExecFname := 'GC.exe';

    FSession := TAppExecute.Create;
    FSession.OnStartExecute := nil;
    FSession.OnEndExecute := OnEndExecute;
    FSession.FExecFname := 'SessionServer.exe';
  end
  else
  begin

    FAppServer := TAppExecute.Create;
    FAppServer.OnStartExecute := nil;
    FAppServer.OnEndExecute := OnEndExecute;
    FAppServer.FExecFname := vAppSetting.GameServerName;

    FAppClient := TAppExecute.Create;
    FAppClient.OnStartExecute := nil;
    FAppClient.OnEndExecute := OnEndExecute;
    FAppClient.FExecFname := vAppSetting.GameClientName;

  end;

  FAppMap := TAppExecute.Create;
  FAppMap.OnStartExecute := nil;
  FAppMap.OnEndExecute := OnEndExecute;
  FAppMap.FExecFname := vAppSetting.MapStubName;

  if FModulName = 'REKAM' then
  begin
    FSession.Executes;
    Sleep(2000);

    FGC.Executes;
    Sleep(2000);

    FAppMap.Executes;
  end
  else
  begin
    FAppMap.Executes;
    Sleep(3000);
    FAppServer.Executes;
    Sleep(3000);
    FAppClient.Executes;
  end;

  Cursor := crDefault;
  btnRun.Caption := 'Run';
end;

procedure TfrmRunner.Show1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmRunner.Show2Click(Sender: TObject);
begin
  if not isShow then
    Show
  else
    Hide;

  isShow := not isShow;
end;

procedure TfrmRunner.StopModule1Click(Sender: TObject);
begin
  if Assigned(FGC) then
  begin
    FGC.Terminates;
  end;

  if Assigned(FSession) then
  begin
    FSession.Terminates;
  end;

  if Assigned(FAppMap) then
  begin
    FAppMap.Terminates;
  end;

  if Assigned(FAppClient) then
  begin
    FAppClient.Terminates;
  end;

  if Assigned(FAppServer) then
  begin
    FAppServer.Terminates;
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

{ TNode }

function TNode.getValue(const Index: Integer): string;
begin
  case index of
    1:
      Result := getAttribValueByName('ip');
    2:
      Result := getAttribValueByName('name');
  end;
end;

end.
