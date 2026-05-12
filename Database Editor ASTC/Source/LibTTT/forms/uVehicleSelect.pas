unit uVehicleSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject,
  uDBAsset_Runtime_Platform_Library, uDBAsset_Vehicle;

type
  E_VehicleSelectionCaller = (vscResourceAllocation, vscRuntimePlatformLibrary,
    vscPredefinedPattern);

  TfVehicleSelect = class(TForm)
    lstAllVehicle: TListBox;
    lstSelectedVehicle: TListBox;
    btnAdd: TButton;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnEditTrack: TButton;
    shp1: TShape;
    btnFilter: TButton;
    btnClose: TButton;
    grpFilter: TGroupBox;
    lblSensorType: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
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

    procedure FormCreate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormShow(Sender: TObject);

    procedure lstAllVehicleClick(Sender: TObject);
    procedure lstAllVehicleDblClick(Sender: TObject);
    procedure lstSelectedVehicleClick(Sender: TObject);
    procedure lstSelectedVehicleDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditTrackClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure chkDomainClick(Sender: TObject);
    procedure cbbFilterDomainChange(Sender: TObject);
    procedure chkTypeClick(Sender: TObject);
    procedure cbbFilterTypeChange(Sender: TObject);
    procedure chkSensorClick(Sender: TObject);
    procedure cbbFilterSensorTypeChange(Sender: TObject);
    procedure btnSensorTypeClick(Sender: TObject);
    procedure chkWeaponClick(Sender: TObject);
    procedure cbbFilterWeaponTypeChange(Sender: TObject);
    procedure btnWeaponTypeClick(Sender: TObject);
    procedure chkEmbarkedClick(Sender: TObject);
    procedure btnEmbarkTypeClick(Sender: TObject);
  private
    FVehicleSelectionCaller : E_VehicleSelectionCaller;
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedForce : Integer;
    FSelectedRPL : TRuntime_Platform_Library;
    FSelectedVehicleID : Integer;

    FVehicleList : TList;
    FSelectedVehicleList : TList;
    FSelectedVehicle : TVehicle_Definition;
    FSelectedPlatInst : TPlatform_Instance;
    FSelectedPlatLib : TPlatform_Library_Entry;

    procedure UpdateVehicleListResAlloc;
    procedure UpdateVehicleListRuntimePlatLib;
    procedure UpdateVehicleListPredefinedPattern;

    procedure UpdateFilterTypeItems;
    function GetPlatformType(aTypeName: string): Integer;
  public
    SelectedVehicleList : TList; {untuk filter di fInputName}
    property VehicleSelectionCaller : E_VehicleSelectionCaller
      read FVehicleSelectionCaller write FVehicleSelectionCaller;
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
    property SelectedRPL : TRuntime_Platform_Library read FSelectedRPL
      write FSelectedRPL;
    property SelectedVehicleID : Integer read FSelectedVehicleID
      write FSelectedVehicleID;
  end;

var
  fVehicleSelect: TfVehicleSelect;

implementation

uses
  uDataModuleTTT, ufrmSummaryVehicle, ufrmResourceAllocationInputName, uSensorDoubleList,
  uWeaponDoubleList, ufrmEmbarkedSelect;

{$R *.dfm}

procedure TfVehicleSelect.btnSensorTypeClick(Sender: TObject);
begin
  fSensor.ShowModal;
end;

procedure TfVehicleSelect.btnWeaponTypeClick(Sender: TObject);
begin
  fWeaponDoubleList.ShowModal;
end;

procedure TfVehicleSelect.btnEmbarkTypeClick(Sender: TObject);
begin
  frmEmbarkedSelect.ShowModal;
end;

procedure TfVehicleSelect.btnAddClick(Sender: TObject);
var
  platLib : TPlatform_Library_Entry;
begin
  if lstAllVehicle.ItemIndex = -1 then
    Exit;

  case FVehicleSelectionCaller of
    vscResourceAllocation:
    begin
      with frmResourceAllocationInputName do
      begin
