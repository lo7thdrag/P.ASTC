unit uT3ClientEventManager;

interface

uses uT3EventManager, tttData, SysUtils, Variants, uT3Listener, uT3Radar,
  uT3SimManager, uT3Unit, uBaseCoordSystem, uDBAsset_Fitted, uDynamicOverlay,
  uT3MissileDetail, uT3Vehicle, uGameData_TTT, ComCtrls, uT3OtherSensor,
  uT3CounterMeasure, Classes, uDBAsset_GameEnvironment, uT3RadarNoiseJammer,
  uMainDynamicShape, uMainStaticShape, uMainOverlay,
  Math, uDBFormation;

type
  TT3ClientEventManager = class(TT3EventManager)
    procedure OnPlatformDestroy(Sender : TObject);      override;
    procedure OnPlatformSelected(Sender : TObject);     override;
    procedure OnPlatformControlled(Sender : TObject);   override;
    procedure OnPlatformOrderedControl(Sender : TObject;
                                       Order : TPlatformOrderedControl;
                                       Value : double); override;
    procedure OnPlatformOrderedControlChange(OrderID : Integer; OrderType : Integer;
                                             PlatfomID : Integer; OrderParam : Single); override;
    procedure OnDetectedTrackSelected(Sender : TObject);
    procedure OnPlatformAssigned(Sender : TObject); override;
    procedure onEngageTrack(Track : String); override;
    procedure UpdateEmconCheckBox(pflist : TT3PlatformInstance; StateBtn : Boolean);override;
    procedure OnPlatformPropertyChange(Sender : TObject); override;
    procedure OnVehicleSensorStateChange(Sender : TT3Vehicle); override;

    //andik
    procedure OnLastUpdateTimePlatform(str : string); override;

    //farid
    procedure OnGuidance_Engage(aShipID, aParentID : TT3PlatformInstance ;
                                MissileId : Integer; IsHaveLaunch : Byte); override;

    //vehicle
    procedure OnUpdateWeaponVehicle(Sender : TObject); override;

    //envi
    procedure OnUpdateEnvi(index : integer; Value: Double;
                GameEnvironment : TGame_Environment_Definition); override;
    procedure OnCheckDateTime(sender : TObject); override;

    //sensor event
    procedure OnSensorDetect(Sender : TObject; detected : TObject;Value : boolean; aIFF : boolean );  override;
    procedure OnSensorRemoved(Sender : TObject);                                      override;
    procedure OnSensorOperationalStatus(Sender : TObject;Mode : TSensorOperationalStatus);  override;
    procedure OnRadarControlMode(Sender : TObject;Mode : TRadarControlMode);                override;
    procedure OnSonarControlMode(Sender : TObject;Mode : TSonarControlMode);                override;
    procedure onIFFTransponderStatus(Sender : TObject;Mode : TSensorOperationalStatus);   override;
    procedure OnIFFInterrogatorStatus(Sender : TObject;Mode : TSensorOperationalStatus);  override;
    procedure OnSonobuoyPassiveDetect(Sender, detected: TObject; aValue : Byte); override;
    //weapon event
    procedure OnWeaponLaunched(Sender : TObject; Target : TObject); override;
    procedure OnWeaponDestroy(Sender : TObject);                    override;
    procedure OnWeaponTarget(Sender : TObject; Target : TObject);   override;
    procedure OnWeaponPropertyChange(Sender : TObject);             override;
    procedure OnSyncTarget(aWeapon, aTarget : TObject);                      override;
    procedure OnPropertyIntChange(Sender : TObject;Props : TPropsID; Value : Integer); override;

    //gun event
    procedure OnGunUpdateQuantity(Sender : TObject);   override;

    procedure OnPlatformDamageChanged(sender: TObject;
       const dmgType: TDamageItemType); override;
    //ecm event
    procedure OnECMLaunched(Sender : TObject);        override;
	  procedure OnECMDestroy(Sender : TObject);         override;
    procedure OnECMQuantityChange(Sender : TObject);  override;
    procedure OnECMlistUpdated(Sender : TObject);     override;

    // game setting event handle
    procedure OnPropGameSettingIntChange(Sender : TObject;Props : TPropsID; Value : Integer);   override;
    procedure OnPropGameSettingDoubleChange(Sender : TObject;Props : TPropsID; Value : Double); override;
    procedure OnPropGameSettingBoolChange(Sender : TObject;Props : TPropsID; Value : Boolean);  override;
    procedure OnPropGameSettingByteChange(Sender : TObject;Props : TPropsID; Value : Byte);     override;

    procedure OnRadarRemoveAssignedPlatform(Sender : TObject); override;

    // event datalink
    procedure OnDataLinkUpdated(Sender : TObject); override;
    procedure OnDatalinkTracksUpdate(Sender : TObject);override;
    procedure OnDatalinkOffLine(Sender : TObject);override;

    //event FireControl
    procedure OnFireControlUpdated(Sender : TObject); override;

    //nando waypoint event
    procedure OnWaypointChange(index : integer);override;

    //choco
    procedure OnWaypointChangeVectac(WpnCarrierID, index : integer); override;
    procedure OnWaypointDataChange(rec : TrecSinc_Waypoint); override;
    function FindSelectedNodeBy(aLevel, aIndex : Byte; aText : string): TTreeNode;

    //detected track event merged
    procedure OnDetectedTrackMerged(Sender: TObject);
    procedure OnDetectedTrackUnmerged(Sender: TObject);

    procedure OnFiringModeChange(mis:TObject); override;
    procedure OnEngagementChange(mis:TObject); override;

    procedure OnLaunchMisile(aParentID, aMissileID, aTargetID, aSalvo : Integer); override;
    procedure OnLaunchTorpedo(aParentID, aMissileID, aTargetID, aSalvo : Integer); override;
    procedure OnLaunchBomb(aParentID, aMissileID, aTargetID, aSalvo : Integer); override;
    procedure OnSonarEvent(aShipID, aSonarIndex, aEventMode : Integer); override;
    procedure OnRadarEvent(aShipID, aRadarIndex, aEventMode : Integer); override;
    procedure OnIffEvent(aShipID, aIffIndex, aIffType, aEventMode : Integer); override;

    procedure OnDetectedRemoved(Sender : TObject);  //detected track

    //farah
    procedure OnTerminateOverlay; override;

    //Prince
    procedure OnOverlayStaticShape(r: TRecCmd_OverlayStaticShape);
    procedure OnOverlayDynamicShape(r: TRecCmd_OverlayDynamicShape);
    procedure OnOverlayTemplate(r: TRecCmd_OverlayTemplate);
    procedure OnDynamicTrack(r: TRecCmd_OverlayDynamicTrack);

    procedure OnTransferSonobuoy(OldParentID, NewParentID, SonoID: Integer; Flag: Boolean);
    procedure OnTorpedoSyncPanel(ParentID, Tipe, WeaponIndex : Integer; Param1 : string);
    procedure OnBombSyncPanel(ParentID, WeaponIndex : Integer; Notarget : Boolean);

    procedure OnWeaponInOut(SenderID: integer; reasondestroy : Byte) ;          override;
    procedure OnPlatformHancurin(SenderID : Integer; Target: string; reasondestroy : Byte);override;

    //Non Real time
    procedure OnNonRealTimeChanged(Sender : TObject);                           override;
    procedure OnAfterLanding(Sender : TObject);                                 override;
	  procedure OnWeaponHitByServer(SenderID, TargetID, Lethality : integer) ;    override;
    procedure OnPlatformPositonChange(Sender : TObject);                        override;
    procedure OnNonRealTimeAdded(Sender : TObject);                             override;
    procedure OnMapNeedUpdate(Sender : TObject);                                override;

    procedure AbortMissileLaunch(aParentId, aMissileId : Integer); override;

    //procedure OnPlatformFreeMe(Sender : TObject;Value : boolean);             override;
    //Added Nando & Andi
    procedure OnIFFSensorDetect(aShip, aSensor, aTarget : TObject; value, value2 : boolean; mode1,mode2,mode3,mode3C : string);  override;
    procedure OnModeSearchIFF(aSensor : TObject; value : byte); override;
    procedure OnWaypointEnd(aShipID : Integer; aSpeed, aHeading : Double); override;
    procedure OnWaypointDestinationChange(aShipID: Integer; Long, Lat : Double); override;

    procedure OnWaypointRemoveOwner(aShipID : Integer); override;

    procedure OnUpdateTvCubicleGroup; override;
    procedure OnVehicleHealthChange(ve: TT3Vehicle); override;
    procedure OnVehicleSystemStateChange(ve: TT3Vehicle); override;

    procedure OnRemoteViewerRun();
    procedure OnSnapshotEventDone( msg : string );
    procedure OnDetectedTrackDestroy(Sender : TObject);
    procedure OnVectactChange(Sender : TObject); overload; override;
    procedure OnVectactChange(r : TRecVectac); overload; override;

    //decoy
    procedure OnDecoysDeployed(aParent: TObject); override;

    {Nando}
    procedure OnReceiveGameSpeedForRecord(Cmd : TRecCmd_GameCtrl); override;
    procedure OnReceiveMessageHandling(Cmd : TRecSendMessage);override;
    procedure OnReceiveModifComm(Cmd : TRecModifComm);override;

    //bebe
//    procedure OnGuidanceStationReached(aParent : TT3PlatformInstance; val : Boolean); override;
//    procedure OnGuidanceStationUpdateSpeed(aParent : TT3PlatformInstance; aSpeed : Double); override;
//    procedure OnGuidanceStationUpdateHeading(aParent : TT3PlatformInstance; aHeading : Double); override;

    //NIL FOCUS TRACK
    procedure OnFocustrackNill(sender : TObject);

    procedure OnUpdateIFFList(sensor : TT3IFFSensor; value : byte);     override;
    procedure OnRefreshIFFForm(sensor : TT3IFFSensor);                  override;
    procedure OnUpdateSonarDeploy(piObj : TT3Vehicle; value : byte; cable : Double); override;
    procedure OnUpdateRadarNoiseJammer(jammer : TObject; value : byte); override;
    procedure OnECMCommand(JammerObj : TObject);                       override;
    procedure OnUpdateBombProperty(value : Integer);                   override;
    procedure OnUpdateMineProperty(value : Double);                    override;
    procedure OnUpdateTorpedoProperty(rec : TRecTorpedoProperty);      override;

    procedure OnUpdateTacticalTote;                                     override;
    procedure OnLogStatusTactical(str : string);                        override;
    procedure OnUpdateDatalinkTote(idOrderDL : Integer);                override;

    //Formation Update form
    procedure OnUpdateFormationList;                                    override;
    procedure OnUpdateFormationMembers(formation : TFormationRefine);   override;
    procedure OnDetectabilityChange(aShip: TT3PlatformInstance);        override;


  end;

implementation

uses ufTacticalDisplay,
     uSimObjects, uSimMgr_Client, uT3Sonar, uT3Sensor, uT3Weapon, uT3Sonobuoy,
     uT3Missile, uT3DetectedTrack, ufToteDisplay,
     uT3Torpedo, uT3Gun, uT3Bomb, uWaypointEditor,
     uT3DataLink, ufmWeapon, uDBAssetObject,
     uLibSettingTTT, ufEditNonRealTimeTrack, uDBCubicles, uT3Mine,
     uDBAsset_Vehicle, uT3Visual, uT3HybridMissile, ufLog, ufmWeaponCtrl,
     ufrmGunAutoManual, ufrmGunCIWS, uOverlayOther, uT3Common,
     uFormationEditorForm, uFormationAddRemMembers,
     uOverlayTemplateEditor;

{ TT3ClientEventManager }

procedure TT3ClientEventManager.OnDetectedTrackSelected(Sender: TObject);
begin
  if Sender is TT3DetectedTrack then
  begin
    if TT3DetectedTrack(Sender).Selected then
    begin
      frmTacticalDisplay.UpdateHookedInfo(Sender);

      if TT3DetectedTrack(Sender).TrackObject is TT3DeviceUnit then
        frmTacticalDisplay.SetSelectedTrack(TT3DetectedTrack(Sender))
      else if TT3DetectedTrack(Sender).TrackObject is TT3PlatformInstance then
        frmTacticalDisplay.SetSelectedTrack(TT3DetectedTrack(Sender));

      if frmTacticalDisplay.FRangeRingOnHook then
        simMgrClient.MyRingHookedPlatfom := TSimObject(Sender);

      if frmTacticalDisplay.FHookOnPlatform then
        simMgrClient.MyCenterHookedPlatfom := TSimObject(Sender);
    end;
  end
  else if Sender is TT3ESMTrack then
  begin
    frmTacticalDisplay.UpdateHookedInfo(Sender);
    frmTacticalDisplay.SetSelectedTrack(TT3ESMTrack(Sender));
  end;
end;

procedure TT3ClientEventManager.OnPlatformAssigned(Sender : TObject);
begin
  if not Assigned(Sender) then
    Exit;

  if Sender is TT3PlatformInstance then
  begin
    if (TT3PlatformInstance(Sender).IsAssigned) then
      frmTacticalDisplay.StatusBar1.Panels[7].Bevel := pbRaised
    else
      frmTacticalDisplay.StatusBar1.Panels[7].Bevel := pbNone;
    //frmTacticalDisplay.StatusBar1.Panels[7].Style := psOwnerDraw;
  end;
end;

procedure TT3ClientEventManager.OnCheckDateTime(sender : TObject);
begin
  inherited;

  if sender is TT3Sensor then
    TT3Sensor(sender).Date_Time := simMgrClient.GameTIME;
end;

procedure TT3ClientEventManager.OnUpdateBombProperty(value: Integer);
begin
  inherited;

  frmTacticalDisplay.fmWeapon1.EdtBombControlSalvo.Text := FloatToStr(value);
end;

procedure TT3ClientEventManager.OnUpdateDatalinkTote(idOrderDL: Integer);
begin
  inherited;

  case idOrderDL of
    odlStop:
      begin
        frmToteDisplay.btnStopDataLink.Enabled := false;
        frmToteDisplay.btnPlayDataLink.Enabled := true;
      end;
    odlPlay:
      begin
        frmToteDisplay.btnStopDataLink.Enabled := true;
        frmToteDisplay.btnPlayDataLink.Enabled := false;
      end;
  end;
end;

procedure TT3ClientEventManager.OnUpdateEnvi(index : integer; Value: Double;
  GameEnvironment : TGame_Environment_Definition);
var
  StrTime:string;
  SecondTime : Integer;
begin
  inherited;

  if index = 1 then
  begin
     frmToteDisplay.edtWindSpeed.Text := FloatToStr(Value);

     frmToteDisplay.lblWindRelativeSpeed.Caption := FormatSpeed(Value);
     frmToteDisplay.lblSpeedWIndTrue.Caption := FormatSpeed(Value);
     frmTacticalDisplay.Label21.Caption := FormatSpeed(Value * C_MS_To_KNOTS);

     if Value > 50 then    //add wahyu 6-03-2012
     begin
      frmToteDisplay.edtWindSpeed.Text := FloatToStr(0);
      if simMgrClient.ISInstructor then
        frmTacticalDisplay.addStatus('The value Input wind speed Is To High');
     end;
  end
  else if index = 2 then
  begin
     frmToteDisplay.edtWindDir.Text := FloatToStr(Value);
     frmToteDisplay.lblDirectionWindTrue.Caption := FormatCourse(Value);
     frmToteDisplay.lblWindRelativeDirection.Caption := FormatCourse(Value);
     frmToteDisplay.rw.degree := ValidateDegree(Value);
     frmTacticalDisplay.Label10.Caption := FloatToStr(Value);
  end
  else if index = 3 then
  begin
     frmToteDisplay.edtDayVis.Text := FloatToStr(Value);
     frmToteDisplay.trbDaytimeVisual.Position := Round(Value);
  end
  else if index = 4 then
  begin
     frmToteDisplay.edtNightVis.Text := FloatToStr(Value);
     frmToteDisplay.trbNighttimeVisual.Position := Round(Value);
  end
  else if index = 14 then
  begin
     frmToteDisplay.edtOceanCurrentSpeed.Text := FloatToStr(Value);
     frmToteDisplay.lblOceanCurrentSpeed.Caption := FormatFloat('00.0', Value);

     if Value > 50 then  //add wahyu 6-03-2012
     begin
      frmToteDisplay.edtOceanCurrentSpeed.Text  := FloatToStr(0);
      if simMgrClient.ISInstructor then
        frmTacticalDisplay.addStatus('The value Input ocean current Is To High');
     end;
  end
  else if index = 15 then
  begin
    frmToteDisplay.edtOceanCurrentDirection.Text := FloatToStr(Value);
    frmToteDisplay.lblOceanCurrentDirection.Caption := FormatFloat('000.0', Value);
    frmToteDisplay.rw1.degree := ValidateDegree(Value);
  end;

  case index of
    E_Wind_Speed                      :
                                      begin
                                         frmToteDisplay.edtWindSpeed.Text := FormatFloat('0.00', Value);

                                         frmToteDisplay.lblWindRelativeSpeed.Caption := FormatSpeed(Value);
                                         frmToteDisplay.lblSpeedWIndTrue.Caption := FormatSpeed(Value);
                                         frmTacticalDisplay.Label21.Caption := FormatSpeed(Value * C_MS_To_KNOTS);

                                         if Value > 50 then    //add wahyu 6-03-2012
                                         begin
                                          frmToteDisplay.edtWindSpeed.Text := FloatToStr(0);
                                          if simMgrClient.ISInstructor then
                                            frmTacticalDisplay.addStatus('The value Input wind speed Is To High');
                                         end;
                                      end;
    E_Wind_Direction                  :
                                      begin
                                         frmToteDisplay.edtWindDir.Text := FormatFloat('0.00', Value);
                                         frmToteDisplay.lblDirectionWindTrue.Caption := FormatCourse(Value);
                                         frmToteDisplay.lblWindRelativeDirection.Caption := FormatCourse(Value);
                                         frmToteDisplay.rw.degree := ValidateDegree(Value);
                                         frmTacticalDisplay.Label10.Caption := FormatFloat('0.00', Value);
                                      end;
    E_Daytime_Visual_Modifier         :
                                      begin
                                         frmToteDisplay.edtDayVis.Text := FormatFloat('0.00', Value);
                                         frmToteDisplay.trbDaytimeVisual.Position := Round(Value);

                                        StrTime := FormatDateTime('HH:NN:SS', simMgrClient.GameTIME);
                                        SecondTime := TimeStringToSecond(StrTime);

                                        if (SecondTime >= GameEnvironment.FData.Sunrise) and
                                          (SecondTime <= GameEnvironment.FData.Sunset) then
                                        begin
                                          with frmToteDisplay do
                                          begin
                                            lblVisibilityactorsTime.Caption := 'DayTime';
                                            lblVisibilityFactorsElectroOptical.Caption :=
                                              FormatFloat('0.00', Value) + '%';
                                          end;
                                        end;
                                      end;
    E_Nighttime_Visual_Modifier       :
                                      begin
                                         frmToteDisplay.edtNightVis.Text := FormatFloat('0.00', Value);
                                         frmToteDisplay.trbNighttimeVisual.Position := Round(Value);

                                        StrTime := FormatDateTime('HH:NN:SS', simMgrClient.GameTIME);
                                        SecondTime := TimeStringToSecond(StrTime);

                                        if (SecondTime >= GameEnvironment.FData.Sunrise) and
                                          (SecondTime <= GameEnvironment.FData.Sunset) then
                                        begin
                                          frmToteDisplay.lblVisibilityactorsTime.Caption := 'DayTime';
                                        end
                                        else
                                        begin
                                          with frmToteDisplay do
                                          begin
                                            lblVisibilityactorsTime.Caption := 'NightTime';
                                            lblVisibilityFactorsElectroOptical.Caption :=
                                              FormatFloat('0.00', Value) + '%';
                                           end;
                                        end;
                                      end;
    E_Daytime_Infrared_Modifier       :
                                      begin
                                        frmToteDisplay.edtDayInfra.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbDaytimeInfra.Position := Round(Value);

                                        StrTime := FormatDateTime('HH:NN:SS', simMgrClient.GameTIME);
                                        SecondTime := TimeStringToSecond(StrTime);

                                        if (SecondTime >= GameEnvironment.FData.Sunrise) and
                                          (SecondTime <= GameEnvironment.FData.Sunset) then
                                        begin
                                          with frmToteDisplay do
                                          begin
                                            lblVisibilityactorsTime.Caption := 'DayTime';
                                            lblVisibilityFactorsnfrared.Caption :=
                                              FormatFloat('0.00', Value) + '%';
                                          end;
                                        end;
                                      end;
    E_Nighttime_Infrared_Modifier     :
                                      begin
                                        frmToteDisplay.edtNightInfra.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbNighttimeInfra.Position := Round(Value);

                                        StrTime := FormatDateTime('HH:NN:SS', simMgrClient.GameTIME);
                                        SecondTime := TimeStringToSecond(StrTime);

                                        if (SecondTime >= GameEnvironment.FData.Sunrise) and
                                          (SecondTime <= GameEnvironment.FData.Sunset) then
                                        begin
                                          frmToteDisplay.lblVisibilityactorsTime.Caption := 'DayTime';
                                        end
                                        else
                                        begin
                                          with frmToteDisplay do
                                          begin
                                            lblVisibilityactorsTime.Caption := 'NightTime';
                                            lblVisibilityFactorsElectroOptical.Caption :=
                                              FormatFloat('0.00', Value) + '%';
                                           end;
                                        end;
                                      end;
    E_Sunrise                         : ;
    E_Sunset                          : ;
    E_Period_of_Twilight              : ;
    E_Rain_Rate                       :
                                      begin
                                        frmToteDisplay.edtAttenRainRate.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblAttenuationFactorsRain.Caption := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbAttenRainRate.Position := Round(Value);
                                      end;
    E_Cloud_Base_Height               :
                                      begin
                                        frmToteDisplay.edtCloudBaseHeight.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblAttenuationFactorsCloud.Caption := FormatFloat('0.00', Value);
                                      end;
    E_Cloud_Attenuation               :
                                      begin
                                        frmToteDisplay.edtAttenCloud.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbAttenCloud.Position := Round(Value);
                                      end;
    E_Sea_State                       :
                                      begin
                                        frmToteDisplay.edtSeaState.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbSeaState.Position := Round(Value);

                                        case Round(Value) of
                                          0 : frmToteDisplay.lblSeaState.Caption    := 'Calm (glassy)';
                                          1 : frmToteDisplay.lblSeaState.Caption    := 'Calm (rippled)';
                                          2 : frmToteDisplay.lblSeaState.Caption    := 'Smooth (wavelets)';
                                          3 : frmToteDisplay.lblSeaState.Caption    := 'Slight';
                                          4 : frmToteDisplay.lblSeaState.Caption    := 'Moderate';
                                          5 : frmToteDisplay.lblSeaState.Caption    := 'Rough';
                                          6 : frmToteDisplay.lblSeaState.Caption    := 'Very rough';
                                          7 : frmToteDisplay.lblSeaState.Caption    := 'High';
                                          8 : frmToteDisplay.lblSeaState.Caption    := 'Very high';
                                          9,10 : frmToteDisplay.lblSeaState.Caption := 'Phenomenal';
                                        end;
                                      end;
    E_Ocean_Current_Speed             :
                                      begin
                                         frmToteDisplay.edtOceanCurrentSpeed.Text := FloatToStr(Value);
                                         frmToteDisplay.lblOceanCurrentSpeed.Caption := FormatFloat('00.0', Value);

                                         if Value > 50 then  //add wahyu 6-03-2012
                                         begin
                                          frmToteDisplay.edtOceanCurrentSpeed.Text  := FloatToStr(0);
                                          if simMgrClient.ISInstructor then
                                            frmTacticalDisplay.addStatus('The value Input ocean current Is To High');
                                         end;
                                      end;
    E_Ocean_Current_Direction         :
                                      begin
                                        frmToteDisplay.edtOceanCurrentDirection.Text := FloatToStr(Value);
                                        frmToteDisplay.lblOceanCurrentDirection.Caption := FormatFloat('000.0', Value);
                                        frmToteDisplay.rw1.degree := ValidateDegree(Value);
                                      end;
    E_Thermal_Layer_Depth             :
                                      begin
                                        frmToteDisplay.edtDepthTermalLayer.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblSoundVelocityLayer.Caption := FormatFloat('0.00', Value);
                                      end;
    E_Sound_Velocity_Type             :
                                      begin
                                        case Round(Value) of
                                          0 :
                                            begin
                                              frmToteDisplay.Label203.Alignment := taCenter;
                                              frmToteDisplay.Label203.Caption := 'Positive';
                                              frmToteDisplay.lblSoundVelocityProfile.Caption := 'Positive';

                                              frmToteDisplay.SpeedButton24.Down := True;
                                              frmToteDisplay.SpeedButton25.Down := False;
                                              frmToteDisplay.SpeedButton26.Down := False;
                                              frmToteDisplay.SpeedButton27.Down := False;
                                            end;
                                          1 :
                                            begin
                                              frmToteDisplay.Label203.Alignment := taCenter;
                                              frmToteDisplay.Label203.Caption := 'Negative';
                                              frmToteDisplay.lblSoundVelocityProfile.Caption := 'Negative';

                                              frmToteDisplay.SpeedButton24.Down := False;
                                              frmToteDisplay.SpeedButton25.Down := True;
                                              frmToteDisplay.SpeedButton26.Down := False;
                                              frmToteDisplay.SpeedButton27.Down := False;
                                            end;
                                          2 :
                                            begin
                                              frmToteDisplay.Label203.Alignment := taCenter;
                                              frmToteDisplay.Label203.Caption := 'Positive over negative';
                                              frmToteDisplay.lblSoundVelocityProfile.Caption := 'Positive over negative';

                                              frmToteDisplay.SpeedButton24.Down := False;
                                              frmToteDisplay.SpeedButton25.Down := False;
                                              frmToteDisplay.SpeedButton26.Down := True;
                                              frmToteDisplay.SpeedButton27.Down := False;
                                            end;
                                          3 :
                                            begin
                                              frmToteDisplay.Label203.Alignment := taCenter;
                                              frmToteDisplay.Label203.Caption := 'Negative over positive';
                                              frmToteDisplay.lblSoundVelocityProfile.Caption := 'Negative over positive';

                                              frmToteDisplay.SpeedButton24.Down := False;
                                              frmToteDisplay.SpeedButton25.Down := False;
                                              frmToteDisplay.SpeedButton26.Down := True;
                                              frmToteDisplay.SpeedButton27.Down := False;
                                            end;
                                        end;
                                      end;
    E_Surface_Sound_Speed             : frmToteDisplay.edtSpeedOfSoundSurface.Text := FormatFloat('0.00', Value);
    E_Layer_Sound_Speed               : frmToteDisplay.edtSpeedOfSoundlayer.Text := FormatFloat('0.00', Value);
    E_Bottom_Sound_Speed              : frmToteDisplay.edtSpeedOfSoundBottom.Text := FormatFloat('0.00', Value);
    E_Bottomloss_Coefficient          :
                                      begin
                                        frmToteDisplay.edtBottomLost.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbBottomLost.Position := Round(Value);
                                      end;
    E_Ave_Ocean_Depth                 :
                                      begin
                                        frmToteDisplay.edtAvgOceanDepth.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblSoundVelocityAverageBottom.Caption := FormatFloat('0.00', Value);
                                      end;
    E_CZ_Active                       : ;
    E_Surface_Ducting_Active          : ;
    E_Upper_Limit_Surface_Duct_Depth  : frmToteDisplay.edtSurfaceDuctUp.Text := FormatFloat('0.00', Value);
    E_Lower_Limit_Surface_Duct_Depth  : frmToteDisplay.edtSurfaceDuctLow.Text := FormatFloat('0.00', Value);
    E_Sub_Ducting_Active              : ;
    E_Upper_Limit_Sub_Duct_Depth      : frmToteDisplay.edtSubSurfaceDuctUp.Text := FormatFloat('0.00', Value);
    E_Lower_Limit_Sub_Duct_Depth      : frmToteDisplay.edtSubSurfaceDuctLow.Text := FormatFloat('0.00', Value);
    E_Shipping_Rate                   : frmToteDisplay.cbxShippingRate.ItemIndex := Round(Value);
    E_Shadow_Zone_Trans_Loss          : frmToteDisplay.edtShadowZone.Text := FormatFloat('0.00', Value);
    E_Atmospheric_Refract_Modifier    :
                                      begin
                                        frmToteDisplay.edtAtmRefract.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.trbAtmRefract.Position := Round(Value);
                                      end;
    E_Barometric_Pressure             :
                                      begin
                                        frmToteDisplay.edtBarometricPressure.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblOtherBarometric.Caption := FormatFloat('0.00', Value);
                                      end;
    E_Air_Temperature                 :
                                      begin
                                        frmToteDisplay.edtAirTemp.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblOtherAirTemp.Caption := FormatFloat('0.00', Value);
                                      end;
    E_Surface_Temperature             :
                                      begin
                                        frmToteDisplay.edtSurfaceTemperatur.Text := FormatFloat('0.00', Value);
                                        frmToteDisplay.lblSurfaceTemp.Caption := FormatFloat('0.00', Value);
                                      end;
    E_Start_HF_Range_Gap              : ;
    E_End_HF_Range_Gap                : ;
  end;
