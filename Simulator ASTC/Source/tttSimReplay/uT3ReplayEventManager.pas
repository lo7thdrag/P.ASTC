unit uT3ReplayEventManager;

interface

uses
  uT3EventManager, uT3Unit, tttData, uBaseCoordSystem, uGameData_TTT,
  uDynamicOverlay, uMainDynamicShape, uMainStaticShape, uMainOverlay,
  Classes;

type
  TT3ReplayEventManager = class(TT3EventManager)
  private
    FManagerClient : TObject;
    Temporary : TList;
    TemporaryD : TList;
    procedure SetManagerClient(const Value: TObject);

  public
    constructor Create;
    property ManagerClient : TObject read FManagerClient write SetManagerClient;

    procedure OnPlatformDestroy(Sender : TObject);                              override;
    procedure OnPlatformFreeMe(Sender : TObject;Value : boolean);               override;
    procedure OnPlatformHancurin(SenderID : Integer; Target: string; reasondestroy : Byte);override;

//    procedure OnUpdateEnvi(index : integer; Value: Double);                     override;

    //sensor event
    procedure OnSensorDetect(Sender : TObject; detected : TObject; Value : boolean; aIFF : Boolean );  override;
    procedure OnSensorRemoved(Sender : TObject);                                      override;
    procedure OnSensorOperationalStatus(Sender : TObject;Mode : TSensorOperationalStatus);  override;
    procedure OnRadarControlMode(Sender : TObject;Mode : TRadarControlMode);                override;
    procedure OnSonarControlMode(Sender : TObject;Mode : TSonarControlMode);                override;
    procedure onIFFTransponderStatus(Sender : TObject;Mode : TSensorOperationalStatus);   override;
    procedure OnIFFInterrogatorStatus(Sender : TObject;Mode : TSensorOperationalStatus);  override;

    //weapon event
    procedure OnWeaponLaunched(Sender : TObject; Target : TObject);                         override;
    procedure OnWeaponDestroy(Sender : TObject);                                            override;
    procedure OnWeaponTarget(Sender : TObject; Target : TObject);                           override;
    procedure OnWeaponPropertyChange(Sender : TObject);                                     override;
    procedure OnWeaponInOut(SenderID: integer; reasondestroy : Byte) ;                      override;
    procedure OnWeaponHit(Sender : TObject; Target : TObject; Lethality : integer; FreeWeapon: Boolean);     override;

    // ECM Event
    procedure OnECMLaunched(Sender : TObject);        override;
	  procedure OnECMDestroy(Sender : TObject);         override;

    // event datalink
    procedure OnDataLinkUpdated(Sender : TObject); override;
    procedure OnDatalinkTracksUpdate(Sender : TObject);override;
    procedure OnDatalinkOffLine(Sender : TObject);override;

    // overlay
    function VisibleOverlayByGroup(dynParent : TT3PlatformInstance) : Boolean;
    procedure OnOverlayStaticShape(r: TRecCmd_OverlayStaticShape);
    procedure OnOverlayDynamicShape(r: TRecCmd_OverlayDynamicShape);
    procedure OnOverlayTemplate(r: TRecCmd_OverlayTemplate);
    procedure OnDynamicTrack(r: TRecCmd_OverlayDynamicTrack);

    procedure SetManager(manager : TObject);

  end;

implementation

uses
  ufmainDisplay, uSimObjects, uT3ReplayClient, uT3Radar,
  uT3Vehicle, uT3Torpedo, uT3Missile, uT3Sensor, uT3DataLink,
  uT3Weapon, uT3DetectedTrack, uT3OtherSensor,
  uT3MissileDetail, uDBCubicles, uT3Gun, uT3Bomb, uT3SimManager,
  uT3CounterMeasure, uT3Sonobuoy;

{ TT3ReplayEventManager }

constructor TT3ReplayEventManager.Create;
begin

  Temporary := TList.Create;
  TemporaryD := TList.Create;

end;

procedure TT3ReplayEventManager.OnDatalinkOffLine(Sender: TObject);
begin
  inherited;
  TT3ReplayClient(ManagerClient).RemoveDetectedTrackByDataLink(TT3DataLink(Sender));

end;

procedure TT3ReplayEventManager.OnDatalinkTracksUpdate(Sender: TObject);
var
  dl      : TT3DataLink;
  i,j     : integer;
  itemNCS : TT3DLNCSTrackEntityItem;
  itemPU  : TT3DLParticipatingUnitItem;
  PUNCS,pf: TT3PlatformInstance;
  aPf     : TSimObject;
  range   : double;
  outRange, found : boolean;
  arrTracks : TIntegerArray;
  FMyCubGroup : T3CubicleGroup;
