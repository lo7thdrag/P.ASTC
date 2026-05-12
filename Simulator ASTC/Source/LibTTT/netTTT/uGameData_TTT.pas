unit uGameData_TTT;

interface

uses
  uTCPDatatype, tttData, uDataTypes;

type
  MyArray = array [0..9] of array [0..2]of Double;
  //TPOHType  = (pohPending, pohNoHit, pohHit);

  TWaypointType = (wtRBLW, wtBOLW);
  TWaypointAction = (waMove, waInsert, waDelete);

  TAnyRecord = record
    pid     : TPacketID;
    anyDATA : Double;
  end;

  // struct untuk property umum senjata yang selalu berubah
  TRecWeaponCommon = record
    WeaponID     : integer;
    WeaponStatus : byte;
    WeaponTarget : integer;
    Quantity     : integer;
    ControlMode  : integer;
  end;

  TRecord_DynamicOverlay = record
    Track : String;
    ID    : Integer;
    Range_off : Double;
    Bearing_off : Integer;
    Bearing : byte;
    Rotation  : Integer;
    NoTrack : Integer;
  end;

// UDP Game Record ===========================================================
//  CPID_PLATFORM_MOVE        = CPID_UDP + 1;

  TRecUDP_PlatformMovement =  record
    pid  : TPacketID;
    SessionID  : Integer;
    PlatformID : Integer;
    X, Y, Z  : double;
    Course,
    Speed    : single;
    Accel,
    TurnRate : single;

    //Nando Added
    ObjectType : Byte;

    // endurance properties
    FuelRemaining : double;
    TimeRemaining : double;
    RangeRemaining : double;
  end;

//  CPID_PLATFORM_LANDDATA    = CPID_UDP + 2;

  TRecUDP_PlatfomLandData = record
    pid         : TPacketID;
    SessionID   : Integer;
    PlatformID  : Integer;
    IsOnLand    : boolean;
    dAvail      : boolean;
    dMin, dMax  : single;
    elev        : single;
  end;

//  CPID_GAMETIME             = CPID_UDP + 3;

  TRecUDP_GameTime = record
    pid         : TPacketID;
    SessionID   : Integer;
    ServerTime  : TDateTime;
    GameTime    : TDateTime;
    GameMS      : LongWord;
    GameSpeed   : single;
    GameStart   : TDateTime;
  end;

//  CPID_UDP_GAMECTRL_INFO    = CPID_UDP + 4;
  TRecUDP_GameCtrl_Info = record
    pid        : TPacketID;
    SessionID   : Integer;
    GameState  : integer;  // game state
    GameSpeed  : double;
    GameTimeMS : LongWord;
    Flag       : word;
  end;

//  CPID_UDP_Synch_Obj        = CPID_UDP + 5;
  TRecUDP_Synch_Obj = record
    pid          : TPacketID;
    SessionID     :Integer;
    GroupID      : Integer;
    PlatformID   : integer;
    PlatformType : byte;      // platform / vehicle/ missile /
    VehicleID    : Integer;   // if vehicle __index;
    ObjectType   : byte;      // vehicle.radar  / vehicle.gun,  sensor dll
    ObjectID     : Integer;   // radar__index, gun__index;
    SynchType    : word;      // synch gun capacity
    iValue1      : Integer;   // current gun is
    iValue2      : Integer;
    dValue1      : Double;  //percent health
    dValue2      : Double;  //current health
    bValue       : boolean;
  end;

  TRecUDP_Synch_Missile = record
    pid          : TPacketID;
    SessionID    : Integer;
    PlatformID   : integer;
    PlatformType : byte;      // platform / vehicle/ missile /
    TargetPlatformID   : integer;
    TargetPlatformType : byte;
    TargetPosX,
    TargetPosY,
    TargetPosZ   : Double;
  end;

  //============================================================================
  // TCP Game Record ===========================================================
  TRecSynch_Vehicle = record
    pid  : TPacketID;
    SessionID : Integer;  //reserved;
    PlatformID : Integer;

    DormantState  : boolean;
    OnGrounded    : boolean;
    OnLand        : boolean;
    DamageSensor  : boolean;
    DamageWeapon  : boolean;
    DamageComm    : boolean;
    DamageHelm    : boolean;
    FuelLeakage   : boolean;
    DamagePropulsion : boolean;

    FuelRemaining : double;
  end;

  TRecSynch_Missile = record
    pid           : TPacketID;
    SessionID     : Integer;  //reserved;
    PlatformOwner : Integer;
    PlatformID    : integer;
    TargetID      : integer;
    InstanceName  : string[12];

    Definition    : TRecMissile_Definition;
    Enable        : Boolean;
    WeaponCategory: byte;
    FiringMode    : byte;
    Track_ID      : string[12];

    PositionX     : double;
    PositionY     : double;
    PositionZ     : double;

    Speed         : double;
    Course        : double;

  end;

  TRecSynch_MissileVehicle = record
    pid  : TPacketID;
    SessionID : Integer;  //reserved;
    PlatformID : Integer;
    Quantity  : integer;
    SalvoSize : integer;
  end;

  TRecSynch_GunOnVehicle = record
    pid  : TPacketID;
    SessionID : Integer;  //reserved;
    Common : TRecWeaponCommon;
    SalvoSize : integer;
    SalvoMode : integer;
    IsAssigned : boolean;
    IntercepRange : single;
    ThressholSpeed : single;
  end;

  TRecCmd_Platform = record
    pid  : TPacketID;
    SessionID : Integer;  //reserved;
    PlatfomID : Integer;
    OrderID   : Byte;
    OrderType : Byte;
    OrderParam: single;
  end;

  TRecCmd_LastUpdatePlatform = record
    pid  : TPacketID;
    SessionID : Integer;
    PlatfomID : Integer;
    UpdateTime : string[30];
  end;

  TRecCmd_Platform_MOVE = record     //reposition
    pid  : TPacketID;
    SessionID : Integer;  //reserved;
    PlatfomID : Integer;
    OrderID   : Byte;
    X, Y, Z   : double;
    GroupID   : Integer;
  end;

  // seharusnya record ini yg digunakan untuk smua command di missile
  TRecCmd_Missile = record
    pid  : TPacketID;
    SessionID : Integer;  //reserved;
    PlatfomID : Integer;
    OrderID   : Byte;     // order apa yg dilakukan
    ValBoolean: boolean;
  end;

  TRecCmd_Platform_SET_PROPERTY = record
    pid          : TPacketID;
    SessionID    : Integer;  //reserved;
    PlatfomID    : Integer;
    OrderID      : Byte;
    GrpID        : Integer;
    domain       : Integer;
    identity     : Integer;
    platformType : Integer;
  end;

  TRecCmd_ESM_SET_PROPERTY = record
    pid          : TPacketID;
    SessionID    : Integer;  //reserved;
    PlatfomID    : Integer;
    GrpID        : Integer;
    Tracknumber  : string[12];
    domain       : Integer;
    identity     : Integer;
  end;

  TRecCmd_NRP_SET_PROPERTY = record     //reposition
    pid          : TPacketID;
    SessionID    : Integer;  //reserved;
    PlatfomID    : Integer;
    OrderID      : Byte;
    GrpID        : Integer;
    TypeNRP      : Integer;
    domain       : Integer;
    identity     : Integer;
    platformType : Integer;
    Force        : Byte;
    PosX         : Double;
    PosY         : Double;
    symbol       : string[32];
  end;

  TRecCmd_Platform_CHANGE_TRACKNUMBER = record     //reposition
    pid             : TPacketID;
    OrderID         : Integer;  // ryu : order id
    SessionID       : Integer;  //reserved;
    PlatfomID       : Integer;
    TrackID         : Integer;
    GrpID           : Integer;
    newTrackNumber  : Integer;
    oldESMNumber    : String[12];
    newESMNumber    : String[12];
    newName         : string[20];
  end;

  TrecCmd_LaunchHybrid = record
    pid          : TPacketID;
    SessionID    : Integer;  //reserved;
    WpnID        : Integer;
    NewID        : Integer;
    Launched     : Boolean;
  end;

  TRecCmd_Platform_Repair = record
    pid             : TPacketID;
    SessionID       : Integer;  //reserved;
    PlatfomID       : Integer;
    Health          : Single;
    HealthPercent   : Single;
    nDormant        : Boolean; //mk
  end;

  TRecCmd_Change_SystemState = record //Change property in system state
    pid             : TPacketID;
    SessionID       : Integer;
    PlatfomID       : Integer;
    StateID         : Integer;
    nValue          : double;
  end;

  TrecCmd_Platform_SETSPEED = record
    pid       : TPacketID;
    SessionID : Integer;  //reserved;
    PlatfomID : Integer;
    OrderID   : Byte;
    Speed     : double;
  end;

  // Radar Noise Jammer
  TrecRadarNoiseJammer = record
    pid          : TPacketID;
    SessionID    : Integer;
    OrderID      : Byte;

    JammerStatus : Byte;
    JammerMode   : Byte;
    SpotNumber   : Integer;
    Bearing      : double;
    CenterFreq   : double;
    BandWidth    : double;

    // id jammer
    JammerPlatformOwnerID   : integer;
    JammerID                : integer;

    ObjectReqJammedID      : Integer; // request id target sensor
    ObjectReqJammedOwnerID : integer; // request id parent sensor

    // id target - untuk event jamming sukses
    ObjectSuccesJammedID      : Integer; // id target sensor
    ObjectSuccesJammedOwnerID : integer; // id parent sensor
  end;

  TRecCmd_Sensor = record
    pid         : TPacketID;
    SessionID   : Integer;
    SensorType  : byte;
    PlatformID  : integer;
    SensorID    : integer;
    OrderID     : byte;
    OrderParam  : byte;
  end;

  TRecCmd_UpdateActualCable = record
    pid         : TPacketID;
    SessionID   : Integer;
    SensorType  : byte;
    PlatformID  : integer;
    SensorID    : integer;
    value       : Double;
  end;

  TRecCmd_UpdateSonar = record
    pid         : TPacketID;
    SessionID   : Integer;
    SensorType  : byte;
    PlatformID  : integer;
    SensorID    : integer;
    Counter     : Integer;
    param       : Integer;
    order       : Integer;
  end;

  TRecCmd_EsmVariance = record     //ESM variance singkron
    pid         : TPacketID;
    SessionID   : Integer;
    SensorID    : integer;
    DetectedID  : integer;
    ParentDetectedID : Integer;
    GroupID     : Integer;
    EsmTrackNumber: Integer;
    nVariance   : Double;
  end;

  TRecCmd_SonarDeploy = record
    pid           : TPacketID;
    SessionID     : Integer;
    PlatformID    : integer;
    SensorID      : integer;
    TimeToActive  : Integer;
    Param         : Byte;
    ActualCable   : Double;
    OrderCable    : Double;
  end;

  TRecCmd_IFFSearchMode = record
    pid           : TPacketID;
    SessionID     : Integer;
    PlatformID    : integer;
    SensorID      : integer;
    ModeSearch    : byte;
  end;

   TRecCmd_SensorIFF = record
    pid         : TPacketID;
    SessionID   : Integer;
    PlatformID  : integer;
    TargetID    : Integer;
    SensorID    : integer;
    index_mode  : Byte;
    check_mode  : Boolean;
    value_mode  : Integer;
  end;

   TRec_SyncTarget = record
    pid         : TPacketID;
    SessionID   : Integer;
    WeaponID    : integer;
    TargetID    : Integer;
  end;

  TRecCmd_TargetIFF = record
    pid         : TPacketID;
    SessionID   : Integer;
    PlatformID  : integer;
    TargetID    : Integer;
    SensorID    : integer;
  end;

