unit uPolygon;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOPolygon = class(TMainOverlay)
  public
    fData : TPolygonRecord;
    polyList : TList;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOPolygon.Create;
begin
  inherited;
  polyList := TList.Create;
end;

destructor TOPolygon.Destroy;
begin
  inherited;
end;

procedure TOPolygon.Fill(FMap : TMap);
var
  I : Integer;
  sX, sY : single;
begin
//  tempLengthArray := fData.tempLengthArray;
//  SetLength(polyPoint, tempLengthArray);
//  for I := 0 to High(polyPoint) do
//  begin
//      sX := 0; sY := 0;
//      FMap.ConvertCoord(sX, sY, fData.posPolygon[I].Longitude, fData.posPolygon[I].Latitude, miMapToScreen);
//      polyPoint[I].X := Round(sX);
//      polyPoint[I].Y := Round(sY);
//  end;
end;

procedure TOPolygon.Draw(FCanvas : TCanvas; FMap: TMap);
begin
//  if isList {(fData.posPolygon[0].Longitude = 0) OR (fData.posPolygon[0].Latitude = 0)} then
//    FCanvas.Pen.color := color
//  else
//  begin
//    Fill(FMap);
//    FCanvas.Pen.color := fdata.color;
//  end;
//
//  if isSelected then
//     FCanvas.Pen.color   := clWhite;
//
//  FCanvas.Brush.Style := bsClear;
//  FCanvas.Polygon(polyPoint);
end;

procedure TOPolygon.Save;
begin

end;

end.
