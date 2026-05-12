unit uArc;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, math,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOArc = class(TMainOverlay)
  public
    fData  : TArcRecord;
    radius : Integer;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation


constructor TOArc.Create;
begin
  inherited;
end;

destructor TOArc.Destroy;
begin
  inherited;
end;

procedure TOArc.Fill(FMap : TMap);
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
//  FMap.ConvertCoord(sX, sY, fData.posCent.Longitude, fData.posCent.Latitude, miMapToScreen);
//  centPoint.X  := Round(sX);
//  centPoint.Y  := Round(sY);
//
//  radius := round(sqrt(power((centPoint.X-startPoint.X),2) + power((centPoint.Y-startPoint.Y),2)));
end;

procedure TOArc.Draw(FCanvas : TCanvas; FMap: TMap);
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
//   FCanvas.Pen.color   := clWhite;
//
//  FCanvas.Brush.Style := bsClear;
//  FCanvas.ARC(round(centPoint.X-radius), round(centPoint.Y-radius),
//              round(centPoint.X+radius), round(centPoint.Y+radius),
//              round(startPoint.X), round(startPoint.Y),
//              round(endPoint.X), round(endPoint.Y));
end;

procedure TOArc.Save;
begin

end;

end.
