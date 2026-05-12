unit ufrmSummaryVehicle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Vcl.Imaging.pngimage,
  uDBAssetObject, uDBAsset_Vehicle, Vcl.Mask;

type
  TfrmSummaryVehicle = class(TForm)
    pnl1Title: TPanel;
    Label1: TLabel;
    edtClass: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    lblNames: TLabel;
    lblDomain: TLabel;
    lblCategory: TLabel;
    lblType: TLabel;
    lblDetectability: TLabel;
    imgInsert: TImage;
    imgRemove: TImage;
    edtName: TEdit;
    cbbCategory: TComboBox;
    cbbType: TComboBox;
    cbbDetectabilityType: TComboBox;
    grbCapabilities: TGroupBox;
    chkNavigation: TCheckBox;
    chkBarrier: TCheckBox;
    grbCommunication: TGroupBox;
    lblAntennaHeight: TLabel;
    lblAntennaAboveWater: TLabel;
    lblMaxCommDepth: TLabel;
    mn1: TLabel;
    mn2: TLabel;
    mn3: TLabel;
    lblLink: TLabel;
    lblVoice: TLabel;
    lblMessage: TLabel;
    chkHFLink: TCheckBox;
    chkUHFLink: TCheckBox;
    chkHFVoice: TCheckBox;
    chkUHFVoice: TCheckBox;
    chkSatcom: TCheckBox;
    chkUnderwater: TCheckBox;
    chkHFMessageHandling: TCheckBox;
    chkUHFMessageHandling: TCheckBox;
    chkSATCOMMessageHAndling: TCheckBox;
    edtAntennaHeight: TEdit;
    edtAntennaAboveWater: TEdit;
    edtMaxCom: TEdit;
    grbDamage: TGroupBox;
    mnlbl10: TLabel;
    mnlbl11: TLabel;
    trckbrDamageSustainability: TTrackBar;
    edtDamageSustainability: TEdit;
    lstName: TListBox;
    cbbDomain: TComboBox;
    btnAdd: TButton;
    tsPhysical: TTabSheet;
    lblMotionCharacteristic: TLabel;
    lblCroosSection: TLabel;
    edtMotionCharacterictic: TEdit;
    grbRadarPhysical: TGroupBox;
    lblRadarFront: TLabel;
    lblRadarSide: TLabel;
    edtFrontRadarPhysical: TEdit;
    cbbFrontRadarPhysical: TComboBox;
    edtSideRadarPhysical: TEdit;
    cbbSideRadarPhysical: TComboBox;
    grbAcousticPhysical: TGroupBox;
    lblAcousticFront: TLabel;
    lblAcousticSide: TLabel;
    mn4: TLabel;
    mn5: TLabel;
    edtFrontAcousticPhysical: TEdit;
    edtSideAcousticPhysical: TEdit;
    grbVisualPhysical: TGroupBox;
    lblVisualEOFront: TLabel;
    lblVisualEOSide: TLabel;
    mn6: TLabel;
    mn7: TLabel;
    edtFrontVisualPhysical: TEdit;
    edtSideVisualPhysical: TEdit;
    grbInfraredPhysical: TGroupBox;
    lblInfraredFront: TLabel;
    lblInfraredSide: TLabel;
    mn8: TLabel;
    mn9: TLabel;
    edtFrontInfraredPhysical: TEdit;
    edtSideInfraredPhysical: TEdit;
    grbMagneticPhysical: TGroupBox;
    edtMagneticPhysical: TEdit;
    grbAcousticIntensityPhysical: TGroupBox;
    lblMinimumSpeed: TLabel;
    lblBelowCavitation: TLabel;
    lblAboveCavitation: TLabel;
    lblMaximumSpeed: TLabel;
    mn10: TLabel;
    mn11: TLabel;
    mn12: TLabel;
    mn13: TLabel;
    lblCavitationSpeed: TLabel;
    mn14: TLabel;
    edtMinSpeedAcousticPhysical: TEdit;
    edtBelowCavitationAcousticPhysical: TEdit;
    edtAboveCavitationAcousticPhysical: TEdit;
    edtMaxSpeedAcousticPhysical: TEdit;
    edtCavitationSpeedAcousticPhysical: TEdit;
    GroupBox1: TGroupBox;
    lblLengthDimensions: TLabel;
    Label46: TLabel;
    lblWidthDimensions: TLabel;
    Label47: TLabel;
    Label10: TLabel;
    lblEngagementRangeDimensions: TLabel;
    Label12: TLabel;
    lblHeightDimensions: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtLengthDimensions: TEdit;
    edtWidthDimensions: TEdit;
    edtHeightDimensions: TEdit;
    edtEngagementRangeDimensions: TEdit;
    edtDraftDimensions: TEdit;
    btnMotionCharacteristic: TButton;
    tsCharacteristic: TTabSheet;
    grbAirDropLimitation: TGroupBox;
    lblMaxDropAltitude: TLabel;
    lblMinDropAltitude: TLabel;
    lblMaxDropSpeed: TLabel;
    mn20: TLabel;
    mn21: TLabel;
    mn22: TLabel;
    edtMaxDropAltitude: TEdit;
    edtMinDropAltitude: TEdit;
    edtMaxDropSpeed: TEdit;
    grbFlowNoiseFactors: TGroupBox;
    lblHMS: TLabel;
    mnTAS: TLabel;
    mn23: TLabel;
    mn24: TLabel;
    edtHullMounted: TEdit;
    edtTowedArray: TEdit;
    grbSonobuoyCapable: TGroupBox;
    mnMaxNumToMonitor: TLabel;
    mnMaxDeployAltitude: TLabel;
    mnMinDeployAltitude: TLabel;
    mn25: TLabel;
    mn26: TLabel;
    lblMaxDeploySpeed: TLabel;
    mn27: TLabel;
    edtMaxNumbToMonitor: TEdit;
    edtMaxDeployAltitude: TEdit;
    edtMinDeployAltitude: TEdit;
    edtMaxDeploySpeed: TEdit;
    chkSonobuoyCapable: TCheckBox;
    tsPOH: TTabSheet;
    grbMissile: TGroupBox;
    lblARHoming: TLabel;
    lblIRHoming: TLabel;
    lblSARH: TLabel;
    lblTARH: TLabel;
    mn28: TLabel;
    mn29: TLabel;
    edtAntiRadiationMissile: TEdit;
    edtInfraredHomingMissile: TEdit;
    edtSemiActiveMissile: TEdit;
    edtTerminalActiveMissile: TEdit;
    trckbrAntiRadiationMissile: TTrackBar;
    trckbrInfraredMissile: TTrackBar;
    trckbrSemiActiveMissile: TTrackBar;
    trckbrTerminalActiveMissile: TTrackBar;
    grbTorpedo: TGroupBox;
    lblActiveHoming: TLabel;
    lblPassiveHoming: TLabel;
    lblActivePassiveHoming: TLabel;
    lblWireGuided: TLabel;
    mn30: TLabel;
    mn31: TLabel;
    lblWakeHoming: TLabel;
    edtActiveAcousticTorpedo: TEdit;
    edtPassiveAcousticTorpedo: TEdit;
    edtActivePassiveAcousticTorpedo: TEdit;
    edtWireGuidedTorpedo: TEdit;
    trckbrActiveAcousticTorpedo: TTrackBar;
    trckbrPassiveAcousticTorpedo: TTrackBar;
    trckbrActivePassiveAcousticTorpedo: TTrackBar;
    trckbrWireGuidedTorpedo: TTrackBar;
    edtWakeHomingTorpedo: TEdit;
    trckbrWakeHomingTorpedo: TTrackBar;
    grbMine: TGroupBox;
    lblAcousticMine: TLabel;
    lblImpactMine: TLabel;
    lblMagneticMine: TLabel;
    lblPressureMine: TLabel;
    mn32: TLabel;
    mn33: TLabel;
    edtAcousticMine: TEdit;
    edtImpactMine: TEdit;
    edtMagneticMine: TEdit;
    edtPressureMine: TEdit;
    trckbrAcousticMine: TTrackBar;
    trckbrImpactMine: TTrackBar;
    trckbrMagneticMine: TTrackBar;
    trckbrPressureMine: TTrackBar;
    tsAssets: TTabSheet;
    grbSensor: TGroupBox;
    btnRadar: TButton;
    btnMAD: TButton;
    btnESM: TButton;
    btnSonar: TButton;
    btnElectroOpticalDetector: TButton;
    btnIFF: TButton;
    btnVisualDetector: TButton;
    btnSonobuoy: TButton;
    grbWeapons: TGroupBox;
    btnMissiles: TButton;
    btnTorpedos: TButton;
    btnMines: TButton;
    btnGuns: TButton;
    btnBomb_DepthCharges: TButton;
    grbCountermeasures: TGroupBox;
    btnRadarJummer: TButton;
    btnAirBubble: TButton;
    btnAccousticDecoy: TButton;
    btnDefensiveJummer: TButton;
    btnTowedJummer_Decoy: TButton;
    btnFloatingDecoy: TButton;
    btnChaff: TButton;
    btnInfraredDecoy: TButton;
    grbBasing: TGroupBox;
    btnEmbarkedPlatforms: TButton;
    btnHelicopterLimitations: TButton;
    cbbBasingType: TComboBox;
    grbReadyingTime: TGroupBox;
    lblRefuelTime: TLabel;
    lblLaunchTime: TLabel;
    mn34: TLabel;
    mn35: TLabel;
    edtRefuelTime: TMaskEdit;
    edtLaunchAlertTime: TMaskEdit;
    tsPeriscope: TTabSheet;
    lblPeriscopeRadarMastCrossSection: TLabel;
    grbPeriscope: TGroupBox;
    lblMaxOperatingDepth: TLabel;
    mn37: TLabel;
    mn38: TLabel;
    lblHighAboveWater: TLabel;
    edtMaxOperatPeriscope: TEdit;
    edtHighAbovePeriscope: TEdit;
    grbRadar: TGroupBox;
    lblPeriscopeRadarFront: TLabel;
    lblPeriscopeRadarSide: TLabel;
    edtFrontRadar: TEdit;
    edtSideRadar: TEdit;
    cbbFontRadar: TComboBox;
    cbbSideRadar: TComboBox;
    grbInfrared: TGroupBox;
    lblPeriscopeInfraredFront: TLabel;
    lblPeriscopeInfraredSide: TLabel;
    mn39: TLabel;
    mn40: TLabel;
    edtFrontInfrared: TEdit;
    edtSideInfrared: TEdit;
    grbVisual: TGroupBox;
    lblPeriscopeVisualFront: TLabel;
    lblPeriscopeVisualSide: TLabel;
    mn41: TLabel;
    mn42: TLabel;
    edtFrontVisual: TEdit;
    edtSideVisual: TEdit;
    tsNotes: TTabSheet;
    mmoNotes: TMemo;
    pnl3Button: TPanel;
    pnlSparatorHor1: TPanel;
    Image2: TImage;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxDataChange(Sender: TObject);
    procedure CheckBoxDataClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    //General
    procedure InsertMemberOfClassClick(Sender: TObject);
    procedure RemoveMemberOfClassClick(Sender: TObject);
    procedure ShowbtnInsertClick(Sender: TObject);
    procedure lstNameClick(Sender: TObject);
    procedure trckbrGeneralChange(Sender: TObject);
    procedure edtGeneralChange(Sender: TObject);
    procedure cbbDomainChange(Sender: TObject);

    //Physical
    procedure btnMotionCharacteristicClick(Sender: TObject);

    //POH Modifier
    procedure trckbrPOHModifierChange(Sender: TObject);
    procedure edtPOHModifierChange(Sender: TObject);

    //Assets
    procedure btnRadarClick(Sender: TObject);
    procedure btnMADClick(Sender: TObject);
    procedure btnESMClick(Sender: TObject);
    procedure btnSonarClick(Sender: TObject);
    procedure btnEODClick(Sender: TObject);
    procedure btnIFFClick(Sender: TObject);
    procedure btnVisualDetectorClick(Sender: TObject);
    procedure btnSonobuoyClick(Sender: TObject);

    procedure btnMissilesClick(Sender: TObject);
    procedure btnTorpedosClick(Sender: TObject);
    procedure btnMinesClick(Sender: TObject);
    procedure btnGunsClick(Sender: TObject);
    procedure btnBomb_DepthChargesClick(Sender: TObject);

    procedure btnRadarJummerClick(Sender: TObject);
    procedure btnAirBubbleClick(Sender: TObject);
    procedure btnAccousticDecoyClick(Sender: TObject);
    procedure btnDefensiveJummerClick(Sender: TObject);
    procedure btnTowedJummer_DecoyClick(Sender: TObject);
    procedure btnFloatingDecoyClick(Sender: TObject);
    procedure btnChaffClick(Sender: TObject);
    procedure btnInfraredDecoyClick(Sender: TObject);
    procedure btnEmbarkedPlatformsClick(Sender: TObject);
    procedure btnHelicopterLimitationsClick(Sender: TObject);

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedVehicle : TVehicle_Definition;

    FPlatInstList : TList;
    FSelectedPIIdent : TPlatform_Instance_Identifier;

    function CekInput: Boolean;
    procedure UpdateVehicleData;
    procedure UpdateMotionData;

    procedure UpdatePlatformInstanceTools;
    procedure UpdatePlatformInstanceIdentifierList;
    procedure UpdateCategoryAndTypeItems(const aDomain: Byte);
    procedure UpdateVehicleAssetTools;
    function GetBasingType(const aList: TList): Integer;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle
      write FSelectedVehicle;
  end;

