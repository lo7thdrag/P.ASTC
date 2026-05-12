unit ufrmPredefinedPatternSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBPattern, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TfrmPredefinedPatternSummary = class(TForm)
    lblName: TLabel;
    edtName: TEdit;
    btnEditPattern: TButton;
    pnlSparatorHor1: TPanel;
    Image2: TImage;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    pnl1Title: TPanel;
    pnl2ControlPage: TPanel;
    pcScenarioTabs: TPageControl;
    tsGeneral: TTabSheet;
    chkEventPattern: TCheckBox;
    grpEventPattern: TGroupBox;
    lblVehicle: TLabel;
    edtVehicle: TEdit;
    btnVehicle: TButton;
    grpPatternTermination: TGroupBox;
    lblType: TLabel;
    lblHeading: TLabel;
    lblHeadingUnit: TLabel;
    cbbType: TComboBox;
    edtHeading: TEdit;
    pnl3Button: TPanel;
    btnOK: TButton;
    btnApply: TButton;
    btnCancel: TButton;

    procedure FormShow(Sender: TObject);

    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure chkEventPatternClick(Sender: TObject);
    procedure btnVehicleClick(Sender: TObject);
    procedure cbbTypeChange(Sender: TObject);
    procedure edtHeadingKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditPatternClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    FSelectedPredefinedPattern : TPredefined_Pattern;
    FLastName : string;

    function CekInput: Boolean;
    procedure UpdatePredefinedPatternData;
    procedure UpdatePatternVehicle;
  public
    IdAction : Integer; {0: none, 1: new, 2: edit}

    property SelectedPredefinedPattern : TPredefined_Pattern
      read FSelectedPredefinedPattern write FSelectedPredefinedPattern;
  end;

var
  frmPredefinedPatternSummary: TfrmPredefinedPatternSummary;

implementation

uses
  uDataModuleTTT, uVehicleSelect, uTrainingPattern, uDBAsset_Vehicle;

{$R *.dfm}

procedure TfrmPredefinedPatternSummary.btnApplyClick(Sender: TObject);
begin
  if not CekInput then
    Exit;
  with FSelectedPredefinedPattern do
  begin
    if FData.Vehicle_Index = 0 then
    begin
      ShowMessage('Vehicle not found');
      Exit;
    end;

    FData.Pattern_Identifier := edtName.Text;
    FData.Pattern_Type := Ord(chkEventPattern.Checked);
    FData.Pattern_Termination := cbbType.ItemIndex;
    FData.Termination_Heading := StrToFloat(edtHeading.Text);

    if FData.Pattern_Index = 0 then
      dmTTT.InsertPredefinedPatternDef(FData)
    else
      dmTTT.UpdatePredefinedPatternDef(FData);
  end;

  UpdatePredefinedPatternData;
  btnApply.Enabled := False;
  IdAction := 0;
end;

procedure TfrmPredefinedPatternSummary.btnCancelClick(Sender: TObject);
begin
  IdAction := 0;
  Close;
end;

procedure TfrmPredefinedPatternSummary.btnEditPatternClick(Sender: TObject);
begin
  with fTrainingPattern do
  begin
    SelectedPredefinedPattern := FSelectedPredefinedPattern;
    ShowModal;
  end;
end;

procedure TfrmPredefinedPatternSummary.btnOkClick(Sender: TObject);
begin
  if IdAction <> 0 then
  begin
    if not CekInput then
      Exit;
  end;
  if btnApply.Enabled then
    btnApply.Click;
  IdAction := 0;
  Close;
end;

procedure TfrmPredefinedPatternSummary.btnVehicleClick(Sender: TObject);
begin
  with fVehicleSelect do
  begin
    VehicleSelectionCaller := vscPredefinedPattern;
    SelectedVehicleID := FSelectedPredefinedPattern.FData.Vehicle_Index;
    ShowModal;
    FSelectedPredefinedPattern.FData.Vehicle_Index := SelectedVehicleID;
  end;

  UpdatePatternVehicle;
  btnApply.Enabled := True;
end;

procedure TfrmPredefinedPatternSummary.cbbTypeChange(Sender: TObject);
begin
  edtHeading.Enabled := TComboBox(Sender).ItemIndex = 1;
  btnApply.Enabled := True;
end;

function TfrmPredefinedPatternSummary.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  if (edtName.Text = '') or (edtName.Text = ' ') then
  begin
    ShowMessage('Please use another name');
    Exit;
  end;

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
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  if dmTTT.Check_AcousticDecoy(edtName.Text) and (IdAction <> 2) then
  begin
    ShowMessage('Please use another name');
    Exit;
  end;

  if (IdAction = 2) and (FLastName <> edtName.Text) then
  begin
    if dmTTT.Check_AcousticDecoy(edtName.Text) then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmPredefinedPatternSummary.chkEventPatternClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmPredefinedPatternSummary.edtHeadingKeyPress(Sender: TObject;
  var Key: Char);
var
  value : Double;
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
    Key := #0;

  if Key = #13 then
  begin
    value := StrToFloat(edtHeading.Text);

    if value >= 360 then
      value := 0;

    edtHeading.Text := FormatFloat('0.00', value);

    btnApply.Enabled := True;
  end;
end;

procedure TfrmPredefinedPatternSummary.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TfrmPredefinedPatternSummary.FormShow(Sender: TObject);
begin
  UpdatePredefinedPatternData;

  with FSelectedPredefinedPattern.FData do
    btnApply.Enabled := Pattern_Index = 0;
end;

procedure TfrmPredefinedPatternSummary.UpdatePatternVehicle;
var
  vehicle : TVehicle_Definition;
begin
  with FSelectedPredefinedPattern.FData do
  begin
    dmTTT.GetVehicleDef(Vehicle_Index, vehicle);

    if Assigned(vehicle) then
      edtVehicle.Text := vehicle.FData.Vehicle_Identifier
    else
      edtVehicle.Text := '(None)';
  end;
end;

procedure TfrmPredefinedPatternSummary.UpdatePredefinedPatternData;
begin
  with FSelectedPredefinedPattern.FData do
  begin
    if Pattern_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Pattern_Identifier;

    chkEventPattern.Checked := Boolean(Pattern_Type);
    chkEventPatternClick(chkEventPattern);

    UpdatePatternVehicle;

    cbbType.ItemIndex := Pattern_Termination;
    cbbTypeChange(cbbType);
    edtHeading.Text := FloatToStr(Termination_Heading);

    btnEditPattern.Enabled := Pattern_Index <> 0;
  end;
  if IdAction = 2 then
    FLastName := edtName.Text;
end;

end.
