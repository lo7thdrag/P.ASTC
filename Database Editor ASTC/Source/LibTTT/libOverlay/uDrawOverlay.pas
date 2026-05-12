unit uDrawOverlay;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin, OleCtrls,
  uMapXHandler, uBaseCoordSystem, math, {TeCanvas,} ColorGrd,
  uMainOverlay, uMainStaticShape, uMainDynamicShape, uCoordConvertor, tttData,
  uRecord, uFormula, uDataTypes;
type
  TDrawOverlay = class
  private
    FConverter: TCoordConverter;
    procedure SetConverter(const Value: TCoordConverter);

  protected

  public
    StaticList : TList; {Container overlay static}
    DynamicList : TList; {Container overlay dynamic}
    FList              : TList;
    FFormula           : TFormula;
    FSelectedDraw      : TMainOverlay;

    constructor Create;
    destructor Destroy; override;

    procedure Clear;
    procedure DrawAll(FCanvas: TCanvas; Map1: TMap);

    procedure SaveStreamDataDynamic(AStream: TStream);
    procedure SaveStreamDataStatic(AStream: TStream);

    procedure ShowStreamDataDynamic(AStream: TStream);
    procedure ShowStreamDataStatic(AStream: TStream);

    procedure SelectShapeStatic (var IdSelected : Integer; pos : TPoint);
    procedure SelectShapeDynamic (var IdSelected : Integer; pos : TPoint);

    procedure FindPoint(postCont: t2DPoint; var postValue : t2DPoint; vd, vi: Double);

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
uses
  ufrmOverlayEditor, uObjectVisuals;

constructor TDrawOverlay.Create;
begin
  FList := TList.Create;
  StaticList := TList.Create;
  DynamicList := TList.Create;
end;

destructor TDrawOverlay.Destroy;
begin
  FList.Free;
  StaticList.Free;
  DynamicList.Free;
end;

procedure TDrawOverlay.Clear;
begin
  FList.Clear;
  StaticList.Clear;
  DynamicList.Clear;
end;

procedure TDrawOverlay.DrawAll(FCanvas: TCanvas; Map1: TMap);
var
  I    : Integer;
  itemDynamic : TMainDynamicShape;
  itemStatic : TMainStaticShape;
begin
  for I := 0 to StaticList.Count - 1 do
  begin
    itemStatic := StaticList[I];
    itemStatic.Draw(FCanvas);
  end;

  for I := 0 to DynamicList.Count - 1 do
  begin
    itemDynamic := DynamicList[I];
    itemDynamic.RangeOffset := 0;
    itemDynamic.BearingOffset := 0;
    itemDynamic.RotationOffset := 0;
    itemDynamic.Orientation := 0;
    itemDynamic.Draw(FCanvas);
  end;
end;


procedure TDrawOverlay.FindPoint(postCont: t2DPoint; var postValue: t2DPoint; vd, vi: Double);
var
  dx, dy : Double;
begin
  RangeBearingToCoord(vd, vi, dx, dy);
  postValue.X := postCont.X + dx;
  postValue.Y := postCont.Y + dy;
end;

procedure TDrawOverlay.SaveStreamDataDynamic(AStream: TStream);
var
  i, j : Integer;

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

  TextShape       : TTextDynamic;
  LineShape       : TLineDynamic;
  RectangleShape  : TRectangleDynamic;
  CircleShape     : TCircleDynamic;
  EllipseShape    : TEllipseDynamic;
  ArcShape        : TArcDynamic;
  SectorShape     : TSectorDynamic;
  GridShape       : TGridDynamic;
  PolygonShape    : TPolygonDynamic;
  point           : TDotDynamic;
  item            : TMainDynamicShape;
