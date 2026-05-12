unit ufrmAvailableGameArea;

interface   

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  uDBAsset_GameEnvironment, uSimContainers;

type
  TfrmAvailableGameArea = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    pnlTableList: TPanel;
    lstGameArea: TListBox;
    btnUsage: TImage;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    FUpdateList : Boolean;
    FGameAreaList : TList;
    FSelectedGameArea : TGame_Environment_Definition;

    procedure UpdateGameAreaList;
    procedure CopyGameAreaDirectory(const aSource, aDestination: string);
    procedure DeleteGameAreaDirectory(const aFileName: string);
  end;

var
  frmAvailableGameArea: TfrmAvailableGameArea;

implementation

uses
  uDataModuleTTT, ufrmChooseMap, ufrmSummaryGameAreaENC, ufrmSummaryGameAreaVektor, ufrmUsage, uDBEditSetting,
  IOUtils;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableGameArea.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailableGameArea.FormCreate(Sender: TObject);
begin
  FGameAreaList := TList.Create;
end;

procedure TfrmAvailableGameArea.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FGameAreaList);
end;

procedure TfrmAvailableGameArea.FormShow(Sender: TObject);
begin
  UpdateGameAreaList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableGameArea.btnNewClick(Sender: TObject);
begin
  frmChooseMap := TfrmChooseMap.Create(Self);
  try
    with frmChooseMap do
    begin
      ShowModal;
      FUpdateList := AfterClose1;
    end;
  finally
    frmChooseMap.Free;
  end;

  if FUpdateList then
    UpdateGameAreaList;
end;

procedure TfrmAvailableGameArea.btnCopyClick(Sender: TObject);
var
  SourcePath, TargetPath : string;
  oldAreaName, newAreaName : string;
  count : Integer;
