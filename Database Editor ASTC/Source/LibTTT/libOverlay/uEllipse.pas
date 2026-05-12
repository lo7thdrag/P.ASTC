unit uEllipse;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOEllipse = class(TMainOverlay)
  public
    fData : TEllipseRecord;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOEllipse.Create;
begin
  inherited;
end;

destructor TOEllipse.Destroy;
begin
  inherited;
end;

procedure TOEllipse.Fill(FMap : TMap);
var
  sX, sY : single;
begin
//  FMap.ConvertCoord(sX, sY, fData.posStart.Longitude, fData.posStart.Latitude, miMapToScreen);
//  startPoint.X := Round(sX);
//  startPoint.Y := Round(sY);
//
//  FMap.ConvertCoord(sX, sY, fData.posEnd.Longitude, fData.posEnd.Latitude, miMapToScreen);
//  endPoint.X := Round(sX);
//  endPoint.Y := Round(sY);
end;

procedure TOEllipse.Draw(FCanvas : TCanvas; FMap: TMap);
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
//
//  FCanvas.Brush.Style := bsClear;
//  FCanvas.Ellipse(round(startPoint.X), round(startPoint.Y), round(endPoint.X), round(endPoint.Y));
end;

procedure TOEllipse.Save;
begin

end;

end.
