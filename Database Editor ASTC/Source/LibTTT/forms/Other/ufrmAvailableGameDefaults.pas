unit ufrmAvailableGameDefaults;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uDBGame_Defaults;

type
  TfrmAvailableGameDefaults = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableList: TPanel;
    lstGameDefaults: TListBox;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    btnUsage: TImage;
    Label1: TLabel;
    edtSearch: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);

  private
    FGameDefaultsList : TList;
    FSelectedGameDefaults : TGame_Defaults;

    procedure UpdateGameDefaultsList;
    procedure CopyGameDefaultEffect(const aDefaultIndex,aNewDefaultIndex: Integer);
    procedure CopyGameDefaultIFF(const aDefaultIndex,aNewDefaultIndex: Integer);

  end;

var
  frmAvailableGameDefaults: TfrmAvailableGameDefaults;

implementation

uses
  uDataModuleTTT, ufrmSummaryGameDefault, ufrmUsage, newClassASTT, ufProgress, uSimContainers;

{$R *.dfm}
procedure EnableComposited(WinControl:TWinControl);
var
  i:Integer;
  NewExStyle:DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for I := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

{$REGION ' Form Handle '}

procedure TfrmAvailableGameDefaults.FormCreate(Sender: TObject);
begin
  FGameDefaultsList := TList.Create;

  EnableComposited(pnlMainTable);
end;

procedure TfrmAvailableGameDefaults.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FGameDefaultsList);
end;

procedure TfrmAvailableGameDefaults.FormShow(Sender: TObject);
begin
  UpdateGameDefaultsList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableGameDefaults.btnNewClick(Sender: TObject);
begin
  frmSummaryGameDefault := TfrmSummaryGameDefault.Create(Self);
  try
    with frmSummaryGameDefault do
    begin
      SelectedGameDefault := TGame_Defaults.Create;
      ShowModal;

      SelectedGameDefault.Free;
    end;
  finally
    frmSummaryGameDefault.Free;
  end;

  UpdateGameDefaultsList;
end;

procedure TfrmAvailableGameDefaults.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count, parentIndex : Integer;
begin
  with TGame_Defaults(FSelectedGameDefaults) do
  begin
    parentIndex := FData.Defaults_Index;
    newClassName := FData.Defaults_Identifier + ' - Copy';

    count := dmTTT.GetGameDefaultDef(newClassName);

    if count > 0 then
    newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FData.Defaults_Identifier := newClassName;

    dmTTT.InsertGameDefaultDef(FData);
    CopyGameDefaultEffect(parentIndex, FData.Defaults_Index);
    CopyGameDefaultIFF(parentIndex, FData.Defaults_Index);
  end;

  UpdateGameDefaultsList;
end;

procedure TfrmAvailableGameDefaults.btnEditClick(Sender: TObject);
begin
  if lstGameDefaults.ItemIndex = -1 then
  begin
    ShowMessage('Silahkan pilih salah satu data Game Defaults ... !');
    Exit;
  end;

  frmSummaryGameDefault := TfrmSummaryGameDefault.Create(Self);
  try
    with frmSummaryGameDefault do
    begin
    SelectedGameDefault := FSelectedGameDefaults;
    ShowModal;
    end;

  finally
    frmSummaryGameDefault.Free;
  end;

  UpdateGameDefaultsList;
end;

procedure TfrmAvailableGameDefaults.btnDeleteClick(Sender: TObject);
var
  warning : Integer;
  tempList: TList;
begin
  if lstGameDefaults.ItemIndex = -1 then
  begin
    ShowMessage('Silahkan pilih salah satu data Game Defaults ... !');
    Exit;
  end;

  warning := MessageDlg('Apakah anda akan menghapus data ini ?', mtConfirmation, mbOKCancel, 0);

  if warning = mrOK then
  begin
    tempList := TList.Create;

    {Pengecekan Relasi Dengan Resource Allocation}
    with FSelectedGameDefaults.FData do
    begin
      if dmTTT.GetGameDefaultAtResourceAllocation(Defaults_Index, tempList) then
      begin
        ShowMessage('Data tidak bisa dihapus, karena sedang terhubung dengan data Resource Allocation');
        tempList.Free;
        Exit;
      end;
      tempList.Free;

      dmTTT.DeleteGameRainfallOnRadar(Defaults_Index);
      dmTTT.DeleteGameCloudOnRadar(Defaults_Index);
      dmTTT.DeleteGameSeaStateOnRadar(Defaults_Index);
      dmTTT.DeleteGameRainfallOnESM(Defaults_Index);
      dmTTT.DeleteGameCloudOnESM(Defaults_Index);
      dmTTT.DeleteGameRainfallOnMissile(Defaults_Index);
      dmTTT.DeleteGameSeaStateOnMissile(Defaults_Index);
      dmTTT.DeleteGameRainfallOnSonar(Defaults_Index);
      dmTTT.DeleteGameShipNoiseOnSonar(Defaults_Index);
      dmTTT.DeleteGameSeaStateOnSonar(Defaults_Index);
      dmTTT.DeleteIFFModeCode(Defaults_Index);

      if dmTTT.DeleteGameDefaultDef(Defaults_Index) then
        ShowMessage('Data telah berhasil dihapus');
    end;

    UpdateGameDefaultsList;
  end;
end;

procedure TfrmAvailableGameDefaults.btnUsageClick(Sender: TObject);
begin
  if lstGameDefaults.ItemIndex = -1 then
  begin
    ShowMessage('Silahkan pilih salah satu data Game Defaults ... !');
    Exit;
  end;

  with frmUsage do
  begin
    UId := FSelectedGameDefaults.FData.Defaults_Index;
    name_usage := FSelectedGameDefaults.FData.Defaults_Identifier;
    UIndex := 40;

    ShowModal;
  end;
