unit ufrmEmbarkedSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, newClassASTT, uDBAsset_Vehicle,
  Vcl.Imaging.pngimage;

type
  TfrmEmbarkedSelect = class(TForm)
    lstAllVehicle: TListBox;
    lstSelectedVehicle: TListBox;
    shp1: TShape;
    btnFilter: TButton;
    grpFilter: TGroupBox;
    lblSensorType: TLabel;
    lbl1: TLabel;
    lblWeaponType: TLabel;
    lbl2: TLabel;
    chkDomain: TCheckBox;
    cbbFilterDomain: TComboBox;
    chkType: TCheckBox;
    chkSensor: TCheckBox;
    chkWeapon: TCheckBox;
    chkEmbarked: TCheckBox;
    cbbFilterType: TComboBox;
    cbbFilterSensorType: TComboBox;
    cbbFilterWeaponType: TComboBox;
    edtFilterWeaponOnBoard: TEdit;
    btnWeaponType: TButton;
    edtFilterEmbarkedPlatform: TEdit;
    btnEmbarkType: TButton;
    edtFilterSensorOnBoard: TEdit;
    btnSensorType: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnEditMount: TButton;
    btnRemove: TButton;
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstAllVehicleClick(Sender: TObject);
    procedure lstSelectedVehicleClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

    procedure btnEditTrackClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure chkDomainClick(Sender: TObject);

    procedure cbbFilterDomainChange(Sender: TObject);
    procedure cbbFilterTypeChange(Sender: TObject);
//    procedure cbbFilterSensorTypeChange(Sender: TObject);
//    procedure cbbFilterWeaponTypeChange(Sender: TObject);
    procedure lstAllVehicleDblClick(Sender: TObject);
    procedure lstSelectedVehicleDblClick(Sender: TObject);
    procedure chkTypeClick(Sender: TObject);
    procedure chkSensorClick(Sender: TObject);
    procedure chkWeaponClick(Sender: TObject);
    procedure chkEmbarkedClick(Sender: TObject);
  private
    FHostVehicle : TVehicle_Definition;

    FVehicleList : TList;
    FSelectedVehicleList : TList;
    FSelectedVehicle : TVehicle_Definition;
    FSelectedHostedVehicle : THosted_Platform;

    function GetPlatformType(aTypeName: string): Integer;
    procedure UpdateVehicleList;
    procedure UpdateFilterTypeItems;
  public
    isNoCancel : Boolean;
    property HostVehicle : TVehicle_Definition read FHostVehicle
      write FHostVehicle;
  end;

var
  frmEmbarkedSelect: TfrmEmbarkedSelect;

implementation

uses
  ufrmEmbarkedInputName, uDataModuleTTT;
  {uSimDBEditor,uDBAsset_GameEnvironment,ufrmResourceAllocationSummary,
  uDataModuleTTT, ufrmResorceAllocationPickList,ufrmAvailableResourceAllocation,ufrmResourceAllocationInputName,ufrmAvailableVehicle,
  ufrmVehicleSummary, ufrmRuntimePlatformLibrarySummary, ufrmPredefinedPatternSummary, ufrmUsage,
  uWeaponDoubleList, uSensorDoubleList, uVehicleSelect,
  ufrmEODSummary, ufrmMADSummary, ufrmSonarSummary, ufrmSonobuoyMount, ufrmMineSummary,
  ufrmMissileSummary, ufrmTorpedoSummary;}

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmEmbarkedSelect.FormCreate(Sender: TObject);
begin
  FVehicleList := TList.Create;
  FSelectedVehicleList := TList.Create;
end;

procedure TfrmEmbarkedSelect.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateFilterTypeItems;
  UpdateVehicleList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmEmbarkedSelect.btnAddClick(Sender: TObject);
begin
  if lstAllVehicle.ItemIndex = -1 then
    Exit;

  frmEmbarkedInputName := TfrmEmbarkedInputName.Create(Self);
  try
    with frmEmbarkedInputName do
    begin
      SelectedHostedPlat := THosted_Platform.Create;

      with SelectedHostedPlat do
      begin
        FData.Vehicle_Index := FHostVehicle.FData.Vehicle_Index;
        FData.Hosted_Vehicle_Index := FSelectedVehicle.FData.Vehicle_Index;
        FVehicle := FSelectedVehicle.FData;

        ShowModal;

        if not isNoCancel then
          isNoCancel := isUpdate;
      end;
    end;
  finally
    frmEmbarkedInputName.Free;
  end;

  UpdateVehicleList;
