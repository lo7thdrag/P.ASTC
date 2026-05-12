unit uTable;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, uBaseCoordSystem, uDataTypes, uCoordConvertor,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord, uFormula;

  type

  TOTable = class(TMainOverlay)
  private
    FConverter: TCoordConverter;
    procedure SetConverter(const Value: TCoordConverter);
  public
    fData : TGridRecord;
    fFormula : TFormula;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);
    property Converter : TCoordConverter read FConverter write SetConverter;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOTable.Create;
begin
  inherited;
  fFormula := TFormula.Create;
end;

destructor TOTable.Destroy;
begin
  inherited;
end;

procedure TOTable.Fill(FMap : TMap);
var
  sX, sY          : single;
begin
//  FMap.ConvertCoord(sX, sY, fData.posStart.Longitude, fData.posStart.Latitude, miMapToScreen);
//  startPoint.X := Round(sX);
//  startPoint.Y := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posEnd.Longitude, fData.posEnd.Latitude, miMapToScreen);
//  endPoint.X := Round(sX);
//  endPoint.Y := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posCent.Longitude, fData.posCent.Latitude, miMapToScreen);
//  centPoint.X := Round(sX);
//  centPoint.Y := Round(sY);
//
//  column := fData.column;
//  row    := fData.row;
//  angle  := fData.angle;
end;

procedure TOTable.Draw(FCanvas : TCanvas; FMap: TMap);
var
  I                             : Integer;

  GamStart1, GamStart2,
  GamEnd1, GamEnd2,
  tempStart1, tempStart2,
  tempEnd1, tempEnd2            : TScreenPt;

  tWidth, tHeight,
  tempWidth, tempHeight,
  tempCellWidth, tempCellHeight : Double;

