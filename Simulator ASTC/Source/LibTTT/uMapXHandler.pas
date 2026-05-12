unit uMapXHandler;

interface

uses
  MapXLib_TLB, Windows, Classes, Graphics, Controls,
  uCoordConvertor, tttData, Sysutils, Math;

type
  TScreenPt = record
    X : Single;
    Y : Single;
  end;

//==============================================================================
  TNotifyDraw = procedure (aCanvas: TCanvas) of object;
  TMapMouseMove = procedure (sender: TObject; Shift: TShiftState; X, Y: Integer) of object;
  TMapMouseDown = procedure (sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer) of object;
  TMapMouseUp = procedure (sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer) of object;

//==============================================================================

  TSimMap = class
  private

    FLyrDraw    : CMapXLayer;
    FCanvas     : TCanvas;

    FConverter  : TCoordConverter;

    FRectZoom : TRect;
    FMouseIsDown: boolean;

//    FDrawContainer: TDrawContainers;
    FOnDrawToCanvas: TNotifyDraw;

    FOnMapChange: TNotifyEvent;
    FOnAddWayoint: TEventAddWaypoint;
    FOnEditWayoint: TEventEditWaypoint;
    FOnToolUsed: TEventToolMapUsed;
    FOnMapMouseMove: TMapMouseMove;
    FOnMapMouseDown: TMapMouseDown;
    FOnMapMouseUp: TMapMouseUp;
    FOnLogTemporary: TGetStrProc;

    //myFile      : TextFile;              // farah
    //fromFileTPA : Array of TPoint;
    //tempTPA     : Array of TPoint;

    procedure CreateMapTool;
    procedure SetMapComponent;
    //procedure EventOnDrawCycler(sender: TObject);
    procedure SetOnAddWayoint(const Value: TEventAddWaypoint);
    procedure SetOnEditWayoint(const Value: TEventEditWaypoint);
    procedure SetOnToolUsed(const Value: TEventToolMapUsed);
    procedure SetOnMapMouseMove(const Value: TMapMouseMove);
    procedure SetOnMapMouseDown(const Value: TMapMouseDown);
    procedure SetOnMapMouseUp(const Value: TMapMouseUp);
    procedure SetOnLogTemporary(const Value: TGetStrProc);

  public
    FMap        : TMap;

    constructor Create(aMap: TMap);
    destructor Destroy; override;

    procedure LoadMap(aGeoset: String);
    procedure applySetting(const MapZoom: integer;
      const mX, mY: double; const Colorbg : TColor);

    procedure DrawMap;

    procedure SetMapCenter(const x, y: double);
    procedure SetMapZoom(const z: double);

    procedure MapDrawUserLayer(ASender: TObject; const Layer: IDispatch;
      hOutputDC, hAttributeDC: Integer;
      const RectFull, RectInvalid: IDispatch);

    procedure MapToolUsed(ASender: TObject; ToolNum: Smallint;
      X1, Y1, X2, Y2, Distance: double; Shift, Ctrl: WordBool;
      var EnableDefault: WordBool);

    procedure MapMouseDown(sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure MapMouseMove(sender: TObject; Shift: TShiftState; X, Y: Integer);

    procedure MapMouseUp(sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure MapViewChanged(Sender: TObject);

    { farah }
   { procedure drawPattern;
    procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
    procedure LoadPredefinedPattern(fPatternName: String);   }

//    procedure overlayMouseDown (X, Y : Integer);
//    procedure overlayMouseMove (X, Y : Integer);
//    procedure overlayMouseUp   (X, Y : Integer);
  public
//    down   : Boolean;
//    radius : Integer;

//    LineStart, LineEnd : TScreenPt;
//    TableStart, TableEnd : TScreenPt;
//    RectStart, RectEnd : TScreenPt;
//    EllipseStart, EllipseEnd : TScreenPt;
//    CircleStart, CircleEnd : TScreenPt;
//    TextStart : TScreenPt;

    property OnDrawToCanvas: TNotifyDraw
      read FOnDrawToCanvas write FOnDrawToCanvas;

    property OnMapChange: TNotifyEvent
      read FOnMapChange write FOnMapChange;

    property OnToolUsed : TEventToolMapUsed read FOnToolUsed write SetOnToolUsed;
    property OnAddWayoint : TEventAddWaypoint read FOnAddWayoint write SetOnAddWayoint;
    property OnEditWayoint : TEventEditWaypoint read FOnEditWayoint write SetOnEditWayoint;
    property OnMapMouseMove : TMapMouseMove read FOnMapMouseMove write SetOnMapMouseMove;
    property OnMapMouseDown : TMapMouseDown  read FOnMapMouseDown write SetOnMapMouseDown;
    property OnMapMouseUp   : TMapMouseUp  read FOnMapMouseUp write SetOnMapMouseUp;
    property OnLogTemporary: TGetStrProc read FOnLogTemporary write SetOnLogTemporary;
  end;


var

  VSimMap: TSimMap;


implementation

uses
  Dialogs;
//uses uOverlayEditForm{, uOverlayHandler};

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

{ TSimMapXHandler }

procedure TSimMap.applySetting(const MapZoom: integer; const mX, mY: double;
  const Colorbg: TColor);
begin
  FMap.ZoomTo(MapZoom, mX, mY);
  FMap.BackColor := Colorbg;

end;

constructor TSimMap.Create(aMap: TMap);
begin

  FCanvas         := TCanvas.Create;
  FConverter      := TCoordConverter.Create;
  FConverter.FMap := aMap;

  // Timer FInterval := 10;

  FMap := aMap;

  CreateMapTool;

  SetMapComponent;
end;

destructor TSimMap.Destroy;
begin
  inherited;

  FMap := nil;
  FCanvas.Free;
  FConverter.Free;
end;

procedure TSimMap.CreateMapTool;
begin
  FMap.CreateCustomTool(mtAddWaypoint, 0, miCrossCursor, miCrossCursor);
  FMap.CreateCustomTool(mtEditWaypoint, 0, miCrossCursor, miCrossCursor);
  FMap.CreateCustomTool(mtSelectObject, 0, miSelectRectPlusCursor);
  FMap.CreateCustomTool(mtDeployPosition, 0, miCrossCursor);
  FMap.CreateCustomTool(mtCenterOnHook, 0, miCrossCursor);

  FMap.CreateCustomTool(mtAnchorTool, 0, miCrossCursor);

  {nando}
  FMap.CreateCustomTool(mtAimpoint, 0, miCrossCursor, miCrossCursor);

  {farid}
  FMap.CreateCustomTool(mtDeployChaff, 0, miCrossCursor);

  {mk}
  FMap.CreateCustomTool(mtDeployNGS, 0, miCrossCursor);

  {Hambali}
  FMap.CreateCustomTool(mtEditOverlayDynamic, 0, miCrossCursor);
  FMap.CreateCustomTool(mtEditOverlayStatic, 0, miCrossCursor);
  FMap.CreateCustomTool(mtAddOverlay, 0, miCrossCursor);

end;

procedure TSimMap.DrawMap;
var
  i : Integer;
begin
//  FDrawCycler.Run;
//  if Assigned(vFilter) then
//  begin
//    for i := 1 to FMap.Layers.Count do
//    begin
//      if (i = 1) and vFilter.Show(pftSubsurface, 'Wrecks', 'Cartographic data') then
//        FMap.Layers.Item(i).Visible := True
//      else
//        FMap.Layers.Item(i).Visible := False;
//    end;
//  end;

  FMap.Repaint;
end;

{procedure TSimMap.EventOnDrawCycler(sender: TObject);
begin
   FMap.Repaint;
end;}

procedure TSimMap.LoadMap(aGeoset: String);
var
  i: Integer;
  z: OleVariant;
  mInfo: CMapXLayerInfo;
begin
  if FMap = nil then
    Exit;
  InitOleVariant(z);
  FMap.Layers.RemoveAll;

  FMap.Geoset := aGeoset;

  if aGeoset <> '' then
  begin
    for i := 1 to FMap.Layers.Count do
    begin
      FMap.Layers.Item(i).Selectable := False;
      FMap.Layers.Item(i).Editable := False;
      FMap.Layers.Item(i).AutoLabel := False;
    end;

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'LYR_DRAW');
    FLyrDraw := FMap.Layers.Add(mInfo, 1);

    FMap.Layers.AnimationLayer := FLyrDraw;
    FMap.MapUnit := miUnitNauticalMile;
    FMap.Title.Visible := False;
  end;
  FMap.BackColor := RGB(192, 224, 255);
  FConverter.FMap := FMap;
end;

{procedure TSimMap.Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings));
   Strings.Clear;
   Strings.Delimiter     := Delimiter;
   Strings.DelimitedText := Input;