end;

procedure TfrmEmbarkedSelect.btnEditTrackClick(Sender: TObject);
begin
  if lstSelectedVehicle.ItemIndex = -1 then
    Exit;

  frmEmbarkedInputName := TfrmEmbarkedInputName.Create(Self);
  try
    with frmEmbarkedInputName do
    begin
      SelectedHostedPlat := FSelectedHostedVehicle;
      ShowModal;
    end;
  finally
    frmEmbarkedInputName.Free;
  end;
end;

procedure TfrmEmbarkedSelect.btnRemoveClick(Sender: TObject);
begin
  if lstSelectedVehicle.ItemIndex = -1 then
    Exit;

  with FSelectedHostedVehicle.FData do
    dmTTT.DeleteHostedPlatform(2, Slave_Index);

  UpdateVehicleList;
end;

procedure TfrmEmbarkedSelect.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure TfrmEmbarkedSelect.btnFilterClick(Sender: TObject);
begin
  if btnFilter.Caption = '>> Filter' then
  begin
    btnFilter.Caption := '<< Filter';
    frmEmbarkedSelect.Height := 685;
  end
  else if btnFilter.Caption = '<< Filter' then
  begin
    btnFilter.Caption := '>> Filter';
    frmEmbarkedSelect.Height := 395;
  end;
end;

procedure TfrmEmbarkedSelect.cbbFilterDomainChange(Sender: TObject);
begin
  UpdateFilterTypeItems;
  UpdateVehicleList;
end;


procedure TfrmEmbarkedSelect.cbbFilterTypeChange(Sender: TObject);
begin
  if chkType.Checked = true then
    chkDomainClick(Sender);
end;

procedure TfrmEmbarkedSelect.chkDomainClick(Sender: TObject);
begin
  cbbFilterDomain.Enabled := chkDomain.Checked;
  UpdateVehicleList;
end;

procedure TfrmEmbarkedSelect.chkEmbarkedClick(Sender: TObject);
begin
  btnEmbarkType.Enabled := chkEmbarked.Checked;
  UpdateVehicleList;
end;

procedure TfrmEmbarkedSelect.chkSensorClick(Sender: TObject);
begin
  cbbFilterSensorType.Enabled := chkSensor.Checked;
  btnSensorType.Enabled := chkSensor.Checked;
  UpdateVehicleList;
end;

procedure TfrmEmbarkedSelect.chkTypeClick(Sender: TObject);
begin
  cbbFilterType.Enabled := chkType.Checked;
  UpdateVehicleList;
end;

procedure TfrmEmbarkedSelect.chkWeaponClick(Sender: TObject);
begin
  cbbFilterWeaponType.Enabled := chkWeapon.Checked;
  btnWeaponType.Enabled := chkWeapon.Checked;
  UpdateVehicleList;
end;