//        InputNameCaller := incVehicle;
        ResourceAllocation := FSelectedResourceAlloc;
        Vehicle := FSelectedVehicle;
        PlatformInstance := TPlatform_Instance.Create;
        Force := FSelectedForce;
        ShowModal;
      end;

      UpdateVehicleListResAlloc;
    end;
    vscRuntimePlatformLibrary:
    begin
      platLib := TPlatform_Library_Entry.Create;

      with platLib do
      begin
        FData.Library_Index := FSelectedRPL.FData.Platform_Library_Index;
        FData.Platform_Type := 1;
        FData.Vehicle_Index := FSelectedVehicle.FData.Vehicle_Index;

        dmTTT.InsertPlatformLibraryEntry(FData);
      end;

      platLib.Free;

      UpdateVehicleListRuntimePlatLib;
    end;
    vscPredefinedPattern:
    begin
      FSelectedVehicleID := FSelectedVehicle.FData.Vehicle_Index;
      UpdateVehicleListPredefinedPattern;
    end;
  end;
end;

procedure TfVehicleSelect.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfVehicleSelect.btnCopyClick(Sender: TObject);
begin
  if lstAllVehicle.ItemIndex = -1 then
    Exit;
end;

procedure TfVehicleSelect.btnEditClick(Sender: TObject);
begin
  if lstAllVehicle.ItemIndex = -1 then
    Exit;

  with frmSummaryVehicle do
  begin
    SelectedVehicle := FSelectedVehicle;
    ShowModal;
  end;
end;

procedure TfVehicleSelect.btnEditTrackClick(Sender: TObject);
begin
  if lstSelectedVehicle.ItemIndex = -1 then
    Exit;

  with frmResourceAllocationInputName do
  begin
//    InputNameCaller := incVehicle;
    PlatformInstance := FSelectedPlatInst;
    ShowModal;
  end;

  UpdateVehicleListResAlloc;
end;

procedure TfVehicleSelect.btnFilterClick(Sender: TObject);
begin
  if btnFilter.Caption = '>> Filter' then
  begin
    btnFilter.Caption := '<< Filter';
    fVehicleSelect.Height := 683;
  end
  else if btnFilter.Caption = '<< Filter' then
  begin
    btnFilter.Caption := '>> Filter';
    fVehicleSelect.Height := 395;
  end;
end;

procedure TfVehicleSelect.btnNewClick(Sender: TObject);
begin
  with frmSummaryVehicle do
  begin
    SelectedVehicle := TVehicle_Definition.Create;
    ShowModal;
  end;
end;

procedure TfVehicleSelect.btnRemoveClick(Sender: TObject);
begin
  if lstSelectedVehicle.ItemIndex = -1 then
    Exit;

  case FVehicleSelectionCaller of
    vscResourceAllocation:
    begin
      with FSelectedPlatInst.FData do
      begin
        if dmTTT.GetCubicleGroupAssignment(Platform_Instance_Index) > 0 then
        begin
          ShowMessage('This vehicle is member of some Cubicle Group. ' +
            'Remove this vehicle in Cubicle Group to proceed this process.');
          Exit;
        end;

        if dmTTT.GetPlatformActivation(Platform_Instance_Index) > 0 then
        begin
          ShowMessage('This vehicle is deployed. Undeploy this vehicle to ' +
            'proceed this process.');
          Exit;
        end;

        dmTTT.DeletePlatformInstance(2, Platform_Instance_Index);
      end;

      UpdateVehicleListResAlloc;
    end;
    vscRuntimePlatformLibrary:
    begin
      with FSelectedPlatLib.FData do
        dmTTT.DeletePlatformLibraryEntry(2, Library_Entry_Index);

      UpdateVehicleListRuntimePlatLib;
    end;
    vscPredefinedPattern:
    begin
      FSelectedVehicleID := 0;
      UpdateVehicleListPredefinedPattern;
    end;
  end;
end;

procedure TfVehicleSelect.cbbFilterDomainChange(Sender: TObject);
begin
  UpdateFilterTypeItems;

  case FVehicleSelectionCaller of
    vscResourceAllocation: UpdateVehicleListResAlloc;
    vscRuntimePlatformLibrary: UpdateVehicleListRuntimePlatLib;
    vscPredefinedPattern: UpdateVehicleListPredefinedPattern;
  end;
end;

procedure TfVehicleSelect.cbbFilterSensorTypeChange(Sender: TObject);
begin
  edtFiltersensorOnBoard.Text := '[None]';
  fSensor.lbsensorSel.Clear;