end;

procedure TSimMap.LoadPredefinedPattern(fPatternName: String);
var
  //i, j, lengthTempTPA : Integer;
  A : TStringList;
  myString : string;
  pX, pY : Integer;
  LongX, LattY : Double;
begin
  //i := 0;  //lengthTempTPA := 1;
  A := TStringList.Create;
  try
  begin
    AssignFile(myFile, fPatternName);
    FileMode := fmOpenRead;
    reset(myFile);
    //seek(myfile,i);
    while not Eof(myFile) do
    begin
        Readln(myFile, myString);
        Split(',', myString, A) ;
        pX := StrToInt(A[0]);
        pY := StrToInt(A[1]);
        FConverter.ConvertToMap(pX,pY,LongX,LattY);
        if Assigned(FOnAddWayoint) then FOnAddWayoint(LongX,LattY);
    end;
    CloseFile(myFile);
  end;
  finally
    A.Free;
  end;

//  if Assigned (pList) then
//    pList.Clear
//  else pList := TList.Create;

//  SetLength(fromFileTPA, lengthTempTPA-2);
//  for j := 0 to lengthTempTPA - 2 do
//  begin
//    patternPoint.X := tempTPA[j].X;
//    patternPoint.Y := tempTPA[j].Y;
//    pList.Add(patternPoint);
//      fromFileTPA[j].X := tempTPA[j].X;
//      fromFileTPA[j].Y := tempTPA[j].Y;
//  end;
end;

