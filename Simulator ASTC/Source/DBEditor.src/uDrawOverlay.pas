unit uDrawOverlay;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin, OleCtrls, uMapXHandler,
  uBaseCoordSystem, math, {TeCanvas,} ColorGrd, tttData, uT3Unit, uMainOverlay, uRecord,
  uMainStaticShape, uMainDynamicShape,
  uFormula, uDataTypes, uCoordConvertor;
type

  TDrawOverlay = class
  private
    FConverter: TCoordConverter;
    procedure SetConverter(const Value: TCoordConverter);

  protected

  public
    FList         : TList;
    FFormula      : TFormula;
    FSelectedDraw : TMainOverlayTemplate;

    FSelectedDrawTodel      : TMainOverlay;

    constructor Create;
    destructor Destroy; override;

    procedure Clear;
    procedure Draw(FCanvas: TCanvas; Map1: TMap);

    procedure AddOverlayTemplate(OvelayTemplate : TMainOverlayTemplate);
    procedure RemoveOverlayTemplate(OvelayTemplate : TMainOverlayTemplate);

    procedure ShowStreamDataDynamic(AStream: TStream; overlay :TMainOverlayTemplate);
    procedure ShowStreamDataStatic(AStream: TStream; overlay :TMainOverlayTemplate);

    procedure SelectShapeStatic (var IdSelected : Integer; IdTemplate: Integer; pos : TPoint);
    procedure SelectShapeDynamic (var IdSelected : Integer; IdTemplate: Integer; IdSelectedTrack : Integer; pos : TPoint);
    procedure FindPoint(postCont: t2DPoint; var postValue : t2DPoint; vd, vi: Double);

    function FindParent(iParent: TT3PlatformInstance; var postValue : t2DPoint): Boolean;

    property Converter : TCoordConverter read FConverter write SetConverter;

  end;

  TDrawFlagPoint = class
  private
    FConverter: TCoordConverter;
    procedure SetConverter(const Value: TCoordConverter);

  protected

  public
    FList              : TList;

    constructor Create;
    destructor Destroy; override;

    procedure Clear;
    procedure Draw(FCanvas: TCanvas);

    property Converter : TCoordConverter read FConverter write SetConverter;
  end;

implementation
{$IFDEF CLIENT}
uses
  uOverlayTemplateEditor;
{$ENDIF}


constructor TDrawOverlay.Create;
begin
  FList := TList.Create;
end;

destructor TDrawOverlay.Destroy;
begin
  FList.Free;
end;

procedure TDrawOverlay.Clear;
begin
  FList.Clear;
end;

procedure TDrawOverlay.AddOverlayTemplate(OvelayTemplate: TMainOverlayTemplate);
begin
  FList.Add(OvelayTemplate);
end;

procedure TDrawOverlay.RemoveOverlayTemplate(OvelayTemplate: TMainOverlayTemplate);
begin
  FList.Remove(OvelayTemplate);
end;

procedure TDrawOverlay.Draw(FCanvas: TCanvas; Map1: TMap);
var
  i : Integer;
  item : TMainOverlayTemplate;

  itemtodel : TMainOverlay;
begin
  for i := 0 to FList.Count - 1 do
  begin
    item := FList[i];
    item.Draw(FCanvas, Map1);
  end;

  for i := 0 to FList.Count - 1 do
  begin
    itemtodel := FList[i];
    itemtodel.Draw(FCanvas, Map1);
  end;
end;

function TDrawOverlay.FindParent(iParent: TT3PlatformInstance;
  var postValue: t2DPoint): Boolean;
begin
  Result := False;
  if not Assigned(iParent) then
    Exit;

  if (iParent.Dormant) or (iParent.FreeMe) then
    Exit;

  postValue.X := iParent.PosX;
  postValue.Y := iParent.PosY;

  Result := True;
end;

procedure TDrawOverlay.FindPoint(postCont: t2DPoint; var postValue: t2DPoint; vd, vi: Double);
var
  dx, dy : Double;
begin
  RangeBearingToCoord(vd, vi, dx, dy);
  postValue.X := postCont.X + dx;
  postValue.Y := postCont.Y + dy;
end;

procedure TDrawOverlay.SelectShapeDynamic(var IdSelected : Integer; IdTemplate: Integer; IdSelectedTrack : Integer; pos : TPoint);
var
  i, j, k, Hr,Vr, r,
  x1, x2, x3, x4, x5,
  y1, y2, y3, y4, y5 : Integer;

  Rx, Ry, Idx, Idy, Odx, Ody,
  RCenterToPoint, BCenterToPoint,
  RKiAts, RKaAts, RKiBwh, RKaBwh,
  BKiAts, BKaAts, BKiBwh, BKaBwh : Double;

  rngShipToShape, brgShipToShape,
  rngShipToShapeS, brgShipToShapeS, rngShipToShapeE, brgShipToShapeE : Double;

  IptS, IptE, OptS, OptE, ptCen, ptPos : t2DPoint;

  rect1, rect2, rect3, rect4 : TRect;

  item        : TMainDynamicShape;
  OText       : TTextDynamic;
  OLine       : TLineDynamic;
  ORectangle  : TRectangleDynamic;
  OCircle     : TCircleDynamic;
  OEllipse    : TEllipseDynamic;
  OArc        : TArcDynamic;
  OSector     : TSectorDynamic;
  OGrid       : TGridDynamic;
  OPolygon    : TPolygonDynamic;

  polyPoint : Array of TPoint;
  point : TDotDynamic;

  IsFind : Boolean;

  OverlayTemplate : TMainOverlayTemplate;

  BOffset, BSShape, BEShape : Double;

  pOffset, pSShape, pEShape,
  pParent :  t2DPoint;
  Ship : TMainTrackSelection;