end;

procedure TfVehicleSelect.cbbFilterTypeChange(Sender: TObject);
begin
  if chkType.Checked = true then
    chkDomainClick(Sender);
end;

procedure TfVehicleSelect.cbbFilterWeaponTypeChange(Sender: TObject);
begin
  edtFilterWeaponOnBoard.Text := '[None]';
  fWeaponDoubleList.lbWeaponSel.Clear;
end;

procedure TfVehicleSelect.chkDomainClick(Sender: TObject);
begin
  cbbFilterDomain.Enabled := chkDomain.Checked;

  case FVehicleSelectionCaller of
    vscResourceAllocation: UpdateVehicleListResAlloc;
    vscRuntimePlatformLibrary: UpdateVehicleListRuntimePlatLib;
    vscPredefinedPattern: UpdateVehicleListPredefinedPattern;
  end;
end;

procedure TfVehicleSelect.chkEmbarkedClick(Sender: TObject);
begin
  edtFilterEmbarkedPlatform.Enabled := chkEmbarked.Checked;

  case FVehicleSelectionCaller of
    vscResourceAllocation: UpdateVehicleListResAlloc;
    vscRuntimePlatformLibrary: UpdateVehicleListRuntimePlatLib;
    vscPredefinedPattern: UpdateVehicleListPredefinedPattern;
  end;
end;

procedure TfVehicleSelect.chkSensorClick(Sender: TObject);
begin
  cbbFilterSensorType.Enabled := chkSensor.Checked;
  edtFiltersensorOnBoard.Enabled := chkSensor.Checked;
  btnSensorType.Enabled := chkSensor.Checked;

  case FVehicleSelectionCaller of
    vscResourceAllocation: UpdateVehicleListResAlloc;
    vscRuntimePlatformLibrary: UpdateVehicleListRuntimePlatLib;
    vscPredefinedPattern: UpdateVehicleListPredefinedPattern;
  end;
end;

procedure TfVehicleSelect.chkTypeClick(Sender: TObject);
begin
  cbbFilterType.Enabled := chkType.Checked;

  case FVehicleSelectionCaller of
    vscResourceAllocation: UpdateVehicleListResAlloc;
    vscRuntimePlatformLibrary: UpdateVehicleListRuntimePlatLib;
    vscPredefinedPattern: UpdateVehicleListPredefinedPattern;
  end;
end;

procedure TfVehicleSelect.chkWeaponClick(Sender: TObject);
begin
  cbbFilterWeaponType.Enabled := chkWeapon.Checked;
  edtFilterWeaponOnBoard.Enabled := chkWeapon.Checked;
  btnWeaponType.Enabled := chkWeapon.Checked;

  case FVehicleSelectionCaller of
    vscResourceAllocation: UpdateVehicleListResAlloc;
    vscRuntimePlatformLibrary: UpdateVehicleListRuntimePlatLib;
    vscPredefinedPattern: UpdateVehicleListPredefinedPattern;
  end;
end;

procedure TfVehicleSelect.FormCreate(Sender: TObject);
begin
  FVehicleList := TList.Create;
  FSelectedVehicleList := TList.Create;
  SelectedVehicleList := TList.Create;
end;

procedure TfVehicleSelect.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if GetKeyState(VK_ESCAPE) < 0 then
  begin
    case Msg.CharCode of
      VK_ESCAPE: Close;
    end;
  end;
end;

procedure TfVehicleSelect.FormShow(Sender: TObject);
begin
  UpdateFilterTypeItems;

  case FVehicleSelectionCaller of
    vscResourceAllocation:
    begin
      UpdateVehicleListResAlloc;
      btnEditTrack.Enabled := True;
    end;
    vscRuntimePlatformLibrary:
    begin
      UpdateVehicleListRuntimePlatLib;
      btnEditTrack.Enabled := False;
    end;
    vscPredefinedPattern:
    begin
      UpdateVehicleListPredefinedPattern;
      btnEditTrack.Enabled := False;
    end;
  end;
end;

function TfVehicleSelect.GetPlatformType(aTypeName: string): Integer;
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

procedure TfVehicleSelect.UpdateFilterTypeItems;
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

procedure TfVehicleSelect.UpdateVehicleListPredefinedPattern;
var
  i : Integer;
  vehicle : TVehicle_Definition;