procedure TSimMap.drawPattern;
begin
  FCanvas.Pen.color   := clRed;
  FCanvas.Polyline(fromFileTPA);
end;  }

procedure TSimMap.MapDrawUserLayer(ASender: TObject; const Layer: IDispatch;
  hOutputDC, hAttributeDC: Integer; const RectFull, RectInvalid: IDispatch);
//var
//  S : string;
begin
  if not Assigned(FCanvas) then
    Exit;

  FCanvas.Handle := hOutputDC;

//  try
    if Assigned(FOnDrawToCanvas) then
      FOnDrawToCanvas(FCanvas);
//  except
//    on EAccessViolation do
//    begin
//      S:= 'ERROR ACCESS VIOLATION WHEN MAP DRAW USER LAYER';

//      if Assigned(OnLogTemporary) then
//        OnLogTemporary(S);
//    end;
//  end;

  if FMouseIsDown then begin
    if FMap.CurrentTool = miZoomInTool then begin
       FCanvas.Brush.Color := clWhite;
       FCanvas.FrameRect(FRectZoom);
    end;
  end;

  // farah -> ngeload pattern
  // drawPattern;

end;

procedure TSimMap.MapMouseDown(sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  mx, my: double;
begin
  FConverter.ConvertToMap(X, Y, mx, my);
  if Assigned(FOnMapMouseDown) then
    FOnMapMouseDown(sender,Button,shift,X,Y);

  FMouseIsDown := Button = mbLeft;
  if FMouseIsDown then begin
    if FMap.CurrentTool = miZoomInTool then begin
     FRectZoom.Left   := x;
     FRectZoom.Top    := y;
     FRectZoom.Right  := x;
     FRectZoom.Bottom := y;

    end;

    FMap.Repaint;
  end;

end;

procedure TSimMap.MapMouseMove(sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  mx, my: double;
begin
  FConverter.ConvertToMap(X, Y, mx, my);
  if Assigned(FOnMapMouseMove) then
    FOnMapMouseMove(sender,shift,X,Y);

  if FMouseIsDown then begin
    if FMap.CurrentTool = miZoomInTool then begin
     FRectZoom.Right  := x;
     FRectZoom.Bottom := y;
    end;

    FMap.Repaint;
  end;

end;

procedure TSimMap.MapMouseUp(sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
//var
//  S : string;
begin
//  try
    if Assigned(FOnMapMouseUp) then
      FOnMapMouseUp(sender,Button,shift,X,Y);

    if FMouseIsDown then
       FMap.Repaint;

    FMouseIsDown := false;
//  except
//    on EAccessViolation do
//    begin
//      S:= 'ERROR ACCESS VIOLATION WHEN MAP MOUSE UP';

//      if Assigned(OnLogTemporary) then
//        OnLogTemporary(S);
//    end;
//  end;
end;

procedure TSimMap.MapToolUsed(ASender: TObject; ToolNum: Smallint;
  X1, Y1, X2, Y2, Distance: double; Shift, Ctrl: WordBool;
  var EnableDefault: WordBool);
begin
  if Assigned(FOnToolUsed) then
    FOnToolUsed(ASender, ToolNum, X1, Y1, X2, Y2,
            Distance, Shift, Ctrl, EnableDefault);

  case ToolNum of
    mtAddWaypoint : if Assigned(FOnAddWayoint) then FOnAddWayoint(X1,Y1);
    mtEditWaypoint : if Assigned(FOnEditWayoint) then FOnEditWayoint(X1,Y1);
  end;
end;

procedure TSimMap.MapViewChanged(Sender: TObject);
begin
  if Assigned(FOnMapChange) then
    FOnMapChange(FMap)
end;


procedure TSimMap.SetMapComponent;
begin
  FMap.OnDrawUserLayer  := MapDrawUserLayer;
  FMap.OnMouseMove      := MapMouseMove;
  FMap.OnMouseUp        := MapMouseUp;
  FMap.OnMouseDown      := MapMouseDown;
  FMap.OnToolUsed       := MapToolUsed;
  FMap.OnMapViewChanged := MapViewChanged;

end;

procedure TSimMap.SetOnAddWayoint(const Value: TEventAddWaypoint);
begin
  FOnAddWayoint := Value;
end;

procedure TSimMap.SetOnEditWayoint(const Value: TEventEditWaypoint);
begin
  FOnEditWayoint := Value;
end;

procedure TSimMap.SetOnLogTemporary(const Value: TGetStrProc);
begin
  FOnLogTemporary := Value;
end;

procedure TSimMap.SetOnMapMouseDown(const Value: TMapMouseDown);
begin
  FOnMapMouseDown := Value;
end;

procedure TSimMap.SetOnMapMouseMove(const Value: TMapMouseMove);
begin
  FOnMapMouseMove := Value;
end;

procedure TSimMap.SetOnMapMouseUp(const Value: TMapMouseUp);
begin
  FOnMapMouseUp := Value;
end;

procedure TSimMap.SetOnToolUsed(const Value: TEventToolMapUsed);
begin
  FOnToolUsed := Value;
end;

procedure TSimMap.SetMapCenter(const x, y: double);
begin
  FMap.ZoomTo(FMap.Zoom, X, Y);
end;

procedure TSimMap.SetMapZoom(const z: double);
begin
  FMap.ZoomTo(Z, FMap.CenterX, FMap.CenterY);
end;

end.
