unit ufrmAvailableEnvironments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  uDBAsset_GameEnvironment, uSimContainers;

type
  TfrmAvailableEnvironments = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    pnlTableList: TPanel;
    lstEnvironments: TListBox;
    Image1: TImage;

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
    FEnvironmentList : TList;
    FSelectedEnvironment : TGame_Environment_Definition;

    procedure UpdateEnvironmentList;
    procedure CopySubAreaDef(const aEnviIndex, aNewEnviIndex: Integer);
  end;

var
  frmAvailableEnvironments: TfrmAvailableEnvironments;

implementation

uses
  uDataModuleTTT, ufrmSummaryEnvironment, ufrmUsage, newclassASTT, uDBAssetObject,
  uDBAssets_SubAreaEnviroDefinition;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableEnvironments.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailableEnvironments.FormCreate(Sender: TObject);
begin
  FEnvironmentList := TList.Create;
end;

procedure TfrmAvailableEnvironments.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FEnvironmentList);
end;

procedure TfrmAvailableEnvironments.FormShow(Sender: TObject);
begin
  UpdateEnvironmentList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableEnvironments.btnNewClick(Sender: TObject);
begin
  frmSummaryEnvironment := TfrmSummaryEnvironment.Create(Self);
  try
    with frmSummaryEnvironment do
    begin
      SelectedEnvironment := TGame_Environment_Definition.Create;

      {$REGION ' Set nilai default (dari modul astt 7-8) '}

      with SelectedEnvironment do
      begin
        FData.Wind_Speed := 0;
        FData.Wind_Direction := 0;
        FData.Daytime_Visual_Modifier := 100;
        FData.Nighttime_Visual_Modifier := 50;
        FData.Daytime_Infrared_Modifier := 0;
        FData.Nighttime_Infrared_Modifier := 100;
        FData.Sunrise := 21600;
        FData.Sunset := 64800;
        FData.Period_of_Twilight := 1800;
        FData.Rain_Rate := 0;
        FData.Cloud_Base_Height := 100000;
        FData.Cloud_Attenuation := 0;
        FData.Sea_State := 0;
        FData.Ocean_Current_Speed := 0;
        FData.Ocean_Current_Direction := 0;
        FData.Thermal_Layer_Depth := 0;
        FData.Sound_Velocity_Type := 0;
        FData.Surface_Sound_Speed := 2700;
        FData.Layer_Sound_Speed := 4600;
        FData.Bottom_Sound_Speed := 6000;
        FData.Bottomloss_Coefficient := 1;
        FData.Ave_Ocean_Depth := 6000;
        FData.CZ_Active := 0;
        FData.Surface_Ducting_Active := 0;
        FData.Upper_Limit_Surface_Duct_Depth := 0;
        FData.Lower_Limit_Surface_Duct_Depth := 0;
        FData.Sub_Ducting_Active := 0;
        FData.Upper_Limit_Sub_Duct_Depth := 0;
        FData.Lower_Limit_Sub_Duct_Depth := 0;
        FData.Shipping_Rate := 0;
        FData.Shadow_Zone_Trans_Loss := 0;
        FData.Atmospheric_Refract_Modifier := 100;
        FData.Barometric_Pressure := 0;
        FData.Air_Temperature := 0;
        FData.Surface_Temperature := 0;
        FData.Start_HF_Range_Gap := 2000;
        FData.End_HF_Range_Gap := 2000;

        FGlobal_Conv.Occurance_Range := 30;
        FGlobal_Conv.Width := 3;
        FGlobal_Conv.Signal_Reduction_Term := 0;
        FGlobal_Conv.Increase_per_CZ := 0;
        FGlobal_Conv.Max_Sonar_Depth := 300;
      end;

      {$ENDREGION}

      ShowModal;
      FUpdateList := AfterClose;
      SelectedEnvironment.Free;
    end;

  finally
    frmSummaryEnvironment.Free;
  end;

  if FUpdateList then
    UpdateEnvironmentList;
end;

procedure TfrmAvailableEnvironments.btnCopyClick(Sender: TObject);
var
  newEnviName : string;
  count, parentIndex : Integer;
begin
  if lstEnvironments.ItemIndex = -1 then
  begin
    ShowMessage('Select Environtment... !');
    Exit;
  end;

  with FSelectedEnvironment do
  begin
    newEnviName := FData.Game_Enviro_Identifier + ' - Copy';

    count := dmTTT.GetEnvironmentDef(newEnviName);

    if count > 0 then
      newEnviName := newEnviName + ' (' + IntToStr(count + 1) + ')';

    FData.Game_Enviro_Identifier := newEnviName;
    parentIndex := FData.Game_Enviro_Index;

    dmTTT.InsertEnvironmentDef(FData);

    CopySubAreaDef(parentIndex, FData.Game_Enviro_Index);
  end;

  UpdateEnvironmentList;