//  CPID_CMD_LAUNCH_EMBARK = CPID_TCP + 4;
  TRecCmd_Embark = record
    pid               : TPacketID;
    OrderID           : integer;
    QueueNum          : integer;
    SessionID         : Integer;
    ParentPlatformID  : integer;   // ID nya launcher
    EmbarkPlatformID  : integer;   // ID platform instance yg baru di launch
    Hosted_Index      : integer;
    Quantity          : Integer;

    LaunchName,
    TrackIdent: string[30];
    //activation
    InitSpeed,
    InitCourse,
    InitAltitude: Double;

    InitX, initY, initZ: double;
    GrpID : Integer;              //mk 03052012
  end;

//  CPID_CMD_SYNCH = CPID_TCP + 5;
  TRecCmdSYNCH = record
    pid           : TPacketID;
    SessionID     : Integer;
    SynchID       : byte;
    Synch_IParam  : integer;
    Synch_Dparam  : double;
  end;

  //CPID_CMD_LAUNCH_MISSILE
  TRecCmd_LaunchMissile = record
    pid                       : TPacketID;
    SessionID                 : Integer;
    GroupID                   : Integer;
    ParentPlatformID          : integer;
    MissileID                 : integer;     // ID missile nya TWeaponOnBoard
    TargetPlatformID          : integer;
    ProjectileInstanceIndex   : integer;
    Order                     : integer;
    LaunchAngle               : integer;
    FiringMode                : Byte;
    LaunchBearing             : single;
    SeekerRange               : single;
    LauncherID                : Byte;
    NoCubicle                 : Integer;
    // tambahan record untuk mengatasi MissileID yg sama, tapi beda object
    MissileName               : string[100];
    IsEngagementWeapon        : Boolean;
  end;

  //CPID_CMD_GUN_FIRE
  TRecCmd_GunFire = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : integer;    // ID nya launcher
    GunID             : integer;
    TargetPlatformID  : integer;
    OrderID           : integer;     // fire ceas
    ControlMode       : integer;
    SalvoMode         : integer;
    SalvoSize         : integer;
    GunCapacityRemain : Integer;
	  InterceptRange    : single;
    ThresSpeed        : single;
    HitProbability    : Byte;
    // tambahan record untuk mengatasi GunID yg sama, tapi beda object
    GunName           : string[100];
    // chaff property
    ChaffX, ChaffY    : single;
    ChaffBloom        : integer;
    ChaffType         : integer;
    {mk NGS}
    pX, pY, pXflash,
    pYflash           : Double;
    pAltitude         : Double;
    degSpotLine       : Double;
    degGunLine        : Double;
    //--- NGS corrections
    NGSCorrMode       : integer;
    NGSRangeCorr      : Double;
    NGSDefCorr        : Double;
  end;

  //CPID_CMD_GUN_FIRE_STATE
  TRecCmd_GunFireState = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : integer;    // ID nya launcher
    GunID             : integer;
    TargetPlatformID  : integer;
    OrderID           : integer;     // fire ceas
    ControlMode       : integer;
    SalvoMode         : integer;
    SalvoSize         : integer;
    GunCapacityRemain : Integer;
    HitProbability    : Byte;
  end;

//CPID_CMD_GAME_CTRL = CPID_TCP + 9;
  TRecCmd_GameCtrl = record
    pid       : TPacketID;
    SessionID : Integer;
    GameCtrl  : word;   // cmd start / stop / game speed
    GameSpeed : double;
  end;

//CPID_TCP_REQUEST          = CPID_TCP  + 10;
  TRecTCP_Request = record
    pid         : TPacketID;
    SessionID   : Integer;
    reqID       : byte;
    reqParam    : byte;
    reqFlag     : word;
  end;

  //CPID_CMD_LAUNCH_RUNTIME_PLATFORM
  TRecCmd_LaunchRP = record
    pid  : TPacketID;
    SessionID     : Integer;
    RPPlatformID  : integer;      // ID nya launcher / vehicle def
    NewPlatformID : Integer;      // digenerate server. client kirim 0
    RPGroupID     : Integer;      // assignment ke group.
    ForceDesignation: Integer;    //mk Force Designation 27042012
    InstanceName  : string[32];
    TrackIdent    : string[12];
    pX, pY, pZ : Double;
    PHeading : Double;
    PSpeed : Double;
    PAltitude : Double;
  end;

  //CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM
  TRecCmd_LaunchNonRP = record
    pid           : TPacketID;
    SessionID     : Integer;
    NRPPlatformID : integer;    // ID nya launcher / vehicle def
    NewPlatformID : Integer;    // digenerate server. client kirim 0
    NRPGroupID    : Integer;     // assignment ke group.
    InstanceName  : string[32];
    TrackIdent    : string[12];
    Identity      : integer;
    TrackDomain   : integer;
    PointType     : Integer;
    Symbol        : string[32];
    pX, pY, pZ    : Double;
    Course        : double;
    Speed         : double;
    Bearing       : double;
    AOP_time      : integer;
    LastUpdateTime : string[30];
  end;

  //CPID_CMD_OVERLAYTEMPLATE
  TRecCmd_OverlayTemplate = record
    pid       : TPacketID;
    SessionID : Integer;
    Cubicle   : Integer;
    Name      : string[30];
    IdAction  : Byte; {1: add; 2: Edit; 3: Delete}
    Tipe      : Byte;
    Domain    : Byte;
  end;

  //CPID_CMD_DYNAMIC_TRACK --> utk kirim track selection paket
  TRecCmd_OverlayDynamicTrack = record
    pid           : TPacketID;
    SessionID     : Integer;
    Cubicle       : Integer;
    TemplateName  : string[30];
    NameTrack     : string[12];
    IdTrack       : Integer;
    IdSelectTrack : Byte;
    Brg           : Integer;
    Rng           : Double;
    Rot           : Integer;
    IdAction      : Byte;       {1: add; 2: Edit; 3: Delete}
    Orientation   : byte;

    Idx           : Integer;
    Notrack       : Integer;
  end;

  //CPID_CMD_OVERLAYSTATICSHAPE
  TRecCmd_OverlayStaticShape = record {Prince}
    pid           : TPacketID;
    SessionID     : Integer;
    Cubicle       : Integer;
    ShapeID       : Byte;
    TemplateName  : string[30];
    IdAction      : Byte;       {1: add; 2: Edit; 3: Delete}
    IdSelectShape : Byte;
    PostStart     : t2DPoint;   {PostStart/ PostCenter}
    PostEnd       : t2DPoint;
    Words         : string[30];
	  Size          : byte;
    Radius1       : Double;     {Radius/Inner/Height}
    Radius2       : Double;     {Outer/ Width}
    StartAngle    : Integer;
    EndAngle      : Integer;
    Rotasi        : Integer;
    Kolom         : Integer;
    Baris         : Integer;
    color         : Integer;
    StatePoly     : byte;       {0: Awal; 1: Akhir}
  end;

  //CPID_CMD_OVERLAYDYNAMICSHAPE
  TRecCmd_OverlayDynamicShape = record
    pid           : TPacketID;
    SessionID     : Integer;
    Cubicle       : Integer;
    ShapeID       : Byte;
    TemplateName  : string[30];
    IdAction      : Byte;       {1: add; 2: Edit; 3: Delete}
    IdSelectShape : Byte;
    PostStart     : tRangeBearingPoint;   {PostStart/ PostCenter}
    PostEnd       : tRangeBearingPoint;
    Words         : string[30];
    Size          : byte;
    Radius1       : Double;     {Radius/Inner/Height}
    Radius2       : Double;     {Outer/ Width}
    StartAngle    : Integer;
    EndAngle      : Integer;
    Rotasi        : Integer;
    Kolom         : Integer;
    Baris         : Integer;
    color         : Integer;
    StatePoly     : byte;       {0: Awal; 1: Akhir}

    {kalo sdh fix dihapus aja}
    SenderID      : integer;
    Bearing       : string[1];
    Range1        : Double;
    Range2        : Double;
    Bearing1      : Double;
    Bearing2      : Double;
    NoList        : Integer;
    NoTrack       : Integer;
    Vertex        : MyArray;//array of array of Double;
  end;

  //CPID_CMD_TRANSFER_SONOBUOY --> utk kirim transfer sonobuoy
  TRecCmd_TransferSonobuoy = record
    pid           : TPacketID;
    SessionID     : Integer;
    NRPGroupID    : Integer;
    OldParentID   : Integer;
    NewParentID   : Integer;
    SonoID        : Integer;
    Flag          : Boolean; {penanda transfer smua ato tidak}
  end;

  //CPID_CMD_MERGE_TRACK
  TRecCmd_MergeTrack = record
    pid                 : TPacketID;
    SessionID           : Integer;
    GroupID             : Integer;
    EsmTrackNumber      : Integer;
    DetectedTrackNumber : Integer;
    OrderMerge          : boolean;
  end;

  //CPID_CMD_DATALINK
  TRecCmd_DataLink = record
    pid                 : TPacketID;
    SessionID           : Integer;
    DataLinkID          : Integer;
    Force               : Integer;
    Band                : Integer;
    platformID          : Integer;
    OrderDL             : Integer;
    PUStatus            : Integer;
    PooledPUID          : integer;
    PooledTracksID      : array [0..50] of Integer;
  end;

  //CPID_CMD_DATALINK_ADDTRACK
  TRecCmd_DataLink_AddTrack = record
    pid                 : TPacketID;
    SessionID           : Integer;
    DataLinkID          : Integer;
    PlatformDetectedID  : Integer;
    PlatformSourceID    : Integer;
  end;

  //CPID_CMD_DATALINK_REMOVETRACK
  TRecCmd_DataLink_RemoveTrack = record
    pid                 : TPacketID;
    SessionID           : Integer;
    DataLinkID          : Integer;
    PlatformDetectedID  : Integer;
    PlatformSourceID    : Integer;
  end;

  //CPID_CMD_DATALINK_REMOVETRACKS
  TrecCmd_DataLink_RemoveTracks = record
    pid                 : TPacketID;
    SessionID           : Integer;
    DataLinkID          : Integer;
  end;

  //CPID_CMD_ASSIGN_FIRECONTROL
  TRecCmd_FC = record
    pid                 : TPacketID;
    SessionID           : Integer;
    OrderID             : Integer;
    FCRadarID           : Integer;
    PlatformID          : Integer;     //untuk yg diassign
    PlatformParentID    : Integer;     //parent radar
    GroupID             : Integer;
  end;

  //CPID_CMD_EMBARK_LAND
  TRecCmd_Embark_Landing = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : integer;   // ID nya launcher
    EmbarkPlatformID  : integer;   // ID platform embark
    OrderID           : Byte;

    //index for readying time
    IndexEmbark, IndexLanding : Integer;

    //activation
    InitSpeed,
    InitCourse,
    InitAltitude: Double;
  end;

  TRecCmd_SelectPlatformToRemove = record
    pid                 : TPacketID;
    SessionID           : Integer;
    PlatfomID           : Integer;  // selected platform_index
    isNRPlatform        : boolean;
  end;