end;

procedure TT3ClientEventManager.OnUpdateFormationList;
begin
  inherited;

  frmFormationEditor.RefreshList;
end;

procedure TT3ClientEventManager.OnUpdateFormationMembers(formation: TFormationRefine);
begin
  inherited;

  frmFormationAddRemMembers.UpdateDataList(formation);
end;

procedure TT3ClientEventManager.OnUpdateIFFList(sensor: TT3IFFSensor;
  value: byte);
begin
  inherited;

  if sensor = nil then
    exit;

  frmTacticalDisplay.fmSensor1.UpdateIFFSensorList(sensor, value);
  frmTacticalDisplay.fmEMCON1.UpdateIFFList(sensor);
end;

procedure TT3ClientEventManager.OnUpdateMineProperty(value: Double);
begin
  inherited;

  frmTacticalDisplay.fmWeapon1.EdtMinesDepth.Text := FloatToStr(value);
end;

procedure TT3ClientEventManager.OnUpdateRadarNoiseJammer(jammer: TObject; value: byte);
begin
  inherited;

  if jammer <> nil then
  begin
    if frmTacticalDisplay.fmCounterMeasure1.SelectedECM = jammer then
    begin
      frmTacticalDisplay.fmCounterMeasure1.UpdateNoiseJammer(jammer);
      frmTacticalDisplay.fmCounterMeasure1.
        UpdateRadarNoiseJammerList(TT3RadarNoiseJammerOnVehicle(jammer), value);
    end;
  end;
end;

procedure TT3ClientEventManager.OnUpdateSonarDeploy(piObj: TT3Vehicle;
  value: byte; cable: Double);
begin
  inherited;

  if value = 1 then     //deploying
  begin
//    frmTacticalDisplay.fmSensor1.editCableOrdered.Text := IntToStr(Round(cable));
  end
  else if value = 2 then   // stowing
  begin
//    frmTacticalDisplay.fmSensor1.editCableOrdered.Text := IntToStr(Round(cable));
  end
  else
  begin
//    frmTacticalDisplay.fmSensor1.editCableOrdered.Text := '000';
  end;
end;

procedure TT3ClientEventManager.OnUpdateTacticalTote;
begin
  inherited;

  frmTacticalDisplay.Refresh_AssumeControl;
  frmToteDisplay.RefreshPlatformList;
end;

procedure TT3ClientEventManager.OnUpdateTorpedoProperty(
  rec: TRecTorpedoProperty);
begin
  inherited;
  {sementara}
  Exit ;
  {$REGION 'TipeTorpedo'}
  {(5)TorpedoStraigth,    (6)TorpedoActiveAcoustic,  (7)TorpedoPassiveAcoustic, (8)TorpedoWireGuided,
  (9) TorpedoWakeHoming, (10) TorpedoActivePassive, (11) TorpedoAirDropped }
  {$ENDREGION}
  if (rec.TorpType = 6) then
  begin
    {$REGION 'Konstanta Acoustic'}
    {(1)Tube, (2)Firing Mode, (3)RunOut Mode, (4)SearchRadius, (5)SearchDepth,
    (6)Safety Ceiling, (7)SeekerRange, (8)GyroAngle }
    {$ENDREGION}
    if rec.OrderType = 1 then
    begin
      frmTacticalDisplay.fmWeapon1.btnTube1AT.Enabled := True;
      frmTacticalDisplay.fmWeapon1.btnTube2AT.Enabled := True;
      frmTacticalDisplay.fmWeapon1.btnTube3AT.Enabled := True;
      frmTacticalDisplay.fmWeapon1.btnTube4AT.Enabled := True;

      case Round(rec.Param) of
        1 : frmTacticalDisplay.fmWeapon1.btnTube1AT.Enabled := False;
        2 : frmTacticalDisplay.fmWeapon1.btnTube2AT.Enabled := False;
        3 : frmTacticalDisplay.fmWeapon1.btnTube3AT.Enabled := False;
        4 : frmTacticalDisplay.fmWeapon1.btnTube4AT.Enabled := False;
      end;
    end
    else if rec.OrderType = 2 then
    begin
      if rec.Param = 1 then
        frmTacticalDisplay.fmWeapon1.EdtFiringModeAT.Text := 'Deliberate'
      else
        frmTacticalDisplay.fmWeapon1.EdtFiringModeAT.Text := 'Urgent';
    end
    else if rec.OrderType = 3 then
    begin
      if rec.Param = 1 then
        frmTacticalDisplay.fmWeapon1.EdtRunOutAT.Text := 'RunOut'
      else
        frmTacticalDisplay.fmWeapon1.EdtRunOutAT.Text := 'No RunOut';
    end
    else if rec.OrderType = 4 then
      frmTacticalDisplay.fmWeapon1.EdtSearchRadiusAT.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 5 then
      frmTacticalDisplay.fmWeapon1.EdtSearchDepthAT.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 6 then
      frmTacticalDisplay.fmWeapon1.EdtSafetyCeilingAT.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 7 then
      frmTacticalDisplay.fmWeapon1.EdtSeekerRangeAT.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 8 then
      frmTacticalDisplay.fmWeapon1.EdtGyroAngleAT.Text := IntToStr(Round(rec.Param))
    else if rec.OrderType = 9 then
      frmTacticalDisplay.fmWeapon1.btnLaunchAT.Enabled := True
  end
  else if (rec.TorpType = 9) then
  begin
    if rec.OrderType = 1 then
      frmTacticalDisplay.fmWeapon1.EdtSalvoWH.Text := IntToStr(Round(rec.Param))
    else if rec.OrderType = 2 then
      frmTacticalDisplay.fmWeapon1.EdtLaunchBearingWH.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 3 then
      frmTacticalDisplay.fmWeapon1.EdtSeekerRangeWH.Text := FloatToStr(rec.Param)
  end
  else if rec.TorpType = 10 then
  begin
    if rec.OrderType = 1 then
      frmTacticalDisplay.fmWeapon1.EdtSalvoAP.Text := IntToStr(Round(rec.Param))
    else if rec.OrderType = 2 then
      frmTacticalDisplay.fmWeapon1.EdtSearchRadiusAP.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 3 then
      frmTacticalDisplay.fmWeapon1.EdtSearchDepthAP.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 4 then
      frmTacticalDisplay.fmWeapon1.EdtSafetyCeilingAP.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 5 then
      frmTacticalDisplay.fmWeapon1.EdtSeekerRangeAP.Text := FloatToStr(rec.Param)
  end
  else if rec.TorpType = 11 then
  begin
    if rec.OrderType = 1 then
      frmTacticalDisplay.fmWeapon1.EdtSearchRadiusAD.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 2 then
      frmTacticalDisplay.fmWeapon1.EdtSearchDepthAD.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 3 then
      frmTacticalDisplay.fmWeapon1.EdtSearchCeilingAD.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 4 then
      frmTacticalDisplay.fmWeapon1.EdtLaunchBearingAD.Text := FloatToStr(rec.Param)
    else if rec.OrderType = 5 then
    begin
      if rec.Param = 1 then
      begin
        frmTacticalDisplay.fmWeapon1.chkAirDroppedUseLaunchPlatformHeading.Checked := True;
        frmTacticalDisplay.fmWeapon1.EdtLaunchBearingAD.Enabled := False;
      end
      else
      begin
        frmTacticalDisplay.fmWeapon1.chkAirDroppedUseLaunchPlatformHeading.Checked := False;
        frmTacticalDisplay.fmWeapon1.EdtLaunchBearingAD.Enabled := True;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnUpdateTvCubicleGroup;
begin
  inherited;

  frmToteDisplay.SetupTvCubicleGroup;
end;

procedure TT3ClientEventManager.OnUpdateWeaponVehicle(Sender : TObject);
begin
  if not Assigned(Sender) then
    Exit;

  if Sender is TT3Vehicle then
  begin
    if (Assigned(simMgrClient.ControlledPlatform))
        and (simMgrClient.ControlledPlatform is TT3Vehicle) then
    begin
      if TT3Vehicle(Sender) = TT3Vehicle(simMgrClient.ControlledPlatform) then
        frmTacticalDisplay.fmWeapon1.setThisLauncherState;
    end;
  end;
end;

procedure TT3ClientEventManager.OnVectactChange(Sender: TObject);
begin
  inherited;

  frmTacticalDisplay.fmWeapon1.UpdateVectacTab(Sender);
end;

procedure TT3ClientEventManager.OnVectactChange(r: TRecVectac);
  function IntToDateTime(const int: Integer):TDateTime;
  begin
    result := int / (60 * 60 * 24 ) ;
  end;
var
  commander, wpnCarrier : TT3Vehicle;
  det : TT3DetectedTrack;
  vectac : TT3Vectac;
  j:Integer;
begin
  inherited;

  commander := simMgrClient.FindT3PlatformByID(r.CommanderID) as TT3Vehicle;
  vectac := commander.Weapons.Items[commander.Weapons.Count-1];

  case r.cmd of
    CPID_CMD_VECTAC_TRACK :
    begin
      with frmTacticalDisplay.fmWeapon1 do
      begin
        if simMgrClient.IsController then
          editVectacTargetTrack.Text := vectac.Target.Track_ID
        else
        begin
          det := simMgrClient.findDetectedTrack(vectac.Target.InstanceIndex)
                 as TT3DetectedTrack;

          if Assigned(det) then
            editVectacTargetTrack.Text := FormatTrackNumber(det.TrackNumber)
          else
            editVectacTargetTrack.Text := '0';
        end;
      end;
    end;
    CPID_CMD_VECTAC_WPN_CARRIER :
    begin
      with frmTacticalDisplay.fmWeapon1 do
      begin
        if simMgrClient.ISInstructor then
          editVectacWeaponCarrierName.Text := vectac.WeaponCarrier.Track_ID
        else
        begin
          editVectacWeaponCarrierName.Text := IntToStr(vectac.WeaponCarrier.TrackNumber);

          for j := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
          begin
            det := simMgrClient.SimDetectedTrackList.getObject(j) as TT3DetectedTrack;

            if TT3PlatformInstance(det.TrackObject).Track_ID = vectac.WeaponCarrier.Track_ID then
            begin
              editVectacWeaponCarrierName.Text := IntToStr(det.TrackNumber);
              Break;
            end;
          end;
        end;
      end;
    end;
    CPID_CMD_VECTAC_SPEED_CHANGE :
    begin
      with frmTacticalDisplay.fmWeapon1 do
        editVectacWeaponCarrierGround.Text := FormatFloat('00.0', r.WpnCarrierSpeed);
    end;
    CPID_CMD_VECTAC_DROP_CHANGE :
    begin
      with frmTacticalDisplay.fmWeapon1 do
        editVectacWeaponCarrierDrop.Text := FormatFloat('00.0', r.WeaponDropOffset);
    end;
    CPID_CMD_VECTAC_WEAPON :
    begin
      if not Assigned(vectac.Weapon) then
        Exit;

      with frmTacticalDisplay.fmWeapon1 do
      begin
        editVectacWeaponName.Text := vectac.Weapon.InstanceName;
        lbVectacWeaponExpiry.Caption := FormatDateTime('nn:ss', IntToDateTime(Ceil(vectac.ExpiredTime)));
      end;
    end;
    CPID_CMD_VECTAC_PLAN :
    begin
      with frmTacticalDisplay.fmWeapon1 do
      begin
        wpnCarrier := vectac.WeaponCarrier as TT3Vehicle;

        editVectacWeaponCarrierGround.Text := FormatSpeed(wpnCarrier.OrderedSpeed);
        editVectacWeaponCarrierDrop.Text := FormatFloat('00.0', vectac.DropOffset);
        editVectacWeaponCarrierGround.ReadOnly := False;
        editVectacWeaponCarrierDrop.ReadOnly := False;

        btnVectacWeaponName.Enabled := True;
        btnVectacPlan.Enabled := False;
        btnVectacCancel.Enabled := True;
        btnVectacConfirm.Enabled := True;

        onVectacPlan(wpnCarrier.Weapons);

        if wpnCarrier.Weapons.Count = 2 then
        begin
          editVectacWeaponName.Text := TT3Weapon(vectac.Weapon).InstanceName;
          lbVectacWeaponExpiry.Caption := FormatDateTime('nn:ss', IntToDateTime(Ceil(vectac.ExpiredTime)));
        end;
      end;
    end;
    CPID_CMD_VECTAC_CANCEL :
    begin
      with frmTacticalDisplay.fmWeapon1 do
      begin
        editVectacWeaponCarrierGround.ReadOnly := True;
        editVectacWeaponCarrierDrop.ReadOnly := True;

        editVectacWeaponName.Text := '(none)';

        btnVectacWeaponName.Enabled := False;
        btnVectacPlan.Enabled := True;
        btnVectacCancel.Enabled := False;
        btnVectacConfirm.Enabled := False;
      end;
    end;
    CPID_CMD_VECTAC_LAUNCH :
    begin
      if r.CmdFromController then
      begin
        if vectac.Weapon is TT3TorpedoesOnVehicle then
          SimMgrClient.netSend_CmdSetQuantity(vectac.WeaponCarrier.InstanceIndex,
          vectac.Weapon.InstanceIndex, CORD_ID_QUANTITY, CORD_TYPE_WEAPON, (TT3TorpedoesOnVehicle(vectac.Weapon).Quantity - 1))
        else if vectac.Weapon is TT3BombONVehicle then
          SimMgrClient.netSend_CmdSetQuantity(vectac.WeaponCarrier.InstanceIndex,
          vectac.Weapon.InstanceIndex, CORD_ID_QUANTITY, CORD_TYPE_WEAPON, (TT3BombONVehicle(vectac.Weapon).Quantity - 1));
      end;

      with frmTacticalDisplay.fmWeapon1 do
      begin
//        editVectacWeaponCarrierName.Text := '(none)';
        editVectacWeaponCarrierGround.ReadOnly := True;
        editVectacWeaponCarrierDrop.ReadOnly := True;

//        editVectacWeaponName.Text := '(none)';
        btnVectacTargetTrack.Enabled := True;
        btnVectacWeaponName.Enabled := False;
        btnVectacPlan.Enabled := True;
        btnVectacCancel.Enabled := False;
        btnVectacConfirm.Enabled := False;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnVehicleHealthChange(ve: TT3Vehicle);
begin
  inherited;

  with frmToteDisplay do
  begin
    if ve = TT3Vehicle(ToteSelectedPlatform) then
    begin
      UpdateSensorVehicle(ve);
      UpdateWeaponVehicle(ve);
      UpdateCountermeasureVehicle(ve);
      UpdateStatusVehicle(ve);
      UpdateEmbarkVehicle(ve);
    end;
  end;
end;

procedure TT3ClientEventManager.OnVehicleSensorStateChange(Sender: TT3Vehicle);
var
  vSelect : TSimObject;
begin
  inherited;

  if frmToteDisplay.lvPlatforms.Selected <> nil then
  begin
    if frmToteDisplay.lvPlatforms.Selected.Data <> nil then
    begin
      vSelect := frmToteDisplay.lvPlatforms.Selected.Data;

      if Assigned(vSelect) then
      begin
        if vSelect is TT3Vehicle then
        begin
          if TT3Vehicle(vSelect).InstanceIndex = Sender.InstanceIndex then
          begin
            ufToteDisplay.frmToteDisplay.UpdateSensorVehicle(Sender);
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnVehicleSystemStateChange(ve: TT3Vehicle);
begin
  inherited;

  with frmToteDisplay do
  begin
    if ve = TT3Vehicle(ToteSelectedPlatform) then
    begin
      UpdateStatusVehicle(ve);
    end;
  end;
end;

