unit ufTacticalDisplay;

interface

uses

  Tlhelp32, ShellAPI,MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, OleCtrls, Menus,
  ToolWin, ImgList, uDBAssetObject, uDBScenario,
  ActnMan, uSimObjects, tttData, uT3GroupList,
  VrControls, uLaunchPlatform,
  ufmWeapon, ufmCounterMeasure, ufmFireControl, ufmEMCON,
  uGameData_TTT, uT3Unit, uT3Vehicle, uDBAsset_Vehicle, ufLog, uT3Weapon,
  uT3Missile, uT3Torpedo, uSettingCoordinate,
  uT3DetectedTrack, VrAnalog, uT3CounterMeasure, uT3MissileDetail,
  uT3MissileEnvironment,
  {Hambali uDynamicOverlay,}uOverlayTemplateEditor, uDrawOverlay, ufmMapWindow, ufmSensor,
  ufmPlatformGuidance, ufmControlled, ufmOwnShip,
  uChangeSonobuoyDepth, uChangeSonobuoyEndurance, uTransferSonobuoy,
  uChangeTorpedoDepth, uChangeTorpedoCourse, uT3DataLink, System.ImageList, CommCtrl ;

type

  TfrmTacticalDisplay = class(TForm)
    pnlTop: TPanel;
    pnlLeft: TPanel;
    pnlMap: TPanel;
    pnlBottom: TPanel;
    HookContactInfoTraineeDisplay: TPageControl;
    tsHook: TTabSheet;
    tsDetails: TTabSheet;
    tsDetection: TTabSheet;
    tsIFF: TTabSheet;
    TacticalDisplayControlPanel: TPageControl;
    lvTrackTable: TListView;
    tsOwnShip: TTabSheet;
    tsPlatformGuidance: TTabSheet;
    tsSensor: TTabSheet;
    tsWeapon: TTabSheet;
    tsCounterMeasure: TTabSheet;
    tsFireControl: TTabSheet;
    tsEMCON: TTabSheet;
    MainMenu1: TMainMenu;
    View1: TMenuItem;
    Display1: TMenuItem;
    Tactical1: TMenuItem;
    Tote1: TMenuItem;
    mnFullScreen1: TMenuItem;
    Scale1: TMenuItem;
    Increase1: TMenuItem;
    Decrease1: TMenuItem;
    Zoom1: TMenuItem;
    Centre1: TMenuItem;
    Settings2: TMenuItem;
    OnHookedTrack2: TMenuItem;
    OnGameCentre1: TMenuItem;
    Pan1: TMenuItem;
    RangeRings1: TMenuItem;
    Settings1: TMenuItem;
    OnHookedTrack1: TMenuItem;
    Filters1: TMenuItem;
    Overrides1: TMenuItem;
    History1: TMenuItem;
    Hook1: TMenuItem;
    Next1: TMenuItem;
    Previous1: TMenuItem;
    rackTable1: TMenuItem;
    Add1: TMenuItem;
    Remove1: TMenuItem;
    AssumeControl1: TMenuItem;
    HookedTrack1: TMenuItem;
    CommandPlatform1: TMenuItem;
    Track1: TMenuItem;
    Characteristics1: TMenuItem;
    Domain1: TMenuItem;
    A1: TMenuItem;
    Surface1: TMenuItem;
    Subsurface1: TMenuItem;
    Land1: TMenuItem;
    General1: TMenuItem;
    IDentity1: TMenuItem;
    PlatformType1: TMenuItem;
    Propulsion1: TMenuItem;
    Edit1: TMenuItem;
    MErge1: TMenuItem;
    Split1: TMenuItem;
    Datalink1: TMenuItem;
    o1: TMenuItem;
    From1: TMenuItem;
    Number1: TMenuItem;
    Automatic1: TMenuItem;
    Manual1: TMenuItem;
    History2: TMenuItem;
    InitiateTMA1: TMenuItem;
    Sonobuoys1: TMenuItem;
    OperatingMode1: TMenuItem;
    Depth1: TMenuItem;
    Monitor1: TMenuItem;
    Destroy1: TMenuItem;
    Break1: TMenuItem;
    RangeControlandBlindZone1: TMenuItem;
    ClearforHookedTracks1: TMenuItem;
    ClearforAllTracks1: TMenuItem;
    Remove2: TMenuItem;
    ools1: TMenuItem;
    Cursor1: TMenuItem;
    Anchor1: TMenuItem;
    Origin1: TMenuItem;
    Select1: TMenuItem;
    SendEndPointExactly1: TMenuItem;
    Overlays1: TMenuItem;
    Formation1: TMenuItem;
    argetIntercept1: TMenuItem;
    argetPriorityA1: TMenuItem;
    Opotions1: TMenuItem;
    Help1: TMenuItem;
    Contents1: TMenuItem;
    About1: TMenuItem;
    lbTrackHook: TLabel;
    Label1: TLabel;
    lbNameHook: TLabel;
    lbClassHook: TLabel;
    Label2: TLabel;
    lbBearingHook: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbRangeHook: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbPositionHook1: TLabel;
    lbCourseHook: TLabel;
    lbPositionHook2: TLabel;
    lbGround: TLabel;
    lbAltitude: TLabel;
    lbFormation: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText10: TStaticText;
    lbTrackDetails: TLabel;
    Label11: TLabel;
    lbNameDetails: TLabel;
    lbClassDetails: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lbDomain: TLabel;
    Label15: TLabel;
    lbPropulsion: TLabel;
    lbIdentifier: TLabel;
    lbDoppler: TLabel;
    lbSonarClass: TLabel;
    lbTrackType: TLabel;
    lbTypeDetails: TLabel;
    lbMergeStatus: TLabel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    lbTrackDetection: TLabel;
    Label16: TLabel;
    lbNameDetection: TLabel;
    lbClassDetection: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lbFirstDetected: TLabel;
    Label20: TLabel;
    lbLastDetected: TLabel;
    lbOwner: TLabel;
    lbDetectionDetectionType: TLabel;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    lbDetectionType: TStaticText;
    lbTrackIff: TLabel;
    Label88: TLabel;
    lbNameIff: TLabel;
    lbClassIff: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    lbMode2Iff: TLabel;
    Label95: TLabel;
    lbMode1Iff: TLabel;
    lbMode3CIff: TLabel;
    lbMode3Iff: TLabel;
    lbMode4Iff: TLabel;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    tbtnFullScreen: TToolButton;
    ToolButton2: TToolButton;
    toolbtnDecreaseScale: TToolButton;
    toolbtnIncreaseScale: TToolButton;
    toolbtnZoom: TToolButton;
    ToolBtnCentreOnHook: TToolButton;
    ToolBtnCentreOnGameCentre: TToolButton;
    ToolButton8: TToolButton;
    ToolBtnPan: TToolButton;
    toolBtnFilterRangeRings: TToolButton;
    ToolBtnRangeRingsOnHook: TToolButton;
    ToolBtnHookPrevious: TToolButton;
    ToolBtnHookNext: TToolButton;
    ToolBtnAddToTrackTable: TToolButton;
    ToolButton15: TToolButton;
    ToolBtnRemoveFromTrackTable: TToolButton;
    ToolBtnAssumeControlOfHook: TToolButton;
    ToolButton18: TToolButton;
    ToolBtnEdit: TToolButton;
    ToolBtnTrackHistory: TToolButton;
    ToolButton21: TToolButton;
    cbAssumeControl: TComboBox;
    ToolBtnAddSonobuoy: TToolButton;
    ToolButton23: TToolButton;
    ToolBtnRemoveSonobuoy: TToolButton;
    ToolButton25: TToolButton;
    ToolBtnTransferSonobuoy: TToolButton;
    ToolButton27: TToolButton;
    tBtnGameFreeze: TToolButton;
    tbtnStartGame: TToolButton;
    tBtnDoubleSpeed: TToolButton;
    ToolButton31: TToolButton;
    ToolBtnFind: TToolButton;
    ToolBtnAnnotate: TToolButton;
    ToolBtnSnapshot: TToolButton;
    ToolButton35: TToolButton;
    ToolBtnAddPlatform: TToolButton;
    ToolBtnRemovePlatformOrTrack: TToolButton;
    ToolBtnFilterCursor: TToolButton;
    ToolBtnAnchorCursor: TToolButton;
    ToolBtnOptions: TToolButton;
    ToolBtnContents: TToolButton;
    ToolBtnMerge: TToolButton;
    ToolBtnSplit: TToolButton;
    Panel1: TPanel;
    Label55: TLabel;
    Label56: TLabel;
    lbCourseHooked: TLabel;
    lbSpeedHooked: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    lbRangeRings: TLabel;
    Label64: TLabel;
    lblRangeScale: TLabel;
    Label66: TLabel;
    lbRangeAnchor: TLabel;
    Label68: TLabel;
    lbBearingAnchor: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label72: TLabel;
    lbLongitude: TLabel;
    lbLatitude: TLabel;
    lbY: TLabel;
    lbX: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    cbSetScale: TComboBox;
    StatusBar1: TStatusBar;
    ImageList2: TImageList;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label35: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    StaticText25: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    StaticText52: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    StaticText59: TStaticText;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    lbColor: TLabel;
    fmMapWindow1: TfmMapWindow;
    fmOwnShip1: TfmOwnShip;
    fmPlatformGuidance1: TfmPlatformGuidance;
    fmWeapon1: TfmWeapon;
    fmCounterMeasure1: TfmCounterMeasure;
    fmFireControl1: TfmFireControl;
    fmEMCON1: TfmEMCON;
    fmSensor1: TfmSensor;
    pmPopupMenu1: TPopupMenu;
    mniStandardPoint1: TMenuItem;
    mniAir1: TMenuItem;
    mniSurface1: TMenuItem;
    mniSubsurface1: TMenuItem;
    mniLand1: TMenuItem;
    mniNewStandardBearing1: TMenuItem;
    mniAir2: TMenuItem;
    mniSurface2: TMenuItem;
    mniSubsurface2: TMenuItem;
    mniLand2: TMenuItem;
    mniGeneral1: TMenuItem;
    mniNewStandard1: TMenuItem;
    mniAir3: TMenuItem;
    mniSurface3: TMenuItem;
    mniSubsurface3: TMenuItem;
    mniLand3: TMenuItem;
    N1: TMenuItem;
    mniNewSpecialPointGeneral1: TMenuItem;
    mniGeneral2: TMenuItem;
    mniBouy1: TMenuItem;
    mniDatalinkReferencePoint1: TMenuItem;
    mniDesse1: TMenuItem;
    mniESM1: TMenuItem;
    mniGroundZero1: TMenuItem;
    mniManInWater1: TMenuItem;
    mniMaritimeHeadquarter1: TMenuItem;
    mniMineHazard1: TMenuItem;
    mniNavigationalHazard1: TMenuItem;
    mniOilRig1: TMenuItem;
    mniStation1: TMenuItem;
    mniTracticalGridOriginal1: TMenuItem;
    mniNewSpecialPointAir1: TMenuItem;
    mniAirGeneral1: TMenuItem;
    mniAirborneEarlyWarning1: TMenuItem;
    mniBullseye1: TMenuItem;
    mniCombatAirPatrol1: TMenuItem;
    mniDitchedAircraft1: TMenuItem;
    mniGate1: TMenuItem;
    mniNewSpecialPointASW1: TMenuItem;
    mniASWGeneral1: TMenuItem;
    mniBriefContact1: TMenuItem;
    mniDatum1: TMenuItem;
    mniKingpin1: TMenuItem;
    mniRiser1: TMenuItem;
    mniSearchCentre1: TMenuItem;
    mniSinker1: TMenuItem;
    mniWeaponEntryPoint1: TMenuItem;
    mniWreck1: TMenuItem;
    N2: TMenuItem;
    mniConvertRTtoNRT1: TMenuItem;
    N3: TMenuItem;
    mniCharacteristic1: TMenuItem;
    mniDomain1: TMenuItem;
    mniAir4: TMenuItem;
    mniSurface4: TMenuItem;
    mniSubsurface4: TMenuItem;
    mniLand4: TMenuItem;
    mniGeneral4: TMenuItem;
    mniIdentity1: TMenuItem;
    mniPending1: TMenuItem;
    mniUnknowns1: TMenuItem;
    mniAssumedFriend1: TMenuItem;
    mniFriend1: TMenuItem;
    mniNeutral1: TMenuItem;
    mniSuspect1: TMenuItem;
    mniHostile1: TMenuItem;
    mniPlatformType1: TMenuItem;
    mniAircraftCarrier1: TMenuItem;
    mniAmphibius1: TMenuItem;
    mniAuxiliary1: TMenuItem;
    mniChaff1: TMenuItem;
    mniCruiserGuidedMissileCGCGN1: TMenuItem;
    mniDestroyer1: TMenuItem;
    mniDestroyerGuidedMissle1: TMenuItem;
    mniFrigateFF1: TMenuItem;
    mniFrigateGuidedMissleFFG1: TMenuItem;
    mniInfra1: TMenuItem;
    mniJammerDecoy1: TMenuItem;
    mniMerchant1: TMenuItem;
    mniPropulsionType1: TMenuItem;
    N5: TMenuItem;
    mniEdit1: TMenuItem;
    N4: TMenuItem;
    mniMerge1: TMenuItem;
    mniSplit1: TMenuItem;
    N6: TMenuItem;
    mniDatalink1: TMenuItem;
    mniTo1: TMenuItem;
    mniFrom1: TMenuItem;
    N7: TMenuItem;
    mniTrackNumber1: TMenuItem;
    mniAutomatic1: TMenuItem;
    mniManual1: TMenuItem;
    mniTrackHistory1: TMenuItem;
    N8: TMenuItem;
    mniIntiate1: TMenuItem;
    mniBreakAllFireControl1: TMenuItem;
    mniClearRing1: TMenuItem;
    N9: TMenuItem;
    mniRemove1: TMenuItem;
    N10: TMenuItem;
    mniCentre1: TMenuItem;
    mniRangeRing1: TMenuItem;
    mniTrackTable1: TMenuItem;
    mniAdd1: TMenuItem;
    mniRemove2: TMenuItem;
    mniAnchor1: TMenuItem;
    imglistPM: TImageList;
    mniMainwarfare1: TMenuItem;
    mniPatrolCraftPTPTG1: TMenuItem;
    mniUtilityVessel1: TMenuItem;
    mniOther1: TMenuItem;
    lbtext3: TStaticText;
    pnlDepth: TPanel;
    lb1: TStaticText;
    lbDepth: TLabel;
    lb2: TLabel;
    pnlAltitude: TPanel;
    lb4: TLabel;
    lb6: TStaticText;
    lb5: TStaticText;
    lb3: TStaticText;
    lbDamage: TLabel;
    lb7: TStaticText;
    lb8: TLabel;
    VrAnalogClock1: TVrAnalogClock;
    Image1: TImage;
    imgListButton: TImageList;
    Label10: TLabel;
    Label21: TLabel;
    pnlStatusRed: TPanel;
    pnlStatusYellow: TPanel;
    Pending1: TMenuItem;
    Unknown1: TMenuItem;
    AssumedFriend1: TMenuItem;
    Friend1: TMenuItem;
    Neutral1: TMenuItem;
    Suspect1: TMenuItem;
    Hostile1: TMenuItem;
    AircraftCarrierCVCVN1: TMenuItem;
    AmphibiousWarfare1: TMenuItem;
    Auxiliary1: TMenuItem;
    Chaff1: TMenuItem;
    CruiserGuidedMissileCGCGN1: TMenuItem;
    Destroyer1: TMenuItem;
    DestroyerGuidedMissileDOG1: TMenuItem;
    FrigateFF1: TMenuItem;
    FrigateGuidedMissileFFG1: TMenuItem;
    InfraredDecoy1: TMenuItem;
    JammerDecoy1: TMenuItem;
    Merchant1: TMenuItem;
    MainWarfare1: TMenuItem;
    PatrolCraftPTPTG1: TMenuItem;
    UtilityVessel1: TMenuItem;
    Other1: TMenuItem;
    N11: TMenuItem;
    mniSonobuoys: TMenuItem;
    Platform1: TMenuItem;
    mniOperatingMode: TMenuItem;
    mniDepth: TMenuItem;
    mniEndurance: TMenuItem;
    N12: TMenuItem;
    mniMonitor: TMenuItem;
    N13: TMenuItem;
    mniDestroy: TMenuItem;
    Active1: TMenuItem;
    Passive1: TMenuItem;
    Off1: TMenuItem;
    Add2: TMenuItem;
    Remove3: TMenuItem;
    ransfer1: TMenuItem;
    Label22: TLabel;
    tmMove: TTimer;
    pnlInfoDepth: TPanel;
    StaticText23: TStaticText;
    StaticText22: TStaticText;
    mniTorpedo: TMenuItem;
    mniTorpedoCourse: TMenuItem;
    mniTorpedoDepth: TMenuItem;
    btnDepthInfo: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure lvTrackTableSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure ToolBtnPanClick(Sender: TObject);
    procedure cbSetScaleChange(Sender: TObject);
    procedure tbtnScaleDecreaseClick(Sender: TObject);
    procedure tbtnScaleIncreaseClick(Sender: TObject);
    procedure ToolBtnCentreOnHookClick(Sender: TObject);
    procedure OnHookedTrack2Click(Sender: TObject);
    procedure Settings2Click(Sender: TObject);
    procedure History2Click(Sender: TObject);
    procedure tbtnFullScreenClick(Sender: TObject);
    procedure ToolBtnCentreOnGameCentreClick(Sender: TObject);
    procedure Select1Click(Sender: TObject);
    procedure ToolBtnHookPreviousClick(Sender: TObject);
    procedure ToolBtnHookNextClick(Sender: TObject);
    procedure ToolBtnAddToTrackTableClick(Sender: TObject);
    procedure ToolBtnRemoveFromTrackTableClick(Sender: TObject);
    procedure ToolBtnFilterCursorClick(Sender: TObject);
    procedure ToolBtnAnchorCursorClick(Sender: TObject);
    procedure Map2Exit(Sender: TObject);
    procedure toolBtnFilterRangeRingsClick(Sender: TObject);
    procedure ToolBtnRangeRingsOnHookClick(Sender: TObject);
    procedure toolbtnZoomClick(Sender: TObject);
    procedure ToolBtnOptionsClick(Sender: TObject);
    procedure cbAssumeControlChange(Sender: TObject);
    procedure Map2DblClick(Sender: TObject);
    procedure ToolBtnTrackHistoryClick(Sender: TObject);
    procedure OnVisualShowClick(Sender: TObject);
    procedure ToolBtnAddPlatformClick(Sender: TObject);
    procedure Map2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MapViewChanged(Sender: TObject);
    procedure ToolBtnAssumeControlOfHookClick(Sender: TObject);
    procedure tbtnStartGameClick(Sender: TObject);
    procedure tBtnGameFreezeClick(Sender: TObject);
    procedure tBtnDoubleSpeedClick(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure fmPlatformGuidance1whHeadingChange(Sender: TObject);
    procedure fmPlatformGuidance1edtStraightLineOrderedHeadingKeyPress
      (Sender: TObject; var Key: Char);
    procedure fmPlatformGuidance1edtStraightLineOrderedGroundSpeedKeyPress
      (Sender: TObject; var Key: Char);
    procedure fmPlatformGuidance1edOrderAltitudeKeyPress(Sender: TObject;
      var Key: Char);
    procedure fmPlatformGuidance1btnWaypointClick(Sender: TObject);
    procedure fmPlatformGuidance1SpeedButton2Click(Sender: TObject);
    procedure fmOwnShip1btnLaunchClick(Sender: TObject);
    procedure ToolBtnRemovePlatformOrTrackClick(Sender: TObject);
    procedure fmPlatformGuidance1mnWaypoint1Click(Sender: TObject);
    procedure fmPlatformGuidance1mnCircleOnTrackClick(Sender: TObject);
    procedure OnRadarBtnClick(Sender: TObject);
    procedure OnSonarBtnClick(Sender: TObject);
    procedure OnSoonobuoyBtnClick(Sender: TObject);
    procedure fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
      (Sender: TObject);
    procedure btnMADOnClick(Sender: TObject);
    procedure btnEOOnClick(Sender: TObject);
    procedure btnESMOnClick(Sender: TObject);
    procedure btnFireControlOnClick(Sender: TObject);
    procedure fmSensor1sbIFFInterrogatorControlModeOnClick(Sender: TObject);
    procedure fmSensor1cbbtnIFFInterrogatorMode1Click(Sender: TObject);
    procedure fmSensor1edtIFFInterrogatorMode1KeyPress(Sender: TObject;
      var Key: Char);
    procedure fmWeapon1btnSurfaceToAirTargetTrackClick(Sender: TObject);
    procedure fmWeapon1btnlWireGuidedTorpedoTargetTrackClick(Sender: TObject);
    procedure fmWeapon1btnWakeHomingTargetTrackClick(Sender: TObject);
    procedure fmWeapon1btnAirDroppesTargetTrackClick(Sender: TObject);
    procedure fmWeapon1btnDefaultAirDroppedSearchDepthClick(Sender: TObject);
    procedure fmWeapon1btnBombTargetClick(Sender: TObject);
    procedure fmWeapon1btnCIWSTargetTrackClick(Sender: TObject);
    procedure fmWeapon1btnMinesDeployClick(Sender: TObject);
    procedure fmWeapon1btnSurfaceToSurfaceMissileTargetTrackDetailsClick
      (Sender: TObject);
    procedure Tactical1Click(Sender: TObject);
    procedure Tote1Click(Sender: TObject);
    procedure btnGunCIWSOnCLick(Sender: TObject);
    procedure fmWeapon1btnTargetSearchClick(Sender: TObject);
    procedure fmWeapon1sbStraightRunningTorpedosDisplayRangeShowClick
      (Sender: TObject);
    procedure ToolBtnSnapshotClick(Sender: TObject);
    procedure mniCentre1Click(Sender: TObject);
    procedure mniRangeRing1Click(Sender: TObject);
    procedure mniAnchor1Click(Sender: TObject);
    procedure mniRemove1Click(Sender: TObject);
    procedure mniAir4Click(Sender: TObject);
    procedure mniSurface4Click(Sender: TObject);
    procedure mniSubsurface4Click(Sender: TObject);
    procedure mniLand4Click(Sender: TObject);
    procedure mniGeneral4Click(Sender: TObject);
    procedure mniPending1Click(Sender: TObject);
    procedure mniUnknowns1Click(Sender: TObject);
    procedure mniAssumedFriend1Click(Sender: TObject);
    procedure mniFriend1Click(Sender: TObject);
    procedure mniNeutral1Click(Sender: TObject);
    procedure mniSuspect1Click(Sender: TObject);
    procedure mniHostile1Click(Sender: TObject);
    procedure mniAircraftCarrier1Click(Sender: TObject);
    procedure mniAmphibius1Click(Sender: TObject);
    procedure mniAuxiliary1Click(Sender: TObject);
    procedure mniChaff1Click(Sender: TObject);
    procedure mniCruiserGuidedMissileCGCGN1Click(Sender: TObject);
    procedure mniDestroyer1Click(Sender: TObject);
    procedure mniDestroyerGuidedMissle1Click(Sender: TObject);
    procedure mniFrigateFF1Click(Sender: TObject);
    procedure mniFrigateGuidedMissleFFG1Click(Sender: TObject);
    procedure mniInfra1Click(Sender: TObject);
    procedure mniJammerDecoy1Click(Sender: TObject);
    procedure mniMerchant1Click(Sender: TObject);
    procedure mniMainwarfare1Click(Sender: TObject);
    procedure mniPatrolCraftPTPTG1Click(Sender: TObject);
    procedure mniUtilityVessel1Click(Sender: TObject);
    procedure mniOther1Click(Sender: TObject);
    procedure mniEdit1Click(Sender: TObject);
    procedure mniManual1Click(Sender: TObject);
    procedure mniAir1Click(Sender: TObject);
    procedure mniMerge1Click(Sender: TObject);
    procedure mniSurface1Click(Sender: TObject);
    procedure mniSubsurface1Click(Sender: TObject);
    procedure mniLand1Click(Sender: TObject);
    procedure ToolBtnEditClick(Sender: TObject);
    procedure mniAir3Click(Sender: TObject);
    procedure mniSurface3Click(Sender: TObject);
    procedure mniSubsurface3Click(Sender: TObject);
    procedure mniLand3Click(Sender: TObject);
    procedure mniBouy1Click(Sender: TObject);
    procedure mniGeneral2Click(Sender: TObject);
    procedure mniDatalinkReferencePoint1Click(Sender: TObject);
    procedure mniDesse1Click(Sender: TObject);
    procedure mniESM1Click(Sender: TObject);
    procedure mniGroundZero1Click(Sender: TObject);
    procedure mniManInWater1Click(Sender: TObject);
    procedure mniMaritimeHeadquarter1Click(Sender: TObject);
    procedure mniMineHazard1Click(Sender: TObject);
    procedure mniNavigationalHazard1Click(Sender: TObject);
    procedure mniOilRig1Click(Sender: TObject);
    procedure mniStation1Click(Sender: TObject);
    procedure mniTracticalGridOriginal1Click(Sender: TObject);
    procedure mniAirGeneral1Click(Sender: TObject);
    procedure mniAirborneEarlyWarning1Click(Sender: TObject);
    procedure mniBullseye1Click(Sender: TObject);
    procedure mniCombatAirPatrol1Click(Sender: TObject);
    procedure mniDitchedAircraft1Click(Sender: TObject);
    procedure mniGate1Click(Sender: TObject);
    procedure mniASWGeneral1Click(Sender: TObject);
    procedure mniBriefContact1Click(Sender: TObject);
    procedure mniDatum1Click(Sender: TObject);
    procedure mniKingpin1Click(Sender: TObject);
    procedure mniRiser1Click(Sender: TObject);
    procedure mniSearchCentre1Click(Sender: TObject);
    procedure mniSinker1Click(Sender: TObject);
    procedure mniWeaponEntryPoint1Click(Sender: TObject);
    procedure mniWreck1Click(Sender: TObject);
    procedure mniAir2Click(Sender: TObject);
    procedure mniSurface2Click(Sender: TObject);
    procedure mniSubsurface2Click(Sender: TObject);
    procedure mniLand2Click(Sender: TObject);
    procedure mniGeneral1Click(Sender: TObject);
    procedure ToolBtnFindClick(Sender: TObject);
    procedure mniAdd1Click(Sender: TObject);
    procedure mniRemove2Click(Sender: TObject);
    procedure Overlays1Click(Sender: TObject);
    procedure mniAutomatic1Click(Sender: TObject);
    procedure fmWeapon1btnWeaponClick(Sender: TObject);
    procedure fmPlatformGuidance1mnHelm1Click(Sender: TObject);
    procedure fmPlatformGuidance1mnStraightLine1Click(Sender: TObject);
    procedure fmPlatformGuidance1mnCircleOnPosition1Click(Sender: TObject);
    procedure fmPlatformGuidance1mnZigzag1Click(Sender: TObject);
    procedure fmPlatformGuidance1mnSinuation1Click(Sender: TObject);
    procedure fmWeapon1sbChaffBlindZoneShowClick(Sender: TObject);
    procedure fmWeapon1btntControlGyroAdvisedClick(Sender: TObject);
    procedure fmWeapon1btnAcousticTorpedoLaunchClick(Sender: TObject);
    procedure fmSensor1sbESMSensorDisplayBlindZoneHideClick(Sender: TObject);
    procedure fmCounterMeasure1btnSurfaceChaffLaunchClick(Sender: TObject);
    procedure fmSensor1sbESMSensorControlModeOnClick(Sender: TObject);
    procedure fmWeapon1pnlLaunch1Click(Sender: TObject);
    procedure fmWeapon1pnlLaunch2Click(Sender: TObject);
    procedure fmWeapon1pnlLaunch3Click(Sender: TObject);
    procedure fmWeapon1pnlLaunch4Click(Sender: TObject);
    procedure fmFireControl1btnSearchFireControlAssetsTargetClick(
      Sender: TObject);
    procedure ToolBtnMergeClick(Sender: TObject);
    procedure ToolBtnSplitClick(Sender: TObject);
    procedure TacticalDisplayControlPanelChange(Sender: TObject);
	procedure Filters1Click(Sender: TObject);
    procedure fmPlatformGuidance1edtOrderedHelmAngleKeyPress(Sender: TObject;
      var Key: Char);
    procedure fmPlatformGuidance1edtHelmOrderedGroundSpeedKeyPress(
      Sender: TObject; var Key: Char);
    procedure History1Click(Sender: TObject);
    procedure fmFireControl1lstFireControlAssetsAssignedTracksSelectItem(
      Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure fmWeapon1btnSurfaceToSurfaceMissileLauncherMoreClick(
      Sender: TObject);
    procedure fmOwnShip1btnLandPlatformClick(Sender: TObject);
    procedure fmPlatformGuidance1sbTrackToEvadeClick(Sender: TObject);
    procedure fmPlatformGuidance1mnEvasion1Click(Sender: TObject);
    procedure pnlStatusRedClick(Sender: TObject);
    procedure pnlStatusYellowClick(Sender: TObject);
    procedure fmPlatformGuidance1mnShadow1Click(Sender: TObject);
    procedure fmPlatformGuidance1sbCircleOnTrackTrackClick(Sender: TObject);
    procedure fmPlatformGuidance1sbEngageTrackToEngageClick(Sender: TObject);
    procedure fmPlatformGuidance1edtTrackToEngageKeyPress(Sender: TObject;
      var Key: Char);
    procedure fmPlatformGuidance1edtEngageStandOffDistanceKeyPress(
      Sender: TObject; var Key: Char);
    procedure fmPlatformGuidance1mnEngagement1Click(Sender: TObject);
    procedure fmPlatformGuidance1mnOutrun1Click(Sender: TObject);
    procedure fmPlatformGuidance1sbTrackToOutrunClick(Sender: TObject);
    procedure fmPlatformGuidance1Short1Click(Sender: TObject);
    procedure fmPlatformGuidance1Long1Click(Sender: TObject);
    procedure fmPlatformGuidance1VeryLong1Click(Sender: TObject);
    procedure fmPlatformGuidance1edtZigZagBaseCourseKeyPress(Sender: TObject;
      var Key: Char);
    procedure fmEMCON1cbEmconSearchRadarClick(Sender: TObject);
    procedure fmSensor1btnIFFInterrogatorTrackSearchClick(Sender: TObject);
    procedure fmSensor1sbIFFTransponderControlModeOnClick(Sender: TObject);
    procedure fmSensor1sbIFFTransponderControlModeOffClick(Sender: TObject);
    procedure fmSensor1sbIFFInterrogatorControlModeOffClick(Sender: TObject);
    procedure Formation1Click(Sender: TObject);
    procedure Opotions1Click(Sender: TObject);
    procedure Remove2Click(Sender: TObject);
    procedure fmWeapon1SpeedButton2Click(Sender: TObject);
    procedure fmCounterMeasure1btnAirBubbleDeployClick(Sender: TObject);
    procedure fmWeapon1btnTacticalMissileTargetTrackClick(Sender: TObject);
    procedure fmWeapon1btnStraightRunningTorpedosLaunchClick(Sender: TObject);
    function KillTask(ExeFileName: string): Integer;
    procedure fmCounterMeasure1sbRadarJammingControlActivationOnClick(
      Sender: TObject);
    procedure fmCounterMeasure1sbRadarJammingControlActivationOffClick(
      Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure OnGameCentre1Click(Sender: TObject);
    procedure Pan1Click(Sender: TObject);
    procedure Settings1Click(Sender: TObject);
    procedure Next1Click(Sender: TObject);
    procedure MErge1Click(Sender: TObject);
    procedure Automatic1Click(Sender: TObject);
    procedure Manual1Click(Sender: TObject);
    procedure ClearforHookedTracks1Click(Sender: TObject);
    procedure ClearforAllTracks1Click(Sender: TObject);
    procedure Anchor1Click(Sender: TObject);
    procedure Origin1Click(Sender: TObject);
    procedure fmWeapon1btnLaunchAPGClick(Sender: TObject);
    procedure Previous1Click(Sender: TObject);
    procedure Split1Click(Sender: TObject);
    procedure mniDepthClick(Sender: TObject);
    procedure mniEnduranceClick(Sender: TObject);
    procedure ransfer1Click(Sender: TObject);
    procedure tmMoveTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mniSplit1Click(Sender: TObject);
    procedure fmEMCON1sbEmconAllSystemsAllSilentClick(Sender: TObject);
    procedure fmEMCON1sbEmconAllSystemsClearAllClick(Sender: TObject);
    procedure fmCounterMeasure1btnFloatingDecoyDeployClick(Sender: TObject);
    procedure fmCounterMeasure1btnChaffAirboneDeployClick(Sender: TObject);
    procedure Track1Click(Sender: TObject);
    procedure mniTorpedoDepthClick(Sender: TObject);
    procedure mniTorpedoCourseClick(Sender: TObject);
    procedure fmCounterMeasure1btnSurfaceChaffTypeClick(Sender: TObject);
    procedure fmCounterMeasure1btnSurfaceChaffLauncherClick(Sender: TObject);
    procedure fmCounterMeasure1btnSurfaceChaffAbortClick(Sender: TObject);
    procedure fmCounterMeasure1btnSurfaceChaffCopyClick(Sender: TObject);
    procedure fmCounterMeasure1ckSurfaceChaffEnabledClick(Sender: TObject);
    procedure fmCounterMeasure1edtSurfaceChaffBloomRangeKeyPress(
      Sender: TObject; var Key: Char);
    procedure fmCounterMeasure1edtSurfaceChaffBloomAltitudeKeyPress(
      Sender: TObject; var Key: Char);
    procedure fmCounterMeasure1edtSurfaceChaffSalvoSizeKeyPress(Sender: TObject;
      var Key: Char);
    procedure fmCounterMeasure1edtSurfaceChaffDelayKeyPress(Sender: TObject;
      var Key: Char);
    procedure fmCounterMeasure1ckSurfaceChaffSeductionEnabledClick(
      Sender: TObject);
    procedure fmCounterMeasure1btnSDJammerTargetClick(Sender: TObject);
    procedure fmCounterMeasure1btnRadarJammingModeSelectedTrackTrackClick(
      Sender: TObject);
    procedure fmPlatformGuidance1sbOnTrackAnchorModeClick(Sender: TObject);
    procedure fmPlatformGuidance1sbOnTrackAnchorTrackClick(Sender: TObject);
    procedure fmPlatformGuidance1btnCircleModeClick(Sender: TObject);
    procedure fmPlatformGuidance1sbCircleOnPositionPositionClick(
      Sender: TObject);
    procedure fmPlatformGuidance1btnStationAnchorPositionClick(Sender: TObject);
    procedure fmWeapon1btnAddHybridMissileTargetAimpointClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnDepthInfoClick(Sender: TObject);
    procedure TacticalDisplayControlPanelMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure TacticalDisplayControlPanelMouseLeave(Sender: TObject);
  private
    { Private declarations }
    isFullScreen: Boolean;
    isSelectedPIReadyOnMoving: Boolean;
    FAnchorFilterEnabled: Boolean;
    FLastMapCenterX, FLastMapCenterY : double;
    FIndexTrack : integer;

    function FindTrackListByMember(const arg: string): TListItem;

    procedure AddTrackPlatform(Sender: TObject); // for Controller;
    procedure UpdateTrackListData;
    procedure UpdatePanelTop(Sender: TObject);
    //procedure UpdateOwnShipData(Sender: TObject);
    procedure LaunchNRPPlatformObserve(domain, typePoint: Integer; symbolstr: string; id: Integer);
    procedure clearPopRightClick;
  private
    isFirstUpdate: Boolean; // ini sementara untuk update data platform pertama kali
    isOnAnchorLine: Boolean;
    isOnESMLine: Boolean;
//    FOnUpdateAsset: TNotifyEvent;
    FLeftMouseDown: Boolean;
    FBeginDrag: Boolean;

    // aldy
    newPoint: TPoint;
    esmSelected  : TT3ESMTrack;
    // new version
    FControlEmbarkedPlatform: Boolean;
    FObjectAssignedByGun : TSimObject;
    TrackLists : TThreadList;

    //procedure InitOleVariant(var TheVar: OleVariant);
    //function OutsideRegion(x, y: double): Boolean;

    procedure SetControlEmbarkedPlatform(const Value: Boolean);
    procedure InitTabHookedInfo;
    procedure SetWeaponTargetObject(obj: TSimObject);
    procedure SetFCTargetObjectobj (obj : TSimObject);
    procedure GetNameAndClass(const obj: TSimObject; var n, c: string);
    procedure DisplayTabHooked(Sender: TObject);
    procedure DisplayTabDetail(Sender: TObject);
    procedure DisplayTabDetection(Sender: TObject);
    procedure DisplayTabIFF(Sender: TObject);
  public
    { Public declarations }
    focusedTrack: TSimObject;
    focusedRBLW : TSimObject;
    anchorTrack : TSimObject;
    RBLWPointX , RBLWPointY : Double;
    statusR_List,statusY_List : TList;

    DrawOverlay : TDrawOverlay;
    FRangeRingOnHook: Boolean;
    FHookOnPlatform: Boolean;
    isStatusMerge: Boolean;

    procedure Initialize;

    procedure UpdateTabHooked(pi: TT3PlatformInstance);
    procedure UpdateRangeRingsPos(Sender : TObject);
//    procedure RemoveFromTargetedRefTrack(Sender : TObject);
    procedure SetRoleClient(rc: Integer);
    procedure SetControlledPlatform(pit: TT3PlatformInstance);
    procedure SetControlledFormMode(aReadOnly : boolean);
    procedure SetHookedPlatformInfo(pit: TT3PlatformInstance);
    procedure SetSelectedTrack(track: TSimObject);
    procedure UnSelectAllPlatformTrack;
    procedure UnSelectAllNRPlatformTrack;
    procedure UnselectAllDetectedTrack;
    procedure UnSelectAllRBLWPointTrack;
    procedure UnSelectAllBOlWPointTrack;
    procedure setDefaultInterface(userLevel: word);
    procedure UpdateFormData(Sender: TObject);
    procedure UpdateGameTime(Sender: TObject);
    procedure UpdateCenter(Sender: TObject);
    procedure UpdateHookedInfo(Sender: TObject);
    procedure RemoveFromTrackList(Sender: TObject);
    procedure Refresh_AssumeControl;

    procedure MapToolUsed(ASender: TObject; ToolNum: Smallint;
              X1, Y1, X2, Y2, Distance: double; Shift, Ctrl: WordBool;
          var EnableDefault: WordBool);
    procedure MapMouseMove(Sender: TObject; Shift: TShiftState; x, y: Integer);
    procedure MapMouseDown(Sender: TObject; Button: TMouseButton;
              Shift: TShiftState; x, y: Integer);
    procedure MapMouseUp(Sender: TObject; Button: TMouseButton;
              Shift: TShiftState; x, y: Integer);

    procedure setPopUpPropItem(obj: TSimObject);
    procedure setMainMenuItem(obj: TSimObject);   //add
    procedure setShowMainMenuItem(obj: TSimObject); //add
    procedure DisplayGameTime(const gSpeed: single; const gTime: TDateTime);
    procedure Be_A_FullMap(const full: Boolean);
    procedure UpdatePlatformProperties(plat : TSimObject; dom, ident, typ: integer);
    procedure SetObjectAssignedByGun(value : TSimObject);

    procedure setFreePopup;
    procedure setHookPopup;
    procedure updateStatus;
    procedure addStatus(status: String);
    procedure updateStatus_Yellow;
    procedure addStatus_Yellow(status: String);
    procedure RefreshTracks;
    procedure RemoveListandForm(ctrlObj: TObject);

    function setFocusedESMTrack(isDown : Boolean; mx, my : Double) : Boolean;
    function IsFireControlActivated : Boolean; //cek apakah fire ada salah satu fire control yang aktif

    property ControlEmbarkedPlatform : Boolean read FControlEmbarkedPlatform
       write SetControlEmbarkedPlatform;
    property SelectedEsm : TT3ESMTrack read esmSelected;
    property ObjectAssignedByGun : TSimObject read FObjectAssignedByGun
      write SetObjectAssignedByGun;
  end;

  TStatus = class
    public
    state : String;
  end;
var
  frmTacticalDisplay: TfrmTacticalDisplay;

implementation

uses
  Math,
  uSimMgr_Client, uT3SimManager, uBaseCoordSystem,
  uPictureCentreControl, uTrackHistory,

  uCoordConvertor, uMapXHandler, uPictureFilter,
  uDBAsset_Weapon, uRPLibrary, uT3Common, ufToteDisplay, ufEditRealTimeTrack, ufChangeTrackNumber,
  uDBAsset_GameEnvironment, uDBCubicles, ufMergeTracks, ufEditNonRealTimeTrack, uRemoteHost ,
  uLibSettingTTT, uGamePlayType, DateUtils, uT3Radar, uDataTypes, uT3Gun,
  uFormationEditorForm, uT3Sonar, uT3OtherSensor, ufrmNGSGunSetup,
  uT3Sonobuoy, uSnapshotDLG, ufmDetailPlan, uT3HybridOnVehicle, uT3Visual, uWaypointEditor,
  uT3Mine;
{$R *.dfm}

const
  CMin_Z = 0;
  CMax_Z = 14;

Function DecToOct(Inp : String): String;

Var
  HasilBagi,SisaBagi : Integer;
  Oct,Oktal : String;
  i : integer;
  Des : integer;
Begin
  Oct := '';
  Oktal := '';
  Des:= StrToInt(inp);
  Repeat
  SisaBagi := des Mod 8;
  Oct:= Oct + intToStr(SisaBagi);
  HasilBagi := Des Div 8;
  des:= HasilBagi;
  Until HasilBagi = 0;

  For I := length (Oct) Downto 1 Do
  Begin
  Oktal := Oktal+ Oct[i];
  End;
  Result:= Oktal;
End;

//procedure TfrmTacticalDisplay.InitOleVariant(var TheVar: OleVariant);
//begin
//  TVarData(TheVar).vType := varError;
//  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
//end;

procedure EnableComposited(WinControl: TWinControl);
var
  i: Integer;
  NewExStyle: DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for i := 0 to WinControl.ControlCount-1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

procedure TfrmTacticalDisplay.InitTabHookedInfo;
begin
  //?Hook
  lbTrackHook.Caption := 'Unknown';
  lbNameHook.Caption := 'Unknown';
  lbClassHook.Caption := 'Unknown';
  lbPositionHook1.Caption := '---';
  lbPositionHook2.Caption := '---';
  lbCourseHook.Caption := '---';
  lbGround.Caption := '---';
  lbAltitude.Caption := '---';
  lbDepth.Caption := '---';
  lbBearingHook.Caption := '---';
  lbRangeHook.Caption := '---';

  // Details
  lbTrackDetails.Caption := 'Unknown';
  lbNameDetails.Caption  := 'Unknown';
  lbClassDetails.Caption := 'Unknown';
  lbTypeDetails.Caption  := 'Unknown';
  lbDomain.Caption       := 'Unknown';
  lbIdentifier.Caption   := 'Unknown';

  // Detection
  lbTrackDetection.Caption := 'Unknown';
  lbNameDetection.Caption  := 'Unknown';
  lbClassDetection.Caption := 'Unknown';
  lbOwner.Caption := '---';

  // IFF
  lbTrackIff.Caption := 'Unknown';
  lbNameIff.Caption  := 'Unknown';
  lbClassIff.Caption := 'Unknown';
end;

function ZoomIndexToScale(const i: Integer): double;
begin
  if i < -3 then
    result := 0.125
  else if i > 14 then
    result := 2500.0
  else
    result := Power(2.0, (i - 3));
end;

function FindClosestZoomIndex(const z: double): Integer;
var
  i: Integer;
begin
  if z >= 2500 then
    result := CMax_Z
  else if z <= 0.125 then
    result := CMin_Z
  else
  begin
    i := Round(Log2(z));
    result := i + 3;
  end;
end;

function FixMapZoom(z: double): double;
begin
  if z >= 1.0 then
    result := Round(z)
  else
    result := 0.001 * Round(z * 1000);
end;

procedure TfrmTacticalDisplay.Be_A_FullMap(const full: Boolean);
begin
  pnlLeft.Visible := NOT full;

  if full then
  begin
    WindowState := wsMaximized;
    BorderStyle := bsNone;
  end
  else
  begin
    WindowState := wsNormal;
    BorderStyle := bsToolWindow;
  end;
end;

procedure TfrmTacticalDisplay.ClearforAllTracks1Click(Sender: TObject);
begin
  //mniStandardPoint1.Enabled := false;
  mniStandardPoint1.Visible := false;

  mniNewStandardBearing1.Visible := false;
  //mniNewStandardBearing1.Enabled := false;

  //mniNewStandard1.Enabled := false;
  mniNewStandard1.Visible := false;

  //mniNewSpecialPointGeneral1.Enabled := false;
  //mniNewSpecialPointAir1.Enabled := false;
  //mniNewSpecialPointASW1.Enabled := false;

  mniNewSpecialPointGeneral1.Visible := false;
  mniNewSpecialPointAir1.Visible := false;
  mniNewSpecialPointASW1.Visible := false;

  mniConvertRTtoNRT1.Visible := false;
  //mniConvertRTtoNRT1.Enabled := false;

  mniCharacteristic1.Visible := false;
  //mniCharacteristic1.Enabled := false;

  //mniMerge1.Enabled := false;
  mniMerge1.Visible := False;

  mniSplit1.Visible := false;
  //mniSplit1.Enabled := false;

  //mniDatalink1.Enabled := false;
  mniDatalink1.Visible := false;

  mniTrackNumber1.Visible := false;
  //mniTrackNumber1.Enabled := false;

  mniTrackHistory1.Visible := false;
  //mniTrackHistory1.Enabled := false;

  //mniIntiate1.Enabled := false;
  mniIntiate1.Visible := false;
  //mniBreakAllFireControl1.Enabled := false;
  mniBreakAllFireControl1.Visible := false;
  //mniClearRing1.Enabled := false;
  mniClearRing1.Visible := false;
  //mniRemove1.Enabled := false;
  mniRemove1.Visible := false;
  //mniCentre1.Enabled := false;
  mniCentre1.Visible := false;
  //mniRangeRing1.Enabled := false;
  mniRangeRing1.Visible := false;
  //mniTrackTable1.Enabled := false;
  mniTrackTable1.Visible := false;
  //mniAnchor1.Enabled := false;
  mniAnchor1.Visible := false;
  {
  N1.Enabled := false;
  N2.Enabled := false;
  N3.Enabled := false;
  N4.Enabled := false;
  N6.Enabled := false;
  N7.Enabled := false;
  N8.Enabled := false;
  N9.Enabled := false;
  N10.Enabled := false;
  }
  N1.Visible := false;
  N2.Visible := false;
  N3.Visible := false;
  N4.Visible := false;
  N6.Visible := false;
  N7.Visible := false;
  N8.Visible := false;
  N9.Visible := false;
  N10.Visible := false;
end;

procedure TfrmTacticalDisplay.ClearforHookedTracks1Click(Sender: TObject);
begin
  if Assigned(focusedTrack) and (focusedTrack is TT3Unit) then
    VSimMap.SetMapCenter(TT3Unit(focusedTrack).getPositionX,
      TT3Unit(focusedTrack).getPositionY);
end;

function TfrmTacticalDisplay.IsFireControlActivated : Boolean;
var
  ve : TT3Vehicle;
  dev: TT3DeviceUnit;
  radar: TT3Radar;
  I: Integer;
begin
  Result := False;

  if not Assigned(simMgrClient.ControlledPlatform) then
    Exit;

  if not (simMgrClient.ControlledPlatform is TT3Vehicle) then
    Exit;

  ve := simMgrClient.ControlledPlatform as TT3Vehicle;
  for I := 0 to ve.Devices.Count - 1 do
  begin
    dev := ve.Devices[I];
    if dev is TT3Radar then
    begin
      radar := dev as TT3Radar;
      if radar.RadarDefinition.FDef.Num_FCR_Channels > 0 then
      begin
        if radar.OperationalStatus = sopOn then
        begin
          Result := True;
          Exit;
        end;
      end;
    end;
  end;
end;

// Tambahan Prince : Fungsi untuk membunuh file exe mapstub
function TfrmTacticalDisplay.KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TfrmTacticalDisplay.setFocusedESMTrack
         (isDown : Boolean; mx, my : Double): Boolean;
var
  foundESM : boolean;
  I, J : Integer;
  sObject : TSimObject;
  esmObj : TT3ESMTrack;
begin
  Result := False;

  if not isDown then
    Exit;

  foundESM := false;
  for I := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
  begin
    sObject := simMgrClient.SimDetectedTrackList.getObject(I);
    if sObject is TT3DetectedTrack then
    begin
      for J := 0 to TT3DetectedTrack(sObject).ESMTracks.Count - 1 do
      begin
        esmObj := TT3DetectedTrack(sObject).ESMTracks[J];
        esmObj.IsSelected := false;

        if foundESM then
        begin
          Break;
        end;

        isOnESMLine := esmObj.isPointOnESMLine(mx, my);
        if isOnESMLine then
        begin
          //jika ditemukan garis esm unselect detected sebelunnya
          UnselectAllDetectedTrack;
          UnSelectAllRBLWPointTrack;
          UnSelectAllBOLWPointTrack;
          UnSelectAllPlatformTrack;
          UnSelectAllNRPlatformTrack;

          esmSelected := esmObj;
          esmSelected.IsSelected := true;
          focusedTrack := esmSelected;
          foundESM := true;
          Break;
        end;
      end;
    end;
  end;

  if not foundESM then
    esmSelected := nil;

  Result := foundESM;
end;

procedure TfrmTacticalDisplay.UpdatePanelTop(Sender: TObject);
begin
  if simMgrClient.ISInstructor then
  begin
    ToolBtnMerge.Enabled := False;
  end
  else
  begin
    if Sender is TT3PlatformInstance then
    begin
      ToolBtnMerge.Enabled := False;
    end
    else if Sender is TT3DetectedTrack then
    begin
      if Assigned(TT3DetectedTrack(Sender).MergedESM) then
        ToolBtnMerge.Enabled := False
      else
      begin
        ToolBtnMerge.Enabled := True;
      end;
    end
    else if Sender is TT3ESMTrack then
    begin
      if TT3ESMTrack(Sender).IsMerged  then
        ToolBtnMerge.Enabled := False
      else
        ToolBtnMerge.Enabled := True;
    end
    else
    begin
      ToolBtnMerge.Enabled := False;
    end;
  end;
end;

procedure TfrmTacticalDisplay.UpdatePlatformProperties(plat : TSimObject; dom, ident, typ: integer);
var
  rec : TRecCmd_Platform_SET_PROPERTY;
  recESM : TRecCmd_ESM_SET_PROPERTY;
  recNRP : TRecCmd_NRP_SET_PROPERTY;
  oid : Integer;
begin
  if plat = nil then
    exit;

  if plat is TT3NonRealVehicle then
  begin
    oid := -1;

    if dom <> -1 then
      oid := NRP_ID_TRACKDOMAIN;

    if ident <> -1 then
      oid := NRP_ID_TRACKIDENT;

    if typ <> -1 then
      oid := NRP_ID_SYMBOLTYPE;

    if oid <> -1 then
    begin
      recNRP.PlatfomID := TT3NonRealVehicle(plat).InstanceIndex;
      recNRP.OrderID := oid;
      recNRP.domain := dom;//vhdAir;
      recNRP.identity := ident;
      recNRP.platformType := typ;

      if simMgrClient.ISInstructor then
        recNRP.GrpID := 0
      else
        recNRP.GrpID := simMgrClient.FMyCubGroup.FData.Group_Index;

      recNRP.TypeNRP := TT3NonRealVehicle(plat).NRPType;

      simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(recNRP);
      Exit;
    end;
  end
  else if plat is TT3PlatformInstance then
  begin
    rec.PlatfomID := TT3PlatformInstance(plat).InstanceIndex;
  end
  else if plat is TT3DetectedTrack then
  begin
    rec.PlatfomID := TT3DetectedTrack(plat).TrackObject.InstanceIndex;
  end
  else if plat is TT3ESMTrack then  //sementara gni dlu y
  begin
    recESM.PlatfomID := TT3DetectedTrack(plat.Parent).TrackObject.InstanceIndex;
    recESM.Tracknumber := TT3ESMTrack(plat).TrackNumber;
    recESM.GrpID := simMgrClient.FMyCubGroup.FData.Group_Index;
    recESM.domain := dom;
    recESM.identity := ident;

    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
    Exit;
  end;

  if simMgrClient.ISInstructor then
    rec.GrpID := 0
  else
    rec.GrpID := simMgrClient.FMyCubGroup.FData.Group_Index;

  rec.domain := dom;
  rec.identity := ident;
  rec.platformType := typ;
  simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(rec);

  if plat <> nil then
  begin
    if plat is TT3PlatformInstance then
      TT3PlatformInstance(plat).Selected := false
    else if plat is TT3DetectedTrack then
      TT3DetectedTrack(plat).Selected := false;
  end;
end;

procedure TfrmTacticalDisplay.UpdateRangeRingsPos(Sender: TObject);
begin
  simMgrClient.RangeRing.mX := TT3Vehicle(Sender).getPositionX;
  simMgrClient.RangeRing.mY := TT3Vehicle(Sender).getPositionY;
end;

procedure TfrmTacticalDisplay.SetObjectAssignedByGun(value : TSimObject);
begin
  FObjectAssignedByGun := value;

  SetFCTargetObjectobj(FObjectAssignedByGun);
  SetWeaponTargetObject(FObjectAssignedByGun);
end;

procedure TfrmTacticalDisplay.setFreePopup;
begin
  clearPopRightClick;
  mniStandardPoint1.Enabled := true;
  mniStandardPoint1.Visible := true;

  mniNewStandardBearing1.Visible := true;
  mniNewStandardBearing1.Enabled := true;

  mniNewStandard1.Enabled := true;
  mniNewStandard1.Visible := true;

  mniNewSpecialPointGeneral1.Enabled := true;
  mniNewSpecialPointAir1.Enabled := true;
  mniNewSpecialPointASW1.Enabled := true;

  mniNewSpecialPointGeneral1.Visible := true;
  mniNewSpecialPointAir1.Visible := true;
  mniNewSpecialPointASW1.Visible := true;

  Platform1.Visible := False;
  mniSonobuoys.Visible := False;
  mniTorpedo.Visible := False;

  N1.Enabled := true;
  N1.Visible := true;
end;

procedure TfrmTacticalDisplay.SetHookedPlatformInfo(pit: TT3PlatformInstance);
begin
  if not Assigned(simMgrClient) then
    exit;

  if Assigned(pit) then     //mk
  begin
    focusedTrack := pit;

    fmOwnShip1.SetControlledObject(pit);
    fmPlatformGuidance1.SetControlledObject(pit);
    fmSensor1.SetControlledObject(pit);
    fmWeapon1.SetControlledObject(pit);
    fmFireControl1.SetControlledObject(pit);
    fmCounterMeasure1.SetControlledObject(pit);
    fmEMCON1.SetControlledObject(pit);

    {Prince}
    fmOverlayEditor.TrackPlatform  := focusedTrack;
  end;
end;

procedure TfrmTacticalDisplay.setHookPopup;
begin
  clearPopRightClick;
  mniStandardPoint1.Enabled := true;
  mniStandardPoint1.Visible := true;

  mniNewStandardBearing1.Visible := true;
  mniNewStandardBearing1.Enabled := true;

  mniNewStandard1.Enabled := true;
  mniNewStandard1.Visible := true;

  mniNewSpecialPointGeneral1.Enabled := true;
  mniNewSpecialPointAir1.Enabled := true;
  mniNewSpecialPointASW1.Enabled := true;

  mniNewSpecialPointGeneral1.Visible := true;
  mniNewSpecialPointAir1.Visible := true;
  mniNewSpecialPointASW1.Visible := true;

  mniTorpedo.Enabled := true;
  mniTorpedo.Visible := true;

  mniSonobuoys.Enabled := true;
  mniSonobuoys.Visible := true;

  N1.Enabled := true;
  N1.Visible := true;

  mniConvertRTtoNRT1.Visible := true;
  mniCharacteristic1.Visible := true;
  mniMerge1.Visible := true;
  mniSplit1.Visible := true;
  mniDatalink1.Visible := true;
  mniTrackNumber1.Visible := true;
  mniTrackHistory1.Visible := true;
  mniTrackTable1.Visible := true;
  mniIntiate1.Visible := true;
  mniBreakAllFireControl1.Visible := true;
  mniClearRing1.Visible := true;
  mniRemove1.Visible := true;
  mniCentre1.Visible := true;
  mniRangeRing1.Visible := true;
  mniAnchor1.Visible := true;

  N2.Visible := true;
  N3.Visible := true;
  N4.Visible := true;
  N6.Visible := true;
  N7.Visible := true;
  N8.Visible := true;
  N9.Visible := true;
  N10.Visible := true;
end;

procedure TfrmTacticalDisplay.ToolBtnMergeClick(Sender: TObject);
begin
  if Assigned(esmSelected) then
  begin
    if not Assigned(frmMergeTracks) then
      frmMergeTracks := TfrmMergeTracks.Create(self);

    frmMergeTracks.ControlledTrack := esmSelected;
    frmMergeTracks.Show;
  end
  else
  if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3DetectedTrack then
    begin
      if not Assigned(frmMergeTracks) then
        frmMergeTracks := TfrmMergeTracks.Create(self);

      frmMergeTracks.ControlledTrack := focusedTrack;
      frmMergeTracks.Show;
    end;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnSplitClick(Sender: TObject);
var
  track : TT3DetectedTrack;
  rec : TRecCmd_MergeTrack;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if focusedTrack is TT3DetectedTrack then
  begin
    track := focusedTrack as TT3DetectedTrack;

    if Assigned(track.MergedESM) then
    begin
      rec.EsmTrackNumber := StrToInt(track.MergedESM.TrackNumber);
      rec.DetectedTrackNumber := track.TrackObject.InstanceIndex;
      rec.OrderMerge := false;

      simMgrClient.netSend_Cmd_MergeTrack(rec);
    end
    else
    begin
      addStatus('Not assign Merge Track');
    end;
  end
  else
  begin
    addStatus('Not assign Focus Track');
  end;
end;

procedure TfrmTacticalDisplay.btn9Click(Sender: TObject);
var
  rec : TRecCmd_SelectPlatformToRemove;
  buttonSelected : Integer;
begin
  if Assigned(focusedTrack) then        //mk
  begin
    buttonSelected := 1;

    if focusedTrack is TT3NonRealVehicle then
    begin
      buttonSelected := MessageDlg('Do you really want to remove platform '
                        + IntToStr(TT3NonRealVehicle(focusedTrack).TrackNumber), mtConfirmation,
                        [mbYes,mbNo], 0);
    end;

    if buttonSelected = mrNo then
      Exit;

    if focusedTrack is TT3NonRealVehicle then
    begin
      rec.SessionID := simMgrClient.SessionID;
      rec.PlatfomID := TT3NonRealVehicle(focusedTrack).InstanceIndex;
      rec.isNRPlatform := true;

      simMgrClient.netSend_CmdRemovePlatfromByOperator(rec);
      frmTacticalDisplay.Refresh_AssumeControl;
    end;
  end;
end;

procedure TfrmTacticalDisplay.btnDepthInfoClick(Sender: TObject);
var
  i : Integer;
  layer : CMapXLayer;
begin
  for i := 1 to fmMapWindow1.Map.Layers.Count do
  begin
    layer := fmMapWindow1.Map.Layers.Item(i);

    if AnsiPos('titik_spot_sounding', layer.Name) <> 0 then
      layer.AutoLabel := btnDepthInfo.Down;
  end;
end;

procedure TfrmTacticalDisplay.btnEOOnClick(Sender: TObject);
begin
  fmSensor1.sbElectroOpticalSensorOnClick(Sender);
end;

procedure TfrmTacticalDisplay.btnESMOnClick(Sender: TObject);
begin
  fmSensor1.sbESMSensorControlModeClick(Sender);
end;

procedure TfrmTacticalDisplay.btnFireControlOnClick(Sender: TObject);
begin
  if (Sender is TButton) and (TButton(Sender).Tag = 4) then
    ObjectAssignedByGun := fmFireControl1.Focused_Platform
  else
    ObjectAssignedByGun := nil;

  fmFireControl1.btnFCROnClick(Sender);
end;

procedure TfrmTacticalDisplay.btnGunCIWSOnCLick(Sender: TObject);
begin
  if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 9)
  and (Assigned(focusedTrack)) then     //mk
    SetWeaponTargetObject(focusedTrack);

  fmWeapon1.sbGunICWSClick(Sender);
end;

procedure TfrmTacticalDisplay.btnMADOnClick(Sender: TObject);
begin
  fmSensor1.sbAnomalyDetectorOnClick(Sender);
end;

procedure TfrmTacticalDisplay.cbAssumeControlChange(Sender: TObject);
var
  aObject: TSimObject;
begin
  aObject := TSimObject(cbAssumeControl.Items.Objects[cbAssumeControl.ItemIndex]);

  if aObject <> nil then
  begin
    if aObject is TT3Unit then
      TT3Unit(aObject).Selected := true
    else if aObject is TT3DetectedTrack then
      TT3DetectedTrack(aObject).Selected := true;

    fmMapWindow1.Map.Repaint;
  end;

  DisplayTabHooked(cbAssumeControl.Items.Objects[cbAssumeControl.ItemIndex]);
end;

procedure TfrmTacticalDisplay.Formation1Click(Sender: TObject);
begin
  if not Assigned(frmFormationEditor) then
    frmFormationEditor := TfrmFormationEditor.Create(self);

  frmFormationEditor.Show;
end;

procedure TfrmTacticalDisplay.FormCreate(Sender: TObject);
var
  i: Integer;
  z: double;
begin
  fmMapWindow1.InitOnFormCreate;
  fmOwnShip1.InitCreate(self);
  fmPlatformGuidance1.InitCreate(self);
  fmSensor1.InitCreate(self);

  fmWeapon1.InitCreate(self);
  fmCounterMeasure1.InitCreate(self);
  fmFireControl1.InitCreate(self);
  fmEMCON1.InitCreate(self);

//  FOnUpdateAsset := nil;
//  FOnUpdateAsset := UpdateOwnShipData;

  lvTrackTable.DoubleBuffered := true;
  FAnchorFilterEnabled := false;

  FControlEmbarkedPlatform := false;
  isSelectedPIReadyOnMoving := false;

  width := Screen.Monitors[0].width;
  height := Screen.Monitors[0].height;
  left := Screen.Monitors[0].left;
  top := Screen.Monitors[0].top;

  if width <= 1279 then
    pnlTop.Height := 68
  else
    pnlTop.Height := 33;

  isFirstUpdate := true;
  isFullScreen := false;
  isOnAnchorLine := false;

  cbSetScale.Items.Clear;

  for i := CMin_Z to CMax_Z do
  begin
    z := ZoomIndexToScale(i);
    cbSetScale.Items.Add(FloatToStr(z));
  end;
  // cbSetScale.ItemIndex := 8;
  // cbSetScaleChange(cbSetScale);

  lblRangeScale.Caption := cbSetScale.Text;

  lvTrackTable.SortType := stText;
  TacticalDisplayControlPanel.TabIndex := 0;

  StatusBar1.DoubleBuffered := true;
  FHookOnPlatform := false;

  StatusBar1.Panels[9].Text := 'FROZEN';
  StatusBar1.Repaint;

  statusR_List := TList.Create;
  statusY_List := TList.Create;

  FLastMapCenterX := 0;
  FLastMapCenterY := 0;

  FIndexTrack := 0;

  TrackLists := TThreadList.Create;

//  if not Assigned(frmFormationEditor) then
//    frmFormationEditor := TfrmFormationEditor.Create(self);

  Show;
end;

procedure TfrmTacticalDisplay.Initialize;
begin
  width := Screen.Monitors[vGameDataSetting.TacticalScreen].width;
  height := Screen.Monitors[vGameDataSetting.TacticalScreen].height;
  left := Screen.Monitors[vGameDataSetting.TacticalScreen].left;
  top := Screen.Monitors[vGameDataSetting.TacticalScreen].top;
end;

procedure TfrmTacticalDisplay.FormDestroy(Sender: TObject);
begin
  TrackLists.Clear;
  TrackLists.Free;
end;

procedure TfrmTacticalDisplay.FormResize(Sender: TObject);
begin
//
  if ClientWidth <= 1279 then
    pnlTop.Height := 68
  else
    pnlTop.Height := 33;

end;

procedure TfrmTacticalDisplay.FormShow(Sender: TObject);
begin
  // Be_A_FullMap(false);
  EnableComposited(pnlMap);
  if vGameDataSetting.GamePlayMode.GameType = byte(gpmReplay) then
     if tbtnStartGame.Visible = true then
        tbtnStartGameClick(Self);
  statusR_List.Clear;
  statusY_List.Clear;
end;

procedure TfrmTacticalDisplay.History1Click(Sender: TObject);
begin
  if not Assigned(fTrackHistory) then
    fTrackHistory := TfTrackHistory.Create(self);

  fTrackHistory.Show;
end;

procedure TfrmTacticalDisplay.History2Click(Sender: TObject);
begin
  if not Assigned(fTrackHistory) then
    fTrackHistory := TfTrackHistory.Create(self);

  fTrackHistory.Show;
end;

procedure TfrmTacticalDisplay.updateStatus_Yellow;
begin
  if statusY_List.Count > 0 then
  begin
    pnlStatusYellow.Visible := true;
    pnlStatusYellow.Caption := TStatus(statusY_List[statusY_List.Count-1]).state;
  end
  else
    pnlStatusYellow.Visible := false;
end;

procedure TfrmTacticalDisplay.updateStatus;
begin
  if statusR_List.Count > 0 then
  begin
    pnlStatusRed.Visible := true;
    pnlStatusYellow.Visible := true;
    pnlStatusRed.Caption := TStatus(statusR_List[statusR_List.Count-1]).state;
  end
  else
  begin
    pnlStatusRed.Visible  := false;
    if statusY_List.Count <= 0 then
      pnlStatusYellow.Visible := false

  end;
end;

procedure TfrmTacticalDisplay.addStatus_Yellow(status: String);
var status_state : TStatus;
begin
  status_state  := TStatus.Create;
  status_state.state := status;
  statusY_List.Add(status_state);
  updateStatus_Yellow;
end;

procedure TfrmTacticalDisplay.Add1Click(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    AddTrackPlatform(focusedTrack);
  end;
end;

procedure TfrmTacticalDisplay.Remove1Click(Sender: TObject);
begin
  if Assigned(focusedTrack) then
    RemoveFromTrackList(focusedTrack);
end;

procedure TfrmTacticalDisplay.addStatus(status: String);
var status_state : TStatus;
begin
  status_state  := TStatus.Create;
  status_state.state := status;
  statusR_List.Add(status_state);
  updateStatus;
end;

procedure TfrmTacticalDisplay.lvTrackTableSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
var
  obj: TObject;
begin
  if Item = nil then
    exit;

  obj := Item.Data;
  if obj is TT3DetectedTrack then (obj as TT3DetectedTrack)
    .Selected := true
  else if obj is TT3PlatformInstance then (obj as TT3PlatformInstance)
    .Selected := true;

  fmMapWindow1.Map.Repaint;
end;

procedure TfrmTacticalDisplay.Manual1Click(Sender: TObject);
begin
  if not(focusedTrack is TT3DetectedTrack)
     and not(focusedTrack.Equals(esmSelected))
     and not (focusedTrack is TT3NonRealVehicle) then
    Exit;

  if not Assigned(frmChangeTrackNumber) then
    frmChangeTrackNumber := TfrmChangeTrackNumber.Create(self);

  frmChangeTrackNumber.Data := focusedTrack;
  frmChangeTrackNumber.Show;
end;

procedure TfrmTacticalDisplay.Map2Click(Sender: TObject);
var
  pt: TPoint;
  mx, my: double;
  posX1, posY1, RangeGun: Double;
  isInsideBlindzoneGun : Boolean;
begin
  GetCursorPos(pt);
  pt := fmMapWindow1.Map.ScreenToClient(pt);

  simMgrClient.Converter.ConvertToMap(pt.x, pt.y, mx, my);

  case fmMapWindow1.Map.CurrentTool of
    mtSelectObject:
      begin
      end;
    mtDeployPosition:
      begin
        if (Assigned(frmRPLibrary)) and (frmRPLibrary.Visible) then
        begin
          frmRPLibrary.MapPositionX := mx;
          frmRPLibrary.MapPositionY := my;
        end
        else
        if (Assigned(frmEditNonRealTimeTrack)) and (frmEditNonRealTimeTrack.Visible) then
        begin
          frmEditNonRealTimeTrack.MapPositionX := mx;
          frmEditNonRealTimeTrack.MapPositionY := my;

          frmEditNonRealTimeTrack.edtNRBPosition.Text := formatDM_longitude(mx) + ';'
          + formatDM_latitude(my);

          frmEditNonRealTimeTrack.edtposition.Text := formatDM_longitude(mx) + ';'
          + formatDM_latitude(my);

          frmEditNonRealTimeTrack.edtAOPCenter.Text := formatDM_longitude(mx) + ';'
          + formatDM_latitude(my);
        end
        else
        if (Assigned(fmPlatformGuidance1)) and (fmPlatformGuidance1.Visible)
           and (fmPlatformGuidance1.grpCircle.Visible)
           and (fmPlatformGuidance1.grpStation.Visible)then
        begin
          fmPlatformGuidance1.MapPositionX := mx;
          fmPlatformGuidance1.MapPositionY := my;
        end
        else
        if (Assigned(fmWeapon1)) and (fmWeapon1.Visible) and (fmWeapon1.grbGunEngagementAutomaticManualMode.Visible) then
        begin
          fmWeapon1.MapPositionX := mx;
          fmWeapon1.MapPositionY := my;
        end;

        fmMapWindow1.Map.CurrentTool := mtSelectObject;
      end;
    {nando added}
    mtAimpoint :
      begin

        if fmWeapon1.focused_weapon is TT3HybridOnVehicle then begin

          fmWeapon1.edtHybridMissiletargetAimpoint.Text :=
             formatDMS_long(mx) + ' ' + formatDMS_latt(my);

          TT3HybridOnVehicle(fmWeapon1.focused_weapon).Aimpoint_Movement.PositionX := mx;
          TT3HybridOnVehicle(fmWeapon1.focused_weapon).Aimpoint_Movement.PositionY := my;

        end else begin

          fmWeapon1.editTacticalMissileTargetAimpoint.Text :=
             formatDMS_long(mx) + ' ' + formatDMS_latt(my);

          fmWeapon1.TacticalMissileAimpointSet(Mx, MY);
        end;
        fmMapWindow1.Map.CurrentTool := mtSelectObject;
      end;
    mtDeployChaff :
      begin
        fmWeapon1.MapPosition(mx,my);
      end;
    mtDeployNGS :         //mk add
      begin
        if (Assigned(frmNGSGunSetup)) and (frmNGSGunSetup.Visible) then
        begin
          if (Assigned(frmNGSGunSetup.Weapon)) and (frmNGSGunSetup.Weapon is TT3GunOnVehicle) then
          begin
            posX1 := TT3PlatformInstance(TT3GunOnVehicle(frmNGSGunSetup.Weapon).Parent).PosX;
            posY1 := TT3PlatformInstance(TT3GunOnVehicle(frmNGSGunSetup.Weapon).Parent).PosY;
            RangeGun :=  CalcRange(posX1, posY1, mx, my);
            isInsideBlindzoneGun := TT3GunOnVehicle(frmNGSGunSetup.Weapon).InsideBlindZonePos(mx, my);

            if (RangeGun > TT3GunOnVehicle(frmNGSGunSetup.Weapon).GunDefinition.FData.Max_Range)
                or isInsideBlindzoneGun then
            begin
              frmNGSGunSetup.btnApply.Enabled    := False;

              MessageDlg('Target Point in blindzone or out of range!', mtWarning, [mbOK], 0);
              exit;
            end
            else
            begin
              frmNGSGunSetup.MapPositionX := mx;
              frmNGSGunSetup.MapPositionY := my;
              frmNGSGunSetup.SetBearingNGS(mx, my);

              simMgrClient.TargetPoint.PosX := mx;
              simMgrClient.TargetPoint.PosY := my;

              frmNGSGunSetup.btnApply.Enabled    := True;
            end;
          end;
        end
      end;
  end;

  // tambahan ryu
  if assigned(focusedTrack)  then
  begin
    fmWeapon1.focused_platform := focusedTrack;
    fmPlatformGuidance1.focused_platform  := focusedTrack;
    //fmCounterMeasure1.focused_platform := focusedTrack;

    {Prince}
    fmOverlayEditor.TrackPlatform  := focusedTrack;
  end
  else if not assigned(focusedTrack) then
  begin
    fmWeapon1.focused_platform := nil;
    fmPlatformGuidance1.focused_platform  := nil;
    //fmCounterMeasure1.focused_platform := nil;
    //fmFireControl1.Focused_Platform := nil;

    {Prince}
    fmOverlayEditor.TrackPlatform  := focusedTrack;
  end;
end;

procedure TfrmTacticalDisplay.Map2DblClick(Sender: TObject);
var
  pt: TPoint;
  aObject: TSimObject;
  x, y: double;
  pi : TT3PlatformInstance;
  bObject : TT3PlatformInstance;
  SunoBoy : TT3Sonobuoy;
  veLeader : TT3PlatformInstance;
  I: Integer;
begin
  GetCursorPos(pt);
  pt := fmMapWindow1.Map.ScreenToClient(pt);

  simMgrClient.Converter.ConvertToMap(pt.x, pt.y, x, y);

  aObject := simMgrClient.FindNearestTrack(x, y, 15); //edit andik suneo

  if (aObject <> nil) and (aObject is TT3PlatformInstance) then
  begin
    if simMgrClient.ISInstructor then
    begin
      if aObject is TT3NonRealVehicle then
      begin
        TT3NonRealVehicle(aObject).Selected := true;
        fmMapWindow1.Map.Repaint;
      end
      else if aObject is TT3PlatformInstance then
      begin
        pi := TT3PlatformInstance(aObject);
        if pi.UnitGroup then
        begin
          pi.Controlled := true;
          pi.Selected   := true;

          simMgrClient.netSend_VoipControlledChanged(pi.InstanceIndex);

          //check all sunoboy
          for I := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            bObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));

            if bObject Is TT3Sonobuoy then
            begin
              SunoBoy := TT3Sonobuoy(bObject);
              SunoBoy.Gambar := false;

              if SunoBoy.ParentIndex = TT3PlatformInstance(pi).InstanceIndex then
              begin
                SunoBoy.Gambar := True;
              end;

            end;
          end;

          fmMapWindow1.Map.Repaint;
        end;
      end;
    end
    else
    begin
      if aObject is TT3NonRealVehicle then
      begin
        TT3NonRealVehicle(aObject).Selected := true;
        fmMapWindow1.Map.Repaint;
      end
      else if aObject is TT3DetectedTrack then
      begin
        TT3DetectedTrack(aObject).Selected := true;
        fmMapWindow1.Map.Repaint;
      end
      else if aObject is TT3PlatformInstance then
      begin
        pi := TT3PlatformInstance(aObject);
        if pi.UnitGroup then
        begin
          pi.Controlled := true;
          pi.Selected   := true;

          simMgrClient.netSend_VoipControlledChanged(pi.InstanceIndex);

          { check formation active for follower and leader, bring formation panel to front }
          if pi is TT3Vehicle then
          begin
            if TT3Vehicle(pi).FormationModeActive then
            begin
              if TT3Vehicle(pi).isFormationLeader then
                veLeader := TT3Vehicle(pi)
              else
                veLeader := TT3Vehicle(pi).LeaderPlatform;

              if Assigned(veLeader) then
              begin
                fmPlatformGuidance1.DisplayTab(Byte(vgtFormation));

                fmPlatformGuidance1.lblNameFormation
                     .Caption := TT3Vehicle(veLeader).FormationName;
                fmPlatformGuidance1.lblLeaderFormation
                     .Caption := TT3Vehicle(veLeader).InstanceName;

                fmPlatformGuidance1.lblBearingFormation
                     .Caption := FormatCourse(TT3Vehicle(veLeader).FormationBearing);
                fmPlatformGuidance1.lblRangeFormation
                     .Caption := FormatFloat('0.00', TT3Vehicle(veLeader).FormationRange);
              end;
            end;
          end;

          fmMapWindow1.Map.Repaint;
        end;
      end;
    end;
  end;

  clearPopRightClick;
  pmPopupMenu1.Popup(0,0);

  Cursor := crDefault;
end;

procedure TfrmTacticalDisplay.Map2Exit(Sender: TObject);
begin
  lbLongitude.Caption := '---';
  lbLatitude.Caption := '---';
end;

procedure TfrmTacticalDisplay.MapMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; x, y: Integer);
var
  mx, my: double;
  pos: TPoint;
  aObj, iObj: TObject;
  i : Integer;
  sObject : TSimObject;
