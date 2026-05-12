unit uT3ServerEventManager;

interface

uses uT3EventManager, tttData, Classes, Sysutils, uGameData_TTT, uNetHandle_Server,
  uT3Unit, uT3Listener, Math;

type

  TT3ServerEventManager = class(TT3EventManager)
  private
  public
    procedure OnPlatformDestroy(Sender : TObject);                                    override;
    procedure OnPlatformHancur(Sender: TObject; Target: string; reasondestroy : Byte);override;
    procedure OnPlatformSelected(Sender : TObject);                                   override;
    procedure OnPlatformControlled(Sender : TObject);                                 override;
    procedure OnPlatformOrderedControlChange(OrderID : Integer; OrderType : Integer;
                                             PlatfomID : Integer; OrderParam : Single);override;
    procedure OnPlatformFreeMe(Sender : TObject; Value : boolean); override;

    procedure OnSyncTarget(aWeapon, aTarget : TObject);                override;

     //farid
    procedure OnGuidance_Engage(aShipID, aParentID : TT3PlatformInstance;
              MissileID : Integer; IsHaveLaunch : Byte); override;

    //sensor event
    procedure OnSensorDetect(Sender : TObject; detected : TObject;Value : boolean;
      aIFF : Boolean );  override;
    procedure OnSensorRemoved(Sender : TObject);                                      override;
    procedure OnRadarControlMode(Sender : TObject;Mode : TRadarControlMode);          override;
    procedure OnSonarControlMode(Sender : TObject;Mode : TSonarControlMode);          override;
    procedure OnUpdateActualCable(VIndex, SensorType, SensorIndex : integer;
      aValue : Double); override;

    //weapon evet
    procedure OnWeaponLaunched(Sender : TObject; Target : TObject);                   override;
    procedure OnWeaponTarget(Sender : TObject; Target : TObject);                     override;
    procedure OnWeaponPropertyChange(Sender : TObject);                               override;
    procedure OnWeaponHybrid(sender : TObject);                                       override; //farid

	  procedure OnWeaponHit(Sender : TObject; Target : TObject; Lethality : integer;
      FreeWeapon: Boolean); override;
    procedure OnWeaponOut(Sender : TObject; reasondestroy : Byte); override; //ham 04052012
    procedure OnGunUpdateQuantity(Sender : TObject);               override;

    procedure OnPlatformDamageChanged(sender: TObject;
       const dmgType: TDamageItemType); override;

    procedure OnECMLaunched(Sender : TObject);                                              override;
    procedure OnECMQuantityChange(Sender : TObject);                                        override;
    procedure OnECMJammingSuccess(Sender : TObject; jammedObject : TJammedObjectParameter); override;
    procedure OnRadarNoiseJammingSuccess(Sender : TObject;
      JammedOject : TJammedObjectParameter;  Value : Boolean);  override;

    // game setting event handle
    procedure OnPropGameSettingIntChange(Sender : TObject;Props : TPropsID; Value : Integer);                override;
    procedure OnPropGameSettingDoubleChange(Sender : TObject;Props : TPropsID; Value : Double);              override;
    procedure OnPropGameSettingBoolChange(Sender : TObject;Props : TPropsID; Value : Boolean);               override;
    procedure OnPropGameSettingByteChange(Sender : TObject;Props : TPropsID; Value : Byte);                  override;

    procedure OnLaunchMisile(aParentID, aMissileID, aTargetID, aSalvo : Integer); override;
    procedure OnLaunchTorpedo(aParentID, aMissileID, aTargetID, aSalvo : Integer); override;
    procedure OnLaunchBomb(aParentID, aMissileID, aTargetID, aSalvo : Integer); override;
    procedure OnSonarEvent(aShipID, aSonarIndex, aEventMode : Integer); override;
    procedure OnRadarEvent(aShipID, aRadarIndex, aEventMode : Integer); override;
    procedure OnIffEvent(aShipID, aIffIndex, aIffType, aEventMode : Integer); override;
    procedure OnDeployContinousEvent(aShipID, aObjIndex : Integer;
              aObjType, aObjMode : Byte; aObjDepth, aObjSpacing : Double;
              aObjQty : Integer; aDeployUntilNextWaypoint : Boolean); override;
    procedure OnDeploySonobuoy(aShipID, aSonoIndex : Integer; aSonoMode : Byte;
              aDepth : Double); override;
    procedure OnDeployMine(aShipID, aMineIndex : Integer; aDepth : Double); override;
    procedure OnCountermeasureEvent(aShipID, aCMIndex,
              aEventMode : Integer); override;
    procedure OnDatalinkEvent(aShipID, aDatalinkIndex, aDatalinkType,
              aEventMode : Integer); override;

    procedure OnWaypointRemoveOwner(aShipID : Integer); override;

    procedure OnPlatformPositonChange(Sender : TObject);                        override;
    // check day time -> event for sonar visual
    procedure OnCheckDateTime(sender : TObject); override;

    procedure OnAfterLanding(Sender : TObject); override;
    procedure OnWaypointEnd(aShipID : Integer; aSpeed, aHeading : Double); override;
    procedure OnNextWaypointChange(WaypointID, aShipID: Integer; aSpeed,
      aBearing, PosX, PosY: Double); override;
    procedure OnWaypointDestinationChange(aShipID: Integer; Long, Lat : Double); override;
    procedure OnDeploySonar(VIndex, SensorType, SensorIndex, ControlMode, Status: integer); override;
    procedure OnUpdateFormSonar(VIndex, SensorType, SensorIndex, Counter, param, order : Integer); override;

    procedure OnDepthChecker(Sender : TObject);override;

    {Nando}
    procedure OnReceiveGameSpeedForRecord(Cmd : TRecCmd_GameCtrl); override;
    procedure OnReceiveMessageHandling(Cmd : TRecSendMessage);override;

    //choco : Guidance stale time reach
    procedure OnGuidanceStaleTimeReached(aParent, aTarget : TT3PlatformInstance; aDT : Double); override;
    procedure OnGuidanceStandoffReached(aParent, aTarget : TT3PlatformInstance); override;
    procedure OnGuidanceLaunchWeapon(aParent, aTarget : TT3PlatformInstance); override;

    {Station Guidance}
//    procedure OnGuidanceStationReached(ve : TT3PlatformInstance; val : Boolean); override;
//    procedure OnGuidanceStationUpdateSpeed(ve : TT3PlatformInstance; aSpeed : Double); override;
//    procedure OnGuidanceStationUpdateHeading(ve : TT3PlatformInstance; aHeading : Double); override;

    {Datalink}
    procedure OnDatalinkPoolRequest(Sender : TObject;PooledPlatformID : Integer); override;
    procedure OnDatalinkTracksUpdate(Sender : TObject); override;
    procedure OnPUDatalinkEMCON(Sender : TObject; PooledPlatformID : Integer); override;
    procedure OnNCSDatalinkEMCON(Sender : TObject); override;
  end;

