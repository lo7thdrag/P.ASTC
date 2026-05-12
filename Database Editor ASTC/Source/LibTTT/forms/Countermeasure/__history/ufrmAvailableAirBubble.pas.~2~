unit ufrmAvailableAirBubble;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,Vcl.ExtCtrls,
  uDBAsset_Countermeasure;

type
  TfrmAvailableAirBubble = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableList: TPanel;
    lstAirBubble: TListBox;
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
    FAirBubbleList : TList;
    FSelectedAirBubble : TAir_Bubble_Mount;

    procedure UpdateAirBubbleList;

  end;

var
  frmAvailableAirBubble: TfrmAvailableAirBubble;

implementation

uses
  uDataModuleTTT, ufrmSummaryAirBubble, ufrmUsage, ufProgress;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableAirBubble.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailableAirBubble.FormCreate(Sender: TObject);
begin
  FAirBubbleList := TList.Create;
end;

procedure TfrmAvailableAirBubble.FormShow(Sender: TObject);
begin
  UpdateAirBubbleList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableAirBubble.btnNewClick(Sender: TObject);
begin

  frmSummaryAirBubble := TfrmSummaryAirBubble.Create(Self);
  try
    with frmSummaryAirBubble do
    begin
      SelectedAirBubble := TAir_Bubble_Mount.Create;
      ShowModal;
      FUpdateList := AfterClose;
      SelectedAirBubble.Free;
    end;
  finally
    frmSummaryAirBubble.Free;
  end;

  if FUpdateList then
    UpdateAirBubbleList;
end;

procedure TfrmAvailableAirBubble.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;

begin
  if lstAirBubble.ItemIndex = -1 then
  begin
    ShowMessage('Select Air Bubble... !');
    Exit;
  end;

  with FSelectedAirBubble do
  begin
    newClassName := FAirBubble_Def.Air_Bubble_Identifier + ' - Copy';

    count := dmTTT.GetAirBubbleDef(newClassName);

    if count > 0 then
      newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FAirBubble_Def.Air_Bubble_Identifier := newClassName;

    dmTTT.InsertAirBubbleDef(FAirBubble_Def);
    dmTTT.InsertNoteStorage(21, FAirBubble_Def.Air_Bubble_Index, FNote);
  end;

  UpdateAirBubbleList;
end;

procedure TfrmAvailableAirBubble.btnEditClick(Sender: TObject);
begin
  if lstAirBubble.ItemIndex = -1 then
  begin
    ShowMessage('Select Air Bubble... !');
    Exit;
  end;

   frmSummaryAirBubble := TfrmSummaryAirBubble.Create(Self);
  try
    with frmSummaryAirBubble do
    begin
      SelectedAirBubble := FSelectedAirBubble;
      ShowModal;
      FUpdateList := AfterClose;
    end;
  finally
    frmSummaryAirBubble.Free;
  end;

  if FUpdateList then
    UpdateAirBubbleList;
end;

procedure TfrmAvailableAirBubble.btnDeleteClick(Sender: TObject);
  var
  warning : Integer;
begin
  if lstAirBubble.ItemIndex = -1 then
  begin
    ShowMessage('Select Air Bubble... !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedAirBubble.FAirBubble_Def do
    begin
      {Pengecekan Relasi Dengan Tabel On Board}
      if dmTTT.GetCountermeasure_On_Board_By_Index(2, Air_Bubble_Index) then
      begin
        ShowMessage('Cannot delete, because is already in used by some Vehicles');
        Exit;
      end;

      dmTTT.DeleteNoteStorage(21, Air_Bubble_Index);

      if dmTTT.DeleteAirBubbleDef(Air_Bubble_Index) then
        ShowMessage('Data has been deleted');

    end;

    UpdateAirBubbleList;
  end;
end;

procedure TfrmAvailableAirBubble.btnUsageClick(Sender: TObject);
begin
  if lstAirBubble.ItemIndex = -1 then
  begin
    ShowMessage('Select Air Bubble... !');
    Exit;
  end;

  frmUsage := TfrmUsage.Create(Self);
  try
    with frmUsage do
    begin
      UId := FSelectedAirBubble.FAirBubble_Def.Air_Bubble_Index;
      name_usage := FSelectedAirBubble.FAirBubble_Def.Air_Bubble_Identifier;
      usage_title := 'On Board Vehicle:';
      UIndex := 13;

      ShowModal;
    end;
  finally
    frmUsage.Free;
  end;
  
end;

procedure TfrmAvailableAirBubble.edtSearchKeyPress(Sender: TObject; var Key: Char);
var
  i : Integer;
  airbubble : TAir_Bubble_Mount;
begin
  if Key = #13 then
  begin
    lstAirBubble.Items.Clear;

    dmTTT.GetFilterAirBubbleDef(FAirBubbleList, edtSearch.Text);

    frmProgress := TfrmProgress.Create(nil);
    frmProgress.Caption := 'Loading data from database';
    frmProgress.MaxJob := FAirBubbleList.Count;

    for i := 0 to FAirBubbleList.Count - 1 do
    begin
      airbubble := FAirBubbleList.Items[i];
      lstAirBubble.Items.AddObject(airbubble.FAirBubble_Def.Air_Bubble_Identifier, airbubble);
      frmProgress.increase(airbubble.FAirBubble_Def.Air_Bubble_Identifier);
    end;
    frmProgress.Free;
  end;
end;

procedure TfrmAvailableAirBubble.lbSingleClick(Sender: TObject);
begin
  if lstAirBubble.ItemIndex = -1 then
    Exit;

  FSelectedAirBubble := TAir_Bubble_Mount(lstAirBubble.Items.Objects[lstAirBubble.ItemIndex]);
end;

procedure TfrmAvailableAirBubble.UpdateAirBubbleList;
var
  i : Integer;
  airbubble : TAir_Bubble_Mount;
begin
  lstAirBubble.Items.Clear;

  dmTTT.GetAllAirBubbleDef(FAirBubbleList);

  frmProgress := TfrmProgress.Create(nil);
  frmProgress.Caption := 'Loading data from database';
  frmProgress.MaxJob := FAirBubbleList.Count;

  for i := 0 to FAirBubbleList.Count - 1 do
  begin
    airbubble := FAirBubbleList.Items[i];
    lstAirBubble.Items.AddObject(airbubble.FAirBubble_Def.Air_Bubble_Identifier, airbubble);
    frmProgress.increase(airbubble.FAirBubble_Def.Air_Bubble_Identifier);
  end;
  frmProgress.Free;
end;

{$ENDREGION}

end.