//  CPID_VOIP_PLATFORM_SELECT               = CPID_TCP + 15;
  TRecVoip_SelectPlatform = record
    pid                 : TPacketID;
    SessionID           : Integer;
    PlatfomID           : Integer;  // selected platform_index
    Command             : Integer;  // reserved;
  end;

  // CPID_CMD_LAUNCH_CHAFF
  TRecCmd_LaunchChaff = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : integer;    // ID nya parent launcher
    ChaffOnVehicleID   : integer;    // ini instance indexnya chaff on board
    LauncherID         : integer;
    ChaffInstanceIndex : integer;    // ini instance indexnya chaff
  end;

  TRecCmd_LaunchChaffState = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : integer;    // ID nya parent launcher
    ChaffOnVehicleID   : integer;
    LauncherID         : integer;
    StateID            : integer;    // 0 : stop salvo, 1 : salvo
    Qty                : Integer;    // qty chaff skarang
  end;

  TRecCmd_ChaffLauncherProperties = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : integer;    // ID nya parent launcher
    LauncherID         : integer;
    Tag                : Byte;
    Delay              : integer;
    SalvoSize          : integer;
    BloomRange         : double;
    BloomAltitude      : double;
    Bearing            : double;
    MapPositionX       : Double;
    MapPositionY       : Double;
    IDState            : byte;
    Qty                : Integer;   // qty chaff skarang
  end;


  // CPID_CMD_LAUNCH_BUBBLE
  TRecCmd_LaunchBubble = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : integer;    // ID nya parent launcher
    ChaffOnVehicleID   : integer;    // ini instance indexnya Bubble on board
    LauncherID         : integer;
    BubbleInstanceIndex: integer;    // ini instance indexnya Bubble
  end;

  TRecCmd_LaunchBubbleState = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : integer;    // ID nya parent launcher
    ChaffOnVehicleID   : integer;
    LauncherID         : integer;
    StateID            : integer;     // 0 : stop salvo, 1 : salvo
  end;

  TRecCmd_BubbleLauncherProperties = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : integer;    // ID nya parent launcher
    LauncherID         : integer;
    Delay              : integer;
    SalvoSize          : integer;
    BloomRange         : double;
    BloomDepth         : double;
    Bearing            : double;
    MapPositionX       : Double;
    MapPositionY       : Double;
    IDState            : byte;
  end;

  //CPID_CMD_LAUNCH_SONOBUOY
  TRecCmd_LaunchSonobuoy = record
    pid                : TPacketID;
    SessionID          : Integer;
    ParentPlatformID   : Integer;
    SonobuoyOnVehicleID: Integer;
    SonobuoyMode       : Byte;
    Depth              : Double;
    AvailableQuantity  : Integer;
    ProjectileInstanceIndex: Integer;
    //choco : buat deploy sonobuoy dari waypoint
    Spacing            : Double;
    DeployUntilNextWaypoint : Boolean;
  end;

  //CPID_CMD_LAUNCH_MINE
  TRecCmd_LaunchMine = record
    pid                : TPacketID;
    SessionID          : Integer;
    GroupID            : Integer;
    NoCubicle          : Integer;
    ParentPlatformID   : Integer;
    MineOnVehicleID    : Integer;
    Depth              : Double;
    AvailableQuantity  : Integer;
    ProjectileInstanceIndex: Integer;
  end;

  //CPID_CMD_LAUNCH_Bomb
  TRecCmd_LaunchBomb = record
    pid                : TPacketID;
    SessionID          : Integer;
    GroupID            : Integer;
    NoCubicle          : Integer;
    ParentPlatformID   : Integer;
    TargetPlatformID   : Integer;
    BombOnVehicleID    : Integer;
    SalvoSize          : Integer;
    AvailableQuantity  : Integer;
    ProjectileInstanceIndex: Integer;
  end;

  TRecCmd_Sync_Hit_BombMine = record
    pid                : TPacketID;
    SessionId          : Integer;
    WeaponID           : Integer;
    TargetId           : Integer;
    Lethality          : Integer;
  end;

  TRecCmd_GameSetting = record
    pid                : TPacketID;
    SessionID          : Integer;
    Index              : integer;
    ValInteger         : integer;
    ValBoolean         : boolean;
    ValByte            : byte;
    ValDouble          : double;
  end;

  TRecPlatformFreeMe  = record
    pid                : TPacketID;
    SessionID          : Integer;
    PlatformID         : Integer;
    reasondestroy      : Byte;
    FreeMe             : boolean;
  end;

  //added by choco : Platform Removal Sumary
  TRecPlatformHitPlatform  = record
    pid                : TPacketID;
    SessionID          : Integer;
    SenderID           : Integer;
    TargetID           : Integer;
    Lethality          : Integer;
    FreeWeapon         : Boolean;
  end;

  //added by choco : Vectac
  TRecVectac = record
    pid               : TPacketID;
    SessionID         : Integer;
    CmdFromController : Boolean;
    cmd               : Byte;
    CommanderGroupID  : Integer;
    CommanderID       : Integer;
    WpnCarrierID      : Integer;
    TargetID          : Integer;
    Weapon            : Integer;
    CoordX            : Double;
    CoordY            : Double;
    WpnCarrierSpeed   : Double;
    WeaponDropOffset  : Double;
    ProjectileInstanceIndex : Integer;
  end;

  TRecPlatformGroupChange = record
    pid         : TPacketID;
    SessionID   : Integer;
    PlatformID  : Integer;
    OldGroupID  : Integer;
    NewGroupID  : Integer;
  end;

  TRecWeaponOut  = record //ham 04052012
    pid                : TPacketID;
    SessionID          : Integer;
    SenderID           : Integer;
    reasondestroy      : Byte;
  end;

  TRecPlatformHancur  = record //ham 04052012
    pid                : TPacketID;
    SessionID          : Integer;
    SenderID           : Integer;
    Target             : string[50];
    reasondestroy      : Byte;
  end;

  TRecFiringModeWeapon = record
    pid                : TPacketID;
    SessionID          : Integer;
    PlatformID         : Integer;
    MissileID          : Integer;
    FiringMode         : Byte;
  end;

  TRecEngagementModeWeapon = record
    pid                : TPacketID;
    SessionID          : Integer;
    PlatformID         : Integer;
    MissileID          : Integer;
    EngagementMode     : Byte;
  end;

  TRecCmd_Set_LauncherQty = record
    pid           : TPacketID;
    SessionID     : Integer;  //reserved;
    PlatfomID     : Integer;
    WeaponID      : Integer;
    LauncherID    : Byte;
    OrderQuantity : Integer;
  end;

  TRecCmd_Set_Quantity = record
    pid           : TPacketID;
    SessionID     : Integer;  //reserved;
    PlatfomID     : Integer;
    IDUnit        : Integer;
    IDName        : String[60];
    OrderID       : Byte;
    OrderType     : Byte;
    OrderQuantity : Integer;
  end;

  TRecCmd_Set_Status = record
    pid           : TPacketID;
    SessionID     : Integer;  //reserved;
    PlatfomID     : Integer;
    IDUnit        : Integer;
    OrderID       : Byte;
    OrderType     : Byte;
    OrderStatus   : Byte;
  end;

  TRecCmd_ModeEmcon = record
    pid         : TPacketID;
    SessionID   : Integer;
    PlatformID  : Integer;
    EmconCtgr   : Byte;
    Mode        : Byte;
    SensorID    : Integer;
    OrderID     : Byte;
    OrderParam  : Byte;
	SensorGroupID : Integer; //mk
  end;

  TRecCmd_EngageTrack = record
    pid          : TPacketID;
    SessionID    : Integer;
    PlatformID   : Integer;
    TargetID     : Integer;
    MisID        : Integer;
    Track        : string;
    isHaveLaunch : byte;
  end;

  //= Communication ==============================================================
  //Record For Communication
  TRecCommunicationDefinition = record
    CommChanel  : string;
    CommName    : string;
    CommCode    : string;
    CommRoom    : string;
    CommBand    : string;
    CommSecure  : Boolean;
  end;

  TRecModifComm = record
    pid               : TPacketID;
    SessionID         : Integer;
    GroupID           : Integer;
    Channel_Number    : Integer;
    Channel_Ident     : string[60];
    Channel_Code      : string[30];
    Channel_Frek      : Double;
    Channel_band      : byte;
    Channel_Security  : Boolean;
    Channel_intfr     : TModifCommInterference;
    ModifStat         : TModifCommStatus;
  end;

  PRecChannelDefinition = ^TRecChannelDefinition;
  TRecChannelDefinition = record
    ChannelNumber : string;
    ChannelName : string;
    ChannelCode : string;
    ChannelRoom : string;
    ChannelBand : string;
    ChannelSecure : Boolean;

    isAdd : Boolean;        //if StrGrid is Empty, isAdd = True = Add Channel
    isEdit : Boolean;       //True = Edit Fill in strGrid
  end;

  PRecGroupCom = ^TRecGroupCom;
  TRecGroupCom = record
    //Group Name & ID
    GroupName : string[10];
    GroupID : Integer;
    //For Channel which Available (Remains)
    ChannelNumberAvailable : string;
    ChannelNameAvailable : string;
    ChannelCodeAvailable : string;
    ChannelRoomAvailable : string;
    ChannelBandAvailable : string;
    ChannelSecureAvailable : Boolean;
    //For Channel Which Have been Added (Mapped)
    ChannelNumberMapping : string;
    ChannelNameMapping : string;
    ChannelCodeMapping : string;
    ChannelRoomMapping : string;
    ChannelBandMapping : string;
    ChannelSecureMapping : Boolean;
  end;

  //CPID_RecSendControllerAv = 104;
  //Sincron Controller Activity
  TRecSendControllerAv = record
    PId   : TPacketID;

    GroupName : string[10];
    GroupID : Integer;

    AvNumber : string[250];
    AvName : string[250];
    AvCode : string[250];
    AvRoom : string[250];
    AvBand : string[250];
  end;

  //CPID_RecSendControllerMp = 105;
  TrecSendControllerMp = record
    PId   : TPacketID;

    GroupName : string[10];
    GroupID : Integer;

    MpNumber : string[250];
    MpName : string[250];
    MpCode : string[250];
    MpRoom : string[250];
    MpBand : string[250];
  end;

  //CPID_RecSendControllerDef = 106;
  TrecSendControllerDef = record
    PId   : TPacketID;

    ConsoleName : string[30];

    AColumn : Integer;
    ARow : Integer;

    EditField : string[50];

    isCheck : Boolean;
    isEdit : Boolean;
  End;

  //CPID_RecSendChannel = 101
  //Add Or Remove Channel Cub
  TRecSendChannel =  record
    PId   : TPacketID;
    //Add Remove Channel
    GroupName : string[10];
    GroupID : Integer;
    NumberChannel : Integer;
    Number : string[250];           //added by choco
    Name : string[250];
    BandChannel : string[250];      // HF, UHF/VHF, SATCOM
    Channel : string[250];          // Channel and Room which Add Or Remove
    Room : string[250];
    IsAdd : Boolean;                //True is Add, False is Remove Channel
  end;

  //CPID_REC_MESSAGE = 102
  //Message Handling
  TRecSendMessage = record
    PId   : TPacketID;
    platformID : Integer;
    OrderID : Byte;
    MessageNumber : integer;
    SesionID : Integer;
    SendFrom : Integer;                //Message from
    Sendto : Integer;                  //message To
    Subject : string[20];
    Messagetype : Byte;
    Priority : Byte;
    Band : byte;                       //HF, VHF/UHF, SATCOM
    MessageHandling : string[250];     //Contain Message
    RecipientList : string[250];       //Contain Message Recipient
  end;

  TMessageHandling = class
    FData : TRecSendMessage;
    TimeWait : Single;
  end;

  //CPID_RecSendJamming = 103
  //Jamming To CLient
  TRecSendJamming = record
    PId   : TPacketID;
    ModeJamming : Integer;  // 1: Jamming, 2 : MHTones, 3 : Noise
    VolumeJam : Integer;
    VolumeMHT : Integer;
    VolumeNoise : Integer;
    IsJamming : Boolean;    // True is Jamming Mode, False is Clear Mode
  end;

  //  CPID_Jamming = 200;
  TrecJamming = record
    Pid : TPacketID;

    Cmd : string[20];
    Channel : string[30];
    Mode : Integer;
    Volume : Integer;
  end;

  // CPID_REMOTE_CMD                  = CPID_TCP  + 17;
  TRecSendRemote = record
    pid         : TPacketID;
    SessionID   : Integer;
    OrderID     : Byte;
    FServer     : LongWord;
    FClient     : LongWord;
    FPort       : Integer;
    FColor      : Byte;
    FControl    : boolean;
  end;

  //Waypoint==================================================
  TrecSinc_Waypoint = record
    pid           : TPacketID;
    SessionID     : Integer;
    Cmd           : Byte; //General Data, Event
    Mode          : Byte; //Sub-Cmd
    platformID    : Integer;
    platformName  : string[35];
    WaypointIndex : Integer;

    //Add Coordinat Waypoint
    Scripted_Event_Index  : Integer;
    Waypoint_Latitude     : Double;
    Waypoint_Longitude    : Double;
    Speed                 : Double;
    Altitude              : Double;
    CheckArrival          : Boolean;
    TimeArrival           : Integer;

    StartMode             : Integer;
    StartAt               : Double;

    TerminationHeading : Double;

    index : Integer;
    TvEventLevel : Integer;
    TvEventIndex : Integer;
    TvEventText : string[50];
    WpEventType  : integer;

    //Add Event Waypoint Radar
    Radar_Index : Integer;
    Radar_Control : Integer;

    //Add Event Waypoint Sonar
    Sonar_Index : Integer;
    Sonar_Control : Integer;

    //Add Event Waypoint Sonobuoy
    Sonobuoy_Index : Integer;
    Sonobuoy_Mode : Integer;
    Sonobuoy_Depth : Double;
    Sonobuoy_Spacing : Double;
    Sonobuoy_Qty : Integer;
    Sonobuoy_ContinueDeploy : Boolean;
    Device_ID : Integer;

    //Add Event Waypoint Weapon
    Weapon_Type          : byte;
    List_Index           : Integer;
    Salvo_Size           : Integer;
    Target_Index         : Integer;
    Target_ID            : string[10];
    Weapon_ID            : integer;
    Weapon_Name          : string[40];

    //Add Event Waypoint Mine
    Mine_Index : Integer;
    Mine_Depth : Double;
    Mine_Spacing : Double;
    Mine_Qty : Integer;
    Mine_ContinueDeploy : Boolean;

    //Add Event Waypoint Countermeasure
    CM_Index : Integer;
    CM_Control : Byte;

    //Continous Event Waypoint
    Obj_Index : Integer;
    Obj_Type : Byte;
    Obj_Mode : Integer;
    Obj_Depth : Double;
    Obj_Spacing : Double;
    Obj_Qty : Integer;
    Obj_ContinueDeploy : Boolean;
  end;

  TRecSync_WaypointData = record
    pid : TPacketID;
    SessionID     : Integer;
    OrderID : Byte;
    PlatformID : Integer;
    WaypointID : Integer;
    Speed : Double;
    Course : Double;
    PosX : Double;
    PosY : Double;
  end;

  //Envi==================================================
  TrecSinc_Envi = record
    pid           : TPacketID;
    SessionID     : Integer;
    Sub_EnviID    : Integer;   // membedakan sub area 1 dgn yg lain
    Envi_Type     : Integer;   // membedakan global area dgn sub area
    Envi_Chance   : Integer;   // membedakan angin/arus/dll
    Value         : Double;
  end;

  //RBLW==================================================
  TrecSinc_RBLW = record
    pid : TPacketID;
    SessionID : Integer;
    cmd : Byte;
    PlatformID : Integer;
    Target_Index : Integer;
    WeaponIndex : Integer;
    WeaponName : string[60];
    RBLWIndex : Integer;
    RBLWLauncherIndex : Integer;
    RBLW_PointX : Double;
    RBLW_POintY : Double;
    LauncherNumber : Integer;
    LaunchDelay : Integer;
    IsRBLW : Boolean;
    Action : TWaypointAction;
    SeekerTurnOnRange : Double;
    HAFO : Double;
    PopUp : Byte;
    CruiseAltitude : Double;
    IsAdd : Boolean;
  end;

  //BOLW==================================================
  TrecSinc_BOLW = record
    pid : TPacketID;
    SessionID : Integer;
    cmd : Byte;
    PlatformID : Integer;
    Target_Index : Integer;
    WeaponIndex : Integer;
    WeaponName : string[60];
    BOLWIndex : Integer;
    BOLWLauncherIndex : Integer;
    BOLW_PointX : Double;
    BOLW_POintY : Double;
    LauncherNumber : Integer;
    LaunchDelay : Integer;
    IsBOLW : Boolean;
    Action : TWaypointAction;
    SeekerTurnOnRange : Double;
    HAFO : Double;
    PopUp : Byte;
    CruiseAltitude : Double;
    IsAdd : Boolean;

    //For Send 4 Point BOLW range Destrucktion
    BOLW_Point1_X : Double;
    BOLW_Point1_Y : Double;
    BOLW_Point2_X : Double;
    BOLW_Point2_Y : Double;
    BOLW_Point3_X : Double;
    BOLW_Point3_Y : Double;
    BOLW_Point4_X : Double;
    BOLW_Point4_Y : Double;
    StartBOLW_Point_X : Double;
    StartBOLW_Point_Y : Double;
    EndBOLW_Point_X : Double;
    EndBOLW_Point_Y : Double;
  end;

  PRec_WeaponWaypoint_Original = ^TRec_WeaponWaypoint_Original;
  TRec_WeaponWaypoint_Original = record
    ShipID              : Integer;
    WeaponName          : string[60];
    WaypointType        : TWaypointType;
    PointIndex          : Byte;
    PointLauncherIndex  : Byte;
    PointX              : Double;
    PointY              : Double;
    Action              : TWaypointAction;
  end;

  TRec_MapData = record
    pid         : TPacketID;
    SessionID   : Integer;
    PlatformID  : integer;
    OrderID     : integer;
    IsOnLand    : boolean;
    dAvail      : boolean;
    dMin, dMax  : single;
    elev        : single;
    X, Y        : single;
    ScenarioID  : integer;
  end;

  TrecMissile_Envi = record
    pid               : TPacketID;
    SessionID         : Integer;
    platformID        : Integer;
    WeaponIndex       : Integer;
    WeaponName        : string[100];

    //category n firing mode
    Missile_Kind      : Integer;
    MIssile_Method    : integer;

    //environment
    //Aimpoint
    Missile_PositionX : Double;
    Missile_PositionY : Double;
    //Bearing
    Bearing           : Double;

    //hybrid
    isHybrid          : boolean;
  end;

   TRecTorpedoProperty = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : Integer;
    TorpType          : Byte;
    OrderType         : Byte;
    WeaponIndex       : Integer;
    WeaponName        : string[60];
    Param             : Double;
  end;

  TRecBombProperty = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : Integer;
    WeaponIndex       : Integer;
    WeaponName        : string[60];
    Param             : Integer;
  end;

  TRecMineProperty = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : Integer;
    WeaponIndex       : Integer;
    WeaponName        : string[60];
    Param             : Double;
  end;

  TRecTorpedoPanelWeapon = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : Integer;
    TargetPlatformID  : Integer;
    NoCubicle         : Integer;
    WeaponIndex       : Integer;
    GyroAngle         : Integer;

    TorpType          : Byte;
    SalvoSize         : Byte;
    TubeOn            : Byte;
    FiringMode        : Byte;
    RunOut            : Byte;

    LaunchBearing     : Double;
    SearchRadius      : Double;
    SearchDepth       : Double;
    SafetyCeiling     : Double;
    SeekerRange       : Double;

    ConsoleName       : string[25];
    WeaponName        : string[50];
    TargetTrack       : string[10];
    Param1            : string[6];
    Param2            : string[6];
    Param3            : string[6];
    Param4            : string[6];

    ButtonLaunch      : Boolean;
    ButtonPlan        : Boolean;
    NoTarget          : Boolean;
  end;

  TRecBombPanelWeapon = record
    pid               : TPacketID;
    SessionID         : Integer;
    ParentPlatformID  : Integer;
    TargetPlatformID  : Integer;
    NoCubicle         : Integer;
    WeaponIndex       : Integer;
    SalvoSize         : Integer;
    TargetTrack       : string[10];
    WeaponName        : string[50];
    ButtonLaunch      : Boolean;
    NoTarget          : Boolean;
  end;

  TRecCmdDecoys = record
    pid               : TPacketID;
    SessionID         : Integer;
    PlatformID        : Integer;
    CounterMeasureID  : Integer;
    OrderID           : Integer;
    DecoyInstanceIndex : integer;
  end;

  //CPID_CMD_RECORDTRACK           = CPID_TCP + 73;
  TRecRecordVoice = record
    pid               : TPacketID;
    SessionID         : Integer;
    ControllerID      : string[20];
    ChannelID         : integer;
    ChannelName       : string[20];
    ChannelCode       : string[20];
    ModifStat         : byte;         // 1: Add, 2: Remove
    TimeInterval      : Double;       // In Millisecond
  end;

  //CPID_CMD_SNAPSHOT              = CPID_TCP + 80;
  TRecCommandSnapshot = record
    pid         : TPacketID;
    SessionID   : Integer;
    OrderID     : Byte;
    SnapshotName: string[20];
  end;

  // SD ECM
  TRecECMCommand = record
    pid         : TPacketID;
    SessionID   : Integer;
    OrderID     : Byte;

    Mode          : Byte;     // manual, off, auto
    ManualTgtType : Byte;   // FCR atau missile
    SpotNumber    : Integer;
    Bearing       : Double;

    // id jammer
    JammerObjectID      : Integer;
    JammerObjectOwnerID : integer;

    // untuk event jamming sukses
    JammedObjectType    : byte;    // tipe missile atau FCR
    JammedObjectID      : Integer; // id missile atau FCR
    JammedObjectOwnerID : integer; // id parent FCR
  end;

  // Edit Add Formation - mm
  TRecEditFormation = record
    pid         : TPacketID;
    SessionID   : Integer;

    OrderID     : Byte;
    FormationID : Integer;
    FormationName : string[60];
    FormationLeader : Integer;
    Force : Byte;
    AngelType : Byte;
    DeploymentId : Integer;

    // members
    MemberId : Integer;
    MemberBearing : Double;
    MemberRange : Double;
    MemberAltitude : Double;
  end;

  TRecCommonProperty = packed record
    CommandID     : integer;
    InstanceIndex : Integer;
    ClassProperty : String;
    ClassValType  : String;
    ClassIntVal   : Integer;
    ClassDblVal   : Double;
    ClassBoolVal  : Boolean;
    ClassStrVal   : string[100];
  end;

  TPositionPoint = packed record
    FPosX  : double;
    FPosY  : double;
    FPosZ  : double;
    FSpeed : Double;
    FHeading : Double;
    FGroundSpeed : Double;
    FAltitude : Double;
    FHealth : double;
    FCourse : double;
    FFuelEndurance : TRecFuelEndurance;
    FFuelCapacity : double;
    FFuelRemaining : double;
    FLaunchTime : integer;
    FDormantTime : word;
    FDormant : boolean;
  end;

  TRecSyncPos = record
    InstanceIndexes : array [0..99] of integer;
    PositionPoints  : array [0..99] of TPositionPoint;
  end;

  TRecDetectability = record
    pid : TPacketID;
    SessionID   : Integer;
    PlatformID : Integer;
    DetectType : Integer;
  end;

  //AOPR DATA
  TRec_AOPR_Data_Initialize = record
    PC : TPacketID;
    PlatformID : Integer;
    IDPlatformName : Integer;
    IDPlatformClass : Integer;
    nameClass : array[1..60] of AnsiChar;
    namePlatform : array[1..60] of AnsiChar;
    VBSClassName : array[1..60] of AnsiChar;
    PosX : Double;
    PosY : Double;
    PosZ : Double;
  end;

