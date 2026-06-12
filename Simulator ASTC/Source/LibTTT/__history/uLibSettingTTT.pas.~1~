unit uLibSettingTTT;


interface

uses
  Graphics;

const
  // aplication.ini setting
  c_net = 'network';
//    c_NET_PORT  = 32000;
    c_NET_SESSIONPORT     = 32001;      // session server tcp listen. GC connect to.
    c_NET_DBEDITPORT      = 32002;
    c_NET_GAMEPORT        = 32003;      // udp broadcasst port.
    c_NET_COMMANDPORT     = 32004;      // game server tcp listen. game client connect.

    c_NET_VOIP_CTRL_PORT  = 32005;
    c_NET_VoipCtrlAddress = '192.168.1.11';

    c_NET_MAPSTUBPORT     = 32006;      // mapstub
    c_NET_MAPSTUBGCPORT   = 32008;      // GC mapstub
    c_NET_MAPSTUBADDR     = '192.168.1.11';

  c_NET_BC_ADDRESS = '192.168.1.255';

  c_NET_SVRIP = '192.168.1.11';

  c_map = 'map';
    C_MaxZoomIndex = 12;
    C_MinZoomIndex = 0;

 c_dBase = 'database';
  c_defaultDBUser      = 'sa';
  c_defaultDBpassword  = 'sa';
  c_defaultDBProto     = 'mssql';

 c_symbol = 'symbol';

    APP_REMOTE_BAT    = 'tttRemote.bat';

type
  //------------------------------------------------------------------------------
  // load from main setting file.
  //------------------------------------------------------------------------------
  TNetSetting = record
    SessionPort     : Word;     // TCP sessionPort Session Server Listen. GC Connect
    DBEditPort      : Word;
    CommandPort     : Word;     // TCP GameServer Listen.
    GamePort        : Word;     // UDP GameServer BC
    GameAddress     : string;   // UDP Broadcast Address.
    VoipCtrlPort    : Word;     // gameClient listen for archos.
    VoipCtrlAddress : string;   // konsole ip
    AutoStart       : Boolean;
    MapStubPort     : Word;
    MapStubGCPort   : Word;
    MapStubAddr     : string;
  end;

  TNetServerSetting = record
    SendInterval: Integer;
  end;

  TNetClientSetting = record
    ServerIP: string;
  end;

  //------------------------------------------------------------------------------
  TMapSetting = record
    MapPath,
    MapGeoset: string;
    MapDataGeoset: string;

    MapENCPath: string;

    OverlayPath : string;
    PatternPath : string;

    MapZoom: integer;
    mX, mY: double;
    Colorbg : TColor;
    FullScreen: boolean;
  end;

  //----------------------------------------------------------------------------
  TRecPlayMode   = record
    GameType      : byte ;
    RecFileName   : string;
  end;
  //----------------------------------------------------------------------------
  TGameDataSetting = record
    DataPath: string;
    ScenarioID : Integer;
    SnapshotName : string ;
    RootRecordPath : string;
    GamePlayMode : TRecPlayMode ;
    OwnShipPlatfomID: Integer;
    GroupSetting: string;
    GameSessionID : Integer;
    RemotePort : integer ;
    RemoteScreen : integer ;
    ReplayScreen : integer;
    TacticalScreen : Integer;
    ToteScreen : Integer;
    DemoMode : Boolean;
  end;
  //----------------------------------------------------------------------------

  TDBaseSetting  = record
    dbServer,
    dbProto,
    dbName,
    dbUser,
    dbPass: string
  end;

  TSymbolSetting = record
    ImgPath: string;
    DefaultSymbol: string;
    MissileSeekerVisible : Boolean;
  end;

  TApplicationSetting = record
    GameServerName  : string;
    GameClientName  : string;
    DBEditorName    : string;
    MapSynchName    : string;
    RemoteServerName: string;
    RemoteClientName: string;
    GameReplayName  : string;
    MapStubName     : string;
  end;

  TCubicleAssignSetting = record
    GroupIDs : array of Integer;
  end;

  function getFileSetting: string;

  function LoadFF_NetSetting(const fName: string; var nSet: TNetSetting): boolean;
  function LoadFF_NetServerSetting(const fName: string; var nSet: TNetServerSetting): boolean;
  function LoadFF_NetClientSetting(const fName: string; var nSet: TNetClientSetting): boolean;
  procedure SaveFF_NetClientSetting(const fName: string; var mSet: TNetClientSetting);
  procedure SaveFF_NetSetting(const fName: string; var mSet: TNetSetting);
  //------------------------------------------------------------------------------

  function LoadFF_MapSetting(const fName: string; var mSet: TMapSetting): boolean;
  procedure SaveFF_MapSetting(const fName: string; var mSet: TMapSetting);

  //------------------------------------------------------------------------------
  function LoadFF_GameSetting(const fName: string; var gdSet: TGameDataSetting): boolean;
  procedure SaveFF_GameSetting(const fName: string; var gdSet: TGameDataSetting);


  function LoadFF_dBaseSetting(const fName: string; var dbSet: TDBaseSetting): boolean;
  procedure SaveFF_dBaseSetting(const fName: string; var dbSet: TDBaseSetting);

  function LoadFF_SymbolSetting(const fName: string; var imgSet: TSymbolSetting): boolean;

  function LoadFF_AppSetting(const fName: string; var appSett: TApplicationSetting): boolean;

  procedure LoadFF_CubicalAssignSetting(const fName: string; var caSett: TCubicleAssignSetting);
  procedure SaveFF_CubicalAssignSetting(const fName: string; var caSett: TCubicleAssignSetting);