begin
  inherited;

  if not Assigned(Sender) then
    Exit;

  outRange := false;

  if Sender is TT3DataLink then
  begin
    if TT3ReplayClient(ManagerClient).CurrentPerspective <> 0 then
    begin
      dl := TT3DataLink(Sender);

      FMyCubGroup := T3CubicleGroup(TT3ReplayClient(ManagerClient).Scenario.
        CubiclesGroupsList.GetGroupByID(TT3ReplayClient(ManagerClient).CurrentPerspective));

      { cek apakah ada platform yang di control }
      if not Assigned(TT3ReplayClient(ManagerClient).HookedPlatform) then
      begin
        TT3ReplayClient(ManagerClient).RemoveDetectedTrackByDataLink(dl);

        Exit;
      end;
      { end cek platform yang di control }

      { cek emcon status pada object yang di control}
      if TT3ReplayClient(ManagerClient).HookedPlatform is TT3Vehicle then
      begin
        if (TT3Vehicle(TT3ReplayClient(ManagerClient).HookedPlatform).EMCON_HFDataLinkVehicle = EmconHFDatalinkOn)
        or (TT3Vehicle(TT3ReplayClient(ManagerClient).HookedPlatform).EMCON_UHFVHFDataLinkVehicle = EmconUHFVHFDatalinkOn) then
        begin
          { remove detected track }
          TT3ReplayClient(ManagerClient).RemoveDetectedTrackByDataLink(dl);
          Exit;
        end;
      end;
      { end cek emcon status }

      // Get participating Unit
      itemPU := nil;
      if TT3ReplayClient(ManagerClient).HookedPlatform.ClassType = TT3PlatformInstance then
        itemPU := dl.GetPUByInstanceIndex(TT3PlatformInstance(TT3ReplayClient(ManagerClient).HookedPlatform).InstanceIndex);

      if not Assigned(itemPU) then
        Exit;

      // Get NCS PLatform
      PUNCS := dl.GetNCSPlatform;
      if not Assigned(PUNCS) then
        // if not assign, delete detected track
        TT3ReplayClient(ManagerClient).RemoveDetectedTrackByDataLink(dl)
      else
      begin
        if TT3ReplayClient(ManagerClient).HookedPlatform.Equals(PUNCS) then
        begin
          { shortening cycle process }
          TT3ReplayClient(ManagerClient).findDetectedTracksByDatalink(arrTracks);

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


            if FMyCubGroup = nil then
              Exit;

            if FMyCubGroup.IsGroupMember(itemNCS.NEITrackID) then
              found := true;

            { if not exist on detected track by datalink, then add track }
            if not found then
              TT3ReplayClient(ManagerClient).AddDetectedTrackByDataLink(itemNCS.NEITrackID,dl);
          end;

          for I := 0 to Length(arrTracks) - 1 do
          begin
            if arrTracks[i] = 0  then
              Continue;

            aPf := TT3ReplayClient(ManagerClient).FindT3PlatformByID(arrTracks[i]);
            if Assigned(aPf) then
              TT3ReplayClient(ManagerClient).Remove_DetectedTrack(aPf,dl);
          end;
        end
        else
        begin
          { track update berdasar jarak controlled platform band dan NCS band }
          if TT3ReplayClient(ManagerClient).HookedPlatform.ClassType = TT3PlatformInstance then
            pf := TT3PlatformInstance(TT3ReplayClient(ManagerClient).HookedPlatform);

          if not Assigned(pf) then
            Exit;

          range := CalcRange(pf.PosX,pf.PosY,PUNCS.PosX, PUNCS.PosY);

          case dl.BandType of
            // HF
            1 :
            begin
              if range > TT3ReplayClient(ManagerClient).GameDefaults.FData.Max_HF_Detect_Range then
                outRange := True;
            end;
            // UHF
            2 :
            begin
              if range > TT3ReplayClient(ManagerClient).GameDefaults.FData.Max_UHF_Detect_Range then
                outRange := True;
            end
          end;

          if outRange or (itemPU.PUStatus = pusOff) then
            TT3ReplayClient(ManagerClient).RemoveDetectedTrackByDataLink(dl)
          else
          begin
            { shortening cycle process }
            TT3ReplayClient(ManagerClient).findDetectedTracksByDatalink(arrTracks);

            { sync between NCS entities with detected tracks }
            for I := 0 to dl.getNCSEntitiesCount - 1 do
            begin
              itemNCS := dl.getNCSEntity(i);

              if not Assigned(itemNCS) then
                Continue;

              if itemNCS.NEIOwnerID = pf.InstanceIndex then
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

              if FMyCubGroup.IsGroupMember(itemNCS.NEITrackID) then
                found := true;

              { if not exist on detected track by datalink, then add track }
              if not found then
                TT3ReplayClient(ManagerClient).AddDetectedTrackByDataLink(itemNCS.NEITrackID,dl);
            end;

            for I := 0 to Length(arrTracks) - 1 do
            begin
              if arrTracks[i] = 0  then
                Continue;

              aPf := TT3ReplayClient(ManagerClient).FindT3PlatformByID(arrTracks[i]);
              if Assigned(aPf) then
                TT3ReplayClient(ManagerClient).Remove_DetectedTrack(aPf,dl);
            end;
          end;
        end;
      end;
    end;
  end;end;