implementation

uses {uT3Unit,} uT3Vehicle, uSimMgr_Server,
     uSimObjects, uT3Visual, uT3Radar, uT3Sonar, uT3Sensor, uT3Weapon, uT3Sonobuoy,
     uT3Missile, uT3OtherSensor, uT3Torpedo, uT3Gun, uT3Bomb,
     uT3CounterMeasure, uDBAsset_Vehicle, uT3HybridMissile, newClassASTT,
     uBaseCoordSystem,uT3DataLink, uT3HybridOnVehicle,

     {hanya untuk debuging, diremove klo sls}
     ufMainGServer, uT3RadarNoiseJammer;


{ TT3ServerEventManager }


procedure TT3ServerEventManager.OnECMJammingSuccess(Sender : TObject;
  jammedObject: TJammedObjectParameter);
var
  recECMCommand : TRecECMCommand;
begin
  inherited;

  recECMCommand.SessionID           := simMgrServer.SessionID;
  recECMCommand.OrderID             := CORD_ID_SD_EVTJAMSUCCESS;

  recECMCommand.JammedObjectType    := Byte(jammedObject.PJammedObjectType);
  recECMCommand.JammedObjectID      := jammedObject.PJammedObjectID;
  recECMCommand.JammedObjectOwnerID := jammedObject.PJammedObjectOwnerID;

  recECMCommand.JammerObjectID      := TT3CounterMeasure(Sender).InstanceIndex;
  recECMCommand.JammerObjectOwnerID := TT3PlatformInstance(TT3CounterMeasure(Sender)
                                       .Parent).InstanceIndex;

  simMgrServer.NetSendECMCommand(recECMCommand);
end;

procedure TT3ServerEventManager.OnECMLaunched(Sender: TObject);
begin
  inherited;
  if (Sender is TT3Chaff) then begin
    simMgrServer.SimPlatforms.addObject(TSimObject(Sender));
  end;

  if (Sender is TT3AirBubble) then begin
    simMgrServer.SimPlatforms.addObject(TSimObject(Sender));
  end;

  if (Sender is TT3Sonobuoy) then begin
    simMgrServer.SimPlatforms.addObject(TSimObject(Sender));
  end;
end;

procedure TT3ServerEventManager.OnECMQuantityChange(Sender: TObject);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnGuidanceLaunchWeapon(aParent,
  aTarget: TT3PlatformInstance);
var
  i, validWeaponID : Integer;
  bearing : Double;
  isGetValidWeapon : Boolean;

  rMis : TRecCmd_LaunchMissile;
  rec: TRecCmd_Set_Quantity;

  wpn : TT3Weapon;
  mov : TT3MissilesOnVehicle;
//  tov : TT3TorpedoesOnVehicle; //choco : jangan dihapus
begin
  inherited;

  if not Assigned(aTarget) then
    Exit;

  bearing := CalcBearing(aParent.PosX, aParent.PosY, aTarget.PosX, aTarget.PosY);

  if TT3Vehicle(aParent).isEngagementRangeReached and
     not TT3Vehicle(aParent).isEngagementWeaponFire then
  begin
    TT3Vehicle(aParent).isEngagementWeaponFire := True;

    case aTarget.PlatformDomain of
      0 : //air : shoot target with missile
      begin
        {$REGION 'Choco : Dicomment atas request PM dan QOC.'}
//        isGetValidWeapon := False;
//        validWeaponID := 0;
//
//        for i := 0 to TT3Vehicle(aParent).Weapons.Count - 1 do
//        begin
//          wpn := TT3Vehicle(aParent).Weapons.Items[i];
//
//          if wpn is TT3MissilesOnVehicle then
//          begin
//            mov := wpn as TT3MissilesOnVehicle;
//
//            if mov.IsMissileCapableToTrack(aTarget) and (mov.Quantity > 0) then
//            begin
//              validWeaponID := mov.InstanceIndex;
//              isGetValidWeapon := True;
//              Break;
//            end;
//          end;
//        end;
//
//        if isGetValidWeapon then
//        begin
//          mov := TT3Vehicle(aParent).getWeapon(validWeaponID, TT3MissilesOnVehicle) as TT3MissilesOnVehicle;
//
//          rMis.SessionID := simMgrServer.SessionID;
//          rMis.ParentPlatformID := aParent.InstanceIndex;
//          rMis.TargetPlatformID := aTarget.InstanceIndex;
//          rMis.MissileID := mov.InstanceIndex;
//          rMis.ProjectileInstanceIndex := 0;
//          rMis.LauncherID := 0;
//          rMis.LaunchAngle := Round(bearing);
//          rMis.IsEngagementWeapon := True;
//
//          simMgrServer.NetSendUDP_WaypointCmdLaunchMissile(rMis);
//        end;
        {$ENDREGION}
      end;
      1 : //surface : shoot target with missile (primary) or torpedo (secondary)
      begin
        isGetValidWeapon := False;
        validWeaponID := 0;

        for i := 0 to TT3Vehicle(aParent).Weapons.Count - 1 do
        begin
          wpn := TT3Vehicle(aParent).Weapons.Items[i];

          if wpn is TT3MissilesOnVehicle then
          begin
            mov := wpn as TT3MissilesOnVehicle;

            if mov.IsMissileCapableToTrack(aTarget) and (mov.Quantity > 0) then
            begin
              validWeaponID := mov.InstanceIndex;
              isGetValidWeapon := True;
              Break;
            end;

            {$REGION 'Choco : Dicomment atas request PM dan QOC.'}
//          end
//          else if (wpn is TT3TorpedoesOnVehicle) and not isGetValidWeapon then
//          begin
//            tov := wpn as TT3TorpedoesOnVehicle;
//
//            if tov.IsTorpedoCapableToTrack(aTarget) and (tov.Quantity > 0) then
//            begin
//              validWeaponID := tov.InstanceIndex;
//              isGetValidWeapon := True;
//              Break;
//            end;
            {$ENDREGION}
          end;
        end;

        if isGetValidWeapon then
        begin
          wpn := TT3Vehicle(aParent).getWeapon(validWeaponID, TT3MissilesOnVehicle) as TT3Weapon;

          if not Assigned(wpn) then
            wpn := TT3Vehicle(aParent).getWeapon(validWeaponID, TT3TorpedoesOnVehicle) as TT3Weapon;

          if Assigned(wpn) then
          begin
            rMis.SessionID := simMgrServer.SessionID;
            rMis.ParentPlatformID := aParent.InstanceIndex;
            rMis.TargetPlatformID := aTarget.InstanceIndex;
            rMis.ProjectileInstanceIndex := 0;
            rMis.LauncherID := 0;
            rMis.LaunchAngle := Round(bearing);
            rMis.IsEngagementWeapon := True;

            if wpn is TT3MissilesOnVehicle then
            begin
              mov := wpn as TT3MissilesOnVehicle;

              rMis.MissileID := mov.InstanceIndex;
              rMis.FiringMode := Byte(mfmRBl);//mov.FiringMode;// sementara default dulu Firing Modenya RBL

              rec.PlatfomID := TT3Vehicle(aParent).InstanceIndex;
              rec.IDUnit := mov.InstanceIndex;
              rec.OrderID := CORD_ID_QUANTITY;
              rec.OrderType := CORD_TYPE_WEAPON;
              rec.OrderQuantity := mov.Quantity - 1;
              rec.IDName := '';
              rec.SessionID := 0;

              simMgrServer.netRecv_SetQuantity(@rec, SizeOf(rec));

              simMgrServer.NetSendUDP_WaypointCmdLaunchMissile(rMis);
              {$REGION 'Choco : Dicomment atas request PM dan QOC.'}