begin
  OverlayTemplate := FList.Items[IdTemplate];
  for i := 0 to OverlayTemplate.DynamicList.Count - 1 do
  begin
    item := OverlayTemplate.DynamicList[i];
    item.isSelected := False;
  end;

  Ship := OverlayTemplate.FListTrack.Items[IdSelectedTrack];
  Ship.isDraw := True;

  IsFind := False;

  for i := 0 to OverlayTemplate.DynamicList.Count - 1 do
  begin
    ptPos := FFormula.PointTo2D(pos.X, pos.Y);

    item := OverlayTemplate.DynamicList[i];

    item.Parent := Ship.Parent;
    item.RangeOffset := Ship.RangeOffset;
    item.BearingOffset := Ship.BearingOffset;
    item.RotationOffset := Ship.Rotation;
    item.Orientation := Ship.Orientation;

    if item is TTextDynamic then
    begin
      OText := TTextDynamic(item);

      with OText do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape from Point offset}
        BSShape := postStart.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postStart.Range, BSShape);

        {Find Shape from Ship}
        rngShipToShape := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        brgShipToShape := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);

        case Orientation of
          0 : brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
          1 : brgShipToShape := ValidateDegree(brgShipToShape);
        end;

        FindPoint(pParent, pSShape, rngShipToShape, brgShipToShape);

        Converter.ConvertToScreen(pSShape.X, pSShape.Y, x1, y1);
        rect1 := FFormula.checkText(x1, y1, OText.Size, OText.words);

        if ptToArea(rect1, ptPos) then
        begin
          IsFind := True;
          OText.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtTextRange.Text     := FloatToStr(postStart.Range);
          fmOverlayEditor.edtTextBearing.Text   := FloatToStr(postStart.Bearing);
          fmOverlayEditor.edtTextFieldD.Text    := words;
          fmOverlayEditor.clrbxColor.Selected := OText.Color;

          if Size = 10 then fmOverlayEditor.cbbTextSizeD.Text := 'Small'  else
          if Size = 15 then fmOverlayEditor.cbbTextSizeD.Text := 'Medium' else
          if Size = 20 then fmOverlayEditor.cbbTextSizeD.Text := 'Large';

          fmOverlayEditor.TagObject := ovText;
          fmOverlayEditor.lblShape.Caption := 'Text';
          fmOverlayEditor.grpTextD.BringToFront;
          {$ENDIF}

          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TLineDynamic then
    begin
      OLine := TLineDynamic(item);

      with OLine do
      begin
        if not FindParent(OLine.Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape from Point offset}
        BSShape := postStart.Bearing + RotationOffset;
        BEShape := postEnd.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postStart.Range, BSShape);
        FindPoint(pOffset, pEShape, postEnd.Range, BEShape);

        {Find Shape from Ship}
        rngShipToShapeS := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        brgShipToShapeS := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        rngShipToShapeE := CalcRange(pParent.X, pParent.Y, pEShape.X, pEShape.Y);
        brgShipToShapeE := CalcBearing(pParent.X, pParent.Y, pEShape.X, pEShape.Y);

        case Orientation of
          0 :
          begin
            brgShipToShapeS := ValidateDegree(Parent.Heading + brgShipToShapeS);
            brgShipToShapeE := ValidateDegree(Parent.Heading + brgShipToShapeE);
          end;
          1 :
          begin
            brgShipToShapeS := ValidateDegree(brgShipToShapeS);
            brgShipToShapeE := ValidateDegree(brgShipToShapeE);
          end;
        end;

        FindPoint(pParent, pSShape, rngShipToShapeS, brgShipToShapeS);
        FindPoint(pParent, pEShape, rngShipToShapeE, brgShipToShapeE);

        Converter.ConvertToScreen(pSShape.X, pSShape.Y, x1, y1);
        Converter.ConvertToScreen(pEShape.X, pEShape.Y, x2, y2);

        IptS  := FFormula.PointTo2D(x1, y1);
        IptE  := FFormula.PointTo2D(x2, y2);

        if ptToLine(IptS,IptE,ptPos) then
        begin
          IsFind := True;
          OLine.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtLineStartRange.Text    := FloatToStr(postStart.Range);
          fmOverlayEditor.edtLineStartBearing.Text  := FloatToStr(postStart.Bearing);
          fmOverlayEditor.edtLineEndRange.Text      := FloatToStr(postEnd.Range);
          fmOverlayEditor.edtLineEndBearing.Text    := FloatToStr(postEnd.Bearing);
          fmOverlayEditor.clrbxColor.Selected  := OLine.Color;

          fmOverlayEditor.TagObject := ovLine;
          fmOverlayEditor.lblShape.Caption := 'Line';
          fmOverlayEditor.grpLineD.BringToFront;
          {$ENDIF}

          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TRectangleDynamic then
    begin
      ORectangle := TRectangleDynamic(item);

      with ORectangle do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape from Point offset}
        BSShape := postStart.Bearing;
        BEShape := postEnd.Bearing;
        FindPoint(pOffset, pSShape, postStart.Range, BSShape);
        FindPoint(pOffset, pEShape, postEnd.Range, BEShape);

        //Point Center
        Rx := CalcRange(pSShape.X, pSShape.Y, pEShape.X, pSShape.Y);
        Ry := CalcRange(pSShape.X, pSShape.Y, pSShape.X, pEShape.Y);
        RCenterToPoint  := CalcRange(pSShape.X, pSShape.Y, pEShape.X, pEShape.Y)/2;
        BCenterToPoint  := CalcBearing(pSShape.X, pSShape.Y, pEShape.X, pEShape.Y);

        FindPoint(pSShape, ptCen, RCenterToPoint, BCenterToPoint);

        //Point Kiri Atas
        IptS.X := ptCen.X - (Rx/60/2);
        IptS.Y := ptCen.Y + (Ry/60/2);

        //Point Kanan Atas
        IptE.X := ptCen.X + (Rx/60/2);
        IptE.Y := ptCen.Y + (Ry/60/2);

        //Point Kanan Bawah
        OptE.X := ptCen.X + (Rx/60/2);
        OptE.Y := ptCen.Y - (Ry/60/2);

        //Point Kiri Bawah
        OptS.X := ptCen.X - (Rx/60/2);
        OptS.Y := ptCen.Y - (Ry/60/2);

        {Find Shape from Ship}
        brgShipToShape := CalcBearing(pParent.X, pParent.Y, ptCen.X, ptCen.Y);
        BKiAts  := CalcBearing(ptCen.X, ptCen.Y, IptS.X, IptS.Y);
        BKaAts  := CalcBearing(ptCen.X, ptCen.Y, IptE.X, IptE.Y);
        BKaBwh  := CalcBearing(ptCen.X, ptCen.Y, OptE.X, OptE.Y);
        BKiBwh  := CalcBearing(ptCen.X, ptCen.Y, OptS.X, OptS.Y);

        rngShipToShape := CalcRange(pParent.X, pParent.Y, ptCen.X, ptCen.Y);
        RKiAts  := CalcRange(ptCen.X, ptCen.Y, IptS.X, IptS.Y);
        RKaAts  := CalcRange(ptCen.X, ptCen.Y, IptE.X, IptE.Y);
        RKaBwh  := CalcRange(ptCen.X, ptCen.Y, OptE.X, OptE.Y);
        RKiBwh  := CalcRange(ptCen.X, ptCen.Y, OptS.X, OptS.Y);

        case Orientation of
          0 :
          begin
            brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
            BKiAts  := ValidateDegree(Parent.Heading + BKiAts);
            BKaAts  := ValidateDegree(Parent.Heading + BKaAts);
            BKaBwh  := ValidateDegree(Parent.Heading + BKaBwh);
            BKiBwh  := ValidateDegree(Parent.Heading + BKiBwh);
          end;
          1 :
          begin
            brgShipToShape := ValidateDegree(brgShipToShape);
            BKiAts  := ValidateDegree(BKiAts);
            BKaAts  := ValidateDegree(BKaAts);
            BKaBwh  := ValidateDegree(BKaBwh);
            BKiBwh  := ValidateDegree(BKiBwh);
          end;
        end;

        FindPoint(pParent, ptCen, rngShipToShape, brgShipToShape + RotationOffset);
        FindPoint(ptCen, IptS, RKiAts, BKiAts + RotationOffset);
        FindPoint(ptCen, IptE, RKaAts, BKaAts + RotationOffset);
        FindPoint(ptCen, OptE, RKaBwh, BKaBwh + RotationOffset);
        FindPoint(ptCen, OptS, RKiBwh, BKiBwh + RotationOffset);

        Converter.ConvertToScreen(IptS.X, IptS.Y, x1, y1);
        Converter.ConvertToScreen(OptE.X, OptE.Y, x2, y2);

        rect1.Left    := x1;
        rect1.Top     := Y1;
        rect1.Right   := x2;
        rect1.Bottom  := Y2;

        rect2 := FFormula.checkXYPosition(rect1.Left, rect1.Top, rect1.Right, rect1.Bottom);

        if ptToArea(rect2, ptPos) then
        begin
          IsFind := True;
          ORectangle.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtRecStartRange.Text   := FloatToStr(postStart.Range);
          fmOverlayEditor.edtRecStartBearing.Text := FloatToStr(postStart.Bearing);
          fmOverlayEditor.edtRecEndRange.Text     := FloatToStr(postEnd.Range);
          fmOverlayEditor.edtRecEndBearing.Text   := FloatToStr(postEnd.Bearing);
          fmOverlayEditor.clrbxColor.Selected      := ORectangle.color;

          fmOverlayEditor.TagObject := ovRectangle;
          fmOverlayEditor.lblShape.Caption := 'Rectangle';
          fmOverlayEditor.grpRectangleD.BringToFront;
          {$ENDIF}
          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TCircleDynamic then
    begin
      OCircle := TCircleDynamic(item);
      with OCircle do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape from Point offset}
        BSShape := postCenter.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);

        {Find Shape from Ship}
        rngShipToShape := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        brgShipToShape := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);

        case Orientation of
          0 : BOffset := ValidateDegree(Parent.Heading + BearingOffset);
          1 : BOffset := ValidateDegree(BearingOffset);
        end;

        case Orientation of
          0 : brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
          1 : brgShipToShape := ValidateDegree(brgShipToShape);
        end;

        FindPoint(pParent, pSShape, rngShipToShape, brgShipToShape);

        Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

        if ptToCircle(pSShape, ptPos, radius) then
        begin
          IsFind := True;
          OCircle.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtCircleRange.Text   := FloatToStr(postCenter.Range);
          fmOverlayEditor.edtCircleBearing.Text := FloatToStr(postCenter.Bearing);
          fmOverlayEditor.edtCircleRadiusD.Text := FloatToStr(radius);
          fmOverlayEditor.clrbxColor.Selected  := OCircle.color;

          fmOverlayEditor.TagObject := ovCircle;
          fmOverlayEditor.lblShape.Caption := 'Circle';
          fmOverlayEditor.grpCircleD.BringToFront;
          {$ENDIF}
          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TEllipseDynamic then
    begin
      OEllipse := TEllipseDynamic(item);

      with OEllipse do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape from Point offset}
        BSShape := postCenter.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);

        {Find Shape from Ship}
        rngShipToShape := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        brgShipToShape := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);

        case Orientation of
          0 : brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
          1 : brgShipToShape := ValidateDegree(brgShipToShape);
        end;

        FindPoint(pParent, pSShape, rngShipToShape, brgShipToShape);

        Idx := pSShape.X + Hradius/60;
        Idy := pSShape.Y + Vradius/60;

        Converter.ConvertToScreen(pSShape.X, pSShape.Y, x1, y1);
        Converter.ConvertToScreen(Idx, Idy, x2, y2);

        Hr := Abs(x1 - x2);
        Vr := Abs(y1 - y2);

        rect1.Left    := x1 - Hr;
        rect1.Top     := Y1 - Vr;
        rect1.Right   := x1 + Hr;
        rect1.Bottom  := Y1 + Vr;

        rect2 := FFormula.checkXYPosition(rect1.Left, rect1.Top, rect1.Right, rect1.Bottom);

        if ptToArea(rect2, ptPos) then
        begin
          IsFind := True;
          OEllipse.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtEllipseRange.Text        := FloatToStr(postCenter.Range);
          fmOverlayEditor.edtEllipseBearing.Text      := FloatToStr(postCenter.Bearing);
          fmOverlayEditor.edtEllipseHorizontalD.Text  := FloatToStr(OEllipse.Hradius);
          fmOverlayEditor.edtEllipseVerticalD.Text  := FloatToStr(OEllipse.Vradius);
          fmOverlayEditor.clrbxColor.Selected  := OEllipse.color;

          fmOverlayEditor.TagObject := ovEllipse;
          fmOverlayEditor.lblShape.Caption := 'Ellipse';
          fmOverlayEditor.grpEllipseD.BringToFront;
          {$ENDIF}
          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TArcDynamic then
    begin
      OArc := TArcDynamic(item);
      with OArc do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape, Start Angle, End Angle from Point offset}
        BSShape := postCenter.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);

        {Find Shape, Start Angle, End Angle from Ship}
        rngShipToShape := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        brgShipToShape := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);

        case Orientation of
          0 : brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
          1 : brgShipToShape := ValidateDegree(brgShipToShape);
        end;
        FindPoint(pParent, pSShape, rngShipToShape, brgShipToShape);

        Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

        if ptToArc(pSShape, ptPos, OArc.radius, OArc.radius, OArc.StartAngle + Round(RotationOffset),
           OArc.EndAngle + Round(RotationOffset), 1) then
        begin
          IsFind := True;
          OArc.isSelected  := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtArcRange.Text        := FloatToStr(postCenter.Range);
          fmOverlayEditor.edtArcBearing.Text      := FloatToStr(postCenter.Bearing);
          fmOverlayEditor.edtArcRadiusD.Text      := FloatToStr(radius);
          fmOverlayEditor.edtArcStartAngleD.Text  := FloatToStr(StartAngle);
          fmOverlayEditor.edtArcEndAngleD.Text    := FloatToStr(EndAngle);
          fmOverlayEditor.clrbxColor.Selected  := OArc.color;

          fmOverlayEditor.TagObject := ovArc;
          fmOverlayEditor.lblShape.Caption := 'Arc';
          fmOverlayEditor.grpArcD.BringToFront;
          {$ENDIF}
          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TSectorDynamic then
    begin
      OSector := TSectorDynamic(item);
      with OSector do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape, Start Angle, End Angle from Point offset}
        BSShape := postCenter.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);

        {Find Shape, Start Angle, End Angle from Ship}
        rngShipToShape := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
        brgShipToShape := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);

        case Orientation of
          0 : brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
          1 : brgShipToShape := ValidateDegree(brgShipToShape);
        end;
        FindPoint(pParent, pSShape, rngShipToShape, brgShipToShape);

        Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

        if ptToArc(pSShape, ptPos, OSector.Iradius, OSector.Oradius, OSector.StartAngle + Round(RotationOffset),
           OSector.EndAngle + Round(RotationOffset), 2) then
        begin
          IsFind := True;
          OSector.isSelected  := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtSectorRange.Text       := FloatToStr(postCenter.Range);
          fmOverlayEditor.edtSectorBearing.Text     := FloatToStr(postCenter.Bearing);
          fmOverlayEditor.edtSectorInnerD.Text      := FloatToStr(Iradius);
          fmOverlayEditor.edtSectorOuterD.Text      := FloatToStr(Oradius);
          fmOverlayEditor.edtSectorStartAngleD.Text := FloatToStr(StartAngle);
          fmOverlayEditor.edtSectorEndAngleD.Text   := FloatToStr(EndAngle);
          fmOverlayEditor.clrbxColor.Selected  := OSector.color;

          fmOverlayEditor.TagObject := ovSector;
          fmOverlayEditor.lblShape.Caption := 'Sector';
          fmOverlayEditor.grpSectorD.BringToFront;
          {$ENDIF}
          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TGridDynamic then
    begin
      OGrid := TGridDynamic(item);
      with OGrid do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        {Find Shape, Start Angle, End Angle from Point offset}
        BSShape := postCenter.Bearing + RotationOffset;
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);

        //Point Kiri Atas
        IptS.X := pSShape.X - ((Width/60)*(WCount/2));
        IptS.Y := pSShape.Y + ((Height/60)*(HCount)/2);

        //Point Kanan Bawah
        OptE.X := pSShape.X + ((Width/60)*(WCount/2));
        OptE.Y := pSShape.Y - ((Height/60)*(HCount)/2);

        BKiAts  := CalcBearing(pSShape.X, pSShape.Y, IptS.X, IptS.Y);
        BKaBwh  := CalcBearing(pSShape.X, pSShape.Y, OptE.X, OptE.Y);

        RKiAts  := CalcRange(pSShape.X, pSShape.Y, IptS.X, IptS.Y);
        RKaBwh  := CalcRange(pSShape.X, pSShape.Y, OptE.X, OptE.Y);

        FindPoint(pSShape, IptS, RKiAts, BKiAts + Rotation);
        FindPoint(pSShape, OptE, RKaBwh, BKaBwh + Rotation);

        Converter.ConvertToScreen(IptS.X, IptS.Y, x1, y1);
        Converter.ConvertToScreen(OptE.X, OptE.Y, x3, y3);

        rect1.Left    := x1;
        rect1.Top     := Y1;
        rect1.Right   := x3;
        rect1.Bottom  := Y3;

        rect2 := FFormula.checkXYPosition(rect1.Left, rect1.Top, rect1.Right, rect1.Bottom);

        if ptToArea(rect2, ptPos) then
        begin
          IsFind := True;
          OGrid.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.edtTableRange.Text        := FloatToStr(postCenter.Range);
          fmOverlayEditor.edtTableBearing.Text      := FloatToStr(postCenter.Bearing);
          fmOverlayEditor.edtTableColumnD.Text      := FloatToStr(OGrid.HCount);
          fmOverlayEditor.edtTableRowD.Text         := FloatToStr(OGrid.WCount);
          fmOverlayEditor.edtTableHeightD.Text      := FloatToStr(OGrid.Height);
          fmOverlayEditor.edtTableWidthD.Text       := FloatToStr(OGrid.Width);
          fmOverlayEditor.edtRotationAngleD.Text    := FloatToStr(OGrid.Rotation);
          fmOverlayEditor.clrbxColor.Selected  := OGrid.color;

          fmOverlayEditor.TagObject := ovGrid;
          fmOverlayEditor.lblShape.Caption := 'Grid';
          fmOverlayEditor.grpGridD.BringToFront;
          {$ENDIF}
          IdSelected := i;
          break;
        end;
      end;
    end;

    if item is TPolygonDynamic then
    begin
      OPolygon := TPolygonDynamic(item);
      with OPolygon do
      begin
        if not FindParent(Parent, pParent) then
          Exit;

        {Find Point offset from Ship}
        FindPoint(pParent, pOffset, RangeOffset, BearingOffset);

        SetLength(polyPoint, polyList.Count);

        for j := 0 to polyList.Count - 1 do
        begin
          point := polyList.Items[j];

          {Find Shape from Point offset}
          BSShape := point.Bearing + RotationOffset;
          FindPoint(pOffset, pSShape, point.Range, BSShape);

          {Find Shape from Ship}
          rngShipToShape := CalcRange(pParent.X, pParent.Y, pSShape.X, pSShape.Y);
          brgShipToShape := CalcBearing(pParent.X, pParent.Y, pSShape.X, pSShape.Y);

          case Orientation of
            0 : brgShipToShape := ValidateDegree(Parent.Heading + brgShipToShape);
            1 : brgShipToShape := ValidateDegree(brgShipToShape);
          end;

          FindPoint(pParent, pSShape, rngShipToShape, brgShipToShape);

          Converter.ConvertToScreen(pSShape.X, pSShape.Y, x1, y1);
          polyPoint[j].x := x1;
          polyPoint[j].y := y1;
        end;

        for j := 0 to polyList.Count - 1 do
        begin
          rect1 := FFormula.assignRect(polyPoint[j].x, polyPoint[j].y);

          if ptToArea(rect1, ptPos) then
          begin
            IsFind := True;
            OPolygon.isSelected := true;

            {$IFDEF CLIENT}
            fmOverlayEditor.lvPolyVertexD.Clear;

            for k := 0 to polyList.Count - 1 do
            begin
              point := polyList.Items[k];

              with fmOverlayEditor.lvPolyVertexD.Items.Add do
              begin
                SubItems.Add(FloatToStr(point.Range));
                SubItems.Add(FloatToStr(point.Bearing));
              end;
            end;

            fmOverlayEditor.lvPolyVertexD.Items.BeginUpdate;
            try
             for k := 0 to fmOverlayEditor.lvPolyVertexD.Items.Count-1 do
               fmOverlayEditor.lvPolyVertexD.Items.Item[k].Caption:=IntToStr(k+1);
            finally
              fmOverlayEditor.lvPolyVertexD.Items.EndUpdate;
            end;
            fmOverlayEditor.clrbxColor.Selected := OPolygon.color;

            fmOverlayEditor.TagObject := ovPolygon;
            fmOverlayEditor.lblShape.Caption := 'Polygon';
            fmOverlayEditor.grpPolygonD.BringToFront;
            {$ENDIF}

            IdSelected := i;
            break;
          end;
        end;
        if IsFind then
          break;
      end;
    end;
  end;

  {$IFDEF CLIENT}
  if IsFind then
  begin
    with fmOverlayEditor do
    begin
      btnObjectDelete.Enabled := True;
      btnObjectApply.Enabled := True;
      pnlDynamic.Visible := True;
      IsEditObject := True;
    end;
  end
  else
  begin
    with fmOverlayEditor do
    begin
      lblShape.Caption := '---';
      pnlStatic.Visible := False;
      pnlDynamic.Visible := False;
      IsEditObject := False;
    end;
  end;
  {$ENDIF}