begin
  simMgrClient.Converter.ConvertToMap(x, y, mx, my);
  GetCursorPos(pos);

  if Button = mbLeft then
    FLeftMouseDown := true;

  if simMgrClient.ISInstructor then
  begin
    aObj := simMgrClient.FindNearestTrack(mx, my, 10);

    if aObj = nil then
      aObj := simMgrClient.FindNearestRBLWaypointTrack(mx, my, 10);

    if aObj = nil then
      aObj := simMgrClient.FindNearestBOLWaypointTrack(mx, my, 10);
  end
  else
  begin
    aObj := simMgrClient.FindNearestDetectedTrack(mx, my, 10);

    if aObj = nil then
      aObj := simMgrClient.FindNearestTrack(mx, my, 10);

    if aObj = nil then
      aObj := simMgrClient.FindNearestRBLWaypointTrack(mx, my, 10);

    if aObj = nil then
      aObj := simMgrClient.FindNearestBOLWaypointTrack(mx, my, 10);
  end;

  if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject) then
  begin
    if aObj <> nil then
    begin
      focusedTrack := nil;

      // unselect all track
      UnSelectAllRBLWPointTrack;
      UnSelectAllBOLWPointTrack;
      UnSelectAllPlatformTrack;
      UnSelectAllNRPlatformTrack;
      UnselectAllDetectedTrack;

      if aObj is TPointVehicleMissileRBLW then
        TPointVehicleMissileRBLW(aObj).Selected := True
      else
      if aObj is TPointVehicleMissileBOLW then
        TPointVehicleMissileBOLW(aObj).Selected := True
      else
      if aObj is TT3PlatformInstance then
        TT3PlatformInstance(aObj).Selected := true
      else
      if aObj is TT3DetectedTrack then
        TT3DetectedTrack(aObj).Selected := true;

      focusedTrack := TSimObject(aObj);

      // baik di cubicle maupun instruktur, nRt bisa digeser
      // dan defaultnya focusedtrack bisa direpos
      if Assigned(focusedTrack) and
         ((focusedTrack is TT3PlatformInstance) or (focusedTrack is TT3NonRealVehicle))
      then
      begin
        if Assigned(tmMove) then
          tmMove.Enabled := true;
      end;
      //TT3PlatformInstance(focusedTrack).BeginReposition;

      for i := 0 to cbAssumeControl.Items.Count - 1 do
      begin
        iObj := cbAssumeControl.Items.Objects[i];

        if focusedTrack = iObj then
          break;
      end;

      cbAssumeControl.ItemIndex := i;
    end;
  end;

  if FLeftMouseDown and FAnchorFilterEnabled and Assigned(anchorTrack) then
  begin
    isOnAnchorLine := simMgrClient.LineVisual.isPointOnLine(mx, my);
    if isOnAnchorLine {and (not (anchorTrack is TT3NonRealVehicle))} then
    begin
      fmMapWindow1.Map.CurrentTool := mtAnchorTool;

      simMgrClient.LineVisual.Range := CalcRange(anchorTrack.getPositionX,
        anchorTrack.getPositionY, mx, my);
      simMgrClient.LineVisual.Bearing := CalcBearing
        (anchorTrack.getPositionX, anchorTrack.getPositionY, mx, my);
    end;
  end;

  {if FMouseDown and (focusedTrack is TT3NonRealVehicle) and (TT3NonRealVehicle(focusedTrack).NRPType = nrpBearing) then
  begin
    isOnAnchorLine := TT3NonRealVehicle(focusedTrack).LineVisual.isPointOnLine(mx, my);
    if isOnAnchorLine then
      if Assigned(focusedTrack) then
      begin
        fmMapWindow1.Map.CurrentTool := mtAnchorTool;
        TT3NonRealVehicle(focusedTrack).LineVisual.Range := CalcRange(focusedTrack.getPositionX,
          focusedTrack.getPositionY, mx, my);
        TT3NonRealVehicle(focusedTrack).LineVisual.Bearing := CalcBearing
          (focusedTrack.getPositionX, focusedTrack.getPositionY, mx, my);
      end;
  end;}