//            end
//            else if wpn is TT3TorpedoesOnVehicle then
//            begin
//              tov := wpn as TT3TorpedoesOnVehicle;
//
//              rMis.MissileID := tov.InstanceIndex;
//
//              simMgrServer.NetSendUDP_WaypointCmdLaunchTorpedo(rMis);
              {$ENDREGION}
            end;
          end;
        end;
      end;
      2 : //sub-surface : shoot target with torpedo
      begin
        {$REGION 'Choco : Dicomment atas request PM dan QOC.'}
//        isGetValidWeapon := False;
//        validWeaponID := 0;
//
//        for i := 0 to TT3Vehicle(aParent).Weapons.Count - 1 do
//        begin
//          wpn := TT3Vehicle(aParent).Weapons.Items[i];
//
//          if wpn is TT3TorpedoesOnVehicle then
//          begin
//            tov := wpn as TT3TorpedoesOnVehicle;
//
//            if tov.IsTorpedoCapableToTrack(aTarget) and (tov.Quantity > 0) then
//            begin
//              validWeaponID := tov.InstanceIndex;
//              isGetValidWeapon := True;
//              Break;
//            end;
//          end;
//        end;
//
//        if isGetValidWeapon then
//        begin
//          tov := TT3Vehicle(aParent).getWeapon(validWeaponID, TT3TorpedoesOnVehicle) as TT3TorpedoesOnVehicle;
//
//          rMis.SessionID := simMgrServer.SessionID;
//          rMis.ParentPlatformID := aParent.InstanceIndex;
//          rMis.TargetPlatformID := aTarget.InstanceIndex;
//          rMis.MissileID := tov.InstanceIndex;
//          rMis.ProjectileInstanceIndex := 0;
//          rMis.IsEngagementWeapon := True;
//
//          simMgrServer.NetSendUDP_WaypointCmdLaunchTorpedo(rMis);
//        end;
        {$ENDREGION}
      end;
    end;
  end;
end;

procedure TT3ServerEventManager.OnGuidanceStaleTimeReached(aParent,
  aTarget: TT3PlatformInstance; aDT : Double);
var
  i : Integer;
  device : TT3DeviceUnit;
  longestSensorRange, range : Double;
  isCountDownOn : Boolean;
  rec : TRecCmd_Platform;
begin
  inherited;

  longestSensorRange := -9999;

  for i := 0 to TT3Vehicle(aParent).Devices.Count - 1 do
  begin
    device := TT3Vehicle(aParent).Devices.Items[i];

    if (device is TT3Radar) and
       ((TT3Radar(device).ControlMode = rcmSearchTrack) or (TT3Radar(device).ControlMode = rcmTrack)) and
       (TT3Radar(device).RadarDefinition.FDef.Detection_Range > longestSensorRange) then
    begin
      longestSensorRange := TT3Radar(device).RadarDefinition.FDef.Detection_Range;
    end
    else if (device is TT3Sonar) and
            (TT3Sonar(device).ControlMode = scmActive) and
            (TT3Sonar(device).SonarDefinition.FDef.Active_Detect_Range > longestSensorRange) then
    begin
      longestSensorRange := TT3Sonar(device).SonarDefinition.FDef.Active_Detect_Range;
    end
    else if (device is TT3Visual) and
            (simMgrServer.GameDefaults.FData.Max_Visual_Range > longestSensorRange) then
    begin
      longestSensorRange := simMgrServer.GameDefaults.FData.Max_Visual_Range;
    end
    else if (device is TT3EOSensor) and
            (TT3EOSensor(device).OperationalStatus = sopOn) and
            (TT3EOSensor(device).EODefinition.FEO_Def.Max_Range > longestSensorRange) then
    begin
      longestSensorRange := TT3EOSensor(device).EODefinition.FEO_Def.Max_Range;
    end;
  end;

  isCountDownOn := False;

  if Assigned(aTarget) then
  begin
    range := CalcRange(aParent.PosX, aParent.PosY, aTarget.PosX, aTarget.PosY);

    if range > longestSensorRange then
      isCountDownOn := True;
  end
  else
    isCountDownOn := True;

  if isCountDownOn then
  begin
    TT3Vehicle(aParent).StaleTimeCounter := TT3Vehicle(aParent).StaleTimeCounter + aDT;

    case TT3Vehicle(aParent).VehicleDefinition.GuidanceType of
      vgtOutrun :
      begin
        if TT3Vehicle(aParent).StaleTimeCounter >=
           simMgrServer.GameDefaults.FData.Outrun_Guide_Stale_Target_Time then
        begin
          TT3Vehicle(aParent).StaleTimeCounter := 0;

          rec.SessionID := simMgrServer.SessionID;
          rec.PlatfomID := aParent.InstanceIndex;
          rec.OrderID := CORD_ID_ACTIVATION;
          rec.OrderType :=  Byte(vgtStraightLine);
          rec.OrderParam := 0.0;

          simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
        end;
      end;
      vgtEngagement :
      begin
        if TT3Vehicle(aParent).StaleTimeCounter >=
           simMgrServer.GameDefaults.FData.Engage_Guide_Stale_Target_Time then
        begin
          TT3Vehicle(aParent).StaleTimeCounter := 0;

          rec.SessionID := simMgrServer.SessionID;
          rec.PlatfomID := aParent.InstanceIndex;
          rec.OrderID := CORD_ID_ACTIVATION;
          rec.OrderType :=  Byte(vgtStraightLine);
          rec.OrderParam := 0.0;

          simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
        end;
      end;
      vgtShadow :
      begin
        if TT3Vehicle(aParent).StaleTimeCounter >=
           simMgrServer.GameDefaults.FData.Shadow_Guide_Stale_Target_Time then
        begin
          TT3Vehicle(aParent).StaleTimeCounter := 0;

          rec.SessionID := simMgrServer.SessionID;
          rec.PlatfomID := aParent.InstanceIndex;
          rec.OrderID := CORD_ID_ACTIVATION;
          rec.OrderType :=  Byte(vgtStraightLine);
          rec.OrderParam := 0.0;

          simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
        end;
      end;
    end;
  end;