end;

procedure TDrawOverlay.SelectShapeStatic(var IdSelected: Integer; IdTemplate: Integer; pos: TPoint);
var
  i, j, k, Hr,Vr, r,
  x1, x2, x3, x4, x5,
  y1, y2, y3, y4, y5 : Integer;

  Idx, Idy, Odx, Ody,
  RKiAts, RKaAts, RKiBwh, RKaBwh,
  BKiAts, BKaAts, BKiBwh, BKaBwh : Double;

  IptS, IptE, OptS, OptE, ptPos : t2DPoint;

  rect1, rect2, rect3, rect4 : TRect;

  item        : TMainStaticShape;
  OText       : TTextStatic;
  OLine       : TLineStatic;
  ORectangle  : TRectangleStatic;
  OCircle     : TCircleStatic;
  OEllipse    : TEllipseStatic;
  OArc        : TArcStatic;
  OSector     : TSectorStatic;
  OGrid       : TGridStatic;
  OPolygon    : TPolygonStatic;

  polyPoint : Array of TPoint;
  point : TDotStatic;

  IsFind : Boolean;

  OverlayTemplate : TMainOverlayTemplate;

begin
  OverlayTemplate := FList.Items[IdTemplate];
  for i := 0 to OverlayTemplate.StaticList.Count - 1 do
  begin
    item := OverlayTemplate.StaticList[i];
    item.isSelected := False;
  end;

  IsFind := False;

  for i := 0 to OverlayTemplate.StaticList.Count - 1 do
  begin
    ptPos := FFormula.PointTo2D(pos.X, pos.Y);

    item := OverlayTemplate.StaticList[i];
    if item is TTextStatic then
    begin
      OText := TTextStatic(item);

      Converter.ConvertToScreen(OText.postStart.X, OText.postStart.Y, x1, y1);
      rect1 := FFormula.checkText(x1, y1, OText.Size, OText.words);

      if ptToArea(rect1, ptPos) then
      begin
        IsFind := True;
        OText.isSelected := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtTextPosLat.Text  := formatDMS_latt(OText.postStart.Y);
        fmOverlayEditor.edtTextPosLong.Text := formatDMS_long(OText.postStart.X);
        fmOverlayEditor.edtTextField.Text   := OText.words;
        fmOverlayEditor.clrbxColor.Selected := OText.Color;

        if OText.Size = 10 then fmOverlayEditor.cbbTextSize.Text := 'Small'   else
        if OText.Size = 15 then fmOverlayEditor.cbbTextSize.Text := 'Medium'  else
        if OText.Size = 20 then fmOverlayEditor.cbbTextSize.Text := 'Large';

        fmOverlayEditor.TagObject := ovText;
        fmOverlayEditor.lblShape.Caption := 'Text';
        fmOverlayEditor.grpText.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TLineStatic then
    begin
      OLine := TLineStatic(item);

      Converter.ConvertToScreen(OLine.postStart.X, OLine.postStart.Y, x1, y1);
      Converter.ConvertToScreen(OLine.postEnd.X, OLine.postEnd.Y, x2, y2 );

      IptS  := FFormula.PointTo2D(x1, y1);
      IptE  := FFormula.PointTo2D(x2, y2);

      if ptToLine(IptS,IptE,ptPos) then
      begin
        IsFind := True;
        OLine.isSelected := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtLineStartPosLat.Text := formatDMS_latt(OLine.postStart.Y);
        fmOverlayEditor.edtLineStartPosLong.Text := formatDMS_long(OLine.postStart.X);
        fmOverlayEditor.edtLineEndPosLat.Text := formatDMS_latt(OLine.postEnd.Y);
        fmOverlayEditor.edtLineEndPosLong.Text := formatDMS_long(OLine.postEnd.X);
        fmOverlayEditor.clrbxColor.Selected := OLine.Color;

        fmOverlayEditor.TagObject := ovLine;
        fmOverlayEditor.lblShape.Caption := 'Line';
        fmOverlayEditor.grpLine.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TRectangleStatic then
    begin
      ORectangle := TRectangleStatic(item);

      Converter.ConvertToScreen(ORectangle.postStart.X, ORectangle.postStart.Y, x1, y1);
      Converter.ConvertToScreen(ORectangle.postEnd.X, ORectangle.postEnd.Y, x2, y2 );

      rect1.Left    := x1;
      rect1.Top     := Y1;
      rect1.Right   := x2;
      rect1.Bottom  := Y2;

      rect2 := FFormula.checkXYPosition(rect1.Left, rect1.Top, rect1.Right, rect1.Bottom);

      if ptToArea(rect2, ptPos) then
      begin
        IsFind := True;
        ORectangle.isSelected := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtRectStartPosLong.Text  := formatDMS_long(ORectangle.postStart.X);
        fmOverlayEditor.edtRectStartPosLat.Text   := formatDMS_latt(ORectangle.postStart.Y);
        fmOverlayEditor.edtRectEndPosLong.Text    := formatDMS_long(ORectangle.postEnd.X);
        fmOverlayEditor.edtRectEndPosLat.Text     := formatDMS_latt(ORectangle.postEnd.Y);
        fmOverlayEditor.clrbxColor.Selected      := ORectangle.color;

        fmOverlayEditor.TagObject := ovRectangle;
        fmOverlayEditor.lblShape.Caption := 'Rectangle';
        fmOverlayEditor.grpRectangle.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TCircleStatic then
    begin
      OCircle := TCircleStatic(item);

      Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

      if ptToCircle(OCircle.postCenter, ptPos, OCircle.radius) then
      begin
        IsFind := True;
        OCircle.isSelected := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtCirclePosLong.Text := formatDMS_long(OCircle.postCenter.X);
        fmOverlayEditor.edtCirclePosLat.Text := formatDMS_latt(OCircle.postCenter.Y);
        fmOverlayEditor.edtCircleRadius.Text := FloatToStr(OCircle.radius);
        fmOverlayEditor.clrbxColor.Selected := OCircle.color;

        fmOverlayEditor.TagObject := ovCircle;
        fmOverlayEditor.lblShape.Caption := 'Circle';
        fmOverlayEditor.grpCircle.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TEllipseStatic then
    begin
      OEllipse := TEllipseStatic(item);

      Idx := OEllipse.postCenter.X + OEllipse.Hradius/60;
      Idy := OEllipse.postCenter.Y + OEllipse.Vradius/60;

      Converter.ConvertToScreen(OEllipse.postCenter.X, OEllipse.postCenter.Y, x1, y1);
      Converter.ConvertToScreen(Idx, Idy, x2, y2);

      Hr := Abs(x1 - x2);
      Vr := Abs(y1 - y2);

      rect1.Left    := x1 - Hr;
      rect1.Top     := Y1 - Vr;
      rect1.Right   := x1 + Hr;
      rect1.Bottom  := Y1 + Vr;

      rect2 := FFormula.checkXYPosition(rect1.Left, rect1.Top, rect1.Right, rect1.Bottom);

      if ptToArea(rect2, ptPos) then
      begin
        IsFind := True;
        OEllipse.isSelected := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtEllipsePosLong.Text := formatDMS_long(OEllipse.postCenter.X);
        fmOverlayEditor.edtEllipsePosLat.Text  := formatDMS_latt(OEllipse.postCenter.Y);
        fmOverlayEditor.edtHorizontal.Text := FloatToStr(OEllipse.Hradius);
        fmOverlayEditor.edtVertical.Text := FloatToStr(OEllipse.Vradius);
        fmOverlayEditor.clrbxColor.Selected := OEllipse.color;

        fmOverlayEditor.TagObject := ovEllipse;
        fmOverlayEditor.lblShape.Caption := 'Ellipse';
        fmOverlayEditor.grpEllipse.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TArcStatic then
    begin
      OArc := TArcStatic(item);

      Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

      if ptToArc(OArc.postCenter, ptPos, OArc.radius, OArc.radius, OArc.StartAngle, OArc.EndAngle, 1) then
      begin
        IsFind := True;
        OArc.isSelected  := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtArcPosLong.Text := formatDMS_long(OArc.postCenter.X);
        fmOverlayEditor.edtArcPosLat.Text := formatDMS_latt(OArc.postCenter.Y);
        fmOverlayEditor.edtArcRadius.Text := FloatToStr(OArc.radius);
        fmOverlayEditor.edtArcStartAngle.Text := IntToStr(OArc.StartAngle);
        fmOverlayEditor.edtArcEndAngle.Text := IntToStr(OArc.EndAngle);
        fmOverlayEditor.clrbxColor.Selected := OArc.color;

        fmOverlayEditor.TagObject := ovArc;
        fmOverlayEditor.lblShape.Caption := 'Arc';
        fmOverlayEditor.grpArc.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TSectorStatic then
    begin
      OSector := TSectorStatic(item);

      Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

      if ptToArc(OSector.postCenter, ptPos, OSector.Iradius, OSector.Oradius, OSector.StartAngle, OSector.EndAngle, 2) then
      begin
        IsFind := True;
        OSector.isSelected  := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtSectorPosLong.Text := formatDMS_long(OSector.postCenter.X);
        fmOverlayEditor.edtSectorPosLat.Text := formatDMS_latt(OSector.postCenter.Y);
        fmOverlayEditor.edtSectorStartAngle.Text  := IntToStr(OSector.StartAngle);
        fmOverlayEditor.edtSectorEndAngle.Text    := IntToStr(OSector.EndAngle);
        fmOverlayEditor.edtSectorInner.Text  := FloatToStr(OSector.Iradius);
        fmOverlayEditor.edtSectorOuter.Text  := FloatToStr(OSector.Oradius);
        fmOverlayEditor.clrbxColor.Selected := OSector.color;

        fmOverlayEditor.TagObject := ovSector;
        fmOverlayEditor.lblShape.Caption := 'Sector';
        fmOverlayEditor.grpSector.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TGridStatic then
    begin
      OGrid := TGridStatic(item);

      //Point Kiri Atas
      IptS.X := OGrid.postCenter.X - ((OGrid.Width/60)*(OGrid.WCount/2));
      IptS.Y := OGrid.postCenter.Y + ((OGrid.Height/60)*(OGrid.HCount)/2);

      //Point Kanan Atas
      IptE.X := OGrid.postCenter.X + ((OGrid.Width/60)*(OGrid.WCount/2));
      IptE.Y := OGrid.postCenter.Y + ((OGrid.Height/60)*(OGrid.HCount)/2);

      //Point Kanan Bawah
      OptS.X := OGrid.postCenter.X + ((OGrid.Width/60)*(OGrid.WCount/2));
      OptS.Y := OGrid.postCenter.Y - ((OGrid.Height/60)*(OGrid.HCount)/2);

      //Point Kiri Bawah
      OptE.X := OGrid.postCenter.X - ((OGrid.Width/60)*(OGrid.WCount/2));
      OptE.Y := OGrid.postCenter.Y - ((OGrid.Height/60)*(OGrid.HCount)/2);

      BKiAts   := CalcBearing(OGrid.postCenter.X, OGrid.postCenter.Y, IptS.X, IptS.Y);
      BKaAts  := CalcBearing(OGrid.postCenter.X, OGrid.postCenter.Y, IptE.X, IptE.Y);
      BKaBwh := CalcBearing(OGrid.postCenter.X, OGrid.postCenter.Y, OptS.X, OptS.Y);
      BKiBwh  := CalcBearing(OGrid.postCenter.X, OGrid.postCenter.Y, OptE.X, OptE.Y);

      RKiAts     := CalcRange(OGrid.postCenter.X, OGrid.postCenter.Y, IptS.X, IptS.Y);
      RKaAts    := CalcRange(OGrid.postCenter.X, OGrid.postCenter.Y, IptE.X, IptE.Y);
      RKaBwh   := CalcRange(OGrid.postCenter.X, OGrid.postCenter.Y, OptS.X, OptS.Y);
      RKiBwh    := CalcRange(OGrid.postCenter.X, OGrid.postCenter.Y, OptE.X, OptE.Y);

      FindPoint(OGrid.postCenter, IptS, RKiAts, BKiAts + OGrid.Rotation);
      FindPoint(OGrid.postCenter, IptE, RKaAts, BKaAts + OGrid.Rotation);
      FindPoint(OGrid.postCenter, OptS, RKaBwh, BKaBwh + OGrid.Rotation);
      FindPoint(OGrid.postCenter, OptE, RKiBwh, BKiBwh + OGrid.Rotation);

      Converter.ConvertToScreen(IptS.X, IptS.Y, x1, y1);
      Converter.ConvertToScreen(IptE.X, IptE.Y, x2, y2);
      Converter.ConvertToScreen(OptS.X, OptS.Y, x3, y3);
      Converter.ConvertToScreen(OptE.X, OptE.Y, x4, y4);

      rect1 := FFormula.assignRect(x1, y1);
      rect2 := FFormula.assignRect(x2, y2);
      rect3 := FFormula.assignRect(x3, y3);
      rect4 := FFormula.assignRect(x4, y4);

      rect1.Left    := x1;
      rect1.Top     := Y1;
      rect1.Right   := x3;
      rect1.Bottom  := Y3;

      rect2 := FFormula.checkXYPosition(rect1.Left, rect1.Top, rect1.Right, rect1.Bottom);

      if ptToArea(rect2, ptPos) then
      begin
        IsFind := True;
        OGrid.isSelected := true;

        {$IFDEF CLIENT}
        fmOverlayEditor.edtTablePosLong.Text := formatDMS_long(OGrid.postCenter.X);
        fmOverlayEditor.edtTablePosLat.Text := formatDMS_latt(OGrid.postCenter.Y);
        fmOverlayEditor.edtTableWidth.Text := FloatToStr(OGrid.Width);
        fmOverlayEditor.edtTableHeight.Text := FloatToStr(OGrid.Height);
        fmOverlayEditor.edtTableColumn.Text := IntToStr(OGrid.HCount);
        fmOverlayEditor.edtTableRow.Text  := IntToStr(OGrid.WCount);
        fmOverlayEditor.edtTableRotationAngle.Text := IntToStr(OGrid.Rotation);
        fmOverlayEditor.clrbxColor.Selected := OGrid.color;

        fmOverlayEditor.TagObject := ovGrid;
        fmOverlayEditor.lblShape.Caption := 'Grid';
        fmOverlayEditor.grpGrid.BringToFront;
        {$ENDIF}
        IdSelected := i;
        break;
      end;
    end;

    if item is TPolygonStatic then
    begin
      OPolygon := TPolygonStatic(item);

      SetLength(polyPoint, OPolygon.polyList.Count);

      for j := 0 to OPolygon.polyList.Count - 1 do
      begin
        point := OPolygon.polyList.Items[j];

        Converter.ConvertToScreen(point.X, point.Y, x1, y1);
        polyPoint[j].x := x1;
        polyPoint[j].y := y1;
      end;

      for j := 0 to OPolygon.polyList.Count - 1 do
      begin
        rect1 := FFormula.assignRect(polyPoint[j].x, polyPoint[j].y);

        if ptToArea(rect1, ptPos) then
        begin
          IsFind := True;
          OPolygon.isSelected := true;

          {$IFDEF CLIENT}
          fmOverlayEditor.lvPolyVertex.Clear;

          for k := 0 to OPolygon.polyList.Count - 1 do
          begin
            point := OPolygon.polyList.Items[k];

            with fmOverlayEditor.lvPolyVertex.Items.Add do
            begin
              SubItems.Add(formatDMS_long(point.X));
              SubItems.Add(formatDMS_latt(point.Y));
            end;
          end;

          fmOverlayEditor.lvPolyVertex.Items.BeginUpdate;
          try
           for k := 0 to fmOverlayEditor.lvPolyVertex.Items.Count-1 do
             fmOverlayEditor.lvPolyVertex.Items.Item[k].Caption:=IntToStr(k+1);
          finally
            fmOverlayEditor.lvPolyVertex.Items.EndUpdate;
          end;
          fmOverlayEditor.clrbxColor.Selected := OPolygon.color;

          fmOverlayEditor.TagObject := ovPolygon;
          fmOverlayEditor.lblShape.Caption := 'Polygon';
          fmOverlayEditor.grpPolygon.BringToFront;
          {$ENDIF}

          IdSelected := i;
          break;
        end;
      end;
    end;
  end;

  {$IFDEF CLIENT}
  if IsFind then
  begin
    with fmOverlayEditor do
    begin
      btnObjectDelete.Enabled := True;
      btnObjectApply.Enabled := True;
      pnlStatic.Visible := True;
      IsEditObject := True;
    end;
  end
  else
  begin
    with fmOverlayEditor do
    begin
      lblShape.Caption := '---';
      pnlStatic.Visible := False;
      pnlDynamic.Visible := False;
    end;
  end;
  {$ENDIF}
