unit ufrmPlatformDeploytment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ImgList, OleCtrls, MapXLib_TLB,
  ComCtrls, ToolWin, uDBAsset_Deploy, uDBAssetObject, uDBAsset_GameEnvironment,
  uCoordConvertor, uObjectVisuals, uTRuler, System.ImageList,
  Vcl.Imaging.pngimage, uSimContainers;

type
  E_MapClickEvent = (mceHook, mceMove, mceApproximatePosition,
    mceTargetingPlatform, mceTargetingPosition, mceScreenCapture);

  TfrmPlatformDeploytment = class(TForm)
    pnlToolBar: TPanel;
    ToolBar1: TToolBar;
    btnHook: TToolButton;
    btnPrevious: TToolButton;
    btnNext: TToolButton;
    btnLeftSeparator: TToolButton;
    btnDecreaseScale: TToolButton;
    cbbScale: TComboBox;
    btnIncreaseScale: TToolButton;
    btnRightSeparator: TToolButton;
    btnZoomTool: TToolButton;
    btnMoveTool: TToolButton;
    btnCenterHook: TToolButton;
    pnlCursorPosition: TPanel;
    grpCursorPosition: TGroupBox;
    Label59: TLabel;
    lBearingFCenter: TLabel;
    Label63: TLabel;
    lbcenterx: TLabel;
    Label60: TLabel;
    lDistanceFCenter: TLabel;
    Label64: TLabel;
    lbcentery: TLabel;
    Label61: TLabel;
    lPosLat: TLabel;
    lPosLong: TLabel;
    Label62: TLabel;
    lGridLat: TLabel;
    lGridLong: TLabel;
    GroupBox1: TGroupBox;
    Label65: TLabel;
    lbHookedName: TLabel;
    Label77: TLabel;
    Label67: TLabel;
    lbHookedPosLat: TLabel;
    lbHookedPosLong: TLabel;
    Label78: TLabel;
    Label68: TLabel;
    lbHookedGridLat: TLabel;
    lbHookedGridLong: TLabel;
    pnlSelectedPlatform: TPanel;
    Label1: TLabel;
    edPlatform: TEdit;
    btnBrowse: TBitBtn;
    HookContactInfoTraineeDisplay: TPageControl;
    tsHook: TTabSheet;
    StaticText1: TStaticText;
    StaticText25: TStaticText;
    dtpActivationTime: TDateTimePicker;
    Label3: TLabel;
    StaticText28: TStaticText;
    Label23: TLabel;
    edLatPosition: TEdit;
    Label24: TLabel;
    edLongPosition: TEdit;
    Label4: TLabel;
    StaticText29: TStaticText;
    Label8: TLabel;
    edVert: TEdit;
    Label6: TLabel;
    edHorz: TEdit;
    Label7: TLabel;
    StaticText31: TStaticText;
    btnApproximatePosition: TSpeedButton;
    StaticText7: TStaticText;
    StaticText36: TStaticText;
    edCourse: TEdit;
    StaticText8: TStaticText;
    StaticText33: TStaticText;
    edHelmAngle: TEdit;
    StaticText9: TStaticText;
    StaticText34: TStaticText;
    cbGroundSpeed: TComboBox;
    StaticText10: TStaticText;
    StaticText35: TStaticText;
    edAltitude: TEdit;
    StaticText16: TStaticText;
    StaticText6: TStaticText;
    cbVerticalSpeed: TComboBox;
    btnIFFActivation: TButton;
    tsDetails: TTabSheet;
    Panel1: TPanel;
    cbLateralGuid: TComboBox;
    Panel2: TPanel;
    grbDefaultKosong: TGroupBox;
    grbStraightGuidance: TGroupBox;
    lblCourse: TLabel;
    edtCourse_StraightGuidance: TEdit;
    Label57: TLabel;
    lblGroundSpeed: TLabel;
    cmbGroundSpeed_StraightGuidance: TComboBox;
    grbPatternOnSelfGuidance: TGroupBox;
    lblPredefined: TLabel;
    edtPredefinedPattern_PatternOnSelfGuidance: TEdit;
    spbtnAngularOffset_PatternOnSelfGuidance: TSpeedButton;
    lblAngular: TLabel;
    edtAngularOffset_PatternOnSelfGuidance: TEdit;
    Label5: TLabel;
    grbPatternOnTargetGuidance: TGroupBox;
    Label10: TLabel;
    edtPredefinedPattern_PatternOnTargetGuidance: TEdit;
    spbtnPredefinedPattern_PatternOnTargetGuidance: TSpeedButton;
    Label11: TLabel;
    edtTarget_PatternOnTargetGuidance: TEdit;
    spbtnTarget_PatternOnTargetGuidance: TSpeedButton;
    LblAngularOffset: TLabel;
    edtAngularOffset_PatternOnTargetGuidance: TEdit;
    Label58: TLabel;
    grbPatternOnPointGuidance: TGroupBox;
    Label12: TLabel;
    edtPredefinedPattern_PatternOnPointGuidance: TEdit;
    spbtnPredefinedPattern_PatternOnPointGuidance: TSpeedButton;
    Label13: TLabel;
    edtAngularOffset_PatternOnPointGuidance: TEdit;
    Label14: TLabel;
    lbl1: TLabel;
    edtLatAnchor_PatternOnPointGuidance: TEdit;
    edtLongAnchor_PatternOnPointGuidance: TEdit;
    spbtnAnchorPosition_PatternOnPointGuidance: TSpeedButton;
    Label15: TLabel;
    edtXanchor_PatternOnPointGuidance: TEdit;
    edtYanchor_PatternOnPointGuidance: TEdit;
    grbHelmGuidance: TGroupBox;
    lblHelm: TLabel;
    edtHelmAngle_HelmGuidance: TEdit;
    Label17: TLabel;
    Label16: TLabel;
    cmbGroundSpeed_HelmGuidance: TComboBox;
    grbReturnToBaseGuidance: TGroupBox;
    Label18: TLabel;
    cmbGroundSpeed_ReturnToBaseGuidance: TComboBox;
    lblBase: TLabel;
    edtBase_ReturnToBaseGuidance: TEdit;
    spbtnBase_ReturnToBaseGuidance: TSpeedButton;
    grbStationKeepOnTrackGuidance: TGroupBox;
    Label19: TLabel;
    edtTarget_StationKeepOnTrackGuidance: TEdit;
    SpeedButton1: TSpeedButton;
    lblTArgetRange: TLabel;
    edtTargetRange_StationKeepOnTrackGuidance: TEdit;
    lblNM: TLabel;
    lblAngleOffset: TLabel;
    edtAngleOffset_StationKeepOnTrackGuidance: TEdit;
    lblDegrees: TLabel;
    cbxAbsoluteOffsiteAngle_StationKeepOnTrackGuidance: TCheckBox;
    grbStationKeepOnPositionGuidance: TGroupBox;
    Label20: TLabel;
    edtAnchorLat_StationKeepOnPositionGuidance: TEdit;
    edtAnchorLong_StationKeepOnPositionGuidance: TEdit;
    spbtnAnchorPosition_StationKeepOnPositionGuidance: TSpeedButton;
    Label21: TLabel;
    edtAnchorX_StationKeepOnPositionGuidance: TEdit;
    edtAnchorY_StationKeepOnPositionGuidance: TEdit;
    cbxDriftsOnCurrent_StationKeepOnPositionGuidance: TCheckBox;
    grbCircleOnTrackGuidance: TGroupBox;
    Label25: TLabel;
    edtTarget_CircleOnTrackGuidance: TEdit;
    spTarget_CircleOnTrackGuidance: TSpeedButton;
    lblRadius: TLabel;
    edtRadius_CircleOnTrackGuidance: TEdit;
    Label28: TLabel;
    lblDirection: TLabel;
    cmbDirection_CircleOnTrackGuidance: TComboBox;
    Label26: TLabel;
    cmbGroundSpeed_CircleOnTrackGuidance: TComboBox;
    lblRangeOffset: TLabel;
    edtRangeOffset_CircleOnTrackGuidance: TEdit;
    lblnmm: TLabel;
    Label27: TLabel;
    edtAngleOffset_CircleOnTrackGuidance: TEdit;
    Label29: TLabel;
    cbxAbsoluteOffsetAngle_CircleOnTrackGuidance: TCheckBox;
    grbCircleOnPointGuidance: TGroupBox;
    Label34: TLabel;
    edtCentreLat_CircleOnPointGuidance: TEdit;
    edtCentreLong_CircleOnPointGuidance: TEdit;
    spbtnCentrePosition_CircleOnPointGuidance: TSpeedButton;
    lblCentreGrid: TLabel;
    edtCentreX_CircleOnPointGuidance: TEdit;
    edtCentreY_CircleOnPointGuidance: TEdit;
    Label33: TLabel;
    edtRadius_CircleOnPointGuidance: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    cmbDirection_CircleOnPointGuidance: TComboBox;
    Label30: TLabel;
    cmbGroundSpeed_CircleOnPointGuidance: TComboBox;
    grbZigZagGuidance: TGroupBox;
    lblLegLength: TLabel;
    cmbLegLength_ZigZagGuidance: TComboBox;
    lblBaseCourse: TLabel;
    edtBaseCourse_ZigZagGuidance: TEdit;
    Label38: TLabel;
    lblPeriod: TLabel;
    edtPeriod_ZigZagGuidance: TEdit;
    Label36: TLabel;
    lblAmplitude: TLabel;
    edtAmplitude_ZigZagGuidance: TEdit;
    Label37: TLabel;
    Label35: TLabel;
    cmbGroundSpeed_ZigZagGuidance: TComboBox;
    grbSinuateGuidance: TGroupBox;
    Label43: TLabel;
    edtBaseCourse_SinuateGuidance: TEdit;
    lbldegreesT: TLabel;
    Label42: TLabel;
    edtPeriod_SinuateGuidance: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    edtAmplitude_SinuateGuidance: TEdit;
    Label44: TLabel;
    Label39: TLabel;
    cmbGroundSpeed_SinuateGuidance: TComboBox;
    grbShadowGuidance: TGroupBox;
    Label47: TLabel;
    edtTarget_ShadowGuidance: TEdit;
    spbtnTarget_ShadowGuidance: TSpeedButton;
    Label46: TLabel;
    edtTargetRange_ShadowGuidance: TEdit;
    Label45: TLabel;
    grbEngagementGuidance: TGroupBox;
    Label50: TLabel;
    edtTarget_EngagementGuidance: TEdit;
    spbtnTarget_EngagementGuidance: TSpeedButton;
    Label49: TLabel;
    edtTargetRange_EngagementGuidance: TEdit;
    Label48: TLabel;
    grbEvasionGuidance: TGroupBox;
    Label51: TLabel;
    edtTarget_EvasionGuidance: TEdit;
    spbtnTarget_EvasionGuidance: TSpeedButton;
    grbOutRunGuidance: TGroupBox;
    Label52: TLabel;
    edtTarget_OutRunGuidance: TEdit;
    spbtnTarget_OutRunGuidance: TSpeedButton;
    tsDetection: TTabSheet;
    lAltitude: TLabel;
    edAltitudeDepth: TEdit;
    Label66: TLabel;
    btnRemove: TButton;
    btnApply: TButton;
    Map1: TMap;
    ImageList1: TImageList;
    btn_Ruler: TToolButton;
    pnlPlatform: TPanel;
    pnlMainBackground: TPanel;
    pnlMap: TPanel;
    pnlSparatorVer: TPanel;
    grbWayPointGuidance: TGroupBox;
    Bevel1: TBevel;
    Label2: TLabel;
    spbtnTarget_WayPointGuidance: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Bevel2: TBevel;
    edtTarget_WayPointGuidance: TEdit;
    cmbType_WayPointGuidance: TComboBox;
    edtRadius_WayPointGuidance: TEdit;
    btnEditWaypoints_WayPointGuidance: TButton;
    pnl3Button: TPanel;
    pnlSparatorHor1: TPanel;
    btnEditFormaions: TButton;
    btnScreenCapture: TButton;
    Panel3: TPanel;
    btnCancel: TButton;
    pnlAlignToolBar: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnHookClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnDecreaseScaleClick(Sender: TObject);
    procedure cbbScaleChange(Sender: TObject);
    procedure btnIncreaseScaleClick(Sender: TObject);
    procedure btnMoveToolClick(Sender: TObject);
    procedure btnZoomToolClick(Sender: TObject);
    procedure btnCenterHookClick(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
    procedure dtpActivationTimeKeyPress(Sender: TObject; var Key: Char);
    procedure edLatPositionKeyPress(Sender: TObject; var Key: Char);
    procedure edLongPositionKeyPress(Sender: TObject; var Key: Char);
    procedure edVertKeyPress(Sender: TObject; var Key: Char);
    procedure edHorzKeyPress(Sender: TObject; var Key: Char);
    procedure PlatformDataChange(Sender: TObject);
    procedure PlatformDataClick(Sender: TObject);
    procedure PlatformDataKeyPress(Sender: TObject; var Key: Char);
    procedure btnApproximatePositionClick(Sender: TObject);
    procedure spbtnAngularOffset_PatternOnSelfGuidanceClick(Sender: TObject);
    procedure spbtnPredefinedPattern_PatternOnTargetGuidanceClick(
      Sender: TObject);
    procedure spbtnPredefinedPattern_PatternOnPointGuidanceClick(
      Sender: TObject);
    procedure btnEditWaypoints_WayPointGuidanceClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnEditFormaionsClick(Sender: TObject);
    procedure btnScreenCaptureClick(Sender: TObject);
    procedure Map1DrawUserLayer(ASender: TObject; const Layer: IDispatch;
      hOutputDC, hAttributeDC: Cardinal; const RectFull,
      RectInvalid: IDispatch);
    procedure Map1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Map1MapViewChanged(Sender: TObject);
    procedure Map1DblClick(Sender: TObject);
    procedure btn_RulerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FSelectedAssetDeployment : TAsset_Deployment;
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedEnviArea : TGame_Environment_Definition;

    FPlatformActivationList : TList;
    FHookedPlatform : TPlatform_Instance;
    FSelectedPlatform : TPlatform_Instance;
    FOriginalPlatform : TPlatform_Instance;
    FMapClickEvent : E_MapClickEvent;
    FMapMouseDownTime : TDateTime;
    FBmpSym : TBitmapSymbol;

    FCanvas : TCanvas;
    FConverter : TCoordConverter;
    FLyrDraw : CMapXLayer;
    FMouseDown : Boolean;
    FRuler : TRuler;
    FPointX, FPointY : Integer;
    FS_PointXObj, FS_PointYObj, FE_PointXObj, FE_PointYObj : Integer;

    procedure UpdateCursorPositionData(const X, Y: Integer);
    procedure UpdatePlatformActivationList;
    procedure UpdateHookedPlatformData;
    procedure UpdateSelectedPlatformData;
    procedure UpdateSelectedPlatformLateralData;
    procedure DrawRuler;

    function FindNearestPlatform(const X, Y: Integer): TPlatform_Instance;
    procedure ScreenShot(const DestBitmap : TBitmap);

    procedure LoadMap(aGeoset: string);
    procedure LoadENC(aGeoset: string);
    function GetSymbol(const aType, aDomain: Integer): string;
    function GetColor(const aForce: Integer): TColor;
  public
    property SelectedAssetDeployment : TAsset_Deployment
      read FSelectedAssetDeployment write FSelectedAssetDeployment;
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedEnviArea : TGame_Environment_Definition
      read FSelectedEnviArea write FSelectedEnviArea;
  end;

var
  frmPlatformDeploytment: TfrmPlatformDeploytment;

implementation

uses
  uDataModuleTTT, uPlatformDeploymentPickList, uWaypointEditorPanel,
  uOtherSingleList, uFormationeditor, uScrCapture, uBaseCoordSystem,
  uDBEditSetting, uDBPattern;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmPlatformDeploytment.FormCreate(Sender: TObject);
begin
  FPlatformActivationList := TList.Create;
  FCanvas := TCanvas.Create;
  FConverter := TCoordConverter.Create;
  FBmpSym := TBitmapSymbol.Create;

  Ruler := TRuler.Create(Self);
  Ruler.FRulerConverter := FConverter;

end;

procedure TfrmPlatformDeploytment.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FPlatformActivationList);
  FCanvas.Free;
  FConverter.Free;
  FBmpSym.Free;
  Ruler.Free;
