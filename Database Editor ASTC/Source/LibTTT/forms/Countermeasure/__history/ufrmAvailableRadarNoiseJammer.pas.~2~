unit ufrmAvailableRadarNoiseJammer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,Vcl.ExtCtrls,
  uDBAsset_Countermeasure;

type
  TfrmAvailableRadarNoiseJammer = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableList: TPanel;
    lstRadarNoiseJammer: TListBox;
    pnlHorizontal: TPanel;
    Image2: TImage;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    btnUsage: TImage;
    Label1: TLabel;
    edtSearch: TEdit;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);

  private
   FUpdateList : Boolean;
   FRadarNoiseJammerList : TList;
   FSelectedRadarNoiseJammer : TJammer_On_Board;

    procedure UpdateRadarNoiseJammerList;

   end;

var
  frmAvailableRadarNoiseJammer: TfrmAvailableRadarNoiseJammer;

implementation

uses
  uDataModuleTTT, ufrmSummaryRadarNoiseJammer, ufrmUsage, ufProgress;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableRadarNoiseJammer.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailableRadarNoiseJammer.FormCreate(Sender: TObject);
begin
  FRadarNoiseJammerList := TList.Create;
end;

procedure TfrmAvailableRadarNoiseJammer.FormShow(Sender: TObject);
begin
  UpdateRadarNoiseJammerList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableRadarNoiseJammer.btnNewClick(Sender: TObject);
begin
  frmSummaryRadarNoiseJammer := TfrmSummaryRadarNoiseJammer.Create(Self);
  try
    with frmSummaryRadarNoiseJammer do
    begin
      SelectedRadarJammer := TJammer_On_Board.Create;
      ShowModal;
      FUpdateList := AfterClose;
      SelectedRadarJammer.Free;
    end;
  finally
    frmSummaryRadarNoiseJammer.Free;
  end;

  if FUpdateList then
    UpdateRadarNoiseJammerList;
end;

procedure TfrmAvailableRadarNoiseJammer.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;

begin
  if lstRadarNoiseJammer.ItemIndex = -1 then
  begin
    ShowMessage('Select Radar Noise Jammer... !');
    Exit;
  end;

  with FSelectedRadarNoiseJammer do
  begin
    newClassName := FDef.Jammer_Identifier + ' - Copy';

    count := dmTTT.GetRadarNoiseJammerDef(newClassName);

    if count > 0 then
      newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FDef.Jammer_Identifier := newClassName;

    dmTTT.InsertRadarNoiseJammerDef(FDef);
    dmTTT.InsertNoteStorage(15, FDef.Jammer_Index, FNote);
  end;

  UpdateRadarNoiseJammerList;
end;

procedure TfrmAvailableRadarNoiseJammer.btnEditClick(Sender: TObject);
begin
  if lstRadarNoiseJammer.ItemIndex = -1 then
  begin
    ShowMessage('Select Radar Noise Jammer... !');
    Exit;
  end;

  frmSummaryRadarNoiseJammer := TfrmSummaryRadarNoiseJammer.Create(Self);
  try
    with frmSummaryRadarNoiseJammer do
    begin
      SelectedRadarJammer := FSelectedRadarNoiseJammer;
      ShowModal;
      FUpdateList := AfterClose;
    end;

  finally
    frmSummaryRadarNoiseJammer.Free;
  end;

  if FUpdateList then
    UpdateRadarNoiseJammerList;
end;

procedure TfrmAvailableRadarNoiseJammer.btnDeleteClick(Sender: TObject);
var
  warning : Integer;
begin
  if lstRadarNoiseJammer.ItemIndex = -1 then
  begin
    ShowMessage('Select Radar Noise Jammer... !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedRadarNoiseJammer.FDef do
    begin
      if dmTTT.GetCountermeasure_On_Board_By_Index(8, Jammer_Index) then
      begin
        ShowMessage('Cannot delete, because is already in used by some Vehicles');
        Exit;
      end;

      dmTTT.DeleteNoteStorage(15, Jammer_Index);

      if dmTTT.DeleteRadarNoiseJammerDef(Jammer_Index) then
        ShowMessage('Data has been deleted');
    end;

    UpdateRadarNoiseJammerList;
  end;
end;

procedure TfrmAvailableRadarNoiseJammer.btnUsageClick(Sender: TObject);
begin
  if lstRadarNoiseJammer.ItemIndex = -1 then
  begin
    ShowMessage('Select Radar Noise Jammer... !');
    Exit;
  end;

  with frmUsage do
  begin
    UId := FSelectedRadarNoiseJammer.FDef.Jammer_Index;
    name_usage := FSelectedRadarNoiseJammer.FDef.Jammer_Identifier;
    usage_title := 'On Board Vehicle:';
    UIndex := 18;

    ShowModal;
  end;
end;

procedure TfrmAvailableRadarNoiseJammer.edtSearchKeyPress(Sender: TObject; var Key: Char);
var
  i : Integer;
  radarnoisejammer : TJammer_On_Board;
begin
  if Key = #13 then
  begin
    lstRadarNoiseJammer.Items.Clear;

    dmTTT.GetFilterRadarNoiseJammerDef(FRadarNoiseJammerList, edtSearch.Text);

    frmProgress := TfrmProgress.Create(nil);
    frmProgress.Caption := 'Loading data from database';
    frmProgress.MaxJob := FRadarNoiseJammerList.Count;

    for i := 0 to FRadarNoiseJammerList.Count - 1 do
    begin
      radarnoisejammer := FRadarNoiseJammerList.Items[i];
      lstRadarNoiseJammer.Items.AddObject(radarnoisejammer.FDef.Jammer_Identifier, radarnoisejammer);
      frmProgress.increase(radarnoisejammer.FDef.Jammer_Identifier);
    end;
    frmProgress.Free;
  end;
end;

procedure TfrmAvailableRadarNoiseJammer.lbSingleClick(Sender: TObject);
begin
  if lstRadarNoiseJammer.ItemIndex = -1 then
    Exit;

  FSelectedRadarNoiseJammer := TJammer_On_Board(lstRadarNoiseJammer.Items.Objects[lstRadarNoiseJammer.ItemIndex]);
end;

procedure TfrmAvailableRadarNoiseJammer.UpdateRadarNoiseJammerList;
var
  i : Integer;
  radarnoisejammer : TJammer_On_Board;
begin
  lstRadarNoiseJammer.Items.Clear;

  dmTTT.GetAllRadarNoiseJammerDef(FRadarNoiseJammerList);

  frmProgress := TfrmProgress.Create(nil);
  frmProgress.Caption := 'Loading data from database';
  frmProgress.MaxJob := FRadarNoiseJammerList.Count;

  for i := 0 to FRadarNoiseJammerList.Count - 1 do
  begin
    radarnoisejammer := FRadarNoiseJammerList.Items[i];
    lstRadarNoiseJammer.Items.AddObject(radarnoisejammer.FDef.Jammer_Identifier, radarnoisejammer);
    frmProgress.increase(radarnoisejammer.FDef.Jammer_Identifier);
  end;
  frmProgress.Free;
end;

{$ENDREGION}

end.
