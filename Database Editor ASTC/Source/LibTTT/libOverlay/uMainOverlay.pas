unit uMainOverlay;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uCoordConvertor,
  {TeCanvas,} ColorGrd;

type
  /////
  TScreenPt = record
    X : Single;
    Y : Single;
  end;

  TMapPt = record
    Longitude : Double;
    Latitude  : Double;
  end;

  TBeaRng = record
    Range : Double;
    Bearing  : Double;
  end;

  TGrid  = record
    gridLongitude : string[30];
    gridLatitude  : string[30];
  end;

  /////
  TMainOverlay = class
  private

  protected

  public
      Bearing1,
      Bearing2,
      Range1, Range2,
      Rad1, Rad2,
      cHeight, cWidth: Double;

      startPoint     : TScreenPt;
      endPoint       : TScreenPt;
      startMap       : TMapPt;
      endMap         : TMapPt;
      r_Nm           : Double;
      startGrid      : TGrid;
      endGrid        : TGrid;
      color          : Integer;
      isSelected     : Boolean;
      isList         : Boolean;

      // arc  -> ditambah yang ada di ellipse + sector (startAngle & endAngle)
      {startAngle     : Integer;
      endAngle       : Integer;}

      // polygon
      polyPoint      : Array of TPoint;
      polyMap        : Array of TMapPt;
      polyGrid       : Array of TGrid;
      tempLengthArray: Integer;

      // table -> ditambah yang ada di ellipse
      column         : Integer;
      row            : Integer;
      angle          : Integer;
      tempStartPt    : TScreenPt;
      tempEndPt      : TScreenPt;
      tempStartMap   : TMapPt;
      tempEndMap     : TMapPt;
      tempBMap       : TMapPt;
      tempDMap       : TMapPt;

      // circle
      bearingFrmCent : string[15];
      distFrmCent    : string[15];

      // ellipse
      centPoint      : TScreenPt;
      centMap        : TMapPt;
      centGrid       : TGrid;

      // sector -> ditambah yang ada di ellipse
      details        : string[15];
      startPoint2    : TScreenPt;
      endPoint2      : TScreenPt;
      startMap2      : TMapPt;
      endMap2        : TMapPt;
      startAngle     : Integer;
      endAngle       : Integer;
      {inner          : Integer;
      outer          : Integer;}

      // text
      size           : Integer;
      words          : string[30];

      FCanvas        : TCanvas;
      FMap           : TMap;

      constructor create;
      destructor destroy; override;
      procedure Draw(FCanvas: TCanvas; FMap: TMap); virtual; abstract;
      procedure Save; virtual; abstract;
  end;

implementation

constructor TMainOverlay.create;
begin

end;

destructor TMainOverlay.destroy;
begin

end;

end.
