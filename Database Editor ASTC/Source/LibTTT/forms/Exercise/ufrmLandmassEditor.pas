unit ufrmLandmassEditor;

interface

uses
  MapXLib_TLB,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Tabs, DockTabSet, OleCtrls,  ExtCtrls, //RzForms,
  ImgList, StdCtrls, ComCtrls, ToolWin,  uMapXHandler, uCoordConvertor,
  uDBAsset_GameEnvironment, System.ImageList, Vcl.Imaging.pngimage;

type
  TfrmLandmassEditor = class(TForm)
    ImageList1: TImageList;
    pnl3Button: TPanel;
    Panel3: TPanel;
    btnClose: TButton;
    pnlMap: TPanel;
    pnlToolBar: TPanel;
    ToolBar1: TToolBar;
    btnAddPoint: TToolButton;
    btnLeftSeparator: TToolButton;
    btnCopyFeature: TToolButton;
    btnMidLeftSeparator: TToolButton;
    btnDeletePoint: TToolButton;
    btnDeleteFeature: TToolButton;
    btnUndelete: TToolButton;
    btnMidRightSeparator: TToolButton;
    btnDecreaseScale: TToolButton;
    cbbScale: TComboBox;
    btnIncreaseScale: TToolButton;
    btnRightSeparator: TToolButton;
    btnSelectPoint: TToolButton;
    btnZoomTool: TToolButton;
    btnMoveTool: TToolButton;
    btnCenterHook: TToolButton;
    pnlAlignToolBar: TPanel;
    pnlCursorPosition: TPanel;
    grpCursorPosition: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lBearingFCenter: TLabel;
    lDistanceFCenter: TLabel;
    lPosLat: TLabel;
    lGridLat: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lPosLong: TLabel;
    lGridLong: TLabel;
    mapLandMass: TMap;
    pnlPlatform: TPanel;
    pnlSelectedPlatform: TPanel;
    pnlTestArea: TPanel;
    Shape1: TShape;
    grpFeatureCategory: TGroupBox;
    lbFeatureCategory: TListBox;
    gprContourIntersectionChecking: TGroupBox;
    btnClearErrorIndications: TButton;
    btnCheckIntersectionWithOtherContours: TButton;
    btnCheckInternalIntersections: TButton;
    ckFeatureSelection: TCheckBox;
    btnDeleteAll: TButton;
    ckDisplayShading: TCheckBox;
    btnOk: TButton;
    btnCancel: TButton;
    btnApply: TButton;
    btnScrCapture: TButton;
    grpSelectedPoint: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lFeatureCategory: TLabel;
    lSelectedPosLat: TLabel;
    lSelectedGridLat: TLabel;
    lSelectedElevationLat: TLabel;
    lSelectedPosLong: TLabel;
    lSelectedGridLong: TLabel;
    lSelectedElevationLong: TLabel;
    pnlSparatorHor1: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnSelectPointClick(Sender: TObject);
    procedure btnAddPointClick(Sender: TObject);
    procedure btnCopyFeatureClick(Sender: TObject);
    procedure btnDeletePointClick(Sender: TObject);
    procedure btnDeleteFeatureClick(Sender: TObject);
    procedure btnUndeleteClick(Sender: TObject);
    procedure btnDecreaseScaleClick(Sender: TObject);
    procedure cbbScaleChange(Sender: TObject);
    procedure btnIncreaseScaleClick(Sender: TObject);
    procedure btnZoomToolClick(Sender: TObject);
    procedure btnMoveToolClick(Sender: TObject);
    procedure btnCenterHookClick(Sender: TObject);
    procedure lbFeatureCategoryClick(Sender: TObject);
    procedure btnDeleteAllClick(Sender: TObject);
    procedure btnCheckInternalIntersectionsClick(Sender: TObject);
    procedure btnCheckIntersectionWithOtherContoursClick(Sender: TObject);
    procedure btnClearErrorIndicationsClick(Sender: TObject);
    procedure ckDisplayShadingClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnScrCaptureClick(Sender: TObject);
    procedure mapLandMassMapViewChanged(Sender: TObject);
    procedure mapLandMassDrawUserLayer(ASender: TObject; const Layer: IDispatch;hOutputDC, hAttributeDC: Cardinal; const RectFull,RectInvalid: IDispatch);
    procedure mapLandMassMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure mapLandMassMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure mapLandMassMouseUp(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FSelectedGameArea : TGame_Environment_Definition;

    //FMapPlatform: TSimMap;
    //drawing
    gRect : TRect;
    pLeft, pTop, pRight, pBottom : integer;
    //state
    stateDrawing : boolean;
    statePan : boolean;
    stateDelete : boolean;
    stateSelect : boolean;
    fFtrCivilAirport : Variant;
    fFtrMilitaryAirport : Variant;
    fFtrWrecks : Variant;
    sCaptureLayer : CMapXLayer;
    diffXnm, diffYnm : double;
    gridLatt, gridLong,addStringX, addStringY : string;
    objlist, recycleList : TList;
    gPoint  : TPoint;
    MouseIsDown : Boolean;
	  click : boolean;
    pointCollection : Variant;
    selectedPoint : boolean;
    fFtrFactory : Variant; //aldy

    FCanvas : TCanvas;
    FConverter : TCoordConverter;
    FLyrDraw : CMapXLayer;

    procedure UpdateCursorPositionData(const X, Y: Integer);

    procedure UpdateGameCenter(X,Y:Integer);
    procedure getPointGameCenter();
    procedure ScreenShot(DestBitmap : TBitmap) ;
    procedure GetGridIndex(const cx, cy, w: Double; var gid: TRect);

    procedure LoadMap(aGeoset: string);
    procedure UpAllToolbarButton;
  public
    isCapturingScreen : Boolean;

    procedure load();
    procedure createGeoset(getNameArea : string);

    property SelectedGameArea : TGame_Environment_Definition
      read FSelectedGameArea write FSelectedGameArea;
  end;

type
  TPointObj = class
     fFeature : Variant;
     sName : String;
     iSpeed : Integer;
     dHeading : Double;
     posx : Double;
     posY : Double;
     objType: SmallInt;
  end;

const
  PLOT_VEHICLE_TOOL = 1;
  VEHICLE_LIMIT = 100;
  BRIDGES_OVERPASSES_VIADUCTS = 108;
  CIVILIAN_AIRPORTS  = 87;
  COASTLINES = 108;
  DEPTH_CONTOURS = 108;
  ELEVATION_CONTOURS = 108;
  MILITARY_AIRPORTS = 53;
  PIPELINES = 108;
  PLATFORMS = 80;
  POLITICAL_BOUNDARIES = 108;
  POPULATED_PLACES = 60;
  RAILROADS = 108;
  RIVERS_STREAMS_CANALS = 108;
  ROADS = 108;
  WRECKS = 198;

var
  frmLandmassEditor: TfrmLandmassEditor;
  xx: double;
  yy: double;
  b,TmpBmp:TBitmap;
  fArray: Array[0..VEHICLE_LIMIT] of TPointObj;
  lyrMyLayer: Variant;
  st: Variant;
  iPointObjCount: Integer;
  iCarNum: Integer;

implementation

uses
  uBaseCoordSystem, ufrmSubEnviCharacteristic, ufrmVektorMapGameCenterEditor, Math,
  uScrCapture, ufCaptureRes, ufrmSummaryGameAreaVektor, uDataModuleTTT,
  ufrmImportLandmassData, ComObj, StrUtils, uDBEditSetting;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmLandmassEditor.FormCreate(Sender: TObject);
begin
  objList := TList.Create;
  recycleList := TList.Create;
  FCanvas := TCanvas.Create;
  FConverter := TCoordConverter.Create;
end;

procedure TfrmLandmassEditor.FormResize(Sender: TObject);
begin
  pnlAlignToolBar.Width := round((pnlToolBar.Width - 249) / 2);
end;

procedure TfrmLandmassEditor.FormShow(Sender: TObject);
begin
  with FSelectedGameArea.FGameArea do
  begin
    LoadMap(vAppDBSetting.MapDestPathVECT + '\' + Game_Area_Identifier + '\' +
      Game_Area_Identifier + '.gst');

    mapLandMass.CenterX := Game_Centre_Long;
    mapLandMass.CenterY := Game_Centre_Lat;
  end;

  FConverter.FMap := mapLandMass;

  cbbScale.ItemIndex := cbbScale.Items.Count - 1;
  cbbScaleChange(cbbScale);
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmLandmassEditor.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLandmassEditor.btnApplyClick(Sender: TObject);
begin
//
end;

procedure TfrmLandmassEditor.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLandmassEditor.ScreenShot(DestBitmap : TBitmap) ;
var
  DC : HDC;
begin
  DC := GetDC (GetDesktopWindow);
  try
    DestBitmap.Width := GetDeviceCaps (DC, HORZRES) ;
    DestBitmap.Height := GetDeviceCaps (DC, VERTRES) ;
    BitBlt(DestBitmap.Canvas.Handle, 0, 0, DestBitmap.Width, DestBitmap.Height, DC, 0, 0, SRCCOPY) ;
  finally
    ReleaseDC(GetDesktopWindow, DC);
  end;
end;

procedure TfrmLandmassEditor.btnScrCaptureClick(Sender: TObject);
begin
  b := TBitmap.Create;
  ScreenShot(b);
  isCapturingScreen := True;
  fScrCapture.Image1.Picture.Assign(b);
end;

procedure TfrmLandmassEditor.ckDisplayShadingClick(Sender: TObject);
begin
//
end;

procedure TfrmLandmassEditor.GetGridIndex(const cx, cy, w: Double;var gid: TRect);
var i: integer;
    halfW: double;
begin
  halfW := 0.5 * w;

  i := Floor((cx - halfW + 180.0) / 10.0) + 1;
  gid.Left    := EnsureRange(i, 1, 36);

  i:=  Ceil((cx + halfW + 180.0) / 10.0) ;
  gid.Right   :=  EnsureRange(i, 1, 36);

  i := Floor ((90.0-(cy + halfW )) / 10.0)  ;
  gid.Top     :=  EnsureRange(i, 0, 17);

  i := Floor((90.0-(cy - halfW )) / 10.0) ;
  gid.Bottom  :=  EnsureRange(i, 0, 17);
end;

function GetIndexLong(const x: integer): string;
var i: integer;
begin
  i := EnsureRange(x, 1, 36);
  Result := Format('%2d', [i]);
end;

function GetIndexLatt(const y: integer): string;
var i: integer;
begin
  i := EnsureRange(y, 0, 17);
  Result := Char(Ord('A') + Y)
end;

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfrmLandmassEditor.createGeoset(getNameArea : string);
var
  aGeoset: string;
begin
  aGeoset := vAppDBSetting.MapDestPathVECT + '\' + getNameArea + '\' +
    getNameArea + '.gst';
  LoadMap(aGeoset);
end;

procedure TfrmLandmassEditor.lbFeatureCategoryClick(Sender: TObject);
var
    MyFont: TFont;
begin
  if lbFeatureCategory.Selected[lbFeatureCategory.ItemIndex] then
  begin
    lFeatureCategory.Caption := lbFeatureCategory.items.Strings[lbFeatureCategory.ItemIndex];

    case lbFeatureCategory.ItemIndex of

    0:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := BRIDGES_OVERPASSES_VIADUCTS;
    end;
    1:
    begin
      MyFont := TFont.Create;
      OleFontToFont(mapLandMass.DefaultStyle.SymbolFont, MyFont);
      MyFont.Size := 15;
      MyFont.Name := 'MapInfo Transportation';

      mapLandMass.DefaultStyle.SymbolFontColor := clBlack;

      mapLandMass.DefaultStyle.LineColor := clWhite;
      mapLandMass.DefaultStyle.LineWidth := 5;
      mapLandMass.DefaultStyle.SymbolCharacter := 87;

      mapLandMass.DefaultStyle.SymbolCharacter := CIVILIAN_AIRPORTS;
    end;
    2:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := COASTLINES;
    end;
    3:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := DEPTH_CONTOURS;
    end;
    4:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := ELEVATION_CONTOURS;
    end;
    5:
    begin
      MyFont := TFont.Create;
      OleFontToFont(mapLandMass.DefaultStyle.SymbolFont, MyFont);
      MyFont.Size := 15;
      MyFont.Name := 'Map Symbols';

      mapLandMass.DefaultStyle.SymbolFontColor := clBlack;

      mapLandMass.DefaultStyle.LineColor := clWhite;
      mapLandMass.DefaultStyle.LineWidth := 5;
      mapLandMass.DefaultStyle.SymbolCharacter := 53;

      mapLandMass.DefaultStyle.SymbolCharacter := MILITARY_AIRPORTS;
    end;
    6:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := PIPELINES;
    end;
    7:
    begin
      MyFont := TFont.Create;
      OleFontToFont(mapLandMass.DefaultStyle.SymbolFont, MyFont);
      MyFont.Size := 15;
      MyFont.Name := 'MapSym-EN-Air';

      mapLandMass.DefaultStyle.SymbolFontColor := clBlack;

      mapLandMass.DefaultStyle.LineColor := clWhite;
      mapLandMass.DefaultStyle.LineWidth := 5;
      mapLandMass.DefaultStyle.SymbolCharacter := 80;

      mapLandMass.DefaultStyle.SymbolCharacter := PLATFORMS;
    end;
    8:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := POLITICAL_BOUNDARIES;
    end;
    9:
    begin
      MyFont := TFont.Create;
      OleFontToFont(mapLandMass.DefaultStyle.SymbolFont, MyFont);
      MyFont.Size := 15;
      MyFont.Name := 'Map Symbols';

      mapLandMass.DefaultStyle.SymbolFontColor := clBlack;

      mapLandMass.DefaultStyle.LineColor := clWhite;
      mapLandMass.DefaultStyle.LineWidth := 5;
      mapLandMass.DefaultStyle.SymbolCharacter := 60;

      mapLandMass.DefaultStyle.SymbolCharacter := POPULATED_PLACES ;
    end;
    10:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := RAILROADS;
    end;
    11:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := RIVERS_STREAMS_CANALS;
    end;
    12:
    begin
      mapLandMass.DefaultStyle.SymbolCharacter := ROADS;
    end;
    13:
    begin
       MyFont := TFont.Create;
       OleFontToFont(mapLandMass.DefaultStyle.SymbolFont, MyFont);
       MyFont.Size := 20;
       MyFont.Name := 'MapSym-En-Sea';

       mapLandMass.DefaultStyle.SymbolFontColor := clBlack;

       mapLandMass.DefaultStyle.LineColor := clWhite;
       mapLandMass.DefaultStyle.LineWidth := 5;
       mapLandMass.DefaultStyle.SymbolCharacter := 198;

       mapLandMass.DefaultStyle.SymbolCharacter := WRECKS;
    end;
    end;

  end;
end;

procedure TfrmLandmassEditor.getPointGameCenter();
var
  savePointLeft, savePointTop, savePointRight, savePointBottom : single;
  GCx, GCy: Double;
  Gwidth  : Double;
  sx, sy: Single;
  dx, dy, halfW: Double;
  v: Double;
begin
  Gwidth  := 0;
  GCx := dmToLongitude(ufrmSummaryGameAreaVektor.frmSummaryGameAreaVektor.edtLongitude.Text);
  GCy := dmToLatitude(ufrmSummaryGameAreaVektor.frmSummaryGameAreaVektor.edtLatitude.Text);

  if TryStrToFloat(ufrmSummaryGameAreaVektor.frmSummaryGameAreaVektor.edtMaximum.Text, v) then
    Gwidth := v / 60.0;

   //uExerciseArea.ExerciseAreaForm.edtLongitude.Text := formatDMS_long(GCx);
   //uExerciseArea.ExerciseAreaForm.edtLatitude.Text := formatDMS_latt(GCy);
   //Gwidth := strtofloat(uExerciseArea.ExerciseAreaForm.edtMaximum.Text);

    halfW := 0.5 * Gwidth;
    mapLandMass.ConvertCoord(sx, sy, GCx, GCy, miMapToScreen);

    gPoint.X := Round(sx);
    gPoint.Y := Round(sy);

    dx := GCx - halfW;
    dy := GCy - halfW;

    mapLandMass.ConvertCoord(sx, sy, dx, dy, miMapToScreen);
    gRect.Left := Round(sx);
    gRect.Top  := Round(sy);

    dx := GCx + halfW;
    dy := GCy + halfW;

    mapLandMass.ConvertCoord(sx, sy, dx, dy, miMapToScreen);
    gRect.Right   := Round(sx);
    gRect.Bottom  := Round(sy);

    pLeft   := gRect.Left;
    pTop    := gRect.Top;
    pRight  := gRect.Right;
    pBottom := gRect.Bottom;

    {savePointLeft := gRect.Left;
    savePointTop := gRect.Top;
    savePointRight := gRect.Right;
    savePointBottom := gRect.Bottom;  }
end;

procedure TfrmLandmassEditor.UpAllToolbarButton;
begin
  btnSelectPoint.Down := False;
  btnAddPoint.Down := False;
  btnCopyFeature.Down := False;
  btnDeletePoint.Down := False;
  btnDeleteFeature.Down := False;
  btnUndelete.Down := False;
  btnZoomTool.Down := False;
  btnMoveTool.Down := False;
end;

procedure TfrmLandmassEditor.UpdateCursorPositionData(const X, Y: Integer);
var
  dx, dy, diffX, diffY : Double;
begin
  FConverter.ConvertToMap(X, Y, dx, dy);

  lBearingFCenter.Caption := FormatFloat('0.00',
    CalcBearing(FSelectedGameArea.FGameArea.Game_Centre_Long,
    FSelectedGameArea.FGameArea.Game_Centre_Lat, dx, dy));
  lDistanceFCenter.Caption := FormatFloat('0.00',
    CalcRange(FSelectedGameArea.FGameArea.Game_Centre_Long,
    FSelectedGameArea.FGameArea.Game_Centre_Lat, dx, dy));
  lPosLat.Caption := formatDM_latitude(dy);
  lPosLong.Caption := formatDM_longitude(dx);

  diffX := Abs(dx - FSelectedGameArea.FGameArea.Game_Centre_Long) * 60;
  diffY := Abs(dy - FSelectedGameArea.FGameArea.Game_Centre_Lat) * 60;

  if dy < FSelectedGameArea.FGameArea.Game_Centre_Lat then
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm S'
  else
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm N';

  if dx < FSelectedGameArea.FGameArea.Game_Centre_Long then
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm W'
  else
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm E';
end;

procedure TfrmLandmassEditor.UpdateGameCenter(X,Y:Integer);
begin
  gPoint.X := X;
  gPoint.Y := Y;
end;

procedure TfrmLandmassEditor.btnCheckInternalIntersectionsClick(Sender: TObject);
begin
//
end;

procedure TfrmLandmassEditor.btnCheckIntersectionWithOtherContoursClick(Sender: TObject);
begin
//
end;

procedure TfrmLandmassEditor.btnClearErrorIndicationsClick(Sender: TObject);
begin
//
end;

procedure TfrmLandmassEditor.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLandmassEditor.btnDeleteAllClick(Sender: TObject);
begin
//
end;

{$ENDREGION}

{$REGION ' ToolBar Handle '}

procedure TfrmLandmassEditor.btnAddPointClick(Sender: TObject);
begin
  selectedPoint := true;
  //uncheck other
  btnSelectPoint.Down := false;
  btnZoomTool.Down := false;
  btnMoveTool.Down := false;

  if btnSelectPoint.Down then
  begin
    stateSelect := false;
    statePan := false;
    stateDelete := false;
    stateDrawing := true;
    mapLandMass.MousePointer := miCrossCursor;
  end
  else
  begin
    statePan := false;
    stateDrawing := false;
    stateDelete := false;
    stateSelect := true;
    mapLandMass.MousePointer := miCrossCursor;
  end;

  ckFeatureSelection.Enabled := true;
  lbFeatureCategory.Enabled := true;
  //if ckFeatureSelection.Checked = true then lbFeatureCategory.Enabled := true;

end;

procedure TfrmLandmassEditor.btnCopyFeatureClick(Sender: TObject);
begin
//
end;

procedure TfrmLandmassEditor.btnDeletePointClick(Sender: TObject);
begin
  //delete dari belakang
  //pidah ke list recycle sblm di delete
  if objList.Count = 0 then
    Exit;
  recycleList.Add(objList.Items[objList.Count-1]);

  //hapus gambar
  if TPointObj(objlist[objlist.Count-1]).objType = 1 then
  begin
     //pointCollection.delete(TPointObj(objlist[objlist.Count-1]).fFeature);
  end;
  lyrMyLayer.DeleteFeature(TPointObj(objlist[objlist.Count-1]).fFeature);
  objList.Delete(objlist.Count -1);
  mapLandMass.Repaint;
end;

procedure TfrmLandmassEditor.btnDeleteFeatureClick(Sender: TObject);
var
  I: Integer;
begin
  //delete dari belakang berulang sampai habis
  //pindah ke recycle
  for I := 0 to objList.Count - 1 do
  begin
    //hapus gambar
    btnDeletePointClick(Sender);
    {
    recycleList.Add(objList.Items[objlist.Count-1]);
    lyrMyLayer.DeleteFeature(TPointObj(objlist[objlist.Count-1]).fFeature);
    }
  end;
  objList.Clear;
  mapLandMass.Repaint;
end;

procedure TfrmLandmassEditor.btnUndeleteClick(Sender: TObject);
var
  fMapSymbol : Variant;
  fMapCivilAir, fMapMilitaryAir, fMapWrecks : Variant;
  fNewSymbol, fNewLine, fNewRegion : Variant;

  pItem : Variant;
begin
  if recycleList.Count = 0 then
  begin
    btnUndelete.Enabled := false;
    Exit;
  end
  else
  begin
    //tambahkan ke List
    objList.Add(recycleList.Items[recycleList.Count - 1]);
    {}
    if TPointObj(objlist[objlist.Count - 1]).objType = 0 then
    begin
    // Create point object to pass to CreateSymbol
         pItem := CreateOleObject('MapX.Point.4');
         pItem.Set(TPointObj(objlist[objlist.Count - 1]).posx, TPointObj(objlist[objlist.Count - 1]).posy);

         if AnsiContainsStr(TPointObj(objlist[objlist.Count - 1]).sName, 'Platform') then
         begin
           mapLandMass.DefaultStyle.SymbolCharacter := PLATFORMS;
           fNewSymbol := fFtrFactory.CreateSymbol(pItem, mapLandMass.DefaultStyle);
           fMapSymbol := lyrMyLayer.AddFeature(fNewSymbol);
           TPointObj(objlist[objlist.Count - 1]).fFeature := fMapSymbol;
         end
         else if AnsiContainsStr(TPointObj(objlist[objlist.Count - 1]).sName, 'Military') then
         begin
           mapLandMass.DefaultStyle.SymbolCharacter := MILITARY_AIRPORTS;
           fNewSymbol := fFtrMilitaryAirport.CreateSymbol(pItem, mapLandMass.DefaultStyle);
           fMapMilitaryAir := lyrMyLayer.AddFeature(fNewSymbol);
           TPointObj(objlist[objlist.Count - 1]).fFeature := fMapMilitaryAir;
         end
         else if AnsiContainsStr(TPointObj(objlist[objlist.Count - 1]).sName, 'Civilian') then
         begin
           mapLandMass.DefaultStyle.SymbolCharacter := CIVILIAN_AIRPORTS;
           fNewSymbol := fFtrCivilAirport.CreateSymbol(pItem, mapLandMass.DefaultStyle);
           fMapCivilAir := lyrMyLayer.AddFeature(fNewSymbol);
           TPointObj(objlist[objlist.Count - 1]).fFeature := fMapCivilAir;
         end
         else if AnsiContainsStr(TPointObj(objlist[objlist.Count - 1]).sName, 'Wrecks') then
         begin
           mapLandMass.DefaultStyle.SymbolCharacter := WRECKS;
           fNewSymbol := fFtrWrecks.CreateSymbol(pItem, mapLandMass.DefaultStyle);
           fMapWrecks := lyrMyLayer.AddFeature(fNewSymbol);
           TPointObj(objlist[objlist.Count - 1]).fFeature := fMapWrecks;
         end;

         //User Feature Factory to create new Feature
         //fNewSymbol := fFtrFactory.CreateSymbol(pItem, mapLandMass.DefaultStyle);

         // Add Feature to layer
         //fMapSymbol := lyrMyLayer.AddFeature(fNewSymbol);

         //TPointObj(objlist[objlist.Count - 1]).fFeature := fMapSymbol;
    end
    else if TPointObj(objlist[objlist.Count - 1]).objType = 1 then
    begin
         pItem := CreateOleObject('MapX.Point.4');
         pItem.Set(TPointObj(objlist[objlist.Count - 1]).posx, TPointObj(objlist[objlist.Count - 1]).posy);

         pointCollection.add(pItem);

         //User Feature Factory to create new Feature
         fNewLine := fFtrFactory.CreateRegion(pointCollection, mapLandMass.DefaultStyle);
         // Add Feature to layer
         fMapSymbol := lyrMyLayer.AddFeature(fNewLine);

         TPointObj(objlist[objlist.Count - 1]).fFeature := fMapSymbol;
    end;
    {}
    //hapus di recycle
    recycleList.Delete(recycleList.Count - 1);

  end;
  mapLandMass.Repaint;
end;

procedure TfrmLandmassEditor.btnDecreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex - 1;
  cbbScaleChange(cbbScale);
end;

procedure TfrmLandmassEditor.cbbScaleChange(Sender: TObject);
var
  zoom : Double;
begin
  btnDecreaseScale.Enabled := cbbScale.ItemIndex > 0;
  btnIncreaseScale.Enabled := cbbScale.ItemIndex < (cbbScale.Items.Count - 1);

  zoom := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);
  mapLandMass.ZoomTo(zoom, mapLandMass.CenterX, mapLandMass.CenterY);