procedure TT3ReplayEventManager.OnDataLinkUpdated(Sender: TObject);
begin
  inherited;

end;

procedure TT3ReplayEventManager.OnDynamicTrack(r: TRecCmd_OverlayDynamicTrack);
var
   i : Integer;
   Track : TMainTrackSelection;
   OverlayTemplate : TMainOverlayTemplate;
begin
  for i := 0 to TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Name = r.TemplateName then
    begin
      if r.IdAction = 3 then
      begin
        if (r.IdSelectTrack <= OverlayTemplate.FListTrack.Count) and
           (OverlayTemplate.FListTrack.Count <> 0) then
        begin
          OverlayTemplate.FListTrack.Delete(r.IdSelectTrack);
          Break;
        end;
      end
      else
      begin
        Track := TMainTrackSelection.Create(TT3ReplayClient(ManagerClient).Converter);
        Track.TrackInstanceIndex := r.IdTrack;
        Track.TrackId := r.NameTrack;
        Track.RangeOffset := r.Rng;
        Track.BearingOffset := r.Brg;
        Track.Rotation := r.Rot;
        Track.Orientation := r.Orientation;
        Track.Parent := TT3ReplayClient(ManagerClient).FindT3PlatformByID(r.IdTrack);

        OverlayTemplate.AddListTrack(Track);
      end;
    end;
  end;
end;

procedure TT3ReplayEventManager.OnECMDestroy(Sender: TObject);
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

//    TT3ReplayClient(ManagerClient).RemoveFromTrackList(Sender);
    TT3ReplayClient(ManagerClient).RemoveDetectedTrack(TSimObject(Sender));
  end;

end;

procedure TT3ReplayEventManager.OnECMLaunched(Sender: TObject);
begin
  inherited;

  if (Sender is TT3Chaff) then
  begin
    TT3ReplayClient(ManagerClient).SimPlatforms.addObject(TSimObject(Sender));

    TT3ReplayClient(ManagerClient).Display.addStatus(TT3Chaff(Sender).InstanceName + ' launched');
  end;

  if (Sender is TT3AirBubble) then
  begin
    TT3ReplayClient(ManagerClient).SimPlatforms.addObject(TSimObject(Sender));

    TT3ReplayClient(ManagerClient).Display.addStatus(TT3AirBubble(Sender).InstanceName + ' launched');
  end;

  if (Sender is TT3Sonobuoy) then
  begin
    TT3ReplayClient(ManagerClient).SimPlatforms.addObject(TSimObject(Sender));

    TT3ReplayClient(ManagerClient).Display.addStatus(TT3Sonobuoy(Sender).InstanceName + ' launched');
  end;
end;

procedure TT3ReplayEventManager.OnIFFInterrogatorStatus(Sender: TObject;
  Mode: TSensorOperationalStatus);
begin
  inherited;

end;

procedure TT3ReplayEventManager.onIFFTransponderStatus(Sender: TObject;
  Mode: TSensorOperationalStatus);
begin
  inherited;

end;