//  if FLeftMouseDown and not (fmMapWindow1.Map.CurrentTool = mtAnchorTool) then
//  begin
//    for I := 0 to simMgrClient.simNonRealPlatform.itemCount - 1 do
//    begin
//      nonReal := simMgrClient.simNonRealPlatform.getObject(I) as TT3NonRealVehicle;
//      isOnAnchorLine := nonReal.LineVisual.isPointOnLine(mx, my);

//      if isOnAnchorLine then
//      begin
//        focusedTrack := nonReal;
//        nonReal.Selected := True;
//      end
//      else
//      begin
//        nonReal.Selected := false;
//      end;
//    end;
//  end;

  if (focusedTrack <> nil) then      //mk
  begin
    if FLeftMouseDown and (focusedTrack is TT3Vehicle) and
       not(focusedTrack is TT3NonRealVehicle) then
    begin
      for I := 0 to simMgrClient.SimDevices.itemCount - 1 do
      begin
        sObject := simMgrClient.SimDevices.getObject(I);
        if (sObject is TT3ESMTrack) then
        begin
           if (TT3ESMTrack(sObject).TextVisual.Center.X = mx) and
              (TT3ESMTrack(sObject).TextVisual.Center.Y = my) then
           begin
              TT3ESMTrack(sObject).TextVisual.Color := clYellow;
           end;
        end;
      end;
    end;
  end;

  if setFocusedESMTrack(FLeftMouseDown, mx, my) then
  begin
    //unselect obj sebelunnya
    if aObj <> nil then
    begin
      if aObj is TPointVehicleMissileRBLW then
        TPointVehicleMissileRBLW(aObj).Selected := False
      else
      if aObj is TPointVehicleMissileBOLW then
        TPointVehicleMissileBOLW(aObj).Selected := False
      else
      if aObj is TT3PlatformInstance then
        TT3PlatformInstance(aObj).Selected := False
      else if aObj is TT3DetectedTrack then
        TT3DetectedTrack(aObj).Selected := False;
    end;
  end;

  if focusedTrack is TT3DetectedTrack then      //set btn split top panel
  begin
    if Assigned(TT3DetectedTrack(focusedTrack).MergedESM) then
    begin
      ToolBtnSplit.Enabled := True;
      isStatusMerge := True;
    end
    else
    begin
      ToolBtnSplit.Enabled := False;
      isStatusMerge := False;
    end;
  end;

  //aldy
  RBLWPointX := mx;
  RBLWPointY := my;

  if Button = mbRight then
  begin
    // set new point for new NRT Platform
    newPoint.x := x;
    newPoint.y := y;

    if simMgrClient.ISInstructor then
    begin
      if aObj <> nil then
      begin
        if (aObj is TT3Sonobuoy) then
        begin
          TT3PlatformInstance(aObj).Selected := true;
          focusedTrack := TT3PlatformInstance(aObj);

          setPopUpPropItem(TSimObject(focusedTrack));
          setHookPopup;
          {Ketika klik kanan sonobuoy yg lain di hiden}
          mniConvertRTtoNRT1.Visible  := False;
          mniCharacteristic1.Visible  := False;
          mniMerge1.Visible           := False;
          mniSplit1.Visible           := False;
          mniDatalink1.Visible        := False;
          mniTrackNumber1.Visible     := False;
          mniTrackHistory1.Visible    := False;
          mniIntiate1.Visible         := False;
          mniBreakAllFireControl1.Visible := False;
          mniClearRing1.Visible       := False;
          mniTorpedo.Visible := False;
        end
        else if (aObj is TT3Torpedo) then
        begin
          TT3PlatformInstance(aObj).Selected := true;
          focusedTrack := TT3PlatformInstance(aObj);

          setPopUpPropItem(TSimObject(focusedTrack));
          setHookPopup;
          {Ketika klik kanan Torpedo Wire Guided}
          mniConvertRTtoNRT1.Visible  := False;
          mniCharacteristic1.Visible  := False;
          mniMerge1.Visible           := False;
          mniSplit1.Visible           := False;
          mniDatalink1.Visible        := False;
          mniTrackNumber1.Visible     := False;
          mniTrackHistory1.Visible    := False;
          mniIntiate1.Visible         := False;
          mniBreakAllFireControl1.Visible := False;
          mniClearRing1.Visible       := False;
          mniSonobuoys.Visible := False;
        end
        else if aObj is TT3PlatformInstance then
        begin
          TT3PlatformInstance(aObj).Selected := true;
          focusedTrack := TT3PlatformInstance(aObj);

          setPopUpPropItem(TSimObject(focusedTrack));
          setHookPopup;

          if focusedTrack is TT3NonRealVehicle then begin
            mniCharacteristic1.Enabled := true;
            mniDomain1.Enabled := true;
            mniPlatformType1.Enabled   := true;

            mniTrackNumber1.Enabled := true;
          end else
          begin
            mniCharacteristic1.Enabled := false;
            mniDomain1.Enabled := false;
            mniPlatformType1.Enabled   := false;

            mniTrackNumber1.Enabled := false;
          end;

          mniConvertRTtoNRT1.Enabled := false;
          mniMerge1.Enabled := False;
          mniSplit1.Enabled := false;
          mniIntiate1.Enabled := false;
          mniBreakAllFireControl1.Enabled := false;
          Platform1.Visible := False;
          mniSonobuoys.Visible := False;
          mniTorpedo.Visible := False;
        end;
      end
      else
      begin
        setFreePopup;
      end;

      pmPopupMenu1.Popup(pos.X, pos.Y);
    end
    else
    begin
      if aObj <> nil then
      begin
        if Assigned(aObj) then
        begin
          if aObj is TT3PlatformInstance then
          begin
            TT3PlatformInstance(aObj).Selected := true;
            focusedTrack := TT3PlatformInstance(aObj);

            mniMerge1.Enabled := False;
            mniSplit1.Enabled := false;

            if focusedTrack is TT3Sonobuoy then
            begin
              setHookPopup;
              setPopUpPropItem(TSimObject(focusedTrack));
              {Ketika klik kanan sonobuoy yg lain di hiden}
              mniConvertRTtoNRT1.Visible  := False;
              mniCharacteristic1.Visible  := False;
              mniMerge1.Visible           := False;
              mniSplit1.Visible           := False;
              mniDatalink1.Visible        := False;
              mniTrackNumber1.Visible     := False;
              mniTrackHistory1.Visible    := False;
              mniIntiate1.Visible         := False;
              mniBreakAllFireControl1.Visible := False;
              mniClearRing1.Visible       := False;
              mniTorpedo.Visible := False;
            end
            else if (aObj is TT3Torpedo) then
            begin
              TT3PlatformInstance(aObj).Selected := true;
              focusedTrack := TT3PlatformInstance(aObj);

              setPopUpPropItem(TSimObject(focusedTrack));
              setHookPopup;
              {Ketika klik kanan Torpedo Wire Guided}
              mniConvertRTtoNRT1.Visible  := False;
              mniCharacteristic1.Visible  := False;
              mniMerge1.Visible           := False;
              mniSplit1.Visible           := False;
              mniDatalink1.Visible        := False;
              mniTrackNumber1.Visible     := False;
              mniTrackHistory1.Visible    := False;
              mniIntiate1.Visible         := False;
              mniBreakAllFireControl1.Visible := False;
              mniClearRing1.Visible       := False;
              mniSonobuoys.Visible := False;
            end
            else if focusedTrack is TT3NonRealVehicle then
            begin
              setHookPopup;
              setPopUpPropItem(TSimObject(focusedTrack));
              mniCharacteristic1.Enabled := true;
              mniDomain1.Enabled := true;
              mniPlatformType1.Enabled   := true;

              mniConvertRTtoNRT1.Enabled := false;
              mniIntiate1.Enabled := false;
              mniBreakAllFireControl1.Enabled := false;
              Platform1.Visible := False;
              mniSonobuoys.Visible := False;
              mniTorpedo.Visible := False;
            end
            else if focusedTrack is TT3Vehicle then
            begin
              setHookPopup;
              setPopUpPropItem(TSimObject(focusedTrack));
              mniCharacteristic1.Enabled := false;
              mniTrackNumber1.Enabled := false;
              Platform1.Visible := False;
              mniSonobuoys.Visible := False;
              mniTorpedo.Visible := False;
            end;

            pmPopupMenu1.Popup(pos.x, pos.y);
            //TT3PlatformInstance(focusedTrack).Selected := false;
          end
          else if aObj is TT3DetectedTrack then
          begin
            { tambahan dari Aldy : tambahkan show pop menu ketika yg hooked }
            // focusedTrack := simMgrClient.FindNearestTrack(mx, my, 10);
            if TT3DetectedTrack(aObj).Selected <> true then   //add andik
              TT3DetectedTrack(aObj).Selected := true;

            focusedTrack := TT3DetectedTrack(aObj);
            setHookPopup;

            if Assigned(focusedTrack) then
            begin
              if focusedTrack is TSimObject then
              begin
                setPopUpPropItem(TSimObject(focusedTrack));
              end;

              mniCharacteristic1.Enabled := true;
              mniDomain1.Enabled := false;
              mniPlatformType1.Enabled   := false;
              mniConvertRTtoNRT1.Enabled := false;

              if TT3DetectedTrack(focusedTrack).MergedESM = nil then
              begin
                mniMerge1.Enabled := true;
                mniSplit1.Enabled := false;
              end
              else
              begin
                mniMerge1.Enabled := false;
                mniSplit1.Enabled := true;
              end;

              mniIntiate1.Enabled := false;
              mniBreakAllFireControl1.Enabled := false;
              mniTrackNumber1.Enabled := true;
            end
            else
            begin
              // jika tidak hooked
              { disable characteristic }
              mniCharacteristic1.Enabled := false;
              mniMerge1.Enabled := False;
              mniSplit1.Enabled := false;
              mniConvertRTtoNRT1.Enabled := false;
              mniMerge1.Enabled := false;
              mniSplit1.Enabled := false;
              mniIntiate1.Enabled := false;
              mniBreakAllFireControl1.Enabled := false;
            end;

            pmPopupMenu1.Popup(pos.x, pos.y);
          end
          else
          begin
            // jika tidak hooked
            { disable characteristic }
            mniCharacteristic1.Enabled := false;
            mniMerge1.Enabled := False;
            mniSplit1.Enabled := false;
            mniConvertRTtoNRT1.Enabled := false;
            mniMerge1.Enabled := false;
            mniSplit1.Enabled := false;
            mniIntiate1.Enabled := false;
            mniBreakAllFireControl1.Enabled := false;
          end;
        end;
      end
      else
      begin
        if Assigned(esmSelected) then
        begin
          setHookPopup;
          focusedTrack := esmSelected;

          if focusedTrack is TSimObject then
          begin
            setPopUpPropItem(TSimObject(focusedTrack));
          end;

          mniCharacteristic1.Enabled := true;
          mniDomain1.Enabled := true;
          mniPlatformType1.Enabled   := false;
          mniTrackNumber1.Enabled := true;

          mniMerge1.Enabled := true;
          mniSplit1.Enabled := false;

          mniConvertRTtoNRT1.Enabled := false;
          mniBreakAllFireControl1.Enabled := false;
        end
        else
        begin
          setFreePopup;
        end;

        pmPopupMenu1.Popup(pos.x, pos.y);
      end;
    end;
  end;

  {Prince: for overlay}
  if FLeftMouseDown then
  begin
    if fmMapWindow1.Map.CurrentTool = mtEditOverlayStatic then
    begin
      simMgrClient.Converter.ConvertToScreen(mx, my, pos.X, pos.Y);
      fmOverlayEditor.SelectShape(pos);
    end
    else if fmMapWindow1.Map.CurrentTool = mtEditOverlayDynamic then
    begin
      simMgrClient.Converter.ConvertToScreen(mx, my, pos.X, pos.Y);
      fmOverlayEditor.SelectShape(pos);
    end
    else if fmMapWindow1.Map.CurrentTool = mtAddOverlay then
    begin
      fmOverlayEditor.PostX := mx;
      fmOverlayEditor.PostY := my;
      fmOverlayEditor.FillEditText;

      fmOverlayEditor.GbrFlagPoint(mx, my);

      if fmOverlayEditor.TagObject = ovPolygon then
      begin
        if fmOverlayEditor.SpeedButton10.Down then
        begin
          with fmOverlayEditor.lvPolyVertex.Items.Add do
          begin
            SubItems.Add(formatDMS_long(mx));
            SubItems.Add(formatDMS_latt(my));
          end;
          fmOverlayEditor.RefreshLvPolyVertexList(1);
        end;
      end
      else
        fmMapWindow1.Map.CurrentTool := mtSelectObject;
    end
  end;
end;

procedure TfrmTacticalDisplay.MapMouseMove(Sender: TObject; Shift: TShiftState;
  x, y: Integer);
var
  r, b, mx, my, long, lat : Double;
  sX, sY : Integer;
  pX, pY : Extended;
  PointRBLW : TPointVehicleMissileRBLW;
  PointBOLW : TPointVehicleMissileBOLW;
begin
  simMgrClient.Converter.ConvertToMap(x, y, mx, my);
  lbLongitude.Caption := formatDMS_long(mx);
  lbLatitude.Caption := formatDMS_latt(my);

  if FAnchorFilterEnabled and FLeftMouseDown then
  begin
    if isOnAnchorLine and Assigned(anchorTrack) and
      (fmMapWindow1.Map.CurrentTool = mtAnchorTool) then
    begin
      r := CalcRange(anchorTrack.getPositionX, anchorTrack.getPositionY, mx,
        my);
      b := CalcBearing(anchorTrack.getPositionX, anchorTrack.getPositionY, mx,
        my);
      simMgrClient.LineVisual.Range := r;
      simMgrClient.LineVisual.Bearing := b;

      lbRangeAnchor.Caption := FormatSpeed(r);
      lbBearingAnchor.Caption := FormatCourse(b);
    end;
  end;

//  if (focusedTrack <> nil) and (focusedTrack is TT3NonRealVehicle) and FLeftMouseDown then
//  begin
//    if isOnAnchorLine and Assigned(focusedTrack) and
//      (fmMapWindow1.Map.CurrentTool = mtAnchorTool) then
//    begin
//      r := CalcRange(focusedTrack.getPositionX, focusedTrack.getPositionY, mx,
//        my);
//      b := CalcBearing(focusedTrack.getPositionX, focusedTrack.getPositionY, mx,
//        my);
//      TT3NonRealVehicle(focusedTrack).LineVisual.Range := r;
//      TT3NonRealVehicle(focusedTrack).LineVisual.Bearing := b;