end;

procedure TfrmLandmassEditor.btnIncreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex + 1;
  cbbScaleChange(cbbScale);
end;

procedure TfrmLandmassEditor.btnSelectPointClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnSelectPoint.Down := True;

  mapLandMass.MousePointer := miArrowCursor;
  mapLandMass.CurrentTool := miSelectTool;

end;

procedure TfrmLandmassEditor.btnZoomToolClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnZoomTool.Down := True;

  mapLandMass.CurrentTool := miZoomInTool;
  mapLandMass.MousePointer := miZoomInCursor;
end;

procedure TfrmLandmassEditor.btnMoveToolClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnMoveTool.Down := True;

//  mapLandMass.MousePointer := miCrossCursor;

  mapLandMass.CurrentTool := miPanTool;
  mapLandMass.MousePointer := miPanCursor;
end;

procedure TfrmLandmassEditor.btnCenterHookClick(Sender: TObject);
var
  zoom : Double;
begin
  zoom := StrToFloat(cbbScale.Text);

  with FSelectedGameArea.FGameArea do
    mapLandMass.ZoomTo(zoom, Game_Centre_Long, Game_Centre_Lat);
end;

{$ENDREGION}

{$REGION ' Map Handle '}

procedure TfrmLandmassEditor.mapLandMassDrawUserLayer(ASender: TObject;const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull,RectInvalid: IDispatch);
begin
  if not Assigned(FCanvas) then
    Exit;
  FCanvas.Handle := hOutputDC;

