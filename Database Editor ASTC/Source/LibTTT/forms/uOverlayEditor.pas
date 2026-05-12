unit uOverlayEditor;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uCoordConvertor, uDBAsset_GameEnvironment, {TeCanvas,} ColorGrd, tttData,
  uMainStaticShape, uMainDynamicShape, uDrawOverlay,
  uLine, uArc, uTable, uRect, uPolygon,   uCircle, uEllipse, uSector, uText, uMainOverlay,
  uFormula{, RzButton}, System.ImageList, Vcl.Imaging.pngimage;

type
  TOverlayEditorForm = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    btnDecreaseScale: TToolButton;
    cbSetScale: TComboBox;
    btnIncreaseScale: TToolButton;
    btnZoom: TToolButton;
    btnMoveMap: TToolButton;
    btnCenterOnGame: TToolButton;
    grbShapeDetail: TGroupBox;
    pnlDynamic: TPanel;
    grpTextD: TGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl91: TLabel;
    lbl93: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label51: TLabel;
    edtTextRange: TEdit;
    edtTextFieldD: TEdit;
    edtTextBearing: TEdit;
    cbbTextSizeD: TComboBox;
    grpSectorD: TGroupBox;
    lbl64: TLabel;
    lbl65: TLabel;
    lbl66: TLabel;
    lbl67: TLabel;
    lbl68: TLabel;
    lbl69: TLabel;
    lbl70: TLabel;
    lbl71: TLabel;
    lbl72: TLabel;
    bvl7: TBevel;
    bvl8: TBevel;
    lbl73: TLabel;
    lbl74: TLabel;
    lbl63: TLabel;
    lbl89: TLabel;
    lbl90: TLabel;
    Label46: TLabel;
    edtSectorRange: TEdit;
    edtSectorInnerD: TEdit;
    edtSectorOuterD: TEdit;
    edtSectorStartAngleD: TEdit;
    edtSectorEndAngleD: TEdit;
    edtSectorBearing: TEdit;
    grpRectangleD: TGroupBox;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edtRecStartRange: TEdit;
    edtRecStartBearing: TEdit;
    edtRecEndRange: TEdit;
    edtRecEndBearing: TEdit;
    grpPolygonD: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    AddPolyD: TSpeedButton;
    btnDeletePolyD: TSpeedButton;
    Label7: TLabel;
    edtPolygonRange: TEdit;
    edtPolygonBearing: TEdit;
    lvPolyVertexD: TListView;
    grpLineD: TGroupBox;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl85: TLabel;
    lbl23: TLabel;
    lbl25: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    edtLineStartRange: TEdit;
    edtLineStartBearing: TEdit;
    edtLineEndRange: TEdit;
    edtLineEndBearing: TEdit;
    grpGridD: TGroupBox;
    lbl53: TLabel;
    lbl54: TLabel;
    lbl55: TLabel;
    lbl56: TLabel;
    lbl57: TLabel;
    lbl58: TLabel;
    lbl59: TLabel;
    bvl5: TBevel;
    lbl60: TLabel;
    bvl6: TBevel;
    lbl61: TLabel;
    lbl62: TLabel;
    lbl81: TLabel;
    lbl82: TLabel;
    lbl83: TLabel;
    Label44: TLabel;
    Bevel12: TBevel;
    Label45: TLabel;
    edtTableRange: TEdit;
    edtTableBearing: TEdit;
    edtTableHeightD: TEdit;
    edtTableWidthD: TEdit;
    edtTableColumnD: TEdit;
    edtTableRowD: TEdit;
    edtRotationAngleD: TEdit;
    grpEllipseD: TGroupBox;
    Label4: TLabel;
    lbl48: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    bvl4: TBevel;
    lbl49: TLabel;
    lbl79: TLabel;
    lbl80: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtEllipseRange: TEdit;
    edtEllipseBearing: TEdit;
    edtEllipseHorizontalD: TEdit;
    edtEllipseVerticalD: TEdit;
    grpCircleD: TGroupBox;
    Label52: TLabel;
    lbl1: TLabel;
    lblCentre: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    edtCircleRange: TEdit;
    edtCircleBearing: TEdit;
    edtCircleRadiusD: TEdit;
    grpArcD: TGroupBox;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label3: TLabel;
    Label60: TLabel;
    edtArcRange: TEdit;
    edtArcBearing: TEdit;
    edtArcRadiusD: TEdit;
    edtArcStartAngleD: TEdit;
    edtArcEndAngleD: TEdit;
    grpNoneD: TGroupBox;
    pnlStatic: TPanel;
    grpText: TGroupBox;
    lblTextPosition: TLabel;
    lblTextField: TLabel;
    lblTextSize: TLabel;
    SpeedButton: TSpeedButton;
    edtTextField: TEdit;
    cbbTextSize: TComboBox;
    edtTextPosLAt: TEdit;
    edtTextPosLong: TEdit;
    grpRectangle: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    edtRectStartPosLat: TEdit;
    edtRectStartPosLong: TEdit;
    edtRectEndPosLat: TEdit;
    edtRectEndPosLong: TEdit;
    grpArc: TGroupBox;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    SpeedButton7: TSpeedButton;
    edtArcPosLat: TEdit;
    edtArcPosLong: TEdit;
    edtArcRadius: TEdit;
    edtArcStartAngle: TEdit;
    edtArcEndAngle: TEdit;
    grpCircle: TGroupBox;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    SpeedButton5: TSpeedButton;
    edtCirclePosLong: TEdit;
    edtCircleRadius: TEdit;
    edtCirclePosLat: TEdit;
    grpEllipse: TGroupBox;
    Label63: TLabel;
    lblHorizontal: TLabel;
    Label78: TLabel;
    lblVertical: TLabel;
    lbl6: TLabel;
    bvl1: TBevel;
    Label79: TLabel;
    SpeedButton6: TSpeedButton;
    edtEllipsePosLat: TEdit;
    edtEllipsePosLong: TEdit;
    edtHorizontal: TEdit;
    edtVertical: TEdit;
    grpGrid: TGroupBox;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    bvl2: TBevel;
    lbl13: TLabel;
    bvl3: TBevel;
    lbl14: TLabel;
    lbl15: TLabel;
    SpeedButton9: TSpeedButton;
    Label90: TLabel;
    Bevel9: TBevel;
    edtTablePosLat: TEdit;
    edtTablePosLong: TEdit;
    edtTableHeight: TEdit;
    edtTableWidth: TEdit;
    edtTableColumn: TEdit;
    edtTableRow: TEdit;
    edtTableRotationAngle: TEdit;
    grpLine: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label47: TLabel;
    Label48: TLabel;
    SpeedButton2: TSpeedButton;
    edtLineStartPosLat: TEdit;
    edtLineStartPosLong: TEdit;
    edtLineEndPosLat: TEdit;
    edtLineEndPosLong: TEdit;
    grpPolygon: TGroupBox;
    Label91: TLabel;
    SpeedButton10: TSpeedButton;
    btnDeletePoly: TSpeedButton;
    edtPolyPosLat: TEdit;
    edtPolyPosLong: TEdit;
    lvPolyVertex: TListView;
    grpSector: TGroupBox;
    lblSectorCenter: TLabel;
    lblSectorInner: TLabel;
    lblSectorOuter: TLabel;
    lblSectorStartAngle: TLabel;
    lblSectorEndAngle: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    bvlRadii: TBevel;
    bvlAngle: TBevel;
    lbl11: TLabel;
    lbl12: TLabel;
    SpeedButton8: TSpeedButton;
    edtSectorPosLat: TEdit;
    edtSectorInner: TEdit;
    edtSectorOuter: TEdit;
    edtSectorStartAngle: TEdit;
    edtSectorEndAngle: TEdit;
    edtSectorPosLong: TEdit;
    grpNone: TGroupBox;
    Label8: TLabel;
    Label64: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Map1: TMap;
    pnlMainBackground: TPanel;
    pnlEditor: TPanel;
    pnlMap: TPanel;
    pnlToolBar: TPanel;
    pnlCursorPosition: TPanel;
    grpCursorPosition: TGroupBox;
    Label36: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label65: TLabel;
    lBearingFCenter: TLabel;
    lDistanceFCenter: TLabel;
    lPosLat: TLabel;
    lGridLat: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    lPosLong: TLabel;
    lGridLong: TLabel;
    pnl3Button: TPanel;
    Panel1: TPanel;
    btnClose: TButton;
    pnlSparatorHor1: TPanel;
    btnApply: TButton;
    btnScreenCapture: TButton;
    pnlOverlayEditor: TPanel;
    grbTypeShape: TGroupBox;
    btnText: TSpeedButton;
    btnLine: TSpeedButton;
    btnRectangle: TSpeedButton;
    btnCircle: TSpeedButton;
    btnEllipse: TSpeedButton;
    btnArc: TSpeedButton;
    btnSector: TSpeedButton;
    btnGrid: TSpeedButton;
    btnPolygon: TSpeedButton;
    btnNone: TSpeedButton;
    btnSelect: TSpeedButton;
    grbColour: TGroupBox;
    colorChoose: TColorGrid;
    colorPanel: TPanel;
    txtColorSelect: TStaticText;
    pnlVertical1: TPanel;
    pnlAlignToolBar: TPanel;
    btnNew: TImage;
    btnEdit: TImage;
    btnDelete: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure UpdateCursorPositionData(const X, Y: Integer);

    procedure Map1MapViewChanged(Sender: TObject);
    procedure Map1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Map1DrawUserLayer(ASender: TObject; const Layer: IDispatch; hOutputDC, hAttributeDC: Integer;
      const RectFull, RectInvalid: IDispatch);

    {Prince}
    procedure btnHandleShape(Sender: TObject);
    procedure btnHandleShapePosition(Sender: TObject);
    procedure btnHandleShapeEditor(Sender: TObject);
    procedure OnKeyPress(Sender: TObject; var Key: Char);

    procedure cbSetScaleChange(Sender: TObject);
    procedure btnDecreaseScaleClick(Sender: TObject);
    procedure btnIncreaseScaleClick(Sender: TObject);
    procedure btnZoomClick(Sender: TObject);
    procedure btnMoveMapClick(Sender: TObject);
    procedure btnCenterOnGameClick(Sender: TObject);
    procedure colorChooseChange(Sender: TObject);
    procedure btnDeletePolyClick(Sender: TObject);
    procedure btnDeletePolyDClick(Sender: TObject);
    procedure AddPolyDClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtColorSelectClick(Sender: TObject);
    procedure cbbTypeChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure lstReferencePointClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FOverlayDef : TOverlay_Definition;
    FTagTombolPosition : Integer;

  public
    ShapeType : Integer;
    IsCursorState : Integer; {0: none; 1: Add; 2: Edit}
    IsReEdit : Boolean;
    IdAction : Byte;       {1: add; 2: Edit; 3: Delete}
    IdSelectShape : Integer;

    StateOverlay : Integer; {tipe overlay utk kebutuhan tampilan}

    mx, my : double;

    FMapPlatform : TSimMap;
    FConverter    : TCoordConverter;
    FFormula     : TFormula;

    OverlayGameEnviroDef  : TGame_Environment_Definition;

    FCanvas               : TCanvas;
    FLyrDraw              : CMapXLayer;
    fFtrFactory           : CMapXFeatureFactory;
    sCaptureLayer         : CMapXLayer;
    pointCollection       : Variant;
    MouseIsDown,
    isCapturingScreen     : Boolean;

    DrawOverlay : TDrawOverlay;
    DrawFlagPoint : TDrawFlagPoint;

    FGameCentLong, FGameCentLat  : double;

    {Prince}
    procedure Apply;
    procedure Deleted;
    procedure Canceled;
    procedure FillEditText;
    procedure ClearForm;
    procedure ClearFlagPoint;
    procedure SelectShape(pos : TPoint);
    procedure RefreshMousePointer;
    procedure RefreshZoomButton;
    procedure RefreshLvPolyVertexList;
    procedure RefreshForm;

    procedure LoadShape(fFile : String);

    procedure GbrText;
    procedure GbrLine;
    procedure GbrRectangle;
    procedure GbrCircle;
    procedure GbrEllipse;
    procedure GbrArc;
    procedure GbrSector;
    procedure GbrGrid;
    procedure GbrPolygon;
    procedure GbrFlagPoint(mx, my :Double);

    procedure setCBScale;
