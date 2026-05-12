unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RzLstBox, RzChkLst, ZAbstractConnection, ZDataset,
  ZConnection, ExtDlgs, ComCtrls;

type
  TfrmUtility = class(TForm)
    ZConn: TZConnection;
    SaveDialog1: TSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    lblInfo: TLabel;
    edtSave: TEdit;
    ckTables: TRzCheckList;
    ckSelectAll: TCheckBox;
    btnCancel: TButton;
    btnExport: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    lblInfoImport: TLabel;
    edtDirCSV: TEdit;
    ckSelectAllImprt: TCheckBox;
    ckCsvNames: TRzCheckList;
    btnImport: TButton;
    btnClose2: TButton;
    btnLoad: TButton;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    edtBackup: TEdit;
    btnBackup: TButton;
    btnClose1: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ckSelectAllClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure ckSelectAllImprtClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
  private
    { Private declarations }
    selectAll,selectAllcsv : Boolean;
    procedure ConnectDB ;
    procedure PopulateTables;
    procedure ExportToCSV(tblName : String);
    procedure ImportToDB(tblName : String);
    procedure BackupDB(filename : String);
    function InitZDB(const zDbServer, zDBProto, zDBname, zDBuser,
      zDBPass: string): boolean;
  public
    { Public declarations }
  end;

var
  frmUtility: TfrmUtility;

implementation

uses uLibSettingTTT, ufDBSetting;

{$R *.dfm}

procedure TfrmUtility.BackupDB(filename: String);
var
  zq : TZQuery;
  sql : String;
begin

  zq := TZQuery.Create(nil);
  zq.Connection := ZConn;

  sql := 'exec sp_backupdb ' +
    QuotedStr(edtBackup.Text) + ', ' +
    QuotedStr(vDBSetting.dbName) ;

  zq.SQL.Add(sql);

  try
    zq.ExecSQL;
  finally
    zq.Close;
    zq.Free;

  end;
end;

procedure TfrmUtility.btnBackupClick(Sender: TObject);
begin
  btnBackup.Enabled := False;
  btnClose1.Enabled := False;

  btnBackup.Caption := 'WAIT...';

  Application.ProcessMessages;
  BackupDB(edtBackup.Text);

  btnBackup.Enabled := True;
  btnClose1.Enabled := True;
  btnBackup.Caption := 'Backup';
end;

procedure TfrmUtility.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUtility.btnExportClick(Sender: TObject);
var
  i : integer;
begin
  if not DirectoryExists(edtSave.Text) then
  begin
    MessageDlg('Directory empty or doesn''t exist..!!', mtError, [mbOK], 0);
    Exit;
  end;

  btnExport.Enabled := False;
  btnCancel.Enabled := False;

  btnExport.Caption := 'WAIT...';

  for i := 0 to ckTables.Items.Count - 1 do
    if ckTables.ItemChecked[i] then
    begin
      lblInfo.Caption := 'Exporting....' + ckTables.Items[i];
      Application.ProcessMessages;
      ExportToCSV(ckTables.Items[i]);
    end;

  lblInfo.Caption := 'Done..';
  btnExport.Enabled := True;
  btnCancel.Enabled := True;
  btnExport.Caption := 'Export';
end;

procedure TfrmUtility.btnImportClick(Sender: TObject);
var
  i : integer;
begin
  btnImport.Enabled := False;
  btnClose2.Enabled := False;

  btnImport.Caption := 'WAIT...';

  for i := 0 to ckCsvNames.Items.Count - 1 do
    if ckCsvNames.ItemChecked[i] then
    begin
      lblInfoImport.Caption := 'Importing....' + ckCsvNames.Items[i];
      Application.ProcessMessages;
      ImportToDB(ckCsvNames.Items[i]);
    end;

  lblInfoImport.Caption := 'Done..';
  btnImport.Enabled := True;
  btnClose2.Enabled := True;
  btnImport.Caption := 'Import';

end;

procedure TfrmUtility.btnLoadClick(Sender: TObject);
Var
  Path    : String;
  SR      : TSearchRec;
  DirList : TStrings;
  I       : integer;
  ls      : TStringlist;
begin
  if DirectoryExists(edtDirCSV.Text) then
  begin
    Path := edtDirCSV.Text;
    DirList:=TStringList.Create;
    try
      if FindFirst(Path + '*.csv', faArchive, SR) = 0 then
      begin
        repeat
          DirList.Add(SR.Name); //Fill the list
        until FindNext(SR) <> 0;
        FindClose(SR);
      end;

      ls:= TStringlist.Create;
      ls.Delimiter := '.';
      for I := 0 to DirList.Count - 1 do
      begin
        ls.Clear;

        ls.DelimitedText := DirList[I];
        //ckCsvNames.Items.Add(DirList[I]);
        ckCsvNames.Items.Add(ls[0]);
      end;
      ls.Free;
    finally
     DirList.Free;
    end;

  end;