procedure TT3ClientEventManager.OnECMCommand(JammerObj: TObject);
begin
  inherited;

  if JammerObj <> nil then
  begin
    if frmTacticalDisplay.fmCounterMeasure1.SelectedECM = JammerObj then
    begin
      frmTacticalDisplay.fmCounterMeasure1.UpdateOnBoardSelfDefence(JammerObj);
    end;
  end;
end;

procedure TT3ClientEventManager.OnECMDestroy(Sender: TObject);
var
  newPi, pf, ftrack, newPlatform : TT3PlatformInstance;
  i : Integer;
begin
  inherited;

  if (Sender is TT3Chaff) or (Sender is TT3AirBubble)
      or (Sender is TT3Sonobuoy) then
  begin
    pf := nil;

    if Sender is TT3DetectedTrack then
    begin
      if TT3DetectedTrack(Sender).TrackObject is TT3PlatformInstance then
        pf := TT3DetectedTrack(Sender).TrackObject as TT3PlatformInstance
      else if TT3DetectedTrack(Sender).TrackObject is TT3Sensor then
        pf := TT3DetectedTrack(Sender).TrackObject.Parent as TT3PlatformInstance;
    end
    else
    begin
      pf := TT3PlatformInstance(Sender);
    end;

    if not(Assigned(pf)) then
      Exit;

    //------------- cari new platform untuk selected + controled object -----//
    newPlatform := nil;
    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      newPi := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
      if not Assigned(newPi) then
        continue;

      if newPi is TT3Vehicle then      //mk
      begin
        if (newPi.UnitGroup) and not(newPi.FreeMe) then
        begin
          newPlatform := newPi;
          Break;
        end;
      end;
    end;
    //------------- cari new platform untuk selected + controled object -----//

    if frmTacticalDisplay.focusedTrack is TT3DetectedTrack then
      ftrack := TT3DetectedTrack(frmTacticalDisplay.focusedTrack).TrackObject
                as TT3PlatformInstance
    else
      ftrack := TT3PlatformInstance(frmTacticalDisplay.focusedTrack);

    if Assigned(pf) and Assigned(ftrack) and (pf = ftrack) then
    begin
      if ftrack.Selected then
      begin
        ftrack.Selected := False;
      end;

      frmTacticalDisplay.focusedTrack := nil;

      if newPlatform <> nil then
      begin
        newPlatform.Selected := True;
        frmTacticalDisplay.focusedTrack := newPlatform;
      end;
    end;

    //----Set new Controlerplatform n focustrack---//
    if pf.Controlled then
    begin
      pf.Controlled := False;

      if newPlatform <> nil then
      begin
        newPlatform.Controlled := True;
      end;
    end;
    //---------------------------------------------//

    //---- Cek ControlledPlatform - and set nill ---//
    if Assigned(simMgrClient.ControlledPlatform) then
    begin
      if simMgrClient.ControlledPlatform = pf then
        simMgrClient.ControlledPlatform := nil;
    end;
    //---------------------------------------------//

    if pf.UnitGroup then begin
      frmTacticalDisplay.Refresh_AssumeControl;
    end;

    frmTacticalDisplay.RemoveFromTrackList(Sender);
    simMgrClient.RemoveDetectedTrack(TSimObject(Sender));

    if TT3PlatformInstance(Sender).reasonDestroy = 1 then
      frmToteDisplay.OnPlatformDestroy(Sender);
  end;
end;

procedure TT3ClientEventManager.OnECMLaunched(Sender: TObject);
begin
  inherited;

  if (Sender is TT3Chaff) then
  begin
    simMgrClient.SimPlatforms.addObject(TSimObject(Sender));

    if TT3Chaff(Sender).UnitGroup then begin
      frmTacticalDisplay.Refresh_AssumeControl;
    end;

    frmTacticalDisplay.addStatus(TT3Chaff(Sender).InstanceName + ' launched');
  end;

  if (Sender is TT3AirBubble) then
  begin
    simMgrClient.SimPlatforms.addObject(TSimObject(Sender));

    if TT3AirBubble(Sender).UnitGroup then begin
      frmTacticalDisplay.Refresh_AssumeControl;
    end;

    frmTacticalDisplay.addStatus(TT3AirBubble(Sender).InstanceName + ' launched');
  end;

  if (Sender is TT3Sonobuoy) then
  begin
    simMgrClient.SimPlatforms.addObject(TSimObject(Sender));

    if TT3Sonobuoy(Sender).UnitGroup then begin
      frmTacticalDisplay.Refresh_AssumeControl;
    end;

    frmTacticalDisplay.addStatus(TT3Sonobuoy(Sender).InstanceName + ' launched');
  end;
end;

procedure TT3ClientEventManager.OnECMlistUpdated(Sender: TObject);
begin
  inherited;

  if sender is TT3CounterMeasure then
  begin
    frmTacticalDisplay.fmCounterMeasure1.UpdateECMList(TT3CounterMeasure(Sender));//ecm
  end;
end;

procedure TT3ClientEventManager.OnECMQuantityChange(Sender : TObject);
begin
  frmTacticalDisplay.fmCounterMeasure1.OnRefreshECMQuantity(Sender);
  frmTacticalDisplay.fmWeapon1.UpdateGunAutoManualTab(Sender);
end;

procedure TT3ClientEventManager.OnEngagementChange(mis:TObject);
begin
  inherited;

  frmTacticalDisplay.fmWeapon1.EngagementModeChange(mis);
end;

procedure TT3ClientEventManager.OnFiringModeChange(mis:TObject);
begin
  inherited;

  frmTacticalDisplay.fmWeapon1.FiringModeChange(mis);
end;

procedure TT3ClientEventManager.OnFocustrackNill(sender: TObject);
var
  i : Integer;
  Track : TObject;
  newPi, newPlatform : TT3PlatformInstance;
begin
  if frmTacticalDisplay.focusedTrack is TT3DetectedTrack then
    Track := TT3DetectedTrack(frmTacticalDisplay.focusedTrack).TrackObject
  else
  if frmTacticalDisplay.focusedTrack is TT3ESMTrack then
    Track := TT3ESMTrack(frmTacticalDisplay.focusedTrack).TrackObject
  else
    Track  := frmTacticalDisplay.focusedTrack;

  if (Track = Sender) then //pada saat weapon destroy yg diselect weapon yg destroy ini
  begin
    if frmTacticalDisplay.focusedTrack is TT3DetectedTrack then
    begin
      if TT3DetectedTrack(frmTacticalDisplay.focusedTrack).Selected then
      begin
        TT3DetectedTrack(frmTacticalDisplay.focusedTrack).Selected := False;
      end;
    end
    else
    if frmTacticalDisplay.focusedTrack is TT3ESMTrack then
    begin
      if TT3ESMTrack(frmTacticalDisplay.focusedTrack).IsSelected then
      begin
        TT3ESMTrack(frmTacticalDisplay.focusedTrack).IsSelected := False;
      end;
    end;

    frmTacticalDisplay.focusedTrack := nil;

    //------------- cari new platform untuk selected + controled object -----//
    newPlatform := nil;
    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      newPi := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
      if not Assigned(newPi) then
        continue;

      if newPi is TT3Vehicle then      //mk
      begin
        if (newPi.UnitGroup) and not(newPi.FreeMe) then
        begin
          newPlatform := newPi;
          Break;
        end;
      end;
    end;
    //------------- cari new platform untuk selected + controled object -----//

    if newPlatform <> nil then
    begin
      newPlatform.Selected := True;
      frmTacticalDisplay.focusedTrack := newPlatform;
    end;
  end;
end;

procedure TT3ClientEventManager.OnPlatformControlled(Sender: TObject);
var
  pi : TT3PlatformInstance;
begin
  if not(Assigned(Sender)) then  //mk
    Exit;

  if Sender is TT3PlatformInstance then
  begin
    pi := TT3PlatformInstance(Sender);

    if pi.Controlled then
    begin
      if Assigned(simMgrClient.ControlledPlatform) then
      begin
        TT3Vehicle(simMgrClient.ControlledPlatform).Waypoints.IsOwnerHooked := False;
        TT3Vehicle(simMgrClient.ControlledPlatform).Waypoints.IsOpenGuidanceTab := False;
      end;

      TT3Vehicle(pi).Waypoints.IsOwnerHooked := True;

      frmTacticalDisplay.SetControlledPlatform(pi);

      if Assigned(frmWaypointEditor) then
        frmWaypointEditor.Close;
    end;
  end;
end;

procedure TT3ClientEventManager.OnPlatformDestroy(Sender: TObject);
var
  newPi, pf, ftrack, newPlatform : TT3PlatformInstance;
  v : TT3Vehicle;
  wpn : TT3Weapon;
  i : Integer;
begin
  inherited;
  pf := nil;

  if Sender is TT3DetectedTrack then
  begin
    if TT3DetectedTrack(Sender).TrackObject is TT3PlatformInstance then
      pf := TT3DetectedTrack(Sender).TrackObject as TT3PlatformInstance
    else if TT3DetectedTrack(Sender).TrackObject is TT3Sensor then
      pf := TT3DetectedTrack(Sender).TrackObject.Parent as TT3PlatformInstance;
  end
  else
  begin
    pf := TT3PlatformInstance(Sender);
  end;

  if not(Assigned(pf)) then
    Exit;

  //------------- cari new platform untuk selected + controled object -----//
  newPlatform := nil;
  for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
  begin
    newPi := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
    if not Assigned(newPi) then
      continue;

    if newPi is TT3Vehicle then      //mk
    begin
      if (newPi.UnitGroup) and not(newPi.FreeMe) then
      begin
        newPlatform := newPi;
        Break;
      end;
    end;
  end;
  //------------- cari new platform untuk selected + controled object -----//

  if frmTacticalDisplay.focusedTrack is TT3DetectedTrack then
    ftrack := TT3DetectedTrack(frmTacticalDisplay.focusedTrack).TrackObject
              as TT3PlatformInstance
  else
    ftrack := TT3PlatformInstance(frmTacticalDisplay.focusedTrack);

  if Assigned(pf) and Assigned(ftrack) and (pf = ftrack) then
  begin
    if ftrack.Selected then
    begin
      ftrack.Selected := False;
    end;

    frmTacticalDisplay.focusedTrack := nil;

    if newPlatform <> nil then
    begin
      newPlatform.Selected := True;
      frmTacticalDisplay.focusedTrack := newPlatform;
    end;
  end;

  if newPlatform <> nil then
  begin
    //cari index nya di cbAssumeControl
    for i := 0 to frmTacticalDisplay.cbAssumeControl.Items.Count - 1 do
    begin
      if TT3PlatformInstance(frmTacticalDisplay.cbAssumeControl.Items.Objects[i])
        = newPlatform then
        frmTacticalDisplay.cbAssumeControl.ItemIndex  := i;
    end;
  end;

  //----Set new Controlerplatform n focustrack---//
  if pf.Controlled then
  begin
    pf.Controlled := False;

    if newPlatform <> nil then
    begin
      newPlatform.Controlled := True;
    end;
  end;
  //---------------------------------------------//

  //---- Cek ControlledPlatform - and set nill ---//
  if Assigned(simMgrClient.ControlledPlatform) then
  begin
    if simMgrClient.ControlledPlatform is TT3Vehicle then
    begin
      v := TT3Vehicle(simMgrClient.ControlledPlatform);
      if (Assigned(v)) then
      begin
        if v.Weapons.Count > 0 then
        begin
          wpn := TT3Weapon(v.Weapons.Items[v.LastWeaponsSelected]);
          if Assigned(wpn) and (wpn is TT3MissilesOnVehicle) and (wpn.TargetObject = pf) then
          begin
            frmTacticalDisplay.fmWeapon1.btnSurfaceToSurfaceCancel.Click;
          end;
        end;
      end;
    end;

    if simMgrClient.ControlledPlatform = pf then
    begin
      simMgrClient.ControlledPlatform := nil;
    end;
  end;
  //---------------------------------------------//

  simMgrClient.RemoveDetectedTrack(TSimObject(Sender));

  if TT3PlatformInstance(Sender).FlagShowStatusDestroy then
  begin
    if (Sender is TT3Vehicle) then
    begin
      if TT3Vehicle(Sender).reasonDestroy = 1 then
        frmToteDisplay.OnPlatformDestroy(Sender)
      else if TT3Vehicle(Sender).reasonDestroy = 4 then
        frmToteDisplay.OnPlatformDestroy(Sender)
    end;

    if simMgrClient.ISInstructor then
      frmTacticalDisplay.addStatus(TT3PlatformInstance(Sender).TrackLabel + ' DESTROYED')
    else
      frmTacticalDisplay.addStatus(IntToStr(TT3PlatformInstance(Sender).TrackNumber) + ' DESTROYED');

    if simMgrClient.ISInstructor then
      frmToteDisplay.gbPlatformRemovalSummary.BringToFront;
  end;

  if pf.UnitGroup then begin
    frmTacticalDisplay.Refresh_AssumeControl;
    frmToteDisplay.RefreshPlatformList;

    //frmTacticalDisplay.fmSensor1.RemoveListSensor(pf);
    frmTacticalDisplay.RemoveListandForm(pf);
  end;

  if frmToteDisplay.ToteSelectedPlatform = pf then
    frmToteDisplay.ToteSelectedPlatform := nil;

//  for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
//  begin
//    tObj := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
//    if not Assigned(tObj) then
//      continue;

//    if tObj is TT3Weapon then      //mk
//    begin
//      if Assigned(TT3Weapon(tObj).TargetObject) then
//      begin
//        if TT3Weapon(tObj).TargetObject is TT3Vehicle then
//        begin
//           if TT3Weapon(tObj).TargetObject.Equals(pf) then
//           begin
//              TT3Weapon(tObj).TargetObject := nil;
//           end;
//        end;
//      end;
//    end;
//  end;

  frmTacticalDisplay.RemoveFromTrackList(Sender);
  // clean this object from all weapon targets if any
  RemoveFromTargetedRefTrack(Sender);
  simMgrClient.RemovePlatformFromGroup(TT3Vehicle(pf));
end;

procedure TT3ClientEventManager.OnPlatformHancurin(SenderID : Integer ;
          Target: string; reasondestroy : Byte);
var
  Sender : TT3PlatformInstance;
begin
  inherited;
  Sender := simMgrClient.FindT3PlatformByID(SenderID);

  if Assigned(Sender) and TT3PlatformInstance(Sender).FlagShowStatusDestroy then
  begin
    Sender.FlagShowStatusDestroy := False;

    if Target <> '' then
    begin
      Sender.reasonDestroy := 21;
      frmToteDisplay.OnPlatformDestroy(Sender, Target);
    end
    else
    begin
      case reasonDestroy of
        1: Sender.reasonDestroy := 1;
        2: Sender.reasonDestroy := 2;
        3: Sender.reasonDestroy := 3;
        4: Sender.reasonDestroy := 4;
        5: Sender.reasonDestroy := 5;
        6: Sender.reasonDestroy := 6;
        21: Sender.reasonDestroy := 21;
        22: Sender.reasonDestroy := 22;
        23: Sender.reasonDestroy := 23;
      else
        Sender.reasonDestroy := 0;
      end;

      frmToteDisplay.OnPlatformDestroy(Sender);
    end;
  end;

  if Assigned(Sender) then     //30052012
  begin
    if Sender is TT3Vehicle then
    begin
      //simMgrClient.SimPlatforms.deleteObject(Sender);       //BUAT EROR IINI
      simMgrClient.RemoveESMTracks(Sender);
      Sender.FreeMe := True;
//      TT3Vehicle(Sender).FreeChilds;
    end
    else if Sender is TT3NonRealVehicle then
      Sender.FreeMe := True
    else
    begin
      Sender.FreeMe := True;
      Sender.AbsoluteFree := True;
    end;
  end;
end;

procedure TT3ClientEventManager.OnPlatformOrderedControl(Sender: TObject;
  Order: TPlatformOrderedControl; Value: double);
begin
  inherited;
  case Order of
    pocSpeed  :
      if Assigned(Sender) then begin
        if Sender is TT3Vehicle then begin
          SimMgrClient.netSend_CmdPlatform( TT3Vehicle(Sender).InstanceIndex,
            CORD_ID_MOVE, CORD_TYPE_SPEED, Value);
        end;
      end;
    pocAltitude :
      if Assigned(Sender) then begin
        if Sender is TT3Vehicle then begin
          SimMgrClient.netSend_CmdPlatform(TT3Vehicle(Sender).InstanceIndex,
            CORD_ID_MOVE, CORD_TYPE_ALTITUDE, Value);
        end;
      end;
    pocHeading :
      if Assigned(Sender) then begin
        if Sender is TT3Vehicle then begin
          SimMgrClient.netSend_CmdPlatform(TT3Vehicle(Sender).InstanceIndex,
            CORD_ID_MOVE, CORD_TYPE_COURSE, Value);
        end;
      end;
  end;
end;

procedure TT3ClientEventManager.OnPlatformOrderedControlChange(OrderID : Integer;
  OrderType : Integer; PlatfomID : Integer; OrderParam : Single);
var
  TargetTrack : TT3PlatformInstance;
  dt : TSimObject;
  putar : Double;
  vehicle, veLeader : TT3Vehicle;