var
  {global var}
  //loaded setting  FROM FILE

  vSettingFile: string;

  vNetSetting         : TNetSetting;
    vNetServerSetting : TNetServerSetting;
    vNetClientSetting : TNetClientSetting;

  vMapSetting         : TMapSetting;
  vGameDataSetting    : TGameDataSetting;
  vDBSetting          : TDBaseSetting;
  vSymbolSetting      : TSymbolSetting;

  vAppSetting         : TApplicationSetting;

  vCubicalAssignSetting : TCubicleAssignSetting;


implementation

uses
  Classes, IniFiles, SysUtils, uIniFilesProcs, uCodecBase64;

const
   c_gdata = 'gamedata';
   c_mdata = 'map';

//==============================================================================
function getFileSetting: string;
begin
//  result := ChangeFileExt(ParamStr(0), '.ini');
  result := ExtractFilePath(ParamStr(0)) + 'tttsetting.ini';
end;
//==============================================================================

function LoadFF_NetSetting(const fName: string; var nSet: TNetSetting): boolean;
var
  IniF: TIniFile;
  s: string;
begin
  s := ExtractFilePath(ParamStr(0));
  IniF := TIniFile.Create(fName);

  with nSet do begin
//    BasePort  := Abs(INIFReadInteger(inif, c_net, 'baseport',  c_NET_PORT));
    SessionPort   := Abs(INIFReadInteger(inif, c_net, 'sessionport',  c_NET_SESSIONPORT));
    DBEditPort    := Abs(INIFReadInteger(inif, c_net, 'dbeditport',   c_NET_DBEDITPORT));
    CommandPort   := Abs(INIFReadInteger(inif, c_net, 'commandport',  c_NET_COMMANDPORT));

    GamePort      := Abs(INIFReadInteger(inif, c_net, 'gameport',     c_NET_GAMEPORT));
    GameAddress   := INIFReadString(inif, c_net,      'gameaddress',  c_NET_BC_ADDRESS);

    VoipCtrlPort    := Abs(INIFReadInteger(inif, c_net, 'voipctrlport', c_NET_VOIP_CTRL_PORT));
    VoipCtrlAddress := INIFReadString(inif, c_net, 'voipctrladdress', c_NET_VoipCtrlAddress);

    AutoStart     := INIFReadBool(inif, c_net,       'autostart', true);

    MapStubPort    := Abs(INIFReadInteger(inif, c_net, 'mapstubport', c_NET_MAPSTUBPORT));
    MapStubGCPort  := Abs(INIFReadInteger(inif, c_net, 'mapstubGCport', c_NET_MAPSTUBGCPORT));
    MapStubAddr    := INIFReadString(inif, c_net, 'mapstubaddress', c_NET_MAPSTUBADDR);
  end;

  Inif.Free;

  result := true;