//      lbRangeAnchor.Caption := FormatSpeed(r);
//      lbBearingAnchor.Caption := FormatCourse(b);
//    end;
//  end;

  long := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Long;
  lat := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Lat;

  simMgrClient.Converter.ConvertToScreen(long, lat, sX, sY);

  //kX := x - sX;
  //kY := y - sY;
  pX := CalcMove(mx, long);
  pY := CalcMove(my, lat);

  lbX.Caption := FormatFloat('0.00', Abs(pX));
  lbY.Caption := FormatFloat('0.00', Abs(pY));

  if (pX >= 0) and (pY >=0) then begin
    lbColor.Caption := 'White ';  //kuadran 1
  end;
  if (pX <= 0) and (pY >=0) then begin
    lbColor.Caption := 'Red ';   //kuadran 2
  end;
  if (pX < 0) and (pY < 0) then begin
    lbColor.Caption := 'Green '; //kuadran 3
  end;
  if (pX >= 0) and (pY <= 0) then begin
    lbColor.Caption := 'Blue ';  //kuadran 4
  end;

  if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject) and
     (focusedTrack <> nil) and ((focusedTrack is TPointVehicleMissileRBLW) or
     (focusedTrack is TPointVehicleMissileBOLW)) then
  begin
    if (focusedTrack is TPointVehicleMissileRBLW) and
      TPointVehicleMissileRBLW(focusedTrack).IsEdit and
      Assigned(simMgrClient.ControlledPlatform) then
    begin
      PointRBLW := TPointVehicleMissileRBLW(focusedTrack);

      simMgrClient.MovePlatformLine.X1 := PointRBLW.PointRBLW_X1;
      simMgrClient.MovePlatformLine.Y1 := PointRBLW.PointRBLW_Y1;
      r := CalcRange(PointRBLW.PointRBLW_X1,PointRBLW.PointRBLW_Y1,mx,my);
      b := CalcBearing(PointRBLW.PointRBLW_X1,PointRBLW.PointRBLW_Y1,mx,my);
      simMgrClient.MovePlatformLine.Range := r;
      simMgrClient.MovePlatformLine.Bearing := b;
      simMgrClient.MovePlatformLine.IsOnce := False;
      simMgrClient.MovePlatformLine.Visible := True;

      if (PointRBLW.PointRBLW_X1 <> mx) or (PointRBLW.PointRBLW_Y1 <> my) then
        PointRBLW.IsChange := True;
    end
    else if (focusedTrack is TPointVehicleMissileBOLW) and
      TPointVehicleMissileBOLW(focusedTrack).IsEdit and
      Assigned(simMgrClient.ControlledPlatform) then
    begin
      PointBOLW := TPointVehicleMissileBOLW(focusedTrack);

      simMgrClient.MovePlatformLine.X1 := PointBOLW.PointBOLW_X1;
      simMgrClient.MovePlatformLine.Y1 := PointBOLW.PointBOLW_Y1;
      r := CalcRange(PointBOLW.PointBOLW_X1, PointBOLW.PointBOLW_Y1, mx, my);
      b := CalcBearing(PointBOLW.PointBOLW_Y1, PointBOLW.PointBOLW_Y1, mx, my);
      simMgrClient.MovePlatformLine.Range := r;
      simMgrClient.MovePlatformLine.Bearing := b;
      simMgrClient.MovePlatformLine.IsOnce := False;
      simMgrClient.MovePlatformLine.Visible := True;

      if (PointBOLW.PointBOLW_X1 <> mx) or (PointBOLW.PointBOLW_Y1 <> my) then
        PointBOLW.IsChange := True;
    end;

    FBeginDrag := true;
  end;

  if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject)
    and simMgrClient.ISInstructor and (focusedTrack <> nil) and
    (focusedTrack is TT3Unit) and TT3Unit(focusedTrack).IsRepositioning then
  begin
    //choco : di MouseMove dilarang Reposisi

    if Assigned(focusedTrack) then
    begin
      simMgrClient.MovePlatformLine.X1 := focusedTrack.PosX;
      simMgrClient.MovePlatformLine.Y1 := focusedTrack.PosY;
      r := CalcRange(focusedTrack.PosX,focusedTrack.PosY,mx,my);
      b := CalcBearing(focusedTrack.PosX,focusedTrack.PosY,mx,my);
      simMgrClient.MovePlatformLine.Range := r;
      simMgrClient.MovePlatformLine.Bearing := b;
      simMgrClient.MovePlatformLine.IsOnce := False;
      simMgrClient.MovePlatformLine.Visible := True;
    end;

    FBeginDrag := true;
  end
  else if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject)
    and not simMgrClient.ISInstructor and (focusedTrack <> nil) and TT3Unit
    (focusedTrack).IsRepositioning then
  begin
     if (focusedTrack is TT3NonRealVehicle) {and (focusedTrack is TT3DetectedTrack)} then
     begin
        TT3NonRealVehicle(focusedTrack).RepositionTo(mx, my);
        FBeginDrag := true;
     end;
  end;
end;

procedure TfrmTacticalDisplay.MapMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; x, y: Integer);
var
  IsChange : Boolean;
  mx, my, range, bearing, newX, newY: Double;
  NRPGroupID : Integer;
  RecSyncRBLW : TrecSinc_RBLW;
  RecSyncBOLW : TrecSinc_BOLW;
  PointRBLW : TPointVehicleMissileRBLW;
  PointBOLW : TPointVehicleMissileBOLW;

  MaxPointIndexOnThisLauncher : Integer;
  WaypointOwner : TT3Vehicle;
  MissOnVehicle : TT3MissilesOnVehicle;
begin
  simMgrClient.Converter.ConvertToMap(x, y, mx, my);

  isOnAnchorLine := false;
  if Assigned(tmMove) then tmMove.Enabled := false;

  if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject)
    and simMgrClient.ISInstructor and (focusedTrack <> nil) then
  begin
    NRPGroupID := 0;
    if focusedTrack is TT3Unit then
      TT3Unit(focusedTrack).EndReposition;

//    if TT3Unit(focusedTrack).Controlled and FBeginDrag then begin
    if (TT3Unit(focusedTrack).Selected or (focusedTrack is TT3NonRealVehicle))
       and FBeginDrag then begin
      // send setiap selesai repos
      simMgrClient.netSend_CmdPlatform_Move(TT3Unit(focusedTrack).InstanceIndex,
        CORD_ID_REPOS, mx, my, NRPGroupID);
      FBeginDrag := false;
    end;

    TT3PlatformInstance(focusedTrack).isSkipDraw := False;
    simMgrClient.MovePlatformLine.Visible := False;
  end
  else if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject)
    and not simMgrClient.ISInstructor and (focusedTrack <> nil) then
  begin
    NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;
    if focusedTrack is TT3Unit then begin
      TT3Unit(focusedTrack).EndReposition;
    end;

    if (focusedTrack is TT3NonRealVehicle) and (FBeginDrag) then begin
     // send setiap selesai repos
      simMgrClient.netSend_CmdPlatform_Move(TT3Unit(focusedTrack).InstanceIndex,
        CORD_ID_REPOS, mx, my, NRPGroupID);
      FBeginDrag := false;
    end;

    simMgrClient.MovePlatformLine.Visible := False;
  end;

  if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject) and (focusedTrack <> nil) then
  begin
    if (focusedTrack is TPointVehicleMissileRBLW) and
      TPointVehicleMissileRBLW(focusedTrack).IsEdit and
      Assigned(simMgrClient.ControlledPlatform) then
    begin
      PointRBLW := TPointVehicleMissileRBLW(focusedTrack);

      WaypointOwner := TT3Vehicle(simMgrClient.ControlledPlatform);
      MissOnVehicle := TT3MissilesOnVehicle(WaypointOwner.getWeapon(fmWeapon1.edtWeaponName.Text));

      MaxPointIndexOnThisLauncher := fmWeapon1.CheckIDRBLW(PointRBLW.LauncherIndex) - 1;

      if PointRBLW.IndexPoint = MaxPointIndexOnThisLauncher then
      begin
        range := CalcRange(TT3PlatformInstance(MissOnVehicle.TargetObject).PosX,
                           TT3PlatformInstance(MissOnVehicle.TargetObject).PosY,mx,my);

        bearing := CalcBearing(TT3PlatformInstance(MissOnVehicle.TargetObject).PosX,
                               TT3PlatformInstance(MissOnVehicle.TargetObject).PosY,mx,my);

        if range < MissOnVehicle.MissileDefinition.FDef.Min_Final_Leg_Length then
        begin
          RangeBearingToCoord(MissOnVehicle.MissileDefinition.FDef.Min_Final_Leg_Length,bearing,newX,newY);
          mx := TT3PlatformInstance(MissOnVehicle.TargetObject).PosX + newX;
          my := TT3PlatformInstance(MissOnVehicle.TargetObject).PosY + newY;
        end;
      end;

      if PointRBLW.IsOriginal then
      begin
        with RecSyncRBLW do
        begin
          cmd := 9;
          PlatformID := simMgrClient.ControlledPlatform.InstanceIndex;
          WeaponIndex := MissOnVehicle.InstanceIndex;
          WeaponName := MissOnVehicle.InstanceName;
          RBLWIndex := PointRBLW.IndexPoint;
          RBLWLauncherIndex := PointRBLW.LauncherIndex;
          RBLW_PointX := PointRBLW.PointRBLW_X1;
          RBLW_POintY := PointRBLW.PointRBLW_Y1;
          Action := waMove;
        end;
        simMgrClient.netSend_CmdSyncRBLW(RecSyncRBLW);
      end;

      with RecSyncRBLW do
      begin
        cmd := 4;
        PlatformID := simMgrClient.ControlledPlatform.InstanceIndex;
        WeaponIndex := MissOnVehicle.InstanceIndex;
        WeaponName := MissOnVehicle.InstanceName;
        RBLWIndex := PointRBLW.IndexPoint;
        RBLWLauncherIndex := PointRBLW.LauncherIndex;
        RBLW_PointX := mx;
        RBLW_POintY := my;
      end;
      simMgrClient.netSend_CmdSyncRBLW(RecSyncRBLW);
    end
    else if (focusedTrack is TPointVehicleMissileBOLW) and
      TPointVehicleMissileBOLW(focusedTrack).IsEdit and
      Assigned(simMgrClient.ControlledPlatform) then
    begin
      PointBOLW := TPointVehicleMissileBOLW(focusedTrack);

      WaypointOwner := TT3Vehicle(simMgrClient.ControlledPlatform);
      MissOnVehicle := TT3MissilesOnVehicle(WaypointOwner.getWeapon(fmWeapon1.edtWeaponName.Text));

      MaxPointIndexOnThisLauncher := fmWeapon1.CheckIDBOLW(PointBOLW.LauncherIndex) - 1;

      if PointBOLW.IndexPoint = MaxPointIndexOnThisLauncher then
      begin
        range := CalcRange(TT3PlatformInstance(MissOnVehicle.TargetObject).PosX,
                           TT3PlatformInstance(MissOnVehicle.TargetObject).PosY,mx,my);

        bearing := CalcBearing(TT3PlatformInstance(MissOnVehicle.TargetObject).PosX,
                               TT3PlatformInstance(MissOnVehicle.TargetObject).PosY,mx,my);

        if range < MissOnVehicle.MissileDefinition.FDef.Min_Final_Leg_Length then
        begin
          RangeBearingToCoord(MissOnVehicle.MissileDefinition.FDef.Min_Final_Leg_Length,bearing,newX,newY);
          mx := TT3PlatformInstance(MissOnVehicle.TargetObject).PosX + newX;
          my := TT3PlatformInstance(MissOnVehicle.TargetObject).PosY + newY;
        end;
      end;

      if PointBOLW.IsOriginal then
      begin
        with RecSyncBOLW do
        begin
          cmd := 9;
          PlatformID := simMgrClient.ControlledPlatform.InstanceIndex;
          WeaponIndex := MissOnVehicle.InstanceIndex;
          WeaponName := MissOnVehicle.InstanceName;
          BOLWIndex := PointBOLW.IndexPoint;
          BOLWLauncherIndex := PointBOLW.LauncherIndex;
          BOLW_PointX := PointBOLW.PointBOLW_X1;
          BOLW_PointY := PointBOLW.PointBOLW_Y1;
          Action := waMove;
        end;
        simMgrClient.netSend_CmdSyncBOLW(RecSyncBOLW);
      end;

      with RecSyncBOLW do
      begin
        cmd := 4;
        PlatformID := simMgrClient.ControlledPlatform.InstanceIndex;
        WeaponIndex := MissOnVehicle.InstanceIndex;
        WeaponName := MissOnVehicle.InstanceName;
        BOLWIndex := PointBOLW.IndexPoint;
        BOLWLauncherIndex := PointBOLW.LauncherIndex;
        BOLW_PointX := mx;
        BOLW_PointY := my;
      end;
      simMgrClient.netSend_CmdSyncBOLW(RecSyncBOLW);
    end;
  end;

  if FLeftMouseDown and (fmMapWindow1.Map.CurrentTool = mtSelectObject)
    and (focusedTrack <> nil) then    //mk
  begin
    IsChange := False;

    if focusedTrack is TPointVehicleMissileRBLW then
    begin
      //IsEdit := TPointVehicleMissileRBLW(focusedTrack).IsEdit;
      IsChange := TPointVehicleMissileRBLW(focusedTrack).IsChange;
    end
    else if focusedTrack is TPointVehicleMissileBOLW then
    begin
      //IsEdit := TPointVehicleMissileBOLW(focusedTrack).IsEdit;
      IsChange := TPointVehicleMissileBOLW(focusedTrack).IsChange;
    end;

    if (focusedTrack is TPointVehicleMissileRBLW) or (focusedTrack is TPointVehicleMissileBOLW) then
    begin
      {if IsEdit then
      begin
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsEdit.Enabled   := False;
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsAdd.Enabled    := True;
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsDelete.Enabled := True;
      end
      else
      begin
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsEdit.Enabled   := True;
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsAdd.Enabled    := False;
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsDelete.Enabled := False;
      end;}

      if IsChange then
      begin
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsApply.Enabled := True;
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsCancel.Enabled := True;
      end
      else
      begin
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsApply.Enabled := False;
        fmWeapon1.btnSurfaceToSurfaceMissileWaypointsCancel.Enabled := False;
      end;
    end;
  end;

  //ESM
  if isOnESMLine then
  begin
    //tampilkan form edit number ESM
  end;

  FLeftMouseDown := false;
end;

procedure TfrmTacticalDisplay.setMainMenuItem(obj: TSimObject);
begin
  // set properti mainMenuItem
  if obj = nil then exit;

  {unchecked all mainMenu items}
  A1.Checked := false;
  Surface1.Checked := false;
  Subsurface1.Checked := false;
  Land1.Checked := false;
  General1.Checked := false;

  Pending1.Checked := false;
  Unknown1.Checked := false;
  AssumedFriend1.Checked := false;
  Friend1.Checked := false;
  Neutral1.Checked := false;
  Suspect1.Checked := false;
  Hostile1.Checked := false;

  AircraftCarrierCVCVN1.Checked := false;
  AmphibiousWarfare1.Checked := false;
  Auxiliary1.Checked := false;
  Chaff1.Checked := false;
  CruiserGuidedMissileCGCGN1.Checked := false;
  Destroyer1.Checked := false;
  DestroyerGuidedMissileDOG1.Checked := false;
  FrigateFF1.Checked := false;
  FrigateGuidedMissileFFG1.Checked := false;
  InfraredDecoy1.Checked := false;
  JammerDecoy1.Checked := false;
  Merchant1.Checked := false;
  MainWarfare1.Checked := false;
  PatrolCraftPTPTG1.Checked := false;
  UtilityVessel1.Checked := false;
  Other1.Checked := false;
  {end unchecked mainMenu items}

  //checked target menu
  if obj is TT3PlatformInstance then
  begin
    case TT3PlatformInstance(obj).PlatformDomain of
      vhdAir:
        A1.Checked := true;
      vhdSurface:
        Surface1.Checked := true;
      vhdSubsurface:
        Subsurface1.Checked := true;
      vhdLand:
        Land1.Checked := true;
      vhdGeneral:
        General1.Checked := true;
    end;

    case TT3Vehicle(obj).PlatformType of
      vhtAirCarrier:
        AircraftCarrierCVCVN1.Checked := true;
      vhtAmphibious:
        AmphibiousWarfare1.Checked := true;
      vhtAuxiliary:
        Auxiliary1.Checked := true;
      // vhtchaff
      vhtCruiseGuided:
        CruiserGuidedMissileCGCGN1.Checked := true;
      vhtDestroyer:
        Destroyer1.Checked := true;
      vhtDestroGuided:
        DestroyerGuidedMissileDOG1.Checked := true;
      vhtFrigate:
        FrigateFF1.Checked := true;
      vhtFrigatGuided:
        FrigateGuidedMissileFFG1.Checked := true;
      // vhtInfraredDecoy
      // vhtJammerDecoy
      vhtMerchant:
        Merchant1.Checked := true;
      // vhtMainWarefare
      vhtPatrolCraft:
        PatrolCraftPTPTG1.Checked := true;
      vhtUtilityVess:
        UtilityVessel1.Checked := true;
      vhtOther:
        Other1.Checked := true;
    else
      Other1.Checked := true;
    end;

    case TT3Vehicle(obj).TrackIdent of
      piPending:
        Pending1.Checked := true;
      piUnknown:
        Unknown1.Checked := true;
      piAssumedFriend:
        AssumedFriend1.Checked := true;
      piFriend:
        Friend1.Checked := true;
      piNeutral:
        Neutral1.Checked := true;
      piSuspect:
        Suspect1.Checked := true;
      piHostile:
        Hostile1.Checked := true;
    end;
  end
  else if obj is TT3DetectedTrack then
  begin
    case TT3DetectedTrack(obj).TrackDomain of
      vhdAir:
        A1.Checked := true;
      vhdSurface:
        Surface1.Checked := true;
      vhdSubsurface:
        Subsurface1.Checked := true;
      vhdLand:
        Land1.Checked := true;
      vhdGeneral:
        General1.Checked := true;
    end;

    case TT3DetectedTrack(obj).TrackType of
      vhtAirCarrier:
        AircraftCarrierCVCVN1.Checked := true;
      vhtAmphibious:
        AmphibiousWarfare1.Checked := true;
      vhtAuxiliary:
        Auxiliary1.Checked := true;
      // vhtchaff
      vhtCruiseGuided:
        CruiserGuidedMissileCGCGN1.Checked := true;
      vhtDestroyer:
        Destroyer1.Checked := true;
      vhtDestroGuided:
        DestroyerGuidedMissileDOG1.Checked := true;
      vhtFrigate:
        FrigateFF1.Checked := true;
      vhtFrigatGuided:
        FrigateGuidedMissileFFG1.Checked := true;
      // vhtInfraredDecoy
      // vhtJammerDecoy
      vhtMerchant:
        Merchant1.Checked := true;
      // vhtMainWarefare
      vhtPatrolCraft:
        PatrolCraftPTPTG1.Checked := true;
      vhtUtilityVess:
        UtilityVessel1.Checked := true;
      vhtOther:
        Other1.Checked := true;
    else
      Other1.Checked := true;
    end;

    case TT3DetectedTrack(obj).TrackIdent of
      piPending:
        Pending1.Checked := true;
      piUnknown:
        Unknown1.Checked := true;
      piAssumedFriend:
        AssumedFriend1.Checked := true;
      piFriend:
        Friend1.Checked := true;
      piNeutral:
        Neutral1.Checked := true;
      piSuspect:
        Suspect1.Checked := true;
      piHostile:
        Hostile1.Checked := true;
    end;
  end
  else if obj is TT3ESMTrack then
  begin
    case TT3ESMTrack(obj).TrackDomain of
      vhdAir:
        A1.Checked := true;
      vhdSurface:
        Surface1.Checked := true;
      vhdSubsurface:
        Subsurface1.Checked := true;
      vhdLand:
        Land1.Checked := true;
      vhdGeneral:
        General1.Checked := true;
    end;

    Other1.Checked := true;

    case TT3ESMTrack(obj).TrackIdent of
      piPending:
        Pending1.Checked := true;
      piUnknown:
        Unknown1.Checked := true;
      piAssumedFriend:
        AssumedFriend1.Checked := true;
      piFriend:
        Friend1.Checked := true;
      piNeutral:
        Neutral1.Checked := true;
      piSuspect:
        Suspect1.Checked := true;
      piHostile:
        Hostile1.Checked := true;
    end;
  end;
end;

procedure TfrmTacticalDisplay.setShowMainMenuItem(obj: TSimObject);
begin
  // show main menu item or not
  if obj = nil then exit;

  if simMgrClient.ISInstructor then
  begin
    if obj is TT3NonRealVehicle then begin
      Characteristics1.Enabled := true;
      Domain1.Enabled := true;
      PlatformType1.Enabled := true;

      Number1.Enabled := true;
    end else
    begin
      Characteristics1.Enabled := false;
      Domain1.Enabled := false;
      PlatformType1.Enabled := false;

      Number1.Enabled := false;
    end;

    MErge1.Enabled := false;
    Split1.Enabled := false;
    Remove2.Enabled:= True;
  end
  else
  begin
    if obj is TT3PlatformInstance then
    begin
      if obj is TT3NonRealVehicle then begin
        Characteristics1.Enabled := true;
        Domain1.Enabled := true;
        PlatformType1.Enabled := true;

        Number1.Enabled := true;
        Remove2.Enabled:= True;
      end
      else begin
        Characteristics1.Enabled := false;
        Domain1.Enabled := false;
        PlatformType1.Enabled := false;

        Number1.Enabled := false;
        Remove2.Enabled:= false;
      end;

      MErge1.Enabled := false;
      Split1.Enabled := false;
    end
    else if obj is TT3DetectedTrack then
    begin
      Characteristics1.Enabled := true;
      Domain1.Enabled := false;
      PlatformType1.Enabled := false;

      Number1.Enabled := true;
      Remove2.Enabled:= false;

      if TT3DetectedTrack(obj).MergedESM = nil then
      begin
        MErge1.Enabled := true;
        Split1.Enabled := false;
      end
      else
      begin
        MErge1.Enabled := false;
        Split1.Enabled := true;
      end;
    end
    else if obj is TT3ESMTrack then
    begin
      Characteristics1.Enabled := true;
      Domain1.Enabled := true;
      PlatformType1.Enabled := false;
      Remove2.Enabled:= false;

      Number1.Enabled := true;
      MErge1.Enabled  := true;
      Split1.Enabled  := false;
    end
    else
    begin
      Characteristics1.Enabled := false;
      Domain1.Enabled := false;
      PlatformType1.Enabled := false;
      Remove2.Enabled:= false;

      Number1.Enabled := false;
      MErge1.Enabled  := false;
      Split1.Enabled  := false;
    end;
  end;
end;

procedure TfrmTacticalDisplay.setPopUpPropItem(obj: TSimObject);
begin
  // set properti menuItem
  if obj = nil then
    exit;

  { unchecked all menu items }
  mniAir4.Checked := false;
  mniSurface4.Checked := false;
  mniSubsurface4.Checked := false;
  mniLand4.Checked := false;
  mniGeneral4.Checked := false;

  mniPending1.Checked := false;
  mniUnknowns1.Checked := false;
  mniAssumedFriend1.Checked := false;
  mniFriend1.Checked := false;
  mniNeutral1.Checked := false;
  mniSuspect1.Checked := false;
  mniHostile1.Checked := false;

  mniAircraftCarrier1.Checked := false;
  mniAmphibius1.Checked := false;
  mniAuxiliary1.Checked := false;
  mniChaff1.Checked := false;
  mniCruiserGuidedMissileCGCGN1.Checked := false;
  mniDestroyer1.Checked := false;
  mniDestroyerGuidedMissle1.Checked := false;
  mniFrigateFF1.Checked := false;
  mniFrigateGuidedMissleFFG1.Checked := false;
  mniInfra1.Checked := false;
  mniJammerDecoy1.Checked := false;
  mniMerchant1.Checked := false;
  mniMainwarfare1.Checked := false;
  mniPatrolCraftPTPTG1.Checked := false;
  mniUtilityVessel1.Checked := false;
  mniOther1.Checked := false;
  { end unchecked all }

  if obj is TT3PlatformInstance then
  begin
    case TT3PlatformInstance(obj).PlatformDomain of
      vhdAir:
        mniAir4.Checked := true;
      vhdSurface:
        mniSurface4.Checked := true;
      vhdSubsurface:
        mniSubsurface4.Checked := true;
      vhdLand:
        mniLand4.Checked := true;
      vhdGeneral:
        mniGeneral4.Checked := true;
    end;

    case TT3Vehicle(obj).PlatformType of
      vhtAirCarrier:
        mniAircraftCarrier1.Checked := true;
      vhtAmphibious:
        mniAmphibius1.Checked := true;
      vhtAuxiliary:
        mniAuxiliary1.Checked := true;
      // vhtchaff
      vhtCruiseGuided:
        mniCruiserGuidedMissileCGCGN1.Checked := true;
      vhtDestroyer:
        mniDestroyer1.Checked := true;
      vhtDestroGuided:
        mniDestroyerGuidedMissle1.Checked := true;
      vhtFrigate:
        mniFrigateFF1.Checked := true;
      vhtFrigatGuided:
        mniFrigateGuidedMissleFFG1.Checked := true;
      // vhtInfraredDecoy
      // vhtJammerDecoy
      vhtMerchant:
        mniMerchant1.Checked := true;
      // vhtMainWarefare
      vhtPatrolCraft:
        mniPatrolCraftPTPTG1.Checked := true;
      vhtUtilityVess:
        mniUtilityVessel1.Checked := true;
      vhtOther:
        mniOther1.Checked := true;
    else
      mniOther1.Checked := true;
    end;

    case TT3Vehicle(obj).TrackIdent of
      piPending:
        mniPending1.Checked := true;
      piUnknown:
        mniUnknowns1.Checked := true;
      piAssumedFriend:
        mniAssumedFriend1.Checked := true;
      piFriend:
        mniFriend1.Checked := true;
      piNeutral:
        mniNeutral1.Checked := true;
      piSuspect:
        mniSuspect1.Checked := true;
      piHostile:
        mniHostile1.Checked := true;
    end;
  end
  else if obj is TT3DetectedTrack then
  begin
    case TT3DetectedTrack(obj).TrackDomain of
      vhdAir:
        mniAir4.Checked := true;
      vhdSurface:
        mniSurface4.Checked := true;
      vhdSubsurface:
        mniSubsurface4.Checked := true;
      vhdLand:
        mniLand4.Checked := true;
      vhdGeneral:
        mniGeneral4.Checked := true;
    end;

    case TT3DetectedTrack(obj).TrackType of
      vhtAirCarrier:
        mniAircraftCarrier1.Checked := true;
      vhtAmphibious:
        mniAmphibius1.Checked := true;
      vhtAuxiliary:
        mniAuxiliary1.Checked := true;
      // vhtchaff
      vhtCruiseGuided:
        mniCruiserGuidedMissileCGCGN1.Checked := true;
      vhtDestroyer:
        mniDestroyer1.Checked := true;
      vhtDestroGuided:
        mniDestroyerGuidedMissle1.Checked := true;
      vhtFrigate:
        mniFrigateFF1.Checked := true;
      vhtFrigatGuided:
        mniFrigateGuidedMissleFFG1.Checked := true;
      // vhtInfraredDecoy
      // vhtJammerDecoy
      vhtMerchant:
        mniMerchant1.Checked := true;
      // vhtMainWarefare
      vhtPatrolCraft:
        mniPatrolCraftPTPTG1.Checked := true;
      vhtUtilityVess:
        mniUtilityVessel1.Checked := true;
      vhtOther:
        mniOther1.Checked := true;
    else
      mniOther1.Checked := true;
    end;

    case TT3DetectedTrack(obj).TrackIdent of
      piPending:
        mniPending1.Checked := true;
      piUnknown:
        mniUnknowns1.Checked := true;
      piAssumedFriend:
        mniAssumedFriend1.Checked := true;
      piFriend:
        mniFriend1.Checked := true;
      piNeutral:
        mniNeutral1.Checked := true;
      piSuspect:
        mniSuspect1.Checked := true;
      piHostile:
        mniHostile1.Checked := true;
    end;
  end
  else if obj is TT3ESMTrack then
  begin
    case TT3ESMTrack(obj).TrackDomain of
      vhdAir:
        mniAir4.Checked := true;
      vhdSurface:
        mniSurface4.Checked := true;
      vhdSubsurface:
        mniSubsurface4.Checked := true;
      vhdLand:
        mniLand4.Checked := true;
      vhdGeneral:
        mniGeneral4.Checked := true;
    end;

    mniOther1.Checked := true;

    case TT3ESMTrack(obj).TrackIdent of
      piPending:
        mniPending1.Checked := true;
      piUnknown:
        mniUnknowns1.Checked := true;
      piAssumedFriend:
        mniAssumedFriend1.Checked := true;
      piFriend:
        mniFriend1.Checked := true;
      piNeutral:
        mniNeutral1.Checked := true;
      piSuspect:
        mniSuspect1.Checked := true;
      piHostile:
        mniHostile1.Checked := true;
    end;
  end;
end;

procedure TfrmTacticalDisplay.MapToolUsed(ASender: TObject; ToolNum: Smallint;
  X1, Y1, X2, Y2, Distance: double; Shift, Ctrl: WordBool;
  var EnableDefault: WordBool);
begin
  { if toolNum = miZoomInTool then begin
    z :=  FixMapZoom(VSimMap.FMap.Zoom);
    cbSetScale.Text       := FloatToStr(z);
    lblRangeScale.Caption := cbSetScale.Text;
    end;
  }
end;

procedure TfrmTacticalDisplay.OnGameCentre1Click(Sender: TObject);
var
  long, lat: double;
begin
  long := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Long;
  lat := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Lat;
  VSimMap.SetMapCenter(long, lat);
end;

procedure TfrmTacticalDisplay.OnHookedTrack2Click(Sender: TObject);
begin
  if Assigned(focusedTrack) and (focusedTrack is TT3Unit) then
    VSimMap.SetMapCenter(TT3Unit(focusedTrack).getPositionX,
      TT3Unit(focusedTrack).getPositionY);
end;

procedure TfrmTacticalDisplay.OnRadarBtnClick(Sender: TObject);
begin
  fmSensor1.sbSearchRadarClick(Sender);
end;

procedure TfrmTacticalDisplay.OnSonarBtnClick(Sender: TObject);
begin
  fmSensor1.sbSonarClick(Sender);
end;

procedure TfrmTacticalDisplay.OnSoonobuoyBtnClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.btnSonobuoyControlDeployClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.OnVisualShowClick(Sender: TObject);
begin
  fmSensor1.sbVisualSensorClick(Sender);
end;

procedure TfrmTacticalDisplay.Opotions1Click(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    fmMapWindow1.Map.CurrentTool := mtAnchorTool;
    fSettingCoordinate.Show;
  end;

  if fmMapWindow1.Map.CurrentTool = mtAnchorTool then
    fmMapWindow1.Map.CurrentTool := mtSelectObject;
end;

procedure TfrmTacticalDisplay.Origin1Click(Sender: TObject);
begin
  // LaunchNRPSpecialPlatform(vhdGeneral, pctTacticalGridorigin);
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctTacticalGridorigin, piPending);
end;

//function TfrmTacticalDisplay.OutsideRegion(x, y: double): Boolean;
//var
//  Rect: TRect;
//  pt: TPoint;
//  cx, cy: Integer;
//begin
//  simMgrClient.Converter.ConvertToScreen(x, y, pt.x, pt.y);

//  cx := fmMapWindow1.Map.width div 2;
//  cy := fmMapWindow1.Map.height div 2;

//  Rect.left := cx - 30;
//  Rect.top := cy - 30;
//  Rect.Right := cx + 30;
//  Rect.Bottom := cy + 30;

//  result := not PtInRect(Rect, pt);
//end;

procedure TfrmTacticalDisplay.Overlays1Click(Sender: TObject);
begin
  fmOverlayEditor.Show;
end;

procedure TfrmTacticalDisplay.Pan1Click(Sender: TObject);
begin
  fmMapWindow1.Map.CurrentTool := miCenterTool;
end;

procedure TfrmTacticalDisplay.pnlStatusRedClick(Sender: TObject);
var
  CmdStatus : TStatus;
begin
  if statusR_List.Count > 0 then
  begin
    CmdStatus := TStatus(statusR_List.Items[statusR_List.Count-1]);
    if LowerCase(CmdStatus.state) = 'receive message' then
    begin
      frmToteDisplay.gbMessageHandlingSystem.BringToFront;
      frmToteDisplay.pcReceived.ActivePageIndex := 0;
    end;

    statusR_List.Delete(statusR_List.Count-1);
    updateStatus;
  end;
end;

procedure TfrmTacticalDisplay.pnlStatusYellowClick(Sender: TObject);
begin
  if statusY_List.Count > 0 then
  begin
    statusY_List.Delete(statusY_List.Count-1);
    updateStatus_Yellow;
  end;
end;

procedure TfrmTacticalDisplay.Previous1Click(Sender: TObject);
var
  index: Integer;
  aObject: TSimObject;
