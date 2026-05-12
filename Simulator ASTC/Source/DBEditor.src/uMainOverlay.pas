unit uMainOverlay;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin, uBaseCoordSystem,
  OleCtrls, uMapXHandler, uCoordConvertor,
  {TeCanvas,} ColorGrd, uDataTypes, uT3Unit, uLibSettingTTT, tttData;

type

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

  TMainTrackSelection = class
  private
    FTrackInstanceIndex: Integer;
    FTrackId: string;
    FConverter: TCoordConverter;

    procedure SetTrackId(const Value: string);
    procedure SetTrackInstanceIndex(const Value: Integer);  protected
    procedure SetConverter(const Value: TCoordConverter); protected

  public
    Parent : TT3PlatformInstance;
    Orientation : Byte; {0: Relative; 1: True}
    RangeOffset : Double;
    BearingOffset, Rotation : Integer;
    isDraw : Boolean;

    constructor Create(cvt : TCoordConverter);
    procedure Draw(aCnv: TCanvas); virtual;
    destructor Destroy; override;

    property TrackId   : string read FTrackId write SetTrackId;
    property TrackInstanceIndex   : Integer read FTrackInstanceIndex write SetTrackInstanceIndex;
    property Converter : TCoordConverter read FConverter write SetConverter;
  end;

  TMainOverlayTemplate = class
  private
    FName : string;
    FTipe : Integer;
    FDomain : Integer;
    FCubicle : Integer;
    FForce: Integer;

    procedure SetForce(const Value: Integer);
  protected
    procedure SetName(const Value: string);
    procedure SetTipe(const Value: Integer);
    procedure SetDomain(const Value: Integer);
    procedure SetCubicle(const Value: Integer);

  public
    FMap : TMap;
    FCanvas : TCanvas;
    isShow : Boolean;
    StaticList : TList; {Container overlay static}
    DynamicList : TList; {Container overlay dynamic}
    FListTrack : TList; {list kapal yg di attach}

    constructor create;
    destructor Destroy; override;

    procedure Clear;
    procedure Draw(FCanvas: TCanvas; FMap: TMap); virtual;
    procedure Save; virtual; abstract;

    procedure AddListTrack(ListTrack : TMainTrackSelection);

    property Name   : string read FName write SetName;
    property Tipe   : Integer read FTipe write SetTipe;
    property Domain   : Integer read FDomain write SetDomain;
    property Cubicle   : Integer read FCubicle write SetCubicle;
    property Force   : Integer read FForce write SetForce;
  end;

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

      // polygon
      polyPoint      : Array of TPoint;
      polyMap        : Array of TMapPt;
      polyGrid       : Array of TGrid;
      polyTitik      : Array of TBeaRng;
      tempLengthArray: Integer;

      // table -> ditambah yang ada di ellipse
      column         : Integer;
      row            : Integer;
      CelWidth       : Double;
      CelHeight      : Double;
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
      radian         : Integer;

      // ellipse
      centPoint      : TScreenPt;
      centMap        : TMapPt;
      centGrid       : TGrid;

      // sector n arc -> ditambah yang ada di ellipse
      details        : string[15];
      startPoint2    : TScreenPt;
      endPoint2      : TScreenPt;
      startMap2      : TMapPt;
      endMap2        : TMapPt;
      startAngle     : Integer;
      endAngle       : Integer;
      inner          : Integer;
      outer          : Integer;

      // text
      size           : Integer;
      words          : string[30];

      FCanvas        : TCanvas;
      FMap           : TMap;

      constructor create;
      destructor Destroy; override;
      procedure Draw(FCanvas: TCanvas; FMap: TMap); virtual;
      procedure Save; virtual; abstract;
  end;

implementation

uses
  uMainStaticShape, uMainDynamicShape;

constructor TMainOverlay.create;
begin

end;

destructor TMainOverlay.destroy;
begin

end;

procedure TMainOverlay.Draw(FCanvas: TCanvas; FMap: TMap);
begin
  FCanvas.Pen.Style := psSolid;
end;

{ TMainOverlayTemplate }