begin
  AStream.Position := 0;

  for i := 0 to DynamicList.Count - 1 do
  begin
    item := DynamicList[i];

    if item is TTextDynamic then
    begin
      TextShape := TTextDynamic(item);

      TextData.postStart       := FFormula.RangeBearingTop2D(TextShape.postStart);
      TextData.size            := TextShape.size;
      TextData.words           := TextShape.words;
      TextData.color           := TextShape.color;
      TextData.isSelected      := TextShape.isSelected;

      TextData.header.ID       := ovText;
      TextData.header.Exclude  := 'Text';
      TextData.header.Size     := sizeof(TTextRecord);

      AStream.Write(TextData, SizeOf(TTextRecord));
    end
    else if item is TLineDynamic then
    begin
      LineShape := TLineDynamic(item);

      LineData.postStart       := FFormula.RangeBearingTop2D(LineShape.postStart);
      LineData.postEnd         := FFormula.RangeBearingTop2D(LineShape.postEnd);
      LineData.color           := LineShape.color;
      LineData.isSelected      := LineShape.isSelected;

      LineData.header.ID       := ovLine;
      LineData.header.Exclude  := 'Line';
      LineData.header.Size     := sizeof(TLineRecord);

      AStream.Write(LineData, SizeOf(TLineRecord));
    end
    else if item is TRectangleDynamic then
    begin
      RectangleShape := TRectangleDynamic(item);

      RectData.postStart       := FFormula.RangeBearingTop2D(RectangleShape.postStart);
      RectData.postEnd         := FFormula.RangeBearingTop2D(RectangleShape.postEnd);
      RectData.color           := RectangleShape.color;
      RectData.isSelected      := RectangleShape.isSelected;

      RectData.header.ID       := ovRectangle;
      RectData.header.Exclude  := 'Rectangle';
      RectData.header.Size     := sizeof(TRectRecord);

      AStream.Write(RectData, SizeOf(TRectRecord));
    end
    else if item is TCircleDynamic then
    begin
      CircleShape := TCircleDynamic(item);

      CircleData.postCenter      := FFormula.RangeBearingTop2D(CircleShape.postCenter);
      CircleData.radius          := CircleShape.radius;
      CircleData.color           := CircleShape.color;
      CircleData.isSelected      := CircleShape.isSelected;

      CircleData.header.ID       := ovCircle;
      CircleData.header.Exclude  := 'Circle';
      CircleData.header.Size     := sizeof(TCircleRecord);

      AStream.Write(CircleData, SizeOf(TCircleRecord));
    end
    else if item is TEllipseDynamic then
    begin
      EllipseShape := TEllipseDynamic(item);

      EllipseData.postCenter      := FFormula.RangeBearingTop2D(EllipseShape.postCenter);
      EllipseData.Hradius         := EllipseShape.Hradius;
      EllipseData.Vradius         := EllipseShape.Vradius;
      EllipseData.color           := EllipseShape.color;
      EllipseData.isSelected      := EllipseShape.isSelected;

      EllipseData.header.ID       := ovEllipse;
      EllipseData.header.Exclude  := 'Ellipse';
      EllipseData.header.Size     := sizeof(TEllipseRecord);

      AStream.Write(EllipseData, SizeOf(TEllipseRecord));
    end
    else if item is TArcDynamic then
    begin
      ArcShape := TArcDynamic(item);

      ArcData.postCenter      := FFormula.RangeBearingTop2D(ArcShape.postCenter);
      ArcData.radius          := ArcShape.radius;
      ArcData.startAngle      := ArcShape.startAngle;
      ArcData.endAngle        := ArcShape.endAngle;
      ArcData.color           := ArcShape.color;
      ArcData.isSelected      := ArcShape.isSelected;

      ArcData.header.ID       := ovArc;
      ArcData.header.Exclude  := 'Arc';
      ArcData.header.Size     := sizeof(TArcRecord);

      AStream.Write(ArcData, SizeOf(TArcRecord));
    end
    else if item is TSectorDynamic then
    begin
      SectorShape := TSectorDynamic(item);

      SectorData.postCenter      := FFormula.RangeBearingTop2D(SectorShape.postCenter);
      SectorData.Oradius         := SectorShape.Oradius;
      SectorData.Iradius         := SectorShape.Iradius;
      SectorData.startAngle      := SectorShape.startAngle;
      SectorData.endAngle        := SectorShape.endAngle;
      SectorData.color           := SectorShape.color;
      SectorData.isSelected      := SectorShape.isSelected;

      SectorData.header.ID       := ovSector;
      SectorData.header.Exclude  := 'Sector';
      SectorData.header.Size     := sizeof(TSectorRecord);

      AStream.Write(SectorData, SizeOf(TSectorRecord));
    end
    else if item is TGridDynamic then
    begin
      GridShape := TGridDynamic(item);

      GridData.postCenter      := FFormula.RangeBearingTop2D(GridShape.postCenter);
      GridData.HCount          := GridShape.HCount;
      GridData.WCount          := GridShape.WCount;
      GridData.Height          := GridShape.Height;
      GridData.Width           := GridShape.Width;
      GridData.Rotation        := GridShape.Rotation;
      GridData.color           := GridShape.color;
      GridData.isSelected      := GridShape.isSelected;

      GridData.header.ID       := ovGrid;
      GridData.header.Exclude  := 'Grid';
      GridData.header.Size     := sizeof(TGridRecord);

      AStream.Write(GridData, SizeOf(TGridRecord));
    end
    else if item is TPolygonDynamic then
    begin
      PolygonShape := TPolygonDynamic(item);

//      SetLength(PolygonData.postStart, PolygonShape.polyList.Count);
      for j := 0 to PolygonShape.polyList.Count - 1 do
      begin
        point := PolygonShape.polyList.Items[j];

        PolygonData.postStart[j].X := point.Range;
        PolygonData.postStart[j].Y := point.Bearing;
      end;

      PolygonData.LengthArray     := j;
      PolygonData.color           := PolygonShape.color;
      PolygonData.isSelected      := PolygonShape.isSelected;

      PolygonData.header.ID       := ovPolygon;
      PolygonData.header.Exclude  := 'Polygon';
      PolygonData.header.Size     := sizeof(TPolygonRecord) +
                                     sizeOf(t2DPoint)* length(PolygonData.postStart);

      AStream.Write(PolygonData, SizeOf(TPolygonRecord));

      for j := 0 to PolygonShape.polyList.Count - 1 do
      begin
         AStream.Write(PolygonData.postStart[j].X, SizeOf(tempPos));
         AStream.Write(PolygonData.postStart[j].Y, SizeOf(tempPos));
      end;
    end;
  end;
end;

procedure TDrawOverlay.SaveStreamDataStatic(AStream: TStream);
var
  i, j : Integer;

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

  TextShape       : TTextStatic;
  LineShape       : TLineStatic;
  RectangleShape  : TRectangleStatic;
  CircleShape     : TCircleStatic;
  EllipseShape    : TEllipseStatic;
  ArcShape        : TArcStatic;
  SectorShape     : TSectorStatic;
  GridShape       : TGridStatic;
  PolygonShape    : TPolygonStatic;
  point           : TDotStatic;
  item            : TMainStaticShape;