{  FCanvas.Pen.Width := 5;
  FCanvas.Pen.Color := RGB(100, 240, 0);
  FCanvas.Brush.Style := bsClear;
  FCanvas.Rectangle(pLeft, pTop, pRight, pBottom);
  FCanvas.Brush.Style := bsSolid;
  FCanvas.Pen.Width := 2;  }

  if isCapturingScreen then begin
      FCanvas.Pen.Color := RGB(255, 255, 255);
      FCanvas.Pen.Width := 1;
      //FCanvas.Pen.Mode := pmMask;
      FCanvas.Pen.Mode := pmCopy;
      FCanvas.Brush.Style := bsClear;
      //FCanvas.Brush.Style := bsSolid;

        if MouseIsDown then begin
          FCanvas.MoveTo(gPoint.X, 0);
          //FCanvas.Brush.Color := clNone;
          FCanvas.Rectangle(fScrCapture.PDown.X, fScrCapture.PDown.Y, gPoint.X, gPoint.Y  );
    //    FCanvas.FrameRect();
    //    FCanvas.Ellipse(gPoint.X - 10 , gPoint.Y - 10,
    //        gPoint.X + 10 , gPoint.Y + 10);
          FCanvas.TextOut(gPoint.X+10,gPoint.Y-20, 'width:'+inttostr(gPoint.X-fscrCapture.PDown.X)+
          ',height:'+inttostr(gPoint.Y-fscrcapture.PDown.Y)+';('+inttostr(pnlTestArea.Width+gPoint.X)+','+IntToStr(gPoint.Y)+')');
        end
        else begin
          FCanvas.MoveTo(gPoint.X, 0);
          FCanvas.LineTo(gPoint.X, mapLandMass.Height);

          FCanvas.MoveTo(0, gPoint.Y);
          FCanvas.LineTo(mapLandMass.Width, gPoint.Y);
    //    FCanvas.Brush.Color := clLime;
    //    FCanvas.Ellipse(gPoint.X - 10 , gPoint.Y - 10,
    //    gPoint.X + 10 , gPoint.Y + 10);
         FCanvas.TextOut(gPoint.X+10,gPoint.Y-20, IntToStr(pnlTestArea.Width+gPoint.X)+','+IntToStr(gPoint.Y));
        end;

    end;