end;

procedure TfrmAvailableEnvironments.btnEditClick(Sender: TObject);
begin
  if lstEnvironments.ItemIndex = -1 then
    Exit;

  frmSummaryEnvironment := TfrmSummaryEnvironment.Create(Self);
  try
    with frmSummaryEnvironment do
    begin
      SelectedEnvironment := FSelectedEnvironment;
      ShowModal;
      FUpdateList := AfterClose;
    end;

  finally
    frmSummaryEnvironment.Free;
  end;

  if FUpdateList then
    UpdateEnvironmentList;
end;

procedure TfrmAvailableEnvironments.btnDeleteClick(Sender: TObject);
var
  warning, i : Integer;
  tempList : TList;

begin
  if lstEnvironments.ItemIndex = -1 then
  begin
    ShowMessage('Select Environtment !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this Environment ?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedEnvironment.FData do
    begin
      {Pengecekan Relasi Dengan Tabel Resource Allocation Definition}
      tempList := TList.Create;
      if dmTTT.GetEnvironmentAtResourceAllocation(Game_Enviro_Index, tempList) then
      begin
        ShowMessage('Cannot delete, because is already in used by some Resource Allocation');
        Exit;
        FreeItemsAndFreeList(tempList);
      end;
      FreeItemsAndFreeList(tempList);

      {Delete Relasinya dulu}
      dmTTT.DeleteGlobalConvergenceZone(Game_Enviro_Index);
      dmTTT.DeleteSubAreaEnviroDef(1, Game_Enviro_Index);

      if dmTTT.DeleteEnvironmentDef(Game_Enviro_Index) then
      begin
        ShowMessage('Data has been deleted');
      end;
    end;

    UpdateEnvironmentList;
  end;
end;

procedure TfrmAvailableEnvironments.btnUsageClick(Sender: TObject);
begin
  if lstEnvironments.ItemIndex = -1 then
  begin
    ShowMessage('Select Environtment !');
    Exit;
  end;

  frmUsage := TfrmUsage.Create(Self);
  try
    with frmUsage do
    begin
      UId := FSelectedEnvironment.FData.Game_Enviro_Index;
      name_usage := FSelectedEnvironment.FData.Game_Enviro_Identifier;
      UIndex := 29;

      ShowModal;
    end;
  finally
    frmUsage.Free;
  end;
end;

procedure TfrmAvailableEnvironments.lbSingleClick(Sender: TObject);
begin
  if lstEnvironments.ItemIndex = -1 then
    Exit;

  FSelectedEnvironment := TGame_Environment_Definition(lstEnvironments.Items.Objects[lstEnvironments.ItemIndex]);
end;

procedure TfrmAvailableEnvironments.UpdateEnvironmentList;
var
  i : Integer;
  gameEnvi : TGame_Environment_Definition;
begin
  lstEnvironments.Items.Clear;

  dmTTT.GetAllEnvironmentDef(FEnvironmentList);

  for i := 0 to FEnvironmentList.Count - 1 do
  begin
    gameEnvi := FEnvironmentList.Items[i];

    lstEnvironments.Items.AddObject(gameEnvi.FData.Game_Enviro_Identifier,gameEnvi);
  end;
end;

procedure TfrmAvailableEnvironments.CopySubAreaDef(const aEnviIndex, aNewEnviIndex: Integer);
var
  subAreaEnviList : TList;
  i : Integer;
  subAreaEnvi : TSubArea_Enviro_Definition;
begin
  subAreaEnviList := TList.Create;

  dmTTT.GetSubAreaEnviroDef(aEnviIndex, subAreaEnviList);

  for i := 0 to subAreaEnviList.Count - 1 do
  begin
    subAreaEnvi := subAreaEnviList.Items[i];

    with subAreaEnvi do
    begin
      FData.Game_Enviro_Index := aNewEnviIndex;

      dmTTT.InsertSubAreaEnviroDef(FData);
    end;
  end;

  for i := 0 to subAreaEnviList.Count - 1 do
  begin
    subAreaEnvi := subAreaEnviList.Items[i];
    subAreaEnvi.Free;
  end;

  subAreaEnviList.Free;
end;

{$ENDREGION}


 end.
