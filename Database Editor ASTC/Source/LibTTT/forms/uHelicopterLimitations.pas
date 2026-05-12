unit uHelicopterLimitations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, tttData, ufrmSummaryVehicle,
  uHelicopter_Land_Launch_Limits, uDBAsset_Vehicle, Vcl.Imaging.pngimage;

type
  TfrmHelicopterLimitations = class(TForm)
    Panel1: TPanel;
    pgc1: TPageControl;
    tsGeneral: TTabSheet;
    grp1: TGroupBox;
    lbl1: TLabel;
    edtShipMaxTurnRate_toLaunch: TEdit;
    lbl9: TLabel;
    lbl2: TLabel;
    edtShipMaxTurnRate_toLand: TEdit;
    lbl10: TLabel;
    lbl3: TLabel;
    edtMaxRelativeWindMagnitude: TEdit;
    lbl11: TLabel;
    lbl4: TLabel;
    edtMaxRelativeSpeedToLand: TEdit;
    lbl12: TLabel;
    grp2: TGroupBox;
    lbl5: TLabel;
    edtApproachCentBearing: TEdit;
    lbl13: TLabel;
    lbl6: TLabel;
    edtApproachSectorWidth: TEdit;
    lbl14: TLabel;
    lbl7: TLabel;
    edtApproachRange: TEdit;
    lbl15: TLabel;
    lbl8: TLabel;
    edtMaxLandingAltitude: TEdit;
    lbl16: TLabel;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedVehicle : TVehicle_Definition;
    FHeliLimitationData : THelicopter_Land_Launch_Limits;

    procedure UpdateHelicopterLimitationsData;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    { Public declarations }
    v_index : Integer;
    Helicopter_Land_Launch_Limits : THelicopter_Land_Launch_Limits;

    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmHelicopterLimitations: TfrmHelicopterLimitations;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmHelicopterLimitations.FormShow(Sender: TObject);
begin
  UpdateHelicopterLimitationsData;

  with FSelectedVehicle.FData do
    btnApply.Enabled := Vehicle_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmHelicopterLimitations.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmHelicopterLimitations.btnApplyClick(Sender: TObject);
begin
  ValidationFormatInput;

  with FHeliLimitationData do
  begin
    FData.Max_Turn_Rate_To_Launch := StrToFloat(edtShipMaxTurnRate_toLaunch.Text);
    FData.Max_Turn_Rate_To_Land := StrToFloat(edtShipMaxTurnRate_toLand.Text);
    FData.Max_Relative_Wind_Magnitude := StrToFloat(edtMaxRelativeWindMagnitude.Text);
    FData.Max_Relative_Speed := StrToFloat(edtMaxRelativeSpeedToLand.Text);
    FData.Approach_Center_Bearing := StrToInt(edtApproachCentBearing.Text);
    FData.Approach_Sector_Width := StrToInt(edtApproachSectorWidth.Text);
    FData.Approach_Range := StrToFloat(edtApproachRange.Text);
    FData.Max_Landing_Altitude := StrToFloat(edtMaxLandingAltitude.Text);

    if not dmTTT.GetHelicopterLimitation(FSelectedVehicle.FData.Vehicle_Index, FHeliLimitationData) then
      dmTTT.InsertHelicopterLimitation(FData)
    else
      dmTTT.UpdateHelicopterLimitation(FData);
  end;

  UpdateHelicopterLimitationsData;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmHelicopterLimitations.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;
procedure TfrmHelicopterLimitations.UpdateHelicopterLimitationsData;
begin
  with FSelectedVehicle.FData do
  begin
    if not dmTTT.GetHelicopterLimitation(Vehicle_Index, FHeliLimitationData) then
    begin
      FHeliLimitationData := THelicopter_Land_Launch_Limits.Create;
      FHeliLimitationData.FData.Vehicle_Index := Vehicle_Index;
    end;

    with FHeliLimitationData.FData do
    begin
      edtShipMaxTurnRate_toLaunch.Text := FloatToStr(Max_Turn_Rate_To_Launch);
      edtShipMaxTurnRate_toLand.Text := FloatToStr(Max_Turn_Rate_To_Land);
      edtMaxRelativeWindMagnitude.Text := FormatFloat('0.0', Max_Relative_Wind_Magnitude);
      edtMaxRelativeSpeedToLand.Text := FloatToStr(Max_Relative_Speed);
      edtApproachCentBearing.Text := IntToStr(Approach_Center_Bearing);
      edtApproachSectorWidth.Text := IntToStr(Approach_Sector_Width);
      edtApproachRange.Text := FormatFloat('0.00', Approach_Range);
      edtMaxLandingAltitude.Text := FormatFloat('0.0', Max_Landing_Altitude);
    end;
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmHelicopterLimitations.GetNumberOfKoma(s: string): Boolean;
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

procedure TfrmHelicopterLimitations.edtNumeralKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmHelicopterLimitations.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmHelicopterLimitations.ValidationFormatInput;
var
  i: Integer;
  value : Double;

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
    end;
  end;
end;

{$ENDREGION}

end.