end;

procedure TT3ServerEventManager.OnGuidanceStandoffReached(aParent,
  aTarget: TT3PlatformInstance);
var
  range : Double;

  rec : TRecCmd_Platform;
begin
  inherited;

  if not Assigned(aTarget) then
    Exit;

  range := CalcRange(aParent.PosX, aParent.PosY, aTarget.PosX, aTarget.PosY);

  if (range <= TT3Vehicle(aParent).EngageDistance) and
     not TT3Vehicle(aParent).isEngagementRangeReached then
  begin
    TT3Vehicle(aParent).isEngagementRangeReached := True;

    rec.SessionID := simMgrServer.SessionID;
    rec.PlatfomID := aParent.InstanceIndex;
    rec.OrderID := CORD_ID_MOVE;
    rec.OrderType :=  CORD_TYPE_SPEED;
    rec.OrderParam := 0.0;

    simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
  end;
end;

//procedure TT3ServerEventManager.OnGuidanceStationReached(
//  ve: TT3PlatformInstance; val : Boolean);
//var
//  rec : TRecCmd_Platform;
//begin
//  inherited;
//
//  if not Assigned(ve) then
//    Exit;
//
//  rec.SessionID := simMgrServer.SessionID;
//  rec.PlatfomID := ve.InstanceIndex;
//  rec.OrderID := CORD_ID_MOVE;
//  rec.OrderType :=  CORD_TYPE_STATION_STOP;
//
//  if val then
//    rec.OrderParam := 1
//  else
//    rec.OrderParam := 0;
//
//  simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
//end;
//
//procedure TT3ServerEventManager.OnGuidanceStationUpdateHeading(
//  ve: TT3PlatformInstance; aHeading: Double);
//var
//  rec : TRecCmd_Platform;
//begin
//  inherited;
//
//  if not Assigned(ve) then
//    Exit;
//
//  rec.SessionID := simMgrServer.SessionID;
//  rec.PlatfomID := ve.InstanceIndex;
//  rec.OrderID   := CORD_ID_MOVE;
//  rec.OrderType :=  CORD_TYPE_COURSE;
//  rec.OrderParam := aHeading;
//
//  simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
//end;

//procedure TT3ServerEventManager.OnGuidanceStationUpdateSpeed(
//  ve: TT3PlatformInstance; aSpeed: Double);
//var
//  rec : TRecCmd_Platform;
//begin
//  inherited;
//
//  if not Assigned(ve) then
//    Exit;
//
//  rec.SessionID := simMgrServer.SessionID;
//  rec.PlatfomID := ve.InstanceIndex;
//  rec.OrderID := CORD_ID_MOVE;
//  rec.OrderType :=  CORD_TYPE_SPEED;
//  rec.OrderParam := aSpeed;
//
//  simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
//end;

procedure TT3ServerEventManager.OnGuidance_Engage(aShipID, aParentID: TT3PlatformInstance;
          MissileID : Integer; IsHaveLaunch : Byte);
begin
  inherited;
end;

procedure TT3ServerEventManager.OnPlatformControlled(Sender: TObject);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnPlatformFreeMe(Sender: TObject;
  Value: boolean);
begin

  if Assigned(OnLogEventStr) then
    OnLogEventStr('TT3ServerEventManager.OnPlatformFreeMe', 'FreeMe Event By : ' + TT3PlatformInstance(Sender).InstanceName
                  + '; InstanceIndex : ' + IntToStr(TT3PlatformInstance(Sender).InstanceIndex));

  simMgrServer.netSend_PlatformFreeMe(Sender);
end;

procedure TT3ServerEventManager.OnPlatformOrderedControlChange(OrderID,
  OrderType, PlatfomID: Integer; OrderParam: Single);
begin
  inherited;

end;


procedure TT3ServerEventManager.OnPlatformPositonChange(Sender: TObject);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnPlatformSelected(Sender: TObject);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnPropGameSettingBoolChange(Sender : TObject;Props: TPropsID;
  Value: Boolean);
begin
  inherited;
end;

procedure TT3ServerEventManager.OnPropGameSettingByteChange(Sender : TObject;Props: TPropsID;
  Value: Byte);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnPropGameSettingDoubleChange(Sender : TObject;Props: TPropsID;
  Value: Double);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnPropGameSettingIntChange(Sender : TObject;Props: TPropsID;
  Value: Integer);
begin
  inherited;
  case Props of
    psTimeRemoveWreck: simMgrServer.WreckTimeChange(Value);
  end;
end;

procedure TT3ServerEventManager.OnPUDatalinkEMCON(Sender: TObject; PooledPlatformID : Integer);
var
  rec : TRecCmd_DataLink;
  i : Integer;
begin
  inherited;

  // initialize record
  with rec do
  begin
    platformID          := 0;
    PUStatus            := 0;

    for I := 0 to Length(PooledTracksID) - 1 do
      PooledTracksID[i] := 0;
  end;

  if Sender is TT3DataLink then
  begin
    rec.DataLinkID := TT3DataLink(Sender).IDLink;
    rec.Force      := TT3DataLink(Sender).GroupForce;
    rec.Band       := TT3DataLink(Sender).BandType;
    rec.OrderDL    := odlPUEMCONActivated;
    rec.PooledPUID := PooledPlatformID;
  end;

  // Send to all for request pool sensor from server
  simMgrServer.netSend_Cmd_Datalink(rec);

  fMainGServer.DatalinkUpdate(Sender);
end;

procedure TT3ServerEventManager.OnRadarControlMode(Sender: TObject;
  Mode: TRadarControlMode);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnSensorDetect(Sender, detected: TObject;
  Value: boolean; aIFF : Boolean);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnSensorRemoved(Sender: TObject);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnSonarControlMode(Sender: TObject;
  Mode: TSonarControlMode);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnWaypointDestinationChange(
  aShipID: Integer; Long, Lat: Double);
var
  pi : TT3PlatformInstance;
begin
  inherited;

  pi := simMgrServer.FindT3PlatformByID(aShipID);

  with TT3Vehicle(pi).Waypoints.NextWaypoint.FData do
  begin
    Waypoint_Longitude  := Long;
    Waypoint_Latitude   := Lat;
  end;
end;

procedure TT3ServerEventManager.OnWaypointEnd(aShipID: Integer; aSpeed,
  aHeading: Double);
var
  pi : TT3PlatformInstance;
  rec : TRecSync_WaypointData;