end;

procedure TDrawOverlay.SetConverter(const Value: TCoordConverter);
begin
  FConverter := Value;
end;

procedure TDrawOverlay.ShowStreamDataDynamic(AStream: TStream; overlay :TMainOverlayTemplate);
var
  I           : integer;
  lastPos     : int64;

  HeaderData  : TFileHeader;
  TextData    : TTextRecord;
  LineData    : TLineRecord;
  RectData    : TRectRecord;
  ArcData     : TArcRecord;
  CircleData  : TCircleRecord;
  EllipseData : TEllipseRecord;
  SectorData  : TSectorRecord;
  GridData    : TGridRecord;
  PolygonData : TPolygonRecord;

  Point           : TDotDynamic;
  TextShape       : TTextDynamic;
  LineShape       : TLineDynamic;
  RectangleShape  : TRectangleDynamic;
  CircleShape     : TCircleDynamic;
  EllipseShape    : TEllipseDynamic;
  ArcShape        : TArcDynamic;
  SectorShape     : TSectorDynamic;
  GridShape       : TGridDynamic;
  PolygonShape    : TPolygonDynamic;

  OverlayTemplate : TMainOverlayTemplate;

begin
  OverlayTemplate := overlay;
  OverlayTemplate.DynamicList.Clear;

  AStream.Position := 0;
  lastPos := AStream.Position;

  while AStream.Position < AStream.Size do
  begin
    AStream.Read(HeaderData, SizeOf(HeaderData));
    AStream.Seek(lastPos, TSeekOrigin.soBeginning);

    with HeaderData do
    begin
      case ID of
        ovText :
        begin
          AStream.Read(TextData, SizeOf(TextData));

          TextShape := TTextDynamic.Create(Converter);
          TextShape.postStart := FFormula.p2DToRangeBearing(TextData.postStart);
          TextShape.size := TextData.Size;
          TextShape.words := TextData.Words;
          TextShape.Color := TextData.color;
          TextShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(TextShape)
        end;
        ovLine :
        begin
          AStream.Read(LineData, SizeOf(LineData));

          LineShape := TLineDynamic.Create(Converter);
          LineShape.postStart := FFormula.p2DToRangeBearing(LineData.postStart);
          LineShape.postEnd := FFormula.p2DToRangeBearing(LineData.postEnd);
          LineShape.Color := TextData.color;
          LineShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(LineShape)
        end;
        ovRectangle :
        begin
          AStream.Read(RectData, SizeOf(RectData));

          RectangleShape := TRectangleDynamic.Create(Converter);
          RectangleShape.postStart := FFormula.p2DToRangeBearing(RectData.postStart);
          RectangleShape.postEnd := FFormula.p2DToRangeBearing(RectData.postEnd);
          RectangleShape.Color := RectData.color;
          RectangleShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(RectangleShape)
        end;
        ovCircle :
        begin
          AStream.Read(CircleData, SizeOf(CircleData));

          CircleShape := TCircleDynamic.Create(Converter);
          CircleShape.postCenter := FFormula.p2DToRangeBearing(CircleData.postCenter);
          CircleShape.radius := CircleData.radius;
          CircleShape.Color := CircleData.color;
          CircleShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(CircleShape)
        end;
        ovEllipse :
        begin
          AStream.Read(EllipseData, SizeOf(EllipseData));

          EllipseShape := TEllipseDynamic.Create(Converter);
          EllipseShape.postCenter := FFormula.p2DToRangeBearing(EllipseData.postCenter);
          EllipseShape.Hradius := EllipseData.Hradius;
          EllipseShape.Vradius := EllipseData.Vradius;
          EllipseShape.Color := EllipseData.color;
          EllipseShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(EllipseShape)
        end;
        ovArc :
        begin
          AStream.Read(ArcData, SizeOf(ArcData));

          ArcShape := TArcDynamic.Create(Converter);
          ArcShape.postCenter := FFormula.p2DToRangeBearing(ArcData.postCenter);
          ArcShape.radius := ArcData.radius;
          ArcShape.StartAngle := ArcData.startAngle;
          ArcShape.EndAngle := ArcData.endAngle;
          ArcShape.Color := ArcData.color;
          ArcShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(ArcShape)
        end;
        ovSector :
        begin
          AStream.Read(SectorData, SizeOf(SectorData));

          SectorShape := TSectorDynamic.Create(Converter);
          SectorShape.postCenter := FFormula.p2DToRangeBearing(SectorData.postCenter);
          SectorShape.Oradius := SectorData.Oradius;
          SectorShape.Iradius := SectorData.Iradius;
          SectorShape.StartAngle:= SectorData.StartAngle;
          SectorShape.EndAngle := SectorData.EndAngle;
          SectorShape.Color := SectorData.color;
          SectorShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(SectorShape)
        end;
        ovGrid :
        begin
          AStream.Read(GridData, SizeOf(GridData));

          GridShape := TGridDynamic.Create(Converter);
          GridShape.postCenter := FFormula.p2DToRangeBearing(GridData.postCenter);
          GridShape.HCount := GridData.HCount;
          GridShape.WCount := GridData.WCount;
          GridShape.Height := GridData.Height;
          GridShape.Width := GridData.Width;
          GridShape.Color := GridData.color;
          GridShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(GridShape)
        end;
        ovPolygon :
        begin
          AStream.Read(PolygonData, SizeOf(PolygonData));

          PolygonShape := TPolygonDynamic.Create(Converter);

