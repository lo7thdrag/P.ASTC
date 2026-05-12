unit uSector;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, math,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOSector = class(TMainOverlay)
  public
    fData  : TSectorRecord;
    radius, radius2 : Integer;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOSector.Create;
begin
  inherited;
end;

destructor TOSector.Destroy;
begin
  inherited;
end;

procedure TOSector.Fill(FMap : TMap);
var
  sX, sY : single;
begin
//  FMap.ConvertCoord(sX, sY, fData.posStart.Longitude, fData.posStart.Latitude, miMapToScreen);
//  startPoint.X := Round(sX);
//  startPoint.Y := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posEnd.Longitude, fData.posEnd.Latitude, miMapToScreen);
//  endPoint.X   := Round(sX);
//  endPoint.Y   := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posStart2.Longitude, fData.posStart2.Latitude, miMapToScreen);
//  startPoint2.X := Round(sX);
//  startPoint2.Y := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posEnd2.Longitude, fData.posEnd2.Latitude, miMapToScreen);
//  endPoint2.X   := Round(sX);
//  endPoint2.Y   := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posCent.Longitude, fData.posCent.Latitude, miMapToScreen);
//  centPoint.X  := Round(sX);
//  centPoint.Y  := Round(sY);
//
//  radius  := round(sqrt(power((centPoint.X-startPoint.X),2) + power((centPoint.Y-startPoint.Y),2)));
//  radius2 := round(sqrt(power((centPoint.X-endPoint2.X),2) + power((centPoint.Y-endPoint2.Y),2)));
end;

procedure TOSector.Draw(FCanvas : TCanvas; FMap: TMap);
begin
//  if (fData.posStart.Longitude = 0) OR (fData.posStart.Latitude = 0) then
//  begin
//    FCanvas.Pen.color   := color;
//    radius  := round(sqrt(power((centPoint.X-startPoint.X),2) + power((centPoint.Y-startPoint.Y),2)));
//    radius2 := round(sqrt(power((centPoint.X-endPoint2.X),2) + power((centPoint.Y-endPoint2.Y),2)));
//  end
//  else
//  begin
//    Fill(FMap);
//    FCanvas.Pen.color   := fdata.color;
//  end;
//
//  if isSelected then
//     FCanvas.Pen.color   := clWhite;
//
//  FCanvas.Brush.Style := bsClear;
//  if (details = 'scArc') OR (fData.details = 'scArc') then
//  begin
//    FCanvas.ARC(round(centPoint.X-radius), round(centPoint.Y-radius),
//        round(centPoint.X+radius), round(centPoint.Y+radius),
//        round(startPoint.X), round(startPoint.Y), round(endPoint.X), round(endPoint.Y));
//  end
//  else
//  begin
//
//    if radius <> 0 then
//    begin
//      FCanvas.ARC(round(centPoint.X-radius), round(centPoint.Y-radius),
//                  round(centPoint.X+radius), round(centPoint.Y+radius),
//                  round(startPoint.X),    round(startPoint.Y), round(endPoint.X), round(endPoint.Y));
//    end;
//
//    FCanvas.ARC(round(centPoint.X-radius2), round(centPoint.Y-radius2),
//                round(centPoint.X+radius2), round(centPoint.Y+radius2),
//                round(startPoint2.X), round(startPoint2.Y), round(endPoint2.X), round(endPoint2.Y));
//
//    if radius = 0 then
//    begin
//       startPoint.X := centPoint.X;
//       startPoint.Y := centPoint.Y;
//       endPoint.X   := centPoint.X;
//       endPoint.Y   := centPoint.Y;
//    end;
//
//    FCanvas.MoveTo(round(startPoint.X), round(startPoint.Y));
//    FCanvas.LineTo(round(startPoint2.X), round(startPoint2.Y));
//    FCanvas.MoveTo(round(endPoint.X), round(endPoint.Y));
//    FCanvas.LineTo(round(endPoint2.X), round(endPoint2.Y));
//  end;
end;

procedure TOSector.Save;
begin

end;

end.