procedure TMainOverlayTemplate.AddListTrack(ListTrack: TMainTrackSelection);
begin
  FListTrack.Add(ListTrack);
end;

procedure TMainOverlayTemplate.Clear;
begin
  StaticList.Clear;
  DynamicList.Clear;
  FListTrack.Clear;
end;

constructor TMainOverlayTemplate.create;
begin
  StaticList := TList.Create;
  DynamicList := TList.Create;
  FListTrack := TList.Create;
end;

destructor TMainOverlayTemplate.Destroy;
begin
  inherited;
  StaticList.Free;
  DynamicList.Free;
  FListTrack.Free;
end;


procedure TMainOverlayTemplate.Draw(FCanvas: TCanvas; FMap: TMap);
var
  i, j : Integer;
  StaticShape : TMainStaticShape;
  DynamicShape : TMainDynamicShape;
  Ship : TMainTrackSelection;
begin
  FCanvas.Pen.Style := psSolid;
  case Tipe of
    osDynamic :
    begin
      for i := 0 to FListTrack.Count - 1 do
      begin
        Ship := FListTrack[i];

        if Ship.isDraw then
        begin
          for j := 0 to DynamicList.Count - 1 do
          begin
            DynamicShape := DynamicList[j];

            DynamicShape.Parent := Ship.Parent;
            DynamicShape.RangeOffset := Ship.RangeOffset;
            DynamicShape.BearingOffset := Ship.BearingOffset;
            DynamicShape.RotationOffset := Ship.Rotation;
            DynamicShape.Orientation := Ship.Orientation;

            DynamicShape.Draw(FCanvas);
          end;
          Ship.Draw(FCanvas);
        end;
      end;
    end;
    osStatic :
    begin
      if not isShow then
        Exit;

      for i := 0 to StaticList.Count - 1 do
      begin
        StaticShape := StaticList[i];
        StaticShape.Draw(FCanvas);
      end;
    end;
  end;
end;


procedure TMainOverlayTemplate.SetCubicle(const Value: Integer);
begin
  FCubicle := Value;
end;


procedure TMainOverlayTemplate.SetDomain(const Value: Integer);
begin
  FDomain := Value;
end;


procedure TMainOverlayTemplate.SetForce(const Value: Integer);
begin
  FForce := Value;
end;

procedure TMainOverlayTemplate.SetName(const Value: string);
begin
  FName := Value;
end;


procedure TMainOverlayTemplate.SetTipe(const Value: Integer);
begin
  FTipe := Value;
end;

{ TMainTrackSelection }

constructor TMainTrackSelection.Create(cvt: TCoordConverter);
begin
  FConverter := cvt;
end;

destructor TMainTrackSelection.Destroy;
begin

  inherited;
end;

procedure TMainTrackSelection.Draw(aCnv: TCanvas);
var
  sx, sy : Integer;

  mx, my, BpOffset : Double;
  pOffset :  t2DPoint;
begin
  inherited;
  if not Assigned(Parent) then Exit;
  if (Parent.Dormant) or (Parent.FreeMe) then Exit;

  case Orientation of
    0 : BpOffset := ValidateDegree(Parent.Heading + BearingOffset);
    1 : BpOffset := ValidateDegree(BearingOffset);
  end;

  {Point offset from Ship}
  RangeBearingToCoord(RangeOffset, BpOffset, mx, my);
  pOffset.X := Parent.PosX + mx;
  pOffset.Y := Parent.PosY + my;

  Converter.ConvertToScreen(pOffset.X, pOffset.Y, sx, sy);

  with aCnv do
  begin
    Brush.Style := bsClear;

    Pen.Color := clBlack;

    MoveTo(sx-5,sy); LineTo(sx+5,sy);
    MoveTo(sx,sy-5); LineTo(sx,sy+5);
  end;
end;

procedure TMainTrackSelection.SetConverter(const Value: TCoordConverter);
begin

end;


procedure TMainTrackSelection.SetTrackId(const Value: string);
begin
  FTrackId := Value;
end;


procedure TMainTrackSelection.SetTrackInstanceIndex(const Value: Integer);
begin
  FTrackInstanceIndex := Value;
end;

end.
