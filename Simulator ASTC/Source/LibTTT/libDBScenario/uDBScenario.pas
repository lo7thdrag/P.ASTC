unit uDBScenario;

interface

uses
   Classes,
   tttData, newClassASTT,  uDataModuleTTT, uDBAssetObject,
   uDBAsset_Deploy, uDBFormation, uDBLink,
   uDBAsset_GameEnvironment, uDBAsset_Geo,  uDBCubicles,
   uDBAsset_Reference_Point, uLibSettingTTT, uDBGame_Defaults, Windows,
   uFormationManager, Generics.Collections;
type

  TT3CubicleChanel = class
  private
  public
    GroupID : integer;
    GroupName : string;
    ListExternalChannel : TList;
    constructor Create;
    destructor Destroy; override;
  end;

  TT3DBScenario = class
  private
    FOnAssignedPlatform: TNotifyEvent;
    FOnGetExternalCom: TNotifyEvent;
    FDefaultNonRealPlatform: TPlatform_Instance;
    FDictionaryPlatformInstanceRP : TObjectDictionary<Integer,TPlatform_Instance>;

    procedure SetOnAssignedPlatform(const Value: TNotifyEvent);
    procedure SetOnGetExternalCom(const Value: TNotifyEvent);
    function getDataModule: TdmTTT;
  protected
    function  getMemberInteger(const index: integer): Integer;
    function  getMemberString(const index: integer): string;
    function  getMemberfloat(const index: integer): double;
  public
    Scenario_def      : TScenario_Definition;
    Resource_alloc    : TResource_Allocation;
    Platform_Insts    : TList; //of TPlatform_Instance

    Formation         : TList;
    Platform_Inst     : TList;
    Formation_List    : TList;
    Formation_List_rev : TFormationManager;
    Links             : TList;
    Platform_Ins      : TList;
    RuntimePlatformLibrary : TList;

    GameEnvironment   : TGame_Environment_Definition;
    GeoAreaDef        : TGeo_Area_Def;
    GeoPoint          : TList;
    GeoEvent          : TList;

    {added by me}
    Resource_Overlay_Mapping : TResource_Overlay_Mapping;
    Overlay_Definition : TOverlay_Definition;

    {Prince}
    OverlayTemplateFromDB    : TList;
    StaticShape : TList;
    DynamicShape : TList;

    CubiclesGroupsList    : T3CubicleGroupList;

    AssetDeployment   : TAsset_Deployment ;
    MapGeosetName     : string;
    pattern_mapping   : TList;

    {}
    overlayName       : string;
    allOverlayNames   : Array[0..20] of string;

    ExternalCom : TExternal_Communication_Channel;
    ExCom : TList;
    CubChanelList : Tlist;

    Ref_Point : TReference_Point;
    rpList  : TList;

    GameDefaults : TGame_Defaults;  //mm gd
  public
    constructor Create;
    destructor Destroy; override;

    procedure ClearScenario;
    procedure LoadFromDB(const id: Integer; const unassignedGroupCub: TCubicleAssignSetting; const isController: Boolean);
    procedure LoadPlatformDefinition(pi : TPlatform_Instance);
    procedure SetEventOnExternalComm ;

    //nando add
    procedure LoadCommunicationFromDB(SceID : integer);

    procedure GetAllPiRuntimePlatform();
    function GetPiRuntimePlatform(const index : Integer): TPlatform_Instance;

    function FindRuntimePlatform(const id: integer): TObject;

    property ScenarioIndex: Integer index 1 read  getMemberInteger;
    property ScenarioName: string   index 1 read  getMemberString;
    property ResourceAllocIndex: Integer index 2 read  getMemberInteger;
    property IdCubicle: integer index 3 read getMemberInteger;
    property OnAssignedPlatform : TNotifyEvent read FOnAssignedPlatform write SetOnAssignedPlatform;
    property OnGetExternalCom : TNotifyEvent read FOnGetExternalCom write SetOnGetExternalCom;

    //untuk default data nonreal dengan mengambil salah satu platform_instance
    property DefaultNonRealPlatform : TPlatform_Instance read FDefaultNonRealPlatform
              write FDefaultNonRealPlatform default nil;

    property DataModule : TdmTTT read getDataModule;
  end;

