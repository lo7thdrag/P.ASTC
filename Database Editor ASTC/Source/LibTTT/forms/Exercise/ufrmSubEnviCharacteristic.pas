unit ufrmSubEnviCharacteristic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, uDBAsset_GameEnvironment, urotWheel,
  uDBAssets_SubAreaEnviroDefinition, Buttons, Mask, Vcl.Imaging.pngimage;

type
  TfrmSubEnviCharacteristic = class(TForm)
    pnl1Title: TPanel;
    lblClass: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsAboveWater: TTabSheet;
    grpVisibilityFactors: TGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edtDayVis: TEdit;
    edtNightVis: TEdit;
    trckbrDaytimeVisual: TTrackBar;
    trckbrNighttimeVisual: TTrackBar;
    trckbrDaytimeInfra: TTrackBar;
    trckbrNighttimeInfra: TTrackBar;
    edtNightInfra: TEdit;
    edtDayInfra: TEdit;
    edtTwilight: TEdit;
    medtSunrise: TMaskEdit;
    medtSunset: TMaskEdit;
    medtTwilight: TMaskEdit;
    grpAttenuationFactors: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    edtAttenRainRate: TEdit;
    edtAttenCloud: TEdit;
    trckbrAttenRainRate: TTrackBar;
    trckbrAttenCloud: TTrackBar;
    edtAirTemp: TEdit;
    edtBarometricPressure: TEdit;
    edtCloudBaseHeight: TEdit;
    grpWind: TGroupBox;
    txt1: TStaticText;
    txt3: TStaticText;
    edtAboveSpeed: TEdit;
    edtAboveDirection: TEdit;
    txt2: TStaticText;
    txt4: TStaticText;
    pnlWheel: TPanel;
    grpHFRangeGap: TGroupBox;
    txt5: TStaticText;
    txt7: TStaticText;
    edtAboveHFStart: TEdit;
    edtAboveHFEnd: TEdit;
    txt6: TStaticText;
    txt8: TStaticText;
    tsSurfaceAndSubsurface: TTabSheet;
    grbOceanCurrent: TGroupBox;
    lblSpeed: TStaticText;
    lblDirection: TStaticText;
    edtSpeed: TEdit;
    edtDirection: TEdit;
    lblKnots: TStaticText;
    lblDeg: TStaticText;
    pnlOC: TPanel;
    grbSoundVelocity: TGroupBox;
    btnPositive: TSpeedButton;
    btnNegative: TSpeedButton;
    btnPosOverNeg: TSpeedButton;
    btnNegOverPos: TSpeedButton;
    lbSoundVelocity: TStaticText;
    grbSurfaceDucting: TGroupBox;
    lblUpperLimitSurface: TStaticText;
    lblLowerLimitSurface: TStaticText;
    edtUpperLimitSurfaceDucting: TEdit;
    edtLowerLimitSurfaceDucting: TEdit;
    lblFeetUpperSurfaceDucting: TStaticText;
    lblFeetLowerSurfaceDucting: TStaticText;
    grbSubsurfaceDucting: TGroupBox;
    lblUpperLimitSubsurface: TStaticText;
    lblLowerLimitSubsurface: TStaticText;
    edtUpperLimitSubsurfaceDucting: TEdit;
    edtLowerLimitSubsurfaceDucting: TEdit;
    lblFeetUpperSubsurfaceDucting: TStaticText;
    lblFeetLowerSubsurfaceDucting: TStaticText;
    grbSpeedOfSound: TGroupBox;
    lblSurface: TStaticText;
    edtSurface: TEdit;
    lblFeetPerSec1: TStaticText;
    lblLayer: TStaticText;
    edtLayer: TEdit;
    lblFeetPerSec2: TStaticText;
    lblBottom: TStaticText;
    edtBottom: TEdit;
    lblFeetPerSec3: TStaticText;
    lblShippingRate: TStaticText;
    cbbShippingRate: TComboBox;
    lblDepthOfThermalLayer: TStaticText;
    edtDepthOfThermalLayer: TEdit;
    lblFeet: TStaticText;
    lblSeaState: TStaticText;
    trckbrSeaState: TTrackBar;
    edtSeaState: TEdit;
    lblStillSeaState: TStaticText;
    lblHeavySeaState: TStaticText;
    lblBottomLossCoeff: TStaticText;
    trckbrBottomLossCoeff: TTrackBar;
    edtBottomLossCoeff: TEdit;
    lbl1BottomLossCoeff: TStaticText;
    lbl9BottomLossCoeff: TStaticText;
    lblSurfaceTemperature: TStaticText;
    edtSurfaceTemperature: TEdit;
    lblDegC: TStaticText;
    lblAverageOceanDepth: TStaticText;
    edtAverageOceanDepth: TEdit;
    lblFeetAverageOceanDepth: TStaticText;
    lblShadowZone: TStaticText;
    edtShadowZone: TEdit;
    lblDBShadowZone: TStaticText;
    cbSurfaceDucting: TCheckBox;
    cbSubsurfaceDucting: TCheckBox;
    tsConvergenceZones: TTabSheet;
    grbCoverageZones: TGroupBox;
    lblRangeInterval: TStaticText;
    lblWidthOfFirstCZ: TStaticText;
    edtRangeInterval: TEdit;
    edtWidthOfFirstCZ: TEdit;
    lbnmRange: TStaticText;
    lblnmWidth: TStaticText;
    lblFirstCZSignal: TStaticText;
    lblAttenuation: TStaticText;
    edtFirstCZSignalIncrease: TEdit;
    edtAttenuation: TEdit;
    lbdBFirstCZ: TStaticText;
    lbldBAttenuation: TStaticText;
    lblMaxSonarTarget: TStaticText;
    edtMaxSonarTarget: TEdit;
    lblFeetMaxSonarTarget: TStaticText;
    cbCoverageZones: TCheckBox;
    tsBoundaries: TTabSheet;
    grbTopLeft: TGroupBox;
    lblPositionTopLeft: TStaticText;
    edtPositionTopLeft1: TEdit;
    edtPositionTopLeft2: TEdit;
    lblGridTopLeft: TStaticText;
    edtGridTopLeft1: TEdit;
    edtGridTopLeft2: TEdit;
    grpBottomRight: TGroupBox;
    lblPositionBottomRight: TStaticText;
    edtPositionBottomRight1: TEdit;
    edtPositionBottomRight2: TEdit;
    lblGridBottomRight: TStaticText;
    edtGridBottomRight1: TEdit;
    edtGridBottomRight2: TEdit;
    grbAtmospheric: TGroupBox;
    trckbrAtmospheric: TTrackBar;
    edtAtmospheric: TEdit;
    lbl1Atmospheric: TStaticText;
    lbl100Atmospheric: TStaticText;
    grbLegendTrackAtmospheric: TGroupBox;
    lblLegend1: TStaticText;
    lblLegend2: TStaticText;
    lblLegend3: TStaticText;
    grbCommunicationEffects: TGroupBox;
    cbHFTransmission: TCheckBox;
    pnl3Button: TPanel;
    pnlSparatorHor1: TPanel;
    pnlSparatorHor2: TPanel;
    btnOK: TButton;
    btnApply: TButton;
    btnCancel: TButton;
    Image2: TImage;
    Image1: TImage;

    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxDataChange(Sender: TObject);
    procedure CheckBoxDataClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure edtNameKeyPress(Sender: TObject; var Key: Char);

    //all tab
    procedure DataChangeKeyPress(Sender: TObject; var Key: Char);
    procedure DirectionChange(Sender: TObject);
    procedure DirectionChangeKeyPress(Sender: TObject; var Key: Char);
    procedure RotWheelDegreeChange(Sender: TObject);

    //above water
    procedure edtVisibilityFactorsChange(Sender: TObject);
    procedure TrackBarVisibilityFactorsChange(Sender: TObject);
    procedure EventTimeChangeKeypress(Sender: TObject; var Key: Char);
    procedure TrackBarAttenuationFactorsChange(Sender: TObject);
    procedure EditAttenuationFactorsKeyPress(Sender: TObject; var Key: Char);
    procedure SoundVelocityProfileTypeClick(Sender: TObject);
    procedure DuctingActiveClick(Sender: TObject);
    procedure trckbrSeaStateChange(Sender: TObject);
    procedure edtSeaStateKeyPress(Sender: TObject; var Key: Char);
    procedure trckbrBottomLossCoeffChange(Sender: TObject);
    procedure edtBottomLossCoeffKeyPress(Sender: TObject; var Key: Char);

    //convergence zone
    procedure cbCoverageZonesClick(Sender: TObject);

    //boundaries
    procedure trckbrAtmosphericChange(Sender: TObject);
    procedure edtAtmosphericKeyPress(Sender: TObject; var Key: Char);

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    FSelectedEnvironment : TGame_Environment_Definition;
    FSelectedSubArea : TSubArea_Enviro_Definition;

    FWindWheel : TRotWheel;
    FOceanCurrentWheel : TRotWheel;

    function CekInput: Boolean;
    procedure UpdateEnviCharacteristicData;
    function DeleteNonNumericChar(aText: string): string;

  public
    isOK : Boolean;
    AfterClose : Boolean;
    LastName : string;

    property SelectedEnvironment : TGame_Environment_Definition read FSelectedEnvironment write FSelectedEnvironment;
    property SelectedSubArea : TSubArea_Enviro_Definition read FSelectedSubArea write FSelectedSubArea;
  end;