//          SetLength(PolygonData.postStart, PolygonData.LengthArray);
          for I := 0 to PolygonData.LengthArray - 1 do
          begin
            AStream.Read(PolygonData.postStart[I].X, SizeOf(tempPos));
            AStream.Read(PolygonData.postStart[I].Y, SizeOf(tempPos));

            Point := TDotDynamic.Create;

            Point.Range   := PolygonData.postStart[I].X;
            Point.Bearing := PolygonData.postStart[I].Y;
            PolygonShape.polyList.Add(Point);
          end;
          PolygonShape.Color := PolygonData.color;
          PolygonShape.isSelected := False;

          OverlayTemplate.DynamicList.Add(PolygonShape)
        end;
      end;
    end;
    lastPos := AStream.Position;
  end;
end;

procedure TDrawOverlay.ShowStreamDataStatic(AStream: TStream; overlay :TMainOverlayTemplate);
var
  I           : integer;
  lastPos     : int64;

  HeaderData  : TFileHeader;
  TextData    : TTextRecord;
  LineData    : TLineRecord;
  RectData    : TRectRecord;
  ArcData     : TArcRecord;
  CircleData  : TCircleRecord;
  EllipseData : TEllipseRecord;
  SectorData  : TSectorRecord;
  GridData    : TGridRecord;
  PolygonData : TPolygonRecord;

  Point           : TDotStatic;
  TextShape       : TTextStatic;
  LineShape       : TLineStatic;
  RectangleShape  : TRectangleStatic;
  CircleShape     : TCircleStatic;
  EllipseShape    : TEllipseStatic;
  ArcShape        : TArcStatic;
  SectorShape     : TSectorStatic;
  GridShape       : TGridStatic;
  PolygonShape    : TPolygonStatic;
  OverlayTemplate : TMainOverlayTemplate;

