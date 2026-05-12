unit uSonarPicklist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBAsset_Sonar;

type
  TfSonarPicklist = class(TForm)
    lbSonar: TListBox;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnFilter: TButton;
    btnUsage: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbSonarClick(Sender: TObject);
    procedure lbSonarDblClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FSonarList : TList;
    FSelectedSonar : TSonar_On_Board;

    procedure UpdateSonarList;
  end;

var
  fSonarPicklist: TfSonarPicklist;

implementation

uses
  uDataModuleTTT, ufrmSummarySonar, ufrmUsage;

{$R *.dfm}

procedure TfSonarPicklist.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfSonarPicklist.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;
begin
  if lbSonar.ItemIndex = -1 then
  begin
    ShowMessage('Select Sonar... !');
    Exit;
  end;

  with FSelectedSonar do
  begin
    newClassName := FDef.Sonar_Identifier + ' - Copy';

    count := dmTTT.GetSonarDef(newClassName);

    if count > 0 then
      newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FDef.Sonar_Identifier := newClassName;

    dmTTT.InsertSonarDef(FDef);
    dmTTT.InsertNoteStorage(9, FDef.Sonar_Index, FNote);
  end;

  UpdateSonarList;
end;

procedure TfSonarPicklist.btnEditClick(Sender: TObject);
begin
  if lbSonar.ItemIndex = -1 then
  begin
    ShowMessage('Select Sonar... !');
    Exit;
  end;

  with frmSummarySonar do
  begin
    SelectedSonar := FSelectedSonar;
    LastName := SelectedSonar.FDef.Sonar_Identifier;
    ShowModal;
  end;

  UpdateSonarList;
end;

procedure TfSonarPicklist.btnNewClick(Sender: TObject);
begin
  with frmSummarySonar do
  begin
    SelectedSonar := TSonar_On_Board.Create;
    ShowModal;
  end;

  UpdateSonarList;
end;

procedure TfSonarPicklist.btnRemoveClick(Sender: TObject);
var
  warning : Integer;
begin
  if lbSonar.ItemIndex = -1 then
  begin
    ShowMessage('Select Sonar... !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedSonar.FDef do
      dmTTT.DeleteSonarDef(Sonar_Index);

    UpdateSonarList;
  end;
end;

procedure TfSonarPicklist.btnUsageClick(Sender: TObject);
begin
  if lbSonar.ItemIndex = -1 then
  begin
    ShowMessage('Select Sonar... !');
    Exit;
  end;

  with frmUsage do
  begin
    UId := FSelectedSonar.FDef.Sonar_Index;
    name_usage := FSelectedSonar.FDef.Sonar_Identifier;
    UIndex := 2;
    usage_title := 'On Board Vehicle:';
    ShowModal;
  end;
end;

procedure TfSonarPicklist.FormCreate(Sender: TObject);
begin
  FSonarList := TList.Create;
end;

procedure TfSonarPicklist.FormShow(Sender: TObject);
begin
  UpdateSonarList;
end;

procedure TfSonarPicklist.lbSonarClick(Sender: TObject);
begin
  FSelectedSonar := TSonar_On_Board(lbSonar.Items.Objects[lbSonar.ItemIndex]);
end;

procedure TfSonarPicklist.lbSonarDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfSonarPicklist.UpdateSonarList;
var
  i : Integer;
  sonar : TSonar_On_Board;
begin
  lbSonar.Items.Clear;

  dmTTT.GetAllSonarDef(FSonarList);

  for i := 0 to FSonarList.Count - 1 do
  begin
    sonar := FSonarList.Items[i];
    lbSonar.Items.AddObject(sonar.FDef.Sonar_Identifier, sonar);
  end;
end;

end.