//    procedure getGridCursorPos;
    procedure GameCenterDynamic;
    procedure GameCenterStatic;

    procedure ScreenShot(DestBitmap: TBitmap);
    procedure LoadMap(aGeoset: String);//; aArea: TRecGame_Area_Definition);

    function CekInput: Boolean;
    function GetInput(s : string): Boolean;
    function GetGridLatt(yCursorPoint : double) : string;
    function GetGridLong(xCursorPoint : double) : string;

    procedure UpAllToolbarButton;

    property OverlayDef : TOverlay_Definition read FOverlayDef write FOverlayDef;

  end;

var
  OverlayEditorForm: TOverlayEditorForm;
  xx: Double;
  yy: Double;
  b, TmpBmp: TBitmap;

implementation

uses
  uBaseCoordSystem, math, ufrmOverlaySummary, ComObj, uScrCapture, ufCaptureRes,
  uDBEditSetting, uDataModuleTTT, uRecord;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TOverlayEditorForm.FormCreate(Sender: TObject);
begin
  FConverter             := TCoordConverter.Create;

  OverlayGameEnviroDef  := TGame_Environment_Definition.Create;

  FCanvas   := TCanvas.Create;
  FFormula  := TFormula.Create;

  DrawOverlay := TDrawOverlay.Create;
  DrawOverlay.Converter := FConverter;

  DrawFlagPoint := TDrawFlagPoint.Create;
  DrawFlagPoint.Converter := FConverter;

  ShapeType := 0;
end;

