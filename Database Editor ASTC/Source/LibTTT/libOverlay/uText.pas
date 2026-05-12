unit uText;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uMainOverlay, uRecord;

  type

  TOText = class(TMainOverlay)
  public
    fData : TTextRecord;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); override;
    procedure Save; override;
    procedure Fill(FMap : TMap);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TOText.Create;
begin
  inherited;
end;

destructor TOText.Destroy;
begin
  inherited;
end;

procedure TOText.Fill(FMap : TMap);
var
  sX, sY : single;
begin
//  FMap.ConvertCoord(sX, sY, fData.posStart.Longitude, fData.posStart.Latitude, miMapToScreen);
//  startPoint.X := Round(sX);
//  startPoint.Y := Round(sY);
//
//  size  := fData.size;
//  words := fData.words;
  //color := fData.color;
end;

procedure TOText.Draw(FCanvas : TCanvas; FMap: TMap);
begin
//  if (fData.posStart.Longitude = 0) OR (fData.posStart.Latitude = 0) then
//    FCanvas.Font.color := color
//  else
//  begin
//    Fill(FMap);
//    FCanvas.Font.color := fdata.color;
//  end;

  if isSelected then
     FCanvas.Font.color   := clWhite;

  FCanvas.Brush.Style := bsClear;
  FCanvas.Font.Size   := size;
  FCanvas.TextOut(round(startPoint.X), round(startPoint.Y), words);
end;

procedure TOText.Save;
begin

end;

end.
