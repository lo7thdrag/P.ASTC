unit ufrmAvailableGrapicalOverlay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uDBAsset_GameEnvironment;

type
  TfrmAvailableGrapicalOverlay = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableList: TPanel;
    lstGrapicalOverlays: TListBox;
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
    FOverlayList : TList;
    FSelectedOverlay : TOverlay_Definition;

    procedure UpdateOverlayList;
    procedure CopyOverlayFileStream(fFile: String);
  end;

var
  frmAvailableGrapicalOverlay: TfrmAvailableGrapicalOverlay;

implementation

uses
  uDataModuleTTT, ufrmOverlaySummary, ufrmUsage, uDBEditSetting, ufProgress;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableGrapicalOverlay.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailableGrapicalOverlay.FormCreate(Sender: TObject);
begin
  FOverlayList := TList.Create;
end;

procedure TfrmAvailableGrapicalOverlay.FormShow(Sender: TObject);
begin
  UpdateOverlayList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableGrapicalOverlay.btnNewClick(Sender: TObject);
begin

 frmOverlaySummary := TfrmOverlaySummary.Create(Self);
  try
    with frmOverlaySummary do
    begin
      SelectedOverlay := TOverlay_Definition.Create;
      ShowModal;
      FUpdateList := AfterClose;
      SelectedOverlay.Free;
    end;
  finally
    frmOverlaySummary.Free;
  end;

  if FUpdateList then
    UpdateOverlayList;
end;

procedure TfrmAvailableGrapicalOverlay.btnCopyClick(Sender: TObject);
var
  SourcePath, TargetPath : string;
  newClassName, oldClassName : string;
  count : Integer;
begin
  if lstGrapicalOverlays.ItemIndex = -1 then
  begin
    ShowMessage('Select Overlay... !');
    Exit;
  end;

  with FSelectedOverlay do
  begin
    oldClassName := FData.Overlay_Identifier;
    newClassName := FData.Overlay_Identifier + ' - Copy';

    count := dmTTT.GetOverlayDef(newClassName);

    if count > 0 then
      newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FData.Overlay_Identifier := newClassName;
    FData.Overlay_Filename := newClassName;

    dmTTT.InsertOverlayDef(FData);
//    CopyOverlayFileStream(vAppDBSetting.OverlayPath + '\' + FData.Overlay_Filename + '.dat');

    {$REGION ' Copy file Overlay '}
    SourcePath := vAppDBSetting.OverlayPath + '\'+ oldClassName + '.dat' ;
    TargetPath := vAppDBSetting.OverlayPath + '\'+ newClassName + '.dat' ;

    CopyFile(PChar(SourcePath), PChar(TargetPath), True);
    {$ENDREGION}

  end;

  UpdateOverlayList;
end;

procedure TfrmAvailableGrapicalOverlay.btnEditClick(Sender: TObject);
begin
  if lstGrapicalOverlays.ItemIndex = -1 then
  begin
    ShowMessage('Select Overlay... !');
    Exit;
  end;

  frmOverlaySummary := TfrmOverlaySummary.Create(Self);
  try
    with frmOverlaySummary do
    begin
      SelectedOverlay := FSelectedOverlay;
      ShowModal;
      FUpdateList := AfterClose;
    end;
  finally
    frmOverlaySummary.Free;
  end;

  if FUpdateList then
    UpdateOverlayList;
end;

procedure TfrmAvailableGrapicalOverlay.btnDeleteClick(Sender: TObject);
var
  warning, i : Integer;
  tempList : TList;
begin
  if lstGrapicalOverlays.ItemIndex = -1 then
  begin
    ShowMessage('Select Overlay !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this Overlay ?', mtConfirmation, mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedOverlay.FData do
    begin
      {Pengecekan Relasi Dengan Tabel Resource Allocation Definition}
      tempList := TList.Create;
      if dmTTT.GetOverlayAtResourceAllocation(Overlay_Index, tempList) then
      begin
        ShowMessage('Cannot delete, because is already in used by some Resource Allocation');
        Exit;
        tempList.Destroy;
      end;
      tempList.Destroy;

      if dmTTT.DeleteOverlayDef(Overlay_Index) then
      begin
        DeleteFile(vAppDBSetting.OverlayPath + '\' + FSelectedOverlay.FData.Overlay_Filename + '.dat');
        ShowMessage('Data has been deleted');
      end;
    end;

    UpdateOverlayList;
  end;
end;

procedure TfrmAvailableGrapicalOverlay.btnUsageClick(Sender: TObject);
begin
  if lstGrapicalOverlays.ItemIndex = -1 then
  begin
    ShowMessage('Select Overlay... !');
    Exit;
  end;

  with frmUsage do
  begin
    UId := FSelectedOverlay.FData.Overlay_Index;
    name_usage := FSelectedOverlay.FData.Overlay_Identifier;
    UIndex := 35;

    ShowModal;
  end;
end;

procedure TfrmAvailableGrapicalOverlay.CopyOverlayFileStream(fFile: String);
var
     Fs : TFileStream;
begin

  try
    Fs := TFileStream.Create(fFile, fmOPENWRITE or fmCREATE);
  except
     Showmessage('Couldn''t save file overlay!' + #13);
  end;
  Fs.Free;  // << this actually writes the data to disk
end;

procedure TfrmAvailableGrapicalOverlay.edtSearchKeyPress(Sender: TObject; var Key: Char);
var
  i : Integer;
  overlay : TOverlay_Definition;
begin
  if Key = #13 then
  begin
    lstGrapicalOverlays.Items.Clear;

    dmTTT.GetFilterOverlayDef(FOverlayList, edtSearch.Text);

    frmProgress := TfrmProgress.Create(nil);
    frmProgress.Caption := 'Loading data from database';
    frmProgress.MaxJob := FOverlayList.Count;

    for i := 0 to FOverlayList.Count - 1 do
    begin
      overlay := FOverlayList.Items[i];
      lstGrapicalOverlays.Items.AddObject(overlay.FData.Overlay_Identifier, overlay);
      frmProgress.increase(overlay.FData.Overlay_Identifier);
    end;
    frmProgress.Free;
  end;
end;

procedure TfrmAvailableGrapicalOverlay.lbSingleClick(Sender: TObject);
begin
  if lstGrapicalOverlays.ItemIndex = -1 then
    Exit;
  FSelectedOverlay := TOverlay_Definition(lstGrapicalOverlays.Items.Objects[lstGrapicalOverlays.ItemIndex]);
end;

procedure TfrmAvailableGrapicalOverlay.UpdateOverlayList;
var
  i : Integer;
  overlay : TOverlay_Definition;
begin
  lstGrapicalOverlays.Items.Clear;

  dmTTT.GetAllOverlayDef(FOverlayList);

  frmProgress := TfrmProgress.Create(nil);
  frmProgress.Caption := 'Loading data from database';
  frmProgress.MaxJob := FOverlayList.Count;

  for i := 0 to FOverlayList.Count - 1 do
  begin
    overlay := FOverlayList.Items[i];
    lstGrapicalOverlays.Items.AddObject(overlay.FData.Overlay_Identifier, overlay);
    frmProgress.increase(overlay.FData.Overlay_Identifier);
  end;
  frmProgress.Free;
end;

{$ENDREGION}

end.