begin
  case OrderID of
    CORD_ID_MOVE :
    begin
      case OrderType of
        CORD_TYPE_SPEED :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              //straight line form
              frmTacticalDisplay.fmPlatformGuidance1.
                edtStraightLineOrderedGroundSpeed.Text := IntToStr(round(OrderParam));

              // Tambahan Gue : Prince Achmad (helm form)
              frmTacticalDisplay.fmPlatformGuidance1.
              edtHelmOrderedGroundSpeed.Text := IntToStr(round(OrderParam));

              //zigzag form
              frmTacticalDisplay.fmPlatformGuidance1.
                edtZigZagOrderedGroundSpeed.Text := IntToStr(round(OrderParam));

              frmTacticalDisplay.fmPlatformGuidance1
                .edtWaypointOrderedGroundSpeed.Text := FormatSpeed(OrderParam);

              frmTacticalDisplay.fmPlatformGuidance1
                .edtCircleOrderedGroundSpeed.Text := FormatSpeed(OrderParam);

              frmTacticalDisplay.fmPlatformGuidance1
                .edtEngageOrderedGroundSpeed.Text := FormatSpeed(OrderParam);

              frmTacticalDisplay.fmPlatformGuidance1
                .edtReturnToBaseOrderedGroundSpeed.Text := FormatSpeed(OrderParam);
            end;
          end;
        end;
        CORD_TYPE_COURSE :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              {Untuk helm move}
              with frmTacticalDisplay.fmPlatformGuidance1 do
              begin
                if OrderParam >= 0 then
                begin
                  putar := OrderParam;
                  edtOrderedHelmAngle.Text := IntToStr(round(OrderParam));
                  Label134.Caption := 'degrees Starboard';
                end
                else
                begin
                  putar := OrderParam;
                  edtOrderedHelmAngle.Text := IntToStr(round(OrderParam * -1));
                  Label134.Caption := 'degrees Port';
                end;

                wheelHelmAngle.Position := Round(putar + 180);
              end;

              if OrderParam > 180 then
              begin
                //straight line form
                frmTacticalDisplay.fmPlatformGuidance1.whHeading.Position
                      := round(OrderParam - 180);
                frmTacticalDisplay.fmPlatformGuidance1.
                 edtStraightLineOrderedHeading.Text := IntToStr(round(OrderParam));

                //zigzag form
                frmTacticalDisplay.fmPlatformGuidance1.
                 edtZigZagBaseCourse.Text := IntToStr(round(OrderParam));
              end
              else if OrderParam < 0 then
              begin
                frmTacticalDisplay.fmPlatformGuidance1.
                edtCircleDirection.Text := 'Counter-clockwise';
              end
              else
              begin
                //straight line form
                frmTacticalDisplay.fmPlatformGuidance1.whHeading.Position
                    := round(OrderParam + 180);
                frmTacticalDisplay.fmPlatformGuidance1.
                 edtStraightLineOrderedHeading.Text := IntToStr(round(OrderParam));

                //zigzag form
                frmTacticalDisplay.fmPlatformGuidance1.
                 edtZigZagBaseCourse.Text := IntToStr(round(OrderParam));

                frmTacticalDisplay.fmPlatformGuidance1.
                edtCircleDirection.Text := 'Clockwise';
              end;
            end;
          end;
        end;
        CORD_TYPE_ALTITUDE :
        if Assigned(simMgrClient.ControlledPlatform) and
           (simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID) then
        begin
          frmTacticalDisplay.fmPlatformGuidance1.
            edOrderAltitude.Text := FormatAltitude(OrderParam / C_Feet_To_Meter);
          frmTacticalDisplay.fmPlatformGuidance1.
            EdtHelmOrderedAltitude.Text := FormatAltitude(OrderParam / C_Feet_To_Meter);
          frmTacticalDisplay.fmPlatformGuidance1.
            edtOrdShadowAltitude.Text := FormatAltitude(OrderParam / C_Feet_To_Meter);
          frmTacticalDisplay.fmPlatformGuidance1.
            edtStationOrderedAltitude.Text := FormatAltitude(OrderParam / C_Feet_To_Meter);

          frmTacticalDisplay.fmPlatformGuidance1.edt1.Text := FormatAltitude(OrderParam);
          frmTacticalDisplay.fmPlatformGuidance1.edtHelmOrderedDepth.Text := FormatAltitude(OrderParam);
          frmTacticalDisplay.fmPlatformGuidance1.edtOrdShadowDepth.Text := FormatAltitude(OrderParam);
          frmTacticalDisplay.fmPlatformGuidance1.edtStationOrderedDepth.Text := FormatAltitude(OrderParam);
        end;
        CORD_TYPE_CIRCLE_MODE :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              case Round(OrderParam) of
                1:
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.edtCircleMode.Text := 'Position';
                  frmTacticalDisplay.fmPlatformGuidance1.pnlTrack.Visible   := false;
                  frmTacticalDisplay.fmPlatformGuidance1.pnlPosition.Visible:= true;
                end;
                2:
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.edtCircleMode.Text := 'Track';
                  frmTacticalDisplay.fmPlatformGuidance1.pnlTrack.Visible   := true;
                  frmTacticalDisplay.fmPlatformGuidance1.pnlPosition.Visible:= false;
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_CENTER_X :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtCircleOnPositionPosition.Text := formatDM_longitude(OrderParam)+ ' ';
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_CENTER_Y :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.edtCircleOnPositionPosition.Text
                := frmTacticalDisplay.fmPlatformGuidance1
                .edtCircleOnPositionPosition.Text + formatDM_longitude(OrderParam);
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_RADIUS :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtCircleRadius.Text := FormatFloat('0.00',OrderParam);
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_BEARING :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtCircleOnTrackBearing.Text := FormatFloat('0.00',OrderParam);
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_BEARING_STATE :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              case Round(OrderParam) of
                1:
                  frmTacticalDisplay.fmPlatformGuidance1.lblCircleDegree.Caption := 'degrees T';
                2:
                  frmTacticalDisplay.fmPlatformGuidance1.lblCircleDegree.Caption := 'degrees R';
              end;
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_RANGE:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtCircleOnTrackRange.Text := FormatFloat('0.00', OrderParam);
            end;
          end;
        end;
        CORD_TYPE_CIRCLE_TRACK :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              TargetTrack := simMgrClient.FindT3PlatformByID(Round(OrderParam));
              if not(Assigned(TargetTrack)) then
                TargetTrack := simMgrClient.FindNonRealPlatformByID(Round(OrderParam));

              if not Assigned(TargetTrack) then
                Exit;

              if TT3Vehicle(simMgrClient.ControlledPlatform).isInstructor then
              begin
                if (TargetTrack is TT3Vehicle) then
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                    edtCircleOnTrackTrack.Text := TT3Vehicle(TargetTrack).Track_ID;
                end;
              end
              else begin
                dt := simMgrClient.findDetectedTrack(TargetTrack);
                if Assigned(dt) then
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                    edtCircleOnTrackTrack.Text := FormatTrackNumber(TT3DetectedTrack(dt).TrackNumber);
                end
                else
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                      edtCircleOnTrackTrack.Text := FormatTrackNumber(TT3PlatformInstance
                        (TargetTrack).TrackNumber);
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_SHADOW_TRACK :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              TargetTrack := simMgrClient.FindT3PlatformByID(Round(OrderParam));
              if not(Assigned(TargetTrack)) then
                Exit;

              if TT3Vehicle(simMgrClient.ControlledPlatform).isInstructor then
              begin
                if (TargetTrack is TT3Vehicle) then
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                    edtTrackToShadow.Text := TT3Vehicle(TargetTrack).Track_ID;
                end;
              end
              else begin
                dt := simMgrClient.findDetectedTrack(TargetTrack);
                if Assigned(dt) then
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                    edtTrackToShadow.Text := FormatTrackNumber(TT3DetectedTrack(dt).TrackNumber);
                end
                else
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                    edtTrackToShadow.Text := FormatTrackNumber(TT3PlatformInstance(TargetTrack).TrackNumber);
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_SHADOW_DISTANCE:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtStandoffDistanceShadow.Text := FormatFloat('0.00', OrderParam);
            end;
          end;
        end;
        CORD_TYPE_ZIGZAG_AMPLITUDO:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtZigZagAmplitude.Text := FormatFloat('0.00', OrderParam);
            end;
          end;
        end;
        CORD_TYPE_ZIGZAG_PERIOD:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtZigZagPeriod.Text := FormatFloat('0.00', OrderParam);
            end;
          end;
        end;
        CORD_TYPE_ENGAGE_TRACK :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              TargetTrack := simMgrClient.FindT3PlatformByID(Round(OrderParam));
              if not(Assigned(TargetTrack)) then
                  Exit;

              with frmTacticalDisplay.fmPlatformGuidance1 do
              begin
                if simMgrClient.IsController then
                  edtTrackToEngage.Text := TargetTrack.Track_ID
                else
                begin
                  dt := simMgrClient.findDetectedTrack(TargetTrack.InstanceIndex);

                  if Assigned(dt) then
                    edtTrackToEngage.Text := FormatTrackNumber(TT3DetectedTrack(dt).TrackNumber)
                  else
                    edtTrackToEngage.Text := FormatTrackNumber(0);
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_ENGAGE_DISTANCE :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtEngageStandOffDistance.Text := FormatFloat('0.0',OrderParam);
            end;
          end;
        end;
        CORD_TYPE_OUTRUN_TRACK :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              TargetTrack := simMgrClient.FindT3PlatformByID(Round(OrderParam));
              if not(Assigned(TargetTrack)) then
                  Exit;

              with frmTacticalDisplay.fmPlatformGuidance1 do
              begin
                if simMgrClient.IsController then
                  edtTrackToOutrun.Text := TargetTrack.Track_ID
                else
                begin
                  dt := simMgrClient.findDetectedTrack(TargetTrack.InstanceIndex);

                  if Assigned(dt) then
                    edtTrackToOutrun.Text := FormatTrackNumber(TT3DetectedTrack(dt).TrackNumber)
                  else
                    edtTrackToOutrun.Text := FormatTrackNumber(0);
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_EVASION_TRACK :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              TargetTrack := simMgrClient.FindT3PlatformByID(Round(OrderParam));
              if not(Assigned(TargetTrack)) then
                  Exit;

              with frmTacticalDisplay.fmPlatformGuidance1 do
              begin
                if simMgrClient.IsController then
                  edtTrackToEvade.Text := TargetTrack.Track_ID
                else
                begin
                  dt := simMgrClient.findDetectedTrack(TargetTrack.InstanceIndex);

                  if Assigned(dt) then
                    edtTrackToEvade.Text := FormatTrackNumber(TT3DetectedTrack(dt).TrackNumber)
                  else
                    edtTrackToEvade.Text := FormatTrackNumber(0);
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_STATION_MODE:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              case Round(OrderParam) of
                1:
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.edtOnTrackAnchorMode.Text := 'Position';
                  frmTacticalDisplay.fmPlatformGuidance1.pnlStationTrack.Visible   := false;
                  frmTacticalDisplay.fmPlatformGuidance1.pnlStationPosition.Visible:= true;
                end;
                2:
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.edtOnTrackAnchorMode.Text := 'Track';
                  frmTacticalDisplay.fmPlatformGuidance1.pnlStationTrack.Visible   := True;
                  frmTacticalDisplay.fmPlatformGuidance1.pnlStationPosition.Visible:= False;
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_STATION_CENTER_X:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtStationPosition.Text := formatDM_longitude(OrderParam)+ ' ';
            end;
          end;
        end;
        CORD_TYPE_STATION_CENTER_Y:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.edtStationPosition.Text
                := frmTacticalDisplay.fmPlatformGuidance1
                .edtStationPosition.Text + formatDM_longitude(OrderParam);
            end;
          end;
        end;
        CORD_TYPE_STATION_TRACK:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              TargetTrack := simMgrClient.FindT3PlatformByID(Round(OrderParam));
              if not(Assigned(TargetTrack)) then
                TargetTrack := simMgrClient.FindNonRealPlatformByID(Round(OrderParam));

              if not Assigned(TargetTrack) then
                Exit;

              if TT3Vehicle(simMgrClient.ControlledPlatform).isInstructor then
              begin
                if (TargetTrack is TT3Vehicle) then
                begin
                  if TargetTrack is TT3NonRealVehicle then
                    frmTacticalDisplay.fmPlatformGuidance1.
                      edtOnTrackAnchorTrack.Text := FormatTrackNumber(TT3NonRealVehicle(TargetTrack).TrackNumber)
                  else
                    frmTacticalDisplay.fmPlatformGuidance1.
                      edtOnTrackAnchorTrack.Text := TT3Vehicle(TargetTrack).Track_ID;
                end;
              end
              else begin
                dt := simMgrClient.findDetectedTrack(TargetTrack);
                if Assigned(dt) then
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                    edtOnTrackAnchorTrack.Text := FormatTrackNumber(TT3DetectedTrack(dt).TrackNumber);
                end
                else
                begin
                  frmTacticalDisplay.fmPlatformGuidance1.
                      edtOnTrackAnchorTrack.Text := FormatTrackNumber(TT3PlatformInstance
                        (TargetTrack).TrackNumber);
                end;
              end;
            end;
          end;
        end;
        CORD_TYPE_STATION_BEARING:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtOnTrackAnchorBearing.Text := FormatFloat('000', OrderParam);
            end;
          end;
        end;
        CORD_TYPE_STATION_BEARING_STATE:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              case Round(OrderParam) of
                1:
                  frmTacticalDisplay.fmPlatformGuidance1.lblStationBearingState.Caption := 'degrees T';
                2:
                  frmTacticalDisplay.fmPlatformGuidance1.lblStationBearingState.Caption := 'degrees R';
              end;
            end;
          end;
        end;
        CORD_TYPE_STATION_RANGE :
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              frmTacticalDisplay.fmPlatformGuidance1.
                edtOnTrackAnchorRange.Text := FormatFloat('0.00', OrderParam);
            end;
          end;
        end;
        CORD_TYPE_STATION_DRIFT:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              case Round(OrderParam) of
                0:
                  frmTacticalDisplay.fmPlatformGuidance1.chkStationDrift.Checked := False;
                1:
                  frmTacticalDisplay.fmPlatformGuidance1.chkStationDrift.Checked := True;
              end;
            end;
          end;
        end;
        CORD_TYPE_SETFORMATION:
        begin
          if Assigned(simMgrClient.ControlledPlatform) then
          begin
            if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
            begin
              vehicle := simMgrClient.FindT3PlatformByID(PlatfomID) as TT3Vehicle;
              if vehicle.isFormationLeader then
                veLeader := vehicle
              else
                veLeader := TT3Vehicle(vehicle.LeaderPlatform);

              if Assigned(vehicle) and Assigned(veLeader) then
              begin
                case Round(OrderParam) of
                  0:
                    begin
                      frmTacticalDisplay.fmPlatformGuidance1.lblNameFormation
                           .Caption := '---';
                      frmTacticalDisplay.fmPlatformGuidance1.lblLeaderFormation
                           .Caption := '---';
                      frmTacticalDisplay.fmPlatformGuidance1.lblBearingFormation
                           .Caption := '000';
                      frmTacticalDisplay.fmPlatformGuidance1.lblRangeFormation
                           .Caption := '0.00';
                    end;
                  1:
                    begin

                      { display tab follower }
                      if (not vehicle.isFormationLeader) and vehicle.FormationModeActive then
                      begin
                        frmTacticalDisplay.fmPlatformGuidance1.DisplayTab(Byte(vgtFormation));
                      end;

                      frmTacticalDisplay.fmPlatformGuidance1.lblNameFormation
                           .Caption := veLeader.FormationName;
                      frmTacticalDisplay.fmPlatformGuidance1.lblLeaderFormation
                           .Caption := veLeader.InstanceName;
                      frmTacticalDisplay.fmPlatformGuidance1.lblBearingFormation
                           .Caption := FormatCourse(vehicle.FormationBearing);
                      frmTacticalDisplay.fmPlatformGuidance1.lblRangeFormation
                           .Caption := FormatFloat('0.00', vehicle.FormationRange);
                    end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
    CORD_ID_ACTIVATION :
    begin
      if Assigned(simMgrClient.ControlledPlatform) then
      begin
        if simMgrClient.ControlledPlatform.InstanceIndex = PlatfomID then
        begin
          frmTacticalDisplay.fmPlatformGuidance1.UpdatemnGuidance(OrderType);

          if (OrderType <> Byte(vgtWaypoint)) and Assigned(frmWaypointEditor) then
            frmWaypointEditor.Close;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnPlatformPositonChange(Sender: TObject);
begin
  inherited;

  if Sender = simMgrClient.MyCenterHookedPlatfom then
    frmTacticalDisplay.UpdateRangeRingsPos(Sender);
end;

procedure TT3ClientEventManager.OnPlatformPropertyChange(Sender: TObject);
begin
  inherited;
  // commented biar ga berat tampilannya
  //ufToteDisplay.frmToteDisplay.UpdateVehicle(TT3Vehicle(Sender));
end;

procedure TT3ClientEventManager.onEngageTrack(Track : String);
begin
  frmTacticalDisplay.fmPlatformGuidance1.edtTrackToEngage.Text := Track;
end;

procedure TT3ClientEventManager.UpdateEmconCheckBox(pflist: TT3PlatformInstance;
          StateBtn : Boolean);
//var
//  vSelect : TSimObject;
begin
  //inherited;

  if simMgrClient.ControlledPlatform = pflist then
  begin
    frmTacticalDisplay.fmEmcon1.UpdateCheckBox(PfList, StateBtn);
  end;

  if pflist is TT3Vehicle then
    OnVehicleSensorStateChange(TT3Vehicle(pflist));

//  if frmToteDisplay.lvPlatforms.Selected <> nil then
//  begin
//    if frmToteDisplay.lvPlatforms.Selected.Data <> nil then
//    begin
//      vSelect := frmToteDisplay.lvPlatforms.Selected.Data;

//      if Assigned(vSelect) then
//      begin
//        if vSelect is TT3PlatformInstance then
//        begin
//          if TT3PlatformInstance(vSelect).InstanceIndex = pflist.InstanceIndex then
//          begin
//            OnVehicleSensorStateChange(pflist);
//          end;
//        end;
//      end;
//    end;
//  end;

  { TODO 1 : Cek baris berikut, UpdateEmconCheckBox di komen dulu karena perubahan di frmweapon }
  //frmTacticalDisplay.fmWeapon1.btnGunEngagementBreak.Click;
end;

procedure TT3ClientEventManager.OnPlatformSelected(Sender: TObject);
begin
  inherited;
  if Sender is TT3PlatformInstance then
  begin
    if TT3PlatformInstance(Sender).Selected then
    begin
      frmTacticalDisplay.UpdateHookedInfo(Sender);
      frmTacticalDisplay.SetSelectedTrack(TT3PlatformInstance(Sender));
      //tambahan aldy
      frmToteDisplay.SetSelectedPlatform(TT3PlatformInstance(Sender));

      if Sender is TT3Vehicle then
        frmTacticalDisplay.ToolBtnTrackHistory.Down := TT3Vehicle(Sender).ShowTrails;

      if frmTacticalDisplay.FRangeRingOnHook then
        simMgrClient.MyRingHookedPlatfom := TSimObject(Sender);

      if frmTacticalDisplay.FHookOnPlatform then
        simMgrClient.MyCenterHookedPlatfom := TSimObject(Sender);
    end;
  end;
end;

procedure TT3ClientEventManager.OnPropertyIntChange(Sender: TObject;
  Props: TPropsID; Value: Integer);
var
  I: Integer;
  WpnController : TfrmWeaponCtrl;
begin
  inherited;

  frmToteDisplay.OnPropertyByteChange(Sender, Props, Value);

  if Sender is TT3GunOnVehicle then
  begin
    for I := 0 to frmTacticalDisplay.fmWeapon1.WpnIntCont.Count - 1 do
    begin
      WpnController := frmTacticalDisplay.fmWeapon1.WpnIntCont.Items[I];

      if WpnController.WeaponCategory = (Sender as TT3GunOnVehicle).WeaponCategory then
      begin
        case WpnController.WeaponCategory of
          wcMissileAirToSurfaceSubsurface: ;
          wcMissileSurfaceSubsurfaceToSurfaceSubsurface: ;
          wcMissileSurfaceSubsurfaceToAir: ;
          wcMissileAirToAir: ;
          wcMissileLandAttack: ;
          wcTorpedoStraigth: ;
          wcTorpedoActiveAcoustic: ;
          wcTorpedoPassiveAcoustic: ;
          wcTorpedoWireGuided: ;
          wcTorpedoWakeHoming: ;
          wcTorpedoActivePassive: ;
          wcTorpedoAirDropped: ;
          wcMine: ;
          wcGunCIWS: TfrmGunCIWS(WpnController).OnPropertyByteChange(Sender, Props, Value);
          wcGunGun: TfrmGunAutoManual(WpnController).OnPropertyByteChange(Sender, Props, Value) ;
          wcGunRocket: ;
          wcBomb: ;
          wcVectac: ;
          wcHybrid: ;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnPropGameSettingBoolChange(Sender : TObject;Props: TPropsID;
  Value: Boolean);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnPropGameSettingByteChange(Sender : TObject;Props: TPropsID;
  Value: Byte);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnRadarRemoveAssignedPlatform(Sender : TObject);
begin
  if not Assigned(Sender) then
    Exit;

  if Sender is TT3Radar then
  begin
    frmTacticalDisplay.fmFireControl1.RefreshAssignTrack(Sender as TT3Radar);
  end;
end;

procedure TT3ClientEventManager.OnDatalinkOffLine(Sender: TObject);
begin
  inherited;

  simMgrClient.RemoveDetectedTrackByDataLink(TT3DataLink(Sender));

  if CompareStr(frmToteDisplay.edtDatalink.Text,TT3DataLink(Sender).InstanceName) = 0  then
  begin
    frmToteDisplay.btnStopDataLink.Down := true;
    frmToteDisplay.btnPlayDataLink.Down := false;
  end;

  frmLog.DatalinkUpdate(Sender);
end;

procedure TT3ClientEventManager.OnDatalinkTracksUpdate(Sender: TObject);
var
  dl      : TT3DataLink;
  i,j     : integer;
  itemNCS : TT3DLNCSTrackEntityItem;
  itemPU  : TT3DLParticipatingUnitItem;
  PUNCS   : TT3PlatformInstance;
  aPf     : TSimObject;
  //track   : TSimObject;
  range   : double;
  outRange, found : boolean;
  arrTracks : TIntegerArray;
begin
  inherited;

  if not Assigned(Sender) then
    Exit;

  frmLog.DatalinkUpdate(Sender);

  outRange := false;

  if Sender is TT3DataLink then
  begin
    if not simMgrClient.ISInstructor then
    begin
      dl := TT3DataLink(Sender);

      { cek apakah ada platform yang di control }
      if not Assigned(simMgrClient.ControlledPlatform) then
      begin
        simMgrClient.RemoveDetectedTrackByDataLink(dl);

        Exit;
      end;
      { end cek platform yang di control }

      { cek emcon status pada object yang di control}
      if simMgrClient.ControlledPlatform is TT3Vehicle then
      begin
        if (TT3Vehicle(simMgrClient.ControlledPlatform).EMCON_HFDataLinkVehicle = EmconHFDatalinkOn)
        or (TT3Vehicle(simMgrClient.ControlledPlatform).EMCON_UHFVHFDataLinkVehicle = EmconUHFVHFDatalinkOn) then
        begin
          { remove detected track }
          simMgrClient.RemoveDetectedTrackByDataLink(dl);

          Exit;
        end;
      end;
      { end cek emcon status }

      // Get participating Unit
      itemPU := dl.GetPUByInstanceIndex(simMgrClient.ControlledPlatform.InstanceIndex);
      if not Assigned(itemPU) then begin
        Exit;
      end;

      // Get NCS PLatform
      PUNCS := dl.GetNCSPlatform;
      if not Assigned(PUNCS) then
        // if not assign, delete detected track
        simMgrClient.RemoveDetectedTrackByDataLink(dl)
      else
      begin
        if simMgrClient.ControlledPlatform.Equals(PUNCS) then
        begin
          { shortening cycle process }
          simMgrClient.findDetectedTracksByDatalink(arrTracks);

          { sync between NCS entities with detected tracks }
          for I := 0 to dl.getNCSEntitiesCount - 1 do
          begin
            itemNCS := dl.getNCSEntity(i);

            if not Assigned(itemNCS) then
              Continue;

            if itemNCS.NEIOwnerID = PUNCS.InstanceIndex then
              Continue;

            found := false;
            for j := 0 to Length(arrTracks) - 1 do
            begin
              if arrTracks[j] = itemNCS.NEITrackID then
              begin
                { already exist on detected track by datalink, set to 0 }
                arrTracks[j] := 0;
                found := true;
                break;
              end;
            end;

            if simMgrClient.FMyCubGroup.IsGroupMember(itemNCS.NEITrackID) then
              found := true;

            { if not exist on detected track by datalink, then add track }
            if not found then
              simMgrClient.AddDetectedTrackByDataLink(itemNCS.NEITrackID,dl);
          end;

          for I := 0 to Length(arrTracks) - 1 do
          begin
            if arrTracks[i] = 0  then
              Continue;

            aPf := simMgrClient.FindT3PlatformByID(arrTracks[i]);
            if Assigned(aPf) then
              simMgrClient.Remove_DetectedTrack(aPf,dl);
          end;
        end
        else
        begin
          { track update berdasar jarak controlled platform band dan NCS band }
          range := CalcRange(simMgrClient.ControlledPlatform.PosX,simMgrClient.ControlledPlatform.PosY,
                    PUNCS.PosX, PUNCS.PosY);

          case dl.BandType of
            // HF
            1 :
            begin
              if range > simMgrClient.GameDefaults.FData.Max_HF_Detect_Range then
                outRange := True;
            end;
            // UHF
            2 :
            begin
              if range > simMgrClient.GameDefaults.FData.Max_UHF_Detect_Range then
                outRange := True;
            end
          end;

          if outRange or (itemPU.PUStatus = pusOff) then
            simMgrClient.RemoveDetectedTrackByDataLink(dl)
          else
          begin
            { shortening cycle process }
            simMgrClient.findDetectedTracksByDatalink(arrTracks);

            { sync between NCS entities with detected tracks }
            for I := 0 to dl.getNCSEntitiesCount - 1 do
            begin
              itemNCS := dl.getNCSEntity(i);

              if not Assigned(itemNCS) then
                Continue;

              if itemNCS.NEIOwnerID = simMgrClient.ControlledPlatform.InstanceIndex then
                Continue;

              found := false;
              for j := 0 to Length(arrTracks) - 1 do
              begin
                if arrTracks[j] = itemNCS.NEITrackID then
                begin
                  { already exist on detected track by datalink, set to 0 }
                  arrTracks[j] := 0;
                  found := true;
                  break;
                end;
              end;

              if simMgrClient.FMyCubGroup.IsGroupMember(itemNCS.NEITrackID) then
                found := true;

              { if not exist on detected track by datalink, then add track }
              if not found then
                simMgrClient.AddDetectedTrackByDataLink(itemNCS.NEITrackID,dl);
            end;

            for I := 0 to Length(arrTracks) - 1 do
            begin
              if arrTracks[i] = 0  then
                Continue;

              aPf := simMgrClient.FindT3PlatformByID(arrTracks[i]);
              if Assigned(aPf) then
                simMgrClient.Remove_DetectedTrack(aPf,dl);
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnDataLinkUpdated(Sender : TObject);
begin
  if not Assigned(Sender) then
    Exit;

  if Sender is TT3DataLink then
  begin
    if simMgrClient.ISInstructor then
      frmToteDisplay.SetDataLink(Sender as TT3DataLink)
    else
    begin
      frmToteDisplay.SetDataLinkView;
    end;
  end;