const
  // farah - environment
    E_Wind_Speed                       = 1;
    E_Wind_Direction                   = 2;
    E_Daytime_Visual_Modifier          = 3;
    E_Nighttime_Visual_Modifier        = 4;
    E_Daytime_Infrared_Modifier        = 5;
    E_Nighttime_Infrared_Modifier      = 6;
    E_Sunrise                          = 7;
    E_Sunset                           = 8;
    E_Period_of_Twilight               = 9;
    E_Rain_Rate                        = 10;
    E_Cloud_Base_Height                = 11;
    E_Cloud_Attenuation                = 12;
    E_Sea_State                        = 13;
    E_Ocean_Current_Speed              = 14;
    E_Ocean_Current_Direction          = 15;
    E_Thermal_Layer_Depth              = 16;
    E_Sound_Velocity_Type              = 17;
    E_Surface_Sound_Speed              = 18;
    E_Layer_Sound_Speed                = 19;
    E_Bottom_Sound_Speed               = 20;
    E_Bottomloss_Coefficient           = 21;
    E_Ave_Ocean_Depth                  = 22;
    E_CZ_Active                        = 23;
    E_Surface_Ducting_Active           = 24;
    E_Upper_Limit_Surface_Duct_Depth   = 25;
    E_Lower_Limit_Surface_Duct_Depth   = 26;
    E_Sub_Ducting_Active               = 27;
    E_Upper_Limit_Sub_Duct_Depth       = 28;
    E_Lower_Limit_Sub_Duct_Depth       = 29;
    E_Shipping_Rate                    = 30;
    E_Shadow_Zone_Trans_Loss           = 31;
    E_Atmospheric_Refract_Modifier     = 32;
    E_Barometric_Pressure              = 33;
    E_Air_Temperature                  = 34;
    E_Surface_Temperature              = 35;
    E_Start_HF_Range_Gap               = 36;
    E_End_HF_Range_Gap                 = 37;
  //----------------------------------------------------------------------------

  {Probability of Hit}
  pohPending  = 1;
  pohNoHit    = 2;
  pohHit      = 3;