begin
  AStream.Position := 0;

  for i := 0 to StaticList.Count - 1 do
  begin
    item := StaticList[i];

    if item is TTextStatic then
    begin
      TextShape := TTextStatic(item);

      TextData.postStart        := TextShape.postStart;
      TextData.size            := TextShape.size;
      TextData.words           := TextShape.words;
      TextData.color           := TextShape.color;
      TextData.isSelected      := TextShape.isSelected;

      TextData.header.ID       := ovText;
      TextData.header.Exclude  := 'Text';
      TextData.header.Size     := sizeof(TTextRecord);

      AStream.Write(TextData, SizeOf(TTextRecord));
    end
    else if item is TLineStatic then
    begin
      LineShape := TLineStatic(item);

      LineData.postStart        := LineShape.postStart;
      LineData.postEnd          := LineShape.postEnd;
      LineData.color           := LineShape.color;
      LineData.isSelected      := LineShape.isSelected;

      LineData.header.ID       := ovLine;
      LineData.header.Exclude  := 'Line';
      LineData.header.Size     := sizeof(TLineRecord);

      AStream.Write(LineData, SizeOf(TLineRecord));
    end
    else if item is TRectangleStatic then
    begin
      RectangleShape := TRectangleStatic(item);

      RectData.postStart        := RectangleShape.postStart;
      RectData.postEnd          := RectangleShape.postEnd;
      RectData.color           := RectangleShape.color;
      RectData.isSelected      := RectangleShape.isSelected;

      RectData.header.ID       := ovRectangle;
      RectData.header.Exclude  := 'Rectangle';
      RectData.header.Size     := sizeof(TRectRecord);

      AStream.Write(RectData, SizeOf(TRectRecord));
    end
    else if item is TCircleStatic then
    begin
      CircleShape := TCircleStatic(item);

      CircleData.postCenter      := CircleShape.postCenter;
      CircleData.radius          := CircleShape.radius;
      CircleData.color           := CircleShape.color;
      CircleData.isSelected      := CircleShape.isSelected;

      CircleData.header.ID       := ovCircle;
      CircleData.header.Exclude  := 'Circle';
      CircleData.header.Size     := sizeof(TCircleRecord);

      AStream.Write(CircleData, SizeOf(TCircleRecord));
    end
    else if item is TEllipseStatic then
    begin
      EllipseShape := TEllipseStatic(item);

      EllipseData.postCenter      := EllipseShape.postCenter;
      EllipseData.Hradius         := EllipseShape.Hradius;
      EllipseData.Vradius         := EllipseShape.Vradius;
      EllipseData.color           := EllipseShape.color;
      EllipseData.isSelected      := EllipseShape.isSelected;

      EllipseData.header.ID       := ovEllipse;
      EllipseData.header.Exclude  := 'Ellipse';
      EllipseData.header.Size     := sizeof(TEllipseRecord);

      AStream.Write(EllipseData, SizeOf(TEllipseRecord));
    end
    else if item is TArcStatic then
    begin
      ArcShape := TArcStatic(item);

      ArcData.postCenter      := ArcShape.postCenter;
      ArcData.radius          := ArcShape.radius;
      ArcData.startAngle      := ArcShape.startAngle;
      ArcData.endAngle        := ArcShape.endAngle;
      ArcData.color           := ArcShape.color;
      ArcData.isSelected      := ArcShape.isSelected;

      ArcData.header.ID       := ovArc;
      ArcData.header.Exclude  := 'Arc';
      ArcData.header.Size     := sizeof(TArcRecord);

      AStream.Write(ArcData, SizeOf(TArcRecord));
    end
    else if item is TSectorStatic then
    begin
      SectorShape := TSectorStatic(item);

      SectorData.postCenter      := SectorShape.postCenter;
      SectorData.Oradius         := SectorShape.Oradius;
      SectorData.Iradius         := SectorShape.Iradius;
      SectorData.startAngle      := SectorShape.startAngle;
      SectorData.endAngle        := SectorShape.endAngle;
      SectorData.color           := SectorShape.color;
      SectorData.isSelected      := SectorShape.isSelected;

      SectorData.header.ID       := ovSector;
      SectorData.header.Exclude  := 'Sector';
      SectorData.header.Size     := sizeof(TSectorRecord);

      AStream.Write(SectorData, SizeOf(TSectorRecord));
    end
    else if item is TGridStatic then
    begin
      GridShape := TGridStatic(item);

      GridData.postCenter      := GridShape.postCenter;
      GridData.HCount          := GridShape.HCount;
      GridData.WCount          := GridShape.WCount;
      GridData.Height          := GridShape.Height;
      GridData.Width           := GridShape.Width;
      GridData.Rotation        := GridShape.Rotation;
      GridData.color           := GridShape.color;
      GridData.isSelected      := GridShape.isSelected;

      GridData.header.ID       := ovGrid;
      GridData.header.Exclude  := 'Grid';
      GridData.header.Size     := sizeof(TGridRecord);

      AStream.Write(GridData, SizeOf(TGridRecord));
    end
    else if item is TPolygonStatic then
    begin
      PolygonShape := TPolygonStatic(item);

//      SetLength(PolygonData.postStart, PolygonShape.polyList.Count);
      for j := 0 to PolygonShape.polyList.Count - 1 do
      begin
        point := PolygonShape.polyList.Items[j];

        PolygonData.postStart[j].X := point.X;
        PolygonData.postStart[j].Y := point.Y;
      end;

      PolygonData.LengthArray     := j;
      PolygonData.color           := PolygonShape.color;
      PolygonData.isSelected      := PolygonShape.isSelected;

      PolygonData.header.ID       := ovPolygon;
      PolygonData.header.Exclude  := 'Polygon';
      PolygonData.header.Size     := sizeof(TPolygonRecord) +
                                     sizeOf(t2DPoint)* length(PolygonData.postStart);

      AStream.Write(PolygonData, SizeOf(TPolygonRecord));

      for j := 0 to PolygonShape.polyList.Count - 1 do
      begin
         AStream.Write(PolygonData.postStart[j].X, SizeOf(tempPos));
         AStream.Write(PolygonData.postStart[j].Y, SizeOf(tempPos));
      end;
    end;
  end;
end;

procedure TDrawOverlay.SelectShapeDynamic(var IdSelected: Integer; pos: TPoint);
var
  i, j, k, Hr,Vr, r,
  x1, x2, x3, x4, x5,
  y1, y2, y3, y4, y5 : Integer;

  Idx, Idy, Odx, Ody,
  RCenterToPoint, BCenterToPoint,
  RKiAts, RKaAts, RKiBwh, RKaBwh,
  BKiAts, BKaAts, BKiBwh, BKaBwh : Double;

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

  BOffset, BSShape, BEShape : Double;

  pOffset, pSShape, pEShape,
  pParent :  t2DPoint;