begin
  OverlayTemplate := overlay;
  OverlayTemplate.StaticList.Clear;

  { AStream.Size = size of all stream -> bytes }
  AStream.Position := 0;
  lastPos := AStream.Position;

  while AStream.Position < AStream.Size do
  begin
    AStream.Read(HeaderData, SizeOf(HeaderData));
    AStream.Seek(lastPos, TSeekOrigin.soBeginning);
    with HeaderData do
    begin
      case ID of
        ovText :
        begin
          AStream.Read(TextData, SizeOf(TextData));

          TextShape := TTextStatic.Create(Converter);
          TextShape.postStart := TextData.postStart;
          TextShape.size := TextData.Size;
          TextShape.words := TextData.Words;
          TextShape.Color := TextData.color;
          TextShape.isSelected := False;

          OverlayTemplate.StaticList.Add(TextShape)
        end;
        ovLine :
        begin
          AStream.Read(LineData, SizeOf(LineData));

          LineShape := TLineStatic.Create(Converter);
          LineShape.postStart := LineData.postStart;
          LineShape.postEnd := LineData.postEnd;
          LineShape.Color := TextData.color;
          LineShape.isSelected := False;

          OverlayTemplate.StaticList.Add(LineShape)
        end;
        ovRectangle :
        begin
          AStream.Read(RectData, SizeOf(RectData));

          RectangleShape := TRectangleStatic.Create(Converter);
          RectangleShape.postStart := RectData.postStart;
          RectangleShape.postEnd := RectData.postEnd;
          RectangleShape.Color := RectData.color;
          RectangleShape.isSelected := False;

          OverlayTemplate.StaticList.Add(RectangleShape)
        end;
        ovCircle :
        begin
          AStream.Read(CircleData, SizeOf(CircleData));

          CircleShape := TCircleStatic.Create(Converter);
          CircleShape.postCenter := CircleData.postCenter;
          CircleShape.radius := CircleData.radius;
          CircleShape.Color := CircleData.color;
          CircleShape.isSelected := False;

          OverlayTemplate.StaticList.Add(CircleShape)
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

          OverlayTemplate.StaticList.Add(EllipseShape)
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

          OverlayTemplate.StaticList.Add(ArcShape)
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

          OverlayTemplate.StaticList.Add(SectorShape)
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

          OverlayTemplate.StaticList.Add(GridShape)
        end;
        ovPolygon :
        begin
          AStream.Read(PolygonData, SizeOf(PolygonData));

          PolygonShape := TPolygonStatic.Create(Converter);