end;

procedure TT3ClientEventManager.OnFireControlUpdated(Sender : TObject);
begin
  if not Assigned(Sender) then
    Exit;

  if Sender is TT3Radar then
  begin
    if Assigned(simMgrClient.ControlledPlatform) then begin
      if simMgrClient.ControlledPlatform.InstanceIndex =
        TT3PlatformInstance(TT3Radar(Sender).Parent).InstanceIndex then
      begin
        //SET RADAR LIST
        frmTacticalDisplay.fmFireControl1.RefreshAssignTrack(Sender as TT3Radar);
        frmTacticalDisplay.fmFireControl1.UpdateFCList(Sender as TT3Radar);
      end;
    end;

    //frmTacticalDisplay.fmFireControl1.RefreshPlatformSensorsTab(TT3PlatformInstance(TT3Radar(Sender).Parent));
  end;
end;

procedure TT3ClientEventManager.OnPropGameSettingDoubleChange(Sender : TObject;Props: TPropsID;
  Value: Double);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnPropGameSettingIntChange(Sender : TObject;Props: TPropsID;
  Value: Integer);
begin
  inherited;
  case Props of

    psTimeRemoveWreck:
      begin
        simMgrClient.WreckTimeChange(Value);
        frmToteDisplay.updateInfoTree(Props,Value,false,0,0);
      end;

    psAirTrackDropTime:
      begin
        frmToteDisplay.updateInfoTree(Props,Value,false,0,0);
      end;
  end;
end;

procedure TT3ClientEventManager.OnRadarControlMode(Sender: TObject;
  Mode: TRadarControlMode);
begin
  inherited;

  TT3Radar(Sender).UpdateAssignedtrack;

  frmTacticalDisplay.fmSensor1.UpdateSensorForm(TT3Sensor(Sender));
  frmTacticalDisplay.fmEMCON1.UpdateSensorList(TT3Radar(Sender));
end;

procedure TT3ClientEventManager.OnSyncTarget(aWeapon, aTarget: TObject);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnSensorDetect(Sender, detected: TObject;
  Value: boolean; aIFF : boolean );
var
  isNew, foundESM : boolean;
  dev : TT3DeviceUnit;
  i, j : Integer;
  dt : TT3DetectedTrack;
  ESM : TObject;
begin
  inherited;

  dev := nil;
  isNew := False;

  if simMgrClient.ISInstructor then
    exit;

  // klo object udah diskejul mau di bunuh, g perlu diterusin
  if TSimObject(detected).FreeMe then
    exit;

  // klo object yg dormant jg g perlu diterusin
  if detected is TT3PlatformInstance then
    if TT3PlatformInstance(detected).Dormant then
      exit;

  if detected is TT3Weapon then
  begin
    if detected is TT3Missile then
      if not TT3Missile(detected).Launching then
        exit;

    if not TT3Weapon(detected).Launched then
      exit;
  end;

  //membuat update yang berlebihan sehinngga controler hang
  //  if detected is TT3Vehicle then
  //    frmTacticalDisplay.fmWeapon1.onDetectAirPlatform(TT3PlatformInstance(detected));

  if Sender is TT3DeviceUnit then
  begin
    dev := Sender as TT3DeviceUnit;
  end;

  if Value then
  begin
    foundESM := False;

    if Sender is TT3ESMSensor then  {supaya esm satu garis saja}
    begin
      for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
      begin
        dt := TT3DetectedTrack(simMgrClient.SimDetectedTrackList.getObject(i));

        if dt.ESMTracks.Count > 0 then
        begin
          for j := 0 to dt.ESMTracks.Count - 1 do
          begin
            ESM := dt.ESMTracks.Items[j];

            if ESM is TT3ESMTrack then
            begin
              if (TT3ESMSensor(TT3ESMTrack(ESM).DetectBy).InstanceIndex
                  = TT3ESMSensor(sender).InstanceIndex) then
              begin
                if TT3ESMTrack(ESM).TrackObject.Parent = TSimObject(detected).Parent then
                begin
                  foundESM := True;
                  Break;
                end;
              end;
            end;
          end;
        end;
      end;
    end;

    if not(foundESM) then
    begin
      isNew := SimMgrClient.AddDetectedTrack(TSimObject(detected),
               TSimObject(Sender), aIFF);

      if isNew then
      begin
        if detected is TT3PlatformInstance then     //----add pak andik 12042012
        begin
          if Assigned(dev) then
            OnLogEventStr('TT3ClientEventManager.OnSensorDetect', dev.InstanceName + ' detect ' +
              TT3PlatformInstance(dev.Parent).InstanceName);
        end;
      end
      else
      begin
        //------add pak andik 12042012
      end;
    end;
  end
  else
  if simMgrClient.Remove_DetectedTrack(TSimObject(detected),TSimObject(Sender)) then
  begin
  end; //--------------------------

  if isNew then
  begin
    frmTacticalDisplay.RefreshTracks;
  end;
end;

procedure TT3ClientEventManager.OnSensorOperationalStatus(Sender: TObject;
  Mode: TSensorOperationalStatus);
begin
  inherited;

  if Sender is TT3Sensor then
  begin
    frmTacticalDisplay.fmSensor1.UpdateSensorForm(TT3Sensor(Sender));

    if sender is TT3Radar then
    begin
      frmTacticalDisplay.fmFireControl1.UpdateFCList(TT3Radar(Sender));
    end;

    frmTacticalDisplay.fmEMCON1.UpdateSensorList(TT3Sensor(Sender));

    if (Mode = sopOff) or (Mode = sopDamage) or
       (Mode = sopTooDeep) or
       (TT3Sensor(Sender).EmconOperationalStatus = EmconOn) then
    begin
      simMgrClient.RemoveDetectedTracks(TSimObject(Sender));
    end;
  end;
end;

procedure TT3ClientEventManager.OnSensorRemoved(Sender: TObject);
begin
  inherited;

  if Sender is TT3Sensor then
  begin
    simMgrClient.RemoveDetectedTracks(TSimObject(Sender));
  end;
end;

procedure TT3ClientEventManager.OnSonarControlMode(Sender: TObject;
  Mode: TSonarControlMode);
begin
  inherited;
  with TT3Sonar(Sender) do begin
    {SimMgrClient.netSend_CmdSensor
      (TT3PlatformInstance(Parent).InstanceIndex,CSENSOR_TYPE_SONAR,
      SonarDefinition.FData.Sonar_Instance_Index, CORD_ID_ControlMode, byte
        (ControlMode));}
  end;

  frmTacticalDisplay.fmSensor1.UpdateSensorForm(TT3Sensor(Sender));
  frmTacticalDisplay.fmEMCON1.UpdateSensorList(TT3Sensor(Sender));
end;

procedure TT3ClientEventManager.onIFFTransponderStatus(Sender : TObject;
  Mode : TSensorOperationalStatus);
begin
  if Sender is TT3Sensor then
  begin
    inherited;

    frmTacticalDisplay.fmSensor1.UpdateSensorForm(TT3Sensor(Sender));
    frmTacticalDisplay.fmEMCON1.UpdateSensorList(TT3Sensor(Sender));
  end;

  //frmTacticalDisplay.fmSensor1.UpdateIFFSensorList(TT3IFFSensor(Sender),1);
  //frmTacticalDisplay.fmSensor1.RefreshIFFPropertiesTab(TT3IFFSensor(Sender));
  //frmTacticalDisplay.fmEMCON1.UpdateIFFList(TT3IFFSensor(Sender));
end;

procedure TT3ClientEventManager.OnIffEvent(aShipID, aIffIndex, aIffType,
  aEventMode: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnIFFInterrogatorStatus(Sender : TObject;
  Mode : TSensorOperationalStatus);
begin
  if Sender is TT3Sensor then
  begin
    inherited;

    frmTacticalDisplay.fmSensor1.UpdateSensorForm(TT3Sensor(Sender));
    frmTacticalDisplay.fmEMCON1.UpdateSensorList(TT3Sensor(Sender));
  end;

 // frmTacticalDisplay.fmSensor1.UpdateIFFSensorList(TT3IFFSensor(Sender),2);
  //frmTacticalDisplay.fmSensor1.RefreshIFFPropertiesTab(TT3IFFSensor(Sender));
  //frmTacticalDisplay.fmEMCON1.UpdateIFFList(TT3IFFSensor(Sender));
end;

procedure TT3ClientEventManager.OnIFFSensorDetect(aShip, aSensor,
  aTarget: TObject; value, value2 : boolean; mode1,mode2,mode3,mode3C : string);
var
  i : Integer;
  SimTrack : TT3DetectedTrack;
  detTrack : TT3PlatformInstance;
begin
  inherited;

  //menggambar topi di object target
  if aTarget is TT3PlatformInstance then
  begin
    detTrack := TT3PlatformInstance(aTarget);

    for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
    begin
      SimTrack := TT3DetectedTrack(simMgrClient.SimDetectedTrackList.getObject(i));

      if detTrack = SimTrack.TrackObject then
      begin
        SimTrack.isShowIFF := value;
        SimTrack.isMode4IFF := value2;
        SimTrack.TransMode1Detected := mode1;
        SimTrack.TransMode2Detected := mode2;
        SimTrack.TransMode3Detected := mode3;
        SimTrack.TransMode3CDetected := mode3C;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnSonobuoyPassiveDetect(Sender,
  detected: TObject; aValue: Byte);
var
  TargetObj : TT3PlatformInstance;
  i : integer;
  VecTrack : TT3Vehicle;
begin
  inherited;

  if detected is TT3PlatformInstance then
  begin
    TargetObj := TT3PlatformInstance(detected);
    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      VecTrack := TT3Vehicle(simMgrClient.SimPlatforms.getObject(i));
      if TargetObj.InstanceIndex = VecTrack.InstanceIndex then
      begin
        if aValue = 1 then
        begin
          VecTrack.Detect1Sonobuoy := true;
          VecTrack.ObjSonobuoy := TT3Sonobuoy(Sender);
        end
        else if aValue = 2 then
        begin
          VecTrack.Detect2Sonobuoy := true;
          VecTrack.ObjSonobuoy := TT3Sonobuoy(Sender);
        end
        else if aValue >= 3 then
        begin
          VecTrack.Detect3Sonobuoy := true;
        end
        else if aValue = 0 then
        begin
          VecTrack.AOPCounterSonobuoy2 := 0;
          VecTrack.AOPCounterSonobuoy3 := 0;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnWeaponDestroy(Sender: TObject);
var
  pi, newPi, pf, ftrack, newPlatform : TT3PlatformInstance;
  i, j, k : Integer;
  ListMissile : TMissileHaveLaunch;
begin
  inherited;

  if (Sender is TT3Missile) or (Sender is TT3Torpedo) or (Sender is TT3Bomb)then
  begin
    pf := TT3PlatformInstance(Sender);

    //------------- cari new platform untuk selected + controled object -----//
    newPlatform := nil;
    for k := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      newPi := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(k));
      if not Assigned(newPi) then
        continue;

      if newPi is TT3Vehicle then      //mk
      begin
        if (newPi.UnitGroup) and not(newPi.FreeMe) then
        begin
          newPlatform := newPi;
          Break;
        end;
      end;
    end;
    //------------- cari new platform untuk selected + controled object -----//

    if frmTacticalDisplay.focusedTrack is TT3DetectedTrack then
      ftrack := TT3DetectedTrack(frmTacticalDisplay.focusedTrack).TrackObject
                as TT3PlatformInstance
    else
      ftrack := TT3PlatformInstance(frmTacticalDisplay.focusedTrack);

    if Assigned(pf) and Assigned(ftrack) and (pf = ftrack) then
    begin
      if ftrack.Selected then
      begin
        ftrack.Selected := False;
      end;

      frmTacticalDisplay.focusedTrack := nil;

      if newPlatform <> nil then
      begin
        newPlatform.Selected := True;
        frmTacticalDisplay.focusedTrack := newPlatform;
      end;
    end;

    //----Set new Controlerplatform n focustrack---//
    if pf.Controlled then
    begin
      pf.Controlled := False;

      if newPlatform <> nil then
      begin
        newPlatform.Controlled := True;
      end;
    end;
    //---------------------------------------------//

    //---- Cek ControlledPlatform - and set nill ---//
    if Assigned(simMgrClient.ControlledPlatform) then
    begin
      if simMgrClient.ControlledPlatform = pf then
        simMgrClient.ControlledPlatform := nil;
    end;
    //---------------------------------------------//

    frmTacticalDisplay.RemoveFromTrackList(Sender);
    simMgrClient.RemoveDetectedTrack(TSimObject(Sender));

    if TT3PlatformInstance(Sender).UnitGroup then begin
      frmTacticalDisplay.Refresh_AssumeControl;
    end;
  end;

  //Set Surface to Surface
  if Sender is TT3Missile then
  begin
    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

      if pi is TT3Vehicle then
      begin
        if TT3Vehicle(pi).InstanceIndex = TT3Missile(Sender).ShipIndex then
        begin
          ListMissile := nil;

          if TT3Missile(Sender).Engagement = meDTOT then
          begin
            for j := 0 to TT3Vehicle(pi).MissileWaitToLaunch.Count - 1 do
            begin
              ListMissile := TMissileHaveLaunch(TT3Vehicle(pi).MissileWaitToLaunch[j]);
              if ListMissile.LauncherNumber = TT3Missile(sender).LauncherNumber then
              begin
                ListMissile.isLaunch := False;
                TT3Vehicle(pi).MissileWaitToLaunch.Delete(j);
                Break;
              end;
            end;

            for j := 0 to TT3Vehicle(pi).MissileDTOTLaunch.Count - 1 do
            begin
              ListMissile := TMissileHaveLaunch(TT3Vehicle(pi).MissileDTOTLaunch[j]);
              if ListMissile.MissileLaunch = TT3Missile(sender) then
              begin
                ListMissile.isLaunch := False;
                TT3Vehicle(pi).MissileDTOTLaunch.Delete(j);
                Break;
              end;
            end;
          end
          else
          begin
            for j := 0 to TT3Vehicle(pi).MissileLaunch.Count - 1 do
            begin
              ListMissile := TMissileHaveLaunch(TT3Vehicle(pi).MissileLaunch[j]);
              if ListMissile.MissileLaunch = TT3Missile(sender) then
              begin
                ListMissile.isLaunch := False;
                TT3Vehicle(pi).MissileLaunch.Delete(j);
                Break;
              end;
            end;
          end;

          if TT3PlatformInstance(Sender).reasonDestroy = 1 then
            frmToteDisplay.OnPlatformDestroy(Sender);

          if ListMissile <> nil then
          begin
            if ListMissile.isAir then
              frmToteDisplay.ClearAllSurfaceToAirList(TT3Vehicle(pi))
            else
              frmToteDisplay.ClearAllSurfaceToSurfaceList(TT3Vehicle(pi));
          end;
        end;
      end;
    end;
  end;

  // Tambahan Gue : Prince Achmad (Mengirim laporan ke totedisplay alasan torpedo hancur)
  if Sender is TT3Torpedo then
  begin
//    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
//    begin
//      pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

//      if pi is TT3Vehicle then
//      begin

        if (TT3PlatformInstance(Sender).reasonDestroy = 1)
          or (TT3PlatformInstance(Sender).reasonDestroy = 4) then
        begin
          frmToteDisplay.OnPlatformDestroy(Sender);
        end;
//        Break;
//      end;
//	  end;
  end;

  if Sender is TT3Mine then
  begin
    for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
    begin
      pi := simMgrClient.SimPlatforms.getObject(i) as TT3PlatformInstance;

      if pi is TT3Vehicle then
      begin
        if (TT3PlatformInstance(Sender).reasonDestroy = 1)
          or (TT3PlatformInstance(Sender).reasonDestroy = 4) then
        begin
          frmToteDisplay.OnPlatformDestroy(Sender);
        end;

        Break;
      end;
	  end;
  end;

  {SEMENTARA
  if simMgrClient.ISInstructor then
  begin
    if (Sender is TT3Missile) then frmTacticalDisplay.addStatus('Missile destroyed');
    if (Sender is TT3Torpedo) then frmTacticalDisplay.addStatus('Torpedo destroyed');
    if (Sender is TT3Mine) then frmTacticalDisplay.addStatus('Mine destroyed');
    if (Sender is TT3GunShoot) then frmTacticalDisplay.addStatus('Gun destroyed');
    if (Sender is TT3GunOnVehicle) then frmTacticalDisplay.addStatus('Gun on vehicle destroyed');
  end;}
end;

procedure TT3ClientEventManager.OnWeaponHitByServer(SenderID, TargetID, Lethality : integer) ;
var
  Sender, Target : TT3PlatformInstance;
begin
  inherited;

  Sender := simMgrClient.FindWeaponByID(SenderID);
  if not Assigned(Sender) then
    Sender := simMgrClient.FindT3PlatformByID(SenderID);

  if not Assigned(Sender) then
    Sender := TT3PlatformInstance(simMgrClient.FindDeviceByID(SenderID));

  Target := simMgrClient.FindT3PlatformByID(TargetID);

  if Assigned(Sender) then
    Sender.reasonDestroy := 22;

  if Assigned(Sender) and Assigned(Target)then
  begin
    if TT3PlatformInstance(Sender).UnitMakeDestroy = '' then
      frmToteDisplay.OnPlatformDestroy(Sender, TT3PlatformInstance(Target).InstanceName)
    else
      frmToteDisplay.OnPlatformDestroy(Sender, TT3PlatformInstance(Sender).UnitMakeDestroy);
  end;

  if Assigned(Target) then
  begin
    if TT3PlatformInstance(frmTacticalDisplay.focusedTrack) = Target then
    begin
      frmTacticalDisplay.UpdateTabHooked(Target);

      if Target is TT3Vehicle then
      begin
        frmToteDisplay.UpdateSensorVehicle(TT3Vehicle(Target));
        frmToteDisplay.UpdateCountermeasureVehicle(TT3Vehicle(Target));
        frmToteDisplay.UpdateStatusVehicle(TT3Vehicle(Target));
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnWeaponInOut(SenderID: integer; reasondestroy: Byte);
var
  Sender : TT3PlatformInstance;
begin
  inherited;

  Sender := simMgrClient.FindWeaponByID(SenderID);
  if not Assigned(Sender) then
    Sender := simMgrClient.FindT3PlatformByID(SenderID);

  if Assigned(Sender) then
  begin
    Sender.reasonDestroy := reasondestroy;

    frmToteDisplay.OnPlatformDestroy(Sender);
  end;

  //free torpedo yang ada dihybrid missile ketika missile hancur
  if Sender is TT3HybridMissile then
  begin
    if reasonDestroy <> 23 then
    begin
     if Assigned(OnLogEventStr) then
        OnLogEventStr('TT3ClientEventManager.OnWeaponInOut', 'Destroy torpedo carried by missile, reasondestroy : ' +
        IntToStr(reasondestroy));

//       TT3HybridMissile(Sender).LoadedTorpedo.Free;
    end;
  end;

  if Sender is TT3Torpedo then
  begin
    TT3Torpedo(Sender).FreeChilds;
    Sender.FreeMe := True;
    Sender.AbsoluteFree := True;
  end
  else if Sender is TT3Missile then
  begin
    TT3Missile(Sender).FreeChilds;
    Sender.FreeMe := True;
    TT3Missile(Sender).AbsoluteFree := True;
  end
  else if Sender is TT3Bomb then
  begin
    TT3Bomb(Sender).FreeChilds;
    Sender.FreeMe := True;
    TT3Bomb(Sender).AbsoluteFree := True;
  end
end;

procedure TT3ClientEventManager.OnWeaponLaunched(Sender, Target: TObject);
var
  wpn: TT3Weapon;
begin
  inherited;

  if not Assigned(Sender) then
    Exit;

  if Sender is TT3Weapon then
  begin
    wpn := TT3Weapon(Sender);

    if wpn is TT3Missile then
    begin
      simMgrClient.SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

      if wpn.UnitGroup then begin
        frmTacticalDisplay.Refresh_AssumeControl;
      end;

      if Assigned(Target) then
      begin
        if (Sender  is TT3Missile_SS) or (Sender is TT3Missile_SA) then
          frmToteDisplay.OnWeaponLaunched(Sender, Target);

        if simMgrClient.FMyCubGroup <> nil then
        begin
          if (simMgrClient.FMyCubGroup.FData.Group_Index = 0) or
             (simMgrClient.FMyCubGroup.FData.Group_Index = TT3Missile(sender).NoCubicle)then
            frmTacticalDisplay.addStatus('Missile is launched');
        end;
      end;

      //nando : for draw RBL n RBLW
      TT3Missile(Sender).SameGroupPlatform := simMgrClient.FMyCubGroup;
      TT3Missile(Sender).DetectPlatform    := simMgrClient.SimDetectedTrackList;
      TT3Missile(Sender).isInstructor      := simMgrClient.ISInstructor;

      if TT3Missile(Sender).isInstructor then
        TT3Missile(Sender).TrackNumber := simMgrClient.GetTrackNumberForWeapon
      else
        TT3Missile(Sender).TrackNumber := simMgrClient.GetTrackNumberForWeapon;
    end
    else if Sender is TT3Torpedo then
    begin
      simMgrClient.SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

      if wpn.UnitGroup then begin
        frmTacticalDisplay.Refresh_AssumeControl;
      end;

      if Assigned(Target) then
      begin
        frmToteDisplay.OnWeaponLaunched(Sender, Target);

        if (simMgrClient.FMyCubGroup.FData.Group_Index = 0) or
           (simMgrClient.FMyCubGroup.FData.Group_Index = TT3Torpedo(sender).NoCubicle)then
          frmTacticalDisplay.addStatus('Torpedo is launched');
      end;

      //mk 12
      TT3Torpedo(Sender).isInstructor      := simMgrClient.ISInstructor;

      if TT3Torpedo(Sender).isInstructor then
        TT3Torpedo(Sender).TrackNumber := simMgrClient.GetTrackNumberForWeapon
      else
        TT3Torpedo(Sender).TrackNumber := simMgrClient.GetTrackNumberForWeapon;
    end
    else if Sender is TT3Bomb then
    begin
      simMgrClient.SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

      if wpn.UnitGroup then begin
        frmTacticalDisplay.Refresh_AssumeControl;
      end;

      if Assigned(Target) then
      begin
        frmToteDisplay.OnWeaponLaunched(Sender, Target);

        if (simMgrClient.FMyCubGroup.FData.Group_Index = 0) or
           (simMgrClient.FMyCubGroup.FData.Group_Index = TT3Bomb(sender).NoCubicle)then
          frmTacticalDisplay.addStatus('Bomb is launched');
      end;
    end
    else if Sender is TT3GunShoot then
    begin
      simMgrClient.SimWeapons.addObject(TSimObject(Sender));

      if (simMgrClient.FMyCubGroup.FData.Group_Index = 0) or
           (simMgrClient.FMyCubGroup.FData.Group_Index = TT3GunShoot(sender).NoCubicle)then
      frmTacticalDisplay.addStatus('Gun is launched');
    end;
  end;