var
  frmSubEnviCharacteristic: TfrmSubEnviCharacteristic;

implementation

uses
  ufrmSummaryEnvironment, uFEnvironmentSelection, uDataModuleTTT, ufrmEnvironmentCharacteristic,
  tttData, newClassASTT, uBaseCoordSystem;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSubEnviCharacteristic.FormCreate(Sender: TObject);
begin
  FWindWheel := TRotWheel.Create(Self);
  with FWindWheel do
  begin
    Parent := pnlWheel;
    Left := 0;
    Top := 0;
    Height := pnlWheel.Height;
    Width := pnlWheel.Width;
    Tag := 0;
    OnDegreeChange := RotWheelDegreeChange;
  end;

  FOceanCurrentWheel := TRotWheel.Create(Self);
  with FOceanCurrentWheel do
  begin
    Parent := pnlOC;
    Left := 0;
    Top := 0;
    Height := pnlOC.Height;
    Width := pnlOC.Width;
    Tag := 1;
    OnDegreeChange := RotWheelDegreeChange;
  end;
end;

procedure TfrmSubEnviCharacteristic.FormDestroy(Sender: TObject);
begin
  FWindWheel.Free;
  FOceanCurrentWheel.Free;
end;

procedure TfrmSubEnviCharacteristic.FormShow(Sender: TObject);
begin
  tsAboveWater.Show;
  UpdateEnviCharacteristicData;

  if Assigned(FSelectedSubArea) then
      btnApply.Enabled := FSelectedSubArea.FData.Enviro_Index = 0
  else
      btnApply.Enabled := FSelectedEnvironment.FData.Game_Enviro_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSubEnviCharacteristic.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOK then
    Close;
end;

procedure TfrmSubEnviCharacteristic.btnApplyClick(Sender: TObject);
var
  second : Integer;