var
  frmSummaryVehicle: TfrmSummaryVehicle;

implementation

uses
  uDataModuleTTT,uDBAsset_Countermeasure, uDBAsset_Weapon, uDBAsset_Sonobuoy, tttData,
  uDBAsset_Sonar, uDBAsset_ESM, uDBAsset_Radar, uDBAsset_Sensor,
  newClassASTT,  uDBAsset_Fitted, uDBAsset_MotionCharacteristics, ufrmMotionPickList,

  ufrmRadarOnBoardPickList,ufrmSonarOnBoardPickList, ufrmESMOnBoardPickList,ufrmEODOnBoardPickList,
  ufrmMADOnBoardPickList, ufrmSonobuoyOnBoardPickList,ufrmIFFOnBoardPickList, uVDDoublePickList,
  ufrmVisualOnBoardPickList,

  ufrmMissileOnBoardPickList, ufrmTorpedoOnBoardPickList, ufrmMineOnBoardPickList, ufrmGunOnBoardPickList,
  ufrmBombOnBoardPickList,

  ufrmAccousticDecoyOnBoardPickList, ufrmAirBubbleOnBoardPickList, uChaffAssets,
  ufrmInfraredDecoyOnBoardPickList, ufrmFloatingDecoyOnBoardPickList,
  ufrmDefensiveJammerPickList, ufrmTowedJammerDecoyOnBoardPickList, ufrmRadarJammerOnBoardPickList,


  ufrmEmbarkedSelect, uHelicopterLimitations;

  {ufrmChaffOnBoardOnBoardPickList,uDBPattern, uDBBlind_Zone, uSonobuoySelect,
  ufrmResourceAllocationSummary, ufrmAvailableVehicle, ufrmMotionSummary,
  uVehicleSelect, ufrmAvailableSonobuoy,}

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSummaryVehicle.FormCreate(Sender: TObject);
begin
  FPlatInstList := TList.Create;