end;

function LoadFF_NetServerSetting(const fName: string; var nSet: TNetServerSetting): boolean;
var
  IniF: TIniFile;
  s: string;
begin
  s := ExtractFilePath(ParamStr(0));
  IniF := TIniFile.Create(fName);

  with nSet do begin
    SendInterval :=  Abs(INIFReadInteger(inif, c_net, 'sendinterval', 4));
  end;

  Inif.Free;

  result := true;
end;

function LoadFF_NetClientSetting(const fName: string; var nSet: TNetClientSetting): boolean;
var
  IniF: TIniFile;
  s: string;
begin
  s := ExtractFilePath(ParamStr(0));
  IniF := TIniFile.Create(fName);

  with nSet do begin
    ServerIP  := INIFReadString(inif, c_net, 'serverip',  c_NET_SVRIP);
  end;

  Inif.Free;

  result := true;
end;

procedure SaveFF_NetClientSetting(const fName: string; var mSet: TNetClientSetting);
var  iniF: TIniFile;
begin
  IniF := TIniFile.Create(fName);

  with iniF, mSet do begin

    WriteString(c_net, 'serverip', mSet.ServerIP);
  end;
  inif.Free;
end;

procedure SaveFF_NetSetting(const fName: string; var mSet: TNetSetting);
var  iniF: TIniFile;
begin
  IniF := TIniFile.Create(fName);

  with iniF, mSet do begin

    WriteString(c_net, 'mapstubaddress', mSet.MapStubAddr);
  end;
  inif.Free;
end;
//==============================================================================

procedure SaveFF_MapSetting(const fName: string; var mSet: TMapSetting);
var  iniF: TIniFile;
begin
  IniF := TIniFile.Create(fName);

  with iniF, mSet do begin

    WriteString(c_mdata, 'mapdata', MapPath + '\mapdata\mapdata.gst');
    WriteString (c_mdata,  'mapencpath',  MapPath + '\mapsea');
    WriteString(c_mdata, 'mappath' ,  MapPath + '\game_area');
    WriteString(c_mdata, 'patternpath' ,   MapPath + '\pattern');
    WriteString(c_mdata, 'overlaypath',   MapPath + '\overlay');
  end;
  inif.Free;
end;

function LoadFF_MapSetting(const fName: string; var mSet: TMapSetting): boolean;
var IniF: TIniFile;
    s: string;
begin
  IniF := TIniFile.Create(fName);

  s := ExtractFilePath(ParamStr(0));
  with mSet do begin
    MapPath := IncludeTrailingBackslash(
      IniFReadstring(inif, c_map, 'mappath', 'M:\game_area'));
//      s + IniFReadstring(inif, c_map, 'mappath', 'mapsea'));

    MapENCPath:= IncludeTrailingBackslash(
      IniFReadstring(inif, c_map, 'mapencpath', 'M:\mapsea'));

    MapGeoset     := IniFReadstring(inif, c_map, 'defmap', 'Indonesia.gst');

    MapDataGeoset  := IniFReadstring(inif, c_map, 'mapdata',
      'M:\map\mapdata\mapdata.gst');

//    MapDataGeoset  := IniFReadstring(inif, c_map, 'mapdata',
//      'M:\maps\mapdata\mapdata.gst');

    MapZoom := INIFReadInteger(inif, c_map, 'zoom', 5);
    if MapZoom > C_MaxZoomIndex then
      MapZoom := C_MaxZoomIndex;
    if MapZoom < C_MinZoomIndex then
        MapZoom := C_MinZoomIndex;

    mX := INIFReadFloat(IniF, c_map, 'long', 112.75 );
    mY := INIFReadFloat(IniF, c_map, 'latt', -7.2 );

    FullScreen := INIFReadBool(inif, c_map, 'fullscreen', false );

    {added by me}
    OverlayPath := IncludeTrailingBackslash(
      IniFReadstring(inif, c_map, 'overlaypath', 'M:\map\overlay'));

    PatternPath := IncludeTrailingBackslash(
      IniFReadstring(inif, c_map, 'patternpath', 'M:\map\pattern'));
  end;

  result := true;
