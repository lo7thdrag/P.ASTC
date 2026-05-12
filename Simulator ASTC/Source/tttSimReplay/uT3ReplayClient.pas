unit uT3ReplayClient;

interface

uses
  MapXLib_TLB, uMapXHandler, tttData, uCompassVisual, uObjectVisuals,
  uCoordConvertor, uT3GroupList, uT3Unit, uT3Vehicle, uT3Sensor, Windows,
  uT3DetectedTrack, uDataModuleTTT, uLibSettingTTT, uT3SimManager, Graphics,
  ufMainDisplay, SysUtils, Classes, uNewReplay, uGameData_TTT,
  uT3DataLink, uReplayDataType, uThreadTimer, uSteppers, uT3UnitContainer,
  uDBCubicles, uSimObjects, uT3Weapon, uBaseCoordSystem, uDBAsset_Scripted,
  uDBAsset_Vehicle, uDrawOverlay;

type

  TT3ReplayClient = class(TT3SimManager)
  private
    FSimMap       : TSimMap;

    fGeo          : String;
    fOver         : string;
    FOnLogStr: TLogStrProc;

    FOnGameControl: TOnGameControl;

    FTrackNumber          : integer;
    FCurrentPerspective   : integer;
    FTrackNumberWeapon    : integer;
    FOnJumpTo: TEventJumpToTime;

    procedure DrawAll(aCnv: TCanvas);
    procedure CreateSimMap;
    procedure CreateDisplay;
    procedure CreateCompass;
    procedure CreateRangeRings;
    procedure CreateLineVisual;

    procedure OnMapChange(sender: TObject);

    procedure SetOnLogStr(const Value: TLogStrProc);
    procedure SetCurrentPerspective(const Value: integer);

    procedure OnBombFire(Sender : TObject);

    { from client }
    function findDetectedTrack(aObj: TSimObject): TSimObject;
    function FindESMByTrackNumber(const number: String): TT3EsmTrack;
    procedure SetOnJumpTo(const Value: TEventJumpToTime);
    procedure Framw_CmdOverlayDynamicTrack(apRec: PAnsiChar; aSize: word);

  protected
    FCompass      : TCompassVisual;
    FRangeRing    : TRangeRingsVisual;
    FLineVisual   : TLineVisual;
    function LaunchEmbarkPlatform(const rec: TRecCmd_Embark)
      : TT3PlatformInstance; override;
  public
    Display       : TfrmMainDIsplay;
    HookedPlatform: TObject;
    SimDetectedTrackList: TT3UnitContainer;
    DrawOverlayTemplate: TDrawOverlay;

    property OnLogStr: TLogStrProc read FOnLogStr write SetOnLogStr;
    property RangeRing : TRangeRingsVisual read FRangeRing;
    property LineVisual : TLineVisual read FLineVisual;
    property CurrentPerspective : integer read FCurrentPerspective write SetCurrentPerspective;
    property SimMap : TSimMap read FSimMap;
    property OnJumpTo : TEventJumpToTime read FOnJumpTo write SetOnJumpTo;

    procedure RemoveDetectedTrackByDataLink(dataLink: TT3DataLink);overload;
    procedure findDetectedTracksByDatalink(var arrValue : TIntegerArray );

    {replay event}
    procedure Frame_Cmd_DataLink_RemoveTrack(apRec: PAnsiChar; aSize: Word);
    procedure Frame_CmdEmbark(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdLaunchBomb(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdLaunchMissile(apRec: PAnsiChar;aSize: word);
    procedure Frame_CmdLaunchTorpedo(apRec: PAnsiChar;aSize: word);
    procedure Frame_CmdPlatform_Move(apRec: PAnsiChar; aSize: Word);
    procedure Frame_CmdPlatformHancurin(apRec: PAnsiChar; aSize: Word);
    procedure Frame_CmdRadarNoiseJammer(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdSensor(apRec: PAnsiChar;aSize: word);
    procedure Frame_CmdSensorIFF(apRec: PAnsiChar;aSize: word);
    procedure Frame_CmdSync_Hit_Mine_Bomb(apRec: PAnsiChar;aSize: word);
    procedure Frame_CmdSYNCH(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdWeaponInOut(apRec: PAnsiChar; aSize: word);
    procedure Frame_CMD_DataLink_AddTrack(apRec: PAnsiChar; aSize: Word);
    procedure Frame_CmdPlatformFreeMe(apRec: PAnsiChar; aSize: Word);
    procedure Frame_Cmd_DataLink(apRec: PAnsiChar; aSize: word);
    procedure Frame_Cmd_MergeTrack(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdESM_CHANGE_PROPERTY(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdTargetIFF(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdVectac(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdLaunchSonobuoy(apRec: PAnsiChar; aSize: word);

    procedure Frame_CmdOverlayDynamicShape(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdOverlayStaticShape(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdOverlayTemplate(apRec: PAnsiChar; aSize: word);
    procedure Frame_CmdDynamicTrack(apRec: PAnsiChar; aSize: word);

    procedure netRecv_CmdTorpedoSyncPanelWeapon(apRec: PAnsiChar; aSize: word); override;

    procedure OnDisplayGameControl(control: integer);
    procedure AssignWeaponEvent(weapon: TT3Weapon); override;
    procedure GunFire(rec: TRecCmd_GunFire);
    procedure OnGunFire(Sender : TObject); override;
    procedure RemovePlatformByOperator(rec: TRecCmd_SelectPlatformToRemove);
    procedure ResetScenario;override;
    procedure ResetReplay;

    function AddDetectedTrack(aTrack: TSimObject; sensor: TSimObject): Boolean;
    function AddDetectedTrackByDataLink(idTrack: integer;dataLink: TT3DataLink): Boolean;
    procedure RemoveDetectedTrack(aTrack: TSimObject); overload;
    function  RemoveDetectedTrack(aTrack: TSimObject;sensor: TSimObject): Boolean; overload;
    procedure RemoveDetectedTracks(sensor: TSimObject);
    function Remove_DetectedTrack(aTrack: TSimObject;
             sensor: TSimObject): Boolean;

    function FindNearestDetectedTrack(const px, py: double;
      const maxDist: integer): TSimObject;
    function LaunchRuntimePlatform(const rec: TRecCmd_LaunchRP)
      : TT3PlatformInstance; override;
    function GetTrackNumberForWeapon: integer;

    constructor Create(Map: TMap);
    destructor Destroy; override;
    procedure LoadScenarioID(const vSet: TGameDataSetting); override;
    procedure Show;
    procedure UnAssignedAllEvent;
    procedure SetGroupMember(member : TT3PlatformInstance);

    procedure JumpTo(const aTime : TTime);


  end;

implementation

uses
  uT3ReplayEventManager, Dialogs, uSRRFunction,
  uCommonLogReplay, uT3Mine, uT3Bomb, uT3Torpedo,
  uT3Missile, uT3CounterMeasure, uT3Radar, uT3Sonar, uT3OtherSensor,
  uT3Gun, uT3Visual, uT3RadarNoiseJammer, uT3HybridMissile, uT3Sonobuoy,
  uFilter, uMainOverlay, uDBAssetObject;

{ TT3ReplayClient }

function TT3ReplayClient.AddDetectedTrack(aTrack, sensor: TSimObject): Boolean;
var
  pi: TT3Unit;
  track: TT3DetectedTrack;
  i: integer;
  found: Boolean;
  IsDetailView: Boolean;
  rec: TRadarDetailedCapabilities;
begin
  found := false;
  track := nil;
  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin
    track := TT3DetectedTrack(SimDetectedTrackList.getObject(i));
    found := track.TrackObject = TT3Unit(aTrack);

    // check sensor detail viewed
    // IsDetailView := TT3Sensor(sensor).InsideDetailRange(aTrack);
    // if sensor.ClassType = TT3Visual then
    IsDetailView := True;

    if IsDetailView then // edit aldy + andik 20032012
      track.IsDetailViewed := True
    else
      track.IsDetailViewed := false;

    if found then
      break;
  end;

  if found then
  begin
    track.addDetectBy(TT3DeviceUnit(sensor));
  end
  else
  begin
    FTrackNumber := FTrackNumber + 1;

    track := TT3DetectedTrack.Create;
    track.Converter := Converter;
    track.TrackObject := TT3Unit(aTrack);
    track.ISBlinking := True;
    track.TrackNumber := FTrackNumber;
    track.TimeDetected := GameTIME;

    track.addDetectBy(TT3DeviceUnit(sensor));
    //track.NotifyScaleMap := NotifyScaleMap; //comment
    track.TrackIdent := piPending;
    // check sensor detail viewed
    // IsDetailView := TT3Sensor(sensor).InsideDetailRange(aTrack);
    IsDetailView := True;

    if aTrack is TT3PlatformInstance then
    begin
      pi := aTrack as TT3PlatformInstance;
      track.TrackNumber := T3CubicleGroup(Scenario.CubiclesGroupsList.GetGroupByID(FCurrentPerspective)).
                              GetTrackNumber(pi.InstanceIndex);

      if IsDetailView then
      begin
        if sensor is TT3Visual then
        begin
          rec.IFF_Capability := True;
          rec.Altitude_Data_Capability := True;
          rec.Ground_Speed_Data_Capability := True;
          rec.Heading_Data_Capability := True;
          rec.Plat_Type_Recog_Capability := True;
          rec.Plat_Class_Recog_Capability := True;
        end
        else
        begin
          rec.IFF_Capability := TT3PlatformInstance(aTrack)
            .DetailedDetectionShowed.IFF_Capability;
          rec.Altitude_Data_Capability := TT3PlatformInstance(aTrack)
            .DetailedDetectionShowed.Altitude_Data_Capability;
          rec.Ground_Speed_Data_Capability := TT3PlatformInstance(aTrack)
            .DetailedDetectionShowed.Ground_Speed_Data_Capability;
          rec.Heading_Data_Capability := TT3PlatformInstance(aTrack)
            .DetailedDetectionShowed.Heading_Data_Capability;
          rec.Plat_Type_Recog_Capability := TT3PlatformInstance(aTrack)
            .DetailedDetectionShowed.Plat_Type_Recog_Capability;
          rec.Plat_Class_Recog_Capability := TT3PlatformInstance(aTrack)
            .DetailedDetectionShowed.Plat_Class_Recog_Capability;
        end;
        track.DetailedDetectionShowed := rec;
      end
      else
      begin
        track.IsDetailViewed := false;
      end;
    end
    else if aTrack is TT3DeviceUnit then
    begin
      pi := aTrack as TT3DeviceUnit;

      if FCurrentPerspective = 0 then exit; // instuktur
      track.TrackNumber := T3CubicleGroup(Scenario.CubiclesGroupsList.GetGroupByID(FCurrentPerspective)).
                              GetTrackNumber(pi.InstanceIndex);

      if IsDetailView then
        track.IsDetailViewed := True
      else
        track.IsDetailViewed := false;
    end;

    { tambahan dari Aldy }
    case pi.DetectabilityType of
      dtNormalDetection:
        begin
          track.TrackType := TT3PlatformInstance(aTrack).PlatformType;
          track.TrackDomain := TT3PlatformInstance(aTrack).PlatformDomain;
//          track.OnSelected := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackSelected;
          track.TrackID := IntToStr(TT3PlatformInstance(aTrack).TrackNumber);
//          track.OnTrackBlinking := OnTrackBlinking;

          // set event merged an unmerged on Client
//          track.OnMerged := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackMerged;
//          track.OnUnmerged := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackUnmerged;

          SimDetectedTrackList.addObject(track);
        end;

      dtUndetectable:
        begin
          // tidak ditambahkan...
          track.TrackType := TT3PlatformInstance(aTrack).PlatformType;
          track.TrackDomain := TT3PlatformInstance(aTrack).PlatformDomain;
//          track.OnSelected := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackSelected;
          track.TrackID := IntToStr(TT3PlatformInstance(aTrack).TrackNumber);
//          track.OnTrackBlinking := OnTrackBlinking;

          // set event merged an unmerged on Client
//          track.OnMerged := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackMerged;
//          track.OnUnmerged := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackUnmerged;

          SimDetectedTrackList.addObject(track);
        end;

      dtPassiveDetection:
        begin
          // jika passive Detection
          if TT3Sensor(sensor).OperationalStatus = sopPassive then
          begin
            track.TrackType := TT3PlatformInstance(aTrack).PlatformType;
            track.TrackDomain := TT3PlatformInstance(aTrack).PlatformDomain;
//            track.OnSelected := TT3ClientEventManager(EventManager)
//              .OnDetectedTrackSelected;
            track.TrackID := IntToStr(TT3PlatformInstance(aTrack).TrackNumber);
//            track.OnTrackBlinking := OnTrackBlinking;

            // set event merged an unmerged on Client
//            track.OnMerged := TT3ClientEventManager(EventManager)
//              .OnDetectedTrackMerged;
//            track.OnUnmerged := TT3ClientEventManager(EventManager)
//              .OnDetectedTrackUnmerged;

            SimDetectedTrackList.addObject(track);
          end;
        end;

      dtAlwaysVisible:
        begin
          // asumsi seperti normal
          track.TrackType := TT3PlatformInstance(aTrack).PlatformType;
          track.TrackDomain := TT3PlatformInstance(aTrack).PlatformDomain;
//          track.OnSelected := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackSelected;
          track.TrackID := IntToStr(TT3PlatformInstance(aTrack).TrackNumber);
//          track.OnTrackBlinking := OnTrackBlinking;

          // set event merged an unmerged on Client
//          track.OnMerged := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackMerged;
//          track.OnUnmerged := TT3ClientEventManager(EventManager)
//            .OnDetectedTrackUnmerged;

          SimDetectedTrackList.addObject(track);
        end;
    end;
  end;

  result := not found;
end;

function TT3ReplayClient.AddDetectedTrackByDataLink(idTrack: integer;
  dataLink: TT3DataLink): Boolean;
var
  pi: TT3PlatformInstance;
  track: TT3DetectedTrack;
  aTrack: TSimObject;
  FMyCubGroup : T3CubicleGroup;
begin
  result := false;
  aTrack := FindT3PlatformByID(idTrack);
  track := findDetectedTrack(aTrack) as TT3DetectedTrack;

  if Assigned(track) then // jika sudah ada
  begin
    track.addDetectBy(datalink);

    if track.Dormant then
      track.Dormant := false;

    Exit;
  end;

  if not Assigned(aTrack) then
    Exit;

  FTrackNumber := FTrackNumber + 1;
  track := TT3DetectedTrack.Create;
  track.TrackObject := TT3Unit(aTrack);
  track.ISBlinking := True;
  track.TrackNumber := FTrackNumber;
  track.TimeDetected := GameTIME;
  track.Converter := Converter;
  track.addDetectBy(TT3DeviceUnit(dataLink));

  if aTrack is TT3PlatformInstance then
  begin
    pi := aTrack as TT3PlatformInstance;
    FMyCubGroup := T3CubicleGroup(Scenario.CubiclesGroupsList.GetGroupByID(CurrentPerspective));
    if Assigned(FMyCubGroup) then
      track.TrackNumber := FMyCubGroup.GetTrackNumber(pi.InstanceIndex);
  end;

  track.TrackType := TT3PlatformInstance(aTrack).PlatformType;
  track.TrackDomain := TT3PlatformInstance(aTrack).PlatformDomain;
  track.TrackID := IntToStr(TT3PlatformInstance(aTrack).TrackNumber);
//  track.OnTrackBlinking := OnTrackBlinking;

  SimDetectedTrackList.addObject(track);
  result := true;
end;

procedure TT3ReplayClient.AssignWeaponEvent(weapon: TT3Weapon);
begin
  inherited;

  if weapon is TT3GunOnVehicle then begin
    TT3GunOnVehicle(weapon).OnGunFire := OnGunFire;
    TT3GunOnVehicle(weapon).OnGunCeaseFire := OnGunCeaseFire;
  end;
end;

constructor TT3ReplayClient.Create;
begin

  // default instruktur view
  FIsInstructor := true;

  CreateDisplay;
  inherited Create(Display.Map);

  // disable all game thread client. use thread manager
  FGameThread.Enabled := false;
  FGameThread.OnRunning := nil;
  FGameThread.OnTimer  := nil;
  FGameThread.OnTerminate := nil;

  EventManager := TT3ReplayEventManager.Create;
  TT3ReplayEventManager(EventManager).SetManager(self);

  SimDetectedTrackList := TT3UnitContainer.Create;
  SimDetectedTrackList.Converter := Converter;

  DrawOverlayTemplate := TDrawOverlay.Create;
  DrawOverlayTemplate.Converter := Converter;

  CreateCompass;
  CreateRangeRings;
  CreateLineVisual;
  CreateSimMap;

  FCurrentPerspective := 0; // default instruktur
  FTrackNumber        := 1000;
  FTrackNumberWeapon  := 4000;

  FLastPlatformID := 100;

  Display.Manager := Self;
  Display.RefreshTrackList;

  SimManager := Self;



  Show;

end;

procedure TT3ReplayClient.CreateCompass;
begin
  FCompass := TCompassVisual.Create;
  FCompass.Width := Converter.FMap.Width;
  FCompass.Height := Converter.FMap.Height;
end;

procedure TT3ReplayClient.CreateDisplay;
begin
  Display := TfrmMainDIsplay.Create(nil);
end;

procedure TT3ReplayClient.CreateLineVisual;
begin
  FLineVisual := TLineVisual.Create;
  FLineVisual.Converter := Converter;
end;

procedure TT3ReplayClient.CreateRangeRings;
begin
  FRangeRing := TRangeRingsVisual.Create;
  FRangeRing.Converter := Converter;
  FRangeRing.Interval := 10;
end;

procedure TT3ReplayClient.CreateSimMap;
begin
  FSimMap := TSimMap.Create(Display.Map);

  SimMap.OnDrawToCanvas := DrawAll;
  SimMap.OnMapChange := OnMapChange;
  SimMap.OnToolUsed := Display.MapToolUsed;
  SimMap.OnMapMouseMove := Display.MapMouseMove;
  SimMap.OnMapMouseDown := Display.MapMouseDown;
  SimMap.OnMapMouseUp := Display.MapMouseUp;
  SimMap.FMap.CurrentTool := mtSelectObject;

  LoadScenarioID(vGameDataSetting);
end;

destructor TT3ReplayClient.Destroy;
begin
  UnAssignedAllEvent;

  FSimMap.Free;

  SimDetectedTrackList.ClearAndRemove;
  SimDetectedTrackList.Free;

  inherited;

  FRangeRing.Free;
  FLineVisual.Free;
  FCompass.Free;

  Display.Free;
end;

procedure TT3ReplayClient.DrawAll(aCnv: TCanvas);
var
  aRect: TRect;
begin
  // batas penggambaran di map
  aRect.Left := 0;
  aRect.Top := 0;
  aRect.Right := SimMap.FMap.Width;
  aRect.Bottom := SimMap.FMap.Height;

  FCompass.DrawCompass(aCnv);

  FLineVisual.ConvertCoord(Converter);
  FLineVisual.Draw(aCnv);

  FRangeRing.ConvertCoord(Converter);
  FRangeRing.Draw(aCnv);

  SimPlatforms.UpdateAndDrawVisuals(aCnv, aRect);
  SimDevices.UpdateAndDrawVisuals(aCnv, aRect);
  SimWeapons.UpdateAndDrawVisuals(aCnv, aRect);

  SimDetectedTrackList.UpdateAndDrawVisuals(aCnv,aRect);

  DrawOverlayTemplate.Draw(aCnv, SimMap.FMap);
end;

function TT3ReplayClient.findDetectedTrack(aObj: TSimObject): TSimObject;
var
  i: integer;
  f: Boolean;
begin
  i := 0;
  f := false;
  while not f and (i < SimDetectedTrackList.itemCount) do
  begin
    result := SimDetectedTrackList.getObject(i);

    f := (result as TT3DetectedTrack).TrackObject = aObj;
    inc(i)
  end;
  if not f then
    result := nil;
end;

procedure TT3ReplayClient.findDetectedTracksByDatalink(
  var arrValue: TIntegerArray);
var
  i,j, k: integer;
  objTrack : TT3DetectedTrack;
  devSensor : TObject;
begin
  i := 0;
  k := 1;

  while i < SimDetectedTrackList.itemCount do
  begin
    objTrack := SimDetectedTrackList.getObject(i) as TT3DetectedTrack;

    if objTrack <> nil then
    begin
      for j := 0 to objTrack.TrackDetectedBy.Count - 1 do
      begin
        devSensor := objTrack.TrackDetectedBy.Items[j];
        if Assigned(devSensor) and (devSensor is TT3DataLink) then
        begin
          if Assigned(objTrack.TrackObject) then
          begin
            SetLength(arrValue, k);
            arrValue[k-1] := objTrack.TrackObject.InstanceIndex;
            Inc(k);
          end;
        end;
      end;
    end;

    inc(i);
  end;end;

function TT3ReplayClient.FindESMByTrackNumber(
  const number: String): TT3EsmTrack;
var
  aESM: TT3EsmTrack;
  aDetected: TT3DetectedTrack;
  i, J: integer;
begin
  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin
    aDetected := SimDetectedTrackList.getObject(i) as TT3DetectedTrack;
    if aDetected.ESMTracks.Count > 0 then
    begin
      for J := 0 to aDetected.ESMTracks.Count - 1 do
      begin
        aESM := aDetected.ESMTracks.Items[J];
        if (aESM.TrackNumber = number) then
          result := aESM;
      end;
    end;
  end;
end;

function TT3ReplayClient.FindNearestDetectedTrack(const px, py: double;
  const maxDist: integer): TSimObject;
var
  pi: TT3DetectedTrack;
  rr: integer;
  m, r: double;
  i, ctx, cty: integer;
  ptx, pty: integer;
  found: Boolean;
begin
  Converter.ConvertToScreen(px, py, ctx, cty);
  m := 1000000.0;
  result := nil;
  found := false;

  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin

    pi := TT3DetectedTrack(SimDetectedTrackList.getObject(i));
    if not Assigned(pi.TrackObject) then
      continue;
    if pi.FreeMe then
      continue;

    Converter.ConvertToScreen(pi.getPositionX, pi.getPositionY, ptx, pty);

    try
      rr := sqr(ptx - ctx) + sqr(pty - cty);
      if rr = 0 then
        r := 10000
      else
        r := Sqrt(Abs(rr));
    except
      r := 10000;
    end;

    if (r < m) and (r < maxDist) then
    begin
      m := r;
      result := pi;
      found := True;
      break;
    end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdDynamicTrack(apRec: PAnsiChar; aSize: word);
begin

end;

procedure TT3ReplayClient.Frame_CmdEmbark(apRec: PAnsiChar; aSize: word);
var rEmb: ^TRecCmd_Embark;
begin
  rEmb := @apRec^;

  case rEmb^.OrderID of
    { readying timer start }
    CORD_ID_INITIATE :
      InitiateEmbarkPlatform(rEmb^);
    { launch embark start immediately }
    CORD_ID_LAUNCH   :
      LaunchEmbarkPlatform(rEmb^);
    { launch canceled }
    CORD_ID_CANCEL   : ;
  end;
end;

procedure TT3ReplayClient.Frame_CmdESM_CHANGE_PROPERTY(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TRecCmd_ESM_SET_PROPERTY;
  track: TT3DetectedTrack;
  esm: TT3EsmTrack;
  i, J: integer;
begin
  r := @apRec^;

  if not(IsController) then
  begin
    if CurrentPerspective <> r^.GrpID then
      Exit;

    for i := 0 to SimDetectedTrackList.itemCount - 1 do
    begin
      track := SimDetectedTrackList.getObject(i) as TT3DetectedTrack;
      for J := 0 to track.ESMTracks.Count - 1 do
      begin
        esm := track.ESMTracks[J];
        if esm.TrackNumber = r^.TrackNumber then
        begin
          if r^.Identity <> -1 then
            esm.TrackIdent := r^.Identity;
          if r^.domain <> -1 then
            esm.TrackDomain := r^.domain;
        end;
      end;
    end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdLaunchBomb(apRec: PAnsiChar; aSize: word);
var
  aRec : ^TRecCmd_LaunchBomb;
  sip: string;
  bomb : TT3BombONVehicle;
  plat : TT3PlatformInstance;
  tgt : TSimObject;
begin
  aRec := @apRec^;

  if aRec^.SalvoSize = 1 then
    LaunchBomb(aRec^)
  else if aRec^.SalvoSize > 1 then
  begin
    plat := FindT3PlatformByID(aRec^.ParentPlatformID);

    if not Assigned(plat) then
      Exit;

    bomb := TT3Vehicle(plat).getWeapon(aRec^.BombOnVehicleID, TT3BombONVehicle) as TT3BombONVehicle;

    if not Assigned(bomb) then
      Exit;

    tgt := FindT3PlatformByID(aRec^.TargetPlatformID);

    if not Assigned(tgt) then
      Exit;

    bomb.TargetObject := tgt;
    bomb.OnBombFire := Self.OnBombFire;
    bomb.SalvoSize := aRec^.SalvoSize;
    { TODO : Cek disini di komen karena error }
    //bomb.State := 1;
  end;
end;

procedure TT3ReplayClient.Frame_CmdLaunchMissile(apRec: PAnsiChar; aSize: word);
var r: ^TRecCmd_LaunchMissile;
    projectile : TT3Weapon;
begin
  r := @apRec^;

  // check hybrid missile ato bukan
  if r^.Order = CORD_ID_launch_hybrid then
    // launch hybrid
    projectile := LaunchHybrid(r^) as TT3HybridMissile
  else
    projectile :=  LaunchMissile( r^) as TT3Missile;

  if projectile <> nil then
    projectile.Enable         := true;

end;

procedure TT3ReplayClient.Frame_CmdLaunchSonobuoy(apRec: PAnsiChar;
  aSize: word);
var
  aRec: ^TRecCmd_LaunchSonobuoy;
  projectile : TT3Sonobuoy;
begin
  aRec := @apRec^;

  if aRec^.SessionID <> SessionID then
    Exit;

  projectile := LaunchSonobuoy(aRec^) as TT3Sonobuoy;

  if projectile <> nil then
  begin
    projectile.Enable := True;
  end;
end;

procedure TT3ReplayClient.Frame_CmdLaunchTorpedo(apRec: PAnsiChar; aSize: word);
var r: ^TRecCmd_LaunchMissile;
    projectile : TT3Torpedo;
begin
  r := @apRec^;
  projectile :=  LaunchTorpedo( r^) as TT3Torpedo;

  if projectile <> nil then begin
    projectile.Enable         := true;
  end;
end;

procedure TT3ReplayClient.Frame_CmdOverlayDynamicShape(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TRecCmd_OverlayDynamicShape;
  rec : TRecCmd_OverlayDynamicShape;
begin
  r := @apRec^;

  rec.ShapeID := r.ShapeID;
  rec.TemplateName := r.TemplateName;
  rec.IdAction := r.IdAction;
  rec.IdSelectShape := r.IdSelectShape;
  rec.PostStart := r.PostStart;
  rec.PostEnd := r.PostEnd;
  rec.Words := r.Words;
  rec.Size := r.Size;
  rec.Radius1 := r.Radius1;
  rec.Radius2 :=  r.Radius2;
  rec.StartAngle := r.StartAngle;
  rec.EndAngle := r.EndAngle;
  rec.Rotasi := r.Rotasi;
  rec.Kolom := r.Kolom;
  rec.Baris := r.Baris;
  rec.color := r.color;
  rec.StatePoly := r.StatePoly;

  TT3ReplayEventManager(EventManager).OnOverlayDynamicShape(rec);
end;

procedure TT3ReplayClient.Frame_CmdOverlayStaticShape(apRec: PAnsiChar;
  aSize: word);
var
  r : ^TRecCmd_OverlayStaticShape;
  rec : TRecCmd_OverlayStaticShape;
begin
  r := @apRec^;

  if r = nil then
    Exit;

  rec.ShapeID := r.ShapeID;
  rec.TemplateName := r.TemplateName;
  rec.IdAction := r.IdAction;
  rec.IdSelectShape := r.IdSelectShape;
  rec.PostStart := r.PostStart;
  rec.PostEnd := r.PostEnd;
  rec.Words := r.Words;
  rec.Size := r.Size;
  rec.Radius1 := r.Radius1;
  rec.Radius2 :=  r.Radius2;
  rec.StartAngle := r.StartAngle;
  rec.EndAngle := r.EndAngle;
  rec.Rotasi := r.Rotasi;
  rec.Kolom := r.Kolom;
  rec.Baris := r.Baris;
  rec.color := r.color;
  rec.StatePoly := r.StatePoly;

  TT3ReplayEventManager(EventManager).OnOverlayStaticShape(rec);
end;

procedure TT3ReplayClient.Frame_CmdOverlayTemplate(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TRecCmd_OverlayTemplate;
  rec: TRecCmd_OverlayTemplate;
begin
  r := @apRec^;

  if r = nil then
    Exit;

  rec.Name := r.Name;
  rec.IdAction := r.IdAction;
  rec.Tipe := r.Tipe;
  rec.Domain := r.Domain;
  rec.Cubicle := r.Cubicle;

  TT3ReplayEventManager(EventManager).OnOverlayTemplate(rec);
end;

procedure TT3ReplayClient.Frame_CmdPlatformFreeMe(apRec: PAnsiChar;
  aSize: Word);
var
  aRec: ^TRecPlatformFreeMe;
begin
  aRec := @apRec^;
  FreePlatform(aRec^);
end;

procedure TT3ReplayClient.Frame_CmdPlatformHancurin(apRec: PAnsiChar;
  aSize: Word);
var
  aRec: ^TRecPlatformHancur;
begin
  aRec := @apRec^;
  EventManager.OnPlatformHancurin(aRec^.SenderID, aRec^.Target, aRec^.reasondestroy);
end;

procedure TT3ReplayClient.Frame_CmdPlatform_Move(apRec: PAnsiChar; aSize: Word);
var rec: ^TRecCmd_Platform_Move;
    p: TT3PlatformInstance;
begin
  rec := @apRec^;

  p := FindT3PlatformByID(rec^.PlatfomID);
  if not Assigned(p) then
    p := FindNonRealPlatformByID(rec^.PlatfomID);

  if p <> nil then
    if rec^.OrderID = CORD_ID_REPOS then
      p.RepositionTo(rec^.X, rec^.Y);

end;

procedure TT3ReplayClient.Frame_CmdRadarNoiseJammer(apRec: PAnsiChar;
  aSize: word);
var
  r: ^TrecRadarNoiseJammer;
  pi: TT3PlatformInstance;
  obj: TObject;
begin
  r := @apRec^;
  pi := FindT3PlatformByID(r^.JammerPlatformOwnerID);

  if pi = nil then
    Exit;
  if not(pi is TT3Vehicle) then
    Exit;

  obj := TT3Vehicle(pi).getDevice(r^.JammerID, TT3RadarNoiseJammerOnVehicle);
  if obj = nil then
    Exit;

  TT3RadarNoiseJammerOnVehicle(obj).Status := TECMStatus(r^.JammerStatus);
end;

procedure TT3ReplayClient.Frame_CmdSensor(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_Sensor;
  pi: TT3PlatformInstance;
  obj: TObject;
  vSelect : TSimObject;
begin
  r := @apRec^;
  pi := FindT3PlatformByID(r^.PlatformID);

  if pi = nil then
    Exit;

  if not(pi is TT3Vehicle) then
    Exit;

  case r^.SensorType of
    CSENSOR_TYPE_RADAR:
      begin
        obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3Radar);
        if obj = nil then
          Exit;

        case r^.OrderID of
          CORD_ID_ControlMode:
            TT3Radar(obj).ControlMode := TRadarControlMode(r^.OrderParam);
        end;
      end;

    CSENSOR_TYPE_SONAR:
      begin
        obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3Sonar);
        if obj = nil then
          Exit;

        case r^.OrderID of
          CORD_ID_ControlMode:
            TT3Sonar(obj).ControlMode := TSonarControlMode(r^.OrderParam);
        end;
      end;

    CSENSOR_TYPE_ESM:
      begin
        obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3ESMSensor);
        if obj = nil then
          Exit;

        case r^.OrderID of
          CORD_ID_OperationalStatus:
            TT3ESMSensor(obj).OperationalStatus := TSensorOperationalStatus
              (r^.OrderParam);
        end;
      end;

    CSENSOR_TYPE_EO:
      begin
        obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3EOSensor);
        if obj = nil then
          Exit;

        case r^.OrderID of
          CORD_ID_OperationalStatus:
            TT3EOSensor(obj).OperationalStatus := TSensorOperationalStatus
              (r^.OrderParam);
        end;
      end;

    CSENSOR_TYPE_MAD:
      begin
        obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3MADSensor);
        if obj = nil then
          Exit;

        case r^.OrderID of
          CORD_ID_OperationalStatus:
            TT3MADSensor(obj).OperationalStatus := TSensorOperationalStatus
              (r^.OrderParam);
        end;
      end;

    CSENSOR_TYPE_IFF:
      begin
        obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3IFFSensor);
        if obj = nil then
          Exit;

        case r^.OrderID of
          1:
            TT3IFFSensor(obj).TransponderOperateStatus :=
              TSensorOperationalStatus(r^.OrderParam);
          2:
            TT3IFFSensor(obj).InterrogatorOperateStatus :=
              TSensorOperationalStatus(r^.OrderParam);
        end;
      end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdSensorIFF(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_SensorIFF;
  pi, pt: TT3PlatformInstance;
  obj, obj2: TObject;
begin
  r := @apRec^;
  pi := FindT3PlatformByID(r^.PlatformID);

  if r^.TargetID = 0 then
    pt := nil
  else
    pt := FindT3PlatformByID(r^.TargetID);

  if pi = nil then
    Exit;

  if not(pi is TT3Vehicle) then
    Exit;

  r := @apRec^;

  obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3IFFSensor);

  if pt <> nil then
    obj2 := TT3Vehicle(pt).getDevice(r^.SensorID, TT3IFFSensor)
  else
    obj2 := nil;

  if obj = nil then
    Exit;

  case r^.index_mode of
    1:
      begin // transponder mode1
        TT3IFFSensor(obj).TransponderMode1Enabled := r^.check_mode;
        TT3IFFSensor(obj).TransponderMode1 := r^.value_mode;
        TT3IFFSensor(obj).TargetObject := pt;
      end;
    2:
      begin // transponder mode2
        TT3IFFSensor(obj).TransponderMode2Enabled := r^.check_mode;
        TT3IFFSensor(obj).TransponderMode2 := r^.value_mode;
        TT3IFFSensor(obj).TargetObject := pt;
      end;
    3:
      begin // transponder mode3
        TT3IFFSensor(obj).TransponderMode3Enabled := r^.check_mode;
        TT3IFFSensor(obj).TransponderMode3 := r^.value_mode;
        TT3IFFSensor(obj).TargetObject := pt;
      end;
    4:
      begin // interrogator mode1
        TT3IFFSensor(obj).InterrogatorMode1Enabled := r^.check_mode;
        TT3IFFSensor(obj).InterrogatorMode1 := r^.value_mode;
        TT3IFFSensor(obj).TargetObject := pt;
      end;
    5:
      begin // interrogator mode2
        TT3IFFSensor(obj).InterrogatorMode2Enabled := r^.check_mode;
        TT3IFFSensor(obj).InterrogatorMode2 := r^.value_mode;
        TT3IFFSensor(obj).TargetObject := pt;
      end;
    6:
      begin // interrogator mode3
        TT3IFFSensor(obj).InterrogatorMode3Enabled := r^.check_mode;
        TT3IFFSensor(obj).InterrogatorMode3 := r^.value_mode;
        TT3IFFSensor(obj).TargetObject := pt;
      end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdSYNCH(apRec: PAnsiChar; aSize: word);
var
  aRec: ^TRecCmdSYNCH;
begin
  aRec := @apRec^;
  case aRec^.SynchID of
    CORD_ID_Synch_NextPID:
      begin
        FLastPlatformID := aRec^.Synch_IParam;
      end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdSync_Hit_Mine_Bomb(apRec: PAnsiChar;
  aSize: word);
var
  aRec: ^TRecCmd_Sync_Hit_BombMine;
  weapon: TSimObject;
  Target: TSimObject;
begin
  aRec := @apRec^;

  weapon := FindWeaponByID(aRec^.WeaponID);
  if not Assigned(weapon) then
    Exit;

  Target := FindT3PlatformByID(aRec^.TargetID);
  if not Assigned(Target) then
    Exit;

  if not(weapon is TT3Bomb) or not(Target is TT3Mine) then
    Exit;

  if Target is TT3PlatformInstance then
  begin
    if weapon is TT3Mine then
    begin
      if Assigned(TT3Mine(weapon).OnHit) then
        TT3Mine(weapon).OnHit(weapon, Target, aRec^.lethality);
    end
    else
    begin
      if Assigned(TT3Bomb(weapon).OnHit) then
        TT3Bomb(weapon).OnHit(weapon, Target, aRec^.lethality);
    end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdTargetIFF(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_TargetIFF;
  pi, pt: TT3PlatformInstance;
  obj, obj2: TObject;
begin
  r := @apRec^;
  pi := FindT3PlatformByID(r^.PlatformID);

  if not(pi is TT3Vehicle) then
    Exit;

  pt := FindT3PlatformByID(r^.TargetID);
  if not Assigned(pt) then
    Exit;

  if not(pt is TT3Vehicle) then
    Exit;

  obj := TT3Vehicle(pi).getDevice(r^.SensorID, TT3IFFSensor);
  if obj = nil then
    Exit;

  TT3IFFSensor(obj).TargetObject := pt;
  TT3IFFSensor(obj).PrevTargetObj := nil;
end;

procedure TT3ReplayClient.Frame_CmdVectac(apRec: PAnsiChar; aSize: word);
var
  Commander, WpnCarrier, Target : TT3Vehicle;
  Wpn : TT3Weapon;
  Vectac : TT3Vectac;
  projectile : TT3Torpedo;
  rec : ^TRecVectac;
  mx, my : Double;
  behav : TScripted_Behav_Definition;
begin
  rec := @apRec^;

  Commander := TT3Vehicle(FindT3PlatformByID(rec^.CommanderID));
  WpnCarrier := TT3Vehicle(FindT3PlatformByID(rec^.WpnCarrierID));
  Target := TT3Vehicle(FindT3PlatformByID(rec^.TargetID));

  Wpn := TT3Weapon(Commander.Weapons.Items[Commander.Weapons.Count-1]);

  Vectac := TT3Vectac(Wpn);
  Vectac.Owner := Commander;
  Vectac.WeaponCarrier := WpnCarrier;
  WpnCarrier.VectacCommander := Commander;
  vectac.Target := Target;

  TT3Weapon(vectac).TargetObject := Target;

  case rec^.cmd of
    1:
    begin
      if WpnCarrier.Waypoints.Count <= 0 then
      begin
        behav := TScripted_Behav_Definition.Create;

        with behav.FData do
        begin
          Scripted_Event_Index  := 0;
          Waypoint_Latitude     := rec^.CoordY;
          Waypoint_Longitude    := rec^.CoordX;
          Speed                 := Round(WpnCarrier.Mover.MaxSpeed);
        end;

        WpnCarrier.Waypoints.Add(behav, nil);
        WpnCarrier.Waypoints.Enabled := True;
//        WpnCarrier.Waypoints.DrawWaypoint := True;

        TVehicle_Definition(WpnCarrier.UnitDefinition).GuidanceType := vgtWaypoint;
      end
      else
      begin
        WpnCarrier.Waypoints.NextWaypoint.FData.Speed := Round(WpnCarrier.Mover.MaxSpeed);
      end;

      vectac.Planned := True;
    end;
    2:
    begin
      WpnCarrier.Waypoints.NextWaypoint.FData.Speed := 0;
      vectac.Planned := False;
    end;
    3:
    begin
      projectile := LaunchVectac(rec^) as TT3Torpedo;

      if projectile <> nil then
      begin
        projectile.Enable         := true;
      end;
    end;
  end;
end;

procedure TT3ReplayClient.Frame_CmdWeaponInOut(apRec: PAnsiChar; aSize: word);
var
  aRec: ^TRecWeaponOut;
begin
  aRec := @apRec^;
  EventManager.OnWeaponInOut(aRec^.SenderID, aRec^.reasonDestroy);
end;

procedure TT3ReplayClient.Frame_Cmd_DataLink(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_DataLink;
  dataLink: TT3DataLink;
begin

  netRecv_Cmd_DataLink(apRec, aSize);
  r := @apRec^;

  // if not pooling request, update track datalink
  if (r^.OrderDL <> odlPool) and (r^.OrderDL <> odlPooledTracks) then
  begin
    dataLink := DataLinkManager.getDatalink(r^.DataLinkID);
    if Assigned(EventManager) then
      EventManager.OnDatalinkTracksUpdate(dataLink);
  end;


  if r^.OrderDL = odlStop then
  begin
    RemoveDetectedTrackByDataLink(dataLink);
  end;

  if Assigned(dataLink.OnUpdated) then
    dataLink.OnUpdated(dataLink);
end;

procedure TT3ReplayClient.Frame_CMD_DataLink_AddTrack(apRec: PAnsiChar;
  aSize: Word);
var
  r: ^TRecCmd_DataLink_AddTrack;
  aPlatform: TT3PlatformInstance;
  sPlatform: TT3PlatformInstance;
  dataLink: TT3DataLink;
  i: integer;
  IsRightControlledPlatform: Boolean;

begin
  r := @apRec^;

  if not r^.SessionID = FSessionID then
    Exit;

//  case r^.DataLinkID of
//    1:
//      dataLink := DataLink1;
//    2:
//      dataLink := DataLink2;
//    3:
//      dataLink := DataLink3;
//  end;

  IsRightControlledPlatform := false;
  sPlatform := FindT3PlatformByID(r^.PlatformSourceID);

  {
  for i := 0 to dataLink.ParticipatingUnits.Count - 1 do
  begin
    aPlatform := dataLink.ParticipatingUnits.Items[i];
    if aPlatform.Equals(ControlledPlatform) then
    begin
      IsRightControlledPlatform := True;
      break;
    end;
  end;

  if IsRightControlledPlatform then
  begin
    aPlatform := FindT3PlatformByID(r^.PlatformDetectedID);
    if not aPlatform.Equals(ControlledPlatform) then
      AddDetectedTrackByDataLink(r^.PlatformDetectedID, dataLink);
  end; }
end;

procedure TT3ReplayClient.Frame_Cmd_DataLink_RemoveTrack(apRec: PAnsiChar;
  aSize: Word);
var
  r: ^TRecCmd_DataLink_RemoveTrack;
  dataLink: TT3DataLink;
begin
  r := @apRec^;
end;

procedure TT3ReplayClient.Frame_Cmd_MergeTrack(apRec: PAnsiChar; aSize: word);
var
  r: ^TRecCmd_MergeTrack;
  aPlatform: TT3PlatformInstance;
  aDetect: TT3DetectedTrack;
  aESM: TT3EsmTrack;
begin
  r := @apRec^;

  if (IsController) then
    Exit;

  if r^.GroupID <> CurrentPerspective then
    Exit;

  aPlatform := FindT3PlatformByID(r^.DetectedTrackNumber);
  if aPlatform = nil then Exit;

  aDetect   := findDetectedTrack(aPlatform) as TT3DetectedTrack;
  if aDetect = nil then Exit;

  aESM      := FindESMByTrackNumber(IntToStr(r^.EsmTrackNumber));
  if aESM = nil then Exit;

  //merge
  if r^.OrderMerge then
  begin
    aDetect.MergedESM := aESM;
    aESM.IsMerged := True;

    if Assigned(aDetect.OnMerged) then
      aDetect.OnMerged(aDetect);
  end
  // unmerge
  else
  begin
    aESM.IsMerged := false;

    if Assigned(aDetect.OnUnmerged) then
      aDetect.OnUnmerged(aDetect);

    aDetect.MergedESM := nil;
  end;
end;

procedure TT3ReplayClient.Framw_CmdOverlayDynamicTrack(apRec: PAnsiChar;
  aSize: word);
begin

end;

function TT3ReplayClient.GetTrackNumberForWeapon: integer;
begin
  result := FTrackNumberWeapon;
  inc(FTrackNumberWeapon);
end;

procedure TT3ReplayClient.GunFire(rec: TRecCmd_GunFire);
  procedure CloneRec(var recDest:TRecCmd_GunFire; const recSrc : TRecCmd_GunFire);
  begin
    recDest.SessionID         := recSrc.SessionID;
    recDest.ParentPlatformID  := recSrc.ParentPlatformID;
    recDest.GunID             := recSrc.GunID;
    recDest.TargetPlatformID  := recSrc.TargetPlatformID;
    recDest.OrderID           := recSrc.OrderID;
    recDest.ControlMode       := recSrc.ControlMode;
    recDest.SalvoMode         := recSrc.SalvoMode;
    recDest.SalvoSize         := recSrc.SalvoSize;
    recDest.GunCapacityRemain := recSrc.GunCapacityRemain;
    recDest.InterceptRange    := recSrc.InterceptRange;
    recDest.ThresSpeed        := recSrc.ThresSpeed;
    recDest.HitProbability    := recSrc.HitProbability;
    recDest.GunName           := recSrc.GunName;
  end;
var pi, tgt: TT3PlatformInstance;
    wpn   : TT3GunOnVehicle;
    recGF : TRecCmd_GunFire;
    s: string;
    shoot : TT3GunShoot;
    pl, parentShoot : TT3PlatformInstance;
    r: TRecCmd_GunFire;
    i : Integer;
    TRIPRange : double;
begin
  inherited;
  pi   := FindT3PlatformByID(rec.ParentPlatformID);
  tgt  := FindT3PlatformByID(rec.TargetPlatformID);

  if (pi = nil) and not (pi is TT3Vehicle) then
    exit;

  //wpn := TT3Vehicle(pi).getWeapon(rec.GunName, TT3GunOnVehicle) as TT3GunOnVehicle;
  wpn := TT3Vehicle(pi).getWeapon(rec.GunID, TT3GunOnVehicle) as TT3GunOnVehicle;
  if wpn <> nil then begin
    wpn.TargetObject        := tgt;
    wpn.ControlMode         := rec.ControlMode;
    wpn.SalvoMode           := rec.SalvoMode;
    wpn.SalvoSize           := rec.SalvoSize;
    AssignWeaponEvent(wpn);

    case rec.OrderID of
      CORD_ID_assign : //assign gun
        begin
          if tgt = nil then exit;

          wpn.IsAssigned := true;
          tgt.IsAssigned := True;
        end;
      CORD_ID_break  : // break assignment
        begin
          wpn.IsAssigned := false;

          if tgt <> nil then
            tgt.IsAssigned := false;

          // asumsi : jika dalam keadaan firing, batalkan firing
          wpn.CeaseFire;
          wpn.State := 0;
          if Assigned(wpn.OnGunCeaseFire) then
            OnGunCeaseFire(wpn);

          wpn.OnGunFire       := nil;
          wpn.OnGunCeaseFire  := nil;

        end;
      CORD_ID_fire   : // gun fire
        begin
          case wpn.ControlMode of
            1 :
              begin
                //automatic
              end;
            2 :
              begin
                if tgt = nil then exit;
                if (not wpn.IsAssigned) and (not tgt.IsAssigned) and (wpn.GunDefinition.FData.Fire_Cntl_Director_Req = 1) then
                  Exit;
              end;
            3 :
              begin

              end;
            4:
              begin

              end;
          end;

          wpn.State := 1;

          wpn.OnGunFire       := OnGunFire;
          wpn.OnGunCeaseFire  := OnGunCeaseFire;
          wpn.State := 1;
          wpn.WeaponStatus := wsFiring;

        end;
      CORD_ID_cease  : // stop gun fire
        begin
          wpn.State := 0;
          if Assigned(wpn.OnGunCeaseFire) then
            OnGunCeaseFire(wpn);

          wpn.OnGunFire       := nil;
          wpn.OnGunCeaseFire  := nil;
        end;

      CORD_ID_control_mode  : // set control mode
        begin
          // jika control mode berubah, maka batalkan smua pekerjaan sekarang.
          if (wpn.ControlMode <> rec.ControlMode) and (wpn.ControlMode > 0) then begin

            // jika sedang menembak, hentikan menembak
            if wpn.IsAssigned then // berarti sdg mengassign target
            begin
              CloneRec(recGF,rec);
              recGF.OrderID := CORD_ID_break;
              GunFire(recGF);
            end else begin // berarti sedang menembak mode manual
              CloneRec(recGF,rec);
              recGF.OrderID := CORD_ID_cease;
              GunFire(rec);
            end;
          end;

          wpn.ControlMode := rec.ControlMode;
        end;
      CORD_ID_salvo_mode :
        begin
          wpn.SalvoMode := rec.SalvoMode;
        end;
      CORD_ID_target :
      begin
        tgt  := FindT3PlatformByID(rec.TargetPlatformID);
        wpn.TargetObject := tgt;
      end;
      CORD_ID_salvo_size :
      begin
        wpn.SalvoSize := rec.SalvoSize;
      end;
      CORD_ID_intercp_range :
      begin
        wpn.InterceptRange := rec.InterceptRange;
      end;
      CORD_ID_thresh_speed :
      begin
        wpn.ThresholdSpeed := rec.ThresSpeed;
      end;
      CORD_ID_chaff_bloom :
      begin
        wpn.ChaffBloom := rec.ChaffBloom;
      end;
      CORD_ID_chaff_pos :
      begin
        wpn.SetChaffPosition(rec.ChaffX,rec.ChaffY);
      end;
      {send post n altitude NGS target}
      CORD_ID_postNGS  :
      begin
        wpn.PosX := rec.pX;
        wpn.PosY := rec.pY;
        wpn.Altitude := rec.pAltitude;
      end;
    end;
  end;
end;

procedure TT3ReplayClient.JumpTo(const aTime: TTime);
begin
  if Assigned(FOnJumpTo) then
    FOnJumpTo(aTime);
end;

function TT3ReplayClient.LaunchEmbarkPlatform(
  const rec: TRecCmd_Embark): TT3PlatformInstance;
var
  grp: T3CubicleGroup;
  vObj: TT3Vehicle;
begin
  result := inherited;

  if not Assigned(result) then
    Exit;

  if result is TT3Vehicle then
  begin
	  grp := FScenario.CubiclesGroupsList.GetGroupOf_PlatformIndex(rec.ParentPlatformID) ;
    if Assigned(grp) then begin
      grp.AddMember(TT3Vehicle(Result).InstanceIndex);
      TT3Vehicle(Result).TrackNumber := grp.GetTrackNumber(TT3Vehicle(Result).InstanceIndex);
    end;
  end;
end;

function TT3ReplayClient.LaunchRuntimePlatform(
  const rec: TRecCmd_LaunchRP): TT3PlatformInstance;
var
  grp: T3CubicleGroup;
  vObj: TT3PlatformInstance;
begin
  result := inherited;
  if not Assigned(result) then exit;

  result.isInstructor := FIsInstructor;

  if FIsInstructor then begin
    result.UnitGroup    := true;
    result.Enable       := true;
    result.TrackLabel   := result.Track_ID;
  end;

  grp := FScenario.CubiclesGroupsList.GetGroupByID(rec.RPGroupID) as T3CubicleGroup;
  if grp <> nil then
  begin
    if grp.FData.Group_Index = 0 then exit;

    grp.AddMember(rec.NewPlatformID);

    result.TrackNumber  := grp.GetTrackNumber(rec.NewPlatformID);
    result.UnitGroup    := (CurrentPerspective = grp.FData.Group_Index) or FIsInstructor;
    result.Enable       := result.UnitGroup;
    result.TrackDomain  := result.PlatformDomain;
    result.GroupIndex   := grp.FData.Group_Index;
    result.TrackLabel   := FormatTrackNumber(result.TrackNumber);
    if Result.UnitGroup then
      result.TrackIdent := piFriend;
  end;
end;

procedure TT3ReplayClient.LoadScenarioID(const vSet: TGameDataSetting);
var
  fPattern, S: string;
  i, j, l: integer;
  aObject: TT3PlatformInstance;
  vObj: TT3Vehicle;
  f: boolean;
  sensor: TT3Sensor;
  filterType : TPictureFilterType;
  OverlayTemplate, tempOverlay : TMainOverlayTemplate;
  ovIdx : Integer;
  IdForce : Integer;
  flagOverlay : Boolean;
  fileName: string;
begin

  inherited;

  f := false;

  for i := 0 to SimPlatforms.itemCount - 1 do
  begin
    aObject := TT3PlatformInstance(SimPlatforms.getObject(i));
    aObject.UnitGroup := true;
    aObject.Enable := true;
    aObject.isInstructor := true;

    // environment
    aObject.Environment := GameEnvironment;

    for l := 0 to TT3Vehicle(aObject).Devices.Count - 1 do
    begin
      sensor := TT3Vehicle(aObject).Devices[l];
      sensor.Environment := GameEnvironment;
    end;

    if aObject is TT3Vehicle then
    begin
      vObj := aObject as TT3Vehicle;
      vObj.TrackLabel := vObj.Track_ID;
      vObj.IsGroupLeader := False;
      vObj.LoadPlatformSymbol;

      filterType := TPictureFilterType(vObj.PlatformDomain + 1);

      vFilter.Add(filterType, 'Pending', 'Identity', 2);
      vFilter.Add(filterType, 'Unknown', 'Identity', 2);
      vFilter.Add(filterType, 'Assumed friend', 'Identity', 2);
      vFilter.Add(filterType, 'Friend', 'Identity', 2);
      vFilter.Add(filterType, 'Neutral', 'Identity', 2);
      vFilter.Add(filterType, 'Suspect', 'Identity', 2);
      vFilter.Add(filterType, 'Hostile', 'Identity', 2);


//      case vObj.TrackIdent of
//        piPending        :vFilter.Add(filterType, 'Pending', 'Identity', 2);
//        piUnknown        :vFilter.Add(filterType, 'Unknown', 'Identity', 2);
//        piAssumedFriend  :vFilter.Add(filterType, 'Assumed friend', 'Identity', 2);
//        piFriend         :vFilter.Add(filterType, 'Friend', 'Identity', 2);
//        piNeutral        :vFilter.Add(filterType, 'Neutral', 'Identity', 2);
//        piSuspect        :vFilter.Add(filterType, 'Suspect', 'Identity', 2);
//        piHostile        :vFilter.Add(filterType, 'Hostile', 'Identity', 2);
//      end;

      //vFilter.Add(filterType, '', '', 2);
    end;



    if (not f) and (aObject is TT3Vehicle) then
    begin
      HookedPlatform := aObject;
      TT3Vehicle(aObject).Selected := true;
      f := true;
    end;


  end;

  vFilter.Add(pftNone, 'Main symbol', 'Track symbol', 2);;
  vFilter.Add(pftNone, 'Track leader', 'Track symbol', 2);
  vFilter.Add(pftNone, 'Track number', 'Track label', 2);

  S := UpperCase(Trim(GameEnvironment.FGameArea.Detail_Map));
  if S = 'ENC' then
    fGeo := vMapSetting.MapENCPath + FScenario.MapGeosetName
  else
    fGeo := vMapSetting.MapPath + FScenario.MapGeosetName;

  {Prince : Load Overlay}
  if (FScenario.OverlayTemplateFromDB.Count > 0) then
  begin
    for i := 0 to FScenario.OverlayTemplateFromDB.Count - 1 do
    begin
      ovIdx := TResource_Allocation(FScenario.OverlayTemplateFromDB[I]).FOverlay.Overlay_Index;
      IdForce := TResource_Allocation(FScenario.OverlayTemplateFromDB[I]).FOverlay.Force;

      OverlayTemplate := TMainOverlayTemplate.Create;
      OverlayTemplate.Name := TResource_Allocation(FScenario.OverlayTemplateFromDB[I]).FOverlay.Overlay_Filename;

      OverlayTemplate.Tipe := TResource_Allocation(FScenario.OverlayTemplateFromDB[I]).FOverlay.Static_Overlay;
      OverlayTemplate.Domain := TResource_Allocation(FScenario.OverlayTemplateFromDB[I]).FOverlay.Domain;
      OverlayTemplate.Cubicle := 0;
      OverlayTemplate.Force := IdForce;

//      flagOverlay := False;
//      if (not ISInstructor) then
//      begin
//        if FMyCubGroup.FData.Force_Designation <> IdForce  then
//          flagOverlay := True;
//      end
//      else
//      begin

//        for j := 0 to DrawOverlayTemplate.FList.Count - 1 do
//        begin
//          tempOverlay := DrawOverlayTemplate.FList.Items[j];

//          if OverlayTemplate.Name = tempOverlay.Name then
//          begin
//            flagOverlay:= True;
//            Break;
//          end;
//        end;
//      end;

//      if not flagOverlay then
//      begin
//        DrawOverlayTemplate.AddOverlayTemplate(OverlayTemplate);

//        fileName := vMapSetting.OverlayPath + OverlayTemplate.Name + '.dat';

        {Load Shape yg ada di .bat kedalam objek}
//        LoadShape(fileName, OverlayTemplate.Tipe, OverlayTemplate);
//      end;
    end;
  end;

end;


procedure TT3ReplayClient.netRecv_CmdTorpedoSyncPanelWeapon(apRec: PAnsiChar;
  aSize: word);
begin
  inherited;

end;

procedure TT3ReplayClient.OnBombFire(Sender: TObject);
var
  bomb : TT3BombONVehicle;
  rec : TRecCmd_LaunchBomb;
begin
  if not (Sender is TT3BombONVehicle) then
    Exit;

  bomb := Sender as TT3BombONVehicle;

  rec.SessionID := SessionID;
  rec.ParentPlatformID := TT3PlatformInstance(bomb.Parent).InstanceIndex;
  rec.BombOnVehicleID := bomb.InstanceIndex;
  rec.TargetPlatformID := TT3PlatformInstance(bomb.TargetObject).InstanceIndex;
  rec.SalvoSize := bomb.SalvoSize;
  rec.AvailableQuantity := bomb.Quantity;

  LaunchBomb(rec);
end;

procedure TT3ReplayClient.OnDisplayGameControl(control: integer);
var
  gs: double;
begin
  gs := 1.00;
  case control of
    1:
      begin
        GameSpeed := 1.0;

        GameStart;
      end;
    2:
      begin
        GamePause;
        GameSpeed := 0.0;
      end;
    3:
      begin ;
        if GameSpeed >= 1.0 then
        begin

          gs := Round(GameSpeed);
          if abs(gs) < 0.0001 then // nol
            gs := 1.0
          else
          begin
            gs := 2.0 * gs;
            if gs > 16.0 then
              exit;
          end;
        end;

        GameSpeed := gs;
      end;
    4 : // rewind
    begin


      GameSpeed := 1.0;
      GameStart;
    end;
  end;
end;

procedure TT3ReplayClient.OnGunFire(Sender: TObject);
var
  wpn : TT3GunOnVehicle;
  shoot : TT3GunShoot;
  pi, pl, parentShoot : TT3PlatformInstance;
  tgt : TT3PlatformInstance;
  r: TRecCmd_GunFire;
  i : Integer;
  TRIPRange : double;
begin
  inherited;
  if not (Sender is TT3GunOnVehicle) then
    Exit;

  wpn := Sender as TT3GunOnVehicle;
  if not Assigned(wpn) then       //mk
    Exit;

  pi := FindT3PlatformByID(TT3PlatformInstance(wpn.Parent).InstanceIndex);
  if not Assigned(pi) and not (pi is TT3Vehicle) then
    Exit;
  if wpn.ControlMode <> 4 then
  begin
    if not Assigned(wpn.TargetObject) then       //mk
      Exit;

    tgt := wpn.TargetObject as TT3PlatformInstance;
    if not Assigned(tgt) then
      Exit;
  end;

  if wpn.ControlMode <> 4 then
  begin
    shoot := wpn.PrepareShoot;

    if shoot <> nil then
    begin
      AssignWeaponEvent(shoot);

      if shoot.InstanceIndex = 0 then
        shoot.InstanceIndex := GetSerialPlatformID
      else
        shoot.InstanceIndex := shoot.InstanceIndex;

      r.TargetPlatformID := TT3PlatformInstance(wpn.TargetObject).InstanceIndex;
      r.HitProbability :=  Byte(shoot.Shoot);
    end;
  end
  else
  begin
    for i := 0 to SimPlatforms.itemCount - 1 do
    begin
      pl := SimPlatforms.getObject(i) as TT3PlatformInstance;

      if not(Assigned(pl)) then
        Continue;

      if not Assigned(wpn.Parent) then
        Continue;

      //cek apakah parent dari gun sendiri
      parentShoot := wpn.Parent as TT3PlatformInstance;
      if pl = parentShoot then Continue;

      //cek apakah subsurface
      if (pl.PlatformDomain = 2) and (pl.Altitude <> 0) then
        Continue;

      //cek apakah altitudenya > max altitude
      if pl.Altitude > (wpn.GunDefinition.FData.Max_Target_Altitude_Delta * C_Feet_To_Meter) then
        Continue;

      //cek max range point area
      TRIPRange := CalcRange(wpn.NGSFlashX, wpn.NGSFlashY, pl.getPositionX, pl.getPositionY);
      if ((TRIPRange) > wpn.GunDefinition.FData.NGS_EffectiveRadius) then
        Continue;

      wpn.TargetObject := pl;
      shoot := wpn.PrepareShoot;
      AssignWeaponEvent(shoot);

      if shoot.InstanceIndex = 0 then
        shoot.InstanceIndex := GetSerialPlatformID
      else
        shoot.InstanceIndex := shoot.InstanceIndex;

      r.HitProbability :=  Byte(shoot.Shoot);
    end;

    wpn.TargetObject := nil;
    r.TargetPlatformID := 0;
  end;
end;

procedure TT3ReplayClient.OnMapChange(sender: TObject);
begin
  FCompass.Width := Converter.FMap.Width;
  FCompass.Height := Converter.FMap.Height;

  Display.MapViewChanged(sender);
end;

procedure TT3ReplayClient.RemoveDetectedTrack(aTrack: TSimObject);
var
  track: TT3DetectedTrack;
  i: integer;
  found: Boolean;
begin

  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin
    track := TT3DetectedTrack(SimDetectedTrackList.getObject(i));
    found := track.TrackObject = aTrack;
    if found then
    begin
      track.FreeMe := True;
      track.AbsoluteFree := True;
      break;
    end;
  end;

end;

function TT3ReplayClient.RemoveDetectedTrack(aTrack,
  sensor: TSimObject): Boolean;
var
  track: TT3DetectedTrack;
  i: integer;
  found: Boolean;
  Count: integer;
begin
  result := false;
  found := false;

  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin
    track := TT3DetectedTrack(SimDetectedTrackList.getObject(i));
    found := track.TrackObject = aTrack;
    if found then
      break;
  end;

  if Assigned(track) and found then
  begin
    result := track.removeDetectBy(TT3DeviceUnit(sensor));
  end;
end;

procedure TT3ReplayClient.RemoveDetectedTrackByDataLink(dataLink: TT3DataLink);
var
  i,j: integer;
  track: TT3DetectedTrack;
  sensor: TT3Sensor;
begin
  for i := SimDetectedTrackList.itemCount - 1 downto 0 do
  begin
    track := SimDetectedTrackList.getObject(i) as TT3DetectedTrack;
    if Assigned(track) then
    begin
      for J := track.TrackDetectedBy.Count - 1 downto 0 do
      begin
        sensor := track.TrackDetectedBy.Items[J];
        if sensor is TT3DataLink and sensor.Equals(dataLink) then
        begin
          // hapus sensor.
          track.TrackDetectedBy.Delete(J);
        end;
      end;

      if track.TrackDetectedBy.Count < 1 then
      begin
        track.Dormant := true;
      end;
    end;
  end;
end;

procedure TT3ReplayClient.RemoveDetectedTracks(sensor: TSimObject);
var
  track: TT3DetectedTrack;
  i: integer;
begin
  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin
    track := TT3DetectedTrack(SimDetectedTrackList.getObject(i));
    if not Assigned(track) then continue;

    // track.ISBlinking := True;
    if Assigned(track) then
    begin
      if Assigned(track.OnUnmerged) then
        track.OnUnmerged(track);

      track.MergedESM := nil;
    end;

    if track.removeDetectBy(TT3DeviceUnit(sensor)) then
    // add pak andik 20042012
    begin
    end;
  end;
end;

procedure TT3ReplayClient.RemovePlatformByOperator(
  rec: TRecCmd_SelectPlatformToRemove);
var
  obj: TT3PlatformInstance;
begin
  obj := FindT3PlatformByID(rec.PlatfomID);

  // cari di SimNonReal
  if not Assigned(obj) then
  begin
    obj := FindNonRealPlatformByID(rec.PlatfomID);
  end;

  if not Assigned(obj) then
    Exit;

  if obj.ClassType = TT3Vehicle then
  begin
    // added by choco : biar pas didelete di Tote Display diberikan reason "Delete By User"
    obj.reasonDestroy := 1;

    SimPlatforms.deleteObject(obj);
    TT3Vehicle(obj).FreeChilds;
  end
  else if obj is TT3Missile then
  begin
    // added by choco : biar pas didelete di Tote Display diberikan reason "Delete By User"
    obj.reasonDestroy := 1;

    SimPlatforms.deleteObject(obj);
    TT3Missile(obj).FreeChilds;
  end
  // Tambahan Gue : Prince Achmad (biar pas didelete di Tote Display diberikan reason "Delete By User")
  else if obj is TT3Torpedo then
  begin
    obj.reasonDestroy := 1;

    SimPlatforms.deleteObject(obj);
    TT3Torpedo(obj).FreeChilds;
  end
  // ------------------------------
  else if obj.ClassType = TT3Chaff then
  begin
    // added by choco : biar pas didelete di Tote Display diberikan reason "Delete By User"
    obj.reasonDestroy := 1;

    SimPlatforms.deleteObject(obj);
    TT3Chaff(obj).FreeChilds;
  end
  else if obj.ClassType = TT3NonRealVehicle then
  begin
    obj.reasonDestroy := 1;

    simNonRealPlatform.deleteObject(obj);
    TT3NonRealVehicle(obj).FreeChilds;
  end;

  obj.FreeMe := True;
end;

function TT3ReplayClient.Remove_DetectedTrack(aTrack,
  sensor: TSimObject): Boolean;
var
  track: TT3DetectedTrack;
  i: integer;
  found: Boolean;
begin
  result := false;
  found := false;
  track := nil;

  for i := 0 to SimDetectedTrackList.itemCount - 1 do
  begin
    track := TT3DetectedTrack(SimDetectedTrackList.getObject(i));
    found := track.TrackObject = aTrack;

    if found then
      break;
  end;

  if found then
  begin
    result := track.removeDetectBy(TT3DeviceUnit(sensor));
  end;

end;

procedure TT3ReplayClient.SetCurrentPerspective(const Value: integer);
begin
  FCurrentPerspective := Value;

  if Value = 0 then // instruktur
    FIsInstructor := true
  else
    FIsInstructor := false;
end;

procedure TT3ReplayClient.SetGroupMember(member: TT3PlatformInstance);
var
  grp: T3CubicleGroup;
begin
//  if not Assigned(member) then exit;
//
//  member.isInstructor := FIsInstructor;
//
//  if FIsInstructor then begin
//    member.UnitGroup    := true;
//    member.Enable       := true;
//    member.TrackLabel   := member.Track_ID;
//  end;
//
//  grp := FScenario.CubiclesGroupsList.GetGroupByID(rec.RPGroupID) as T3CubicleGroup;
//  if grp <> nil then
//  begin
//    if grp.FData.Group_Index = 0 then exit;
//
//    grp.AddMember(rec.NewPlatformID);
//
//    result.TrackNumber  := grp.GetTrackNumber(rec.NewPlatformID);
//    result.UnitGroup    := (CurrentPerspective = grp.FData.Group_Index);
//    result.Enable       := result.UnitGroup;
//    result.TrackDomain  := result.PlatformDomain;
//    result.GroupIndex   := grp.FData.Group_Index;
//    result.TrackLabel   := FormatTrackNumber(result.TrackNumber);
//    if Result.UnitGroup then
//      result.TrackIdent := piFriend;
//  end;
//
end;

procedure TT3ReplayClient.SetOnJumpTo(const Value: TEventJumpToTime);
begin
  FOnJumpTo := Value;
end;

procedure TT3ReplayClient.SetOnLogStr(const Value: TLogStrProc);
begin
  FOnLogStr := Value;
end;

procedure TT3ReplayClient.Show;
var
  x, y: double;
begin

  if FileExists(fGeo) then
  begin
    SimMap.LoadMap(fGeo);

    if Assigned(HookedPlatform) then
    begin
      if HookedPlatform.ClassType = TT3DetectedTrack then
      begin
        x := TT3DetectedTrack(HookedPlatform).getPositionX;
        y := TT3DetectedTrack(HookedPlatform).getPositionY;
      end
      else
      begin
        x := TT3PlatformInstance(HookedPlatform).getPositionX;
        y := TT3PlatformInstance(HookedPlatform).getPositionY;
      end;
      SimMap.FMap.ZoomTo(50, x, y);
    end
    else
      SimMap.FMap.ZoomTo(50, SimMap.FMap.CenterX, SimMap.FMap.CenterY);
  end;
  Display.Show;
end;

procedure TT3ReplayClient.UnAssignedAllEvent;
var
  i : integer;
  obj : TObject;
begin
  // safely remove
  for i := 0 to SimPlatforms.itemCount - 1 do begin
    obj := SimPlatforms.getObject(i);
    if obj is TT3PlatformInstance then
      UnassignPlatformInstanceEvent(obj as TT3PlatformInstance);
  end;

  for i := 0 to SimDevices.itemCount - 1 do begin
    obj := SimDevices.getObject(i);
    if obj is TT3Weapon then
      UnassignWeaponEvent(obj as TT3Weapon)
    else
    if obj is TT3Sensor then
      UnassignSensorEvent(obj as TT3Sensor)
    else
    if obj is TT3CounterMeasure then
      UnassignECMEvent(obj as TT3CounterMeasure);
  end;

  for i := 0 to SimWeapons.itemCount - 1 do begin
    obj := SimWeapons.getObject(i);
    if obj is TT3Weapon then
      UnassignWeaponEvent(obj as TT3Weapon);
  end;

end;

procedure TT3ReplayClient.ResetReplay;
begin
  // reset all global var
  FCurrentPerspective := 0;
  FTrackNumber        := 1000;
  FTrackNumberWeapon  := 4000;
end;

procedure TT3ReplayClient.ResetScenario;
begin
  inherited;

  FMainVTime.Reset(0);
  FMainVTime.DateTimeOffset := FScenario.Resource_alloc.FData.Game_Start_Time;

  SimDetectedTrackList.ClearAndRemove;
end;

end.
