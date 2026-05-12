unit uCircle;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, math,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOCircle = class(TMainOverlay)
  public
    fData  : TCircleRecord;
    radius : Integer;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOCircle.Create;
begin
  inherited;
end;

destructor TOCircle.Destroy;
begin
  inherited;
end;

procedure TOCircle.Fill(FMap : TMap);
begin
//  FMap.ConvertCoord(startPoint.X, startPoint.Y, fData.posStart.Longitude, fData.posStart.Latitude, miMapToScreen);
//  FMap.ConvertCoord(endPoint.X, endPoint.Y, fData.posEnd.Longitude, fData.posEnd.Latitude, miMapToScreen);
//
//  radius := round(sqrt(power((startPoint.X-endPoint.X),2) + power((startPoint.Y-endPoint.Y),2)));


//  FMap.ConvertCoord(startPoint.X, startPoint.Y, fData.posStart.Longitude, fData.posStart.Latitude, miMapToScreen);
//  FMap.ConvertCoord(endPoint.X, endPoint.Y, fData.posEnd.Longitude, fData.posEnd.Latitude, miMapToScreen);

//  rePosEnd.Longitude := fData.posStart.Longitude + (r_Nm/60);
//  rePosEnd.Latitude  := fData.posStart.Latitude;

  radius := abs(Round(endPoint.X) - Round(startPoint.X));
end;

procedure TOCircle.Draw(FCanvas : TCanvas; FMap: TMap);
begin
//  if (fData.posStart.Longitude = 0) OR (fData.posStart.Latitude = 0) then
//  begin
//    radius := round(sqrt(power((startPoint.X-endPoint.X),2) + power((startPoint.Y-endPoint.Y),2)));
//    FCanvas.Pen.color  := color;
//  end
//  else
//  begin
//    Fill(FMap);
//    FCanvas.Pen.color  := fdata.color;
//  end;
//
//  if isSelected then
//     FCanvas.Pen.color := clWhite;
//
//  FCanvas.Brush.Style := bsClear;
//  FCanvas.Ellipse(round(startPoint.X) - radius, round(startPoint.Y) - radius,
//                  round(startPoint.X) + radius, round(startPoint.Y) + radius);
end;

procedure TOCircle.Save;
begin

end;

end.