begin
  for i := 0 to DynamicList.Count - 1 do
  begin
    item := DynamicList[i];
    item.isSelected := False;
  end;

  IsFind := False;

  for i := 0 to DynamicList.Count - 1 do
  begin
    ptPos := FFormula.PointTo2D(pos.X, pos.Y);

    item := DynamicList[i];
    if item is TTextDynamic then
    begin
      OText := TTextDynamic(item);

      with OText do
      begin

        BOffset := ValidateDegree(BearingOffset);
        BSShape := postStart.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);   {Point offset from Ship}
        FindPoint(pOffset, pSShape, postStart.Range, BSShape); {Shape from Point offset}

        Converter.ConvertToScreen(pSShape.X, pSShape.Y, x1, y1);
        rect1 := FFormula.checkText(x1, y1, OText.Size, OText.words);

        if ptToArea(rect1, ptPos) then
        begin
          IsFind := True;
          OText.isSelected := true;

          OverlayEditorForm.edtTextRange.Text     := FloatToStr(postStart.Range);
          OverlayEditorForm.edtTextBearing.Text   := FloatToStr(postStart.Bearing);
          OverlayEditorForm.edtTextFieldD.Text    := words;
          OverlayEditorForm.txtColorSelect.color := OText.Color;

          if Size = 10 then OverlayEditorForm.cbbTextSizeD.Text := 'Small'  else
          if Size = 15 then OverlayEditorForm.cbbTextSizeD.Text := 'Medium' else
          if Size = 20 then OverlayEditorForm.cbbTextSizeD.Text := 'Large';

          OverlayEditorForm.ShapeType := ovText;
          OverlayEditorForm.lblShape.Caption := 'Text';
          OverlayEditorForm.grpTextD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);

        BSShape := postStart.Bearing + RotationOffset;
        BEShape := postEnd.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);      {Point offset from Ship}
        FindPoint(pOffset, pSShape, postStart.Range, BSShape);  {Shape from Point offset}
        FindPoint(pOffset, pEShape, postEnd.Range, BEShape);    {Shape from Point offset}

        Converter.ConvertToScreen(pSShape.X, pSShape.Y, x1, y1);
        Converter.ConvertToScreen(pEShape.X, pEShape.Y, x2, y2);

        IptS  := FFormula.PointTo2D(x1, y1);
        IptE  := FFormula.PointTo2D(x2, y2);

        if ptToLine(IptS,IptE,ptPos) then
        begin
          IsFind := True;
          OLine.isSelected := true;

          OverlayEditorForm.edtLineStartRange.Text    := FloatToStr(postStart.Range);
          OverlayEditorForm.edtLineStartBearing.Text  := FloatToStr(postStart.Bearing);
          OverlayEditorForm.edtLineEndRange.Text      := FloatToStr(postEnd.Range);
          OverlayEditorForm.edtLineEndBearing.Text    := FloatToStr(postEnd.Bearing);
          OverlayEditorForm.txtColorSelect.color  := OLine.Color;

          OverlayEditorForm.ShapeType := ovLine;
          OverlayEditorForm.lblShape.Caption := 'Line';
          OverlayEditorForm.grpLineD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);      {Point offset from Ship}

        BSShape := postStart.Bearing + RotationOffset;
        BEShape := postEnd.Bearing + RotationOffset;

        FindPoint(pOffset, IptS, postStart.Range, BSShape);
        FindPoint(pOffset, OptE, postEnd.Range, BEShape);

        Idx := CalcRange(IptS.X, IptS.Y, OptE.X, IptS.Y);
        Idy := CalcRange(IptS.X, IptS.Y, IptS.X, OptE.Y);

        RCenterToPoint  := CalcRange(IptS.X, IptS.Y, OptE.X, OptE.Y)/2;
        BCenterToPoint  := CalcBearing(IptS.X, IptS.Y, OptE.X, OptE.Y);

        //Point Center
        FindPoint(IptS, ptCen, RCenterToPoint, BCenterToPoint);

        //Point Kiri Atas
        IptS.X := ptCen.X - (Idx/60/2);
        IptS.Y := ptCen.Y + (Idy/60/2);

        //Point Kanan Bawah
        OptE.X := ptCen.X + (Idx/60/2);
        OptE.Y := ptCen.Y - (Idy/60/2);

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

          OverlayEditorForm.edtRecStartRange.Text   := FloatToStr(postStart.Range);
          OverlayEditorForm.edtRecStartBearing.Text := FloatToStr(postStart.Bearing);
          OverlayEditorForm.edtRecEndRange.Text     := FloatToStr(postEnd.Range);
          OverlayEditorForm.edtRecEndBearing.Text   := FloatToStr(postEnd.Bearing);
          OverlayEditorForm.txtColorSelect.color      := ORectangle.color;

          OverlayEditorForm.ShapeType := ovRectangle;
          OverlayEditorForm.lblShape.Caption := 'Rectangle';
          OverlayEditorForm.grpRectangleD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);
        BSShape := postCenter.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);      {Point offset from Ship}
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);    {Shape from Point offset}

        Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

        if ptToCircle(pSShape, ptPos, radius) then
        begin
          IsFind := True;
          OCircle.isSelected := true;

          OverlayEditorForm.edtCircleRange.Text   := FloatToStr(postCenter.Range);
          OverlayEditorForm.edtCircleBearing.Text := FloatToStr(postCenter.Bearing);
          OverlayEditorForm.edtCircleRadiusD.Text := FloatToStr(radius);
          OverlayEditorForm.txtColorSelect.color  := OCircle.color;

          OverlayEditorForm.ShapeType := ovCircle;
          OverlayEditorForm.lblShape.Caption := 'Circle';
          OverlayEditorForm.grpCircleD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);
        BSShape := postCenter.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);      {Point offset from Ship}
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);    {Shape from Point offset}

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

          OverlayEditorForm.edtEllipseRange.Text        := FloatToStr(postCenter.Range);
          OverlayEditorForm.edtEllipseBearing.Text      := FloatToStr(postCenter.Bearing);
          OverlayEditorForm.edtEllipseHorizontalD.Text  := FloatToStr(OEllipse.Hradius);
          OverlayEditorForm.edtEllipseVerticalD.Text  := FloatToStr(OEllipse.Vradius);
          OverlayEditorForm.txtColorSelect.color  := OEllipse.color;

          OverlayEditorForm.ShapeType := ovEllipse;
          OverlayEditorForm.lblShape.Caption := 'Ellipse';
          OverlayEditorForm.grpEllipseD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);
        BSShape := postCenter.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);    {Point offset from Ship}
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape); {Shape from Point offset}

        Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

        if ptToArc(pSShape, ptPos, OArc.radius, OArc.radius, OArc.StartAngle, OArc.EndAngle, 1) then
        begin
          IsFind := True;
          OArc.isSelected  := true;

          OverlayEditorForm.edtArcRange.Text        := FloatToStr(postCenter.Range);
          OverlayEditorForm.edtArcBearing.Text      := FloatToStr(postCenter.Bearing);
          OverlayEditorForm.edtArcRadiusD.Text      := FloatToStr(radius);
          OverlayEditorForm.edtArcStartAngleD.Text  := FloatToStr(StartAngle);
          OverlayEditorForm.edtArcEndAngleD.Text    := FloatToStr(EndAngle);
          OverlayEditorForm.txtColorSelect.color  := OArc.color;

          OverlayEditorForm.ShapeType := ovArc;
          OverlayEditorForm.lblShape.Caption := 'Arc';
          OverlayEditorForm.grpArcD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);
        BSShape := postCenter.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);      {Point offset from Ship}
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);   {Shape from Point offset}

        Converter.ConvertToMap(pos.X, pos.Y, ptPos.X, ptPos.Y);

        if ptToArc(pSShape, ptPos, OSector.Iradius, OSector.Oradius, OSector.StartAngle, OSector.EndAngle, 2) then
        begin
          IsFind := True;
          OSector.isSelected  := true;

          OverlayEditorForm.edtSectorRange.Text       := FloatToStr(postCenter.Range);
          OverlayEditorForm.edtSectorBearing.Text     := FloatToStr(postCenter.Bearing);
          OverlayEditorForm.edtSectorInnerD.Text      := FloatToStr(Iradius);
          OverlayEditorForm.edtSectorOuterD.Text      := FloatToStr(Oradius);
          OverlayEditorForm.edtSectorStartAngleD.Text := FloatToStr(StartAngle);
          OverlayEditorForm.edtSectorEndAngleD.Text   := FloatToStr(EndAngle);
          OverlayEditorForm.txtColorSelect.color  := OSector.color;

          OverlayEditorForm.ShapeType := ovSector;
          OverlayEditorForm.lblShape.Caption := 'Sector';
          OverlayEditorForm.grpSectorD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);

        BSShape := postCenter.Bearing + RotationOffset;

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);      {Point offset from Ship}
        FindPoint(pOffset, pSShape, postCenter.Range, BSShape);   {Shape from Point offset}

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

          OverlayEditorForm.edtTableRange.Text        := FloatToStr(postCenter.Range);
          OverlayEditorForm.edtTableBearing.Text      := FloatToStr(postCenter.Bearing);
          OverlayEditorForm.edtTableColumnD.Text      := FloatToStr(OGrid.HCount);
          OverlayEditorForm.edtTableRowD.Text         := FloatToStr(OGrid.WCount);
          OverlayEditorForm.edtTableHeightD.Text      := FloatToStr(OGrid.Height);
          OverlayEditorForm.edtTableWidthD.Text       := FloatToStr(OGrid.Width);
          OverlayEditorForm.edtRotationAngleD.Text    := FloatToStr(OGrid.Rotation);
          OverlayEditorForm.txtColorSelect.color  := OGrid.color;

          OverlayEditorForm.ShapeType := ovGrid;
          OverlayEditorForm.lblShape.Caption := 'Grid';
          OverlayEditorForm.grpGridD.BringToFront;
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
        BOffset := ValidateDegree(BearingOffset);

        FindPoint(ParentPos, pOffset, RangeOffset, BOffset);   {Point offset from Ship}

        SetLength(polyPoint, polyList.Count);

        for j := 0 to polyList.Count - 1 do
        begin
          point := polyList.Items[j];

          BSShape := point.Bearing + RotationOffset;
          FindPoint(pOffset, pSShape, point.Range, BSShape); {Shape from Point offset}

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

            OverlayEditorForm.lvPolyVertexD.Clear;

            for k := 0 to polyList.Count - 1 do
            begin
              point := polyList.Items[k];

              with OverlayEditorForm.lvPolyVertexD.Items.Add do
              begin
                SubItems.Add(FloatToStr(point.Range));
                SubItems.Add(FloatToStr(point.Bearing));
              end;
            end;

            OverlayEditorForm.lvPolyVertexD.Items.BeginUpdate;
            try
             for k := 0 to OverlayEditorForm.lvPolyVertexD.Items.Count-1 do
               OverlayEditorForm.lvPolyVertexD.Items.Item[k].Caption:=IntToStr(k+1);
            finally
              OverlayEditorForm.lvPolyVertexD.Items.EndUpdate;
            end;
            OverlayEditorForm.txtColorSelect.color  := OPolygon.color;

            OverlayEditorForm.ShapeType := ovPolygon;
            OverlayEditorForm.lblShape.Caption := 'Polygon';
            OverlayEditorForm.grpPolygonD.BringToFront;
            IdSelected := i;
            break;
          end;
        end;
      end;
    end;
  end;

  if IsFind then
  begin
    with OverlayEditorForm do
    begin
      btnDelete.Enabled := True;
      btnApply.Enabled := True;
      pnlDynamic.Visible := True;
      IdAction := 2;
    end;
  end
  else
  begin
    with OverlayEditorForm do
    begin
      lblShape.Caption := '---';
      pnlStatic.Visible := False;
      pnlDynamic.Visible := False;
      IdAction := 1;
    end;
  end;