procedure TT3ReplayEventManager.OnOverlayDynamicShape(
  r: TRecCmd_OverlayDynamicShape);
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
  for i := 0 to TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Name = r.TemplateName then
    begin
      if r.IdAction = 3 then
      begin
        OverlayTemplate.DynamicList.Delete(r.IdSelectShape);
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
              TextShape := TTextDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            TextShape.postStart := r.PostStart;
            TextShape.size := r.Size;
            TextShape.words := r.Words;
            TextShape.Color := r.color;
            TextShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(TextShape);
          end;
          ovLine :
          begin
            if r.IdAction = 2 then
              LineShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              LineShape := TLineDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            LineShape.postStart := r.PostStart;
            LineShape.postEnd := r.PostEnd;
            LineShape.color := r.color;
            LineShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(LineShape);
          end;
          ovRectangle :
          begin
            if r.IdAction = 2 then
              RectangleShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              RectangleShape := TRectangleDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            RectangleShape.postStart := r.PostStart;
            RectangleShape.postEnd := r.PostEnd;
            RectangleShape.color := r.color;
            RectangleShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(RectangleShape);
          end;
          ovCircle :
          begin
            if r.IdAction = 2 then
              CircleShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              CircleShape := TCircleDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            CircleShape.postCenter := r.PostStart;
            CircleShape.radius := r.Radius1;
            CircleShape.Color := r.color;
            CircleShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(CircleShape);
          end;
          ovEllipse :
          begin
            if r.IdAction = 2 then
              EllipseShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              EllipseShape := TEllipseDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            EllipseShape.postCenter := r.PostStart;
            EllipseShape.Hradius := r.Radius1;
            EllipseShape.Vradius := r.Radius2;
            EllipseShape.Color := r.color;
            EllipseShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(EllipseShape);
          end;
          ovArc :
          begin
            if r.IdAction = 2 then
              ArcShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              ArcShape := TArcDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            ArcShape.postCenter := r.PostStart;
            ArcShape.radius := r.Radius1;
            ArcShape.StartAngle := r.StartAngle;
            ArcShape.EndAngle := r.EndAngle;
            ArcShape.Color := r.color;
            ArcShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(ArcShape);
          end;
          ovSector :
          begin
            if r.IdAction = 2 then
              SectorShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              SectorShape := TSectorDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            SectorShape.postCenter := r.PostStart;
            SectorShape.Oradius := r.Radius1;
            SectorShape.Iradius := r.Radius2;
            SectorShape.StartAngle := r.StartAngle;
            SectorShape.EndAngle := r.EndAngle;
            SectorShape.Color := r.color;
            SectorShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(SectorShape);
          end;
          ovGrid :
          begin
            if r.IdAction = 2 then
              GridShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape]
            else
              GridShape := TGridDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            GridShape.postCenter := r.PostStart;
            GridShape.Height := r.Radius1;
            GridShape.Width := r.Radius2;
            GridShape.HCount := r.Kolom;
            GridShape.WCount := r.Baris;
            GridShape.Rotation := r.Rotasi;
            GridShape.Color := r.color;
            GridShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(GridShape);
          end;
          ovPolygon  :
          begin
            Point1 := TDotDynamic.Create;
            Point1.Range := r.PostStart.Range;
            Point1.Bearing := r.PostStart.Bearing;
            TemporaryD.Add(Point1);

            if r.StatePoly = 0 then
              Exit;

            if r.IdAction = 2 then
            begin
              PolygonShape := OverlayTemplate.DynamicList.Items[r.IdSelectShape];
              PolygonShape.polyList.Clear;
            end
            else
              PolygonShape := TPolygonDynamic.Create(TT3ReplayClient(ManagerClient).Converter);

            {jika sdh kiriman terakhir}
            for j := 0 to TemporaryD.Count - 1 do
            begin
              Point1 := TemporaryD.Items[j];
              Point2 := Point1;
              PolygonShape.polyList.Add(Point2);
            end;

            TemporaryD.Clear;

            PolygonShape.Color := r.color;
            PolygonShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.DynamicList.Add(PolygonShape);
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ReplayEventManager.OnOverlayStaticShape(
  r: TRecCmd_OverlayStaticShape);
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
  for i := 0 to TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Name = r.TemplateName then
    begin
      if r.IdAction = 3 then
      begin
        OverlayTemplate.StaticList.Delete(r.IdSelectShape);
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
              TextShape := TTextStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            TextShape.postStart := r.PostStart;
            TextShape.size := r.Size;
            TextShape.words := r.Words;
            TextShape.Color := r.color;
            TextShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(TextShape);
          end;
          ovLine :
          begin
            if r.IdAction = 2 then
              LineShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              LineShape := TLineStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            LineShape.postStart := r.PostStart;
            LineShape.postEnd := r.PostEnd;
            LineShape.color := r.color;
            LineShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(LineShape);
          end;
          ovRectangle :
          begin
            if r.IdAction = 2 then
              RectangleShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              RectangleShape := TRectangleStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            RectangleShape.postStart := r.PostStart;
            RectangleShape.postEnd := r.PostEnd;
            RectangleShape.color := r.color;
            RectangleShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(RectangleShape);
          end;
          ovCircle :
          begin
            if r.IdAction = 2 then
              CircleShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              CircleShape := TCircleStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            CircleShape.postCenter := r.PostStart;
            CircleShape.radius := r.Radius1;
            CircleShape.Color := r.color;
            CircleShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(CircleShape);
          end;
          ovEllipse :
          begin
            if r.IdAction = 2 then
              EllipseShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              EllipseShape := TEllipseStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            EllipseShape.postCenter := r.PostStart;
            EllipseShape.Hradius := r.Radius1;
            EllipseShape.Vradius := r.Radius2;
            EllipseShape.Color := r.color;
            EllipseShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(EllipseShape);
          end;
          ovArc :
          begin
            if r.IdAction = 2 then
              ArcShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              ArcShape := TArcStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            ArcShape.postCenter := r.PostStart;
            ArcShape.radius := r.Radius1;
            ArcShape.StartAngle := r.StartAngle;
            ArcShape.EndAngle := r.EndAngle;
            ArcShape.Color := r.color;
            ArcShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(ArcShape);
          end;
          ovSector :
          begin
            if r.IdAction = 2 then
              SectorShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              SectorShape := TSectorStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            SectorShape.postCenter := r.PostStart;
            SectorShape.Oradius := r.Radius1;
            SectorShape.Iradius := r.Radius2;
            SectorShape.StartAngle := r.StartAngle;
            SectorShape.EndAngle := r.EndAngle;
            SectorShape.Color := r.color;
            SectorShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(SectorShape);
          end;
          ovGrid :
          begin
            if r.IdAction = 2 then
              GridShape := OverlayTemplate.StaticList.Items[r.IdSelectShape]
            else
              GridShape := TGridStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            GridShape.postCenter := r.PostStart;
            GridShape.Height := r.Radius1;
            GridShape.Width := r.Radius2;
            GridShape.HCount := r.Kolom;
            GridShape.WCount := r.Baris;
            GridShape.Rotation := r.Rotasi;
            GridShape.Color := r.color;
            GridShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(GridShape);
          end;
          ovPolygon  :
          begin
            Point1 := TDotStatic.Create;
            Point1.X := r.PostStart.X;
            Point1.Y := r.PostStart.Y;
            Temporary.Add(Point1);

            if r.StatePoly = 0 then
              Exit;

            if r.IdAction = 2 then
            begin
              PolygonShape := OverlayTemplate.StaticList.Items[r.IdSelectShape];
              PolygonShape.polyList.Clear;
            end
            else
              PolygonShape := TPolygonStatic.Create(TT3ReplayClient(ManagerClient).Converter);

            {jika sdh kiriman terakhir}
            for j := 0 to Temporary.Count - 1 do
            begin
              Point1 := Temporary.Items[j];
              Point2 := Point1;
              PolygonShape.polyList.Add(Point2);
            end;

            Temporary.Clear;

            PolygonShape.Color := r.color;
            PolygonShape.isSelected := False;

            if r.IdAction <> 2 then
              OverlayTemplate.StaticList.Add(PolygonShape);
          end;
        end;
      end;
    end;
  end;