end;

procedure TfrmPlatformDeploytment.FormResize(Sender: TObject);
begin
  pnlAlignToolBar.Width := round((pnlToolBar.Width - 273) / 2);
  grpCursorPosition.Width := round((pnlCursorPosition.Width - 22) / 2);
end;

procedure TfrmPlatformDeploytment.FormShow(Sender: TObject);
begin

  with FSelectedEnviArea.FGameArea do
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

  UpdatePlatformActivationList;

  FHookedPlatform := nil;
  FSelectedPlatform := nil;
  FOriginalPlatform := nil;

  btnHook.Click;
  tsHook.Show;

  UpdateSelectedPlatformData;
  btnApply.Enabled := False;

  if Ruler.FObjRulerVisible then
  begin
    if (Ruler.btn_PStart.Down) or (Ruler.btn_PEnd.Down)
      or (Ruler.btn_RStart.Down) then
    begin
      Map1.CurrentTool := miArrowTool;
      Map1.MousePointer := miCrossCursor;
    end;
  end;

  if Ruler.FChangeDraw then
  begin
    DrawRuler;
    Map1.Repaint;
  end;

  Map1.Repaint;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfrmPlatformDeploytment.btnBrowseClick(Sender: TObject);
begin
  frmPlatformDeploymentPickList := TfrmPlatformDeploymentPickList.Create(Self);
  try
    with frmPlatformDeploymentPickList do
    begin
      DeploymentIndex := FSelectedAssetDeployment.FData.Deployment_Index;
      ResourceAllocationIndex := FSelectedResourceAlloc.FData.Resource_Alloc_Index;
      SelectedEnviArea := FSelectedEnviArea;

      if ShowModal = mrOk then
      begin
      FSelectedPlatform := SelectedPlatform;

      HookContactInfoTraineeDisplay.Visible := True;
      btnRemove.Visible := True;
      btnApply.Visible := True;

      UpdateSelectedPlatformData;

      Map1.Repaint;
    end;
    end;
  finally
    frmPlatformDeploymentPickList.Free;
  end;