end;

procedure TDrawOverlay.SelectShapeStatic(var IdSelected: Integer; pos: TPoint);
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
begin
  for i := 0 to StaticList.Count - 1 do
  begin
    item := StaticList[i];
    item.isSelected := False;
  end;

  IsFind := False;

  for i := 0 to StaticList.Count - 1 do
  begin
    ptPos := FFormula.PointTo2D(pos.X, pos.Y);

    item := StaticList[i];
    if item is TTextStatic then
    begin
      OText := TTextStatic(item);

      Converter.ConvertToScreen(OText.postStart.X, OText.postStart.Y, x1, y1);
      rect1 := FFormula.checkText(x1, y1, OText.Size, OText.words);

      if ptToArea(rect1, ptPos) then
      begin
        IsFind := True;
        OText.isSelected := true;

        OverlayEditorForm.edtTextPosLat.Text  := formatDMS_latt(OText.postStart.Y);
        OverlayEditorForm.edtTextPosLong.Text := formatDMS_long(OText.postStart.X);
        OverlayEditorForm.edtTextField.Text   := OText.words;
        OverlayEditorForm.txtColorSelect.color := OText.Color;

        if OText.Size = 10 then OverlayEditorForm.cbbTextSize.Text := 'Small'   else
        if OText.Size = 15 then OverlayEditorForm.cbbTextSize.Text := 'Medium'  else
        if OText.Size = 20 then OverlayEditorForm.cbbTextSize.Text := 'Large';

        OverlayEditorForm.ShapeType := ovText;
        OverlayEditorForm.lblShape.Caption := 'Text';
        OverlayEditorForm.grpText.BringToFront;
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

        OverlayEditorForm.edtLineStartPosLat.Text := formatDMS_latt(OLine.postStart.Y);
        OverlayEditorForm.edtLineStartPosLong.Text := formatDMS_long(OLine.postStart.X);
        OverlayEditorForm.edtLineEndPosLat.Text := formatDMS_latt(OLine.postEnd.Y);
        OverlayEditorForm.edtLineEndPosLong.Text := formatDMS_long(OLine.postEnd.X);
        OverlayEditorForm.txtColorSelect.color := OLine.Color;

        OverlayEditorForm.ShapeType := ovLine;
        OverlayEditorForm.lblShape.Caption := 'Line';
        OverlayEditorForm.grpLine.BringToFront;
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

        OverlayEditorForm.edtRectStartPosLong.Text  := formatDMS_long(ORectangle.postStart.X);
        OverlayEditorForm.edtRectStartPosLat.Text   := formatDMS_latt(ORectangle.postStart.Y);
        OverlayEditorForm.edtRectEndPosLong.Text    := formatDMS_long(ORectangle.postEnd.X);
        OverlayEditorForm.edtRectEndPosLat.Text     := formatDMS_latt(ORectangle.postEnd.Y);
        OverlayEditorForm.txtColorSelect.color      := ORectangle.color;

        OverlayEditorForm.ShapeType := ovRectangle;
        OverlayEditorForm.lblShape.Caption := 'Rectangle';
        OverlayEditorForm.grpRectangle.BringToFront;
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

        OverlayEditorForm.edtCirclePosLong.Text := formatDMS_long(OCircle.postCenter.X);
        OverlayEditorForm.edtCirclePosLat.Text := formatDMS_latt(OCircle.postCenter.Y);
        OverlayEditorForm.edtCircleRadius.Text := FloatToStr(OCircle.radius);
        OverlayEditorForm.txtColorSelect.color := OCircle.color;

        OverlayEditorForm.ShapeType := ovCircle;
        OverlayEditorForm.lblShape.Caption := 'Circle';
        OverlayEditorForm.grpCircle.BringToFront;
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

        OverlayEditorForm.edtEllipsePosLong.Text := formatDMS_long(OEllipse.postCenter.X);
        OverlayEditorForm.edtEllipsePosLat.Text  := formatDMS_latt(OEllipse.postCenter.Y);
        OverlayEditorForm.edtHorizontal.Text := FloatToStr(OEllipse.Hradius);
        OverlayEditorForm.edtVertical.Text := FloatToStr(OEllipse.Vradius);
        OverlayEditorForm.txtColorSelect.color := OEllipse.color;

        OverlayEditorForm.ShapeType := ovEllipse;
        OverlayEditorForm.lblShape.Caption := 'Ellipse';
        OverlayEditorForm.grpEllipse.BringToFront;
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

        OverlayEditorForm.edtArcPosLong.Text := formatDMS_long(OArc.postCenter.X);
        OverlayEditorForm.edtArcPosLat.Text := formatDMS_latt(OArc.postCenter.Y);
        OverlayEditorForm.edtArcRadius.Text := FloatToStr(OArc.radius);
        OverlayEditorForm.edtArcStartAngle.Text := IntToStr(OArc.StartAngle);
        OverlayEditorForm.edtArcEndAngle.Text := IntToStr(OArc.EndAngle);
        OverlayEditorForm.txtColorSelect.color := OArc.color;

        OverlayEditorForm.ShapeType := ovArc;
        OverlayEditorForm.lblShape.Caption := 'Arc';
        OverlayEditorForm.grpArc.BringToFront;
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

        OverlayEditorForm.edtSectorPosLong.Text := formatDMS_long(OSector.postCenter.X);
        OverlayEditorForm.edtSectorPosLat.Text := formatDMS_latt(OSector.postCenter.Y);
        OverlayEditorForm.edtSectorStartAngle.Text  := IntToStr(OSector.StartAngle);
        OverlayEditorForm.edtSectorEndAngle.Text    := IntToStr(OSector.EndAngle);
        OverlayEditorForm.edtSectorInner.Text  := FloatToStr(OSector.Iradius);
        OverlayEditorForm.edtSectorOuter.Text  := FloatToStr(OSector.Oradius);
        OverlayEditorForm.txtColorSelect.color := OSector.color;

        OverlayEditorForm.ShapeType := ovSector;
        OverlayEditorForm.lblShape.Caption := 'Sector';
        OverlayEditorForm.grpSector.BringToFront;
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

      //Point Kanan Bawah
      OptE.X := OGrid.postCenter.X + ((OGrid.Width/60)*(OGrid.WCount/2));
      OptE.Y := OGrid.postCenter.Y - ((OGrid.Height/60)*(OGrid.HCount)/2);

      BKiAts   := CalcBearing(OGrid.postCenter.X, OGrid.postCenter.Y, IptS.X, IptS.Y);
      BKaBwh := CalcBearing(OGrid.postCenter.X, OGrid.postCenter.Y, OptE.X, OptE.Y);

      RKiAts     := CalcRange(OGrid.postCenter.X, OGrid.postCenter.Y, IptS.X, IptS.Y);
      RKaBwh   := CalcRange(OGrid.postCenter.X, OGrid.postCenter.Y, OptE.X, OptE.Y);

      FindPoint(OGrid.postCenter, IptS, RKiAts, BKiAts + OGrid.Rotation);
      FindPoint(OGrid.postCenter, OptE, RKaBwh, BKaBwh + OGrid.Rotation);

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

        OverlayEditorForm.edtTablePosLong.Text := formatDMS_long(OGrid.postCenter.X);
        OverlayEditorForm.edtTablePosLat.Text := formatDMS_latt(OGrid.postCenter.Y);
        OverlayEditorForm.edtTableWidth.Text := FloatToStr(OGrid.Width);
        OverlayEditorForm.edtTableHeight.Text := FloatToStr(OGrid.Height);
        OverlayEditorForm.edtTableColumn.Text := IntToStr(OGrid.HCount);
        OverlayEditorForm.edtTableRow.Text  := IntToStr(OGrid.WCount);
        OverlayEditorForm.edtTableRotationAngle.Text := IntToStr(OGrid.Rotation);
        OverlayEditorForm.txtColorSelect.color := OGrid.color;

        OverlayEditorForm.ShapeType := ovGrid;
        OverlayEditorForm.lblShape.Caption := 'Grid';
        OverlayEditorForm.grpGrid.BringToFront;
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

          OverlayEditorForm.lvPolyVertex.Clear;

          for k := 0 to OPolygon.polyList.Count - 1 do
          begin
            point := OPolygon.polyList.Items[k];

            with OverlayEditorForm.lvPolyVertex.Items.Add do
            begin
              SubItems.Add(formatDMS_long(point.X));
              SubItems.Add(formatDMS_latt(point.Y));
            end;
          end;

          OverlayEditorForm.lvPolyVertex.Items.BeginUpdate;
          try
           for k := 0 to OverlayEditorForm.lvPolyVertex.Items.Count-1 do
             OverlayEditorForm.lvPolyVertex.Items.Item[k].Caption:=IntToStr(k+1);
          finally
            OverlayEditorForm.lvPolyVertex.Items.EndUpdate;
          end;
          OverlayEditorForm.txtColorSelect.color := OPolygon.color;

          OverlayEditorForm.ShapeType := ovPolygon;
          OverlayEditorForm.lblShape.Caption := 'Polygon';
          OverlayEditorForm.grpPolygon.BringToFront;
          IdSelected := i;
          break;
        end;
      end;
    end;
  end;

  if IsFind then
  begin
    with OverlayEditorForm do
    begin
      btnDelete.Enabled := True;
      btnApply.Enabled := True;
      pnlStatic.Visible := True;
      IdAction := 2;
    end;
  end
  else
  begin
    with OverlayEditorForm do
    begin
      lblShape.Caption := '---';
      pnlStatic.Visible := False;
      pnlDynamic.Visible := False;
      IdAction := 1;
    end;
  end;
