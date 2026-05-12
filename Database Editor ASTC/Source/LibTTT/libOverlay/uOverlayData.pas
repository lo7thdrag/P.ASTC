unit uOverlayData;

interface

type
  E_ShapeType = (stLine, stArc, stSector, stRectangle, stPolygon, stCircle,
    stEllipse, stArcSector, stText);

  TLineData = record
    ShapeType : E_ShapeType;
    Bearing : Double;
    Range : Double;
  end;

  TArcData = record
    ShapeType : E_ShapeType;
    CenterX : Double;
    CenterY : Double;
    StartAngle : Double;
    EndAngle : Double;
    Radius : Double;
  end;

  TSectorData = record

  end;

implementation

end.