end;

procedure TfrmLandmassEditor.mapLandMassMapViewChanged(Sender: TObject);
var
  tempZoom : double;
begin
  if mapLandMass.CurrentTool = miZoomInTool then
  begin
     if mapLandMass.Zoom <= 0.125 then tempZoom := 0.125;
     if (mapLandMass.Zoom > 0.125) AND (mapLandMass.Zoom < 1) then tempZoom := mapLandMass.Zoom;
     if (mapLandMass.Zoom >= 1) AND (mapLandMass.Zoom <= 2500) then tempZoom := round(mapLandMass.Zoom);
     if mapLandMass.Zoom > 2500 then tempZoom := 2500;

     mapLandMass.OnMapViewChanged := nil;
     mapLandMass.ZoomTo(tempZoom, mapLandMass.CenterX, mapLandMass.CenterY);

     if (mapLandMass.Zoom > 0.125) AND (mapLandMass.Zoom < 0.25) then
     begin
       cbbScale.Text := FormatFloat('0.000', tempZoom);
     end
     else if (mapLandMass.Zoom >= 0.25) AND (mapLandMass.Zoom < 0.5) then
     begin
       cbbScale.Text := FormatFloat('0.00', tempZoom);
     end
     else if (mapLandMass.Zoom >= 0.5) AND (mapLandMass.Zoom < 1) then
     begin
       cbbScale.Text := FormatFloat('0.0', tempZoom);
     end
     else
       cbbScale.Text := floattostr(tempZoom);

     mapLandMass.OnMapViewChanged := mapLandMassMapViewChanged;
  end;