end;

procedure TT3ReplayEventManager.OnOverlayTemplate(r: TRecCmd_OverlayTemplate);
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
    end;
    2:{edit}
    begin

    end;
    3:{delete}
    begin
      for i := 0 to TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Count - 1 do
      begin
        OverlayTemplate := TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Items[i];

        if OverlayTemplate.Name = r.Name then
        begin
          TT3ReplayClient(ManagerClient).DrawOverlayTemplate.FList.Delete(i);
          Break;
        end;
      end;
    end;
  end;
end;

procedure TT3ReplayEventManager.OnPlatformDestroy(Sender: TObject);
var
  pf : TT3PlatformInstance;
  i : Integer;
begin
  inherited;

  pf := nil;

  // from server event mngr
  for i := 0 to TT3ReplayClient(ManagerClient).SimPlatforms.itemCount - 1 do
  begin
    pf := TT3ReplayClient(ManagerClient).SimPlatforms.getObject(i) as TT3PlatformInstance;

    if TT3Vehicle(pf).CircleTrack = TT3PlatformInstance(Sender) then
      TT3Vehicle(pf).CircleTrack := nil
    else
    if TT3Vehicle(pf).EngageVehicle = TT3PlatformInstance(Sender) then
      TT3Vehicle(pf).EngageVehicle := nil;
  end;

  if TT3ReplayClient(ManagerClient).HookedPlatform = Sender then
    TT3ReplayClient(ManagerClient).HookedPlatform := nil;

  TT3ReplayClient(ManagerClient).RemoveDetectedTrack(TSimObject(Sender));

end;

procedure TT3ReplayEventManager.OnPlatformFreeMe(Sender: TObject;
  Value: boolean);
begin
  inherited;
end;

procedure TT3ReplayEventManager.OnPlatformHancurin(SenderID: Integer;
  Target: string;reasondestroy : Byte);
var
  Sender : TT3PlatformInstance;
  i : Integer;
  dev: TSimObject;
  objPlatform : TSimObject;