end;

procedure TfrmPlatformDeploytment.btnApplyClick(Sender: TObject);
begin
  FOriginalPlatform := nil;

  with FSelectedPlatform do
  begin
    if FActivation.Platform_Event_Index = 0 then
      dmTTT.InsertPlatformActivation(FActivation)
    else
      dmTTT.UpdatePlatformActivation(FActivation);
  end;

  UpdatePlatformActivationList;
  btnApply.Enabled := False;
  Map1.Repaint;
end;

procedure TfrmPlatformDeploytment.btnApproximatePositionClick(Sender: TObject);
begin
  if not Assigned(FSelectedPlatform) then
    Exit;

  FMapClickEvent := mceApproximatePosition;

  Map1.MousePointer := miCrossCursor;
  Map1.CurrentTool := miArrowTool;
end;

procedure TfrmPlatformDeploytment.btnCancelClick(Sender: TObject);
begin
  if Assigned(FOriginalPlatform) then
  begin
    FSelectedPlatform.FActivation := FOriginalPlatform.FActivation;
    FOriginalPlatform := nil;
  end;

  Close;
end;

procedure TfrmPlatformDeploytment.btnEditFormaionsClick(Sender: TObject);
begin
  with FormationEditorForm do
  begin
    SelectedAssetDeployment := FSelectedAssetDeployment;
    ShowModal;
  end;
end;

procedure TfrmPlatformDeploytment.btnEditWaypoints_WayPointGuidanceClick(Sender: TObject);
begin
  WaypointEditorPanelForm.ShowModal;
end;

procedure TfrmPlatformDeploytment.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmPlatformDeploytment.btnRemoveClick(Sender: TObject);
begin
  with FSelectedPlatform.FActivation do
    dmTTT.DeletePlatformActivation(2, Platform_Event_Index);

  UpdatePlatformActivationList;
  FSelectedPlatform := nil;
  UpdateSelectedPlatformData;
  Map1.Repaint;
end;

procedure TfrmPlatformDeploytment.btnScreenCaptureClick(Sender: TObject);
var
  b : TBitmap;
begin
  b := TBitmap.Create;
  fscrCapture := tfscrCapture.Create(nil);
  ScreenShot(b);
  fScrCapture.Image1.Picture.Assign(b);
  fScrCapture.ShowModal;
end;

procedure TfrmPlatformDeploytment.ScreenShot(const DestBitmap : TBitmap);
var
  DC : HDC;