end;

procedure TfrmSummaryVehicle.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateVehicleData;

  with FSelectedVehicle.FData do
    btnApply.Enabled := Vehicle_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;

end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummaryVehicle.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmSummaryVehicle.btnApplyClick(Sender: TObject);
var
  second : Integer;
begin

  with FSelectedVehicle do
  begin

    if not CekInput then
    begin
      isOK := False;
      Exit;
    end;

    ValidationFormatInput;

    {$REGION ' General '}
    LastName := edtClass.Text;
    FData.Vehicle_Identifier := edtClass.Text;

    FData.Platform_Domain := cbbDomain.ItemIndex;
    FData.Platform_Category := cbbCategory.ItemIndex;
    FData.Platform_Type := cbbType.ItemIndex;
    FData.Detectability_Type := cbbDetectabilityType.ItemIndex;

    FData.Chaff_Capability := chkBarrier.Checked;
    FData.Nav_Light_Capable := chkNavigation.Checked;

    FData.HF_Link_Capable := chkHFLink.Checked;
    FData.UHF_Link_Capable := chkUHFLink.Checked;
    FData.HF_Voice_Capable := chkHFVoice.Checked;
    FData.UHF_Voice_Capable := chkUHFVoice.Checked;
    FData.SATCOM_Voice_Capable := chkSatcom.Checked;
    FData.UWT_Voice_Capable := chkUnderwater.Checked;
    FData.HF_MHS_Capable := chkHFMessageHandling.Checked;
    FData.UHF_MHS_Capable := chkUHFMessageHandling.Checked;
    FData.SATCOM_MHS_Capable := chkSATCOMMessageHAndling.Checked;

    FData.Rel_Comm_Antenna_Height := StrToFloat(edtAntennaHeight.Text);
    FData.Sub_Comm_Antenna_Height := StrToFloat(edtAntennaAboveWater.Text);
    FData.Max_Comm_Operating_Depth := StrToFloat(edtMaxCom.Text);

    FData.Damage_Capacity := trckbrDamageSustainability.Position;
    {$ENDREGION}

    {$REGION ' Physical '}
    FData.Length := StrToFloat(edtLengthDimensions.Text);
    FData.Width := StrToFloat(edtWidthDimensions.Text);
    FData.Height := StrToFloat(edtHeightDimensions.Text);
    FData.Engagement_Range := StrToFloat(edtEngagementRangeDimensions.Text);
    FData.Draft := StrToFloat(edtDraftDimensions.Text);

    FData.LSpeed_Acoustic_Intens := StrToFloat(edtMinSpeedAcousticPhysical.Text);
    FData.Below_Cav_Acoustic_Intens := StrToFloat(edtBelowCavitationAcousticPhysical.Text);
    FData.Above_Cav_Acoustic_Intens := StrToFloat(edtAboveCavitationAcousticPhysical.Text);
    FData.HSpeed_Acoustic_Intens := StrToFloat(edtMaxSpeedAcousticPhysical.Text);
    FData.Cavitation_Speed_Switch := StrToFloat(edtCavitationSpeedAcousticPhysical.Text);

    FData.Front_Radar_Cross := StrToFloat(edtFrontRadarPhysical.Text);
    FData.Side_Radar_Cross := StrToFloat(edtSideRadarPhysical.Text);

    FData.Front_Acoustic_Cross := StrToFloat(edtFrontAcousticPhysical.Text);
    FData.Side_Acoustic_Cross := StrToFloat(edtSideAcousticPhysical.Text);

    FData.Front_Visual_EO_Cross := StrToFloat(edtFrontVisualPhysical.Text);
    FData.Side_Visual_EO_Cross := StrToFloat(edtSideVisualPhysical.Text);

    FData.Front_Infrared_Cross := StrToFloat(edtFrontInfraredPhysical.Text);
    FData.Side_Infrared_Cross := StrToFloat(edtSideInfraredPhysical.Text);

    FData.Magnetic_Cross := StrToFloat(edtMagneticPhysical.Text);
    {$ENDREGION}

    {$REGION ' Characteristic '}
    FData.Air_Drop_Torpedo_Max_Altitude := StrToInt(edtMaxDropAltitude.Text);
    FData.Air_Drop_Torpedo_Min_Altitude := StrToInt(edtMinDropAltitude.Text);
    FData.Air_Drop_Torpedo_Max_Speed := StrToInt(edtMaxDropSpeed.Text);

    FData.HMS_Noise_Reduction_Factor := StrToFloat(edtHullMounted.Text);
    FData.TAS_Noise_Reduction_Factor := StrToFloat(edtTowedArray.Text);

    FData.Max_Sonobuoys_To_Monitor := StrToInt(edtMaxNumbToMOnitor.Text);
    FData.Sonobuoy_Deploy_Max_Altitude := StrToInt(edtMaxDeployAltitude.Text);
    FData.Sonobuoy_Deploy_Min_Altitude := StrToInt(edtMinDeployAltitude.Text);
    FData.Sonobuoy_Deploy_Max_Speed := StrToInt(edtMaxDeploySpeed.Text);
    {$ENDREGION}

    {$REGION ' POH modifier '}
    FData.AR_POH_Modifier := trckbrAntiRadiationMissile.Position / 100;
    FData.IR_POH_Modifier := trckbrInfraredMissile.Position / 100;
    FData.SARH_POH_Modifier := trckbrSemiActiveMissile.Position / 100;
    FData.TARH_POH_Modifier := trckbrTerminalActiveMissile.Position / 100;

    FData.Active_Acoustic_Tor_POH_Mod := trckbrActiveAcousticTorpedo.Position /100;
    FData.Passive_Acoustic_Tor_POH_Mod := trckbrPassiveAcousticTorpedo.Position /100;
    FData.Active_Passive_Tor_POH_Mod := trckbrActivePassiveAcousticTorpedo.Position /100;
    FData.Wake_Home_POH_Modifier := trckbrWakeHomingTorpedo.Position / 100;
    FData.Wire_Guide_POH_Modifier := trckbrWireGuidedTorpedo.Position / 100;

    FData.Acoustic_Mine_POH_Modifier := trckbrAcousticMine.Position / 100;
    FData.Impact_Mine_POH_Modifier := trckbrImpactMine.Position / 100;
    FData.Mag_Mine_POH_Modifier := trckbrMagneticMine.Position / 100;
    FData.Press_Mine_POH_Modifier := trckbrPressureMine.Position / 100;
    {$ENDREGION}

    {$REGION ' Assets '}
    TimeToSecond(edtRefuelTime.Text, second);
    FData.Readying_Time := second;

    TimeToSecond(edtLaunchAlertTime.Text, second);
    FData.Alert_State_Time := second;

    {Catatan : cbbBasingType tidak disimpan}
    {$ENDREGION}

    {$REGION ' Periscope '}
    FData.Periscope_Depth := StrToFloat(edtMaxOperatPeriscope.Text);
    FData.Periscope_Height_Above_Water := StrToFloat(edtHighAbovePeriscope.Text);
    FData.Periscope_Front_Radar_Xsection := StrToFloat(edtFrontRadar.Text);
    FData.Periscope_Side_Radar_Xsection := StrToFloat(edtSideRadar.Text);
    FData.Periscope_Front_IR_Xsection := StrToFloat(edtFrontInfrared.Text);
    FData.Periscope_Side_IR_Xsection := StrToFloat(edtSideInfrared.Text);
    FData.Periscope_Front_Vis_Xsection := StrToFloat(edtFrontVisual.Text);
    FData.Periscope_Side_Vis_Xsection := StrToFloat(edtSideVisual.Text);
    {$ENDREGION}

    {$REGION ' Notes '}
    FNote.Notes := mmoNotes.Text;
    {$ENDREGION}

    if FData.Vehicle_Index = 0 then
    begin
      if dmTTT.InsertVehicleDef(FData) then
      begin
        dmTTT.InsertNoteStorage(1, FData.Vehicle_Index, FNote);
        ShowMessage('Data has been saved');
      end;
    end
    else
    begin
      if dmTTT.UpdateVehicleDef(FData) then
      begin
        dmTTT.UpdateNoteStorage(FData.Vehicle_Index, FNote);
        ShowMessage('Data has been updated');
      end;
    end;
  end;

  UpdatePlatformInstanceTools;
  UpdateVehicleAssetTools;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummaryVehicle.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