begin
  inherited;
  Sender := TT3ReplayClient(ManagerClient).FindT3PlatformByID(SenderID);

  if Assigned(Sender) then
  begin
    for i := 0 to TT3ReplayClient(ManagerClient).SimDevices.itemCount - 1 do     //mk
    begin
      dev := TT3ReplayClient(ManagerClient).SimDevices.getObject(i);
      if (dev is TT3Radar)then
      begin
        if (TT3Radar(dev).RadarDefinition.FDef.Num_FCR_Channels > 0) then
        begin
          objPlatform := TT3ReplayClient(ManagerClient).FindT3PlatformByID(SenderID);
          objPlatform.IsAssigned := false;

          if TT3Radar(dev).AssignedTrack <> nil then
          begin
            if TT3Radar(dev).AssignedTrack.Count > 0 then
            begin
              TT3Radar(dev).AssignedTrack.Remove(Sender);
              TT3Radar(dev).OnFireControlUpdated(TT3Radar(dev));
              {frmTacticalDisplay.fmFireControl1.SetControlledObject(TT3Radar(dev).Parent);
              frmTacticalDisplay.fmFireControl1.RefreshAssignTrack(dev as TT3Radar);}
            end;
          end;
        end;
      end;
    end;
  end;

  if Assigned(Sender) and TT3PlatformInstance(Sender).FlagShowStatusDestroy then
  begin
    Sender.FlagShowStatusDestroy := False;
    Sender.reasonDestroy := 21;
    //frmToteDisplay.OnPlatformDestroy(Sender,Target);
  end;

  if Assigned(Sender) then
  begin
    TT3Vehicle(Sender).FreeChilds;
    Sender.FreeMe := True;
    Sender.AbsoluteFree := True;
  end;
end;

procedure TT3ReplayEventManager.OnRadarControlMode(Sender: TObject;
  Mode: TRadarControlMode);
begin
  inherited;
  TT3Radar(Sender).UpdateAssignedtrack;
end;

procedure TT3ReplayEventManager.OnSensorDetect(Sender, detected: TObject;
  Value: boolean; aIFF : Boolean );
var
  isNew : boolean;
  pi : TT3PlatformInstance;
  dev : TT3DeviceUnit;
  dl : TT3DataLink;
  I : Integer;
  dt : TT3DetectedTrack;
  rec : TRecCmd_DataLink_AddTrack;
begin
  inherited;

  // instruktur g perlu
  if TT3ReplayClient(ManagerClient).IsController then exit;

  // klo object udah diskejul mau di bunuh, g perlu diterusin
  if TSimObject(detected).FreeMe then exit;

  // klo object yg dormant jg g perlu diterusin
  if detected is TT3PlatformInstance then
    if TT3PlatformInstance(detected).Dormant then exit;

  if detected is TT3Weapon then begin
    if detected is TT3Missile then
      if not TT3Missile(detected).Launching then exit;

    if not TT3Weapon(detected).Launched then exit;
  end;

  if Value then
  begin
    if Sender is TT3ESMSensor then
    begin
      for i := 0 to TT3ReplayClient(ManagerClient).SimDetectedTrackList.itemCount - 1 do
      begin
         dt := TT3DetectedTrack(TT3ReplayClient(ManagerClient).SimDetectedTrackList.getObject(i));

         if Assigned(dt.TrackObject.Parent) then
            if dt.TrackObject.Parent = TT3Unit(TSimObject(detected)).Parent then
              Exit;
      end;
    end;

    isNew := TT3ReplayClient(ManagerClient).AddDetectedTrack(TSimObject(detected),TSimObject(Sender));
    dev := Sender as TT3DeviceUnit;

    //check data link On
//    pi := TT3ReplayClient(ManagerClient).FindT3PlatformByID(TT3PlatformInstance(dev.Parent).InstanceIndex);
//    if pi.DataLinkOn then
//    begin
//       case pi.DataLinkIndex of
//        1 : dl := TT3ReplayClient(ManagerClient).DataLink1;
//        2 : dl := TT3ReplayClient(ManagerClient).DataLink2;
//        3 : dl := TT3ReplayClient(ManagerClient).DataLink3;
//       end;
//      if dl.Played then
//      begin
//        rec.DataLinkID := pi.DataLinkIndex;
//        rec.PlatformDetectedID := TT3PlatformInstance(detected).InstanceIndex;
//        rec.PlatformSourceID := pi.InstanceIndex;
//        if dl.Iterator <= TT3ReplayClient(ManagerClient).SimPlatforms.itemCount then
//          TT3ReplayClient(ManagerClient).Frame_CMD_DataLink_AddTrack(@rec,Sizeof(TRecCmd_DataLink_AddTrack));
//        Inc(dl.Iterator);
//      end;
//    end;
    //end check datalink

    if isNew then begin
      dev := Sender as TT3DeviceUnit;

      OnLogEventStr('TT3ReplayEventManager','new. ' + TT3PlatformInstance(dev.Parent).InstanceName  +
    ' - sensor ' + dev.InstanceName +
      ' detect ' + TT3PlatformInstance(detected).InstanceName);
    end;
  end
  else
    if TT3ReplayClient(ManagerClient).RemoveDetectedTrack(TSimObject(detected),TSimObject(Sender)) then begin
    end;
end;

procedure TT3ReplayEventManager.OnSensorOperationalStatus(Sender: TObject;
  Mode: TSensorOperationalStatus);
