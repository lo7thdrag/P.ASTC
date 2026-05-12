unit uTRuler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ComCtrls, ExtCtrls, uBaseCoordSystem, Buttons,
  OleServer, MapXLib_TLB, uCoordConvertor;

type
  TRuler = class(TForm)
    pgc_Ruler: TPageControl;
    ts_Position: TTabSheet;
    ts_Range: TTabSheet;
    pnl_Range: TPanel;
    lbl_RRange: TLabel;
    lbl_RBearing: TLabel;
    edt_RValueofRange: TEdit;
    edt_RValueOfBearing: TEdit;
    grp_RStart: TGroupBox;
    lbl_RStartLat: TLabel;
    lbl_RStartLong: TLabel;
    edt_RStartValueOfLat: TEdit;
    edt_RStartValueOfLong: TEdit;
    grp_REnd: TGroupBox;
    lbl_REndLat: TLabel;
    lbl_REndLong: TLabel;
    edt_REndValueOfLat: TEdit;
    edt_REndValueOfLong: TEdit;
    pnl_Position: TPanel;
    lbl_PRange: TLabel;
    lbl_PBearing: TLabel;
    lbl_PStartValueOfRange: TLabel;
    lbl_PStartValueOfBearing: TLabel;
    grp_PStart: TGroupBox;
    lbl_PStartLat: TLabel;
    lbl_PStartLong: TLabel;
    edt_PStartValueOfLat: TEdit;
    edt_PStartValueOfLong: TEdit;
    grp_PEnd: TGroupBox;
    lbl_PEndLat: TLabel;
    lbl_PEndLong: TLabel;
    edt_PEndValueOfLat: TEdit;
    edt_PEndValueOfLong: TEdit;
    lbl_UnitBearing: TLabel;
    cbb_Unit: TComboBox;
    lbl_Degrees: TLabel;
    lbl_Unit: TLabel;
    lbl_PosUnit: TLabel;
    btn_PStart: TSpeedButton;
    btn_PEnd: TSpeedButton;
    btn_RStart: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_PStartClick(Sender: TObject);
    procedure btn_PEndClick(Sender: TObject);
    procedure btn_RStartClick(Sender: TObject);
    procedure cbb_UnitChange(Sender: TObject);
    procedure edt_RValueofRangeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_RValueOfBearingKeyPress(Sender: TObject; var Key: Char);

  private
    FRange : Double;
    FBearing : Double;

    function GetInput(s : string): Boolean;

  public
    FObjRulerVisible : Boolean;
    FBtnActive : Integer;
    S_ValueOfLong, S_ValueOfLat, E_ValueOfLong, E_ValueOfLat : Double;
    FDrawStart, FDrawEnd : Boolean;
    FObj_PointX, FObj_PointY : Integer;
    FChangeDraw : Boolean;

    FRulerConverter : TCoordConverter;

    procedure Fill_LongLat;

  end;

var
  Ruler: TRuler;

implementation

{$R *.dfm}

procedure TRuler.btn_PEndClick(Sender: TObject);
begin
  FBtnActive := 2;
  FDrawEnd := True;
  btn_PStart.Down := False;
  btn_RStart.Down := False;
end;

procedure TRuler.btn_PStartClick(Sender: TObject);
begin
  FBtnActive := 1;
  FDrawStart := True;
  btn_PEnd.Down := False;
  btn_RStart.Down := False;
end;

procedure TRuler.btn_RStartClick(Sender: TObject);
begin
  FBtnActive := 1;
  FDrawStart := True;
  FDrawEnd := True;
end;

procedure TRuler.cbb_UnitChange(Sender: TObject);
var
  FRangeValue : Double;
begin
  case cbb_Unit.ItemIndex of
    0 :
      begin
        FRangeValue := CalcRange(S_ValueOfLong,S_ValueOfLat, E_ValueOfLong, E_ValueOfLat);
