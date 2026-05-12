unit uRect;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TORectangle = class(TMainOverlay)
  public
    fData : TRectRecord;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TORectangle.Create;
begin
  inherited;
end;

destructor TORectangle.Destroy;
begin
  inherited;
end;

procedure TORectangle.Fill(FMap : TMap);
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

procedure TORectangle.Draw(FCanvas : TCanvas; FMap: TMap);
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
//  FCanvas.RECTANGLE(round(startPoint.X), round(startPoint.Y), round(endPoint.X), round(endPoint.Y));
end;

procedure TORectangle.Save;
begin

end;

end.