begin
  inherited;

  if TT3ReplayClient(ManagerClient).IsController then exit;

  if Sender is TT3Sensor then begin
    if (Mode = sopOff) or (Mode = sopDamage) or
       (Mode = sopTooDeep) then
    begin
      TT3ReplayClient(ManagerClient).RemoveDetectedTracks(TSimObject(Sender));
    end;
  end;

end;

procedure TT3ReplayEventManager.OnSensorRemoved(Sender: TObject);
begin
  inherited;
  if TT3ReplayClient(ManagerClient).IsController then exit;

  TT3ReplayClient(ManagerClient).RemoveDetectedTracks(TSimObject(Sender));
end;

procedure TT3ReplayEventManager.OnSonarControlMode(Sender: TObject;
  Mode: TSonarControlMode);
begin
  inherited;

end;

//procedure TT3ReplayEventManager.OnUpdateEnvi(index: integer; Value: Double);
//begin
//  inherited;
//
//end;

procedure TT3ReplayEventManager.OnWeaponDestroy(Sender: TObject);
var
  ve : TT3Vehicle;
  pi : TT3PlatformInstance;
  i, j : Integer;

  ListMissile : TMissileHaveLaunch;
begin
  inherited;

  //Set Surface to Surface
  if Sender is TT3Missile then
  begin
    for i := 0 to TT3ReplayClient(ManagerClient).SimPlatforms.itemCount - 1 do
    begin
      pi := TT3ReplayClient(ManagerClient).SimPlatforms.getObject(i) as TT3PlatformInstance;

      if pi is TT3Vehicle then
      begin
        if TT3Vehicle(pi).InstanceIndex = TT3Missile(Sender).ShipIndex then
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
      end;

    end;
  end;

  if (Sender is TT3Missile) then TT3ReplayClient(ManagerClient).Display.addStatus('Missile destroyed');
  if (Sender is TT3Torpedo) then TT3ReplayClient(ManagerClient).Display.addStatus('Torpedo destroyed');
  if (Sender is TT3GunShoot) then TT3ReplayClient(ManagerClient).Display.addStatus('Gun destroyed');
  if (Sender is TT3GunOnVehicle) then TT3ReplayClient(ManagerClient).Display.addStatus('Gun on vehicle destroyed');

  if TT3ReplayClient(ManagerClient).HookedPlatform = Sender then
    TT3ReplayClient(ManagerClient).HookedPlatform := nil;
end;

procedure TT3ReplayEventManager.OnWeaponHit(Sender, Target: TObject;
  Lethality: integer; FreeWeapon: Boolean);
begin
  inherited;

  if (TT3ReplayClient(ManagerClient).HookedPlatform = Sender) or
     (TT3ReplayClient(ManagerClient).HookedPlatform = Target) then
    TT3ReplayClient(ManagerClient).HookedPlatform := nil;

  if (Sender is TT3PlatformInstance) and (Target is TT3PlatformInstance) then
  begin
    // Prince Achmad Tambahan Bro
    TT3PlatformInstance(sender).FreeChilds;
    TT3PlatformInstance(sender).FreeMe := True;
    TT3PlatformInstance(sender).AbsoluteFree := True;
  end;

  // ini dari onweaponhitbyserver --> client event manager
  if Assigned(Sender) then
    TT3PlatformInstance(Sender).reasonDestroy := 22;

  if Sender is TT3Torpedo then
  begin
    TT3Torpedo(Sender).FreeChilds;
    TT3Torpedo(Sender).FreeMe := True;
    TT3Torpedo(Sender).AbsoluteFree := true;
  end
  else if Sender is TT3Missile then
  begin
    TT3Missile(Sender).FreeChilds;
    TT3Missile(Sender).FreeMe := True;
    TT3Missile(Sender).AbsoluteFree := true;
  end
  else if Sender is TT3GunShoot then
  begin
    TT3GunShoot(Sender).FreeChilds;
    TT3GunShoot(Sender).FreeMe := True;
    TT3GunShoot(Sender).AbsoluteFree := True;

    if Target is TT3Missile then
    begin
      TT3Missile(Target).FreeChilds;
      TT3Missile(Target).FreeMe := True;
      TT3Missile(Target).AbsoluteFree := True;
    end;
  end
  else if Sender is TT3GunOnVehicle then
  begin
    if Target is TT3Missile then
    begin
      TT3PlatformInstance(Target).reasonDestroy := 21;
      TT3PlatformInstance(Target).UnitMakeDestroy := TT3PlatformInstance(Sender).InstanceName;

      TT3Missile(Target).FreeChilds;
      TT3Missile(Target).FreeMe := True;
      TT3Missile(Target).AbsoluteFree := True;
    end;
  end;
  //====

end;

