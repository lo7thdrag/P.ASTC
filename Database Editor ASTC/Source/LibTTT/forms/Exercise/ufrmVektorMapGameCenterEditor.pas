unit ufrmVektorMapGameCenterEditor;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, OleCtrls, uCoordConvertor,
  uMapXHandler, uDBAsset_GameEnvironment, StrUtils, Vcl.Imaging.pngimage;

type
  TfrmVektorMapGameCenterEditor = class(TForm)
    pnl3Button: TPanel;
    Panel1: TPanel;
    btnOK: TButton;
    btnApply: TButton;
    btnCancel: TButton;
    pnlMap: TPanel;
    VectorMap: TMap;
    pnlRight: TPanel;
    GroupBox1: TGroupBox;
    lblLatitude: TLabel;
    lblLongitude: TLabel;
    lblWidth: TLabel;
    lblWidthUnit: TLabel;
    edtWidth: TEdit;
    editLongitude: TEdit;
    editLatitude: TEdit;
    pnlSparatorHor1: TPanel;
    pnlSparatorHor2: TPanel;
    Image2: TImage;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure VectorMapDrawUserLayer(ASender: TObject; const Layer: IDispatch;
      hOutputDC, hAttributeDC: Cardinal; const RectFull,RectInvalid: IDispatch);
    procedure VectorMapMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VectorMapMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VectorMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

    procedure btnApplyClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private
    FSelectedGameSector : TGame_Environment_Definition;

    FCanvas : TCanvas;
    FLyrDraw : CMapXLayer;
    FConverter : TCoordConverter;

    FIsMouseDown : Boolean;

    procedure LoadMap(aGeoset: string);
    procedure UpdateGameCenter;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    isCancel : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    property SelectedGameSector : TGame_Environment_Definition
      read FSelectedGameSector write FSelectedGameSector;
  end;

var
  frmVektorMapGameCenterEditor: TfrmVektorMapGameCenterEditor;

implementation

uses
  uBaseCoordSystem, ufrmSummaryGameAreaVektor, Math, uDataModuleTTT, uDBEditSetting;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmVektorMapGameCenterEditor.FormCreate(Sender: TObject);
begin
  FCanvas := TCanvas.Create;
  FConverter := TCoordConverter.Create;

  ClientWidth := Screen.Monitors[0].Width;
  ClientHeight := Screen.Monitors[0].Height;

end;

procedure TfrmVektorMapGameCenterEditor.FormShow(Sender: TObject);
begin
  LoadMap(vAppDBSetting.MapSourceGeosetVECT);
  FConverter.FMap := VectorMap;

  UpdateGameCenter;
  VectorMap.Repaint;

  isOK := True;
  isCancel := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmVektorMapGameCenterEditor.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmVektorMapGameCenterEditor.btnApplyClick(Sender: TObject);
begin
  isOK := False;

  ValidationFormatInput;

  if not LatValidation(editLatitude.Text) then
  begin
    ShowMessage('Invalid format Latitude');
    Exit;
  end;

  if not LongValidation(editLongitude.Text) then
  begin
    ShowMessage('Invalid format Latitude');
    Exit;
  end;

  with FSelectedGameSector.FGameArea do
  begin
    Game_Centre_Lat := dmToLatitude(editLatitude.Text);
    Game_Centre_Long := dmToLongitude(editLongitude.Text);
    Game_X_Dimension := StrToFloat(edtWidth.Text);
    Game_Y_Dimension := StrToFloat(edtWidth.Text);
  end;

  UpdateGameCenter;
  VectorMap.Repaint;

  isOK := True;
  isCancel := False;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmVektorMapGameCenterEditor.btnCancelClick(Sender: TObject);
begin
  isCancel := True;
  Close;
end;

procedure TfrmVektorMapGameCenterEditor.UpdateGameCenter;
begin
  with FSelectedGameSector.FGameArea do
  begin
    editLatitude.Text := formatDM_latitude(Game_Centre_Lat);
    editLongitude.Text := formatDM_longitude(Game_Centre_Long);
    edtWidth.Text := FloatToStr(Game_X_Dimension);
  end;
end;

{$ENDREGION}