end;

procedure TfrmUtility.Button1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    edtBackup.Text := SaveDialog1.FileName;
  end;
end;

procedure TfrmUtility.ckSelectAllClick(Sender: TObject);
var
  i : integer;
begin
  selectAll := not selectAll;

  if selectAll then
    for i := 0 to ckTables.Items.Count - 1 do
      ckTables.ItemChecked[i] := True
  else
    for i := 0 to ckTables.Items.Count - 1 do
      ckTables.ItemChecked[i] := False
end;

procedure TfrmUtility.ckSelectAllImprtClick(Sender: TObject);
var
  i : integer;
begin
  selectAllcsv := not selectAllcsv;

  if selectAllcsv then
    for i := 0 to ckCsvNames.Items.Count - 1 do
      ckCsvNames.ItemChecked[i] := True
  else
    for i := 0 to ckCsvNames.Items.Count - 1 do
      ckCsvNames.ItemChecked[i] := False
end;

procedure TfrmUtility.ConnectDB;
var iResult: Integer;
    bResult : Boolean;
begin
  frmDBSEtting := TfrmDBSetting.Create(nil);

  iResult := mrNone;
  repeat
    with vDBSetting do
      bResult := InitZDB(dbServer, dbProto, dbName, dbUser, dbPass);

    if not bResult then begin

      with vDBSetting do begin
        frmDBSetting.dbServer := DBServer;
        frmDBSetting.dbName   := DBName;
        frmDBSetting.dbUser   := DBUser;
        frmDBSetting.dbPass   := DBPass;
      end;

      iResult := frmDBSEtting.ShowModal;

      if iResult = mrOk then begin
        vDBSetting.DBServer  := frmDBSetting.dbServer ;
        vDBSetting.DBName    := frmDBSetting.dbName   ;
        vDBSetting.DBUser    := frmDBSetting.dbUser   ;
        vDBSetting.DBPass    := frmDBSetting.dbPass   ;
        vDBSetting.dbProto   := c_defaultDBProto ;
      end;
    end
    else begin
      if (iResult = mrOk) then
        SaveFF_dBaseSetting(vSettingFile, vDBSetting);

    end;
  until  bResult or (iResult = mrCancel);
  frmDBSetting.Free;

  if (iResult = mrCancel) then Application.Terminate;

end;

procedure TfrmUtility.ExportToCSV(tblName: String);
var
  zq : TZQuery;
  sql : String;
begin

  zq := TZQuery.Create(nil);
  zq.Connection := ZConn;

  sql := 'exec sp_exportcsv ' + QuotedStr(vDBSetting.DBName) + ', ' +
    QuotedStr(vDBSetting.DBServer) + ', ' +
    QuotedStr(tblName) + ', ' +
    QuotedStr(edtSave.Text);

  zq.SQL.Add(sql);

  try
    zq.ExecSQL;
  finally
    zq.Close;
    zq.Free;

  end;
end;

procedure TfrmUtility.FormCreate(Sender: TObject);
begin
  vSettingFile := getFileSetting;
  LoadFF_dBaseSetting(vSettingFile, vDBSetting);

  ConnectDB;

  selectAll := False;
  selectAllcsv := False;

end;

procedure TfrmUtility.FormDestroy(Sender: TObject);
begin
  ZConn.Disconnect;
end;

procedure TfrmUtility.ImportToDB(tblName: String);
var
  zq : TZQuery;
  sql : String;
begin

  zq := TZQuery.Create(nil);
  zq.Connection := ZConn;

  sql := 'exec sp_importcsv ' +
    QuotedStr(vDBSetting.DBName) + ', ' +
    QuotedStr(vDBSetting.DBServer) + ', ' +
    QuotedStr(tblName) + ', ' +
    QuotedStr(edtSave.Text);

  zq.SQL.Add(sql);

  try
    zq.ExecSQL;
  finally
    zq.Close;
    zq.Free;

  end;
end;

function TfrmUtility.InitZDB(const zDbServer, zDBProto, zDBname, zDBuser,
  zDBPass: string): boolean;
var
  connStr : String;
begin
  //result := false;
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
    result := ZConn.Connected;
  except
    on Exception do
    begin
      MessageDlg('Error Database Connection on ' + zDbServer, mtError, [mbOK],
        0);
      result := false;
      exit;
    end
  end;
end;

procedure TfrmUtility.PopulateTables;
var
  zq : TZQuery;
  sql : String;
begin

  zq := TZQuery.Create(nil);
  zq.Connection := ZConn;

  sql := 'exec sp_tables @table_owner = ' + QuotedStr('dbo');

  zq.SQL.Add(sql);
  zq.Open;

  if zq.RecordCount > 0 then
  begin
    while not zq.Eof do
    begin
      ckTables.Items.Add(zq.FieldByName('TABLE_NAME').AsString);
      zq.Next;
    end;
  end;

  zq.Close;
  zq.Free;
end;

end.