begin
  inherited;

  pi := simMgrServer.FindT3PlatformByID(aShipID);

  if pi is TT3Vehicle then
  begin
    case TT3Vehicle(pi).Waypoints.Termination of
      wtLH, wtTH : begin
        TVehicle_Definition(TT3Vehicle(pi).UnitDefinition).GuidanceType := vgtStraightLine;
        TT3Vehicle(pi).OrderedHeading := aHeading;
        TT3Vehicle(pi).OrderedSpeed := aSpeed;
      end;
    end;
  end;

  rec.OrderID := CORD_ID_WAYPOINT_END;
  rec.PlatformID := aShipID;
  rec.WaypointID := 0;
  rec.Speed := Floor(aSpeed);
  rec.Course := Floor(aHeading);
  rec.PosX := 0;
  rec.PosY := 0;
 // rec.PosX := TT3Vehicle(pi).Waypoints.NextWaypoint.FData.Waypoint_Latitude;
 // rec.PosY := TT3Vehicle(pi).Waypoints.NextWaypoint.FData.Waypoint_Longitude;

  simMgrServer.NetSendTCP_Synch_WaypointData(rec);
end;

procedure TT3ServerEventManager.OnWaypointRemoveOwner(aShipID: Integer);
var
  recPH: TRecPlatformHancur;
  ObjPi: TT3PlatformInstance;
begin
  inherited;

  ObjPi := simMgrServer.FindT3PlatformByID(aShipID);

  if (Assigned(ObjPi)) and (ObjPi is TT3PlatformInstance) then
  begin
    recPH.SenderID := aShipID;
    recPH.Target   := 'Waypoint';
    recPH.reasondestroy := 23;

    simMgrServer.NetSendPlatformHancur(recPH);

    if ObjPi is TT3Vehicle then
    begin
      TT3Vehicle(ObjPi).FreeChilds;
    end;

    ObjPi.FreeMe := True;
  end;
end;

procedure TT3ServerEventManager.OnWeaponHit(Sender, Target: TObject;
  Lethality: integer; FreeWeapon: Boolean);
var
  RecSend : TRecPlatformHitPlatform;
begin
  inherited;

  if (Sender is TT3PlatformInstance) and (Target is TT3PlatformInstance) then
  begin
    if Sender is TT3GunShoot then
      RecSend.SenderID     := TT3GunShoot(Sender).WeaponOnVehicleID
    else
      RecSend.SenderID     := TT3PlatformInstance(Sender).InstanceIndex;

    RecSend.TargetID     := TT3PlatformInstance(Target).InstanceIndex;
    RecSend.Lethality    := Lethality;
    RecSend.FreeWeapon   := FreeWeapon;

    simMgrServer.NetSendPlatformHitPlatform(RecSend);
  end;
end;

procedure TT3ServerEventManager.OnWeaponHybrid(sender: TObject);
var
  rec : TrecCmd_LaunchHybrid;
  MisHy : TT3HybridMissile;
//  torpedo : TT3Torpedo;
begin
  inherited;
//  torpedo := TT3HybridMissile(sender).LoadedTorpedo;
//  torpedo.PosX := TT3HybridMissile(sender).PosX;
//  torpedo.PosY := TT3HybridMissile(sender).PosY;
//  torpedo.PosZ := TT3HybridMissile(sender).PosZ;

  if sender is TT3HybridMissile then
  begin
    MisHy := TT3HybridMissile(sender);
    rec.WpnID := MisHy.InstanceIndex;
    rec.Launched := True;

    MisHy.LoadedTorpedo := TT3Torpedo(simMgrServer.CreateTorpedoProjectileHybrid(TT3PlatformInstance(MisHy.Owner).InstanceIndex,
      MisHy.WeaponOnVehicleID, 0));

//    MisHy.LoadedTorpedo.Launched := True;

    MisHy.LoadedTorpedo.Parent := nil;

    rec.NewID := MisHy.LoadedTorpedo.InstanceIndex;

    simMgrServer.NetSendUDP_HybridlaunchTorpedo(rec);
  end;
end;

//ham 04052012
procedure TT3ServerEventManager.OnWeaponOut(Sender: TObject;
  reasondestroy: Byte);
var
  RecSend : TRecWeaponOut;
  i : Integer;
  sObj : TSimObject;
  v : TT3Vehicle;
begin
  inherited;

  if (Sender is TT3PlatformInstance) then
  begin
    RecSend.SenderID     := TT3PlatformInstance(Sender).InstanceIndex;
    RecSend.reasondestroy:= reasondestroy;

    simMgrServer.NetSendWeaponOut(RecSend);

    if Sender is TT3HybridMissile then
    begin
      if reasonDestroy <> 23 then
      begin
         TT3HybridMissile(Sender).LoadedTorpedo.Free;

        if Assigned(OnLogEventStr) then
        begin
          OnLogEventStr('TT3ServerEventManager.OnWeaponOut', 'Destroy torpedo carried by missile, reasondestroy : ' +
          IntToStr(reasondestroy));
        end;
      end;
    end;

    TT3PlatformInstance(sender).FreeChilds;
    TT3PlatformInstance(sender).FreeMe := True;
    TT3PlatformInstance(sender).AbsoluteFree := True;

    for i := 0 to simMgrServer.SimPlatforms.itemCount - 1 do
    begin
      sObj := simMgrServer.SimPlatforms.getObject(i);

      if sObj is TT3Vehicle then
      begin
        v := TT3Vehicle(sObj);

        if (Sender is TT3Missile) and
           (v.InstanceIndex = TT3Missile(Sender).EngagementParentID) then
          v.isEngagementWeaponFire := False
        else if (Sender is TT3Torpedo) and
           (v.InstanceIndex = TT3Torpedo(Sender).EngagementParentID) then
          v.isEngagementWeaponFire := False;
      end;
    end;
  end;
end;

procedure TT3ServerEventManager.OnPlatformHancur(Sender: TObject ;
          Target: string; reasondestroy : Byte);
var
  RecPH : TRecPlatformHancur;
  ObjPi : TT3PlatformInstance;
begin
  inherited;

  if (Sender is TT3PlatformInstance) then
  begin
    ObjPi := TT3PlatformInstance(Sender);

    RecPH.SenderID     := ObjPi.InstanceIndex;
    RecPH.Target       := Target;
    RecPH.reasondestroy:= reasondestroy;

    if ObjPi is TT3Vehicle then
    begin
      simMgrServer.RemoveDatalinkPlatform(ObjPi.InstanceIndex);
    end;

    simMgrServer.NetSendPlatformHancur(RecPH);

    if ObjPi is TT3Vehicle then
    begin
//      TT3Vehicle(ObjPi).FreeChilds;
    end;

    ObjPi.FreeMe := True;

    if ObjPi is TT3Chaff then
    begin
      ObjPi.AbsoluteFree := True;
    end;
  end;
end;

procedure TT3ServerEventManager.OnWeaponLaunched(Sender, Target: TObject);
var
  wpn: TT3Weapon;
begin
  inherited;

  if (Sender is TT3Weapon) then begin
    wpn := TT3Weapon(sender);

    if (Sender is TT3Torpedo) or (Sender is TT3Missile) then begin
      simMgrServer.SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

      if (Sender is TT3Torpedo) then
         OnLogEventStr('TT3ServerEventManager.OnWeaponLaunched', 'launch torpedo');
    end;

    if (Sender is TT3Bomb)then begin
      simMgrServer.SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;
    end;

    if (Sender is TT3GunShoot) then begin
      simMgrServer.SimWeapons.addObject(TSimObject(Sender));
    end;
  end;