begin
  if cbAssumeControl.Items.Count <= 0 then
    exit;

  index := cbAssumeControl.ItemIndex;
  if index = 0 then
    index := cbAssumeControl.Items.Count - 1
  else
    index := index - 1;

  cbAssumeControl.ItemIndex := index;
  aObject := cbAssumeControl.Items.Objects[index] as TSimObject;

  if aObject <> nil then
  begin
    if aObject is TT3Unit then
      TT3Unit(aObject).Selected := true
    else if aObject is TT3DetectedTrack then
      TT3DetectedTrack(aObject).Selected := true;

    fmMapWindow1.Map.Repaint;
  end;
end;

procedure TfrmTacticalDisplay.ransfer1Click(Sender: TObject);
var
  aObject : TSimObject;
  pi        : TT3PlatformInstance;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if not Assigned(fTransferSonobuoy) then
    fTransferSonobuoy := TfTransferSonobuoy.Create(self);

  aObject := focusedTrack;
  pi := simMgrClient.FindT3PlatformByID(TT3Sonobuoy(TT3PlatformInstance(aObject)).ParentIndex);

  if (Assigned(pi)) and (aObject is TT3PlatformInstance) then
  begin
    fTransferSonobuoy.lbTransferTrack.Caption    := TT3PlatformInstance(aObject).Track_ID;
    fTransferSonobuoy.lbParentCurrent.Caption    := pi.InstanceName;
    fTransferSonobuoy.lbIdTransfer.Caption       := IntToStr(TT3PlatformInstance(aObject).InstanceIndex);
  end

  else if aObject is TT3DetectedTrack then
  begin
    fTransferSonobuoy.lbTransferTrack.Caption := IntToStr(TT3DetectedTrack(aObject).TrackNumber);
  end;

  fTransferSonobuoy.Show;
end;

procedure TfrmTacticalDisplay.Select1Click(Sender: TObject);
begin
  fmMapWindow1.Map.CurrentTool := mtSelectObject;
end;

procedure TfrmTacticalDisplay.SetControlledFormMode(aReadOnly: boolean);
begin
  if aReadOnly then begin
    fmOwnShip1.ReadOnlyMode;
    fmPlatformGuidance1.ReadOnlyMode;
    fmSensor1.ReadOnlyMode;
    fmWeapon1.ReadOnlyMode;
    fmFireControl1.ReadOnlyMode;
    fmCounterMeasure1.ReadOnlyMode;
    fmEMCON1.ReadOnlyMode;
  end else begin
    fmOwnShip1.UnReadOnlyMode;
    fmPlatformGuidance1.UnReadOnlyMode;
    fmSensor1.UnReadOnlyMode;
    fmWeapon1.UnReadOnlyMode;
    fmFireControl1.UnReadOnlyMode;
    fmCounterMeasure1.UnReadOnlyMode;
    fmEMCON1.UnReadOnlyMode;
  end;
end;

procedure TfrmTacticalDisplay.SetControlledPlatform(pit: TT3PlatformInstance);
begin
  if Assigned(simMgrClient.ControlledPlatform) then
  begin
    if simMgrClient.ControlledPlatform <> pit then
    begin
      if Assigned(simMgrClient.ControlledPlatform) then
        if simMgrClient.ControlledPlatform.Controlled then
          simMgrClient.ControlledPlatform.Controlled := False;

      FHookOnPlatform := False;
      ToolBtnCentreOnHook.Down := FHookOnPlatform;
    end;
  end;

  if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3PlatformInstance then
      TT3PlatformInstance(focusedTrack).Selected := false
    else if focusedTrack is TT3DetectedTrack then
      TT3DetectedTrack(focusedTrack).Selected := false
  end;

  if Assigned(pit) then     //mk
  begin
    simMgrClient.ControlledPlatform := pit;
    focusedTrack := pit;

    TT3Unit(focusedTrack).Selected := true;

    fmOwnShip1.SetControlledObject(pit);
    fmPlatformGuidance1.SetControlledObject(pit);
    fmSensor1.SetControlledObject(pit);
    fmWeapon1.SetControlledObject(pit);
    fmFireControl1.SetControlledObject(pit);
    fmCounterMeasure1.SetControlledObject(pit);
    fmEMCON1.SetControlledObject(pit);
  end;

  Caption := 'Tactical Display - ' + simMgrClient.Scenario.ScenarioName +
    ' - ' + pit.InstanceName + ' on ' + simMgrClient.CubicleName + ' - ' +
    simMgrClient.ConsoleName;
end;

procedure TfrmTacticalDisplay.SetControlEmbarkedPlatform(const Value: Boolean);
begin
  FControlEmbarkedPlatform := Value;
end;

procedure TfrmTacticalDisplay.setDefaultInterface(userLevel: word);
begin
  { case userLevel of
    1: //trainee

    2: //instruct
    end; }
end;

procedure TfrmTacticalDisplay.SetRoleClient(rc: Integer);
begin
  case rc of
    crpInstruktur:
      begin
        ToolButton27.Show;
        ToolButton31.Show;
        ToolButton35.Show;
        ToolBtnAddPlatform.Show;

        tBtnGameFreeze.Show;
        tbtnStartGame.Show;
        tBtnDoubleSpeed.Show;

        ToolBtnAnnotate.Show;
        ToolBtnFind.Show;
        ToolBtnSnapshot.Show;

		    ToolBtnRemovePlatformOrTrack.Show;   //mk
        fmPlatformGuidance1.mnReturntoBase1.Enabled := True;

        if not Assigned(fTransferSonobuoy) then
          fTransferSonobuoy := TfTransferSonobuoy.Create(self);
        fTransferSonobuoy.btnSonobuoyControlCombo.Enabled := True;

        cbAssumeControl.Items.Clear;
      end;
    crpCubicle:
      begin
        ToolButton27.Hide;
        ToolButton31.Hide;
        ToolButton35.Hide;
        ToolBtnAddPlatform.Hide;

        tBtnGameFreeze.Hide;
        tbtnStartGame.Hide;
        tBtnDoubleSpeed.Hide;

        ToolBtnAnnotate.Hide;
        ToolBtnFind.Hide;
        ToolBtnSnapshot.Hide;
		
        ToolBtnRemovePlatformOrTrack.Hide;    //mk
		    fmPlatformGuidance1.mnReturntoBase1.Enabled := False;

        if not Assigned(fTransferSonobuoy) then
          fTransferSonobuoy := TfTransferSonobuoy.Create(self);
        fTransferSonobuoy.btnSonobuoyControlCombo.Enabled := False;
      end;
  end;

  Refresh_AssumeControl;
end;

procedure TfrmTacticalDisplay.SetSelectedTrack(track: TSimObject);
begin
  if Assigned(track) then      //mk
  begin
    if (focusedTrack is TT3PlatformInstance) and (focusedTrack <> track) then
    begin
      if (TT3PlatformInstance(focusedTrack).Selected) then
      begin
        if (focusedTrack is TT3PlatformInstance) then
        begin
          TT3PlatformInstance(focusedTrack).Selected := false;
        end
        else
        begin
          if (focusedTrack is TT3DetectedTrack) then
            TT3DetectedTrack(focusedTrack).Selected := false;
        end;
      end;
    end;

    focusedTrack := track;
    if (focusedTrack is TT3Vehicle) then
      ToolBtnTrackHistory.Down := TT3Vehicle(focusedTrack).ShowTrails
    else if (focusedTrack is TT3DetectedTrack) then
      ToolBtnTrackHistory.Down := TT3DetectedTrack(focusedTrack).ShowTrails
    else
      ToolBtnTrackHistory.Down := false;
  end;
end;