begin
  DC := GetDC(GetDesktopWindow);
  try
    DestBitmap.Width := GetDeviceCaps(DC, HORZRES);
    DestBitmap.Height := GetDeviceCaps(DC, VERTRES);
    BitBlt(DestBitmap.Canvas.Handle, 0, 0, DestBitmap.Width, DestBitmap.Height,
      DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC(GetDesktopWindow, DC);
  end;
end;

procedure TfrmPlatformDeploytment.UpdateCursorPositionData(const X, Y: Integer);
var
  dx, dy, diffX, diffY : Double;
begin
  FConverter.ConvertToMap(X, Y, dx, dy);

  lBearingFCenter.Caption := FormatFloat('0.00',
    CalcBearing(FSelectedEnviArea.FGameArea.Game_Centre_Long,
    FSelectedEnviArea.FGameArea.Game_Centre_Lat, dx, dy));

  lDistanceFCenter.Caption := FormatFloat('0.00',
    CalcRange(FSelectedEnviArea.FGameArea.Game_Centre_Long,
    FSelectedEnviArea.FGameArea.Game_Centre_Lat, dx, dy));

  lPosLat.Caption := formatDM_latitude(dy);
  lPosLong.Caption := formatDM_longitude(dx);

  diffX := Abs(dx - FSelectedEnviArea.FGameArea.Game_Centre_Long) * 60;
  diffY := Abs(dy - FSelectedEnviArea.FGameArea.Game_Centre_Lat) * 60;

  if dy < FSelectedEnviArea.FGameArea.Game_Centre_Lat then
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm S'
  else
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm N';

  if dx < FSelectedEnviArea.FGameArea.Game_Centre_Long then
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm W'
  else
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm E';
end;

procedure TfrmPlatformDeploytment.UpdateHookedPlatformData;
begin
  HookContactInfoTraineeDisplay.Visible := Assigned(FHookedPlatform);
  btnRemove.Visible := Assigned(FHookedPlatform);
  btnApply.Visible := Assigned(FHookedPlatform);

  if not Assigned(FHookedPlatform) then
  begin
    lbHookedName.Caption := '-';
    lbHookedPosLat.Caption := '-';
    lbHookedPosLong.Caption := '-';
    lbHookedGridLat.Caption := '-';
    lbHookedGridLong.Caption := '-';

    Exit;
  end;

  with FHookedPlatform.FActivation do
  begin
    lbHookedName.Caption := FHookedPlatform.FData.Instance_Name;

    lbHookedPosLat.Caption := formatDMS_latt(Init_Position_Latitude);
    lbHookedPosLong.Caption := formatDMS_long(Init_Position_Longitude);

    if Init_Position_Latitude < FSelectedEnviArea.FGameArea.Game_Centre_Lat then
      lbHookedGridLat.Caption := FormatFloat('0.00',
        Init_Position_Cartesian_Y) + ' nm S'
    else
      lbHookedGridLat.Caption := FormatFloat('0.00',
        Init_Position_Cartesian_Y) + ' nm N';

    if Init_Position_Longitude < FSelectedEnviArea.FGameArea.Game_Centre_Long then
      lbHookedGridLong.Caption := FormatFloat('0.00',
        Init_Position_Cartesian_X) + ' nm W'
    else
      lbHookedGridLong.Caption := FormatFloat('0.00',
        Init_Position_Cartesian_X) + ' nm E';

    FSelectedPlatform := FHookedPlatform;
    UpdateSelectedPlatformData;
  end;
end;

procedure TfrmPlatformDeploytment.UpdatePlatformActivationList;
var
  i : Integer;
  platInst : TPlatform_Instance;
begin
  dmTTT.GetPlatformActivation(FSelectedAssetDeployment.FData.Deployment_Index, FPlatformActivationList);

  for i := 0 to FPlatformActivationList.Count - 1 do
  begin
    platInst := FPlatformActivationList.Items[i];

    if platInst.FData.Platform_Type = 1 then
      dmTTT.GetVehicleDef(platInst.FData.Vehicle_Index, platInst.Vehicle);
  end;
end;

procedure TfrmPlatformDeploytment.UpdateSelectedPlatformLateralData;
var
  pattern : TPredefined_Pattern;
  platInst : TPlatform_Instance;
begin
  with FSelectedPlatform.FActivation do
  begin
    case cbLateralGuid.ItemIndex of
      -1: grbDefaultKosong.BringToFront;
      0:
      begin
        grbStraightGuidance.BringToFront;

        edtCourse_StraightGuidance.Text := FormatFloat('000.0',
          Init_Command_Course);
        cmbGroundSpeed_StraightGuidance.ItemIndex := Init_Command_Ground;
      end;
      1:
      begin
        grbPatternOnSelfGuidance.BringToFront;

        if (Pattern_Instance_Index = 0) or
          not dmTTT.GetPredefinedPattern(Pattern_Instance_Index,
          FSelectedResourceAlloc.FData.Resource_Alloc_Index, pattern) then
          edtPredefinedPattern_PatternOnSelfGuidance.Text := '(None)'
        else
          edtPredefinedPattern_PatternOnSelfGuidance.Text :=
            pattern.FData.Pattern_Identifier;

        edtAngularOffset_PatternOnSelfGuidance.Text := FormatFloat('000.0',
          Angular_Offset);
      end;
      2:
      begin
        grbPatternOnTargetGuidance.BringToFront;

        if (Pattern_Instance_Index = 0) or
          not dmTTT.GetPredefinedPattern(Pattern_Instance_Index,
          FSelectedResourceAlloc.FData.Resource_Alloc_Index, pattern) then
          edtPredefinedPattern_PatternOnTargetGuidance.Text := '(None)'
        else
          edtPredefinedPattern_PatternOnTargetGuidance.Text :=
            pattern.FData.Pattern_Identifier;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_PatternOnTargetGuidance.Text := '(None)'
        else
          edtTarget_PatternOnTargetGuidance.Text :=
            platInst.FData.Instance_Name;

        edtAngularOffset_PatternOnTargetGuidance.Text := FormatFloat('000.0',
          Angular_Offset);
      end;
      3:
      begin
        grbPatternOnPointGuidance.BringToFront;

        if (Pattern_Instance_Index = 0) or
          not dmTTT.GetPredefinedPattern(Pattern_Instance_Index,
          FSelectedResourceAlloc.FData.Resource_Alloc_Index, pattern) then
          edtPredefinedPattern_PatternOnPointGuidance.Text := '(None)'
        else
          edtPredefinedPattern_PatternOnPointGuidance.Text :=
            pattern.FData.Pattern_Identifier;

        edtAngularOffset_PatternOnPointGuidance.Text := FormatFloat('000.0',
          Angular_Offset);

        edtLatAnchor_PatternOnPointGuidance.Text :=
          formatDM_latitude(Anchor_Latitude);
        edtLongAnchor_PatternOnPointGuidance.Text :=
          formatDM_longitude(Anchor_Longitude);

        if Anchor_Latitude < FSelectedEnviArea.FGameArea.Game_Centre_Lat then
          edtYanchor_PatternOnPointGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_Y) + ' nm S'
        else
          edtYanchor_PatternOnPointGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_Y) + ' nm N';

        if Anchor_Longitude < FSelectedEnviArea.FGameArea.Game_Centre_Long then
          edtXanchor_PatternOnPointGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_X) + ' nm W'
        else
          edtXanchor_PatternOnPointGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_X) + ' nm E';
      end;
      4:
      begin
        grbHelmGuidance.BringToFront;

        edtHelmAngle_HelmGuidance.Text := FormatFloat('000.0',
          Init_Command_Helm_Angle);
        cmbGroundSpeed_HelmGuidance.ItemIndex := Init_Command_Ground;
      end;
      5:
      begin
        grbReturnToBaseGuidance.BringToFront;

        cmbGroundSpeed_ReturnToBaseGuidance.ItemIndex := Init_Command_Ground;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtBase_ReturnToBaseGuidance.Text := '(None)'
        else
          edtBase_ReturnToBaseGuidance.Text := platInst.FData.Instance_Name;
      end;
      6:
      begin
        grbStationKeepOnTrackGuidance.BringToFront;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_StationKeepOnTrackGuidance.Text := '(None)'
        else
          edtTarget_StationKeepOnTrackGuidance.Text :=
            platInst.FData.Instance_Name;

        edtTargetRange_StationKeepOnTrackGuidance.Text := FormatFloat('0.0',
          Target_Range);
        edtAngleOffset_StationKeepOnTrackGuidance.Text := FormatFloat('000.0',
          Target_Angle_Offset);
        cbxAbsoluteOffsiteAngle_StationKeepOnTrackGuidance.Checked :=
          Boolean(Target_Angle_Type);
      end;
      7:
      begin
        grbStationKeepOnPositionGuidance.BringToFront;

        edtAnchorLat_StationKeepOnPositionGuidance.Text :=
          formatDM_latitude(Anchor_Latitude);
        edtAnchorLong_StationKeepOnPositionGuidance.Text :=
          formatDM_longitude(Anchor_Longitude);

        if Anchor_Latitude < FSelectedEnviArea.FGameArea.Game_Centre_Lat then
          edtAnchorY_StationKeepOnPositionGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_Y) + ' nm S'
        else
          edtAnchorY_StationKeepOnPositionGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_Y) + ' nm N';

        if Anchor_Longitude < FSelectedEnviArea.FGameArea.Game_Centre_Long then
          edtAnchorX_StationKeepOnPositionGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_X) + ' nm W'
        else
          edtAnchorX_StationKeepOnPositionGuidance.Text := FormatFloat('0.00',
            Anchor_Cartesian_X) + ' nm E';

        cbxDriftsOnCurrent_StationKeepOnPositionGuidance.Checked :=
          Boolean(Current_Drift);
      end;
      8:
      begin
        grbCircleOnTrackGuidance.BringToFront;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_CircleOnTrackGuidance.Text := '(None)'
        else
          edtTarget_CircleOnTrackGuidance.Text :=
            platInst.FData.Instance_Name;

        edtRadius_CircleOnTrackGuidance.Text := FormatFloat('0.0',
          Target_Range);
        cmbDirection_CircleOnTrackGuidance.ItemIndex := Direction_of_Travel;
        cmbGroundSpeed_CircleOnTrackGuidance.ItemIndex := Init_Command_Ground;
        edtRangeOffset_CircleOnTrackGuidance.Text := FormatFloat('0.0',
          Dynamic_Circle_Range_Offset);
        edtAngleOffset_CircleOnTrackGuidance.Text :=
          IntToStr(Dynamic_Circle_Angle_Offset);
        cbxAbsoluteOffsetAngle_CircleOnTrackGuidance.Checked :=
          Boolean(Dynamic_Circle_Offset_Mode);
      end;
      9:
      begin
        grbCircleOnPointGuidance.BringToFront;

        edtCentreLat_CircleOnPointGuidance.Text :=
          formatDM_latitude(Circle_Latitude);
        edtCentreLong_CircleOnPointGuidance.Text :=
          formatDM_longitude(Circle_Longitude);

        if Circle_Latitude < FSelectedEnviArea.FGameArea.Game_Centre_Lat then
          edtCentreY_CircleOnPointGuidance.Text := FormatFloat('0.00', Circle_Y)
            + ' nm S'
        else
          edtCentreY_CircleOnPointGuidance.Text := FormatFloat('0.00', Circle_Y)
            + ' nm N';

        if Circle_Longitude < FSelectedEnviArea.FGameArea.Game_Centre_Long then
          edtCentreX_CircleOnPointGuidance.Text := FormatFloat('0.00', Circle_X)
            + ' nm W'
        else
          edtCentreX_CircleOnPointGuidance.Text := FormatFloat('0.00', Circle_X)
            + ' nm E';

        edtRadius_CircleOnPointGuidance.Text := FormatFloat('0.0', Target_Range);
        cmbDirection_CircleOnPointGuidance.ItemIndex := Direction_of_Travel;
        cmbGroundSpeed_CircleOnPointGuidance.ItemIndex := Init_Command_Ground;
      end;
      10:
      begin
        grbZigZagGuidance.BringToFront;

        cmbLegLength_ZigZagGuidance.ItemIndex := Zig_Zag_Leg_Type;
        edtBaseCourse_ZigZagGuidance.Text := FormatFloat('000.0',
          Init_Command_Course);
        edtPeriod_ZigZagGuidance.Text := FormatFloat('0.0', Period_Distance);
        edtAmplitude_ZigZagGuidance.Text := FormatFloat('0.0', Amplitude_Distance);
        cmbGroundSpeed_ZigZagGuidance.ItemIndex := Init_Command_Ground;
      end;
      11:
      begin
        grbSinuateGuidance.BringToFront;

        edtBaseCourse_SinuateGuidance.Text := FormatFloat('000.0',
          Init_Command_Course);
        edtPeriod_SinuateGuidance.Text := FormatFloat('0.0', Period_Distance);
        edtAmplitude_SinuateGuidance.Text := FormatFloat('0.0',
          Amplitude_Distance);
        cmbGroundSpeed_SinuateGuidance.ItemIndex := Init_Command_Ground;
      end;
      12:
      begin
        grbShadowGuidance.BringToFront;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_ShadowGuidance.Text := '(None)'
        else
          edtTarget_ShadowGuidance.Text := platInst.FData.Instance_Name;

        edtTargetRange_ShadowGuidance.Text := FormatFloat('0.0', Target_Range);
      end;
      13:
      begin
        grbEngagementGuidance.BringToFront;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_EngagementGuidance.Text := '(None)'
        else
          edtTarget_EngagementGuidance.Text := platInst.FData.Instance_Name;

        edtTargetRange_EngagementGuidance.Text := FormatFloat('0.0', Target_Range);
      end;
      14:
      begin
        grbEvasionGuidance.BringToFront;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_EvasionGuidance.Text := '(None)'
        else
          edtTarget_EvasionGuidance.Text := platInst.FData.Instance_Name;
      end;
      15:
      begin
        grbOutRunGuidance.BringToFront;

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_OutRunGuidance.Text := '(None)'
        else
          edtTarget_OutRunGuidance.Text := platInst.FData.Instance_Name;
      end;
      16:
      begin
        grbWayPointGuidance.BringToFront;

        cmbType_WayPointGuidance.ItemIndex := Waypoint_Termination;
        edtRadius_WayPointGuidance.Text := FormatFloat('000.0',
          Termination_Heading);

        if (Guidance_Target = 0) or
          not dmTTT.getPlatformInstanceByIndex(Guidance_Target, platInst) then
          edtTarget_WayPointGuidance.Text := '(None)'
        else
          edtTarget_WayPointGuidance.Text := platInst.FData.Instance_Name;
      end;
    end;
  end;