//  CPID 30 .. 49 buat GAME UDP;

//  CPID 50 .. 79 buat GAME TCP
  CPID_UDP = 30;
  CPID_TCP = 50;
  //----------------------------------------------------------------------------

  CPID_PLATFORM_MOVE        = CPID_UDP + 1;
  CPID_PLATFORM_LANDDATA    = CPID_UDP + 2;
  CPID_GAMETIME             = CPID_UDP + 3;
  CPID_UDP_GAMECTRL_INFO    = CPID_UDP + 4;
  CPID_UDP_Synch_Obj        = CPID_UDP + 5;
  CPID_Synch_MISSILE_TARGET = CPID_UDP + 6;
  CPID_UDP_REPOSITION       = CPID_UDP + 7;
  CPID_UDP_TRACKNUMBER      = CPID_UDP + 8;
    CORD_ID_REQUEST   = 1;
    CORD_ID_CHANGE    = 2;
  CPID_UDP_HYBRID           = CPID_UDP + 9;
  CPID_UDP_MAX              = CPID_UDP + 10;

  //TRecUDP_Synch_Obj
    //PlatformType : byte;  // platform / vehicle/ missile /
    CPT_PLATFORM_INSTANCE         = 0;
    CPT_PLATFORM_VEHICLE          = 1;
    CPT_PLATFORM_VEHICLE_MEMBER   = 2;

    CPT_PLATFORM_MISSILE          = 3;
    CPT_PLATFORM_TORPEDO          = 4;
    CPT_PLATFORM_SATELITE         = 5;
    CPT_PLATFORM_MOTION           = 6;


    //ObjectType   : byte; // vehicle.radar  / vehicle.gun,  sensor dll
    // PLATFORM VEHICLE MEMBER TYPE
    CV_Visualsensors  = 1;
    CV_Radars         = 2;
    CV_Sonars         = 3;
    CV_EOSensors      = 4;
    CV_ESMSensors     = 5;
    CV_IFFSensors     = 6;
    CV_MADSensors     = 7;
    CV_FCRSensors     = 8;

    CV_Guns           = 10;
    CV_Missiles       = 11;
    CV_Torpedos       = 12;
    CV_Hybrids        = 13;
    CV_Mines          = 14;
    CV_Bombs          = 15;

    CV_Acoustic_Decoys      = 16;
    CV_Air_Bubble_Mount     = 17;
    CV_Chaffs               = 18;
    CV_Chaff_Launchers      = 19;
    CV_Defensive_Jammers    = 20;
    CV_Floating_Decoys      = 21;
    CV_Infrared_Decoys      = 22;
    CV_Jammers              = 23;
    CV_Point_Effects        = 24;
    CV_towed_Jammer_Decoys  = 25;
    CV_Hosted_Platform      = 26;
    CV_Sonobuoy             = 27;

    //SynchType    : word;  // synch gun capacity

    CSO_Number = 1;
    CST_Health_Percent  = 2;
    CST_DormantState    = 3;
    CST_FuelCapacity    = 4;
    CST_FuelRemaining   = 5;


  //============================================================================
  //----------------------------------------------------------------------------
  CPID_CMD_PLATFORM                       = CPID_TCP + 1;
    CORD_ID_MOVE  = 1;
      CORD_TYPE_SPEED     = 1;
      CORD_TYPE_COURSE    = 2;
      CORD_TYPE_ALTITUDE  = 3;

      //circle
      CORD_TYPE_CIRCLE_MODE = 4;
      CORD_TYPE_CIRCLE_CENTER_X = 5;
      CORD_TYPE_CIRCLE_CENTER_Y = 6;
      CORD_TYPE_CIRCLE_RADIUS = 7;
      CORD_TYPE_CIRCLE_BEARING = 8;
      CORD_TYPE_CIRCLE_BEARING_STATE = 9;
      CORD_TYPE_CIRCLE_RANGE = 10;
      CORD_TYPE_CIRCLE_TRACK = 11;

      CORD_TYPE_SHADOW_DISTANCE = 12;
      CORD_TYPE_SHADOW_TRACK    = 13;

	    //nando added
      CORD_TYPE_ZIGZAG_AMPLITUDO = 14;
      CORD_TYPE_ZIGZAG_PERIOD    = 15;

      CORD_TYPE_EVASION_TRACK   = 16;
      CORD_TYPE_OUTRUN_TRACK    = 17;

      //engagement
      CORD_TYPE_ENGAGE_TRACK    = 18;
      CORD_TYPE_ENGAGE_DISTANCE = 19;

      //aldy added Dec 9, 2011
      CORD_TYPE_RTB_BASEVEHICLE = 20;

      //sinuation
      CORD_TYPE_SINUATION_AMPLITUDO = 21;
      CORD_TYPE_SINUATION_PERIOD    = 22;

      //station - bebe
      CORD_TYPE_STATION_MODE = 23;
      CORD_TYPE_STATION_CENTER_X = 24;
      CORD_TYPE_STATION_CENTER_Y = 25;
      CORD_TYPE_STATION_TRACK = 26;
      CORD_TYPE_STATION_BEARING = 27;
      CORD_TYPE_STATION_BEARING_STATE = 28;
      CORD_TYPE_STATION_RANGE = 29;
      CORD_TYPE_STATION_DRIFT = 30;
      //CORD_TYPE_STATION_STOP = 31;

      //formation
      CORD_TYPE_SETFORMATION = 31;

  //----------------------------------------------------------------------------
    CORD_ID_ACTIVATION  = 2;
      //   OrderType =   Init_Guidance;

  //============================================================================
  CPID_CMD_PLATFORM_REPOS                 = CPID_TCP + 2;
    CORD_ID_REPOS  = 1;

  //============================================================================
  CPID_CMD_SENSOR                         = CPID_TCP + 3;
    CSENSOR_TYPE_RADAR = 1;
    CSENSOR_TYPE_SONAR = 2;
    CSENSOR_TYPE_ESM   = 3;
    CSENSOR_TYPE_EO    = 4;
    CSENSOR_TYPE_MAD   = 5;
    CSENSOR_TYPE_IFF   = 6;