end;

procedure TT3ClientEventManager.OnWeaponPropertyChange(Sender: TObject);
begin
  inherited;

  frmTacticalDisplay.fmWeapon1.OnWeaponPropertyChange(Sender);
  frmToteDisplay.lvPlatformsSelectItem(sender, frmToteDisplay.lvPlatforms.Selected,true);

end;

//procedure TT3ClientEventManager.OnGuidanceStationReached(
//  aParent: TT3PlatformInstance; val : Boolean);
//begin
//  inherited;

////  SimMgrClient.netSend_CmdPlatform(aParent.InstanceIndex, CORD_ID_MOVE,
////    CORD_TYPE_SPEED, aSpeed);
//end;

//procedure TT3ClientEventManager.OnGuidanceStationUpdateHeading(
//  aParent: TT3PlatformInstance; aHeading: Double);
//begin
//  inherited;

////  SimMgrClient.netSend_CmdPlatform(aParent.InstanceIndex, CORD_ID_MOVE,
////    CORD_TYPE_COURSE, aHeading);
//end;

//procedure TT3ClientEventManager.OnGuidanceStationUpdateSpeed(
//  aParent: TT3PlatformInstance; aSpeed: Double);
//begin
//  inherited;

//end;

procedure TT3ClientEventManager.OnGuidance_Engage(aShipID, aParentID: TT3PlatformInstance;
    MissileID : Integer; IsHaveLaunch : Byte);
var
  str,tgtstr         : string;
  cp,tgt      : TT3Vehicle;
  IsInRange   : Boolean;
  Range       : Double;
  I           : Integer;
  rMis        : TRecCmd_LaunchMissile;
  wpn         : TT3Weapon;
  sensor      : TT3Sensor;
  radar       : TT3Radar;
  j, k        : Integer;
  pLauncher :  TFitted_Weap_Launcher_On_Board;
begin
  if (aShipID is TT3Vehicle) and (aParentID is TT3Vehicle) then
  begin
    cp  := TT3Vehicle(aShipID);
    tgt := TT3Vehicle(aParentID);

    Range := CalcRange(tgt.getPositionX, tgt.getPositionY,
             cp.getPositionX, cp.getPositionY);
    str := FormatFloat('0.0',cp.EngageDistance);
    tgtstr := FormatFloat('0.0',Range);
    IsInRange := str = tgtstr;

    if IsInRange then
    begin
      rMis.ParentPlatformID        := cp.InstanceIndex;
      rMis.ProjectileInstanceIndex := 0;
      rMis.Order                   := 0;
      rMis.FiringMode              := 0;

      if cp.IsHaveLaunch = 0 then
      begin
        for k := 0 to cp.Devices.Count - 1 do
        begin
          //radar := TT3Radar(cp.Devices.Items[k]);
		    sensor := (cp.Devices.Items[k]);

          if sensor is TT3Radar then
          begin
            radar := TT3Radar(sensor);

            if (radar.RadarDefinition.FType.Radar_Type_Index = 2) or
               (radar.RadarDefinition.FType.Radar_Type_Index = 3) then
            begin
              if Range <= radar.RadarDefinition.FDef.Detection_Range then
              begin
                for I := 0 to cp.Weapons.Count - 1 do
                begin
                  wpn := TT3Weapon(cp.Weapons.Items[i]);
                  if TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex =  MissileID then Begin
                    if (wpn is TT3MissilesOnVehicle) and (TT3MissilesOnVehicle(cp.Weapons.Items[i]).Quantity <> 0)then begin
                      for j := 0 to TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FLaunchs.Count - 1 do
                      begin
                         pLauncher := TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FLaunchs.Items[j];

                         if (Range > 0) and (Range < 180) then  begin
                           if TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FData.Mount_Type mod 2 = 0 then
                           begin
                              rMis.LaunchAngle := pLauncher.FData.Launcher_Angle;
                              rMis.MissileID := TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex;
                           end
                           else
                             continue
                         end
                         else if (Range > 180) then  begin
                           if TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FData.Mount_Type mod 2 = 1 then
                           begin
                              rMis.LaunchAngle := pLauncher.FData.Launcher_Angle;
                              rMis.MissileID := TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex;
                           end
                           else
                             continue;
                         end;


                         rMis.TargetPlatformID := tgt.InstanceIndex;

                         simMgrClient.netSend_CmdLaunch_Missile(rMis);
                         SimMgrClient.netSend_CmdPlatform(cp.InstanceIndex, CORD_ID_ACTIVATION, byte(vgtStraightLine) , 0.0);
                         cp.IsHaveLaunch := 1;
                         Break;
                      end;
                      Break;
                    end;
                  End;
                end;
              end
              else
              begin
                for I := 0 to cp.Weapons.Count - 1 do
                begin
                  wpn := TT3Weapon(cp.Weapons.Items[i]);
                  if TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex =  MissileID then Begin
                    if (wpn is TT3MissilesOnVehicle) and (TT3MissilesOnVehicle(cp.Weapons.Items[i]).Quantity <> 0)then begin
                      for j := 0 to TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FLaunchs.Count - 1 do
                      begin
                        pLauncher := TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FLaunchs.Items[j];
                       // if TT3MissilesOnVehicle(cp.Weapons.Items[j]).InstanceIndex = TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex then
                       // begin
                         if (Range > 0) and (Range < 180) then  begin
                           if TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FData.Mount_Type mod 2 = 0 then
                           begin
                              rMis.LaunchAngle := pLauncher.FData.Launcher_Angle;
                              rMis.MissileID := TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex;
                           end
                           else
                             continue
                         end
                         else if (Range > 180) then  begin
                           if TT3MissilesOnVehicle(cp.Weapons.Items[i]).MissileDefinition.FData.Mount_Type mod 2 = 1 then
                           begin
                              rMis.LaunchAngle := pLauncher.FData.Launcher_Angle;
                              rMis.MissileID := TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex;
                           end
                           else
                             continue;
                         end;

                         // rMis.LaunchAngle := pLauncher.FData.Launcher_Angle;
                         // rMis.MissileID := TT3MissilesOnVehicle(cp.Weapons.Items[i]).InstanceIndex;
                          rMis.TargetPlatformID := tgt.InstanceIndex;

                          simMgrClient.netSend_CmdLaunch_Missile(rMis);
                          cp.IsHaveLaunch := 1;
                       //   Break;
                        //end;
                      end;
                      Break;
                    end;
                  End;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnGunUpdateQuantity(Sender : TObject);
begin
  if not Assigned(Sender) then
    Exit;

  if not Assigned(TT3Weapon(Sender).Parent) then
    Exit;

  if Sender is TT3GunOnVehicle then
    frmTacticalDisplay.fmWeapon1.UpdateGunAutoManualTab(Sender as TT3GunOnVehicle);

  if Sender is TT3BombONVehicle then
    frmTacticalDisplay.fmWeapon1.UpdateBombDepthChargeTab(Sender as TT3BombONVehicle);

  if Sender is TT3MineOnVehicle then
    frmTacticalDisplay.fmWeapon1.UpdateMinesTab(Sender as TT3MineOnVehicle);
end;

procedure TT3ClientEventManager.OnWeaponTarget(Sender: TObject; Target : TObject);
begin
  inherited;
end;

procedure TT3ClientEventManager.OnPlatformDamageChanged(sender: TObject;
       const dmgType: TDamageItemType);
begin
  frmToteDisplay.UpdateSystemState(sender, dmgType);

  {SEMENTARA
  if simMgrClient.ISInstructor then
  begin
    case dmgType of
      diOverall:
      begin
        if TT3Vehicle(sender).HealthPercent <= 0 then
          frmTacticalDisplay.addStatus('Vehicle is damage');
      end;
      diSensor:
        frmTacticalDisplay.addStatus('Sensor is damage');
      diECM:
        frmTacticalDisplay.addStatus('CounterMeasure is damage');
      diWeapon:
        frmTacticalDisplay.addStatus('Weapon is damage');
      diCommm:
        frmTacticalDisplay.addStatus('Communication is damage');
      diHelm:
        frmTacticalDisplay.addStatus('Helm is damage');
      diPropulsion:
        frmTacticalDisplay.addStatus('Propulsion is damage');
    end;
  end;}
end;

//nando waypoint
procedure TT3ClientEventManager.OnLastUpdateTimePlatform(str: string);
begin
  inherited;

  if Assigned(frmEditNonRealTimeTrack) then
    frmEditNonRealTimeTrack.edtLastUpdated.Text := str;
end;