end;

procedure TfrmLandmassEditor.mapLandMassMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  dx, dy, zoom : Double;
  i, j : Integer;
  layer : CMapXLayer;
  feature : CMapXFeature;
begin
  FConverter.ConvertToMap(X, Y, dx, dy);

  if btnSelectPoint.Down then
  begin
    //do complicated task
  end;

//  if btnMoveTool.Down then
//  begin
//    zoom := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);
//
//    with FSelectedGameArea.FGameArea do
//      mapLandMass.ZoomTo(zoom, dx, dy);
//  end;

  mapLandMass.Repaint;
end;

procedure TfrmLandmassEditor.mapLandMassMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
begin
  UpdateCursorPositionData(X, Y);
end;

procedure TfrmLandmassEditor.mapLandMassMouseUp(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
begin
 if statePan then
 begin
   statePan := false;
   stateSelect := true;
   mapLandMass.CurrentTool := miPanTool;
   mapLandMass.MousePointer := miPanCursor;
 end;

 if isCapturingScreen then
 begin

  with fscrCapture do
  begin

   PActually.X := x;
   PActually.Y := Y;
   MouseIsDown := TRUE;

   TmpBmp := TBitmap.Create;

   with TmpBmp do
   begin
     Width := Round(abs(PActually.x - PDown.x));
     Height := Round(abs(PActually.y - PDown.y));
     BitBlt(TmpBmp.Canvas.Handle, 0, 0, Width, Height, fScrCapture.Image1.Canvas.Handle, mapLandMass.Left+ PDown.x,
     PDown.y, SRCCOPY);
     fCaptureRes.imgCaptureResult.AutoSize := false;
     fCaptureRes.imgCaptureResult.Picture.Bitmap.Assign(TmpBmp);
     fCaptureRes.Width := Width+10;
     fCaptureRes.Height := Height+fCaptureRes.pnlDisplay.height+10;
     fCaptureRes.ShowModal;

     if  fCaptureRes.recapture then  fCaptureRes.recapture:= false
     else isCapturingScreen := false;
     MouseIsDown :=false;
   end;

  end;

 end;
 UpdateGameCenter(X,Y);
 mapLandMass.Repaint;
end;

procedure TfrmLandmassEditor.LoadMap(aGeoset: string);
var
  z : OleVariant;
  i : Integer;
  mInfo : CMapXLayerInfo;
begin
  if mapLandMass = nil then
    Exit;

  InitOleVariant(z);
  mapLandMass.Layers.RemoveAll;
  mapLandMass.Geoset := aGeoset;

  if aGeoset <> '' then
  begin
    for i := 1 to mapLandMass.Layers.Count do
    begin
      mapLandMass.Layers.Item(i).Selectable := False;
      mapLandMass.Layers.Item(i).Editable := False;
    end;

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'LYR_DRAW');
    FLyrDraw := mapLandMass.Layers.Add(mInfo, 1);

    mapLandMass.Layers.AnimationLayer := FLyrDraw;
    mapLandMass.MapUnit := miUnitNauticalMile;
  end;

  mapLandMass.BackColor := RGB(192, 224, 255);