//        FRange := StrToFloat(edt_RValueofRange.Text);
      end;
    1 :
      begin
         FRangeValue := CalcRange(S_ValueOfLong,S_ValueOfLat, E_ValueOfLong, E_ValueOfLat) *
                        C_NauticalMile_To_KiloMetre;
//         FRange := StrToFloat(edt_RValueofRange.Text) * C_KiloMetre_To_NauticalMile;
      end;
    2 :
      begin
        FRangeValue := CalcRange(S_ValueOfLong,S_ValueOfLat, E_ValueOfLong, E_ValueOfLat) *
                        C_NauticalMile_To_Yard;
//        FRange := StrToFloat(edt_RValueofRange.Text) * C_Yard_To_NauticalMile;
      end;
  else
    begin
      FRangeValue := CalcRange(S_ValueOfLong,S_ValueOfLat, E_ValueOfLong, E_ValueOfLat);
    end;
  end;

  lbl_PStartValueOfRange.Caption := FormatFloat('0.00', FRangeValue);
  lbl_PosUnit.Caption := cbb_Unit.Items[cbb_Unit.ItemIndex];
  lbl_Unit.Caption := cbb_Unit.Items[cbb_Unit.ItemIndex];
end;

procedure TRuler.edt_RValueOfBearingKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if key = #13 then
  begin
    Fill_LongLat;
    FChangeDraw := True;
  end;
end;

procedure TRuler.edt_RValueofRangeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if key = #13 then
  begin
    Fill_LongLat;
    FChangeDraw := True;
  end;
end;

procedure TRuler.Fill_LongLat;
var
FPointX, FPointY : Single;
FRangeValue : Double;
FMapX, FMapY : Double;
begin
  case pgc_Ruler.ActivePageIndex of
  0 : { Pgc.Position }
    begin
      case FBtnActive of
        1 :
        begin
          edt_PStartValueOfLong.Text := formatDMS_long(S_ValueOfLong);
          edt_PStartValueOfLat.Text := formatDMS_latt(S_ValueOfLat);
        end;
        2 :
        begin
          edt_PEndValueOfLong.Text := formatDMS_long(E_ValueOfLong);
          edt_PEndValueOfLat.Text := formatDMS_latt(E_ValueOfLat);
        end;
      end;
      cbb_UnitChange(nil);

      lbl_PStartValueOfBearing.Caption := FormatFloat('0.00', CalcBearing(S_ValueOfLong,
        S_ValueOfLat, E_ValueOfLong, E_ValueOfLat));
    end;
  1 : { Pgc.Range }
    begin
      edt_RStartValueOfLong.Text := formatDMS_long(S_ValueOfLong);
      edt_RStartValueOfLat.Text := formatDMS_latt(S_ValueOfLat);

      if cbb_Unit.ItemIndex = 0 then
        FRange := StrToFloat(edt_RValueofRange.Text)
      else if cbb_Unit.ItemIndex = 1 then
        FRange := StrToFloat(edt_RValueofRange.Text) * C_KiloMetre_To_NauticalMile
      else
        FRange := StrToFloat(edt_RValueofRange.Text) * C_Yard_To_NauticalMile;

      FBearing := StrToFloat(edt_RValueOfBearing.Text);

      RangeBearingToCoord(FRange, FBearing, FMapX, FMapY);
      FRulerConverter.ConvertToScreen(S_ValueOfLong + FMapX,
        S_ValueOfLat + FMapY, FObj_PointX, FObj_PointY);

      edt_REndValueOfLong.Text := formatDMS_long(S_ValueOfLong + FMapX);
      edt_REndValueOfLat.Text := formatDMS_latt(S_ValueOfLat + FMapY);
    end;
  end;
end;

procedure TRuler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FObjRulerVisible := False;
end;

procedure TRuler.FormShow(Sender: TObject);
begin
  FObjRulerVisible := True;
end;

function TRuler.GetInput(s: string): Boolean;
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

end.