procedure TfrmTacticalDisplay.Settings1Click(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    fmMapWindow1.Map.CurrentTool := mtAnchorTool;
    fSettingCoordinate.Show;
  end;

  if fmMapWindow1.Map.CurrentTool = mtAnchorTool then
    fmMapWindow1.Map.CurrentTool := mtSelectObject;
end;

procedure TfrmTacticalDisplay.Settings2Click(Sender: TObject);
begin
  if not Assigned(fPictureCentreSettings) then
    fPictureCentreSettings := TfPictureCentreSettings.Create(self);

  fPictureCentreSettings.FormStyle := fsStayOnTop;
  fPictureCentreSettings.Show;
end;

procedure TfrmTacticalDisplay.Split1Click(Sender: TObject);
var
  track : TT3DetectedTrack;
  rec : TRecCmd_MergeTrack;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if focusedTrack is TT3DetectedTrack then
  begin
    track := focusedTrack as TT3DetectedTrack;
    if Assigned(track.MergedESM) then
    begin
      rec.EsmTrackNumber := StrToInt(track.MergedESM.TrackNumber);
      rec.DetectedTrackNumber := track.TrackObject.InstanceIndex;
      rec.OrderMerge := false;

      simMgrClient.netSend_Cmd_MergeTrack(rec);
      {
      track.MergedESM.IsMerged := false;
      track.MergedESM := nil;
      }
    end;
  end;
end;

procedure TfrmTacticalDisplay.SetWeaponTargetObject(obj: TSimObject);
var
  aObject: TObject;
begin
  if Assigned(obj) then
  begin
    if obj <> nil then    //mk
    begin
      if not(Assigned(focusedTrack)) or (focusedTrack <> obj) then
      begin
        focusedTrack := nil;

        // unselect all track
        UnSelectAllRBLWPointTrack;
        UnSelectAllBOLWPointTrack;
        UnSelectAllPlatformTrack;
        UnSelectAllNRPlatformTrack;
        UnselectAllDetectedTrack;

        if obj is TT3PlatformInstance then
          TT3PlatformInstance(obj).Selected := true
        else
        if obj is TT3DetectedTrack then
          TT3DetectedTrack(obj).Selected := true;

        focusedTrack := obj;
      end;

      if Assigned(focusedTrack) then begin
        if focusedTrack is TT3PlatformInstance then
          fmWeapon1.SetFocusedPlatform(TT3PlatformInstance(focusedTrack))
        else if focusedTrack is TT3DetectedTrack then
        begin
          aObject := TT3DetectedTrack(focusedTrack).TrackObject;
          if Assigned(aObject) then
            fmWeapon1.SetFocusedPlatform(TT3PlatformInstance(aObject))
        end;
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.SetFCTargetObjectobj(obj : TSimObject);
var
  aObject : TObject;
begin
  if obj <> nil then      //mk
  begin
    if obj is TT3PlatformInstance then
       fmFireControl1.SetFocusedPlatform(TT3PlatformInstance(obj))
    else if obj is TT3DetectedTrack then
    begin
      aObject := TT3DetectedTrack(obj).TrackObject;
      if Assigned(aObject) then
        fmFireControl1.SetFocusedPlatform(TT3PlatformInstance(aObject));
    end;
  end;
end;

procedure TfrmTacticalDisplay.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
var
  I: Integer;
  wpn: TT3Weapon;
  gunfire: Boolean;
  Emcon: Boolean;
  jamming: Boolean;
  EmconCat : TEMCON_Category;
begin
  case Panel.Index of
    4 : //emcon
      begin
        Emcon := False;
        if Assigned(simMgrClient.ControlledPlatform) then
        begin
          for I := 0 to TT3Vehicle(simMgrClient.ControlledPlatform).ListEMCON.Count - 1 do
          begin
            EmconCat := TT3Vehicle(simMgrClient.ControlledPlatform).ListEMCON.Items[i];

            if TEMCON_ChekBoxStatus(EmconCat.Mode) = Checked then
            begin
              Emcon := True;
              Break;
            end;
          end;
        end;

        if Emcon then
        begin
          StatusBar1.Canvas.Brush.Color := clBtnFace;
          StatusBar1.Canvas.Brush.Style := bsClear;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;
          Panel.Bevel := pbLowered;
          StatusBar1.Canvas.TextOut(Rect.left + 4, Rect.top + 3, Panel.Text);
        end
        else
        begin
          StatusBar1.Canvas.Brush.Color := clBtnFace;
          StatusBar1.Canvas.Brush.Style := bsClear;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;
          Panel.Bevel := pbLowered;
        end;
      end;
    5 : //jamming
      begin
        jamming := False;

        if Assigned(simMgrClient.ControlledPlatform) then
        begin
          jamming := simMgrClient.ControlledPlatform.VehicleOnJamming.Count <> 0
        end;

        if jamming then
        begin
          StatusBar1.Canvas.Brush.Color := clYellow;
          StatusBar1.Canvas.Brush.Style := bsSolid;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;
          Panel.Bevel := pbLowered;
          StatusBar1.Canvas.TextOut(Rect.left + 4, Rect.top + 3, Panel.Text);
        end
        else
        begin
          StatusBar1.Canvas.Brush.Color := clBtnFace;
          StatusBar1.Canvas.Brush.Style := bsClear;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;
          Panel.Bevel := pbLowered;
        end;
      end;
    6 : //Gun Fire
      begin
        gunfire := False;
        if Assigned(simMgrClient.ControlledPlatform) then
        begin
          for I := 0 to TT3Vehicle(simMgrClient.ControlledPlatform).Weapons.Count - 1 do
          begin
            wpn := TT3Weapon(TT3Vehicle(simMgrClient.ControlledPlatform).Weapons.Items[i]);
            if wpn is TT3GunOnVehicle then
            begin
              if wpn.WeaponStatus = wsFiring then
              begin
                gunfire := True;
                Break;
              end;
            end;
          end;

          if gunfire then
          begin
            StatusBar1.Canvas.Brush.Color := clYellow;
            StatusBar1.Canvas.Brush.Style := bsSolid;
            StatusBar1.Canvas.FillRect(Rect);
            StatusBar1.Font.Color := clBlack;
            StatusBar1.Canvas.TextOut(Rect.left + 4, Rect.top + 3, Panel.Text);
          end
          else
          begin
            StatusBar1.Canvas.Brush.Color := clBtnFace;
            StatusBar1.Canvas.Brush.Style := bsClear;
            StatusBar1.Canvas.FillRect(Rect);
            StatusBar1.Font.Color := clBlack;
          end;
        end;
      end;
    7 : //Fire Control
      begin
        if Assigned(simMgrClient.ControlledPlatform) then
        begin
          if simMgrClient.ControlledPlatform.LockFCR then
          begin
            StatusBar1.Canvas.Brush.Color := clRed;
            StatusBar1.Canvas.Brush.Style := bsSolid;
            StatusBar1.Canvas.FillRect(Rect);
            StatusBar1.Font.Color := clBlack;
            StatusBar1.Canvas.TextOut(Rect.left + 4, Rect.top + 3, Panel.Text);
          end
          else
          begin
            StatusBar1.Canvas.Brush.Color := clBtnFace;
            StatusBar1.Canvas.Brush.Style := bsClear;
            StatusBar1.Canvas.FillRect(Rect);
            StatusBar1.Font.Color := clBlack;
          end;
        end;
      end;
    9 : //State Game
      begin
        if Panel.Text = 'FROZEN' then
        begin
          StatusBar1.Canvas.Brush.Color := clRed;
          StatusBar1.Canvas.Brush.Style := bsSolid;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;
        end
        else if Panel.Text = '1 X' then
        begin
          StatusBar1.Canvas.Brush.Color := clBtnFace;
          StatusBar1.Canvas.Brush.Style := bsClear;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;
        end
        else
        begin
          StatusBar1.Canvas.Brush.Color := clYellow;
          StatusBar1.Canvas.Brush.Style := bsSolid;
          StatusBar1.Canvas.FillRect(Rect);
          StatusBar1.Font.Color := clBlack;

        end;

        StatusBar1.Canvas.TextOut(Rect.left + 4, Rect.top + 3, Panel.Text);
      end;
  end;
end;

procedure TfrmTacticalDisplay.Tactical1Click(Sender: TObject);
begin
  Show;
end;

procedure TfrmTacticalDisplay.TacticalDisplayControlPanelChange(
  Sender: TObject);
begin
//x
end;

procedure TfrmTacticalDisplay.TacticalDisplayControlPanelMouseLeave(
  Sender: TObject);
begin
  TacticalDisplayControlPanel.Hint := '';
end;

procedure TfrmTacticalDisplay.TacticalDisplayControlPanelMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  hi: TTCHitTestInfo;
  tabindex: Integer;
  strHint: string;
begin
  hi.pt.X := X;
  hi.pt.Y := Y;
  hi.flags := 0;
  tabindex := TacticalDisplayControlPanel.Perform(TCM_HITTEST, 0, LongInt(@hi));
  case tabindex of
    0: strHint := 'Own Ship';
    1: strHint := 'Platform Guidance';
    2: strHint := 'Sensor';
    3: strHint := 'Weapon';
    4: strHint := 'Counter Measure';
    5: strHint := 'Fire Control';
    6: strHint := 'EMCON';
    else
      strHint := '';
  end;

  TacticalDisplayControlPanel.Hint := strHint;
end;

procedure TfrmTacticalDisplay.ToolBtnAddPlatformClick(Sender: TObject);
begin
  if not Assigned(frmRPLibrary) then
    frmRPLibrary := TfrmRPLibrary.Create(self);

  frmRPLibrary.SetUpGroupAndForce;
  frmRPLibrary.btnLaunch.Enabled := False;
  frmRPLibrary.Show;
end;

procedure TfrmTacticalDisplay.ToolBtnAddToTrackTableClick(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    AddTrackPlatform(focusedTrack);
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnAnchorCursorClick(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    anchorTrack := focusedTrack;

    if anchorTrack is TT3PlatformInstance then
    begin
      simMgrClient.LineVisual.X1 := TT3PlatformInstance(anchorTrack)
        .getPositionX;
      simMgrClient.LineVisual.Y1 := TT3PlatformInstance(anchorTrack)
        .getPositionY;
    end
    else if anchorTrack is TT3DetectedTrack then
    begin
      simMgrClient.LineVisual.X1 := TT3DetectedTrack(anchorTrack).getPositionX;
      simMgrClient.LineVisual.Y1 := TT3DetectedTrack(anchorTrack).getPositionY;
    end;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnAssumeControlOfHookClick(Sender: TObject);
begin
  if (focusedTrack <> nil) and (focusedTrack is TT3PlatformInstance) then
  begin
    if focusedTrack is TT3NonRealVehicle then
      Exit;

    if focusedTrack is TT3PlatformInstance then
      if TT3PlatformInstance(focusedTrack).Controlled <> True then
        TT3PlatformInstance(focusedTrack).Controlled := true;

    fmMapWindow1.Map.Repaint;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnCentreOnGameCentreClick(Sender: TObject);
var
  long, lat: double;
begin
  long := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Long;
  lat := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Lat;
  VSimMap.SetMapCenter(long, lat);

  StatusBar1.Panels[0].Text := TToolButton(Sender).Hint;
end;

procedure TfrmTacticalDisplay.ToolBtnCentreOnHookClick(Sender: TObject);
begin
  if focusedTrack = nil then   //mk
    exit;

  FHookOnPlatform := not FHookOnPlatform;
  ToolBtnCentreOnHook.Down := FHookOnPlatform;

  if FHookOnPlatform then
  begin
    try
      simMgrClient.MyCenterHookedPlatfom := focusedTrack;

      VSimMap.SetMapCenter(simMgrClient.MyCenterHookedPlatfom.getPositionX,
            simMgrClient.MyCenterHookedPlatfom.getPositionY);
      FLastMapCenterY := simMgrClient.MyCenterHookedPlatfom.getPositionY;
      FLastMapCenterX := simMgrClient.MyCenterHookedPlatfom.getPositionX;
    except
      focusedTrack := nil;
      simMgrClient.MyCenterHookedPlatfom := nil;
    end;
  end
  else
  begin
    simMgrClient.MyCenterHookedPlatfom := nil;
  end;

  StatusBar1.Panels[0].Text := TToolButton(Sender).Hint;
end;

procedure TfrmTacticalDisplay.ToolBtnEditClick(Sender: TObject);
begin
  if focusedTrack = nil then
    exit;

  if (focusedTrack is TT3NonRealVehicle) then
  begin
    if not Assigned(frmEditNonRealTimeTrack) then
      frmEditNonRealTimeTrack := TfrmEditNonRealTimeTrack.Create(self);

      //enable edit text position untuk non real time
    frmEditNonRealTimeTrack.edtNRBPosition.Enabled := True;
    frmEditNonRealTimeTrack.edtNRSPosition.Enabled := True;
    frmEditNonRealTimeTrack.edtposition.Enabled := True;
    frmEditNonRealTimeTrack.edtAOPCenter.Enabled := True;

    frmEditNonRealTimeTrack.Data := focusedTrack as TT3NonRealVehicle;
    frmEditNonRealTimeTrack.Show;
  end
  else if (focusedTrack is TT3DetectedTrack) then
  begin
    if not Assigned(frmEditNonRealTimeTrack) then
      frmEditNonRealTimeTrack := TfrmEditNonRealTimeTrack.Create(self);

    frmEditNonRealTimeTrack.Data := focusedTrack as TT3DetectedTrack;         //mk
    frmEditNonRealTimeTrack.Show;
  end
  else if focusedTrack is TT3ESMTrack then
  begin
    if not Assigned(frmEditNonRealTimeTrack) then
      frmEditNonRealTimeTrack := TfrmEditNonRealTimeTrack.Create(self);

    frmEditNonRealTimeTrack.Data := focusedTrack as TT3ESMTrack;
    frmEditNonRealTimeTrack.Show;
  end
  else if (focusedTrack is TT3Vehicle) then
  begin
    if not Assigned(frmEditNonRealTimeTrack) then
      frmEditNonRealTimeTrack := TfrmEditNonRealTimeTrack.Create(self);

    frmEditNonRealTimeTrack.Data := focusedTrack as TT3Vehicle;
    frmEditNonRealTimeTrack.Show;
  end;
end;

procedure TfrmTacticalDisplay.tbtnScaleIncreaseClick(Sender: TObject);
// : zoom in
var
  i: Integer;
  z, zNow: double;
begin
  zNow := FixMapZoom(0.5 * VSimMap.FMap.Zoom);
  i := FindClosestZoomIndex(zNow);
  z := ZoomIndexToScale(i);

  if z <= zNow then
    i := i + 1;
  if i < 0 then
    i := 0;
  if i > CMax_Z then
    i := CMax_Z;

  // do the zoom out
  cbSetScale.ItemIndex := i;
  cbSetScaleChange(cbSetScale);
end;

procedure TfrmTacticalDisplay.tbtnScaleDecreaseClick(Sender: TObject);
var
  i: Integer; // zoom out
  z, zNow: double;
begin
  zNow := FixMapZoom(0.5 * VSimMap.FMap.Zoom);
  i := FindClosestZoomIndex(zNow);
  z := ZoomIndexToScale(i);

  if z >= zNow then
    i := i - 1;
  if i < 0 then
    i := 0;
  if i > CMax_Z then
    i := CMax_Z;

  // do the zoom in
  cbSetScale.ItemIndex := i;
  cbSetScaleChange(cbSetScale);

  //if TT3Vehicle(focusedTrack).TacticalSymbol.SpeedVector.Visible then
    //simMgrClient.OnLogStr('Vehicle ' +TT3Vehicle(focusedTrack).InstanceName+
     //', Speedvector Status = True.')
  //else
    //simMgrClient.OnLogStr('Speedvector Status = False.');
end;

procedure TfrmTacticalDisplay.ToolBtnFilterCursorClick(Sender: TObject);
begin
  FAnchorFilterEnabled := not FAnchorFilterEnabled;

  ToolBtnFilterCursor.Down := FAnchorFilterEnabled;
  simMgrClient.LineVisual.Visible := FAnchorFilterEnabled;
end;

procedure TfrmTacticalDisplay.toolBtnFilterRangeRingsClick(Sender: TObject);
var
  i: Integer;
  rrVis: Boolean;
  z: double;
begin
  rrVis := toolBtnFilterRangeRings.Down;

  // toolBtnFilterRangeRings.Down := FRangeRingVisible;
  if rrVis then
  begin
    z := FixMapZoom(VSimMap.FMap.Zoom);
    i := FindClosestZoomIndex(z);
    z := ZoomIndexToScale(i);
    simMgrClient.RangeRing.Interval := 0.125 * z;
  end;

  if Assigned(focusedTrack) then
    simMgrClient.MyRingHookedPlatfom := focusedTrack;

  if Assigned(simMgrClient.MyRingHookedPlatfom)then
  begin
    simMgrClient.RangeRing.mX := simMgrClient.MyRingHookedPlatfom.getPositionX;
    simMgrClient.RangeRing.mY := simMgrClient.MyRingHookedPlatfom.getPositionY;
    simMgrClient.RangeRing.Visible := rrVis;
  end;

  StatusBar1.Panels[0].Text := TToolButton(Sender).Hint;
end;

procedure TfrmTacticalDisplay.tbtnStartGameClick(Sender: TObject);
var
  r: TRecCmd_GameCtrl;
begin ;
  r.GameCtrl := CORD_ID_start;
  r.GameSpeed := 1.0;
  r.SessionID := simMgrClient.SessionID;
  simMgrClient.netSend_CmdGameControl(r);

  // Tambahan Prince : memanggil fungsi killtask   //mk
  {try
    KillTask('tttMapStub.exe');
  finally
    ShellExecute(Application.Handle, 'open', 'tttMapStub.exe', nil, nil, SW_HIDE);
  end; }

  //// untuk replay
  if TGamePlayType(vGameDataSetting.GamePlayMode.GameType) = gpmReplay then
  begin
    inc(simMgrClient.InitFirstReplay);
    if simMgrClient.InitFirstReplay < 1 then
    begin
      simMgrClient.SimDetectedTrackList.ClearAndRemove;
      simMgrClient.ResetScenario;
      simMgrClient.LoadScenarioID(vGameDataSetting);
    end;
  end;
end;

procedure TfrmTacticalDisplay.tmMoveTimer(Sender: TObject);
begin
  if Assigned(focusedTrack) then
    if not TT3PlatformInstance(focusedTrack).IsRepositioning then
      TT3PlatformInstance(focusedTrack).BeginReposition;
end;

procedure TfrmTacticalDisplay.tBtnGameFreezeClick(Sender: TObject);
var
  r: TRecCmd_GameCtrl;
begin ;
  r.GameCtrl := CORD_ID_pause;
  r.GameSpeed := 0.0;
  r.SessionID := simMgrClient.SessionID;
  simMgrClient.netSend_CmdGameControl(r);
end;

procedure TfrmTacticalDisplay.tBtnDoubleSpeedClick(Sender: TObject);
var
  r: TRecCmd_GameCtrl;
  gs: double;
begin ;
  if simMgrClient.GameSpeed >= 1.0 then
  begin
    gs := Round(simMgrClient.GameSpeed);
    if abs(gs) < 0.0001 then // nol
      gs := 1.0
    else
    begin
      gs := 2.0 * gs;
      if gs > 16.0 then
        exit;
    end;

    r.GameCtrl := CORD_ID_game_speed;
    r.GameSpeed := gs;
    r.SessionID := simMgrClient.SessionID;

    simMgrClient.netSend_CmdGameControl(r);
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnFindClick(Sender: TObject);
var
  pForm: TfrmRemoteHost;

  prmIp       : string ;
  prmColor    : byte ;
  prmControl  : boolean ;

  i     : integer ;
  sIP   : string;
  con   :  TConsoleInfo;
begin
  //// remote
  pForm := TfrmRemoteHost.Create(Self);

  simMgrClient.GetALLConsoleInfo;
  pForm.ComboBox1.Items.Clear;
  for I := 0 to simMgrClient.FAllConsoleInfo.Count - 1 do begin
     con:= simMgrClient.FAllConsoleInfo.Objects[i] as TConsoleInfo;
     pForm.ComboBox1.Items.Add(con.ConsoleName);
  end;
  if pForm.ComboBox1.Items.Count > 0 then pForm.ComboBox1.ItemIndex := 0 ;

  if (pForm.ShowModal = mrOk) then
  begin
    if (Length(pForm.ComboBox1.Text) > 0) then
    begin

      sIP :='';
      for I := 0 to simMgrClient.FAllConsoleInfo.Count - 1 do begin
       con:= simMgrClient.FAllConsoleInfo.Objects[i] as TConsoleInfo;
       if UpperCase (con.ConsoleName) = UpperCase( pForm.ComboBox1.Text) then
       begin
          sIP := con.IPAddress;
          Break;
       end;
      end;

      prmIp := sIP ;
      prmColor := pForm.rg1.ItemIndex ;
      prmControl := False;
      simMgrClient.netSend_CmdRemote( prmIp ,prmColor, prmControl, REMOTE_STATE_TRUE );

    end;
  end;

  pForm.Free;
end;

procedure TfrmTacticalDisplay.ToolBtnHookNextClick(Sender: TObject);
var
  aObject : TSimObject;
  iObject : TObject;
  i : Integer;
begin
  try
    if TrackLists.LockList.Count > 0 then
    begin
      with TrackLists.LockList do
      begin
        aObject := Items[FIndexTrack];
        if aObject <> nil then
        begin
          if aObject is TT3PlatformInstance then
          begin
            focusedTrack := nil;

            // unselect all track
            UnSelectAllRBLWPointTrack;
            UnSelectAllBOLWPointTrack;
            UnSelectAllPlatformTrack;
            UnSelectAllNRPlatformTrack;
            UnselectAllDetectedTrack;

            TT3PlatformInstance(aObject).Selected := true;
            focusedTrack := TSimObject(aObject);

            for i := 0 to cbAssumeControl.Items.Count - 1 do
            begin
              iObject := cbAssumeControl.Items.Objects[i];

              if focusedTrack = iObject then
                break;
            end;

            cbAssumeControl.ItemIndex := i;

            fmMapWindow1.Map.Repaint;
          end
          else
          if aObject is TT3DetectedTrack then
          begin
            if Assigned(TT3DetectedTrack(aObject).TrackObject)
               and (not(TT3DetectedTrack(aObject).FreeMe)) then
            begin
              if TT3DetectedTrack(aObject).TrackObject is TT3PlatformInstance then
              begin
                focusedTrack := nil;

                // unselect all track
                UnSelectAllRBLWPointTrack;
                UnSelectAllBOLWPointTrack;
                UnSelectAllPlatformTrack;
                UnSelectAllNRPlatformTrack;
                UnselectAllDetectedTrack;

                TT3DetectedTrack(aObject).Selected := true;

                focusedTrack := TSimObject(aObject);
                fmMapWindow1.Map.Repaint;
              end;
            end;
          end;
        end;

        FIndexTrack := FIndexTrack + 1;

        if FIndexTrack > Count - 1 then
          FIndexTrack := 0;
      end;
    end
    else
        FIndexTrack := 0;
  finally
    TrackLists.UnlockList;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnHookPreviousClick(Sender: TObject);
var
  aObject : TSimObject;
  iObject : TObject;
  i : Integer;
begin
  try
    if TrackLists.LockList.Count > 0 then
    begin
      with TrackLists.LockList do
      begin
        aObject := Items[FIndexTrack];

        if aObject <> nil then
        begin
          if aObject is TT3PlatformInstance then
          begin
            focusedTrack := nil;

            // unselect all track
            UnSelectAllRBLWPointTrack;
            UnSelectAllBOLWPointTrack;
            UnSelectAllPlatformTrack;
            UnSelectAllNRPlatformTrack;
            UnselectAllDetectedTrack;

            TT3PlatformInstance(aObject).Selected := true;
            focusedTrack := TSimObject(aObject);

            for i := 0 to cbAssumeControl.Items.Count - 1 do
            begin
              iObject := cbAssumeControl.Items.Objects[i];

              if focusedTrack = iObject then
                break;
            end;
            cbAssumeControl.ItemIndex := i;

            fmMapWindow1.Map.Repaint;
          end
          else
          if aObject is TT3DetectedTrack then
          begin
            if Assigned(TT3DetectedTrack(aObject).TrackObject) then
            begin
              if TT3DetectedTrack(aObject).TrackObject is TT3PlatformInstance
                 and (not(TT3DetectedTrack(aObject).FreeMe)) then
              begin
                focusedTrack := nil;

                // unselect all track
                UnSelectAllRBLWPointTrack;
                UnSelectAllBOLWPointTrack;
                UnSelectAllPlatformTrack;
                UnSelectAllNRPlatformTrack;
                UnselectAllDetectedTrack;

                TT3DetectedTrack(aObject).Selected := true;

                focusedTrack := TSimObject(aObject);
                fmMapWindow1.Map.Repaint;
              end;
            end;
          end;
        end;

        FIndexTrack := FIndexTrack - 1;

        if FIndexTrack < 0 then
          FIndexTrack := Count - 1;
      end;
    end
    else
      FIndexTrack := 0;
  finally
    TrackLists.UnlockList;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnOptionsClick(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    fmMapWindow1.Map.CurrentTool := mtAnchorTool;
    fSettingCoordinate.Show;
  end;

  if fmMapWindow1.Map.CurrentTool = mtAnchorTool then
    fmMapWindow1.Map.CurrentTool := mtSelectObject;
end;

procedure TfrmTacticalDisplay.ToolBtnPanClick(Sender: TObject);
begin
  if ToolBtnPan.Down then
  begin
    fmMapWindow1.Map.CurrentTool := miCenterTool;
    StatusBar1.Panels[0].Text := TToolButton(Sender).Hint;

    toolbtnZoom.Down := False;
  end
  else
  begin
    fmMapWindow1.Map.CurrentTool := mtSelectObject;
    StatusBar1.Panels[0].Text := 'Select';
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnRangeRingsOnHookClick(Sender: TObject);
begin
  FRangeRingOnHook := ToolBtnRangeRingsOnHook.Down;

  if FRangeRingOnHook then
    simMgrClient.MyRingHookedPlatfom := focusedTrack;

  if FRangeRingOnHook and (simMgrClient.MyRingHookedPlatfom <> nil) then
  begin
    simMgrClient.RangeRing.mx := simMgrClient.MyRingHookedPlatfom.getPositionX;
    simMgrClient.RangeRing.my := simMgrClient.MyRingHookedPlatfom.getPositionY;
  end;

  StatusBar1.Panels[0].Text := TToolButton(Sender).Hint;
end;

procedure TfrmTacticalDisplay.ToolBtnRemoveFromTrackTableClick(Sender: TObject);
begin
  if Assigned(focusedTrack) then
    RemoveFromTrackList(focusedTrack);
end;

procedure TfrmTacticalDisplay.ToolBtnRemovePlatformOrTrackClick
  (Sender: TObject);
var
  rec : TRecCmd_SelectPlatformToRemove;
  buttonSelected : Integer;
  i : Integer;
  dev: TSimObject;
  objPlatform : TSimObject;
begin
  if Assigned(focusedTrack) then
  begin
    buttonSelected := 1;

    if focusedTrack is TT3PlatformInstance then
		begin
	      if focusedTrack is TT3NonRealVehicle then
	        buttonSelected := MessageDlg('Do you really want to remove platform '
                            +IntToStr(TT3NonRealVehicle(focusedTrack).TrackNumber),
                            mtConfirmation, [mbYes,mbNo], 0)
        else
        begin
          if simMgrClient.ISInstructor then
	          buttonSelected := MessageDlg('Do you really want to remove platform '
                              +TT3PlatformInstance(focusedTrack).InstanceName,
                              mtConfirmation, [mbYes,mbNo], 0);
        end;
		end
    else
    if focusedTrack is TT3DetectedTrack then
      buttonSelected := MessageDlg('Do you really want to remove platform '
                        +IntToStr(TT3DetectedTrack(focusedTrack).TrackNumber),
                        mtConfirmation, [mbYes,mbNo], 0);

    if buttonSelected = mrNo then
      Exit;

    rec.SessionID := simMgrClient.SessionID;
    if focusedTrack is TT3PlatformInstance then
    begin
      rec.PlatfomID := TT3PlatformInstance(focusedTrack).InstanceIndex;

      if simMgrClient.ISInstructor then
      begin
        if focusedTrack is TT3NonRealVehicle then
        begin
          rec.isNRPlatform := true;
          simMgrClient.netSend_CmdRemovePlatfromByOperator(rec);
        end
        else
        begin
          for i := 0 to simMgrClient.SimDevices.itemCount - 1 do     //mk
          begin
            dev := simMgrClient.SimDevices.getObject(i);
            if (dev is TT3Radar) then
            begin
              if (TT3Radar(dev).RadarDefinition.FDef.Num_FCR_Channels > 0) then
              begin
                objPlatform := simMgrClient.FindT3PlatformByID(rec.PlatfomID);
                objPlatform.IsAssigned := false;

                if TT3Radar(dev).AssignedTrack <> nil then
                begin
                  if TT3Radar(dev).AssignedTrack.Count > 0 then
                  begin
                    TT3Radar(dev).AssignedTrack.Remove(focusedTrack);
                    frmTacticalDisplay.fmFireControl1.SetControlledObject(TT3Radar(dev).Parent);
                    frmTacticalDisplay.fmFireControl1.RefreshAssignTrack(dev as TT3Radar);
                  end;
                end;
              end;
            end;
          end;

          rec.isNRPlatform := false;
          simMgrClient.netSend_CmdRemovePlatfromByOperator(rec);
        end;
	    end
      else if focusedTrack is TT3NonRealVehicle then
      begin
        rec.isNRPlatform := true;
        simMgrClient.netSend_CmdRemovePlatfromByOperator(rec);
      end
      else
        addStatus('Cant delete platform!');
    end
    else
      addStatus('Cant delete platform!');

    frmTacticalDisplay.Refresh_AssumeControl;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnSnapshotClick(Sender: TObject);
var
  r : TRecCommandSnapshot ;
begin ;
  // snapshot
  if focusedTrack <> nil then     //mk
  begin
    if not Assigned(frmSnapshotDLG) then
      frmSnapshotDLG := TfrmSnapshotDLG.Create(self);

    r.OrderID := CPID_CMD_SNAPSHOT_SAVE ;
    if frmSnapshotDLG.SendSnaphotMessage then
    begin
      r.SnapshotName := AnsiUpperCase(frmSnapshotDLG.Edit1.Text) ;
      simMgrClient.netSend_CmdSnapshot(r);
    end;
  end;
end;

procedure TfrmTacticalDisplay.ToolBtnTrackHistoryClick(Sender: TObject);
begin
  if focusedTrack <> nil then
  begin
    if focusedTrack is TT3Vehicle then
    begin
      TT3Vehicle(focusedTrack).ShowTrails := not TT3Vehicle(focusedTrack)
        .ShowTrails;
      ToolBtnTrackHistory.Down := TT3Vehicle(focusedTrack).ShowTrails;
    end
    else if focusedTrack is TT3DetectedTrack then
    begin
      TT3DetectedTrack(focusedTrack).ShowTrails := not TT3DetectedTrack
        (focusedTrack).ShowTrails;

      ToolBtnTrackHistory.Down := TT3DetectedTrack(focusedTrack).ShowTrails;
    end;
  end;
end;

procedure TfrmTacticalDisplay.toolbtnZoomClick(Sender: TObject);
begin
  if toolbtnZoom.Down then
  begin
    fmMapWindow1.Map.CurrentTool := miZoomInTool;
    StatusBar1.Panels[0].Text := TToolButton(Sender).Hint;

    ToolBtnPan.Down := False;
  end
  else
  begin
    fmMapWindow1.Map.CurrentTool := mtSelectObject;
    StatusBar1.Panels[0].Text := 'Select';
  end;
end;

procedure TfrmTacticalDisplay.Tote1Click(Sender: TObject);
begin
  frmToteDisplay.Show;
end;

procedure TfrmTacticalDisplay.Track1Click(Sender: TObject);
begin
  if Assigned(focusedTrack) then begin
    setMainMenuItem(TSimObject(focusedTrack));
    setShowMainMenuItem(TSimObject(focusedTrack));
  end;
end;

procedure TfrmTacticalDisplay.tbtnFullScreenClick(Sender: TObject);
begin
  if not isFullScreen then
  begin
    Be_A_FullMap(true);
    isFullScreen := true;

  end
  else
  begin
    Be_A_FullMap(false);
    isFullScreen := false;
  end;
  mnFullScreen1.Checked := isFullScreen;

end;

procedure TfrmTacticalDisplay.UpdateFormData(Sender: TObject);
var
  i: Integer;
  pi: TT3PlatformInstance;
  ge: TGame_Environment_Definition;
begin // ini procedure update yg dipanggil dari sim client
  ge := (simMgrClient).GameEnvironment;
  pi := nil;

  if Assigned(anchorTrack) then
  begin
    simMgrClient.LineVisual.X1 := anchorTrack.getPositionX;
    simMgrClient.LineVisual.Y1 := anchorTrack.getPositionY;
  end;

  UpdateTrackListData;

  if (simMgrClient.ControlledPlatform <> nil)
    and(simMgrClient.ControlledPlatform is TT3PlatformInstance) then
  begin
    pi := TT3PlatformInstance(simMgrClient.ControlledPlatform);
    i := TacticalDisplayControlPanel.ActivePageIndex;

    if i = 1 then
      TT3Vehicle(simMgrClient.ControlledPlatform).Waypoints.IsOpenGuidanceTab := True
    else
      TT3Vehicle(simMgrClient.ControlledPlatform).Waypoints.IsOpenGuidanceTab := False;

    case i of
      0:
        fmOwnShip1.Refresh_OwnShipTab(pi);
      1:
        fmPlatformGuidance1.Refresh_VisibleTab();
      2:
        fmSensor1.Refresh_VisibleTab();
      3:
        fmWeapon1.Refresh_VisibleTab;
    end;
  end;

  if FAnchorFilterEnabled then
  begin
    lbRangeAnchor.Caption := FormatSpeed(simMgrClient.LineVisual.Range);
    lbBearingAnchor.Caption := FormatCourse(simMgrClient.LineVisual.Bearing);
  end
  else if (Assigned(focusedTrack)) and (focusedTrack is TT3NonRealVehicle) then
  begin
    if (TT3NonRealVehicle(focusedTrack).NRPType = nrpBearing) then
    begin
      lbRangeAnchor.Caption := FormatSpeed(TT3NonRealVehicle(focusedTrack).LineVisual.Range);
      lbBearingAnchor.Caption := FormatCourse(TT3NonRealVehicle(focusedTrack).LineVisual.Bearing);
    end;
  end
  else
  begin
    lbRangeAnchor.Caption := '---';
    lbBearingAnchor.Caption := '---';
  end;

  lbRangeRings.Caption := FormatCourse(simMgrClient.RangeRing.Interval);

  if pi <> nil then
  begin
    // Tambahan : Prince
    if pi.PlatformDomain = vhdAir then
      begin
        Label10.Caption := FormatCourse(pi.Course);
        Label21.Caption := FormatSpeed(pi.Speed);

        frmToteDisplay.lblWindRelativeSpeed.Caption :=
          FormatCourse(TT3Vehicle(simMgrClient.ControlledPlatform).SpeedEnvi * C_KnotsToMeterPerSecond);
        frmToteDisplay.lblWindRelativeDirection.Caption :=
          FormatCourse(TT3Vehicle(simMgrClient.ControlledPlatform).CourseEnvi);

        lbCourseHooked.Caption := FormatCourse(pi.Course);;
        lbSpeedHooked.Caption := FormatCourse(pi.Course);;
      end
    else if (pi.PlatformDomain = vhdSubsurface) and (pi.Altitude <> 0) then
      begin
        lbCourseHooked.Caption := FormatCourse(pi.Course);
        lbSpeedHooked.Caption := FormatSpeed(pi.Speed);

        frmToteDisplay.lblWindRelativeSpeed.Caption     := '---';
        frmToteDisplay.lblWindRelativeDirection.Caption := '---';

        Label10.Caption := '---';
        Label21.Caption := '---';
      end
    else if (pi.PlatformDomain = vhdAmphibious) and (pi.Altitude <> 0) then
      begin
        lbCourseHooked.Caption := FormatCourse(pi.Course);
        lbSpeedHooked.Caption := FormatSpeed(pi.Speed);
      end
    else
    begin
      lbCourseHooked.Caption := FormatCourse(pi.Course);
      lbSpeedHooked.Caption := FormatSpeed(pi.Speed);

      frmToteDisplay.lblWindRelativeSpeed.Caption     := '---';
      frmToteDisplay.lblWindRelativeDirection.Caption := '---';

      Label10.Caption := FormatCourse(ge.FData.Wind_Direction);
      Label21.Caption := FormatSpeed(ge.FData.Wind_Speed);
    end;
  end
  else
  begin
    lbCourseHooked.Caption := '---';
    lbSpeedHooked.Caption := '---';
  end;

  if focusedTrack <> nil then begin
    UpdateHookedInfo(focusedTrack);
    UpdatePanelTop(focusedTrack); //refresh btn merge di top panel
  end
  else
  begin
    InitTabHookedInfo;
    ToolBtnMerge.Enabled := False;
  end;
end;

procedure TfrmTacticalDisplay.UpdateGameTime(Sender: TObject);
var
  I : Integer;
  v : TT3Vehicle;
  embark : TT3EmbarkedVehicle;
  li : TlistItem; //mk
begin
  DisplayGameTime(simMgrClient.GameSpeed, simMgrClient.GameTIME);
  frmToteDisplay.UpdateTimeMissile;

  if Assigned(frmWaypointEditor) then
    frmWaypointEditor.UpdateArrivalTime;

  //aldy
  if Assigned(frmToteDisplay.lvPlatforms.Selected) then
  begin
    li := frmToteDisplay.lvPlatforms.Selected;    //mk
    v := li.Data;

    if Assigned(v) then
    begin
      if Assigned(v.EmbarkedVehicles) then
      begin
        for I := 0 to v.EmbarkedVehicles.Count - 1 do
        begin
          embark := v.EmbarkedVehicles.Items[I];

          if Assigned(embark.OnEmbarkedTimer) then
            embark.OnEmbarkedTimer(embark, 1, 10);

          if Assigned(embark.OnEmbarkedReadyTimer) then
            embark.OnEmbarkedReadyTimer(embark, 1, 60);
        end;
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.UnselectAllDetectedTrack;
var
  i, j : integer;
  dt : TT3DetectedTrack;
  esmObj : TT3ESMTrack;
begin
  for I := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
  begin
    dt := simMgrClient.SimDetectedTrackList.getObject(i) as TT3DetectedTrack;
    dt.Selected := false;

    for j := 0 to dt.ESMTracks.Count - 1 do
    begin
      esmObj := dt.ESMTracks[j];
      esmObj.IsSelected := False;
    end;
  end;
end;

procedure TfrmTacticalDisplay.UnSelectAllBOlWPointTrack;
var
  i : integer;
  pi : TPointVehicleMissileBOLW;
begin
  for i := 0 to simMgrClient.SimPointBOLW_VehicleMissile.itemCount - 1 do
  begin
    pi := simMgrClient.SimPointBOLW_VehicleMissile.getObject(i) as TPointVehicleMissileBOLW;
    if pi.Selected then
      pi.Selected := False;
  end;
end;

procedure TfrmTacticalDisplay.UnSelectAllRBLWPointTrack;
var
  i : integer;
  pi : TPointVehicleMissileRBLW;
begin
  for i := 0 to simMgrClient.SimPointRBLW_VehicleMissile.itemCount - 1 do
  begin
    pi := simMgrClient.SimPointRBLW_VehicleMissile.getObject(i) as TPointVehicleMissileRBLW;
    if pi.Selected then
      pi.Selected := False;
  end;
end;

procedure TfrmTacticalDisplay.UnSelectAllNRPlatformTrack;
var
  i : integer;
  pi : TT3PlatformInstance;
begin
  for I := 0 to simMgrClient.simNonRealPlatform.itemCount - 1 do begin
    pi := simMgrClient.simNonRealPlatform.getObject(i) as TT3PlatformInstance;
      pi.Selected := false;
  end;

end;

procedure TfrmTacticalDisplay.UnSelectAllPlatformTrack;
var
  i : integer;
  pi : TT3PlatformInstance;
begin
  for I := 0 to simMgrClient.SimPlatforms.itemCount - 1 do begin
    pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;
      pi.Selected := false;
  end;
end;

procedure TfrmTacticalDisplay.UpdateCenter(Sender: TObject);
var
  range : double;
begin
  if FHookOnPlatform and Assigned(simMgrClient.MyCenterHookedPlatfom) then
  begin
    range := CalcRange(FLastMapCenterX,FLastMapCenterY,
              simMgrClient.MyCenterHookedPlatfom.PosX,
              simMgrClient.MyCenterHookedPlatfom.PosY);
    range := range * C_NauticalMile_To_Metre;

    // default update center ketika dR = 100 meter
    if range > 10 then begin
      FLastMapCenterX := simMgrClient.MyCenterHookedPlatfom.PosX;
      FLastMapCenterY := simMgrClient.MyCenterHookedPlatfom.PosY;

      VSimMap.SetMapCenter(FLastMapCenterX,FLastMapCenterY);
    end;
  end;

  if Assigned(simMgrClient.MyRingHookedPlatfom) then
  begin
    if FRangeRingOnHook then
    begin
      simMgrClient.RangeRing.mx := simMgrClient.MyRingHookedPlatfom.getPositionX;
      simMgrClient.RangeRing.my := simMgrClient.MyRingHookedPlatfom.getPositionY;
    end
    else
    begin
      simMgrClient.RangeRing.mx := fmMapWindow1.Map.CenterX;
      simMgrClient.RangeRing.my := fmMapWindow1.Map.CenterY;
    end;
  end;
end;

procedure TfrmTacticalDisplay.GetNameAndClass(const obj: TSimObject;
  var n, c: string);
var
  det: TT3DetectedTrack;
  fd: byte;
  v: TT3Vehicle;
begin
  if not Assigned(obj) then   //mk
    Exit;

  det := TT3DetectedTrack(obj);
  if not simMgrClient.ISInstructor then
  begin
    fd := simMgrClient.FMyCubGroup.FData.Force_Designation;

    if det.TrackObject is TT3PlatformInstance then
    begin
      if det.TrackObject is TT3Vehicle then
      begin
        v := det.TrackObject as TT3Vehicle;
        if fd = TT3PlatformInstance(det.TrackObject).Force_Designation then
        begin
          n := v.InstanceName;
          c := TVehicle_Definition(v.UnitDefinition).FData.Vehicle_Identifier;
        end
        else
        begin
          n := 'Unknown';
          c := 'Unknown';
        end;
      end
      else
      begin
        if fd = TT3PlatformInstance(det.TrackObject).Force_Designation then
        begin
          n := TT3PlatformInstance(det.TrackObject).InstanceName;
          c := TT3PlatformInstance(det.TrackObject).InstanceClass;
        end
        else
        begin
          n := 'Unknown';
          c := 'Unknown';
        end;
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.DisplayTabHooked(Sender: TObject);
var
  v: TT3PlatformInstance;
  ct: TT3PlatformInstance;
  det: TT3DetectedTrack;
  d, b, long, lat: double;
  pY, pX: Extended;
  idCoordinat: Integer;
  esm: TT3ESMTrack;
begin
  v := nil;
  det := nil;
  idCoordinat := fSettingCoordinate.IdCoordinat;

  if Assigned(sender) then     //mk
  begin
    if Sender is TT3PlatformInstance then
      v := TT3PlatformInstance(Sender)
    else
    if Sender is TT3DetectedTrack then
    begin
      det := TT3DetectedTrack(Sender);

      if Assigned(det.MergedESM) then
      begin
        lbTrackHook.Caption:= (det.MergedESM.TrackNumber);
        lbNameHook.Caption := TT3PlatformInstance(det.MergedESM.TrackObject).InstanceName;
        lbClassHook.Caption:= TT3Radar(det.MergedESM.TrackObject).
                               RadarDefinition.FDef.Radar_Emitter;
        lbBearingHook.Caption := FormatFloat('000.0', det.MergedESM.Bearing);

        StaticText6.Caption := 'Origin';
        lbPositionHook1.Caption := formatDMS_long(det.MergedESM.DetectBy.PosX);
        lbPositionHook2.Caption := formatDMS_latt(det.MergedESM.DetectBy.PosY);

        Exit;
      end;

      v := TT3PlatformInstance(det.TrackObject);
    end
    else if Sender is TT3ESMTrack then
    begin
      esm := TT3ESMTrack(Sender);

      if esm.DetailedDetectionShowedESM.Track_ID then
        lbTrackHook.Caption      := esm.TrackNumber
      else
        lbTrackHook.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Name_Data_Capability then
        lbNameHook.Caption      := TT3PlatformInstance(esm.TrackObject).InstanceName
      else
        lbNameHook.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Class_Data_Capability then
        lbClassHook.Caption      := TT3Radar(esm.TrackObject).RadarDefinition.FDef.Radar_Emitter
      else
        lbClassHook.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Bearing_Data_Capability then
        lbBearingHook.Caption      := FormatFloat('000.0', esm.Bearing)
      else
        lbBearingHook.Caption      := '---';

      StaticText6.Caption := 'Origin';
      lbPositionHook1.Caption := formatDMS_long(TT3ESMTrack(sender).DetectBy.PosX);
      lbPositionHook2.Caption := formatDMS_latt(TT3ESMTrack(sender).DetectBy.PosY);

      Exit;
    end;
  end;

  b := 0;
  d := 0;

  if v <> nil then
  begin
    if simMgrClient.ControlledPlatform <> nil then
    begin
      ct := TT3PlatformInstance(simMgrClient.ControlledPlatform);
      b := CalcBearing(ct.getPositionX, ct.getPositionY, v.getPositionX,
           v.getPositionY);
      d := CalcRange(ct.getPositionX, ct.getPositionY, v.getPositionX,
           v.getPositionY);
    end;
  end;

  if det <> nil then
  begin
    if det.TrackObject is TT3DeviceUnit then
    begin
      v := det.TrackObject.Parent as TT3PlatformInstance;
    end
    else if det.TrackObject is TT3PlatformInstance then
    begin
      v := det.TrackObject as TT3PlatformInstance;
    end;

    if det.TrackDomain = 0 then
    begin
      pnlDepth.Visible      := False;
      pnlAltitude.Visible   := True;

      if Assigned(v) then
      begin
        if v.Altitude <> 0 then
          lbAltitude.Caption := FormatAltitude(v.Altitude * C_Meter_To_Feet)
        else
          lbAltitude.Caption := '0';  // 05/ 04/ 2012
      end;
    end
    else if (det.TrackDomain = 2) OR (det.TrackDomain = 4) then
    begin
      pnlDepth.Visible      := True;
      pnlAltitude.Visible   := False;

      if Assigned(v) then
      begin
        if v.Altitude <> 0 then
          lbDepth.Caption    := FormatAltitude(v.Altitude)
        else
          lbDepth.Caption := '0';     // 05/ 04/ 2012
      end;
    end
    else
    begin
      pnlDepth.Visible      := False;
      pnlAltitude.Visible   := False;
    end;

    if Assigned(v) then
    begin
      if det.IsDetailViewed then
      begin
        if det.DetailedDetectionShowed.Plat_Name_Recog_Capability then
        begin
          lbNameHook.Caption      := v.InstanceName;
        end
        else
        begin
          lbNameHook.Caption      := 'Unknown';
        end;

        if det.DetailedDetectionShowed.Plat_Class_Recog_Capability then
        begin
          lbClassHook.Caption     := v.InstanceClass;
        end
        else
        begin
          lbClassHook.Caption     := 'Unknown';
        end;

        if det.DetailedDetectionShowed.Heading_Data_Capability then
          lbCourseHook.Caption    := FormatCourse(v.Course)
        else
          lbCourseHook.Caption    := '---';

        if det.DetailedDetectionShowed.Ground_Speed_Data_Capability then
          lbGround.Caption        := FormatSpeed(v.Speed)
        else
          lbGround.Caption        := '---';

        if det.DetailedDetectionShowed.Altitude_Data_Capability then
          lbAltitude.Caption    := FormatAltitude(v.Altitude * C_Meter_To_Feet)
        else
          lbAltitude.Caption    := '---';
      end;

      if det.DetailedDetectionShowed.Track_ID then
        lbTrackHook.Caption := FormatTrackNumber(det.trackNumber)
      else
        lbTrackHook.Caption   := 'Unknown';
    end
    else
    begin
      lbNameHook.Caption := 'Unknown';
      lbClassHook.Caption := 'Unknown';
    end;

    lbFormation.Caption     := '---';
    if Assigned(v) then
    begin
      lbDamage.Caption        := IntToStr(100 - Round(v.HealthPercent)) + '%';
    end;
  end
  else
  begin
    if Assigned(v) then
    begin
      if v is TT3NonRealVehicle then
        lbTrackHook.Caption := IntToStr(v.TrackNumber)
      else
        lbTrackHook.Caption := v.Track_ID;

      lbNameHook.Caption := v.InstanceName;

      if v is TT3Vehicle then
        lbClassHook.Caption := TVehicle_Definition(v.UnitDefinition)
          .FData.Vehicle_Identifier;

      if v is TT3Missile then
        lbClassHook.Caption := TMissile_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Torpedo then
        lbClassHook.Caption := TTorpedo_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Chaff then lbClassHook.Caption := 'Chaff';

      if v is TT3AirBubble then lbClassHook.Caption := 'Air Bubble';

      if v is TT3Decoy then lbClassHook.Caption := 'Decoy';

      if v is TT3Sonobuoy then lbClassHook.Caption := 'Sonobuoy';

      if v is TT3Mine then lbClassHook.Caption := 'Mine';

      if v.PlatformDomain = 0 then
      begin
        pnlDepth.Visible      := False;
        pnlAltitude.Visible   := True;

        if v.Altitude <> 0 then
         lbAltitude.Caption    := FormatAltitude(v.Altitude * C_Meter_To_Feet)
        else
         lbAltitude.Caption := '0'; // 05/ 04/ 2012
      end
      else if (v.PlatformDomain = 2) or (v.PlatformDomain = 4)then
      begin
        pnlDepth.Visible      := True;
        pnlAltitude.Visible   := False;

        if v.Altitude <> 0 then
          lbDepth.Caption    := FormatAltitude(v.Altitude)
        else
          lbDepth.Caption := '0'; // 05/ 04/ 2012
      end
      else
      begin
        pnlDepth.Visible      := False;
        pnlAltitude.Visible   := False;
      end;

      lbCourseHook.Caption    := FormatCourse(v.Course);
      lbGround.Caption        := FormatSpeed(v.Speed);
      lbFormation.Caption     := '---';

      lbDamage.Caption        := IntToStr(100 - Round(v.HealthPercent)) + '%';
    end;
  end;

  long := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Long;
  lat := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Lat;
  StaticText6.Caption := 'Position';

  case idCoordinat of
    1:
    begin
      if Assigned(v) then
      begin
        lbPositionHook1.Caption := formatDMS_long(v.getPositionX);
        lbPositionHook2.Caption := formatDMS_latt(v.getPositionY);
      end;
    end;
    2:
    begin
      pX := CalcMove(v.getPositionX, long);
      pY := CalcMove(v.getPositionY, lat);

      if (pX >= 0) and (pY >=0) then
      begin
        lbPositionHook1.Caption := 'White ' + FormatFloat('0.00', Abs(pX));  //kuadran 1
      end;
      if (pX <= 0) and (pY >=0) then
      begin
        lbPositionHook1.Caption := 'Red ' + FormatFloat('0.00', Abs(pX));   //kuadran 2
      end;
      if (pX < 0) and (pY < 0) then
      begin
        lbPositionHook1.Caption := 'Green ' + FormatFloat('0.00', Abs(pX)); //kuadran 3
      end;
      if (pX >= 0) and (pY <= 0) then
      begin
        lbPositionHook1.Caption := 'Blue ' + FormatFloat('0.00', Abs(pX));  //kuadran 4
      end;

      lbPositionHook2.Caption := FormatFloat('0.00', Abs(pY));
    end;
    3:
    begin
      if Assigned(v) then
      begin
        lbPositionHook1.Caption := ConvDegree_To_Georef(v.getPositionX, v.getPositionY);
      end;
    end;
  end;

  lbBearingHook.Caption   := FormatCourse(b); ;
  lbRangeHook.Caption     := FormatFloat('000.0', d);
end;

procedure TfrmTacticalDisplay.DisplayTabDetail(Sender: TObject);
var
  v: TT3PlatformInstance;
  det: TT3DetectedTrack;
  dName, dClass: string;
  esm: TT3ESMTrack;
begin
  v := nil;
  det := nil;

  if Assigned(Sender) then     //mk
  begin
    if Sender is TT3PlatformInstance then
      v := TT3PlatformInstance(Sender);

    if Sender is TT3DetectedTrack then
    begin
      det := TT3DetectedTrack(Sender);

      if Assigned(det.MergedESM) then
      begin
        lbMergeStatus.Caption := 'Merged';
        lbTrackDetails.Caption := (det.MergedESM.TrackNumber);
        lbNameDetails.Caption := TT3PlatformInstance(det.MergedESM.TrackObject).InstanceName;
        lbClassDetails.Caption := TT3Radar(det.MergedESM.TrackObject).RadarDefinition.FDef.Radar_Emitter;
        lbTypeDetails.Caption := 'Other';
        lbDoppler.Caption := '[None]';
        lbTrackType.Caption := 'Real Time Bearing Track';

        if TT3ESMTrack(Sender).IsMerged then
          lbMergeStatus.Caption := 'Merged'
        else
          lbMergeStatus.Caption := 'Not Merged';

        Exit;
      end
      else
        lbMergeStatus.Caption := 'Not Merged';

      v := TT3PlatformInstance(det.TrackObject);
    end
    else if Sender is TT3ESMTrack then
    begin
      esm := TT3ESMTrack(Sender);

      if esm.DetailedDetectionShowedESM.Track_ID then
        lbTrackDetails.Caption      := esm.TrackNumber
      else
        lbTrackDetails.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Name_Data_Capability then
        lbNameDetails.Caption      := TT3PlatformInstance(esm.TrackObject).InstanceName
      else
        lbNameDetails.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Class_Data_Capability then
        lbClassDetails.Caption      := TT3Radar(esm.TrackObject).RadarDefinition.FDef.Radar_Emitter
      else
        lbClassDetails.Caption      := 'Unknown';

      lbIdentifier.Caption  := getIdentStr(esm.TrackIdent);
      lbDomain.Caption      := getDomain(esm.TrackDomain);
      lbTypeDetails.Caption := 'Other';
      lbDoppler.Caption     := '[None]';
      lbTrackType.Caption   := 'Real Time Bearing Track';

      if esm.IsMerged then
        lbMergeStatus.Caption := 'Merged'
      else
        lbMergeStatus.Caption := 'Not Merged';

      Exit;
    end;

    if v = nil then exit;

    if det <> nil then
    begin
      GetNameAndClass(det, dName, dClass);

      if det.IsDetailViewed then
      begin
        if det.DetailedDetectionShowed.Track_ID then
          lbTrackDetails.Caption := FormatTrackNumber(det.trackNumber)
        else
          lbTrackDetails.Caption   := 'Unknown';

        if det.DetailedDetectionShowed.Plat_Name_Recog_Capability then
        begin
          lbNameDetails.Caption      := v.InstanceName;
        end
        else
        begin
          lbNameDetails.Caption      := 'Unknown';
        end;

        if det.DetailedDetectionShowed.Plat_Class_Recog_Capability then
        begin
          lbClassDetails.Caption     := v.InstanceClass;
        end
        else
        begin
          lbClassDetails.Caption     := 'Unknown';
        end;

        if det.DetailedDetectionShowed.Plat_Type_Recog_Capability then
          lbTypeDetails.Caption := getTypeStr(det.TrackType)
        else
          lbTypeDetails.Caption := 'Unknown';
      end;

      lbIdentifier.Caption  := getIdentStr(det.TrackIdent);
      lbDomain.Caption      := getDomain(det.TrackDomain);
      lbTrackType.Caption   := 'Real Time Point Track';
    end
    else
    begin
      if v is TT3NonRealVehicle then
      begin
        lbTrackDetails.Caption := IntToStr(v.TrackNumber);
        lbTypeDetails.Caption  := 'Other';
        lbIdentifier.Caption    := getIdentStr(v.TrackIdent);
        lbDomain.Caption        := getDomain(v.TrackDomain);
        lbTrackType.Caption     := getNRTrackTypeStr(TT3NonRealVehicle(v).NRPType);
      end
      else
      begin
        lbTrackDetails.Caption := v.Track_ID;
        lbTypeDetails.Caption  := getTypeStr(v.PlatformType);

        case v.Force_Designation of
          1 : lbIdentifier.Caption := 'Red Force';
          2 : lbIdentifier.Caption := 'Yellow Force';
          3 : lbIdentifier.Caption := 'Blue Force';
          4 : lbIdentifier.Caption := 'Green Force';
          5 : lbIdentifier.Caption := 'White Force';
          6 : lbIdentifier.Caption := 'Black Force';
        else
          lbIdentifier.Caption := 'White Force';
        end;

        lbDomain.Caption    := getDomain(v.PlatformDomain);
        lbTrackType.Caption := 'Real Time Point Track';
      end;

      lbNameDetails.Caption   := v.InstanceName;
      lbClassDetails.Caption  := v.InstanceClass;

      if v is TT3Missile then
        lbClassDetails.Caption := TMissile_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Torpedo then
        lbClassDetails.Caption := TTorpedo_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Chaff then lbClassDetails.Caption := 'Chaff';

      if v is TT3AirBubble then lbClassDetails.Caption := 'Air Bubble';

      if v is TT3Decoy then lbClassDetails.Caption := 'Decoy';

      if v is TT3Sonobuoy then lbClassDetails.Caption := 'Sonobuoy';

      if v is TT3Mine then lbClassDetails.Caption := 'Mine';
    end;
  end;
end;

procedure TfrmTacticalDisplay.DisplayTabDetection(Sender: TObject);
var
  v: TT3PlatformInstance;
  dName, dClass: string;
  det: TT3DetectedTrack;
  //dev : TSimObject;
  esm: TT3ESMTrack;
  dl : TT3DataLink;
  item : TT3DLNCSTrackEntityItem;
  pu : TT3DLParticipatingUnitItem;
  i : integer;
begin
  v := nil;
  det := nil;

  if Assigned(Sender) then       //mk
  begin
    if Sender is TT3PlatformInstance then
      v := TT3PlatformInstance(Sender);

    if Sender is TT3DetectedTrack then
    begin
      det := TT3DetectedTrack(Sender);

      if Assigned(det.MergedESM) then
      begin
        lbTrackDetection.Caption := (det.MergedESM.TrackNumber);
        lbNameDetection.Caption := TT3PlatformInstance(det.MergedESM.TrackObject).InstanceName;
        lbClassDetection.Caption := TT3Radar(det.MergedESM.TrackObject).RadarDefinition.FDef.Radar_Emitter;
        lbFirstDetected.Caption := FormatDateTime('ddhhnn', det.MergedESM.FirstDetected)
        + 'Z ' + FormatDateTime(' mmm yyyy', det.MergedESM.FirstDetected);
        lbLastDetected.Caption := FormatDateTime('ddhhnn', det.MergedESM.LastDetected)
        + 'Z ' + FormatDateTime(' mmm yyyy', det.MergedESM.LastDetected);
        lbDetectionDetectionType.Caption := 'Merged Track';
        Exit;
      end;

      // state from datalink
      if det.IsDetectedOnlyByDataLink(dl) then
      begin
        if Assigned(dl) then
        begin
          for I := 0 to dl.getNCSEntitiesCount - 1 do
          begin
            item := dl.getNCSEntity(i);

            if det.TrackObject.InstanceIndex = item.NEITrackID then
            begin
              pu := dl.GetPUByInstanceIndex(item.NEIOwnerID);
              lbOwner.Caption :=  Format('%3d',[pu.PUNumber]);
              Break;
            end;
          end;
        end;
      end
      else
        lbOwner.Caption := '---';

      v := TT3PlatformInstance(det.TrackObject);
    end
    else if Sender is TT3ESMTrack then
    begin
      esm := TT3ESMTrack(Sender);

      if esm.DetailedDetectionShowedESM.Track_ID then
        lbTrackDetection.Caption      := esm.TrackNumber
      else
        lbTrackDetection.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Name_Data_Capability then
        lbNameDetection.Caption      := TT3PlatformInstance(esm.TrackObject).InstanceName
      else
        lbNameDetection.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Class_Data_Capability then
        lbClassDetection.Caption      := TT3Radar(esm.TrackObject).RadarDefinition.FDef.Radar_Emitter
      else
        lbClassDetection.Caption      := 'Unknown';

      lbFirstDetected.Caption := FormatDateTime('ddhhnn', esm.FirstDetected)
            + 'Z ' + FormatDateTime(' mmm yyyy', esm.FirstDetected);
      lbLastDetected.Caption := FormatDateTime('ddhhnn', esm.LastDetected)
            + 'Z ' + FormatDateTime(' mmm yyyy', esm.LastDetected);
      lbDetectionDetectionType.Caption := 'ESM';

      Exit;
    end;

    if v = nil then exit;

    if det <> nil then
    begin
      GetNameAndClass(det, dName, dClass);

      if det.IsDetailViewed then
      begin
        // tampilkan sensor pertama yg detect;

        if det.DetailedDetectionShowed.Track_ID then
          lbTrackDetection.Caption := FormatTrackNumber(det.trackNumber)
        else
          lbTrackDetection.Caption  := 'Unknown';

        if det.DetailedDetectionShowed.Plat_Name_Recog_Capability then
        begin
          lbNameDetection.Caption  := v.InstanceName;
        end
        else
        begin
          lbNameDetection.Caption  := 'Unknown';
        end;

        if det.DetailedDetectionShowed.Plat_Class_Recog_Capability then
        begin
          lbClassDetection.Caption := v.InstanceClass;
        end
        else
        begin
          lbClassDetection.Caption := 'Unknown';
        end;

//          lbNameDetection.Caption   := TT3DeviceUnit(det.TrackDetectedBy.Items[0]).InstanceName;
//          dev := det.TrackDetectedBy.Items[0];
//          if dev is TT3Visual then
//            lbClassDetection.Caption := 'Visual Sensor'
//          else
//          if dev is TT3Radar then
//            lbClassDetection.Caption := TT3Radar(dev).RadarDefinition.FDef.Radar_Emitter
//          else
//          if dev is TT3Sonar then
//            case (TT3Sonar(dev).SonarCategory) of
//              scHMS : lbClassDetection.Caption     := scsHMS;
//              scVDS : lbClassDetection.Caption     := scsVDS;
//              scTAS : lbClassDetection.Caption     := scsTAS;
//              scDipping : lbClassDetection.Caption := scsDipping;
//              scSonobuoy : lbClassDetection.Caption:= scsSonobuoy;
//            end
//          else
//          if dev is TT3EOSensor then
//            case (TT3EOSensor(dev).EODefinition.FData.Instance_Type) of
//              Byte(eocOptical) : lbClassDetection.Caption     := eocsOptical;
//              Byte(eocLaserSensor) : lbClassDetection.Caption := eocsLaserSensor;
//              Byte(eocInfrared) : lbClassDetection.Caption    := eocsInfrared;
//            end
//          else
//            lbClassDetection.Caption := TT3DeviceUnit(det.TrackDetectedBy.Items[0]).InstanceClass;
      end;
    end
    else
    begin
      if v is TT3NonRealVehicle then
        lbTrackDetection.Caption := IntToStr(v.TrackNumber)
      else
        lbTrackDetection.Caption := v.Track_ID;

      lbNameDetection.Caption := v.InstanceName;
      lbClassDetection.Caption := v.InstanceClass;

      if v is TT3Missile then
        lbClassDetection.Caption := TMissile_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Torpedo then
        lbClassDetection.Caption := TTorpedo_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Chaff then lbClassDetection.Caption := 'Chaff';

      if v is TT3AirBubble then lbClassDetection.Caption := 'Air Bubble';

      if v is TT3Decoy then lbClassDetection.Caption := 'Decoy';

      if v is TT3Sonobuoy then lbClassDetection.Caption := 'Sonobuoy';

      if v is TT3Mine then lbClassDetection.Caption := 'Mine';
    end;
  end;
end;

procedure TfrmTacticalDisplay.DisplayTabIFF(Sender: TObject);
var
  v: TT3PlatformInstance;
  det: TT3DetectedTrack;
  SensorDevice: TT3DeviceUnit;
  i: Integer;
  SensorIFF: TT3IFFSensor;
  esm: TT3ESMTrack;
begin
  v := nil;
  det := nil;

  if Assigned(Sender) then   //mk
  begin
    if Sender is TT3PlatformInstance then
      v := TT3PlatformInstance(Sender);

    if Sender is TT3DetectedTrack then
    begin
      det := TT3DetectedTrack(Sender);
      v := TT3PlatformInstance(det.TrackObject);
    end
    else if Sender is TT3ESMTrack then
    begin
      esm := TT3ESMTrack(Sender);

      if esm.DetailedDetectionShowedESM.Track_ID then
        lbTrackIff.Caption      := esm.TrackNumber
      else
        lbTrackIff.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Name_Data_Capability then
        lbNameIff.Caption      := TT3PlatformInstance(esm.TrackObject).InstanceName
      else
        lbNameIff.Caption      := 'Unknown';

      if esm.DetailedDetectionShowedESM.Class_Data_Capability then
        lbClassIff.Caption      := TT3Radar(esm.TrackObject).RadarDefinition.FDef.Radar_Emitter
      else
        lbClassIff.Caption      := 'Unknown';

      exit;
    end;

    if v = nil then
      exit;

    if det <> nil then
    begin
      if det.DetailedDetectionShowed.Track_ID then
        lbTrackIff.Caption := FormatTrackNumber(det.trackNumber)
      else
        lbTrackIff.Caption := 'Unknown';

      if det.DetailedDetectionShowed.Plat_Name_Recog_Capability then
      begin
        lbNameIff.Caption  := v.InstanceName;
      end
      else
      begin
        lbNameIff.Caption  := 'Unknown';
      end;

      if det.DetailedDetectionShowed.Plat_Class_Recog_Capability then
      begin
        lbClassIff.Caption := v.InstanceClass;
      end
      else
      begin
        lbClassIff.Caption := 'Unknown';
      end;

      lbMode1Iff.Caption := det.TransMode1Detected;
      lbMode2Iff.Caption := det.TransMode2Detected;
      lbMode3Iff.Caption := det.TransMode3Detected;
      lbMode3CIff.Caption := det.TransMode3CDetected;

      if det.TransMode1Detected = '' then
      lbMode1Iff.Caption := '---';

      if det.TransMode2Detected = '' then
      lbMode2Iff.Caption := '---';

      if det.TransMode3Detected = '' then
      lbMode3Iff.Caption := '---';

      if det.TransMode3CDetected = '' then
      lbMode3CIff.Caption := '---';
    end
    else
    begin
      if v is TT3NonRealVehicle then
      begin
        lbTrackIff.Caption := IntToStr(v.TrackNumber);
      end
      else
      begin
        lbTrackIff.Caption := v.Track_ID;
      end;

      lbNameIff.Caption := v.InstanceName;
      lbClassIff.Caption := v.InstanceClass;

      if v is TT3Missile then
        lbClassIff.Caption := TMissile_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Torpedo then
        lbClassIff.Caption := TTorpedo_On_Board(v.UnitDefinition)
          .FDef.Class_Identifier;

      if v is TT3Chaff then lbClassIff.Caption := 'Chaff';

      if v is TT3AirBubble then lbClassIff.Caption := 'Air Bubble';

      if v is TT3Decoy then lbClassIff.Caption := 'Decoy';

      if v is TT3Sonobuoy then lbClassIff.Caption := 'Sonobuoy';

      if v is TT3Mine then lbClassIff.Caption := 'Mine';

      if v is TT3Vehicle then
      begin
        for i := 0 to TT3Vehicle(v).Devices.Count -1 do
        begin
          SensorDevice := TT3DeviceUnit(TT3Vehicle(v).Devices.Items[i]);

          if SensorDevice is TT3IFFSensor then
          begin
            SensorIFF := TT3IFFSensor(SensorDevice);

            lbMode3CIff.Caption := '---';
            if SensorIFF.TransponderOperateStatus = sopon then
              begin
                if SensorIFF.TransponderMode1Enabled then
                  lbMode1Iff.Caption := DecToOct(IntToStr(SensorIFF.TransponderMode1))
                else
                  lbMode1Iff.Caption := '---';
                if SensorIFF.TransponderMode2Enabled then
                  lbMode2Iff.Caption := DecToOct(IntToStr(SensorIFF.TransponderMode2))
                else
                  lbMode2Iff.Caption := '---';
                if SensorIFF.TransponderMode3Enabled then
                  lbMode3Iff.Caption := DecToOct(IntToStr(SensorIFF.TransponderMode3))
                else
                  lbMode3Iff.Caption := '---';
                end
            else
            begin
              lbMode1Iff.Caption  :='---';
              lbMode2Iff.Caption  := '---';
              lbMode3Iff.Caption  := '---';
              lbMode3CIff.Caption := '---';
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.UpdateHookedInfo(Sender: TObject);
begin
  InitTabHookedInfo;

  if not Assigned(Sender) then
    exit;

  if HookContactInfoTraineeDisplay.ActivePage = tsHook then
    DisplayTabHooked(Sender);

  if HookContactInfoTraineeDisplay.ActivePage = tsDetails then
    DisplayTabDetail(Sender);

  if HookContactInfoTraineeDisplay.ActivePage = tsDetection then
    DisplayTabDetection(Sender);

  if HookContactInfoTraineeDisplay.ActivePage = tsIFF then
    DisplayTabIFF(Sender);
end;

//procedure TfrmTacticalDisplay.UpdateOwnShipData(Sender: TObject);
//var
//  pi: TT3PlatformInstance;
//begin
//  if simMgrClient.ControlledPlatform = nil then
//    exit;

//  pi := TT3PlatformInstance(simMgrClient.ControlledPlatform);

//  fmOwnShip1.Refresh_OwnShipTab(pi);

//  if pi.PlatformDomain = vhdAir then
//    begin
//      Label10.Caption := FormatCourse(pi.Course);
//      Label21.Caption := FormatSpeed(pi.Speed);
//    end
//  else
//  begin
//    lbCourseHooked.Caption := FormatCourse(pi.Course);
//    lbSpeedHooked.Caption := FormatSpeed(pi.Speed);
//  end;
//end;

procedure TfrmTacticalDisplay.cbSetScaleChange(Sender: TObject);
var
  z: double;
  s: string;
begin
  if cbSetScale.ItemIndex < 0 then
    exit;

  s := cbSetScale.Items[cbSetScale.ItemIndex];
  try
    z := StrToFloat(s);
    VSimMap.SetMapZoom(z * 2);
    lblRangeScale.Caption := cbSetScale.Text;
  finally

  end;
end;

procedure TfrmTacticalDisplay.Filters1Click(Sender: TObject);
begin
  if not Assigned(fPictureFilter) then
    fPictureFilter := TfPictureFilter.Create(self);

  fPictureFilter.Show;
end;

function TfrmTacticalDisplay.FindTrackListByMember(const arg: string)
  : TListItem;
var
  i: Integer;
  f: Boolean;
  li: TListItem;
begin
  result := nil;
  li := nil;
  f := false;
  i := 0;

  while not f and (i < lvTrackTable.Items.Count) do
  begin
    li := lvTrackTable.Items.Item[i];

    f := SameText(li.SubItems[0], arg);

    Inc(i);
  end;

  if f then
    result := li;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnAirBubbleDeployClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.btnAirBubbleDeployClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnChaffAirboneDeployClick(
  Sender: TObject);
begin
  fmCounterMeasure1.btnChaffAirboneDeployClick(Sender);

end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnFloatingDecoyDeployClick(
  Sender: TObject);
begin
  fmCounterMeasure1.btnFloatingDecoyDeployClick(Sender);

end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnRadarJammingModeSelectedTrackTrackClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then begin
        fmCounterMeasure1.focused_platform :=
          TT3PlatformInstance(TT3DetectedTrack(focusedTrack).TrackObject);
      end
      else if focusedTrack is TT3PlatformInstance then begin
        fmCounterMeasure1.focused_platform := focusedTrack;
      end;
    end;

    fmCounterMeasure1.btnRadarJammingModeSelectedTrackTrackClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnSDJammerTargetClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then begin
        fmCounterMeasure1.focused_platform :=
          TT3PlatformInstance(TT3DetectedTrack(focusedTrack).TrackObject);
      end
      else if focusedTrack is TT3PlatformInstance then begin
        fmCounterMeasure1.focused_platform := focusedTrack;
      end;
    end;

    fmCounterMeasure1.btnSDJammerTargetClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnSurfaceChaffAbortClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.btnSurfaceChaffOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnSurfaceChaffCopyClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.btnSurfaceChaffOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnSurfaceChaffLaunchClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.btnSurfaceChaffOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnSurfaceChaffLauncherClick(
  Sender: TObject);
begin
  if Assigned(Sender) then
  begin
    fmCounterMeasure1.btnSurfaceChaffOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1btnSurfaceChaffTypeClick(
  Sender: TObject);
begin
  if Assigned(Sender) then
  begin
    fmCounterMeasure1.btnSurfaceChaffOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1ckSurfaceChaffEnabledClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.ckSurfaceChaffEnabledClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1ckSurfaceChaffSeductionEnabledClick(
  Sender: TObject);
begin
  if Assigned(Sender) then
  begin
//    fmCounterMeasure1.
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1edtSurfaceChaffBloomAltitudeKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender) then
  begin
    fmCounterMeasure1.OnSurfaceChaffKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1edtSurfaceChaffBloomRangeKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.OnSurfaceChaffKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1edtSurfaceChaffDelayKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender) then
  begin
    fmCounterMeasure1.OnSurfaceChaffKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1edtSurfaceChaffSalvoSizeKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender) then
  begin
    fmCounterMeasure1.OnSurfaceChaffKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1sbRadarJammingControlActivationOffClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.btnRadarNoiseJammerOnClick(sender);
  end;
end;

procedure TfrmTacticalDisplay.fmCounterMeasure1sbRadarJammingControlActivationOnClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmCounterMeasure1.btnRadarNoiseJammerOnClick(sender);
  end;
end;

procedure TfrmTacticalDisplay.fmEMCON1cbEmconSearchRadarClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmEMCON1.cbEmconSearchRadarClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmEMCON1sbEmconAllSystemsAllSilentClick(
  Sender: TObject);
begin
  fmEMCON1.sbEmconAllClick(Sender);
end;

procedure TfrmTacticalDisplay.fmEMCON1sbEmconAllSystemsClearAllClick(
  Sender: TObject);
begin
  fmEMCON1.sbEmconAllClick(Sender);

end;

procedure TfrmTacticalDisplay.fmFireControl1btnSearchFireControlAssetsTargetClick(
  Sender: TObject);
begin
  SetFCTargetObjectobj(focusedTrack);
  SetWeaponTargetObject(focusedTrack);

  if Assigned(Sender)then
  begin
    fmFireControl1.btnSearchFireControlAssetsTargetClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmFireControl1lstFireControlAssetsAssignedTracksSelectItem(
  Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if Assigned(Sender)then
  begin
    fmFireControl1.lstFireControlAssetsAssignedTracksSelectItem(Sender,Item, Selected);

    if Assigned(fmFireControl1.Focused_Platform) then
      ObjectAssignedByGun := fmFireControl1.Focused_Platform;
  end;
end;

procedure TfrmTacticalDisplay.fmOwnShip1btnLandPlatformClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmOwnShip1.btnLandPlatformClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmOwnShip1btnLaunchClick(Sender: TObject);
begin
  if Assigned(simMgrClient.ControlledPlatform) then
  begin
    if not Assigned(frmLaunchPlaform) then
      frmLaunchPlaform := TfrmLaunchPlaform.Create(self);

    frmLaunchPlaform.PlatformInst := TT3PlatformInstance(simMgrClient.ControlledPlatform);
    frmLaunchPlaform.FormStyle := fsStayOnTop;
    frmLaunchPlaform.Show;
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1btnCircleModeClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.btnCircleModeClick(Sender);

end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1btnStationAnchorPositionClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.btnStationAnchorPositionClick(Sender);

end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1btnWaypointClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.btnWaypointClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1edOrderAltitudeKeyPress
  (Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edOrderAltitudeKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1edtEngageStandOffDistanceKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edtEngageStandOffDistanceKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1edtHelmOrderedGroundSpeedKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edtHelmOrderedGroundSpeedKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1edtOrderedHelmAngleKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edtOrderedHelmAngleKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.
  fmPlatformGuidance1edtStraightLineOrderedGroundSpeedKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edtStraightLineOrderedGroundSpeedKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.
  fmPlatformGuidance1edtStraightLineOrderedHeadingKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edtStraightLineOrderedHeadingKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1edtTrackToEngageKeyPress(
  Sender: TObject; var Key: Char);
begin
   // fmPlatformGuidance1.edtEngageStandOffDistanceKeyPress(Sender, Key);
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1edtZigZagBaseCourseKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.edtZigZagBaseCourseKeyPress(Sender, Key);
  End;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1Long1Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.Long1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnCircleOnPosition1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnCircleOnTrackClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnEngagement1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;


procedure TfrmTacticalDisplay.fmPlatformGuidance1mnEvasion1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnHelm1Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnOutrun1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

{procedure TfrmTacticalDisplay.fmPlatformGuidance1mnOutrun1Click(
  Sender: TObject);
begin
  fmPlatformGuidance1.mnGuidanceClick(Sender);
  if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3DetectedTrack then
      fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
    else if focusedTrack is TT3PlatformInstance then
      fmPlatformGuidance1.focused_platform := focusedTrack;
  end;

  fmPlatformGuidance1.mnGuidanceClick(Sender);

end; }

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnShadow1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnSinuation1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

{procedure TfrmTacticalDisplay.fmPlatformGuidance1mnStationKeepingOnPositionClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.mnGuidanceClick(Sender);

end;  }

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnStraightLine1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnWaypoint1Click
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1mnZigzag1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.mnGuidanceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbCircleOnPositionPositionClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.sbCircleOnPositionPositionClick(Sender);

end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbCircleOnTrackTrackClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform((focusedTrack as TT3DetectedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.SetFocusedPlatform(focusedTrack as TT3PlatformInstance);
    end;

    fmPlatformGuidance1.sbCircleOnTrackTrackClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbEngageTrackToEngageClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.sbEngageTrackToEngageClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbOnTrackAnchorModeClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.btnCircleModeClick(Sender);

end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbOnTrackAnchorTrackClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.sbOnTrackAnchorTrackClick(Sender);

end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbTrackToEvadeClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.sbTrackToEvadeClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1sbTrackToOutrunClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmPlatformGuidance1.focused_platform := focusedTrack;
    end;

    fmPlatformGuidance1.sbTrackToOutrunClick(Sender);
  end;
end;

{procedure TfrmTacticalDisplay.fmPlatformGuidance1sbTrackToOutrunClick(
  Sender: TObject);
begin
  fmPlatformGuidance1.sbTrackToOutrunClick(Sender);
if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3DetectedTrack then
      fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
    else if focusedTrack is TT3PlatformInstance then
      fmPlatformGuidance1.focused_platform := focusedTrack;
  end;


  fmPlatformGuidance1.sbTrackToOutrunClick(Sender);

end; }

procedure TfrmTacticalDisplay.fmPlatformGuidance1Short1Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.Short1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1SpeedButton2Click
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
      begin
        fmPlatformGuidance1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance);
      end
      else if focusedTrack is TT3PlatformInstance then
      begin
        fmPlatformGuidance1.focused_platform := focusedTrack;
      end;

      fmPlatformGuidance1.PanelPlatformGuidance.Enabled := True;
      fmPlatformGuidance1.SpeedButton2Click(Sender);
    end
    else
    begin
      fmPlatformGuidance1.PanelPlatformGuidance.Enabled := False;
    end;
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1VeryLong1Click(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.VeryLong1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmPlatformGuidance1whHeadingChange
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmPlatformGuidance1.whHeadingChange(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1btnIFFInterrogatorTrackSearchClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if Assigned(focusedTrack) then
    begin
      if focusedTrack is TT3DetectedTrack then
        fmSensor1.SetFocusedPlatform(TT3DetectedTrack(focusedTrack).TrackObject as TT3PlatformInstance)
      else if focusedTrack is TT3PlatformInstance then
        fmSensor1.focused_platform := focusedTrack;
    end;

    fmSensor1.btnIFFInterrogatorTrackSearchClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1cbbtnIFFInterrogatorMode1Click
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.OnIFFCheckedClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1edtIFFInterrogatorMode1KeyPress
  (Sender: TObject; var Key: Char);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.edtInterrogatorOnKeyPress(Sender, Key);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1sbESMSensorControlModeOnClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.sbESMSensorControlModeClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1sbESMSensorDisplayBlindZoneHideClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.sbESMSensorControlModeClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1sbIFFInterrogatorControlModeOffClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.btnIFFOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1sbIFFInterrogatorControlModeOnClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.btnIFFOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1sbIFFTransponderControlModeOffClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.btnIFFOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmSensor1sbIFFTransponderControlModeOnClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmSensor1.btnIFFOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnAcousticTorpedoLaunchClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnAcousticTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnAddHybridMissileTargetAimpointClick(
  Sender: TObject);
begin
  fmWeapon1.OnHybridMissileClick(Sender);

end;

procedure TfrmTacticalDisplay.fmWeapon1btnAirDroppesTargetTrackClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 5) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnAirDroppedTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnBombTargetClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 1) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnBombOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnCIWSTargetTrackClick(Sender: TObject);
begin
  if (Sender is TSpeedButton) then
    SetWeaponTargetObject(focusedTrack);
end;

procedure TfrmTacticalDisplay.fmWeapon1btnDefaultAirDroppedSearchDepthClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 5) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnAirDroppedTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnLaunchAPGClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnActivePasiveTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnlWireGuidedTorpedoTargetTrackClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 1) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnWireGuidedTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnMinesDeployClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnMinesDeployClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnStraightRunningTorpedosLaunchClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnStraightTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnSurfaceToAirTargetTrackClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 5) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnSurfaceToAirOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnSurfaceToSurfaceMissileLauncherMoreClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnSurfaceToSurfaceMissileLauncherMoreClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.
  fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 3) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnSurfaceToSurfaceClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.
  fmWeapon1btnSurfaceToSurfaceMissileTargetTrackDetailsClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnSurfaceToSurfaceMissileTargetTrackDetailsClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnTacticalMissileTargetTrackClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    SetWeaponTargetObject(focusedTrack);
    fmWeapon1.btnTacticalMissileTargetTrackClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnTargetSearchClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if not IsFireControlActivated then
    begin
      pnlStatusRed.Caption := 'FCR have to be ON';
      Exit;
    end;

    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 10) then
    begin
      SetWeaponTargetObject(focusedTrack);
      SetFCTargetObjectobj(focusedTrack);
    end
    else if (Sender is TButton) and (TButton(Sender).Tag = 1) then
      ObjectAssignedByGun := fmWeapon1.focused_platform
    else
      ObjectAssignedByGun := nil;

    fmWeapon1.btnGunControlClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btntControlGyroAdvisedClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnAcousticTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnWakeHomingTargetTrackClick
  (Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 1) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnWakeHomingTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1btnWeaponClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnWeaponClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1pnlLaunch1Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.pnlLaunch1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1pnlLaunch2Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.pnlLaunch1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1pnlLaunch3Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.pnlLaunch1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1pnlLaunch4Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.pnlLaunch1Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1sbChaffBlindZoneShowClick(
  Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.btnChaffClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.
  fmWeapon1sbStraightRunningTorpedosDisplayRangeShowClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 5) then
      SetWeaponTargetObject(focusedTrack);

    fmWeapon1.btnStraightTorpedoOnClick(Sender);
  end;