end;

procedure TfrmPlatformDeploytment.UpdateSelectedPlatformData;
var
  time : TTime;
  diffX, diffY : Double;
begin
  dtpActivationTime.Enabled := Assigned(FSelectedPlatform);
  edLatPosition.Enabled := Assigned(FSelectedPlatform);
  edLongPosition.Enabled := Assigned(FSelectedPlatform);
  edVert.Enabled := Assigned(FSelectedPlatform);
  edHorz.Enabled := Assigned(FSelectedPlatform);
  edCourse.Enabled := Assigned(FSelectedPlatform);
  edHelmAngle.Enabled := Assigned(FSelectedPlatform);
  cbGroundSpeed.Enabled := Assigned(FSelectedPlatform);
  edAltitude.Enabled := Assigned(FSelectedPlatform);
  cbVerticalSpeed.Enabled := Assigned(FSelectedPlatform);
  cbLateralGuid.Enabled := Assigned(FSelectedPlatform);
  edAltitudeDepth.Enabled := Assigned(FSelectedPlatform);
  btnRemove.Enabled := Assigned(FSelectedPlatform);

  if Assigned(FSelectedPlatform) then
  begin
    with FSelectedPlatform do
    begin
      edPlatform.Text := FData.Instance_Name;

      with FActivation do
      begin
  //      dtpActivationTime.Time := 0;
        edLatPosition.Text := formatDMS_latt(Init_Position_Latitude);
        edLongPosition.Text := formatDMS_long(Init_Position_Longitude);

        if Init_Position_Latitude < FSelectedEnviArea.FGameArea.Game_Centre_Lat then
          edVert.Text := FormatFloat('0.00', Init_Position_Cartesian_Y) + ' nm S'
        else
          edVert.Text := FormatFloat('0.00', Init_Position_Cartesian_Y) + ' nm N';

        if Init_Position_Longitude < FSelectedEnviArea.FGameArea.Game_Centre_Long then
          edHorz.Text := FormatFloat('0.00', Init_Position_Cartesian_X) + ' nm W'
        else
          edHorz.Text := FormatFloat('0.00', Init_Position_Cartesian_X) + ' nm E';

        edCourse.Text := FormatFloat('000.0', Init_Course);
        edHelmAngle.Text := FormatFloat('000.0', Init_Helm_Angle);
        cbGroundSpeed.ItemIndex := Init_Ground_Speed;
        edAltitude.Text := FormatFloat('0.0', Init_Altitude);
        cbVerticalSpeed.ItemIndex := Init_Vertical_Speed;

        cbLateralGuid.ItemIndex := Init_Guidance_Type;
        UpdateSelectedPlatformLateralData;

        edAltitudeDepth.Text := FormatFloat('0.0', Init_Command_Altitude);
      end;
    end;
  end
  else
  begin
    edPlatform.Text := 'No Platform Selected';