end;

procedure TT3ServerEventManager.OnWeaponPropertyChange(Sender: TObject);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnGunUpdateQuantity(Sender : TObject);
begin
  inherited;
end;

procedure TT3ServerEventManager.OnIffEvent(aShipID, aIffIndex, aIffType,
  aEventMode: Integer);
begin
  inherited;

  case aEventMode of
    0 : simMgrServer.NetSendUDP_WaypointCmdSensor
        (aShipID, CSENSOR_TYPE_IFF, aIffIndex, aIffType, Byte(sopOn));
    1 : simMgrServer.NetSendUDP_WaypointCmdSensor
        (aShipID, CSENSOR_TYPE_IFF, aIffIndex, aIffType, Byte(sopOff));
  end;
end;

procedure TT3ServerEventManager.OnWeaponTarget(Sender, Target: TObject);
begin
  inherited;
end;

procedure TT3ServerEventManager.OnPlatformDamageChanged(sender: TObject;
       const dmgType: TDamageItemType);
var rSynch : TRecUDP_Synch_Obj;
    v : TT3Vehicle;
begin
  inherited;

  if dmgType = diOverall then begin
    if sender is TT3Vehicle then
    begin
      v := sender as TT3Vehicle;

      rSynch.PlatformID   := v.InstanceIndex;
      rSynch.PlatformType := CPT_PLATFORM_VEHICLE;
      rSynch.VehicleID    := v.InstanceIndex;

      rSynch.SynchType    := CST_Health_Percent;
      rSynch.dValue1      := v.HealthPercent;
      rSynch.dValue2      := v.Health;

      if v.HealthPercent <= 0 then
        rSynch.bValue :=  True
      else
        rSynch.bValue :=  False;

      simMgrServer.netSend_SynchObject(rSynch);    //synchhealth
    end;
  end;

// if TT3Vehicle(sender).HealthPercent <= 0 then
{  rSynch.PlatformID   := r^.ParentPlatformID;
  rSynch.PlatformType := CPT_PLATFORM_VEHICLE_MEMBER;
  rSynch.ObjectType   := CV_Guns;
  rSynch.ObjectID     := r^.GunID;
  rSynch.SynchType    := CSO_Number;
  rSynch.iValue1      :=}
end;

procedure TT3ServerEventManager.OnPlatformDestroy(Sender: TObject);
var
  i : Integer;
  tesObj : TT3PlatformInstance;
  rec : TRecCmd_Platform;
begin
  inherited;

  // clean this object from all weapon targets if any
  RemoveFromTargetedRefTrack(Sender);

//  for i := 0 to simMgrServer.SimPlatforms.itemCount - 1 do
//  begin
//    tObj := TT3PlatformInstance(simMgrServer.SimPlatforms.getObject(i));
//    if not Assigned(tObj) then
//      continue;
//
//    if tObj is TT3Weapon then      //mk
//    begin
//      if Assigned(TT3Weapon(tObj).TargetObject) then
//      begin
//        if TT3Weapon(tObj).TargetObject is TT3Vehicle then
//        begin
//           if TT3Weapon(tObj).TargetObject.Equals(Sender) then
//           begin
//              TT3Weapon(tObj).TargetObject := nil;
//           end;
//        end;
//      end;
//    end;
//  end;

  for i := 0 to simMgrServer.SimPlatforms.itemCount - 1 do
  begin
    tesObj := simMgrServer.SimPlatforms.getObject(i) as TT3PlatformInstance;

    if TT3Vehicle(tesObj).CircleTrack = TT3PlatformInstance(Sender) then
    begin
      rec.SessionID := simMgrServer.SessionID;
      rec.PlatfomID := TT3Vehicle(tesObj).InstanceIndex;
      rec.OrderID := CORD_ID_ACTIVATION;
      rec.OrderType :=  Byte(vgtStraightLine);
      rec.OrderParam := 0.0;

      simMgrServer.netRecv_platform_cmd(@rec, SizeOf(rec));
      TT3Vehicle(tesObj).CircleTrack := nil;
    end
    else
    if TT3Vehicle(tesObj).EngageVehicle = TT3PlatformInstance(Sender) then
      TT3Vehicle(tesObj).EngageVehicle := nil;
  end;
end;

//nando - waypoint launch bom
procedure TT3ServerEventManager.OnLaunchBomb(aParentID, aMissileID, aTargetID,
  aSalvo: Integer);
var
  i : Integer;
begin
  inherited;

  for i := 0 to aSalvo - 1 do
    simMgrServer.WaypointEventLaunchBomb(aParentID,aTargetID,aMissileID);
end;

procedure TT3ServerEventManager.OnLaunchMisile(aParentID, aMissileID, aTargetID,
  aSalvo : Integer);
var
  rMisEnvi : TrecMissile_Envi;
  rMisSyncData : TrecSinc_RBLW;
  rMisProp : TRecFiringModeWeapon;
  rMis : TRecCmd_LaunchMissile;
  OwnShip, TargetShip : TT3Vehicle;
  wpn : TObject;
  mis : TT3MissilesOnVehicle;
  i, j, LauncherID, LauncherAngle : Integer;
  Launch : TFitted_Weap_Launcher_On_Board;