end;

procedure TDrawOverlay.SetConverter(const Value: TCoordConverter);
begin
  FConverter := Value;
end;

procedure TDrawOverlay.ShowStreamDataDynamic(AStream: TStream);
var
  I       : integer;
  lastPos : int64;

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
begin
  DynamicList.Clear;

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
          TextShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          TextShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          TextShape.postStart := FFormula.p2DToRangeBearing(TextData.postStart);
          TextShape.identifier := TextData.identifier;
          TextShape.size := TextData.Size;
          TextShape.words := TextData.Words;
          TextShape.Color := TextData.color;
          TextShape.isSelected := False;

          DynamicList.Add(TextShape)
        end;
        ovLine :
        begin
          AStream.Read(LineData, SizeOf(LineData));

          LineShape := TLineDynamic.Create(Converter);
          LineShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          LineShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          LineShape.postStart := FFormula.p2DToRangeBearing(LineData.postStart);
          LineShape.identifier := TextData.identifier;
          LineShape.postEnd := FFormula.p2DToRangeBearing(LineData.postEnd);
          LineShape.Color := LineData.color;
          LineShape.isSelected := False;

          DynamicList.Add(LineShape)
        end;
        ovRectangle :
        begin
          AStream.Read(RectData, SizeOf(RectData));

          RectangleShape := TRectangleDynamic.Create(Converter);
          RectangleShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          RectangleShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          RectangleShape.postStart := FFormula.p2DToRangeBearing(RectData.postStart);
          Rectangleshape.identifier := TextData.identifier;
          RectangleShape.postEnd := FFormula.p2DToRangeBearing(RectData.postEnd);
          RectangleShape.Color := RectData.color;
          RectangleShape.isSelected := False;

          DynamicList.Add(RectangleShape)
        end;
        ovCircle :
        begin
          AStream.Read(CircleData, SizeOf(CircleData));

          CircleShape := TCircleDynamic.Create(Converter);
          CircleShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          CircleShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          CircleShape.postCenter := FFormula.p2DToRangeBearing(CircleData.postCenter);
          CircleShape.identifier := TextData.identifier;
          CircleShape.radius := CircleData.radius;
          CircleShape.Color := CircleData.color;
          CircleShape.isSelected := False;

          DynamicList.Add(CircleShape)
        end;
        ovEllipse :
        begin
          AStream.Read(EllipseData, SizeOf(EllipseData));

          EllipseShape := TEllipseDynamic.Create(Converter);
          EllipseShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          EllipseShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          EllipseShape.postCenter := FFormula.p2DToRangeBearing(EllipseData.postCenter);
          EllipseShape.identifier := TextData.identifier;
          EllipseShape.Hradius := EllipseData.Hradius;
          EllipseShape.Vradius := EllipseData.Vradius;
          EllipseShape.Color := EllipseData.color;
          EllipseShape.isSelected := False;

          DynamicList.Add(EllipseShape)
        end;
        ovArc :
        begin
          AStream.Read(ArcData, SizeOf(ArcData));

          ArcShape := TArcDynamic.Create(Converter);
          ArcShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          ArcShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          ArcShape.postCenter := FFormula.p2DToRangeBearing(ArcData.postCenter);
          ArcShape.identifier := TextData.identifier;
          ArcShape.radius := ArcData.radius;
          ArcShape.StartAngle := ArcData.startAngle;
          ArcShape.EndAngle := ArcData.endAngle;
          ArcShape.Color := ArcData.color;
          ArcShape.isSelected := False;

          DynamicList.Add(ArcShape)
        end;
        ovSector :
        begin
          AStream.Read(SectorData, SizeOf(SectorData));

          SectorShape := TSectorDynamic.Create(Converter);
          SectorShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          SectorShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          SectorShape.postCenter := FFormula.p2DToRangeBearing(SectorData.postCenter);
          SectorShape.identifier := TextData.identifier;
          SectorShape.Oradius := SectorData.Oradius;
          SectorShape.Iradius := SectorData.Iradius;
          SectorShape.StartAngle:= SectorData.StartAngle;
          SectorShape.EndAngle := SectorData.EndAngle;
          SectorShape.Color := SectorData.color;
          SectorShape.isSelected := False;

          DynamicList.Add(SectorShape)
        end;
        ovGrid :
        begin
          AStream.Read(GridData, SizeOf(GridData));

          GridShape := TGridDynamic.Create(Converter);
          GridShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          GridShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;
          GridShape.postCenter := FFormula.p2DToRangeBearing(GridData.postCenter);
          GridShape.identifier := TextData.identifier;
          GridShape.HCount := GridData.HCount;
          GridShape.WCount := GridData.WCount;
          GridShape.Height := GridData.Height;
          GridShape.Width := GridData.Width;
          GridShape.Color := GridData.color;
          GridShape.isSelected := False;

          DynamicList.Add(GridShape)
        end;
        ovPolygon :
        begin
          AStream.Read(PolygonData, SizeOf(PolygonData));

          PolygonShape := TPolygonDynamic.Create(Converter);
          PolygonShape.ParentPos.X := OverlayEditorForm.Map1.CenterX;
          PolygonShape.ParentPos.Y := OverlayEditorForm.Map1.CenterY;

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
          PolygonShape.identifier := TextData.identifier;
          PolygonShape.Color := PolygonData.color;
          PolygonShape.isSelected := False;

          DynamicList.Add(PolygonShape)
        end;
      end;
    end;
    lastPos := AStream.Position;
  end;