//    dtpActivationTime.Time := 10;
    edLatPosition.Text := '';
    edLongPosition.Text := '';
    edVert.Text := '';
    edHorz.Text := '';
    edCourse.Text := '';
    edHelmAngle.Text := '';
    cbGroundSpeed.ItemIndex := -1;
    edAltitude.Text := '';
    cbVerticalSpeed.ItemIndex := -1;
    cbLateralGuid.ItemIndex := -1;
    UpdateSelectedPlatformLateralData;
    edAltitudeDepth.Text := '';
  end;
end;

{$ENDREGION}

{$REGION ' ToolBar Handle '}

procedure TfrmPlatformDeploytment.btnDecreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex - 1;
  cbbScaleChange(cbbScale);
end;

procedure TfrmPlatformDeploytment.btnIncreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex + 1;
  cbbScaleChange(cbbScale);
end;

procedure TfrmPlatformDeploytment.btnCenterHookClick(Sender: TObject);
var
  zoom : Double;
begin
  zoom := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);

  with FSelectedEnviArea.FGameArea do
    Map1.ZoomTo(zoom, Game_Centre_Long, Game_Centre_Lat);
end;

procedure TfrmPlatformDeploytment.btnZoomToolClick(Sender: TObject);
begin
  Map1.CurrentTool := miZoomInTool;
  Map1.MousePointer := miZoomInCursor;
end;

procedure TfrmPlatformDeploytment.btn_RulerClick(Sender: TObject);
begin
  Ruler.Show;
end;

procedure TfrmPlatformDeploytment.btnMoveToolClick(Sender: TObject);
begin
  FMapClickEvent := mceMove;
  Map1.CurrentTool := miPanTool;
  Map1.MousePointer := miPanCursor;
end;

procedure TfrmPlatformDeploytment.btnPreviousClick(Sender: TObject);
var
  i : Integer;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  found := False;

  if Assigned(FHookedPlatform) then
  begin
    for i := 0 to FPlatformActivationList.Count - 1 do
    begin
      platInst := FPlatformActivationList.Items[i];

      if platInst.FData.Platform_Instance_Index = FHookedPlatform.FData.
        Platform_Instance_Index then
      begin
        found := True;
        Break;
      end;
    end;
  end;

  if found then
  begin
    if i - 1 >= 0 then
      FHookedPlatform := FPlatformActivationList.Items[i - 1]
    else
      FHookedPlatform :=
        FPlatformActivationList.Items[FPlatformActivationList.Count - 1];

    UpdateHookedPlatformData;
    Map1.Repaint;
  end;
end;

procedure TfrmPlatformDeploytment.btnNextClick(Sender: TObject);
var
  i : Integer;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  found := False;

  if Assigned(FHookedPlatform) then
  begin
    for i := 0 to FPlatformActivationList.Count - 1 do
    begin
      platInst := FPlatformActivationList.Items[i];

      if platInst.FData.Platform_Instance_Index = FHookedPlatform.FData.
        Platform_Instance_Index then
      begin
        found := True;
        Break;
      end;
    end;
  end;

  if found then
  begin
    if i + 1 <= FPlatformActivationList.Count - 1 then
      FHookedPlatform := FPlatformActivationList.Items[i + 1]
    else
      FHookedPlatform := FPlatformActivationList.Items[0];

    UpdateHookedPlatformData;
    Map1.Repaint;
  end;
end;

procedure TfrmPlatformDeploytment.btnHookClick(Sender: TObject);
begin
  FMapClickEvent := mceHook;

  Map1.MousePointer := miDefaultCursor;
  Map1.CurrentTool := miArrowTool;

  Map1.CurrentTool := miArrowTool;
  Map1.MousePointer := miArrowCursor;
end;

{$ENDREGION}

{$REGION ' Map Handle '}

procedure TfrmPlatformDeploytment.Map1DrawUserLayer(ASender: TObject; const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull, RectInvalid: IDispatch);
var
  i, ix, iy : integer;
  platInst : TPlatform_Instance;
  color : TColor;

  ShipSimbol : TBitmapSymbol;

begin
  if not Assigned(FCanvas) then
    Exit;

  with FCanvas do
  begin
    Handle := hOutputDC;
    Pen.Color := RGB(200, 240, 100);
    Pen.Width := 3;

    for i := 0 to FPlatformActivationList.Count - 1 do
    begin
      platInst := FPlatformActivationList.Items[i];

      ShipSimbol := TBitmapSymbol.Create;
      with platInst do
      begin
        FConverter.ConvertToScreen(FActivation.Init_Position_Longitude,
          FActivation.Init_Position_Latitude, ix, iy);

//        FBmpSym.Center.X := ix;
//        FBmpSym.Center.Y := iy;

        ShipSimbol.Center.X := ix;
        ShipSimbol.Center.Y := iy;

        if Assigned(FHookedPlatform) and
          (platInst.FData.Platform_Instance_Index = FHookedPlatform.FData.
          Platform_Instance_Index) then
          color := RGB(255, 191, 128)
        else
          color := GetColor(FData.Force_Designation);

//        FBmpSym.LoadBitmap(ExtractFilePath(ParamStr(0)) + 'data\Bitmap\' +
//          GetSymbol(FData.Platform_Type, Vehicle.FData.Platform_Domain), color);
//        FBmpSym.Draw(FCanvas);

        ShipSimbol.LoadBitmap(ExtractFilePath(ParamStr(0)) + 'data\Bitmap\' +
          GetSymbol(FData.Platform_Type, Vehicle.FData.Platform_Domain), color);
        ShipSimbol.Draw(FCanvas);
      end;
    end;

    { Start_Ruler }

    DrawRuler;

//    if Ruler.FChangeDraw then
//    begin
//      DrawRuler;
//      Map1.Repaint;
//    end;

    { End_Ruler }
  end;
end;

procedure TfrmPlatformDeploytment.Map1MapViewChanged(Sender: TObject);
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

procedure TfrmPlatformDeploytment.Map1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  dx, dy, zoom : Double;
  platInst : TPlatform_Instance;
