unit drawRec;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, OleCtrls, uCoordConvertor,
  uMapXHandler, uDBAsset_GameEnvironment, StrUtils;

type
  TfEditGameCenter = class(TForm)
    pnlRight: TPanel;
    GroupBox1: TGroupBox;
    lblLatitude: TLabel;
    lblLongitude: TLabel;
    lblWidth: TLabel;
    lblWidthUnit: TLabel;
    edtWidth: TEdit;
    edtLongitude: TEdit;
    edtLatitude: TEdit;
    pnlMap: TPanel;
    VectorMap: TMap;
    btnApply: TButton;
    Panel1: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    pnlMainBackground: TPanel;
    pnlSparatorHor1: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure VectorMapDrawUserLayer(ASender: TObject; const Layer: IDispatch;
      hOutputDC, hAttributeDC: Cardinal; const RectFull,
      RectInvalid: IDispatch);
    procedure VectorMapMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VectorMapMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure VectorMapMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnApplyClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edtWidthKeyPress(Sender: TObject; var Key: Char);
  private
    FSelectedGameArea : TGame_Environment_Definition;

    FCanvas : TCanvas;
    FLyrDraw : CMapXLayer;
    FConverter : TCoordConverter;

    FIsMouseDown : Boolean;

    procedure LoadMap(aGeoset: string);
    procedure UpdateGameCenter;
  public
    function GetInput(s : string): Boolean;
    property SelectedGameArea : TGame_Environment_Definition
      read FSelectedGameArea write FSelectedGameArea;
  end;

var
  EditGameCenter: TfEditGameCenter;

implementation

uses
  uBaseCoordSystem, ufrmGameAreaVektorSummary, Math, uDataModuleTTT, uDBEditSetting;

{$R *.dfm}

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfEditGameCenter.VectorMapMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FIsMouseDown := True;

  with FSelectedGameArea.FGameArea do
    FConverter.ConvertToMap(X, Y, Game_Centre_Long, Game_Centre_Lat);

  UpdateGameCenter;
  VectorMap.Repaint;
end;

procedure TfEditGameCenter.VectorMapMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if FIsMouseDown then
  begin
    with FSelectedGameArea.FGameArea do
      FConverter.ConvertToMap(X, Y, Game_Centre_Long, Game_Centre_Lat);

    UpdateGameCenter;
    VectorMap.Repaint;
  end;
end;

procedure TfEditGameCenter.VectorMapMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FIsMouseDown := False;
end;

procedure TfEditGameCenter.LoadMap(aGeoset: string);
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

procedure TfEditGameCenter.btnApplyClick(Sender: TObject);
begin
  with FSelectedGameArea.FGameArea do
  begin
    Game_Centre_Lat := dmToLatitude(edtLatitude.Text);
    Game_Centre_Long := dmToLongitude(edtLongitude.Text);
    Game_X_Dimension := StrToFloat(edtWidth.Text);
    Game_Y_Dimension := StrToFloat(edtWidth.Text);
  end;

  UpdateGameCenter;
  VectorMap.Repaint;
end;

procedure TfEditGameCenter.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfEditGameCenter.btnOkClick(Sender: TObject);
begin
  with FSelectedGameArea.FGameArea do
  begin
    Game_Centre_Lat := dmToLatitude(edtLatitude.Text);
    Game_Centre_Long := dmToLongitude(edtLongitude.Text);

    Game_X_Dimension := StrToFloat(edtWidth.Text);
    Game_Y_Dimension := StrToFloat(edtWidth.Text);
  end;

  ModalResult := mrOk;
end;

procedure TfEditGameCenter.edtWidthKeyPress(Sender: TObject; var Key: Char);
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

  if Key = #13 then
  begin
    with FSelectedGameArea.FGameArea do
    begin
      Game_Centre_Lat := dmToLatitude(edtLatitude.Text);
      Game_Centre_Long := dmToLongitude(edtLongitude.Text);
      Game_X_Dimension := StrToFloat(edtWidth.Text);
      Game_Y_Dimension := StrToFloat(edtWidth.Text);
    end;

    UpdateGameCenter;
    VectorMap.Repaint;
  end;
end;

procedure TfEditGameCenter.VectorMapDrawUserLayer(ASender: TObject;
  const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull,
  RectInvalid: IDispatch);
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

    with FSelectedGameArea.FGameArea do
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

procedure TfEditGameCenter.FormCreate(Sender: TObject);
begin
  FCanvas := TCanvas.Create;
  FConverter := TCoordConverter.Create;

  ClientWidth := Screen.Monitors[0].Width;
  ClientHeight := Screen.Monitors[0].Height;

end;

procedure TfEditGameCenter.FormShow(Sender: TObject);
begin
  LoadMap(vAppDBSetting.MapSourceGeosetVECT);
  FConverter.FMap := VectorMap;

  UpdateGameCenter;
  VectorMap.Repaint;
end;

function TfEditGameCenter.GetInput(s: string): Boolean;
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

procedure TfEditGameCenter.UpdateGameCenter;
begin
  with FSelectedGameArea.FGameArea do
  begin
    edtLatitude.Text := formatDM_latitude(Game_Centre_Lat);
    edtLongitude.Text := formatDM_longitude(Game_Centre_Long);
    edtWidth.Text := FloatToStr(Game_X_Dimension);
  end;
end;

end.