begin
  isOK := True;

  {$REGION ' Sub Area '}
  if Assigned(FSelectedSubArea) then
  begin
    with FSelectedSubArea do
    begin
      with FData do
      begin
        if not CekInput then
        begin
          isOK := False;
          Exit;
        end;

        //ValidationFormatInput;

        LastName := edtName.Text;
        Enviro_Identifier := edtName.Text;

        {$REGION ' Above Water '}
        Wind_Speed := StrToFloat(edtAboveSpeed.Text);
        Wind_Direction := StrToFloat(edtAboveDirection.Text);

        Daytime_Visual_Modifier := trckbrDaytimeVisual.Position;
        Nighttime_Visual_Modifier := trckbrNighttimeVisual.Position;
        Daytime_Infrared_Modifier := trckbrDaytimeInfra.Position;
        Nighttime_Infrared_Modifier := trckbrNighttimeInfra.Position;
        Rain_Rate := trckbrAttenRainRate.Position;
        Cloud_Attenuation := trckbrAttenCloud.Position;

        Barometric_Pressure := StrToFloat(edtBarometricPressure.Text);
        Air_Temperature := StrToFloat(edtAirTemp.Text);
        Cloud_Base_Height := StrToFloat(DeleteNonNumericChar(edtCloudBaseHeight.Text));
        {$ENDREGION}

        {$REGION ' Surface and Subsurface '}
        Ocean_Current_Speed := StrToFloat(edtSpeed.Text);
        Ocean_Current_Direction := StrToFloat(edtDirection.Text);
        Shipping_Rate := cbbShippingRate.ItemIndex;
        Thermal_Layer_Depth := StrToFloat(edtDepthOfThermalLayer.Text);

        if lbSoundVelocity.Caption = 'Positive' then
          Sound_Velocity_Type := 0
        else if lbSoundVelocity.Caption = 'Negative' then
          Sound_Velocity_Type := 1
        else if lbSoundVelocity.Caption = 'Positive over negative' then
          Sound_Velocity_Type := 2
        else if lbSoundVelocity.Caption = 'Negative over positive' then
          Sound_Velocity_Type := 3;

        Surface_Sound_Speed := StrToFloat(DeleteNonNumericChar(edtSurface.Text));
        Layer_Sound_Speed := StrToFloat(DeleteNonNumericChar(edtLayer.Text));
        Bottom_Sound_Speed := StrToFloat(DeleteNonNumericChar(edtBottom.Text));
        Surface_Ducting_Active := Ord(cbSurfaceDucting.Checked);
        Upper_Limit_Sur_Duct_Depth := StrToFloat(DeleteNonNumericChar(edtUpperLimitSurfaceDucting.Text));
        Lower_Limit_Sur_Duct_Depth := StrToFloat(DeleteNonNumericChar(edtLowerLimitSurfaceDucting.Text));
        Sub_Ducting_Active := Ord(cbSubsurfaceDucting.Checked);
        Upper_Limit_Sub_Duct_Depth := StrToFloat(DeleteNonNumericChar(edtUpperLimitSubsurfaceDucting.Text));
        Lower_Limit_Sub_Duct_Depth := StrToFloat(DeleteNonNumericChar(edtLowerLimitSubsurfaceDucting.Text));
        Sea_State := trckbrSeaState.Position;
        Bottomloss_Coefficient := trckbrBottomLossCoeff.Position;
        Surface_Temperature := StrToFloat(edtSurfaceTemperature.Text);
        Ave_Ocean_Depth := StrToFloat(DeleteNonNumericChar(edtAverageOceanDepth.Text));
        Shadow_Zone_Trans_Loss := StrToFloat(edtShadowZone.Text);
        {$ENDREGION}

        {$REGION ' Cnvergence Zones '}
        CZ_Active := Ord(cbCoverageZones.Checked);
        {$ENDREGION}

        {$REGION ' Boundaries '}
        try
          Latitude_1 := dmToLatitude(edtPositionTopLeft1.Text);
          Longitude_1 := dmToLongitude(edtPositionTopLeft2.Text);
          X_Position_1 := StrToFloat(DeleteNonNumericChar(edtGridTopLeft2.Text));
          Y_Position_1 := StrToFloat(DeleteNonNumericChar(edtGridTopLeft1.Text));
        except
          ShowMessage('Invalid Data Input ');
        end;

        Latitude_2 := dmToLatitude(edtPositionBottomRight1.Text);
        Longitude_2 := dmToLongitude(edtPositionBottomRight2.Text);
        X_Position_2 := StrToFloat(DeleteNonNumericChar(edtGridBottomRight2.Text));
        Y_Position_2 := StrToFloat(DeleteNonNumericChar(edtGridBottomRight1.Text));
        Atmospheric_Refract_Modifier := StrToInt(edtAtmospheric.Text);
        HF_Black_Hole := Ord(cbHFTransmission.Checked);
      end;
      {$ENDREGION}

      if FData.Enviro_Index = 0 then
      begin
        if dmTTT.InsertSubAreaEnviroDef(FData) then
        begin
          ShowMessage('Data has been saved');
        end;
      end
      else
      begin
        if dmTTT.UpdateSubAreaEnviroDef(FData) then
        begin
          ShowMessage('Data has been updated');
        end;
      end;

    end;
  end
  {$ENDREGION}

  {$REGION ' Global Environment '}
  else
  begin
    edtName.Text := '(Global Environment)';

    with FSelectedEnvironment do
    begin
      with FData do
      begin