var
  VScenario : TT3DBScenario;

implementation

uses
  SysUtils, uSimContainers, ufProgress, uDBAsset_Vehicle, Dialogs,
  uDBAsset_Runtime_Platform_Library;
{ TT3DBScenario }


constructor TT3DBScenario.Create;
begin
  Scenario_def      := TScenario_Definition.Create;
  Resource_alloc    := TResource_Allocation.Create;
  AssetDeployment   := TAsset_Deployment.Create;
  Formation         := TList.Create;
  Platform_Inst     := TList.Create;
  Formation_List    := TList.Create;
  Formation_List_rev    := TFormationManager.Create;
  Links             := TList.Create;
  Platform_Ins      := TList.Create;
  GeoPoint          := TList.Create;
  GeoEvent          := TList.Create;
  RuntimePlatformLibrary := TList.Create;

  OverlayTemplateFromDB    := TList.Create;
  StaticShape        := TList.Create;
  DynamicShape      := TList.Create;

  Platform_Insts    := TList.Create;
  GameEnvironment   := TGame_Environment_Definition.Create;
  GeoAreaDef        := TGeo_Area_Def.Create;

  CubiclesGroupsList    := T3CubicleGroupList.Create;

  ExternalCom := TExternal_Communication_Channel.Create;
  ExCom := TList.Create;
  CubChanelList := TList.Create;

  Ref_Point := TReference_Point.Create;
  rpList    := TList.Create;

  GameDefaults := TGame_Defaults.Create;

  FDictionaryPlatformInstanceRP := TObjectDictionary<Integer,TPlatform_Instance>.Create;
end;

destructor TT3DBScenario.Destroy;
var
  pi : TPair<Integer,TPlatform_Instance>;
begin
  for pi in FDictionaryPlatformInstanceRP do
    pi.Value.Free;

  FDictionaryPlatformInstanceRP.Clear;
  FDictionaryPlatformInstanceRP.Free;

  if Assigned(Scenario_def) then
    FreeAndNil(Scenario_def);

  if Assigned(Resource_alloc) then
    FreeAndNil(Resource_alloc);

  if Assigned(ExternalCom) then
    FreeAndNil(ExternalCom);

  if Assigned(Excom) then
    FreeAndNil(ExCom);

  if Assigned(Platform_Insts) then
    FreeAndNil(Platform_Insts);

  if Assigned(Platform_Ins) then
    FreeAndNil(Platform_Ins);

  if Assigned(Platform_Inst) then
    FreeAndNil(Platform_Inst);

  if Assigned(CubiclesGroupsList) then
    FreeAndNil(CubiclesGroupsList);

  if Assigned(AssetDeployment) then
    FreeAndNil(AssetDeployment);

  if Assigned(GeoAreaDef) then
    FreeAndNil(GeoAreaDef);

  if Assigned(Ref_Point) then
    FreeAndNil(Ref_Point);

  if Assigned(rpList) then
    FreeAndNil(rpList);

  if Assigned(OverlayTemplateFromDB) then
    FreeAndNil(OverlayTemplateFromDB);

  if Assigned(StaticShape) then
    FreeAndNil(StaticShape);

  if Assigned(DynamicShape) then
    FreeAndNil(DynamicShape);

  if Assigned(RuntimePlatformLibrary) then
    FreeAndNil(RuntimePlatformLibrary);

  if Assigned(GeoEvent) then
    FreeAndNil(GeoEvent);

  if Assigned(GeoPoint) then
    FreeAndNil(GeoPoint);

  if Assigned(Links) then
    FreeAndNil(Links);

  if Assigned(Formation_List) then
    FreeAndNil(Formation_List);

  if Assigned(Formation_List_rev) then
    FreeAndNil(Formation_List_rev);

  if Assigned(Formation) then
    FreeAndNil(Formation);

  if Assigned(GameEnvironment) then
    FreeAndNil(GameEnvironment);

  if Assigned(GameDefaults) then
    FreeAndNil(GameDefaults);

  if Assigned(CubChanelList) then
    FreeAndNil(CubChanelList);