end;

procedure TfrmTacticalDisplay.fmWeapon1SpeedButton2Click(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    fmWeapon1.SpeedButton2Click(Sender);
  end;
end;

procedure TfrmTacticalDisplay.MapViewChanged(Sender: TObject);
var
  i: Integer;
  z, zCapt: double;
begin
  z := FixMapZoom(fmMapWindow1.Map.Zoom);

  zCapt := 0.5 * z;
  cbSetScale.Text := FloatToStr(zCapt);
  lblRangeScale.Caption := cbSetScale.Text;

  i := FindClosestZoomIndex(zCapt);

  toolbtnDecreaseScale.Enabled := i > 0;
  toolbtnIncreaseScale.Enabled := i < CMax_Z;

  if toolBtnFilterRangeRings.Down then
  begin
    i := FindClosestZoomIndex(zCapt);
    z := ZoomIndexToScale(i);
    simMgrClient.RangeRing.Interval := 0.25 * z;
  end;

  fmMapWindow1.Map.Repaint;
end;

procedure TfrmTacticalDisplay.MErge1Click(Sender: TObject);
begin
  if not Assigned(esmSelected) then
    exit;

  if not Assigned(frmMergeTracks) then
    frmMergeTracks := TfrmMergeTracks.Create(self);

  if Assigned(esmSelected) then
    frmMergeTracks.ControlledTrack := esmSelected
  else if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3DetectedTrack then
      frmMergeTracks.ControlledTrack := focusedTrack;
  end;

  frmMergeTracks.Show;
end;

procedure TfrmTacticalDisplay.mniAdd1Click(Sender: TObject);
begin
  ToolBtnAddToTrackTableClick(Self);
end;

procedure TfrmTacticalDisplay.mniAir1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpPoint, '', piPending);
end;

procedure TfrmTacticalDisplay.mniAir2Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpBearing, '', piPending);
end;

procedure TfrmTacticalDisplay.mniAir3Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpArea, '', piPending);
end;

procedure TfrmTacticalDisplay.mniAir4Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, vhdAir, -1, -1);
end;

procedure TfrmTacticalDisplay.mniAirborneEarlyWarning1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpSpecial, pctAirborneEarlyWarning, piPending);
end;

procedure TfrmTacticalDisplay.mniAircraftCarrier1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtAirCarrier);
end;

procedure TfrmTacticalDisplay.mniAirGeneral1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpSpecial, pctAir, piPending);
end;

procedure TfrmTacticalDisplay.mniAmphibius1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtAmphibious);
end;

procedure TfrmTacticalDisplay.mniAnchor1Click(Sender: TObject);
begin
  ToolBtnAnchorCursorClick(self);
end;

procedure TfrmTacticalDisplay.mniAssumedFriend1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piAssumedFriend, -1);
end;

procedure TfrmTacticalDisplay.mniASWGeneral1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctAswGeneral, piPending);
end;

procedure TfrmTacticalDisplay.mniAutomatic1Click(Sender: TObject);
var
  rec : TRecCmd_Platform_CHANGE_TRACKNUMBER;
begin
  if focusedTrack = nil then   //mk
    exit;

  rec.PlatfomID := TT3DetectedTrack(focusedTrack).TrackObject.InstanceIndex;
  rec.TrackID   := TT3DetectedTrack(focusedTrack).TrackNumber;
  rec.newTrackNumber := 0;
  //ShowMessage('new track ' + IntToStr(rec.newTrackNumber) + 'text' + edtNewTrackNumber.Text);
  simMgrClient.netSend_CmdTrack_CHANGE_TRACKNUMBER(rec);
end;

procedure TfrmTacticalDisplay.mniAuxiliary1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtAuxiliary);
end;

procedure TfrmTacticalDisplay.mniBouy1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctBuoy, piPending);
end;

procedure TfrmTacticalDisplay.mniBriefContact1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctBriefContact, piPending );
end;

procedure TfrmTacticalDisplay.mniBullseye1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpSpecial, pctBullseye, piPending);
end;

procedure TfrmTacticalDisplay.mniCentre1Click(Sender: TObject);
begin
  ToolBtnCentreOnHookClick(self);
end;

procedure TfrmTacticalDisplay.mniChaff1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtOther);
end;

procedure TfrmTacticalDisplay.mniCombatAirPatrol1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpSpecial, pctCombatAirPatrol, piPending);
end;

procedure TfrmTacticalDisplay.mniCruiserGuidedMissileCGCGN1Click
  (Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtCruiseGuided);
end;

procedure TfrmTacticalDisplay.mniDatalinkReferencePoint1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctDataLinkReferencePoint, piPending);
end;

procedure TfrmTacticalDisplay.mniDatum1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctDatum, piPending);
end;