//        if not CekInput(FData.Game_Enviro_Index)  then
//        begin
//          isOK := False;
//          Exit;
//        end;

        //above water
        Wind_Speed := StrToFloat(edtAboveSpeed.Text);
        Wind_Direction := StrToFloat(edtAboveDirection.Text);
        Start_HF_Range_Gap :=
          StrToFloat(DeleteNonNumericChar(edtAboveHFStart.Text));
        End_HF_Range_Gap :=
          StrToFloat(DeleteNonNumericChar(edtAboveHFEnd.Text));
        Daytime_Visual_Modifier := trckbrDaytimeVisual.Position;
        Nighttime_Visual_Modifier := trckbrNighttimeVisual.Position;
        Daytime_Infrared_Modifier := trckbrDaytimeInfra.Position;
        Nighttime_Infrared_Modifier := trckbrNighttimeInfra.Position;

        if TimeToSecond(medtSunrise.Text, second) then
          Sunrise := second;

        if TimeToSecond(medtSunset.Text, second) then
          Sunset := second;

        if TimeToSecond(medtTwilight.Text, second) then
          Period_of_Twilight := second;

        Rain_Rate := trckbrAttenRainRate.Position;
        Cloud_Attenuation := trckbrAttenCloud.Position;
        Barometric_Pressure := StrToFloat(edtBarometricPressure.Text);
        Air_Temperature := StrToFloat(edtAirTemp.Text);
        Cloud_Base_Height :=
          StrToFloat(DeleteNonNumericChar(edtCloudBaseHeight.Text));

        //surface and subsurface
        Ocean_Current_Speed := StrToFloat(edtSpeed.Text);
        Ocean_Current_Direction := StrToFloat(edtDirection.Text);
        Shipping_Rate := cbbShippingRate.ItemIndex;
        Thermal_Layer_Depth := StrToFloat(edtDepthOfThermalLayer.Text);

        if lbSoundVelocity.Caption = 'Positive' then
          Sound_Velocity_Type := 0
        else if lbSoundVelocity.Caption = 'Negative' then
          Sound_Velocity_Type := 1
        else if lbSoundVelocity.Caption = 'Positive over negative' then
          Sound_Velocity_Type := 2
        else if lbSoundVelocity.Caption = 'Negative over positive' then
          Sound_Velocity_Type := 3;

        Surface_Sound_Speed :=
          StrToFloat(DeleteNonNumericChar(edtSurface.Text));
        Layer_Sound_Speed := StrToFloat(DeleteNonNumericChar(edtLayer.Text));
        Bottom_Sound_Speed := StrToFloat(DeleteNonNumericChar(edtBottom.Text));
        Surface_Ducting_Active := Ord(cbSurfaceDucting.Checked);
        Upper_Limit_Surface_Duct_Depth :=
          StrToFloat(DeleteNonNumericChar(edtUpperLimitSurfaceDucting.Text));
        Lower_Limit_Surface_Duct_Depth :=
          StrToFloat(DeleteNonNumericChar(edtLowerLimitSurfaceDucting.Text));
        Sub_Ducting_Active := Ord(cbSubsurfaceDucting.Checked);
        Upper_Limit_Sub_Duct_Depth :=
          StrToFloat(DeleteNonNumericChar(edtUpperLimitSubsurfaceDucting.Text));
        Lower_Limit_Sub_Duct_Depth :=
          StrToFloat(DeleteNonNumericChar(edtLowerLimitSubsurfaceDucting.Text));
        Sea_State := trckbrSeaState.Position;
        Bottomloss_Coefficient := trckbrBottomLossCoeff.Position;
        Surface_Temperature := StrToFloat(edtSurfaceTemperature.Text);
        Ave_Ocean_Depth :=
          StrToFloat(DeleteNonNumericChar(edtAverageOceanDepth.Text));
        Shadow_Zone_Trans_Loss := StrToFloat(edtShadowZone.Text);

        //convergence zones
        CZ_Active := Ord(cbCoverageZones.Checked);

        //boundaries
        Atmospheric_Refract_Modifier := StrToInt(edtAtmospheric.Text);
      end;

      with FGlobal_Conv do
      begin
        //convergence zones
        Occurance_Range := StrToFloat(edtRangeInterval.Text);
        Width := StrToFloat(edtWidthOfFirstCZ.Text);
        Increase_per_CZ := StrToFloat(edtFirstCZSignalIncrease.Text);
        Signal_Reduction_Term := StrToFloat(edtAttenuation.Text);
        Max_Sonar_Depth := StrToFloat(DeleteNonNumericChar(edtMaxSonarTarget.Text));
      end;

      if dmTTT.UpdateEnvironmentDef(FData) then
      begin
        ShowMessage('Data has been updated');
        dmTTT.UpdateGlobalConvergenceZone(FGlobal_Conv);
      end;
    end;
  end;
  {$ENDREGION}

  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;


procedure TfrmSubEnviCharacteristic.RotWheelDegreeChange(Sender: TObject);
begin
  case TRotWheel(Sender).Tag of
    0: edtAboveDirection.Text := FormatFloat('0.00', TRotWheel(Sender).Degree);
    1: edtDirection.Text := FormatFloat('0', TRotWheel(Sender).Degree);
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.SoundVelocityProfileTypeClick(Sender: TObject);
begin
  case TButton(Sender).Tag of
    0: lbSoundVelocity.Caption := 'Positive';
    1: lbSoundVelocity.Caption := 'Negative';
    2: lbSoundVelocity.Caption := 'Positive over negative';
    3: lbSoundVelocity.Caption := 'Negative over positive';
  end;
end;

procedure TfrmSubEnviCharacteristic.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSubEnviCharacteristic.cbCoverageZonesClick(Sender: TObject);
begin
  edtRangeInterval.Enabled := cbCoverageZones.Checked;
  edtWidthOfFirstCZ.Enabled := cbCoverageZones.Checked;
  edtFirstCZSignalIncrease.Enabled := cbCoverageZones.Checked;
  edtAttenuation.Enabled := cbCoverageZones.Checked;
  edtMaxSonarTarget.Enabled := cbCoverageZones.Checked;

  lblRangeInterval.Enabled := cbCoverageZones.Checked;
  lblWidthOfFirstCZ.Enabled := cbCoverageZones.Checked;
  lblFirstCZSignal.Enabled := cbCoverageZones.Checked;
  lblAttenuation.Enabled := cbCoverageZones.Checked;
  lblMaxSonarTarget.Enabled := cbCoverageZones.Checked;
end;