{$REGION ' Map Handle '}

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfrmVektorMapGameCenterEditor.VectorMapMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FIsMouseDown := True;

  with FSelectedGameSector.FGameArea do
    FConverter.ConvertToMap(X, Y, Game_Centre_Long, Game_Centre_Lat);

  UpdateGameCenter;
  VectorMap.Repaint;
end;

procedure TfrmVektorMapGameCenterEditor.VectorMapMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if FIsMouseDown then
  begin
    with FSelectedGameSector.FGameArea do
      FConverter.ConvertToMap(X, Y, Game_Centre_Long, Game_Centre_Lat);

    UpdateGameCenter;
    VectorMap.Repaint;
  end;
end;

procedure TfrmVektorMapGameCenterEditor.VectorMapMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FIsMouseDown := False;
end;

procedure TfrmVektorMapGameCenterEditor.LoadMap(aGeoset: string);
var
  z : OleVariant;
  i : Integer;
  mInfo : CMapXLayerInfo;
begin
  if VectorMap = nil then
    Exit;

  InitOleVariant(z);
  VectorMap.Layers.RemoveAll;
  VectorMap.Geoset := aGeoset;

  if aGeoset <> '' then
  begin
    for i := 1 to VectorMap.Layers.Count do
    begin
      VectorMap.Layers.Item(i).Selectable := False;
      VectorMap.Layers.Item(i).Editable := False;
    end;

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'LYR_DRAW');
    FLyrDraw := VectorMap.Layers.Add(mInfo, 1);

    VectorMap.Layers.AnimationLayer := FLyrDraw;
    VectorMap.MapUnit := miUnitNauticalMile;
  end;

  VectorMap.BackColor := RGB(0, 0, 0);
end;

procedure TfrmVektorMapGameCenterEditor.VectorMapDrawUserLayer(ASender: TObject;
  const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull,RectInvalid: IDispatch);
var
  centerX, centerY : Integer;
  areaTL, areaBR : TPoint;
  halfWidth : Double;
begin
  if not Assigned(FCanvas) then
    Exit;

  with FCanvas do
  begin
    Handle := hOutputDC;

    with FSelectedGameSector.FGameArea do
    begin
      FConverter.ConvertToScreen(Game_Centre_Long, Game_Centre_Lat, centerX,
        centerY);

      halfWidth := 0.5 * (Game_X_Dimension / 60);

      FConverter.ConvertToScreen((Game_Centre_Long - halfWidth),
        (Game_Centre_Lat - halfWidth), areaTL.X, areaTL.Y);

      FConverter.ConvertToScreen((Game_Centre_Long + halfWidth),
        (Game_Centre_Lat + halfWidth), areaBR.X, areaBR.Y);
    end;

    Pen.Color := RGB(200, 240, 100);
    Pen.Width := 1;
    MoveTo(0, centerY);
    LineTo(VectorMap.Width, centerY);
    MoveTo(centerX, 0);
    LineTo(centerX, VectorMap.Height);

    Pen.Color := RGB(100, 240, 0);
    Pen.Width := 2;
    MoveTo(areaTL.X, areaTL.Y);
    LineTo(areaBR.X, areaTL.Y);
    MoveTo(areaBR.X, areaTL.Y);
    LineTo(areaBR.X, areaBR.Y);
    MoveTo(areaBR.X, areaBR.Y);
    LineTo(areaTL.X, areaBR.Y);
    MoveTo(areaTL.X, areaBR.Y);
    LineTo(areaTL.X, areaTL.Y);
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmVektorMapGameCenterEditor.GetNumberOfKoma(s: string): Boolean;
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

procedure TfrmVektorMapGameCenterEditor.edtNumeralKeyPress(Sender: TObject; var Key: Char);
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

    with FSelectedGameSector.FGameArea do
    begin
      Game_Centre_Lat := dmToLatitude(editLatitude.Text);
      Game_Centre_Long := dmToLongitude(editLongitude.Text);
      Game_X_Dimension := StrToFloat(edtWidth.Text);
      Game_Y_Dimension := StrToFloat(edtWidth.Text);
    end;

    UpdateGameCenter;
    VectorMap.Repaint;
    btnApply.Enabled := True;
  end;
end;

procedure TfrmVektorMapGameCenterEditor.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmVektorMapGameCenterEditor.ValidationFormatInput;
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