begin
  if lstGameArea.ItemIndex = -1 then
  begin
    ShowMessage('Select Game Area !');
    Exit;
  end;

  with FSelectedGameArea do
  begin
    oldAreaName := FGameArea.Game_Area_Identifier;
    newAreaName := FGameArea.Game_Area_Identifier + ' - Copy';

    count := dmTTT.GetGameAreaDef(newAreaName);

    if count > 0 then
      newAreaName := newAreaName + ' (' + IntToStr(count + 1) + ')';

    FGameArea.Game_Area_Identifier := newAreaName;

    dmTTT.InsertGameAreaDef(FGameArea);

    {$REGION ' Copy file game area '}
    SourcePath := vAppDBSetting.MapDestPathVECT + '\' + oldAreaName;
    TargetPath := vAppDBSetting.MapDestPathVECT + '\' + newAreaName;

    CopyGameAreaDirectory(SourcePath, TargetPath);
    RenameFile(TargetPath + '\'+ oldAreaName + '.gst', TargetPath + '\'+ newAreaName + '.gst');
    {$ENDREGION}

  end;

  UpdateGameAreaList;
end;

procedure TfrmAvailableGameArea.btnEditClick(Sender: TObject);
begin
  if lstGameArea.ItemIndex = -1 then
  begin
    ShowMessage('Select Game Area !');
    Exit;
  end;

  if FSelectedGameArea.FGameArea.Detail_Map = 'VektorMap' then
  begin
    frmSummaryGameAreaVektor := TfrmSummaryGameAreaVektor.Create(Self);
    try
      with frmSummaryGameAreaVektor do
      begin
        SelectedGameArea := FSelectedGameArea;
        ShowModal;
        FUpdateList := AfterClose;
      end;
    finally
      frmSummaryGameAreaVektor.Free;
    end;
  end
  else if FSelectedGameArea.FGameArea.Detail_Map = 'ENC' then
  begin
    frmSummaryGameAreaENC := TfrmSummaryGameAreaENC.Create(Self);
    try
      with frmSummaryGameAreaENC do
      begin
        SelectedGameArea := FSelectedGameArea;
        ShowModal;
        FUpdateList := AfterClose;
      end;
    finally
      frmSummaryGameAreaENC.Free;
    end;
  end;

  if FUpdateList then
    UpdateGameAreaList;
end;

procedure TfrmAvailableGameArea.btnDeleteClick(Sender: TObject);
var
  warning : Integer;
  tempList : TList;
  MapDirPath : string;

begin
  if lstGameArea.ItemIndex = -1 then
  begin
    ShowMessage('Select Game Area !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this Game Area ?', mtConfirmation, mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedGameArea.FGameArea do
    begin
      {Pengecekan Relasi Dengan Tabel Game Environment Definition}
      tempList := TList.Create;
      if dmTTT.GetGameAreaAtEnvironment(Game_Area_Index, tempList) then
      begin
        ShowMessage('Cannot delete, because is already in used by some Environment');
        Exit;
        FreeItemsAndFreeList(tempList);
      end;

      {Pengecekan Relasi Dengan Tabel Overlay Definition}
      if dmTTT.GetGameAreaAtOverlayDef(Game_Area_Index, tempList) then
      begin
        ShowMessage('Cannot delete, because is already in used by some Overlay');
        Exit;
        FreeItemsAndFreeList(tempList);
      end;
      FreeItemsAndFreeList(tempList);

      MapDirPath := vAppDBSetting.MapDestPathVECT + '\' + Game_Area_Identifier;
      DeleteGameAreaDirectory(MapDirPath);

      if dmTTT.DeleteGameAreaDef(Game_Area_Index) then
        ShowMessage('Data has been deleted');
    end;

    UpdateGameAreaList;
  end;
end;

procedure TfrmAvailableGameArea.btnUsageClick(Sender: TObject);
begin
  if lstGameArea.ItemIndex = -1 then
  begin
    ShowMessage('Select Game Area !');
    Exit;
  end;

  frmUsage := TfrmUsage.Create(Self);
  try
    with frmUsage do
    begin
      UId := FSelectedGameArea.FGameArea.Game_Area_Index;
      name_usage := FSelectedGameArea.FGameArea.Game_Area_Identifier;
      UIndex := 30;
      ShowModal;
    end;
  finally
    frmUsage.Free;
  end;
end;

procedure TfrmAvailableGameArea.lbSingleClick(Sender: TObject);
begin
  if lstGameArea.ItemIndex = -1 then
    Exit;

  FSelectedGameArea := TGame_Environment_Definition(lstGameArea.Items.Objects[lstGameArea.ItemIndex]);
end;

procedure TfrmAvailableGameArea.UpdateGameAreaList;
var
  i : Integer;
  gameArea : TGame_Environment_Definition;
begin
  lstGameArea.Items.Clear;

  dmTTT.GetAllGameAreaDef(FGameAreaList);

  for i := 0 to FGameAreaList.Count - 1 do
  begin
    gameArea := FGameAreaList[i];
    lstGameArea.Items.AddObject(gameArea.FGameArea.Game_Area_Identifier, gameArea);
  end;
end;

procedure TfrmAvailableGameArea.CopyGameAreaDirectory(const aSource, aDestination: string);
var
  F : TSearchRec;
  MapDirPath : string;
begin
  if FindFirst(aSource + '\*', faAnyFile, F) = 0 then
  begin
    CreateDir(aDestination);

    try
      repeat
        if (F.Attr and faDirectory <> 0) then
        begin
          if (F.Name <> '.') and (F.Name <> '..') then
          begin
            CopyGameAreaDirectory(aSource + '\' + F.Name,
              aDestination + '\' + F.Name);
          end;
        end
        else
          CopyFile(PChar(aSource + '\' + F.Name),
            PChar(aDestination + '\' + F.Name), False);
      until FindNext(F) <> 0;
    finally
      FindClose(F);
    end;
  end;
end;

procedure TfrmAvailableGameArea.DeleteGameAreaDirectory(const aFileName: string);
var
  F : TSearchRec;
begin
  if FindFirst(aFileName + '\*', faAnyFile, F) = 0 then
  begin
    try
      repeat
        if (F.Attr and faDirectory <> 0) then
        begin
          if (F.Name <> '.') and (F.Name <> '..') then
            DeleteGameAreaDirectory(aFileName + '\' + F.Name);
        end
        else
          DeleteFile(aFileName + '\' + F.Name);
      until FindNext(F) <> 0;
    finally
      FindClose(F);
    end;

    RemoveDir(aFileName);
  end;
end;

{$ENDREGION}

end.