begin
  lstAllVehicle.Items.Clear;
  lstSelectedVehicle.Items.Clear;

  dmTTT.GetVehicleDef(FVehicleList);

  for i := 0 to FVehicleList.Count - 1 do
  begin
    vehicle := FVehicleList.Items[i];

    if vehicle.FData.Vehicle_Index = FSelectedVehicleID then
      lstSelectedVehicle.Items.AddObject(vehicle.FData.Vehicle_Identifier,
        vehicle)
    else
    begin
      if chkDomain.Checked and
        (cbbFilterDomain.ItemIndex <> vehicle.FData.Platform_Domain) then
        Continue;

      if chkType.Checked and
        (GetPlatformType(cbbFilterType.Text) <> vehicle.FData.
          Platform_Type) then
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

procedure TfVehicleSelect.UpdateVehicleListResAlloc;
var
  i : Integer;
  vehicle : TVehicle_Definition;
  platInst : TPlatform_Instance;
begin
  lstAllVehicle.Items.Clear;
  lstSelectedVehicle.Items.Clear;

  dmTTT.GetVehicleDef(FVehicleList);
  dmTTT.GetPlatformInstance(FSelectedResourceAlloc.FData.Resource_Alloc_Index,
    1, FSelectedForce, FSelectedVehicleList);
  SelectedVehicleList := FSelectedVehicleList;

  for i := 0 to FVehicleList.Count - 1 do
  begin
    vehicle := FVehicleList.Items[i];

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

  for i := 0 to FSelectedVehicleList.Count - 1 do
  begin
    platInst := FSelectedVehicleList.Items[i];
    lstSelectedVehicle.Items.AddObject(platInst.FData.Instance_Name, platInst);
  end;
end;

procedure TfVehicleSelect.UpdateVehicleListRuntimePlatLib;
var
  i, j : Integer;
  vehicle : TVehicle_Definition;
  platLib : TPlatform_Library_Entry;
  found : Boolean;
begin
  lstAllVehicle.Items.Clear;
  lstSelectedVehicle.Items.Clear;

  dmTTT.GetVehicleDef(FVehicleList);
  dmTTT.GetVehicleDef(FSelectedRPL.FData.Platform_Library_Index,
    FSelectedVehicleList);

  for i := 0 to FVehicleList.Count - 1 do
  begin
    vehicle := FVehicleList.Items[i];

    found := False;
    for j := 0 to FSelectedVehicleList.Count - 1 do
    begin
      platLib := FSelectedVehicleList.Items[j];

      if platLib.FData.Vehicle_Index = vehicle.FData.Vehicle_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lstSelectedVehicle.Items.AddObject(vehicle.FData.Vehicle_Identifier,
        platLib)
    else
    begin
      if chkDomain.Checked and
        (cbbFilterDomain.ItemIndex <> vehicle.FData.Platform_Domain) then
        Continue;

      if chkType.Checked and
        (GetPlatformType(cbbFilterType.Text) <> vehicle.FData.
          Platform_Type) then
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

procedure TfVehicleSelect.lstAllVehicleClick(Sender: TObject);
begin
  FSelectedVehicle := TVehicle_Definition(
    lstAllVehicle.Items.Objects[lstAllVehicle.ItemIndex]);
end;

procedure TfVehicleSelect.lstAllVehicleDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfVehicleSelect.lstSelectedVehicleClick(Sender: TObject);
begin
  case FVehicleSelectionCaller of
    vscResourceAllocation:
    begin
      FSelectedPlatInst := TPlatform_Instance(
        lstSelectedVehicle.Items.Objects[lstSelectedVehicle.ItemIndex]);
    end;
    vscRuntimePlatformLibrary:
    begin
      FSelectedPlatLib := TPlatform_Library_Entry(
        lstSelectedVehicle.Items.Objects[lstSelectedVehicle.ItemIndex]);
    end;
  end;
end;

procedure TfVehicleSelect.lstSelectedVehicleDblClick(Sender: TObject);
begin
  case FVehicleSelectionCaller of
    vscResourceAllocation: btnEditTrack.Click;
    vscRuntimePlatformLibrary,
    vscPredefinedPattern: btnRemove.Click;
  end;
end;

end.