//    CORD_ID_ = 1;
    CORD_ID_OperationalStatus = 1;
    CORD_ID_ControlMode       = 2;
    CORD_ID_ControlRangeSonar = 3;

  //============================================================================
  CPID_CMD_LAUNCH_EMBARK                  = CPID_TCP + 4;
    CORD_ID_INITIATE  = 1;
    CORD_ID_LAUNCH    = 2;
    CORD_ID_CANCEL    = 3;

  //============================================================================
  CPID_CMD_SYNCH                          = CPID_TCP + 5;
    CORD_ID_Synch_NextPID = 1;

  //============================================================================
  CPID_CMD_LAUNCH_MISSILE                 = CPID_TCP + 6;
    // Order
    CORD_ID_launch_hybrid     = 1;

  //============================================================================
  CPID_CMD_GUN_FIRE                       = CPID_TCP + 7;
    CORD_ID_assign = 1;
    CORD_ID_break  = 2;
    CORD_ID_fire   = 3;
    CORD_ID_cease  = 4;
	  CORD_ID_control_mode = 5;
    CORD_ID_salvo_mode   = 6;
    CORD_ID_target       = 7;
    CORD_ID_thresh_speed = 8;
    CORD_ID_intercp_range= 9;
    CORD_ID_salvo_size  = 10;
    CORD_ID_fire_result = 11;
    CORD_ID_fire_stop = 12;
    CORD_ID_postNGS   = 13; //mk add
    CORD_ID_chaff_pos = 14;
    CORD_ID_chaff_bloom = 15;
    CORD_ID_chaff_type  = 16;
    CORD_ID_NGSCorrLR = 17;
    CORD_ID_NGSCorrDA = 16;

  //============================================================================
  CPID_CMD_UPDATE_FROM_CLIENT             = CPID_TCP + 8;

  CPID_CMD_GAME_CTRL = CPID_TCP + 9;
    CORD_ID_start       = 1;
    CORD_ID_pause       = 2;
    CORD_ID_game_speed  = 3;

  //============================================================================
  //GAME REQUEST
  CPID_TCP_REQUEST                        = CPID_TCP  + 10;
    REQ_SYNCH_GAMECTRL_INFO      = 2; //CPID_UDP_GAMECTRL_INFO
    REQ_LAST_PLATFORMID_INFO     = 3; //CPID_UDP_GAMECTRL_INFO
    REQ_CUBICLE_ASSIGNMENT       = 4;
    REQ_MISSED_PACKET            = 5;

  //============================================================================
  CPID_CMD_LAUNCH_RUNTIME_PLATFORM        = CPID_TCP + 11;
  CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM    = CPID_TCP + 12;
  CPID_CMD_UPDATE_PLATFORM_PROPERTY       = CPID_TCP + 13;
  CPID_CMD_REMOVE_PLATFORM                = CPID_TCP + 14;
  CPID_CMD_CHANGE_TRACK_NUMBER            = CPID_TCP + 15;
	
  CPID_REMOTE_CMD                  = CPID_TCP  + 17;
    REMOTE_STATE_FALSE             = 0; // connect
    REMOTE_STATE_TRUE              = 1; // disconnect
    REMOTE_STATE_READY             = 3;