begin
  FMouseDown := Button = mbLeft;
  FConverter.ConvertToMap(X, Y, dx, dy);

  {$REGION ' Ruler Section '}
  { Start_Ruler }
  if Ruler.Visible and FMouseDown then
  begin
    if Ruler.FBtnActive = 1 then
    begin
      FS_PointXObj := X;
      FS_PointYObj := Y;
      Ruler.S_ValueOfLong := dx;
      Ruler.S_ValueOfLat := dy;
    end
    else
    begin
      FE_PointXObj := X;
      FE_PointYObj := Y;
      Ruler.E_ValueOfLong := dx;
      Ruler.E_ValueOfLat := dy;
    end;

    Ruler.Fill_LongLat;
    Ruler.Show;
  end;

  { End_Ruler }
  {$ENDREGION}

  if Button = mbRight then
  begin
    FMapClickEvent := mceHook;

    Map1.MousePointer := miDefaultCursor;
    Map1.CurrentTool := miArrowTool;
    Exit;
  end;

  case FMapClickEvent of
    mceHook:
    begin
      FHookedPlatform := FindNearestPlatform(X, Y);
      UpdateHookedPlatformData;
    end;
    mceMove:
    begin
      zoom := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);
      Map1.ZoomTo(zoom, dx, dy);
    end;
    mceApproximatePosition:
    begin
      if not btnApply.Enabled then
        FOriginalPlatform := FSelectedPlatform;

      btnApply.Enabled := True;

      with FSelectedPlatform.FActivation do
      begin
        Init_Position_Latitude := dy;
        Init_Position_Longitude := dx;
        Init_Position_Cartesian_X := Abs(Init_Position_Longitude -
          FSelectedEnviArea.FGameArea.Game_Centre_Long) * 60;
        Init_Position_Cartesian_Y := Abs(Init_Position_Latitude -
          FSelectedEnviArea.FGameArea.Game_Centre_Lat) * 60
      end;

      if Assigned(FHookedPlatform) and
        (FSelectedPlatform.FData.Platform_Instance_Index = FHookedPlatform.
          FData.Platform_Instance_Index) then
        UpdateHookedPlatformData;
    end;
    mceTargetingPlatform:
    begin
      if not btnApply.Enabled then
        FOriginalPlatform := FSelectedPlatform;

      btnApply.Enabled := True;

      platInst := FindNearestPlatform(X, Y);

      if Assigned(platInst) then
        FSelectedPlatform.FActivation.Guidance_Target := platInst.FData.
          Platform_Instance_Index;
    end;
    mceTargetingPosition:
    begin
      with FSelectedPlatform.FActivation do
      begin
        case Init_Guidance_Type of
          3, 7:
          begin
            Anchor_Latitude := dy;
            Anchor_Longitude := dx;
            Anchor_Cartesian_X := (dx -
              FSelectedEnviArea.FGameArea.Game_Centre_Long) * 60;
            Anchor_Cartesian_Y := (dy -
              FSelectedEnviArea.FGameArea.Game_Centre_Lat) * 60;
          end;
          9:
          begin
            Circle_Latitude := dy;
            Circle_Longitude := dx;
            Circle_X := (dx -
              FSelectedEnviArea.FGameArea.Game_Centre_Long) * 60;
            Circle_Y := (dy -
              FSelectedEnviArea.FGameArea.Game_Centre_Lat) * 60;
          end;
        end;
      end;
    end;
    mceScreenCapture:;
  end;

  UpdateSelectedPlatformData;
  Map1.Repaint;
end;

procedure TfrmPlatformDeploytment.Map1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  UpdateCursorPositionData(X, Y);
end;

procedure TfrmPlatformDeploytment.Map1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  dx,dy : Double;
begin
  //xxx := X;
  //yyy := Y;
  //Map1.ConvertCoord(xxx, yyy, xx, yy, miScreenToMap);
  //stateDrawing := false;

//  if statePan then
//  begin
//    statePan := false;
//    stateSelect := true;
//    stateMove := true;
//    Map1.CurrentTool := miPanTool;
//    Map1.MousePointer := miCrossCursor;
//  end;

 {if isCapturingScreen then
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
     BitBlt(TmpBmp.Canvas.Handle, 0, 0, Width, Height, fScrCapture.Image1.Canvas.Handle, map1.Left+ PDown.x,
     PDown.y, SRCCOPY);
     fCaptureRes.imgCaptureResult.AutoSize := false;
     fCaptureRes.imgCaptureResult.Picture.Bitmap.Assign(TmpBmp);
     fCaptureRes.Width := Width+10;
     fCaptureRes.Height := Height+fCaptureRes.panel3.height+10;
     fCaptureRes.ShowModal;

     if  fCaptureRes.recapture then  fCaptureRes.recapture:= false
     else isCapturingScreen := false;
     MouseIsDown :=false;
   end;

  end;

 end;
 gPoint.X := X;
 gPoint.Y := Y;
 map1.Repaint;     }

end;

procedure TfrmPlatformDeploytment.Map1DblClick(Sender: TObject);
begin
  if Assigned(FHookedPlatform) then
  begin
    FSelectedPlatform := FHookedPlatform;
    UpdateSelectedPlatformData;
  end;
end;

procedure TfrmPlatformDeploytment.LoadENC(aGeoset: string);
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

procedure TfrmPlatformDeploytment.LoadMap(aGeoset: String);
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

procedure TfrmPlatformDeploytment.dtpActivationTimeKeyPress(Sender: TObject; var Key: Char);
begin
  if not btnApply.Enabled then
    FOriginalPlatform := FSelectedPlatform;

  FSelectedPlatform.FActivation.Platform_Activation_Time :=
    DateTimeToInt(dtpActivationTime.DateTime);

  UpdateSelectedPlatformData;
  btnApply.Enabled := True;
end;

procedure TfrmPlatformDeploytment.edHorzKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if not btnApply.Enabled then
      FOriginalPlatform := FSelectedPlatform;

    btnApply.Enabled := True;

    with FSelectedPlatform.FActivation do
    begin
      Init_Position_Cartesian_X := Abs(LongGridToDiffX(edHorz.Text));
      Init_Position_Longitude := (LongGridToDiffX(edHorz.Text) / 60) +
        FSelectedEnviArea.FGameArea.Game_Centre_Long;
    end;

    UpdateSelectedPlatformData;
    Map1.Repaint;
  end;
end;

procedure TfrmPlatformDeploytment.edLatPositionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if not btnApply.Enabled then
      FOriginalPlatform := FSelectedPlatform;

    btnApply.Enabled := True;

    with FSelectedPlatform.FActivation do
    begin
      Init_Position_Latitude := dmsToLatt(edLatPosition.Text); //tidak memiliki pengecekan kesalahan format
      Init_Position_Cartesian_Y := Abs(Init_Position_Latitude -
        FSelectedEnviArea.FGameArea.Game_Centre_Lat) * 60
    end;

    UpdateSelectedPlatformData;
    Map1.Repaint;
  end;
end;

procedure TfrmPlatformDeploytment.edLongPositionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if not btnApply.Enabled then
      FOriginalPlatform := FSelectedPlatform;

    btnApply.Enabled := True;

    with FSelectedPlatform.FActivation do
    begin
      Init_Position_Longitude := dmsToLong(edLongPosition.Text); //tidak memiliki pengecekan kesalahan format
      Init_Position_Cartesian_X := Abs(Init_Position_Longitude -
        FSelectedEnviArea.FGameArea.Game_Centre_Long) * 60
    end;

    UpdateSelectedPlatformData;
    Map1.Repaint;
  end;
end;

procedure TfrmPlatformDeploytment.edVertKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if not btnApply.Enabled then
      FOriginalPlatform := FSelectedPlatform;

    btnApply.Enabled := True;

    with FSelectedPlatform.FActivation do
    begin
      Init_Position_Cartesian_Y := Abs(LatGridToDiffY(edVert.Text));
      Init_Position_Latitude := (LatGridToDiffY(edVert.Text) / 60) +
        FSelectedEnviArea.FGameArea.Game_Centre_Lat;
    end;

    UpdateSelectedPlatformData;
    Map1.Repaint;
  end;
end;