procedure TT3ReplayEventManager.OnWeaponInOut(SenderID: integer;
  reasondestroy: Byte);
var
  Sender : TT3PlatformInstance;
begin
  inherited;

  Sender := TT3ReplayClient(ManagerClient).FindWeaponByID(SenderID);

  if not Assigned(Sender) then
    Sender := TT3ReplayClient(ManagerClient).FindT3PlatformByID(SenderID);

  if Assigned(Sender) then
    Sender.reasonDestroy := reasondestroy;

  if Sender is TT3Torpedo then
  begin
    TT3Torpedo(Sender).FreeChilds;
    Sender.FreeMe := True;
  end
  else if Sender is TT3Missile then
  begin
    TT3Missile(Sender).FreeChilds;
    TT3Missile(Sender).FreeMe := True;
  end
end;

procedure TT3ReplayEventManager.OnWeaponLaunched(Sender, Target: TObject);
var
  I, emptyRow : Integer;
  strs : TString;
  wc : String;
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
      TT3ReplayClient(ManagerClient).SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

      if Assigned(Target) then
      begin
        if (Sender  is TT3Missile_SS) or (Sender is TT3Missile_SA) then

        TT3ReplayClient(ManagerClient).Display.addStatus('Missile is launched');
      end;

      //nando : for draw RBL n RBLW
      TT3Missile(Sender).SameGroupPlatform := nil;
      if Assigned(TT3Missile(Sender).Owner) then
        TT3Missile(Sender).SameGroupPlatform := TT3ReplayClient(ManagerClient).Scenario.CubiclesGroupsList.GetGroupOf_PlatformIndex
                (TT3PlatformInstance(TT3Missile(Sender).Owner).InstanceIndex) as T3CubicleGroup;

      TT3Missile(Sender).DetectPlatform    := TT3ReplayClient(ManagerClient).SimDetectedTrackList;
      TT3Missile(Sender).isInstructor      := TT3ReplayClient(ManagerClient).IsController;
      TT3Missile(Sender).TrackNumber := TT3ReplayClient(ManagerClient).GetTrackNumberForWeapon;

      TT3ReplayClient(ManagerClient).Display.OnWeaponLaunched(Sender, Target);
    end
    else if Sender is TT3Torpedo then
    begin
      TT3ReplayClient(ManagerClient).SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

      if Assigned(Target) then
      begin
        TT3ReplayClient(ManagerClient).Display.addStatus('Torpedo is launched');
      end;

      //mk 12
      TT3Torpedo(Sender).isInstructor := TT3ReplayClient(ManagerClient).IsController;
      TT3Torpedo(Sender).TrackNumber := TT3ReplayClient(ManagerClient).GetTrackNumberForWeapon;

      TT3ReplayClient(ManagerClient).Display.OnWeaponLaunched(Sender, Target);
    end
    else if Sender is TT3Bomb then
    begin
      TT3ReplayClient(ManagerClient).SimPlatforms.addObject(TSimObject(Sender));
      wpn.Enable := true;

//      if wpn.UnitGroup then begin
//        frmTacticalDisplay.Refresh_AssumeControl;
//      end;

      if Assigned(Target) then
      begin
        TT3ReplayClient(ManagerClient).Display.OnWeaponLaunched(Sender, Target);

//        if (simMgrClient.FMyCubGroup.FData.Group_Index = 0) or
//           (simMgrClient.FMyCubGroup.FData.Group_Index = TT3Bomb(sender).NoCubicle)then
        TT3ReplayClient(ManagerClient).Display.addStatus('Bomb is launched');
      end;
    end
    else if Sender is TT3GunShoot then
    begin
      TT3ReplayClient(ManagerClient).SimWeapons.addObject(TSimObject(Sender));
      TT3ReplayClient(ManagerClient).Display.addStatus('Gun is launched');
    end;
  end;

end;

procedure TT3ReplayEventManager.OnWeaponPropertyChange(Sender: TObject);
begin
  inherited;

end;

procedure TT3ReplayEventManager.OnWeaponTarget(Sender, Target: TObject);
begin
  inherited;

end;

procedure TT3ReplayEventManager.SetManager(manager: TObject);
begin
  ManagerClient := TT3ReplayClient(manager);
end;

procedure TT3ReplayEventManager.SetManagerClient(const Value: TObject);
begin
  FManagerClient := Value;
end;

function TT3ReplayEventManager.VisibleOverlayByGroup(
  dynParent: TT3PlatformInstance): Boolean;
var
  grp : T3CubicleGroup;
begin
  grp := TT3ReplayClient(ManagerClient).Scenario.CubiclesGroupsList.GetGroupOf_PlatformIndex(dynParent.InstanceIndex);

  if Assigned(grp) then
    Result := TT3ReplayClient(ManagerClient).CurrentPerspective = grp.FData.Group_Index;

end;

end.