procedure TfrmTacticalDisplay.mniDepthClick(Sender: TObject);
var
  aObject : TSimObject;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if not Assigned(fChangeSonobuoyDepth) then
    fChangeSonobuoyDepth := TfChangeSonobuoyDepth.Create(self);

  aObject := focusedTrack;
  if aObject is TT3PlatformInstance then
  begin
    fChangeSonobuoyDepth.lbtrack.Caption    := TT3PlatformInstance(aObject).Track_ID;
    fChangeSonobuoyDepth.lbDepth.Caption    := FormatAltitude(TT3PlatformInstance(aObject).Altitude);
    fChangeSonobuoyDepth.Label1.Caption     := IntToStr(TT3PlatformInstance(aObject).InstanceIndex);
    fChangeSonobuoyDepth.edtNewDepth.Text   := '';
  end
  else if aObject is TT3DetectedTrack then
  begin
    fChangeSonobuoyDepth.lbtrack.Caption := IntToStr(TT3DetectedTrack(aObject).TrackNumber);
    fChangeSonobuoyDepth.lbDepth.Caption := '---';
    fChangeSonobuoyDepth.edtNewDepth.Text   := '';
  end;

  fChangeSonobuoyDepth.Show;
end;

procedure TfrmTacticalDisplay.mniDesse1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctDistressedVessel, piPending);
end;

procedure TfrmTacticalDisplay.mniDestroyer1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtDestroyer);
end;

procedure TfrmTacticalDisplay.mniDestroyerGuidedMissle1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtDestroGuided);
end;

procedure TfrmTacticalDisplay.mniDitchedAircraft1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpSpecial, pctDitchedAirCraft, piPending);
end;

procedure TfrmTacticalDisplay.mniEdit1Click(Sender: TObject);
begin
  if focusedTrack = nil then exit;

  if (focusedTrack is TT3NonRealVehicle) then
  begin
    if not Assigned(frmEditNonRealTimeTrack) then
      frmEditNonRealTimeTrack := TfrmEditNonRealTimeTrack.Create(self);

    frmEditNonRealTimeTrack.Data := focusedTrack as TT3NonRealVehicle;
    frmEditNonRealTimeTrack.Show;
  end
  else if (focusedTrack is TT3DetectedTrack) then
  begin
    if not Assigned(frmEditRealTimeTrack) then
      frmEditRealTimeTrack := TfrmEditRealTimeTrack.Create(self);

    frmEditRealTimeTrack.Data := focusedTrack as TT3DetectedTrack;         //mk
    frmEditRealTimeTrack.Show;
  end
  else if focusedTrack is TT3ESMTrack then
  begin
    if not Assigned(frmEditRealTimeTrack) then
      frmEditRealTimeTrack := TfrmEditRealTimeTrack.Create(self);

    frmEditRealTimeTrack.Data := focusedTrack as TT3ESMTrack;
    frmEditRealTimeTrack.Show;
  end
  else if (focusedTrack is TT3Vehicle) then
  begin
    if not Assigned(frmEditRealTimeTrack) then
      frmEditRealTimeTrack := TfrmEditRealTimeTrack.Create(self);

    frmEditRealTimeTrack.Data := focusedTrack as TT3Vehicle;
    frmEditRealTimeTrack.Show;
  end;
end;

procedure TfrmTacticalDisplay.mniEnduranceClick(Sender: TObject);
var
  aObject : TSimObject;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if not Assigned(fChangeSonobuoyEndurance) then
    fChangeSonobuoyEndurance := TfChangeSonobuoyEndurance.Create(self);

  aObject := focusedTrack;
  if aObject is TT3PlatformInstance then
  begin
    fChangeSonobuoyEndurance.lbEnduranceTrack.Caption    := TT3PlatformInstance(aObject).Track_ID;
    fChangeSonobuoyEndurance.lbEnduranceCurrent.Caption  := IntToStr(TT3Sonobuoy(TT3PlatformInstance(aObject)).OrderEndurance);
    fChangeSonobuoyEndurance.lbIndex.Caption             := IntToStr(TT3PlatformInstance(aObject).InstanceIndex)
  end
  else if aObject is TT3DetectedTrack then
  begin
    fChangeSonobuoyEndurance.lbEnduranceTrack.Caption := IntToStr(TT3DetectedTrack(aObject).TrackNumber);
  end;

  fChangeSonobuoyEndurance.Show;
end;

procedure TfrmTacticalDisplay.mniESM1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctEsmEcmFix, piPending);
end;

procedure TfrmTacticalDisplay.mniFriend1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piFriend, -1);
end;

procedure TfrmTacticalDisplay.mniFrigateFF1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtFrigate);
end;

procedure TfrmTacticalDisplay.mniFrigateGuidedMissleFFG1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtFrigatGuided);
end;

procedure TfrmTacticalDisplay.mniGate1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdAir, nrpSpecial, pctGate, piPending);
end;

procedure TfrmTacticalDisplay.mniGeneral1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpBearing, '', piPending);
end;

procedure TfrmTacticalDisplay.mniGeneral2Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctGeneral, piPending);
end;

procedure TfrmTacticalDisplay.mniGeneral4Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, vhdGeneral, -1, -1);
end;

procedure TfrmTacticalDisplay.mniGroundZero1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctGroundZero, piPending);
end;

procedure TfrmTacticalDisplay.mniHostile1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piHostile, -1);
end;

procedure TfrmTacticalDisplay.mniInfra1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtOther);
end;

procedure TfrmTacticalDisplay.mniJammerDecoy1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtOther);
end;

procedure TfrmTacticalDisplay.mniKingpin1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctKingpin, piPending);
end;

procedure TfrmTacticalDisplay.mniLand1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdLand, nrpPoint, '', piPending);
end;

procedure TfrmTacticalDisplay.mniLand2Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdLand, nrpBearing, '', piPending);
end;

procedure TfrmTacticalDisplay.mniLand3Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdLand, nrpArea, '', piPending);
end;

procedure TfrmTacticalDisplay.mniLand4Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, vhdLand, -1, -1);
end;

procedure TfrmTacticalDisplay.mniMainwarfare1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtOther);
end;

procedure TfrmTacticalDisplay.mniManInWater1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctManInWater, piPending);
end;

procedure TfrmTacticalDisplay.mniManual1Click(Sender: TObject);
begin
  if not(focusedTrack is TT3DetectedTrack) And not (focusedTrack.Equals(esmSelected)) and not (focusedTrack is TT3NonRealVehicle) then
    Exit;

  if not Assigned(frmChangeTrackNumber) then
    frmChangeTrackNumber := TfrmChangeTrackNumber.Create(self);

  frmChangeTrackNumber.Data := focusedTrack;
  frmChangeTrackNumber.Show;
end;

procedure TfrmTacticalDisplay.mniMaritimeHeadquarter1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctMaritimeHeadquarters, piPending);
end;

procedure TfrmTacticalDisplay.mniMerchant1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtMerchant);
end;

procedure TfrmTacticalDisplay.mniMerge1Click(Sender: TObject);
begin
  if not Assigned(esmSelected) then
    exit;

  if not Assigned(frmMergeTracks) then
    frmMergeTracks := TfrmMergeTracks.Create(self);

  if Assigned(esmSelected) then
    frmMergeTracks.ControlledTrack := esmSelected
  else if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3DetectedTrack then
      frmMergeTracks.ControlledTrack := focusedTrack;
  end;

  frmMergeTracks.Show;
end;

procedure TfrmTacticalDisplay.mniMineHazard1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctMine, piPending);
end;

procedure TfrmTacticalDisplay.mniNavigationalHazard1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctNavigationHazard, piPending);
end;

procedure TfrmTacticalDisplay.mniNeutral1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piNeutral, -1);
end;

procedure TfrmTacticalDisplay.mniOilRig1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctOilRig, piPending );
end;

procedure TfrmTacticalDisplay.mniOther1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtOther);
end;

procedure TfrmTacticalDisplay.mniPatrolCraftPTPTG1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtPatrolCraft);
end;

procedure TfrmTacticalDisplay.mniPending1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piPending, -1);
end;

procedure TfrmTacticalDisplay.mniRangeRing1Click(Sender: TObject);
begin
  ToolBtnRangeRingsOnHookClick(Self);
end;

procedure TfrmTacticalDisplay.mniRemove1Click(Sender: TObject);
begin
  ToolBtnRemovePlatformOrTrackClick(self);
end;

procedure TfrmTacticalDisplay.mniRemove2Click(Sender: TObject);
begin
  ToolBtnRemoveFromTrackTableClick(Self);
end;

procedure TfrmTacticalDisplay.mniRiser1Click(Sender: TObject);
begin
  // LaunchNRPSpecialPlatform(vhdSurface, pctRiser);
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctRiser, piPending);
end;

procedure TfrmTacticalDisplay.mniSearchCentre1Click(Sender: TObject);
begin
  // LaunchNRPSpecialPlatform(vhdSurface, pctSearchCenter);
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctSearchCenter, piPending);
end;

procedure TfrmTacticalDisplay.mniSinker1Click(Sender: TObject);
begin
  // LaunchNRPSpecialPlatform(vhdSurface, pctSinker);
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctSinker, piPending);
end;

procedure TfrmTacticalDisplay.mniSplit1Click(Sender: TObject);
begin
  ToolBtnSplitClick(Self);
end;

procedure TfrmTacticalDisplay.mniStation1Click(Sender: TObject);
begin
  // LaunchNRPSpecialPlatform(vhdGeneral, pctStation);
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctStation, piPending);
end;

procedure TfrmTacticalDisplay.mniSubsurface1Click(Sender: TObject);
begin
  // LaunchNRPlatform(vhdSubsurface);
  LaunchNRPPlatformObserve(vhdSubsurface, nrpPoint, '', piPending);
end;

procedure TfrmTacticalDisplay.mniSubsurface2Click(Sender: TObject);
begin
  // LaunchNRPBearingPlatform(vhdSubsurface);
  LaunchNRPPlatformObserve(vhdSubsurface, nrpBearing, '', piPending);
end;

procedure TfrmTacticalDisplay.mniSubsurface3Click(Sender: TObject);
begin
  // LaunchNRPlatform(vhdSubsurface);
  LaunchNRPPlatformObserve(vhdSubsurface, nrpArea, '', piPending);
end;

procedure TfrmTacticalDisplay.mniSubsurface4Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, vhdSubsurface, -1, -1);
end;

procedure TfrmTacticalDisplay.LaunchNRPPlatformObserve(domain, typePoint: Integer; symbolstr: string; id: Integer);
var
  rSend: TRecCmd_LaunchNonRP;
  dbX, dbY: double;
  MySettings: TFormatSettings;
begin
  simMgrClient.Converter.ConvertToMap(newPoint.x, newPoint.y, dbX, dbY);
  MySettings := GetFormatSettings;

  with rSend do
  begin
    NRPPlatformID := 0;
    NewPlatformID := 0;

    if simMgrClient.ISInstructor then
      NRPGroupID := 0
    else
      NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;

    TrackIdent := '-';
    TrackDomain := domain;
    Identity := id;
    InstanceName := 'Unknown';
    PointType := typePoint;
    pX := dbX;
    pY := dbY;
    pZ := 0;
    symbol := symbolstr;
    LastUpdateTime := DateTimeToStr(SimManager.GameTIME, MySettings);
  end;

  simMgrClient.netSend_CmdLaunchNonRP(rSend);
end;

procedure TfrmTacticalDisplay.clearPopRightClick;
begin
  //mniStandardPoint1.Enabled := false;
  mniStandardPoint1.Visible := false;

  mniNewStandardBearing1.Visible := false;
  //mniNewStandardBearing1.Enabled := false;

  //mniNewStandard1.Enabled := false;
  mniNewStandard1.Visible := false;

  //mniNewSpecialPointGeneral1.Enabled := false;
  //mniNewSpecialPointAir1.Enabled := false;
  //mniNewSpecialPointASW1.Enabled := false;

  mniNewSpecialPointGeneral1.Visible := false;
  mniNewSpecialPointAir1.Visible := false;
  mniNewSpecialPointASW1.Visible := false;

  mniConvertRTtoNRT1.Visible := false;
  //mniConvertRTtoNRT1.Enabled := false;

  mniCharacteristic1.Visible := false;
  //mniCharacteristic1.Enabled := false;

  //mniMerge1.Enabled := false;
  mniMerge1.Visible := False;

  mniSplit1.Visible := false;
  //mniSplit1.Enabled := false;

  //mniDatalink1.Enabled := false;
  mniDatalink1.Visible := false;

  mniTrackNumber1.Visible := false;
  //mniTrackNumber1.Enabled := false;

  mniTrackHistory1.Visible := false;
  //mniTrackHistory1.Enabled := false;

  //mniIntiate1.Enabled := false;
  mniIntiate1.Visible := false;
  //mniBreakAllFireControl1.Enabled := false;
  mniBreakAllFireControl1.Visible := false;
  //mniClearRing1.Enabled := false;
  mniClearRing1.Visible := false;
  //mniRemove1.Enabled := false;
  mniRemove1.Visible := false;
  //mniCentre1.Enabled := false;
  mniCentre1.Visible := false;
  //mniRangeRing1.Enabled := false;
  mniRangeRing1.Visible := false;
  //mniTrackTable1.Enabled := false;
  mniTrackTable1.Visible := false;
  //mniAnchor1.Enabled := false;
  mniAnchor1.Visible := false;

  mniSonobuoys.Visible := False;
  mniTorpedo.Visible := False;

  Platform1.Visible := False;

  N1.Visible := false;
  N2.Visible := false;
  N3.Visible := false;
  N4.Visible := false;
  N6.Visible := false;
  N7.Visible := false;
  N8.Visible := false;
  N9.Visible := false;
  N10.Visible := false;
end;

procedure TfrmTacticalDisplay.mniSurface1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpPoint, '', piPending);
end;

procedure TfrmTacticalDisplay.mniSurface2Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpBearing, '', piPending);
end;

procedure TfrmTacticalDisplay.mniSurface3Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpArea, '', piPending);
end;

procedure TfrmTacticalDisplay.mniSurface4Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, vhdSurface, -1, -1);
end;

procedure TfrmTacticalDisplay.mniSuspect1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piSuspect, -1);
end;

procedure TfrmTacticalDisplay.mniTorpedoCourseClick(Sender: TObject);
var
  aObject : TSimObject;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if not Assigned(fChangeTorpedoCourse) then
    fChangeTorpedoCourse := TfChangeTorpedoCourse.Create(self);

  aObject := focusedTrack;
  if aObject is TT3PlatformInstance then
  begin
    fChangeTorpedoCourse.lbltrack.Caption := TT3PlatformInstance(aObject).Track_ID;
    fChangeTorpedoCourse.lblCourse.Caption := FormatCourse(TT3PlatformInstance(aObject).Course);
    fChangeTorpedoCourse.lblInstanceIndex.Caption := IntToStr(TT3PlatformInstance(aObject).InstanceIndex);
    fChangeTorpedoCourse.EdtNewCourse.Text := '';
  end;

  fChangeTorpedoCourse.Show;
end;

procedure TfrmTacticalDisplay.mniTorpedoDepthClick(Sender: TObject);
var
  aObject : TSimObject;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if not Assigned(fChangeTorpedoDepth) then
    fChangeTorpedoDepth := TfChangeTorpedoDepth.Create(self);

  aObject := focusedTrack;
  if aObject is TT3PlatformInstance then
  begin
    fChangeTorpedoDepth.lbltrack.Caption := TT3PlatformInstance(aObject).Track_ID;
    fChangeTorpedoDepth.lblDepth.Caption := FormatAltitude(TT3PlatformInstance(aObject).Altitude);
    fChangeTorpedoDepth.lblInstanceIndex.Caption := IntToStr(TT3PlatformInstance(aObject).InstanceIndex);
    fChangeTorpedoDepth.EdtNewDepth.Text := '';
  end;

  fChangeTorpedoDepth.Show;
end;

procedure TfrmTacticalDisplay.mniTracticalGridOriginal1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdGeneral, nrpSpecial, pctTacticalGridorigin, piPending);
end;

procedure TfrmTacticalDisplay.mniUnknowns1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, piUnknown, -1);
end;

procedure TfrmTacticalDisplay.mniUtilityVessel1Click(Sender: TObject);
begin
  UpdatePlatformProperties(focusedTrack, -1, -1, vhtUtilityVess);
end;

procedure TfrmTacticalDisplay.mniWeaponEntryPoint1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctWeaponEntryPoint, piPending);
end;

procedure TfrmTacticalDisplay.mniWreck1Click(Sender: TObject);
begin
  LaunchNRPPlatformObserve(vhdSurface, nrpSpecial, pctWreck, piPending);
end;

procedure TfrmTacticalDisplay.Next1Click(Sender: TObject);
var
  index: Integer;
  aObject: TSimObject;
begin
  if cbAssumeControl.Items.Count <= 0 then
    exit;

  index := cbAssumeControl.ItemIndex;
  if index = cbAssumeControl.Items.Count - 1 then
    index := 0
  else
    index := index + 1;

  cbAssumeControl.ItemIndex := index;
  aObject := cbAssumeControl.Items.Objects[index] as TSimObject;

  if aObject <> nil then
  begin
    if aObject is TT3Unit then
      TT3Unit(aObject).Selected := true
    else if aObject is TT3DetectedTrack then
      TT3DetectedTrack(aObject).Selected := true;

    fmMapWindow1.Map.Repaint;
  end;
end;

procedure TfrmTacticalDisplay.AddTrackPlatform(Sender: TObject);
var
  sTrackNum, sDomain, sIdent: string;
  li: TListItem;
  pi: TT3PlatformInstance;
  det: TT3DetectedTrack;
begin
  pi := nil;

  if Sender is TT3DetectedTrack then
  begin
    det := Sender as TT3DetectedTrack;

    if Assigned(det.TrackObject) then
    begin
      if det.TrackObject is TT3DeviceUnit then
        pi := det.TrackObject.Parent as TT3PlatformInstance
      else
        pi := det.TrackObject as TT3PlatformInstance;
    end;

    sTrackNum := FormatTrackNumber(det.trackNumber);
    sDomain := getDomain(det.TrackDomain);
    sIdent  := getIdentStr(det.TrackIdent);
  end
  else if (Sender is TT3PlatformInstance) then
  begin
    pi := Sender as TT3PlatformInstance;

    sTrackNum := pi.TrackLabel;
    sDomain   := getDomain(TVehicle_Definition(TT3Vehicle(Sender).UnitDefinition)
                .FData.Platform_Domain);
    sIdent := getIdentStr(pi.Force_Designation);
  end;

  if pi <> nil then
  begin
    li := FindTrackListByMember(sTrackNum);
    if li = nil then
    begin
      li := lvTrackTable.Items.Add;

      li.Caption := sDomain;
      li.SubItems.Add(sTrackNum);
      li.SubItems.Add(sIdent);
      li.SubItems.Add(FormatCourse(pi.Course));
      li.SubItems.Add(FormatSpeed(pi.Speed));

      if pi.Altitude >= 0 then
      begin
        li.SubItems.Add(FormatAltitude(pi.Altitude));
        li.SubItems.Add(' ');
      end
      else
      begin
        li.SubItems.Add(' ');
        li.SubItems.Add(FormatAltitude(pi.Altitude));
      end;

      li.Data := Sender;
    end
    else
    begin
      // sudah ada.
      li.Caption := sDomain;
      li.SubItems[0] := sTrackNum;
      li.SubItems[1] := sIdent;
      li.SubItems[2] := FormatCourse(pi.Course);
      li.SubItems[3] := FormatSpeed(pi.Speed);

      if pi.Altitude >= 0 then
      begin
        li.SubItems[4] := FormatAltitude(pi.Altitude);
        li.SubItems[5] := ' ';
      end
      else
      begin
        li.SubItems[4] := ' ';
        li.SubItems[5] := FormatAltitude(pi.Altitude);
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.Anchor1Click(Sender: TObject);
begin
  ToolBtnAnchorCursorClick(self);
end;

procedure TfrmTacticalDisplay.Automatic1Click(Sender: TObject);
var
  rec : TRecCmd_Platform_CHANGE_TRACKNUMBER;
begin
  if focusedTrack = nil then   //mk
    exit;

  rec.PlatfomID := TT3DetectedTrack(focusedTrack).TrackObject.InstanceIndex;
  rec.TrackID   := TT3DetectedTrack(focusedTrack).TrackNumber;
  rec.newTrackNumber := 0;
    //ShowMessage('new track ' + IntToStr(rec.newTrackNumber) + 'text' + edtNewTrackNumber.Text);
  simMgrClient.netSend_CmdTrack_CHANGE_TRACKNUMBER(rec);
end;

procedure TfrmTacticalDisplay.UpdateTabHooked(pi: TT3PlatformInstance);
var
  SelectVehicle, ve : TT3Vehicle;
begin
  if not Assigned(focusedTrack) then
    Exit;

  if focusedTrack is TT3Vehicle then
  begin
    SelectVehicle := TT3Vehicle(focusedTrack);

    if pi is TT3Vehicle then
    begin
      ve := TT3Vehicle(pi);

      if SelectVehicle = ve then
      begin
        lbDamage.Caption := IntToStr(100 - Round(ve.HealthPercent)) + '%';
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.UpdateTrackListData;
var
  i: Integer;
  li: TListItem;
  sTrackNum, sDomain, sIdent: string;
  pi: TT3PlatformInstance;
  det: TT3DetectedTrack;
  obj: TObject;
begin
  for i := lvTrackTable.Items.Count - 1 downto 0 do
  begin
    pi := nil;
    li := lvTrackTable.Items[i];
    obj := li.Data;

    if obj = nil then
    begin
      lvTrackTable.items.Delete(i);
      Continue;
    end;

    if obj is TT3DetectedTrack then
    begin
      det := obj as TT3DetectedTrack;
      sTrackNum := FormatTrackNumber(det.trackNumber);
      sDomain := getDomain(det.TrackDomain);
      sIdent := getIdentStr(det.TrackIdent);

      if Assigned(det.TrackObject) then
      begin
        if det.TrackObject is TT3DeviceUnit then
          pi := det.TrackObject.Parent as TT3PlatformInstance
        else
          pi := det.TrackObject as TT3PlatformInstance;
      end;
    end
    else if obj is TT3PlatformInstance then
    begin
      pi := obj as TT3PlatformInstance;

      sTrackNum:= pi.TrackLabel;
      sDomain  := getDomain(TVehicle_Definition(TT3Vehicle(pi).UnitDefinition)
                 .FData.Platform_Domain);
      sIdent   := getIdentStr(pi.TrackIdent);
    end;

    if Assigned(pi) then
    begin
      li.Caption := sDomain;

      li.SubItems[0] := sTrackNum;
      li.SubItems[1] := sIdent;
      li.SubItems[2] := FormatCourse(pi.Course);
      li.SubItems[3] := FormatSpeed(pi.Speed);

      if pi.Altitude >= 0 then
      begin
        li.SubItems[4] := FormatAltitude(pi.Altitude);
        li.SubItems[5] := ' ';
      end
      else
      begin
        li.SubItems[4] := ' ';
        li.SubItems[5] := FormatAltitude(pi.Altitude);
      end;
    end;
  end;
end;

procedure TfrmTacticalDisplay.RefreshTracks;
var
  i : integer;
  obj : TObject;
begin
  try
    with TrackLists.LockList do begin
      Clear;

      if simMgrClient.ISInstructor then
        for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do begin
          obj := simMgrClient.SimPlatforms.getObject(i);
          Add(obj);
        end
      else begin
        for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do begin
          obj := simMgrClient.SimPlatforms.getObject(i);
          if TT3PlatformInstance(obj).UnitGroup then
            Add(obj);
        end;
        for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do begin
          obj := simMgrClient.SimDetectedTrackList.getObject(i);
          Add(obj);
        end
      end;
    end;
  finally
    TrackLists.UnlockList
  end;

end;

procedure TfrmTacticalDisplay.Refresh_AssumeControl;
var
  i,j: Integer;
  aObject: TSimObject;
  name: string;
  index: Integer;
begin
  cbAssumeControl.Items.Clear;
  cbAssumeControl.Clear;

  index := 0;
  RefreshTracks;

  for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
  begin
    aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
    if not Assigned(aObject) then
      continue;

    // untuk menampilkan hanya satu force saja
//    if simMgrClient.MyForceDesignation <> -1 then
//      if TT3PlatformInstance(aObject).Force_Designation
//        <> simMgrClient.MyForceDesignation then
//          continue;

    if not(TT3PlatformInstance(aObject).UnitGroup) then
       Continue;

    if (aObject.FreeMe) then
       Continue;

    if aObject is TT3Vehicle then      //mk
    begin
      name := TT3PlatformInstance(aObject).InstanceName;

      cbAssumeControl.Items.AddObject(name, aObject);

      if (simMgrClient.ControlledPlatform <> nil) and
        (simMgrClient.ControlledPlatform = aObject) then
      begin
        //cari index nya di cbAssumeControl
        for j := 0 to cbAssumeControl.Items.Count - 1 do
        begin
          if TT3PlatformInstance(cbAssumeControl.Items.Objects[j])
            = simMgrClient.ControlledPlatform then
            index := j;
        end;
      end;
    end;
  end;

  for i := 0 to simMgrClient.SimWeapons.itemCount - 1 do
  begin
    aObject := TT3PlatformInstance(simMgrClient.SimWeapons.getObject(i));
    if not Assigned(aObject) then
      continue;

    // untuk menampilkan hanya satu force saja
    if simMgrClient.MyForceDesignation <> -1 then
      if TT3PlatformInstance(aObject).Force_Designation
        <> simMgrClient.MyForceDesignation then
          continue;

    name := TT3PlatformInstance(aObject).InstanceName;

    if aObject is TT3Vehicle then      //mk
    begin
      if {(not Assigned(aObject.Parent)) and}
        (TT3PlatformInstance(aObject).UnitGroup) and not(aObject.FreeMe) then
        cbAssumeControl.Items.AddObject(name, aObject);
    end;
  end;

  {for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do      //mk
  begin
    aObject := TT3DetectedTrack(simMgrClient.SimDetectedTrackList.getObject(i));
    if not Assigned(aObject) then continue;
    name := 'T' + IntToStr(TT3DetectedTrack(aObject).trackNumber);
    cbAssumeControl.Items.AddObject(name, aObject);
  end;}

  if cbAssumeControl.Items.Count > 0 then
    cbAssumeControl.ItemIndex := index;
end;

procedure TfrmTacticalDisplay.Remove2Click(Sender: TObject);
//var
//  rec : TRecCmd_SelectPlatformToRemove;
//  buttonSelected : Integer;
//  i : Integer;
//  dev: TSimObject;
//  objPlatform : TSimObject;
begin
  ToolBtnRemovePlatformOrTrackClick(self);

  {if Assigned(focusedTrack) then
  begin
    if focusedTrack is TT3PlatformInstance then
      buttonSelected := MessageDlg('Do you really want to remove platform ' + TT3PlatformInstance(focusedTrack).InstanceName, mtConfirmation,
                              [mbYes,mbNo], 0)
    else if focusedTrack is TT3DetectedTrack then
      buttonSelected := MessageDlg('Do you really want to remove platform ' + IntToStr(TT3DetectedTrack(focusedTrack).TrackNumber), mtConfirmation,
                              [mbYes,mbNo], 0);

    if buttonSelected = mrNo then
      Exit;

    rec.SessionID := simMgrClient.SessionID;
    if focusedTrack is TT3PlatformInstance then
    begin
      rec.PlatfomID := TT3PlatformInstance(focusedTrack).InstanceIndex;

      if simMgrClient.ISInstructor then
      begin
		    for i := 0 to simMgrClient.SimDevices.itemCount - 1 do     //mk
        begin
          dev := simMgrClient.SimDevices.getObject(i);
          if (dev is TT3Radar) then
          begin
            if (TT3Radar(dev).RadarDefinition.FDef.Num_FCR_Channels > 0) then
            begin
              objPlatform := simMgrClient.FindT3PlatformByID(rec.PlatfomID);
              objPlatform.IsAssigned := false;

              if TT3Radar(dev).AssignedTrack.Count > 0 then
              begin
                TT3Radar(dev).AssignedTrack.Remove(focusedTrack);
                frmTacticalDisplay.fmFireControl1.SetControlledObject(TT3Radar(dev).Parent);
                frmTacticalDisplay.fmFireControl1.RefreshAssignTrack(dev as TT3Radar);
              end;
            end;
          end;
        end;

        simMgrClient.netSend_CmdRemovePlatfromByOperator(rec);
      end
      else
      begin
        if focusedTrack is TT3NonRealVehicle then
        begin
          simMgrClient.netSend_CmdRemovePlatfromByOperator(rec);
        end;
      end;
    end;

    frmTacticalDisplay.Refresh_AssumeControl;
  end;  }
end;

//procedure TfrmTacticalDisplay.RemoveFromTargetedRefTrack(Sender: TObject);
//var
//  i : integer;
//  aObj, tgt : TSimObject;
//begin

//  // weapon
//  for I := 0 to simMgrClient.SimWeapons.itemCount - 1 do begin
//    aObj := simMgrClient.SimWeapons.getObject(i);
//    if not Assigned(aObj) then continue;
//    if (aObj is TT3Weapon) then begin
//      tgt := TT3Weapon(aObj).TargetObject;
//      if Assigned(tgt) and (tgt = Sender) then begin
//        TT3Weapon(aObj).TargetObject := nil;
//      end;
//    end;
//  end;

//  // weapon
//  for I := 0 to simMgrClient.SimDevices.itemCount - 1 do begin
//    aObj := simMgrClient.SimDevices.getObject(i);
//    if not Assigned(aObj) then continue;
//    if (aObj is TT3Weapon) then begin
//      tgt := TT3Weapon(aObj).TargetObject;
//      if Assigned(tgt) and (tgt = Sender) then begin
//        TT3Weapon(aObj).TargetObject := nil;
//      end;
//    end;
//  end;

//  { //comment by Aldy -> error-nya inaccessible value
//  for I := 0 to simMgrClient.SimPlatforms.itemCount - 1 do begin
//    aObj := simMgrClient.SimPlatforms.getObject(i);
//    if Assigned(aObj) then
//      if (aObj is TT3Weapon) then begin
//        if Assigned(TT3Weapon(aObj).TargetObject) then
//        begin
//          tgt := TT3Weapon(aObj).TargetObject;
//          if Assigned(tgt) and (tgt = Sender) then begin
//            TT3Weapon(aObj).TargetObject := nil;
//          end;
//        end;
//      end;
//  end;
//  }
//end;

procedure TfrmTacticalDisplay.RemoveFromTrackList(Sender: TObject);
var
  s : string;
  li : TListItem;
  det : TT3DetectedTrack;
  pi : TT3PlatformInstance;
begin
  if Sender is TT3DetectedTrack then
  begin
    det := Sender as TT3DetectedTrack;
    s := FormatTrackNumber(det.trackNumber);
  end
  else
  if (Sender is TT3PlatformInstance) then
  begin
    pi := Sender as TT3PlatformInstance;
    s := pi.TrackLabel;
  end;

  li := FindTrackListByMember(s);
  if li <> nil then
    li.Delete;
end;

procedure TfrmTacticalDisplay.RemoveListandForm(ctrlObj: TObject);
begin
  if not(Assigned(ctrlObj)) then
    Exit;

  fmOwnShip1.RemoveListOwnShip(ctrlObj);
  fmPlatformGuidance1.RemoveListGuidance(ctrlObj);
  fmSensor1.RemoveListSensor(ctrlObj);
  fmWeapon1.RemoveListWeapon(ctrlObj);
  fmFireControl1.RemoveListFC(ctrlObj);
  fmCounterMeasure1.RemoveListCounterMeasure(ctrlObj);
  fmEMCON1.RemoveListEMCON(ctrlObj);
end;

procedure TfrmTacticalDisplay.DisplayGameTime(const gSpeed: single;
    const gTime: TDateTime);
var
  i: Integer;
begin
  if abs(gSpeed) < 0.000001 then
  begin
    StatusBar1.Panels[9].Text := 'FROZEN';
    StatusBar1.Repaint;
  end
  else
  begin
    if gSpeed < 1 then
    begin
      i := Round(1.0 / gSpeed);
      StatusBar1.Panels[9].Text := '1/' + IntToStr(i) + ' X';
    end
    else
      StatusBar1.Panels[9].Text := IntToStr(Round(gSpeed)) + ' X';

  end;

  StatusBar1.Panels[10].Text := FormatDateTime('ddhhnnss', gTime)
    + 'Z' + FormatDateTime('mmmyyyy', gTime);

  if simMgrClient.ISInstructor then
    StatusBar1.Panels[1].Text := 'Entities = ' + IntToStr(simMgrClient.SimPlatforms.itemCount) ;

  StatusBar1.Repaint;

end;


end.