procedure TT3ClientEventManager.OnLaunchBomb(aParentID, aMissileID, aTargetID,
  aSalvo: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnLaunchMisile(aParentID, aMissileID, aTargetID,
  aSalvo: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnLaunchTorpedo(aParentID, aMissileID,
  aTargetID, aSalvo: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnLogStatusTactical(str : string);
begin
  inherited;

  frmTacticalDisplay.addStatus(str);
end;

procedure TT3ClientEventManager.OnMapNeedUpdate(Sender: TObject);
begin
  inherited;
  frmTacticalDisplay.fmMapWindow1.Map.Repaint;
end;

procedure TT3ClientEventManager.OnModeSearchIFF(aSensor: TObject; value: byte);
begin
  inherited;
  if aSensor is TT3Sensor then
  begin
    inherited;

    frmTacticalDisplay.fmSensor1.UpdateSensorForm(TT3Sensor(aSensor));
    frmTacticalDisplay.fmEMCON1.UpdateSensorList(TT3Sensor(aSensor));
  end;
end;

procedure TT3ClientEventManager.OnSonarEvent(aShipID, aSonarIndex,
  aEventMode: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnRadarEvent(aShipID, aRadarIndex,
  aEventMode: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnOverlayDynamicShape(r: TRecCmd_OverlayDynamicShape);
var
  i, j : Integer;
  Point1, Point2 : TDotDynamic;
  TextShape : TTextDynamic;
  LineShape : TLineDynamic;
  RectangleShape : TRectangleDynamic;
  CircleShape : TCircleDynamic;
  EllipseShape : TEllipseDynamic;
  ArcShape : TArcDynamic;
  SectorShape : TSectorDynamic;
  GridShape : TGridDynamic;
  PolygonShape : TPolygonDynamic;
  OverlayTemplate : TMainOverlayTemplate;
begin
  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Name = r.TemplateName then
    begin
      if r.IdAction = 3 then
      begin
        OverlayTemplate.DynamicList.Delete(r.IdSelectShape);
        simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Delete Dynamic ' + IntToStr(r.ShapeID) + ' in ' + r.TemplateName);
        Break;
      end
      else
      begin
        case r.ShapeID of
          ovText :
          begin
            if r.IdAction = 2 then
              TextShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              TextShape := TTextDynamic.Create(simMgrClient.Converter);

            TextShape.postStart := r.PostStart;
            TextShape.size := r.Size;
            TextShape.words := r.Words;
            TextShape.Color := r.color;
            TextShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(TextShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Text in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Text in ' + r.TemplateName);
          end;
          ovLine :
          begin
            if r.IdAction = 2 then
              LineShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              LineShape := TLineDynamic.Create(simMgrClient.Converter);

            LineShape.postStart := r.PostStart;
            LineShape.postEnd := r.PostEnd;
            LineShape.color := r.color;
            LineShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(LineShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Line in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Line in ' + r.TemplateName);
          end;
          ovRectangle :
          begin
            if r.IdAction = 2 then
              RectangleShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              RectangleShape := TRectangleDynamic.Create(simMgrClient.Converter);

            RectangleShape.postStart := r.PostStart;
            RectangleShape.postEnd := r.PostEnd;
            RectangleShape.color := r.color;
            RectangleShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(RectangleShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Rectangle in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Rectangle in ' + r.TemplateName);
          end;
          ovCircle :
          begin
            if r.IdAction = 2 then
              CircleShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              CircleShape := TCircleDynamic.Create(simMgrClient.Converter);

            CircleShape.postCenter := r.PostStart;
            CircleShape.radius := r.Radius1;
            CircleShape.Color := r.color;
            CircleShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(CircleShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Circle in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Circle in ' + r.TemplateName);
          end;
          ovEllipse :
          begin
            if r.IdAction = 2 then
              EllipseShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              EllipseShape := TEllipseDynamic.Create(simMgrClient.Converter);

            EllipseShape.postCenter := r.PostStart;
            EllipseShape.Hradius := r.Radius1;
            EllipseShape.Vradius := r.Radius2;
            EllipseShape.Color := r.color;
            EllipseShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(EllipseShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Ellipse in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Ellipse in ' + r.TemplateName);
          end;
          ovArc :
          begin
            if r.IdAction = 2 then
              ArcShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              ArcShape := TArcDynamic.Create(simMgrClient.Converter);

            ArcShape.postCenter := r.PostStart;
            ArcShape.radius := r.Radius1;
            ArcShape.StartAngle := r.StartAngle;
            ArcShape.EndAngle := r.EndAngle;
            ArcShape.Color := r.color;
            ArcShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(ArcShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Arc in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Arc in ' + r.TemplateName);
          end;
          ovSector :
          begin
            if r.IdAction = 2 then
              SectorShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              SectorShape := TSectorDynamic.Create(simMgrClient.Converter);

            SectorShape.postCenter := r.PostStart;
            SectorShape.Oradius := r.Radius1;
            SectorShape.Iradius := r.Radius2;
            SectorShape.StartAngle := r.StartAngle;
            SectorShape.EndAngle := r.EndAngle;
            SectorShape.Color := r.color;
            SectorShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(SectorShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Sector in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Sector in ' + r.TemplateName);
          end;
          ovGrid :
          begin
            if r.IdAction = 2 then
              GridShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              GridShape := TGridDynamic.Create(simMgrClient.Converter);

            GridShape.postCenter := r.PostStart;
            GridShape.Height := r.Radius1;
            GridShape.Width := r.Radius2;
            GridShape.HCount := r.Kolom;
            GridShape.WCount := r.Baris;
            GridShape.Rotation := r.Rotasi;
            GridShape.Color := r.color;
            GridShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(GridShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Grid in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Grid in ' + r.TemplateName);
          end;
          ovPolygon  :
          begin
            Point1 := TDotDynamic.Create;
            Point1.Range := r.PostStart.Range;
            Point1.Bearing := r.PostStart.Bearing;
            fmOverlayEditor.TemporaryD.Add(Point1);

            if r.StatePoly = 0 then
              Exit;

            if r.IdAction = 2 then
            begin
              PolygonShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape];
              PolygonShape.polyList.Clear;
            end
            else
              PolygonShape := TPolygonDynamic.Create(simMgrClient.Converter);

            {jika sdh kiriman terakhir}
            for j := 0 to fmOverlayEditor.TemporaryD.Count - 1 do
            begin
              Point1 := fmOverlayEditor.TemporaryD.Items[j];
              Point2 := Point1;
              PolygonShape.polyList.Add(Point2);
            end;

            fmOverlayEditor.TemporaryD.Clear;

            PolygonShape.Color := r.color;
            PolygonShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.DynamicList.Add(PolygonShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Create Dynamic Polygon in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayDynamicShape', IntToStr(r.pid.ipSender) + ' : Edit Dynamic Polygon in ' + r.TemplateName);
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnOverlayStaticShape(r: TRecCmd_OverlayStaticShape);
var
  i, j : Integer;
  Point1, Point2 : TDotStatic;
  TextShape : TTextStatic;
  LineShape : TLineStatic;
  RectangleShape : TRectangleStatic;
  CircleShape : TCircleStatic;
  EllipseShape : TEllipseStatic;
  ArcShape : TArcStatic;
  SectorShape : TSectorStatic;
  GridShape : TGridStatic;
  PolygonShape : TPolygonStatic;
  OverlayTemplate : TMainOverlayTemplate;
begin
  inherited;
  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Name = r.TemplateName then
    begin
      if r.IdAction = 3 then
      begin
        OverlayTemplate.StaticList.Delete(r.IdSelectShape);
        simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Delete Static ' + IntToStr(r.ShapeID) + ' in ' + r.TemplateName);
        Break;
      end
      else
      begin
        case r.ShapeID of
          ovText :
          begin
            if r.IdAction = 2 then
              TextShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              TextShape := TTextStatic.Create(simMgrClient.Converter);

            TextShape.postStart := r.PostStart;
            TextShape.size := r.Size;
            TextShape.words := r.Words;
            TextShape.Color := r.color;
            TextShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(TextShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Text in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Text in ' + r.TemplateName);

          end;
          ovLine :
          begin
            if r.IdAction = 2 then
              LineShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              LineShape := TLineStatic.Create(simMgrClient.Converter);

            LineShape.postStart := r.PostStart;
            LineShape.postEnd := r.PostEnd;
            LineShape.color := r.color;
            LineShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(LineShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Line in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Line in ' + r.TemplateName);
          end;
          ovRectangle :
          begin
            if r.IdAction = 2 then
              RectangleShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              RectangleShape := TRectangleStatic.Create(simMgrClient.Converter);

            RectangleShape.postStart := r.PostStart;
            RectangleShape.postEnd := r.PostEnd;
            RectangleShape.color := r.color;
            RectangleShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(RectangleShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Rectangle in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Rectangle in ' + r.TemplateName);
          end;
          ovCircle :
          begin
            if r.IdAction = 2 then
              CircleShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              CircleShape := TCircleStatic.Create(simMgrClient.Converter);

            CircleShape.postCenter := r.PostStart;
            CircleShape.radius := r.Radius1;
            CircleShape.Color := r.color;
            CircleShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(CircleShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Circle in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Circle in ' + r.TemplateName);
          end;
          ovEllipse :
          begin
            if r.IdAction = 2 then
              EllipseShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              EllipseShape := TEllipseStatic.Create(simMgrClient.Converter);

            EllipseShape.postCenter := r.PostStart;
            EllipseShape.Hradius := r.Radius1;
            EllipseShape.Vradius := r.Radius2;
            EllipseShape.Color := r.color;
            EllipseShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(EllipseShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Ellipse in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Ellipse in ' + r.TemplateName);
          end;
          ovArc :
          begin
            if r.IdAction = 2 then
              ArcShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              ArcShape := TArcStatic.Create(simMgrClient.Converter);

            ArcShape.postCenter := r.PostStart;
            ArcShape.radius := r.Radius1;
            ArcShape.StartAngle := r.StartAngle;
            ArcShape.EndAngle := r.EndAngle;
            ArcShape.Color := r.color;
            ArcShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(ArcShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Arc in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Arc in ' + r.TemplateName);
          end;
          ovSector :
          begin
            if r.IdAction = 2 then
              SectorShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              SectorShape := TSectorStatic.Create(simMgrClient.Converter);

            SectorShape.postCenter := r.PostStart;
            SectorShape.Oradius := r.Radius1;
            SectorShape.Iradius := r.Radius2;
            SectorShape.StartAngle := r.StartAngle;
            SectorShape.EndAngle := r.EndAngle;
            SectorShape.Color := r.color;
            SectorShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(SectorShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Sector in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Sector in ' + r.TemplateName);
          end;
          ovGrid :
          begin
            if r.IdAction = 2 then
              GridShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              GridShape := TGridStatic.Create(simMgrClient.Converter);

            GridShape.postCenter := r.PostStart;
            GridShape.Height := r.Radius1;
            GridShape.Width := r.Radius2;
            GridShape.HCount := r.Kolom;
            GridShape.WCount := r.Baris;
            GridShape.Rotation := r.Rotasi;
            GridShape.Color := r.color;
            GridShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(GridShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Grid in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Grid in ' + r.TemplateName);
          end;
          ovPolygon  :
          begin
            Point1 := TDotStatic.Create;
            Point1.X := r.PostStart.X;
            Point1.Y := r.PostStart.Y;
            fmOverlayEditor.Temporary.Add(Point1);

            if r.StatePoly = 0 then
              Exit;

            if r.IdAction = 2 then
            begin
              PolygonShape := OverlayTemplate.StaticList.Items[r.IdSelectShape];
              PolygonShape.polyList.Clear;
            end
            else
              PolygonShape := TPolygonStatic.Create(simMgrClient.Converter);

            {jika sdh kiriman terakhir}
            for j := 0 to fmOverlayEditor.Temporary.Count - 1 do
            begin
              Point1 := fmOverlayEditor.Temporary.Items[j];
              Point2 := Point1;
              PolygonShape.polyList.Add(Point2);
            end;

            fmOverlayEditor.Temporary.Clear;

            PolygonShape.Color := r.color;
            PolygonShape.isSelected := False;

            if r.IdAction <> 2 then
            begin
              OverlayTemplate.StaticList.Add(PolygonShape);
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Create Static Polygon in ' + r.TemplateName);
            end
            else
              simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayStaticShape', IntToStr(r.pid.ipSender) + ' : Edit Static Polygon in ' + r.TemplateName);
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnOverlayTemplate(r: TRecCmd_OverlayTemplate);
var
  i : Integer;
  OverlayTemplate : TMainOverlayTemplate;
begin
  case r.IdAction of
    1: {Add}
    begin
      OverlayTemplate := TMainOverlayTemplate.Create;
      OverlayTemplate.Name := r.Name;

      OverlayTemplate.Tipe := r.Tipe;
      OverlayTemplate.Domain := r.Domain;
      OverlayTemplate.Cubicle := r.Cubicle;

      simMgrClient.DrawOverlayTemplate.AddOverlayTemplate(OverlayTemplate);
      simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayTemplate', IntToStr(r.pid.ipSender) + ' : Create Overlay Template : ' + r.Name);
    end;
    2:{edit}
    begin

    end;
    3:{delete}
    begin
      for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
      begin
        OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

        if OverlayTemplate.Name = r.Name then
        begin
          simMgrClient.DrawOverlayTemplate.FList.Delete(i);
          fmOverlayEditor.RefreshLTemplate;
          simMgrClient.OnLogStr('TT3ClientEventManager.OnOverlayTemplate', IntToStr(r.pid.ipSender) + ' : Delete Overlay Template : ' + r.Name);
          Break;
        end;
      end;
    end;
  end;
  fmOverlayEditor.RefreshLTemplate;
end;

procedure TT3ClientEventManager.OnDecoysDeployed(aParent: TObject);
begin
  inherited;

  frmTacticalDisplay.fmCounterMeasure1.OnRefreshECMQuantity(aParent);
end;

procedure TT3ClientEventManager.OnDynamicTrack(r: TRecCmd_OverlayDynamicTrack);
var
   i : Integer;
   Track : TMainTrackSelection;
   OverlayTemplate : TMainOverlayTemplate;
begin
  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Name = r.TemplateName then
    begin
      if r.IdAction = 3 then
      begin
        if (r.IdSelectTrack <= OverlayTemplate.FListTrack.Count) and
           (OverlayTemplate.FListTrack.Count <> 0) then
        begin
          OverlayTemplate.FListTrack.Delete(r.IdSelectTrack);
          fmOverlayEditor.RefreshDynamicTrack;
          Break;
        end;
      end
      else
      begin
        Track := TMainTrackSelection.Create(simMgrClient.Converter);
        Track.TrackInstanceIndex := r.IdTrack;
        Track.TrackId := r.NameTrack;
        Track.RangeOffset := r.Rng;
        Track.BearingOffset := r.Brg;
        Track.Rotation := r.Rot;
        Track.Orientation := r.Orientation;
        Track.Parent := simMgrClient.FindT3PlatformByID(r.IdTrack);
        Track.isDraw := True;

        OverlayTemplate.AddListTrack(Track);
        fmOverlayEditor.RefreshDynamicTrack;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnTerminateOverlay;
begin

end;

procedure TT3ClientEventManager.OnTorpedoSyncPanel(ParentID, Tipe,
      WeaponIndex : Integer; Param1: string);
var
  OwnPlatform   : TT3PlatformInstance;
  OwnVehicle    : TT3Vehicle;
  Focused_weapon  : TObject;

begin
  OwnPlatform := simMgrClient.FindT3PlatformByID(ParentID);
  if OwnPlatform is TT3Vehicle then
  begin
    OwnVehicle := TT3Vehicle(OwnPlatform);
    Focused_weapon := OwnVehicle.getWeapon(WeaponIndex, TT3TorpedoesOnVehicle);

    if Assigned(Focused_weapon) then
    begin
      if Focused_weapon is TT3TorpedoesOnVehicle then
      begin
        if Tipe = 5 then
        begin
          frmTacticalDisplay.fmWeapon1.EdtSRTargetTrack.Text
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetTrack;
          frmTacticalDisplay.fmWeapon1.lblStraightRunningTorpedosTargetIdentity.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetIdentity;
          frmTacticalDisplay.fmWeapon1.lblStraightRunningTorpedosTargetCourse.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetCourse;
          frmTacticalDisplay.fmWeapon1.lblStraightRunningTorpedosTargetGround.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetGroundSpeed;
          frmTacticalDisplay.fmWeapon1.lblStraightRunningTorpedosTargetDepth.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetAltitude;
          frmTacticalDisplay.fmWeapon1.btnLaunchSR.Enabled
             := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch;
        end
        else if Tipe = 6 then
        begin
          frmTacticalDisplay.fmWeapon1.EdtATTargetTrack.Text
            := TT3TorpedoesOnVehicle(Focused_weapon).TargetTrack;

          if (TT3TorpedoesOnVehicle(Focused_weapon).FiringMode = 1) then
            frmTacticalDisplay.fmWeapon1.EdtFiringModeAT.Text := 'Deliberate'
          else
            frmTacticalDisplay.fmWeapon1.EdtFiringModeAT.Text := 'Urgent';

          if (TT3TorpedoesOnVehicle(Focused_weapon).RunOutMode = 1) then
            frmTacticalDisplay.fmWeapon1.EdtRunOutAT.Text := 'RunOut'
          else
            frmTacticalDisplay.fmWeapon1.EdtRunOutAT.Text := 'No RunOut';

          frmTacticalDisplay.fmWeapon1.EdtSearchRadiusAT.Text
             := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SearchRadius);
          frmTacticalDisplay.fmWeapon1.EdtSearchDepthAT.Text
             := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SearchDepth);
          frmTacticalDisplay.fmWeapon1.EdtSafetyCeilingAT.Text
             := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SafetyCeiling);
          frmTacticalDisplay.fmWeapon1.EdtSeekerRangeAT.Text
             := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SeekerRange);
          frmTacticalDisplay.fmWeapon1.EdtGyroAngleAT.Text
             := IntToStr(TT3TorpedoesOnVehicle(Focused_weapon).GyroAngle);

          frmTacticalDisplay.fmWeapon1.btnTube1AT.Enabled := True;
          frmTacticalDisplay.fmWeapon1.btnTube2AT.Enabled := True;
          frmTacticalDisplay.fmWeapon1.btnTube3AT.Enabled := True;
          frmTacticalDisplay.fmWeapon1.btnTube4AT.Enabled := True;

          case TT3TorpedoesOnVehicle(Focused_weapon).TubeOn of
            1 : frmTacticalDisplay.fmWeapon1.btnTube1AT.Enabled := False;
            2 : frmTacticalDisplay.fmWeapon1.btnTube2AT.Enabled := False;
            3 : frmTacticalDisplay.fmWeapon1.btnTube3AT.Enabled := False;
            4 : frmTacticalDisplay.fmWeapon1.btnTube4AT.Enabled := False;
          end;

          frmTacticalDisplay.fmWeapon1.btnPlanAT.Enabled
             := TT3TorpedoesOnVehicle(Focused_weapon).ButtonPlan;
          frmTacticalDisplay.fmWeapon1.btnLaunchAT.Enabled
             := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch;
        end
        else if Tipe = 8 then
        begin
          frmTacticalDisplay.fmWeapon1.EdtWGTargetTrack.Text
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetTrack;
          frmTacticalDisplay.fmWeapon1.lblWireGuidedTorpedoTargetIdentity.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetIdentity;
          frmTacticalDisplay.fmWeapon1.lblWireGuidedTorpedoTargetCourse.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetCourse;
          frmTacticalDisplay.fmWeapon1.lblWireGuidedTorpedoTargetGround.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetGroundSpeed;
          frmTacticalDisplay.fmWeapon1.lblWireGuidedTorpedoTargetDepth.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetAltitude;
          frmTacticalDisplay.fmWeapon1.btnLaunchWG.Enabled
             := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch;
        end
        else if Tipe = 9 then
        begin
          frmTacticalDisplay.fmWeapon1.EdtSalvoWH.Text
             := IntToStr(TT3TorpedoesOnVehicle(Focused_weapon).SalvoSize);
          frmTacticalDisplay.fmWeapon1.EdtWHTargetTrack.Text
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetTrack;
          frmTacticalDisplay.fmWeapon1.lblWakeHomingTargetIdentity.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetIdentity;
          frmTacticalDisplay.fmWeapon1.lbWakeHomingTargetTarget.Caption
             := TT3TorpedoesOnVehicle(Focused_weapon).TargetBearing;
          frmTacticalDisplay.fmWeapon1.EdtLaunchBearingWH.Text
             := IntToStr(round(TT3TorpedoesOnVehicle(Focused_weapon).LaunchBearing));
          frmTacticalDisplay.fmWeapon1.EdtSeekerRangeWH.Text
             := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SeekerRange);
          frmTacticalDisplay.fmWeapon1.btnLaunchWH.Enabled
            := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch;
        end
        else if Tipe = 10 then
        begin
          if Param1 = 'x' then
            frmTacticalDisplay.fmWeapon1.btnLaunchAP.Enabled
              := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch
          else
          begin
            frmTacticalDisplay.fmWeapon1.EdtAPTargetTrack.Text
               := TT3TorpedoesOnVehicle(Focused_weapon).TargetTrack;
            frmTacticalDisplay.fmWeapon1.EdtSalvoAP.Text
               := IntToStr(TT3TorpedoesOnVehicle(Focused_weapon).SalvoSize);
            frmTacticalDisplay.fmWeapon1.EdtSearchRadiusAP.Text
               := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SearchRadius);
            frmTacticalDisplay.fmWeapon1.EdtSearchDepthAP.Text
               := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SearchDepth);
            frmTacticalDisplay.fmWeapon1.EdtSafetyCeilingAP.Text
               := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SafetyCeiling);
            frmTacticalDisplay.fmWeapon1.EdtSeekerRangeAP.Text
               := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SeekerRange);
            frmTacticalDisplay.fmWeapon1.btnLaunchAP.Enabled
               := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch;
          end;
        end
        else if Tipe = 11 then
        begin
          frmTacticalDisplay.fmWeapon1.EdtSearchRadiusAD.Text
              := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SearchRadius);
          frmTacticalDisplay.fmWeapon1.EdtSearchDepthAD.Text
              := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SearchDepth);
          frmTacticalDisplay.fmWeapon1.EdtSearchCeilingAD.Text
              := FloatToStr(TT3TorpedoesOnVehicle(Focused_weapon).SafetyCeiling);
          frmTacticalDisplay.fmWeapon1.EdtADTargetTrack.Text
              := TT3TorpedoesOnVehicle(Focused_weapon).TargetTrack;
          frmTacticalDisplay.fmWeapon1.lblAirDproppedTargetForce.Caption
              := TT3TorpedoesOnVehicle(Focused_weapon).TargetIdentity;
          frmTacticalDisplay.fmWeapon1.lblAirDproppedTargetCourse.Caption
              := TT3TorpedoesOnVehicle(Focused_weapon).TargetCourse;
          frmTacticalDisplay.fmWeapon1.lblAirDproppedTargetGroundSpeed.Caption
              := TT3TorpedoesOnVehicle(Focused_weapon).TargetGroundSpeed;
          frmTacticalDisplay.fmWeapon1.lblAirDproppedTargetDepth.Caption
              := TT3TorpedoesOnVehicle(Focused_weapon).TargetAltitude;
          frmTacticalDisplay.fmWeapon1.chkAirDroppedUseLaunchPlatformHeading.Checked
              := TT3TorpedoesOnVehicle(Focused_weapon).EnableLaunchBearing;
          frmTacticalDisplay.fmWeapon1.chkAirDroppedLaunchWhithoutTarget.Checked
              := TT3TorpedoesOnVehicle(Focused_weapon).LaunchWhithoutTarget;
          frmTacticalDisplay.fmWeapon1.EdtLaunchBearingAD.Enabled := False;
          frmTacticalDisplay.fmWeapon1.btnLauchAD.Enabled
              := TT3TorpedoesOnVehicle(Focused_weapon).ButtonLaunch;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnTransferSonobuoy(OldParentID, NewParentID, SonoID: Integer; Flag: Boolean);
var
  Son   : TT3PlatformInstance;
  I, J  : Integer;
  o, p, v  : TSimObject;
  Gam   : Boolean;

begin
  {Menentukan yg sdg diselect parentnya ato bukan}
  if Assigned(simMgrClient.ControlledPlatform) then
    v := simMgrClient.ControlledPlatform
  else
    Exit;

  if TT3PlatformInstance(v).InstanceIndex = NewParentID then
    Gam := True
  else
    Gam := False;

  Son := simMgrClient.FindT3PlatformByID(SonoID);

  with simMgrClient do begin

    for I := 0 to SimPlatforms.itemCount - 1 do begin
      p := SimPlatforms.getObject(I);

      if TT3Vehicle(p).InstanceIndex = NewParentID then begin
        if flag then
        begin
          TT3Sonobuoy(Son).ParentIndex              := NewParentID;
          TT3Sonobuoy(Son).TacticalSymbol.Color     := TT3Vehicle(p).TacticalSymbol.Color;
          TT3Sonobuoy(Son).HalfTacticalSymbol.Color := TT3Vehicle(p).TacticalSymbol.Color;

          TT3Sonobuoy(Son).TacticalSymbol.Symbol.LoadBitmap (vSymbolSetting.ImgPath + 'SonoMonitorCtrl.bmp',TT3Vehicle(p).TacticalSymbol.Color);
          TT3Sonobuoy(Son).HalfTacticalSymbol.Symbol.LoadBitmap (vSymbolSetting.ImgPath + 'SonoMonitorOther.bmp',TT3Vehicle(p).TacticalSymbol.Color);

          TT3Sonobuoy(Son).Gambar := Gam
        end
        else
        begin
          for J := 0 to SimPlatforms.itemCount - 1 do begin
            o := SimPlatforms.getObject(J);

            if o is TT3Sonobuoy then begin
              if (TT3Sonobuoy(o).InstanceName = TT3Sonobuoy(Son).InstanceName) and (TT3Sonobuoy(o).ParentIndex = OldParentID) then
              begin
                TT3Sonobuoy(o).ParentIndex              := NewParentID;
                TT3Sonobuoy(o).TacticalSymbol.Color     := TT3Vehicle(p).TacticalSymbol.Color;
                TT3Sonobuoy(o).HalfTacticalSymbol.Color := TT3Vehicle(p).TacticalSymbol.Color;

                TT3Sonobuoy(o).TacticalSymbol.Symbol.LoadBitmap (vSymbolSetting.ImgPath + 'SonoMonitorCtrl.bmp',TT3Vehicle(p).TacticalSymbol.Color);
                TT3Sonobuoy(o).HalfTacticalSymbol.Symbol.LoadBitmap (vSymbolSetting.ImgPath + 'SonoMonitorOther.bmp',TT3Vehicle(p).TacticalSymbol.Color);

                TT3Sonobuoy(o).Gambar := Gam;
              end
              else
                Continue;
            end;
          end;
        end;
      end
      else
       Continue;
    end;
  end;
end;

procedure TT3ClientEventManager.OnNonRealTimeAdded(Sender: TObject);
begin
  inherited;
  //frmTacticalDisplay.Refresh_AssumeControl;
end;

procedure TT3ClientEventManager.OnNonRealTimeChanged(Sender : TObject);
begin
  if Assigned(frmEditNonRealTimeTrack) then begin
    frmEditNonRealTimeTrack.UpdateTrackInfo(Sender as TSimObject);
    frmEditNonRealTimeTrack.UpdateTrackDetailInfo(Sender as TSimObject);
  end;
end;

procedure TT3ClientEventManager.AbortMissileLaunch(aParentId,
  aMissileId: Integer);
var
  i : Integer;
  v : TT3Vehicle;
  wpn : TT3Weapon;
begin
  inherited;

  v := TT3Vehicle(simMgrClient.ControlledPlatform);
  if Assigned(v) then
  begin
    if Assigned(v.Weapons) then
    begin
      if v.Weapons.Count > 0 then
      begin
        wpn := v.Weapons.Items[v.LastWeaponsSelected];

        if not (wpn is TT3Missile) then
          Exit;

        if (v.InstanceIndex = aParentId) and (TT3Missile(wpn).InstanceIndex = aMissileId) then
        begin
          for i := 0 to 7 do
            frmTacticalDisplay.fmWeapon1.FRippleCountArray[i] := False;
        end;
      end;
    end;
  end;
end;

function TT3ClientEventManager.FindSelectedNodeBy(aLevel, aIndex: Byte;
  aText: string): TTreeNode;
var
  i : Integer;
  Node : TTreeNode;
begin
  Result := nil;

  with frmWaypointEditor do
  begin
    for i := 0 to cktreeAsset.Items.Count - 1 do
    begin
      Node := cktreeAsset.Items[i];

      if (Node.Level = aLevel) and
         (Node.Index = aIndex) and
         (Node.Text = aText) then
      begin
        Result := Node;
        Break;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnAfterLanding(Sender: TObject);
begin
  if Sender is TT3EmbarkedVehicle then
  begin
//    frmTacticalDisplay.addStatus('Landing '+ TT3EmbarkedVehicle(Sender).EmbarkedIdentifier);
  end;
end;

procedure TT3ClientEventManager.OnBombSyncPanel(ParentID, WeaponIndex : Integer;
   Notarget : Boolean);
var
  OwnPlatform     : TT3PlatformInstance;
  OwnVehicle      : TT3Vehicle;
  Focused_weapon  : TObject;
begin
  OwnPlatform := simMgrClient.FindT3PlatformByID(ParentID);
  if OwnPlatform is TT3Vehicle then
  begin
    OwnVehicle := TT3Vehicle(OwnPlatform);
    Focused_weapon := OwnVehicle.getWeapon(WeaponIndex, TT3BombONVehicle);
    //Focused_weapon := TT3BombONVehicle(OwnVehicle.getWeapon(WeaponName));

    if Assigned(Focused_weapon) then
    begin
      frmTacticalDisplay.fmWeapon1.EdtBombTargetTrack.Text
          := TT3BombONVehicle(Focused_weapon).TargetTrack;
      frmTacticalDisplay.fmWeapon1.chkBombDropWhitoutTarget.Checked
          := TT3BombONVehicle(Focused_weapon).DropWhithoutTarget;
      frmTacticalDisplay.fmWeapon1.EdtBombControlSalvo.Text
          := IntToStr(TT3BombONVehicle(Focused_weapon).SalvoSize);
      frmTacticalDisplay.fmWeapon1.btnBombDrop.Enabled
         := TT3BombONVehicle(Focused_weapon).ButtonLaunch;
    end;
  end;
end;

procedure TT3ClientEventManager.OnWaypointChange(index: Integer);
var
  v : TT3Vehicle;
begin
  inherited;

  if not Assigned(frmWaypointEditor) then
    Exit;

  v := TT3Vehicle(simMgrClient.ControlledPlatform);

  with frmWaypointEditor do
  begin
    case index of
      1 : //execute when waypoint delete / clear
      begin
        UpdateTableWaypoint;

        edtPosition.Text := '';
        btnControlComboInterval.Enabled := False;
        edtSpeed.Text := '';
        edtAltitude.Text := '';
        chkArrival.Checked := False;
        edtArrival.Text := '';

        cktreeAsset.Items.Clear;
        Notebook1.PageIndex := 0;
      end;
      2 : //execute when waypoint reach
      begin
        UpdateTableWaypoint;

        if lvWaypoint.Items.Count > 0 then
          lvWaypoint.Items[0].Selected := True;
      end;
      3 : UpdateTerminationWaypoint;
      4 : UpdateChangeStateWaypoint;
    end;
  end;
end;

procedure TT3ClientEventManager.OnWaypointChangeVectac(WpnCarrierID,
  index: integer);
var
  WpnCarrier : TT3Vehicle;
begin
  inherited;

  WpnCarrier := TT3Vehicle(simMgrClient.FindT3PlatformByID(WpnCarrierID));

  case index of
    1 : begin
          if frmWaypointEditor <> nil then
          begin
            frmWaypointEditor.UpdateTableWaypointVectac(WpnCarrier);
          end;
        end;
    2 : begin
          if frmWaypointEditor <> nil then
          begin
            frmWaypointEditor.UpdateTableWaypointVectac(WpnCarrier);
            frmWaypointEditor.LastUserIndex := 0;
          end;
        end;
  end;
end;

procedure TT3ClientEventManager.OnWaypointDataChange(rec: TrecSinc_Waypoint);
var
  SelectedNode : TTreeNode;
begin
  inherited;

  if not Assigned(frmWaypointEditor) then
    Exit;

  if simMgrClient.ControlledPlatform.InstanceIndex = rec.platformID then
  begin
    with frmWaypointEditor do
    begin
      case rec.Cmd of
        0 :
        begin
          if rec.Mode = 0 then
          begin
            UpdateTableWaypoint;
            lvWaypoint.Items[lvWaypoint.Items.Count-1].Selected := True;
          end
          else
          begin
            if rec.WaypointIndex = idLvClick then
              UpdateGeneralInfoWaypoint;
          end;
        end;
        1 :
        begin
          if rec.index = idLvClick then
          begin
            SelectedNode := FindSelectedNodeBy(rec.TvEventLevel, rec.TvEventIndex, rec.TvEventText);

            if Assigned(SelectedNode) then
            begin
              case rec.Mode of
                0,1 : SelectedNode.StateIndex := 1; //cFlatChecked;
                2 : SelectedNode.StateIndex := 2; //cFlatUnCheck
              end;
            end;

            if rec.List_Index = idDevice then
              UpdateSensorEventWaypoint;
          end;
        end;
        2 :
        begin
          if rec.index = idLvClick then
          begin
            SelectedNode := FindSelectedNodeBy(rec.TvEventLevel, rec.TvEventIndex, rec.TvEventText);

            if Assigned(SelectedNode) then
            begin
              if rec.Sonobuoy_Index <> 0 then
                SelectedNode.StateIndex := 1 //cFlatChecked;
              else
                SelectedNode.StateIndex := 2; //cFlatUnCheck
            end;

            if rec.List_Index = idDevice then
              UpdateSonobuoyEventWaypoint;
          end;
        end;
        3 :
        begin
          if rec.index = idLvClick then
          begin
            SelectedNode := FindSelectedNodeBy(rec.TvEventLevel, rec.TvEventIndex, rec.TvEventText);

            if Assigned(SelectedNode) then
            begin
              if rec.Weapon_Type <> 0 then
                SelectedNode.StateIndex := 1 //cFlatChecked;
              else
                SelectedNode.StateIndex := 2; //cFlatUnCheck
            end;

            if rec.List_Index = idDevice then
              UpdateWeaponEventWaypoint;
          end;
        end;
        4 :
        begin
          if rec.index = idLvClick then
          begin
            SelectedNode := FindSelectedNodeBy(rec.TvEventLevel, rec.TvEventIndex, rec.TvEventText);

            if Assigned(SelectedNode) then
            begin
              if rec.Mine_Index <> 0 then
                SelectedNode.StateIndex := 1 //cFlatChecked;
              else
                SelectedNode.StateIndex := 2; //cFlatUnCheck
            end;

            if rec.List_Index = idDevice then
              UpdateMineEventWaypoint;
          end;
        end;
        5 :
        begin
          if rec.index = idLvClick then
          begin
            SelectedNode := FindSelectedNodeBy(rec.TvEventLevel, rec.TvEventIndex, rec.TvEventText);

            if Assigned(SelectedNode) then
            begin
              case rec.Mode of
                0,1 : SelectedNode.StateIndex := 1; //cFlatChecked;
                2 : SelectedNode.StateIndex := 2; //cFlatUnCheck
              end;
            end;

            if rec.List_Index = idDevice then
              UpdateCountermeasureEventWaypoint;
          end;
        end;
        6 :
        begin
          if rec.index = idLvClick then
          begin
            SelectedNode := FindSelectedNodeBy(rec.TvEventLevel, rec.TvEventIndex, rec.TvEventText);

            if Assigned(SelectedNode) then
            begin
              case rec.Mode of
                0,1 : SelectedNode.StateIndex := 1; //cFlatChecked;
                2 : SelectedNode.StateIndex := 2; //cFlatUnCheck
              end;
            end;

            if rec.List_Index = idDevice then
              UpdateDatalinkEventWaypoint;
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ClientEventManager.OnWaypointDestinationChange(
  aShipID: Integer; Long, Lat: Double);
var
  pi : TT3PlatformInstance;
begin
  inherited;

  pi := simMgrClient.FindT3PlatformByID(aShipID);

  with TT3Vehicle(pi).Waypoints.NextWaypoint.FData do
  begin
    Waypoint_Longitude  := Long;
    Waypoint_Latitude   := Lat;
  end;
end;

procedure TT3ClientEventManager.OnWaypointEnd(aShipID: Integer; aSpeed,
  aHeading: Double);
var
  pi : TT3PlatformInstance;
begin
  inherited;

  pi := simMgrClient.FindT3PlatformByID(aShipID);

  if pi is TT3Vehicle then
  begin
    case TT3Vehicle(pi).Waypoints.Termination of
      wtLH, wtTH : begin
        TVehicle_Definition(TT3Vehicle(pi).UnitDefinition).GuidanceType := vgtStraightLine;
        TT3Vehicle(pi).OrderedHeading := aHeading;
        TT3Vehicle(pi).OrderedSpeed := aSpeed;

        if simMgrClient.ControlledPlatform.InstanceIndex = aShipID then
        begin
          frmTacticalDisplay.fmPlatformGuidance1.UpdatemnGuidance(Byte(TVehicle_Definition(TT3Vehicle(pi).UnitDefinition).GuidanceType));
        end;
      end;
    end;
  end;

  if Assigned(frmWaypointEditor) then begin
    frmWaypointEditor.lvWaypointSelectItem(nil, frmWaypointEditor.lvWaypoint.Selected, False);
    OnWaypointChange(2);
  end;
end;

procedure TT3ClientEventManager.OnWaypointRemoveOwner(aShipID: Integer);
begin
  inherited;

end;

procedure TT3ClientEventManager.OnDetectabilityChange(aShip: TT3PlatformInstance);
begin
  inherited;

  with frmToteDisplay do
  begin
    if not Assigned(SensorOverrideSelectedPlatform) then
      Exit;

    if SensorOverrideSelectedPlatform.InstanceIndex = aShip.InstanceIndex then
    begin
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
    end;
  end;
end;

procedure TT3ClientEventManager.OnDetectedRemoved(Sender: TObject);
begin
  inherited;

  if Sender is TT3Sensor then
  begin
    simMgrClient.RemoveDetectedTracks(TSimObject(Sender));
  end;
end;

procedure TT3ClientEventManager.OnDetectedTrackDestroy(Sender: TObject);
begin
  frmTacticalDisplay.RefreshTracks;
  OnFocustrackNill(TT3DetectedTrack(Sender).TrackObject);
end;

procedure TT3ClientEventManager.OnDetectedTrackMerged(Sender: TObject);
var
  li : TListItem;
  sDomain, sIdentity : string;
  track : TT3DetectedTrack;
begin
  //event On detected merged;
  if not (Sender is TT3DetectedTrack) then
    Exit;

  track  := sender as TT3DetectedTrack;

  case track.TrackDomain of
    vhdAir : sDomain := vhdsAir;
    vhdSurface : sDomain := vhdsSurface;
    vhdSubsurface : sDomain := vhdsSubsurface;
    vhdLand : sDomain := vhdsLand;
    vhdAmphibious : sDomain := vhdsAmphibious; //mk 03052012
    vhdGeneral : sDomain := vhdsGeneral;
    vhdWreck : sDomain := vhdsWreck;
  end;

  case track.TrackIdent of
    piPending : sIdentity := pfPending;
    piUnknown : sIdentity := pfUnknown;
    piAssumedFriend : sIdentity := pfAssumedFriend;
    piFriend : sIdentity := pfFriend;
    piNeutral : sIdentity := pfNeutral;
    piSuspect : sIdentity := pfSuspect;
    piHostile : sIdentity := pfSuspect;
  end;

  li := frmToteDisplay.lvMergedTrack.Items.Add;
  li.Caption := IntToStr(track.TrackNumber);
  li.SubItems.Add(sDomain);
  li.SubItems.Add(sIdentity);
  li.Data := track;

  frmTacticalDisplay.addStatus('Merge Track is Success');
  frmTacticalDisplay.ToolBtnMerge.Enabled := False; //biar kondisi btn merge false setelah diaktifkan
  frmTacticalDisplay.ToolBtnSplit.Enabled := True;
  frmTacticalDisplay.isStatusMerge := True;
end;

procedure TT3ClientEventManager.OnDetectedTrackUnmerged(Sender: TObject);
var
  I: Integer;
  li : TListItem;
  obj : TObject;
  track : TT3DetectedTrack;
begin
  if not (Sender is TT3DetectedTrack) then
    Exit;

  track := sender as TT3DetectedTrack;
  for I := 0 to frmToteDisplay.lvMergedTrack.Items.Count - 1 do
  begin
    li := frmToteDisplay.lvMergedTrack.Items.Item[I];
    if Assigned(li) then
    begin
      obj := li.Data;

      //if sender.Equals(obj) then
      if track = TT3DetectedTrack(obj) then
      begin
        frmToteDisplay.lvMergedTrack.Items.Delete(I);
        Break;
      end;
    end;
  end;

  //frmTacticalDisplay.addStatus('Unmerge Track is Success');
  frmTacticalDisplay.ToolBtnSplit.Enabled := False; //biar kondisi btn splitx false setelah diaktifkan
  frmTacticalDisplay.isStatusMerge := False;
end;

procedure TT3ClientEventManager.OnReceiveGameSpeedForRecord(Cmd: TRecCmd_GameCtrl);
begin
  inherited;
  frmToteDisplay.ReceiveGameSpeedForRecording(cmd);
end;

procedure TT3ClientEventManager.OnReceiveMessageHandling(Cmd: TRecSendMessage);
var
  i : Integer;
  grp : T3CubicleGroup;
  msgSendFrom : string;
  MessageHandling : TMessageHandling;
  isAddtoListView : Boolean;
  isDeleteListView : Boolean;
begin
  inherited;

  isAddtoListView := False;
  isDeleteListView := false;

  case Cmd.Messagetype of
    //Sync Sent Message In Same Cubicle
    0 :
    begin
      if simMgrClient.ISInstructor then
      begin
        if Cmd.SendFrom = 0 then
          isAddtoListView := True;
      end
      else
      begin
        if Cmd.SendFrom = simMgrClient.FMyCubGroup.FData.Group_Index then
          isAddtoListView := True;
      end;

      if isAddtoListView then
      begin
        with frmToteDisplay.lvSent.Items.Add do
        begin
          MessageHandling := TMessageHandling.Create;
          MessageHandling.FData := Cmd;

          //Add Pointer Data
          Data := MessageHandling;

          Caption := Cmd.RecipientList;
          SubItems.Add(Cmd.MessageHandling);
          SubItems.Add(Cmd.Subject);

          case Cmd.Priority of
            0 : SubItems.Add('FLASH');
            1 : SubItems.Add('IMMED');
            2 : SubItems.Add('PRIORITY');
            3 : SubItems.Add('ROUTINE');
          end;
        end;
      end;
    end;
    //Sync Draft Message In Same Cubicle
    1 :
    begin
      if simMgrClient.ISInstructor then
      begin
        if Cmd.SendFrom = 0 then
          isAddtoListView := True;
      end
      else
      begin
        if Cmd.SendFrom = simMgrClient.FMyCubGroup.FData.Group_Index then
          isAddtoListView := True;
      end;

      if isAddtoListView then
      begin
        with frmToteDisplay.lvDraft.Items.Add do
        begin
          MessageHandling := TMessageHandling.Create;
          MessageHandling.FData := Cmd;

          //Add Pointer Data
          Data := MessageHandling;

          Caption := Cmd.RecipientList;
          SubItems.Add(Cmd.MessageHandling);
          SubItems.Add(Cmd.Subject);

          case Cmd.Priority of
            0 : SubItems.Add('FLASH');
            1 : SubItems.Add('IMMED');
            2 : SubItems.Add('PRIORITY');
            3 : SubItems.Add('ROUTINE');
          end;
        end;
      end;
    end;
    //Process Sent Message
    2 :
    begin
      if not simMgrClient.ISInstructor then
      begin
        if Cmd.SendFrom <> simMgrClient.FMyCubGroup.FData.Group_Index then
        begin
          if cmd.SendFrom = 0 then
            msgSendFrom := 'Controller';

          if Cmd.Sendto = simMgrClient.FMyCubGroup.FData.Group_Index then
          begin
            for i := 0 to simMgrClient.Scenario.CubiclesGroupsList.Count - 1 do
            begin
              grp := simMgrClient.Scenario.CubiclesGroupsList.Items[i] as T3CubicleGroup;
              if grp <> nil then begin
                if grp.FData.Group_Index = Cmd.SendFrom then
                begin
                  with frmToteDisplay.lvReceive.Items.Add do
                  begin
                    frmTacticalDisplay.addStatus('Receive Message');

                    MessageHandling := TMessageHandling.Create;
                    MessageHandling.FData := Cmd;

                    //Add Pointer Data
                    Data := MessageHandling;

                    msgSendFrom := grp.FData.Group_Identifier;
                    Caption := msgSendFrom;
                    SubItems.Add(Cmd.MessageHandling);
                    SubItems.Add(Cmd.Subject);

                    case Cmd.Priority of
                      0 : SubItems.Add('FLASH');
                      1 : SubItems.Add('IMMED');
                      2 : SubItems.Add('PRIORITY');
                      3 : SubItems.Add('ROUTINE');
                    end;
                  end;

                  Break;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
    //proses sent, just controller
    3:
    begin
      if simMgrClient.ISInstructor then
      begin
        if Cmd.SendFrom = 0 then
        begin
          msgSendFrom := 'Controller';
          isAddtoListView := True;
        end
        else
        begin
          for i := 0 to simMgrClient.Scenario.CubiclesGroupsList.Count - 1 do
          begin
            grp := simMgrClient.Scenario.CubiclesGroupsList.Items[i] as T3CubicleGroup;
            if grp <> nil then begin
              if grp.FData.Group_Index = Cmd.SendFrom then
              begin
                msgSendFrom := grp.FData.Group_Identifier;
                isAddtoListView := true;
                Break;
              end;
            end;
          end;
        end;

        if isAddtoListView then
        begin
          with frmToteDisplay.lvReceive.Items.Add do
          begin
            MessageHandling := TMessageHandling.Create;
            MessageHandling.FData := Cmd;

            //Add Pointer Data
            Data := MessageHandling;

            Caption := msgSendFrom;
            SubItems.Add(Cmd.MessageHandling);
            SubItems.Add(Cmd.Subject);

            case Cmd.Priority of
              0 : SubItems.Add('FLASH');
              1 : SubItems.Add('IMMED');
              2 : SubItems.Add('PRIORITY');
              3 : SubItems.Add('ROUTINE');
            end;
          end;
        end;
      end;
    end;
    //delete message
    4 :
    begin
      case Cmd.OrderID of
        1 :
        begin
          if simMgrClient.ISInstructor then
          begin
            if cmd.SendFrom = 0 then
            begin
              isDeleteListView := true;
            end;
          end
          else
          begin
            if Cmd.SendFrom = simMgrClient.FMyCubGroup.FData.Group_Index then
            begin
              isDeleteListView := True;
            end;
          end;

          if isDeleteListView then
          begin
            for i := 0 to frmToteDisplay.lvReceive.Items.Count - 1 do
            begin
              if frmToteDisplay.lvReceive.Items[i].Data <> nil then
              begin
                MessageHandling := TMessageHandling(frmToteDisplay.lvReceive.Items[i].Data);
                MessageHandling.FData.OrderID := 1;
                MessageHandling.FData.Messagetype := 4;

                if ((MessageHandling.FData.OrderID = Cmd.OrderID) and
                    (MessageHandling.FData.SesionID = Cmd.SesionID) and
                    (MessageHandling.FData.SendFrom = Cmd.SendFrom) and
                    (MessageHandling.FData.Sendto = Cmd.Sendto) and
                    (MessageHandling.FData.Subject = Cmd.Subject) and
                    (MessageHandling.FData.Messagetype = Cmd.Messagetype) and
                    (MessageHandling.FData.Priority = cmd.Priority) and
                    (MessageHandling.FData.Band = Cmd.Band) and
                    (MessageHandling.FData.MessageHandling = cmd.MessageHandling) and
                    (MessageHandling.FData.RecipientList = Cmd.RecipientList)
                   )
                then
                begin
                  if i < frmToteDisplay.lvReceive.Items.Count  then
                  begin
                    frmToteDisplay.mmoMessage.Lines.Clear;
                    frmToteDisplay.lvReceive.Items[i].Data := nil;
                    frmToteDisplay.lvReceive.Items[i].Delete;
                    Break;
                  end;
                end;
              end;
            end;
          end;
        end;
        2 :
        begin
          if simMgrClient.ISInstructor then
          begin
            if cmd.SendFrom = 0 then
            begin
              isDeleteListView := true;
            end;
          end
          else
          begin
            if Cmd.SendFrom = simMgrClient.FMyCubGroup.FData.Group_Index then
            begin
              isDeleteListView := True;
            end;
          end;

          if isDeleteListView then
          begin
            for i := 0 to frmToteDisplay.lvDraft.Items.Count - 1 do
            begin
              if frmToteDisplay.lvDraft.Items[i].Data <> nil then
              begin
                MessageHandling := TMessageHandling(frmToteDisplay.lvDraft.Items[i].Data);
                MessageHandling.FData.OrderID := 2;
                MessageHandling.FData.Messagetype := 4;

                if ((MessageHandling.FData.OrderID = Cmd.OrderID) and
                    (MessageHandling.FData.SesionID = Cmd.SesionID) and
                    (MessageHandling.FData.SendFrom = Cmd.SendFrom) and
                    (MessageHandling.FData.Sendto = Cmd.Sendto) and
                    (MessageHandling.FData.Subject = Cmd.Subject) and
                    (MessageHandling.FData.Messagetype = Cmd.Messagetype) and
                    (MessageHandling.FData.Priority = cmd.Priority) and
                    (MessageHandling.FData.Band = Cmd.Band) and
                    (MessageHandling.FData.MessageHandling = cmd.MessageHandling) and
                    (MessageHandling.FData.RecipientList = Cmd.RecipientList)
                   )
                then
                begin
                  if i < frmToteDisplay.lvDraft.Items.Count  then
                  begin
                    frmToteDisplay.mmoMessage.Lines.Clear;
                    frmToteDisplay.lvDraft.Items[i].Data := nil;
                    frmToteDisplay.lvDraft.Items[i].Delete;
                    Break;
                  end;
                end;
              end;
            end;
          end;
        end;
        3 :
        begin
          if simMgrClient.ISInstructor then
          begin
            if cmd.SendFrom = 0 then
            begin
              isDeleteListView := true;
            end;
          end
          else
          begin
            if Cmd.SendFrom = simMgrClient.FMyCubGroup.FData.Group_Index then
            begin
              isDeleteListView := True;
            end;
          end;

          if isDeleteListView then
          begin
            for i := 0 to frmToteDisplay.lvSent.Items.Count - 1 do
            begin
              if frmToteDisplay.lvSent.Items[i].Data <> nil then
              begin
                MessageHandling := TMessageHandling(frmToteDisplay.lvSent.Items[i].Data);
                MessageHandling.FData.OrderID := 3;
                MessageHandling.FData.Messagetype := 4;

                if ((MessageHandling.FData.OrderID = Cmd.OrderID) and
                    (MessageHandling.FData.SesionID = Cmd.SesionID) and
                    (MessageHandling.FData.SendFrom = Cmd.SendFrom) and
                    (MessageHandling.FData.Sendto = Cmd.Sendto) and
                    (MessageHandling.FData.Subject = Cmd.Subject) and
                    (MessageHandling.FData.Messagetype = Cmd.Messagetype) and
                    (MessageHandling.FData.Priority = cmd.Priority) and
                    (MessageHandling.FData.Band = Cmd.Band) and
                    (MessageHandling.FData.MessageHandling = cmd.MessageHandling) and
                    (MessageHandling.FData.RecipientList = Cmd.RecipientList)
                   )
                then
                begin
                  if i < frmToteDisplay.lvSent.Items.Count  then
                  begin
                    frmToteDisplay.mmoMessage.Lines.Clear;
                    frmToteDisplay.lvSent.Items[i].Data := nil;
                    frmToteDisplay.lvSent.Items[i].Delete;
                    Break;
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

procedure TT3ClientEventManager.OnReceiveModifComm(Cmd: TRecModifComm);
var
  GrpName : string;
  aIdRow : Integer;
begin
  inherited;

  if ((cmd.ModifStat = mcsAdd) or
      (cmd.ModifStat = mcsRemove))
  then
  begin
    GrpName := frmToteDisplay.edtGroupName.Text;
    frmToteDisplay.RefreshChannelMapping(GrpName);
  end
  else
  if (cmd.ModifStat = mcsChangeLabel) then
  begin
    GrpName := frmToteDisplay.edtGroupName.Text;
    frmToteDisplay.RefreshChannelMapping(GrpName);

    with frmToteDisplay.sgCommChannelDef do
    begin
      Cells[2, Cmd.Channel_Number {+ 1}] := Cmd.Channel_Ident;
      Cells[3, Cmd.Channel_Number {+ 1}] := Cmd.Channel_Code;
      Cells[5, Cmd.Channel_Number {+ 1}] := FloatToStr(Cmd.Channel_Frek);
    end;
  end
  else
  if (cmd.ModifStat = mcsChangeBand) then
  begin
    GrpName := frmToteDisplay.edtGroupName.Text;
    frmToteDisplay.RefreshChannelMapping(GrpName);

    with frmToteDisplay.sgCommChannelDef do
    begin
      case cmd.Channel_band of
        0 : Cells[4, Cmd.Channel_Number {+ 1}] := 'HF';
        1 : Cells[4, Cmd.Channel_Number {+ 1}] := 'VHF/UHF';
        2 : Cells[4, Cmd.Channel_Number {+ 1}] := 'SATCOM';
        3 : Cells[4, Cmd.Channel_Number {+ 1}] := 'UWT';
        4 : Cells[4, Cmd.Channel_Number {+ 1}] := 'FM';
      end;
    end;
  end
  else
  if Cmd.ModifStat = mcsCreate then
  begin
    aIdRow :=  Cmd.Channel_Number {+ 1};
//    frmToteDisplay.sgCommChannelDef.Objects[0, aIdRow] := TObject(1);
    frmToteDisplay.sgCommChannelDef.Cells[2, aIdRow] := Cmd.Channel_Ident;
    frmToteDisplay.sgCommChannelDef.Cells[3, aIdRow] := Cmd.Channel_Code;

    case Cmd.Channel_band of
      0 : frmToteDisplay.sgCommChannelDef.Cells[4, aIdRow] := 'HF';
      1 : frmToteDisplay.sgCommChannelDef.Cells[4, aIdRow] := 'VHF/UHF';
      2 : frmToteDisplay.sgCommChannelDef.Cells[4, aIdRow] := 'SATCOM';
      3 : frmToteDisplay.sgCommChannelDef.Cells[4, aIdRow] := 'UWT';
      4 : frmToteDisplay.sgCommChannelDef.Cells[4, aIdRow] := 'FM';
    end;

    frmToteDisplay.sgCommChannelDef.Cells[5, aIdRow] := FloatToStr(cmd.Channel_Frek);

//    if Cmd.Channel_Security then
//      frmToteDisplay.sgCommChannelDef.Objects[6, aIdRow] := TObject(1)
//    else
//      frmToteDisplay.sgCommChannelDef.Objects[6, aIdRow] := TObject(0);

    GrpName := frmToteDisplay.edtGroupName.Text;
    frmToteDisplay.RefreshChannelMapping(GrpName);
  end
  else
  if Cmd.ModifStat = mcsOff then
  begin
    aIdRow :=  Cmd.Channel_Number {+ 1};
//    frmToteDisplay.sgCommChannelDef.Objects[0, aIdRow] := TObject(0);

    GrpName := frmToteDisplay.edtGroupName.Text;
    frmToteDisplay.RefreshChannelMapping(GrpName);
  end
  else
  if cmd.ModifStat = mcsChangeSecure then
  begin
    if simMgrClient.ISInstructor then
    begin
      aIdRow :=  Cmd.Channel_Number {+ 1};
//      if Cmd.Channel_Security then
//        frmToteDisplay.sgCommChannelDef.Objects[6, aIdRow] := TObject(1)
//      else
//        frmToteDisplay.sgCommChannelDef.Objects[6, aIdRow] := TObject(0);

      GrpName := frmToteDisplay.edtGroupName.Text;
      frmToteDisplay.RefreshChannelMapping(GrpName);
    end
    else
    begin
      GrpName := frmToteDisplay.edtGroupName.Text;
      frmToteDisplay.RefreshChannelMapping(GrpName);
    end;
  end
  else
  if Cmd.ModifStat = mcsInterference then
  begin
    if simMgrClient.ISInstructor then
    begin
      GrpName := frmToteDisplay.edtGroupName.Text;
      frmToteDisplay.RefreshChannelMapping(GrpName);
    end;
  end;
end;

procedure TT3ClientEventManager.OnRefreshIFFForm(sensor: TT3IFFSensor);
begin
  inherited;

  if sensor <> nil then
  begin
    frmTacticalDisplay.fmSensor1.RefreshIFFPropertiesTab(sensor);
  end;
end;

procedure TT3ClientEventManager.OnRemoteViewerRun();
begin
  if frmToteDisplay.Showing then frmToteDisplay.Close ;
end;

procedure TT3ClientEventManager.OnSnapshotEventDone( msg : string );
begin
  with frmTacticalDisplay do
  begin
      addStatus('Snapshot : '+msg);
      //addStatus_Yellow();
  end;
end;

end.
