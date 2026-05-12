unit ufToteDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, ExtCtrls, Grids, Buttons, uDBAssetObject,
  XMLIntf, msxmldom, XMLDoc, urotWheel, ImgList,commctrl

  , uNetUDPnode, tttData, uGameData_TTT,
  newClassASTT, uNewMessage, uLibSettingTTT, uCommTTT, Mask,
  uT3Listener, uT3DataLink, uT3Missile, uT3Vehicle, uT3Unit
  ,uT3MissileDetail, uT3DetectedTrack, System.ImageList, acPNG,
  Vcl.Imaging.pngimage;

type
  TStCombobox = class (TComboBox)
  public
    ListItem: TListItem;
  end;


  TGridCracker = Class( TStringgrid );

   TRec_Time_Row = class
    time : TTime;
    row  : Integer;
    isAir: boolean;

    {nando for DTOT}
    WeaponName    : string;
    WeaponIndex   : Integer;
    OwnShipIndex  : Integer;
    TargetIndex   : Integer;
    isLaunched    : Boolean;
    launcherIndex : Integer;
  end;

  TfrmToteDisplay = class(TForm)
    MainMenu1: TMainMenu;
    View1: TMenuItem;
    Hook1: TMenuItem;
    rack1: TMenuItem;
    ools1: TMenuItem;
    Help1: TMenuItem;
    FullScreen1: TMenuItem;
    Scale1: TMenuItem;
    Centre1: TMenuItem;
    RangeRings1: TMenuItem;
    Filters1: TMenuItem;
    Overrides1: TMenuItem;
    History1: TMenuItem;
    Increase1: TMenuItem;
    Decrease1: TMenuItem;
    Zoom1: TMenuItem;
    Settings1: TMenuItem;
    OnHookedTrack1: TMenuItem;
    Settings2: TMenuItem;
    OnHookedTrack2: TMenuItem;
    OnGameCentre1: TMenuItem;
    Pan1: TMenuItem;
    Next1: TMenuItem;
    Previous1: TMenuItem;
    rackTable1: TMenuItem;
    AssumeControl1: TMenuItem;
    Add1: TMenuItem;
    Remove1: TMenuItem;
    HookedTrack1: TMenuItem;
    CommandPlatform1: TMenuItem;
    Characteristics1: TMenuItem;
    Domain1: TMenuItem;
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
    Contents1: TMenuItem;
    About1: TMenuItem;
    A1: TMenuItem;
    Surface1: TMenuItem;
    Subsurface1: TMenuItem;
    Land1: TMenuItem;
    General1: TMenuItem;
    StatusBar1: TStatusBar;
    Display1: TMenuItem;
    Tactical1: TMenuItem;
    Tote1: TMenuItem;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanelStatusOp: TCategoryPanel;
    CategoryPanelWeaponOp: TCategoryPanel;
    CategoryPanelCommOp: TCategoryPanel;
    CategoryPanelManagementOp: TCategoryPanel;
    btnPlatformStatus: TSpeedButton;
    btnEnviroStatus: TSpeedButton;
    btnWeaponEngagement: TSpeedButton;
    btnPlatformRemoval: TSpeedButton;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label88: TLabel;
    btnSurfaceToAir: TSpeedButton;
    Label122: TLabel;
    btnSurfaceToSurface: TSpeedButton;
    Label123: TLabel;
    btnCommInterfecene: TSpeedButton;
    Label124: TLabel;
    btnCommMapping: TSpeedButton;
    Label125: TLabel;
    btnCommDefinition: TSpeedButton;
    Label126: TLabel;
    btnMessageHandling: TSpeedButton;
    btnDatalinkControl: TSpeedButton;
    Label127: TLabel;
    btnAudioRecord: TSpeedButton;
    Label128: TLabel;
    Label153: TLabel;
    btnCubicleGroups: TSpeedButton;
    Label1: TLabel;
    btnEnviroControl: TSpeedButton;
    Label155: TLabel;
    btnSensorOverride: TSpeedButton;
    Label156: TLabel;
    btnSetting: TSpeedButton;
    gbAudioRecordTracks: TPanel;
    Panel14: TPanel;
    Panel40: TPanel;
    Panel65: TPanel;
    Label150: TLabel;
    Panel66: TPanel;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    Panel67: TPanel;
    TabSheet7: TTabSheet;
    Panel68: TPanel;
    sgAvailableInChannel: TStringGrid;
    Panel41: TPanel;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Panel42: TPanel;
    Panel69: TPanel;
    Label149: TLabel;
    Edit7: TEdit;
    Panel70: TPanel;
    Label151: TLabel;
    Panel71: TPanel;
    Panel72: TPanel;
    Label152: TLabel;
    Panel73: TPanel;
    sgInChannel: TStringGrid;
    gbCommunicationsChannelDefinition: TPanel;
    Panel9: TPanel;
    Panel24: TPanel;
    sgCommChannelDef: TStringGrid;
    gbCommunicationsChannelMapping: TPanel;
    Panel10: TPanel;
    Panel35: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Label129: TLabel;
    SpeedButton13: TSpeedButton;
    edtGroupName: TEdit;
    Panel59: TPanel;
    Label130: TLabel;
    Panel36: TPanel;
    Button25: TButton;
    Button26: TButton;
    Panel37: TPanel;
    Panel60: TPanel;
    Label131: TLabel;
    Panel62: TPanel;
    gbCommunicationsInterference: TPanel;
    Panel11: TPanel;
    Panel32: TPanel;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Panel53: TPanel;
    sgComInInjection: TStringGrid;
    TabSheet5: TTabSheet;
    Label133: TLabel;
    Bevel11: TBevel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    tbNoise: TTrackBar;
    tbJamming: TTrackBar;
    tbMHStones: TTrackBar;
    gbCubicleGroups: TPanel;
    Panel15: TPanel;
    Panel38: TPanel;
    Panel64: TPanel;
    Panel39: TPanel;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    Panel63: TPanel;
    tvCubicleGroups: TTreeView;
    TabSheet9: TTabSheet;
    Label157: TLabel;
    sgResponsibilityControllers: TStringGrid;
    Button36: TButton;
    Button37: TButton;
    gbDatalinkControl: TPanel;
    Panel12: TPanel;
    Panel29: TPanel;
    Panel93: TPanel;
    Label141: TLabel;
    Label144: TLabel;
    Label148: TLabel;
    edtDatalink: TEdit;
    edtDLForce: TEdit;
    edtDLBand: TEdit;
    Panel94: TPanel;
    Label142: TLabel;
    Panel95: TPanel;
    Panel30: TPanel;
    Button27: TButton;
    Button28: TButton;
    Panel31: TPanel;
    Panel96: TPanel;
    Button31: TButton;
    Panel97: TPanel;
    Label143: TLabel;
    gbEnvironmentControl: TPanel;
    Panel16: TPanel;
    Panel22: TPanel;
    Panel54: TPanel;
    Panel23: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Button40: TButton;
    Button41: TButton;
    Panel92: TPanel;
    pcEnvironmentControl: TPageControl;
    tsAboveWater: TTabSheet;
    GroupBox6: TGroupBox;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    lblEnviCtrlSunrise: TLabel;
    Label173: TLabel;
    lblEnviCtrlSunset: TLabel;
    Label175: TLabel;
    lblEnviCtrlPeriodTwilight: TLabel;
    edtDayVis: TEdit;
    edtNightVis: TEdit;
    trbDaytimeVisual: TTrackBar;
    trbNighttimeVisual: TTrackBar;
    trbDaytimeInfra: TTrackBar;
    trbNighttimeInfra: TTrackBar;
    edtNightInfra: TEdit;
    edtDayInfra: TEdit;
    GroupBox7: TGroupBox;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    edtAttenRainRate: TEdit;
    edtAttenCloud: TEdit;
    trbAttenRainRate: TTrackBar;
    trbAttenCloud: TTrackBar;
    edtAirTemp: TEdit;
    edtBarometricPressure: TEdit;
    edtCloudBaseHeight: TEdit;
    GroupBox8: TGroupBox;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label192: TLabel;
    edtAtmRefract: TEdit;
    trbAtmRefract: TTrackBar;
    GroupBox5: TGroupBox;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    edtWindDir: TEdit;
    edtWindSpeed: TEdit;
    tsSurface: TTabSheet;
    Label194: TLabel;
    Label195: TLabel;
    Label188: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    GroupBox11: TGroupBox;
    Label158: TLabel;
    Label191: TLabel;
    Label193: TLabel;
    Label196: TLabel;
    edtOceanCurrentDirection: TEdit;
    edtOceanCurrentSpeed: TEdit;
    cbxShippingRate: TComboBox;
    edtDepthTermalLayer: TEdit;
    GroupBox12: TGroupBox;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    edtSpeedOfSoundSurface: TEdit;
    edtSpeedOfSoundlayer: TEdit;
    edtSpeedOfSoundBottom: TEdit;
    GroupBox2: TGroupBox;
    Label203: TLabel;
    SpeedButton25: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    GroupBox13: TGroupBox;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    edtSurfaceDuctLow: TEdit;
    edtSurfaceDuctUp: TEdit;
    GroupBox14: TGroupBox;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    edtSubSurfaceDuctLow: TEdit;
    edtSubSurfaceDuctUp: TEdit;
    trbSeaState: TTrackBar;
    edtSeaState: TEdit;
    edtBottomLost: TEdit;
    trbBottomLost: TTrackBar;
    edtShadowZone: TEdit;
    edtAvgOceanDepth: TEdit;
    edtSurfaceTemperatur: TEdit;
    cbxConvergenceZone: TCheckBox;
    tsBoundary: TTabSheet;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    gbEnvironmentStatus: TPanel;
    Panel3: TPanel;
    Panel21: TPanel;
    Label81: TLabel;
    Bevel1: TBevel;
    Label82: TLabel;
    Bevel2: TBevel;
    Label83: TLabel;
    Label84: TLabel;
    Bevel3: TBevel;
    Label85: TLabel;
    lblSpeedWIndTrue: TLabel;
    lblDirectionWindTrue: TLabel;
    lblWindRelativeDirection: TLabel;
    Label87: TLabel;
    lblWindRelativeSpeed: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    lblVisibilityFactorsElectroOptical: TLabel;
    Label94: TLabel;
    lblAttenuationFactorsCloud: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    lblVisibilityactorsTime: TLabel;
    Label99: TLabel;
    lblAttenuationFactorsRain: TLabel;
    Label101: TLabel;
    Bevel4: TBevel;
    Label102: TLabel;
    Bevel5: TBevel;
    Label103: TLabel;
    lblVisibilityFactorsnfrared: TLabel;
    Label105: TLabel;
    lblOtherBarometric: TLabel;
    Label107: TLabel;
    lblOtherAirTemp: TLabel;
    Label109: TLabel;
    Bevel6: TBevel;
    Label111: TLabel;
    Label86: TLabel;
    Bevel7: TBevel;
    lblSoundVelocityAverageBottom: TLabel;
    lblSoundVelocityLayer: TLabel;
    lblSoundVelocityProfile: TLabel;
    Label98: TLabel;
    Label100: TLabel;
    Label104: TLabel;
    Label106: TLabel;
    lblOceanCurrentDirection: TLabel;
    Label112: TLabel;
    lblOceanCurrentSpeed: TLabel;
    Label114: TLabel;
    Bevel8: TBevel;
    Label115: TLabel;
    Bevel9: TBevel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    lblSurfaceTemp: TLabel;
    Label95: TLabel;
    Label108: TLabel;
    lblSeaState: TLabel;
    Label120: TLabel;
    Bevel10: TBevel;
    Label110: TLabel;
    Label121: TLabel;
    gbMessageHandlingSystem: TPanel;
    Panel8: TPanel;
    Panel25: TPanel;
    pcReceived: TPageControl;
    TabSheet1: TTabSheet;
    Panel74: TPanel;
    TabSheet2: TTabSheet;
    Panel78: TPanel;
    TabSheet3: TTabSheet;
    Panel82: TPanel;
    gbPlatformRemovalSummary: TPanel;
    Panel6: TPanel;
    Panel28: TPanel;
    Panel90: TPanel;
    gbPlatformStatus: TPanel;
    Panel2: TPanel;
    pnlPlatformLeft: TPanel;
    tvEmbarkedPlatforms: TTreeView;
    pnlPlatforms: TPanel;
    btSelectHookedPlatform: TButton;
    btHookSelectedPlatform: TButton;
    pnlPlatformRight: TPanel;
    gbSensorOverride: TPanel;
    Panel17: TPanel;
    Panel33: TPanel;
    Panel18: TPanel;
    Label224: TLabel;
    Label225: TLabel;
    SpeedButton28: TSpeedButton;
    Label226: TLabel;
    edtDetectionStatus: TEdit;
    cbInhibitESMbearing: TCheckBox;
    cbInhibitSonarBearing: TCheckBox;
    btnInhibitAllESM: TButton;
    btnInhibitSonar: TButton;
    btnSelectHookedPlatform: TButton;
    btnSelectControlledPlatform: TButton;
    gbSurfaceToAir: TPanel;
    Panel4: TPanel;
    Panel27: TPanel;
    sgSurfacetoAir: TStringGrid;
    Panel89: TPanel;
    btAbort: TButton;
    gbSurfaceToSurface: TPanel;
    Panel7: TPanel;
    Panel26: TPanel;
    sgSurfacetoSurface: TStringGrid;
    Panel87: TPanel;
    btnAbortSurfaceToSurface: TButton;
    gbWeaponEngagementsSUmmary: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    tvWeapons: TTreeView;
    pnlPlatSensor: TPanel;
    pnlPlatWeapon: TPanel;
    Label77: TLabel;
    Label76: TLabel;
    pnlPlatCounterMeasure: TPanel;
    Label78: TLabel;
    pnlPlatSystemState: TPanel;
    Label80: TLabel;
    pnlPlatEmbarked: TPanel;
    Label75: TLabel;
    Panel61: TPanel;
    Label132: TLabel;
    SpeedButton14: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton29: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tvCountermeasures: TTreeView;
    lvSensors: TListView;
    pnlTooop: TPanel;
    pnlGroupBox: TPanel;
    lvSystemState: TListView;
    lvPlatforms: TListView;
    Panel13: TPanel;
    Label79: TLabel;
    lvWeaponEngagement: TListView;
    lvPlatformRemovalSum: TListView;
    lvEnviroArea: TListView;
    lvCubicle: TListView;
    pnWheelAbove: TPanel;
    pnlWheelSurface: TPanel;
    pmSensor: TPopupMenu;
    damage1: TMenuItem;
    fixed1: TMenuItem;
    gbSettings: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    tvSettings: TTreeView;
    Panel45: TPanel;
    gbSetEnDis: TGroupBox;
    cbSetEnDis: TCheckBox;
    gbSetTime: TGroupBox;
    btSetTimeApply: TButton;
    btnSetXML: TButton;
    btnGetXML: TButton;
    Image1: TImage;
    pmWeapon: TPopupMenu;
    pmCountermeasure: TPopupMenu;
    pmState: TPopupMenu;
    pmEmbarked: TPopupMenu;
    dam1: TMenuItem;
    Damage2: TMenuItem;
    Repair2: TMenuItem;
    SetAvailableQuantity1: TMenuItem;
    Repair1: TMenuItem;
    SetAvailableQuantity2: TMenuItem;
    gbPercentage: TGroupBox;
    gbDistance: TGroupBox;
    edtDistance: TEdit;
    btSetDistanceApply: TButton;
    btSetPercentage: TButton;
    edtPercentage: TEdit;
    gbGuidanceCommand: TGroupBox;
    rbRealistic: TRadioButton;
    rbDirect: TRadioButton;
    gbProbability: TGroupBox;
    rbNormal: TRadioButton;
    rbAlways: TRadioButton;
    rbNever: TRadioButton;
    gbMergedTracksStatus: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel50: TPanel;
    Label3: TLabel;
    Panel51: TPanel;
    btAdd: TButton;
    btRemove: TButton;
    Panel52: TPanel;
    Panel86: TPanel;
    Label4: TLabel;
    Panel88: TPanel;
    Panel91: TPanel;
    Button1: TButton;
    gbEmitterStatus: TPanel;
    Panel98: TPanel;
    Panel99: TPanel;
    sgEmitters: TStringGrid;
    Panel100: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbTrack: TLabel;
    lbName: TLabel;
    lbBearing: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    CategoryPanelStatusCub: TCategoryPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btEmitterStatus: TSpeedButton;
    btnMergedTrack: TSpeedButton;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CategoryPanelWeaponCub: TCategoryPanel;
    Label8: TLabel;
    SpeedButton5: TSpeedButton;
    Label12: TLabel;
    SpeedButton6: TSpeedButton;
    CategoryPanelCommCub: TCategoryPanel;
    Label14: TLabel;
    SpeedButton8: TSpeedButton;
    Label18: TLabel;
    SpeedButton10: TSpeedButton;
    btnDataLinkStatus: TSpeedButton;
    Label19: TLabel;
    Panel20: TPanel;
    Panel49: TPanel;
    Panel75: TPanel;
    mmoMessage: TMemo;
    btnNew: TButton;
    btnRemove: TButton;
    btnReply: TButton;
    btnForward: TButton;
    btnSend: TButton;
    btnEdit: TButton;
    btnPrint: TButton;
    lvReceive: TListView;
    lvSent: TListView;
    lvDraft: TListView;
    ImageList1: TImageList;
    lvSensorOverride: TListView;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Panel19: TPanel;
    ilSensor: TImageList;
    ilWeapon: TImageList;
    ImageList2: TImageList;
    ilCountermeasure: TImageList;
    pmDetectionStatus: TPopupMenu;
    Normal1: TMenuItem;
    AlwaysDetected1: TMenuItem;
    Detectedbypassivesensoronly1: TMenuItem;
    NeverDetected1: TMenuItem;
    PopupMenu1: TPopupMenu;
    pmCubicleGroup: TPopupMenu;
    edtWeaponQuantity: TEdit;
    edtEmbarkQuantity: TEdit;
    Setquantity1: TMenuItem;
    Setreadyingtime1: TMenuItem;
    pmDLForce: TPopupMenu;
    pmDLBand: TPopupMenu;
    HF1: TMenuItem;
    UHFVHF1: TMenuItem;
    lvIn: TListView;
    lvOut: TListView;
    LbRoomIn: TListBox;
    LbIn: TListBox;
    LbRoomOut: TListBox;
    LbOut: TListBox;
    lvRecordIn: TListView;
    lvRecordOut: TListView;
    cbbJam: TComboBox;
    btnNoiseCg: TButton;
    btnJamCg: TButton;
    btnMHTCg: TButton;
    pmPlatformLV: TPopupMenu;
    Repair3: TMenuItem;
    edtState: TEdit;
    edtSetTime: TMaskEdit;
    TimerEngage: TTimer;
    TimerLaunch: TTimer;
    lvParticipatingUnits: TListView;
    lvEligibleUnits: TListView;
    ILDataLink: TImageList;
    btnStopDataLink: TSpeedButton;
    btnPlayDataLink: TSpeedButton;
    pmDataLink: TPopupMenu;
    DataLink11: TMenuItem;
    DataLink21: TMenuItem;
    Datalink31: TMenuItem;
    ForceRed1: TMenuItem;
    ForceYellow1: TMenuItem;
    ForceBlue1: TMenuItem;
    ForceGreen1: TMenuItem;
    NoForce1: TMenuItem;
    ForceBlack1: TMenuItem;
    gbDataLinkStatus: TPanel;
    pnlDS2: TPanel;
    pnlDS8: TPanel;
    pnlDS9: TPanel;
    pnlDS10: TPanel;
    lblDS5: TLabel;
    lvDS2: TListView;
    lblDSStatus: TLabel;
    lbDSBand: TLabel;
    lbDSStatusValue: TLabel;
    lbDSBandValue: TLabel;
    btnLaunch: TButton;
    lvMergedTrack: TListView;
    lvMergedTrackComponent: TListView;
    btnDatalink: TBitBtn;
    btnDatalinkForce: TBitBtn;
    btnDatalinkBand: TBitBtn;
    cbbBand: TComboBox;
    RepairAll1: TMenuItem;
    pnlLeft: TPanel;
    imgLTop: TImage;
    pnlLTop: TPanel;
    pnlLRight: TPanel;
    imgLRight: TImage;
    pnlLBottom: TPanel;
    imgLBottom: TImage;
    pnlLFill: TPanel;
    imgLFill: TImage;
    pnlGroup: TPanel;
    pnlStatusOp: TPanel;
    imgStatusOP: TImage;
    lblStatusOp: TLabel;
    pnlStatusOpBody: TPanel;
    lblPlatformStatus: TLabel;
    lblEnvironmentStatus: TLabel;
    lblWeaponEngage: TLabel;
    lblPlatformRemovals: TLabel;
    btnPlatfrmStatus: TSpeedButton;
    btnEnvironStatus: TSpeedButton;
    btnWeaponEngage: TSpeedButton;
    btnPlatfomRemovals: TSpeedButton;
    pnlStatusCub: TPanel;
    imgStatucCub: TImage;
    lblStatusCub: TLabel;
    pnlStatusCubBody: TPanel;
    lblPlatformStatusCub: TLabel;
    lblEnvironmentStatusCub: TLabel;
    lblEmitterStatusCub: TLabel;
    lblMergedTrackCub: TLabel;
    btnPlatformStatusCub: TSpeedButton;
    btnEnvironmentStatusCub: TSpeedButton;
    btnEmitterStatusCub: TSpeedButton;
    btnMergedTrackCub: TSpeedButton;
    pnlWeaponsOp: TPanel;
    imgWeaponsOp: TImage;
    lblWeaponsOp: TLabel;
    pnlWeaponsOpBody: TPanel;
    lblSAMissileEngage: TLabel;
    lblSSMissileEngage: TLabel;
    btnSurfaceToAirOp: TSpeedButton;
    btnSurfaceToSurfaceOp: TSpeedButton;
    pnlWeaponsCub: TPanel;
    imgWeaponsCub: TImage;
    lblWeaponsCub: TLabel;
    pnlWeaponsCubBody: TPanel;
    lblSAMissileEngageCub: TLabel;
    lblSSMissileEngageCub: TLabel;
    btnSurfaceToAirCub: TSpeedButton;
    btnSurfaceToSurfaceCub: TSpeedButton;
    pnlCommOP: TPanel;
    imgCommOp: TImage;
    lblCommOp: TLabel;
    pnlCommOpBody: TPanel;
    lblMessageHandlingOp: TLabel;
    lblCommDefinitionOp: TLabel;
    lblDataLinkControlOp: TLabel;
    btnMessageHandlingOP: TSpeedButton;
    btnCommDefinitionOp: TSpeedButton;
    btnDataLinkControlOp: TSpeedButton;
    pnlCommCub: TPanel;
    imgCommCub: TImage;
    lblCommCub: TLabel;
    pnlCommCubBody: TPanel;
    lblMessageHandlingCub: TLabel;
    lblCommMappingCub: TLabel;
    lblDataLinkStatusCub: TLabel;
    btnMessageHandlingCub: TSpeedButton;
    btnCommMappingCub: TSpeedButton;
    btnDataLinkStatusCub: TSpeedButton;
    pnlManagementOp: TPanel;
    imgManagementOp: TImage;
    lblManagementOp: TLabel;
    pnlManagementOpBody: TPanel;
    lblCubicleGroupsOp: TLabel;
    lblEnviroControlOp: TLabel;
    btnCubicleGroupsOp: TSpeedButton;
    btnEnviroControlOp: TSpeedButton;
    imgPanel2: TImage;
    pnlLTopHead: TPanel;
    pnl2Top: TPanel;
    pnl2Title: TPanel;
    lblImgPanel2: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    pnlPlatformR: TPanel;
    imgPlatformR: TImage;
    imgPanel13: TImage;
    imgbtSelectHookedPaltform: TImage;
    pnlEmbarkedBottom: TPanel;
    imgEmbarkedB: TImage;
    imgbtHookSelectedPlatform: TImage;
    pnlPlatWeaponBottom: TPanel;
    imgPlatWeaponBottom: TImage;
    btnCommMappingOp: TSpeedButton;
    lblCommMappingOp: TLabel;
    btnCommInterferenceOp: TSpeedButton;
    lblCommInterferenceOp: TLabel;
    btnSensorOverrideOp: TSpeedButton;
    lblSensorOverrideOp: TLabel;
    btnSettingOp: TSpeedButton;
    lblSettingOp: TLabel;
    pnl14Title: TPanel;
    imgPanel14: TImage;
    lblImgPanel14: TLabel;
    pnl14Top: TPanel;
    pnl9Title: TPanel;
    imgPanel9: TImage;
    lblImgPanel9: TLabel;
    pnl9Top: TPanel;
    pnl10Title: TPanel;
    imgPanel10: TImage;
    lblImgPanel10: TLabel;
    pnl10Top: TPanel;
    pnl11Title: TPanel;
    imgPanel11: TImage;
    lblImgPanel11: TLabel;
    pnl11Top: TPanel;
    pnl15Title: TPanel;
    imgPanel15: TImage;
    lblImgPanel15: TLabel;
    pnl15Top: TPanel;
    pnl12Title: TPanel;
    imgPanel12: TImage;
    lblImgPanel12: TLabel;
    pnl12Top: TPanel;
    pnlDS2Title: TPanel;
    imgPanelDS2: TImage;
    lblimgPanelDS2: TLabel;
    pnlDS2Top: TPanel;
    pnl98Title: TPanel;
    imgPanel98: TImage;
    lblImgPanel98: TLabel;
    pnl98Top: TPanel;
    pnl16Title: TPanel;
    imgPanel16: TImage;
    lblImgPanel16: TLabel;
    pnl16Top: TPanel;
    pnl3Title: TPanel;
    imgPanel3: TImage;
    lblImgPanel3: TLabel;
    pnl3Top: TPanel;
    pnl46Title: TPanel;
    imgPanel46: TImage;
    lblImgPanel46: TLabel;
    pnl46Top: TPanel;
    pnl8Title: TPanel;
    imgPanel8: TImage;
    lblImgPanel8: TLabel;
    pnl8Top: TPanel;
    pnl6Title: TPanel;
    imgPanel6: TImage;
    lblImgPanel6: TLabel;
    pnl6Top: TPanel;
    pnl17Title: TPanel;
    imgPanel17: TImage;
    lblImgPanel17: TLabel;
    pnl17Top: TPanel;
    pnl43Title: TPanel;
    imgPanel43: TImage;
    lblImgPanel43: TLabel;
    pnl43Top: TPanel;
    pnl4Title: TPanel;
    imgPanel4: TImage;
    lblImgPanel4: TLabel;
    pnl4Top: TPanel;
    pnl7Title: TPanel;
    imgPanel7: TImage;
    lblImgPanel7: TLabel;
    pnl7Top: TPanel;
    pnl5Title: TPanel;
    imgPanel5: TImage;
    lblImgPanel5: TLabel;
    pnl5top: TPanel;
    imgTitleLogo: TImage;
    pnlpnlPlatSystemStateBottom: TPanel;
    imgimgPlatSystemStateBottom: TImage;
    Panel34: TPanel;
    lvPlatformsGroup: TListView;
    // pnlRightUp: TPanel;
    // pnlRightBottom: TPanel;
    procedure btnPlatformStatusClick(sender: TObject);
    procedure btnEnviroStatusClick(sender: TObject);
    procedure btnWeaponEngagementClick(sender: TObject);
    procedure btnPlatformRemovalClick(sender: TObject);
    procedure btnSurfaceToAirClick(sender: TObject);
    procedure btnSurfaceToSurfaceClick(sender: TObject);
    procedure btnMessageHandlingClick(sender: TObject);
    procedure btnCommDefinitionClick(sender: TObject);
    procedure btnCommMappingClick(sender: TObject);
    procedure btnCommInterfeceneClick(sender: TObject);
    procedure btnDatalinkControlClick(sender: TObject);
    procedure btnAudioRecordClick(sender: TObject);
    procedure btnCubicleGroupsClick(sender: TObject);
    procedure btnEnviroControlClick(sender: TObject);
    procedure btnSensorOverrideClick(sender: TObject);
    procedure FormCreate(sender: TObject);
    procedure Tactical1Click(sender: TObject);
    procedure lvPlatformsSelectItem(sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormResize(sender: TObject);
    procedure lvEnviroAreaSelectItem(sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure trbDaytimeVisualChange(sender: TObject);
    procedure trbNighttimeVisualChange(sender: TObject);
    procedure trbDaytimeInfraChange(sender: TObject);
    procedure trbNighttimeInfraChange(sender: TObject);
    procedure trbAttenRainRateChange(sender: TObject);
    procedure trbAttenCloudChange(sender: TObject);
    procedure trbAtmRefractChange(sender: TObject);
    procedure lvSensorsMouseDown(sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label156Click(sender: TObject);
    procedure btnSetXMLClick(sender: TObject);
    procedure btnGetXMLClick(sender: TObject);
    procedure pmSensorChange(sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure pmStateChange(sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure pmCountermeasureChange(sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure pmWeaponChange(sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure pmEmbarkedChange(sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure tvSettingsClick(sender: TObject);
    procedure cbSetEnDisClick(sender: TObject);
    procedure btSetTimeApplyClick(sender: TObject);
    procedure btSetDistanceApplyClick(sender: TObject);
    procedure btSetPercentageClick(sender: TObject);
    procedure rbNormalClick(sender: TObject);
    procedure rbAlwaysClick(sender: TObject);
    procedure rbNeverClick(sender: TObject);
    procedure rbRealisticClick(sender: TObject);
    procedure rbDirectClick(sender: TObject);
    procedure btHookSelectedPlatformClick(sender: TObject);
    procedure btSelectHookedPlatformClick(sender: TObject);
    procedure damage1Click(sender: TObject);
    procedure fixed1Click(sender: TObject);
    procedure dam1Click(sender: TObject);
    procedure Repair1Click(sender: TObject);
    procedure SetAvailableQuantity2Click(sender: TObject);
    procedure Damage2Click(sender: TObject);
    procedure Repair2Click(sender: TObject);
    procedure SetAvailableQuantity1Click(sender: TObject);
    procedure tvWeaponsMouseDown(sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvCountermeasuresMouseDown(sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvEmbarkedPlatformsMouseDown(sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lvSystemStateMouseDown(sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btEmitterStatusClick(sender: TObject);
    procedure btnMergedTrackClick(sender: TObject);

    procedure StatusOperationClick(sender: TObject);
    procedure StatusPercentageClick(sender: TObject);
    procedure StatusEnableClick(sender: TObject);
    procedure StatusPendingClick(sender: TObject);
    procedure StatusDisableClick(sender: TObject);
    procedure lvPlatformsCustomDrawItem(sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure FormDestroy(sender: TObject);
    procedure sgCommChannelDefDrawCell(sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnNewClick(sender: TObject);
    procedure btnEditClick(sender: TObject);
    procedure btnSendClick(sender: TObject);
    procedure btnReplyClick(sender: TObject);
    procedure btnForwardClick(sender: TObject);
    procedure btnPrintClick(sender: TObject);
    procedure lvSentClick(sender: TObject);
    procedure lvDraftClick(sender: TObject);
    procedure lvReceiveClick(sender: TObject);
    procedure DetectabilityClick(Sender: TObject);
    procedure tvCubicleGroupsMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Label14Click(Sender: TObject);
    procedure edtWeaponQuantityKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmbarkQuantityKeyPress(Sender: TObject; var Key: Char);
    procedure Setquantity1Click(Sender: TObject);
    procedure Inactive1Click(Sender: TObject);
    procedure HF1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure sgCommChannelDefClick(Sender: TObject);
    procedure sgComInInjectionSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbbJamChange(Sender: TObject);
    procedure Repair3Click(Sender: TObject);
    procedure lvPlatformsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtStateKeyPress(Sender: TObject; var Key: Char);
    procedure TimerEngageTimer(Sender: TObject);
    procedure TimerLaunchTimer(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure btnStopDataLinkClick(Sender: TObject);
    procedure btnPlayDataLinkClick(Sender: TObject);
    procedure DataLink11Click(Sender: TObject);
    procedure ForceRed1Click(Sender: TObject);
    procedure btnDataLinkStatusClick(Sender: TObject);
    procedure btnLaunchClick(Sender: TObject);
    procedure sgSurfacetoSurfaceSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure edtOceanCurrentDirectionKeyPress(Sender: TObject; var Key: Char);
    procedure edtOceanCurrentSpeedKeyPress(Sender: TObject; var Key: Char);
    procedure tvWeaponsKeyPress(Sender: TObject; var Key: Char);
    procedure tvWeaponsEdited(Sender: TObject; Node: TTreeNode;
      var S: string);
    procedure tvEmbarkedPlatformsEdited(Sender: TObject; Node: TTreeNode;
      var S: string);
    procedure edtWindDirKeyPress(Sender: TObject; var Key: Char);
    procedure edtWindSpeedKeyPress(Sender: TObject; var Key: Char);

	procedure Setreadyingtime1Click(Sender: TObject);

	procedure edtDayVisKeyPress(Sender: TObject; var Key: Char);
    procedure edtNightVisKeyPress(Sender: TObject; var Key: Char);
    procedure trbSeaStateChange(Sender: TObject);
    procedure trbBottomLostChange(Sender: TObject);
    procedure btnAbortSurfaceToSurfaceClick(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure lvRecordInCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure lvRecordOutCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure btnDatalinkForceMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDatalinkMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDatalinkBandMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnRemoveClick(Sender: TObject);
    procedure sgCommChannelDefKeyPress(Sender: TObject; var Key: Char);
    procedure lvInCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure lvOutCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure sgCommChannelDefSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbbBandChange(Sender: TObject);
    procedure lvParticipatingUnitsEdited(Sender: TObject; Item: TListItem;
      var S: string);
    procedure RepairAll1Click(Sender: TObject);
    procedure SoundVelocityClick(Sender: TObject);
    procedure edtDayInfraKeyPress(Sender: TObject; var Key: Char);
    procedure edtNightInfraKeyPress(Sender: TObject; var Key: Char);
    procedure cbxShippingRateChange(Sender: TObject);
    procedure lvSensorOverrideSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure SpeedButton28Click(Sender: TObject);
    procedure pnlStatusOpClick(Sender: TObject);
    procedure pnlStatusCubClick(Sender: TObject);
    procedure pnlWeaponsOpClick(Sender: TObject);
    procedure pnlWeaponsCubClick(Sender: TObject);
    procedure pnlCommOPClick(Sender: TObject);
    procedure pnlCommCubClick(Sender: TObject);
    procedure pnlManagementOpClick(Sender: TObject);
    procedure imgbtSelectHookedPaltformMouseEnter(Sender: TObject);
    procedure imgbtHookSelectedPlatformMouseEnter(Sender: TObject);
    procedure imgbtHookSelectedPlatformMouseLeave(Sender: TObject);
    procedure imgbtSelectHookedPaltformMouseLeave(Sender: TObject);
    procedure lblGroupSelectionMouseEnter(Sender: TObject);
    procedure lblGroupSelectionMouseLeave(Sender: TObject);

  private
    { Private declarations }
    tagState : Integer;

    FSelectedDataLink : TT3DataLink;
//    FAssetListenerList : TList;

    {nando add}
    TempDefCom : string;
    CheckBoxTrue: TBitmap;
    CheckBoxFalse: TBitmap;
    //Pop Up For Group
    PopUpMenu : TPopUpMenu;
    ItemPopUp : TMenuItem;
    //Copy Pop Up For Group
    CpPopUpMenu : TPopupMenu;
    CpItemPopUp : TMenuItem;

    FLastPlatform : TT3PlatformInstance;

    procedure CommunicationCheckBox(acol, arow, state: Integer);

    //Pop Up
    procedure ClickItemPopUp(Sender : TObject);
    procedure ClickCpItemPopUp(Sender : TObject);

    procedure AdjustComponentDisplayPosition;

    function FindTrackListPlatformByMember(const arg: string): TListItem;

    Procedure GetComChannel;
    procedure ObjectCommunicationDestroy;

    function lvSystemState_getRow(const row: integer; const caption : string):
      TListItem;
    procedure changeGameSettingValue(index : integer; const new: String);
    procedure changeWreckTimeRemoval(Value : integer);

    procedure onEmbarkedTimer(Sender : TObject; QueueNumber : integer; Counter : integer);
    procedure onEmbarkedToReadyingTime(Sender : TObject; QueueNumber : Integer; Counter : Integer);
    procedure onEmbarkedUpdateState(Sender : TObject);
    procedure unAssignedAllEmbarkedTimerEvent(node : TTreeNode);

    procedure sendWindDir;
    procedure sendWindSpeed;
    procedure sendOceanCurDir;
    procedure sendOceanCurSpeed;
    procedure sendDayTimeVis;
    procedure sendNightTimeVis;

    //kirim semua data envi
    procedure SendAllEnviAboveWater;
    procedure SendAllEnviDataSurfaceSubsurface;

    procedure applyEnviAboveWater;
    procedure applyEnviSurfaceSubsurface;

    procedure AddAssetListener(aPF : TT3PlatformInstance);
    procedure RemoveAssetListener(aPF : TT3PlatformInstance);
    procedure OnPropertyIntChange(Sender : TObject;Props : TPropsID; Value : Integer);
    procedure OnPropertyDblChange(Sender : TObject;Props : TPropsID; Value : Double);
    procedure OnPropertyBoolChange(Sender : TObject;Props : TPropsID; Value : Boolean);
//    procedure OnPropertyByteChange(Sender : TObject;Props : TPropsID; Value : Byte); Sementara dipindah ke public
    procedure OnPropertyMissLauncher(Sender : TObject;Launcher : TObject;Value : integer);
    procedure OnPropertyTorpLauncher(Sender : TObject;Launcher : TObject;Value : integer);

    procedure OnPlatformGroupChange(Sender: TObject);

    procedure SetDefaultWidthForStringGridMissileEngagement;
    procedure OnStatusDLComboBoxChange(Sender: TObject);

    procedure InitialDatalinkRec(var rec : TRecCmd_DataLink;datalink : TT3Datalink);
  public
    sgSurToSurEditedRow, sgSurToAirEditedRow: Integer;

    rw, rw1: TRotWheel;     // untuk sync

    // farah
//    OceanCurrentDirection, OceanCurrentSpeed : Double;
//    OrderedHeading, OrderedSpeed : Double;
//    CurrentHeading, CurrentSpeed : Double;
//    isOceanCurrentEffect : Boolean;

    StartDTOT : TTime;

    indexDtot : Integer;
    SgSSMissileSelectedCell : Integer;

    {aldy}
    ToteSelectedPlatform : TT3PlatformInstance;
    SensorOverrideSelectedPlatform : TT3PlatformInstance;

    timeEngage: TTime;
    timeFlight: TTIme;

    timeInt : Integer;
    timeIntEngage : Integer;

    listTimeEngage : Tlist;
    listTimeLaunch : TList;

    indexWeapon : Integer;

    MissileLaunchList : TMissileHaveLaunch;

    procedure Initialize;

    procedure ObjectCommunicationCreate(sender: TObject);

    procedure UpdateTrackList(sender: TObject);
    function FindTrackListSensorByMember(const arg: string): TListItem;

//    procedure RefreshPlatformSensors(PfList: TPlatform_Instance);
//    procedure RefreshPlatformWeapons(PfList: TPlatform_Instance);
//    procedure RefreshPlatformCountermeasures(PfList: TPlatform_Instance);
//    procedure RefreshEmbarkedPlatform(PfList: TPlatform_Instance);
    procedure SetSelectedPlatform(track : TT3PlatformInstance);

    procedure DisplayEnvironMentControl;
    procedure RefreshCubicle_Platform(cubList: Tlist);
    procedure TreeToXML(tv: TTreeView);
    procedure XMLToTree(tv: TTreeView; XMLDoc: TXMLDocument);
    procedure DOMShow(ATree: TTreeView; Anode: IXMLNode; tNode: TTreeNode);
    procedure RotWheelAboveDegreeChange(sender: TObject);
    procedure RotWheelSurfaceChange(sender: TObject);
    procedure setWheel;
    procedure setGroupListToDataLinkCombo;
    procedure GroupDataLinkClick(Sender : TObject);

    procedure setDefaultHeaderMissile;
    procedure setHeaderEmitter;
    procedure setHeaderDataLinkControl;
    procedure setHeaderMergedTrack;
    procedure setHeaderMessageHandling;
    procedure setHeaderAudioRecord;
    procedure setHeaderCommChannelDef;
    procedure setHeaderCommChannelMap;
    procedure setHeaderCommInInjection;
    procedure UpdateMessageHandling(const MessageValue : TRecSendMessage);

    procedure setRoleClient(rc: Integer);

    procedure changeValueTreeSettingItems(node: TTreeNode; const new: String);
    function getValueTreeSettingItems: String;
    function getSettingIdentifierItem: String;
    Function NewNode(tr: TTreeView; pNode: TTreeNode;
      Const sNodeText: String): TTreeNode;
    Function FindText(tr: TTreeView; const SearchText: string): TTreeNode;
    Function FindAdd(tr: TTreeView; Const SearchText, sNodeText: string)
      : TTreeNode;
    // Procedure FormTreeView(Tree: TTreeView; Const tblName: String);

    procedure OnWeaponEngaged(Sender, Target: TObject ; Launcher : Integer);
    procedure OnWeaponLaunched(Sender, Target: TObject);
    procedure OnPlatformDestroy(Sender: TObject); overload;
    procedure OnPlatformDestroy(Sender: TObject; Target:string); overload;

    procedure OnPropertyByteChange(Sender : TObject;Props : TPropsID; Value : Byte);

    procedure UpdateTimeMissile;
    procedure RefreshChannelMapping(aGroupName : string);

    procedure CountDownTimeEngage(grid : TStringGrid; value: String);
    procedure CountDownTimeFlight(grid : TStringGrid; value: String);
    procedure UpdateCellGrid(var grid : TStringGrid ; row, column : Integer ; value : String);
    function GetRowGrid(Sender, Target : String; grid: TStringGrid): Integer;

    procedure OnStateValueChange(sender : TListView);
    procedure showEmbarkQuantity(sender : TObject);
    procedure StatusClick(sender: TObject);

    procedure RefreshPlatformList;

//    procedure UpdateDamageWeapon

    procedure UpdateSystemState(sender: TObject;const dmgType: TDamageItemType);
    procedure UpdateDevicesState(sender: TObject; const dmgtype: TDamageItemType);

    procedure updateInfoTree(PropID : TPropsID; IntVal : integer;
                             BoolVal : Boolean; DoubleVal : double;
                             ByteVal : Byte);

    //update vehicle
    procedure UpdateVehicle(sender : TT3Vehicle);

    procedure UpdateSensorVehicle(sender : TT3Vehicle);
    procedure UpdateWeaponVehicle(sender : TT3Vehicle);
    procedure UpdateCountermeasureVehicle(sender : TT3Vehicle);
    procedure UpdateStatusVehicle(sender : TT3Vehicle);
    procedure UpdateEmbarkVehicle(sender : TT3Vehicle);
    procedure setUpTreeWeapons(Weapons : TList);

    {data link}
    procedure SetDataLink(subject : TT3DataLink);
    procedure SetDataLinkView;

     {nando DTOT}
    procedure SetMissileRBLW(OwnShip, TargetShip, Missile : TObject;
              TimeEng, TimeLaunch : Double; isLaunch : Boolean; launcherIndex : integer
              ;WeaponName : string);

    procedure ClearAllSurfaceToSurfaceList(pi : TT3PlatformInstance);
    procedure ClearAllSurfaceToAirList(pi : TT3PlatformInstance);
    procedure ClearAllWaitingMissile(pi : TT3PlatformInstance);

    procedure SetTimerMissileLauch(veh : TT3Vehicle);

    procedure settimeDTOT;

    procedure OnweaponEngageWaypoint(pi : TT3PlatformInstance; Sender, Target : TObject; Distance : Double;
              FiringAngle, FiringLauncher : integer; TimeforMissileEngage, TimeforMissileFlight : Double);

    // farah
    procedure countCurrentEffect;

    //added by choco
    procedure PostKey(key: Word; const shift: TShiftState; specialkey: Boolean) ;

    procedure SetupTvCubicleGroup;

    {Nando}
    procedure ReceiveGameSpeedForRecording(Cmd : TRecCmd_GameCtrl);
  end;

const
  tagOverallDamage  = 0;
  tagHelm           = 1;
  tagPropulsion     = 2;
  tagSpeed          = 3;
  tagFuelRemaining  = 4;
  tagFuelLeakage    = 5;
  tagCommunications = 6;

  NON_DATALINK      = 0;
  DATALINK          = 1;
  EU_DAMAGE         = 2;
  EU_DIFFBAND       = 3;


var
  frmToteDisplay: TfrmToteDisplay;
  rMis: TRecCmd_LaunchMissile;
  lastQuantity, countLauncherOn : Integer;

implementation

uses
  ufTacticalDisplay, uSimMgr_Client, uBaseCoordSystem,
  uDBAsset_GameEnvironment, uDBAsset_Countermeasure,
  uDBScenario, uDBAsset_Cubicle,

  uDBAssets_SubAreaEnviroDefinition, uT3Radar, uT3Sonar,
  uT3Sensor, uT3Weapon, StrUtils, uT3OtherSensor, uDBCubicles,
  uSimObjects, uT3Gun, uT3Mine, uT3Torpedo,
  uT3Bomb, uT3SimManager, uT3CounterMeasure, uT3Visual, DateUtils,
  uT3Common, uT3HybridOnVehicle;

function DeleteAmpersand(Value: string): string;
var
  i: integer;
  found: Boolean;
begin
  //i := -1;
  found := false;

  for i := 0 to Length(Value) - 1 do  begin
    if Value[i] = '&' then
    begin
      found := true;
      break;
    end;
  end;

  if found then
    Delete(Value, i, 1);

  result := Value;
end;

{$R *.dfm}

function findLVItem(LV : TListView;aCaption:string):TListItem;
var
  lvItem :  TListITem;
begin
  lvItem := LV.FindCaption(0,      // StartIndex: Integer;
                          aCaption,   // Search string: string;
                          True,   // Partial,
                          True,   // Inclusive
                          False); // Wrap  : boolean;
  result := lvItem;
end;

function GetNodeByData(ATree : TTreeView; AValue:TObject): TTreeNode;
var
    Node: TTreeNode;
begin
  Result := nil;

  if ATree.Items.Count = 0 then Exit;

  Node := ATree.Items[0];
  while Node <> nil do
  begin
    if Avalue.Equals(Node.Data) then
    //if Node.Data = AValue then
    begin
      Result := Node;
      Break;
    end;

    Node := Node.GetNext;
  end;
end;

function SecondToTime(const s: Integer): TTime;
var
  h: Double;
begin
  h := s / 3600;
  Result := h / 24;
end;

function GetItemByObjectData(hItem : TTreeNode;Data : TObject) : TTreeNode ;
var
  hItemFound, hItemChild : TTreeNode;
begin
  // Not found.
  Result := nil;

  // If hItem is NULL, start search from root item.
  if (hItem = nil) then exit;
  //if (hItem.SelectedIndex = 0) then exit;

  while (hItem <> nil) do
  begin
    // Did we find it?
    if (hItem.Data = Data) then
    begin
       Result := hItem;
       Exit;
    end;

    // Check whether we have child items.
    if (hitem.HasChildren) then
    begin
      // Recursively traverse child items.

      hItemChild := hitem.getFirstChild;
      hItemFound := GetItemByObjectData(hItemChild, Data);

      // Did we find it?
      if (hItemFound <> nil) then
       begin
          Result :=  hItemFound;
          Exit;
       end;
    end;

    // Go to next sibling item.
    hItem := hItem.getNextSibling;
  end;
end;

function GetItemByIndex(hItem : TTreeNode;index : integer) : TTreeNode ;
var
  hItemFound, hItemChild : TTreeNode;
begin
  // Not found.
  Result := nil;

  // If hItem is NULL, start search from root item.
  if (hItem = nil) then exit;
  //if (hItem.SelectedIndex = 0) then exit;

  while (hItem <> nil) do
  begin
    // Did we find it?
    if (hItem.SelectedIndex = index) then
    begin
      Result := hItem;
      Exit;
    end;

    // Check whether we have child items.
    if (hitem.HasChildren) then
    begin
      // Recursively traverse child items.

      hItemChild := hitem.getFirstChild;
      hItemFound := GetItemByIndex(hItemChild, index);

      // Did we find it?
      if (hItemFound <> nil) then
       begin
          Result :=  hItemFound;
          Exit;
       end;
    end;

    // Go to next sibling item.
    hItem := hItem.getNextSibling;
  end;
end;

function searchIndexTreeView(t : TTreeNode; const Index : integer; var found : boolean) : TTreeNode;
var
  //i : integer;
  node : TTreeNode;
begin
  if t.HasChildren then 
  begin
    node := t.getFirstChild;
    result := searchIndexTreeView(node,Index,found);
    Exit;
  end;

  result := nil;
end;

procedure TfrmToteDisplay.SetMissileRBLW(OwnShip, TargetShip, Missile : TObject;
  TimeEng, TimeLaunch : Double; isLaunch : Boolean; launcherIndex : integer
  ;WeaponName : string);
var
  recEngage    : TRec_Time_Row;
  rec          : TRec_Time_Row;
  i, EmptyRow  : Integer;

  wc: String;

  MissileIndex : Integer;
  ShipIndex    : Integer;
  TargetIndex  : Integer;
begin
  EmptyRow := 0;

  case TT3Weapon(Missile).WeaponCategory of
    wcMissileAirToSurfaceSubsurface:
      wc := 'Missile Air To Surface Subsurface';
    wcMissileSurfaceSubsurfaceToAir:
      wc := 'Missile Surface Subsurface To Air';
    wcMissileSurfaceSubsurfaceToSurfaceSubsurface:
      wc := 'Missile Surface/Subsurface To Surface/Subsurface';
    wcMissileAirToAir:
      wc := 'Missile Air To Air';
    wcMissileLandAttack:
      wc := 'Missile Land Attack';
    wcTorpedoStraigth:
      wc := 'Torpedo Staigth';
    wcTorpedoActiveAcoustic:
      wc := 'Torpedo Active Acoustic';
    wcTorpedoPassiveAcoustic:
      wc := 'Torpedo Passive Acoustic';
    wcTorpedoWireGuided:
      wc := 'Torpedo Wire Guided';
    wcTorpedoWakeHoming:
      wc := 'Torpedo Wake Homing';
    wcTorpedoActivePassive:
      wc := 'Torpedo Active Passive';
    wcMine:
      wc := 'Mine';
    wcGunCIWS:
      wc := 'Gun CIWS';
    wcGunGun:
      wc := 'Gun';
    wcGunRocket:
      wc := 'Gun Rocket';
    wcBomb:
      wc := 'Bomb';
  end;

  for i := 0 to sgSurfacetoSurface.RowCount - 1 do
  begin
    if sgSurfacetoSurface.Cells[0, i] = '' then
    begin
      emptyRow := i;
      break;
    end;
  end;

  if (OwnShip is TT3Vehicle) and (TargetShip is TT3PlatformInstance) and (Missile is TT3MissilesOnVehicle) then
  begin
    MissileIndex := TT3MissilesOnVehicle(Missile).InstanceIndex;
    ShipIndex    := TT3Vehicle(ownship).InstanceIndex;
    TargetIndex  := TT3PlatformInstance(TargetShip).InstanceIndex;

    rec := TRec_Time_Row.Create;
    recEngage := TRec_Time_Row.Create;

    recEngage.row  := EmptyRow;
    recEngage.WeaponIndex   := MissileIndex;
    recEngage.OwnShipIndex  := ShipIndex;
    recEngage.TargetIndex   := TargetIndex;
    recEngage.launcherIndex := launcherIndex;
    recEngage.WeaponName    := WeaponName;

    rec.row  := EmptyRow;
    rec.WeaponIndex   := MissileIndex;
    rec.OwnShipIndex  := ShipIndex;
    rec.TargetIndex   := TargetIndex;
    rec.isLaunched    := isLaunch;
    rec.launcherIndex := launcherIndex;
    rec.WeaponName    := WeaponName;

    timeEngage := TimeOf(simMgrClient.GameTIME) + TimeOf(TimeEng / (3600*24));
    recEngage.time := timeEngage;
    timeFlight := TimeOf(simMgrClient.GameTIME) + TimeOf(TimeLaunch / (3600*24));
    rec.time := timeFlight;
    rec.isLaunched   := isLaunch;

    with sgSurfacetoSurface do
    begin
      Cells[0, emptyRow] := TT3MissilesOnVehicle(Missile).InstanceName;

      Cells[1, emptyRow] := (TT3MissilesOnVehicle(Missile).InstanceName);
      Cells[2, emptyRow] := wc;
      Cells[3, emptyRow] := (TT3PlatformInstance(TargetShip).InstanceName);
      Cells[4, emptyRow] := 'Launched';
      Cells[5, emptyRow] := FloatToStr(TT3PlatformInstance(TargetShip).Course);
      Cells[6, emptyRow] := FormatDateTime('hh : mm : ss',
        timeEngage);
      Cells[7, emptyRow] := FormatDateTime('hh : mm : ss',
        timeFlight);
    end;

    listTimeEngage.Add(recEngage);
    listTimeLaunch.Add(rec);
  end;
end;

procedure TfrmToteDisplay.Setquantity1Click(Sender: TObject);
begin
  showEmbarkQuantity(sender);
end;

procedure TfrmToteDisplay.Setreadyingtime1Click(Sender: TObject);
begin
  if Assigned(tvEmbarkedPlatforms.Selected) then
  begin
    tvEmbarkedPlatforms.ReadOnly := false;
    tvEmbarkedPlatforms.Selected.Focused := true;
    tvEmbarkedPlatforms.Selected.EditText;
  end;
end;

procedure TfrmToteDisplay.btnMergedTrackClick(sender: TObject);
begin
  gbMergedTracksStatus.BringToFront;

end;

procedure TfrmToteDisplay.btnMessageHandlingClick(sender: TObject);
begin
  gbMessageHandlingSystem.BringToFront;
end;


procedure TfrmToteDisplay.btnDatalinkBandMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos : TPoint;
begin
  if Button = mbLeft then
  begin
    GetCursorPos(pos);
    pmDLBand.Popup(pos.X, pos.Y);
  end;
end;

procedure TfrmToteDisplay.btnDatalinkControlClick(sender: TObject);
begin
  if simMgrClient.ISInstructor then begin
    if Assigned(FSelectedDataLink) then
      SetDataLink(FSelectedDataLink);
    gbDatalinkControl.BringToFront;
  end
  else begin
    SetDataLinkView;
    gbDataLinkStatus.BringToFront;
  end;
end;

procedure TfrmToteDisplay.btnDatalinkForceMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos : TPoint;
begin
  if Button = mbLeft then
  begin
    GetCursorPos(pos);
    //setGroupListToDataLinkCombo;
    pmDLForce.Popup(pos.X, pos.Y);
  end;
end;

procedure TfrmToteDisplay.btnDatalinkMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos : TPoint;
begin
  if Button = mbLeft then
  begin
    GetCursorPos(pos);
    pmDataLink.Popup(pos.X, pos.Y);
  end;
end;

procedure TfrmToteDisplay.btEmitterStatusClick(sender: TObject);
var
  aObject: TSimObject;
begin
  gbEmitterStatus.BringToFront;
  if frmTacticalDisplay.cbAssumeControl.ItemIndex = -1 then
  begin
    Exit;
  end;

  aObject := TSimObject(frmTacticalDisplay.cbAssumeControl.Items.Objects
      [frmTacticalDisplay.cbAssumeControl.ItemIndex]);
  if aObject = nil then
  begin
    lbName.Caption := 'No selected';
    lbTrack.Caption := 'No Track Selected';
    lbBearing.Caption := 'No Bearing';
  end
  else if aObject is TT3Vehicle then
  begin
    lbName.Caption := TT3Vehicle(aObject).InstanceName;
    lbTrack.Caption := TT3Vehicle(aObject).Track_ID;
    lbBearing.Caption := FormatCourse(TT3Vehicle(aObject).Course);
  end;

end;

procedure TfrmToteDisplay.btHookSelectedPlatformClick(sender: TObject);
var
  index, I : integer;
begin
  if lvPlatforms.ItemIndex = -1 then
    Exit;

  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    frmTacticalDisplay.cbAssumeControl.ItemIndex := lvPlatforms.ItemIndex;
    frmTacticalDisplay.cbAssumeControlChange(self);

    if (frmTacticalDisplay.focusedTrack <> nil) and
      (frmTacticalDisplay.focusedTrack is TT3PlatformInstance) then
    begin
      if TT3PlatformInstance(frmTacticalDisplay.focusedTrack).Controlled <> True then
        TT3PlatformInstance(frmTacticalDisplay.focusedTrack).Controlled := true;

      frmTacticalDisplay.fmMapWindow1.Map.Repaint;
    end;

    lvPlatforms.SetFocus;
  end
  else
  begin
    index := 0;

    for I := 0 to frmTacticalDisplay.cbAssumeControl.Items.Count - 1 do
    begin
      if TT3PlatformInstance(frmTacticalDisplay.cbAssumeControl.Items.Objects[I]).InstanceIndex = TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex then
      begin
        index := i;
        break;
      end;
    end;

    frmTacticalDisplay.cbAssumeControl.ItemIndex := index;
    frmTacticalDisplay.cbAssumeControlChange(self);

    if (frmTacticalDisplay.focusedTrack <> nil) and
      (frmTacticalDisplay.focusedTrack is TT3PlatformInstance) then
    begin
      if TT3PlatformInstance(frmTacticalDisplay.focusedTrack).Controlled <> True then
        TT3PlatformInstance(frmTacticalDisplay.focusedTrack).Controlled := true;

      frmTacticalDisplay.fmMapWindow1.Map.Repaint;
    end;

    lvPlatforms.SetFocus;
  end;
end;

procedure TfrmToteDisplay.btnAbortSurfaceToSurfaceClick(Sender: TObject);
var
  i, DTOTCount : Integer;
  //ListDTOT : TMissileHaveLaunch;
  RecSend   : TrecSinc_RBLW;
  mov : TT3MissilesOnVehicle;
  //vehicle : TT3Vehicle;
  //LauncherOn : TFitted_Weap_Launcher_On_Board;
begin
  i := 0;

  if Assigned(simMgrClient.ControlledPlatform) then
  begin
    DTOTCount := TT3Vehicle(simMgrClient.ControlledPlatform).MissileWaittoLaunch.Count;
    if (indexDtot < DTOTCount) and (i <> -1) then
    begin
      mov := TT3MissilesOnVehicle(frmTacticalDisplay.fmWeapon1.focused_weapon);

      //Sincron
      with RecSend do
      begin
        cmd := 13;
        PlatformID := simMgrClient.ControlledPlatform.InstanceIndex;
        WeaponIndex := mov.InstanceIndex;
        WeaponName := mov.InstanceName;
        RBLWIndex := i;
        RBLWLauncherIndex := StrToInt(sgSurfacetoSurface.Cells[1, SgSSMissileSelectedCell]);
      end;
      simMgrClient.netSend_CmdSyncRBLW(RecSend);

      TT3Vehicle(simMgrClient.ControlledPlatform).MissileWaittoLaunch.Delete(indexDtot);

      if TT3Vehicle(simMgrClient.ControlledPlatform).MissileWaittoLaunch.Count <= 0 then
        mov.PreLaunched := False;

      ClearAllSurfaceToSurfaceList(simMgrClient.ControlledPlatform);

      with frmTacticalDisplay.fmWeapon1 do
      begin
//        if LauncherOn.FData.Launcher_Type > 8 then       //objeckx blm di create
//          FRippleCountArray[LauncherOn.FData.Launcher_Type-9] := False
//        else
//          FRippleCountArray[LauncherOn.FData.Launcher_Type-1] := False;
      end;

      btnLaunch.Enabled := False;
      btnAbortSurfaceToSurface.Enabled := False;
    end;
  end;
end;

procedure TfrmToteDisplay.btnAudioRecordClick(sender: TObject);
begin
  gbAudioRecordTracks.BringToFront;
end;

procedure TfrmToteDisplay.btnPlatformStatusClick(sender: TObject);
begin
  gbPlatformStatus.BringToFront;

  RefreshPlatformList;

// membuat double selecteed trackx.. maaf tak cendol (mm)
//  if Assigned(simMgrClient.ControlledPlatform) then
//    simMgrClient.ControlledPlatform.Selected := True;
end;

procedure TfrmToteDisplay.btnPlayDataLinkClick(Sender: TObject);
var
  rec : TRecCmd_DataLink;
  dlID : Integer;
begin
  if lvParticipatingUnits.Items.Count <= 0 then
    Exit;

  btnStopDataLink.Down := true;
  btnPlayDataLink.Down := false;


  if ContainsStr(edtDatalink.Text, '1') then
    dlID := 1
  else if ContainsStr(edtDatalink.Text, '2') then
    dlID := 2
  else if ContainsStr(edtDatalink.Text, '3') then
    dlID := 3
  else
    exit;

  InitialDatalinkRec(rec,simMgrClient.DataLinkManager.getDatalink(dlID));

  rec.OrderDL := odlPlay;
  simMgrClient.netSend_Cmd_DataLink(rec);
end;

function TfrmToteDisplay.FindTrackListPlatformByMember(const arg: string)
  : TListItem;
var
  i: Integer;
  f: Boolean;
  li: TListItem;
begin
  Result := nil;
  li := nil;

  f := False;
  i := 0;
  while not f and (i < lvPlatforms.Items.Count) do
  begin
    li := lvPlatforms.Items.Item[i];

    // f := False;
    // f := SameText(li.Caption, arg);
    f := SameText(li.SubItems[0], arg);

    Inc(i);
  end;

  if f then
    Result := li;
end;

function TfrmToteDisplay.FindTrackListSensorByMember(const arg: string)
  : TListItem;
var
  i: Integer;
  f: Boolean;
  li: TListItem;
begin
  Result := nil;
  li := nil;

  f := False;
  i := 0;
  while not f and (i < lvSensors.Items.Count) do
  begin
    li := lvSensors.Items.Item[i];

    //f := False;
    // f := SameText(li.Caption, arg);
    f := SameText(li.SubItems[0], arg);

    Inc(i);
  end;

  if f then
    Result := li;
end;

procedure TfrmToteDisplay.fixed1Click(sender: TObject);
begin
  if (lvSensors.Selected = nil) or (lvSensors.ItemIndex = -1) then
    Exit;

  with simMgrClient do
  begin
     TT3Sensor(lvSensors.Selected.Data).OperationalStatus := sopOff;
  end;

  lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
  lvPlatforms.Selected.Focused := true;
  Invalidate;
  UpdateSensorVehicle(TT3Vehicle(lvPlatforms.Selected.Data));
end;

procedure TfrmToteDisplay.UpdateTrackList(sender: TObject);
//var
//  i: Integer;
//  pi: TPlatform_Instance;
begin
  { if sender = nil then
    Exit;

    with (simMgrClient) do begin
    for I := 0 to Platforms.ChildCount - 1 do begin

    SpeedButton1Click(Platforms.Childs[i]);
    end;
    end;}
end;

{procedure TfrmToteDisplay.RefreshPlatformSensors(PfList: TPlatform_Instance);
var
  i: Integer;
begin
  lvSensors.Items.Clear;

end;
}(*
procedure TfrmToteDisplay.RefreshPlatformWeapons(PfList: TPlatform_Instance);
var
  i: Integer;
  mis: TMissile_Definition;
  torp: TTorpedo_Definition;
begin

  tvWeapons.Items.Clear;

  // missiles
  if (PfList.Vehicle.Missiles <> nil) and (PfList.Vehicle.Missiles.Count > 0)
    then
  begin
    for i := 0 to PfList.Vehicle.Missiles.Count - 1 do
    begin
      mis := PfList.Vehicle.Missiles[i];
      tvWeapons.Items.Add(nil, mis.FData.Class_Identifier);
    end;
  end;

  // torpedoes
  if (PfList.Vehicle.Torpedos <> nil) and (PfList.Vehicle.Torpedos.Count <> 0)
    then
  begin
    for i := 0 to PfList.Vehicle.Torpedos.Count - 1 do
    begin
      torp := PfList.Vehicle.Torpedos[i];
      tvWeapons.Items.Add(nil, torp.FData.Class_Identifier);
    end;
  end;

  // Mines
  if (PfList.Vehicle.Mines <> nil) and (PfList.Vehicle.Mines.Count <> 0) then
  begin
    for i := 0 to PfList.Vehicle.Mines.Count - 1 do
    begin
      tvWeapons.Items.Add(nil,
        TMine_Definition(PfList.Vehicle.Mines[i]).FData.Mine_Identifier);
    end;
  end;
  {
    if (PfList.Vehicle.Hybrids <> nil) then
    for I := 0 to PfList.Vehicle.Hybrids.Count - 1 do
    begin
    tvWeapons.Items.Add(nil, IntToStr(THybrid_Definition(PfList.Vehicle.Hybrids[I]).FData.Hybrid_Index));
    end;
    }

  // Bombs
  if (PfList.Vehicle.Bombs <> nil) and (PfList.Vehicle.Bombs.Count <> 0) then
  begin
    for i := 0 to PfList.Vehicle.Bombs.Count - 1 do
    begin
      tvWeapons.Items.Add(nil,
        TBomb_Definition(PfList.Vehicle.Bombs[i]).FData.Bomb_Identifier);
    end;
  end;

  // GUns
  if (PfList.Vehicle.Guns <> nil) and (PfList.Vehicle.Guns.Count <> 0) then
  begin
    for i := 0 to PfList.Vehicle.Guns.Count - 1 do
    begin
      tvWeapons.Items.Add(nil,
        TGun_Definition(PfList.Vehicle.Guns[i]).FData.Gun_Identifier);
    end;
  end;

end;
*)

procedure TfrmToteDisplay.Repair1Click(sender: TObject);
var
  node : TTreeNode;
  stats : Byte;
begin
  if (tvWeapons.Selected = nil) and not (tvWeapons.Selected.Parent = nil ) then
    Exit;

  node := tvWeapons.Selected;
  stats := Byte(wsAvailable);

  if not Assigned(ToteSelectedPlatform) then
    Exit;

  if not(Assigned(TT3PlatformInstance(node.Data))) then Exit;
  
  SimMgrClient.netSend_CmdSetStatus(ToteSelectedPlatform.InstanceIndex,
      TT3PlatformInstance(node.Data).InstanceIndex,
      CORD_ID_QUANTITY, CORD_TYPE_WEAPON, stats);

  lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
  lvPlatforms.Selected.Focused := true;
  Invalidate;
end;

procedure TfrmToteDisplay.Repair2Click(sender: TObject);
begin
  if tvCountermeasures.Selected = nil then
    Exit;

    with simMgrClient do
    begin
      if TT3CounterMeasure(tvCountermeasures.Selected.Data).ClassName = 'TT3ChaffLauncher' then
      TT3CounterMeasure(tvCountermeasures.Selected.Data).Status := esAvailable
      else
      TT3CounterMeasure(tvCountermeasures.Selected.Data).Status := esOff;
    end;
    lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
    lvPlatforms.Selected.Focused := true;
    Invalidate;
    UpdateCountermeasureVehicle(TT3Vehicle(lvPlatforms.Selected.Data));
end;

procedure TfrmToteDisplay.Repair3Click(Sender: TObject);
var
  rec : TRecCmd_Platform_Repair;
begin
  if simMgrClient.ISInstructor then
  begin

  if (lvPlatforms.Selected = nil) then
    exit;

  with simMgrClient do
  begin
    rec.PlatfomID     := TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex;
    rec.HealthPercent := 100.0;
    rec.Health        := TT3PlatformInstance(lvPlatforms.Selected.Data).DamageStatus.DamageCapacity;
    rec.nDormant      := False;

    netSend_CmdPlatform_Repair(rec);
    //TT3PlatformInstance(lvPlatforms.Selected.Data).Health := 100.0;
    //TT3PlatformInstance(lvPlatforms.Selected.Data).HealthPercent := 100.0;
  end;

  lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
  lvPlatforms.Selected.Focused := true;
  Invalidate;
  end;
end;

procedure TfrmToteDisplay.RepairAll1Click(Sender: TObject);
var
  rec : TRecCmd_Platform_Repair;
  I: Integer;
  obj:TSimObject;
begin
  if simMgrClient.ISInstructor then
  begin

  if (lvPlatforms.Selected = nil) then
    exit;

    for I := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      obj := simMgrClient.SimPlatforms.getObject(i);

      if TT3PlatformInstance(obj).Dormant = True then
      begin
        with simMgrClient do
        begin
          rec.PlatfomID     := TT3PlatformInstance(obj).InstanceIndex;
          rec.HealthPercent := 100.0;
          rec.Health        := TT3PlatformInstance(obj).DamageStatus.DamageCapacity;
          rec.nDormant      := False;

          netSend_CmdPlatform_Repair(rec);
          //TT3PlatformInstance(lvPlatforms.Selected.Data).Health := 100.0;
          //TT3PlatformInstance(lvPlatforms.Selected.Data).HealthPercent := 100.0;
        end;
      end;
    end;
  end;
end;

{procedure TfrmToteDisplay.RefreshPlatformCountermeasures
  (PfList: TPlatform_Instance);
var
  i: Integer;
  ac_decoy: TAcoustic_Decoy_On_Board;
  bubble: TAir_Bubble_Mount;
  chaff: TChaff_On_Board;
  chaff_launch: TChaff_Launcher_On_Board;
  def_jam: TDefensive_Jammer_On_Board;
  float_decoy: TFloating_Decoy_On_Board;
  infra_decoy: TInfrared_Decoy_On_Board;
  jammer: TJammer_On_Board;
  point: TPoint_Effect_On_Board;
  towed_jam: TTowed_Jammer_Decoy_On_Board;

begin

  tvCountermeasures.Items.Clear;

  // accoustic decoy
  if (PfList.Vehicle.Acoustic_Decoys <> nil) and
    (PfList.Vehicle.Acoustic_Decoys.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Accoustic Decoy');
    for i := 0 to PfList.Vehicle.Acoustic_Decoys.Count - 1 do
    begin
      ac_decoy := PfList.Vehicle.Acoustic_Decoys[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Accoustic Decoy'),
        ac_decoy.FData.Instance_Identifier + ' - ' + IntToStr
          (ac_decoy.FData.Quantity));
    end;
  end;

  // air bubble
  if (PfList.Vehicle.Air_Bubble_Mount <> nil) and
    (PfList.Vehicle.Air_Bubble_Mount.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Air Bubble Mount');
    for i := 0 to PfList.Vehicle.Air_Bubble_Mount.Count - 1 do
    begin
      bubble := PfList.Vehicle.Air_Bubble_Mount[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.FieldAddress
          ('Air Bubble Mount'),
        bubble.FData.Instance_Identifier + ' - ' + IntToStr
          (bubble.FData.Bubble_Qty_On_Board));
    end;
  end;

  // chaff
  if (PfList.Vehicle.Chaffs <> nil) and (PfList.Vehicle.Chaffs.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Chaff');
    for i := 0 to PfList.Vehicle.Chaffs.Count - 1 do
    begin
      chaff := PfList.Vehicle.Chaffs[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Chaff'), chaff.FData.Instance_Identifier + ' - ' + IntToStr
          (chaff.FData.Chaff_Qty_On_Board));
    end;
  end;

  // chaff launcher
  if (PfList.Vehicle.Chaff_Launchers <> nil) and
    (PfList.Vehicle.Chaff_Launchers.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Chaff Launcher');
    for i := 0 to PfList.Vehicle.Chaff_Launchers.Count - 1 do
    begin
      chaff_launch := PfList.Vehicle.Chaff_Launchers[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Chaff Launcher'),
        '- ' + IntToStr(chaff_launch.FData.Launcher_Number));
    end;
  end;

  // defensive jammer
  if (PfList.Vehicle.Defensive_Jammers <> nil) and
    (PfList.Vehicle.Defensive_Jammers.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Defensive Jammer');
    for i := 0 to PfList.Vehicle.Defensive_Jammers.Count - 1 do
    begin
      def_jam := PfList.Vehicle.Defensive_Jammers[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Defensive Jammer'), def_jam.FData.Instance_Identifier + ' - 1');
    end;
  end;

  // floating decoy
  if (PfList.Vehicle.Floating_Decoys <> nil) and
    (PfList.Vehicle.Floating_Decoys.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Floating Decoy');
    for i := 0 to PfList.Vehicle.Floating_Decoys.Count - 1 do
    begin
      float_decoy := PfList.Vehicle.Floating_Decoys[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Floating Decoy'),
        float_decoy.FData.Instance_Identifier + ' - ' + IntToStr
          (float_decoy.FData.Quantity));
    end;
  end;

  // infrared decoy
  if (PfList.Vehicle.Infrared_Decoys <> nil) and
    (PfList.Vehicle.Infrared_Decoys.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Infrared_Decoy');
    for i := 0 to PfList.Vehicle.Infrared_Decoys.Count - 1 do
    begin
      infra_decoy := PfList.Vehicle.Infrared_Decoys[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Infrared_Decoy'),
        infra_decoy.FData.Instance_Identifier + ' - ' + IntToStr
          (infra_decoy.FData.Infrared_Decoy_Qty_On_Board));
    end;
  end;

  // jammer
  if (PfList.Vehicle.Jammers <> nil) and (PfList.Vehicle.Jammers.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Jammers');
    for i := 0 to PfList.Vehicle.Jammers.Count - 1 do
    begin
      jammer := PfList.Vehicle.Jammers[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Jammers'), jammer.FData.Instance_Identifier + ' - 1');
    end;
  end;

  // point effect
  if (PfList.Vehicle.Point_Effects <> nil) and
    (PfList.Vehicle.Point_Effects.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Point Effect');
    for i := 0 to PfList.Vehicle.Point_Effects.Count - 1 do
    begin
      point := PfList.Vehicle.Point_Effects[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Point Effect'), point.FData.Instance_Identifier + ' - ' + IntToStr
          (point.FData.Quantity));
    end;
  end;

  // towed jammer
  if (PfList.Vehicle.Towed_Jammer_Decoys <> nil) and
    (PfList.Vehicle.Towed_Jammer_Decoys.Count > 0) then
  begin
    tvCountermeasures.Items.Add(nil, 'Towed Jammer Decoy');
    for i := 0 to PfList.Vehicle.Towed_Jammer_Decoys.Count - 1 do
    begin
      towed_jam := PfList.Vehicle.Towed_Jammer_Decoys[i];
      tvCountermeasures.Items.AddChild(tvCountermeasures.Items.FieldAddress
          ('Towed Jammer Decoy'),
        towed_jam.FData.Instance_Identifier + ' - ' + IntToStr
          (towed_jam.FData.Quantity));
    end;
  end;
end;

procedure TfrmToteDisplay.RefreshEmbarkedPlatform(PfList: TPlatform_Instance);
var
  i: Integer;
  embarked_plat: THosted_Platform;

begin

  tvEmbarkedPlatforms.Items.Clear;

  // embarked platform
  if (PfList.Vehicle.Hosted_Platform <> nil) then
    for i := 0 to PfList.Vehicle.Hosted_Platform.Count - 1 do
    begin
      embarked_plat := PfList.Vehicle.Hosted_Platform[i];
      tvEmbarkedPlatforms.Items.Add(nil,
        embarked_plat.FVehicle.Vehicle_Identifier);
    end;
end;
}
procedure TfrmToteDisplay.btnCubicleGroupsClick(sender: TObject);
var
  i : Integer;
  li : TListItem;
  grp : T3CubicleGroup;
begin
  gbCubicleGroups.BringToFront;
  lvCubicle.Items.Clear;

  with simMgrClient do
  begin
    for i := 0 to CubAssignList.Count - 1 do
    begin
      grp := T3CubicleGroup(CubAssignList.Items[i]);
      if grp = nil then
        continue;

      if grp.FData.Group_Identifier = 'Controller' then
        Continue;

      li := lvCubicle.Items.Add;
      li.Caption := T3CubicleGroup(CubAssignList.Items[i])
        .FData.Group_Identifier;
      li.SubItems.Add(IntToStr(T3CubicleGroup(CubAssignList.Items[i])
            .FData.Group_Index));
      li.SubItems.Add(IntToStr(T3CubicleGroup(CubAssignList.Items[i])
            .FData.Force_Designation));
      li.SubItems.Add(grp.CubicleName); // add mamik
      li.Data := T3CubicleGroup(CubAssignList.Items[i]);
    end;
  end;

  SetupTvCubicleGroup;
end;

procedure TfrmToteDisplay.btnEnviroControlClick(sender: TObject);
begin
  gbEnvironmentControl.BringToFront;
  DisplayEnvironMentControl;


  Label183.Caption := Char(176) + 'C';
  Label222.Caption := Char(176) + 'C';
end;

procedure TfrmToteDisplay.btnSensorOverrideClick(sender: TObject);
var
  li : TListItem;
  s, forceColor : string;
  pi : TT3PlatformInstance;
  i : Integer;
begin
  gbSensorOverride.BringToFront;
  lvSensorOverride.Items.Clear;

  with simMgrClient do
  begin
    for i := 0 to SimPlatforms.itemCount - 1 do
    begin
      pi := TT3PlatformInstance(SimPlatforms.getObject(i));

	    if not Assigned(pi) then
        Continue;

      s := pi.InstanceName;

      case pi.Force_Designation of
        1:
        begin
          lvSensorOverride.Canvas.Brush.Color := clRed;
          forceColor := 'Red';
        end;
        2:
        begin
          lvSensorOverride.Canvas.Brush.Color := clYellow;
          forceColor := 'Yellow';
        end;
        3:
        begin
          lvSensorOverride.Canvas.Brush.Color := clBlue;
          forceColor := 'Blue';
        end;
        4:
        begin
          lvSensorOverride.Canvas.Brush.Color := clGreen;
          forceColor := 'Green';
        end;
        5:
        begin
          lvSensorOverride.Canvas.Brush.Color := clWhite;
          forceColor := 'No Force';
        end;
        6:
        begin
          lvSensorOverride.Canvas.Brush.Color := clBlack;
          forceColor := 'Black';
        end;
      else
        lvSensorOverride.Canvas.Brush.Color := clBlack;
      end;

      if TT3PlatformInstance(pi).UnitGroup and not pi.FreeMe then
      begin
        li := lvSensorOverride.Items.Add;
        li.Caption := '';
        li.SubItems.Add(pi.InstanceClass);
        li.SubItems.Add(pi.InstanceName);
        li.SubItems.Add(pi.TrackLabel);
        li.SubItems.Add(forceColor);
        li.StateIndex := pi.Force_Designation;
        li.Data := pi;
      end;
    end;
  end;

  if lvSensorOverride.Items.Count > 0 then
    lvSensorOverride.ItemIndex := 0
  else
    lvSensorOverride.ItemIndex := -1;
end;

procedure TfrmToteDisplay.btnSetXMLClick(sender: TObject);
begin
  TreeToXML(self.tvSettings);
end;

procedure TfrmToteDisplay.btnStopDataLinkClick(Sender: TObject);
var
  rec : TRecCmd_DataLink;
begin
  if lvParticipatingUnits.Items.Count <= 0 then
    Exit;

  btnStopDataLink.Down := true;
  btnPlayDataLink.Down := false;

  if ContainsStr(edtDatalink.Text, '1') then
    rec.DataLinkID := 1
  else if ContainsStr(edtDatalink.Text, '2') then
    rec.DataLinkID := 2
  else if ContainsStr(edtDatalink.Text, '3') then
    rec.DataLinkID := 3
  else
    Exit;

  rec.OrderDL := odlStop;
  simMgrClient.netSend_Cmd_DataLink(rec);
end;

procedure TfrmToteDisplay.btnEnviroStatusClick(sender: TObject);
var
  ge: TGame_Environment_Definition;
  StrTime:string;
  SecondTime : Integer;
begin
  gbEnvironmentStatus.BringToFront;
  ge := (simMgrClient).GameEnvironment;

  Label111.Caption := Char(176) + 'C';
  Label108.Caption := Char(176) + 'C';

  with ge.FData do
  begin
    lblSpeedWIndTrue.Caption              := FormatSpeed(Wind_Speed);
    lblDirectionWindTrue.Caption          := FormatCourse(Wind_Direction);
    lblAttenuationFactorsRain.Caption     := IntToStr(Rain_Rate);
//    lblAttenuationFactorsCloud.Caption    := IntToStr(Cloud_Attenuation);

	  lblAttenuationFactorsRain.Caption 	  := IntToStr(Rain_Rate);
    lblAttenuationFactorsCloud.Caption    := FormatFloat('0.00', Cloud_Base_Height);
//    lblWindRelativeDirection.Caption := FormatFloat('0.00', TT3Vehicle(controlle).CourseEnvi);
//    lblWindRelativeSpeed.Caption := FormatFloat('0.00', TT3Vehicle(controlle).SpeedEnvi);

    // lblVisibilityactorsTime.Caption :=
    // lblVisibilityFactorsElectroOptical
    // lblVisibilityFactorsnfrared
    StrTime := FormatDateTime('HH:NN:SS', simMgrClient.GameTIME);
    SecondTime := TimeStringToSecond(StrTime);

    if (SecondTime >= Sunrise) and (SecondTime <= Sunset) then
    begin
      lblVisibilityactorsTime.Caption := 'DayTime';
      lblVisibilityFactorsElectroOptical.Caption := FormatFloat('0.00', Daytime_Visual_Modifier) + '%';
      lblVisibilityFactorsnfrared.Caption := FormatFloat('0.00', Daytime_Infrared_Modifier) + '%';
    end
    else
    begin
      lblVisibilityactorsTime.Caption := 'NightTime';
      lblVisibilityFactorsElectroOptical.Caption := FormatFloat('0.00', Nighttime_Visual_Modifier) + '%';
      lblVisibilityFactorsnfrared.Caption := FormatFloat('0.00', Nighttime_Infrared_Modifier) + '%';
    end;

    lblOtherAirTemp.Caption               := FormatFloat('00.0', Air_Temperature);
    lblOtherBarometric.Caption            := FormatFloat('000.0', Barometric_Pressure);
    lblOceanCurrentSpeed.Caption          := FormatFloat('00.0', Ocean_Current_Speed);
    lblOceanCurrentDirection.Caption      := FormatFloat('000.0', Ocean_Current_Direction);

    case Sound_Velocity_Type of
      0 :
        begin
          lblSoundVelocityProfile.Caption := 'Positive';
        end;
      1 :
        begin
          lblSoundVelocityProfile.Caption := 'Negative';
        end;
      2 :
        begin
          lblSoundVelocityProfile.Caption := 'Positive over negative';
        end;
      3 :
        begin
          lblSoundVelocityProfile.Caption := 'Negative over positive';
        end;
    end;

//    lblSoundVelocityProfile.Caption       := IntToStr(Sound_Velocity_Type);
    lblSoundVelocityLayer.Caption         := FormatFloat('0.0', Thermal_Layer_Depth);
    lblSoundVelocityAverageBottom.Caption := FormatFloat('0.0', Ave_Ocean_Depth);

    case Sea_State of
      0 : lblSeaState.Caption           := 'Calm (glassy)';
      1 : lblSeaState.Caption           := 'Calm (rippled)';
      2 : lblSeaState.Caption           := 'Smooth (wavelets)';
      3 : lblSeaState.Caption           := 'Slight';
      4 : lblSeaState.Caption           := 'Moderate';
      5 : lblSeaState.Caption           := 'Rough';
      6 : lblSeaState.Caption           := 'Very rough';
      7 : lblSeaState.Caption           := 'High';
      8 : lblSeaState.Caption           := 'Very high';
      9,10 : lblSeaState.Caption        := 'Phenomenal';
    end;

//    lblSeaState.Caption                   := IntToStr(Sea_State);
    lblSurfaceTemp.Caption                := FormatFloat('0.0', Surface_Temperature);
  end;

end;

procedure TfrmToteDisplay.btnGetXMLClick(sender: TObject);
var
  XMLDoc: TXMLDocument;
  //temp: string;
  //i: Integer;
begin
  XMLDoc := TXMLDocument.Create(nil);

  // ShowMessage(temp);
  XMLToTree(tvSettings, XMLDoc);
  tvSettings.AutoExpand := False;
  tvSettings.Items[0].Expand(true);
end;

procedure TfrmToteDisplay.btnWeaponEngagementClick(sender: TObject);
begin
  gbWeaponEngagementsSUmmary.BringToFront;
  lvWeaponEngagement.Columns[0].Width := 200;
  lvWeaponEngagement.Columns[1].Width := 200;
  lvWeaponEngagement.Columns[2].Width := 200;
  lvWeaponEngagement.Columns[3].Width := 200;
  lvWeaponEngagement.Columns[4].Width := 200;
end;

procedure TfrmToteDisplay.btSetTimeApplyClick(sender: TObject);
begin
  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, edtSetTime.Text);

  if tvSettings.Selected.SelectedIndex = 0 then exit;

  changeGameSettingValue(tvSettings.Selected.SelectedIndex,edtSetTime.Text);
end;

procedure TfrmToteDisplay.Button25Click(Sender: TObject);
var
  i,j,k : integer;
  AddChannel : TRecModifComm;
  ChannelMapping : TChannelMapping;
  aExternalCom : TExternal_Communication_Channel;
begin
  for i := 0 to lvIn.Items.Count - 1 do
  begin
    if lvIn.Items[i].Selected then
    begin
      for j := 0 to simMgrClient.ListComChannel.Count - 1 do
      begin
        ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.Items[j]);
        if LowerCase(ChannelMapping.GroupName) = LowerCase(edtGroupName.Text) then
        begin
          for k := 0 to ChannelMapping.ListComChannelAvailable.Count - 1 do
          begin
            aExternalCom := TExternal_Communication_Channel(ChannelMapping.ListComChannelAvailable.items[k]);
            if aExternalCom.FData.Channel_Number = StrToInt(lvIn.Items[i].Caption) then
            begin
              AddChannel.GroupID := ChannelMapping.GroupID;
              AddChannel.Channel_Number := aExternalCom.FData.Channel_Number;
              AddChannel.Channel_Ident := aExternalCom.FData.Channel_Identifier;
              AddChannel.Channel_Code := aExternalCom.FData.Channel_Code;
              AddChannel.Channel_Frek := aExternalCom.FData.Channel_Freq;
              AddChannel.Channel_band := aExternalCom.FData.Comms_Band;
              case aExternalCom.FData.Channel_Security  of
                0 : AddChannel.Channel_Security := false;
                1 : AddChannel.Channel_Security := true;
              end;
              AddChannel.Channel_intfr := aExternalCom.FData.Channel_Interference;
              AddChannel.ModifStat := mcsAdd;

              SimMgrClient.netSend_ModifyCommunication(AddChannel);
              Sleep(10);

              Break;
            end;
          end;
          Break;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.Button26Click(Sender: TObject);
var
  i,j,k : integer;
  RemoveChannel : TRecModifComm;
  ChannelMapping : TChannelMapping;
  aExternalCom : TExternal_Communication_Channel;
begin
  for i := 0 to lvOut.Items.Count - 1 do
  begin
    if lvOut.Items[i].Selected then
    begin
      for j := 0 to simMgrClient.ListComChannel.Count - 1 do
      begin
        ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.Items[j]);
        if LowerCase(ChannelMapping.GroupName) = LowerCase(edtGroupName.Text) then
        begin
          for k := 0 to ChannelMapping.ListComChannelMapping.Count - 1 do
          begin
            aExternalCom := TExternal_Communication_Channel(ChannelMapping.ListComChannelMapping.items[k]);
            if aExternalCom.FData.Channel_Number = StrToInt(lvOut.Items[i].Caption) then
            begin
              RemoveChannel.GroupID := ChannelMapping.GroupID;
              RemoveChannel.Channel_Number := aExternalCom.FData.Channel_Number;
              RemoveChannel.Channel_Ident := aExternalCom.FData.Channel_Identifier;
              RemoveChannel.Channel_Code := aExternalCom.FData.Channel_Code;
              RemoveChannel.Channel_Frek := aExternalCom.FData.Channel_Freq;
              RemoveChannel.Channel_band := aExternalCom.FData.Comms_Band;
              case aExternalCom.FData.Channel_Security  of
                0 : RemoveChannel.Channel_Security := false;
                1 : RemoveChannel.Channel_Security := true;
              end;
              RemoveChannel.Channel_intfr := aExternalCom.FData.Channel_Interference;
              RemoveChannel.ModifStat := mcsRemove;

              SimMgrClient.netSend_ModifyCommunication(RemoveChannel);
              Sleep(10);

              Break;
            end;
          end;
          Break;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.Button27Click(Sender: TObject);
var
  I: Integer;
  li : TListItem;
  item : TT3DLEligibleUnitItem;
  rec : TRecCmd_DataLink;
begin
  if lvEligibleUnits.Items.Count <= 0 then
    Exit;

  if lvEligibleUnits.Selected = nil then
    Exit;

  //mekanisme penambahan pada list participant
  for I := 0 to lvEligibleUnits.Items.Count - 1 do
  begin
    li := lvEligibleUnits.Items[I];
    if li.Selected then //jika diselect
    begin
      item := li.Data;

      rec.platformID := item.EUPlatform.InstanceIndex;

      if ContainsStr(edtDatalink.Text, '1') then
        rec.DataLinkID := 1
      else if ContainsStr(edtDatalink.Text, '2') then
        rec.DataLinkID := 2
      else if ContainsStr(edtDatalink.Text, '3') then
        rec.DataLinkID := 3;

      rec.OrderDL := odlAdd;

      simMgrClient.netSend_Cmd_DataLink(rec);
    end;
  end;

  //mekanisme penghapusan setelah pemindahan;
  lvEligibleUnits.DeleteSelected;
end;

procedure TfrmToteDisplay.Button28Click(Sender: TObject);
var
  I : Integer;
  li : TListItem;
  rec,recOffline : TRecCmd_DataLink;
  item : TT3DLParticipatingUnitItem;
begin
  if lvParticipatingUnits.Items.Count <= 0 then
    Exit;
  if lvParticipatingUnits.Selected = nil then
    Exit;

  //mekanisme penambahan pada list participant
  for I := 0 to lvParticipatingUnits.Items.Count - 1 do
  begin
    li := lvParticipatingUnits.Items[I];
    if li.Selected then //jika diselect
    begin
      item := li.Data;
      rec.platformID := item.PUPlatform.InstanceIndex;

      if ContainsStr(edtDatalink.Text, '1') then
        rec.DataLinkID := 1
      else if ContainsStr(edtDatalink.Text, '2') then
        rec.DataLinkID := 2
      else if ContainsStr(edtDatalink.Text, '3') then
        rec.DataLinkID := 3;

      if item.PUNetCenter then begin
        InitialDatalinkRec(recOffline,simMgrClient.DataLinkManager.getDatalink(rec.DataLinkID));

        recOffline.OrderDL := odlStop;
        simMgrClient.netSend_Cmd_DataLink(recOffline);
      end;

      rec.OrderDL := odlRemove;
      simMgrClient.netSend_Cmd_DataLink(rec);
    end;
  end;
end;

procedure TfrmToteDisplay.Button31Click(Sender: TObject);
var
  item : TT3DLParticipatingUnitItem;
  rec : TRecCmd_DataLink;
begin
  if lvParticipatingUnits.Selected = nil then
    Exit;

  item := lvParticipatingUnits.Selected.Data;
  rec.platformID := item.PUPlatform.InstanceIndex;

  if ContainsStr(edtDatalink.Text, '1') then
    rec.DataLinkID := 1
  else if ContainsStr(edtDatalink.Text, '2') then
    rec.DataLinkID := 2
  else if ContainsStr(edtDatalink.Text, '3') then
    rec.DataLinkID := 3;

  rec.OrderDL := odlActivate;

  simMgrClient.netSend_Cmd_DataLink(rec);
end;

procedure TfrmToteDisplay.Button32Click(Sender: TObject);
var
  RecSend : TRecRecordVoice;
  GameInterval : Double;
begin
  //add to Track
  if lvRecordIn.Selected <> nil then
  begin
    with lvRecordOut.Items.Add do
    begin
      Caption := lvRecordIn.Selected.Caption;
      SubItems.Add(lvRecordIn.Selected.SubItems[0]);
      SubItems.Add(lvRecordIn.Selected.SubItems[1]);
    end;

    GameInterval := simMgrClient.GameTIME - simMgrClient.MainVTime.DateTimeOffset;
    GameInterval := Round(GameInterval * 24 * 3600) * 1000 { In Millisecond 1000x};

    With RecSend do
    begin
      ControllerID  := simMgrClient.ConsoleName;
      ChannelID     := StrToInt(lvRecordIn.Selected.Caption);
      ChannelName   := lvRecordIn.Selected.SubItems[0];
      ChannelCode   := lvRecordIn.Selected.SubItems[1];
      ModifStat     := 1;
      TimeInterval  := GameInterval;
    end;

    if simMgrClient.GameSPEED = 1.0 then
      simMgrClient.netSend_CmdRecordAudio(RecSend);

    lvRecordIn.Selected.Delete;
  end;
end;

procedure TfrmToteDisplay.Button33Click(Sender: TObject);
var
  RecSend : TRecRecordVoice;
  GameInterval : Double;
begin
  //remove from track
  if lvRecordOut.Selected <> nil then
  begin
    with lvRecordIn.Items.Add do
    begin
      Caption := lvRecordOut.Selected.Caption;
      SubItems.Add(lvRecordOut.Selected.SubItems[0]);
      SubItems.Add(lvRecordOut.Selected.SubItems[1]);
    end;

    GameInterval := simMgrClient.GameTIME - simMgrClient.MainVTime.DateTimeOffset;
    GameInterval := Round(GameInterval * 24 * 3600) * 1000 { In Millisecond 1000x};

    With RecSend do
    begin
      ControllerID  := simMgrClient.ConsoleName;
      ChannelID     := StrToInt(lvRecordOut.Selected.Caption);
      ChannelName   := lvRecordOut.Selected.SubItems[0];
      ChannelCode   := lvRecordOut.Selected.SubItems[1];
      ModifStat     := 2;
      TimeInterval  := GameInterval;
    end;
    simMgrClient.netSend_CmdRecordAudio(RecSend);

    lvRecordOut.Selected.Delete;
  end;
end;

procedure TfrmToteDisplay.countCurrentEffect;
{var
  v : TT3Vehicle;  }
begin
  {
  OceanCurrentDirection := strtofloat(edtOceanCurrentDirection.Text);
  OceanCurrentSpeed     := strtofloat(edtOceanCurrentSpeed.Text);

  if OceanCurrentSpeed = 0 then
    isOceanCurrentEffect := False
  else
  begin
    isOceanCurrentEffect := True;

    v := simMgrClient.ControlledPlatform as TT3Vehicle;

    v.fCalculationEnvironment.OceanCurrentDirection := OceanCurrentDirection;
    v.fCalculationEnvironment.OceanCurrentSpeed := OceanCurrentSpeed;

    //CurrentHeading := v.getRecentDirectionShip(OrderedHeading, OceanCurrentDirection, OrderedSpeed, OceanCurrentSpeed);
    CurrentSpeed   := v.getRecentSpeedShip(OrderedHeading, OceanCurrentDirection, OrderedSpeed, OceanCurrentSpeed);
    SimMgrClient.netSend_CmdPlatform(v.InstanceIndex, CORD_ID_MOVE, CORD_TYPE_COURSE, CurrentHeading);
    SimMgrClient.netSend_CmdPlatform(v.InstanceIndex, CORD_ID_MOVE, CORD_TYPE_SPEED, CurrentSpeed);
  end;
  }
end;

procedure TfrmToteDisplay.sendWindDir;
var
  Wind_Direction : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
   TryStrToFloat(edtWindDir.Text, Wind_Direction);
   edtWindDir.Text := ' ';
   with rec do
   begin
     rec.Envi_Chance := 2;
     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := Wind_Direction;
   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.sendWindSpeed;
var
  Wind_Speed : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
   TryStrToFloat(edtWindSpeed.Text, Wind_Speed);
   edtWindSpeed.Text := ' ';
   with rec do
   begin
     rec.Envi_Chance := 1;
     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := Wind_Speed;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.sendDayTimeVis;
var
  dayVis: Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
   TryStrToFloat(edtDayVis.Text, dayVis);
   edtDayVis.Text := ' ';
   with rec do
   begin
     rec.Envi_Chance := 3;
     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := dayVis;
   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.sendNightTimeVis;
var
  nightVis: Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
   TryStrToFloat(edtNightVis.Text, nightVis);
   edtNightVis.Text := ' ';
   with rec do
   begin
     rec.Envi_Chance := 4;
     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := nightVis;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.sendOceanCurDir;
var
  OceanCurrent_Direction : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
   TryStrToFloat(edtOceanCurrentDirection.Text, OceanCurrent_Direction);
   edtOceanCurrentDirection.Text := ' ';
   with rec do
   begin
     rec.Envi_Chance := 15;
     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := OceanCurrent_Direction;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.sendOceanCurSpeed;
var
  OceanCurrent_Speed : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
   TryStrToFloat(edtOceanCurrentSpeed.Text, OceanCurrent_Speed);
   edtOceanCurrentSpeed.Text := ' ';
   with rec do
   begin
     rec.Envi_Chance := 14;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := OceanCurrent_Speed;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.SendAllEnviAboveWater;
var
  ValueData : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  //---------------set envvi wind Direction--------------------//
   with rec do
   begin
     rec.Envi_Chance := E_Wind_Direction;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := rw.Degree;
   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Daytime Visual--------------------//
   TryStrToFloat(edtDayVis.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Daytime_Visual_Modifier;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtDayVis.Text = ' ' then
      rec.Value       := trbDaytimeVisual.Position
     else
      rec.Value := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi NightTime Visual--------------------//
   TryStrToFloat(edtNightVis.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Nighttime_Visual_Modifier;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtNightVis.Text = ' '  then
      rec.Value       := trbNighttimeVisual.Position
     else
      rec.Value := ValueData

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi DayTime Infrared--------------------//
   TryStrToFloat(edtDayInfra.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Daytime_Infrared_Modifier;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtDayInfra.Text = ' ' then
      rec.Value       := trbDaytimeInfra.Position
     else
      rec.Value := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi NightTime Infrared--------------------//
   TryStrToFloat(edtNightInfra.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Nighttime_Infrared_Modifier;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtNightInfra.Text= ' ' then
      rec.Value       := trbNighttimeInfra.Position
     else
      rec.Value := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi rain rate--------------------//
   TryStrToFloat(edtAttenRainRate.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Rain_Rate;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtAttenRainRate.Text = ' ' then
      rec.Value := trbAttenRainRate.Position
     else
      rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi cloud attenuation--------------------//
   TryStrToFloat(edtAttenCloud.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Cloud_Attenuation;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

       if edtAttenCloud.Text = ' ' then
        rec.Value := trbAttenCloud.Position
       else
        rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Barometric preasure--------------------//
   TryStrToFloat(edtBarometricPressure.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Barometric_Pressure;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Air Temperature--------------------//
   TryStrToFloat(edtAirTemp.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Air_Temperature;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Cloud Base height--------------------//
   TryStrToFloat(edtCloudBaseHeight.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Cloud_Base_Height;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Atmospheric Refraction--------------------//
   TryStrToFloat(edtAtmRefract.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Atmospheric_Refract_Modifier;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtAtmRefract.Text = ' ' then
      rec.Value := trbAtmRefract.Position
     else
      rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.SendAllEnviDataSurfaceSubsurface;
var
  ValueData : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  //---------------set envvi OceanCurrent Direction--------------------//
   with rec do
   begin
     rec.Envi_Chance := E_Ocean_Current_Direction;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := rw1.Degree;
   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Depht of Thermal Layer--------------------//
   TryStrToFloat(edtDepthTermalLayer.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Thermal_Layer_Depth;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Upper limit Surface Ducting--------------------//
   TryStrToFloat(edtSurfaceDuctUp.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Upper_Limit_Surface_Duct_Depth;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := Value;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Lower Limit Surface Ducting--------------------//
   TryStrToFloat(edtSurfaceDuctLow.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Lower_Limit_Surface_Duct_Depth;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Upper limit SubSurface Ducting--------------------//
   TryStrToFloat(edtSubSurfaceDuctUp.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Upper_Limit_Sub_Duct_Depth;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Lower Limit SubSurface Ducting--------------------//
   TryStrToFloat(edtSubSurfaceDuctLow.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Lower_Limit_Sub_Duct_Depth;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Speed Of Sound Surface--------------------//
   TryStrToFloat(edtSpeedOfSoundSurface.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Surface_Sound_Speed;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Speed Of Sound Layer--------------------//
   TryStrToFloat(edtSpeedOfSoundlayer.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Layer_Sound_Speed;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Speed Of Sound Bottom--------------------//
   TryStrToFloat(edtSpeedOfSoundBottom.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Bottom_Sound_Speed;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Sea State--------------------//
   TryStrToFloat(edtSeaState.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Sea_State;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtSeaState.Text = '' then
      rec.Value := trbSeaState.Position
     else
      rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Bottom Loss Coefficient--------------------//
   TryStrToFloat(edtBottomLost.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Bottomloss_Coefficient;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     if edtBottomLost.Text = '' then
      rec.Value := trbBottomLost.Position
     else
      rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Surface Temperature--------------------//
   TryStrToFloat(edtSurfaceTemperatur.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Surface_Temperature;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Average Ocean Depth--------------------//
   TryStrToFloat(edtAvgOceanDepth.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Ave_Ocean_Depth;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);

  //---------------set envvi Shadow Zone Transmision Loss--------------------//
   TryStrToFloat(edtShadowZone.Text, ValueData);
   with rec do
   begin
     rec.Envi_Chance := E_Shadow_Zone_Trans_Loss;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := ValueData;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.applyEnviAboveWater;
begin
   sendWindDir;
   sendWindSpeed;
   sendDayTimeVis;
   sendNightTimeVis;
   SendAllEnviAboveWater;
end;

procedure TfrmToteDisplay.applyEnviSurfaceSubsurface;
begin
   sendOceanCurDir;
   sendOceanCurSpeed;
   SendAllEnviDataSurfaceSubsurface;
end;

procedure TfrmToteDisplay.Button40Click(Sender: TObject);
begin
   applyEnviAboveWater;
   applyEnviSurfaceSubsurface;
end;

procedure TfrmToteDisplay.btSelectHookedPlatformClick(sender: TObject);
var
  I, Index : Integer;
begin
  Index := 0;

  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if frmTacticalDisplay.cbAssumeControl.ItemIndex <> 0 then
    begin
      lvPlatforms.ItemIndex := frmTacticalDisplay.cbAssumeControl.ItemIndex;
      lvPlatforms.SetFocus;
    end
    else
    begin
      for I := 0 to lvPlatforms.Items.Count - 1 do
      begin
        if TT3PlatformInstance(lvPlatforms.Items[I].Data).InstanceIndex = TT3PlatformInstance(frmTacticalDisplay.cbAssumeControl.Items.Objects[frmTacticalDisplay.cbAssumeControl.ItemIndex]).InstanceIndex then
        begin
          Index := I;
          break;
        end;
      end;

      lvPlatforms.ItemIndex := Index;
      lvPlatforms.SetFocus;
    end;
  end;
end;

procedure TfrmToteDisplay.btSetDistanceApplyClick(sender: TObject);
begin
  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, edtDistance.Text);
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,edtDistance.Text);
end;

procedure TfrmToteDisplay.btSetPercentageClick(sender: TObject);
begin
  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, edtPercentage.Text);
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,edtPercentage.Text);
end;

procedure TfrmToteDisplay.btnPlatformRemovalClick(sender: TObject);
begin
  gbPlatformRemovalSummary.BringToFront;
end;

procedure TfrmToteDisplay.btnSurfaceToAirClick(sender: TObject);
begin
  gbSurfaceToAir.BringToFront;
end;

procedure TfrmToteDisplay.btnSurfaceToSurfaceClick(sender: TObject);
begin
  gbSurfaceToSurface.BringToFront;
end;

procedure TfrmToteDisplay.btnCommInterfeceneClick(sender: TObject);
begin
  gbCommunicationsInterference.BringToFront;
end;

procedure TfrmToteDisplay.btnCommMappingClick(sender: TObject);
begin
   gbCommunicationsChannelMapping.BringToFront;
  //gbCommunicationsChannelDefinition.BringToFront;
  RefreshChannelMapping(edtGroupName.Text);
end;

procedure TfrmToteDisplay.btnCommDefinitionClick(sender: TObject);
begin
  gbCommunicationsChannelDefinition.BringToFront;
end;

procedure TfrmToteDisplay.ForceRed1Click(Sender: TObject);
var
  forceColor : string;
  rec : TRecCmd_DataLink;
begin
  if Trim(edtDatalink.Text) = '' then Exit;

  case TMenuItem(Sender).Tag of
    1:
      begin
        forceColor := 'Force Red';
      end;
    2:
      begin
        forceColor := 'Force Yellow';
      end;
    3:
      begin
        forceColor := 'Force Blue';
      end;
    4:
      begin
        forceColor := 'Force Green';
      end;
    5:
      begin
        forceColor := 'No Force';
      end;
    6:
      begin
        forceColor := 'Force Black';
      end;
  end;

  edtDLForce.Text := forceColor;

  if ContainsStr(edtDatalink.Text, '1') then
    rec.DataLinkID := 1
  else if ContainsStr(edtDatalink.Text, '2') then
    rec.DataLinkID := 2
  else if ContainsStr(edtDatalink.Text, '3') then
    rec.DataLinkID := 3;

  rec.Force := TMenuItem(Sender).Tag;
  rec.OrderDL := odlForce;

  simMgrClient.netSend_Cmd_DataLink(rec);

end;

procedure TfrmToteDisplay.FormCreate(sender: TObject);
var
  i: Integer;
begin
  // DoubleBuffered := True;

  /// hide page tabsheet9
  PageControl3.Pages[1].TabVisible := False;
  pcEnvironmentControl.Pages[2].TabVisible := False;

  if Screen.MonitorCount > 1 then
    i := 1
  else
    i := 0;

  DefaultMonitor := dmDesktop;

  Width := Screen.Monitors[i].Width;
  Height := Screen.Monitors[i].Height;
  Left := Screen.Monitors[i].Left;
  Top := Screen.Monitors[i].Top;

  gbPlatformStatus.Align := alClient;
  gbEnvironmentStatus.Align := alClient;
  gbWeaponEngagementsSUmmary.Align := alClient;
  gbPlatformRemovalSummary.Align := alClient;
  gbSurfaceToAir.Align := alClient;
  gbSurfaceToSurface.Align := alClient;
  gbMessageHandlingSystem.Align := alClient;
  gbCommunicationsChannelDefinition.Align := alClient;
  gbCommunicationsChannelMapping.Align := alClient;
  gbCommunicationsInterference.Align := alClient;
  gbDatalinkControl.Align := alClient;
  gbAudioRecordTracks.Align := alClient;
  gbCubicleGroups.Align := alClient;
  gbEnvironmentControl.Align := alClient;
  gbSensorOverride.Align := alClient;
  gbSettings.Align := alClient;

  setWheel;
  setDefaultHeaderMissile;
  SetDefaultWidthForStringGridMissileEngagement;
  tvSettings.Items[0].Expand(true);

  pnlPlatSensor.Height := 600;
  pnlPlatWeapon.Height := 300;

  { setting header pada string grid }
  setHeaderEmitter;
  setHeaderDataLinkControl;
  setHeaderMergedTrack;
  setHeaderMessageHandling;
  setHeaderAudioRecord;

  setHeaderCommInInjection;

  listTimeEngage := TList.Create;
  listTimeLaunch := TList.Create;

  PopUpMenu := TPopupMenu.Create(nil);
  CpPopUpMenu := TPopupMenu.Create(nil);

  AdjustComponentDisplayPosition;
  Show;
  Repaint;

  //=============
//  FAssetListenerList := TList.Create;
  FLastPlatform := nil;

  //Set Panel Communications Channel Mapping
  Panel35.Width := Panel10.Width div 3;
  Panel37.Width := Panel10.Width div 3 * 2;
end;

procedure TfrmToteDisplay.FormDestroy(sender: TObject);
begin
  ObjectCommunicationDestroy;
  if Assigned (ToteSelectedPlatform) then
    RemoveAssetListener(ToteSelectedPlatform);
//  FAssetListenerList.Free;
end;

procedure TfrmToteDisplay.FormResize(sender: TObject);
begin
  // AdjustComponentDisplayPosition;
  lblImgPanel2.Left := (imgPanel2.Width * 2) div 5;     //platform status
  lblImgPanel14.Left := (imgPanel14.Width * 2) div 7;   //audio record tracks
  lblImgPanel9.Left := (imgPanel9.Width * 2) div 7;     //comm definition
  lblImgPanel10.Left := (imgPanel10.Width * 2) div 7;   //comm mapping
  lblImgPanel11.Left := (imgPanel11.Width * 2) div 7;   //comm interference
  lblImgPanel15.Left := (imgPanel15.Width * 2) div 5;   //cubicle groups
  lblImgPanel12.Left := (imgPanel12.Width * 2) div 5;   //datalink control
  lblimgPanelDS2.Left := (imgPanelDS2.Width * 2) div 5; //datalink status
  lblImgPanel98.Left := (imgPanel98.Width * 2) div 5;   //emitter status
  lblImgPanel16.Left := (imgPanel16.Width * 2) div 7;   //environment control
  lblImgPanel3.Left := (imgPanel3.Width * 2) div 7;     //environment status
  lblImgPanel46.Left := (imgPanel46.Width * 2) div 7;   //merged track status
  lblImgPanel8.Left := (imgPanel8.Width * 2) div 7;     //message handling system
  lblImgPanel6.Left := (imgPanel6.Width * 2) div 7;     //platform removal summary
  lblImgPanel17.Left := (imgPanel17.Width * 2) div 7;   //sensor override
  lblImgPanel43.Left := (imgPanel43.Width * 2) div 5;   //settings
  lblImgPanel4.Left := (imgPanel4.Width * 2) div 7;     //sa missile engage
  lblImgPanel7.Left := (imgPanel7.Width * 2) div 7;     //ss missile engage
  lblImgPanel5.Left := (imgPanel5.Width * 2) div 7;     //weapon engage summary

  imgbtSelectHookedPaltform.Left := (imgPanel13.Width div 2) + 80;//imgPanel13.Width - 370;
  imgbtHookSelectedPlatform.Left := (imgPanel13.Width div 2) + 240;//imgPanel13.Width - 210;
end;


procedure TfrmToteDisplay.Label14Click(Sender: TObject);
begin
  gbCommunicationsChannelDefinition.BringToFront;
end;

procedure TfrmToteDisplay.Label156Click(sender: TObject);
begin
  gbSettings.BringToFront;
end;

procedure TfrmToteDisplay.lvParticipatingUnitsEdited(Sender: TObject;
  Item: TListItem; var S: string);
//var
//  oldS : String;
//  idxDataLink : integer;
//  datalink : TT3DataLink;
//  aValue : Integer;
//  iData : TT3DLParticipatingUnitItem;
begin
//  oldS := S;
//
//  if ContainsStr(edtDatalink.Text, '1') then
//    idxDataLink := 1
//  else if ContainsStr(edtDatalink.Text, '2') then
//    idxDataLink := 2
//  else if ContainsStr(edtDatalink.Text, '3') then
//    idxDataLink := 3;
//
//  iData := Item.Data;
//
//  datalink := simMgrClient.DataLinkManager.getDatalink(idxDataLink);
//  if ASsigned(datalink) then
//  begin
//    if TryStrToInt(S,aValue) then begin
//      if aValue > 0 then
//        if not datalink.ParticipatingUnitNumberExist(aValue) then begin
//          datalink.SetParticipatingUnitNumber(iData.PUPlatform,aValue);
//          SetDataLink(datalink);
//        end;
//    end
//    else
//      S := oldS;
//  end;

end;

procedure TfrmToteDisplay.lvPlatformsCustomDrawItem(sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if (lvPlatforms.ItemIndex <> -1) or (lvPlatforms.Selected = Item) then
  begin
    Canvas.Brush.Color := clGray;
  end;
end;

procedure TfrmToteDisplay.lvPlatformsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos : TPoint;
  I, index : Integer;
begin
  if (lvPlatforms.Selected = nil) or (lvPlatforms.ItemIndex = -1) then
  begin
    if Assigned(simMgrClient.ControlledPlatform) then
    begin
      simMgrClient.ControlledPlatform.Selected := True;
      Exit;
    end;
  end;

  for I := 0 to frmTacticalDisplay.cbAssumeControl.Items.Count - 1 do
  begin
    if Assigned(lvPlatforms.Selected) and (TT3PlatformInstance(frmTacticalDisplay.cbAssumeControl.Items.Objects[I]).InstanceIndex = TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex) then
    begin
      index := I;
      frmTacticalDisplay.cbAssumeControl.ItemIndex := index;
      frmTacticalDisplay.cbAssumeControlChange(self);
      frmTacticalDisplay.fmMapWindow1.Map.Repaint;
      Break;
    end;
  end;

  if not simMgrClient.ISInstructor then Exit;

  if simMgrClient.ISInstructor then begin
    GetCursorPos(pos);
    if (Button = mbRight) and (lvPlatforms.Selected <> nil) then
    begin
      pmPlatformLV.Popup(pos.X, pos.Y);
    end;
  end;
end;

procedure TfrmToteDisplay.StatusOperationClick(sender: TObject);
begin
  //
  lvSystemState.Selected.SubItems[0] := 'Operation';
end;

procedure TfrmToteDisplay.StatusPercentageClick(sender: TObject);
begin
  //
  lvSystemState.Selected.Focused := true;
end;

procedure TfrmToteDisplay.StatusEnableClick(sender: TObject);
begin
  //
  lvSystemState.Selected.SubItems[0] := 'On';
end;

procedure TfrmToteDisplay.StatusPendingClick(sender: TObject);
begin
  //
  lvSystemState.Selected.SubItems[0] := 'Pending';
end;

procedure TfrmToteDisplay.btnDataLinkStatusClick(Sender: TObject);
begin

  lvDS2.Clear;
end;

procedure TfrmToteDisplay.SoundVelocityClick(Sender: TObject);
var
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  case TButton(Sender).Tag of
    0 :
      begin
//        Label203.Alignment := taCenter;
//        Label203.Caption := 'Positive';

        with rec do
        begin
          rec.Envi_Chance := E_Sound_Velocity_Type;

          if lvEnviroArea.ItemIndex <> -1 then
            rec.Envi_Type := lvEnviroArea.ItemIndex
          else
            rec.Envi_Type := 0;

          rec.Value       := 0;

        end;

        if Assigned(lvEnviroArea.Selected) then
        begin
         env := lvEnviroArea.Selected.Data;

          if env is TSubArea_Enviro_Definition then
            rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
          else
            rec.Sub_EnviID := 0;
        end;

        simMgrClient.netSend_CmdSyncEnvi(rec);
      end;
    1 :
      begin
//        Label203.Alignment := taCenter;
//        Label203.Caption := 'Negative';

        with rec do
        begin
          rec.Envi_Chance := E_Sound_Velocity_Type;

          if lvEnviroArea.ItemIndex <> -1 then
            rec.Envi_Type := lvEnviroArea.ItemIndex
          else
            rec.Envi_Type := 0;

          rec.Value       := 1;

        end;

        if Assigned(lvEnviroArea.Selected) then
        begin
         env := lvEnviroArea.Selected.Data;

          if env is TSubArea_Enviro_Definition then
            rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
          else
            rec.Sub_EnviID := 0;
        end;

        simMgrClient.netSend_CmdSyncEnvi(rec);
      end;
    2 :
      begin
//        Label203.Alignment := taCenter;
//        Label203.Caption := 'Positive over negative';

        with rec do
        begin
          rec.Envi_Chance := E_Sound_Velocity_Type;

          if lvEnviroArea.ItemIndex <> -1 then
            rec.Envi_Type := lvEnviroArea.ItemIndex
          else
            rec.Envi_Type := 0;

          rec.Value       := 2;

        end;

        if Assigned(lvEnviroArea.Selected) then
        begin
         env := lvEnviroArea.Selected.Data;

          if env is TSubArea_Enviro_Definition then
            rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
          else
            rec.Sub_EnviID := 0;
        end;

        simMgrClient.netSend_CmdSyncEnvi(rec);
      end;
    3 :
      begin
//        Label203.Alignment := taCenter;
//        Label203.Caption := 'Negative over positive';

        with rec do
        begin
          rec.Envi_Chance := E_Sound_Velocity_Type;

          if lvEnviroArea.ItemIndex <> -1 then
            rec.Envi_Type := lvEnviroArea.ItemIndex
          else
            rec.Envi_Type := 0;

          rec.Value       := 3;

        end;

        if Assigned(lvEnviroArea.Selected) then
        begin
         env := lvEnviroArea.Selected.Data;

          if env is TSubArea_Enviro_Definition then
            rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
          else
            rec.Sub_EnviID := 0;
        end;

        simMgrClient.netSend_CmdSyncEnvi(rec);
      end;
  end;
//
//   with rec do
//   begin
//     rec.Envi_Chance := 15;
//     if lvEnviroArea.ItemIndex <> -1 then
//       rec.Envi_Type := lvEnviroArea.ItemIndex
//     else
//       rec.Envi_Type := 0;
//
//     rec.Value       := OceanCurrent_Direction;
//
//   end;
//
//   if Assigned(lvEnviroArea.Selected) then
//   begin
//     env := lvEnviroArea.Selected.Data;
//
//     if env is TSubArea_Enviro_Definition then
//      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
//     else
//      rec.Sub_EnviID := 0;
//   end;
//
//   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.SpeedButton13Click(Sender: TObject);
var
  P : TPoint;
begin
  GetCursorPos(p);
  PopUpMenu.Popup(p.x, p.y);
end;

procedure TfrmToteDisplay.SpeedButton14Click(Sender: TObject);
var
  P : Tpoint;
begin
  if edtGroupName.Text <> '' then
  begin
    GetCursorPos(p);
    CpPopUpMenu.Popup(p.x, p.y);
  end;
end;

procedure TfrmToteDisplay.SpeedButton28Click(Sender: TObject);
var
  pos : TPoint;
begin
  GetCursorPos(pos);
  pmDetectionStatus.Popup(pos.X, pos.Y);
end;

procedure TfrmToteDisplay.StatusDisableClick(sender: TObject);
begin
  lvSystemState.Selected.SubItems[0] := 'Off';
end;

procedure TfrmToteDisplay.lvPlatformsSelectItem(sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  if (Item = nil) or (item.Data = nil) then
    Exit;

  if Assigned(ToteSelectedPlatform) and (ToteSelectedPlatform = Item.Data)  then
    exit;

  FLastPlatform := ToteSelectedPlatform;
  ToteSelectedPlatform := Item.Data;

  //------- remove asset listener first for old vehicle
  RemoveAssetListener(FLastPlatform);
  //-------

  UpdateVehicle(Item.Data);

  //------- then add asset listener for new one
  AddAssetListener(ToteSelectedPlatform);
  //-------
end;

procedure TfrmToteDisplay.lvSensorOverrideSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  if Item.Selected then
  begin
    SensorOverrideSelectedPlatform := TT3PlatformInstance(Item.Data);

    case SensorOverrideSelectedPlatform.DetectabilityType of
      dtNormalDetection:
      begin
        edtDetectionStatus.Text := 'Normal';
      end;
      dtUndetectable:
      begin
        edtDetectionStatus.Text := 'Never Detected';
      end;
      dtPassiveDetection:
      begin
        edtDetectionStatus.Text := 'Detected by passive sensor only';
      end;
      dtAlwaysVisible:
      begin
        edtDetectionStatus.Text := 'Always Detected';
      end;
    end;
  end
  else
  begin
    SensorOverrideSelectedPlatform := nil;
    edtDetectionStatus.Text := '';
  end;
end;

procedure TfrmToteDisplay.lvSensorsMouseDown(sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos: TPoint;
begin
  // klik kanan
  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if (lvSensors.Selected = nil) or (lvSensors.ItemIndex = -1) then
      Exit;

    GetCursorPos(pos);
    if (Button = mbRight) then
    begin
      if TT3Sensor(lvSensors.Selected.Data).OperationalStatus = sopDamage then
          begin
            damage1.Enabled := False;
            fixed1.Enabled := True;
          end
          else
          begin
            damage1.Enabled := True;
            fixed1.Enabled := False;
          end;

      pmSensor.Popup(pos.X, pos.Y);
    end;
  end;
end;

procedure TfrmToteDisplay.OnStateValueChange(sender : TListView);
begin
  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if (lvSystemState.Selected = nil) or (lvSystemState.ItemIndex = -1) then
      Exit;

    // if percentage status
    if (TListView(sender).Selected.Caption = 'Overall Damage') or
      (TListView(sender).Selected.Caption = 'Speed') or
      (TListView(sender).Selected.Caption = 'Fuel Remaining') then
    begin
      //
    end
    // if operational status
    else if (TListView(sender).Selected.Caption = 'Helm') or
      (TListView(sender).Selected.Caption = 'Propulsion') or
      (TListView(sender).Selected.Caption = 'Communications') then
    begin
      if TListView(sender).Selected.SubItems[0] = 'Propulsion' then
      begin
        TListView(sender).Selected.SubItems[0] := 'Communications';
      end
      else
        TListView(sender).Selected.SubItems[0] := 'Propulsion';
    end
    // if enable/disable
    else if (TListView(sender).Selected.Caption = 'Fuel Leakage') then
    begin
    if TListView(sender).Selected.SubItems[0] = 'No' then
      begin
        TListView(sender).Selected.SubItems[0] := 'Yes';
      end
      else
        TListView(sender).Selected.SubItems[0] := 'No';
    end;
  end;
end;

procedure TfrmToteDisplay.setUpTreeWeapons(weapons: Tlist);
const
  TORPEDO = 0;
  MISSILE = 1;
  MINE = 2;
  GUN = 3;
  BOMB = 4;
var
  tn, temp: TTreeNode;
  i, j: Integer;
  status : String;

  MissileLauncher : TFitted_Weap_Launcher_On_Board;
  launcherNumber : integer;
  //QuantityTote : integer;
begin
  // clear Tree
  tvWeapons.Items.Clear;
  // setup tree
  if Assigned(weapons) then
  begin
    for i := 0 to weapons.Count - 1 do
    begin
      tn := TTreeNode.Create(tvWeapons.Items);
      // GUN
      case TT3Weapon(weapons[I]).WeaponStatus of
        wsAvailable : status := 'Available';
        wsUnavailable : status := 'Unavailable';
        wsDamaged : status := 'Damage';
        wsTooHigh : status := 'Too High';
      end;

      if (TT3Weapon(weapons.Items[i]) is TT3GunOnVehicle) then
      begin
        tn.Text := TT3GunOnVehicle(weapons.Items[i]).InstanceName + ' : ' + status;
        tn.StateIndex := 3;
        tn.Data := TT3GunOnVehicle(weapons.Items[i]);
        tvWeapons.Items.AddObject(nil, tn.Text, tn.Data);

        temp := TTreeNode.Create(tvWeapons.Items);
        temp.Text := IntToStr(TT3GunOnVehicle(tn.Data).Quantity);
        temp := FindText(tvWeapons, tn.Text);

        if temp.HasChildren then
          temp := temp.getNextSibling;

        tvWeapons.Items.AddChildObject(temp,
          IntToStr(TT3GunOnVehicle(tn.Data).Quantity), tn.Data);
      end
      // MISSILE
      else if (TT3Weapon(weapons.Items[i]) is TT3MissilesOnVehicle) then
      begin
        tn.Text := TT3MissilesOnVehicle(weapons.Items[i]).InstanceName + ' : ' + status;
        tn.StateIndex := 1;
        tn.Data := TT3MissilesOnVehicle(weapons.Items[i]);
        tvWeapons.Items.AddObject(nil,
          (tn.Text + ' : ' + IntToStr(TT3MissilesOnVehicle(tn.Data).Quantity)),
          tn.Data);

        for j := 0 to TT3MissilesOnVehicle(weapons.Items[i]).MissileDefinition.FLaunchs.Count - 1 do
        begin
          MissileLauncher := TFitted_Weap_Launcher_On_Board(TT3MissilesOnVehicle(weapons.Items[i]).MissileDefinition.FLaunchs.Items[j]);

          temp      := TTreeNode.Create(tvWeapons.Items);
          temp.Data := MissileLauncher;

          if MissileLauncher.FData.Launcher_Type > 8 then
            launcherNumber :=  MissileLauncher.FData.Launcher_Type - 8
          else
            launcherNumber := MissileLauncher.FData.Launcher_Type;

          temp.Text := 'Launcher ' + IntToStr(launcherNumber);

          //Parent
          temp      := FindText(tvWeapons, tn.Text + ' : '
                       + IntToStr(TT3MissilesOnVehicle(tn.Data).Quantity));

          //Child
          tvWeapons.Items.AddChild(temp, 'Launcher '
                                   + IntToStr(launcherNumber) + ' : '
                                   + IntToStr(MissileLauncher.FData.Launcher_Qty));
        end;

        //Parent
        //temp      := FindText(tvWeapons, tn.Text + ' : '
                     //+ IntToStr(TT3MissilesOnVehicle(tn.Data).Quantity));
      end
      // TORPEDO
      else if (TT3Weapon(weapons.Items[i]) is TT3TorpedoesOnVehicle) then
      begin
        tn.Text := TT3TorpedoesOnVehicle(weapons.Items[i]).InstanceName + ' : ' + status;
        tn.StateIndex := 0;
        tn.Data := TT3TorpedoesOnVehicle(weapons.Items[i]);
        tvWeapons.Items.AddObject(nil, tn.Text + ' : ' + IntToStr
            (TT3TorpedoesOnVehicle(tn.Data).Quantity), tn.Data);

        for j := 0 to TT3TorpedoesOnVehicle(weapons.Items[i]).Quantity - 1 do
        begin
          temp := TTreeNode.Create(tvWeapons.Items);
          temp.Text := 'Launcher ' + IntToStr(j + 1);
          temp := FindText(tvWeapons,
            tn.Text + ' : ' + IntToStr(TT3TorpedoesOnVehicle(tn.Data).Quantity));
          tvWeapons.Items.AddChild(temp, 'Launcher ' + IntToStr(j + 1));
          // FindAdd(tvWeapons, tn.Text, 'Launcher ' + IntToStr(j+1));
        end;
      end
      // BOMB
      else if (TT3Weapon(weapons.Items[i]) is TT3BombONVehicle) then
      begin
        tn.Text := TT3BombONVehicle(weapons.Items[i]).InstanceName + ' : ' + status;
        tn.StateIndex := 4;
        tn.Data := TT3BombONVehicle(weapons.Items[i]);
        tvWeapons.Items.AddObject(nil, tn.Text, tn.Data);

        temp := TTreeNode.Create(tvWeapons.Items);
        temp.Text := IntToStr(TT3BombONVehicle(tn.Data).Quantity);
        temp := FindText(tvWeapons, tn.Text);

        if temp.HasChildren then
          temp := temp.getNextSibling;

        tvWeapons.Items.AddChildObject(temp,
          IntToStr(TT3BombONVehicle(tn.Data).Quantity), tn.Data);
      end
      // MINE
      else if (TT3Weapon(weapons.Items[i]) is TT3MineOnVehicle) then
      begin
        tn.Text := TT3MineOnVehicle(weapons.Items[i]).InstanceName + ' : ' + status;
        tn.StateIndex := 2;
        tn.Data := TT3MineOnVehicle(weapons.Items[i]);
        tvWeapons.Items.AddObject(nil, tn.Text, tn.Data);

        temp := TTreeNode.Create(tvWeapons.Items);
        temp.Text := IntToStr(TT3MineOnVehicle(tn.Data).Quantity);
        temp := FindText(tvWeapons, tn.Text);

        if temp.HasChildren then
          temp := temp.getNextSibling;

        tvWeapons.Items.AddChildObject(temp,
          IntToStr(TT3MineOnVehicle(tn.Data).Quantity), tn.Data);
      end;
    end;
  end;

  // expand all
  tvWeapons.FullExpand;
end;

procedure TfrmToteDisplay.showEmbarkQuantity(sender : TObject);
begin
  if tvEmbarkedPlatforms.Selected = nil then
    Exit;

  tvEmbarkedPlatforms.ReadOnly := false;
  tvEmbarkedPlatforms.Selected.Focused := true;
  tvEmbarkedPlatforms.Selected.EditText;
  {
  edtEmbarkQuantity.Enabled := true;
  edtEmbarkQuantity.Visible := true;

  edtEmbarkQuantity.Text := IntToStr(TT3EmbarkedVehicle(tvEmbarkedPlatforms.Selected.Data).Quantity);
  }
end;

procedure TfrmToteDisplay.lvSystemStateMouseDown(sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos: TPoint;
  Item: TMenuItem;
begin
  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if (lvSystemState.Selected = nil) or (lvSystemState.ItemIndex = -1) then
      Exit;

    GetCursorPos(pos);
    pmState.Items.Clear;

    // if percentage status
    if (TListView(sender).Selected.Caption = 'Overall Damage')  then
    begin
      Item := TMenuItem.Create(self);
      item.Tag := tagOverallDamage;
      Item.Caption := 'Set ' + TListView(sender).Selected.Caption;
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);
    end
    else if (TListView(sender).Selected.Caption = 'Speed') then
    begin
      Item := TMenuItem.Create(self);
      item.Tag := tagSpeed;
      Item.Caption := 'Set ' + TListView(sender).Selected.Caption;
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);
    end
    else if (TListView(sender).Selected.Caption = 'Fuel Remaining') then
    begin
      Item := TMenuItem.Create(self);
      item.Tag := tagFuelRemaining;
      Item.Caption := 'Set ' + TListView(sender).Selected.Caption;
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);
    end
    // if operational status
    else if (TListView(sender).Selected.Caption = 'Helm') or
      (TListView(sender).Selected.Caption = 'Propulsion') or
      (TListView(sender).Selected.Caption = 'Communications') then
    begin
      Item := TMenuItem.Create(self);
      if TListView(sender).Selected.Caption = 'Helm' then
        item.Tag := tagHelm
      else if (TListView(sender).Selected.Caption = 'Propulsion') then
        item.Tag := tagPropulsion
      else if (TListView(sender).Selected.Caption = 'Communications') then
        item.Tag := tagCommunications;

      Item.Caption := 'Operational';
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);

      Item := TMenuItem.Create(self);
      Item.Caption := 'Pending';
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);
    end
    // if enable/disable
    else if (TListView(sender).Selected.Caption = 'Fuel Leakage') then
    begin
      Item := TMenuItem.Create(self);
      item.Tag := tagFuelLeakage;
      Item.Caption := 'Enable';
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);

      Item := TMenuItem.Create(self);
      Item.Caption := 'Disable';
      item.OnClick := Self.StatusClick;
      pmState.Items.Add(Item);
    end;

    if Button = mbRight then
    begin
      pmState.Popup(pos.X, pos.Y);
    end;
  end;
end;

procedure TfrmToteDisplay.pmCountermeasureChange(sender: TObject;
  Source: TMenuItem; Rebuild: Boolean);
begin
  //
end;

procedure TfrmToteDisplay.pmEmbarkedChange(sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  //
end;

procedure TfrmToteDisplay.pmSensorChange(sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  // set object yg diselect
  // lvSensors.Selected.SubItems.Text := pmSensor.Items.ToString;
  inherited;
  // if Assigned(frmTacticalDisplay.fmSensor1.focused_sensor) and (frmTacticalDisplay.fmSensor1.focused_sensor.ClassType = TT3IFFSensor)
  // then
  // begin
  // with TT3IFFSensor(frmTacticalDisplay.fmSensor1.focused_sensor) do
  // begin
  // case TSpeedButton(Sender).Tag of
  // 1: InterrogatorOperateStatus := sopOn;
  // 2: InterrogatorOperateStatus := sopOff;
  // 3: TransponderOperateStatus  := sopOn;
  // 4: TransponderOperateStatus  := sopOff;
  // end;
  // end;
  // end;
end;

procedure TfrmToteDisplay.pmStateChange(sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  //
end;

procedure TfrmToteDisplay.pmWeaponChange(sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  //
end;

procedure TfrmToteDisplay.pnlCommCubClick(Sender: TObject);
begin
  if pnlCommCubBody.Height <> 0 then
    pnlCommCubBody.Height := 0
  else
    pnlCommCubBody.Height := 105;
end;

procedure TfrmToteDisplay.pnlCommOPClick(Sender: TObject);
begin
  if pnlCommOpBody.Height <> 0 then
    pnlCommOpBody.Height := 0
  else
    pnlCommOpBody.Height := 175;//105;
end;

procedure TfrmToteDisplay.pnlManagementOpClick(Sender: TObject);
begin
  if pnlManagementOpBody.Height <> 0 then
    pnlManagementOpBody.Height := 0
  else
    pnlManagementOpBody.Height := 140;
end;

procedure TfrmToteDisplay.pnlStatusCubClick(Sender: TObject);
begin
  if pnlStatusCubBody.Height <> 0 then
    pnlStatusCubBody.Height := 0
  else
    pnlStatusCubBody.Height := 138;
end;

procedure TfrmToteDisplay.pnlStatusOpClick(Sender: TObject);
begin
  if pnlStatusOpBody.Height <> 0 then
    pnlStatusOpBody.Height := 0
  else
    pnlStatusOpBody.Height := 138;
end;

procedure TfrmToteDisplay.pnlWeaponsCubClick(Sender: TObject);
begin
  if pnlWeaponsCubBody.Height <> 0 then
    pnlWeaponsCubBody.Height := 0
  else
    pnlWeaponsCubBody.Height := 70;
end;

procedure TfrmToteDisplay.pnlWeaponsOpClick(Sender: TObject);
begin
  if pnlWeaponsOpBody.Height <> 0 then
    pnlWeaponsOpBody.Height := 0
  else
    pnlWeaponsOpBody.Height := 70;
end;

procedure TfrmToteDisplay.PostKey(key: Word; const shift: TShiftState;
  specialkey: Boolean);
type
   TShiftKeyInfo = record
     shift: Byte ;
     vkey: Byte ;
   end;
   ByteSet = set of 0..7 ;
const
   shiftkeys: array [1..3] of TShiftKeyInfo =
     ((shift: Ord(ssCtrl) ; vkey: VK_CONTROL),
     (shift: Ord(ssShift) ; vkey: VK_SHIFT),
     (shift: Ord(ssAlt) ; vkey: VK_MENU)) ;
var
   flag: DWORD;
   bShift: ByteSet absolute shift;
   j: Integer;
begin
  for j := 1 to 3 do
  begin
    if shiftkeys[j].shift in bShift then
      keybd_event(shiftkeys[j].vkey, MapVirtualKey(shiftkeys[j].vkey, 0), 0, 0) ;
  end;
  if specialkey then
    flag := KEYEVENTF_EXTENDEDKEY
  else
    flag := 0;

  keybd_event(key, MapvirtualKey(key, 0), flag, 0) ;
  flag := flag or KEYEVENTF_KEYUP;
  keybd_event(key, MapvirtualKey(key, 0), flag, 0) ;

  for j := 3 downto 1 do
  begin
    if shiftkeys[j].shift in bShift then
      keybd_event(shiftkeys[j].vkey, MapVirtualKey(shiftkeys[j].vkey, 0), KEYEVENTF_KEYUP, 0) ;
  end;
end;

procedure TfrmToteDisplay.rbAlwaysClick(sender: TObject);
begin
  rbNormal.Checked := False;
  rbAlways.Checked := true;
  rbNever.Checked := False;

  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, 'Always kill if hit');
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Always kill if hit');
end;

procedure TfrmToteDisplay.rbDirectClick(sender: TObject);
begin
  rbRealistic.Checked := False;
  rbDirect.Checked := true;

  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, 'Direct');
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Direct');
end;

procedure TfrmToteDisplay.rbNeverClick(sender: TObject);
begin
  rbNormal.Checked := False;
  rbAlways.Checked := False;
  rbNever.Checked := true;

  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, 'Never kill if hit');
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Never kill if hit');
end;

procedure TfrmToteDisplay.rbNormalClick(sender: TObject);
begin
  rbNormal.Checked := true;
  rbAlways.Checked := False;
  rbNever.Checked := False;

  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, 'Normal');
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Normal');
end;

procedure TfrmToteDisplay.rbRealisticClick(sender: TObject);
begin
  rbRealistic.Checked := true;
  rbDirect.Checked := False;

  if tvSettings.Selected = nil then
    Exit;

  //changeValueTreeSettingItems(tvSettings.Selected, 'Realistic');
  changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Realistic');
end;

procedure TfrmToteDisplay.Tactical1Click(sender: TObject);
begin
  frmTacticalDisplay.Show;
end;

procedure setGroupBoxDimension(gb: TGroupBox; const aLeft, aTop, aWidth,
  aHeight: Integer);
begin
  with gb do
  begin
    Left := aLeft;
    Top := aTop;
    Width := aWidth;
    Height := aHeight;
  end;
end;

procedure TfrmToteDisplay.AdjustComponentDisplayPosition;
var
  w, h: Integer;
  //c: TComponent;
  //gb: TGroupBox;
begin
  // gbPlatformStatus.members
  pnlPlatformRight.Width := gbPlatformStatus.Width div 3;
  if pnlPlatformRight.Height < 740 then
    h := (pnlPlatformRight.Height - 20) div 4
  else
    h := 180;

  pnlPlatSystemState.Height := h + 27; // ditambah tinggi bingkai
  pnlPlatCounterMeasure.Height := h;
  pnlPlatCounterMeasure.Height := h;
  pnlPlatEmbarked.Height := h;

  //agar posisi tampil pertama kalinya diantara bingkai
  edtState.Visible := True;
  edtState.Visible := False;

  btHookSelectedPlatform.Left := pnlPlatformLeft.Width -
    btHookSelectedPlatform.Width - 16;
  btSelectHookedPlatform.Left := btHookSelectedPlatform.Left -
    btSelectHookedPlatform.Width - 8;

  w := lvPlatforms.Width;
  lvPlatforms.Column[0].Width := Round(0.3 * w);
  lvPlatforms.Column[1].Width := Round(0.3 * w);
  lvPlatforms.Column[2].Width := Round(0.2 * w);
  lvPlatforms.Column[3].Width := Round(0.1 * w);

  w := lvSensors.Width;
  lvSensors.Column[0].Width := Round(0.6 * w);
  lvSensors.Column[1].Width := Round(0.3 * w);

  // gbEnvironmentStatus.member
  // gbWeaponEngagementsSUmmary.member
  // lvWeaponEngagement

  { Date/time of engagement
    Launching platform name
    Weapon class name
    Target platform name
    Engagement outcome.
    }

  gbPlatformStatus.BringToFront;

end;

procedure TfrmToteDisplay.TimerEngageTimer(Sender: TObject);
var
  timeString: String;
  hInt, mInt, sInt : Word;
  time : TDateTime;
begin
  if timeIntEngage > 3600 then
    Exit;

  //timeFlight := timeFlight - 1;
  Dec(timeIntEngage);
  hInt := timeIntEngage div 3600;
  mInt := timeIntEngage div 60;
  sInt := timeIntEngage - (hInt * 3600) - (mInt * 60);

  time := EncodeTime(hInt, mInt, sInt, 0);

  timeString := FormatDateTime('hh:mm:ss', time);
  //CountDownTimeFlight(sgSurfacetoAir, timeString);
  if sgSurToSurEditedRow <> 0 then
    sgSurfacetoSurface.Cells[6, sgSurToSurEditedRow] := timeString;
  if sgSurToAirEditedRow <> 0 then
    sgSurfacetoSurface.Cells[6, sgSurToAirEditedRow] := timeString;
  // ketika waktusisa bernilai 0, timer dimatikan
  if (timeIntEngage <= 0) then
  begin
    TimerEngage.Enabled := False;
  end
end;

procedure TfrmToteDisplay.TimerLaunchTimer(Sender: TObject);
var
  timeString: String;
  hInt, mInt, sInt : Word;
  time : TDateTime;
begin
  if timeInt > 3600 then
    Exit;

  //timeFlight := timeFlight - 1;
  Dec(timeInt);
  hInt := timeInt div 3600;
  mInt := timeInt div 60;
  sInt := timeInt - (hInt * 3600) - (mInt * 60);

  time := EncodeTime(hInt, mInt, sInt, 0);

  timeString := FormatDateTime('hh:mm:ss', time);
  //CountDownTimeFlight(sgSurfacetoAir, timeString);
  if sgSurToSurEditedRow <> 0 then
    sgSurfacetoSurface.Cells[7, sgSurToSurEditedRow] := timeString;
  if sgSurToAirEditedRow <> 0 then
    sgSurfacetoSurface.Cells[7, sgSurToAirEditedRow] := timeString;

  // ketika waktusisa bernilai 0, timer dimatikan
  if (timeInt <= 0) then
  begin
    TimerLaunch.Enabled := False;
  end
end;

procedure TfrmToteDisplay.btnLaunchClick(Sender: TObject);
var
  i, LauncherID : Integer;
  ListDTOT : TMissileHaveLaunch;

  recsend : TrecSinc_RBLW;
  mov : TT3MissilesOnVehicle;
  vehicle : TT3Vehicle;
  LauncherOn : TFitted_Weap_Launcher_On_Board;
begin
  i := 0;

  if Assigned(simMgrClient.ControlledPlatform) then
  begin
    if (indexDtot < TT3Vehicle(simMgrClient.ControlledPlatform).MissileWaittoLaunch.Count)
        and (i <> -1) then
    begin
      ListDTOT := TT3Vehicle(simMgrClient.ControlledPlatform).MissileWaittoLaunch[indexDtot];
      ListDTOT.isHaveLaunch := True;
      btnLaunch.Enabled := False;

      with recsend do
      begin
        cmd := 5;
        PlatformID := ListDTOT.parentShipIndex;
        WeaponIndex := ListDTOT.MissileIndex;
        WeaponName := ListDTOT.MissileName;
        LauncherNumber := ListDTOT.LauncherNumber;
        launchDelay := 0;
      end;
      simMgrClient.netSend_CmdSyncRBLW(RecSend);
      Sleep(100);

      rMis.ParentPlatformID := ListDTOT.parentShipIndex;
      rMis.MissileID        := ListDTOT.MissileIndex;
      rMis.TargetPlatformID := ListDTOT.TargetShipIndex;
      LauncherID := StrToInt(sgSurfacetoSurface.Cells[1,SgSSMissileSelectedCell]);
      rMis.LauncherID       := LauncherID;

      vehicle := TT3Vehicle(simMgrClient.ControlledPlatform);
      mov := vehicle.getWeapon(ListDTOT.MissileIndex, TT3MissilesOnVehicle) as TT3MissilesOnVehicle;
      LauncherOn := mov.GetLauncherByID(LauncherID);

      if (mov.Quantity <= mov.MissileDefinition.FLaunchs.Count) and (mov.Quantity > 0) then
      begin
        simMgrClient.netSend_CmdSetLauncherQty(vehicle.InstanceIndex,
          mov.InstanceIndex, LauncherOn.FData.Launcher_Type, (LauncherOn.FData.Launcher_Qty - 1));
        Sleep(100);
        SimMgrClient.netSend_CmdLaunch_Missile(rMis);
        Sleep(100);
        SimMgrClient.netSend_CmdSetQuantity(vehicle.InstanceIndex,
           mov.InstanceIndex, CORD_ID_QUANTITY, CORD_TYPE_WEAPON, (mov.Quantity - 1));
        Sleep(100);
      end
      else if mov.Quantity > 0 then
      begin
        SimMgrClient.netSend_CmdSetQuantity(vehicle.InstanceIndex,
           mov.InstanceIndex, CORD_ID_QUANTITY, CORD_TYPE_WEAPON, (mov.Quantity - 1));
        Sleep(100);
        SimMgrClient.netSend_CmdLaunch_Missile(rMis);
      end;

      with frmTacticalDisplay.fmWeapon1 do
      begin
        if LauncherOn.FData.Launcher_Type > 8 then
          FRippleCountArray[LauncherOn.FData.Launcher_Type-9] := False
        else
          FRippleCountArray[LauncherOn.FData.Launcher_Type-1] := False;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.trbAtmRefractChange(sender: TObject);
begin
  edtAtmRefract.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbAttenCloudChange(sender: TObject);
begin
  edtAttenCloud.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbAttenRainRateChange(sender: TObject);
begin
  edtAttenRainRate.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbBottomLostChange(Sender: TObject);
begin
  edtBottomLost.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbDaytimeInfraChange(sender: TObject);
begin
  edtDayInfra.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbDaytimeVisualChange(sender: TObject);
begin
  edtDayVis.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbNighttimeInfraChange(sender: TObject);
begin
  edtNightInfra.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.trbNighttimeVisualChange(sender: TObject);
begin
  edtNightVis.Text := IntToStr((sender as TTrackBar).Position);

end;

procedure TfrmToteDisplay.trbSeaStateChange(Sender: TObject);
begin
  edtSeaState.Text := IntToStr((sender as TTrackBar).Position);
end;

procedure TfrmToteDisplay.Damage2Click(sender: TObject);
begin
  if tvCountermeasures.Selected = nil then
    Exit;

  with simMgrClient do
  begin
    TT3CounterMeasure(tvCountermeasures.Selected.Data).Status := esDamaged;
  end;
  lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
  lvPlatforms.Selected.Focused := true;
  invalidate;
  UpdateCountermeasureVehicle(TT3Vehicle(lvPlatforms.Selected.Data));
end;

procedure TfrmToteDisplay.DataLink11Click(Sender: TObject);
begin
  edtDatalink.Text := 'Datalink ' + IntToStr(TMenuItem(Sender).Tag);
  FSelectedDataLink := simMgrClient.DataLinkManager.getDatalink(TMenuItem(Sender).Tag);
  SetDataLink(FSelectedDataLink);
end;

procedure TfrmToteDisplay.DetectabilityClick(Sender: TObject);
var
  rec : TRecDetectability;
begin
  if not Assigned(SensorOverrideSelectedPlatform) then
    Exit;

  rec.PlatformID := SensorOverrideSelectedPlatform.InstanceIndex;
  rec.DetectType := TMenuItem(Sender).Tag;

  simMgrClient.netSend_CmdDetectabilityChange(rec);
end;

procedure TfrmToteDisplay.SetSelectedPlatform(track : TT3PlatformInstance);
var
  I: Integer;
  lv : TListItem;
begin
  for I := 0 to lvPlatforms.Items.Count - 1 do
  begin
    lv := lvPlatforms.Items[I];

    if lv.Data = track then
    begin
      lvPlatforms.Items[I].Selected := True;
    end;
  end;
end;

procedure TfrmToteDisplay.DisplayEnvironMentControl;
var
  li: TListItem;
  ge: TGame_Environment_Definition;
  i: Integer;
begin
  lvEnviroArea.Columns[0].Width := lvEnviroArea.Width - 10;
  ge := (simMgrClient).GameEnvironment;

  // while  do

  lvEnviroArea.Clear;
  li := lvEnviroArea.Items.Add;
  li.Caption := 'Default Game Area';
  li.Data := ge;
  // tambahan dari Aldy sub-area
  if ((simMgrClient).GameEnvironment.FSubArea <> nil) and
    ((simMgrClient).GameEnvironment.FSubArea.Count > 0) then
  begin
    for i := 0 to (simMgrClient).GameEnvironment.FSubArea.Count - 1 do
    begin
      li := lvEnviroArea.Items.Add;
      li.Caption := TSubArea_Enviro_Definition
        ((simMgrClient).GameEnvironment.FSubArea[i]).FData.Enviro_Identifier;
      li.Data := TSubArea_Enviro_Definition
        ((simMgrClient).GameEnvironment.FSubArea[i]);
    end;
  end;

  lvEnviroArea.ItemIndex := 0;
  lvEnviroAreaSelectItem(self.lvEnviroArea, lvEnviroArea.Selected, true);

  // if first item then add default

end;

procedure TfrmToteDisplay.ReceiveGameSpeedForRecording(Cmd: TRecCmd_GameCtrl);
var
  i : integer;
  GameInterval : Double;
  RecSend      : TRecRecordVoice;
begin
  GameInterval := simMgrClient.GameTIME - simMgrClient.MainVTime.DateTimeOffset;
  GameInterval := Round(GameInterval * 24 * 3600) * 1000 { In Millisecond 1000x};

  case cmd.GameCtrl of
    CORD_ID_start :
    begin
      RecSend.ControllerID  := simMgrClient.ConsoleName;
      RecSend.ChannelName   := '';
      RecSend.ChannelCode   := '';
      RecSend.ModifStat     := 3;
      RecSend.TimeInterval  := GameInterval;
      simMgrClient.netSend_CmdRecordAudio(RecSend);
      Sleep(100);

      { Start or Resume Recording }
      for i := 0 to lvRecordOut.Items.Count - 1 do
      begin
        RecSend.ControllerID  := simMgrClient.ConsoleName;
        RecSend.ChannelID     := StrToInt(lvRecordOut.Items[i].Caption);
        RecSend.ChannelName   := lvRecordOut.Items[i].SubItems[0];
        RecSend.ChannelCode   := lvRecordOut.Items[i].SubItems[1];
        RecSend.ModifStat     := 1;
        RecSend.TimeInterval  := GameInterval;
        simMgrClient.netSend_CmdRecordAudio(RecSend);
        Sleep(100);
      end;
    end;

    CORD_ID_pause, CORD_ID_game_speed :
    begin
      { Stop or Pause Recording }
      RecSend.ControllerID  := simMgrClient.ConsoleName;
      RecSend.ChannelName   := '';
      RecSend.ChannelCode   := '';
      RecSend.ModifStat     := 3;
      RecSend.TimeInterval  := GameInterval;
      simMgrClient.netSend_CmdRecordAudio(RecSend);
    end;
  end;
end;

procedure TfrmToteDisplay.RefreshCubicle_Platform(cubList: Tlist);
var
  i, int: Integer;
  cub: TCubicle_Group;
  pi: TPlatform_Instance;
  tNode: TTreeNode;
begin
  tvCubicleGroups.Items.Clear;

  // embarked platform

  for i := 0 to cubList.Count - 1 do
  begin
    cub := cubList[i];
    tNode := tvCubicleGroups.Items.Add(nil, cub.FData.Group_Identifier);

    for int := 0 to cub.PlatformInstances.Count - 1 do
    begin
      pi := cub.PlatformInstances[int];
      tvCubicleGroups.Items.AddChildFirst(tNode, pi.FData.Instance_Name);
    end;

  end;

end;

procedure TfrmToteDisplay.TreeToXML(tv: TTreeView);
var
  tn: TTreeNode;
  XMLDoc: TXMLDocument;
  iNode: IXMLNode;

  procedure ProcessTreeItem(tn: TTreeNode; iNode: IXMLNode);
  var
    cNode: IXMLNode;
  begin
    if (tn = nil) then
      Exit;
    cNode := iNode.AddChild('item');
    cNode.Attributes['text'] := tn.Text;
    cNode.Attributes['imageIndex'] := tn.ImageIndex;
    cNode.Attributes['stateIndex'] := tn.StateIndex;

    // child nodes
    tn := tn.getFirstChild;
    while tn <> nil do
    begin
      ProcessTreeItem(tn, cNode);
      tn := tn.getNextSibling;
    end;
  end;

begin
  XMLDoc := TXMLDocument.Create(nil);
  XMLDoc.Active := true;
  iNode := XMLDoc.AddChild('tree2xml');
  iNode.Attributes['app'] := ParamStr(0);

  tn := tv.TopItem;
  while tn <> nil do
  begin
    ProcessTreeItem(tn, iNode);

    tn := tn.getNextSibling;
  end;

  XMLDoc.SaveToFile(ChangeFileExt('setting', '.XML'));

  //XMLDoc := nil;
end;

procedure TfrmToteDisplay.tvCountermeasuresMouseDown(sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos: TPoint;
begin
  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if tvCountermeasures.Selected = nil then
      Exit;

    GetCursorPos(pos);

    if Button = mbRight then
    begin
      tvCountermeasures.Selected := tvCountermeasures.GetNodeAt(x, y);

      if tvCountermeasures.Selected <> nil then
      begin
        if TT3CounterMeasure(tvCountermeasures.Selected.Data).Status = esDamaged then
          begin
            Damage2.Enabled := False;
            Repair2.Enabled := True;
          end
        else if TT3CounterMeasure(tvCountermeasures.Selected.Data).Status = esUnavailable then
          begin
            Damage2.Enabled := False;
            Repair2.Enabled := False;
          end
        else
          begin
            Damage2.Enabled := True;
            Repair2.Enabled := False;
          end;
      end;

      pmCountermeasure.Popup(pos.X, pos.Y);
    end;
  end;

end;

procedure TfrmToteDisplay.tvCubicleGroupsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos : TPoint;
  I : Integer;
  menu : TMenuItem;
  Obj  : TSimObject;
  Pi : TPlatform_Instance;
  cub : T3CubicleGroup;
  //node : TTreeNode;
  //grp : T3CubicleGroup;
  //mem : TPlatform_Instance;
begin
  if tvCubicleGroups.Selected = nil then
    Exit;
  // hide right click action with comment codes below
  {pmCubicleGroup.Items.Clear;

  Obj := tvCubicleGroups.Selected.Data;

  //choco
  if (Button = mbRight) and (tvCubicleGroups.Selected.Level = 2) then
  begin
    if Assigned(Obj) then
    begin
      Pi := TPlatform_Instance(obj);

      if Assigned(Pi) then
      begin
        //get Name All Group
        GetCursorPos(pos);

        with simMgrClient do
        begin
          for i := 0 to CubAssignList.Count - 1 do
          begin
            cub := CubAssignList.Items[i] as T3CubicleGroup;

            if not Assigned(cub) then
              Continue; //mk

            if (cub.FData.Group_Identifier = 'Controller') or
              (cub.FData.Force_Designation <> FMyCubGroup.FData.Force_Designation) then
              Continue;

            menu := TMenuItem.Create(Self);
            menu.Caption := cub.FData.Group_Identifier;
            menu.OnClick := OnPlatformGroupChange;
            pmCubicleGroup.Items.Add(menu);
          end;
        end;

        pmCubicleGroup.Popup(pos.X, pos.Y);
      end;
    end;
  end;       }
end;

procedure TfrmToteDisplay.tvEmbarkedPlatformsEdited(Sender: TObject;
  Node: TTreeNode; var S: string);
var
  value : string;
  iValue : Integer;
  embarkNode : TTreeNode;
  startTag, endTag : string;
  startPos, endPos : Integer;
  time : TDateTime;
  hour , min, sec, mSec : Word;
begin
  embarkNode := Node.Parent;

  if not Assigned(ToteSelectedPlatform) then
    Exit;

  if ContainsStr(S, 'Available') then
  begin
    value := AnsiRightStr(S, 2);
    TryStrToInt(value, iValue);

    SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3EmbarkedVehicle(embarkNode.Data).EmbarkedVehicle.Hosted_Vehicle_Index,
        CORD_ID_QUANTITY, CORD_TYPE_EMBARK, iValue);
  end
  else if ContainsStr(S, 'Ready') then
  begin
    startTag := '[';
    endTag   := ']';
    startPos := Pos(startTag, S) + 1;
    endPos := Pos(endTag, S);

    value := Copy(S, startPos, endPos - startPos);
    time := StrToDateTime(value);
    DecodeTime(time, hour , min, sec, mSec);

    iValue := sec;
    iValue := iValue + (min * 60);
    iValue := iValue + (hour * 3600);

    SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3EmbarkedVehicle(embarkNode.Data).EmbarkedVehicle.Hosted_Vehicle_Index,
        CORD_ID_READYING_TIME, CORD_TYPE_EMBARK, iValue);
  end;

  tvEmbarkedPlatforms.ReadOnly := true;
end;

procedure TfrmToteDisplay.tvEmbarkedPlatformsMouseDown(sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos: TPoint;
  //menu: TMenuItem;
  hoverNode: TTreeNode;
begin

  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if tvEmbarkedPlatforms.Selected = nil then
      Exit;

    GetCursorPos(pos);
    if (Button = mbRight) then
    begin
      hoverNode := tvEmbarkedPlatforms.GetNodeAt(X, Y) ;
      if Assigned(hoverNode) then begin

        if hoverNode.StateIndex = 0 then begin
          pmEmbarked.Items[0].Enabled := false;
          pmEmbarked.Items[1].Enabled := true;
        end;

        if hoverNode.StateIndex = 1 then begin
          pmEmbarked.Items[0].Enabled := true;
          pmEmbarked.Items[1].Enabled := false;
        end;

        if (hoverNode.StateIndex = 2) or (hoverNode.StateIndex = 3) then begin
          pmEmbarked.Items[0].Enabled := false;
          pmEmbarked.Items[1].Enabled := true;
        end;

        pmEmbarked.Popup(pos.X, pos.Y);
      end;

    end;
  end;
end;

procedure TfrmToteDisplay.tvSettingsClick(sender: TObject);
var
  str, temp, Caption: string;
begin
  if TTreeView(sender).Selected <> nil then
  begin
    str := getValueTreeSettingItems;
    if ContainsStr(str, ':') then
    begin
      Caption := getSettingIdentifierItem;
      gbSetTime.Caption := 'Change ' + Caption + ' setting';
      gbSetTime.BringToFront;
      edtSetTime.Text := str;
    end
    else if ContainsStr(str, '%') then
    begin
      Caption := getSettingIdentifierItem;
      gbPercentage.Caption := 'Change ' + Caption + ' setting';
      gbPercentage.BringToFront;
      edtPercentage.Text := str;
    end
    else if (ContainsStr(str, 'Enable') or ContainsStr(str, 'Disable')) then
    begin
      Caption := getSettingIdentifierItem;
      gbSetEnDis.Caption := 'Change ' + Caption + ' setting';
      gbSetEnDis.BringToFront;
      if ContainsStr(str, 'Enable') then
      begin
        cbSetEnDis.Checked := true;
      end
      else
      begin
        cbSetEnDis.Checked := False;
      end;
    end
    else if (ContainsStr(str, 'kill') or ContainsStr(str, 'Normal')) then
    begin
      Caption := getSettingIdentifierItem;
      gbProbability.Caption := 'Change ' + Caption + ' setting';
      gbProbability.BringToFront;
      temp := getValueTreeSettingItems;
      if ContainsStr(temp, 'Normal') then
      begin
        rbNormal.Checked := true;
        rbAlways.Checked := False;
        rbNever.Checked := False;
      end
      else if ContainsStr(temp, 'Always') then
      begin
        rbNormal.Checked := False;
        rbAlways.Checked := true;
        rbNever.Checked := False;
      end
      else if ContainsStr(temp, 'Never') then
      begin
        rbNormal.Checked := False;
        rbAlways.Checked := False;
        rbNever.Checked := true;
      end;
    end
    else if (ContainsStr(str, 'Realistic') or ContainsStr(str, 'Direct')) then
    begin
      Caption := getSettingIdentifierItem;
      gbGuidanceCommand.Caption := 'Change ' + Caption + ' setting';
      gbGuidanceCommand.BringToFront;
      if ContainsStr(str, 'Realistic') then
      begin
        rbRealistic.Checked := true;
        rbDirect.Checked := False;
      end
      else if ContainsStr(str, 'Direct') then
      begin
        rbRealistic.Checked := False;
        rbDirect.Checked := true;
      end;
    end
    else
    begin
      Caption := getSettingIdentifierItem;
      gbDistance.Caption := 'Change ' + Caption + ' setting';
      gbDistance.BringToFront;
      edtDistance.Text := str;
    end;
  end;
end;

procedure TfrmToteDisplay.tvWeaponsEdited(Sender: TObject; Node: TTreeNode;
  var S: string);
var
  value, selectedLauncher, txt : string;
  iValue, iLauncherQuantity, iQuantity, idx, i, j, tmpLauncherQty : Integer;
  cnode,parent : TTreeNode;
  launcher : TFitted_Weap_Launcher_On_Board;
  idLauncher : Byte;
begin
  if Assigned(Node.Parent) then
  begin
    if not tvWeapons.IsEditing then
    begin
      if not Assigned(ToteSelectedPlatform) then
        Exit;

      // ========= GUN QUANTITY SETTING ==========
      if TT3PlatformInstance(Node.Parent.Data) is TT3GunOnVehicle then
      begin
        value:= S;
        TryStrToInt(value, iQuantity);
        SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
          TT3GunOnVehicle(Node.Parent.Data).InstanceIndex {GunDefinition.FPoint.FData.Point_Effect_Index},
          CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
          TT3GunOnVehicle(Node.Parent.Data).InstanceName);
      end
      // ========= MISSILE QUANTITY SETTING ==========
      else if TT3PlatformInstance(Node.Parent.Data) is TT3MissilesOnVehicle then
      begin
        idLauncher := 0;
        launcher   := nil;
        parent := Node.Parent;

        for j := 0 to TT3MissilesOnVehicle(Node.Parent.Data).MissileDefinition.FLaunchs.Count - 1 do
        begin
          launcher := TT3MissilesOnVehicle(Node.Parent.Data).MissileDefinition.FLaunchs.Items[j];
          if j = tvWeapons.Selected.Index then
          begin
            idLauncher := launcher.FData.Launcher_Type;
            Break;
          end;
        end;

        idx := LastDelimiter(':', S);
        value := Copy(S, idx + 2, length(S) - idx +1);
        TryStrToInt(value, iQuantity);

        if Assigned(launcher) then
        begin
          if iQuantity > launcher.FData.Launcher_Max_Qty then
          begin
            iQuantity := lastQuantity;
          end
          else if iQuantity < 0 then //coco 04052012
          begin
            iQuantity := 0;
          end;

          SimMgrClient.netSend_CmdSetLauncherQty(ToteSelectedPlatform.InstanceIndex,
            TT3MissilesOnVehicle(parent.Data).InstanceIndex,
            idLauncher, iQuantity);

          txt := parent.Text;
          idx := LastDelimiter(':', txt);
          value := Copy(txt, idx + 2, length(txt) - idx +1);
          TryStrToInt(value, iValue);

          if iValue > TT3MissilesOnVehicle(parent.Data).MissileDefinition.FLaunchs.Count then
          begin
            SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
              TT3MissilesOnVehicle(parent.Data).InstanceIndex,
              CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue - (iQuantity - lastQuantity),
              TT3MissilesOnVehicle(parent.Data).InstanceName);
          end
          else
          begin
            SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
              TT3MissilesOnVehicle(parent.Data).InstanceIndex,
              CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue + (iQuantity - lastQuantity),
              TT3MissilesOnVehicle(parent.Data).InstanceName);
          end;
        end;
      end
      // ========= TORPEDO QUANTITY SETTING ==========
      else if TT3PlatformInstance(Node.Parent.Data) is TT3TorpedoesOnVehicle then
      begin
        idLauncher := 0;
        launcher   := nil;
        parent := Node.Parent;

        for j := 0 to TT3TorpedoesOnVehicle(Node.Parent.Data).TorpedoDefinition.FLaunchs.Count - 1 do
        begin
          launcher := TT3TorpedoesOnVehicle(Node.Parent.Data).TorpedoDefinition.FLaunchs.Items[j];
          if j = tvWeapons.Selected.Index then
          begin
            idLauncher := launcher.FData.Launcher_Type;
            Break;
          end;
        end;

        idx := LastDelimiter(':', S);
        value := Copy(S, idx + 2, length(S) - idx +1);
        TryStrToInt(value, iQuantity);

        if Assigned(launcher) then
        begin
          if iQuantity > launcher.FData.Launcher_Max_Qty then
          begin
            iQuantity := launcher.FData.Launcher_Max_Qty;
          end
          else if iQuantity < 0 then
          begin
            iQuantity := 0;
          end;

          SimMgrClient.netSend_CmdSetLauncherQty(ToteSelectedPlatform.InstanceIndex,
            TT3TorpedoesOnVehicle(parent.Data).InstanceIndex,
            idLauncher, iQuantity);

          txt := parent.Text;
          idx := LastDelimiter(':', txt);
          value := Copy(txt, idx + 2, length(txt) - idx +1);
          TryStrToInt(value, iValue);

          if iValue > TT3TorpedoesOnVehicle(parent.Data).TorpedoDefinition.FLaunchs.Count then
          begin
            SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
              TT3TorpedoesOnVehicle(parent.Data).InstanceIndex,
              CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue - (iQuantity - lastQuantity),
              TT3TorpedoesOnVehicle(parent.Data).InstanceName);
          end
          else
          begin
            SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
              TT3TorpedoesOnVehicle(parent.Data).InstanceIndex,
              CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue + (iQuantity - lastQuantity),
              TT3TorpedoesOnVehicle(parent.Data).InstanceName);
          end;
        end;
      end
      // ========= MINE QUANTITY SETTING ==========
      else if TT3PlatformInstance(Node.Parent.Data) is TT3MineOnVehicle then begin
//        idx := LastDelimiter(':', S);
//        value := Copy(S, idx + 2, length(S) - idx +1);
        value:= S;
        TryStrToInt(value, iQuantity);

        SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
          TT3MineOnVehicle(Node.Parent.Data).InstanceIndex,
          CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
          TT3MineOnVehicle(Node.Parent.Data).InstanceName);
      end
      // ========= BOMB QUANTITY SETTING ==========
      else if TT3PlatformInstance(Node.Parent.Data) is TT3BombONVehicle then begin
        //idx := LastDelimiter(':', S);
        //value := Copy(S, idx + 2, length(S) - idx +1);
        value:= S;
        TryStrToInt(value, iQuantity);

        SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
          TT3BombONVehicle(Node.Parent.Data).InstanceIndex,
          CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
          TT3BombONVehicle(Node.Parent.Data).InstanceName);
      end
      //========= HYBRID QUANTITY SETTING ==========
      else if TT3PlatformInstance(Node.Parent.Data) is TT3HybridOnVehicle then begin
        //idx := LastDelimiter(':', S);
        //value := Copy(S, idx + 2, length(S) - idx +1);
        value:= S;
        TryStrToInt(value, iQuantity);

        SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
          TT3HybridOnVehicle(Node.Parent.Data).InstanceIndex,
          CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
          TT3HybridOnVehicle(Node.Parent.Data).InstanceName);
      end;
    end;
  end
  else
  begin
    if not Assigned(ToteSelectedPlatform) then
      Exit;

    cnode := tvWeapons.Selected;
    if TT3Unit(cnode.Data) is TT3GunOnVehicle then exit;

    idx := LastDelimiter(':', S);
    value := Copy(S, idx + 2, length(S) - idx +1);
    TryStrToInt(value, iValue);

    countLauncherOn := 0;

    // ========= MISSILE QUANTITY SETTING ==========
    if TT3Unit(Node.Data)is TT3MissilesOnVehicle then begin

      for i := 0 to TT3MissilesOnVehicle(cnode.Data).MissileDefinition.FLaunchs.Count - 1 do
      begin
        launcher := TT3MissilesOnVehicle(cnode.Data).MissileDefinition.FLaunchs.Items[i];

        if launcher.FData.Launcher_Qty > 0 then
          countLauncherOn := countLauncherOn + 1;
      end;

      if (iValue < lastQuantity) and (iValue < countLauncherOn)  then
      begin
        for i := TT3MissilesOnVehicle(cnode.Data).MissileDefinition.FLaunchs.Count - 1 downto 0 do
        begin
          launcher := TT3MissilesOnVehicle(cnode.Data).MissileDefinition.FLaunchs.Items[i];

          if launcher.FData.Launcher_Qty > 0 then
          begin
            if (launcher.FData.Launcher_Qty - (countLauncherOn-iValue)) < 0 then
            begin
              SimMgrClient.netSend_CmdSetLauncherQty(ToteSelectedPlatform.InstanceIndex,
                TT3MissilesOnVehicle(cnode.Data).InstanceIndex,
                launcher.FData.Launcher_Type, 0);

              countLauncherOn := countLauncherOn - launcher.FData.Launcher_Qty;
            end
            else
            begin
              SimMgrClient.netSend_CmdSetLauncherQty(ToteSelectedPlatform.InstanceIndex,
                TT3MissilesOnVehicle(cnode.Data).InstanceIndex,
                launcher.FData.Launcher_Type, launcher.FData.Launcher_Qty - (countLauncherOn-iValue));

              countLauncherOn := countLauncherOn - launcher.FData.Launcher_Qty;
            end;
          end;

          if countLauncherOn = iValue then
            Break;
        end;
      end;												//coco 04052012

      SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3MissilesOnVehicle(cnode.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue,
        TT3MissilesOnVehicle(cnode.Data).InstanceName);
    end

    // ========= TORPEDO QUANTITY SETTING ==========
    else if TT3Unit(Node.Data) is TT3TorpedoesOnVehicle then begin
      for i := 0 to TT3TorpedoesOnVehicle(cnode.Data).TorpedoDefinition.FLaunchs.Count - 1 do
      begin
        launcher := TT3TorpedoesOnVehicle(cnode.Data).TorpedoDefinition.FLaunchs.Items[i];

        if launcher.FData.Launcher_Qty > 0 then
          countLauncherOn := countLauncherOn + 1;
      end;

      if (iValue < lastQuantity) and (iValue < countLauncherOn)  then
      begin
        for i := TT3TorpedoesOnVehicle(cnode.Data).TorpedoDefinition.FLaunchs.Count - 1 downto 0 do
        begin
          launcher := TT3TorpedoesOnVehicle(cnode.Data).TorpedoDefinition.FLaunchs.Items[i];

          if launcher.FData.Launcher_Qty > 0 then
          begin
            if (launcher.FData.Launcher_Qty - (countLauncherOn-iValue)) < 0 then
            begin
              SimMgrClient.netSend_CmdSetLauncherQty(ToteSelectedPlatform.InstanceIndex,
                TT3TorpedoesOnVehicle(cnode.Data).InstanceIndex,
                launcher.FData.Launcher_Type, 0);

              countLauncherOn := countLauncherOn - launcher.FData.Launcher_Qty;
            end
            else
            begin
              SimMgrClient.netSend_CmdSetLauncherQty(ToteSelectedPlatform.InstanceIndex,
                TT3TorpedoesOnVehicle(cnode.Data).InstanceIndex,
                launcher.FData.Launcher_Type, launcher.FData.Launcher_Qty - (countLauncherOn-iValue));

              countLauncherOn := countLauncherOn - launcher.FData.Launcher_Qty;
            end;
          end;

          if countLauncherOn = iValue then
            Break;
        end;
      end;

      SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3TorpedoesOnVehicle(cnode.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue,
        TT3TorpedoesOnVehicle(cnode.Data).InstanceName);
    end
    // ========= MINE QUANTITY SETTING ==========
    else if TT3Unit(Node.Data) is TT3MineOnVehicle then begin
      idx := LastDelimiter(':', S);
      value := Copy(S, idx + 2, length(S) - idx +1);
      TryStrToInt(value, iQuantity);

      SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3MineOnVehicle(cnode.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
        TT3MineOnVehicle(cnode.Data).InstanceName);
    end
    // ========= BOMB QUANTITY SETTING ==========
    else if TT3Unit(Node.Data) is TT3BombONVehicle then begin
      idx := LastDelimiter(':', S);
      value := Copy(S, idx + 2, length(S) - idx +1);
      TryStrToInt(value, iQuantity);

      SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3BombONVehicle(cnode.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
        TT3BombONVehicle(cnode.Data).InstanceName);
    end
    //========= HYBRID QUANTITY SETTING ==========
    else if TT3PlatformInstance(Node.Parent.Data) is TT3HybridOnVehicle then begin
      //idx := LastDelimiter(':', S);
      //value := Copy(S, idx + 2, length(S) - idx +1);
      value:= S;
      TryStrToInt(value, iQuantity);

      SimMgrClient.netSend_CmdSetQuantity(ToteSelectedPlatform.InstanceIndex,
        TT3HybridOnVehicle(Node.Parent.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iQuantity,
        TT3HybridOnVehicle(Node.Parent.Data).InstanceName);
    end;
  end;
end;

procedure TfrmToteDisplay.tvWeaponsKeyPress(Sender: TObject;
  var Key: Char);
var
  node : TTreeNode;
  value : string;
  iValue : Integer;
//  process : boolean;
begin
  if not Assigned(tvWeapons.Selected) then
    Exit;
  if not (Key = #13) then
    Exit;

  node := tvWeapons.Selected.Parent;

  if Assigned(node) then
  begin
    if not tvWeapons.IsEditing then
    begin
      value:= AnsiRightStr(tvWeapons.Selected.Text, 3);
      TryStrToInt(value, iValue);
      //      process := true;
    end;
  end
  else
  begin
    //node := tvWeapons.Selected;

    value:= AnsiRightStr(tvWeapons.Selected.Text, 3);
    TryStrToInt(value, iValue);
    //    process := true;
  end;

//  if process then
//    SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
//      TT3Unit(Node.Data).InstanceIndex,
//      CORD_ID_QUANTITY, CORD_TYPE_WEAPON, iValue,
//      TT3Unit(Node.Data).InstanceName);
end;

procedure TfrmToteDisplay.tvWeaponsMouseDown(sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pos: TPoint;
begin
  if pnlStatusOp.Enabled then //diganti dari category panel ke TPanel
  begin
    if tvWeapons.Selected = nil then
      Exit;

    GetCursorPos(pos);

    if Button = mbRight then
    begin
      tvWeapons.Selected := tvWeapons.GetNodeAt(x, y);

      if tvWeapons.Selected <> nil then
      begin
        if tvWeapons.Selected.Parent <> nil then
        begin
          dam1.Enabled := False;
          Repair1.Enabled := False;
        end
        else
        begin
          if TT3Weapon(tvWeapons.Selected.Data).WeaponStatus = wsDamaged then
          begin
            dam1.Enabled := False;
            Repair1.Enabled := True;
          end
          else if TT3Weapon(tvWeapons.Selected.Data).WeaponStatus = wsUnavailable then
          begin
            dam1.Enabled := False;
            Repair1.Enabled := False;
          end
          else
          begin
            dam1.Enabled := True;
            Repair1.Enabled := False;
          end;
        end;

        pmWeapon.Popup(pos.X, pos.Y);
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.XMLToTree(tv: TTreeView; XMLDoc: TXMLDocument);
var
  iNode: IXMLNode;
  //temp: String;
  procedure ProcessNode(node: IXMLNode; tn: TTreeNode);
  var
    cNode: IXMLNode;
  begin
    if node = nil then
      Exit;
    with node do
    begin
      tn := tv.Items.AddChild(tn, Attributes['text']);
      tn.ImageIndex := Integer(Attributes['imageIndex']);
      tn.StateIndex := Integer(Attributes['stateIndex']);
    end;
    cNode := node.ChildNodes.First;
    while cNode <> nil do
    begin
      ProcessNode(cNode, tn);
      cNode := cNode.NextSibling;
    end;
  end;

(* ProcessNode *)
begin
  tv.Items.Clear;
  // XMLDoc.FileName := ChangeFileExt('setting', '.XML');
  XMLDoc.LoadFromFile('setting.XML');
  XMLDoc.AfterConstruction;
  XMLDoc.Active := true;
  iNode := XMLDoc.DocumentElement.ChildNodes.First;

  while iNode <> nil do
  begin
    ProcessNode(iNode, nil);
    iNode := iNode.NextSibling;
  end;

  XMLDoc.Active := False;
end;

procedure TfrmToteDisplay.DOMShow(ATree: TTreeView; Anode: IXMLNode;
  tNode: TTreeNode);
var
  i: Integer;
  NTNode: TTreeNode;
  NText: string;
  AttrNode: IXMLNode;
begin
  if not(Anode.NodeType = ntElement) then
    Exit;

  NText := '<' + UpperCase(Anode.NodeName) + '>';

  if Anode.IsTextElement then
    NText := NText + '=' + Anode.NodeValue;
  NTNode := ATree.Items.AddChild(tNode, NText);

  // NTNode.ImageIndex := 190;

  for i := 0 to Anode.AttributeNodes.Count - 1 do

  begin
    Application.ProcessMessages;
    AttrNode := Anode.AttributeNodes.Nodes[i];
    // NTNode.ImageIndex := 188;
    ATree.Items.AddChild(NTNode,
      // AttrNode.NodeName + ‘ = “‘ + AttrNode.Text + ‘”‘);
      AttrNode.Text);
  end;

  if Anode.HasChildNodes then
    for i := 0 to Anode.ChildNodes.Count - 1 do
    begin
      Application.ProcessMessages;
      DOMShow(ATree, Anode.ChildNodes.Nodes[i], NTNode);

    end;
  ATree.FullExpand;

end;

procedure TfrmToteDisplay.edtDayInfraKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
  DayInfra : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
     TryStrToFloat(edtDayInfra.Text, DayInfra);
     edtNightVis.Text := ' ';

     with rec do
     begin
       rec.Envi_Chance := E_Daytime_Infrared_Modifier;

       if lvEnviroArea.ItemIndex <> -1 then
         rec.Envi_Type := lvEnviroArea.ItemIndex
       else
         rec.Envi_Type := 0;

       rec.Value       := DayInfra;
     end;

     if Assigned(lvEnviroArea.Selected) then
     begin
       env := lvEnviroArea.Selected.Data;

       if env is TSubArea_Enviro_Definition then
         rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
       else
         rec.Sub_EnviID := 0;
     end;

     simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtDayVisKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
  dayVis : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    TryStrToFloat(edtDayVis.Text, dayVis);
    edtDayVis.Text := ' ';

    with rec do
    begin
      rec.Envi_Chance := 3;

      if lvEnviroArea.ItemIndex <> -1 then
        rec.Envi_Type := lvEnviroArea.ItemIndex
      else
        rec.Envi_Type := 0;

      rec.Value       := dayVis;
    end;

    if Assigned(lvEnviroArea.Selected) then
    begin
      env := lvEnviroArea.Selected.Data;

      if env is TSubArea_Enviro_Definition then
        rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
      else
        rec.Sub_EnviID := 0;
    end;

    simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtEmbarkQuantityKeyPress(Sender: TObject;
      var Key: Char);
begin
  if Key = #13 then
  begin
    SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
        TT3EmbarkedVehicle(tvEmbarkedPlatforms.Selected.Data).EmbarkedVehicle.Hosted_Vehicle_Index,
        CORD_ID_QUANTITY, CORD_TYPE_EMBARK, StrToInt(edtEmbarkQuantity.Text));

    lvPlatforms.Selected.Focused := true;
    lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
    edtEmbarkQuantity.Visible := false;
  end;
end;

procedure TfrmToteDisplay.edtNightInfraKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
  NightInfra : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
     TryStrToFloat(edtDayInfra.Text, NightInfra);
     edtNightVis.Text := ' ';

     with rec do
     begin
       rec.Envi_Chance := E_Nighttime_Infrared_Modifier;

       if lvEnviroArea.ItemIndex <> -1 then
         rec.Envi_Type := lvEnviroArea.ItemIndex
       else
         rec.Envi_Type := 0;

       rec.Value       := NightInfra;
     end;

     if Assigned(lvEnviroArea.Selected) then
     begin
       env := lvEnviroArea.Selected.Data;

       if env is TSubArea_Enviro_Definition then
         rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
       else
         rec.Sub_EnviID := 0;
     end;

     simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtNightVisKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
  nightVis : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
     TryStrToFloat(edtNightVis.Text, nightVis);
     edtNightVis.Text := ' ';

     with rec do
     begin
       rec.Envi_Chance := 4;

       if lvEnviroArea.ItemIndex <> -1 then
         rec.Envi_Type := lvEnviroArea.ItemIndex
       else
         rec.Envi_Type := 0;

       rec.Value       := nightVis;
     end;

     if Assigned(lvEnviroArea.Selected) then
     begin
       env := lvEnviroArea.Selected.Data;

       if env is TSubArea_Enviro_Definition then
         rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
       else
         rec.Sub_EnviID := 0;
     end;

     simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtOceanCurrentDirectionKeyPress(Sender: TObject;
      var Key: Char);
var
  ValKey : set of AnsiChar;
  OceanCurrent_Direction : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    TryStrToFloat(edtOceanCurrentDirection.Text, OceanCurrent_Direction);
    edtOceanCurrentDirection.Text := ' ';

    with rec do
    begin
      rec.Envi_Chance := 15;

      if lvEnviroArea.ItemIndex <> -1 then
        rec.Envi_Type := lvEnviroArea.ItemIndex
      else
        rec.Envi_Type := 0;

      rec.Value       := OceanCurrent_Direction;
    end;

    if Assigned(lvEnviroArea.Selected) then
    begin
      env := lvEnviroArea.Selected.Data;

      if env is TSubArea_Enviro_Definition then
        rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
      else
        rec.Sub_EnviID := 0;
    end;

    simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtOceanCurrentSpeedKeyPress(Sender: TObject;
      var Key: Char);
var
  ValKey : set of AnsiChar;
  OceanCurrent_Speed : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
     TryStrToFloat(edtOceanCurrentSpeed.Text, OceanCurrent_Speed);
     edtOceanCurrentSpeed.Text := ' ';

     with rec do
     begin
       rec.Envi_Chance := 14;

       if lvEnviroArea.ItemIndex <> -1 then
         rec.Envi_Type := lvEnviroArea.ItemIndex
       else
         rec.Envi_Type := 0;

       rec.Value       := OceanCurrent_Speed;
     end;

     if Assigned(lvEnviroArea.Selected) then
     begin
       env := lvEnviroArea.Selected.Data;

       if env is TSubArea_Enviro_Definition then
          rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
       else
          rec.Sub_EnviID := 0;
     end;

     simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtStateKeyPress(Sender: TObject; var Key: Char);
var
  value: Single;
  rec : TRecCmd_Platform_Repair;
  recState : TRecCmd_Change_SystemState;
  tObj     : TSimObject;
  platInstance  : TT3PlatformInstance;
begin
  if edtState.Text = '' then
    Exit;

  if TryStrToFloat(edtState.Text, value) then
  begin
    if Key = #13 then
    begin
      if value < 0 then
        value := 0;

      if value > 100 then
        value := 100;

      tObj := lvPlatforms.Selected.Data;
      if Assigned(tObj) and (tObj is TT3PlatformInstance) then
      begin
       platInstance := TT3PlatformInstance(tObj);

        if tagState = tagOverallDamage then
        begin
          rec.PlatfomID := platInstance.InstanceIndex;
          rec.HealthPercent := 100 - value;
          rec.Health  :=  (rec.HealthPercent/100)*(platInstance.DamageStatus.DamageCapacity);

          if rec.HealthPercent <= 0 then
            rec.nDormant := True
          else
            rec.nDormant := False;

          simMgrClient.netSend_CmdPlatform_Repair(rec);
          edtState.Visible := false;
        end
        else if tagState = tagFuelRemaining then
        begin
          if Assigned(platInstance.UnitMotion) then begin
            if platInstance.UnitMotion.FData.Endurance_Type = 0 then
            begin
              recState.PlatfomID := platInstance.InstanceIndex;
              recState.StateID := tagFuelRemaining;
              recState.nValue := (value/100) * (platInstance.FuelCapacity);

              simMgrClient.netSend_Cmd_Change_SystemState(recState);
              edtState.Visible := false;
            end
            else
            begin
              frmTacticalDisplay.addStatus('Fuel type is UNLIMITED');
              edtState.Visible := false;
            end;
          end;
        end;
      end;
    end;
  end
  else
    ShowMessage('Non Integer Input');
end;

procedure TfrmToteDisplay.edtWeaponQuantityKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if TT3Weapon(tvWeapons.Selected.Data) is TT3GunOnVehicle then
    begin
      //TT3GunOnVehicle(tvWeapons.Selected.Data).Quantity := StrToInt(edtWeaponQuantity.Text);

      SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
        TT3PlatformInstance(tvWeapons.Selected.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, StrToInt(edtWeaponQuantity.Text));
    end
    else if TT3Weapon(tvWeapons.Selected.Data) is TT3MissilesOnVehicle then
    begin
      //TT3MissilesOnVehicle(tvWeapons.Selected.Data).Quantity := StrToInt(edtWeaponQuantity.Text);

      SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
        TT3PlatformInstance(tvWeapons.Selected.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, StrToInt(edtWeaponQuantity.Text));
    end
    else if TT3Weapon(tvWeapons.Selected.Data) is TT3TorpedoesOnVehicle then
    begin
      //TT3TorpedoesOnVehicle(tvWeapons.Selected.Data).Quantity := StrToInt(edtWeaponQuantity.Text);

      SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
        TT3PlatformInstance(tvWeapons.Selected.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, StrToInt(edtWeaponQuantity.Text));
    end
    else if TT3Weapon(tvWeapons.Selected.Data) is TT3MineOnVehicle then
    begin
      //TT3MineOnVehicle(tvWeapons.Selected.Data).Quantity := StrToInt(edtWeaponQuantity.Text);

      SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
        TT3PlatformInstance(tvWeapons.Selected.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, StrToInt(edtWeaponQuantity.Text));
    end
    else if TT3Weapon(tvWeapons.Selected.Data) is TT3BombONVehicle then
    begin
      //TT3BombONVehicle(tvWeapons.Selected.Data).Quantity := StrToInt(edtWeaponQuantity.Text);

      SimMgrClient.netSend_CmdSetQuantity(TT3PlatformInstance(lvPlatforms.Selected.Data).InstanceIndex,
        TT3PlatformInstance(tvWeapons.Selected.Data).InstanceIndex,
        CORD_ID_QUANTITY, CORD_TYPE_WEAPON, StrToInt(edtWeaponQuantity.Text));
    end;

    lvPlatforms.Selected.Focused := true;
    lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
    edtWeaponQuantity.Visible := false;
  end;
end;

procedure TfrmToteDisplay.edtWindDirKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
  Wind_Direction : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
     TryStrToFloat(edtWindDir.Text, Wind_Direction);
     edtWindDir.Text := ' ';

     with rec do
     begin
       rec.Envi_Chance := 2;

       if lvEnviroArea.ItemIndex <> -1 then
         rec.Envi_Type := lvEnviroArea.ItemIndex
       else
         rec.Envi_Type := 0;

       rec.Value       := Wind_Direction;
     end;

     if Assigned(lvEnviroArea.Selected) then
     begin
       env := lvEnviroArea.Selected.Data;

       if env is TSubArea_Enviro_Definition then
        rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
       else
        rec.Sub_EnviID := 0;
     end;

     simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.edtWindSpeedKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
  Wind_Speed : Double;
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
     TryStrToFloat(edtWindSpeed.Text, Wind_Speed);
     edtWindSpeed.Text := ' ';

     with rec do
     begin
       rec.Envi_Chance := 1;

       if lvEnviroArea.ItemIndex <> -1 then
         rec.Envi_Type := lvEnviroArea.ItemIndex
       else
         rec.Envi_Type := 0;

       rec.Value       := Wind_Speed;
     end;

     if Assigned(lvEnviroArea.Selected) then
     begin
       env := lvEnviroArea.Selected.Data;

       if env is TSubArea_Enviro_Definition then
         rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
       else
         rec.Sub_EnviID := 0;
     end;

     simMgrClient.netSend_CmdSyncEnvi(rec);
  end;
end;

procedure TfrmToteDisplay.RotWheelAboveDegreeChange(sender: TObject);
begin
  edtWindDir.Text := FormatFloat('000.0', rw.Degree);
end;

procedure TfrmToteDisplay.RotWheelSurfaceChange(sender: TObject);
begin
  edtOceanCurrentDirection.Text := FormatFloat('000.0', rw1.Degree);
end;

procedure TfrmToteDisplay.SetAvailableQuantity1Click(sender: TObject);
begin
  if tvCountermeasures.Selected = nil then
    Exit;
  tvCountermeasures.Selected.Focused := true;
end;

procedure TfrmToteDisplay.SetAvailableQuantity2Click(sender: TObject);
var
  idx, i  : Integer;
  value, S : string;
begin
  if (tvWeapons.Selected = nil) then
    Exit;

  if tvWeapons.Selected.Parent = nil then
  begin
    if (TT3Weapon(tvWeapons.Selected.Data) is TT3GunOnVehicle) or
       (TT3Weapon(tvWeapons.Selected.Data) is TT3BombONVehicle) or
       (TT3Weapon(tvWeapons.Selected.Data) is TT3MineONVehicle) or
       (TT3Weapon(tvWeapons.Selected.Data) is TT3HybridOnVehicle) then
    begin
      tvWeapons.Selected.getFirstChild.EditText;
      value := tvWeapons.Selected.getFirstChild.Text;
    end
    else
    begin
      tvWeapons.Selected.EditText;
      S := tvWeapons.Selected.Text;
      idx := LastDelimiter(':', S);
      value := Copy(S, idx + 2, length(S) - idx +1);
    end;
  end
  else
  begin
    if (TT3Weapon(tvWeapons.Selected.Parent.Data) is TT3GunOnVehicle) or
       (TT3Weapon(tvWeapons.Selected.Parent.Data) is TT3BombONVehicle) or
       (TT3Weapon(tvWeapons.Selected.Parent.Data) is TT3MineONVehicle) or
       (TT3Weapon(tvWeapons.Selected.Data) is TT3HybridOnVehicle) then
    begin
      tvWeapons.Selected.EditText;
      value := tvWeapons.Selected.Text;
    end
    else
    begin
      tvWeapons.Selected.EditText;
      S := tvWeapons.Selected.Text;
      idx := LastDelimiter(':', S);
      value := Copy(S, idx + 2, length(S) - idx +1);
    end;
  end;

  lastQuantity := StrToInt(value);

  PostKey(VK_RIGHT, [], False);
  for I := 0 to Length(value) - 1 do
    PostKey(VK_LEFT, [ssShift], False);
end;

procedure TfrmToteDisplay.setWheel;
begin
  rw := TRotWheel.Create(self);
  rw.Parent := pnWheelAbove;
  rw.Left := 0;
  rw.Top := 0;
  rw.Width := pnWheelAbove.Width;
  rw.Height := pnWheelAbove.Height;
  rw.OnDegreeChange := RotWheelAboveDegreeChange;

  rw1 := TRotWheel.Create(self);
  rw1.Parent := pnlWheelSurface;
  rw1.Left := 0;
  rw1.Top := 0;
  rw1.Width := pnlWheelSurface.Width;
  rw1.Height := pnlWheelSurface.Height;
  rw1.OnDegreeChange := RotWheelSurfaceChange;
end;

procedure TfrmToteDisplay.setGroupListToDataLinkCombo;
var
  mi : TMenuItem;
  I: Integer;
  cubGroup : T3CubicleGroup;
  forceColor : String;
begin
  pmDLForce.Items.Clear;

  for I := 0 to simMgrClient.CubAssignList.Count - 1 do
  begin
    cubGroup := simMgrClient.CubAssignList.Items[I] as T3CubicleGroup;
	  if not(Assigned(cubGroup)) then
      Continue;

    mi := TMenuItem.Create(pmDLForce);
    case cubGroup.FData.Force_Designation of
      1:
        begin
          forceColor := 'Red';
        end;
      2:
        begin
          forceColor := 'Yellow';
        end;
      3:
        begin
          forceColor := 'Blue';
        end;
      4:
        begin
          forceColor := 'Green';
        end;
      5:
        begin
          forceColor := 'No Force';
        end;
      6:
        begin
          forceColor := 'Black';
        end;
    end;

    mi.Caption := forceColor;
    mi.Tag := cubGroup.FData.Force_Designation;
    mi.Hint := forceColor;
    mi.OnClick := GroupDataLinkClick;

    pmDLForce.Items.Add(mi);
  end;
end;

procedure TfrmToteDisplay.GroupDataLinkClick(Sender : TObject);
var
  //cubGroup : T3CubicleGroup;
  //groupMember : T3CubicleGroupMember;
  I : Integer;
  aPlatform : TT3PlatformInstance;
  li : TListItem;
begin
  if not (Sender is TMenuItem) then
    Exit;

  edtDLForce.Text := TMenuItem(Sender).Hint;

  //cubGroup := simMgrClient.CubAssignList.GetGroupByID(TMenuItem(Sender).Tag) as T3CubicleGroup;
  //clear List
  lvEligibleUnits.Clear;

  for I := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
  begin
    aPlatform := simMgrClient.SimPlatforms.getObject(I) as TT3PlatformInstance;
    if aPlatform is TT3NonRealVehicle then
      Break;

    if aPlatform.Force_Designation = TMenuItem(Sender).Tag then
    begin
      li := lvEligibleUnits.Items.Add;
      li.StateIndex := NON_DATALINK;
      li.ImageIndex := NON_DATALINK;
      li.Caption := aPlatform.InstanceName;
      li.Data := aPlatform;
    end;

  end;

  {
  for I := 0 to cubGroup.FSList.Count - 1 do
  begin
    groupMember := cubGroup.Items[I] as T3CubicleGroupMember;
    aPlatform := simMgrClient.FindT3PlatformByID(groupMember.FData.Platform_Instance_Index);

    //tambahkan platform ke List
    li := lvEligibleUnits.Items.Add;
    li.Caption := aPlatform.InstanceName;
    li.Data := aPlatform;

  end;
  }
end;

procedure TfrmToteDisplay.setDefaultHeaderMissile;
begin
  // set Surface to surface
  with sgSurfacetoSurface do
  begin
    Cells[0, 0] := 'Weapon';
    Cells[1, 0] := 'Cell';
    Cells[2, 0] := 'Status';
    Cells[3, 0] := 'Target';
    Cells[4, 0] := 'Engage Mode';
    Cells[5, 0] := 'Firing Angle';
    Cells[6, 0] := 'Time Until Launch';
    Cells[7, 0] := 'Time Of Flight';
  end;

  // set surface to air
  with sgSurfacetoAir do
  begin
    Cells[0, 0] := 'Launching Platform Name';
    Cells[1, 0] := 'SAM Mount(designation)';
    Cells[2, 0] := 'Target Track Number';
    Cells[3, 0] := 'Target Course';
    Cells[4, 0] := 'Target Ground Speed';
    Cells[5, 0] := 'Target Altitude';
    Cells[6, 0] := 'Time To Wait';
    Cells[7, 0] := 'Time To Intercept';
  end;
end;

procedure TfrmToteDisplay.SetDefaultWidthForStringGridMissileEngagement;
//var
//  i : Integer;
begin
  // set Surface to surface
  with sgSurfacetoSurface do
  begin
    ColWidths[0] := 350;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 200;
    ColWidths[4] := 100;
    ColWidths[5] := 100;
    ColWidths[6] := 150;
    ColWidths[7] := 150;
  end;

  // set surface to air
  with sgSurfacetoAir do
  begin
    ColWidths[0] := 330;
    ColWidths[1] := 120;
    ColWidths[2] := 120;
    ColWidths[3] := 200;
    ColWidths[4] := 120;
    ColWidths[5] := 100;
    ColWidths[6] := 150;
    ColWidths[7] := 150;
  end;
end;

procedure TfrmToteDisplay.setHeaderEmitter;
begin
  with sgEmitters do
  begin
    Cells[0, 0] := '';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Type';
    Cells[3, 0] := 'Spot Number';
    Cells[4, 0] := 'Confidence Level';
    Cells[5, 0] := 'First Detected';
    Cells[6, 0] := 'Last Detected';
  end;
end;

procedure TfrmToteDisplay.setHeaderDataLinkControl;
begin

end;

procedure TfrmToteDisplay.setHeaderMergedTrack;
begin

end;

procedure TfrmToteDisplay.setHeaderMessageHandling;
begin
  {
    with sgMessageSent do
    begin
    Cells[0, 0] := 'To';
    Cells[1, 0] := 'Subject';
    Cells[2, 0] := 'Priority';
    end;

    with sgMessageReceived do
    begin
    Cells[0, 0] := 'To';
    Cells[1, 0] := 'Subject';
    Cells[2, 0] := 'Priority';
    end;

    with sgMessageDraft do
    begin
    Cells[0, 0] := 'To';
    Cells[1, 0] := 'Subject';
    Cells[2, 0] := 'Priority';
    end;
    }
end;

procedure TfrmToteDisplay.setHeaderAudioRecord;
begin
  {
  with sgAvailableExChannel do
  begin
    Cells[0, 0] := 'Channel';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Code';
  end;

  with sgInChannel do
  begin
    Cells[0, 0] := 'Cubicle';
    Cells[1, 0] := 'Position';
  end;

  with sgExChannel do
  begin
    Cells[0, 0] := 'Channel';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Code';
  end;

  with sgAvailableInChannel do
  begin
    Cells[0, 0] := 'Cubicle';
    Cells[1, 0] := 'Position';
  end;
  }
end;

procedure TfrmToteDisplay.setHeaderCommChannelDef;
begin
  with sgCommChannelDef do
  begin
    Cells[0, 0] := 'Enabled';
    Cells[1, 0] := 'Channel';
    Cells[2, 0] := 'Name';
    Cells[3, 0] := 'Code';
    Cells[4, 0] := 'Band';
    Cells[5, 0] := 'Frequency[MHz]';
    Cells[6, 0] := 'Secure';
  end;
end;

procedure TfrmToteDisplay.setHeaderCommChannelMap;
begin
{
  with sgAvailableChannel do
  begin
    Cells[0, 0] := 'Channel';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Code';
  end;

  with sgMappedChannel do
  begin
    Cells[0, 0] := 'Channel';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Code';
    Cells[3, 0] := 'CCT Button';
  end;
 }
end;

procedure TfrmToteDisplay.setHeaderCommInInjection;
begin
  with sgComInInjection do
  begin
    Cells[0, 0] := 'Channel';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Code';
    Cells[3, 0] := 'Sound Effects';
    Cells[4, 0] := 'Record/Replay Interference';
  end;
end;

procedure TfrmToteDisplay.setRoleClient(rc: Integer);
begin
  // instruktur
  if rc = crpInstruktur then
  begin
    {CategoryPanelStatusOp.Enabled := true; //diganti ke TPanel
    CategoryPanelStatusOp.Visible := true;
    CategoryPanelWeaponOp.Enabled := true;
    CategoryPanelWeaponOp.Visible := true;
    CategoryPanelCommOp.Enabled := true;
    CategoryPanelCommOp.Visible := true;
    CategoryPanelManagementOp.Enabled := true;
    CategoryPanelManagementOp.Visible := true;

    CategoryPanelStatusCub.Enabled := False;
    CategoryPanelStatusCub.Visible := False;
    CategoryPanelWeaponCub.Enabled := False;
    CategoryPanelWeaponCub.Visible := False;
    CategoryPanelCommCub.Enabled := False;
    CategoryPanelCommCub.Visible := False;}

    pnlStatusOp.Enabled := True;
    pnlStatusOp.Visible := True;
    pnlStatusOpBody.Enabled := True;
    pnlStatusOpBody.Visible := True;
    pnlWeaponsOp.Enabled := True;
    pnlWeaponsOp.Visible := True;
    pnlWeaponsOpBody.Enabled := True;
    pnlWeaponsOpBody.Visible := True;
    pnlCommOP.Enabled := True;
    pnlCommOP.Visible := True;
    pnlCommOpBody.Enabled := True;
    pnlCommOpBody.Visible := True;
    pnlManagementOp.Enabled := True;
    pnlManagementOp.Visible := True;
    pnlManagementOpBody.Enabled := True;
    pnlManagementOpBody.Visible := True;

    pnlStatusCub.Enabled := False;
    pnlStatusCub.Visible := False;
    pnlStatusCubBody.Enabled := False;
    pnlStatusCubBody.Visible := False;
    pnlWeaponsCub.Enabled := False;
    pnlWeaponsCub.Visible := False;
    pnlWeaponsCubBody.Enabled := False;
    pnlWeaponsCubBody.Visible := False;
    pnlCommCub.Enabled := False;
    pnlCommCub.Visible := False;
    pnlCommCubBody.Enabled := False;
    pnlCommCubBody.Visible := False;
  end
  // cubicle
  else if rc = crpCubicle then
  begin
    {CategoryPanelStatusOp.Enabled := False; //diganti ke TPanel
    CategoryPanelStatusOp.Visible := False;
    CategoryPanelWeaponOp.Enabled := False;
    CategoryPanelWeaponOp.Visible := False;
    CategoryPanelCommOp.Enabled := False;
    CategoryPanelCommOp.Visible := False;
    CategoryPanelManagementOp.Enabled := False;
    CategoryPanelManagementOp.Visible := False;

    CategoryPanelStatusCub.Enabled := true;
    CategoryPanelStatusCub.Visible := true;
    CategoryPanelWeaponCub.Enabled := true;
    CategoryPanelWeaponCub.Visible := true;
    CategoryPanelCommCub.Enabled := true;
    CategoryPanelCommCub.Visible := true;}

    pnlStatusOp.Enabled := False;
    pnlStatusOp.Visible := False;
    pnlStatusOpBody.Enabled := False;
    pnlStatusOpBody.Visible := False;
    pnlWeaponsOp.Enabled := False;
    pnlWeaponsOp.Visible := False;
    pnlWeaponsOpBody.Enabled := False;
    pnlWeaponsOpBody.Visible := False;
    pnlCommOP.Enabled := False;
    pnlCommOP.Visible := False;
    pnlCommOpBody.Enabled := False;
    pnlCommOpBody.Visible := False;
    pnlManagementOp.Enabled := False;
    pnlManagementOp.Visible := False;
    pnlManagementOpBody.Enabled := False;
    pnlManagementOpBody.Visible := False;

    pnlStatusCub.Enabled := True;
    pnlStatusCub.Visible := True;
    pnlStatusCubBody.Enabled := True;
    pnlStatusCubBody.Visible := True;
    pnlWeaponsCub.Enabled := True;
    pnlWeaponsCub.Visible := True;
    pnlWeaponsCubBody.Enabled := True;
    pnlWeaponsCubBody.Visible := True;
    pnlCommCub.Enabled := True;
    pnlCommCub.Visible := True;
    pnlCommCubBody.Enabled := True;
    pnlCommCubBody.Visible := True;
  end;
end;

procedure TfrmToteDisplay.settimeDTOT;
begin
  StartDTOT := TimeOf(simMgrClient.GameTIME);
end;

procedure TfrmToteDisplay.SetTimerMissileLauch(veh : TT3Vehicle);
begin

end;

procedure TfrmToteDisplay.cbSetEnDisClick(sender: TObject);
begin
  if tvSettings.Selected = nil then
    Exit;

  if cbSetEnDis.Checked then
  begin
    changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Enable');
    //changeValueTreeSettingItems(tvSettings.Selected, 'Enable');
  end
  else
  begin
    changeGameSettingValue(tvSettings.Selected.SelectedIndex,'Disable');
    //changeValueTreeSettingItems(tvSettings.Selected, 'Disable');
  end;
end;

procedure TfrmToteDisplay.cbxShippingRateChange(Sender: TObject);
var
  rec: TrecSinc_Envi;
  env : TEnvi;
begin
  //---------------set envvi Shadow Zone Transmision Loss--------------------//
   with rec do
   begin
     rec.Envi_Chance := E_Shipping_Rate;

     if lvEnviroArea.ItemIndex <> -1 then
       rec.Envi_Type := lvEnviroArea.ItemIndex
     else
       rec.Envi_Type := 0;

     rec.Value       := cbxShippingRate.ItemIndex;

   end;

   if Assigned(lvEnviroArea.Selected) then
   begin
     env := lvEnviroArea.Selected.Data;

     if env is TSubArea_Enviro_Definition then
      rec.Sub_EnviID := TSubArea_Enviro_Definition(env).FData.Enviro_Index
     else
      rec.Sub_EnviID := 0;
   end;

   simMgrClient.netSend_CmdSyncEnvi(rec);
end;

procedure TfrmToteDisplay.changeGameSettingValue(index: integer;
  const new: String);
var
  rgs : TRecCmd_GameSetting;
begin

  rgs.SessionID := simMgrClient.SessionID;
  rgs.Index     := index;

  case index of
    GSID_AUTOREMOVEPF, GSID_RPTAIRBUBBLERMV,
    GSID_RPTCHAFFRMV, GSID_RPTSONOBUOYRMV,
    GSID_AIRCRAFTCOLLTERRAIN, GSID_COASTLINECOLL,
    GSID_SimplifiedSensor, GSID_CanLaunchAircraft,
    GSID_LaunchRestrictions, GSID_TidalStreamEffects,
    GSID_WindEffects, GSID_RecordReplayInterf,
    GSID_ControllerSoundEff, GSID_InterfSoundEffects,
    GSID_AutomaticSensorId, GSID_ChaffAttenuation,
    GSID_AutomaticSonarTarget, GSID_EODatalink_1,
    GSID_EODatalink_2, GSID_EODatalink_3, GSID_ESMDatalink_1,
    GSID_ESMDatalink_2,GSID_ESMDatalink_3,GSID_IFFDatalink_1,
    GSID_IFFDatalink_2, GSID_IFFDatalink_3, GSID_RadarDatalink_1,
    GSID_RadarDatalink_2,GSID_RadarDatalink_3,GSID_SonarDatalink_1,
    GSID_SonarDatalink_2,GSID_SonarDatalink_3, GSID_IFFFilter,
    GSID_LandmassOcculting,GSID_ProcessSensorBZ,
    GSID_AcTorpedoDecoySetup, GSID_AntiSurfaceWarEng,
    GSID_AntiSubsurfaceWarEng, GSID_ProcessWeaponBZ:
      begin
        if new = 'Disable' then
          rgs.ValBoolean := false
        else
          rgs.ValBoolean := true;
      end;

    GSID_GuidanceCommand :
      begin
        if new = 'Realistic' then
          rgs.ValByte := 0
        else
          rgs.ValByte := 1;
      end;

    GSID_PROBOFKILL   :
      begin
        if new = 'Normal' then
          rgs.ValByte := 0
        else
        if new = 'Always kill if hit' then
          rgs.ValByte := 1
        else
          rgs.ValByte := 2
      end;

    GSID_WRECKTIME, GSID_FLASHTransmission, GSID_IMMEDTransmission,
    GSID_PRIORITYTransmission, GSID_RoutineTransmission,
    GSID_AcBearingDispLost,GSID_AcBearingDropTrack,
    GSID_AirDropTrack, GSID_AirDispLost,
    GSID_ESMBearingDropTrack, GSID_ESMBearingDispLost,
    GSID_SubsurfaceDropTrack, GSID_SubsurfaceDispLost,
    GSID_SurfaceLandDropTrack, GSID_SurfaceLandDispLost,
    GSID_VisualVisDetectF :
      begin
        rgs.ValInteger := TimeStringToSecond(new);
      end;

    GSID_CubicalGroupClutter :
      begin
        TryStrToFloat(new,rgs.ValDouble);
      end;

  end;

  if rgs.Index > 0 then
    SimMgrClient.netSend_GameSetting(rgs);

end;

procedure TfrmToteDisplay.changeValueTreeSettingItems(node: TTreeNode;
  const new: String);
var
  //s: String;
  temp: String;
begin
  if node <> nil then
  begin
    temp := getValueTreeSettingItems;
    node.Text := ReplaceStr(node.Text, temp, new);
  end;
end;

procedure TfrmToteDisplay.changeWreckTimeRemoval(Value: integer);
var node : TTreeNode;
begin
  if tvSettings.Items.Count <= 0 then exit;

  node := GetItemByIndex(tvSettings.Items.Item[0],GSID_WRECKTIME);
  if node <> nil then
    changeValueTreeSettingItems(node,SecondToTimeString(Value));

end;

procedure TfrmToteDisplay.dam1Click(sender: TObject);
var
  node : TTreeNode;
  stats : Byte;
begin
  if (tvWeapons.Selected = nil) and not (tvWeapons.Selected.Parent = nil ) then
    Exit;

  node := tvWeapons.Selected;
  stats := Byte(wsDamaged);

  if not Assigned(ToteSelectedPlatform) then
    Exit;

  SimMgrClient.netSend_CmdSetStatus(ToteSelectedPlatform.InstanceIndex,
      TT3PlatformInstance(node.Data).InstanceIndex,
      CORD_ID_QUANTITY, CORD_TYPE_WEAPON, stats);

  lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
  lvPlatforms.Selected.Focused := true;
  Invalidate;
end;

procedure TfrmToteDisplay.damage1Click(sender: TObject);
//var
  //index : Integer;
  //ve : TT3Vehicle;
begin
  if (lvSensors.Selected = nil) or (lvSensors.ItemIndex = -1) then
    Exit;

  // TT3Sensor(lvSensors.Selected.Data).OperationalStatus := sopDamage;
  //index := TT3Sensor(TT3Vehicle(lvPlatforms.Selected.Data).Devices.Items
  //    [lvSensors.ItemIndex]).InstanceIndex;
  with simMgrClient do
  begin
    TT3Sensor(lvSensors.Selected.Data).OperationalStatus := sopDamage;
  end;
  lvPlatformsSelectItem(lvPlatforms, lvPlatforms.Selected, True);
  lvPlatforms.Selected.Focused := true;
  Invalidate;
  UpdateSensorVehicle(TT3Vehicle(lvPlatforms.Selected.Data));
end;

function TfrmToteDisplay.getValueTreeSettingItems: String;
var
  str: String;
  return: String;
  start, ending: Integer;
begin
  str := tvSettings.Selected.Text;
  ending := Length(str);
  start := pos('[', str) + 1;
  return := Copy(str, start, ending - start);
  Result := return;
end;

procedure TfrmToteDisplay.HF1Click(Sender: TObject);
var
  rec : TRecCmd_DataLink;
begin
  if Trim(edtDatalink.Text) = '' then exit;

  if ContainsStr(edtDatalink.Text, '1') then
    rec.DataLinkID := 1
  else if ContainsStr(edtDatalink.Text, '2') then
    rec.DataLinkID := 2
  else if ContainsStr(edtDatalink.Text, '3') then
    rec.DataLinkID := 3;

  case TMenuItem(Sender).Tag of
    1 :
    begin
      rec.Band    := dlbHF;
      edtDLBand.Text := 'HF';
    end;
    2 :
    begin
      rec.Band    := dlbUVHF;
      edtDLBand.Text := 'UHF/VHF';
    end;
  end;

  rec.OrderDL := odlBand;
  simMgrClient.netSend_Cmd_DataLink(rec);
end;

procedure TfrmToteDisplay.imgbtHookSelectedPlatformMouseEnter(Sender: TObject);
begin
  imgbtHookSelectedPlatform.Picture.LoadFromFile('.\data\Bitmap\tote\hook selected_on.bmp');
end;

procedure TfrmToteDisplay.imgbtHookSelectedPlatformMouseLeave(Sender: TObject);
begin
  imgbtHookSelectedPlatform.Picture.LoadFromFile('.\data\Bitmap\tote\hook selected_off.bmp');
end;

procedure TfrmToteDisplay.imgbtSelectHookedPaltformMouseLeave(Sender: TObject);
begin
  imgbtSelectHookedPaltform.Picture.LoadFromFile('.\data\Bitmap\tote\select hooked_off.bmp');
end;

procedure TfrmToteDisplay.imgbtSelectHookedPaltformMouseEnter(Sender: TObject);
begin
  imgbtSelectHookedPaltform.Picture.LoadFromFile('.\data\Bitmap\tote\select hooked_on.bmp');
end;

procedure TfrmToteDisplay.Inactive1Click(Sender: TObject);
begin
  //sementra
  edtDLForce.Text := 'Inactive';
end;

procedure TfrmToteDisplay.InitialDatalinkRec(var rec: TRecCmd_DataLink;datalink : TT3Datalink);
  procedure InitialArrInt(var arr : array of Integer);
  var
    i : integer;
  begin
    for i := 0 to Length(arr) - 1 do
      arr[i] := 0;

  end;
begin

  with rec do
  begin
    DataLinkID  := datalink.IDLink;
    Force       := datalink.GroupForce;
    Band        := datalink.BandType;
    PUStatus    := 0;
    platformID  := 0;
    PooledPUID  := 0;
    OrderDL     := 0;

    InitialArrInt(PooledTracksID);
  end;
end;

procedure TfrmToteDisplay.Initialize;
begin
  if Screen.MonitorCount > 1 then
  begin
    Width := Screen.Monitors[vGameDataSetting.ToteScreen].Width;
    Height := Screen.Monitors[vGameDataSetting.ToteScreen].Height;
    Left := Screen.Monitors[vGameDataSetting.ToteScreen].Left;
    Top := Screen.Monitors[vGameDataSetting.ToteScreen].Top;
  end
  else
  begin
    Width := Screen.Monitors[0].Width;
    Height := Screen.Monitors[0].Height;
    Left := Screen.Monitors[0].Left;
    Top := Screen.Monitors[0].Top;
  end;
end;

function TfrmToteDisplay.getSettingIdentifierItem;
var
  str: String;
  return: String;
  ending: Integer;
begin
  str := tvSettings.Selected.Text;
  ending := pos('[', str);
  return := Copy(str, 0, ending - 1);
  Result := return;
end;

{ ________________________________________________ }

function TfrmToteDisplay.NewNode(tr: TTreeView; pNode: TTreeNode;
  Const sNodeText: String): TTreeNode;
begin
  if pNode = nil then
  begin
    Result := tr.Items.Add(nil, sNodeText)
  end
  else
  begin
    Result := tr.Items.AddChild(pNode, sNodeText);
  end;
end;

{ ________________________________________________ }
function TfrmToteDisplay.FindText(tr: TTreeView;
  Const SearchText: string): TTreeNode;
var
  i, StartIndex: Integer;
begin
  Result := nil;
  if tr.Items.Count = 0 then
    Exit;

  // ini sing nggarai error trus klo didebug
  {try
    StartIndex := tr.Selected.absoluteindex except StartIndex := 0
  end;}

  if Assigned(tr.Selected) then
    StartIndex := tr.Selected.absoluteindex
  else
    StartIndex := 0;

  for i := StartIndex to tr.Items.Count - 1 do
    if UpperCase(Trim(tr.Items[i].Text)) = UpperCase(Trim(SearchText)) then
    begin
      Result := tr.Items[i];
      Exit;
    end;
  for i := 0 to StartIndex do
    if UpperCase(Trim(tr.Items[i].Text)) = UpperCase(Trim(SearchText)) then
    begin
      Result := tr.Items[i];
      Exit;
    end;
end;
{ ________________________________________________ }

function TfrmToteDisplay.FindAdd(tr: TTreeView;
  Const SearchText, sNodeText: string): TTreeNode;
begin
  Result := NewNode(tr, FindText(tr, SearchText), sNodeText);
end;
{ ________________________________________________ }

procedure TfrmToteDisplay.SetupTvCubicleGroup;
var
  found       : Boolean;
  i, j, k     : Integer;
  lbl         : string;
  grp         : T3CubicleGroup;
  grm         : T3CubicleGroupMember;
  tn, tnItem  : TTreeNode;
  pi          : TPlatform_Instance;
begin
  tvCubicleGroups.Items.Clear;

  with simMgrClient do
  begin
    tn := tvCubicleGroups.Items.GetFirstNode;
    tn := tvCubicleGroups.Items.AddChild(tn, 'Cubicle Groups');

    for i := 0 to CubAssignList.Count - 1 do
    begin
      grp := T3CubicleGroup(CubAssignList.Items[i]);
      if grp = nil then
        continue;

      if grp.FData.Group_Identifier = 'Controller' then
        Continue;

      // set Treeview Cublicles---------------------------------------
      if grp.CubicleName = '' then
        lbl := IntToStr(grp.FData.Group_Index) + ' - ' + grp.FData.Group_Identifier
      else
        lbl := IntToStr(grp.FData.Group_Index) + ' - ' + grp.FData.Group_Identifier + ' - ' + grp.CubicleName;

      tnItem := tvCubicleGroups.Items.AddChildObject(tn, lbl, grp);

      for j := 0 to grp.Count - 1 do
      begin
        grm := T3CubicleGroupMember(grp.Items[j]);
        if grm = nil then
          continue;

        k := 0;
        found := False;
        pi := nil;

        if Assigned(VScenario.Platform_Insts) then
        begin
          while not found and (k < VScenario.Platform_Insts.Count) do
          begin
            pi := VScenario.Platform_Insts[k];
            found := grm.FData.Platform_Instance_Index = pi.FData.Platform_Instance_Index;
            Inc(k);
          end;

          if found then
            tvCubicleGroups.Items.AddChildObject(tnItem, pi.FData.Instance_Name, pi);
        end;
      end;
    end;
  end;

  tvCubicleGroups.FullExpand;
end;

procedure TfrmToteDisplay.OnWeaponEngaged(Sender, Target: TObject; Launcher : Integer);
var
  li: TListItem;
  emptyRow, i: Integer;
  wc, FiringModeStr: String;
  time : TDateTime;
  rec : TRec_Time_Row;

  Distance : Double;
  Timeflight : Double;
  mov : TT3MissilesOnVehicle;
  LaunchObj : TFitted_Weap_Launcher_On_Board;

  sObject : TSimObject;
  trackNum : string;
begin
  if not Assigned(Sender) then exit;

  time := simMgrClient.GameTIME;
  li := lvWeaponEngagement.Items.Add;
  { Time, Launching Platform, Weapon Class, Target Platform, Engagement }
  li.Caption := FormatDateTime('hh : mm : ss', time);
  li.SubItems.Add(TT3Weapon(sender).InstanceName);

  case TT3Weapon(sender).WeaponCategory of
    wcMissileAirToSurfaceSubsurface:
      wc := 'Missile Air To Surface Subsurface';
    wcMissileSurfaceSubsurfaceToAir:
      wc := 'Missile Surface Subsurface To Air';
    wcMissileSurfaceSubsurfaceToSurfaceSubsurface:
      wc := 'Missile Surface/Subsurface To Surface/Subsurface';
    wcMissileAirToAir:
      wc := 'Missile Air To Air';
    wcMissileLandAttack:
      wc := 'Missile Land Attack';
    wcTorpedoStraigth:
      wc := 'Torpedo Straigth';
    wcTorpedoActiveAcoustic:
      wc := 'Torpedo Active Acoustic';
    wcTorpedoPassiveAcoustic:
      wc := 'Torpedo Passive Acoustic';
    wcTorpedoWireGuided:
      wc := 'Torpedo Wire Guided';
    wcTorpedoWakeHoming:
      wc := 'Torpedo Wake Homing';
    wcTorpedoActivePassive:
      wc := 'Torpedo Active Passive';
    wcTorpedoAirDropped:
      wc := 'Torpedo Air Dropped';
    wcMine:
      wc := 'Mine';
    wcGunCIWS:
      wc := 'Gun CIWS';
    wcGunGun:
      wc := 'Gun';
    wcGunRocket:
      wc := 'Gun Rocket';
    wcBomb:
      wc := 'Bomb';
  end;

  li.SubItems.Add(wc);
  li.SubItems.Add(TT3PlatformInstance(Target).InstanceName);
  li.SubItems.Add('Engaged');
  li.Data := TT3PlatformInstance(sender);

  //if sender is TT3Missile then
  if sender is TT3MissilesOnVehicle then
  begin
    rec := TRec_Time_Row.Create;
    sgSurToSurEditedRow := 0;
    sgSurToAirEditedRow := 0;

    // add data Surface to air
    if TT3Vehicle(Target).PlatformDomain = 0 then
    begin
      rec.isAir := true;
      gbSurfaceToAir.BringToFront;
      emptyRow := 0;

      for i := 0 to sgSurfacetoAir.RowCount - 1 do
      begin
        if sgSurfacetoAir.Cells[0, i] = '' then
        begin
          emptyRow := i;
          break;
        end;
      end;

      if TT3Missile(sender).PredictionEngageTime = 0 then
         TT3Missile(sender).PredictionEngageTime := TT3Missile(sender).LaunchDelay / (3600*24);

      timeEngage := TimeOf(simMgrClient.GameTIME) + TimeOf(TT3Missile(sender).PredictionEngageTime);
      rec.time := timeEngage;

      sObject := simMgrClient.findDetectedTrack(TT3Missile(Sender).TargetObject);
      if Assigned(sObject) then
        trackNum := FormatTrackNumber(TT3DetectedTrack(sObject).TrackNumber)
      else
        trackNum := TT3PlatformInstance(TT3Missile(Sender).TargetObject).TrackLabel;

      with sgSurfacetoAir do
      begin
        Cells[0, emptyRow] := TT3Missile(sender).InstanceName;
        sgSurfacetoAir.Cells[1, emptyRow] := 'SAM Mount(designation)';
        sgSurfacetoAir.Cells[2, emptyRow] := '' + trackNum;
        sgSurfacetoAir.Cells[3, emptyRow] := FloatToStr
          (TT3PlatformInstance(Target).Course);
        sgSurfacetoAir.Cells[4, emptyRow] := FloatToStr
          (TT3PlatformInstance(Target).Speed);
        sgSurfacetoAir.Cells[5, emptyRow] := IntToStr
          (Round(TT3PlatformInstance(Target).Altitude / C_Feet_To_Meter));
        sgSurfacetoAir.Cells[6, emptyRow] := SecondToTimeString(TT3MissilesOnVehicle(sender).
                                              LaunchDelay);
//        sgSurfacetoAir.Cells[6, emptyRow] := FormatDateTime('hh : mm : ss',
//          timeof(TT3MissilesOnVehicle(sender).LaunchDelay / (3600*24)));

        Distance := CalcRange(TT3MissilesOnVehicle(sender).getPositionX, TT3MissilesOnVehicle(sender).getPositionY
                              ,TT3PlatformInstance(Target).getPositionX, TT3PlatformInstance(Target).getPositionY);
        Timeflight := (Distance / TT3MissilesOnVehicle(sender).UnitMotion.FData.Max_Ground_Speed)*3600;

        Cells[7, emptyRow] := FormatDateTime('hh : mm : ss',
          timeof((Timeflight) / (3600*24)));

        sgSurToAirEditedRow := emptyRow;
        rec.row := sgSurToAirEditedRow;
      end;
    end
    // add data Surface to Surface
    else
    begin
      emptyRow := 0;
      rec.isAir := false;
      gbSurfaceToSurface.BringToFront;

      for i := 0 to sgSurfacetoSurface.RowCount - 1 do
      begin
        if sgSurfacetoSurface.Cells[0, i] = '' then
        begin
          emptyRow := i;
          break;
        end;
      end;

      {hanya untuk hard code}
      if TT3Missile(sender).PredictionEngageTime = 0 then
         TT3Missile(sender).PredictionEngageTime := TT3Missile(sender).LaunchDelay / (3600*24);

//      timeEngage := TimeOf(simMgrClient.GameTIME) + TimeOf(FloatToDateTime(TT3Missile(sender).PredictionEngageTime));
      timeEngage := TimeOf(simMgrClient.GameTIME) + TimeOf(TT3Missile(sender).PredictionEngageTime);
      rec.time := timeEngage;

      LaunchObj := nil;
      mov := TT3MissilesOnVehicle(sender);
      for i := 0 to mov.MissileDefinition.FLaunchs.Count - 1 do
      begin
        LaunchObj := TFitted_Weap_Launcher_On_Board(mov.MissileDefinition.FLaunchs.Items[i]);
        if LaunchObj.FData.Launcher_Type > 8 then
        begin
          if (LaunchObj.FData.Launcher_Type-8) = (Launcher) then
            Break;
        end
        else
        begin
          if LaunchObj.FData.Launcher_Type = (Launcher) then
            Break;
        end;
      end;

      case mov.FiringMode of
        mfmRBL  : FiringModeStr := 'RBL';
        mfmBOL  : FiringModeStr := 'BOL';
      end;

      Distance := CalcRange(mov.getPositionX, mov.getPositionY,
                  TT3PlatformInstance(Target).getPositionX, TT3PlatformInstance(Target).getPositionY);
      Timeflight := (Distance / mov.UnitMotion.FData.Max_Ground_Speed)*3600;

      with sgSurfacetoSurface do
      begin
        Cells[0, emptyRow] := mov.InstanceName;
        Cells[1, emptyRow] := IntToStr(Launcher);
        Cells[2, emptyRow] := 'Planned';
        Cells[3, emptyRow] := (TT3PlatformInstance(Target).InstanceName);
        Cells[4, emptyRow] := FiringModeStr;

        if Assigned(LaunchObj) then
          Cells[5, emptyRow] := IntToStr(LaunchObj.FData.Launcher_Angle)
        else
          Cells[5, emptyRow] := '0';

        Cells[6, emptyRow] := FormatDateTime('hh : mm : ss', timeof(mov.LaunchDelay / (3600*24)));
        Cells[7, emptyRow] := FormatDateTime('hh : mm : ss', timeof((Timeflight) / (3600*24)));
      end;

      sgSurToSurEditedRow := emptyRow;
      rec.row := sgSurToSurEditedRow;
    end;
  end;
end;

procedure TfrmToteDisplay.sgSurfacetoSurfaceSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  i : Integer;
  ListDTOT : TMissileHaveLaunch;
begin
  btnLaunch.Enabled := False;
  btnAbortSurfaceToSurface.Enabled := False;
  //i := -1;

  if (sgSurfacetoSurface.Cells[4, ARow] = 'DTOT') and
     (sgSurfacetoSurface.Cells[6, ARow] = '00 : 00 : 00') then
  begin
    if Assigned(simMgrClient.ControlledPlatform)
      and (TT3Vehicle(simMgrClient.ControlledPlatform).MissileWaittoLaunch.Count > 0) then
    begin
      for i := 0 to TT3Vehicle(simMgrClient.ControlledPlatform)
          .MissileWaittoLaunch.Count - 1 do
      begin
        ListDTOT := TMissileHaveLaunch(TT3Vehicle(simMgrClient.ControlledPlatform)
                    .MissileWaittoLaunch[i]);
        if (ListDTOT.EngageMode = 'DTOT') and not ListDTOT.isHaveLaunch
          and (ListDTOT.LauncherNumber = StrToInt(sgSurfacetoSurface.Cells[1, ARow])) then
        begin
          indexDtot := i;
          SgSSMissileSelectedCell := ARow;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.OnweaponEngageWaypoint(pi : TT3PlatformInstance; Sender, Target: TObject;
  Distance: Double; FiringAngle, FiringLauncher : integer; TimeforMissileEngage, TimeforMissileFlight : Double);
var
  i, emptyrow : Integer;
  wc, FiringModeStr : string;
  mov : TT3MissilesOnVehicle;
  LaunchObj : TFitted_Weap_Launcher_On_Board;
  TimeFlight : Double;
  //ListMissile : TMissileHaveLaunch;
  //count : Integer;

  TimeTemp : TTime;
begin
  if Sender is TT3MissilesOnVehicle then
  begin
    mov := TT3MissilesOnVehicle(Sender);
    emptyRow := 0;

    gbSurfaceToSurface.BringToFront;
    for i := 0 to sgSurfacetoSurface.RowCount - 1 do
    begin
      if sgSurfacetoSurface.Cells[0, i] = '' then
      begin
        emptyRow := i;
        break;
      end;
    end;

    LaunchObj := nil;
    if Assigned(mov.MissileDefinition.FLaunchs) then
    begin
      for i := 0 to mov.MissileDefinition.FLaunchs.Count - 1 do
      begin
        LaunchObj := TFitted_Weap_Launcher_On_Board(mov.MissileDefinition.FLaunchs.Items[i]);
        if LaunchObj.FData.Launcher_Type > 8 then
        begin
          if (LaunchObj.FData.Launcher_Type-8) = (FiringLauncher) then
            Break;
        end
        else
        begin
          if LaunchObj.FData.Launcher_Type = (FiringLauncher) then
            Break;
        end;
      end;
    end;

    TimeFlight := (Distance / mov.UnitMotion.FData.Max_Ground_Speed) * 3600;

    case mov.Engagement of
      meRipple  : FiringModeStr := 'Ripple';
      meSTOT    : FiringModeStr := 'STOT';
      meDTOT    : FiringModeStr := 'DTOT';
    end;

    with sgSurfacetoSurface do
    begin
      Cells[0, emptyRow] := mov.InstanceName;
      Cells[1, emptyRow] := IntToStr(FiringLauncher);
      Cells[2, emptyRow] := 'Planned';
      Cells[3, emptyRow] := (TT3PlatformInstance(Target).InstanceName);
      Cells[4, emptyRow] := FiringModeStr;

      if Assigned(LaunchObj) then
        Cells[5, emptyRow] := IntToStr(LaunchObj.FData.Launcher_Angle)
      else
        Cells[5, emptyRow] := '0';

      Cells[6, emptyRow] := FormatDateTime('hh : mm : ss', timeof(mov.LaunchDelay / (3600*24)));
      Cells[7, emptyRow] := FormatDateTime('hh : mm : ss', timeof((Timeflight) / (3600*24)));
    end;

    if mov.Engagement = meDTOT then
    begin
      MissileLaunchList                       := TMissileHaveLaunch.Create;
      MissileLaunchList.isAir                 := False;
      MissileLaunchList.isLaunch              := True;
      MissileLaunchList.EngageMode            := 'DTOT';
      MissileLaunchList.LauncherNumber        := Firinglauncher;
      MissileLaunchList.isHaveLaunch          := False;
      MissileLaunchList.TimeEng               := timeof((TT3MissilesOnVehicle(sender).LaunchDelay) / (3600*24));
      MissileLaunchList.TImeFlight            := timeof((Timeflight)/ (3600*24));
      MissileLaunchList.StartTime             := TimeOf(simMgrClient.GameTIME) + timeof(TT3Missile(sender).LaunchDelay/ (3600*24));
      MissileLaunchList.launcherMissileAngle  := TT3PlatformInstance(sender).Course;
      MissileLaunchList.MissileCategory       := TT3MissilesOnVehicle(sender).WeaponCategory;
      MissileLaunchList.MissileName           := TT3MissilesOnVehicle(sender).InstanceName;
      MissileLaunchList.MissileIndex          := TT3MissilesOnVehicle(sender).InstanceIndex;
      MissileLaunchList.ParentShipName        := TT3PlatformInstance(pi).InstanceName;
      MissileLaunchList.parentShipIndex       := TT3PlatformInstance(pi).InstanceIndex;
      MissileLaunchList.TargetShipName        := TT3PlatformInstance(Target).InstanceName;
      MissileLaunchList.TargetShipIndex       := TT3PlatformInstance(Target).InstanceIndex;

      TT3Vehicle(pi).MissileWaittoLaunch.Add(MissileLaunchList);
    end;
  end;
end;

procedure TfrmToteDisplay.OnWeaponLaunched(sender, Target: TObject);
var
  li: TListItem;
  emptyRow, i, j: Integer;
  wc: String;
  time : TDateTime;
  recEngage : TRec_Time_Row;
  rec : TRec_Time_Row;
  zidd: Double;

  FlightTime : Double;
  Distance : Double;

  pi : TT3PlatformInstance;

  NextWaypointTemp : ^TRecWeaponWaypoint;
  NextWaypointTemp2 : ^TRecWeaponWaypoint;

  PositionX_Waypoint, PositionY_Waypoint : Double;
  PositionX2_Waypoint, PositionY2_Waypoint : Double;
  PositionLastX_Waypoint, PositionLastY_Waypoint : Double;

  MissileWaitList : TMissileHaveLaunch;

  sObject : TSimObject;
  trackNum : string;
begin
  if not Assigned(Sender) then exit;

  time := simMgrClient.GameTIME;

  li := lvWeaponEngagement.Items.Add;
  { Time, Launching Platform, Weapon Class, Target Platform, Engagement }
  li.Caption := FormatDateTime('hh : mm : ss', time);
  li.SubItems.Add(TT3Weapon(sender).InstanceName);

  case TT3Weapon(sender).WeaponCategory of
    wcMissileAirToSurfaceSubsurface:
      wc := 'Missile Air To Surface Subsurface';
    wcMissileSurfaceSubsurfaceToAir:
      wc := 'Missile Surface Subsurface To Air';
    wcMissileSurfaceSubsurfaceToSurfaceSubsurface:
      wc := 'Missile Surface/Subsurface To Surface/Subsurface';
    wcMissileAirToAir:
      wc := 'Missile Air To Air';
    wcMissileLandAttack:
      wc := 'Missile Land Attack';
    wcTorpedoStraigth:
      wc := 'Torpedo Staigth';
    wcTorpedoActiveAcoustic:
      wc := 'Torpedo Active Acoustic';
    wcTorpedoPassiveAcoustic:
      wc := 'Torpedo Passive Acoustic';
    wcTorpedoWireGuided:
      wc := 'Torpedo Wire Guided';
    wcTorpedoWakeHoming:
      wc := 'Torpedo Wake Homing';
    wcTorpedoActivePassive:
      wc := 'Torpedo Active Passive';
    wcTorpedoAirDropped:
      wc := 'Torpedo Air Dropped';
    wcMine:
      wc := 'Mine';
    wcGunCIWS:
      wc := 'Gun CIWS';
    wcGunGun:
      wc := 'Gun';
    wcGunRocket:
      wc := 'Gun Rocket';
    wcBomb:
      wc := 'Bomb';
  end;

  li.SubItems.Add(wc);

  if TT3PlatformInstance(Target) <> nil  then
    li.SubItems.Add(TT3PlatformInstance(Target).InstanceName);

  li.SubItems.Add('Launched');
  li.Data := TT3PlatformInstance(sender);

  if (sender is TT3Missile) then
  begin
    // add data Surface to air
    zidd := 5 / (3600*24); //TAMBAHAN SEBELUM ADA DELAY LAUNCHING

    recEngage := TRec_Time_Row.Create;
    rec := TRec_Time_Row.Create;
    sgSurToSurEditedRow := 0;
    sgSurToAirEditedRow := 0;

    {hanya untuk hard code}
    if TT3Missile(sender).PredictionEngageTime = 0 then
       TT3Missile(sender).PredictionEngageTime := TT3Missile(sender).LaunchDelay / (3600*24);

    if TT3Vehicle(target).PlatformDomain  = 0 then
    begin
      rec.isAir := true;
      recEngage.isAir := true;

//      for i := 0 to sgSurfacetoAir.RowCount - 1 do
//      begin
//        if sgSurfacetoAir.Cells[0, i] = '' then
//        begin
//          emptyRow := i;
//          break;
//        end;
//      end;

      timeEngage := TimeOf(simMgrClient.GameTIME) + TimeOf(TT3Missile(sender).PredictionEngageTime);
      recEngage.time := timeEngage;

      timeFlight := TimeOf(simMgrClient.GameTIME) + TimeOf(FloatToDateTime(TT3Missile(sender).PredictionFlightTime + zidd));
      rec.time := timeFlight;

      Distance := CalcRange(TT3Missile(sender).getPositionX, TT3Missile(sender).getPositionY
                                            ,TT3PlatformInstance(Target).getPositionX, TT3PlatformInstance(Target).getPositionY);
      flightTime := (Distance / TT3Missile(sender).UnitMotion.FData.Max_Ground_Speed)*3600;
      timeFlight := TimeOf(simMgrClient.GameTIME) + TimeOf(((flightTime + 5)/(3600*24)));
      rec.time := timeFlight;

      with sgSurfacetoAir do
      begin
        for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
        begin
          pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

          if pi is TT3Vehicle then
          begin
            if TT3Vehicle(pi).InstanceIndex = TT3Missile(sender).ShipIndex then
            begin
              MissileLaunchList                       := TMissileHaveLaunch.Create;
              MissileLaunchList.MissileLaunch         := TT3Missile(sender);
              MissileLaunchList.isAir                 := True;
              MissileLaunchList.TimeEng               := timeEngage;
              MissileLaunchList.TImeFlight            := timeFlight;
              MissileLaunchList.FTImeFlight           := flightTime;
              MissileLaunchList.StartTime             := TimeOf(simMgrClient.GameTIME) + timeof(5/ (3600*24));;
              MissileLaunchList.isLaunch              := True;
              MissileLaunchList.launcherMissileAngle  := TT3PlatformInstance(sender).Course;
              MissileLaunchList.MissileCategory       := TT3Missile(sender).WeaponCategory;
              MissileLaunchList.MissileName           := TT3Missile(sender).InstanceName;
              MissileLaunchList.MissileIndex          := TT3Missile(sender).InstanceIndex;
              MissileLaunchList.ParentShipName        := TT3Missile(sender).ShipName;
              MissileLaunchList.parentShipIndex       := TT3Missile(sender).ShipIndex;

              sObject := simMgrClient.findDetectedTrack(TT3Missile(sender).TargetObject);
              if Assigned(sObject) then
                trackNum := FormatTrackNumber(TT3DetectedTrack(sObject).TrackNumber)
              else
                trackNum := TT3PlatformInstance(TT3Missile(sender).TargetObject).TrackLabel;

              MissileLaunchList.TargetShipName        := trackNum;
              MissileLaunchList.TargetShipIndex       := TT3Missile(sender).TargetIndex;
              MissileLaunchList.TargetCourse          := TT3Missile(sender).TargetTrackCourse;
              MissileLaunchList.TargetSpeed           := TT3Missile(sender).TargetTrackSpeed;
              MissileLaunchList.TargetAltitude        := TT3Missile(sender).TargetTrackAlt;

              TT3Vehicle(pi).MissileLaunch.Add(MissileLaunchList);
            end;
          end;
        end;
      end;
    end
    // add data Surface to Surface
    else
    begin
      case TT3Missile(sender).FiringMode of
        mfmRBL, mfmBOL :
        begin
          emptyRow := 0;
          rec.isAir := false;
          recEngage.isAir := false;

          for i := 0 to sgSurfacetoSurface.RowCount - 1 do
          begin
            if sgSurfacetoSurface.Cells[0, i] = '' then
            begin
              emptyRow := i;
              break;
            end;
          end;

          timeEngage := TimeOf(simMgrClient.GameTIME) + TimeOf(TT3Missile(sender).PredictionEngageTime);
          recEngage.time := timeEngage;

          Distance := CalcRange(TT3Missile(sender).getPositionX, TT3Missile(sender).getPositionY
                                  ,TT3PlatformInstance(Target).getPositionX, TT3PlatformInstance(Target).getPositionY);
          flightTime := (Distance / TT3Missile(sender).UnitMotion.FData.Max_Ground_Speed)*3600;
          timeFlight := TimeOf(simMgrClient.GameTIME) + TimeOf(((flightTime + 5)/(3600*24)));
          rec.time := timeFlight;

          with sgSurfacetoSurface do
          begin
            sgSurToSurEditedRow := emptyRow;

            rec.row := sgSurToSurEditedRow;
            recEngage.row := sgSurToSurEditedRow;

            listTimeLaunch.Add(rec);
            listTimeEngage.Add(recEngage);

            for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
            begin
              pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

              if pi is TT3Vehicle then
              begin
                if TT3Vehicle(pi).InstanceIndex = TT3Missile(sender).ShipIndex then
                begin
                  MissileLaunchList                       := TMissileHaveLaunch.Create;
                  MissileLaunchList.MissileLaunch         := TT3Missile(sender);
                  MissileLaunchList.isAir                 := False;
                  MissileLaunchList.TimeEng               := timeEngage;
                  MissileLaunchList.TImeFlight            := timeFlight;
                  MissileLaunchList.FTImeFlight           := flightTime;
                  MissileLaunchList.StartTime             := TimeOf(simMgrClient.GameTIME) + timeof(5/ (3600*24));;
                  MissileLaunchList.isLaunch              := True;
                  MissileLaunchList.launcherMissileAngle  := TT3PlatformInstance(sender).Course;
                  MissileLaunchList.MissileCategory       := TT3Missile(sender).WeaponCategory;
                  MissileLaunchList.MissileName           := TT3Missile(sender).InstanceName;
                  MissileLaunchList.MissileIndex          := TT3Missile(sender).InstanceIndex;
                  MissileLaunchList.ParentShipName        := TT3Missile(sender).ShipName;
                  MissileLaunchList.parentShipIndex       := TT3Missile(sender).ShipIndex;
                  MissileLaunchList.TargetShipName        := TT3Missile(sender).TargetName;
                  MissileLaunchList.TargetShipIndex       := TT3Missile(sender).TargetIndex;
                  MissileLaunchList.TargetCourse          := TT3Missile(sender).TargetTrackCourse;
                  MissileLaunchList.TargetSpeed           := TT3Missile(sender).TargetTrackSpeed;
                  MissileLaunchList.TargetAltitude        := TT3Missile(sender).TargetTrackAlt;
                  MissileLaunchList.LauncherNumber        := TT3Missile(sender).LauncherNumber;

                  TT3Vehicle(pi).MissileLaunch.Add(MissileLaunchList);
                end;
              end;
            end;
          end;
        end;

        mfmRBLW :
        begin
          rec.isAir := false;
          recEngage.isAir := false;

//          for i := 0 to sgSurfacetoSurface.RowCount - 1 do
//          begin
//            if sgSurfacetoSurface.Cells[0, i] = '' then
//            begin
//              emptyRow := i;
//              break;
//            end;
//          end;

          timeEngage := TimeOf(simMgrClient.GameTIME) +  TimeOf((TT3Missile(sender).LaunchDelay/(3600*24)));
          Distance := TT3Missile(sender).DistanceToTarget;
          flightTime := (Distance / TT3Missile(sender).UnitMotion.FData.Max_Ground_Speed)*3600;
          timeFlight := TimeOf(simMgrClient.GameTIME) + TimeOf(((flightTime + TT3Missile(sender).LaunchDelay)/(3600*24)));

          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

            if pi is TT3Vehicle then
            begin
              if TT3Vehicle(pi).InstanceIndex = TT3Missile(sender).ShipIndex then
              begin
                MissileLaunchList                       := TMissileHaveLaunch.Create;
                MissileLaunchList.MissileLaunch         := TT3Missile(sender);
                MissileLaunchList.isAir                 := False;
                MissileLaunchList.TimeEng               := timeEngage;
                MissileLaunchList.TImeFlight            := timeFlight;
                MissileLaunchList.FTImeFlight           := flightTime;
                MissileLaunchList.StartTime             := TimeOf(simMgrClient.GameTIME) + timeof(TT3Missile(sender).LaunchDelay/ (3600*24));
                MissileLaunchList.isLaunch              := True;
                MissileLaunchList.launcherMissileAngle  := TT3PlatformInstance(sender).Course;
                MissileLaunchList.MissileCategory       := TT3Missile(sender).WeaponCategory;
                MissileLaunchList.MissileName           := TT3Missile(sender).InstanceName;
                MissileLaunchList.MissileIndex          := TT3Missile(sender).InstanceIndex;
                MissileLaunchList.ParentShipName        := TT3Missile(sender).ShipName;
                MissileLaunchList.parentShipIndex       := TT3Missile(sender).ShipIndex;
                MissileLaunchList.TargetShipName        := TT3Missile(sender).TargetName;
                MissileLaunchList.TargetShipIndex       := TT3Missile(sender).TargetIndex;
                MissileLaunchList.LauncherNumber        := TT3Missile(sender).LauncherNumber;

                if TT3Missile(Sender).Engagement = meDTOT then
                begin
                  TT3Vehicle(pi).MissileDTOTLaunch.Add(MissileLaunchList);

                  for j := TT3Vehicle(pi).MissileWaitToLaunch.Count - 1 downto 0 do
                  begin
                    MissileWaitList := TT3Vehicle(pi).MissileWaitToLaunch.Items[j];

                    if MissileWaitList.LauncherNumber = MissileLaunchList.LauncherNumber then
                      TT3Vehicle(pi).MissileWaitToLaunch.Delete(j);
                  end;
                end
                else
                  TT3Vehicle(pi).MissileLaunch.Add(MissileLaunchList);
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.OnPlatformDestroy(sender: TObject);
var
  li: TListItem;
  //edited by choco
  reason: string;
begin
  // set platform removal //edited by choco

  if sender = nil then     //mk
    Exit;

  if Sender is TT3PlatformInstance then
  begin
    with lvPlatformRemovalSum do
    begin
      case TT3PlatformInstance(sender).reasonDestroy of
        1:
        begin
          reason := 'Deleted By User';
        end;
        2:
        begin
          reason := 'Destroyed';
        end;
        3:
        begin
          reason := 'Out Of Fuel';
        end;
        4:
        begin
          frmTacticalDisplay.addStatus(TT3PlatformInstance(sender).InstanceName + ' crashed!');
          reason := 'Crash';
        end;
        5:
        begin
          reason := 'Altitude of ' +TT3PlatformInstance(sender).InstanceName + ' = 0';
        end;
        6:
        begin
          reason := 'RCS of ' +TT3PlatformInstance(sender).InstanceName + ' is < 0';
        end
      else
        begin
          reason := 'Undefined Reason';
        end;
      end;
    end;
  end;

  li := lvPlatformRemovalSum.Items.Add;

  li.Caption := FormatDateTime('hh:nn:ss', simMgrClient.GameTIME) + ' / ' + FormatDateTime('dd mmm yyyy', simMgrClient.GameTIME);
  li.SubItems.Add(TT3PlatformInstance(sender).InstanceName);
  li.SubItems.Add(reason);
end;

procedure TfrmToteDisplay.OnPlatformGroupChange(Sender: TObject);
var
  OldFound,
  NewFound         : Boolean;
  i     : Integer;

  OldGroupStr,
  NewGroupStr   : string;

  CurrentGroup,
  OldGroup,
  NewGroup      : T3CubicleGroup;

  SelectedMember : TPlatform_Instance;

  rec : TRecPlatformGroupChange;
begin
  OldFound := False;
  NewFound := False;
  OldGroup := nil;
  NewGroup := nil;

  OldGroupStr := T3CubicleGroup(tvCubicleGroups.Selected.Parent.Data).FData.Group_Identifier;
  NewGroupStr := TMenuItem(Sender).Caption;
  NewGroupStr := DeleteAmpersand(NewGroupStr);

  SelectedMember := TPlatform_Instance(tvCubicleGroups.Selected.Data);

  if OldGroupStr = NewGroupStr then
    Exit;

  with simMgrClient do
  begin
    for i := 0 to CubAssignList.Count - 1 do
    begin
      CurrentGroup := T3CubicleGroup(CubAssignList.Items[i]);

      if CurrentGroup.FData.Group_Identifier = OldGroupStr then
      begin
        OldGroup := T3CubicleGroup(CubAssignList.Items[i]);
        OldFound := True;
      end;

      if CurrentGroup.FData.Group_Identifier = NewGroupStr then
      begin
        NewGroup := T3CubicleGroup(CubAssignList.Items[i]);
        NewFound := True;
      end;

      if OldFound and NewFound then
        Break;
    end;
  end;

  if Assigned(OldGroup) and  Assigned(NewGroup) then
  begin
    //sync
    rec.PlatformID := SelectedMember.FData.Platform_Instance_Index;
    rec.OldGroupID := OldGroup.FData.Group_Index;
    rec.NewGroupID := NewGroup.FData.Group_Index;

    simMgrClient.netSend_PlatformGroupChange(rec);
  end;
end;

procedure TfrmToteDisplay.OnPlatformDestroy(sender: TObject; target:string);
var
  li: TListItem;
  //edited by choco
  reason: string;
begin
  if sender = nil then     //mk
    Exit;

  // set platform removal //edited by choco
  with lvPlatformRemovalSum do
  begin
    case TT3PlatformInstance(sender).reasonDestroy of
      21:
        begin
          reason := 'Destroyed by';
        end;
      22:
        begin
          reason := 'Destroyed because hit';
        end;
      23:
        begin
          reason := 'Destroyed because';
        end;
    else
        begin
          reason := 'Undefined Reason';
        end;
    end;

    li := lvPlatformRemovalSum.Items.Add;

    li.Caption := FormatDateTime('hh:nn:ss', simMgrClient.GameTIME) + ' / ' + FormatDateTime('dd mmm yyyy', simMgrClient.GameTIME);
    li.SubItems.Add(TT3PlatformInstance(sender).InstanceName);
    li.SubItems.Add(reason+' '+target);
  end;
end;

procedure TfrmToteDisplay.UpdateTimeMissile;
var
  timeString, LaunchModeStr: string;
  time : TTime;
  temp : TTime;
  rec : TRec_Time_Row;
  i,j,k : Integer;
  UpdateMissileLaunchList, MissileDTOT : TMissileHaveLaunch;
  pi : TT3PlatformInstance;
  Vec : TT3Vehicle;
  TimeForEng : TTime;
  TimeForFlight : TTime;
  EmptyRowForTimeEngage : Integer;
  EmptyRowForTimeFlight : Integer;
  wc : string;
  obj : TObject;
begin
  if not Assigned(simMgrClient.ControlledPlatform) then  {aldy tambah}
    Exit;

  if Assigned(simMgrClient.SimPlatforms) then
  begin
    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

      if pi is TT3Vehicle then
      begin
        Vec := TT3Vehicle(pi);

        if Vec.InstanceIndex = TT3PlatformInstance(simMgrClient.ControlledPlatform).InstanceIndex then
        begin
          if Assigned(Vec.MissileLaunch) then
          begin
            for j := 0 to Vec.MissileLaunch.Count - 1 do
            begin
              obj := Vec.MissileLaunch[j];
              if not(obj is TMissileHaveLaunch) then
                Continue;

              UpdateMissileLaunchList := TMissileHaveLaunch(obj);

              if not UpdateMissileLaunchList.isAir and UpdateMissileLaunchList.isLaunch then
              begin
                with sgSurfacetoSurface do
                begin
                  Cells[0, j+1] := UpdateMissileLaunchList.MissileName;
                  Cells[1, j+1] := IntToStr(UpdateMissileLaunchList.LauncherNumber);
                  Cells[3, j+1] := UpdateMissileLaunchList.TargetShipName;

                  case UpdateMissileLaunchList.MissileLaunch.FiringMode of
                    mfmRBL  : LaunchModeStr := 'RBL';
                    mfmRBLW : begin
                                case UpdateMissileLaunchList.MissileLaunch.Engagement of
                                  meRipple : LaunchModeStr := 'Ripple';
                                  meSTOT   : LaunchModeStr := 'STOT';
                                  meDTOT   : LaunchModeStr := 'DTOT';
                                end;
                              end;
                    mfmBOL  : LaunchModeStr := 'BOL';
                    mfmBOLW  : LaunchModeStr := 'BOLW';
                  end;

                  Cells[4, j+1] := LaunchModeStr;
                  Cells[5, j+1] := FloatToStr(UpdateMissileLaunchList.launcherMissileAngle);

                  TimeForEng := UpdateMissileLaunchList.TimeEng - TimeOf(simMgrClient.GameTIME);

                  if TimeForEng >= 0 then
                  begin
                    Cells[2, j+1] := 'Pending';
                    timeString := FormatDateTime('hh : mm : ss', TimeForEng);
                    sgSurfacetoSurface.Cells[6, j+1] := timeString;

                    TimeForFlight := UpdateMissileLaunchList.TImeFlight - UpdateMissileLaunchList.StartTime;
                    timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                    sgSurfacetoSurface.Cells[7, j+1] := timeString;
                  end
                  else
                  begin
                    Cells[2, j+1] := 'Launched';
                    sgSurfacetoSurface.Cells[6, j+1] := '00 : 00 : 00';
                    TimeForFlight := UpdateMissileLaunchList.TImeFlight - TimeOf(simMgrClient.GameTIME);

                    if TimeForFlight >= 0 then
                    begin
                      timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                      sgSurfacetoSurface.Cells[7, j+1] := timeString;
                    end
                    else
                      sgSurfacetoSurface.Cells[7, j+1] := '00 : 00 : 00';
                  end;
                end;
              end
              else if UpdateMissileLaunchList.isAir and UpdateMissileLaunchList.isLaunch then
              begin
                with sgSurfacetoAir do
                begin
                  Cells[0, j+1] := UpdateMissileLaunchList.MissileName;
                  Cells[1, j+1] := 'SAM Mount(designation)';
                  Cells[2, j+1] := MissileLaunchList.TargetShipName;
                  Cells[3, j+1] := FloatToStr(UpdateMissileLaunchList.TargetCourse);
                  Cells[4, j+1] := FloatToStr(UpdateMissileLaunchList.TargetSpeed);
                  Cells[5, j+1] := IntToStr(Round(UpdateMissileLaunchList.TargetAltitude / C_Feet_To_Meter));

                  {Engage}
                  TimeForEng := UpdateMissileLaunchList.TimeEng - TimeOf(simMgrClient.GameTIME);

                  if TimeForEng >= 0 then
                  begin
                    timeString := FormatDateTime('hh : mm : ss', TimeForEng);
                    Cells[6, j+1] := timeString;

                    TimeForFlight := UpdateMissileLaunchList.TImeFlight - UpdateMissileLaunchList.StartTime;
                    timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                    Cells[7, j+1] := timeString;
                  end
                  else
                  begin
                    Cells[6, j+1] := '00 : 00 : 00';

                    {Flight}
                    TimeForFlight := UpdateMissileLaunchList.TImeFlight - TimeOf(simMgrClient.GameTIME);

                    if TimeForFlight >= 0 then
                    begin
                      timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                      Cells[7, j+1] := timeString;
                    end
                    else
                      Cells[7, j+1] := '00 : 00 : 00';
                  end;
                end;
              end;
            end;
          end;

          if vec.isReadyToCalculate then
          begin
            if Assigned(Vec.MissileWaittoLaunch) then
            begin
              for j := 0 to Vec.MissileWaittoLaunch.Count - 1 do
              begin
                obj := Vec.MissileWaittoLaunch[j];
                if not (obj is TMissileHaveLaunch) then
                  Continue;

                UpdateMissileLaunchList := TMissileHaveLaunch(obj);

                if Assigned(Vec.MissileLaunch) then
                begin
                  with sgSurfacetoSurface do
                  begin
                    Cells[0, Vec.MissileLaunch.Count+1 + j] := UpdateMissileLaunchList.MissileName;
                    Cells[1, Vec.MissileLaunch.Count+1 + j] := IntToStr(UpdateMissileLaunchList.LauncherNumber);
                    Cells[3, Vec.MissileLaunch.Count+1 + j] := UpdateMissileLaunchList.TargetShipName;
                    Cells[4, Vec.MissileLaunch.Count+1 + j] := 'DTOT';
                    Cells[5, Vec.MissileLaunch.Count+1 + j] := FloatToStr(UpdateMissileLaunchList.launcherMissileAngle);

                    {Engage}
                    TimeForEng := StartDTOT + UpdateMissileLaunchList.TimeEng - TimeOf(simMgrClient.GameTIME);
                    //MissileLaunchList.TimeEng := TimeForEng;

                    if TimeForEng >= 0 then
                    begin
                      Cells[2, Vec.MissileLaunch.Count+1 + j] := 'Pending';
                      timeString := FormatDateTime('hh : mm : ss', TimeForEng);
                      Cells[6, Vec.MissileLaunch.Count+1 + j] := timeString;
                      TimeForFlight := StartDTOT + UpdateMissileLaunchList.TImeFlight - StartDTOT;
                      timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                      Cells[7, Vec.MissileLaunch.Count+1 + j] := timeString;
                    end
                    else
                    begin
                      Cells[2, Vec.MissileLaunch.Count+1 + j] := 'Ready To Launch';
                      Cells[6, Vec.MissileLaunch.Count+1 + j] := '00 : 00 : 00';

                      TimeForFlight := UpdateMissileLaunchList.TImeFlight;
                      timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                      Cells[7,  Vec.MissileLaunch.Count+1 + j] := timeString;

                      if (Row = Vec.MissileLaunch.Count+1+j) then
                      begin
                        btnLaunch.Enabled := True;
                        btnAbortSurfaceToSurface.Enabled := True;
                        SgSSMissileSelectedCell := Row;
                      end;
                    end;
                  end;
                end;
              end;
            end;

            if Assigned(Vec.MissileDTOTLaunch)then
            begin
              for j := 0 to Vec.MissileDTOTLaunch.Count - 1 do
              begin
                obj := Vec.MissileDTOTLaunch[j];
                if not (obj is TMissileHaveLaunch) then
                  Continue;

                UpdateMissileLaunchList := TMissileHaveLaunch(obj);

                if Assigned(Vec.MissileLaunch) and Assigned(Vec.MissileWaittoLaunch) then
                begin
                  with sgSurfacetoSurface do
                  begin
                    Cells[0, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := UpdateMissileLaunchList.MissileName;
                    Cells[1, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := IntToStr(UpdateMissileLaunchList.LauncherNumber);
                    Cells[2, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := 'Launched';
                    Cells[3, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := UpdateMissileLaunchList.TargetShipName;
                    Cells[4, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := 'DTOT';
                    Cells[5, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := FloatToStr(UpdateMissileLaunchList.launcherMissileAngle);
                    Cells[6, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := '00 : 00 : 00';

                    TimeForFlight := UpdateMissileLaunchList.TImeFlight - TimeOf(simMgrClient.GameTIME);

                    if TimeForFlight >= 0 then
                    begin
                      timeString := FormatDateTime('hh : mm : ss', TimeForFlight);
                      Cells[7, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := timeString;
                    end
                    else
                      Cells[7, Vec.MissileLaunch.Count+1 + j + Vec.MissileWaittoLaunch.Count] := '00 : 00 : 00';

                    if (Row = Vec.MissileLaunch.Count+1+j+Vec.MissileWaittoLaunch.Count) then
                    begin
                      btnLaunch.Enabled := False;
                      btnAbortSurfaceToSurface.Enabled := False;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.ClearAllSurfaceToAirList(pi: TT3PlatformInstance);
var
  i, j : Integer;
  ListMissile : TMissileHaveLaunch;

  Count : Integer;
begin
  Count := 0;

  if pi is TT3Vehicle then
  begin
    if not TT3Vehicle(pi).isReadyToCalculate then
    begin
      TT3Vehicle(pi).MissileWaittoLaunch.Clear;
      TT3Vehicle(pi).isReadyToCalculate := false;
    end;
    for i := 0 to TT3Vehicle(pi).MissileLaunch.Count - 1 do
    begin
      ListMissile := TMissileHaveLaunch(TT3Vehicle(pi).MissileLaunch[i]);

      if ListMissile.isAir and ListMissile.isLaunch then
      begin
        Count := Count + 1;
      end;
    end;
  end;

  for i := 0 to sgSurfacetoAir.RowCount - 1 do
  begin
    if i+1 <= count then Continue;

    for j := 0 to sgSurfacetoAir.ColCount - 1 do
    begin
      sgSurfacetoAir.Cells[j, i+1] := '';
    end;
  end;
end;

procedure TfrmToteDisplay.ClearAllSurfaceToSurfaceList(pi : TT3PlatformInstance);
var
  i, j : Integer;
  ListMissile : TMissileHaveLaunch;

  Count : Integer;
begin
  Count := 0;

  if pi is TT3Vehicle then
  begin

    if not TT3Vehicle(pi).isReadyToCalculate then
    begin
      TT3Vehicle(pi).MissileWaittoLaunch.Clear;
      TT3Vehicle(pi).isReadyToCalculate := false;
    end;
    for i := 0 to TT3Vehicle(pi).MissileLaunch.Count - 1 do
    begin
      ListMissile := TMissileHaveLaunch(TT3Vehicle(pi).MissileLaunch[i]);

      if not ListMissile.isAir and ListMissile.isLaunch then
      begin
        Count := Count + 1;
      end;
    end;

  end;

  for i := 0 to sgSurfacetoSurface.RowCount - 1 do
  begin
    if i+1 <= count then Continue;

    for j := 0 to sgSurfacetoSurface.ColCount - 1 do
    begin
      sgSurfacetoSurface.Cells[j, i+1] := '';
    end;
  end;
end;

procedure TfrmToteDisplay.ClearAllWaitingMissile(pi: TT3PlatformInstance);
begin
  TT3Vehicle(pi).MissileWaittoLaunch.Clear;
  TT3Vehicle(pi).isReadyToCalculate := false;
end;

procedure TfrmToteDisplay.RefreshChannelMapping(aGroupName : string);
var
  i,j,aIdRow, k : integer;
  ChannelMapping : TChannelMapping;
  aExternalCom : TExternal_Communication_Channel;
  grp : T3CubicleGroup;
  grm : T3CubicleGroupMember;
  Pi : TPlatform_Instance;
begin
  if simMgrClient.ISInstructor then
  begin
    for i := 0 to simMgrClient.ListComChannel.Count - 1 do
    begin
      ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.items[i]);
      if LowerCase(ChannelMapping.GroupName) = LowerCase(aGroupName) then
      begin
        edtGroupName.Text := ChannelMapping.GroupName;

        lvIn.Items.Clear;
        lvOut.Items.Clear;

        //Mapping
        for j := 0 to ChannelMapping.ListComChannelMapping.Count - 1 do
        begin
          aExternalCom := TExternal_Communication_Channel(ChannelMapping.ListComChannelMapping.Items[j]);

          with lvOut.Items.Add do
          begin
            Caption := IntToStr(aExternalCom.FData.Channel_Number);
            SubItems.Add(aExternalCom.FData.Channel_Identifier);
            SubItems.Add(aExternalCom.FData.Channel_Code);
          end;
        end;
        //Available
        for j := 0 to ChannelMapping.ListComChannelAvailable.Count - 1 do
        begin
          aExternalCom := TExternal_Communication_Channel(ChannelMapping.ListComChannelAvailable.Items[j]);

          with lvIn.Items.Add do
          begin
            Caption := IntToStr(aExternalCom.FData.Channel_Number);
            SubItems.Add(aExternalCom.FData.Channel_Identifier);
            SubItems.Add(aExternalCom.FData.Channel_Code);
          end;
        end;
        Break;
      end;
    end;

    if LowerCase(aGroupName) = 'controller' then
    begin
      lvPlatformsGroup.Items.Clear;
      for i := 0 to VScenario.Platform_Insts.Count - 1 do
      begin
        pi := VScenario.Platform_Insts[i];

        lvPlatformsGroup.Items.Add.Caption := Pi.FData.Instance_Name;
      end;
    end
    else
    begin
      for i := 0 to simMgrClient.CubAssignList.Count - 1 do
      begin
        grp := T3CubicleGroup(simMgrClient.CubAssignList.Items[i]);
        if grp = nil then
        Continue;

        if LowerCase(aGroupName) = LowerCase(grp.FData.Group_Identifier) then
        begin
          lvPlatformsGroup.Items.Clear;

          for j := 0 to grp.Count - 1 do
          begin
            grm := T3CubicleGroupMember(grp.Items[j]);
            if grm = nil then
              Continue;
            Pi := nil;

            for k := 0 to VScenario.Platform_Insts.Count - 1 do
            begin
              pi := VScenario.Platform_Insts[k];
              if grm.FData.Platform_Instance_Index = Pi.FData.Platform_Instance_Index then
              begin
                lvPlatformsGroup.Items.Add.Caption := Pi.FData.Instance_Name;
                Break;
              end;
            end;
          end;
        end;
      end;
    end;

    for i := 0 to simMgrClient.ListComChannel.Count - 1 do
    begin
      ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.items[i]);
      if ChannelMapping.GroupID = 0 then
      begin
        for j := 0 to sgComInInjection.RowCount - 1 do
        begin
          sgComInInjection.Cells[0, j+1] := '';
          sgComInInjection.Cells[1, j+1] := '';
          sgComInInjection.Cells[2, j+1] := '';
          sgComInInjection.Cells[3, j+1] := '';
        end;

        for j := 0 to ChannelMapping.ListComChannelAvailable.Count - 1 do
        begin
          aExternalCom := TExternal_Communication_Channel(
                          ChannelMapping.ListComChannelAvailable.Items[j]);

          aIdRow := j+1;

          sgComInInjection.Cells[0, aIdRow] := IntToStr(aExternalCom.FData.Channel_Number);
          sgComInInjection.Cells[1, aIdRow] := aExternalCom.FData.Channel_Identifier;
          sgComInInjection.Cells[2, aIdRow] := aExternalCom.FData.Channel_Code;

          case aExternalCom.FData.Channel_Interference of
            mcsClear : sgComInInjection.Cells[3, aIdRow] := 'Clear';
            mcsJamming : sgComInInjection.Cells[3, aIdRow] := 'Jamming';
            mcsNoise : sgComInInjection.Cells[3, aIdRow] := 'Noise';
            mcsTones : sgComInInjection.Cells[3, aIdRow] := 'MHTones';
          end;
        end;

        for j := 0 to ChannelMapping.ListComChannelMapping.Count - 1 do
        begin
          aExternalCom := TExternal_Communication_Channel(
                          ChannelMapping.ListComChannelMapping.Items[j]);

          aIdRow := ChannelMapping.ListComChannelAvailable.Count+j+1;

          sgComInInjection.Cells[0, aIdRow] := IntToStr(aExternalCom.FData.Channel_Number);
          sgComInInjection.Cells[1, aIdRow] := aExternalCom.FData.Channel_Identifier;
          sgComInInjection.Cells[2, aIdRow] := aExternalCom.FData.Channel_Code;

          case aExternalCom.FData.Channel_Interference of
            mcsClear : sgComInInjection.Cells[3, aIdRow] := 'Clear';
            mcsJamming : sgComInInjection.Cells[3, aIdRow] := 'Jamming';
            mcsNoise : sgComInInjection.Cells[3, aIdRow] := 'Noise';
            mcsTones : sgComInInjection.Cells[3, aIdRow] := 'MHTones';
          end;
        end;
      end;
    end;
  end
  else
  begin
    for i := 0 to simMgrClient.ListComChannel.Count - 1 do
    begin
      ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.items[i]);
      if LowerCase(ChannelMapping.GroupName) =
         LowerCase(simMgrClient.FMyCubGroup.FData.Group_Identifier)
      then
      begin
        for j := 0 to simMgrClient.Scenario.ExCom.Count - 1{sgCommChannelDef.RowCount - 1} do
        begin
          with sgCommChannelDef do
          begin
//            Objects[0, j+1] := TObject(0);
            Cells[2, j+1] := '';
            Cells[3, j+1] := '';
            Cells[4, j+1] := 'VHF/UHF';
            Cells[5, j+1] := '300';
//            Objects[6, j+1] := TObject(0);
          end;
        end;

        for j := 0 to ChannelMapping.ListComChannelMapping.Count - 1 do
        begin
          aExternalCom := TExternal_Communication_Channel(
                          ChannelMapping.ListComChannelMapping.Items[j]);
          aIdRow := aExternalCom.FData.Channel_Number{ + 1};

          with sgCommChannelDef do
          begin
//            Objects[0, aIdRow] := TObject(1);
            Cells[2, aIdRow] := aExternalCom.FData.Channel_Identifier;
            Cells[3, aIdRow] := aExternalCom.FData.Channel_Code;

            case aExternalCom.FData.Comms_Band of
              0 : Cells[4, aIdRow] := 'HF';
              1 : Cells[4, aIdRow] := 'VHF/UHF';
              2 : Cells[4, aIdRow] := 'SATCOM';
              3 : Cells[4, aIdRow] := 'UWT';
              4 : Cells[4, aIdRow] := 'FM';
            end;

            Cells[5, aIdRow] := FloatToStr(aExternalCom.FData.Channel_Freq);

//            case aExternalCom.FData.Channel_Security of
//              0 : Objects[6, aIdRow] := TObject(0);
//              1 : Objects[6, aIdRow] := TObject(1);
//            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.ClickCpItemPopUp(Sender: TObject);
var
  i,j : integer;
  ChannelMapping : TChannelMapping;
  aCpGroupName : string;

  aGroupID : integer;
  aGroupName : string;

  aExternalCom : TExternal_Communication_Channel;
  RemoveChannel : TRecModifComm;
  AddChannel : TRecModifComm;
begin
  if Sender is TMenuItem then
  begin
    aGroupID := -1;
    aGroupName := edtGroupName.Text;
    aCpGroupName := DeleteAmpersand(TMenuItem(sender).Caption);

    for i := 0 to simMgrClient.ListComChannel.Count - 1 do
    begin
      ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.Items[i]);

      if LowerCase(ChannelMapping.GroupName) = LowerCase(aGroupName) then
      begin
        aGroupID := ChannelMapping.GroupID;

        if aGroupID <> -1 then
        begin
          for j := 0 to ChannelMapping.ListComChannelMapping.Count - 1 do
          begin
            aExternalCom := TExternal_Communication_Channel(ChannelMapping.ListComChannelMapping.items[j]);

            RemoveChannel.GroupID := ChannelMapping.GroupID;
            RemoveChannel.Channel_Number := aExternalCom.FData.Channel_Number;
            RemoveChannel.Channel_Ident := aExternalCom.FData.Channel_Identifier;
            RemoveChannel.Channel_Code := aExternalCom.FData.Channel_Code;
            RemoveChannel.Channel_Frek := aExternalCom.FData.Channel_Freq;
            RemoveChannel.Channel_band := aExternalCom.FData.Comms_Band;
            case aExternalCom.FData.Channel_Security  of
              0 : RemoveChannel.Channel_Security := false;
              1 : RemoveChannel.Channel_Security := true;
            end;
            RemoveChannel.ModifStat := mcsRemove;

            SimMgrClient.netSend_ModifyCommunication(RemoveChannel);
            Sleep(10);
          end;
        end;

        Break;
      end;
    end;

    if aGroupID <> -1 then
    begin
      for i := 0 to simMgrClient.ListComChannel.Count - 1 do
      begin
        ChannelMapping := TChannelMapping(simMgrClient.ListComChannel.Items[i]);

        if LowerCase(ChannelMapping.GroupName) = LowerCase(aCpGroupName) then
        begin
          if aGroupID <> -1 then
          begin
            for j := 0 to ChannelMapping.ListComChannelMapping.Count - 1 do
            begin
              aExternalCom := TExternal_Communication_Channel(ChannelMapping.ListComChannelMapping.items[j]);

              AddChannel.GroupID := aGroupID;
              AddChannel.Channel_Number := aExternalCom.FData.Channel_Number;
              AddChannel.Channel_Ident := aExternalCom.FData.Channel_Identifier;
              AddChannel.Channel_Code := aExternalCom.FData.Channel_Code;
              AddChannel.Channel_Frek := aExternalCom.FData.Channel_Freq;
              AddChannel.Channel_band := aExternalCom.FData.Comms_Band;
              case aExternalCom.FData.Channel_Security  of
                0 : AddChannel.Channel_Security := false;
                1 : AddChannel.Channel_Security := true;
              end;
              AddChannel.ModifStat := mcsAdd;

              SimMgrClient.netSend_ModifyCommunication(AddChannel);
              Sleep(10);
            end;
          end;

          Break;
        end;
      end;
    end;

    RefreshChannelMapping(DeleteAmpersand(aGroupName));
  end;
end;

procedure TfrmToteDisplay.ClickItemPopUp(Sender: TObject);
var
  GroupName : string;
begin
  if Sender is TMenuItem then
  begin
    GroupName := DeleteAmpersand(TMenuItem(sender).Caption);
    RefreshChannelMapping(DeleteAmpersand(GroupName));
  end;
end;

procedure TfrmToteDisplay.CountDownTimeEngage(grid : TStringGrid; value: String);
begin
  if grid.Name = 'sgSurfacetoAir' then
    UpdateCellGrid(grid, sgSurToAirEditedRow, 6, value)
  else if grid.Name = 'sgSurfacetoSurface' then
    UpdateCellGrid(grid, sgSurToSurEditedRow, 6, value);
end;

procedure TfrmToteDisplay.CountDownTimeFlight(grid : TStringGrid; value: String);
begin
  if grid.Name = 'sgSurfacetoAir' then
    UpdateCellGrid(grid, sgSurToAirEditedRow, 7, value)
  else if grid.Name = 'sgSurfacetoSurface' then
    UpdateCellGrid(grid, sgSurToSurEditedRow, 7, value);
end;

procedure TfrmToteDisplay.UpdateCellGrid(var grid : TStringGrid; row, column : Integer; value : String);
begin
  grid.Cells[column, row] := value;
end;

procedure TfrmToteDisplay.UpdateCountermeasureVehicle(sender: TT3Vehicle);
var
  i         : Integer;
  ecmstatus, counterText : string;
  tn        : TTreeNode;
  //ve        : TT3Vehicle;
  du        : TT3DeviceUnit;
  counter   : TT3CounterMeasure;
begin
  if not Assigned(sender) then
    Exit;

  tvCountermeasures.Items.Clear;

  if Assigned(sender.Devices) then
  begin
    tn := TTreeNode.Create(tvCountermeasures.Items);

    for i := 0 to sender.Devices.Count - 1 do
    begin
      du := sender.Devices.Items[i];

      if du is TT3CounterMeasure then
      begin
        counter := TT3CounterMeasure(du);

        case counter.Status of
          esAvailable:
            ecmStatus := 'Available';
          esUnavailable:
            ecmStatus := 'Unavailable';
          esLaunchingChaff:
            ecmStatus := 'Launching Chaff';
          esDamaged:
            ecmStatus := 'Damaged';
          esOn:
            ecmStatus := 'On';
          esOff:
            ecmStatus := 'Off';
          esEMCON:
            ecmStatus := 'EMCON';
          esAutomatic:
            ecmStatus := 'Automatic';
          esManual:
            ecmStatus := 'Manual';
          esDeployed:
            ecmStatus := 'Deployed';
          esStowed:
            ecmStatus := 'Stowed';
        end;

        if counter is TT3ChaffOnVehicle then
        begin
          counterText := counter.InstanceName + ' : ' + ecmstatus + ' : ' +
          TT3ChaffOnVehicle(counter).ChaffDefinition.FData.Chaff_Qty_On_Board.ToString;
          tn := tvCountermeasures.Items.AddObject(nil, counterText, counter);
//          ShowMessage(counter.ClassName);
        end
        else
        begin
          if counter is TT3ChaffLauncher then
          begin
            counterText := counter.InstanceName + ' : ' + ecmstatus;
            tvCountermeasures.Items.AddChildObject(tn, counterText, counter);
//            ShowMessage(counter.ClassName);
          end
          else
          begin
            counterText := counter.InstanceName + ' : ' + ecmstatus;
            tn := tvCountermeasures.Items.AddObject(nil, counterText, counter);
//            ShowMessage(counter.ClassName);
          end;

        end;

      end;
    end;
  end;
  tvCountermeasures.FullExpand;
end;

function TfrmToteDisplay.GetRowGrid(Sender, Target : String; grid: TStringGrid): Integer;
var
  //ro : Integer;
  I: Integer;
begin
  Result := 0;

  if grid.RowCount < 0 then
    Exit;

  Result := -1;
  for I := 0 to grid.RowCount - 1 do
  begin
    if (grid.Cells[0, I] = Sender) and (grid.Cells[3, I] = Target) then
    begin
       Result := I;
    end;
  end;
end;

procedure TfrmToteDisplay.lvEnviroAreaSelectItem(sender: TObject;
  Item: TListItem; Selected: Boolean);
var
  ge: TGame_Environment_Definition;
  se: TSubArea_Enviro_Definition;
  t: TTime;
begin

  if Item = nil then
    Exit;
  if not Assigned(Item.Data) then
    Exit;
  if not Selected then
    Exit;
  // if first item then
  if (sender as TListView).Selected.Index = 0 then
  begin
    ge := Item.Data;

    with ge.FData do
    begin
      edtWindDir.Text := FormatCourse(Wind_Direction);
      edtWindSpeed.Text := FormatSpeed(Wind_Speed);

      trbDaytimeVisual.Position := Round(Daytime_Visual_Modifier * (100.0/100.0));
      trbDaytimeInfra.Position := Round(Daytime_Infrared_Modifier * (100.0/100.0));
      trbNighttimeVisual.Position := Round(Nighttime_Visual_Modifier * (100.0/100.0));
      trbNighttimeInfra.Position := Round(Nighttime_Infrared_Modifier * (100.0/100.0));

      t := SecondToTime(Sunrise);
      lblEnviCtrlSunrise.Caption := FormatDateTime('hh : nn : ss', t);

      t := SecondToTime(Sunset);
      lblEnviCtrlSunset.Caption := FormatDateTime('hh : nn : ss', t);
      t := SecondToTime(Period_of_Twilight);
      lblEnviCtrlPeriodTwilight.Caption := FormatDateTime('hh : nn : ss', t);

      trbAttenRainRate.Position := Rain_Rate;
      trbAttenCloud.Position := Cloud_Attenuation;

      edtBarometricPressure.Text := FormatFloat('000.0', Barometric_Pressure);
      edtAirTemp.Text := FormatFloat('00.0', Air_Temperature);
      edtCloudBaseHeight.Text := FormatFloat('0000.0', Cloud_Base_Height);

      trbAtmRefract.Position := Round(Atmospheric_Refract_Modifier);

      edtOceanCurrentDirection.Text := FormatFloat('00.0',
        ge.FData.Ocean_Current_Direction);
      edtOceanCurrentSpeed.Text := FormatFloat('00.0',
        ge.FData.Ocean_Current_Speed);

      edtDepthTermalLayer.Text := FormatFloat('00.0',
        ge.FData.Thermal_Layer_Depth);

      cbxShippingRate.ItemHeight := Shipping_Rate;

      edtSpeedOfSoundSurface.Text := FloatToStr(ge.FData.Surface_Sound_Speed);
      edtSpeedOfSoundlayer.Text := FloatToStr(ge.FData.Layer_Sound_Speed);
      edtSpeedOfSoundBottom.Text := FloatToStr(ge.FData.Bottom_Sound_Speed);

      edtSurfaceDuctUp.Text := FloatToStr(Upper_Limit_Surface_Duct_Depth);
      edtSurfaceDuctLow.Text := FloatToStr(Lower_Limit_Surface_Duct_Depth);

      edtSubSurfaceDuctUp.Text := FloatToStr(Upper_Limit_Sub_Duct_Depth);
      edtSubSurfaceDuctLow.Text := FloatToStr(Lower_Limit_Sub_Duct_Depth);

      trbSeaState.SetTick(Sea_State);
      edtSeaState.Text := IntToStr(Sea_State);
      trbSeaState.Position := Sea_State;

      trbBottomLost.SetTick(Bottomloss_Coefficient);
      edtBottomLost.Text := IntToStr(Bottomloss_Coefficient);
      trbBottomLost.Position := Bottomloss_Coefficient;

      edtSurfaceTemperatur.Text := FloatToStr(Surface_Temperature);
      edtAvgOceanDepth.Text := FloatToStr(Ave_Ocean_Depth);
      edtShadowZone.Text := FloatToStr(Shadow_Zone_Trans_Loss);

      edtAttenRainRate.Text := IntToStr(Rain_Rate);
      trbAttenRainRate.SetTick(Rain_Rate);

      edtAttenCloud.Text := IntToStr(Cloud_Attenuation);
      trbAttenCloud.SetTick(Cloud_Attenuation);

      simMgrClient.SubEnviArea.isVisible := False;
    end;
  end
  else
  begin
    se := Item.Data;

    with se.FData do
    begin
      edtWindDir.Text := FormatCourse(Wind_Direction);
      edtWindSpeed.Text := FormatSpeed(Wind_Speed);

      trbDaytimeVisual.Position := Round(Daytime_Visual_Modifier * 100.0);
      trbDaytimeInfra.Position := Round(Daytime_Infrared_Modifier * 100.0);
      trbNighttimeVisual.Position := Round(Nighttime_Visual_Modifier * 100.0);
      trbNighttimeInfra.Position := Round(Nighttime_Infrared_Modifier * 100.0);
      {
        t := SecondToTime(Sunrise);
        lblEnviCtrlSunrise.Caption := FormatDateTime('hh : nn : ss', t);

        t := SecondToTime(Sunset);
        lblEnviCtrlSunset.Caption := FormatDateTime('hh : nn : ss', t);
        t := SecondToTime(Period_of_Twilight);
        lblEnviCtrlPeriodTwilight.Caption := FormatDateTime('hh : nn : ss', t);
        }
      trbAttenRainRate.Position := Rain_Rate;
      trbAttenCloud.Position := Cloud_Attenuation;

      edtBarometricPressure.Text := FormatFloat('000.0', Barometric_Pressure);
      edtAirTemp.Text := FormatFloat('00.0', Air_Temperature);
      edtCloudBaseHeight.Text := FormatFloat('0000.0', Cloud_Base_Height);

      trbAtmRefract.Position := Round(Atmospheric_Refract_Modifier);

      //
      edtOceanCurrentDirection.Text := FormatFloat('00.0',
        Ocean_Current_Direction);
      edtOceanCurrentSpeed.Text := FormatFloat('00.0', Ocean_Current_Speed);

      edtDepthTermalLayer.Text := FormatFloat('00.0', Thermal_Layer_Depth);

      cbxShippingRate.ItemHeight := Shipping_Rate;

      edtSpeedOfSoundSurface.Text := FloatToStr(se.FData.Surface_Sound_Speed);
      edtSpeedOfSoundlayer.Text := FloatToStr(se.FData.Layer_Sound_Speed);
      edtSpeedOfSoundBottom.Text := FloatToStr(se.FData.Bottom_Sound_Speed);

      edtSurfaceDuctUp.Text := FloatToStr(Upper_Limit_Sur_Duct_Depth);
      edtSurfaceDuctLow.Text := FloatToStr(Lower_Limit_Sur_Duct_Depth);

      edtSubSurfaceDuctUp.Text := FloatToStr(Upper_Limit_Sub_Duct_Depth);
      edtSubSurfaceDuctLow.Text := FloatToStr(Lower_Limit_Sub_Duct_Depth);

      trbSeaState.SetTick(Sea_State);
      edtSeaState.Text := IntToStr(Sea_State);
      trbSeaState.Position := Sea_State;

      trbBottomLost.SetTick(Bottomloss_Coefficient);
      edtBottomLost.Text := IntToStr(Bottomloss_Coefficient);
      trbBottomLost.Position := Bottomloss_Coefficient;

      edtSurfaceTemperatur.Text := FloatToStr(Surface_Temperature);
      edtAvgOceanDepth.Text := FloatToStr(Ave_Ocean_Depth);
      edtShadowZone.Text := FloatToStr(Shadow_Zone_Trans_Loss);

      edtAttenRainRate.Text := IntToStr(Rain_Rate);
      trbAttenRainRate.SetTick(Rain_Rate);

      edtAttenCloud.Text := IntToStr(Cloud_Attenuation);
      trbAttenCloud.SetTick(Cloud_Attenuation);

      //draw area sub envi
      simMgrClient.SubEnviArea.X1 := X_Position_1;
      simMgrClient.SubEnviArea.Y1 := Y_Position_1;
      simMgrClient.SubEnviArea.X2 := X_Position_2;
      simMgrClient.SubEnviArea.Y2 := Y_Position_2;
      simMgrClient.SubEnviArea.isVisible  := True;

    end;
  end;

  rw1.Degree := StrToFloat(edtOceanCurrentDirection.Text);
  rw.Degree := StrToFloat(edtWindDir.Text);

end;

procedure TfrmToteDisplay.lvInCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
var
  intItem1,
  intItem2: Integer;
begin
  intItem1 := StrToInt(item1.Caption);
  intItem2 := StrToInt(item2.Caption);

  if intItem1 < intItem2 then
    Compare := -1
  else
  if intItem1 > intItem2 then
    Compare := 1
  else
    Compare := 0;
end;

procedure TfrmToteDisplay.lvOutCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
var
  intItem1,
  intItem2: Integer;
begin
  intItem1 := StrToInt(item1.Caption);
  intItem2 := StrToInt(item2.Caption);

  if intItem1 < intItem2 then
    Compare := -1
  else
  if intItem1 > intItem2 then
    Compare := 1
  else
    Compare := 0;
end;

// ========================Communication================================
procedure TfrmToteDisplay.ObjectCommunicationCreate;
var
  CheckBoxChannel: TBitmap;
begin
  btnRemove.Enabled := False;
  btnReply.Enabled := False;
  btnForward.Enabled := False;
  btnSend.Enabled := False;
  btnEdit.Enabled := False;

  CheckBoxChannel := TBitmap.Create;
  CheckBoxTrue := TBitmap.Create;
  CheckBoxFalse := TBitmap.Create;

  try
    CheckBoxChannel.handle := LoadBitmap(0, PChar(OBM_CHECKBOXES));
    With CheckBoxFalse Do
    Begin
      Width := CheckBoxChannel.Width div 4;
      Height := CheckBoxChannel.Height div 3;
      Canvas.copyrect(Canvas.cliprect, CheckBoxChannel.Canvas, Canvas.cliprect);
    End;
    With CheckBoxTrue Do
    Begin
      Width := CheckBoxChannel.Width div 4;
      Height := CheckBoxChannel.Height div 3;
      Canvas.copyrect(Canvas.cliprect, CheckBoxChannel.Canvas,
        Rect(Width, 0, 2 * Width, Height));
    End;
  finally
    CheckBoxChannel.free
  end;

  GetComChannel;
end;

procedure TfrmToteDisplay.ObjectCommunicationDestroy;
begin
  PopUpMenu.Free;
  CpPopUpMenu.Free;
  CheckBoxTrue.free;
  CheckBoxFalse.free;
end;

procedure TfrmToteDisplay.onEmbarkedTimer(Sender: TObject; QueueNumber,
  Counter: integer);
var
  node : TTreeNode;
  embarked : TT3EmbarkedVehicle;
  queueEmb : TQueuedEmbarkedLaunch;
  cntStr : string;
  i : integer;
  recLaunch : TRecCmd_Embark;

  str : string;
begin
  { update informasi timer pada tree embarked platform }
  if tvEmbarkedPlatforms.Items.Count <= 0 then exit;
  if not (Sender is TT3EmbarkedVehicle) then exit;

  node := GetItemByObjectData(tvEmbarkedPlatforms.Items.Item[0],Sender);
  if not Assigned(node) then exit;

  embarked := TT3EmbarkedVehicle(Sender);
  if embarked.getQueueCount  <= 0 then exit;

  for I := 0 to embarked.getQueueCount - 1 do begin
    queueEmb := embarked.getQueueItem(i);

    if queueEmb = nil then Continue;
    if queueEmb.HasLaunch then Continue;

    if queueEmb.ReadyToLaunch then begin
      cntStr := '';

      //untuk launch embark platform setelah selesai countdown
      recLaunch.QueueNum  := queueEmb.QueueNumber;
      recLaunch.SessionID := simMgrClient.SessionID;
      recLaunch.ParentPlatformID := TT3PlatformInstance(embarked.Parent).InstanceIndex;
      recLaunch.EmbarkPlatformID := 0;
      recLaunch.Hosted_Index     := 0;
      recLaunch.Quantity         := 0;
      recLaunch.LaunchName       := '';
      recLaunch.TrackIdent       := queueEmb.TrackID;
      recLaunch.InitSpeed        := 0;
      recLaunch.InitCourse       := 0;
      recLaunch.InitAltitude     := 0;
      recLaunch.InitX            := embarked.Parent.getPositionX;
      recLaunch.InitY            := embarked.Parent.getPositionY;
      recLaunch.InitZ            := embarked.Parent.getPositionZ;
      recLaunch.GrpID            := simMgrClient.FMyCubGroup.FData.Group_Index;

      recLaunch.OrderID := CORD_ID_LAUNCH;
      simMgrClient.netSend_CmdLaunch_Embark(recLaunch);

      case queueEmb.ReadyToLaunch of
        True : str := 'True';
        False : str := 'False';
      end;

      queueEmb.HasLaunch := True;

      simMgrClient.Log('TfrmToteDisplay.onEmbarkedTimer', 'Tote Send Launch platform : ' + queueEmb.TrackID + ' ReadyToLaunch : ' + str);

      continue;
    end;

    cntStr := cntStr + '[' + SecondToTimeString(Round(queueEmb.ReadyingTime)) + ']';

    if i <> embarked.getQueueCount - 1 then
      cntStr := cntStr + ',';
  end;

  node.Text := embarked.EmbarkedIdentifier + ' ' + cntStr;

end;

procedure TfrmToteDisplay.onEmbarkedToReadyingTime(Sender : TObject; QueueNumber : Integer; Counter : Integer);
var
  node : TTreeNode;
  embarked : TT3EmbarkedVehicle;
  queueEmb : TQueuedEmbarkedLaunch;
  cntStr : string;
  i : integer;
  r : TRecCmd_Embark_Landing;
begin
  { update informasi timer pada tree embarked platform }
  if tvEmbarkedPlatforms.Items.Count <= 0 then exit;
  if not (Sender is TT3EmbarkedVehicle) then exit;

  node := GetItemByObjectData(tvEmbarkedPlatforms.Items.Item[0],Sender);

  if not Assigned(node) then exit;

  if not node.HasChildren then Exit;

  node := node.Item[1];

  if not Assigned(node) then exit;

  embarked := TT3EmbarkedVehicle(Sender);

  if embarked.getQueueLandCount  <= 0 then exit;

  for I := 0 to embarked.getQueueLandCount - 1 do begin
    queueEmb := embarked.getQueueLandItem(i);

    if queueEmb = nil then Continue;
    if queueEmb.HasLaunch then Continue;

    if queueEmb.ReadyToLaunch then begin
      cntStr := '';

      r.ParentPlatformID := TT3Vehicle(embarked.Parent).InstanceIndex;
      r.EmbarkPlatformID := 0;
      r.OrderID := CORD_FINISH_READYING;
      r.IndexEmbark := embarked.IndexEmbark;
      r.IndexLanding := queueEmb.QueueNumber;
      r.InitSpeed := 0;
      r.InitCourse := 0;
      r.InitAltitude := 0;

      simMgrClient.netSend_Cmd_Embark_Land(r);

      queueEmb.HasLaunch := True;
//      embarked.removeQueueLandItem(queueEmb);
//      embarked.Quantity := embarked.Quantity + 1;

      continue;
    end;

    if (i <> embarked.getQueueLandCount - 1) and (cntStr <> '') then
      cntStr := cntStr + ',';

    cntStr :=  cntStr + '[' + SecondToTimeString(Round(queueEmb.ReadyingTime)) + ']';

  end;


//  if embarked.Readying <= 0 then
//  begin
//    if embarked.TempReadying <> -1 then
//      cntStr := cntStr + '[' + SecondToTimeString(Round(embarked.TempReadying)) + ']'
//    else
//      cntStr := cntStr + '[' + SecondToTimeString(0) + ']'
//  end
//  else
//    cntStr := cntStr + '[' + SecondToTimeString(Round(embarked.Readying)) + ']';

  node.Text := 'Readying : ' + cntStr;
end;

procedure TfrmToteDisplay.onEmbarkedUpdateState(Sender: TObject);
var
  node, child : TTreeNode;
  embarked : TT3EmbarkedVehicle;
  j, i : Integer;
  queueEmb : TQueuedEmbarkedLaunch;
  str, countstr : string;
  cntStr : string;
begin
  { update state readying, launch alert di treeview item }
  if tvEmbarkedPlatforms.Items.Count <= 0 then exit;
  if not (Sender is TT3EmbarkedVehicle) then exit;

  node := GetItemByObjectData(tvEmbarkedPlatforms.Items.Item[0],Sender);
  if not Assigned(node) then exit;

  embarked := TT3EmbarkedVehicle(Sender);

  if embarked.getQueueCount  <= 0 then
    node.Text := embarked.EmbarkedIdentifier
  else
  begin
    for I := 0 to embarked.getQueueCount - 1 do begin
      queueEmb := embarked.getQueueItem(i);

      if queueEmb = nil then Continue;
      if queueEmb.HasLaunch then Continue;

      if queueEmb.ReadyToLaunch then begin
        cntStr := '';
        continue;
      end;

      cntStr := cntStr + '[' + SecondToTimeString(Round(queueEmb.ReadyingTime)) + ']';

      if i <> embarked.getQueueCount - 1 then
        cntStr := cntStr + ',';
    end;

    node.Text := embarked.EmbarkedIdentifier + ' ' + cntStr;
  end;

  if node.HasChildren then begin
    child := node.getFirstChild;

    while child <> nil do begin

      case child.StateIndex of
        // Quantity
        1 : child.Text := 'Available : ' + IntToStr(embarked.Quantity) ;
        // Readying
        2 :
          begin
            if embarked.getQueueLandCount <= 0 then
              str := 'Readying : '+ SecondToTimeString(Round(0))
            else
            begin
              if embarked.getQueueLandCount  <= 0 then exit;
              for j := 0 to embarked.getQueueLandCount - 1 do begin
                queueEmb := embarked.getQueueLandItem(j);

                countstr := countstr + '[' + SecondToTimeString(Round(queueEmb.ReadyingTime)) + ']';

                if j <> embarked.getQueueLandCount - 1 then
                  countstr := countstr + ',';
              end;

              str := 'Readying : '+ countstr;
            end;

            child.Text := str;
          end;
        // Launch alert
        3 : child.Text := 'Launch Alert : ' + IntToStr(embarked.LaunchAlert) ;
      end;

      child := child.getNextSibling;
    end;
  end;
end;

procedure TfrmToteDisplay.StatusClick(sender: TObject);
begin
  if lvPlatforms.Selected <> nil then
  begin
    edtState.Tag := TMenuItem(sender).Tag;
    tagState     := edtState.Tag;

    if tagState = tagOverallDamage then
    begin
      edtState.Text := IntToStr(TT3Vehicle(lvPlatforms.Selected.Data).DamageOverall);
      edtState.Visible := true;
    end
    else if tagState = tagHelm then
    begin

    end
    else if tagState = tagPropulsion then
    begin

    end
    else if tagState = tagSpeed then
    begin

    end
    else if tagState = tagFuelRemaining then
    begin
      edtState.Text := FloatToStr(Round(TT3Vehicle(lvPlatforms.Selected.Data).FuelPercentage));
      edtState.Visible := true;
    end
    else if tagState = tagFuelLeakage then
    begin

    end
    else if tagState = tagCommunications then
    begin

    end;
  end;
end;

procedure TfrmToteDisplay.RefreshPlatformList;
var
  s: string;
  li: TListItem;
  pi: TT3PlatformInstance;
  //det: TT3DetectedTrack;
  //grp: T3CubicleGroup;
  //mem: T3CubicleGroupMember;
  i : Integer;
  forceColor: String;
  //bmp: TBitmap;
  //thisForce: byte;
begin
  lvPlatforms.Items.Clear;

  with simMgrClient do
  begin
    if IsController then
    begin
      for i := 0 to SimPlatforms.itemCount - 1 do
      begin
        pi := TT3PlatformInstance(SimPlatforms.getObject(i));
		    if not(Assigned(pi)) then Continue;

        s := pi.InstanceName;

        case pi.Force_Designation of
          1:
            begin
              lvPlatforms.Canvas.Brush.Color := clRed;
              forceColor := 'Red';
            end;
          2:
            begin
              lvPlatforms.Canvas.Brush.Color := clYellow;
              forceColor := 'Yellow';
            end;
          3:
            begin
              lvPlatforms.Canvas.Brush.Color := clBlue;
              forceColor := 'Blue';
            end;
          4:
            begin
              lvPlatforms.Canvas.Brush.Color := clGreen;
              forceColor := 'Green';
            end;
          5:
            begin
              lvPlatforms.Canvas.Brush.Color := clWhite;
              forceColor := 'No Force';
            end;
          6:
            begin
              lvPlatforms.Canvas.Brush.Color := clBlack;
              forceColor := 'Black';
            end;
        else
          lvPlatforms.Canvas.Brush.Color := clBlack;
          forceColor := 'Black'; //mk
        end;

        if pi is TT3Vehicle then     //mk
        begin
          if ((TT3PlatformInstance(pi).UnitGroup) and not(pi.FreeMe)) then
          begin
            li := lvPlatforms.Items.Add;
            li.Caption := pi.InstanceClass;
            li.SubItems.Add(pi.InstanceName);
            li.SubItems.Add(pi.Track_ID);
            li.SubItems.Add(forceColor);
            li.StateIndex := pi.Force_Designation;
            li.Data := pi;
          end;
        end;
      end;
    end
    else
    begin
      {for i := 0 to FMyCubGroup.Count - 1 do}
      for i := 0 to SimPlatforms.itemCount - 1 do
      begin
//		    mem := T3CubicleGroupMember(FMyCubGroup.Items[i]);
//        if not(Assigned(mem)) then Continue;
//
//        pi := FindT3PlatformByID(mem.FData.Platform_Instance_Index);

        pi := TT3PlatformInstance(SimPlatforms.getObject(i));
        if not(Assigned(pi)) then
          Continue;

        if simMgrClient.MyForceDesignation = -1 then
          break
        else
        begin
          if simMgrClient.MyForceDesignation <> pi.Force_Designation then
            continue;
        end;

        case pi.Force_Designation of
          1:
          begin
            lvPlatforms.Canvas.Brush.Color := clRed;
            forceColor := 'Red';
          end;
          2:
          begin
            lvPlatforms.Canvas.Brush.Color := clYellow;
            forceColor := 'Yellow';
          end;
          3:
          begin
            lvPlatforms.Canvas.Brush.Color := clBlue;
            forceColor := 'Blue';
          end;
          4:
          begin
            lvPlatforms.Canvas.Brush.Color := clGreen;
            forceColor := 'Green';
          end;
          5:
          begin
            lvPlatforms.Canvas.Brush.Color := clWhite;
            forceColor := 'No Force';
          end;
          6:
          begin
            lvPlatforms.Canvas.Brush.Color := clBlack;
            forceColor := 'Black';
          end;
        else
          lvPlatforms.Canvas.Brush.Color := clBlack;
          forceColor := 'Black'; //mk
        end;

        if pi is TT3Vehicle then     //mk
        begin
          if {((TT3PlatformInstance(pi).UnitGroup) and} not(pi.FreeMe) then
          begin
//            li := lvPlatforms.Items.Add;
//            li.Caption := pi.InstanceClass;
//            li.SubItems.Add(pi.InstanceName);
//            li.SubItems.Add(pi.Track_ID);
//            li.SubItems.Add(forceColor);
//            li.StateIndex := pi.Force_Designation;
//            li.Data := pi;

              li := lvPlatforms.Items.Add;
              li.Caption := pi.InstanceClass;
              li.SubItems.Add(pi.InstanceName);
              li.SubItems.Add(IntToStr(pi.TrackNumber));
              li.SubItems.Add(forceColor);
              li.StateIndex := pi.Force_Designation;
              li.Data := pi;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.sgCommChannelDefSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  R: TRect;
begin
  if not simMgrClient.ISInstructor then Exit;

  if (sgCommChannelDef.Selection.Top < 0) or
    (sgCommChannelDef.Selection.Top > sgCommChannelDef.RowCount) then exit;

  with sgCommChannelDef do
  begin
    if (Objects[0, ARow] <> Tobject(0)) and (aRow <> 0) and (ACol = 4) then
    begin
      R := sgCommChannelDef.CellRect(ACol, aRow);
      R.Left := R.Left + sgCommChannelDef.Left;
      R.Right := R.Right + sgCommChannelDef.Left;
      R.Top := R.Top + sgCommChannelDef.Top;
      R.Bottom := R.Bottom + sgCommChannelDef.Top;

      with cbbBand do
      begin
        Left := R.Left + 1;
        Top := R.Top + 1;
        Width := (R.Right + 1) - R.Left;
        Height := (R.Bottom + 1) - R.Top;

        ItemIndex := Items.IndexOf(sgCommChannelDef.Cells[aCol, aRow]);
//        Visible := True;
//        SetFocus;
      end;
      CanSelect := True;
    end
    else
      cbbBand.Visible := False;
  end;
end;

procedure TfrmToteDisplay.sgComInInjectionSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  R: TRect;
begin
  with sgComInInjection do
  begin
    if (Cells[0, ARow] <> '') and (aRow <> 0) and (ACol = 3) then
    begin
      R := sgComInInjection.CellRect(ACol, aRow);
      R.Left := R.Left + sgComInInjection.Left;
      R.Right := R.Right + sgComInInjection.Left;
      R.Top := R.Top + sgComInInjection.Top;
      R.Bottom := R.Bottom + sgComInInjection.Top;

      with cbbJam do
      begin
        Left := R.Left + 1;
        Top := R.Top + 1;
        Width := (R.Right + 1) - R.Left;
        Height := (R.Bottom + 1) - R.Top;

        ItemIndex := Items.IndexOf(sgComInInjection.Cells[aCol, aRow]);
//        Visible := True;
//        SetFocus;
      end;
      CanSelect := True;
    end
    else
      cbbJam.Visible := False;
  end;
end;

procedure TfrmToteDisplay.cbbBandChange(Sender: TObject);
var
  intRow : Integer;
  RecSend : TRecModifComm;
begin
  if not simMgrClient.ISInstructor then Exit;

  intRow := sgCommChannelDef.Row;

  if cbbBand.ItemIndex <> -1 then
  begin
    if Assigned(sgCommChannelDef.Objects[0, intRow]) then
    begin
      RecSend.GroupID := -1;
      RecSend.Channel_Number := intRow{ - 1};
      RecSend.Channel_Ident := '';
      RecSend.Channel_Code := '';
      RecSend.Channel_Frek := 0;
      RecSend.Channel_band := cbbBand.ItemIndex;
      RecSend.Channel_Security := false;
      RecSend.Channel_intfr := mcsClear;
      RecSend.ModifStat := mcsChangeBand;
      simMgrClient.netSend_ModifyCommunication(RecSend);
    end;
  end;
end;

procedure TfrmToteDisplay.cbbJamChange(Sender: TObject);
var
  intRow : Integer;
  RecSend : TRecModifComm;
begin
  intRow := sgComInInjection.Row;

  if cbbJam.ItemIndex <> -1 then
  begin
    RecSend.GroupID := -1;
    RecSend.Channel_Number := StrToInt(sgComInInjection.Cells[0, intRow]);
    RecSend.Channel_Ident := '';
    RecSend.Channel_Code := '';
    RecSend.Channel_Frek := 0;
    RecSend.Channel_band := 0;
    RecSend.Channel_Security := false;

    case cbbJam.ItemIndex of
      0 : RecSend.Channel_intfr := mcsClear;
      1 : RecSend.Channel_intfr := mcsJamming;
      2 : RecSend.Channel_intfr := mcsNoise;
      3 : RecSend.Channel_intfr := mcsTones;
    end;

    RecSend.ModifStat := mcsInterference;
    simMgrClient.netSend_ModifyCommunication(RecSend);
  end;
end;

procedure TfrmToteDisplay.CommunicationCheckBox(acol, arow, state: Integer);
var
  RecSend : TRecModifComm;
  ComFreq : Double;
begin
  if state = 0 then
  begin
    if Assigned(sgCommChannelDef.Objects[acol, arow]) then
    begin
      RecSend.Channel_Number := arow{ - 1};
      RecSend.GroupID := -1;
      RecSend.Channel_Ident := '';
      RecSend.Channel_Code := '';
      RecSend.Channel_Frek := 0;
      RecSend.Channel_band := 0;
      RecSend.Channel_Security := False;
      RecSend.Channel_intfr := mcsClear;
      RecSend.ModifStat := mcsOff;
      simMgrClient.netSend_ModifyCommunication(RecSend);
    end
    else
    begin
      RecSend.GroupID := -1;
      RecSend.Channel_Number := aRow{ - 1};

      //Channel Ident
      if sgCommChannelDef.Cells[2, arow] = '' then
        RecSend.Channel_Ident := 'Channel-' + IntToStr(RecSend.Channel_Number{ + 1})
      else
        RecSend.Channel_Ident := sgCommChannelDef.Cells[2, arow];

      //Channel Code
      if sgCommChannelDef.Cells[3, arow] = '' then
        RecSend.Channel_Code := 'Ch-' + IntToStr(RecSend.Channel_Number{ + 1})
      else
        RecSend.Channel_Code := sgCommChannelDef.Cells[3, arow];

      //Channel Band
      if sgCommChannelDef.Cells[4, arow] = 'HF' then RecSend.Channel_band := 0
      else if sgCommChannelDef.Cells[4, arow] = 'VHF/UHF' then RecSend.Channel_band := 1
      else if sgCommChannelDef.Cells[4, arow] = 'SATCOM' then RecSend.Channel_band := 2
      else if sgCommChannelDef.Cells[4, arow] = 'UWT' then RecSend.Channel_band := 3
      else if sgCommChannelDef.Cells[4, arow] = 'FM' then RecSend.Channel_band := 4;

      //Channel Freq
      if TryStrToFloat(sgCommChannelDef.Cells[5, arow], ComFreq) then
        RecSend.Channel_Frek := ComFreq
      else
        RecSend.Channel_Frek := 300;

      //Channel Security
      if Assigned(sgCommChannelDef.Objects[6, arow]) then
        RecSend.Channel_Security := True
      else
        RecSend.Channel_Security := False;

      RecSend.Channel_intfr := mcsClear;
      RecSend.ModifStat := mcsCreate;
      simMgrClient.netSend_ModifyCommunication(RecSend);
    end;
  end
  else
  if state = 1 then
  begin
    if Assigned(sgCommChannelDef.Objects[0, arow]) then
    begin
      if Assigned(sgCommChannelDef.Objects[acol, arow]) then
      begin
        RecSend.Channel_Number := arow{ - 1};
        RecSend.GroupID := -1;
        RecSend.Channel_Ident := '';
        RecSend.Channel_Code := '';
        RecSend.Channel_Frek := 0;
        RecSend.Channel_band := 0;
        RecSend.Channel_Security := False;
        RecSend.Channel_intfr := mcsClear;
        RecSend.ModifStat := mcsChangeSecure;
        simMgrClient.netSend_ModifyCommunication(RecSend);
      end
      else
      begin
        RecSend.Channel_Number := arow{ - 1};
        RecSend.GroupID := -1;
        RecSend.Channel_Ident := '';
        RecSend.Channel_Code := '';
        RecSend.Channel_Frek := 0;
        RecSend.Channel_band := 0;
        RecSend.Channel_Security := true;
        RecSend.Channel_intfr := mcsClear;
        RecSend.ModifStat := mcsChangeSecure;
        simMgrClient.netSend_ModifyCommunication(RecSend);
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.sgCommChannelDefKeyPress(Sender: TObject;
  var Key: Char);
var
  pt : TPoint;
  grid : TStringgrid;
  aCol, aRow : Integer;
  ChannelFreq : Double;
  RecSend : TRecModifComm;
begin
  if not simMgrClient.ISInstructor then Exit;
  if key = #13 then
  begin
    GetCursorPos( pt );
    grid := Sender As TStringgrid;
    pt:= grid.ScreenToClient( pt );
    grid.MouseToCell( pt.x, pt.y, aCol, aRow );

    if ((aCol = 2) or (aCol = 3) or (aCol = 5)) and (aRow >= grid.fixedRows) then
    begin
      if Assigned(grid.Objects[0, aRow]) then
      begin
        if grid.Cells[aCol, aRow] <> TempDefCom then
        begin
          RecSend.GroupID := -1;
          RecSend.Channel_Number := aRow{ - 1};
          RecSend.Channel_Ident := grid.Cells[2, aRow];
          RecSend.Channel_Code := grid.Cells[3, aRow];
          if TryStrToFloat(grid.Cells[5, aRow], ChannelFreq) then
            RecSend.Channel_Frek := ChannelFreq
          else
            RecSend.Channel_Frek := 300;
          RecSend.Channel_band := 0;
          RecSend.Channel_Security := false;
          RecSend.ModifStat := mcsChangeLabel;
          simMgrClient.netSend_ModifyCommunication(RecSend);

          grid.Cells[aCol, aRow] := TempDefCom
        end;
      end;
    end;
  end;
end;




procedure TfrmToteDisplay.sgCommChannelDefClick(Sender: TObject);
var
  pt : TPoint;
  grid: TStringgrid;
  aCol, aRow: Integer;
begin
  if not simMgrClient.ISInstructor then Exit;

  GetCursorPos( pt );
  grid := Sender As TStringgrid;
  pt:= grid.ScreenToClient( pt );
  grid.MouseToCell( pt.x, pt.y, aCol, aRow );

  if (aCol = 0) and (aRow >= grid.fixedRows) Then
  begin
    CommunicationCheckBox(aCol, aRow, 0);
  end
  else
  If (aCol = 6) and (aRow >= grid.fixedRows) Then
  begin
    CommunicationCheckBox( aCol, aRow, 1 );
  end;

  With Sender as TStringgrid Do
  begin
    If (ACol = 0) or (ACol = 1) or (ACol = 4) or (ACol = 6 )   Then
      Options := Options - [ goediting ]
    else
    begin
      with sgCommChannelDef do
      begin
        if Objects[0, ARow] = TObject(1) then
        begin
          Options := Options + [ goediting ];
          TempDefCom := Cells[ACol, aRow];
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.sgCommChannelDefDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
const
   AlignFlags: array [TAlignment] of Integer =
   (DT_LEFT or DT_VCENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
    DT_RIGHT or DT_VCENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
    DT_CENTER or DT_VCENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX);
var
  Grid: TStringgrid;
begin
  If not ( gdFixed In State ) and (aCol = 0) Then
  Begin
    grid:= Sender As TStringgrid;
    With grid.Canvas Do
    Begin
      brush.color := clWindow;
      Fillrect( rect );
      If Assigned(grid.Objects[aCol, aRow]) Then
        Draw( (rect.right + rect.left - CheckBoxTrue.width) div 2,
              (rect.bottom + rect.top - CheckBoxTrue.height) div 2,
              CheckBoxTrue )
      Else
        Draw( (rect.right + rect.left - CheckBoxFalse.width) div 2,
              (rect.bottom + rect.top - CheckBoxFalse.height) div 2,
              CheckBoxFalse )
    End;
  End;

  If not ( gdFixed In State ) and (aCol = 6) Then
  Begin
    grid:= Sender As TStringgrid;
    With grid.Canvas Do
    Begin
      brush.color := clWindow;
      Fillrect( rect );
      If Assigned(grid.Objects[aCol, aRow]) Then
        Draw( (rect.right + rect.left - CheckBoxTrue.width) div 2,
              (rect.bottom + rect.top - CheckBoxTrue.height) div 2,
              CheckBoxTrue )
      Else
        Draw( (rect.right + rect.left - CheckBoxFalse.width) div 2,
              (rect.bottom + rect.top - CheckBoxFalse.height) div 2,
              CheckBoxFalse )
    End;
  End;
end;

procedure TfrmToteDisplay.GetComChannel;
var
  i,j,k,l : Integer;
  AExternalCom,
  ATempExternalCom :  TExternal_Communication_Channel;
  aComChannel : TChannelMapping;

  cubChannel : TT3CubicleChanel;
  aIdRow : integer;
  isFound : Boolean;
begin
  //Default Value for Channel Definition
  with sgCommChannelDef do
  begin
    Cells[0, 0] := 'Enable';
    Cells[1, 0] := 'Channel';
    Cells[2, 0] := 'Name';
    Cells[3, 0] := 'Code';
    Cells[4, 0] := 'Band';
    Cells[5, 0] := 'Frequency (MHz)';
    Cells[6, 0] := 'Secure';
  end;

  //Set column's wide, Hide column 0 & 6
  sgCommChannelDef.DefaultColWidth := (sgCommChannelDef.Width div 5) - 5;
  sgCommChannelDef.ColWidths[0] := 0;
  sgCommChannelDef.ColWidths[6] := 0;

  //Set RowCount appropriate to number of excom
  if (sgCommChannelDef.Height div 26) < simMgrClient.Scenario.ExCom.Count then
    sgCommChannelDef.RowCount := simMgrClient.Scenario.ExCom.Count+2
  else
    sgCommChannelDef.RowCount := 36;

  with sgComInInjection do
  begin
    Cells[0, 0] := 'Channel';
    Cells[1, 0] := 'Name';
    Cells[2, 0] := 'Code';
    Cells[3, 0] := 'Sound Effect';
  end;

  //Set column's wide
  sgComInInjection.DefaultColWidth := (sgComInInjection.Width div 4) - 7;

  //Set RowCount appropriate to number of excom
  if (sgComInInjection.Height div 26) < SimManager.Scenario.ExCom.Count then
    sgComInInjection.RowCount := simMgrClient.Scenario.ExCom.Count+2
  else
    sgComInInjection.RowCount := 35;

  for i := 0 to SimManager.Scenario.ExCom.Count - 1{sgCommChannelDef.RowCount} do
  begin
    sgCommChannelDef.Cells[1, i + 1] := IntToStr(i + 1); // Channel Number
    sgCommChannelDef.Cells[4, i + 1] := 'VHF/UHF';   // Channel Band
    sgCommChannelDef.Cells[5, i + 1] := '300';       // Channel Frekuensi
  end;

  //Add All Member to List
  for j := 0 to simMgrClient.Scenario.CubChanelList.Count - 1 do
  begin
    cubChannel := TT3CubicleChanel(simMgrClient.Scenario.CubChanelList.Items[j]);

    aComChannel := TChannelMapping.create;
    aComChannel.GroupID := cubChannel.GroupID;
    aComChannel.GroupName := cubChannel.GroupName;

    //Create Pop Up Menu Select and Copy
    //Select
    CpItemPopUp := TMenuItem.Create(CpPopUpMenu);
    CpItemPopUp.Caption := cubChannel.GroupName;
    CpItemPopUp.Tag := cubChannel.GroupID;
    CpItemPopUp.OnClick := ClickCpItemPopUp;
    CpPopUpMenu.Items.Add(CpItemPopUp);
    //Copy
    ItemPopUp := TMenuItem.Create(PopUpMenu);
    ItemPopUp.Caption := cubChannel.GroupName;
    ItemPopUp.Tag := cubChannel.GroupID;
    ItemPopUp.OnClick := ClickItemPopUp;
    PopUpMenu.Items.Add(ItemPopUp);

    for l := 0 to simMgrClient.Scenario.ExCom.Count - 1 do
    begin
      AExternalCom := TExternal_Communication_Channel(simMgrClient.Scenario.ExCom[l]);
      isFound := false;

      for k := 0 to cubChannel.ListExternalChannel.Count - 1 do
      begin
        ATempExternalCom := TExternal_Communication_Channel(cubChannel.ListExternalChannel.Items[k]);

        if AExternalCom.FData.Channel_Number = ATempExternalCom.FData.Channel_Number then
        begin
          isFound := True;
          Break;
        end;
      end;

      if isFound then
      begin
        //addList Communication Mapping
        AExternalCom.FData.Channel_Interference := mcsClear;
        aComChannel.AddtoChannelMapping(AExternalCom.FData);
      end
      else
      begin
        //addList Communication Available
        AExternalCom.FData.Channel_Interference := mcsClear;
        aComChannel.AddtoChannelAvailable(AExternalCom.FData);
      end;
    end;

    simMgrClient.ListComChannel.add(aComChannel);
  end;

  if simMgrClient.ISInstructor then
  begin
    for i := 0 to simMgrClient.Scenario.CubChanelList.Count - 1 do
    begin
      cubChannel := TT3CubicleChanel(simMgrClient.Scenario.CubChanelList.Items[i]);
      if cubChannel.GroupID = 0 then
      begin
//        for j := 0 to sgCommChannelDef.RowCount do      //sudah di set di atas
//        begin
//          sgCommChannelDef.Cells[1, j + 1] := IntToStr(j); // Channel Number
//          sgCommChannelDef.Cells[4, j + 1] := 'VHF/UHF';   // Channel Band
//          sgCommChannelDef.Cells[5, j + 1] := '300';       // Channel Frekuensi
//        end;

        //Fill in Stringgrid channel definition in Intruktur
        for j := 0 to cubChannel.ListExternalChannel.Count - 1 do
        begin
          AExternalCom := TExternal_Communication_Channel(simMgrClient.Scenario.ExCom[j]);
          aIdRow := AExternalCom.FData.Channel_Number {+ 1};

          sgCommChannelDef.Cells[2, aIdRow] := AExternalCom.FData.Channel_Identifier;
          sgCommChannelDef.Cells[3, aIdRow] := AExternalCom.FData.Channel_Code;

          sgComInInjection.Cells[0, aIdRow] := IntToStr(AExternalCom.FData.Channel_Number);
          sgComInInjection.Cells[1, aIdRow] := AExternalCom.FData.Channel_Identifier;
          sgComInInjection.Cells[2, aIdRow] := AExternalCom.FData.Channel_Code;
          sgComInInjection.Cells[3, aIdRow] := 'Clear';

          case AExternalCom.FData.Comms_Band of
            0 : sgCommChannelDef.Cells[4, aIdRow] := 'HF';
            1 : sgCommChannelDef.Cells[4, aIdRow] := 'VHF/UHF';
            2 : sgCommChannelDef.Cells[4, aIdRow] := 'SATCOM';
            3 : sgCommChannelDef.Cells[4, aIdRow] := 'UWT';
            4 : sgCommChannelDef.Cells[4, aIdRow] := 'FM';
          end;

//          with sgCommChannelDef do      // tidak ditampilkan
//          begin
//            Objects[0, aIdRow] := TObject(1);
//
//            case AExternalCom.FData.Channel_Security of
//              0 : Objects[6, aIdRow] := TObject(0);
//              1 : Objects[6, aIdRow] := TObject(1);
//            end;
//          end;

          with lvOut.Items.Add do
          begin
            Caption := IntToStr(AExternalCom.FData.Channel_Number);
            SubItems.Add(AExternalCom.FData.Channel_Identifier);
            SubItems.Add(AExternalCom.FData.Channel_Code);
          end;
        end;

        Break;
      end;
    end;

    edtGroupName.Text := 'Controller';
    //Jamming
    tbNoise.Min := 0;
    tbNoise.Max := 1000;
    tbJamming.Min := 0;
    tbJamming.Max := 1000;
    tbMHStones.Min := 0;
    tbMHStones.Max := 1000;
  end
  else
  begin
    if not Assigned(simMgrClient.FMyCubGroup) then exit;

    for i := 0 to simMgrClient.Scenario.CubChanelList.Count - 1 do
    begin
      cubChannel := simMgrClient.Scenario.CubChanelList.Items[i];
      if cubChannel.GroupID = simMgrClient.FMyCubGroup.FData.Group_Index then
      begin
        for j := 0 to cubChannel.ListExternalChannel.Count - 1 do
        begin
          AExternalCom := TExternal_Communication_Channel(cubChannel.ListExternalChannel.Items[j]);
          aIdRow := AExternalCom.FData.Channel_Number{ + 1};

//          sgCommChannelDef.Objects[0, aIdRow] := TObject(1);
          sgCommChannelDef.Cells[2, aIdRow] := AExternalCom.FData.Channel_Identifier;
          sgCommChannelDef.Cells[3, aIdRow] := AExternalCom.FData.Channel_Code;

          case AExternalCom.FData.Comms_Band of
            0 : sgCommChannelDef.Cells[4, aIdRow] := 'HF';
            1 : sgCommChannelDef.Cells[4, aIdRow] := 'VHF/UHF';
            2 : sgCommChannelDef.Cells[4, aIdRow] := 'SATCOM';
            3 : sgCommChannelDef.Cells[4, aIdRow] := 'UWT';
            4 : sgCommChannelDef.Cells[4, aIdRow] := 'FM';
          end;

//          case AExternalCom.FData.Channel_Security of
//            0 : sgCommChannelDef.Objects[6, aIdRow] := TObject(0);
//            1 : sgCommChannelDef.Objects[6, aIdRow] := TObject(1);
//          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.btnNewClick(sender: TObject);
begin
  if not Assigned(fNewMessage) then
    fNewMessage := TfNewMessage.Create(self);

  fNewMessage.isNew := true;
  fNewMessage.ShowModal;
end;

procedure TfrmToteDisplay.btnEditClick(sender: TObject);
var
  MessageHandling : TMessageHandling;
  RecSendMessage : TRecSendMessage;
begin
  if Assigned(fNewMessage) then
    fNewMessage.Close;

  if lvDraft.Selected <> nil then
  begin
    if lvDraft.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvDraft.Selected.Data);

      if not Assigned(fNewMessage) then
        fNewMessage := TfNewMessage.Create(self);

      fNewMessage.isNew := False;
      fNewMessage.mmoDisplay.Lines.Clear;
      fNewMessage.edtTo.Text := MessageHandling.FData.RecipientList;
      fNewMessage.edtSubject.Text := MessageHandling.FData.Subject;
      fNewMessage.cbbPrior.ItemIndex := MessageHandling.FData.Priority;
      fNewMessage.mmoDisplay.Lines.Add(MessageHandling.FData.MessageHandling);
      
      MessageHandling.FData.OrderID := 2;
      MessageHandling.FData.Messagetype := 4;
      RecSendMessage := MessageHandling.FData;

      if simMgrClient.ISInstructor then
        MessageHandling.FData.SendFrom := 0
      else
        MessageHandling.FData.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      simMgrClient.netSend_MessageHandling(RecSendMessage);

      fNewMessage.Show;
    end;
  end;
end;

procedure TfrmToteDisplay.btnSendClick(sender: TObject);
var
  i,j : integer;
  MessageHandling : TMessageHandling;
  RecSendMessage: TRecSendMessage;

  SendToCub : TStrings;
  grp : T3CubicleGroup;
begin
  if lvDraft.Selected <> nil then
  begin
    if lvDraft.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvDraft.Selected.Data);

      SendToCub := TStringList.Create;
      SendToCub.Delimiter := ';';
      SendToCub.DelimitedText := MessageHandling.FData.RecipientList;
      
      RecSendMessage.RecipientList := SendToCub.DelimitedText;
      RecSendMessage.OrderID := 0;

      if simMgrClient.ISInstructor then
        RecSendMessage.SendFrom := 0
      else
        RecSendMessage.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      RecSendMessage.Subject := MessageHandling.FData.Subject;
      RecSendMessage.Priority := MessageHandling.FData.Priority;
      RecSendMessage.Band := MessageHandling.FData.band;
      RecSendMessage.MessageHandling := MessageHandling.FData.MessageHandling;
      RecSendMessage.Messagetype := 0;
      simMgrClient.netSend_MessageHandling(RecSendMessage);

      //Add to Queue Message -> Send after time is ready
      for i := 0 to SendToCub.Count - 1 do
      begin
        RecSendMessage.Sendto := 0;

        for j := 0 to simMgrClient.Scenario.CubiclesGroupsList.Count - 1 do
        begin
          grp := simMgrClient.Scenario.CubiclesGroupsList.Items[j] as T3CubicleGroup;
          if grp <> nil then
          begin
            if LowerCase(SendToCub[i]) = 'controller' then
            begin
              RecSendMessage.Sendto := 0;
              Break;
            end
            else
            if LowerCase(grp.FData.Group_Identifier) = LowerCase(SendToCub[i]) then
            begin
              RecSendMessage.Sendto := grp.FData.Group_Index;
              Break;
            end;
          end;
        end;

        RecSendMessage.RecipientList := SendToCub.DelimitedText;
        RecSendMessage.OrderID := 0;
        RecSendMessage.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;
        RecSendMessage.Subject := MessageHandling.FData.Subject;
        RecSendMessage.Priority := MessageHandling.FData.Priority;
        RecSendMessage.Band := MessageHandling.FData.band;
        RecSendMessage.MessageHandling := MessageHandling.FData.MessageHandling;
        RecSendMessage.Messagetype := 2;
        simMgrClient.AddListQueueMessage(RecSendMessage);
      end;

      //Add to Queue Message -> Send after time is ready -> for controller
      RecSendMessage.RecipientList := SendToCub.DelimitedText;
      RecSendMessage.OrderID := 0;

      if simMgrClient.ISInstructor then
        RecSendMessage.SendFrom := 0
      else
        RecSendMessage.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      RecSendMessage.Subject := MessageHandling.FData.Subject;
      RecSendMessage.Priority := MessageHandling.FData.Priority;
      RecSendMessage.Band := MessageHandling.FData.band;
      RecSendMessage.MessageHandling := MessageHandling.FData.MessageHandling;
      RecSendMessage.Messagetype := 3;
      simMgrClient.AddListQueueMessage(RecSendMessage);

      if Assigned(SendToCub) then
      begin
        SendToCub.Clear;
        SendToCub.Free;
      end;

      
      MessageHandling.FData.OrderID := 2;
      MessageHandling.FData.Messagetype := 4;
      RecSendMessage := MessageHandling.FData;
      if simMgrClient.ISInstructor then
        MessageHandling.FData.SendFrom := 0
      else
        MessageHandling.FData.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      simMgrClient.netSend_MessageHandling(RecSendMessage);
    end;
  end;
end;

procedure TfrmToteDisplay.btnRemoveClick(Sender: TObject);
var
  MessageHandling : TMessageHandling;
  RecSendMessage : TRecSendMessage;
begin
  if lvReceive.Selected <> nil then
  begin
    if lvReceive.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvReceive.Selected.Data);
      MessageHandling.FData.OrderID := 1;
      MessageHandling.FData.Messagetype := 4;

      if simMgrClient.ISInstructor then
        MessageHandling.FData.SendFrom := 0
      else
        MessageHandling.FData.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      RecSendMessage := MessageHandling.FData;

      simMgrClient.netSend_MessageHandling(RecSendMessage);
    end;
  end
  else
  if lvDraft.Selected <> nil then
  begin
    if lvDraft.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvDraft.Selected.Data);
      MessageHandling.FData.OrderID := 2;
      MessageHandling.FData.Messagetype := 4;
      RecSendMessage := MessageHandling.FData;

      if simMgrClient.ISInstructor then
        MessageHandling.FData.SendFrom := 0
      else
        MessageHandling.FData.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      simMgrClient.netSend_MessageHandling(RecSendMessage);
    end;
  end
  else
  if lvSent.Selected <> nil then
  begin
    if lvSent.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvSent.Selected.Data);
      MessageHandling.FData.OrderID := 3;
      MessageHandling.FData.Messagetype := 4;
      RecSendMessage := MessageHandling.FData;

      if simMgrClient.ISInstructor then
        MessageHandling.FData.SendFrom := 0
      else
        MessageHandling.FData.SendFrom := simMgrClient.FMyCubGroup.FData.Group_Index;

      simMgrClient.netSend_MessageHandling(RecSendMessage);
    end;
  end;
end;

procedure TfrmToteDisplay.btnReplyClick(sender: TObject);
var
  i : integer;
  MessageHandling : TMessageHandling;
  grp : T3CubicleGroup;
begin
  if Assigned(fNewMessage) then
    fNewMessage.Close;

  if lvReceive.Selected <> nil then
  begin
    if lvReceive.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvReceive.Selected.Data);

      if not Assigned(fNewMessage) then
        fNewMessage := TfNewMessage.Create(self);

      fNewMessage.isNew := False;
      fNewMessage.mmoDisplay.Lines.Clear;

      if MessageHandling.FData.SendFrom = 0 then
      begin
        fNewMessage.edtTo.Text := 'Controller';
      end
      else
      begin
        for i := 0 to simMgrClient.Scenario.CubiclesGroupsList.Count - 1 do
        begin
          grp := simMgrClient.Scenario.CubiclesGroupsList.items[i] as T3CubicleGroup;
          if grp.FData.Group_Index = MessageHandling.FData.SendFrom then
          begin
            fNewMessage.edtTo.Text := grp.FData.Group_Identifier;
          end;
        end;
      end;

      fNewMessage.cbbPrior.ItemIndex := MessageHandling.FData.Priority;
      fNewMessage.mmoDisplay.Lines.Add('-------------------------------------');
      fNewMessage.mmoDisplay.Lines.Add(MessageHandling.FData.MessageHandling);
      fNewMessage.mmoDisplay.Lines.Add('-------------------------------------');

      fNewMessage.Show;
    end;
  end;
end;

procedure TfrmToteDisplay.btnForwardClick(sender: TObject);
var
  MessageHandling : TMessageHandling;
begin
  if Assigned(fNewMessage) then
    fNewMessage.Close;

  if lvReceive.Selected <> nil then
  begin
    if lvReceive.Selected.Data <> nil then
    begin
      MessageHandling := TMessageHandling(lvReceive.Selected.Data);

      if not Assigned(fNewMessage) then
        fNewMessage := TfNewMessage.Create(self);

      fNewMessage.isNew := False;
      fNewMessage.mmoDisplay.Lines.Clear;

      fNewMessage.edtTo.Text := ' ';
      fNewMessage.cbbPrior.ItemIndex := MessageHandling.FData.Priority;
      fNewMessage.mmoDisplay.Lines.Add('-------------------------------------');
      fNewMessage.mmoDisplay.Lines.Add(MessageHandling.FData.MessageHandling);
      fNewMessage.mmoDisplay.Lines.Add('-------------------------------------');

      fNewMessage.Show;
    end;
  end;
end;

procedure TfrmToteDisplay.btnPrintClick(sender: TObject);
begin
  //
end;

procedure TfrmToteDisplay.lvSentClick(sender: TObject);
var
  MessageHandling : TMessageHandling;
begin
  btnReply.Enabled := false;
  btnForward.Enabled := false;
  btnRemove.Enabled := false;
  btnSend.Enabled := false;
  btnEdit.Enabled := false;
  btnPrint.Enabled := false;

  if lvSent.Selected <> nil then
  begin
    if lvsent.Selected.Data <> nil then
    begin
      btnRemove.Enabled := true;

      lvReceive.Selected := nil;
      lvDraft.Selected := nil;

      MessageHandling := TMessageHandling(lvSent.Selected.Data);
      mmoMessage.Lines.Clear;

      mmoMessage.Lines.Add('To : ' + MessageHandling.FData.RecipientList);
      mmoMessage.Lines.Add('Subject : ' + MessageHandling.FData.Subject);

      case MessageHandling.FData.Priority of
        0 : mmoMessage.Lines.Add('Priority : ' + 'FLASH');
        1 : mmoMessage.Lines.Add('Priority : ' + 'IMMED');
        2 : mmoMessage.Lines.Add('Priority : ' + 'PRIORITY');
        3 : mmoMessage.Lines.Add('Priority : ' + 'ROUTINE');
      end;

      mmoMessage.Lines.Add('Original Message : ');
      mmoMessage.Lines.Add(MessageHandling.FData.MessageHandling);
    end;
  end;
end;

procedure TfrmToteDisplay.lblGroupSelectionMouseEnter(Sender: TObject);
begin
//  lblPlatformStatus.Font.Color := RGB(55, 191, 189);
//  lblPlatformStatus.StyleElements := [seClient, seBorder];
//{Untuk yang lain bisa pakai procedure ini saja biar tidak banyak baris codenya}
  if Sender is TLabel then
  begin
    TLabel(Sender).Font.Color := RGB(55, 191, 189);
    TLabel(Sender).StyleElements := [seClient, seBorder];
  end;
end;

procedure TfrmToteDisplay.lblGroupSelectionMouseLeave(Sender: TObject);
begin
//  lblPlatformStatus.Font.Color := clWhite;
//  lblPlatformStatus.StyleElements := [seFont, seClient, seBorder];
//{Untuk yang lain bisa pakai procedure ini saja biar tidak banyak baris codenya}
  if Sender is TLabel then
  begin
    TLabel(Sender).Font.Color := clWhite;
    TLabel(Sender).StyleElements := [seFont, seClient, seBorder];
  end;
end;

procedure TfrmToteDisplay.lvDraftClick(sender: TObject);
var
  i : integer;
  MessageHandling : TMessageHandling;
  grp : T3CubicleGroup;
begin
  btnReply.Enabled := false;
  btnForward.Enabled := false;
  btnRemove.Enabled := false;
  btnSend.Enabled := false;
  btnEdit.Enabled := false;
  btnPrint.Enabled := false;

  if lvDraft.Selected <> nil then
  begin
    if lvDraft.Selected.Data <> nil then
    begin
      btnRemove.Enabled := true;
      btnSend.Enabled := true;
      btnEdit.Enabled := true;

      lvSent.Selected := nil;
      lvReceive.Selected := nil;

      MessageHandling := TMessageHandling(lvDraft.Selected.Data);
      mmoMessage.Lines.Clear;

      if MessageHandling.FData.SendFrom = 0 then
        mmoMessage.Lines.Add('From ' + 'Controller')

      else
      begin
        for i := 0 to simMgrClient.Scenario.CubiclesGroupsList.Count - 1 do
        begin
          grp := simMgrClient.Scenario.CubiclesGroupsList.items[i] as T3CubicleGroup;
          if grp <> nil then begin
            if grp.FData.Group_Index = MessageHandling.FData.SendFrom then
            begin
              mmoMessage.Lines.Add('From ' + grp.FData.Group_Identifier);
              Break;
            end;
          end;
        end;
      end;

      mmoMessage.Lines.Add('To : ' + MessageHandling.FData.RecipientList);
      mmoMessage.Lines.Add('');
      mmoMessage.Lines.Add('Subject : ' + MessageHandling.FData.Subject);

      case MessageHandling.FData.Priority of
        0 : mmoMessage.Lines.Add('Priority : ' + 'FLASH');
        1 : mmoMessage.Lines.Add('Priority : ' + 'IMMED');
        2 : mmoMessage.Lines.Add('Priority : ' + 'PRIORITY');
        3 : mmoMessage.Lines.Add('Priority : ' + 'ROUTINE');
      end;

      mmoMessage.Lines.Add('Original Message : ');
      mmoMessage.Lines.Add(MessageHandling.FData.MessageHandling);
    end;
  end
end;

procedure TfrmToteDisplay.lvReceiveClick(sender: TObject);
var
  i : integer;
  MessageHandling : TMessageHandling;
  grp : T3CubicleGroup;
begin
  btnReply.Enabled := false;
  btnForward.Enabled := false;
  btnRemove.Enabled := false;
  btnSend.Enabled := false;
  btnEdit.Enabled := false;
  btnPrint.Enabled := false;

  if lvReceive.Selected <> nil then
  begin
    if lvReceive.Selected.Data <> nil then
    begin
      btnReply.Enabled := true;
      btnForward.Enabled := true;
      btnRemove.Enabled := true;

      lvSent.Selected := nil;
      lvDraft.Selected := nil;

      MessageHandling := TMessageHandling(lvReceive.Selected.Data);
      mmoMessage.Lines.Clear;

      if MessageHandling.FData.SendFrom = 0 then
        mmoMessage.Lines.Add('From ' + 'Controller')
      else
      begin
        for i := 0 to simMgrClient.Scenario.CubiclesGroupsList.Count - 1 do
        begin
          grp := simMgrClient.Scenario.CubiclesGroupsList.items[i] as T3CubicleGroup;
          if grp <> nil then
          begin
            if grp.FData.Group_Index = MessageHandling.FData.SendFrom then
            begin
              mmoMessage.Lines.Add('From ' + grp.FData.Group_Identifier);
              Break;
            end;
          end;
        end;
      end;

      mmoMessage.Lines.Add('Subject : ' + MessageHandling.FData.Subject);

      case MessageHandling.FData.Priority of
        0 : mmoMessage.Lines.Add('Priority : ' + 'FLASH');
        1 : mmoMessage.Lines.Add('Priority : ' + 'IMMED');
        2 : mmoMessage.Lines.Add('Priority : ' + 'PRIORITY');
        3 : mmoMessage.Lines.Add('Priority : ' + 'ROUTINE');
      end;

      mmoMessage.Lines.Add('Original Message : ');
      mmoMessage.Lines.Add(MessageHandling.FData.MessageHandling);

      if simMgrClient.ISInstructor then
      begin
        mmoMessage.Lines.Add('');
        mmoMessage.Lines.Add('To : ' + MessageHandling.FData.RecipientList);
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.lvRecordInCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
   intItem1,
   intItem2: Integer;
begin
   intItem1 := StrToInt(Item1.Caption);
   intItem2 := StrToInt(Item2.Caption);

   if intItem1 < intItem2 then
     Compare := -1
   else
   if intItem1 > intItem2 then
     Compare := 1
   else
     Compare := 0;
end;

procedure TfrmToteDisplay.lvRecordOutCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
   intItem1,
   intItem2: Integer;
begin
   intItem1 := StrToInt(Item1.Caption);
   intItem2 := StrToInt(Item2.Caption);

   if intItem1 < intItem2 then
     Compare := -1
   else
   if intItem1 > intItem2 then
     Compare := 1
   else
     Compare := 0;
end;

procedure TfrmToteDisplay.unAssignedAllEmbarkedTimerEvent(node : TTreeNode);
var
  hItemChild : TTreeNode;
begin
  if (node = nil) then exit;

  while (node <> nil) do
  begin
    if Assigned(node.Data) then
    begin
      try
        TT3EmbarkedVehicle(node.Data).OnEmbarkedTimer := nil;
      finally

      end;
    end;

    // Check whether we have child items.
    if (node.HasChildren) then
    begin
      // Recursively traverse child items.
      hItemChild := node.getFirstChild;
      unAssignedAllEmbarkedTimerEvent(hItemChild);
    end;

    // Go to next sibling item.
    node := node.getNextSibling;
  end;
end;

function TfrmToteDisplay.lvSystemState_getRow(const row: integer;
  const caption : string): TListItem;

begin
  if lvSystemState.Items.Count <= row then
    result := lvSystemState.Items.Add
  else
    result := lvSystemState.Items[row];

  result.Caption := Caption;

  if result.SubItems.Count < 1 then
    result.SubItems.add('');
end;

procedure TfrmToteDisplay.UpdateMessageHandling(
  const MessageValue: TRecSendMessage);
begin
  //do stuff update here
end;

procedure TfrmToteDisplay.UpdateSensorVehicle(sender: TT3Vehicle);
var
  i       : Integer;
  li      : TListItem;
  //ve      : TT3Vehicle;
  du      : TT3DeviceUnit;
  sensor  : TT3Sensor;
begin
  if not Assigned(sender) then
    Exit;

  lvSensors.Items.Clear;

  if Assigned(sender.Devices) then
  begin
    for i := 0 to sender.Devices.Count - 1 do
    begin
      du := sender.Devices.Items[i];

      if du is TT3Sensor then
      begin
        sensor := TT3Sensor(du);

        li := lvSensors.Items.Add;

        if sensor is TT3Radar then
          li.StateIndex := 1
        else if sensor is TT3Sonar then
          li.StateIndex := 0
        else if sensor is TT3Visual then
          li.StateIndex := 2
        else if sensor is TT3MADSensor then
          li.StateIndex := 4
        else if sensor is TT3ESMSensor then
          li.StateIndex := 3
        else if sensor is TT3EOSensor then
          li.StateIndex := 4
        else if sensor is TT3IFFSensor then
          li.StateIndex := 5
        else
          li.StateIndex := 0;

        if sensor.EmconOperationalStatus = EmconOff then
        begin
          case sensor.OperationalStatus of
            sopOff, sopOffIFF:
              li.SubItems.Add('Off');
            sopOn:
              li.SubItems.Add('On');
            sopDamage:
              li.SubItems.Add('Damaged');
            sopTooDeep:
              li.SubItems.Add('Too Deep');
            sopEMCON:
              li.SubItems.Add('EMCON');
            sopActive:
              li.SubItems.Add('Active');
            sopPassive:
              li.SubItems.Add('Passive');
            sopTooFast:
              li.SubItems.Add('Too Fast');
            sopDeploying:
              li.SubItems.Add('Deploying');
            sopDeployed:
              li.SubItems.Add('Deployed');
            sopStowing:
              li.SubItems.Add('Stowing');
            sopStowed:
              li.SubItems.Add('Stowed');
          end;
        end
        else
          li.SubItems.Add('EMCON');

        li.Caption := sensor.InstanceName;
        li.Data := sensor;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.UpdateStatusVehicle(sender: TT3Vehicle);
var
  li      : TListItem;
  //ve      : TT3Vehicle;
begin
  if not Assigned(sender) then
    Exit;

  lvSystemState.Items.Clear;

  //Overall Damage
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Overall Damage';
  li.SubItems.Add(IntToStr(sender.DamageOverall) + ' %');

  //Helm
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Helm';
  if sender.DamageHelm then
    li.SubItems.Add('Damage')
  else
    li.SubItems.Add('Operational');

  //Propultion
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Propulsion';
  if sender.DamagePropulsion then
    li.SubItems.Add('Damage')
  else
    li.SubItems.Add('Operational');

  //Speed
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Speed';
  li.SubItems.Add(IntToStr(sender.DamagePercentSpeed)  +' %');

  //Fuel Remaining
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Fuel Remaining';
  li.SubItems.Add(FloatToStr(Round(sender.FuelPercentage)) + ' %');

  //Fuel Leakage
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Fuel Leakage';
  if sender.FuelLeakage then
    li.SubItems.Add('Yes')
  else
    li.SubItems.Add('No');

  //Communication
  li := lvSystemState.Items.Add;
  li.Data := TT3PlatformInstance(sender);
  li.Caption := 'Communications';
  if sender.DamageComm then
    li.SubItems.Add('Damage')
  else
    li.SubItems.Add('Operational');
end;

procedure TfrmToteDisplay.UpdateSystemState(sender: TObject; const dmgType: TDamageItemType);
var li: TListItem;
    ve : TT3Vehicle;
    u  : TT3Unit;
    i : integer;
    temp : TTreeNode;
begin
  if lvPlatforms.Selected = nil then exit;

  li := lvPlatforms.Selected;

  u := li.Data;
  if sender <> u then
    exit;

  if not (u is TT3Vehicle) then
    exit;

  ve := li.Data;

  // ---- overall damage ---
  li := lvSystemState_getRow(0, 'Overall Damage');
  li.Data         := TT3PlatformInstance(ve);
  li.SubItems[0]  := IntToStr( ve.DamageOverall) + ' %';

  // ---- helm ---
  li := lvSystemState_getRow(1, 'Helm');
  li.Data := TT3PlatformInstance(ve);
  if ve.DamageHelm then
    li.SubItems[0] := 'Damage'
  else
    li.SubItems[0] := 'Operational';

  // ---- Propulsion -------
  li := lvSystemState_getRow(2, 'Propulsion');
  li.Data := TT3PlatformInstance(ve);
  if ve.DamagePropulsion then
     li.SubItems.Add('Damage')
  else
    li.SubItems.Add('Operational');

  // ---- speed -------
  //  li := lvSystemState_getRow(, '');
  li := lvSystemState_getRow(3, 'Speed');
  li.Data := TT3PlatformInstance(ve);
  li.SubItems[0]:= IntToStr(ve.DamagePercentSpeed)  + ' %';

  // ---- Fuel Remaining -------
  li := lvSystemState_getRow(4 , 'Fuel Remaining');
  li.Data := TT3PlatformInstance(ve);
  li.SubItems[0] := IntToStr(Round(TT3PlatformInstance(ve).HealthPercent)) + ' %';

  // ---- Fuel Leakage -------
  li := lvSystemState_getRow(5 , 'Fuel Leakage');
  li.Data := TT3PlatformInstance(ve);
  li.SubItems[0] := 'No';

  // ---- Comunication -------
  li := lvSystemState_getRow(6 , 'Communications');
  li.Data := TT3PlatformInstance(ve);

  if ve.DamageComm then
    li.SubItems[0]:= 'Damage'
  else
    li.SubItems[0] := 'Operational';

  // ---- Embarked Platforms -------
  tvEmbarkedPlatforms.Items.Clear;

  if Assigned(ve.EmbarkedVehicles) then
  begin
    for i := 0 to ve.EmbarkedVehicles.Count - 1 do
    begin
      with ve do
      begin
        temp := TTreeNode.Create(tvEmbarkedPlatforms.Items);
        temp.Text := (TT3EmbarkedVehicle(EmbarkedVehicles[i])
            .EmbarkedIdentifier);
        temp.StateIndex := 0;
        tvEmbarkedPlatforms.Items.InsertNode(temp, nil, temp.Text,
          TT3EmbarkedVehicle(EmbarkedVehicles[i]));
        temp := FindText(tvEmbarkedPlatforms,
          TT3EmbarkedVehicle(EmbarkedVehicles[i]).EmbarkedIdentifier);
        tvEmbarkedPlatforms.Items.AddChildFirst(temp,
          'Quantity : ' + IntToStr(TT3EmbarkedVehicle(EmbarkedVehicles[i]).Quantity));
        tvEmbarkedPlatforms.Items.AddChild(temp, 'Readying Time : ' + '2');
      end;
    end;
  end;

  //UpdateDevicesState(sender, dmgType);
end;

procedure TfrmToteDisplay.UpdateDevicesState(sender: TObject; const dmgtype: TDamageItemType);
var li: TListItem;
    ve : TT3Vehicle;
    u  : TT3Unit;
    I : Integer;
    tn, temp : TTreeNode;
    ecmstatus : string;
begin
  if lvPlatforms.Selected = nil then exit;

  li := lvPlatforms.Selected;
  u := li.Data;
  if sender <> u then
    exit;

  if not (u is TT3Vehicle) then
    exit;

  ve := u as TT3Vehicle;

  // sensors
//  lvSensors.Items.Clear;
  tvCountermeasures.Items.Clear;
  if Assigned(ve.Devices) then
  begin
    for i := 0 to ve.Devices.Count - 1 do
    begin
      with TT3Vehicle(ve) do
      begin
        if (TT3DeviceUnit(Devices[i]) is TT3Sensor) then
        begin
          //li := lvSensors.Items.Add;
          //li.Caption := TT3DeviceUnit(Devices[i]).InstanceName;
          li := findLVItem(lvSensors,TT3DeviceUnit(Devices[i]).InstanceName);

          if (TT3DeviceUnit(Devices[i]) is TT3Radar) then
          begin
            li.StateIndex := 1;
          end
          else if (TT3DeviceUnit(Devices[i]) is TT3Sonar) then
          begin
            li.StateIndex := 0;
          end
          else if (TT3DeviceUnit(Devices[i]) is TT3Visual) then
          begin
            li.StateIndex := 2;
          end
          else if (TT3DeviceUnit(Devices[i]) is TT3MADSensor) then
          begin
            li.StateIndex := 4;
          end
          else if (TT3DeviceUnit(Devices[i]) is TT3ESMSensor) then
          begin
            li.StateIndex := 3;
          end
          else if (TT3DeviceUnit(Devices[i]) is TT3EOSensor) then
          begin
            li.StateIndex := 4;
          end
          else if (TT3DeviceUnit(Devices[i]) is TT3IFFSensor) then
          begin
            li.StateIndex := 5;
          end
          else
          begin
            li.StateIndex := 0;
          end;

          case TT3Sensor(Devices[i]).OperationalStatus of
            sopOff, sopOffIFF:
              li.SubItems[0] := 'Off';
              //li.SubItems.Add('Off');
            sopOn:
              li.SubItems[0] := 'On';
              //li.SubItems.Add('On');
            sopDamage:
              li.SubItems[0] := 'Damaged';
              //li.SubItems.Add('Damaged');
            sopTooDeep:
              li.SubItems[0] := 'Too Deep';
              //li.SubItems.Add('Too Deep');
            sopEMCON:
              li.SubItems[0] := 'EMCON';
              //li.SubItems.Add('EMCON');
            sopActive:
              li.SubItems[0] := 'Active';
              //li.SubItems.Add('Active');
            sopPassive:
              li.SubItems[0] := 'Passive';
              //li.SubItems.Add('Passive');
            sopTooFast:
              li.SubItems[0] := 'Too Fast';
              //li.SubItems.Add('Too Fast');
            //------------------------------  //17042012 mk
            sopDeploying:
              li.SubItems[0] := 'Deploying';
              //li.SubItems.Add('Deploying');
            sopDeployed:
              li.SubItems[0] := 'Deployed';
              //li.SubItems.Add('Deployed');
            sopStowing:
              li.SubItems[0] := 'Stowing';
              //li.SubItems.Add('Stowing');
            sopStowed:
              li.SubItems[0] := 'Stowed';
              //li.SubItems.Add('Stowed');
            //------------------------------  //17042012 mk
          end;
          li.Data := TT3Sensor(TT3Sensor(Devices[I]));
        end
        //countermeasure
        else if (TT3DeviceUnit(Devices[i]) is TT3CounterMeasure) then
        begin
          tn := TTreeNode.Create(tvCountermeasures.Items);

          if (TT3CounterMeasure(Devices.Items[i]) is TT3ChaffOnVehicle) then
            tn.StateIndex := 1
          else if (TT3CounterMeasure(Devices.Items[i])
              is TT3AcousticDecoyOnVehicle) then
            tn.StateIndex := 2
          else
            tn.StateIndex := 0;

          case TT3CounterMeasure(Devices.Items[i]).Status of
            esAvailable:
              ecmStatus := 'Available';
            esUnavailable:
              ecmStatus := 'Unavailable';
            esLaunchingChaff:
              ecmStatus := 'Launching Chaff';
            esDamaged:
              ecmStatus := 'Damage';
            esOn:
              ecmStatus := 'On';
            esOff:
              ecmStatus := 'Off';
            esEMCON:
              ecmStatus := 'EMCON';
            esAutomatic:
              ecmStatus := 'Automatic';
            esManual:
              ecmStatus := 'Manual';
            esDeployed:
              ecmStatus := 'Deployed';
            esStowed:
              ecmStatus := 'Stowed';
          end;

          tn.Text := TT3CounterMeasure(Devices.Items[I]).InstanceName + ' : ' + ecmStatus;
          tn.Data := TT3CounterMeasure(Devices.Items[i]);

          tvCountermeasures.Items.AddObject(nil, tn.Text, tn.Data);
          temp := FindText(tvCountermeasures, tn.Text);

          tvCountermeasures.Items.AddChild(temp, ecmStatus);
        end;
      end;
    end;
  end;

  // weapons
  UpdateWeaponVehicle(ve);

  // coutermeasure
  {
    tvCountermeasures.Items.Clear;
    for I := 0 to ve.Devices.Count - 1 do
    begin
    if (ve.Devices[I] is TT3countermeasure) then
    begin
    tvCountermeasures.Items.AddChild(nil, TT3CounterMeasure(ve.Devices[I]).InstanceName + '-' + IntToStr(TT3CounterMeasure(ve.Devices[I]).Status))
    end;
    end;
    }

  // embark platform
  tvEmbarkedPlatforms.Items.Clear;
  if Assigned(ve.EmbarkedVehicles) then
  begin
    for i := 0 to ve.EmbarkedVehicles.Count - 1 do
    begin
      with ve do
      begin
        temp := TTreeNode.Create(tvEmbarkedPlatforms.Items);
        temp.Text := (TT3EmbarkedVehicle(EmbarkedVehicles[i])
            .EmbarkedIdentifier);
        temp.StateIndex := 0;
        tvEmbarkedPlatforms.Items.InsertNode(temp, nil, temp.Text,
          TT3EmbarkedVehicle(EmbarkedVehicles[i]));
        temp := FindText(tvEmbarkedPlatforms,
          TT3EmbarkedVehicle(EmbarkedVehicles[i]).EmbarkedIdentifier);
        tvEmbarkedPlatforms.Items.AddChildFirst(temp,
          'Quantity : ' + IntToStr
            (TT3EmbarkedVehicle(EmbarkedVehicles[i]).Quantity)
          );
        tvEmbarkedPlatforms.Items.AddChild(temp, 'Readying Time : ' + '2');
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.updateInfoTree(PropID: TPropsID; IntVal: integer;
  BoolVal : Boolean; DoubleVal: double; ByteVal: Byte);
begin
  case PropID of
    psChaffAttenuationOnRadar : ;
    psChaffRemovalEvent       : ;
    psSonobuoyRemovalEvent    : ;
    psBubbleRemovalEvent      : ;
    psTimeRemoveWreck         : changeWreckTimeRemoval(IntVal);
    psCoastlineCollision      : ;
    psAircraftTerrainColl     : ;
    psTidalStreamEffectToShip : ;
    psWindEffectToAircraft    : ;
    psSimplifySensorCheck     : ;
    psProbabilityOfKill       : ;
    psGuidanceCommand         : ;
    psStudentLaunchRestriction: ;
    psStudentCanLaunchAirCraft: ;
    psLandmassOcculting       : ;
    psSensorBlindZone         : ;
    psVisualVisibility        : ;
    psAutomaticSensorIdentity : ;
    psAirTrackLostContactTime : ;
    psESMTrackLostContactTime : ;
    psAirTrackDropTime        : ;
    psSurfaceTrackDropTime    : ;
    psSubsurfaceTrackDropTime : ;
    psESMTrackDropTime        : ;
    psAcousticTrackDropTime   : ;
    psSurfaceTrackLostContactTime   : ;
    psSubSurfaceTrackLostContatTime : ;
    psAcousticTrackLostContactTimer : ;
    psAutomaticRemovePlatformOutsideArea: ;
  end;
end;

procedure TfrmToteDisplay.UpdateVehicle(sender: TT3Vehicle);
//var
  //s: string;
  //li: TListItem;
  //ve: TT3Vehicle;
  //rdr: TT3Radar;
  //aObject: TSimObject;
  //i, j: Integer;
  //tn, temp: TTreeNode;
  //embarkStatus, ecmStatus: string;
begin
  if not Assigned(sender) then
    Exit;

  // --  clear embarked timer event first
  if tvEmbarkedPlatforms.Items.count > 0 then
    unAssignedAllEmbarkedTimerEvent(tvEmbarkedPlatforms.items.Item[0]);

  UpdateSensorVehicle(sender);
  UpdateWeaponVehicle(sender);
  //  setUpTreeWeapons(sender.Weapons);
  UpdateCountermeasureVehicle(sender);
  UpdateStatusVehicle(sender);
  UpdateEmbarkVehicle(sender);
end;

procedure TfrmToteDisplay.UpdateWeaponVehicle(sender : TT3Vehicle);
const
  TORPEDO = 0;
  MISSILE = 1;
  MINE = 2;
  GUN = 3;
  BOMB = 4;
var
  tnParent: TTreeNode;
  i, j: Integer;
  WeaponText,
  LauncherText, status : String;
  weapon : TT3Weapon;

  WeaponLauncher : TFitted_Weap_Launcher_On_Board;
  launcherNumber : integer;
  //QuantityTote : integer;
begin
  if not Assigned(sender) then
    Exit;

  tvWeapons.Items.Clear;

  if Assigned(sender.Weapons) then
  begin
    for i := 0 to sender.Weapons.Count - 1 do
    begin
      weapon := TT3Weapon(sender.Weapons.Items[i]);
      if not(Assigned(weapon)) then Continue;

      case weapon.WeaponStatus of
        wsAvailable   : status := 'Available';
        wsUnavailable : status := 'Unavailable';
        wsDamaged     : status := 'Damage';
        wsTooHigh     : status := 'Too High';
      end;

      // GUN
      if weapon is TT3GunOnVehicle then
      begin
        WeaponText := TT3GunOnVehicle(weapon).InstanceName + ' : ' + status;
        tnParent := tvWeapons.Items.AddObject(nil, WeaponText, TT3GunOnVehicle(weapon));
        //tnParent := tvWeapons.Items.AddObject(tnParent, WeaponText, TT3GunOnVehicle(weapon));

        tvWeapons.Items.AddChildObject(tnParent, IntToStr(TT3GunOnVehicle(weapon).Quantity), TT3GunOnVehicle(weapon));
      end
      // MISSILE
      else if weapon is TT3MissilesOnVehicle then
      begin
        WeaponText := TT3MissilesOnVehicle(weapon).InstanceName + ' : ' + status + ' : ' + IntToStr(TT3MissilesOnVehicle(weapon).Quantity);
        tnParent := tvWeapons.Items.AddObject(nil, WeaponText, TT3MissilesOnVehicle(weapon));
        //tnParent := tvWeapons.Items.AddObject(tnParent, WeaponText, TT3MissilesOnVehicle(weapon));

        if Assigned(TT3MissilesOnVehicle(weapon).MissileDefinition) then
        begin
          for j := 0 to TT3MissilesOnVehicle(weapon).MissileDefinition.FLaunchs.Count - 1 do
          begin
            WeaponLauncher := TFitted_Weap_Launcher_On_Board(TT3MissilesOnVehicle(weapon).MissileDefinition.FLaunchs.Items[j]);
            if not(Assigned(WeaponLauncher)) then Continue;

            if WeaponLauncher.FData.Launcher_Type > 8 then
              launcherNumber :=  WeaponLauncher.FData.Launcher_Type - 8
            else
              launcherNumber := WeaponLauncher.FData.Launcher_Type;

            LauncherText := 'Launcher ' + IntToStr(launcherNumber) + ' : ' + IntToStr(WeaponLauncher.FData.Launcher_Qty);

            tvWeapons.Items.AddChildObject(tnParent, LauncherText, WeaponLauncher);
          end;
        end;
      end
      // TORPEDO
      else if weapon is TT3TorpedoesOnVehicle then
      begin
        WeaponText := TT3TorpedoesOnVehicle(weapon).InstanceName + ' : ' + status + ' : ' + IntToStr(TT3TorpedoesOnVehicle(weapon).Quantity);
        tnParent := tvWeapons.Items.AddObject(nil, WeaponText, TT3TorpedoesOnVehicle(weapon));

        if Assigned(TT3TorpedoesOnVehicle(weapon).TorpedoDefinition) then
        begin
          for j := 0 to TT3TorpedoesOnVehicle(weapon).TorpedoDefinition.FLaunchs.Count - 1 do
          begin
            WeaponLauncher := TFitted_Weap_Launcher_On_Board(TT3TorpedoesOnVehicle(weapon).TorpedoDefinition.FLaunchs.Items[j]);
            if not(Assigned(WeaponLauncher)) then Continue;

            if WeaponLauncher.FData.Launcher_Type > 8 then
              launcherNumber :=  WeaponLauncher.FData.Launcher_Type - 8
            else
              launcherNumber := WeaponLauncher.FData.Launcher_Type;

            LauncherText := 'Tube ' + IntToStr(launcherNumber) + ' : ' + IntToStr(WeaponLauncher.FData.Launcher_Qty);

            tvWeapons.Items.AddChildObject(tnParent, LauncherText, WeaponLauncher);
          end;
        end;
      end
      // BOMB
      else if weapon is TT3BombONVehicle then
      begin
        WeaponText := TT3BombONVehicle(weapon).InstanceName + ' : ' + status;
        tnParent := tvWeapons.Items.AddObject(nil, WeaponText, TT3BombONVehicle(weapon));
        //tnParent := tvWeapons.Items.AddObject(tnParent, WeaponText, TT3BombONVehicle(weapon));
        tvWeapons.Items.AddChildObject(tnParent, IntToStr(TT3BombONVehicle(weapon).Quantity), TT3BombONVehicle(weapon));
      end
      // MINE
      else if weapon is TT3MineOnVehicle then
      begin
        WeaponText := TT3MineOnVehicle(weapon).InstanceName + ' : ' + status;
        tnParent := tvWeapons.Items.AddObject(nil, WeaponText, TT3MineOnVehicle(weapon));
        //tnParent := tvWeapons.Items.AddObject(tnParent, WeaponText, TT3MineOnVehicle(weapon));
        tvWeapons.Items.AddChildObject(tnParent, IntToStr(TT3MineOnVehicle(weapon).Quantity), TT3MineOnVehicle(weapon));
      end
      //Hybrid Missile
      else if weapon is TT3HybridOnVehicle then
      begin
        WeaponText := TT3HybridOnVehicle(weapon).InstanceName + ' : ' + status;
        tnParent := tvWeapons.Items.AddObject(nil, WeaponText, TT3HybridOnVehicle(weapon));
        
        tvWeapons.Items.AddChildObject(tnParent, IntToStr(TT3HybridOnVehicle(weapon).Quantity), TT3HybridOnVehicle(weapon));
      end;
    end;
  end;

  tvWeapons.FullExpand;
end;

procedure TfrmToteDisplay.UpdateEmbarkVehicle(sender : TT3Vehicle);
var
  ve : TT3Vehicle;
  temp, tn : TTreeNode;
  I{, j} : Integer;
  stats : string;
  {countstr,} str : string;
//  queueEmb : TQueuedEmbarkedLaunch;
begin
  if not(Assigned(sender)) then
    Exit;

  if not(sender is TT3Vehicle) then
    Exit;

  ve := TT3Vehicle(sender);

  tvEmbarkedPlatforms.Items.Clear;

  if Assigned(ve.EmbarkedVehicles) then
  begin
    for i := 0 to ve.EmbarkedVehicles.Count - 1 do
    begin
      with ve do
      begin
        temp := TTreeNode.Create(tvEmbarkedPlatforms.Items);
        temp.Data := EmbarkedVehicles[i];
        temp.Text := (TT3EmbarkedVehicle(EmbarkedVehicles[i])
            .EmbarkedIdentifier);
        temp.StateIndex := 0;
        TT3EmbarkedVehicle(EmbarkedVehicles[i]).OnEmbarkedTimer := onEmbarkedTimer;
        TT3EmbarkedVehicle(EmbarkedVehicles[i]).OnUpdateState   := onEmbarkedUpdateState;
        TT3EmbarkedVehicle(EmbarkedVehicles[i]).OnEmbarkedReadyTimer := onEmbarkedToReadyingTime;

        tvEmbarkedPlatforms.Items.InsertNode(temp, nil, temp.Text,
          TT3EmbarkedVehicle(EmbarkedVehicles[i]));
        temp := FindText(tvEmbarkedPlatforms,
          TT3EmbarkedVehicle(EmbarkedVehicles[i]).EmbarkedIdentifier);

        if HealthPercent < 30 then
          stats := 'Damaged'
        else
          stats := 'Available';

        tn := tvEmbarkedPlatforms.Items.AddChildFirst(temp,
              stats + ' : ' + IntToStr
              (TT3EmbarkedVehicle(EmbarkedVehicles[i]).Quantity));
        tn.StateIndex:= 1;

//        if TT3EmbarkedVehicle(EmbarkedVehicles[i]).getQueueLandCount <= 0 then
          str := 'Readying : '+ SecondToTimeString(Round(0));
//        else
//        begin
//          for j := 0 to TT3EmbarkedVehicle(EmbarkedVehicles[i]).getQueueLandCount - 1 do begin
//            queueEmb := TT3EmbarkedVehicle(EmbarkedVehicles[i]).getQueueLandItem(j);
//
//
//            countstr := countstr + '[' + SecondToTimeString(Round(queueEmb.ReadyingTime)) + ']';
//
//            if j <> TT3EmbarkedVehicle(EmbarkedVehicles[i]).getQueueLandCount - 1 then
//              countstr := countstr + ',';
//          end;
//
//          str := 'Readying : '+ countstr;
//        end;

        tn := tvEmbarkedPlatforms.Items.AddChild(temp, str);
        tn.StateIndex := 2;

        tn := tvEmbarkedPlatforms.Items.AddChild(temp,
              'Launch Alert : '+ IntToStr
              (TT3EmbarkedVehicle(EmbarkedVehicles[i]).LaunchAlert));
        tn.StateIndex := 3;
      end;
    end;
  end;

  tvEmbarkedPlatforms.FullExpand;
end;

procedure TfrmToteDisplay.OnStatusDLComboBoxChange(Sender : TObject);
var
  item : TT3DLParticipatingUnitItem;
  cmbStatus : TStCombobox;
  rec : TRecCmd_DataLink;
begin
  if Sender is TStCombobox then
  begin
    cmbStatus := Sender as TStCombobox;
    item := cmbstatus.ListItem.Data;

    if ContainsStr(edtDatalink.Text, '1') then
      rec.DataLinkID := 1
    else if ContainsStr(edtDatalink.Text, '2') then
      rec.DataLinkID := 2
    else if ContainsStr(edtDatalink.Text, '3') then
      rec.DataLinkID := 3;

    rec.platformID := item.PUPlatform.InstanceIndex;
    rec.OrderDL   := odlPUStatus;
    rec.PUStatus  := cmbStatus.ItemIndex;

    simMgrClient.netSend_Cmd_DataLink(rec);
  end;
end;

procedure TfrmToteDisplay.SetDataLink(subject : TT3DataLink);
var
  forceColor : string;
  I: Integer;
  li : TListItem;
  itemPU : TT3DLParticipatingUnitItem;
  itemEU : TT3DLEligibleUnitItem;
  strPU : string;
  custCbox : TStCombobox;
  Rect : TRect;
begin
  edtDatalink.Text := subject.InstanceName;

  //set Force
  case subject.GroupForce of
    1:
      begin
        forceColor := 'Force Red';
      end;
    2:
      begin
        forceColor := 'Force Yellow';
      end;
    3:
      begin
        forceColor := 'Force Blue';
      end;
    4:
      begin
        forceColor := 'Force Green';
      end;
    5:
      begin
        forceColor := 'No Force';
      end;
    6:
      begin
        forceColor := 'Force Black';
      end;
  end;

  edtDLForce.Text := forceColor;

  //set Band
  case subject.BandType of
    1 : edtDLBand.Text := 'HF';
    2 : edtDLBand.Text := 'UHF/VHF';
    else
      edtDLBand.Text := '';
  end;

  //set LV Eligible
  lvEligibleUnits.Items.Clear;
  if (Assigned(subject.EligibleUnits)) and (subject.EligibleUnits.Count > 0) then
  begin
     for I := 0 to subject.EligibleUnits.Count - 1 do
     begin
        itemEU := subject.EligibleUnits[I];
        li := lvEligibleUnits.Items.Add;
        li.Caption := itemEU.EUPlatform.InstanceName;

        case itemEU.EUStatus of
          eusDamage           : li.StateIndex := EU_DAMAGE;
          eusBandIncompatible : li.StateIndex := EU_DIFFBAND;
          eusEligible         : li.StateIndex := NON_DATALINK;
        end;

        li.Data := itemEU ;
     end;
  end;

  //set LV Participant
  for I := lvParticipatingUnits.ControlCount - 1 downto 0  do
    if lvParticipatingUnits.Controls[i] is TStCombobox then
      lvParticipatingUnits.Controls[i].Free;

  lvParticipatingUnits.Items.Clear;

  if (Assigned(subject.ParticipatingUnits)) and (subject.ParticipatingUnits.Count > 0) then
  begin
     for I := 0 to subject.ParticipatingUnits.Count - 1 do
     begin
        itemPU := subject.ParticipatingUnits[I];
        li := lvParticipatingUnits.Items.Add;

        strPU := IntToStr(itemPU.PUNumber);
        if Length(strPU) < 2 then
          strPU := '0' + strPU;

        li.Caption := strPU;
        li.SubItems.Add(itemPU.PUPlatform.InstanceName);

        case itemPU.PUStatus of
          pusTransmitReceive: li.SubItems.Add('Transmit/Receive');
          pusOff            : li.SubItems.Add('Off');
          pusReceive        : li.SubItems.Add('Receive');
        end;

        { create custom combobox }
        custCbox          := TStCombobox.Create(Self);
        custCbox.Style    := csDropDownList;
        custCbox.Visible  := True;
        custCbox.ListItem := li;
        custCbox.Parent   := lvParticipatingUnits;
        custCbox.OnChange := OnStatusDLComboBoxChange;

        Rect              := li.DisplayRect(drBounds);
        Rect.Left         := Rect.Right - lvParticipatingUnits.Columns[2].Width;
        custCbox.BoundsRect := Rect;

        custCbox.Items.Add('Transmit/Receive');
        custCbox.Items.Add('Receive');
        custCbox.Items.Add('Off');
        { end create custom combobox }

        case itemPU.PUStatus of
          pusTransmitReceive: custCbox.ItemIndex := 0;
          pusReceive        : custCbox.ItemIndex := 1;
          pusOff            : custCbox.ItemIndex := 2;
        end;

        if itemPU.PUNetCenter then
        begin
          li.StateIndex := DATALINK;
        end
        else
        begin
          li.StateIndex := NON_DATALINK;
        end;

        li.Data := itemPU;
     end;
  end;

  //set Play/Stop
  if subject.Played then
  begin
    btnPlayDataLink.Enabled := false;
    btnStopDataLink.Enabled := true;
  end
  else
  begin
    btnPlayDataLink.Enabled := true;
    btnStopDataLink.Enabled := false;
  end;
end;

procedure TfrmToteDisplay.SetDataLinkView;
var
  I: Integer;
  li : TListItem;
  item : TT3DLParticipatingUnitItem;
  subject: TT3DataLink;
  strPU : string;
begin
  if simMgrClient.ISInstructor then
    exit;

  if not Assigned(simMgrClient.ControlledPlatform) then
  begin
    lbDSStatusValue.Caption := '---';
    lbDSBandValue.Caption   := '---';
    lvDS2.Clear;

    Exit;
  end;

  subject := simMgrClient.DataLinkManager.getDatalinkOnPU(simMgrClient.ControlledPlatform);
  if not Assigned(subject) then begin
    lbDSStatusValue.Caption := '---';
    lbDSBandValue.Caption   := '---';
    lvDS2.Clear;
  end else begin
    if subject.Played then
      lbDSStatusValue.Caption := 'Active'
    else
      lbDSStatusValue.Caption := 'Inactive';

    //set Band
    case subject.BandType of
      1 : lbDSBandValue.Caption := 'HF';
      2 : lbDSBandValue.Caption := 'UHF/VHF';
    end;

    //set LV Participant
    lvDS2.Items.Clear;
    if (Assigned(subject.ParticipatingUnits)) and (subject.ParticipatingUnits.Count > 0) then
    begin
       for I := 0 to subject.ParticipatingUnits.Count - 1 do
       begin
          item := subject.ParticipatingUnits[I];

          strPU := IntToStr(item.PUNumber);
          if Length(strPU) < 2 then
            strPU := '0' + strPU;

          li := lvDS2.Items.Add;
          li.Caption := strPU;
          li.SubItems.Add(item.PUPlatform.InstanceName);

          case item.PUStatus of
            pusTransmitReceive: li.SubItems.Add('Transmit/Receive');
            pusOff            : li.SubItems.Add('Off');
            pusReceive        : li.SubItems.Add('Receive');
          end;

          if item.PUNetCenter then
            li.StateIndex := DATALINK
          else
            li.StateIndex := NON_DATALINK;

          li.Data := item.PUPlatform ;
       end;
    end;
  end;
end;

//====================================
// listener untuk asset platform
//====================================
procedure TfrmToteDisplay.AddAssetListener(aPF : TT3PlatformInstance);
var
  i : integer;
  wpn : TT3Weapon;
  //dev : TT3DeviceUnit;
  listener : TEventListener;
begin
  if Assigned(aPF) and (aPF is TT3Vehicle) then begin

    for I := 0 to TT3Vehicle(aPf).Weapons.Count - 1 do begin
      listener := nil;
      wpn := TT3Vehicle(aPf).Weapons.Items[i];

      // listener untuk TT3GunOnVehicle
      if wpn is TT3GunOnVehicle then
        listener := TT3GunOnVehicleListener.Create;

      // listener untuk TT3MissilesOnVehicle
      if wpn is TT3MissilesOnVehicle then begin
        listener := TT3MissileOnVehicleListener.Create;
        TT3MissileOnVehicleListener(listener).OnPropertyLauncherChange := OnPropertyMissLauncher;
      end;

      // listener untuk TT3TorpedoesOnVehicle
      if wpn is TT3TorpedoesOnVehicle then
      begin
        listener := TT3TorpedoOnVehicleListener.Create;
        TT3TorpedoOnVehicleListener(listener).OnPropertyLauncherChange := OnPropertyTorpLauncher;
      end;

      // listener untuk TT3BombOnVehicle
      if wpn is TT3BombOnVehicle then
         listener := TT3BombOnVehicleListener.Create;

      // listener untuk TT3MineOnVehicle
      if wpn is TT3MineOnVehicle then
        listener := TT3MineOnVehicleListener.Create;

      if wpn is TT3HybridOnVehicle then
        listener := TT3HybridOnVehicleListener.Create;

      if Assigned(listener) then begin
        TPropertyEventListener(listener).OnPropertyIntChange := OnPropertyIntChange;
        TPropertyEventListener(listener).OnPropertyDblChange := OnPropertyDblChange;
        TPropertyEventListener(listener).OnPropertyBoolChange := OnPropertyBoolChange;
        TPropertyEventListener(listener).OnPropertyByteChange := OnPropertyByteChange;

        wpn.addListener(listener);
        listener.ListenerID := 'TOTELISTENER';
//        FAssetListenerList.Add(listener);
      end;
    end;

  end;

end;

//====================================
// hapus listener asset platform
//====================================
procedure TfrmToteDisplay.RemoveAssetListener(aPF : TT3PlatformInstance);
var
  i : integer;
  //  listener : TObject;
  wpn : TT3Weapon;
begin
  if not Assigned(aPF) then
    Exit;

  if aPF is TT3Vehicle then
  begin
    for I := 0 to TT3Vehicle(aPF).Weapons.Count - 1 do
    begin
      wpn := TT3Vehicle(aPf).Weapons.Items[i];

      if Assigned(wpn) then
        wpn.removeListener('TOTELISTENER');
    end;
  end;

//  for i := FAssetListenerList.Count - 1 downto 0 do begin
//    listener := FAssetListenerList.Items[i];
//    FreeAndNil(listener);
//    FAssetListenerList.Delete(i);
//  end;
//  FAssetListenerList.Clear;
end;

procedure TfrmToteDisplay.OnPropertyIntChange(Sender : TObject;Props : TPropsID; Value : Integer);
var
  tn : TTreeNode;
  name : string;
begin
  //======= ini untuk mengupdate item tree view weapons ===============
  if (Sender is TT3Weapon) and (Assigned(TT3Weapon(Sender).Parent)) and
    TT3PlatformInstance(TT3Weapon(Sender).Parent).Equals(ToteSelectedPlatform) then
  begin
    tn := GetNodeByData(tvWeapons,Sender);

    if Assigned(tn) then
    begin
      case Props of
        psQuantity    :
        begin
          // Jika quantity di TT3MissilesOnVehicle berubah
          if Sender is TT3MissilesOnVehicle then
          begin
            name := TT3Weapon(Sender).InstanceName;
            case TT3Weapon(Sender).WeaponStatus of
              wsAvailable   : name := name + ' : Available';
              wsUnavailable : name := name + ' : Unavailable';
              wsDamaged     : name := name + ' : Damaged';
              wsFiring      : name := name + ' : Firing';
            end;

            name := name + ' : ' + IntToStr(Value);
            tn.Text:=  name;
          end;

          // Jika quantity di TT3GunOnVehicle/TT3BombONVehicle berubah
          if (Sender is TT3GunOnVehicle) or (Sender is TT3BombONVehicle) or
             (Sender is TT3MineONVehicle) then
          begin
            tn.getFirstChild.Text := IntToStr(Value);
          end;

          // Jika quantity di TT3TorpedoesOnVehicle berubah
          if Sender is TT3TorpedoesOnVehicle then
          begin
            name := TT3Weapon(Sender).InstanceName;
            case TT3Weapon(Sender).WeaponStatus of
              wsAvailable   : name := name + ' : Available';
              wsUnavailable : name := name + ' : Unavailable';
              wsDamaged     : name := name + ' : Damaged';
              wsFiring      : name := name + ' : Firing';
            end;

            name := name + ' : ' + IntToStr(Value);
            tn.Text:=  name;

            while tn.Count > Value do
            begin
              tn.GetLastChild.Delete;
            end;
          end;

          // Jika quantity di TT3HybridOnVehicle berubah
          if Sender is TT3HybridOnVehicle then
          begin
            name := TT3Weapon(Sender).InstanceName;
            case TT3Weapon(Sender).WeaponStatus of
              wsAvailable   : name := name + ' : Available';
              wsUnavailable : name := name + ' : Unavailable';
              wsDamaged     : name := name + ' : Damaged';
              wsFiring      : name := name + ' : Firing';
            end;

  //              name := name + ' : ' + IntToStr(Value);
            tn.Text:=  name;
            tn.getFirstChild.Text := IntToStr(Value);
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.OnPropertyMissLauncher(Sender, Launcher: TObject;
  Value: integer);
var
  tn    : TTreeNode;
  name  : string;
  Node  : TTreeNode;
  launcherNumber : integer;
  MissileLauncher : TFitted_Weap_Launcher_On_Board;
begin
  //======= ini untuk mengupdate item tree view weapons, khusus Launcher Missile ==========

  if (Sender is TT3Weapon) and (Assigned(TT3Weapon(Sender).Parent)) and
    TT3PlatformInstance(TT3Weapon(Sender).Parent).Equals(ToteSelectedPlatform) then
  begin
    tn := GetNodeByData(tvWeapons,Sender);

    if Assigned(tn) then
    begin
      Node := tn.getFirstChild;
      MissileLauncher := TFitted_Weap_Launcher_On_Board(Launcher);

      while Node <> nil do
      begin
        if Node.Data = Launcher then
        begin
          if  MissileLauncher.FData.Launcher_Type > 8 then
            launcherNumber :=  MissileLauncher.FData.Launcher_Type - 8
          else
            launcherNumber := MissileLauncher.FData.Launcher_Type;

          name := 'Launcher ' + IntToStr(launcherNumber) + ' : ' + IntToStr(Value);
          Node.Text := name;

          Break;
        end;

        Node := Node.GetNext;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.OnPropertyTorpLauncher(Sender, Launcher: TObject;
  Value: integer);
var
  tn    : TTreeNode;
  name  : string;
  Node  : TTreeNode;
  launcherNumber : integer;
  TorpedoLauncher : TFitted_Weap_Launcher_On_Board;
begin
  //======= ini untuk mengupdate item tree view weapons, khusus Launcher Torpedo ==========

  if (Sender is TT3Weapon) and (Assigned(TT3Weapon(Sender).Parent)) and
    TT3PlatformInstance(TT3Weapon(Sender).Parent).Equals(ToteSelectedPlatform) then
  begin
    tn := GetNodeByData(tvWeapons,Sender);

    if Assigned(tn) then
    begin
      Node := tn.getFirstChild;
      TorpedoLauncher := TFitted_Weap_Launcher_On_Board(Launcher);

      while Node <> nil do
      begin
        if Node.Data = Launcher then
        begin
          if  TorpedoLauncher.FData.Launcher_Type > 8 then
            launcherNumber :=  TorpedoLauncher.FData.Launcher_Type - 8
          else
            launcherNumber := TorpedoLauncher.FData.Launcher_Type;

          name := 'Tube ' + IntToStr(launcherNumber) + ' : ' + IntToStr(Value);
          Node.Text := name;

          Break;
        end;

        Node := Node.GetNext;
      end;
    end;
  end;
end;

procedure TfrmToteDisplay.OnPropertyDblChange(Sender : TObject;Props : TPropsID; Value : Double);
begin

end;
procedure TfrmToteDisplay.OnPropertyBoolChange(Sender : TObject;Props : TPropsID; Value : Boolean);
begin

end;
procedure TfrmToteDisplay.OnPropertyByteChange(Sender : TObject;Props : TPropsID; Value : Byte);
var
  li  : TListItem;
  tn,node  : TTreeNode;
  name, ecmStatus : string;
begin
  //======= ini untuk mengupdate item tree view weapons ===============
  if (Sender is TT3Weapon) and (Assigned(TT3Weapon(Sender).Parent)) and
    TT3PlatformInstance(TT3Weapon(Sender).Parent).Equals(ToteSelectedPlatform) then
  begin
    tn := GetNodeByData(tvWeapons,Sender);

    if Assigned(tn) then
    begin
      case Props of
        psWeaponStatus :
        begin
          name := TT3Weapon(Sender).InstanceName;
          case TWeaponStatus(Value) of
            wsAvailable   : name := name + ' : Available';
            wsUnavailable : name := name + ' : Unavailable';
            wsDamaged     : name := name + ' : Damaged';
            wsFiring      : name := name + ' : Firing';
          end;

          if (Sender is TT3MissilesOnVehicle) or (Sender is TT3TorpedoesOnVehicle) then
            name := name + ' : ' + IntToStr(Value);

          tn.Text := name;
        end;
      end;
    end;
  end;
  //======= ini untuk mengupdate item list view sensor ===============
  if (Sender is TT3Sensor) and (Assigned(TT3Sensor(Sender).Parent)) and
    TT3PlatformInstance(TT3Sensor(Sender).Parent).Equals(ToteSelectedPlatform) then
  begin
    li := findLVItem(lvSensors,TT3Sensor(Sender).InstanceName);
    case TSensorOperationalStatus(Value) of
      sopOff, sopOffIFF      : li.SubItems[0] := 'Off';
      sopOn                  : li.SubItems[0] := 'On';
      sopDamage              : li.SubItems[0] := 'Damaged';
      sopTooDeep             : li.SubItems[0] := 'Too Deep';
      sopEMCON               : li.SubItems[0] := 'EMCON';
      sopActive              : li.SubItems[0] := 'Active';
      sopPassive             : li.SubItems[0] := 'Passive';
      sopTooFast             : li.SubItems[0] := 'Too Fast';
      sopDeploying           : li.SubItems[0] := 'Deploying';
      sopDeployed            : li.SubItems[0] := 'Deployed';
      sopStowing             : li.SubItems[0] := 'Stowing';
      sopStowed              : li.SubItems[0] := 'Stowed';
    end;
  end;

  //======= ini untuk mengupdate item tree view ecm ===============
  if (Sender is TT3CounterMeasure) and (Assigned(TT3CounterMeasure(Sender).Parent)) and
    TT3PlatformInstance(TT3CounterMeasure(Sender).Parent).Equals(ToteSelectedPlatform) then
  begin
    tn := GetNodeByData(tvCountermeasures,Sender);

    if Assigned(tn) then
    begin
      case Props of
        psCMStatus :
        begin
          name := TT3CounterMeasure(Sender).InstanceName;
          case TECMStatus(Value) of
            esAvailable     : ecmStatus := 'Available';
            esUnavailable   : ecmStatus := 'Unavailable';
            esLaunchingChaff: ecmStatus := 'Launching Chaff';
            esDamaged       : ecmStatus := 'Damage';
            esOn            : ecmStatus := 'On';
            esOff           : ecmStatus := 'Off';
            esEMCON         : ecmStatus := 'EMCON';
            esAutomatic     : ecmStatus := 'Automatic';
            esManual        : ecmStatus := 'Manual';
            esDeployed      : ecmStatus := 'Deployed';
            esStowed        : ecmStatus := 'Stowed';
          end;

          tn.Text := name + ' : ' + ecmStatus;

          node := tn.getFirstChild;
          if Assigned(node) then
            node.Text := ecmStatus;
        end;
      end;
    end;
  end;
end;
//==========================

end.