// ini beda port..
  CPID_VOIP_PLATFORM_SELECT               = CPID_TCP + 16;
  CPID_CMD_UPDATE_NRP_PROPERTY            = CPID_TCP + 18;
    //Order ID Update NRP
    NRP_ID_TYPE = 0;
    NRP_ID_TRACKDOMAIN = 1;
    NRP_ID_TRACKIDENT = 2;
    NRP_ID_FORCE = 3;
    NRP_ID_PLATFORMTYPE = 4;
    NRP_ID_SYMBOLTYPE = 5;
    NRP_ID_ALL = 6; //untuk update All;
    NRP_ID_POSITION = 7;

  CPID_CMD_PLATFORM_REPAIR                = CPID_TCP + 19;

  CPID_CMD_LAUNCH_CHAFF           = CPID_TCP + 20;
  CPID_CMD_LAUNCHER_CHAFF_STATE   = CPID_TCP + 21;
  CPID_CMD_LAUNCHER_CHAFF_PROPS   = CPID_TCP + 22;
  CPID_CMD_LAUNCH_TORPEDO         = CPID_TCP + 23;
  CPID_GAME_SETTING               = CPID_TCP + 24;
  CPID_CMD_ESM_SET_PROPERTY       = CPID_TCP + 25;
  CPID_PLATFORM_FREEME            = CPID_TCP + 26;

  CPID_CMD_WEAPON_MISSILE         = CPID_TCP + 27;
    CORD_ID_CHANGE_TARGET         = 1;
  CPID_CMD_MERGE_TRACK            = CPID_TCP + 28;
  CPID_CMD_DATALINK               = CPID_TCP + 29;
  CPID_CMD_FIRINGMODE             = CPID_TCP + 30;
  CPID_SYNCH_VEHICLE              = CPID_TCP + 31;
  CPID_SYNCH_MISSILE              = CPID_TCP + 32;
  CPID_SYNCH_RADAR                = CPID_TCP + 33;
  CPID_TORPEDO_PROPERTY           = CPID_TCP + 34; //ham
  CPID_CMD_DATALINK_ADDTRACK      = CPID_TCP + 35;
  CPID_CMD_DATALINK_REMOVETRACKS   = CPID_TCP + 36;

  CPID_CMD_MISSILE                = CPID_TCP + 37;
    CORD_MISS_SEEKER_ON           = 1;

  CPID_CMD_MAPS                   = CPID_TCP + 38;
    CORD_MAPS_NONE                = 1;
    CORD_MAPS_DEPTH               = 2;
    CORD_CHANGE_MAPS              = 3;

  CPID_CMD_GUN_FIRE_STATE         = CPID_TCP + 39;

  CPID_CMD_SET_QUANTITY  = CPID_TCP + 40;
    CORD_ID_QUANTITY  = 1;
      CORD_TYPE_WEAPON          = 1;
      CORD_TYPE_COUNTERMEASURE  = 2;
      CORD_TYPE_EMBARK          = 3;
      CORD_TYPE_WEAPON_LAUNCHER = 4;
    CORD_ID_READYING_TIME = 2;

  CPID_CMD_ASSIGN_FIRECONTROL    = CPID_TCP + 41;
    CORD_FC_ASSIGN  = 1;
    CORD_FC_BREAK = 2;
    CORD_FC_BREAKALL = 3;

  CPID_CMD_ENGAGEMENTMODE   = CPID_TCP + 42;
  CPID_SincWaypoint         = CPID_TCP + 43;
  CPID_SincRBLW             = CPID_TCP + 44;
  CPID_SincBOLW             = CPID_TCP + 45;

  CPID_CMD_EMBARK_LAND      = CPID_TCP + 46;
    CORD_SET_READYING = 1;
    CORD_FINISH_READYING = 2;

  CPID_CMD_ENVI             = CPID_TCP + 47;

  CPID_CMD_EMCON_MODE       = CPID_TCP + 48;
  CPID_CMD_ENGAGE_TRACK     = CPID_TCP + 49;

  CPID_CMD_OVERLAYTEMPLATE  = CPID_TCP + 50;

  CPID_CMD_LAUNCH_BUBBLE    = CPID_TCP + 51;
  CPID_CMD_LAUNCHER_BUBBLE_STATE   = CPID_TCP + 52;
  CPID_CMD_LAUNCHER_BUBBLE_PROPS   = CPID_TCP + 53;

  CPID_CMD_LAUNCH_MINE      	 = CPID_TCP + 54;
  CPID_CMD_LAUNCH_BOMB      	 = CPID_TCP + 55;
  CPID_CMD_LAUNCH_MINES    		 = CPID_TCP + 56;
  CPID_CMD_SYNC_HIT_MINE_BOMB    = CPID_TCP + 57;
  CPID_CMD_Missile_Envi     	 = CPID_TCP + 58;
  CPID_CMD_PLATFORM_HIT_PLATFORM = CPID_TCP + 59;
  CPID_CMD_SET_STATUS            = CPID_TCP + 60;
  CPID_CMD_WEAPON_OUT         	 = CPID_TCP + 61; //ham 04052012
  CPID_CMD_SET_LAUNCHERQTY       = CPID_TCP + 62;
  CPID_CMD_MODIF_COMM            = CPID_TCP + 63;
  CPID_CMD_PLATFORM_HANCUR       = CPID_TCP + 64;
  CPID_CMD_SENSOR_IFF            = CPID_TCP + 65;
  CPID_CMD_GAMBAR_OVERLAY        = CPID_TCP + 66;
  CPID_SYNCH_GUNVEHICLE          = CPID_TCP + 67;
  CPID_CMD_DYNAMIC_TRACK         = CPID_TCP + 68;

  CPID_CMD_RADAR_NOISE_JAMMER    = CPID_TCP + 69;
    CORD_ID_RN_SETJAMSTATUS    = 1;
    CORD_ID_RN_SETJAMMODE      = 2;
    CORD_ID_RN_SETJAMSPOTNUMB  = 3;
    CORD_ID_RN_SETJAMBEARING   = 4;
    CORD_ID_RN_SETJAMCENTFREQ  = 5;
    CORD_ID_RN_SETJAMBANDWIDTH = 6;
    CORD_ID_RN_SETJAMTRACK     = 7;
    CORD_ID_RN_JAMSUCCESS      = 8;
    CORD_ID_RN_JAMFAILED       = 9;

  CPID_CMD_TARGET_IFF            = CPID_TCP + 70;
  CPID_CMD_VECTAC                = CPID_TCP + 71;
    CPID_CMD_VECTAC_TRACK        = 0;
    CPID_CMD_VECTAC_WPN_CARRIER  = 1;
    CPID_CMD_VECTAC_SPEED_CHANGE = 2;
    CPID_CMD_VECTAC_DROP_CHANGE  = 3;
    CPID_CMD_VECTAC_WEAPON       = 4;
    CPID_CMD_VECTAC_PLAN         = 5;
    CPID_CMD_VECTAC_CANCEL       = 6;
    CPID_CMD_VECTAC_LAUNCH       = 7;

  CPID_CMD_OVERLAYDYNAMICSHAPE   = CPID_TCP + 72;
  CPID_CMD_DELETE_OVERLAY        = CPID_TCP + 73; {Prince : sdh g ke pake}
  CPID_CMD_PLAT_GROUP_CHANGE     = CPID_TCP + 74;
  CPID_CMD_TORPEDO_SYNC          = CPID_TCP + 75; //ham
  CPID_CMD_SONAR_DEPLOY          = CPID_TCP + 76;
  CPID_CMD_LAUNCH_SONOBUOY       = CPID_TCP + 77;
  CPID_CMD_RECORDTRACK           = CPID_TCP + 78;
  CPID_CMD_TRANSFER_SONOBUOY     = CPID_TCP + 79;

  CPID_CMD_SNAPSHOT              = CPID_TCP + 80;
    CPID_CMD_SNAPSHOT_SAVE       = 0;
    CPID_CMD_SNAPSHOT_SUCCESS    = 1;
    CPID_CMD_SNAPSHOT_FAIL       = 2;
    CPID_CMD_SNAPSHOT_EXIST      = 3;

  CPID_CMD_SYNC_ESM_VARIANCE     = CPID_TCP + 81;
  CPID_CMD_DATALINK_REMOVETRACK  = CPID_TCP + 82;
  CPID_CMD_UPDATE_SONAR          = CPID_TCP + 83;
  CPID_CMD_CHANGE_SYSTEMSTATE    = CPID_TCP + 84;
  CPID_CMD_UPDATE_ACTUAL_CABLE   = CPID_TCP + 85;

  CPID_CMD_DECOYS                = CPID_TCP + 86;
    CORD_ID_Deploy_Float  = 1;
    CORD_ID_Deploy_IR     = 2;

  CPID_SYNC_TARGET               = CPID_TCP + 87;

  CPID_CMD_ECM                   = CPID_TCP + 88;
    CORD_ID_SD_SETMODE          = 1;
    CORD_ID_SD_SETMANMODE       = 2;
    CORD_ID_SD_SETSPOTNUMBER    = 3;
    CORD_ID_SD_SETBEARING       = 4;
    CORD_ID_SD_EVTJAMSUCCESS    = 5;
    CORD_ID_SD_SETTRACK         = 6;

  CPID_REC_MESSAGE               = CPID_TCP + 89;
  CPID_TORPEDO_SYNC_PANEL_WEAPON = CPID_TCP + 90;
  CPID_BOMB_SYNC_PANEL_WEAPON    = CPID_TCP + 91;
  CPID_BOMB_PROPERTY             = CPID_TCP + 92;
  CPID_MINE_PROPERTY             = CPID_TCP + 93;
  CPID_CHAFF_PROPERTY            = CPID_TCP + 94;
  CPID_LASTUPDATE_PLATFORM       = CPID_TCP + 95;
  CPID_IFF_MODE_SEARCH           = CPID_TCP + 96;

  CPID_EDIT_FORMATION            = CPID_TCP + 97;
    CORD_ID_AddForm       = 1;
    CORD_ID_EditForm      = 2;
    CORD_ID_RemoveForm    = 3;
    CORD_ID_AddMember     = 4;
    CORD_ID_EditMember    = 5;
    CORD_ID_RemoveMember  = 6;

  CPID_EDIT_DETECTABILITY        = CPID_TCP + 98;
  CPID_CMD_OVERLAYSTATICSHAPE    = CPID_TCP + 99;


  CPID_GUN_SPLASH                = CPID_TCP + 100;
  CPID_PLATFORM_MOVE_NFS         = CPID_TCP + 101;
  CPID_CMD_VBS_Direction         = CPID_TCP + 102;

  CPID_REC_AOPR_DATA             = CPID_TCP + 103;
  CPID_SYNCH_SCENARIO            = CPID_TCP + 104;
  CPID_CMD_SYNC_WAYPOINTDATA     = CPID_TCP + 105;
    CORD_ID_WAYPOINT_START = 1;
    CORD_ID_WAYPOINT_END   = 2;

  CPID_TCP_MAX              	   = CPID_TCP + 106;

  CPID_RecSendChannel       = 101;
  CPID_RecSendJamming       = 103;
  CPID_RecSendControllerAv  = 104;
  CPID_RecSendControllerMp  = 105;
  CPID_RecSendControllerDef = 106;
  CPID_Jamming              = 200;

  CPID_OBJECTSTATE = 500;
    CORD_ID_UPDATESTATE = 1;
    CORD_ID_CREATE      = 2;
    CORD_ID_REMOVE      = 3;
    CORD_ID_SYNC_POS    = 4;

  CPID_SYNC_OBJECT  = 501;


  // Game setting index, sesuai dengan selected index tree di tote setting
  GSID_AUTOREMOVEPF         = 1;
  GSID_PROBOFKILL           = 2;
  GSID_RPTAIRBUBBLERMV      = 3;
  GSID_RPTCHAFFRMV          = 4;
  GSID_RPTSONOBUOYRMV       = 5;
  GSID_WRECKTIME            = 6;
  GSID_AIRCRAFTCOLLTERRAIN  = 7;
  GSID_COASTLINECOLL        = 8;
  GSID_GuidanceCommand      = 9;
  GSID_SimplifiedSensor     = 10;
  GSID_CanLaunchAircraft    = 11;
  GSID_LaunchRestrictions   = 12;
  GSID_TidalStreamEffects   = 13;
  GSID_WindEffects          = 14;
  GSID_RecordReplayInterf   = 15;
  GSID_ControllerSoundEff   = 16;
  GSID_InterfSoundEffects   = 17;
  GSID_AutomaticSensorId    = 18;
  GSID_ChaffAttenuation     = 19;
  GSID_AutomaticSonarTarget = 20;
  GSID_EODatalink_1         = 21;
  GSID_ESMDatalink_1        = 22;
  GSID_IFFDatalink_1        = 23;
  GSID_RadarDatalink_1      = 24;
  GSID_SonarDatalink_1      = 25;
  GSID_EODatalink_2         = 26;
  GSID_ESMDatalink_2        = 27;
  GSID_IFFDatalink_2        = 28;
  GSID_RadarDatalink_2      = 29;
  GSID_SonarDatalink_2      = 30;
  GSID_EODatalink_3         = 31;
  GSID_ESMDatalink_3        = 32;
  GSID_IFFDatalink_3        = 33;
  GSID_RadarDatalink_3      = 34;
  GSID_SonarDatalink_3      = 35;
  GSID_IFFFilter            = 36;
  GSID_VisualVisDetectF     = 37;
  GSID_LandmassOcculting    = 38;
  GSID_ProcessSensorBZ      = 39;
  GSID_FLASHTransmission    = 40;
  GSID_IMMEDTransmission    = 41;
  GSID_PRIORITYTransmission = 42;
  GSID_RoutineTransmission  = 43;
  GSID_CubicalGroupClutter  = 44;
  GSID_AcBearingDispLost    = 45;
  GSID_AirDispLost          = 46;
  GSID_ESMBearingDispLost   = 47;
  GSID_SubsurfaceDispLost   = 48;
  GSID_SurfaceLandDispLost  = 49;
  GSID_AcBearingDropTrack   = 50;
  GSID_AirDropTrack         = 51;
  GSID_ESMBearingDropTrack  = 52;
  GSID_SubsurfaceDropTrack  = 53;
  GSID_SurfaceLandDropTrack = 54;
  GSID_AcTorpedoDecoySetup  = 55;
  GSID_AntiSubsurfaceWarEng = 56;
  GSID_AntiSurfaceWarEng    = 57;
  GSID_ProcessWeaponBZ      = 58;

  GSINFO : array [GSID_AUTOREMOVEPF..GSID_ProcessWeaponBZ] of string =
    ( 'Automatically remove platform leaving game area','Probability of kill',
      'Report air bubble removal events','Report chaff removal events',
      'Report sonobuoy removal events', 'Time to remove surface wreck',
      'Aircraft collision with terrain', 'Coastline collisions',
      'Guidance  Command' , 'Simplified Sensor', 'Student can launch fixed wing aircraft',
      'Student Launch/Land restrictions','Tidal stream effects on ship',
      'Wind effects on aircraft', 'Record/replay interference - Controller',
      'Sound effects - Controller', 'Sound effects - Interference',
      'Automatic sensor identity assesement','Chaff attenuation on radar',
      'Automatic sonar target domain assignment',
      'EO - Datalink 1', 'ESM - Datalink 1','IFF - Datalink 1',
      'Radar - Datalink 1', 'Sonar - Datalink 1',
      'EO - Datalink 2', 'ESM - Datalink 2','IFF - Datalink 2',
      'Radar - Datalink 2', 'Sonar - Datalink 2',
      'EO - Datalink 3', 'ESM - Datalink 3','IFF - Datalink 3',
      'Radar - Datalink 3', 'Sonar - Datalink 3',
      'IFF filter', 'Visual visibility detection factor',
      'Landmass occulting', 'Process sensor blind zones',
      'FLASH - Transmission', 'IMMED - Transmission', 'PRIORITY - Transmission',
      'Routine - Transmission', 'Cubical group clutter reduction minimum display scale',
      'Acoustic bearing Display Lost Contact', 'Air Display Lost Contact',
      'ESM Bearing Display Lost Contact', 'Subsurface Display Lost Contact',
      'Surface/Land Display Lost Contact', 'Acoustic bearing Drop Track',
      'Air Drop Track', 'ESM Bearing Drop Track', 'Subsurface Drop Track',
      'Surface/Land Drop Track','Acoustic torpedo decoy setup',
      'Anti-subsurface warfare engagement', 'Anti-surface warfare engagement',
      'Process weapon blind zones'
    );

  function getPacketIDname(const cpid: integer): string;

  function getRecString(const r: TRecCmd_Platform): string; overload;
  function getRecString(const r: TRecTCP_Request): string; overload;

  function getRecString(const r: TRecUDP_PlatformMovement): string; overload;

  function getRecString(const r: TRecCmd_GameCtrl): string; overload;


  //Communication

  implementation

uses
  SysUtils;