end;

procedure TfrmAvailableGameDefaults.lbSingleClick(Sender: TObject);
begin
  if lstGameDefaults.ItemIndex = -1 then
    Exit;

  FSelectedGameDefaults := TGame_Defaults(lstGameDefaults.Items.Objects[lstGameDefaults.ItemIndex]);
end;

procedure TfrmAvailableGameDefaults.UpdateGameDefaultsList;
var
  i : Integer;
  gamedefaults : TGame_Defaults;
begin
  lstGameDefaults.Items.Clear;

//  dmTTT.GetAllGameDefaultDef(FGameDefaultsList);
  dmTTT.GetFilterGameDefaultDef(FGameDefaultsList, edtSearch.Text);

  frmProgress := TfrmProgress.Create(nil);
  frmProgress.Caption := 'Loading data from database';
  frmProgress.MaxJob := FGameDefaultsList.Count;

  for i := 0 to FGameDefaultsList.Count - 1 do
  begin
    gamedefaults := FGameDefaultsList.Items[i];
    lstGameDefaults.Items.AddObject(gamedefaults.FData.Defaults_Identifier, gamedefaults);
    frmProgress.increase(gamedefaults.FData.Defaults_Identifier);
  end;
  frmProgress.Free;
end;

procedure TfrmAvailableGameDefaults.CopyGameDefaultEffect(const aDefaultIndex,aNewDefaultIndex: Integer);
var
  effectList : TList;
  i : Integer;
  radarRainfall : TGame_Rainfall_On_Radar;
  radarCloud : TGame_Cloud_On_Radar;
  radarSeastate : TGame_Sea_On_Radar;
  esmRainfall : TGame_Rainfall_On_ESM;
  esmCloud : TGame_Cloud_On_ESM;
  missileRainfall : TGame_Rainfall_On_Missile_Seeker;
  missileSeastate : TGame_Sea_On_Missile_Safe_Altitude;
  sonarRainfall : TGame_Rainfall_On_Sonar;
  sonarShipNoise : TGame_Ship_On_Sonar;
  sonarSeastate : TGame_Sea_On_Sonar;
begin
  effectList := TList.Create;

  dmTTT.GetGameRainfallOnRadar(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    radarRainfall := effectList.Items[i];

    with radarRainfall do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameRainfallOnRadar(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    radarRainfall := effectList.Items[i];
    radarRainfall.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameCloudOnRadar(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    radarCloud := effectList.Items[i];

    with radarCloud do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameCloudOnRadar(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    radarCloud := effectList.Items[i];
    radarCloud.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameSeaStateOnRadar(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    radarSeastate := effectList.Items[i];

    with radarSeastate do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameSeaStateOnRadar(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    radarSeastate := effectList.Items[i];
    radarSeastate.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameRainfallOnESM(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    esmRainfall := effectList.Items[i];

    with esmRainfall do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameRainfallOnESM(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    esmRainfall := effectList.Items[i];
    esmRainfall.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameCloudOnESM(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    esmCloud := effectList.Items[i];

    with esmCloud do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameCloudOnESM(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    esmCloud := effectList.Items[i];
    esmCloud.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameRainfallOnMissile(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    missileRainfall := effectList.Items[i];

    with missileRainfall do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameRainfallOnMissile(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    missileRainfall := effectList.Items[i];
    missileRainfall.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameSeaStateOnMissile(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    missileSeastate := effectList.Items[i];

    with missileSeastate do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameSeaStateOnMissile(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    missileSeastate := effectList.Items[i];
    missileSeastate.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameRainfallOnSonar(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    sonarRainfall := effectList.Items[i];

    with sonarRainfall do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameRainfallOnSonar(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    sonarRainfall := effectList.Items[i];
    sonarRainfall.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameShipNoiseOnSonar(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    sonarShipNoise := effectList.Items[i];

    with sonarShipNoise do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameShipNoiseOnSonar(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    sonarShipNoise := effectList.Items[i];
    sonarShipNoise.Free;
  end;

  effectList.Clear;

  dmTTT.GetGameSeaStateOnSonar(aDefaultIndex, effectList);

  for i := 0 to effectList.Count - 1 do
  begin
    sonarSeastate := effectList.Items[i];

    with sonarSeastate do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertGameSeaStateOnSonar(FData);
    end;
  end;

  for i := 0 to effectList.Count - 1 do
  begin
    sonarSeastate := effectList.Items[i];
    sonarSeastate.Free;
  end;

  effectList.Free;
end;

procedure TfrmAvailableGameDefaults.CopyGameDefaultIFF(const aDefaultIndex,aNewDefaultIndex: Integer);
var
  iffMCList : TList;
  i : Integer;
  iffMC : TGame_Default_IFF_Mode_Code;
begin
  iffMCList := TList.Create;

  dmTTT.GetIFFModeCode(aDefaultIndex, iffMCList);

  for i := 0 to iffMCList.Count - 1 do
  begin
    iffMC := iffMCList.Items[i];

    with iffMC do
    begin
      FData.Defaults_Index := aNewDefaultIndex;

      dmTTT.InsertIFFModeCode(FData);
    end;
  end;

  for i := 0 to iffMCList.Count - 1 do
  begin
    iffMC := iffMCList.Items[i];
    iffMC.Free;
  end;

  iffMCList.Free;
end;

procedure TfrmAvailableGameDefaults.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    UpdateGameDefaultsList
  end;
end;

{$ENDREGION}

end.