end;

procedure TDrawOverlay.ShowStreamDataStatic(AStream: TStream);
var
  I       : integer;
  lastPos : int64;

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
begin
  StaticList.Clear;

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

          StaticList.Add(TextShape)
        end;
        ovLine :
        begin
          AStream.Read(LineData, SizeOf(LineData));

          LineShape := TLineStatic.Create(Converter);
          LineShape.postStart := LineData.postStart;
          LineShape.postEnd := LineData.postEnd;
          LineShape.Color := LineData.color;
          LineShape.isSelected := False;

          StaticList.Add(LineShape)
        end;
        ovRectangle :
        begin
          AStream.Read(RectData, SizeOf(RectData));

          RectangleShape := TRectangleStatic.Create(Converter);
          RectangleShape.postStart := RectData.postStart;
          RectangleShape.postEnd := RectData.postEnd;
          RectangleShape.Color := RectData.color;
          RectangleShape.isSelected := False;

          StaticList.Add(RectangleShape)
        end;
        ovCircle :
        begin
          AStream.Read(CircleData, SizeOf(CircleData));

          CircleShape := TCircleStatic.Create(Converter);
          CircleShape.postCenter := CircleData.postCenter;
          CircleShape.radius := CircleData.radius;
          CircleShape.Color := CircleData.color;
          CircleShape.isSelected := False;

          StaticList.Add(CircleShape)
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

          StaticList.Add(EllipseShape)
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

          StaticList.Add(ArcShape)
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

          StaticList.Add(SectorShape)
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

          StaticList.Add(GridShape)
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

          StaticList.Add(PolygonShape)
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