function getPacketIDname(const cpid: integer): string;
const
  CS_PIDUDP_name : array [CPID_PLATFORM_MOVE .. CPID_Synch_MISSILE_TARGET] of string
  = ( 'CPID_UDP_PLATFORM_MOVE',
      'CPID_UDP_PLATFORM_LANDDATA',
      'CPID_UDP_GAMETIME',
      'CPID_UDP_GAMECTRL_INFO',
      'CPID_UDP_Synch_Obj',
      'CPID_UDP_Synch_MISSILE'
  );


 CS_PIDTCP_name : array [CPID_CMD_PLATFORM ..
   CPID_TCP_MAX - 1] of string
  = (
  'CPID_CMD_PLATFORM                ',    //  + 1
  'CPID_CMD_PLATFORM_REPOS          ',    //  + 2
  'CPID_CMD_SENSOR                  ',    //  + 3
  'CPID_CMD_LAUNCH_EMBARK           ',    //  + 4
  'CPID_CMD_SYNCH                   ',    //  + 5
  'CPID_CMD_LAUNCH_MISSILE          ',    //  + 6
  'CPID_CMD_GUN_FIRE                ',    //  + 7
  'CPID_CMD_UPDATE_FROM_CLIENT      ',    //  + 8
  'CPID_CMD_GAME_CTRL               ',    //  + 9
  'CPID_TCP_REQUEST                 ',    // + 10
  'CPID_CMD_LAUNCH_RUNTIME_PLATFORM ',    // + 11
  'CPID_CMD_LAUNCH_NON_RUNTIME_PLATFORM', // + 12
  'CPID_CMD_UPDATE_PLATFORM_PROPERTY',    // + 13
  'CPID_CMD_REMOVE_PLATFORM         ',    // + 14
  'CPID_CMD_CHANGE_TRACK_NUMBER      ',   // + 15
  'CPID_VOIP_PLATFORM_SELECT         ',   // + 16
  'CPID_REMOTE_CMD                   ',   // + 17
  'CPID_CMD_UPDATE_NRP_PROPERTY      ',   // + 18
  'CPID_CMD_PLATFORM_REPAIR          ',   // + 19

  //rizky added
  'CPID_CMD_LAUNCH_CHAFF             ',   // + 20;
  'CPID_CMD_LAUNCHER_CHAFF_STATE     ',   // + 21;
  'CPID_CMD_LAUNCHER_CHAFF_PROPS     ',   // + 22;
  'CPID_CMD_LAUNCH_TORPEDO           ',   // + 23;
  'CPID_GAME_SETTING                 ',   // + 24;
  'CPID_CMD_ESM_SET_PROPERTY         ',   // + 25
  'CPID_PLATFORM_FREEME              ',   // + 26
  'CPID_CMD_WEAPON_MISSILE           ',   // + 27
  'CPID_CMD_MERGE_TRACK              ',   // + 28
  'CPID_CMD_DATALINK                 ',   // + 29
  'CPID_CMD_FIRINGMODE               ',   // + 30
  'CPID_SYNCH_VEHICLE                ',   // + 31;
  'CPID_SYNCH_MISSILE                ',   // + 32;
  'CPID_SYNCH_RADAR                  ',   // + 33;
  'CPID_TORPEDO_PROPERTY             ',   // + 34;
  'CPID_CMD_DATALINK_ADDTRACK        ',   // + 35;
  'CPID_CMD_DATALINK_REMOVETRACK     ',   // + 36;
  'CPID_CMD_MISSILE                  ',   // + 37;
  'CPID_CMD_MAPS                     ',   // + 38;
  'CPID_CMD_GUN_FIRE                 ',   // + 39;
  'CPID_CMD_SET_QUANTITY             ',   // + 40;
  'CPID_CMD_ASSIGN_FIRECONTROL       ',   // + 41;
  
  //nando Added
  'CPID_CMD_ENGAGEMENTMODE           ',   // + 42;
  'CPID_SincWaypoint                 ',   // + 43;
  'CPID_SincRBLW                     ',   // + 44;
  'CPID_SincBOLW                     ',   // + 45;
  'CPID_CMD_EMBARK_LAND              ',   // + 46;
  'CPID_CMD_ENVI                     ',   // + 47;
  'CPID_CMD_EMCON_MODE               ',   // + 48;
  'CPID_CMD_ENGAGE_TRACK             ',   // + 49;
  'CPID_CMD_OVERLAYTEMPLATE          ',   // + 50;
  'CPID_CMD_LAUNCH_BUBBLE            ',   // + 51;
  'CPID_CMD_LAUNCHER_BUBBLE_STATE    ',   // + 52;
  'CPID_CMD_LAUNCHER_BUBBLE_PROPS    ',   // + 53;
  'CPID_CMD_LAUNCH_MINE              ',   // + 54;
  'CPID_CMD_LAUNCH_BOMB              ',   // + 55;
  'CPID_CMD_LAUNCH_MINES             ',   // + 56;
  'CPID_CMD_SYNC_HIT_MINE_BOMB       ',   // + 57;
  'CPID_CMD_Missile_Envi     		     ',	  // + 58;
  //added by choco
  'CPID_CMD_PLATFORM_HIT_PLATFORM    ',   // + 59;
  //ham 04052012
  'CPID_CMD_SET_STATUS               ',   // + 60;
  'CPID_CMD_WEAPON_OUT               ',   // + 61;
  'CPID_CMD_SET_LAUNCHERQTY          ',   // + 62;
  'CPID_CMD_MODIF_COMM               ',   // + 63;
  'CPID_CMD_PLATFORM_HANCUR          ',   // + 64;
  'CPID_CMD_SENSOR_IFF               ',   // + 65;
  'CPID_CMD_GAMBAR_OVERLAY           ',   // + 66;
  'CPID_SYNCH_GUNVEHICLE             ',   // + 67;
  'CPID_CMD_DYNAMIC_TRACK            ',   // + 68;
  'CPID_CMD_RADAR_NOISE_JAMMER       ',   // + 69;
  'CPID_CMD_TARGET_IFF               ',   // + 70;
  'CPID_CMD_VECTAC                   ',   // + 71;
  'CPID_CMD_DYNAMIC                  ',   // + 72;
  'CPID_CMD_DELETE_OVERLAY           ',   // + 73;
  'CPID_CMD_PLAT_GROUP_CHANGE        ',   // + 74;
  'CPID_CMD_APG                      ',   // + 75;
  'CPID_CMD_SONAR_DEPLOY             ',   // + 76;
  'CPID_CMD_LAUNCH_SONOBUOY          ',   // + 77;
  'CPID_CMD_RECORDTRACK              ',   // + 78;
  'CPID_CMD_TRANSFER_SONOBUOY        ',   // + 79;
  'CPID_CMD_SNAPSHOT                 ',   // + 80;
  'CPID_CMD_SYNC_ESM_VARIANCE        ',   // + 81;
  'CPID_CMD_DATALINK_REMOVETRACK     ',   // + 82;
  'CPID_CMD_UPDATE_SONAR             ',   // + 83;
  'CPID_CMD_CHANGE_SYSTEMSTATE       ',   // + 84;
  'CPID_CMD_UPDATE_ACTUAL_CABLE      ',   // + 85;
  'CPID_CMD_DECOYS                   ',   // + 86;
  'CPID_SYNC_TARGET                  ',   // + 87;
  'CPID_CMD_ECM                      ',   // + 88;
  'CPID_REC_MESSAGE                  ',   // + 89;
  'CPID_TORPEDO_SYNC_PANEL_WEAPON    ',   // + 90;
  'CPID_BOMB_SYNC_PANEL_WEAPON       ',   // + 91;
  'CPID_BOMB_PROPERTY                ',   // + 92;
  'CPID_MINE_PROPERTY                ',   // + 93;
  'CPID_CHAFF_PROPERTY               ',   // + 94;
  'CPID_LASTUPDATE_PLATFORM          ',   // + 95;
  'CPID_IFF_MODE_SEARCH              ',   // + 96;
  'CPID_EDIT_FORMATION               ',   // + 97;
  'CPID_EDIT_DETECTABILITY           ',    // + 98;
  'CPID_GUN_SPLASH                   ',    // + 18
  'CPID_PLATFORM_MOVE_NFS            ',    // + 99
  'CPID_CMD_VBS_Direction            ',   //  + 100
  'CPID_REC_AOPR_DATA                ',   // + 101
  'CPID_SYNCH_SCENARIO               ',    // + 102
  'CPID_CMD_SYNC_WAYPOINTDATA        ',    // + 105
  'CPID_CMD_OVERLAYSTATICSHAPE       '    // + 99;

);


begin
  if (cpid > CPID_TCP) and (cpid < CPID_TCP_MAX) then
    result := CS_PIDTCP_name[cpid]
  else
  if (cpid > CPID_UDP) and (cpid < CPID_UDP_MAX) then
    result := CS_PIDUDP_name[cpid]
  else
    result := 'UNDEFINED (' + IntToStr(cpID) + ')';
end;

function getRecString(const r: TRecCmd_Platform): string;
begin
  result :=  IntToStr(r.PlatfomID);
  case r.OrderID of
    CORD_ID_MOVE         : begin
      result := result + ' Move ';
      case r.OrderType of
        CORD_TYPE_SPEED     : result := result + ' Speed  ';
        CORD_TYPE_COURSE    : result := result + ' Course ';
        CORD_TYPE_ALTITUDE  : result := result + ' Height ';
      end;
      result :=  result + FloatToStr(r.OrderParam);

    end;
    CORD_ID_ACTIVATION  : begin
      result := result + ' Activation ';
      case r.OrderType of
        0  : result := result + ' None                      ';
        1  : result := result + ' StraightLine              ';
        2  : result := result + ' Helm                      ';
        3  : result := result + ' Circle                    ';
//        4  : result := result + ' Circle On Position        ';
        4  : result := result + ' Station                   ';
//        5  : result := result + ' Station Keeping On Position  ';
        5  : result := result + ' Zigzag                    ';
        6  : result := result + ' Sinuation                 ';
        7  : result := result + ' Formation                 ';
        8 : result := result + ' Evasion                   ';
        9 : result := result + ' Waypoint                  ';
        10 : result := result + ' Outrun                    ';
        11 : result := result + ' Engagement                ';
        12 : result := result + ' Shadow                    ';
        13 : result := result + ' ReturnToBase              ';
        14 : result := result + '                           ';
      end;
    end;
  end;
 //----------------------------------------------------------------------------
end;

function getRecString(const r: TRecTCP_Request): string;
begin
  case r.reqID of
    REQ_SYNCH_GAMECTRL_INFO:
      result := ' Synch Game Ctrl Info';
    REQ_LAST_PLATFORMID_INFO:
     result := ' Synch Last Platform ID';
    REQ_CUBICLE_ASSIGNMENT:
      result := ' Cubicle Assignment';
    REQ_MISSED_PACKET:
      result := ' Synch Missed Packet';
  end;

end;

function getRecString(const r: TRecUDP_PlatformMovement): string;
begin
  result :=  IntToStr(r.PlatformID) + ' ' +
  FormatFloat('000.000000', r.X) + ' ' +
  FormatFloat('00.000000', r.Y) + ' ' +
  FormatFloat('000.0', r.Course) + ' ' +
  FormatFloat('000.0', r.Speed) + ' ';
end;

function getRecString(const r: TRecCmd_GameCtrl): string;
begin
  case r.GameCtrl of
    CORD_ID_start       : begin
      Result :=' Game Start';
    end;
    CORD_ID_pause       : begin
      Result :=' Game Pause';
    end;
    CORD_ID_game_speed  : begin;
      Result :=' Game speed: ' + IntToStr(Round(r.GameSpeed));
    end;
  end;


end;


end.
