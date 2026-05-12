unit uLine;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOLine = class(TMainOverlay)
  public
    fData : TLineRecord;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOLine.Create;
begin
  inherited;
end;

destructor TOLine.Destroy;
begin
  inherited;
end;

procedure TOline.Fill(FMap : TMap);
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

procedure TOLine.Draw(FCanvas : TCanvas; FMap: TMap);
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
//  FCanvas.MoveTo(Round(startPoint.X), Round(startPoint.Y));
//  FCanvas.LineTo(Round(endPoint.X), Round(endPoint.Y));

  {if fData.isSelected then begin
    FCanvas.Font.Color := clRed;
    FCanvas.TextOut(Round(startPoint.X), Round(startPoint.Y), ' selected');
  end; }
end;

procedure TOLine.Save;
begin

end;

end.