function TfrmEmbarkedSelect.GetPlatformType(aTypeName: string): Integer;
begin
  if aTypeName = 'Fixed Wing, Fighter' then //air1
    Result := 0
  else if aTypeName = 'Fixed Wing, Strike/Bomber' then //air2
    Result := 1
  else if aTypeName = 'Fixed Wing, ASW/MP' then //air3
    Result := 2
  else if aTypeName = 'Fixed Wing, EW' then //air4
    Result := 3
  else if aTypeName = 'Rotary Wing, Attack' then //air5
    Result := 4
  else if aTypeName = 'Rotary Wing, ASW' then //air6
    Result := 5
  else if aTypeName = 'Fixed - Surveillance/AEW' then //air7
    Result := 6
  else if aTypeName = 'Fixed - Reconnaissance' then //air8
    Result := 7
  else if aTypeName = 'Seaplane' then //air9
    Result := 8
  else if aTypeName = 'Missile' then //air10
    Result := 9
  else if aTypeName = 'Aircraft Carrier(CV/CVN)' then //sur1
    Result := 10
  else if aTypeName = 'Cruiser, Guided Missile(CG/CGN)' then //sur2
    Result := 11
  else if aTypeName = 'Destroyer, Guided Missile(DDG)' then //sur3
    Result := 12
  else if aTypeName = 'Frigate, Guided Missile(FFG)' then //sur4
    Result := 13
  else if aTypeName = 'Destroyer(DD)' then //sur5
    Result := 14
  else if aTypeName = 'Frigate(FF)' then //sur6
    Result := 15
  else if aTypeName = 'Mine Warfare' then //sur7
    Result := 16
  else if aTypeName = 'Patrol Craft(PT/PTG)' then //sur8
    Result := 17
  else if aTypeName = 'Merchant' then //sur9
    Result := 18
  else if aTypeName = 'Utility Vessel' then //sur10
    Result := 19
  else if aTypeName = 'Nuclear, Ballistic Missile(SSBN)' then //sub1
    Result := 21
  else if aTypeName = 'Auxiliary' then //sur11
    Result := 22
  else if aTypeName = 'Nuclear, Attack(SSN)' then //sub2
    Result := 23
  else if aTypeName = 'Nuclear, Guided Missile(SSGN)' then //sub3
    Result := 24
  else if aTypeName = 'Diesel, Attack(SSK)' then //sub4
    Result := 25
  else if aTypeName = 'Diesel, Guided Missile(SSG)' then //sub5
    Result := 26
  else if aTypeName = 'Battery, Surface-to-Air-Missile' then //land1
    Result := 27
  else if aTypeName = 'Battery, Coastal Defence Missile' then //land2
    Result := 28
  else if aTypeName = 'Battery, Coastal Defence Gun' then //land3
    Result := 29
  else if aTypeName = 'Airfield' then //land4
    Result := 30
  else if aTypeName = 'Platoon, Armour' then //land5
    Result := 31
  else if aTypeName = 'Platoon, Infantry' then //land6
    Result := 32
  else if aTypeName = 'Battery, Anti-aircraft Artilery' then //land7
    Result := 33
  else if aTypeName = 'Port' then //land8
    Result := 34
  else if aTypeName = 'Special Craft' then //amp1
    Result := 35
  else if aTypeName = 'Other' then
    Result := 40
  else if aTypeName = 'Amphibious Warfare' then //sur12
    Result := 41
  else if aTypeName = 'Rotary Wing - Surveillance/AEW' then //air11
    Result := 45
  else if aTypeName = 'Rotary Wing - Reconnaissance' then //air12
    Result := 46;
end;

procedure TfrmEmbarkedSelect.UpdateFilterTypeItems;
begin
  case cbbFilterDomain.ItemIndex of
    0: //air
    begin
      cbbFilterType.Items.Clear;
      cbbFilterType.Items.Add('Fixed Wing, Fighter');
      cbbFilterType.Items.Add('Fixed Wing, Strike/Bomber');
      cbbFilterType.Items.Add('Fixed Wing, ASW/MP');
      cbbFilterType.Items.Add('Rotary Wing, ASW');
      cbbFilterType.Items.Add('Rotary Wing, Attack');
      cbbFilterType.Items.Add('Fixed Wing, EW');
      cbbFilterType.Items.Add('Fixed - Surveillance/AEW');
      cbbFilterType.Items.Add('Fixed - Reconnaissance');
      cbbFilterType.Items.Add('Rotary Wing - Surveillance/AEW');
      cbbFilterType.Items.Add('Rotary Wing - Reconnaissance');
      cbbFilterType.Items.Add('Seaplane');
      cbbFilterType.Items.Add('Missile');
      cbbFilterType.Items.Add('Other');
    end;
    1: //surface
    begin
      cbbFilterType.Items.Clear;
      cbbFilterType.Items.Add('Frigate, Guided Missile(FFG)');
      cbbFilterType.Items.Add('Destroyer, Guided Missile(DDG)');
      cbbFilterType.Items.Add('Cruiser, Guided Missile(CG/CGN)');
      cbbFilterType.Items.Add('Aircraft Carrier(CV/CVN)');
      cbbFilterType.Items.Add('Patrol Craft(PT/PTG)');
      cbbFilterType.Items.Add('Mine Warfare');
      cbbFilterType.Items.Add('Auxiliary');
      cbbFilterType.Items.Add('Merchant');
      cbbFilterType.Items.Add('Utility Vessel');
      cbbFilterType.Items.Add('Destroyer(DD)');
      cbbFilterType.Items.Add('Frigate(FF)');
      cbbFilterType.Items.Add('Amphibious Warfare');
      cbbFilterType.Items.Add('Other');
    end;
    2: //sub-surface
    begin
      cbbFilterType.Items.Clear;
      cbbFilterType.Items.Add('Diesel, Attack(SSK)');
      cbbFilterType.Items.Add('Nuclear, Attack(SSN)');
      cbbFilterType.Items.Add('Nuclear, Guided Missile(SSGN)');
      cbbFilterType.Items.Add('Diesel, Guided Missile(SSG)');
      cbbFilterType.Items.Add('Nuclear, Ballistic Missile(SSBN)');
      cbbFilterType.Items.Add('Other');
    end;
    3: //land
    begin
      cbbFilterType.Items.Clear;
      cbbFilterType.Items.Add('Platoon, Armour');
      cbbFilterType.Items.Add('Platoon, Infantry');
      cbbFilterType.Items.Add('Battery, Anti-aircraft Artillery');
      cbbFilterType.Items.Add('Battery, Surface-to-Air Missile');
      cbbFilterType.Items.Add('Battery, Coastal Defence Missile');
      cbbFilterType.Items.Add('Battery, Coastal Defence Gun');
      cbbFilterType.Items.Add('Airfield');
      cbbFilterType.Items.Add('Port');
      cbbFilterType.Items.Add('Other');
    end;
    4: //amphibi
    begin
      cbbFilterType.Items.Clear;
      cbbFilterType.Items.Add('Special Craft');
    end;
  end;

  cbbFilterType.ItemIndex := 0;