begin
  OwnShip := TT3Vehicle(simMgrServer.FindT3PlatformByID(aParentID));
  TargetShip := TT3Vehicle(simMgrServer.FindT3PlatformByID(aTargetID));
  wpn := OwnShip.getWeapon(aMissileID, TT3MissilesOnVehicle);
  mis := wpn as TT3MissilesOnVehicle;

  LauncherID := 0;
  LauncherAngle := 0;

  for i := 0 to aSalvo - 1 do
  begin
    with mis.MissileDefinition do
    begin
      if FLaunchs.Count > 0 then
      begin
        for j := 0 to FLaunchs.Count - 1 do
        begin
          Launch := TFitted_Weap_Launcher_On_Board(FLaunchs.Items[j]);

          if Launch.FData.Launcher_Qty > 0 then
          begin
            if Launch.FData.Launcher_Type > 8 then
              LauncherID := Launch.FData.Launcher_Type - 8
            else
              LauncherID := Launch.FData.Launcher_Type;

            LauncherAngle := Launch.FData.Launcher_Angle;

            Break;
          end;
        end;
      end
      else
      begin
        LauncherID := 0;
        LauncherAngle := Round(CalcBearing(OwnShip.PosX,OwnShip.PosY,
          TargetShip.PosX,TargetShip.PosY));
      end;
    end;

    //miss envy
    with rMisEnvi do
    begin
      SessionID     := simMgrServer.SessionID;
      platformID    := OwnShip.InstanceIndex;
      WeaponIndex   := mis.InstanceIndex;
      WeaponName    := mis.InstanceName;
      Missile_Kind  := Integer(mis.WeaponCategory);
      MIssile_Method:= Integer(mis.FiringMode);
      isHybrid      := (wpn is TT3HybridOnVehicle);
    end;

    //sync missile data
    with rMisSyncData do
    begin
      SessionID     := simMgrServer.SessionID;
      cmd := 8;
      RBLWIndex         := 1;
      RBLWLauncherIndex := LauncherID;
      LauncherNumber    := LauncherID;
      launchDelay       := 5;
      WeaponIndex       := mis.InstanceIndex;
      WeaponName        := mis.InstanceName;

      RBLW_PointX       := mis.RBLW_PointX;
      RBLW_POintY       := mis.RBLW_PointY;
      platformID        := OwnShip.InstanceIndex;

      if Assigned(TargetShip) then
        Target_Index := TargetShip.InstanceIndex
      else
        Target_Index := 0;

      SeekerTurnOnRange := mis.SeekerRangeTurn;
      HAFO              := mis.HitMode.HAFO;
      CruiseAltitude    := mis.DefaultAltitude;

      PopUp := 1;
    end;

    //sync missile property
    with rMisProp do
    begin
      SessionID := simMgrServer.SessionID;
      MissileID := mis.InstanceIndex;
      FiringMode := byte(mfmRBL);
      PlatformID := OwnShip.InstanceIndex;
    end;
    simMgrServer.NetSendUDP_WaypointSyncMissileData(rMisEnvi, rMisSyncData, rMisProp);

    //launch
    with rMis do
    begin
      SessionID := simMgrServer.SessionID;
      ParentPlatformID := aParentID;
      TargetPlatformID := aTargetID;
      MissileID := aMissileID;
      LauncherID := LauncherID;
      LaunchAngle := LauncherAngle;
      ProjectileInstanceIndex := 0;
    end;
    simMgrServer.NetSendUDP_WaypointCmdLaunchMissile(rMis);
  end;
end;

procedure TT3ServerEventManager.OnLaunchTorpedo(aParentID, aMissileID,
  aTargetID, aSalvo : Integer);
var
  rMis : TRecCmd_LaunchMissile;
  i : Integer;
begin
  rMis.SessionID := simMgrServer.SessionID;

  rMis.ParentPlatformID := aParentID;
  rMis.TargetPlatformID := aTargetID;
  rMis.MissileID := aMissileID;
  rMis.ProjectileInstanceIndex := 0;

  for i := 0 to aSalvo - 1 do
    simMgrServer.NetSendUDP_WaypointCmdLaunchTorpedo(rMis);
end;

//waypoint Radar Event
procedure TT3ServerEventManager.OnRadarEvent(aShipID, aRadarIndex,
  aEventMode: Integer);
begin
  inherited;

  case aEventMode of
    0 : simMgrServer.NetSendUDP_WaypointCmdSensor
        (aShipID, CSENSOR_TYPE_RADAR, aRadarIndex, CORD_ID_ControlMode, Byte(rcmSearchTrack));
    1 : simMgrServer.NetSendUDP_WaypointCmdSensor
        (aShipID, CSENSOR_TYPE_RADAR, aRadarIndex, CORD_ID_ControlMode, Byte(rcmOff));
  end;
end;

procedure TT3ServerEventManager.OnRadarNoiseJammingSuccess(Sender : TObject;
          JammedOject : TJammedObjectParameter;  Value : Boolean);
var
  recECMCommand : TrecRadarNoiseJammer;
begin
  inherited;

  recECMCommand.SessionID := simMgrServer.SessionID;

  if Value then
    recECMCommand.OrderID := CORD_ID_RN_JAMSUCCESS
  else
    recECMCommand.OrderID := CORD_ID_RN_JAMFAILED;

  recECMCommand.JammerID                  := TT3RadarNoiseJammerOnVehicle(Sender).InstanceIndex;
  recECMCommand.JammerPlatformOwnerID     := TT3PlatformInstance(TT3RadarNoiseJammerOnVehicle
                                             (Sender).Parent).InstanceIndex;
  recECMCommand.ObjectSuccesJammedID      := JammedOject.PJammedObjectID;
  recECMCommand.ObjectSuccesJammedOwnerID := JammedOject.PJammedObjectOwnerID;

  simMgrServer.netSend_CmdRadarNoiseJammer(recECMCommand);
end;

procedure TT3ServerEventManager.OnReceiveGameSpeedForRecord(
  Cmd: TRecCmd_GameCtrl);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnReceiveMessageHandling(Cmd: TRecSendMessage);
begin
  inherited;

end;

procedure TT3ServerEventManager.OnDatalinkPoolRequest(Sender: TObject;
  PooledPlatformID: Integer);
var
  rec : TRecCmd_DataLink;
  i : Integer;
begin
  inherited;

  // initialize record
  with rec do
  begin
    platformID          := 0;
    PUStatus            := 0;

    for I := 0 to Length(PooledTracksID) - 1 do
      PooledTracksID[i] := 0;
  end;

  if Sender is TT3DataLink then
  begin
    rec.DataLinkID := TT3DataLink(Sender).IDLink;
    rec.Force      := TT3DataLink(Sender).GroupForce;
    rec.Band       := TT3DataLink(Sender).BandType;
    rec.OrderDL    := odlPool;
    rec.PooledPUID := PooledPlatformID;
  end;

  // Send to all for request pool sensor from server
  simMgrServer.netSend_Cmd_Datalink(rec);

//  if Assigned(OnLogEventStr) then
//    OnLogEventStr('Datalink ' + IntToStr(TT3DataLink(Sender).IDLink) +
//          ': Pooling ' + IntToStr(PooledPlatformID));
end;

procedure TT3ServerEventManager.OnDatalinkTracksUpdate(Sender: TObject);
begin
  inherited;

  // Update log data link track
  fMainGServer.DatalinkUpdate(Sender);
end;

//waypoint Sonar Event
procedure TT3ServerEventManager.OnSonarEvent(aShipID, aSonarIndex,
  aEventMode: Integer);
begin
  inherited;

  case aEventMode of
    0 : simMgrServer.NetSendUDP_WaypointCmdSensor
        (aShipID, CSENSOR_TYPE_SONAR, aSonarIndex, CORD_ID_ControlMode, Byte(scmActive));
    1 : simMgrServer.NetSendUDP_WaypointCmdSensor
        (aShipID, CSENSOR_TYPE_SONAR, aSonarIndex, CORD_ID_ControlMode, Byte(scmOff));
  end;
end;

procedure TT3ServerEventManager.OnSyncTarget(aWeapon, aTarget: TObject);
var
  rec : ^TRec_SyncTarget;
begin
  inherited;

  New(rec);
  with rec^ do
  begin
    WeaponID  := TT3Weapon(aWeapon).InstanceIndex;
    TargetID  := TT3PlatformInstance(aTarget).InstanceIndex;
  end;

  simMgrServer.netSend_SyncBearingMissile(rec^);