end;

function LoadFF_GameSetting(const fName: string; var gdSet: TGameDataSetting): boolean;
var IniF: TIniFile;
    s: string;
begin
  IniF := TIniFile.Create(fName);

  s := ExtractFilePath(ParamStr(0));
  with gdSet do begin
    DataPath    := IncludeTrailingBackslash(
      s + IniFReadstring(inif, c_gdata, 'datapath', '.\data\'));
    GroupSetting := DataPath + IniFReadstring(inif, c_gdata, 'groups' , 'cubicles.xml');

    ScenarioID    := INIFReadInteger(IniF, c_gdata, 'scenarioid', 452);
    GameSessionID := INIFReadInteger(IniF, c_gdata, 'sessionid', 1111);
    SnapshotName              := INIFReadString(IniF, c_gdata, 'snapshotname', ' ');
    RootRecordPath            := INIFReadString(IniF, c_gdata, 'rootrecordpath', 'C:\T3RecordPath');
    GamePlayMode.GameType     := INIFReadInteger(IniF, c_gdata, 'gameplaymode', 0 );
    GamePlayMode.RecFileName  := INIFReadString(IniF, c_gdata, 'recplayname', '' );
    RemotePort                := INIFReadInteger(IniF, c_gdata, 'remoteport',9000);
    RemoteScreen              := INIFReadInteger(IniF, c_gdata, 'remotescreen',0);
    ReplayScreen              := INIFReadInteger(IniF, c_gdata, 'replayscreen',2);
    TacticalScreen            := INIFReadInteger(IniF, c_gdata, 'TacticalScreen',0);
    ToteScreen                := INIFReadInteger(IniF, c_gdata, 'ToteScreen',1);
    DemoMode                  := INIFReadBool(IniF, c_gdata, 'DemoMode', False);
  end;
  result := true;
end;

procedure SaveFF_GameSetting(const fName: string; var gdSet: TGameDataSetting);
var  iniF: TIniFile;
begin
  IniF := TIniFile.Create(fName);

  with iniF, gdSet do begin

    WriteInteger(c_gdata, 'sessionid',     GameSessionID); //untuk client.
    WriteInteger (c_gdata,  'scenarioid',  ScenarioID);
    WriteString(c_gdata, 'snapshotname' ,  SnapshotName);
    WriteString(c_gdata, 'rootrecordpath' ,  RootRecordPath);
    WriteInteger(c_gdata, 'gameplaymode',  GamePlayMode.GameType);
    WriteString(c_gdata, 'recplayname',    GamePlayMode.RecFileName);
    WriteInteger (c_gdata,  'remoteport',  RemotePort);
    WriteInteger (c_gdata,  'remotescreen',  RemoteScreen);
    WriteInteger(c_gdata, 'TacticalScreen', TacticalScreen);
    WriteInteger(c_gdata, 'ToteScreen', ToteScreen);
    WriteBool(c_gdata, 'DemoMode', DemoMode);
  end;
  inif.Free;

end;


function LoadFF_dBaseSetting(const fName: string; var dbSet: TDBaseSetting): boolean;
var IniF: TIniFile;
    s: string;
    readIn, readOut : string;
begin
  IniF := TIniFile.Create(fName);
  s := ExtractFilePath(ParamStr(0));

  with dbSet do begin
    dbServer :=  IniFReadstring(inif, c_dBase, 'dbserver', '192.168.1.15');
    dbProto  :=  IniFReadstring(inif, c_dBase, 'dbproto', c_defaultDBProto );
    dbName   :=  IniFReadstring(inif, c_dBase, 'dbname',  'runtime_db');

    readIn    := Base64Encode(c_defaultDBUser);
    readOut   := IniFReadstring(inif, c_dBase, 'dbuser', readIn);
    dbUser    := Base64Decode(readOut);

    readIn    := Base64Encode(c_defaultDBPassword);
    readOut   := IniFReadstring(inif, c_dBase, 'dbpass', readIn);
    dbPass    := Base64Decode(readOut);

  end;
  result := true;
end;

procedure SaveFF_dBaseSetting(const fName: string; var dbSet: TDBaseSetting);
var  iniF: TIniFile;
begin
  IniF := TIniFile.Create(fName);

  with iniF, dbSet do begin
    WriteString(c_dBase, 'dbserver', dbServer);
    WriteString(c_dBase, 'dbproto',  dbProto );
    WriteString(c_dBase, 'dbname',   dbName);
    WriteString(c_dBase, 'dbuser',   Base64Encode(dbUser));
    WriteString(c_dBase, 'dbpass',   Base64Encode(dbPass));
  end;
  inif.Free;

end;

function LoadFF_SymbolSetting(const fName: string; var imgSet: TSymbolSetting): boolean;
var
  IniF: TIniFile;
  s: string;
begin
  IniF := TIniFile.Create(fName);
  s := ExtractFilePath(ParamStr(0));

  with imgSet do
  begin
    ImgPath := IncludeTrailingBackslash(s + IniFReadstring(IniF, c_symbol,
      'imgpath', '.\data\bitmap\'));
    DefaultSymbol := IniFReadstring(IniF, c_symbol, 'defsymbol',
      'SurfacePending.bmp' );
    MissileSeekerVisible := Boolean(INIFReadInteger(IniF, c_symbol,
      'Missile_Seeker_Visible', 0));
  end;

  Result := True;
end;

function LoadFF_AppSetting(const fName: string; var appSett: TApplicationSetting): boolean;
const
   c_appsetting = 'application';
var IniF: TIniFile;
    s: string;
begin
  IniF := TIniFile.Create(fName);
  s := ExtractFilePath(ParamStr(0));

  with appSett do begin
    GameServerName  := IniFReadstring(inif, c_appsetting, 'gameserver', 'tttSimServer.exe' );
    GameClientName  := IniFReadstring(inif, c_appsetting, 'gameclient', 'tttSimClient.exe' );
    DBEditorName    := IniFReadstring(inif, c_appsetting, 'dbeditclient', 'pDBEditor.exe' );
    MapSynchName    := IniFReadstring(inif, c_appsetting, 'mapsynch', 'synchmap.bat' );
    RemoteServerName:= IniFReadstring(inif, c_appsetting, 'remoteserver', 'tttRServer.exe' );
    RemoteClientName:= IniFReadstring(inif, c_appsetting, 'remoteclient', 'tttRClient.exe' );
    GameReplayName  := IniFReadstring(inif, c_appsetting, 'gamereplay', 'tttSimReplay.exe' );
    MapStubName     := IniFReadstring(inif, c_appsetting, 'mapstub', 'tttMapStub.exe' );
  end;
  result := true;
end;

procedure LoadFF_CubicalAssignSetting(const fName: string; var caSett: TCubicleAssignSetting);
const C_ASSIGN = 'cubicalassign';
var IniF: TIniFile;
    key: string;
    i : Integer;
    ss: TStrings;

begin
  IniF := TIniFile.Create(fName);
  ss := TStringList.Create;

  IniF.ReadSection(C_ASSIGN , ss);
  SetLength(caSett.GroupIDs, ss.Count);

  for i := 0 to ss.Count - 1 do begin

    key := ss[i];
    caSett.GroupIDs[i] := IniF.ReadInteger(C_ASSIGN, ss[i], 0);

  end;

  IniF.Free;

  ss.Free;
end;

procedure SaveFF_CubicalAssignSetting(const fName: string; var caSett: TCubicleAssignSetting);
const C_ASSIGN = 'cubicalassign';
var IniF: TIniFile;
    i: Integer;
    ss: TStrings;

begin
  IniF := TIniFile.Create(fName);
  ss := TStringList.Create;

  IniF.EraseSection(C_ASSIGN);

  for i := 0 to Length(caSett.GroupIDs) - 1 do begin
    IniF.WriteInteger(C_ASSIGN, 'groupID'+ IntToStr(i), caSett.GroupIDs[i]);

  end;

  IniF.Free;

  ss.Free;
end;

end.