//          SetLength(PolygonData.postStart, PolygonData.LengthArray);
          for I := 0 to PolygonData.LengthArray - 1 do
          begin
            AStream.Read(PolygonData.postStart[I].X, SizeOf(tempPos));
            AStream.Read(PolygonData.postStart[I].Y, SizeOf(tempPos));

            Point := TDotStatic.Create;
            Point.X := PolygonData.postStart[I].X;
            Point.Y := PolygonData.postStart[I].Y;
            PolygonShape.polyList.Add(Point);
          end;
          PolygonShape.Color := PolygonData.color;
          PolygonShape.isSelected := False;

          OverlayTemplate.StaticList.Add(PolygonShape)
        end;
      end;
    end;
    lastPos := AStream.Position;
  end;
end;

{ TDrawFlagPoint }

procedure TDrawFlagPoint.Clear;
begin
  FList.Clear;
end;

constructor TDrawFlagPoint.Create;
begin
  FList := TList.Create;
end;

destructor TDrawFlagPoint.Destroy;
begin
  FList.Free;
  inherited;
end;

procedure TDrawFlagPoint.Draw(FCanvas: TCanvas);
var
  i : Integer;
  item : TFlagPoint;
begin
  for i := 0 to FList.Count - 1 do
  begin
    item := FList[i];
    item.Draw(FCanvas);
  end;
end;

procedure TDrawFlagPoint.SetConverter(const Value: TCoordConverter);
begin
  FConverter := Value;
end;

end.