end;

procedure TfrmLandmassEditor.load();
var i, j, k, lCount: integer;
    r: TRect;
    sX, sY, p, pDynamic, fName, fNameDynammic, lName, pathConFile: string;
    ssLayer : TStrings;
    //ssLayerDyn : TStrings;
    mInfo: CMapXLayerInfo;

    widthNM : integer;
    limitWidth : Array[0..15] of double;
    arrayTemp : Array[0..30] of double;
    arrayStringTemp : Array[0..30] of String;
    resultTemp : Array[0..30] of String;
    a, b : integer;
    unusedVt: OleVariant;
    MyFont: TFont;
    fileSource, fileDest, fileSourceDyn, fileDestDyn : string;

    fileSourceDat, fileSourceId, fileSourceMap : string;
    fileSourceDatDyn, fileSourceIdDyn, fileSourceMapDyn : string;

    fileDestDat, fileDestId, fileDestMap : string;
    fileDestDatDyn, fileDestIdDyn, fileDestMapDyn : string;

    dotDat, dotId, dotMap : string;
    dotDatDyn, dotIdDyn, dotMapDyn : string;
begin
    mapLandMass.Geoset := '';
    //lbxFile.Clear;

    pathConFile := ExtractFilePath(Application.ExeName);
    //pDynamic := GeographicalFeatureImportForm.sFolder;

    ssLayer := TStringList.Create;
    //ssLayer.LoadFromFile(p + 'layers.cfg');
    ssLayer.LoadFromFile(pathConFile + 'ConfigureLayer.txt');

    //p := 'D:\TTT\mapsource\map\cells\';
    p := vAppDBSetting.MapSourcePathVECT + '\cells\';   // +'D:\TTT\mapsource\map\cells\';
    //pDynamic := pDynamic + '\map\cells\';

