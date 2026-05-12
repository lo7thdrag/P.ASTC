unit ufrmReferencePointEditor;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uCoordConvertor, {TeCanvas,} ColorGrd{, RzButton}, Math, uDBEditSetting, uBaseCoordSystem,
  uDBAsset_Sensor, tttData, uDBPattern, uObjectVisuals,
  uDBAsset_GameEnvironment, uSimVisuals, uDBAsset_Reference_Point,
  uDBAssetObject, System.ImageList, Vcl.Imaging.pngimage;

type
  TfrmReferencePointEditor = class(TForm)
    ImageList1: TImageList;
    il1: TImageList;
    btnApply: TButton;
    ToolBar1: TToolBar;
    btnDecreaseScale: TToolButton;
    cbbScale: TComboBox;
    btnIncreaseScale: TToolButton;
    btnZoomTool: TToolButton;
    btnMoveTool: TToolButton;
    btnCenterHook: TToolButton;
    pnlMainBackground: TPanel;
    pnlPlatform: TPanel;
    pnlSelectedPlatform: TPanel;
    GroupBox2: TGroupBox;
    lstReferencePoint: TListBox;
    pnlMap: TPanel;
    pnlToolBar: TPanel;
    pnlCursorPosition: TPanel;
    GroupBox1: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    lBearingFCenter: TLabel;
    lDistanceFCenter: TLabel;
    lPosLat: TLabel;
    lGridLat: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lPosLong: TLabel;
    lGridLong: TLabel;
    pnl3Button: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    pnlSparatorHor1: TPanel;
    pnlVertical1: TPanel;
    grpSelectedPoint: TGroupBox;
    lblType: TLabel;
    lblPosition: TLabel;
    btnPosition: TSpeedButton;
    lblGrid: TLabel;
    lblDomain: TLabel;
    lblIdentity: TLabel;
    lblDisplay: TLabel;
    lblCourse: TLabel;
    lblGroundSpeed: TLabel;
    lbCourse: TLabel;
    lbGroundSpeed: TLabel;
    imgDisplay: TImage;
    lblBearing: TLabel;
    lbBearing: TLabel;
    lblSymbol: TLabel;
    cbbType: TComboBox;
    edtPositionLat: TEdit;
    edtPositionLong: TEdit;
    edtGridLat: TEdit;
    edtGridLong: TEdit;
    cbbDomain: TComboBox;
    cbbIdentity: TComboBox;
    edtCourse: TEdit;
    edtGroundSpeed: TEdit;
    edtBearing: TEdit;
    cbbSymbol: TComboBox;
    Map1: TMap;
    btnDelete: TImage;
    btnNew: TImage;
    btnEdit: TImage;
    pnlAlignToolBar: TPanel;
    Image2: TImage;
    Image3: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure btnPrevPointClick(Sender: TObject);
    procedure btnNextPointClick(Sender: TObject);
    procedure btnDecreaseScaleClick(Sender: TObject);
    procedure cbbScaleChange(Sender: TObject);
    procedure btnIncreaseScaleClick(Sender: TObject);
    procedure btnZoomToolClick(Sender: TObject);
    procedure btnMoveToolClick(Sender: TObject);
    procedure btnCenterHookClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);

    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

    procedure cbbNameChange(Sender: TObject);
    procedure cbbTypeChange(Sender: TObject);
    procedure edtPositionLatKeyPress(Sender: TObject; var Key: Char);
    procedure edtPositionLongKeyPress(Sender: TObject; var Key: Char);
    procedure edtGridLatKeyPress(Sender: TObject; var Key: Char);
    procedure edtGridLongKeyPress(Sender: TObject; var Key: Char);
    procedure btnPositionClick(Sender: TObject);
    procedure DisplayParamChange(Sender: TObject);
    procedure edtBearingKeyPress(Sender: TObject; var Key: Char);
    procedure edtCourseKeyPress(Sender: TObject; var Key: Char);
    procedure edtGroundSpeedKeyPress(Sender: TObject; var Key: Char);


    procedure btnScreenCaptureClick(Sender: TObject);
    procedure Map1DrawUserLayer(ASender: TObject; const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull, RectInvalid: IDispatch);
    procedure Map1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Map1MapViewChanged(Sender: TObject);
    procedure lstReferencePointClick(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    FResourceAllocation : TResource_Allocation;
    FEnvironment : TGame_Environment_Definition;

    FReferencePointList : TList;
    FSelectedReferencePoint : TReference_Point;
    FIsMouseDown : Boolean;

    FPickLat : Double;
    FPickLong : Double;

    FPickGridX : Double;
    FPickGridY : Double;

    FCanvas : TCanvas;
    FConverter : TCoordConverter;
    FLyrDraw : CMapXLayer;

    procedure LoadMap(aGeoset: string);
    procedure LoadENC(aGeoset: string);

    procedure UpdateCursorPositionData(const X, Y: Integer);
    procedure UpdateReferencePointName;
    procedure UpdateReferencePointForm;
    procedure ClearForm;

    function GetSymbol(const aType, aDomain, aIdentity,aSymbol: Integer): string;
    function GetColor(const aType, aIdentity, aSymbol: Integer): TColor;
    procedure DisplaySymbol;
    procedure DrawSymbol;

  public
    isNoCancel : Boolean;

    function GetInput(s : string): Boolean;

    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property Environment : TGame_Environment_Definition read FEnvironment write FEnvironment;
  end;

var
  frmReferencePointEditor : TfrmReferencePointEditor;

implementation

uses
  uScrCapture, ufCaptureRes, uT3Common,
  uDataModuleTTT, ufrmReferencePointNew, StrUtils, uDataTypes;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmReferencePointEditor.FormCreate(Sender: TObject);
begin
  FReferencePointList := TList.Create;
  FConverter := TCoordConverter.Create;
  FCanvas := TCanvas.Create;
end;

procedure TfrmReferencePointEditor.FormResize(Sender: TObject);
begin
  pnlAlignToolBar.Width := round((pnlToolBar.Width - 219) / 2);
end;

procedure TfrmReferencePointEditor.FormShow(Sender: TObject);
begin
  with FEnvironment.FGameArea do
  begin
    if Detail_Map = 'VektorMap' then
      LoadMap(vAppDBSetting.MapDestPathVECT + '\' + Game_Area_Identifier + '\' + Game_Area_Identifier + '.gst')
    else if Detail_Map = 'ENC' then
      LoadENC(vAppDBSetting.MapDestPathENC + '\' + Game_Area_Identifier + '\' + Game_Area_Identifier + '.gst');

    Map1.CenterX := Game_Centre_Long;
    Map1.CenterY := Game_Centre_Lat;
  end;

  FConverter.FMap := Map1;

  cbbScale.ItemIndex := cbbScale.Items.Count - 1;
  cbbScaleChange(cbbScale);

  isNoCancel := False;

  UpdateReferencePointName;
  UpdateReferencePointForm;

  btnApply.Enabled := False;
  Map1.Repaint;

end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfrmReferencePointEditor.btnNewClick(Sender: TObject);
begin
  frmReferencePointNew := TfrmReferencePointNew.Create(Self);
  try
    with frmReferencePointNew do
    begin
      SelectedResourceAlloc := FResourceAllocation;

      if ShowModal = mrOk then
      begin
        isNoCancel := True;
        UpdateReferencePointName;
      end
      else
      begin
        FSelectedReferencePoint := nil;
      end;
    end;
  finally
    frmReferencePointNew.Free;
  end;

  UpdateReferencePointName;
  UpdateReferencePointForm;
end;

procedure TfrmReferencePointEditor.btnEditClick(Sender: TObject);
begin
  if lstReferencePoint.ItemIndex = -1 then
    Exit;

  UpdateReferencePointForm;
end;

procedure TfrmReferencePointEditor.btnRemoveClick(Sender: TObject);
begin
  if lstReferencePoint.ItemIndex = -1 then
    Exit;

  dmTTT.DeleteReferencePoint(2, FSelectedReferencePoint.FData.Reference_Index);

  FSelectedReferencePoint := nil;

  UpdateReferencePointName;
  UpdateReferencePointForm;

  isNoCancel := True;
  Map1.Repaint;
end;

procedure TfrmReferencePointEditor.btnApplyClick(Sender: TObject);
begin
  with FSelectedReferencePoint do
  begin
    FData.Track_Type := cbbType.ItemIndex;
    FData.Latitude := FPickLat;
    FData.Longitude := FPickLong;
    FData.X_Position := FPickGridX;
    FData.Y_Position := FPickGridY;

    case cbbType.ItemIndex of
      0: FData.Track_Bearing := StrToFloat(edtBearing.Text);
      1: FData.Symbol_Type := cbbSymbol.ItemIndex;
      2:
      begin
        FData.Symbol_Type := cbbDomain.ItemIndex * 10 + cbbIdentity.ItemIndex;
        FData.Course := StrToFloat(edtCourse.Text);
        FData.Speed := StrToFloat(edtGroundSpeed.Text);
      end;
      3:
      begin
        FData.Symbol_Type := cbbDomain.ItemIndex * 10 + cbbIdentity.ItemIndex;
        FData.AOP_Start_Time_Offset := DateTimeToInt(StrToDateTime(
          edtCourse.Text));
        FData.Speed := StrToFloat(edtGroundSpeed.Text);
      end;
    end;

    dmTTT.UpdateReferencePoint(FData);
  end;

  UpdateReferencePointForm;

  isNoCancel := True;
  btnApply.Enabled := False;
  Map1.Repaint;
end;

procedure TfrmReferencePointEditor.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReferencePointEditor.btnPositionClick(Sender: TObject);
begin
  Map1.MousePointer := miCrossCursor;
  Map1.CurrentTool := miSelectTool;

  btnZoomTool.Down := False;
  btnMoveTool.Down := False;
end;

procedure TfrmReferencePointEditor.btnScreenCaptureClick(Sender: TObject);
begin
//
end;

procedure TfrmReferencePointEditor.cbbNameChange(Sender: TObject);
var
  referPoint : TReference_Point;
  warning : Integer;
begin
//  case cbbName.ItemIndex of
//    0:
//    begin
//      with fReferencePointNew do
//      begin
//        SelectedResourceAlloc := FResourceAllocation;
//        SelectedForce := FForce;
//
//        if ShowModal = mrOk then
//        begin
//          UpdateReferencePointName;
//          cbbName.ItemIndex := cbbName.Items.Count - 1;
//          cbbNameChange(cbbName);
//        end
//        else
//        begin
//          FSelectedReferencePoint := nil;
//          UpdateReferencePointForm;
//        end;
//      end;
//    end;
//  else
//    FSelectedReferencePoint := TReference_Point(
//      cbbName.Items.Objects[cbbName.ItemIndex]);
//
//    UpdateReferencePointForm;
//  end;
//
//  Map1.Repaint;
end;

procedure TfrmReferencePointEditor.cbbTypeChange(Sender: TObject);
begin
  with FSelectedReferencePoint.FData do
  begin
    case cbbType.ItemIndex of
      0:
      begin
        lblDomain.Visible := False;
        cbbDomain.Visible := False;
        lblIdentity.Visible := False;
        cbbIdentity.Visible := False;
        lblSymbol.Visible := False;
        cbbSymbol.Visible := False;
        lblBearing.Visible := True;
        edtBearing.Visible := True;
        lbBearing.Visible := True;
        lblDisplay.Visible := False;
        imgDisplay.Visible := False;
        lblCourse.Visible := False;
        edtCourse.Visible := False;
        lbCourse.Visible := False;
        lblGroundSpeed.Visible := False;
        edtGroundSpeed.Visible := False;
        lbGroundSpeed.Visible := False;

        edtBearing.Text := FormatFloat('0.0', Track_Bearing);
      end;
      1:
      begin
        lblDomain.Visible := False;
        cbbDomain.Visible := False;
        lblIdentity.Visible := False;
        cbbIdentity.Visible := False;
        lblSymbol.Visible := True;
        cbbSymbol.Visible := True;
        lblBearing.Visible := False;
        edtBearing.Visible := False;
        lbBearing.Visible := False;
        lblDisplay.Visible := True;
        imgDisplay.Visible := True;
        lblCourse.Visible := False;
        edtCourse.Visible := False;
        lbCourse.Visible := False;
        lblGroundSpeed.Visible := False;
        edtGroundSpeed.Visible := False;
        lbGroundSpeed.Visible := False;

        DisplaySymbol;
      end;
      2:
      begin
        lblDomain.Visible := True;
        cbbDomain.Visible := True;
        lblIdentity.Visible := True;
        cbbIdentity.Visible := True;
        lblSymbol.Visible := False;
        cbbSymbol.Visible := False;
        lblBearing.Visible := False;
        edtBearing.Visible := False;
        lbBearing.Visible := False;
        lblDisplay.Visible := True;
        imgDisplay.Visible := True;
        lblCourse.Visible := True;
        edtCourse.Visible := True;
        lbCourse.Visible := True;
        lblGroundSpeed.Visible := True;
        edtGroundSpeed.Visible := True;
        lbGroundSpeed.Visible := True;

        DisplaySymbol;

        lblCourse.Caption := 'Course:';
        edtCourse.Text := FormatFloat('0.0', Course);
        lbCourse.Caption := 'degrees T';
        edtGroundSpeed.Text := FormatFloat('0.0', Speed);
      end;
      3:
      begin
        lblDomain.Visible := True;
        cbbDomain.Visible := True;
        lblIdentity.Visible := True;
        cbbIdentity.Visible := True;
        lblSymbol.Visible := False;
        cbbSymbol.Visible := False;
        lblBearing.Visible := False;
        edtBearing.Visible := False;
        lbBearing.Visible := False;
        lblDisplay.Visible := True;
        imgDisplay.Visible := True;
        lblCourse.Visible := True;
        edtCourse.Visible := True;
        lbCourse.Visible := True;
        lblGroundSpeed.Visible := True;
        edtGroundSpeed.Visible := True;
        lbGroundSpeed.Visible := True;

        DisplaySymbol;

        lblCourse.Caption := 'AOP Start Time Offset:';
        edtCourse.Text := FormatDateTime('hh:nn:ss',
          IntToDateTime(AOP_Start_Time_Offset));
        lbCourse.Caption := 'hh:mm:ss';
        edtGroundSpeed.Text := FormatFloat('0.0', Speed);
      end;
    end;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmReferencePointEditor.DisplayParamChange(Sender: TObject);
begin
  DisplaySymbol;
  btnApply.Enabled := True;
end;

procedure TfrmReferencePointEditor.DisplaySymbol;
var
  bmpSymbol : TBitmapSymbol;
begin
  with imgDisplay do
  begin
    Canvas.Brush.Color := clMedGray;
    Canvas.Rectangle(0, 0, Width - 1, Height - 1);
  end;

  bmpSymbol := TBitmapSymbol.Create;

  with bmpSymbol do
  begin
    LoadBitmap(ExtractFilePath(ParamStr(0)) + 'data\Bitmap\' +
      GetSymbol(cbbType.ItemIndex, cbbDomain.ItemIndex, cbbIdentity.ItemIndex,
        cbbSymbol.ItemIndex),
      GetColor(cbbType.ItemIndex, cbbIdentity.ItemIndex, cbbSymbol.ItemIndex));
    Center.X := imgDisplay.Width div 2;
    Center.Y := imgDisplay.Height div 2;
    Draw(imgDisplay.Canvas);
  end;
end;

procedure TfrmReferencePointEditor.DrawSymbol;
begin
  Map1.Repaint;
end;

procedure TfrmReferencePointEditor.edtBearingKeyPress(Sender: TObject;var Key: Char);
var
  value : Double;
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  btnApply.Enabled := False;
  if Key = #13 then
  begin
    value := StrToFloat(TEdit(Sender).Text);

    if value >= 360 then
      value := 0;

    edtBearing.Text := FormatFloat('0.0', value);
    btnApply.Enabled := True;
  end;
end;

procedure TfrmReferencePointEditor.edtCourseKeyPress(Sender: TObject;var Key: Char);
var
  value : Double;
  datetime : TDateTime;
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  btnApply.Enabled := False;
  if Key = #13 then
  begin
    case cbbType.ItemIndex of
      2:
      begin
        value := StrToFloat(TEdit(Sender).Text);

        if value >= 360 then
          value := 0;

        edtCourse.Text := FormatFloat('0.0',value);
      end;
      3:
      begin
        datetime := StrToDateTime(TEdit(Sender).Text);

        if not TryStrToTime('hh:nn:ss', datetime) then
        begin
          ShowMessage('Format invalid. Data rollback.');
          edtCourse.Text := FormatDateTime('hh:nn:ss', IntToDateTime(
            FSelectedReferencePoint.FData.AOP_Start_Time_Offset));
        end;
      end;
    end;
    btnApply.Enabled := True;
  end;
end;

procedure TfrmReferencePointEditor.edtGridLatKeyPress(Sender: TObject;var Key: Char);
begin
//
end;

procedure TfrmReferencePointEditor.edtGridLongKeyPress(Sender: TObject;var Key: Char);
begin
//
end;

procedure TfrmReferencePointEditor.edtGroundSpeedKeyPress(Sender: TObject;var Key: Char);
begin
  if not (Key in [#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  btnApply.Enabled := False;
  if Key = #13 then
  begin
    edtGroundSpeed.Text := FormatFloat('0.0', StrToFloat(edtGroundSpeed.Text));
    btnApply.Enabled := True;
  end;
end;

procedure TfrmReferencePointEditor.edtPositionLatKeyPress(Sender: TObject;var Key: Char);
begin
//
end;

procedure TfrmReferencePointEditor.edtPositionLongKeyPress(Sender: TObject;var Key: Char);
begin
//
end;

function TfrmReferencePointEditor.GetColor(const aType, aIdentity,aSymbol: Integer): TColor;
begin
  case aType of
    0, 2, 3:
    begin
      case aIdentity of
        0: Result := getColorFromIdentity(piFriend);
        1: Result := getColorFromIdentity(piAssumedFriend);
        2: Result := getColorFromIdentity(piNeutral);
        3: Result := getColorFromIdentity(piSuspect);
        4: Result := getColorFromIdentity(piHostile);
        5: Result := getColorFromIdentity(piUnknown);
      end;
    end;
    1:
    begin
      case aSymbol of
        0, 4, 11, 13, 14, 15, 16, 18, 19, 20: Result := clWebFloralWhite;
        1, 2, 7, 10, 12, 21, 22, 24, 26, 27: Result := clBlack;
        3, 6, 17, 23, 25: Result := clYellow;
        5, 8, 9: Result  := clMaroon;
      end;
    end;
  end;
end;

function TfrmReferencePointEditor.GetInput(s: string): Boolean;
var
  a, i : Integer;
begin
  Result := False;
  a := 0;

  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
      a := a + 1;
  end;

  if a > 0 then
    Result := True;
end;

function TfrmReferencePointEditor.GetSymbol(const aType, aDomain, aIdentity,aSymbol: Integer): string;
begin
  case aType of
    1:
    begin
      case aSymbol of
        0: Result := pctGeneral;
        1: Result := pctBuoy;
        2: Result := pctDataLinkReferencePoint;
        3: Result := pctDistressedVessel;
        4: Result := pctEsmEcmFix;
        5: Result := pctGroundZero;
        6: Result := pctManInWater;
        7: Result := pctMaritimeHeadquarters;
        8: Result := pctMineHazard;
        9: Result := pctNavigationalHazard;
        10: Result := pctOilRig;
        11: Result := pctStation;
        12: Result := pctTacticalGridorigin;
        13: Result := pctAirGeneral;
        14: Result := pctAirborneEarlyWarning;
        15: Result := pctBullseye;
        16: Result := pctCombatAirPatrol;
        17: Result := pctDitchedAirCraft;
        18: Result := pctGate;
        19: Result := pctAswGeneral;
        20: Result := pctBriefContact;
        21: Result := pctDatum;
        22: Result := pctKingpin;
        23: Result := pctRiser;
        24: Result := pctSearchCentre;
        25: Result := pctSinker;
        26: Result := pctWeaponEntryPoint;
        27: Result := pctWreck;
      end;

      Result  := Result + '.bmp';
    end;
    2, 3:
    begin
      Result := getDetectedSymbolFileName(aDomain, aIdentity);
    end;
  end;
end;

procedure TfrmReferencePointEditor.UpdateCursorPositionData(const X, Y: Integer);
var
  dx, dy, diffX, diffY : Double;
begin
  FConverter.ConvertToMap(X, Y, dx, dy);

  lBearingFCenter.Caption := FormatFloat('0.00', CalcBearing(FEnvironment.FGameArea.Game_Centre_Long,
    FEnvironment.FGameArea.Game_Centre_Lat, dx, dy));
  lDistanceFCenter.Caption := FormatFloat('0.00', CalcRange(FEnvironment.FGameArea.Game_Centre_Long,
    FEnvironment.FGameArea.Game_Centre_Lat, dx, dy));
  lPosLat.Caption := formatDM_latitude(dy);
  lPosLong.Caption := formatDM_longitude(dx);

  diffX := Abs(dx - FEnvironment.FGameArea.Game_Centre_Long) * 60;
  diffY := Abs(dy - FEnvironment.FGameArea.Game_Centre_Lat) * 60;

  if dy < FEnvironment.FGameArea.Game_Centre_Lat then
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm S'
  else
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm N';

  if dx < FEnvironment.FGameArea.Game_Centre_Long then
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm W'
  else
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm E';
end;

procedure TfrmReferencePointEditor.UpdateReferencePointForm;
begin
  if Assigned(FSelectedReferencePoint) then
  begin
    lblType.Visible := True;
    cbbType.Visible := True;
    lblPosition.Visible := True;
    edtPositionLat.Visible := True;
    edtPositionLong.Visible := True;
    btnPosition.Visible := True;
    lblGrid.Visible := True;
    edtGridLat.Visible := True;
    edtGridLong.Visible := True;

    btnApply.Visible := True;

    with FSelectedReferencePoint.FData do
    begin
      cbbType.ItemIndex := Track_Type;
      cbbDomain.ItemIndex := Trunc(Symbol_Type / 10);
      cbbIdentity.ItemIndex := Symbol_Type - (cbbDomain.ItemIndex * 10);
      cbbSymbol.ItemIndex := Symbol_Type;
      cbbTypeChange(cbbType);

      edtPositionLat.Text := formatDM_latitude(Latitude);
      edtPositionLong.Text := formatDM_longitude(Longitude);

      if Latitude < FEnvironment.FGameArea.Game_Centre_Lat then
        edtGridLat.Text := FormatFloat('0.00', Y_Position) + ' nm S'
      else
        edtGridLat.Text := FormatFloat('0.00', Y_Position) + ' nm N';

      if Longitude < FEnvironment.FGameArea.Game_Centre_Long then
        edtGridLong.Text := FormatFloat('0.00', X_Position) + ' nm W'
      else
        edtGridLong.Text := FormatFloat('0.00', X_Position) + ' nm E';
    end;
  end
  else
  begin
    ClearForm;
  end;
end;

procedure TfrmReferencePointEditor.ClearForm;
begin
  lblType.Visible := False;
  cbbType.Visible := False;
  lblPosition.Visible := False;
  edtPositionLat.Visible := False;
  edtPositionLong.Visible := False;
  btnPosition.Visible := False;
  lblGrid.Visible := False;
  edtGridLat.Visible := False;
  edtGridLong.Visible := False;

  lblDomain.Visible := False;
  cbbDomain.Visible := False;
  lblIdentity.Visible := False;
  cbbIdentity.Visible := False;
  lblSymbol.Visible := False;
  cbbSymbol.Visible := False;
  lblBearing.Visible := False;
  edtBearing.Visible := False;
  lbBearing.Visible := False;
  lblDisplay.Visible := False;
  imgDisplay.Visible := False;
  lblCourse.Visible := False;
  edtCourse.Visible := False;
  lbCourse.Visible := False;
  lblGroundSpeed.Visible := False;
  edtGroundSpeed.Visible := False;
  lbGroundSpeed.Visible := False;

  btnApply.Visible := False;
end;

procedure TfrmReferencePointEditor.UpdateReferencePointName;
var
  i : Integer;
  referPoint : TReference_Point;
begin
  with FSelectedReferencePoint.FData do
  begin
    lstReferencePoint.Items.Clear;

    dmTTT.GetReferencePoint(FResourceAllocation.FData.Resource_Alloc_Index, FReferencePointList);

    for i := 0 to FReferencePointList.Count - 1 do
    begin
      referPoint := FReferencePointList.Items[i];
      lstReferencePoint.Items.AddObject(referPoint.FData.Reference_Identifier, referPoint);
    end;
  end;
end;

procedure TfrmReferencePointEditor.lstReferencePointClick(Sender: TObject);
begin
  if lstReferencePoint.ItemIndex = -1 then
  begin
    FSelectedReferencePoint := nil;
    lstReferencePoint.ItemIndex := -1;
    Exit;
  end;

  FSelectedReferencePoint := TReference_Point(lstReferencePoint.Items.Objects[lstReferencePoint.ItemIndex]);

  with FSelectedReferencePoint.FData do
  begin
    FPickLat := Latitude;
    FPickLong:= Longitude;

    FPickGridX := X_Position;
    FPickGridY := Y_Position;
  end;

  ClearForm;

  Map1.Repaint;
end;

{$ENDREGION}

{$REGION ' ToolBar Handle '}

procedure TfrmReferencePointEditor.btnDecreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex - 1;
  cbbScaleChange(cbbScale);
end;

procedure TfrmReferencePointEditor.cbbScaleChange(Sender: TObject);
var
  z : Double;
  s : string;
begin
  Map1.OnMapViewChanged := nil;

  if cbbScale.ItemIndex < 0  then Exit;

  if (cbbScale.ItemIndex <= 500) then
  begin
   s := cbbScale.Items[cbbScale.ItemIndex];
   try
     z := StrToFloat(s);
     Map1.ZoomTo(z, Map1.CenterX, Map1.CenterY);
   finally

   end;
  end
  else
    cbbScale.ItemIndex := cbbScale.ItemIndex -1 ;

  Map1.OnMapViewChanged := Map1MapViewChanged;

//  btnDecreaseScale.Enabled := cbbScale.ItemIndex > 0;
//  btnIncreaseScale.Enabled := cbbScale.ItemIndex < (cbbScale.Items.Count - 1);
//
//  z := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);
//  Map1.ZoomTo(z, Map1.CenterX, Map1.CenterY);
end;

procedure TfrmReferencePointEditor.btnIncreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex + 1;
  cbbScaleChange(cbbScale);
end;

procedure TfrmReferencePointEditor.btnPrevPointClick(Sender: TObject);
begin
//  if cbbName.ItemIndex = 1 then
//    Exit;
//
//  cbbName.ItemIndex := cbbName.ItemIndex - 1;
//  cbbNameChange(cbbName);
end;

procedure TfrmReferencePointEditor.btnNextPointClick(Sender: TObject);
begin
//  if cbbName.ItemIndex = cbbName.Items.Count - 1 then
//    Exit;
//
//  cbbName.ItemIndex := cbbName.ItemIndex + 1;
//  cbbNameChange(cbbName);
end;

procedure TfrmReferencePointEditor.btnZoomToolClick(Sender: TObject);
begin
  Map1.CurrentTool := miZoomInTool;
  Map1.MousePointer := miZoomInCursor;
end;

procedure TfrmReferencePointEditor.btnMoveToolClick(Sender: TObject);
begin
  Map1.CurrentTool := miPanTool;
  Map1.MousePointer := miPanCursor;
end;

procedure TfrmReferencePointEditor.btnCenterHookClick(Sender: TObject);
var
  zoom : Double;
begin
  zoom := StrToFloat(cbbScale.Text);

  with FEnvironment.FGameArea do
    Map1.ZoomTo(zoom, Game_Centre_Long, Game_Centre_Lat);
end;

{$ENDREGION}

{$REGION ' Map Handle '}

procedure TfrmReferencePointEditor.Map1DrawUserLayer(ASender: TObject;const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull,RectInvalid: IDispatch);
var
  i,
  ix1, iy1, ix2, iy2,
  typeIndex, domainIndex, identityIndex, symbolIndex : Integer;
  referPoint : TReference_Point;
  dx, dy : Double;
begin
  if not Assigned(FCanvas) then
    Exit;

  with FCanvas do
  begin
    Handle := hOutputDC;
    Pen.Width := 2;
    Brush.Style := bsSolid;

    for i := 0 to FReferencePointList.Count - 1 do
    begin
      referPoint := FReferencePointList.Items[i];

      if Assigned(FSelectedReferencePoint) and
        (referPoint.FData.Reference_Index = FSelectedReferencePoint.FData.Reference_Index) then
          Pen.Color := clYellow
      else
        Pen.Color := clBlack;

      with referPoint do
      begin
        FConverter.ConvertToScreen(FData.Longitude, FData.Latitude, ix1, iy1);

        if FData.Track_Type = 0 then
        begin
          RangeBearingToCoord(10, FData.Track_Bearing, dx, dy);
          FConverter.ConvertToScreen(FData.Longitude + dx, FData.Latitude + dy,
            ix2, iy2);

          Pen.Style := psDash;
          MoveTo(ix1, iy1);
          LineTo(ix2, iy2);
        end
        else
        begin
          Drawing := TBitmapSymbol.Create;
          with TBitmapSymbol(Drawing) do
          begin
            Center.X := ix1;
            Center.Y := iy1;

            if Assigned(FSelectedReferencePoint) and (referPoint.FData.Reference_Index = FSelectedReferencePoint.FData.Reference_Index) then
            begin

              cbbType.ItemIndex := FData.Track_Type;
              cbbDomain.ItemIndex := Trunc(FData.Symbol_Type / 10);
              cbbIdentity.ItemIndex := FData.Symbol_Type - (cbbDomain.ItemIndex * 10);
              cbbSymbol.ItemIndex := FData.Symbol_Type;

              LoadBitmap(ExtractFilePath(ParamStr(0)) + 'data\Bitmap\' +
                GetSymbol(cbbType.ItemIndex, cbbDomain.ItemIndex, cbbIdentity.ItemIndex, cbbSymbol.ItemIndex),
                GetColor(cbbType.ItemIndex, cbbIdentity.ItemIndex, cbbSymbol.ItemIndex));

              Draw(FCanvas);

              MoveTo(ix1 - (BitmapWidth div 2) - 8, iy1 - (BitmapHeigth div 2) - 8);
              LineTo(ix1 + (BitmapWidth div 2) + 8, iy1 - (BitmapHeigth div 2) - 8);
              MoveTo(ix1 + (BitmapWidth div 2) + 8, iy1 - (BitmapHeigth div 2) - 8);
              LineTo(ix1 + (BitmapWidth div 2) + 8, iy1 + (BitmapHeigth div 2) + 8);
              MoveTo(ix1 + (BitmapWidth div 2) + 8, iy1 + (BitmapHeigth div 2) + 8);
              LineTo(ix1 - (BitmapWidth div 2) - 8, iy1 + (BitmapHeigth div 2) + 8);
              MoveTo(ix1 - (BitmapWidth div 2) - 8, iy1 + (BitmapHeigth div 2) + 8);
              LineTo(ix1 - (BitmapWidth div 2) - 8, iy1 - (BitmapHeigth div 2) - 8);
            end
            else
            begin
              typeIndex := FData.Track_Type;
              domainIndex := Trunc(FData.Symbol_Type / 10);
              identityIndex := FData.Symbol_Type - (domainIndex * 10);
              symbolIndex := FData.Symbol_Type;

              LoadBitmap(ExtractFilePath(ParamStr(0)) + 'data\Bitmap\' +
                GetSymbol(typeIndex, domainIndex, identityIndex, symbolIndex),
                GetColor(typeIndex, identityIndex, symbolIndex));
              Draw(FCanvas);
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmReferencePointEditor.Map1MapViewChanged(Sender: TObject);
var
  tempZoom : double;
begin
  if (Map1.CurrentTool = miZoomInTool)  or (Map1.CurrentTool = miZoomOutTool) then
  begin
     if Map1.Zoom <= 0.125 then tempZoom := 0.125;
     if (Map1.Zoom > 0.125) AND (Map1.Zoom < 1) then tempZoom := Map1.Zoom;
     if (Map1.Zoom >= 1) AND (Map1.Zoom <= 2500) then tempZoom := round(Map1.Zoom);
     if Map1.Zoom > 2500 then tempZoom := 2500;

     Map1.OnMapViewChanged := nil;
     Map1.ZoomTo(tempZoom, Map1.CenterX, Map1.CenterY);

     if (Map1.Zoom > 0.125) AND (Map1.Zoom < 0.25) then
     begin
       cbbScale.Text := FormatFloat('0.000', tempZoom);
     end
     else if (Map1.Zoom >= 0.25) AND (Map1.Zoom < 0.5) then
     begin
       cbbScale.Text := FormatFloat('0.00', tempZoom);
     end
     else if (Map1.Zoom >= 0.5) AND (Map1.Zoom < 1) then
     begin
       cbbScale.Text := FormatFloat('0.0', tempZoom);
     end
     else
       cbbScale.Text := floattostr(tempZoom);

     Map1.OnMapViewChanged := Map1MapViewChanged;
  end;
end;

procedure TfrmReferencePointEditor.Map1MouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  dx, dy : Double;
begin
  if Map1.MousePointer = miCrossCursor then
  begin
    with FSelectedReferencePoint.FData do
    begin
      FConverter.ConvertToMap(X, Y, FPickLong, FPickLat);

      edtPositionLat.Text := formatDM_latitude(FPickLat);
      edtPositionLong.Text := formatDM_longitude(FPickLong);

      FPickGridX := Abs(FPickLong - FEnvironment.FGameArea.Game_Centre_Long) * 60;
      FPickGridY := Abs(FPickLat - FEnvironment.FGameArea.Game_Centre_Lat) * 60;

      if FPickLat < FEnvironment.FGameArea.Game_Centre_Lat then
        edtGridLat.Text := FormatFloat('0.00', FPickGridY) + ' nm S'
      else
        edtGridLat.Text := FormatFloat('0.00', FPickGridY) + ' nm N';

      if FPickLong < FEnvironment.FGameArea.Game_Centre_Long then
        edtGridLong.Text := FormatFloat('0.00', FPickGridX) + ' nm W'
      else
        edtGridLong.Text := FormatFloat('0.00', FPickGridX) + ' nm E';
    end;

    btnApply.Enabled := True;
  end;

//  if btnCenterHook.Down then
//  begin
//    FConverter.ConvertToMap(X, Y, dx, dy);
//
//    FSelectedReferencePoint.FData..X_Position.FGameArea.Game_Centre_Lat := dy;
//    FSelectedEnvironment.FGameArea.Game_Centre_Long := dx;
//  end;
end;

procedure TfrmReferencePointEditor.Map1MouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
begin
  UpdateCursorPositionData(X, Y);
end;

procedure TfrmReferencePointEditor.Map1MouseUp(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Map1.MousePointer := miDefaultCursor;
end;

procedure TfrmReferencePointEditor.LoadENC(aGeoset: string);
var
  z : OleVariant;
  i : Integer;
  mInfo : CMapXLayerInfo;
begin
  if Map1 = nil then
    Exit;

  InitOleVariant(z);
  Map1.Layers.RemoveAll;
  Map1.Geoset := aGeoset;

  if aGeoset <> '' then
  begin
    for i := 1 to Map1.Layers.Count do
    begin
      Map1.Layers.Item(i).Selectable := False;
      Map1.Layers.Item(i).Editable := False;
    end;

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'LYR_DRAW');
    FLyrDraw := Map1.Layers.Add(mInfo, 1);

    Map1.Layers.AnimationLayer := FLyrDraw;
    Map1.MapUnit := miUnitNauticalMile;
  end;

  Map1.BackColor := RGB(192, 224, 255);
end;

procedure TfrmReferencePointEditor.LoadMap(aGeoset: string);
var
  z : OleVariant;
  i : Integer;
  mInfo : CMapXLayerInfo;
begin
  if Map1 = nil then
    Exit;

  InitOleVariant(z);
  Map1.Layers.RemoveAll;
  Map1.Geoset := aGeoset;

  if aGeoset <> '' then
  begin
    for i := 1 to Map1.Layers.Count do
    begin
      Map1.Layers.Item(i).Selectable := False;
      Map1.Layers.Item(i).Editable := False;
    end;

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'LYR_DRAW');
    FLyrDraw := Map1.Layers.Add(mInfo, 1);

    Map1.Layers.AnimationLayer := FLyrDraw;
    Map1.MapUnit := miUnitNauticalMile;
  end;

  Map1.BackColor := clSkyBlue;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmReferencePointEditor.GetNumberOfKoma(s: string): Boolean;
var
  a, i : Integer;
begin
  Result := False;
  a := 0;

  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
      a := a + 1;
  end;

  if a > 0 then
    Result := True;
end;

procedure TfrmReferencePointEditor.edtNumeralKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetNumberOfKoma(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if Key = #13 then
  begin
    if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    value := StrToFloat(TEdit(Sender).Text);

    case TEdit(Sender).Tag of
      0: TEdit(Sender).Text := FormatFloat('0', value);
      1: TEdit(Sender).Text := FormatFloat('0.0', value);
      2: TEdit(Sender).Text := FormatFloat('0.00', value);
      3: TEdit(Sender).Text := FormatFloat('0.000', value);
    end;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmReferencePointEditor.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmReferencePointEditor.ValidationFormatInput;
var
  i: Integer;
  value : Double;

begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TEdit then
    begin
      if TEdit(Components[i]).Tag = 4 then
        continue;

      if TEdit(Components[i]).Text = '' then
        TEdit(Components[i]).Text := '0';

      value := StrToFloat(TEdit(Components[i]).Text);

      case TEdit(Components[i]).Tag of
        0: TEdit(Components[i]).Text := FormatFloat('0', value);
        1: TEdit(Components[i]).Text := FormatFloat('0.0', value);
        2: TEdit(Components[i]).Text := FormatFloat('0.00', value);
        3: TEdit(Components[i]).Text := FormatFloat('0.000', value);
      end;
    end;

  end;
end;

{$ENDREGION}

end.


