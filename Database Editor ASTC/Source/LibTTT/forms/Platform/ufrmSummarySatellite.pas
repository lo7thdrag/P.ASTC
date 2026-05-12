unit ufrmSummarySatellite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Vcl.Imaging.pngimage,
  uDBAsset_Satellite, Vcl.Mask;

type
  TfrmSummarySatellite = class(TForm)
    pnl1Title: TPanel;
    txtClass: TLabel;
    edtClass: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    lbl2: TLabel;
    grbRecognition: TGroupBox;
    cbPlatformType: TCheckBox;
    cbPlatformClass: TCheckBox;
    lblDetectionRangeRadius: TStaticText;
    edtDetectionRangeRadius: TEdit;
    lblnmDetectionRange: TStaticText;
    lblAltitude: TStaticText;
    edtAltitude: TEdit;
    lblFeetAltitude: TStaticText;
    lblGameArea: TStaticText;
    lblGroundSpeed: TStaticText;
    edtGroundSpeed: TEdit;
    lblKnotsGroundSpeed: TStaticText;
    edtGameArea: TMaskEdit;
    tsPhysical: TTabSheet;
    grbDimensions: TGroupBox;
    lblLength: TStaticText;
    edtLength: TEdit;
    lblFeetLength: TStaticText;
    lblWidth: TStaticText;
    edtWidth: TEdit;
    lblFeetWidth: TStaticText;
    lblHeight: TStaticText;
    edtHeight: TEdit;
    lblFeetHeight: TStaticText;
    grbRadarCrossSection: TGroupBox;
    lblFront: TStaticText;
    edtFront: TEdit;
    lblSide: TStaticText;
    edtSide: TEdit;
    cbxDbm2Front: TComboBox;
    cbxDbm2Side: TComboBox;
    tsNotes: TTabSheet;
    mmoNotes: TMemo;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxDataChange(Sender: TObject);
    procedure CheckBoxDataClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedSatellite : TSatellite_Definition;

    function CekInput: Boolean;
    procedure UpdateSatelliteData;

  public
  isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    property SelectedSatellite : TSatellite_Definition read FSelectedSatellite
      write FSelectedSatellite;
  end;

var
  frmSummarySatellite: TfrmSummarySatellite;

implementation

uses
  uDataModuleTTT, ufrmAvailableSatellite;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSummarySatellite.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateSatelliteData;

  with FSelectedSatellite.FData do
    btnApply.Enabled := Satellite_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummarySatellite.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmSummarySatellite.btnApplyClick(Sender: TObject);
var
  second : Integer;

begin

  with FSelectedSatellite do
  begin
    if not CekInput then
    begin
      isOK := False;
      Exit;
    end;

    ValidationFormatInput;

    {$REGION ' General '}
    LastName := edtClass.Text;
    FData.Satellite_Identifier := edtClass.Text;

    FData.Plat_Type_Recog_Capability := Ord(cbPlatformType.Checked);
    FData.Plat_Class_Recog_Capability := Ord(cbPlatformClass.Checked);

    FData.Detection_Range_Radius := StrToFloat(edtDetectionRangeRadius.Text);

    TimeToSecond(edtGameArea.Text, second);
    FData.Orbit_Period := second;

    FData.Ground_Speed := StrToFloat(edtGroundSpeed.Text);
    FData.Altitude := StrToFloat(edtAltitude.Text);
    {$ENDREGION}

    {$REGION ' Physical '}
    FData.Length := StrToFloat(edtLength.Text);
    FData.Width := StrToFloat(edtWidth.Text);
    FData.Height := StrToFloat(edtHeight.Text);

    FData.Front_Radar_Cross := StrToFloat(edtFront.Text);
    FData.Side_Radar_Cross := StrToFloat(edtSide.Text);
    {$ENDREGION}

    {$REGION ' Notes '}
    FNote.Notes := mmoNotes.Text;
    {$ENDREGION}

    if FData.Satellite_Index = 0 then
    begin
      if dmTTT.InsertSatelliteDef(FData) then
      begin
        dmTTT.InsertNoteStorage(5, FData.Satellite_Index, FNote);
        ShowMessage('Data has been saved');
      end;
    end
    else
    begin
      if dmTTT.UpdateSatelliteDef(FData) then
      begin
        dmTTT.UpdateNoteStorage(FData.Satellite_Index, FNote);
        ShowMessage('Data has been updated');
      end;
    end;
  end;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummarySatellite.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmSummarySatellite.UpdateSatelliteData;
var
  timeStr : string;
begin
  with FSelectedSatellite do
  begin
    if FData.Satellite_Index = 0 then
      edtClass.Text := '(Unnamed)'
    else
      edtClass.Text := FData.Satellite_Identifier;

    {$REGION ' General '}
    LastName := edtClass.Text;

    cbPlatformType.Checked := Boolean(FData.Plat_Type_Recog_Capability);
    cbPlatformClass.Checked := Boolean(FData.Plat_Class_Recog_Capability);

    edtDetectionRangeRadius.Text := FormatFloat('0.00',FData.Detection_Range_Radius);

    SecondToTime(FData.Orbit_Period, timeStr);
    edtGameArea.Text := timeStr;

    edtAltitude.Text := FormatFloat('0', FData.Altitude);
    edtGroundSpeed.Text := FormatFloat('0.00', FData.Ground_Speed);
    {$ENDREGION}

    {$REGION ' Physical '}
    edtLength.Text := FormatFloat('0', FData.Length);
    edtWidth.Text := FormatFloat('0', FData.Width);
    edtHeight.Text := FormatFloat('0', FData.Height);

    edtFront.Text := FormatFloat('0.0', FData.Front_Radar_Cross);
    edtSide.Text := FormatFloat('0.0', FData.Side_Radar_Cross);
    {$ENDREGION}

    {$REGION ' Notes '}
    mmoNotes.Text := FNote.Notes;
    {$ENDREGION}

  end;
end;

function TfrmSummarySatellite.CekInput: Boolean;
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
  if (dmTTT.GetSatelliteDef(edtClass.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedSatellite.FData.Satellite_Index = 0 then
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

  Result := True;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmSummarySatellite.GetNumberOfKoma(s: string): Boolean;
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

procedure TfrmSummarySatellite.edtNumeralKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmSummarySatellite.CheckBoxDataClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummarySatellite.ComboBoxDataChange(Sender: TObject);
begin
  if TComboBox(Sender).ItemIndex = -1 then
    TComboBox(Sender).ItemIndex := 0;

  btnApply.Enabled := True;
end;

procedure TfrmSummarySatellite.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummarySatellite.ValidationFormatInput;
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