//    GetGridIndex(EditGameCenter.GCx, EditGameCenter.GCy, EditGameCenter.Gwidth, r);

    lCount := 1;
    for k := 0 to ssLayer.Count - 1 do begin

      for j := r.Top to r.Bottom do begin
        sY := GetIndexLatt(j);
        for i := r.Left to  r.Right do begin
          sX := GetIndexLong(i);

          lName  := ssLayer[k] + '_'   + sY + '_' + sX + '.tab';
          dotId  := ssLayer[k] + '_'   + sY + '_' + sX + '.id';
          dotDat := ssLayer[k] + '_'   + sY + '_' + sX + '.dat';
          dotMap := ssLayer[k] + '_'   + sY + '_' + sX + '.map';
          fName  := p + lName;
          //fNameDynammic := pDynamic + lname;
          if FileExists(fName) then begin
            //lbxFile.Items.Add(lName);
            {}
            fileSource := fName;
            //fileDest := 'D:\TTT\map\game_area\' + ExerciseAreaForm.edtName.Text + '\cells\' + lName;
            fileDest := vAppDBSetting.MapDestPathVECT + '\' + frmSummaryGameAreaVektor.edtName.Text + '\cells\' + lName;
            CopyFile(PChar(fileSource), PChar(fileDest), False);

            {fileSourceDyn := fName;
            fileDestDyn := GeographicalFeatureImportForm.getBrowsePath + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + lName;
            //fileDestDyn := GeographicalFeatureImportForm.edtLibrary.Text + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + lName;
            CopyFile(PChar(fileSourceDyn), PChar(fileDestDyn), False);}

            {}
            fileSourceId := p + dotId;
            //fileDestId := 'D:\TTT\map\game_area\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotId;
            fileDestId := vAppDBSetting.MapDestPathVECT + '\' + frmSummaryGameAreaVektor.edtName.Text + '\cells\' + dotId;
            CopyFile(PChar(fileSourceId), PChar(fileDestId), False);

            {fileSourceIdDyn := p + dotId;
            fileDestIdDyn := GeographicalFeatureImportForm.getBrowsePath + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotId;
            //fileDestIdDyn := GeographicalFeatureImportForm.edtLibrary.Text + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotId;
            CopyFile(PChar(fileSourceIdDyn), PChar(fileDestIdDyn), False);}

            {}
            fileSourceDat := p + dotDat;
            //fileDestDat := 'D:\TTT\map\game_area\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotDat;
            fileDestDat := vAppDBSetting.MapDestPathVECT + '\' + frmSummaryGameAreaVektor.edtName.Text + '\cells\' + dotDat;
            CopyFile(PChar(fileSourceDat), PChar(fileDestDat), False);

            {fileSourceDatDyn := p + dotDat;
            fileDestDatDyn := GeographicalFeatureImportForm.getBrowsePath + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotDat;
            //fileDestDatDyn := GeographicalFeatureImportForm.edtLibrary.Text + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotDat;
            CopyFile(PChar(fileSourceDatDyn), PChar(fileDestDatDyn), False);}

            {}
            fileSourceMap := p + dotMap;
            //fileDestMap := 'D:\TTT\map\game_area\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotMap;
            fileDestMap := vAppDBSetting.MapDestPathVECT + '\' + frmSummaryGameAreaVektor.edtName.Text + '\cells\' + dotMap;
            CopyFile(PChar(fileSourceMap), PChar(fileDestMap), False);

            {fileSourceMapDyn := p + dotMap;
            fileDestMapDyn := GeographicalFeatureImportForm.getBrowsePath + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotMap;
            //fileDestMapDyn := GeographicalFeatureImportForm.edtLibrary.Text + '\' + ExerciseAreaForm.edtName.Text + '\cells\' + dotMap;
            CopyFile(PChar(fileSourceMapDyn), PChar(fileDestMapDyn), False);}

            mapLandMass.Layers.Add(fName, lCount);

            inc(lCount);
          end;
        end;
      end;
    end;

    widthNM := strtoint(frmSummaryGameAreaVektor.edtMaximum.Text);