{$REGION ' General '}

procedure TfrmSummaryVehicle.InsertMemberOfClassClick(Sender: TObject);
var
  i, chkSpace, numSpace: Integer;
  piIdent : TPlatform_Instance_Identifier;

begin

  {$REGION ' Jika inputan class name kosong '}
  if edtName.Text = '' then
  begin
    ShowMessage('Please insert platform instance name');
    Exit;
  end;
  {$ENDREGION}

  {$REGION ' Jika berisi spasi semua '}
  if Copy(edtName.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtName.Text);
    numSpace := 0;

    for i := 1 to chkSpace do
    begin
      if edtName.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;

    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another platform instance name');
      Exit;
    end;
  end;
  {$ENDREGION}

  {$REGION ' Jika Platform Instance Name sudah ada '}
  for i := 0 to FPlatInstList.Count - 1 do
  begin
    piIdent := FPlatInstList.Items[i];

    if edtName.Text = piIdent.FData.Instance_Identifier then
    begin
      ShowMessage('Please use another platform instance name');
      Exit;
    end
  end;
  {$ENDREGION}

  piIdent := TPlatform_Instance_Identifier.Create;
  with piIdent do
  begin
    FData.Vehicle_Index := FSelectedVehicle.FData.Vehicle_Index;
    FData.Instance_Identifier := edtName.Text;
    dmTTT.InsertPlatformInstanceIdentifier(FData);
  end;
  piIdent.Free;

  edtName.Text := '';
  UpdatePlatformInstanceIdentifierList;

  btnCancel.Enabled := False;
end;

procedure TfrmSummaryVehicle.RemoveMemberOfClassClick(Sender: TObject);
begin
  if lstName.ItemIndex = -1 then
    Exit;

  with FSelectedPIIdent.FData do
    dmTTT.DeletePlatformInstanceIdentifier(2, Instance_Ident_Index);

  UpdatePlatformInstanceIdentifierList;
end;

procedure TfrmSummaryVehicle.ShowbtnInsertClick(Sender: TObject);
begin
  edtName.Visible := True;
  btnAdd.Visible := True;
end;

procedure TfrmSummaryVehicle.lstNameClick(Sender: TObject);
begin
  if lstName.ItemIndex = -1 then
    Exit;

  FSelectedPIIdent := TPlatform_Instance_Identifier(lstName.Items.Objects[lstName.ItemIndex]);
end;

procedure TfrmSummaryVehicle.cbbDomainChange(Sender: TObject);
begin
  UpdateCategoryAndTypeItems(cbbDomain.ItemIndex);
  cbbCategory.ItemIndex := 0;
  cbbType.ItemIndex := 0;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryVehicle.trckbrGeneralChange(Sender: TObject);
begin
  edtDamageSustainability.Text := IntToStr(TTrackBar(Sender).Position);
  btnApply.Enabled := True;
end;