begin
//  if (fData.posStart.Longitude = 0) OR (fData.posStart.Latitude = 0) then
//    FCanvas.Pen.color   := color
//  else
//  begin
//    Fill(FMap);
//    FCanvas.Pen.color   := fdata.color;
//  end;
//
//  if isSelected then
//     FCanvas.Pen.color   := clWhite;
//  FCanvas.Pen.Style := psSolid;
//
//  if (fData.angle = 0) or (fData.angle = 180) or (angle = 0) or (angle = 180) then
//  begin
//    tWidth      := Round(Abs(startPoint.X - endPoint.X));
//    tHeight     := Round(Abs(startPoint.Y - endPoint.Y));
//
//    startPoint.X:= centPoint.X - tWidth/2;
//    startPoint.Y:= centPoint.Y + tHeight/2;
//
//    endPoint.X  := centPoint.X + tWidth/2;
//    endPoint.Y  := centPoint.Y - tHeight/2;
//
//    tempWidth      := Round(Abs(startPoint.X - endPoint.X));
//    tempHeight     := Round(Abs(startPoint.Y - endPoint.Y));
//    tempCellWidth  := tempwidth / column;
//    tempCellHeight := tempHeight / row;
//
//    for I := 0 to row - 1 do     // loop for row
//    begin
//      if I = 0 then
//      begin
//        tempStart1.X    := startPoint.X;
//        tempStart1.Y    := startPoint.Y;
//        tempEnd1.X      := endPoint.X;
//        tempEnd1.Y      := startPoint.Y;
//      end;
//      tempStart2.X := tempStart1.X;
//      tempStart2.Y := tempStart1.Y - tempCellHeight;
//      tempEnd2.X   := tempEnd1.X;
//      tempEnd2.Y   := tempEnd1.Y - tempCellHeight;
//
//      FCanvas.MoveTo(Round(tempStart1.X), Round(tempStart1.Y));
//      FCanvas.LineTo(Round(tempStart2.X), Round(tempStart2.Y));
//      FCanvas.MoveTo(Round(tempStart2.X), Round(tempstart2.Y));
//      FCanvas.LineTo(Round(tempEnd2.X), Round(tempEnd2.Y));
//      FCanvas.MoveTo(Round(tempEnd2.X), Round(tempEnd2.Y));
//      FCanvas.LineTo(Round(tempEnd1.X), Round(tempEnd1.Y));
//
//      tempStart1.X := tempStart2.X;
//      tempStart1.Y := tempStart2.Y;
//      tempEnd1.X   := tempEnd2.X;
//      tempEnd1.Y   := tempEnd2.Y;
//
//    end;
//
//    for I := 0 to column - 1 do      // loop for column
//    begin
//      if I = 0 then
//      begin
//        tempStart1.X    := startPoint.X;
//        tempStart1.Y    := startPoint.Y;
//        tempEnd1.X      := startPoint.X;
//        tempEnd1.Y      := endPoint.Y;
//      end;
//      tempStart2.X := tempStart1.X + tempCellWidth;
//      tempStart2.Y := tempStart1.Y;
//      tempEnd2.X   := tempEnd1.X + tempCellWidth;
//      tempEnd2.Y   := tempEnd1.Y;
//
//      FCanvas.MoveTo(Round(tempStart1.X), Round(tempstart1.Y));
//      FCanvas.LineTo(Round(tempStart2.X), Round(tempStart2.Y));
//      FCanvas.MoveTo(Round(tempStart2.X), Round(tempstart2.Y));
//      FCanvas.LineTo(Round(tempEnd2.X), Round(tempEnd2.Y));
//      FCanvas.MoveTo(Round(tempEnd2.X), Round(tempEnd2.Y));
//      FCanvas.LineTo(Round(tempEnd1.X), Round(tempEnd1.Y));
//
//      tempStart1.X := tempStart2.X;
//      tempStart1.Y := tempStart2.Y;
//      tempEnd1.X   := tempEnd2.X;
//      tempEnd1.Y   := tempEnd2.Y;
//    end;
//  end
//  else
//  begin
//    tWidth      := Round(Abs(startPoint.X - endPoint.X));
//    tHeight     := Round(Abs(startPoint.Y - endPoint.Y));
//
//    startPoint.X:= centPoint.X - tWidth/2;
//    startPoint.Y:= centPoint.Y + tHeight/2;
//
//    endPoint.X  := centPoint.X + tWidth/2;
//    endPoint.Y  := centPoint.Y - tHeight/2;
//
//    tempWidth      := Round(Abs(startPoint.X - endPoint.X));
//    tempHeight     := Round(Abs(startPoint.Y - endPoint.Y));
//    tempCellWidth  := tempwidth / column;
//    tempCellHeight := tempHeight / row;
//
//
//    for I := 0 to row - 1 do      // loop for column
//    begin
//      if I = 0 then
//      begin
//        tempStart1.X    := startPoint.X;
//        tempStart1.Y    := startPoint.Y;
//        tempEnd1.X      := endPoint.X;
//        tempEnd1.Y      := startPoint.Y;
//
//      end;
//
//      tempStart2.X := tempStart1.X;
//      tempStart2.Y := tempStart1.Y - tempCellHeight;
//      tempEnd2.X   := tempEnd1.X;
//      tempEnd2.Y   := tempEnd1.Y - tempCellHeight;
//
//      GamStart1.X   := fFormula.getX_fromRotation(tempStart1, centPoint, angle);
//      GamStart1.Y   := fFormula.getY_fromRotation(tempStart1, centPoint, angle);
//      GamStart2.X   := fFormula.getX_fromRotation(tempStart2, centPoint, angle);
//      GamStart2.Y   := fFormula.getY_fromRotation(tempStart2, centPoint, angle);
//      GamEnd1.X     := fFormula.getX_fromRotation(tempEnd1, centPoint, angle);
//      GamEnd1.Y     := fFormula.getY_fromRotation(tempEnd1, centPoint, angle);
//      GamEnd2.X     := fFormula.getX_fromRotation(tempEnd2, centPoint, angle);
//      GamEnd2.Y     := fFormula.getY_fromRotation(tempEnd2, centPoint, angle);
//
//      FCanvas.MoveTo(Round(GamStart1.X), Round(GamStart1.Y));
//      FCanvas.LineTo(Round(GamStart2.X), Round(GamStart2.Y));
//      FCanvas.MoveTo(Round(GamStart2.X), Round(GamStart2.Y));
//      FCanvas.LineTo(Round(GamEnd2.X), Round(GamEnd2.Y));
//      FCanvas.MoveTo(Round(GamEnd2.X), Round(GamEnd2.Y));
//      FCanvas.LineTo(Round(GamEnd1.X), Round(GamEnd1.Y));
//
//      tempStart1.X := tempStart2.X;
//      tempStart1.Y := tempStart2.Y;
//      tempEnd1.X   := tempEnd2.X;
//      tempEnd1.Y   := tempEnd2.Y;
//
//    end;
//
//    for I := 0 to column - 1 do     // loop for row
//    begin
//      if I = 0 then
//      begin
//        tempStart1.X    := startPoint.X;
//        tempStart1.Y    := startPoint.Y;
//        tempEnd1.X      := startPoint.X;
//        tempEnd1.Y      := endPoint.Y;
//      end;
//
//      tempStart2.X := tempStart1.X + tempCellWidth;
//      tempStart2.Y := tempStart1.Y;
//      tempEnd2.X   := tempEnd1.X + tempCellWidth;
//      tempEnd2.Y   := tempEnd1.Y;
//
//      GamStart1.X   := fFormula.getX_fromRotation(tempStart1, centPoint, angle);
//      GamStart1.Y   := fFormula.getY_fromRotation(tempStart1, centPoint, angle);
//      GamStart2.X   := fFormula.getX_fromRotation(tempStart2, centPoint, angle);
//      GamStart2.Y   := fFormula.getY_fromRotation(tempStart2, centPoint, angle);
//      GamEnd1.X     := fFormula.getX_fromRotation(tempEnd1, centPoint, angle);
//      GamEnd1.Y     := fFormula.getY_fromRotation(tempEnd1, centPoint, angle);
//      GamEnd2.X     := fFormula.getX_fromRotation(tempEnd2, centPoint, angle);
//      GamEnd2.Y     := fFormula.getY_fromRotation(tempEnd2, centPoint, angle);
//
//      FCanvas.MoveTo(Round(GamStart1.X), Round(GamStart1.Y));
//      FCanvas.LineTo(Round(GamStart2.X), Round(GamStart2.Y));
//      FCanvas.MoveTo(Round(GamStart2.X), Round(GamStart2.Y));
//      FCanvas.LineTo(Round(GamEnd2.X), Round(GamEnd2.Y));
//      FCanvas.MoveTo(Round(GamEnd2.X), Round(GamEnd2.Y));
//      FCanvas.LineTo(Round(GamEnd1.X), Round(GamEnd1.Y));
//
//      tempStart1.X := tempStart2.X;
//      tempStart1.Y := tempStart2.Y;
//      tempEnd1.X   := tempEnd2.X;
//      tempEnd1.Y   := tempEnd2.Y;
//    end;
//  end;
end;

procedure TOTable.Save;
begin

end;

procedure TOTable.SetConverter(const Value: TCoordConverter);
begin
  FConverter := Value;
end;

end.