end;

procedure TT3ServerEventManager.OnCheckDateTime(sender : TObject);
begin
  inherited;

  if sender is TT3Sensor then
    TT3Sensor(sender).Date_Time := simMgrServer.GameTIME;
end;

procedure TT3ServerEventManager.OnCountermeasureEvent(aShipID, aCMIndex,
  aEventMode: Integer);
begin
  inherited;

  case aEventMode of
    1 : simMgrServer.WaypointEventCountermeasure(aShipID, aCMIndex, Byte(esOn));
    2 : simMgrServer.WaypointEventCountermeasure(aShipID, aCMIndex, Byte(esOff));
  end;
end;

procedure TT3ServerEventManager.OnNCSDatalinkEMCON(Sender: TObject);
var
  rec : TRecCmd_DataLink;
  i : Integer;
begin
  inherited;

  // initialize record
  with rec do
  begin
    platformID          := 0;
    PUStatus            := 0;

    for I := 0 to Length(PooledTracksID) - 1 do
      PooledTracksID[i] := 0;
  end;

  if Sender is TT3DataLink then
  begin
    rec.DataLinkID := TT3DataLink(Sender).IDLink;
    rec.Force      := TT3DataLink(Sender).GroupForce;
    rec.Band       := TT3DataLink(Sender).BandType;
    rec.OrderDL    := odlNCSEMCONActivated;
    rec.PooledPUID := 0;
  end;

  // Send to all for request pool sensor from server
  simMgrServer.netSend_Cmd_Datalink(rec);

  fMainGServer.DatalinkUpdate(Sender);
end;

procedure TT3ServerEventManager.OnNextWaypointChange(WaypointID,
  aShipID: Integer; aSpeed, aBearing, PosX, PosY: Double);
var
  rec : TRecSync_WaypointData;
begin
  inherited;
  if Assigned(OnLogEventStr) then
    OnLogEventStr('TT3ServerEventManager.OnNextWaypointChangeTo3D',
      'WaypointID =  ' + IntToStr(WaypointID) +
          ': Speed ' + FloatToStr(aSpeed));

  rec.OrderID := CORD_ID_WAYPOINT_START;
  rec.PlatformID := aShipID;
  rec.WaypointID := WaypointID;
  rec.Speed := Floor(aSpeed);
  rec.Course := Floor(aBearing);
  rec.PosX := PosX;
  rec.PosY := PosY;

  simMgrServer.NetSendTCP_Synch_WaypointData(rec);
end;

procedure TT3ServerEventManager.OnDatalinkEvent(aShipID, aDatalinkIndex,
  aDatalinkType, aEventMode: Integer);
var
  pi : TT3PlatformInstance;
  link : TT3DataLink;
begin
  inherited;

  pi := simMgrServer.FindT3PlatformByID(aShipID);
  link := simMgrServer.DataLinkManager.getDatalinkOnPU(pi);

  if Assigned(pi) and Assigned(link) then
    simMgrServer.WaypointEventDatalink(aShipID, link.IDLink, aEventMode);
end;

procedure TT3ServerEventManager.OnDeployContinousEvent(aShipID,
  aObjIndex: Integer; aObjType, aObjMode: Byte; aObjDepth, aObjSpacing: Double;
  aObjQty : Integer; aDeployUntilNextWaypoint: Boolean);
begin
  inherited;

  simMgrServer.SyncWaypointContinousEvent(aShipID, aObjIndex, aObjType, aObjMode,
    aObjDepth, aObjSpacing, aObjQty, aDeployUntilNextWaypoint);
end;

procedure TT3ServerEventManager.OnDeployMine(aShipID, aMineIndex: Integer;
  aDepth: Double);
begin
  inherited;

  simMgrServer.WaypointEventDeployMine(aShipID, aMineIndex, aDepth);
end;

procedure TT3ServerEventManager.OnDeploySonar(VIndex, SensorType, SensorIndex,
  ControlMode, Status: integer);
var
  RecSend : TRecCmd_Sensor;
begin
  inherited;

  RecSend.PlatformID := VIndex;
  RecSend.SensorType := SensorType;
  RecSend.SensorID   := SensorIndex;
  RecSend.OrderID    := ControlMode;
  RecSend.OrderParam := Status;

  simMgrServer.NetSendDeploy(RecSend);
end;

procedure TT3ServerEventManager.OnDeploySonobuoy(aShipID, aSonoIndex: Integer;
  aSonoMode: Byte; aDepth: Double);
begin
  inherited;

  simMgrServer.WaypointEventDeploySonobuoy(aShipID, aSonoIndex, aSonoMode,
    aDepth);
end;

procedure TT3ServerEventManager.OnDepthChecker(Sender: TObject);
var
  rec : TRec_MapData;
  isNeedCheck : boolean;
begin
  if Sender is TT3PlatformInstance then
  begin
    // klasifikasi lagi aj biar g semuanya minta pengecekan.
    isNeedCheck := (Sender is TT3Vehicle) or (Sender is TT3Torpedo);

    //cek apakah sender = Air => sementara tidak di proses
    if Sender is TT3Vehicle then begin
      if (TT3Vehicle(Sender).VehicleDefinition.FData.Platform_Domain = vhdAir) then
        isNeedCheck := False;
    end;

    if isNeedCheck then begin
      rec.SessionID  := simMgrServer.SessionID;
      rec.PlatformID := TT3PlatformInstance(Sender).InstanceIndex;
      rec.OrderID    := CORD_MAPS_DEPTH;
      rec.X          := TT3PlatformInstance(Sender).PosX;
      rec.Y          := TT3PlatformInstance(Sender).PosY;

      simMgrServer.NetSendMapStub(rec);
    end;
  end;
end;

procedure TT3ServerEventManager.OnUpdateActualCable(VIndex, SensorType,
  SensorIndex: integer; aValue: Double);
var
  recSend : TRecCmd_UpdateActualCable;
begin
  inherited;
  recSend.PlatformID := VIndex;
  recSend.SensorType := SensorType;
  recSend.SensorID   := SensorIndex;
  recSend.value      := aValue;

  simMgrServer.NetSendUpdateAcualCable(recSend);
end;

procedure TT3ServerEventManager.OnUpdateFormSonar(VIndex, SensorType,
  SensorIndex, Counter, param, order: Integer);
var
  RecSend : TRecCmd_UpdateSonar;
begin
  inherited;

  RecSend.PlatformID := VIndex;
  RecSend.SensorType := SensorType;
  RecSend.SensorID   := SensorIndex;
  RecSend.Counter    := Counter;
  RecSend.param      := param;
  RecSend.order      := order;

  simMgrServer.NetSendUpdateSonar(RecSend);
end;

procedure TT3ServerEventManager.OnAfterLanding(Sender : TObject);
begin

end;

end.