procedure TfrmSummaryVehicle.edtGeneralChange(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then
    TEdit(Sender).Text := '0';

  if (StrToInt(TEdit(Sender).Text) > 100000) then
    TEdit(Sender).Text := '100000';

  trckbrDamageSustainability.Position := StrToInt(TEdit(Sender).Text);

  btnApply.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Physical '}

procedure TfrmSummaryVehicle.btnMotionCharacteristicClick(Sender: TObject);
begin
  frmMotionPickList := TfrmMotionPickList.Create(Self);
  try
    with frmMotionPickList do
    begin
      SelectedMotionId := FSelectedVehicle.FData.Motion_Characteristics;
      ShowModal;
      FSelectedVehicle.FData.Motion_Characteristics := SelectedMotionId;
    end;
  finally
    frmMotionPickList.Free;
  end;
  
  UpdateMotionData;
  btnApply.Enabled := True;
end;

{$ENDREGION}

{$REGION ' POH Modifier '}

procedure TfrmSummaryVehicle.trckbrPOHModifierChange(Sender: TObject);
begin

  case TTrackBar(Sender).Tag of
    0: edtAntiRadiationMissile.Text := IntToStr(TTrackBar(Sender).Position);
    1: edtInfraredHomingMissile.Text := IntToStr(TTrackBar(Sender).Position);
    2: edtSemiActiveMissile.Text := IntToStr(TTrackBar(Sender).Position);
    3: edtTerminalActiveMissile.Text := IntToStr(TTrackBar(Sender).Position);

    4: edtActiveAcousticTorpedo.Text := IntToStr(TTrackBar(Sender).Position);
    5: edtPassiveAcousticTorpedo.Text := IntToStr(TTrackBar(Sender).Position);
    6: edtActivePassiveAcousticTorpedo.Text := IntToStr(TTrackBar(Sender).Position);
    7: edtWakeHomingTorpedo.Text := IntToStr(TTrackBar(Sender).Position);
    8: edtWireGuidedTorpedo.Text := IntToStr(TTrackBar(Sender).Position);

    9: edtAcousticMine.Text := IntToStr(TTrackBar(Sender).Position);
    10: edtImpactMine.Text := IntToStr(TTrackBar(Sender).Position);
    11: edtMagneticMine.Text := IntToStr(TTrackBar(Sender).Position);
    12: edtPressureMine.Text := IntToStr(TTrackBar(Sender).Position);
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryVehicle.edtPOHModifierChange(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then
    TEdit(Sender).Text := '0';

  if (StrToInt(TEdit(Sender).Text) > 100) then
    TEdit(Sender).Text := '100';

  if TEdit(Sender).Name = 'edtAntiRadiationMissile' then
    trckbrAntiRadiationMissile.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtInfraredHomingMissile' then
    trckbrInfraredMissile.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtSemiActiveMissile' then
    trckbrSemiActiveMissile.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtTerminalActiveMissile' then
    trckbrTerminalActiveMissile.Position := StrToInt(TEdit(Sender).Text)

  else if TEdit(Sender).Name = 'edtActiveAcousticTorpedo' then
    trckbrActiveAcousticTorpedo.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtPassiveAcousticTorpedo' then
    trckbrPassiveAcousticTorpedo.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtActivePassiveAcousticTorpedo' then
    trckbrActivePassiveAcousticTorpedo.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtWakeHomingTorpedo' then
    trckbrWakeHomingTorpedo.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtWireGuidedTorpedo' then
    trckbrWireGuidedTorpedo.Position := StrToInt(TEdit(Sender).Text)

  else if TEdit(Sender).Name = 'edtAcousticMine' then
    trckbrAcousticMine.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtImpactMine' then
    trckbrImpactMine.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtMagneticMine' then
    trckbrMagneticMine.Position := StrToInt(TEdit(Sender).Text)
  else if TEdit(Sender).Name = 'edtPressureMine' then
    trckbrPressureMine.Position := StrToInt(TEdit(Sender).Text);

  btnApply.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Assets '}

procedure TfrmSummaryVehicle.btnRadarClick(Sender: TObject);
begin
  frmRadarOnBoardPickList := TfrmRadarOnBoardPickList.Create(Self);
  try
    with frmRadarOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
    AfterClose := frmRadarOnBoardPickList.AfterClose;
  finally
    frmRadarOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnSonarClick(Sender: TObject);
begin
  frmSonarOnBoardPickList := TfrmSonarOnBoardPickList.Create(Self);
  try
    with frmSonarOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
    AfterClose := frmSonarOnBoardPickList.AfterClose;
  finally
    frmSonarOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnESMClick(Sender: TObject);
begin
  frmESMOnBoardPickList := TfrmESMOnBoardPickList.Create(Self);
  try
    with frmESMOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmESMOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnEODClick(Sender: TObject);
begin
  frmEODOnBoardPickList := TfrmEODOnBoardPickList.Create(Self);
  try
    with frmEODOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmEODOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnSonobuoyClick(Sender: TObject);
begin
  frmSonobuoyOnBoardPickList := TfrmSonobuoyOnBoardPickList.Create(Self);
  try
    with frmSonobuoyOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmSonobuoyOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnMADClick(Sender: TObject);
begin
  frmMADOnBoardPickList := TfrmMADOnBoardPickList.Create(Self);
  try
    with frmMADOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmMADOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnIFFClick(Sender: TObject);
begin
  frmIFFOnBoardPickList := TfrmIFFOnBoardPickList.Create(Self);
  try
    with frmIFFOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmIFFOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnVisualDetectorClick(Sender: TObject);
begin
  frmVisualOnBoardPickList := TfrmVisualOnBoardPickList.Create(Self);
  try
    with frmVisualOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmVisualOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;


procedure TfrmSummaryVehicle.btnMissilesClick(Sender: TObject);
begin
  frmMissileOnBoardPickList := TfrmMissileOnBoardPickList.Create(Self);
  try
    with frmMissileOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmMissileOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnTorpedosClick(Sender: TObject);
begin
  frmTorpedoOnBoardPickList := TfrmTorpedoOnBoardPickList.Create(Self);
  try
    with frmTorpedoOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmTorpedoOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnMinesClick(Sender: TObject);
begin
  frmMineOnBoardPickList := TfrmMineOnBoardPickList.Create(Self);
  try
    with frmMineOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmMineOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnBomb_DepthChargesClick(Sender: TObject);
begin
  frmBombOnBoardPickList := TfrmBombOnBoardPickList.Create(Self);
  try
    with frmBombOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmBombOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnGunsClick(Sender: TObject);
begin
  frmGunOnBoardPickList := TfrmGunOnBoardPickList.Create(Self);
  try
    with frmGunOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmGunOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;


procedure TfrmSummaryVehicle.btnAccousticDecoyClick(Sender: TObject);
begin
  frmAccousticDecoyOnBoardPickList := TfrmAccousticDecoyOnBoardPickList.Create(Self);
  try
    with frmAccousticDecoyOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmAccousticDecoyOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnAirBubbleClick(Sender: TObject);
begin
  frmAirBubbleOnBoardPickList := TfrmAirBubbleOnBoardPickList.Create(Self);
  try
    with frmAirBubbleOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmAirBubbleOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnChaffClick(Sender: TObject);
begin
  frmChaffAssets := TfrmChaffAssets.Create(Self);
  try
    with frmChaffAssets do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmChaffAssets.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnInfraredDecoyClick(Sender: TObject);
begin
  frmInfraredDecoyOnBoardPickList := TfrmInfraredDecoyOnBoardPickList.Create(Self);
  try
    with frmInfraredDecoyOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmInfraredDecoyOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnFloatingDecoyClick(Sender: TObject);
begin
  frmFloatingDecoyOnBoardPickList := TfrmFloatingDecoyOnBoardPickList.Create(Self);
  try
    with frmFloatingDecoyOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmFloatingDecoyOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnDefensiveJummerClick(Sender: TObject);
begin
  frmDefensiveJammerPickList := TfrmDefensiveJammerPickList.Create(Self);
  try
    with frmDefensiveJammerPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmDefensiveJammerPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnTowedJummer_DecoyClick(Sender: TObject);
begin
  frmTowedJammerDecoyOnBoardPickList := TfrmTowedJammerDecoyOnBoardPickList.Create(Self);
  try
    with frmTowedJammerDecoyOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmTowedJammerDecoyOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;

procedure TfrmSummaryVehicle.btnRadarJummerClick(Sender: TObject);
begin
  frmRadarJammerOnBoardPickList := TfrmRadarJammerOnBoardPickList.Create(Self);
  try
    with frmRadarJammerOnBoardPickList do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmRadarJammerOnBoardPickList.Free;
  end;

  btnCancel.Enabled := not AfterClose;
  btnApply.Enabled := AfterClose;
end;


procedure TfrmSummaryVehicle.btnEmbarkedPlatformsClick(Sender: TObject);
begin
  frmEmbarkedSelect := TfrmEmbarkedSelect.Create(Self);
  try
    with frmEmbarkedSelect do
    begin
      HostVehicle := FSelectedVehicle;
      ShowModal;
      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmEmbarkedSelect.Free;
  end;
  
end;

procedure TfrmSummaryVehicle.btnHelicopterLimitationsClick(Sender: TObject);
begin
  frmHelicopterLimitations := TfrmHelicopterLimitations.Create(Self);
  try
    with frmHelicopterLimitations do
    begin
      SelectedVehicle := FSelectedVehicle;
      ShowModal;
    end;
  finally
    frmHelicopterLimitations.Free;
  end;
  
end;

{$ENDREGION}

procedure TfrmSummaryVehicle.UpdateMotionData;
var
  motion : TMotion_Characteristics;
begin
  with FSelectedVehicle.FData do
    dmTTT.GetMotionCharacteristicDef(Motion_Characteristics, motion);

  if Assigned(motion) then
    edtMotionCharacterictic.Text := motion.FData.Motion_Identifier
  else
    edtMotionCharacterictic.Text := '(None)';
end;

procedure TfrmSummaryVehicle.UpdatePlatformInstanceIdentifierList;
var
  i : Integer;
  platInstIdent : TPlatform_Instance_Identifier;
begin
  lstName.Items.Clear;

  with FSelectedVehicle.FData do
    dmTTT.GetPlatformInstanceIdentifier(Vehicle_Index, FPlatInstList);

  for i := 0 to FPlatInstList.Count - 1 do
  begin
    platInstIdent := FPlatInstList.Items[i];
    lstName.Items.AddObject(platInstIdent.FData.Instance_Identifier, platInstIdent);
  end;
end;

procedure TfrmSummaryVehicle.UpdateCategoryAndTypeItems(const aDomain: Byte);
begin
  case aDomain of
    0: //Air
    begin
      cbbCategory.Items.Clear;
      cbbCategory.Items.Add('Military');
      cbbCategory.Items.Add('Weapon');
      cbbCategory.Items.Add('Civilian');
      cbbCategory.Items.Add('Other');

      cbbType.Items.Clear;
      cbbType.Items.Add('Fixed Wing, Fighter');
      cbbType.Items.Add('Fixed Wing, Strike/Bomber');
      cbbType.Items.Add('Fixed Wing, ASW/MP');
      cbbType.Items.Add('Rotary Wing, ASW');
      cbbType.Items.Add('Rotary Wing, Attack');
      cbbType.Items.Add('Fixed Wing, EW');
      cbbType.Items.Add('Fixed - Surveillance/AEW');
      cbbType.Items.Add('Fixed - Reconnaissance');
      cbbType.Items.Add('Rotary Wing - Surveillance/AEW');
      cbbType.Items.Add('Rotary Wing - Reconnaissance');
      cbbType.Items.Add('Seaplane');
      cbbType.Items.Add('Missile');
      cbbType.Items.Add('Other');
    end;
    1: //Surface
    begin
      cbbCategory.Items.Clear;
      cbbCategory.Items.Add('Combatant');
      cbbCategory.Items.Add('Non-combatant');
      cbbCategory.Items.Add('Non-naval');
      cbbCategory.Items.Add('Other');

      cbbType.Items.Clear;
      cbbType.Items.Add('Frigate, Guided Missile (FFG)');
      cbbType.Items.Add('Destroyer, Guided Missile (DDG)');
      cbbType.Items.Add('Cruiser, Guided Missile (CG/CGN)');
      cbbType.Items.Add('Aircraft Carrier (CV/CVN)');
      cbbType.Items.Add('Patrol Craft (PT/PTG)');
      cbbType.Items.Add('Mine Warfare');
      cbbType.Items.Add('Auxiliary');
      cbbType.Items.Add('Merchant');
      cbbType.Items.Add('Utility Vessel');
      cbbType.Items.Add('Destroyer (DD)');
      cbbType.Items.Add('Frigate (FF)');
      cbbType.Items.Add('Amphibious Warfare');
      cbbType.Items.Add('Other');
    end;
    2: //Subsurface
    begin
      cbbCategory.Items.Clear;
      cbbCategory.Items.Add('Submarine');
      cbbCategory.Items.Add('Weapon');
      cbbCategory.Items.Add('Non-submarine');
      cbbCategory.Items.Add('Other');

      cbbType.Items.Clear;
      cbbType.Items.Add('Diesel, Attack (SSK)');
      cbbType.Items.Add('Nuclear, Attack (SSN)');
      cbbType.Items.Add('Nuclear, Guided Missile (SSGN)');
      cbbType.Items.Add('Diesel, Guided Missile (SSG)');
      cbbType.Items.Add('Nuclear, Ballistic Missile (SSBN)');
      cbbType.Items.Add('Other');
    end;
    3: //Land
    begin
      cbbCategory.Items.Clear;
      cbbCategory.Items.Add('Amphibious');

      cbbType.Items.Clear;
      cbbType.Items.Add('Platoon, Armour');
      cbbType.Items.Add('Platoon, Infantry');
      cbbType.Items.Add('Battery, Anti-aircraft Artillery');
      cbbType.Items.Add('Battery, Surface-to-Air Missile');
      cbbType.Items.Add('Battery, Coastal Defence Missile');
      cbbType.Items.Add('Battery, Coastal Defence Gun');
      cbbType.Items.Add('Airfield');
      cbbType.Items.Add('Port');
      cbbType.Items.Add('Other');
    end;
    4: //Amphibious
    begin
      cbbCategory.Items.Clear;
      cbbCategory.Items.Add('Amphibious');

      cbbType.Items.Clear;
      cbbType.Items.Add('Special Craft');
    end;
  end;
end;


procedure TfrmSummaryVehicle.UpdatePlatformInstanceTools;
begin
  edtName.Text := '';

  with FSelectedVehicle.FData do
  begin
    edtName.Enabled := Vehicle_Index <> 0;
    btnAdd.Enabled := Vehicle_Index <> 0;
    imgRemove.Enabled := Vehicle_Index <> 0;
  end;
end;

procedure TfrmSummaryVehicle.UpdateVehicleAssetTools;
begin
  with FSelectedVehicle do
  begin
    btnRadar.Enabled := FData.Vehicle_Index <> 0;
    btnMAD.Enabled := FData.Vehicle_Index <> 0;
    btnESM.Enabled := FData.Vehicle_Index <> 0;
    btnSonar.Enabled := FData.Vehicle_Index <> 0;
    btnElectroOpticalDetector.Enabled := FData.Vehicle_Index <> 0;
    btnIFF.Enabled := FData.Vehicle_Index <> 0;
    btnVisualDetector.Enabled := FData.Vehicle_Index <> 0;
    btnSonobuoy.Enabled := FData.Vehicle_Index <> 0;
    btnMissiles.Enabled := FData.Vehicle_Index <> 0;
    btnTorpedos.Enabled := FData.Vehicle_Index <> 0;
    btnMines.Enabled := FData.Vehicle_Index <> 0;
    btnGuns.Enabled := FData.Vehicle_Index <> 0;
    btnBomb_DepthCharges.Enabled := FData.Vehicle_Index <> 0;
    btnRadarJummer.Enabled := FData.Vehicle_Index <> 0;
    btnAirBubble.Enabled := FData.Vehicle_Index <> 0;
    btnAccousticDecoy.Enabled := FData.Vehicle_Index <> 0;
    btnDefensiveJummer.Enabled := FData.Vehicle_Index <> 0;
    btnTowedJummer_Decoy.Enabled := FData.Vehicle_Index <> 0;
    btnFloatingDecoy.Enabled := FData.Vehicle_Index <> 0;
    btnChaff.Enabled := FData.Vehicle_Index <> 0;
    btnInfraredDecoy.Enabled := FData.Vehicle_Index <> 0;

    btnEmbarkedPlatforms.Enabled := FData.Vehicle_Index <> 0;
    btnHelicopterLimitations.Enabled := FData.Vehicle_Index <> 0;
  end;
end;

procedure TfrmSummaryVehicle.UpdateVehicleData;
var
  i : Integer;
  piIdent : TPlatform_Instance_Identifier;
  hostPlatList : TList;
  hostPlat : THosted_Platform;
  timeStr : string;

begin
  with FSelectedVehicle do
  begin
    if FData.Vehicle_Index = 0 then
      edtClass.Text := '(Unnamed)'
    else
      edtClass.Text := FData.Vehicle_Identifier;

    {$REGION ' General '}
    LastName := edtClass.Text;

    UpdatePlatformInstanceTools;
    UpdatePlatformInstanceIdentifierList;
    UpdateCategoryAndTypeItems(FData.Platform_Domain);

    cbbDomain.ItemIndex := FData.Platform_Domain;
    cbbCategory.ItemIndex := FData.Platform_Category;
    cbbType.ItemIndex := FData.Platform_Type;
    cbbDetectabilityType.ItemIndex := FData.Detectability_Type;

    chkBarrier.Checked := FData.Chaff_Capability;
    chkNavigation.Checked := FData.Nav_Light_Capable;

    chkHFLink.Checked := FData.HF_Link_Capable;
    chkUHFLink.Checked := FData.UHF_Link_Capable;
    chkHFVoice.Checked := FData.HF_Voice_Capable;
    chkUHFVoice.Checked := FData.UHF_Voice_Capable;
    chkSatcom.Checked := FData.SATCOM_Voice_Capable;
    chkUnderwater.Checked := FData.UWT_Voice_Capable;
    chkHFMessageHandling.Checked := FData.HF_MHS_Capable;
    chkUHFMessageHandling.Checked := FData.UHF_MHS_Capable;
    chkSATCOMMessageHAndling.Checked := FData.SATCOM_MHS_Capable;

    edtAntennaHeight.Text := FormatFloat('0', FData.Rel_Comm_Antenna_Height);
    edtAntennaAboveWater.Text := FormatFloat('0', FData.Sub_Comm_Antenna_Height);
    edtMaxCom.Text := FormatFloat('0', FData.Max_Comm_Operating_Depth);

    trckbrDamageSustainability.Position := FData.Damage_Capacity;
//    edtDamage.Text := IntToStr(FData.Damage_Capacity);
//
//    edtName.Visible := False;
//    btnAdd.Visible := False;
    {$ENDREGION}

    {$REGION ' Physical '}
    UpdateMotionData;

    edtLengthDimensions.Text := FormatFloat('0', FData.Length);
    edtWidthDimensions.Text := FormatFloat('0', FData.Width);
    edtHeightDimensions.Text := FormatFloat('0', FData.Height);
    edtEngagementRangeDimensions.Text := FormatFloat('0', FData.Engagement_Range);
    edtDraftDimensions.Text := FormatFloat('0', FData.Draft);

    edtMinSpeedAcousticPhysical.Text := FormatFloat('0.0', FData.LSpeed_Acoustic_Intens);
    edtBelowCavitationAcousticPhysical.Text := FormatFloat('0.0', FData.Below_Cav_Acoustic_Intens);
    edtAboveCavitationAcousticPhysical.Text := FormatFloat('0.0', FData.Above_Cav_Acoustic_Intens);
    edtMaxSpeedAcousticPhysical.Text := FormatFloat('0.0', FData.HSpeed_Acoustic_Intens);
    edtCavitationSpeedAcousticPhysical.Text := FormatFloat('0.00', FData.Cavitation_Speed_Switch);

    edtFrontRadarPhysical.Text := FormatFloat('0.00', FData.Front_Radar_Cross);
    edtSideRadarPhysical.Text := FormatFloat('0.00', FData.Side_Radar_Cross);

    edtFrontAcousticPhysical.Text := FormatFloat('0.00', FData.Front_Acoustic_Cross);
    edtSideAcousticPhysical.Text := FormatFloat('0.00', FData.Side_Acoustic_Cross);

    edtFrontVisualPhysical.Text := FormatFloat('0.0', FData.Front_Visual_EO_Cross);
    edtSideVisualPhysical.Text := FormatFloat('0.0', FData.Side_Visual_EO_Cross);

    edtFrontInfraredPhysical.Text := FormatFloat('0.0', FData.Front_Infrared_Cross);
    edtSideInfraredPhysical.Text := FormatFloat('0.0', FData.Side_Infrared_Cross);

    edtMagneticPhysical.Text := FormatFloat('0.00', FData.Magnetic_Cross);
    {$ENDREGION}

    {$REGION ' Characteristic '}
    edtMaxDropAltitude.Text := IntToStr(FData.Air_Drop_Torpedo_Max_Altitude);
    edtMinDropAltitude.Text := IntToStr(FData.Air_Drop_Torpedo_Min_Altitude);
    edtMaxDropSpeed.Text := IntToStr(FData.Air_Drop_Torpedo_Max_Speed);

    edtHullMounted.Text := FormatFloat('0.0', FData.HMS_Noise_Reduction_Factor);
    edtTowedArray.Text := FormatFloat('0.0', FData.TAS_Noise_Reduction_Factor);

    edtMaxNumbToMOnitor.Text := IntToStr(FData.Max_Sonobuoys_To_Monitor);
    edtMaxDeployAltitude.Text := IntToStr(FData.Sonobuoy_Deploy_Max_Altitude);
    edtMinDeployAltitude.Text := IntToStr(FData.Sonobuoy_Deploy_Min_Altitude);
    edtMaxDeploySpeed.Text := IntToStr(FData.Sonobuoy_Deploy_Max_Speed);
    {$ENDREGION}

    {$REGION ' POH modifier '}
    trckbrAntiRadiationMissile.Position := Round(FData.AR_POH_Modifier * 100);
    trckbrInfraredMissile.Position := Round(FData.IR_POH_Modifier * 100);
    trckbrSemiActiveMissile.Position := Round(FData.SARH_POH_Modifier * 100);
    trckbrTerminalActiveMissile.Position := Round(FData.TARH_POH_Modifier * 100);

    trckbrActiveAcousticTorpedo.Position := Round(FData.Active_Acoustic_Tor_POH_Mod * 100);
    trckbrPassiveAcousticTorpedo.Position := Round(FData.Passive_Acoustic_Tor_POH_Mod * 100);
    trckbrActivePassiveAcousticTorpedo.Position := Round(FData.Active_Passive_Tor_POH_Mod * 100);
    trckbrWakeHomingTorpedo.Position := Round(FData.Wake_Home_POH_Modifier * 100);
    trckbrWireGuidedTorpedo.Position := Round(FData.Wire_Guide_POH_Modifier * 100);

    trckbrAcousticMine.Position := Round(FData.Acoustic_Mine_POH_Modifier * 100);
    trckbrImpactMine.Position := Round(FData.Impact_Mine_POH_Modifier * 100);
    trckbrMagneticMine.Position := Round(FData.Mag_Mine_POH_Modifier * 100);
    trckbrPressureMine.Position := Round(FData.Press_Mine_POH_Modifier * 100);
    {$ENDREGION}

    {$REGION ' Assets '}
    UpdateVehicleAssetTools;

    hostPlatList := TList.Create;
    dmTTT.GetHostedPlatform(FSelectedVehicle.FData.Vehicle_Index, hostPlatList);

    cbbBasingType.ItemIndex := GetBasingType(hostPlatList);

    for i := hostPlatList.Count - 1 downto 0 do
    begin
      hostPlat := hostPlatList.Items[i];
      hostPlat.Free;
    end;

    hostPlatList.Free;

    SecondToTime(FData.Readying_Time, timeStr);
    edtRefuelTime.Text := timeStr;

    SecondToTime(Round(FData.Alert_State_Time), timeStr);
    edtLaunchAlertTime.Text := timeStr;

    {$ENDREGION}

    {$REGION ' Periscope '}
    edtMaxOperatPeriscope.Text := FormatFloat('0', FData.Periscope_Depth);
    edtHighAbovePeriscope.Text := FormatFloat('0', FData.Periscope_Height_Above_Water);
    edtFrontRadar.Text := FormatFloat('0.00', FData.Periscope_Front_Radar_Xsection);
    edtSideRadar.Text := FormatFloat('0.00', FData.Periscope_Side_Radar_Xsection);
    edtFrontInfrared.Text := FormatFloat('0.0', FData.Periscope_Front_IR_Xsection);
    edtSideInfrared.Text := FormatFloat('0.0', FData.Periscope_Side_IR_Xsection);
    edtFrontVisual.Text := FormatFloat('0.0', FData.Periscope_Front_Vis_Xsection);
    edtSideVisual.Text := FormatFloat('0.0', FData.Periscope_Side_Vis_Xsection);
    {$ENDREGION}

    {$REGION ' Notes '}
    mmoNotes.Text := FNote.Notes;
    {$ENDREGION}

  end;
end;

function TfrmSummaryVehicle.GetBasingType(const aList: TList): Integer;
var
  i, rotaryCount, fixedCount, surfaceCount, subsurfaceCount : Integer;
  hostedPlat : THosted_Platform;
begin
  rotaryCount := 0;
  fixedCount := 0;
  surfaceCount := 0;
  subsurfaceCount := 0;

  for i := 0 to aList.Count - 1 do
  begin
    hostedPlat := aList.Items[i];

    case hostedPlat.FVehicle.Platform_Domain of
      0: //air
      begin
        case hostedPlat.FVehicle.Platform_Type of
          0,1,2,5,6,7: Inc(fixedCount);
          3,4,8,9: Inc(rotaryCount);
        end;
      end;
      1: Inc(surfaceCount); //surface
      2: Inc(subsurfaceCount); //subsurface
    end;
  end;

  if (rotaryCount > 0) and (fixedCount = 0) and (surfaceCount = 0) and
    (subsurfaceCount = 0) then
    Result := 1
  else if ((rotaryCount > 0) or (fixedCount > 0)) and (surfaceCount = 0) and
    (subsurfaceCount = 0) then
    Result := 2
  else if (rotaryCount = 0) and (fixedCount = 0) and
    ((surfaceCount > 0) or (subsurfaceCount > 0)) then
    Result := 3
  else if (rotaryCount > 0) and (fixedCount = 0) and
    ((surfaceCount > 0) or (subsurfaceCount > 0)) then
    Result := 4
  else if (rotaryCount > 0) and (fixedCount > 0) and (surfaceCount > 0) and
    (subsurfaceCount > 0) then
    Result := 5
  else
    Result := 0;
end;

function TfrmSummaryVehicle.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  {Jika inputan class name kosong}
  if (edtClass.Text = '')then
  begin
    ShowMessage('Please insert class name');
    Exit;
  end;

  {Jika berisi spasi semua}
  if Copy(edtClass.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtClass.Text);
    numSpace := 0;

    for i := 1 to chkSpace do
    begin
      if edtClass.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;

    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetvehicleDef(edtClass.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedVehicle.FData.Vehicle_Index = 0 then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end
    else if LastName <> edtClass.Text then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  {Jika inputan Motion Characteristic masih kosong}
  if FSelectedVehicle.FData.Motion_Characteristics = 0 then
  begin
    ShowMessage('Motion Characteristics not selected');
    Exit;
  end;

  Result := True;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmSummaryVehicle.GetNumberOfKoma(s: string): Boolean;
var
  a, i : Integer;
begin
  Result := False;
  a := 0;

  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
      a := a + 1;
  end;

  if a > 0 then
    Result := True;
end;

procedure TfrmSummaryVehicle.edtNumeralKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetNumberOfKoma(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if Key = #13 then
  begin
    if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    value := StrToFloat(TEdit(Sender).Text);

    case TEdit(Sender).Tag of
      0: TEdit(Sender).Text := FormatFloat('0', value);
      1: TEdit(Sender).Text := FormatFloat('0.0', value);
      2: TEdit(Sender).Text := FormatFloat('0.00', value);
      3: TEdit(Sender).Text := FormatFloat('0.000', value);
    end;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSummaryVehicle.CheckBoxDataClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummaryVehicle.ComboBoxDataChange(Sender: TObject);
begin
  if TComboBox(Sender).ItemIndex = -1 then
    TComboBox(Sender).ItemIndex := 0;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryVehicle.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummaryVehicle.ValidationFormatInput;
var
  i, j: Integer;
  value : Double;
  hStr, mStr, sStr, hmSeparator, msSeparator : string;
  h, m, s : Integer;
  aTimeStr : string;
  flag : Boolean;

begin
  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TEdit then
    begin
      if TEdit(Components[i]).Tag = 4 then
        continue;

      if TEdit(Components[i]).Text = '' then
        TEdit(Components[i]).Text := '0';

      value := StrToFloat(TEdit(Components[i]).Text);

      case TEdit(Components[i]).Tag of
        0: TEdit(Components[i]).Text := FormatFloat('0', value);
        1: TEdit(Components[i]).Text := FormatFloat('0.0', value);
        2: TEdit(Components[i]).Text := FormatFloat('0.00', value);
        3: TEdit(Components[i]).Text := FormatFloat('0.000', value);
      end;

      Continue;
    end;

    if Components[i] is TMaskEdit then
    begin
      aTimeStr := TMaskEdit(Components[i]).Text;
      flag := False;

      hStr := Copy(aTimeStr, 1, 2);
      TryStrToInt(hStr, h);

      mStr := Copy(aTimeStr, 4, 2);
      TryStrToInt(mStr, m);

      sStr := Copy(aTimeStr, 7, 2);
      TryStrToInt(sStr, s);

      if h > 23 then
      begin
        hStr := '23';
        flag := True;
      end;

      if m > 59 then
      begin
        mStr := '59';
        flag := True;
      end;

      if s > 59 then
      begin
        sStr := '59';
        flag := True;
      end;

      if flag then
        TMaskEdit(Components[i]).Text := hStr + ':' + mStr + ':' + sStr;

    end;
  end;
end;

{$ENDREGION}

end.