procedure TOverlayEditorForm.FormShow(Sender: TObject);
begin
  pnlAlignToolBar.Width := round((pnlToolBar.Width-219) / 2);

  with OverlayDef.FData do
  begin

    pnlDynamic.Visible := Static_Overlay = osDynamic;
    pnlStatic.Visible := Static_Overlay = osStatic;

    case Static_Overlay of

      osDynamic:
      begin
        LoadMap(vAppDBSetting.MapSourcePathVECT + '\OverlayMap\background.gst');

        setCBScale;
        cbSetScale.ItemIndex := cbSetScale.Items.Count - 1;

        Map1.CenterX := 0;
        Map1.CenterY := 0;
      end;
      osStatic :
      begin
        LoadMap(vAppDBSetting.MapSourcePathVECT + '\OverlayMap\Indonesia.gst');

        {Game Center Kolam Pangkalan Surabaya}
        Map1.CenterX := 112.742090732373;
        Map1.CenterY  := -7.19970472718382;

        cbSetScale.ItemIndex := 0;//;cbSetScale.Items.Count - 1;
        cbSetScaleChange(cbSetScale);
      end;
    end;
  end;


  FGameCentLong := Map1.CenterX;
  FGameCentLat := Map1.CenterY;

  IsCursorState := 0;

  UpAllToolbarButton;

  //fFtrFactory := Map1.FeatureFactory;
  //Map1.DefaultStyle.RegionBackColor := TransparentColorValue;

  if not IsReEdit then
  begin
    drawOverlay.Clear;
    RefreshForm;

    LoadShape(vAppDBSetting.OverlayPath + '\' + ufrmOverlaySummary.frmOverlaySummary.LastName + '.dat');
    RefreshForm;
  end;

  { added by bebe }
//  cbSetScaleChange(Sender);
end;

procedure TOverlayEditorForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IsReEdit := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TOverlayEditorForm.UpAllToolbarButton;
begin
  btnCenterOnGame.Down := False;
  btnZoom.Down := False;
  btnMoveMap.Down := False;

  Map1.CurrentTool  := miArrowTool;
  Map1.MousePointer := miDefaultCursor;
end;

procedure TOverlayEditorForm.btnNewClick(Sender: TObject);
begin
  grbShapeIdentifier.Visible := True;
  grbShapeDetail.Visible := True;
end;

procedure TOverlayEditorForm.ClearForm;
begin
  edtName.Text := '';

  {$REGION ' Text '}
  edtTextPosLat.Text  := '';
  edtTextPosLong.Text := '';
  edtTextField.Text := 'None';

  edtTextRange.Text := '0';
  edtTextBearing.Text := '0';
  edtTextFieldD.Text := 'None';
  {$ENDREGION}

  {$REGION 'Line '}
  edtLineStartRange.Text := '0';
  edtLineStartBearing.Text := '0';
  edtLineEndRange.Text := '0';
  edtLineEndBearing.Text := '0';

  edtLineStartPosLong.Text := '';
  edtLineStartPosLat.Text := '';
  edtLineEndPosLong.Text := '';
  edtLineEndPosLat.Text := '';
  {$ENDREGION}

  {$REGION 'Rectangle '}
  edtRecStartRange.Text := '0';
  edtRecStartBearing.Text := '0';
  edtRecEndRange.Text := '0';
  edtRecEndBearing.Text := '0';

  edtRectStartPosLong.Text := '';
  edtRectStartPosLat.Text := '';
  edtRectEndPosLong.Text := '';
  edtRectEndPosLat.Text := '';
  {$ENDREGION}

  {$REGION 'Circle '}
  edtCircleRange.Text := '0';
  edtCircleBearing.Text := '0';
  edtCircleRadiusD.Text := '0';

  edtCircleRadius.Text := '0';
  edtCirclePosLong.Text := '';
  edtCirclePosLat.Text := '';
  {$ENDREGION}

  {$REGION 'Ellipse '}
  edtEllipseRange.Text := '0';
  edtEllipseBearing.Text := '0';
  edtEllipseHorizontalD.Text := '0';
  edtEllipseVerticalD.Text := '0';

  edtHorizontal.Text := '0';
  edtVertical.Text := '0';
  edtEllipsePosLong.Text := '';
  edtEllipsePosLat.Text := '';
  {$ENDREGION}

  {$REGION 'Arc '}
  edtArcRange.Text := '0';
  edtArcBearing.Text := '0';
  edtArcRadiusD.Text := '0';
  edtArcStartAngleD.Text := '0';
  edtArcEndAngleD.Text := '0';

  edtArcRadius.Text := '0';
  edtArcPosLong.Text := '';
  edtArcPosLat.Text := '';
  edtArcStartAngle.Text := '0';
  edtArcEndAngle.Text := '0';
  {$ENDREGION}

  {$REGION 'Sector '}
  edtSectorRange.Text := '0';
  edtSectorBearing.Text := '0';
  edtSectorInnerD.Text := '0';
  edtSectorOuterD.Text := '0';
  edtSectorStartAngleD.Text := '0';
  edtSectorEndAngleD.Text := '0';

  edtSectorInner.Text := '0';
  edtSectorOuter.Text := '0';
  edtSectorPosLong.Text := '';
  edtSectorPosLat.Text := '';
  edtSectorStartAngle.Text := '0';
  edtSectorEndAngle.Text := '0';
  {$ENDREGION}

  {$REGION 'Grid '}
  edtTableRange.Text := '0';
  edtTableBearing.Text := '0';
  edtTableHeightD.Text := '0';
  edtTableColumnD.Text := '0';
  edtTableWidthD.Text := '0';
  edtRotationAngleD.Text := '0';

  edtTableHeight.Text := '0';
  edtTableWidth.Text := '0';
  edtTablePosLong.Text := '';
  edtTablePosLat.Text := '';
  edtTableColumn.Text := '0';
  edtTableRow.Text := '0';
  edtTableRotationAngle.Text:= '0';
  {$ENDREGION}

  {$REGION 'Polygon '}
  edtPolygonRange.Text := '0';
  edtPolygonBearing.Text:= '0';
  lvPolyVertexD.Clear;
  lvPolyVertex.Clear;
  {$ENDREGION}

end;

procedure TOverlayEditorForm.ClearFlagPoint;
begin
  DrawFlagPoint.FList.Clear;
  Map1.Refresh;
  Map1.Repaint;
end;

procedure TOverlayEditorForm.Canceled;
var
  j : Integer;
  ShapeStatic : TMainStaticShape;
  ShapeDynamic : TMainDynamicShape;
begin
  for j := 0 to DrawOverlay.DynamicList.Count - 1 do
  begin
    ShapeDynamic := DrawOverlay.DynamicList.Items[j];
    ShapeDynamic.isSelected := False;
  end;

  for j := 0 to DrawOverlay.StaticList.Count - 1 do
  begin
    ShapeStatic := DrawOverlay.StaticList.Items[j];
    ShapeStatic.isSelected := False;
  end;

  Map1.Repaint;
end;

procedure TOverlayEditorForm.btnHandleShapePosition(Sender: TObject);
begin
  if (Sender is TSpeedButton) then
  begin
    FTagTombolPosition := TSpeedButton(Sender).Tag;

    if FTagTombolPosition = 10 then
    begin
      if not SpeedButton10.Down then
        Map1.CurrentTool := mtSelectObject
      else
        Map1.CurrentTool := mtAddOverlay;
    end
    else
    begin
      IsCursorState := 1;
      Map1.CurrentTool := miArrowTool;
      Map1.MousePointer := miCrossCursor;
    end;
  end;
end;

procedure TOverlayEditorForm.GameCenterDynamic;
var
  i, cx, cy, ex, ey, fx, fy, r: Integer;
  dx, dy : Double;
  point : TRect;
begin
  inherited;

  {Menggambar ring range}
  for i := 1 to 4 do
  begin
    dx := Map1.CenterX + (i*2)/60;
    dy := Map1.CenterY;

    FConverter.ConvertToScreen(Map1.CenterX, Map1.CenterY, cx, cy);
    FConverter.ConvertToScreen(dx, dy, ex, ey);

    r := Abs(cx - ex);

    point.Left    := cx - r;
    point.Top     := cy - r;
    point.Right   := cx + r;
    point.Bottom  := cy + r;

    with FCanvas do
    begin
      Brush.Style := bsClear;

      Pen.Style := psDashDot;
      Pen.Color := clGray;
      Pen.Width   := 1;

      Ellipse(point.Left, point.Top, point.Right, point.Bottom);
    end;
  end;

  {Menggambar cross center}
  FConverter.ConvertToScreen(Map1.CenterX, Map1.CenterY, fx, fy);
  with FCanvas do
  begin
    Pen.Style := psSolid;
    MoveTo(point.Left, fy); LineTo(point.Right, fy);
    MoveTo(fx,point.Top); LineTo(fx, point.Bottom);
  end;
end;

procedure TOverlayEditorForm.OnKeyPress(Sender: TObject; var Key: Char);
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
end;

procedure TOverlayEditorForm.RefreshForm;
begin
  RefreshMousePointer;
  ClearForm;
  Canceled;
  ClearFlagPoint;
  btnDelete.Enabled := False;
end;

procedure TOverlayEditorForm.RefreshLvPolyVertexList;
var
  j : Integer;
begin
  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      lvPolyVertexD.Items.BeginUpdate;
      try
       for j := 0 to lvPolyVertexD.Items.Count-1 do
         lvPolyVertexD.Items.Item[j].Caption:=IntToStr(j+1);
      finally
        lvPolyVertexD.Items.EndUpdate;
      end;
    end;
    osStatic :
    begin
      lvPolyVertex.Items.BeginUpdate;
      try
       for j := 0 to lvPolyVertex.Items.Count-1 do
         lvPolyVertex.Items.Item[j].Caption:=IntToStr(j+1);
      finally
        lvPolyVertex.Items.EndUpdate;
      end;
    end;
  end;
end;

procedure TOverlayEditorForm.RefreshMousePointer;
begin
//  Map1.Cursor := mtNormalCursor;
end;

procedure TOverlayEditorForm.RefreshZoomButton;
begin
  btnZoom.Down := False;
  Map1.MousePointer := miZoomInCursor;
end;

procedure TOverlayEditorForm.GameCenterStatic;
const dist = 0.166666667;
var
//  partition : integer;
//  centX, centY : single;
  distGrid   : Double;
  point1 : TMapPt;
  point2 : TMapPt;
  point3 : TMapPt;
  point4 : TMapPt;

  p1 : TScreenPt;
  p2 : TScreenPt;
  p3 : TScreenPt;
  p4 : TScreenPt;
  I, limit : Integer;
begin
//  FCanvas.Pen.color   := clWhite;
//  FCanvas.Brush.Style := bsClear;
//  partition := 8;
//  Map1.ConvertCoord(centX, centY, uOverlay.fOverlay.centLong, uOverlay.fOverlay.centLatt, miMapToScreen);
//  FCanvas.MoveTo(round(centX - partition), round(centY));
//  FCanvas.LineTo(round(centX + partition), round(centY));
//  FCanvas.MoveTo(round(centX), round(centY - partition));
//  FCanvas.LineTo(round(centX), round(centY + partition));
//  FCanvas.Pen.Width := 1;



  FCanvas.Pen.color   := clBlack;
  FCanvas.Pen.Style   := psSolid;
  FCanvas.Pen.Width   := 2;
//  dist := 1 / 60;       //1 satuan long/lat sebanding dgn 60 nm

  // 0
  point1.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong;
  point1.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt + dist;
  // 90
  point2.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong + dist ;
  point2.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt;
  // 180
  point3.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong;
  point3.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt - dist;
  // 270
  point4.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong - dist;
  point4.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt;

  Map1.ConvertCoord(p1.X, p1.Y, point1.Longitude, point1.Latitude, miMapToScreen);
  Map1.ConvertCoord(p2.X, p2.Y, point2.Longitude, point2.Latitude, miMapToScreen);
  Map1.ConvertCoord(p3.X, p3.Y, point3.Longitude, point3.Latitude, miMapToScreen);
  Map1.ConvertCoord(p4.X, p4.Y, point4.Longitude, point4.Latitude, miMapToScreen);

  FCanvas.MoveTo(round(p1.X), round(p1.Y));
  FCanvas.LineTo(round(p3.X), round(p3.Y));
  FCanvas.MoveTo(round(p2.X), round(p2.Y));
  FCanvas.LineTo(round(p4.X), round(p4.Y));

  FCanvas.Pen.Width := 1;

  //create grid
  FCanvas.Pen.color   := clLtGray;
  FCanvas.Pen.Style   := psDot;
  FCanvas.Pen.Width   := 1;

  limit := 10;

  distGrid := dist * 5; //grid dibuat dgn skala 5 nm
  for I := 0 to limit do
  begin
    // kiri
    point1.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong - (distGrid * limit);
    point1.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt - (distGrid * I);
    // kanan
    point2.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong + (distGrid * limit);
    point2.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt - (distGrid * I);
    // atas
    point3.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong - (distGrid * I);
    point3.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt - (distGrid * limit);
    // bawah
    point4.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong - (distGrid * I);
    point4.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt + (distGrid * limit);

    Map1.ConvertCoord(p1.X, p1.Y, point1.Longitude, point1.Latitude, miMapToScreen);
    Map1.ConvertCoord(p2.X, p2.Y, point2.Longitude, point2.Latitude, miMapToScreen);
    Map1.ConvertCoord(p3.X, p3.Y, point3.Longitude, point3.Latitude, miMapToScreen);
    Map1.ConvertCoord(p4.X, p4.Y, point4.Longitude, point4.Latitude, miMapToScreen);

    FCanvas.MoveTo(round(p1.X), round(p1.Y));
    FCanvas.LineTo(round(p2.X), round(p2.Y));
    FCanvas.MoveTo(round(p3.X), round(p3.Y));
    FCanvas.LineTo(round(p4.X), round(p4.Y));

    if I <> 0 then
    begin
      // kiri
      point1.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong - (distGrid * limit);
      point1.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt + (distGrid * I);
      // kanan
      point2.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong + (distGrid * limit);
      point2.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt + (distGrid * I);
      // atas
      point3.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong + (distGrid * I);
      point3.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt - (distGrid * limit);
      // bawah
      point4.Longitude := ufrmOverlaySummary.frmOverlaySummary.centLong + (distGrid * I);
      point4.Latitude  := ufrmOverlaySummary.frmOverlaySummary.centLatt + (distGrid * limit);

      Map1.ConvertCoord(p1.X, p1.Y, point1.Longitude, point1.Latitude, miMapToScreen);
      Map1.ConvertCoord(p2.X, p2.Y, point2.Longitude, point2.Latitude, miMapToScreen);
      Map1.ConvertCoord(p3.X, p3.Y, point3.Longitude, point3.Latitude, miMapToScreen);
      Map1.ConvertCoord(p4.X, p4.Y, point4.Longitude, point4.Latitude, miMapToScreen);

      FCanvas.MoveTo(round(p1.X), round(p1.Y));
      FCanvas.LineTo(round(p2.X), round(p2.Y));
      FCanvas.MoveTo(round(p3.X), round(p3.Y));
      FCanvas.LineTo(round(p4.X), round(p4.Y));
    end;
  end;
end;

procedure TOverlayEditorForm.FillEditText;
begin
  case FTagTombolPosition of
    0:
    begin
      edtTextPosLat.Text  := formatDMS_latt(my);
      edtTextPosLong.Text := formatDMS_long(mx);
    end;
    1:
    begin
      edtLineStartPosLat.Text  := formatDMS_latt(my);
      edtLineStartPosLong.Text := formatDMS_long(mx);
    end;
    2:
    begin
      edtLineEndPosLat.Text  := formatDMS_latt(my);
      edtLineEndPosLong.Text := formatDMS_long(mx);
    end;
    3:
    begin
      edtRectStartPosLat.Text  := formatDMS_latt(my);
      edtRectStartPosLong.Text := formatDMS_long(mx);
    end;
    4:
    begin
      edtRectEndPosLat.Text  := formatDMS_latt(my);
      edtRectEndPosLong.Text := formatDMS_long(mx);
    end;
    5:
    begin
      edtCirclePosLat.Text  := formatDMS_latt(my);
      edtCirclePosLong.Text := formatDMS_long(mx);
    end;
    6:
    begin
      edtEllipsePosLat.Text  := formatDMS_latt(my);
      edtEllipsePosLong.Text := formatDMS_long(mx);
    end;
    7:
    begin
      edtArcPosLat.Text  := formatDMS_latt(my);
      edtArcPosLong.Text := formatDMS_long(mx);
    end;
    8:
    begin
      edtSectorPosLat.Text  := formatDMS_latt(my);
      edtSectorPosLong.Text := formatDMS_long(mx);
    end;
    9:
    begin
      edtTablePosLat.Text  := formatDMS_latt(my);
      edtTablePosLong.Text := formatDMS_long(mx);
    end;
    10:
    begin
      edtPolyPosLat.Text  := formatDMS_latt(my);
      edtPolyPosLong.Text := formatDMS_long(mx);
    end;
  end;
end;

function TOverlayEditorForm.getGridLong(xCursorPoint : double) : string;
var
  xCenter, diffX, diffXnm : double;
  gridLong, addStringX    : string;
begin
  xCenter := ufrmOverlaySummary.frmOverlaySummary.GameArea.FGameArea.Game_Centre_Long;
  diffX   := abs(xCursorPoint - xCenter);
  diffXnm := diffX * 60;
  if xCursorPoint < xCenter then
     addStringX := 'W'
  else
     addStringX := 'E';
  gridLong := FormatFloat('0.00', diffXnm);
  result   := gridLong + ' nm ' + addStringX;
end;

function TOverlayEditorForm.GetInput(s: string): Boolean;
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

procedure TOverlayEditorForm.btnEditClick(Sender: TObject);
begin
//  if lstReferencePoint.ItemIndex = -1 then
//  begin
//    lstReferencePoint.ItemIndex := -1;
//    Exit;
//  end;

  grbShapeIdentifier.Visible := True;
  grbShapeDetail.Visible := True;

  IsCursorState := 2;
  //UpdateShapeData;
  Map1.Repaint;

end;

function TOverlayEditorForm.getGridLatt(yCursorPoint : double) : string;
var
  yCenter, diffY, diffYnm : double;
  gridLatt, addStringY    : string;
begin
  yCenter  := ufrmOverlaySummary.frmOverlaySummary.GameArea.FGameArea.Game_Centre_Lat;
  diffY    := abs(yCursorPoint - yCenter);
  diffYnm  := diffY * 60;
  if yCursorPoint < yCenter then
    addStringY := 'S'
  else
    addStringY := 'N';
  gridLatt := FormatFloat('0.00', diffYnm);
  result   := gridLatt + ' nm ' + addStringY;
end;

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType  := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TOverlayEditorForm.setCBScale;
var
  widthNM: Integer;
  limitWidth: Array [0 .. 15] of Double;
  arrayTemp: Array [0 .. 30] of Double;
  arrayStringTemp: Array [0 .. 30] of String;
  resultTemp: Array [0 .. 30] of String;
  a, b: Integer;
begin
  widthNM := floor(16);
  // isi combo box
  cbSetScale.Clear;
  // widthNM := strtoint(ExerciseAreaForm.edtMaximum.Text);

  limitWidth[0] := 0.125;
  limitWidth[1] := 0.25;
  limitWidth[2] := 0.5;
  limitWidth[3] := 1;
  limitWidth[4] := 2;
  limitWidth[5] := 4;
  limitWidth[6] := 8;
  limitWidth[7] := 16;
  limitWidth[8] := 32;
  limitWidth[9] := 64;
  limitWidth[10] := 128;
  limitWidth[11] := 256;
  limitWidth[12] := 512;
  limitWidth[13] := 1024;
  limitWidth[14] := 2048;
  limitWidth[15] := 2500;

  a := 0;
  while limitWidth[a] < widthNM do
  begin
    arrayTemp[a] := limitWidth[a];
    a := a + 1;
  end;
  arrayTemp[a] := widthNM;

  for b := 0 to a do
    arrayStringTemp[b] := floattostr(arrayTemp[b]);

  for b := 0 to a do
  begin
    resultTemp[b] := arrayStringTemp[b];
    cbSetScale.Items.add(resultTemp[b]);
  end;
end;

procedure TOverlayEditorForm.txtColorSelectClick(Sender: TObject);
begin
  grbColour.Visible := True;
end;

procedure TOverlayEditorForm.UpdateCursorPositionData(const X, Y: Integer);
var
  dx, dy, diffX, diffY : Double;
begin
  FConverter.ConvertToMap(X, Y, dx, dy);

  {Bearing From Center}
  lBearingFCenter.Caption := FormatFloat('0.00', CalcBearing(FGameCentLong, FGameCentLat, dx, dy));

  {Distance From Center}
  lDistanceFCenter.Caption := FormatFloat('0.00', CalcRange(FGameCentLong, FGameCentLat, dx, dy));

  {Corsor in Position}
  lPosLat.Caption := formatDM_latitude(dy);
  lPosLong.Caption := formatDM_longitude(dx);

  {Cursor in Grid}
  diffX := Abs(dx - FGameCentLong) * 60;
  diffY := Abs(dy - FGameCentLat) * 60;

  if dy < FGameCentLat then
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm S'
  else
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm N';

  if dx < FGameCentLong then
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm W'
  else
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm E';
end;

procedure TOverlayEditorForm.AddPolyDClick(Sender: TObject);
begin
  {tambah batasan disini}
  if lvPolyVertexD.Items.Count > 100 then
  begin
    ShowMessage('Number of point is over limit');
    Exit
  end;
  with lvPolyVertexD.Items.Add do
  begin
    SubItems.Add(edtPolygonRange.Text);
    SubItems.Add(edtPolygonBearing.Text);
  end;
  RefreshLvPolyVertexList;
end;

procedure TOverlayEditorForm.Apply;
begin
  case ShapeType of
    ovText : GbrText;
    ovLine : GbrLine;
    ovRectangle : GbrRectangle;
    ovCircle : GbrCircle;
    ovEllipse : GbrEllipse;
    ovArc : GbrArc;
    ovSector : GbrSector;
    ovGrid : GbrGrid;
    ovPolygon : GbrPolygon;
  end;

  Map1.Refresh;
  Map1.Repaint;
end;

procedure TOverlayEditorForm.btnDeletePolyClick(Sender: TObject);
begin
  lvPolyVertex.Clear;
end;

procedure TOverlayEditorForm.btnDeletePolyDClick(Sender: TObject);
begin
  lvPolyVertexD.Clear;
end;

procedure TOverlayEditorForm.btnHandleShape(Sender: TObject);
begin
  RefreshMousePointer;
  ClearFlagPoint;
  ClearForm;
  Canceled;
  IdAction := 1;

  ShapeType := cbbType.ItemIndex;

  case ShapeType of
    0: {Select}
    begin
      btnSelect.Down := True;

//      lblShape.Caption := '---';
      grpNoneD.BringToFront;
      grpNone.BringToFront;

      Map1.CurrentTool := mtEditOverlay;
    end;
    ovText:{Text}
    begin
//      lblShape.Caption := 'Text';
      grpTextD.BringToFront;
      grpText.BringToFront;
    end;
    ovLine:{Line}
    begin
//      lblShape.Caption := 'Line';
      grpLineD.BringToFront;
      grpLine.BringToFront;
    end;
    ovRectangle:{Rectangle}
    begin
//      lblShape.Caption := 'Rectangle';
      grpRectangleD.BringToFront;
      grpRectangle.BringToFront;
    end;
    ovCircle:{Circle}
    begin
//      lblShape.Caption := 'Circle';
      grpCircleD.BringToFront;
      grpCircle.BringToFront;
    end;
    ovEllipse:{Ellipse}
    begin
//      lblShape.Caption := 'Ellipse';
      grpEllipseD.BringToFront;
      grpEllipse.BringToFront;
    end;
    ovArc:{Arc}
    begin
//      lblShape.Caption := 'Arc';
      grpArcD.BringToFront;
      grpArc.BringToFront;
    end;
    ovSector:{Sector}
    begin
//      lblShape.Caption := 'Sector';
      grpSectorD.BringToFront;
      grpSector.BringToFront;
    end;
    ovGrid:{Grid}
    begin
//      lblShape.Caption := 'Grid';
      grpGridD.BringToFront;
      grpGrid.BringToFront;
    end;
    ovPolygon:{Polygon}
    begin
//      lblShape.Caption := 'Polygon';
      grpPolygonD.BringToFront;
      grpPolygon.BringToFront;
      SpeedButton10.Down := False;
    end;
  end;
end;

procedure TOverlayEditorForm.btnHandleShapeEditor(Sender: TObject);
begin
  case TButton(Sender).Tag of
    0: {Apply}
    begin
      Apply;
//      btnSelect.Click;
    end;
    1: {Delete}
    begin
      Deleted;
//      btnSelect.Click;
    end;
    3: {Close}
    begin
      Close;
      Canceled;
//      btnSelect.Click;
      IsReEdit := True;
    end;
    4: {Screen Capture}
    begin
      b := TBitmap.Create;
      ScreenShot(b);
      isCapturingScreen := true;
      fscrCapture.Image1.Picture.Assign(b);
      Exit;
    end;
  end;
  ClearForm;
  ClearFlagPoint;
  RefreshMousePointer;
  btnNone.Down := True;
end;

procedure TOverlayEditorForm.cbbTypeChange(Sender: TObject);
begin
  RefreshMousePointer;
  ClearFlagPoint;
  ClearForm;
  Canceled;
  IdAction := 1;

  //ShapeType := TSpeedButton(Sender).Tag;
  ShapeType := cbbType.ItemIndex+1;

  case cbbType.ItemIndex of
//    0: {Select}
//    begin
//      btnSelect.Down := True;
//
////      lblShape.Caption := '---';
//      grpNoneD.BringToFront;
//      grpNone.BringToFront;
//
//      //Map1.CurrentTool := mtEditOverlay;
//    end;

      {$REGION 'Teks '}
    0:
    begin
//      lblShape.Caption := 'Text';
      grpTextD.BringToFront;
      grpText.BringToFront;
    end;
       {$ENDREGION}

      {$REGION 'Line '}
    1:
    begin
//      lblShape.Caption := 'Line';
      grpLineD.BringToFront;
      grpLine.BringToFront;
    end;
       {$ENDREGION}

      {$REGION 'Rectangle '}
    2:
    begin
//      lblShape.Caption := 'Rectangle';
      grpRectangleD.BringToFront;
      grpRectangle.BringToFront;
    end;
       {$ENDREGION}

      {$REGION 'Circle '}
    3:
    begin
//      lblShape.Caption := 'Circle';
      grpCircleD.BringToFront;
      grpCircle.BringToFront;
    end;
        {$ENDREGION}

      {$REGION 'Ellipse '}
    4:
    begin
//      lblShape.Caption := 'Ellipse';
      grpEllipseD.BringToFront;
      grpEllipse.BringToFront;
    end;
       {$ENDREGION}

      {$REGION 'Arc '}
    5:
    begin
//      lblShape.Caption := 'Arc';
      grpArcD.BringToFront;
      grpArc.BringToFront;
    end;
       {$ENDREGION}

      {$REGION 'Sector '}
    6:
    begin
//      lblShape.Caption := 'Sector';
      grpSectorD.BringToFront;
      grpSector.BringToFront;
    end;
        {$ENDREGION}

      {$REGION 'Grid '}
    7:
    begin
//      lblShape.Caption := 'Grid';
      grpGridD.BringToFront;
      grpGrid.BringToFront;
    end;
        {$ENDREGION}

     {$REGION 'Polygon '}
    8:
    begin
//      lblShape.Caption := 'Polygon';
      grpPolygonD.BringToFront;
      grpPolygon.BringToFront;
      SpeedButton10.Down := False;
    end;
       {$ENDREGION}
  end;
end;

function TOverlayEditorForm.CekInput: Boolean;
begin
  Result := False;

  if (edtName.Text = '') then
    Result := True;

  case OverlayDef.FData.Static_Overlay of

    {$REGION ' Dynamic Section '}
    osDynamic :
    begin
      case ShapeType of
        ovText:{Text}
        begin
          if (edtTextRange.Text = '')or(edtTextBearing.Text = '')or
             (cbbTextSizeD.Text = '')or(edtTextFieldD.Text = '') then
            Result := True;
        end;
        ovLine:{Line}
        begin
          if (edtLineStartRange.Text = '')or(edtLineStartBearing.Text = '')or
             (edtLineEndRange.Text = '')or(edtLineEndBearing.Text = '') then
            Result := True;
        end;
        ovRectangle:{Rectangle}
        begin
          if (edtRecStartRange.Text = '')or(edtRecStartBearing.Text = '')or
             (edtRecEndRange.Text = '')or(edtRecEndBearing.Text = '') then
            Result := True;
        end;
        ovCircle:{Circle}
        begin
          if (edtCircleRange.Text = '')or(edtCircleBearing.Text = '')or
             (edtCircleRadiusD.Text = '') then
            Result := True;
        end;
        ovEllipse:{Ellipse}
        begin
          if (edtEllipseRange.Text = '')or(edtEllipseBearing.Text = '')or
             (edtEllipseHorizontalD.Text = '')or(edtEllipseVerticalD.Text = '') then
            Result := True;
        end;
        ovArc:{Arc}
        begin
          if (edtArcRange.Text = '')or(edtArcBearing.Text = '')or
             (edtArcRadiusD.Text = '')or(edtArcStartAngleD.Text = '')or
             (edtArcEndAngleD.Text = '')then
            Result := True;
        end;
        ovSector:{Sector}
        begin
          if (edtSectorRange.Text = '')or(edtSectorBearing.Text = '')or
             (edtSectorInnerD.Text = '')or(edtSectorOuterD.Text = '')or
             (edtSectorStartAngleD.Text = '')or(edtSectorEndAngleD.Text = '')then
            Result := True;
        end;
        ovGrid:{Grid}
        begin
          if (edtTableRange.Text = '')or(edtTableBearing.Text = '')or
             (edtTableHeightD.Text = '')or(edtTableColumnD.Text = '')or
             (edtTableWidthD.Text = '')or(edtTableRowD.Text = '')or
             (edtRotationAngleD.Text = '')then
            Result := True;
        end;
        ovPolygon:{Polygon}
        begin
          if lvPolyVertexD.Items.Count < 1 then
            Result := True;
        end;
      end;
    end;
    {$ENDREGION}

    {$REGION ' Static Section '}
    osStatic  :
    begin
      case ShapeType of
        ovText:{Text}
        begin
          if (cbbTextSize.Text = '') or (edtTextPosLong.Text = '') then
            Result := True;
        end;
        ovLine:{Line}
        begin
          if (edtLineStartPosLong.Text = '') or (edtLineEndPosLong.Text = '') then
            Result := True;
        end;
        ovRectangle:{Rectangle}
        begin
          if (edtRectStartPosLong.Text = '') or (edtRectEndPosLong.Text = '') then
            Result := True;
        end;
        ovCircle:{Circle}
        begin
          if (edtCircleRadius.Text = '') or (edtCirclePosLong.Text = '') then
            Result := True;
        end;
        ovEllipse:{Ellipse}
        begin
          if (edtHorizontal.Text = '') or (edtVertical.Text = '') or (edtEllipsePosLong.Text = '') then
            Result := True;
        end;
        ovArc:{Arc}
        begin
          if (edtArcRadius.Text = '') or (edtArcPosLong.Text = '') or (edtArcStartAngle.Text = '')
            or (edtArcEndAngle.Text = '')then
            Result := True;
        end;
        ovSector:{Sector}
        begin
          if (edtSectorInner.Text = '') or (edtSectorOuter.Text = '') or
             (edtSectorPosLong.Text = '') or (edtSectorStartAngle.Text = '') or
             (edtSectorEndAngle.Text = '')then
            Result := True;
        end;
        ovGrid:{Grid}
        begin
          if (edtTableHeight.Text = '') or (edtTableWidth.Text = '') or
             (edtTablePosLong.Text = '')or (edtTableColumn.Text = '') or
             (edtTableRow.Text = '') or (edtTableRotationAngle.Text = '') then
            Result := True;
        end;
        ovPolygon:{Polygon}
        begin
          if lvPolyVertex.Items.Count < 1 then
            Result := True;
        end;
      end;
    end;
    {$ENDREGION}

  end;

  if Result then
    ShowMessage('Incomplete data input');
end;

procedure TOverlayEditorForm.colorChooseChange(Sender: TObject);
begin
  txtColorSelect.color                := colorChoose.ForegroundColor;
  Map1.DefaultStyle.LineColor         := colorChoose.ForegroundColor;
  Map1.DefaultStyle.RegionColor       := TransparentColorValue;
  Map1.DefaultStyle.RegionBorderColor := colorChoose.ForegroundColor;

  grbColour.Visible :=False;
end;

procedure TOverlayEditorForm.Deleted;
begin
  case OverlayDef.FData.Static_Overlay of
    0 : DrawOverlay.DynamicList.Delete(IdSelectShape);
    1 : DrawOverlay.StaticList.Delete(IdSelectShape);
  end;
  RefreshForm;
end;

procedure TOverlayEditorForm.lstReferencePointClick(Sender: TObject);
begin
  if lstReferencePoint.ItemIndex = -1 then
  begin
//    FSelectedReferencePoint := nil;
    lstReferencePoint.ItemIndex := -1;
    Exit;
  end;

//  FSelectedReferencePoint := TReference_Point(lstReferencePoint.Items.Objects[lstReferencePoint.ItemIndex]);

//  UpdateReferencePointForm;
  Map1.Repaint;
end;

procedure TOverlayEditorForm.ScreenShot(DestBitmap: TBitmap);
var
  DC: HDC;
begin
  DC := GetDC(GetDesktopWindow);
  try
    DestBitmap.Width := GetDeviceCaps(DC, HORZRES);
    DestBitmap.Height := GetDeviceCaps(DC, VERTRES);
    BitBlt(DestBitmap.canvas.Handle, 0, 0, DestBitmap.Width, DestBitmap.Height,
      DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC(GetDesktopWindow, DC);
  end;
end;

{$ENDREGION}

{$REGION ' ToolBar Handle '}

procedure TOverlayEditorForm.btnDecreaseScaleClick(Sender: TObject);
begin
  if cbSetScale.ItemIndex > 0 then
  begin
    cbSetScale.ItemIndex := cbSetScale.ItemIndex - 1;
    btnIncreaseScale.Enabled := true;
  end;

  cbSetScaleChange(cbSetScale);

  if cbSetScale.ItemIndex = 0 then
    btnDecreaseScale.Enabled := false
  else
    btnDecreaseScale.Enabled := true;

  RefreshMousePointer;
end;

procedure TOverlayEditorForm.cbSetScaleChange(Sender: TObject);
var
  z: Double;
  s: string;
begin
  Map1.OnMapViewChanged := nil;

  if cbSetScale.ItemIndex < 0 then
    Exit;

  if (cbSetScale.ItemIndex <= 500) then
  begin
    s := cbSetScale.Items[cbSetScale.ItemIndex];
    try
      z := StrToFloat(s);
      Map1.ZoomTo(z, Map1.CenterX, Map1.CenterY);
    finally

    end;
  end
  else
    cbSetScale.ItemIndex  := cbSetScale.ItemIndex - 1;

  Map1.OnMapViewChanged   := Map1MapViewChanged;

  RefreshMousePointer;
  RefreshZoomButton;
end;

procedure TOverlayEditorForm.btnIncreaseScaleClick(Sender: TObject);
begin
  if (cbSetScale.ItemIndex <= 500) then
  begin
    cbSetScale.ItemIndex := cbSetScale.ItemIndex + 1;
    btnDecreaseScale.Enabled := true;
  end;

  cbSetScaleChange(cbSetScale);

  if (cbSetScale.ItemIndex = 0) then // sampai batas akhir  //10
    btnIncreaseScale.Enabled := true // false
  else
    btnIncreaseScale.Enabled := true;

  RefreshMousePointer;
  RefreshZoomButton;
end;

procedure TOverlayEditorForm.btnZoomClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnZoom.Down := True;
  Map1.CurrentTool  := miZoomInTool;
  Map1.MousePointer := miZoomInCursor;
end;

procedure TOverlayEditorForm.btnMoveMapClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnMoveMap.Down := True;
  Map1.CurrentTool  := miPanTool;
  Map1.MousePointer  := miPanCursor;
end;

procedure TOverlayEditorForm.btnCenterOnGameClick(Sender: TObject);
begin
  UpAllToolbarButton;

  Map1.CenterX := FGameCentLong;
  Map1.CenterY := FGameCentLat;

end;

procedure TOverlayEditorForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

{$ENDREGION}

{$REGION ' Shape Button Handle '}

procedure TOverlayEditorForm.GbrText;
var
  Size : Byte;
  TextStatic : TTextStatic;
  TextDynamic : TTextDynamic;
begin
  if CekInput then
    Exit;

  Size := 10;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if      cbbTextSizeD.Text = 'Small'   then Size := 10
      else if cbbTextSizeD.Text = 'Medium'  then Size := 15
      else if cbbTextSizeD.Text = 'Large'   then Size := 20;

      if IdAction = 2 then
        TextDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        TextDynamic := TTextDynamic.Create(FConverter);

      TextDynamic.ParentPos.X := Map1.CenterX;
      TextDynamic.ParentPos.Y := Map1.CenterY;

      TextDynamic.identifier := edtName.Text;
      TextDynamic.postStart.Range := StrToFloat(edtTextRange.Text);
      TextDynamic.postStart.Bearing := StrToInt(edtTextBearing.Text);
      TextDynamic.size := Size;
      TextDynamic.words := edtTextFieldD.Text;
      TextDynamic.Color := txtColorSelect.color;
      TextDynamic.isSelected := False;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(TextDynamic);
    end;
    osStatic  :
    begin
      if      cbbTextSize.Text = 'Small'   then Size := 10
      else if cbbTextSize.Text = 'Medium'  then Size := 15
      else if cbbTextSize.Text = 'Large'   then Size := 20;

      if IdAction = 2 then
        TextStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        TextStatic := TTextStatic.Create(FConverter);

      TextStatic.identifier := edtName.Text;
      TextStatic.postStart.X := dmsToLong(edtTextPosLong.Text);
      TextStatic.postStart.Y := dmsToLatt(edtTextPosLat.Text);
      TextStatic.size := Size;
      TextStatic.words := edtTextField.Text;
      TextStatic.Color := txtColorSelect.color;
      TextStatic.isSelected := False;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(TextStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrLine;
var
  LineStatic : TLineStatic;
  LineDynamic : TLineDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        LineDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        LineDynamic := TLineDynamic.Create(FConverter);

      LineDynamic.ParentPos.X := Map1.CenterX;
      LineDynamic.ParentPos.Y := Map1.CenterY;
      LineDynamic.identifier := edtName.Text;
      LineDynamic.PostStart.Bearing := StrToInt(edtLineStartBearing.Text);
      LineDynamic.PostStart.Range := StrToFloat(edtLineStartRange.Text);
      LineDynamic.PostEnd.Bearing := StrToInt(edtLineEndBearing.Text);
      LineDynamic.PostEnd.Range := StrToFloat(edtLineEndRange.Text);
      LineDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(LineDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        LineStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        LineStatic := TLineStatic.Create(FConverter);

      LineStatic.postStart.X := dmsToLong(edtLineStartPosLong.Text);
      LineStatic.postStart.Y := dmsToLatt(edtLineStartPosLat.Text);
      LineStatic.postEnd.X := dmsToLong(edtLineEndPosLong.Text);
      LineStatic.postEnd.Y := dmsToLatt(edtLineEndPosLat.Text);
      LineStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(LineStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrRectangle;
var
  RectangleStatic : TRectangleStatic;
  RectangleDynamic : TRectangleDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        RectangleDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        RectangleDynamic := TRectangleDynamic.Create(FConverter);

      RectangleDynamic.ParentPos.X := Map1.CenterX;
      RectangleDynamic.ParentPos.Y := Map1.CenterY;
      RectangleDynamic.identifier := edtName.Text;
      RectangleDynamic.PostStart.Bearing := StrToInt(edtRecStartBearing.Text);
      RectangleDynamic.PostStart.Range := StrToFloat(edtRecStartRange.Text);
      RectangleDynamic.PostEnd.Bearing := StrToInt(edtRecEndBearing.Text);
      RectangleDynamic.PostEnd.Range := StrToFloat(edtRecEndRange.Text);
      RectangleDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(RectangleDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        RectangleStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        RectangleStatic := TRectangleStatic.Create(FConverter);

      RectangleStatic.postStart.X := dmsToLong(edtRectStartPosLong.Text);
      RectangleStatic.postStart.Y := dmsToLatt(edtRectStartPosLat.Text);
      RectangleStatic.postEnd.X := dmsToLong(edtRectEndPosLong.Text);
      RectangleStatic.postEnd.Y := dmsToLatt(edtRectEndPosLat.Text);
      RectangleStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(RectangleStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrCircle;
var
  CircleStatic : TCircleStatic;
  CircleDynamic : TCircleDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        CircleDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        CircleDynamic := TCircleDynamic.Create(FConverter);

      CircleDynamic.ParentPos.X := Map1.CenterX;
      CircleDynamic.ParentPos.Y := Map1.CenterY;
      CircleDynamic.identifier := edtName.Text;
      CircleDynamic.postCenter.Bearing := StrToInt(edtCircleBearing.Text);
      CircleDynamic.postCenter.Range := StrToFloat(edtCircleRange.Text);
      CircleDynamic.Radius := StrToFloat(edtCircleRadiusD.Text);
      CircleDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(CircleDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        CircleStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        CircleStatic := TCircleStatic.Create(FConverter);

      CircleStatic.postCenter.X := dmsToLong(edtCirclePosLong.Text);
      CircleStatic.postCenter.Y := dmsToLatt(edtCirclePosLat.Text);
      CircleStatic.Radius := StrToFloat(edtCircleRadius.Text);
      CircleStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(CircleStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrEllipse;
var
  EllipseStatic : TEllipseStatic;
  EllipseDynamic : TEllipseDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        EllipseDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        EllipseDynamic := TEllipseDynamic.Create(FConverter);

      EllipseDynamic.ParentPos.X := Map1.CenterX;
      EllipseDynamic.ParentPos.Y := Map1.CenterY;
      EllipseDynamic.identifier := edtName.Text;
      EllipseDynamic.postCenter.Bearing := StrToInt(edtEllipseBearing.Text);
      EllipseDynamic.postCenter.Range := StrToFloat(edtEllipseRange.Text);
      EllipseDynamic.Vradius := StrToFloat(edtEllipseVerticalD.Text);
      EllipseDynamic.Hradius := StrToFloat(edtEllipseHorizontalD.Text);
      EllipseDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(EllipseDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        EllipseStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        EllipseStatic := TEllipseStatic.Create(FConverter);

      EllipseStatic.postCenter.X := dmsToLong(edtEllipsePosLong.Text);
      EllipseStatic.postCenter.Y := dmsToLatt(edtEllipsePosLat.Text);
      EllipseStatic.Hradius := StrToFloat(edtHorizontal.Text);
      EllipseStatic.Vradius := StrToFloat(edtVertical.Text);
      EllipseStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(EllipseStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrArc;
var
  ArcStatic : TArcStatic;
  ArcDynamic : TArcDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        ArcDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        ArcDynamic := TArcDynamic.Create(FConverter);

      ArcDynamic.ParentPos.X := Map1.CenterX;
      ArcDynamic.ParentPos.Y := Map1.CenterY;
      ArcDynamic.identifier := edtName.Text;
      ArcDynamic.postCenter.Bearing := StrToInt(edtArcBearing.Text);
      ArcDynamic.postCenter.Range := StrToFloat(edtArcRange.Text);
      ArcDynamic.Radius := StrToFloat(edtArcRadiusD.Text);
      ArcDynamic.StartAngle := StrToInt(edtArcStartAngleD.Text);
      ArcDynamic.EndAngle := StrToInt(edtArcEndAngleD.Text);
      ArcDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(ArcDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        ArcStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        ArcStatic := TArcStatic.Create(FConverter);

      ArcStatic.postCenter.X := dmsToLong(edtArcPosLong.Text);
      ArcStatic.postCenter.Y := dmsToLatt(edtArcPosLat.Text);
      ArcStatic.radius := StrToFloat(edtArcRadius.Text);
      ArcStatic.StartAngle := StrToInt(edtArcStartAngle.Text);
      ArcStatic.EndAngle := StrToInt(edtArcEndAngle.Text);
      ArcStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(ArcStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrSector;
var
  SectorStatic : TSectorStatic;
  SectorDynamic : TSectorDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        SectorDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        SectorDynamic := TSectorDynamic.Create(FConverter);

      SectorDynamic.ParentPos.X := Map1.CenterX;
      SectorDynamic.ParentPos.Y := Map1.CenterY;
      SectorDynamic.postCenter.Bearing := StrToInt(edtSectorBearing.Text);
      SectorDynamic.postCenter.Range := StrToFloat(edtSectorRange.Text);
      SectorDynamic.Oradius := StrToFloat(edtSectorOuterD.Text);
      SectorDynamic.Iradius := StrToFloat(edtSectorInnerD.Text);
      SectorDynamic.StartAngle := StrToInt(edtSectorStartAngleD.Text);
      SectorDynamic.EndAngle := StrToInt(edtSectorEndAngleD.Text);
      SectorDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(SectorDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        SectorStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        SectorStatic := TSectorStatic.Create(FConverter);

      SectorStatic.postCenter.X := dmsToLong(edtSectorPosLong.Text);
      SectorStatic.postCenter.Y := dmsToLatt(edtSectorPosLat.Text);
      SectorStatic.Oradius := StrToFloat(edtSectorOuter.Text);
      SectorStatic.Iradius := StrToFloat(edtSectorInner.Text);
      SectorStatic.StartAngle := StrToInt(edtSectorStartAngle.Text);
      SectorStatic.EndAngle := StrToInt(edtSectorEndAngle.Text);
      SectorStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(SectorStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrGrid;
var
  GridStatic : TGridStatic;
  GridDynamic : TGridDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
        GridDynamic := drawOverlay.DynamicList.Items[IdSelectShape]
      else
        GridDynamic := TGridDynamic.Create(FConverter);

      GridDynamic.ParentPos.X := Map1.CenterX;
      GridDynamic.ParentPos.Y := Map1.CenterY;
      GridDynamic.identifier := edtName.Text;
      GridDynamic.postCenter.Bearing := StrToInt(edtTableBearing.Text);
      GridDynamic.postCenter.Range := StrToFloat(edtTableRange.Text);
      GridDynamic.Height := StrToFloat(edtTableHeightD.Text);
      GridDynamic.Width := StrToFloat(edtTableWidthD.Text);
      GridDynamic.HCount := StrToInt(edtTableColumnD.Text);
      GridDynamic.WCount := StrToInt(edtTableRowD.Text);
      GridDynamic.Rotation := StrToInt(edtRotationAngleD.Text);
      GridDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(GridDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
        GridStatic := drawOverlay.StaticList.Items[IdSelectShape]
      else
        GridStatic := TGridStatic.Create(FConverter);

      GridStatic.postCenter.X := dmsToLong(edtTablePosLong.Text);
      GridStatic.postCenter.Y := dmsToLatt(edtTablePosLat.Text);
      GridStatic.Height := StrToFloat(edtTableHeight.Text);
      GridStatic.Width := StrToFloat(edtTableWidth.Text);
      GridStatic.HCount := StrToInt(edtTableColumn.Text);
      GridStatic.WCount := StrToInt(edtTableRow.Text);
      GridStatic.Rotation := StrToInt(edtTableRotationAngle.Text);
      GridStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(GridStatic);
    end;
  end;
end;

procedure TOverlayEditorForm.GbrPolygon;
var
  i : Integer;
  li : TListItem;
  Point1 : TDotDynamic;
  Point2 : TDotStatic;
  PolygonStatic : TPolygonStatic;
  PolygonDynamic : TPolygonDynamic;
begin
  if CekInput then
    Exit;

  case OverlayDef.FData.Static_Overlay of
    osDynamic :
    begin
      if IdAction = 2 then
      begin
        PolygonDynamic := drawOverlay.DynamicList.Items[IdSelectShape];
        PolygonDynamic.polyList.Clear;
      end
      else
      PolygonDynamic := TPolygonDynamic.Create(FConverter);
      PolygonDynamic.identifier := edtName.Text;
      PolygonDynamic.ParentPos.X := Map1.CenterX;
      PolygonDynamic.ParentPos.Y := Map1.CenterY;

      for i := 0 to lvPolyVertexD.Items.Count - 1 do
      begin
        li := lvPolyVertexD.Items[i];

        Point1 := TDotDynamic.Create;
        Point1.Range := StrToFloat(li.SubItems[0]);
        Point1.Bearing := StrToFloat(li.SubItems[1]);

        PolygonDynamic.polyList.Add(Point1);
      end;
      PolygonDynamic.Color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.DynamicList.Add(PolygonDynamic);
    end;
    osStatic  :
    begin
      if IdAction = 2 then
      begin
        PolygonStatic := drawOverlay.StaticList.Items[IdSelectShape];
        PolygonStatic.polyList.Clear;
      end
      else
        PolygonStatic := TPolygonStatic.Create(FConverter);

      for i := 0 to lvPolyVertex.Items.Count - 1 do
      begin
        li := lvPolyVertex.Items[i];

        Point2 := TDotStatic.Create;
        Point2.X := dmsToLong(li.SubItems[0]);
        Point2.Y := dmsToLatt(li.SubItems[1]);

        PolygonStatic.polyList.Add(Point2)
      end;
      PolygonStatic.color := txtColorSelect.color;

      if IdAction <> 2 then
        drawOverlay.StaticList.Add(PolygonStatic);

      SpeedButton10.Down := False;
    end;
  end;
end;

procedure TOverlayEditorForm.GbrFlagPoint(mx, my: Double);
var
  ObjectFlagPoint : TFlagPoint;
begin
  ObjectFlagPoint := TFlagPoint.Create(FConverter);
  ObjectFlagPoint.Post.X := mx;
  ObjectFlagPoint.Post.Y := my;
  DrawFlagPoint.FList.Add(ObjectFlagPoint);

  Map1.Refresh;
  Map1.Repaint;
end;

procedure TOverlayEditorForm.SelectShape(pos: TPoint);
begin
  if OverlayDef.FData.Static_Overlay = osDynamic then
    drawOverlay.SelectShapeDynamic(IdSelectShape, pos)
  else
    drawOverlay.SelectShapeStatic(IdSelectShape, pos);
end;

{$ENDREGION}

{$REGION ' Map Handle '}

procedure TOverlayEditorForm.Map1DrawUserLayer(ASender: TObject;const Layer: IDispatch; hOutputDC, hAttributeDC: Integer;const RectFull, RectInvalid: IDispatch);
begin
  if not Assigned(FCanvas) then
    Exit;
  FCanvas.Handle := hOutputDC;

  case OverlayDef.FData.Static_Overlay of
    osDynamic: GameCenterDynamic;
    osStatic : GameCenterStatic;
  end;

  DrawOverlay.drawAll(FCanvas, Map1);
  DrawFlagPoint.Draw(FCanvas);

  if Assigned(DrawOverlay.FSelectedDraw) then
  begin
     DrawOverlay.FSelectedDraw.isSelected := True;
     DrawOverlay.FSelectedDraw.Draw(FCanvas, Map1);
  end;

end;

procedure TOverlayEditorForm.Map1MapViewChanged(Sender: TObject);
var
  tempZoom : Double;
begin
  if Map1.CurrentTool = miZoomInTool then
  begin
    if Map1.Zoom <= 0.125 then
      tempZoom := 0.125;
    if (Map1.Zoom > 0.125) AND (Map1.Zoom < 1) then
      tempZoom := Map1.Zoom;
    if (Map1.Zoom >= 1) AND (Map1.Zoom <= 2500) then
      tempZoom := round(Map1.Zoom);
    if Map1.Zoom > 2500 then
      tempZoom := 2500;

    Map1.OnMapViewChanged := nil;
    Map1.ZoomTo(tempZoom, Map1.CenterX, Map1.CenterY);

    if (Map1.Zoom > 0.125) AND (Map1.Zoom < 0.25) then
    begin
      cbSetScale.text := FormatFloat('0.000', tempZoom);
    end
    else if (Map1.Zoom >= 0.25) AND (Map1.Zoom < 0.5) then
    begin
      cbSetScale.text := FormatFloat('0.00', tempZoom);
    end
    else if (Map1.Zoom >= 0.5) AND (Map1.Zoom < 1) then
    begin
      cbSetScale.text := FormatFloat('0.0', tempZoom);
    end
    else
      cbSetScale.text := floattostr(tempZoom);
    Map1.OnMapViewChanged := Map1MapViewChanged;
  end;
end;

procedure TOverlayEditorForm.Map1MouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos : TPoint;
begin
  FConverter.ConvertToMap(x, y, mx, my);

  if Button = mbLeft then
  begin
    {Untuk kebutuhan overlay}

    if Map1.MousePointer = miCrossCursor then
    begin

    end;

    if IsCursorState = 2 then
    begin
      FConverter.ConvertToScreen(mx, my, pos.X, pos.Y);
      SelectShape(pos);
    end
    else if IsCursorState = 1 then
    begin
      FillEditText;

      GbrFlagPoint(mx, my);

      if ShapeType = ovPolygon then
      begin
        if SpeedButton10.Down then
        begin
          {tambah batasan disini}
          if lvPolyVertex.Items.Count > 100 then
          begin
            ShowMessage('Number of point is over limit');
            Exit
          end;
          with lvPolyVertex.Items.Add do
          begin
            SubItems.Add(formatDMS_long(mx));
            SubItems.Add(formatDMS_latt(my));
          end;
          RefreshLvPolyVertexList;
        end;
      end
      else
      begin
        Map1.CurrentTool := miSelectTool;
        Map1.MousePointer := miDefaultCursor;
      end;
    end;

    {Merubah center view game}
//    if Map1.CurrentTool = mtPan then
//    begin
//      Map1.CenterX := xx;
//      Map1.CenterY := yy;
//
//      RefreshMousePointer;
//    end;
  end
  else if Button = mbRight then
  begin
    GetCursorPos(pos);

//    if IdAction = 2 then
//      pmOverlayEdit.Popup(pos.X, pos.Y);
  end;

  if isCapturingScreen then
  begin
    with fscrCapture do
    begin
      PDown.X := X;
      PDown.Y := Y;
      PActually.X := X;
      PActually.Y := Y;
      MouseIsDown := true;
      canvas.DrawFocusRect(RECT(X, Y, X, Y));
    end;
  end;
end;

procedure TOverlayEditorForm.Map1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  UpdateCursorPositionData(X, Y);
end;

procedure TOverlayEditorForm.Map1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if isCapturingScreen then
  begin
    with fscrCapture do
    begin
      PActually.X := X;
      PActually.Y := Y;
      MouseIsDown := true;

      TmpBmp := TBitmap.Create;

      with TmpBmp do
      begin
        Width := round(abs(PActually.X - PDown.X));
        Height := round(abs(PActually.Y - PDown.Y));
        BitBlt(TmpBmp.canvas.Handle, 0, 0, Width, Height,
          fscrCapture.Image1.canvas.Handle, Map1.Left + PDown.X, PDown.Y,
          SRCCOPY);
        fCaptureRes.imgCaptureResult.AutoSize := false;
        fCaptureRes.imgCaptureResult.Picture.Bitmap.Assign(TmpBmp);
        fCaptureRes.Width := Width + 10;
        fCaptureRes.Height := Height + fCaptureRes.pnlDisplay.Height + 10;
        fCaptureRes.ShowModal;

        if fCaptureRes.recapture then
          fCaptureRes.recapture := false
        else
          isCapturingScreen := false;
        MouseIsDown := false;
      end;
    end;
  end;
  Map1.repaint;     // dimatikan dl, msh coba polygon nya
end;

procedure TOverlayEditorForm.LoadMap(aGeoset: String); //aArea: TRecGame_Area_Definition);
var
  I: Integer;
  z: OleVariant;
  mInfo: CMapXLayerInfo;
  unusedVt: OleVariant;
  MyFont: TFont;
begin
//  if Map1 = nil then
//    Exit;
  InitOleVariant(z);

  Map1.Layers.RemoveAll;
  Map1.Geoset := aGeoset;

  for I := 1 to Map1.Layers.Count do
  begin
    Map1.Layers.Item(I).Selectable := false;
    Map1.Layers.Item(I).Editable := false;
  end;

  mInfo := CoLayerInfo.Create;
  mInfo.type_ := miLayerInfoTypeUserDraw;
  mInfo.AddParameter('Name', 'LYR_DRAW');

  FLyrDraw := Map1.Layers.add(mInfo, 1);

  Map1.Layers.AnimationLayer := FLyrDraw;
  Map1.MapUnit := miUnitNauticalMile;

//  Map1.CenterX := aArea.Game_Centre_Long;
//  Map1.CenterY := aArea.Game_Centre_Lat;

//  Map1.BackColor := RGB(192, 224, 255);

  FConverter.FMap := Map1;

  Map1.Repaint;

//  case OverlayDef.FData.Static_Overlay of
//    osDynamic :
//    begin
//      Map1.BackColor := RGB(0, 0, 0);
//      Map1.Zoom := aArea.Game_X_Dimension;;
//    end;
//    osStatic :
//    begin
//      if aArea.Detail_Map = 'ENC' then
//      begin
////        Map1.BackColor := RGB(192, 224, 255);
////
////        Map1.Zoom := 1;//aArea.Game_X_Dimension;
////        Map1.CenterX := aArea.Game_Centre_Long;
////        Map1.CenterY := aArea.Game_Centre_Lat;
//      end
//      else {vektor}
//      begin
////        Map1.BackColor := clSkyBlue;
////
////        // ini user layernya aldy rec.
////        TVarData(unusedVt).vType := varError;
////        TVarData(unusedVt).vError := DISP_E_PARAMNOTFOUND;
////        // Add car layer and make it an animation layer
////        FLyrDraw := Map1.Layers.CreateLayer('Features', unusedVt, 1, unusedVt,
////          unusedVt);
////        Map1.Layers.AnimationLayer := Map1.Layers.Item(FLyrDraw.name);
////
////        mInfo := CoLayerInfo.Create;
////        mInfo.type_ := miLayerInfoTypeUserDraw;
////        mInfo.AddParameter('Name', 'Capture');
////        sCaptureLayer := Map1.Layers.add(mInfo, 1);
////        Map1.Layers.AnimationLayer := sCaptureLayer;
////
////        MyFont := TFont.Create;
////        OleFontToFont(Map1.DefaultStyle.SymbolFont, MyFont);
////        MyFont.size := 12;
////        MyFont.Name := 'MapSym-En-Air';
////        MyFont.color := clRed;
////
////        Map1.DefaultStyle.SymbolFontColor := clYellow;
////
////        Map1.DefaultStyle.LineColor := clWhite;
////        Map1.DefaultStyle.LineWidth := 1;
////        Map1.DefaultStyle.SymbolCharacter := 80;
////
////        pointCollection := CoPoints.Create;
//      end;
//    end;
//  end;
end;

procedure TOverlayEditorForm.LoadShape(fFile: String);
var
   Fs : TFileStream;
begin
  if not FileExists(fFile) then
    exit;

  try
    Fs := TFileStream.Create(fFile, fmOPENREAD );
    case OverlayDef.FData.Static_Overlay of
      osDynamic : DrawOverlay.ShowStreamDataDynamic(Fs);
      osStatic  : DrawOverlay.ShowStreamDataStatic(Fs);
    end;
  except
    Showmessage('Couldn''t load file overlay!' + #13);
  end;

  Fs.Free;
end;

{$ENDREGION}

{$REGION ' Belum Dulu '}

//procedure TOverlayEditorForm.getGridCursorPos;
//var
//  yCursorPoint, xCursorPoint, yCenter, xCenter, diffX, diffY: Double;
//  diffXnm, diffYnm: Double;
//  gridLatt, gridLong, addStringX, addStringY: string;
//begin
//  yCursorPoint := yy;
//  xCursorPoint := xx;
//
//  yCenter := ufrmOverlaySummary.frmOverlaySummary.GameArea.FGameArea.Game_Centre_Lat;
//  xCenter := ufrmOverlaySummary.frmOverlaySummary.GameArea.FGameArea.Game_Centre_Long;
//
//  diffY := abs(yCursorPoint - yCenter);
//  diffX := abs(xCursorPoint - xCenter);
//
//  diffYnm := diffY * 60;
//  diffXnm := diffX * 60;
//
//  if yCursorPoint < yCenter then
//    addStringY := 'S'
//  else
//    addStringY := 'N';
//
//  if xCursorPoint < xCenter then
//    addStringX := 'W'
//  else
//    addStringX := 'E';
//
//  lPoslat.Caption := formatDM_latitude(yy);
//  lblWPosition.Caption := formatDM_longitude(xx);
//
//  gridLatt := FormatFloat('0.00', diffYnm);
//  gridLong := FormatFloat('0.00', diffXnm);
//  lblnmSGrid.Caption := gridLatt + ' nm ' + addStringY;
//  lblnmWGrid.Caption := gridLong + ' nm ' + addStringX;
//end;

{procedure TOverlayEditorForm.ShowStreamData(AStream: TStream);
var
  i : Integer;
  lastPos : int64;

  HeaderData  : TFileHeader;
  TextData    : TTextRecord;
  LineData    : TLineRecord;
  RectData    : TRectRecord;
  CircleData  : TCircleRecord;
  EllipseData : TEllipseRecord;
  ArcData     : TArcRecord;
  SectorData  : TSectorRecord;
  GridData    : TGridRecord;
  PolygonData : TPolygonRecord;

  OTextD       : TTextDynamic;
  OLineD       : TLineDynamic;
  ORectangleD  : TRectangleDynamic;
  OCircleD     : TCircleDynamic;
  OEllipseD    : TEllipseDynamic;
  OArcD        : TArcDynamic;
  OSectorD     : TSectorDynamic;
  OGridD       : TGridDynamic;
  OPolygonD    : TPolygonDynamic;

  TextShape       : TTextStatic;
  LineShape       : TLineStatic;
  RectangleShape  : TRectangleStatic;
  CircleShape     : TCircleStatic;
  EllipseShape    : TEllipseStatic;
  ArcShape        : TArcStatic;
  SectorShape     : TSectorStatic;
  GridShape       : TGridStatic;
  PolygonShape    : TPolygonStatic;

  Point1 : TDotStatic;
begin
  case OverlayDef.FData.Static_Overlay of
    osDynamic: DrawOverlay.DynamicList.Clear;
    osStatic : DrawOverlay.StaticList.Clear;
  end;

  AStream.Position := 0;
  lastPos := AStream.Position;

  while AStream.Position < AStream.Size do
  begin
    AStream.Read(HeaderData, SizeOf(HeaderData));
    AStream.Seek(lastPos, TSeekOrigin.soBeginning);

    with HeaderData do
    begin
      case OverlayDef.FData.Static_Overlay of
        osDynamic:
        begin
          case ID of
            ovText :
            begin
              AStream.Read(TextData, SizeOf(TextData));

              OTextD := TTextDynamic.Create(Converter);
              OTextD.ParentPos.X := Map1.CenterX;
              OTextD.ParentPos.Y := Map1.CenterY;
              OTextD.postStart.Range := TextData.posStart.X;
              OTextD.postStart.Bearing := TextData.posStart.Y;
              OTextD.size := TextData.Size;
              OTextD.words := TextData.Words;
              OTextD.Color := TextData.color;
              OTextD.isSelected := False;

              DrawOverlay.DynamicList.Add(OTextD)
            end;
          end;
        end;
        osStatic :
        begin
          case ID of
            ovText :
            begin
              AStream.Read(TextData, SizeOf(TextData));

              TextShape := TTextStatic.Create(Converter);
              TextShape.postStart := TextData.posStart;
              TextShape.size := TextData.Size;
              TextShape.words := TextData.Words;
              TextShape.Color := TextData.color;
              TextShape.isSelected := False;

              DrawOverlay.StaticList.Add(TextShape)
            end;
            ovLine :
            begin
              AStream.Read(LineData, SizeOf(LineData));

              LineShape := TLineStatic.Create(Converter);
              LineShape.postStart := LineData.posStart;
              LineShape.postEnd := LineData.posEnd;
              LineShape.Color := TextData.color;
              LineShape.isSelected := False;

              DrawOverlay.StaticList.Add(LineShape)
            end;
            ovRectangle :
            begin
              AStream.Read(RectData, SizeOf(RectData));

              RectangleShape := TRectangleStatic.Create(Converter);
              RectangleShape.postStart := RectData.posStart;
              RectangleShape.postEnd := RectData.posEnd;
              RectangleShape.Color := RectData.color;
              RectangleShape.isSelected := False;

              DrawOverlay.StaticList.Add(RectangleShape)
            end;
            ovCircle :
            begin
              AStream.Read(CircleData, SizeOf(CircleData));

              CircleShape := TCircleStatic.Create(Converter);
              CircleShape.postCenter := CircleData.postCenter;
              CircleShape.radius := CircleData.radius;
              CircleShape.Color := CircleData.color;
              CircleShape.isSelected := False;

              DrawOverlay.StaticList.Add(CircleShape)
            end;
            ovEllipse :
            begin
              AStream.Read(EllipseData, SizeOf(EllipseData));

              EllipseShape := TEllipseStatic.Create(Converter);
              EllipseShape.postCenter := EllipseData.postCenter;
              EllipseShape.Hradius := EllipseData.Hradius;
              EllipseShape.Vradius := EllipseData.Vradius;
              EllipseShape.Color := EllipseData.color;
              EllipseShape.isSelected := False;

              DrawOverlay.StaticList.Add(EllipseShape)
            end;
            ovArc :
            begin
              AStream.Read(ArcData, SizeOf(ArcData));

              ArcShape := TArcStatic.Create(Converter);
              ArcShape.postCenter := ArcData.postCenter;
              ArcShape.radius := ArcData.radius;
              ArcShape.StartAngle := ArcData.startAngle;
              ArcShape.EndAngle := ArcData.endAngle;
              ArcShape.Color := ArcData.color;
              ArcShape.isSelected := False;

              DrawOverlay.StaticList.Add(ArcShape)
            end;
            ovSector :
            begin
              AStream.Read(SectorData, SizeOf(SectorData));

              SectorShape := TSectorStatic.Create(Converter);
              SectorShape.postCenter := SectorData.postCenter;
              SectorShape.Oradius := SectorData.Oradius;
              SectorShape.Iradius := SectorData.Iradius;
              SectorShape.StartAngle:= SectorData.StartAngle;
              SectorShape.EndAngle := SectorData.EndAngle;
              SectorShape.Color := SectorData.color;
              SectorShape.isSelected := False;

              DrawOverlay.StaticList.Add(SectorShape)
            end;
            ovGrid :
            begin
              AStream.Read(GridData, SizeOf(GridData));

              GridShape := TGridStatic.Create(Converter);
              GridShape.postCenter := GridData.postCenter;
              GridShape.HCount := GridData.HCount;
              GridShape.WCount := GridData.WCount;
              GridShape.Height := GridData.Height;
              GridShape.Width := GridData.Width;
              GridShape.Color := GridData.color;
              GridShape.isSelected := False;

              DrawOverlay.StaticList.Add(GridShape)
            end;
            ovPolygon :
            begin
              AStream.Read(PolygonData, SizeOf(PolygonData));

              PolygonShape := TPolygonStatic.Create(Converter);

              SetLength(PolygonData.posStart, PolygonData.LengthArray);
              for I := 0 to PolygonData.LengthArray - 1 do
              begin
                Point1 := TDotStatic.Create;

                Point1 := PolygonData.posStart[I];
                PolygonShape.polyList.Add(Point);
              end;
              PolygonShape.Color := PolygonData.color;
              PolygonShape.isSelected := False;

              DrawOverlay.StaticList.Add(PolygonShape)
            end;
          end;
        end;
      end;
    end;
  end;
end; }




{$ENDREGION}
end.