end;

procedure TfrmEmbarkedSelect.UpdateVehicleList;
var
  i, j : Integer;
  vehicle : TVehicle_Definition;
  hostedPlat : THosted_Platform;
  found : Boolean;
begin
  lstAllVehicle.Items.Clear;
  lstSelectedVehicle.Items.Clear;

  dmTTT.GetVehicleDef(FVehicleList);
  dmTTT.GetHostedPlatform(FHostVehicle.FData.Vehicle_Index,FSelectedVehicleList);

  for i := 0 to FVehicleList.Count - 1 do
  begin
    vehicle := FVehicleList.Items[i];

    if vehicle.FData.Vehicle_Index = FHostVehicle.FData.Vehicle_Index then
      Continue;

    found := False;
    for j := 0 to FSelectedVehicleList.Count - 1 do
    begin
      hostedPlat := FSelectedVehicleList.Items[j];

      if hostedPlat.FVehicle.Vehicle_Index = vehicle.FData.Vehicle_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lstSelectedVehicle.Items.AddObject(hostedPlat.FVehicle.Vehicle_Identifier,
        hostedPlat)
    else
    begin
      if chkDomain.Checked and
        (cbbFilterDomain.ItemIndex <> vehicle.FData.Platform_Domain) then
        Continue;

      if chkType.Checked and
        (GetPlatformType(cbbFilterType.Text) <> vehicle.FData.Platform_Type) then
        Continue;

      if chkSensor.Checked then
      begin
      end;

      if chkWeapon.Checked then
      begin
      end;

      if chkEmbarked.Checked then
      begin
      end;

      lstAllVehicle.Items.AddObject(vehicle.FData.Vehicle_Identifier, vehicle);
    end;
  end;
end;

procedure TfrmEmbarkedSelect.lstAllVehicleClick(Sender: TObject);
begin
  if lstAllVehicle.ItemIndex = -1 then
    Exit;

  FSelectedVehicle := TVehicle_Definition(lstAllVehicle.Items.Objects[lstAllVehicle.ItemIndex]);
end;

procedure TfrmEmbarkedSelect.lstAllVehicleDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfrmEmbarkedSelect.lstSelectedVehicleClick(Sender: TObject);
begin
  if lstSelectedVehicle.ItemIndex = -1 then
    Exit;

  FSelectedHostedVehicle := THosted_Platform(lstSelectedVehicle.Items.Objects[lstSelectedVehicle.ItemIndex]);
end;

procedure TfrmEmbarkedSelect.lstSelectedVehicleDblClick(Sender: TObject);
begin
  btnRemove.Click;
end;

{$ENDREGION}

end.