function TfrmSubEnviCharacteristic.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  {Jika inputan class name kosong}
  if (edtName.Text = '') or (edtName.Text = ' ') then
  begin
    ShowMessage('Please use another class name');
    Exit;
  end;

  {Jika berisi spasi semua}
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
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

//  if not edtRangeInterval.ReadOnly then
//    Exit;

    {Jika Class Name sudah ada}
  if (dmTTT.GetSubAreaEnviroDefCount(FSelectedSubArea.FData.Game_Enviro_Index, edtName.Text)) then
  begin
    {Jika inputan baru}
    if FSelectedSubArea.FData.Enviro_Index = 0 then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end
    else if LastName <> edtName.Text then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmSubEnviCharacteristic.DataChangeKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
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

function TfrmSubEnviCharacteristic.DeleteNonNumericChar(aText: string): string;
var
  i : Integer;
begin
  for i := Length(aText) downto 1 do
  begin
    if (aText[i] = '0') or
      (aText[i] = '1') or
      (aText[i] = '2') or
      (aText[i] = '3') or
      (aText[i] = '4') or
      (aText[i] = '5') or
      (aText[i] = '6') or
      (aText[i] = '7') or
      (aText[i] = '8') or
      (aText[i] = '9') or
      (aText[i] = '.') then
      Continue
    else
      Delete(aText, i, 1);
  end;

  Result := aText;
end;

procedure TfrmSubEnviCharacteristic.DirectionChange(Sender: TObject);
var
  value : Double;
begin
  if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

  value := StrToFloat(TEdit(Sender).Text);

  if value >= 360 then
    value := 0;

  case TEdit(Sender).Tag of
    0: FWindWheel.Degree := value;
    1: FOceanCurrentWheel.Degree := value;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.DirectionChangeKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
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

    if value >= 360 then
      value := 0;

    case TEdit(Sender).Tag of
      0: FWindWheel.Degree := value;
      1: FOceanCurrentWheel.Degree := value;
    end;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSubEnviCharacteristic.DuctingActiveClick(Sender: TObject);
begin
  case TCheckBox(Sender).Tag of
    0:
    begin
      edtUpperLimitSurfaceDucting.Enabled := TCheckBox(Sender).Checked;
      edtLowerLimitSurfaceDucting.Enabled := TCheckBox(Sender).Checked;
    end;
    1:
    begin
      edtUpperLimitSubsurfaceDucting.Enabled := TCheckBox(Sender).Checked;
      edtLowerLimitSubsurfaceDucting.Enabled := TCheckBox(Sender).Checked;
    end;
  end;
end;

procedure TfrmSubEnviCharacteristic.EditAttenuationFactorsKeyPress(Sender: TObject; var Key: Char);
var
  value : Integer;