end;

function TT3DBScenario.getMemberInteger(const index: integer): Integer;
begin
  Result := -1;
  case index of
    1 : if Assigned(Scenario_def) then
      Result := Scenario_def.FData.Scenario_Index;
    2 : if Assigned(Scenario_def) then
      Result := Scenario_def.FData.Resource_Alloc_Index;
  end;
end;

function TT3DBScenario.getDataModule: TdmTTT;
begin
  result := dmTTT;
end;

function TT3DBScenario.getMemberfloat(const index: integer): double;
begin
  Result := 0;
end;

function TT3DBScenario.getMemberString(const index: integer): string;
begin
  case index of
     1: begin
       result := Scenario_def.FData.Scenario_Identifier;
     end;
  end;
end;

procedure TT3DBScenario.ClearScenario;
begin
  ClearAndFreeItems(Platform_Insts);
end;

procedure TT3DBScenario.LoadCommunicationFromDB(SceID: integer);
var
  i : Integer;
  grp        : T3CubicleGroup;
  cubChannel : TT3CubicleChanel;
begin
  //External Communication
  //{nando}
  //Controller
  cubChannel := TT3CubicleChanel.Create;
  cubChannel.GroupID := 0;
  cubChannel.GroupName := 'Controller';
  dmTTT.GetExternal_Communication_ChannelBySceID (cubChannel.ListExternalChannel,
                                         IntToStr(SceID));
  CubChanelList.Add(cubChannel);
  //Cubicle
  for i := 0 to CubiclesGroupsList.Count - 1 do
  begin
    grp := CubiclesGroupsList.Items[i] as T3CubicleGroup;
    if grp <> nil then begin
      if ((grp.FData.Group_Index = 0) or
          ( LowerCase(grp.FData.Group_Identifier) = 'controller')) then
      Continue;

      cubChannel := TT3CubicleChanel.Create;
      cubChannel.GroupID := grp.FData.Group_Index;
      cubChannel.GroupName := grp.FData.Group_Identifier;
      cubChannel.ListExternalChannel.Clear;
      dmTTT.GetExternal_Communication_ChannelByGroupID(cubChannel.ListExternalChannel,
                                                       IntToStr(grp.FData.Group_Index));
      CubChanelList.Add(cubChannel);
    end;
  end;

  if Assigned(FOnGetExternalCom) then
    FOnGetExternalCom(Self);
end;

procedure TT3DBScenario.LoadFromDB(const id: Integer; const unassignedGroupCub: TCubicleAssignSetting; const isController: Boolean);
var i, j, k, ra_id, ovIdx          : Integer;
    dIndex     : Integer;
    pi         : TPlatform_Instance;
    newGrp, grp        : T3CubicleGroup;
    grm        : T3CubicleGroupMember;
    form       : TFormation;
    link       : TLink;
    found: Boolean;
    s: string;
    //p: PAnsiChar;
    //aSize: Word;
begin
  ClearScenario;

  frmProgress := TfrmProgress.Create(nil);

  if not dmTTT.GetScenario(id, scenario_def ) then
    Exit;

  frmProgress.Caption := 'Loading Scenario ' +
   scenario_def.FData.Scenario_Identifier + '  from database';

  if not dmTTT.GetResourceAlloc(ResourceAllocIndex, Resource_alloc ) then
    Exit;

  ra_id := ResourceAllocIndex;

  if not dmTTT.GetAssetDeployment(id, AssetDeployment) then
    Exit;

  // 2.1 platform instance
  dmTTT.getAllPlatFormInstance(ResourceAllocIndex, AssetDeployment.FData.Deployment_Index, Platform_Insts);