procedure TfrmPlatformDeploytment.cbbScaleChange(Sender: TObject);
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
//  zoom := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);
//  Map1.ZoomTo(zoom, Map1.CenterX, Map1.CenterY);
end;

procedure TfrmPlatformDeploytment.DrawRuler;
begin
  with FCanvas do
  begin
    if Ruler.FObjRulerVisible then
    begin
      if Ruler.FDrawStart then
        Ellipse(FS_PointXObj-5, FS_PointYObj-5, FS_PointXObj+5, FS_PointYObj+5);

      if Ruler.FDrawEnd then
      begin
        if Ruler.pgc_Ruler.ActivePageIndex = 0 then
        begin
          Ellipse(FE_PointXObj-5, FE_PointYObj-5, FE_PointXObj+5, FE_PointYObj+5);
          MoveTo(FS_PointXObj, FS_PointYObj);
          LineTo(FE_PointXObj, FE_PointYObj);
        end;
        if Ruler.pgc_Ruler.ActivePageIndex = 1 then
        begin
          Ellipse(Ruler.FObj_PointX-5, Ruler.FObj_PointY-5,Ruler.FObj_PointX+5,
            Ruler.FObj_PointY+5);
          MoveTo(FS_PointXObj, FS_PointYObj);
          LineTo(Ruler.FObj_PointX, Ruler.FObj_PointY);
        end;
      end;
    end;
  end;
end;

function TfrmPlatformDeploytment.FindNearestPlatform(const X, Y: Integer): TPlatform_Instance;
var
  i, ix, iy : Integer;
  platInst : TPlatform_Instance;
begin
  Result := nil;

  for i := 0 to FPlatformActivationList.Count - 1 do
  begin
    platInst := FPlatformActivationList.Items[i];

    with platInst do
    begin
      FConverter.ConvertToScreen(FActivation.Init_Position_Longitude,
        FActivation.Init_Position_Latitude, ix, iy);

      if (X >= ix - 8) and (X <= ix + 8) and
        (Y >= iy - 8) and (Y <= iy + 8) then
      begin
        Result := platInst;
        Break;
      end;
    end;
  end;
end;

procedure TfrmPlatformDeploytment.spbtnAngularOffset_PatternOnSelfGuidanceClick(Sender: TObject);
begin
  fOtherSingle.ShowModal;
end;

procedure TfrmPlatformDeploytment.spbtnPredefinedPattern_PatternOnPointGuidanceClick(Sender: TObject);
begin
  fOtherSingle.ShowModal;
end;

procedure TfrmPlatformDeploytment.spbtnPredefinedPattern_PatternOnTargetGuidanceClick(Sender: TObject);
begin
  fOtherSingle.ShowModal;
end;

procedure TfrmPlatformDeploytment.PlatformDataChange(Sender: TObject);
begin
  if not btnApply.Enabled then
    FOriginalPlatform := FSelectedPlatform;

  btnApply.Enabled := True;

  with FSelectedPlatform.FActivation do
  begin
    case TComboBox(Sender).Tag of
      0: Init_Ground_Speed := cbGroundSpeed.ItemIndex;
      1: Init_Vertical_Speed := cbVerticalSpeed.ItemIndex;
      2:
      begin
        Init_Guidance_Type := cbLateralGuid.ItemIndex;
        UpdateSelectedPlatformLateralData;
      end;
      3: Init_Command_Ground := TComboBox(Sender).ItemIndex; //SLG, HG,
      4: Direction_of_Travel := TComboBox(Sender).ItemIndex;
      5: Zig_Zag_Leg_Type := cmbLegLength_ZigZagGuidance.ItemIndex;
      6: Waypoint_Termination := cmbType_WayPointGuidance.ItemIndex;
    end;
  end;
end;

procedure TfrmPlatformDeploytment.PlatformDataClick(Sender: TObject);
begin
  if not Assigned(FSelectedPlatform) then
    Exit;

  if Sender is TSpeedButton then
  begin
    case TSpeedButton(Sender).Tag of
      0:
      begin

      end;
      1:
      begin
        FMapClickEvent := mceTargetingPlatform;

        Map1.MousePointer := miCrossCursor;
        Map1.CurrentTool := miArrowTool;
      end;
      2:
      begin
        FMapClickEvent := mceTargetingPosition;

        Map1.MousePointer := miCrossCursor;
        Map1.CurrentTool := miArrowTool;
      end;
    end;
  end
  else if Sender is TCheckBox then
  begin
    with FSelectedPlatform.FActivation do
    begin
      case TCheckBox(Sender).Tag of
        0: Target_Angle_Type := Ord(TCheckBox(Sender).Checked);
        1: Current_Drift := Ord(TCheckBox(Sender).Checked);
        2: Dynamic_Circle_Offset_Mode := Ord(TCheckBox(Sender).Checked);
      end;
    end;
  end;
end;

procedure TfrmPlatformDeploytment.PlatformDataKeyPress(Sender: TObject;var Key: Char);
var
  value : Double;
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
    Key := #0;

  btnApply.Enabled := True;

  if Key = #13 then
  begin
    if not btnApply.Enabled then
      FOriginalPlatform := FSelectedPlatform;

    value := StrToFloat(TEdit(Sender).Text);

    with FSelectedPlatform.FActivation do
    begin
      case TEdit(Sender).Tag of
        0:
        begin
          if value >= 360 then
            value := 0;

          Init_Course := value;
        end;
        1:
        begin
          if value >= 360 then
            value := 0;

          Init_Helm_Angle := value;
        end;
        2: Init_Altitude := value;
        3:
        begin
          if value >= 360 then
            value := 0;

          Init_Command_Course := value;
        end;
        4:
        begin
          if value >= 360 then
            value := 0;

          Angular_Offset := value;
        end;
        5:
        begin
          if value >= 360 then
            value := 0;

          Init_Command_Helm_Angle := value;
        end;
        6: Target_Range := value;
        7:
        begin
          if value >= 360 then
            value := 0;

          Target_Angle_Offset := value;
        end;
        8: Radius_of_Travel := value;
        9: Dynamic_Circle_Range_Offset := value;
        10:
        begin
          if value >= 360 then
            value := 0;

          Dynamic_Circle_Angle_Offset := Round(value);
        end;
        11: Period_Distance := value;
        12: Amplitude_Distance := value;
        13:
        begin
          if value >= 360 then
            value := 0;

          Termination_Heading := value;
        end;
        14: Init_Command_Altitude := value;
      end;
    end;

    UpdateSelectedPlatformData;
  end;
end;

function TfrmPlatformDeploytment.GetSymbol(const aType, aDomain: Integer): string;
begin
  case aType of
    1:
    begin
      case aDomain of
        0: Result := 'AirFriend.bmp';
        1: Result := 'SurfaceFriend.bmp';
        2: Result := 'SubsurfaceFriend.bmp';
        3: Result := 'LandFriend.bmp';
        4: Result := 'LandFriend.bmp';
      end;
    end;
    2: Result := 'MissileNeutral.bmp';
    3: Result := 'TorpedoNeutral.bmp';
    4: Result := 'SonobuoyNeutral.bmp';
    5: Result := 'MineNeutral.bmp';
    6: Result := 'AirFriend.bmp';
  end;
end;

function TfrmPlatformDeploytment.GetColor(const aForce: Integer): TColor;
begin
  case aForce of
    1: Result := clRed;
    2: Result := clYellow;
    3: Result := clBlue;
    4: Result := clGreen;
    5: Result := clWhite;
    6: Result := clBlack;
  else
    Result := clWhite;
  end;
end;

{$ENDREGION}

end.