//    mapLandMass.ZoomTo(widthNM, EditGameCenter.GCx, EditGameCenter.GCy); //62
    //fName := ExtractFilePath(Application.ExeName) + 'map\' + edGstName.Text + '.gst';
    //fName := 'D:\TTT\mapsource\map\result.gst';
    fName := vAppDBSetting.MapSourcePathVECT + '\result.gst';   // + 'D:\TTT\mapsource\map\result.gst';
    //Map1.SaveMapAsGeoset(edGstName.Text, fname );
    mapLandMass.SaveMapAsGeoset('result', fname );
    ssLayer.Free;

  //isi combo box
  cbbScale.Clear;
  //widthNM := strtoint(ExerciseAreaForm.edtMaximum.Text);

  limitWidth[0] := 0.125;
  limitWidth[1] := 0.25;
  limitWidth[2] := 0.5;
  limitWidth[3] := 1;
  limitWidth[4] := 2;
  limitWidth[5] := 4;
  limitWidth[6] := 8;
  limitWidth[7] := 16;
  limitWidth[8] := 32;
  limitWidth[9] := 64;
  limitWidth[10] := 128;
  limitWidth[11] := 256;
  limitWidth[12] := 512;
  limitWidth[13] := 1024;
  limitWidth[14] := 2048;
  limitWidth[15] := 2500;

  a := 0;
  while limitWidth[a] < widthNm do
  begin
    arrayTemp[a] := limitWidth[a];
    a := a+1;
  end;
  arrayTemp[a] := widthNm;

  for b := 0 to a do
      arrayStringTemp[b] := floattostr(arrayTemp[b]);

  for b := 0 to a do
  begin
      resultTemp[b] := arrayStringTemp[b];
      cbbScale.Items.Add(resultTemp[b]);
  end;

// ini user layernya aldy rec.
     TVarData(unusedVt).vType := varError;
     TVarData(unusedVt).vError := DISP_E_PARAMNOTFOUND;
     // Add car layer and make it an animation layer
     lyrMyLayer := mapLandMass.Layers.CreateLayer('Features', unusedVt, 1, unusedVt, unusedVt);
     mapLandMass.Layers.AnimationLayer := mapLandMass.Layers.Item(lyrMyLayer.name);

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'Capture');
    sCaptureLayer :=  mapLandMass.Layers.Add(mInfo, 1);
    mapLandMass.Layers.AnimationLayer := sCaptureLayer;


     // Create custom tool to be used to plot vehicles
     mapLandMass.CreateCustomTool(PLOT_VEHICLE_TOOL, miToolTypePoint, miSizeCursor, miSizeCursor, miSizeCursor, unusedVt);

     MyFont := TFont.Create;
     OleFontToFont(mapLandMass.DefaultStyle.SymbolFont, MyFont);
     MyFont.Size := 12;
     MyFont.Name := 'MapSym-En-Air';
     MyFont.Color := clRed;

     mapLandMass.DefaultStyle.SymbolFontColor := clYellow;

     mapLandMass.DefaultStyle.LineColor := clWhite;
     mapLandMass.DefaultStyle.LineWidth := 1;
     mapLandMass.DefaultStyle.SymbolCharacter := 80;


     {}
     pointCollection := CoPoints.Create;
     {}
//:)
end;

{$ENDREGION}
end.