//  dmTTT.getAllRuntimePlatform(ResourceAllocIndex, RuntimePlatformLibrary); // diganti prosesnya
  dmTTT.GetRuntime_Platform_LibraryByResourceAlloc(ResourceAllocIndex, RuntimePlatformLibrary);
  GetAllPiRuntimePlatform;

  // Game Defaults
  if (dmTTT.GetGame_Defaults(Resource_alloc.FData.Resource_Alloc_Index, GameDefaults)) then
  begin
    dmTTT.GetGame_Cloud_On_ESM(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Cloud_On_Radar(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Default_IFF_Mode_Code(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Rainfall_On_ESM(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Rainfall_On_Missile_Seeker(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Rainfall_On_Radar(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Rainfall_On_Sonar(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Sea_On_Missile_Safe_Altitude (GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Sea_On_Radar(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Sea_On_Sonar(GameDefaults.FData.Defaults_Index, GameDefaults);
    dmTTT.GetGame_Ship_On_Sonar(GameDefaults.FData.Defaults_Index, GameDefaults);
  end;

  frmProgress.MaxJob := Platform_Insts.Count;

  for I := 0 to Platform_Insts.Count - 1 do begin
    pi := Platform_Insts[i];
    frmProgress.increase( pi.FData.Instance_Name );
    LoadPlatformDefinition(pi);

    //untuk set default data platform instance untuk NonRealTime Platform
    if DefaultNonRealPlatform = nil then
    begin
      if pi.FData.Vehicle_Index > 0 then
      begin
//        aSize := SizeOf(pi);
//        GetMem(p, aSize);
//        CopyMemory(p, @pi, aSize);
        DefaultNonRealPlatform := TPlatform_Instance.Create;
        DefaultNonRealPlatform.FData.Vehicle_Index := pi.FData.Vehicle_Index;
        LoadPlatformDefinition(DefaultNonRealPlatform)
      end;
    end;

    if Assigned(FOnAssignedPlatform) then
      FOnAssignedPlatform(pi);
  end;

  dIndex  := AssetDeployment.FData.Deployment_Index;

  dmTTT.GetFormationDefinition(dIndex, Formation);
  Formation_List.Clear;
  Platform_Inst.Clear;

  // formation refinement
  Formation_List_rev.Clear;
  dmTTT.GetFormation(dIndex, Formation_List_rev);

  for I := 0 to Formation.Count - 1 do
  begin
    form := Formation[i];
    dmTTT.GetFormationAssignment(form, Formation_List) ;
    //Formation_List.Add(Platform_Inst);   //test mm
  end;

  dmTTT.GetLinkDefinition(dIndex, Links);
  for I := 0 to Links.Count - 1 do
  begin
    link  := Links[i];
    with link do begin
      dmTTT.GetLinkParticipant(link, Platform_Ins);
    end;
  end;

  // 2.2 from resource alloc
  dmTTT.GetGame_Environment_Definition(Resource_alloc.FData.Game_Enviro_Index,
    GameEnvironment);

  dmTTT.GetGame_Area_DefByID(GameEnvironment.FData.Game_Area_Index, GameEnvironment);

  //tambahan dari aldy get sub area inList
  dmTTT.GetSubArea_Enviro_Definition(Resource_alloc.FData.Game_Enviro_Index, GameEnvironment.FSubArea);

  s := UpperCase(Trim(GameEnvironment.FGameArea.Detail_Map));
  if s  = 'ENC' then
    MapGeosetName := GameEnvironment.FGameArea.Game_Area_Identifier + '\' +
    GameEnvironment.FGameArea.Game_Area_Identifier + '.gst'
  else
    MapGeosetName := GameEnvironment.FGameArea.Game_Area_Identifier + '\' +
    GameEnvironment.FGameArea.Game_Area_Identifier + '.gst';

  // get all predefined pattern from resource pattern mapping *bebe*
//  dmTTT.GetAllResource_Pattern_Mapping(ResourceAllocIndex,pattern_mapping);

  {added by me}
{ comment by Andy.
  GetScenario dan GetResourceAlloc SUDAH dipanggil di atas.
  dmTTT.GetScenario(id, scenario_def );
  dmTTT.GetResourceAlloc(scenario_def.FData.Resource_Alloc_Index, Resource_alloc);
}
  {Prince : Load overlay form db}
  dmTTT.GetResource_Overlay_Mapping(ResourceAllocIndex, OverlayTemplateFromDB);
  if (OverlayTemplateFromDB.Count > 0) then
  begin
    for I := 0 to OverlayTemplateFromDB.Count - 1 do
    begin
      ovIdx := TResource_Allocation(OverlayTemplateFromDB.Items[I]).FOverlay.Overlay_Index;

//      case TResource_Allocation(OverlayTemplateFromDB[I]).FOverlay.Static_Overlay of
//        osDynamic : dmTTT.GetAllOverlay_Shape(ovIdx, DynamicShape);
//        osStatic  : dmTTT.GetAllOverlay_Shape(ovIdx, StaticShape);
//      end;
    end;
  end;

  {if (OverlayTemplateFromDB.Count > 0) then begin
    for I := 0 to OverlayTemplateFromDB.Count - 1 do
    begin
      //dmTTT.GetOverlay(TResource_Allocation(Overlay_Mapping.Items[I]).FOverlay.Overlay_Index, Overlay_Def);
      allOverlayNames[I] := TResource_Allocation(OverlayTemplateFromDB[I]).FOverlay.Overlay_Filename;
    end;
  end;}

  dmTTT.GetGeoAreaDefinition(GameEnvironment.FData.Game_Area_Index, GeoPoint);

  GameEnvironment.calculateMaxPowerScaleArea;

  // 2.3
  dmTTT.GetT3GroupList(id, CubiclesGroupsList.FSList);

  //choco : add unassigned group
//  for i := 0 to Length(unassignedGroupCub.GroupIDs) - 1 do
//  begin
//    if isController then
//    begin
//      if i < (CubiclesGroupsList.Count - 5) then
//        Continue;
//    end;

//    newGrp := T3CubicleGroup.Create;
//    newGrp.CubicleName := '';
//    newGrp.FData.Group_Index := unassignedGroupCub.GroupIDs[i];
//    newGrp.FData.Deployment_Index := T3CubicleGroup(CubiclesGroupsList.Items[CubiclesGroupsList.Count-1]).FData.Deployment_Index;
//    newGrp.FData.Group_Identifier := 'Unassigned Group';
//    newGrp.FData.Force_Designation := 4; //no force
//    newGrp.FData.Tracks_Block := 0;
//    newGrp.FData.Zulu_Zulu := 0;
//    CubiclesGroupsList.FSList.AddObject(IntToStr(newGrp.FData.Group_Index), newGrp);
//  end;

  for I := 0 to CubiclesGroupsList.Count - 1 do begin
    grp  := CubiclesGroupsList.Items[i] as T3CubicleGroup;
    if grp <> nil then
    begin
      grp.InitData;

      dmTTT.GetT3GroupMember(grp.FData.Group_Index, grp.FSList);

      for j := 0 to grp.Count - 1 do
      begin
        grm := grp.Items[j] as T3CubicleGroupMember;
        if grm = nil then
          continue;

        k := 0;
        found := false;
        pi := nil;

        while not found and (k < Platform_Insts.Count) do
        begin
          pi := Platform_Insts[k];
          found := grm.FData.Platform_Instance_Index = pi.FData.Platform_Instance_Index;
          Inc(k);
        end;

        if found then
        begin
           if j = 0 then
             pi.IsGroupLeader := true
           else
             pi.IsGroupLeader := false;

           pi.CubicleGroupID := grp.FData.Group_Index;
           grp.SetTrackNumber(pi.FData.Platform_Instance_Index, j);
        end
      end;
    end;
  end;

  for i := ExCom.Count - 1 downto 0 do
  begin
    ExCom.Delete(i);
  end;
  ExCom.Clear;
  dmTTT.GetExternal_Communication_Channel(ExCom, IntToStr(ra_id),'' ,ExternalCom);

  dmTTT.getAllReference_Point(ra_id, rpList);

  frmProgress.Free;
end;

function TT3DBScenario.FindRuntimePlatform(const id: integer): TObject;
var i, j: Integer;
    f: Boolean;
    recLBN: TRuntime_Platform_Library;
    objPLE : TPlatform_Library_Entry;
//    vDef: TVehicle_Definition;
//    mDef: TMissile_Definition;
//    bDef: TMine_Definition;
begin
  i := 0;
  f := False;
  Result := nil;

  for i := 0 to RuntimePlatformLibrary.Count - 1 do
  begin
    recLBN := RuntimePlatformLibrary.Items[i];

    for j := 0 to recLBN.FPlatform_Library_Entry.Count - 1 do
    begin
      objPLE := recLBN.FPlatform_Library_Entry.Items[j];

      if objPLE.FData.Vehicle_Index = id then begin
        Result := objPLE;
        f := objPLE.FData.Vehicle_Index = id;
        Break;
      end;

      if objPLE.FData.Missile_Index = id then begin
        Result := objPLE;
        f := objPLE.FData.Missile_Index = id;
        Break;
      end;

      if objPLE.FData.Mine_Index = id then begin
        Result := objPLE;
        f := objPLE.FData.Mine_Index = id;
        Break;
      end;

      if objPLE.FData.Torpedo_Index = id then begin
        Result := objPLE;
        f := objPLE.FData.Torpedo_Index = id;
        Break;
      end;
    end;

    if f then
      Break;

    if not f then
      Result := nil;
  end;

//  while not f and (i < RuntimePlatformLibrary.Count) do begin // diganti prosesnya
//    Result  := RuntimePlatformLibrary[i];
//
//    if Result is TVehicle_Definition then begin
//      vDef := Result as TVehicle_Definition;
//      f := vDef.FData.Vehicle_Index = id;
//    end;
//
//    if Result is TMissile_Definition then begin
//      mDef := Result as TMissile_Definition;
//      f := mDef.FData.Missile_Index = id;
//    end;
//
//    if Result is TMine_Definition then begin
//      bDef := Result as TMine_Definition;
//      f := bDef.FData.Mine_Index = id;
//    end;
//
//    Inc(i);
//  end;
//
//  if not f then
//    Result := nil;
end;

procedure TT3DBScenario.GetAllPiRuntimePlatform;
var
  ObjRPL : TRuntime_Platform_Library;
  objPLE : TPlatform_Library_Entry;
  i, j : Integer;
  vDef: TVehicle_Definition;
  mDef: TMissile_Definition;
  bDef: TMine_Definition;
  Pi : TPlatform_Instance;
begin
  for i := 0 to RuntimePlatformLibrary.Count - 1 do
  begin
    ObjRPL := RuntimePlatformLibrary.Items[i];

    if ObjRPL <> nil then
    begin
      for j := 0 to ObjRPL.FPlatform_Library_Entry.Count - 1 do
      begin
        objPLE := ObjRPL.FPlatform_Library_Entry.Items[j];

        if objPLE.FData.Vehicle_Index <> 0 then begin
          if not FDictionaryPlatformInstanceRP.ContainsKey(objPLE.FData.Vehicle_Index) then
          begin
            Pi := TPlatform_Instance.Create;
            Pi.FData.Vehicle_Index := objPLE.FData.Vehicle_Index;
            LoadPlatformDefinition(Pi);
            FDictionaryPlatformInstanceRP.Add(objPLE.FData.Vehicle_Index, Pi);
          end;
        end;

        if objPLE.FData.Missile_Index <> 0 then begin
          if not FDictionaryPlatformInstanceRP.ContainsKey(objPLE.FData.Missile_Index) then
          begin
            Pi := TPlatform_Instance.Create;
            Pi.FData.Missile_Index := objPLE.FData.Missile_Index;
            LoadPlatformDefinition(Pi);
            FDictionaryPlatformInstanceRP.Add(objPLE.FData.Missile_Index, Pi);
          end;
        end;

        if objPLE.FData.Torpedo_Index <> 0 then begin
          if not FDictionaryPlatformInstanceRP.ContainsKey(objPLE.FData.Torpedo_Index) then
          begin
            Pi := TPlatform_Instance.Create;
            Pi.FData.Torpedo_Index := objPLE.FData.Torpedo_Index;
            LoadPlatformDefinition(Pi);
            FDictionaryPlatformInstanceRP.Add(objPLE.FData.Torpedo_Index, Pi);
          end;
        end;

        if objPLE.FData.Mine_Index <> 0 then begin
          if not FDictionaryPlatformInstanceRP.ContainsKey(objPLE.FData.Mine_Index) then
          begin
            Pi := TPlatform_Instance.Create;
            Pi.FData.Mine_Index := objPLE.FData.Mine_Index;
            LoadPlatformDefinition(Pi);
            FDictionaryPlatformInstanceRP.Add(objPLE.FData.Mine_Index, Pi);
          end;
        end;
      end;
    end;
  end;
end;

function TT3DBScenario.GetPiRuntimePlatform(
  const index: Integer): TPlatform_Instance;
var
  Pi : TPlatform_Instance;
begin
  try
    Result := FDictionaryPlatformInstanceRP.Items[index];
  except on E: Exception do
    Result := nil;
  end;
end;

procedure TT3DBScenario.LoadPlatformDefinition(pi: TPlatform_Instance);
var
  vIndex : integer;
begin
  //***add by bebe
  dmTTT.GetPlatform_ActivationToPlatformInstance(pi.FData.Platform_Instance_Index,
  pi.FActivation.Deployment_Index, pi);

  //Vehicle Data
  if pi.FData.Vehicle_Index > 0 then begin

    dmTTT.GetVehicle_Definition(pi.FData.Vehicle_Index, Pi.Vehicle);
    dmTTT.GetHelicopter(pi.FData.Vehicle_Index, Pi.HeliLimitation);
    dmTTT.GetMotion_Characteristics(pi.Vehicle.FData.Motion_Characteristics, Pi.Motion);

    with pi.Vehicle do begin
      vIndex := Pi.FData.Vehicle_Index;
      //sensor
      dmTTT.getAllEO_On_Board(vIndex,0,             pi.Vehicle.EOSensors);
      dmTTT.getAllESM_On_Board(vIndex,0,            pi.Vehicle.ESMSensors);
      dmTTT.getAllIFF_Sensor_On_Board(vIndex,0,     pi.Vehicle.IFFSensors);
      dmTTT.getAllMAD_Sensor_On_Board(vIndex,0,     pi.Vehicle.MADSensors);
      dmTTT.getAllVisual_Sensor_On_Board(vIndex,0,  pi.Vehicle.Visualsensors);
      dmTTT.getAllFCR_On_Board(vIndex,              pi.Vehicle.FCRSensors);

      dmTTT.GetAllRadar_On_Board(vIndex,0, pi.Vehicle.Radars);
      dmTTT.GetAllSonar_On_Board(vIndex,0, pi.Vehicle.Sonars);

      //weapon fit on Board
      dmTTT.getAllMissile_OnBoard2(vIndex,0,     Pi.Vehicle.Missiles  );
      dmTTT.getAllTorpedo_OnBoard(vIndex,0,    Pi.Vehicle.Torpedos  );
      dmTTT.GetAllHybrid_On_Board(vIndex,      Pi.Vehicle.Hybrids   );
      dmTTT.getAllMines_OnBoard(vIndex,0 ,      Pi.Vehicle.Mines );
      dmTTT.GetAllBomb(vIndex,                Pi.Vehicle.Bombs);
      dmTTT.GetAllGun(vIndex,                 Pi.Vehicle.Guns);

      dmTTT.getAllAcoustic_Decoy_On_Board(vIndex,     pi.Vehicle.Acoustic_Decoys);
      dmTTT.getAllAir_Bubble_Mount(vIndex,            pi.Vehicle.Air_Bubble_Mount);
      dmTTT.getAllChaff_On_Board(vIndex,              pi.Vehicle.Chaffs);
      dmTTT.getAllChaff_Launcher_On_Board(vIndex,     pi.Vehicle.Chaff_Launchers);
      dmTTT.getAllDefensive_Jammer_On_Board(vIndex,   pi.Vehicle.Defensive_Jammers);
      dmTTT.getAllFloating_Decoy_On_Board(vIndex,     pi.Vehicle.Floating_Decoys);
      dmTTT.getAllInfrared_Decoy_On_Board(vIndex,     pi.Vehicle.Infrared_Decoys);
      dmTTT.getAllJammer_On_Board(vIndex,             pi.Vehicle.Jammers);
      dmTTT.getAllPoint_Effect_On_Board(vIndex,       pi.Vehicle.Point_Effects);
      dmTTT.getAllTowed_Jammer_Decoy_On_Board(vIndex, pi.Vehicle.Towed_Jammer_Decoys);
      dmTTT.getHosted_Platform(vIndex,0,                pi.Vehicle.Hosted_Platform);
      dmTTT.getAllSonobuoy_On_Board(vIndex,0,     Pi.Vehicle.Sonobuoy );
    end;
  end;

  //Satellite Data
  if pi.FData.Satellite_Index > 0 then
    dmTTT.GetSatellite_Definition(pi.FData.Satellite_Index, Pi.Satellite);

  //Mine Data
  if pi.FData.Mine_Index > 0 then begin
    dmTTT.getMine_def(pi.Mine, pi.FData.Mine_Index);
    dmTTT.getMinePOD(pi.Mine.FPOD,pi.FData.Mine_Index);
  end;
    
  //Missile_Index
  if pi.FData.Missile_Index > 0 then begin
    dmTTT.getMissile_Def(pi.Missile, pi.FData.Missile_Index);
    dmTTT.GetMotion_Characteristics(pi.Missile.FData.Motion_Index, Pi.Motion);
  end;

  //Torpedo_Index
  if pi.FData.Torpedo_Index > 0 then begin
    dmTTT.getTorpedo_Def(pi.Torpedo, pi.FData.Torpedo_Index);
    dmTTT.getTorpedoPOH(pi.Torpedo.FPOHs,pi.FData.Torpedo_Index);
    dmTTT.GetMotion_Characteristics(pi.Torpedo.FData.Motion_Index, Pi.Motion);
  end;

  //Hybrid_Index
  if pi.FData.Hybrid_Index > 0 then begin
  end;

  //Sonobuoy_Index
  if pi.FData.Sonobuoy_Index > 0 then begin
  end;
end;

procedure TT3DBScenario.SetEventOnExternalComm;
begin
  if Assigned(FOnGetExternalCom) then
    FOnGetExternalCom(Self);
end;

procedure TT3DBScenario.SetOnAssignedPlatform(const Value: TNotifyEvent);
begin
  FOnAssignedPlatform := Value;
end;

procedure TT3DBScenario.SetOnGetExternalCom(const Value: TNotifyEvent);
begin
  FOnGetExternalCom := Value;
end;

{ TT3CubicleChanel }

constructor TT3CubicleChanel.Create;
begin
  ListExternalChannel := TList.Create;
end;

destructor TT3CubicleChanel.destroy;
var
  i : integer;
begin
  inherited;

  if Assigned(ListExternalChannel) then
  begin
    for i := ListExternalChannel.Count - 1 downto 0 do
    begin
      ListExternalChannel.Delete(i);
    end;
    ListExternalChannel.Clear;
    ListExternalChannel.Free;
  end;
end;

end.