begin
  if not (Key in [#48 .. #57, #8, #13]) then
    Key := #0;

  if Key = #13 then
  begin
    if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    value := StrToInt(TEdit(Sender).Text);

    if value > 6 then
      value := 6;

    TEdit(Sender).Text := IntToStr(value);

    case TEdit(Sender).Tag of
      0: trckbrAttenRainRate.Position := value;
      1: trckbrAttenCloud.Position := value;
    end;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSubEnviCharacteristic.edtAtmosphericKeyPress(Sender: TObject; var Key: Char);
var
  value : Integer;
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
    Key := #0;

  if Key = #13 then
  begin
    if edtAtmospheric.Text = '' then
      edtAtmospheric.Text := '0';

    value := StrToInt(edtAtmospheric.Text);

    if value > 1000 then
      value := 1000;

    edtAtmospheric.Text := IntToStr(value);
    trckbrAtmospheric.Position := value;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSubEnviCharacteristic.edtBottomLossCoeffKeyPress(Sender: TObject; var Key: Char);
var
  value : Integer;
begin
  if not (Key in [#48 .. #57, #8, #13]) then
    Key := #0;

  if Key = #13 then
  begin
    if edtBottomLossCoeff.Text = '' then
      edtBottomLossCoeff.Text := '0';

    value := StrToInt(edtBottomLossCoeff.Text);

    if value > 9 then
      value := 9;

    edtBottomLossCoeff.Text := IntToStr(value);
    trckbrBottomLossCoeff.Position := value;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSubEnviCharacteristic.edtNameKeyPress(Sender: TObject;var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.edtSeaStateKeyPress( Sender: TObject; var Key: Char);
var
  value : Integer;
begin
  if not (Key in [#48 .. #57, #8, #13]) then
    Key := #0;

  if Key = #13 then
  begin
    if edtSeaState.Text = '' then
      edtSeaState.Text := '0';

    value := StrToInt(edtSeaState.Text);

    if value > 9 then
      value := 9;

    edtSeaState.Text := IntToStr(value);
    trckbrSeaState.Position := value;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSubEnviCharacteristic.edtVisibilityFactorsChange(Sender: TObject);
var
  value : Integer;
begin
  if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    value := StrToInt(TEdit(Sender).Text);

    if value > 100 then
      value := 100;

    TEdit(Sender).Text := IntToStr(value);

    case TEdit(Sender).Tag of
      0: trckbrDaytimeVisual.Position := value;
      1: trckbrNighttimeVisual.Position := value;
      2: trckbrDaytimeInfra.Position := value;
      3: trckbrNighttimeInfra.Position := value;
    end;

    btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.trckbrAtmosphericChange(Sender: TObject);
begin
  edtAtmospheric.Text := IntToStr(TTrackBar(Sender).Position);
  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.TrackBarAttenuationFactorsChange(Sender: TObject);
begin
  case TTrackBar(Sender).Tag of
    0: edtAttenRainRate.Text := IntToStr(TTrackBar(Sender).Position);
    1: edtAttenCloud.Text := IntToStr(TTrackBar(Sender).Position);
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.TrackBarVisibilityFactorsChange(Sender: TObject);
begin
  case TTrackBar(Sender).Tag of
    0: edtDayVis.Text := IntToStr(TTrackBar(Sender).Position);
    1: edtNightVis.Text := IntToStr(TTrackBar(Sender).Position);
    2: edtDayInfra.Text := IntToStr(TTrackBar(Sender).Position);
    3: edtNightInfra.Text := IntToStr(TTrackBar(Sender).Position);
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.trckbrBottomLossCoeffChange(Sender: TObject);
begin
  edtBottomLossCoeff.Text := IntToStr(TTrackBar(Sender).Position);
  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.trckbrSeaStateChange(Sender: TObject);
begin
  edtSeaState.Text := IntToStr(TTrackBar(Sender).Position);
  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.UpdateEnviCharacteristicData;
var
  halfDimension ,TL_Lat, TL_Long, BR_Lat, BR_Long : Double;
  timeStr : string;
begin
  if Assigned(FSelectedSubArea) then
  begin
    Caption := 'Sub-area Environment Characteristics';

    with FSelectedSubArea.FData do
    begin
      edtName.ReadOnly := False;
      edtName.Text := Enviro_Identifier;
      LastName := edtName.Text;

      //above water
      FWindWheel.Degree := Wind_Direction;
      edtAboveSpeed.Text := FormatFloat('0.##', Wind_Speed);
      edtAboveDirection.Text := FormatFloat('0.0', Wind_Direction);
      trckbrDaytimeVisual.Position := Round(Daytime_Visual_Modifier);
      trckbrNighttimeVisual.Position := Round(Nighttime_Visual_Modifier);
      trckbrDaytimeInfra.Position := Round(Daytime_Infrared_Modifier);
      trckbrNighttimeInfra.Position := Round(Nighttime_Infrared_Modifier);
      trckbrAttenRainRate.Position := Rain_Rate;
      trckbrAttenCloud.Position := Cloud_Attenuation;
      edtBarometricPressure.Text := FormatFloat('0.0', Barometric_Pressure);
      edtAirTemp.Text := FormatFloat('0.0', Air_Temperature);
      edtCloudBaseHeight.Text := FormatFloat('# ##0', Cloud_Base_Height);

      //surface and subsurface
      FOceanCurrentWheel.Degree := Ocean_Current_Direction;
      edtSpeed.Text := FormatFloat('0.##', Ocean_Current_Speed);
      edtDirection.Text := FormatFloat('0.0', Ocean_Current_Direction);
      cbbShippingRate.ItemIndex := Shipping_Rate;
      edtDepthOfThermalLayer.Text := FormatFloat('0.##', Thermal_Layer_Depth);

      case Sound_Velocity_Type of
        0:
        begin
          btnPositive.Down := True;
          lbSoundVelocity.Caption := 'Positive';
        end;
        1:
        begin
          btnNegative.Down := True;
          lbSoundVelocity.Caption := 'Negative';
        end;
        2:
        begin
          btnPosOverNeg.Down := True;
          lbSoundVelocity.Caption := 'Positive over negative';
        end;
        3:
        begin
          btnNegOverPos.Down := True;
          lbSoundVelocity.Caption := 'Negative over positive';
        end;
      end;

      edtSurface.Text := FormatFloat('# ##0', Surface_Sound_Speed);
      edtLayer.Text := FormatFloat('# ##0', Layer_Sound_Speed);
      edtBottom.Text := FormatFloat('# ##0', Bottom_Sound_Speed);
      cbSurfaceDucting.Checked := Boolean(Surface_Ducting_Active);
      edtUpperLimitSurfaceDucting.Text := FormatFloat('# ##0',
        Upper_Limit_Sur_Duct_Depth);
      edtLowerLimitSurfaceDucting.Text := FormatFloat('# ##0',
        Lower_Limit_Sur_Duct_Depth);
      cbSubsurfaceDucting.Checked := Boolean(Sub_Ducting_Active);
      edtUpperLimitSubsurfaceDucting.Text := FormatFloat('# ##0',
        Upper_Limit_Sub_Duct_Depth);
      edtLowerLimitSubsurfaceDucting.Text := FormatFloat('# ##0',
        Lower_Limit_Sub_Duct_Depth);
      trckbrSeaState.Position := Sea_State;
      trckbrBottomLossCoeff.Position := Bottomloss_Coefficient;
      edtSurfaceTemperature.Text := FormatFloat('0.0', Surface_Temperature);
      edtAverageOceanDepth.Text := FormatFloat('# ##0', Ave_Ocean_Depth);
      edtShadowZone.Text := FormatFloat('0.##', Shadow_Zone_Trans_Loss);

      //convergence zones
      cbCoverageZones.Checked := Boolean(CZ_Active);

      //boundaries
      edtPositionTopLeft1.Text := formatDM_latitude(Latitude_1);
      edtPositionTopLeft2.Text := formatDM_longitude(Longitude_1);

      if Latitude_1 < FSelectedEnvironment.FGameArea.Game_Centre_Lat then
        edtGridTopLeft1.Text := FormatFloat('0.00', Y_Position_1) + ' nm S'
      else
        edtGridTopLeft1.Text := FormatFloat('0.00', Y_Position_1) + ' nm N';

      if Longitude_1 < FSelectedEnvironment.FGameArea.Game_Centre_Long then
        edtGridTopLeft2.Text := FormatFloat('0.00', X_Position_1) + ' nm W'
      else
        edtGridTopLeft2.Text := FormatFloat('0.00', X_Position_1) + ' nm E';

      edtPositionBottomRight1.Text :=
        formatDM_latitude(FSelectedSubArea.FData.Latitude_2);
      edtPositionBottomRight2.Text :=
        formatDM_longitude(FSelectedSubArea.FData.Longitude_2);

      if Latitude_1 < FSelectedEnvironment.FGameArea.Game_Centre_Lat then
        edtGridBottomRight1.Text := FormatFloat('0.00', Y_Position_2) + ' nm S'
      else
        edtGridBottomRight1.Text := FormatFloat('0.00', Y_Position_2) + ' nm N';

      if Longitude_1 < FSelectedEnvironment.FGameArea.Game_Centre_Long then
        edtGridBottomRight2.Text := FormatFloat('0.00', X_Position_2) + ' nm W'
      else
        edtGridBottomRight2.Text := FormatFloat('0.00', X_Position_2) + ' nm E';

      trckbrAtmospheric.Position := Round(Atmospheric_Refract_Modifier);
      cbHFTransmission.Enabled := True;
      cbHFTransmission.Checked := Boolean(HF_Black_Hole);
    end;

    with FSelectedEnvironment do
    begin
      //above water
      edtAboveHFStart.Text := FormatFloat('# ##0.0', FData.Start_HF_Range_Gap);
      edtAboveHFEnd.Text := FormatFloat('# ##0.0', FData.End_HF_Range_Gap);
      medtSunrise.Text := FormatDateTime('hh:nn:ss',
        IntToDateTime(FData.Sunrise));
      medtSunset.Text := FormatDateTime('hh:nn:ss', IntToDateTime(FData.Sunset));
      medtTwilight.Text := FormatDateTime('hh:nn:ss',
        IntToDateTime(FData.Period_of_Twilight));
      edtRangeInterval.Text := FormatFloat('0.##',
        FGlobal_Conv.Occurance_Range);
      edtWidthOfFirstCZ.Text := FormatFloat('0.##', FGlobal_Conv.Width);
      edtFirstCZSignalIncrease.Text := FormatFloat('0.##',
        FGlobal_Conv.Increase_per_CZ);
      edtAttenuation.Text := FormatFloat('0.##',
        FGlobal_Conv.Signal_Reduction_Term);
      edtMaxSonarTarget.Text := FormatFloat('0.##',
        FGlobal_Conv.Max_Sonar_Depth);

      //convergence zones
      edtRangeInterval.ReadOnly := True;
      edtRangeInterval.Text := FormatFloat('0.00',
        FGlobal_Conv.Occurance_Range);
      edtWidthOfFirstCZ.ReadOnly := True;
      edtWidthOfFirstCZ.Text := FormatFloat('0.00', FGlobal_Conv.Width);
      edtFirstCZSignalIncrease.ReadOnly := True;
      edtFirstCZSignalIncrease.Text := FormatFloat('0.##',
        FGlobal_Conv.Increase_per_CZ);
      edtAttenuation.ReadOnly := True;
      edtAttenuation.Text := FormatFloat('0.##',
        FGlobal_Conv.Signal_Reduction_Term);
      edtMaxSonarTarget.ReadOnly := True;
      edtMaxSonarTarget.Text := FormatFloat('# ##0',
        FGlobal_Conv.Max_Sonar_Depth);
    end;
  end
  else
  begin
    Caption := 'Global Environment Characteristics';

    edtName.ReadOnly := True;
    edtName.Text := '(Global Environment)';
    LastName := edtName.Text;

    with FSelectedEnvironment do
    begin

      {$REGION ' Above Water '}
      FWindWheel.Degree := FData.Wind_Direction;
      edtAboveSpeed.Text := FormatFloat('0.00', FData.Wind_Speed);
      edtAboveDirection.Text := FormatFloat('0', FData.Wind_Direction);
      edtAboveHFStart.Text := FormatFloat('0.00', FData.Start_HF_Range_Gap);
      edtAboveHFEnd.Text := FormatFloat('0.00', FData.End_HF_Range_Gap);

      trckbrDaytimeVisual.Position := Round(FData.Daytime_Visual_Modifier);
      trckbrNighttimeVisual.Position := Round(FData.Nighttime_Visual_Modifier);
      trckbrDaytimeInfra.Position := Round(FData.Daytime_Infrared_Modifier);
      trckbrNighttimeInfra.Position := Round(FData.Nighttime_Infrared_Modifier);

      if SecondToTime(FData.Sunrise, timeStr) then
        medtSunrise.Text := timeStr;

      if SecondToTime(FData.Sunset, timeStr) then
        medtSunset.Text := timeStr;

      if SecondToTime(FData.Period_of_Twilight, timeStr) then
        medtTwilight.Text := timeStr;

      trckbrAttenRainRate.Position := FData.Rain_Rate;
      trckbrAttenCloud.Position := FData.Cloud_Attenuation;

      edtBarometricPressure.Text := FormatFloat('0.00',FData.Barometric_Pressure);
      edtAirTemp.Text := FormatFloat('0.0', FData.Air_Temperature);
      edtCloudBaseHeight.Text := FormatFloat('0', FData.Cloud_Base_Height);
      {$ENDREGION}

      {$REGION ' Surface and Subsurface '}
      FOceanCurrentWheel.Degree := FData.Ocean_Current_Direction;
      edtSpeed.Text := FormatFloat('0.00', FData.Ocean_Current_Speed);
      edtDirection.Text := FormatFloat('0', FData.Ocean_Current_Direction);
      cbbShippingRate.ItemIndex := FData.Shipping_Rate;
      edtDepthOfThermalLayer.Text := FormatFloat('# ##0',FData.Thermal_Layer_Depth);

      case FData.Sound_Velocity_Type of
        0:
        begin
          btnPositive.Down := True;
          lbSoundVelocity.Caption := 'Positive';
        end;
        1:
        begin
          btnNegative.Down := True;
          lbSoundVelocity.Caption := 'Negative';
        end;
        2:
        begin
          btnPosOverNeg.Down := True;
          lbSoundVelocity.Caption := 'Positive over negative';
        end;
        3:
        begin
          btnNegOverPos.Down := True;
          lbSoundVelocity.Caption := 'Negative over positive';
        end;
      end;

      edtSurface.Text := FormatFloat('# ##0', FData.Surface_Sound_Speed);
      edtLayer.Text := FormatFloat('# ##0', FData.Layer_Sound_Speed);
      edtBottom.Text := FormatFloat('# ##0', FData.Bottom_Sound_Speed);
      cbSurfaceDucting.Checked := Boolean(FData.Surface_Ducting_Active);
      edtUpperLimitSurfaceDucting.Text := FormatFloat('# ##0',
        FData.Upper_Limit_Surface_Duct_Depth);
      edtLowerLimitSurfaceDucting.Text := FormatFloat('# ##0',
        FData.Lower_Limit_Surface_Duct_Depth);
      cbSubsurfaceDucting.Checked := Boolean(FData.Sub_Ducting_Active);
      edtUpperLimitSubsurfaceDucting.Text := FormatFloat('# ##0',
        FData.Upper_Limit_Sub_Duct_Depth);
      edtLowerLimitSubsurfaceDucting.Text := FormatFloat('# ##0',
        FData.Lower_Limit_Sub_Duct_Depth);
      trckbrSeaState.Position := FData.Sea_State;
      trckbrBottomLossCoeff.Position := FData.Bottomloss_Coefficient;
      edtSurfaceTemperature.Text := FormatFloat('0.0',
        FData.Surface_Temperature);
      edtAverageOceanDepth.Text := FormatFloat('# ##0', FData.Ave_Ocean_Depth);
      edtShadowZone.Text := FormatFloat('0.##', FData.Shadow_Zone_Trans_Loss);

      //convergence zones
      cbCoverageZones.Checked := Boolean(FData.CZ_Active);
      edtRangeInterval.ReadOnly := False;
      edtRangeInterval.Text := FormatFloat('0.00',
        FGlobal_Conv.Occurance_Range);
      edtWidthOfFirstCZ.ReadOnly := False;
      edtWidthOfFirstCZ.Text := FormatFloat('0.00', FGlobal_Conv.Width);
      edtFirstCZSignalIncrease.ReadOnly := False;
      edtFirstCZSignalIncrease.Text := FormatFloat('0.##',
        FGlobal_Conv.Increase_per_CZ);
      edtAttenuation.ReadOnly := False;
      edtAttenuation.Text := FormatFloat('0.##',
        FGlobal_Conv.Signal_Reduction_Term);
      edtMaxSonarTarget.ReadOnly := False;
      edtMaxSonarTarget.Text := FormatFloat('# ##0',
        FGlobal_Conv.Max_Sonar_Depth);

      //boundaries
      halfDimension := FGameArea.Game_Y_Dimension / 2;
      TL_Lat := FGameArea.Game_Centre_Lat + halfDimension;
      TL_Long := FGameArea.Game_Centre_Long - halfDimension;
      BR_Lat := FGameArea.Game_Centre_Lat - halfDimension;
      BR_Long := FGameArea.Game_Centre_Long + halfDimension;

      edtPositionTopLeft1.Text := formatDM_latitude(TL_Lat);
      edtPositionTopLeft2.Text := formatDM_longitude(TL_Long);

      if TL_Lat < FSelectedEnvironment.FGameArea.Game_Centre_Lat then
        edtGridTopLeft1.Text := FormatFloat('0.00', halfDimension) + ' nm S'
      else
        edtGridTopLeft1.Text := FormatFloat('0.00', halfDimension) + ' nm N';

      if TL_Long < FSelectedEnvironment.FGameArea.Game_Centre_Long then
        edtGridTopLeft2.Text := FormatFloat('0.00', halfDimension) + ' nm W'
      else
        edtGridTopLeft2.Text := FormatFloat('0.00', halfDimension) + ' nm E';

      edtPositionBottomRight1.Text := formatDM_latitude(BR_Lat);
      edtPositionBottomRight2.Text := formatDM_longitude(BR_Long);

      if BR_Lat < FSelectedEnvironment.FGameArea.Game_Centre_Lat then
        edtGridBottomRight1.Text := FormatFloat('0.00', halfDimension) + ' nm S'
      else
        edtGridBottomRight1.Text := FormatFloat('0.00', halfDimension) +
          ' nm N';

      if BR_Long < FSelectedEnvironment.FGameArea.Game_Centre_Long then
        edtGridBottomRight2.Text := FormatFloat('0.00', halfDimension) + ' nm W'
      else
        edtGridBottomRight2.Text := FormatFloat('0.00', halfDimension) +
          ' nm E';

      trckbrAtmospheric.Position := Round(FData.Atmospheric_Refract_Modifier);
      cbHFTransmission.Enabled := False;
      cbHFTransmission.Checked := False;
    end;
  end;
end;

procedure TfrmSubEnviCharacteristic.EventTimeChangeKeypress(Sender: TObject; var Key: Char);
var
  edt : TEdit;
begin
  edt := TEdit(Sender);

  case edt.Tag of
    0: medtSunrise.Text := '';
    1: medtSunset.Text := '';
    2: medtTwilight.Text := '';
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmSubEnviCharacteristic.GetNumberOfKoma(s: string): Boolean;
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

procedure TfrmSubEnviCharacteristic.edtNumeralKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmSubEnviCharacteristic.CheckBoxDataClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.ComboBoxDataChange(Sender: TObject);
begin
  if TComboBox(Sender).ItemIndex = -1 then
    TComboBox(Sender).ItemIndex := 0;

  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSubEnviCharacteristic.ValidationFormatInput;
var
  i, j: Integer;
  value : Double;
  hStr, mStr, sStr, hmSeparator, msSeparator : string;
  h, m, s : Integer;
  aTimeStr : string;
  flag : Boolean;

begin
  for i:=0 to ComponentCount-1 do
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
end;

{$ENDREGION}

end.
