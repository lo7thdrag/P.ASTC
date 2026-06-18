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
    ScenarioDefinition : TScenario_Definition;
    ResourceAllocation : TResource_Allocation;
    GameEnvironment   : TGame_Environment_Definition;
    AssetDeployment   : TAsset_Deployment ;
    GameDefaults : TGame_Defaults;

    ListPlatformInstanceFromDB : TList; //of TPlatform_Instance
    ListRPLFromDB : TList;
    ListOverlayFromDB : TList;
    ListStaticShape : TList;
    ListDynamicShape : TList;
    ListFormationfromDB : TList;

    Platform_Inst     : TList;
    Formation_List    : TList;
    Formation_List_rev : TFormationManager;
    Links             : TList;
    Platform_Ins      : TList;

    GeoAreaDef        : TGeo_Area_Def;
    GeoPoint          : TList;
    GeoEvent          : TList;

    Resource_Overlay_Mapping : TResource_Overlay_Mapping;
    Overlay_Definition : TOverlay_Definition;

    CubiclesGroupsList    : T3CubicleGroupList;

    MapGeosetName     : string;
    pattern_mapping   : TList;

    overlayName       : string;
    allOverlayNames   : Array[0..20] of string;

    ExternalCom : TExternal_Communication_Channel;
    ExCom : TList;
    CubChanelList : Tlist;

    Ref_Point : TReference_Point;
    rpList  : TList;

  public
    constructor Create;
    destructor Destroy; override;

    procedure ClearScenario;
    procedure LoadFromDB(const ScenarioId: Integer; const unassignedGroupCub: TCubicleAssignSetting; const isController: Boolean);
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
  ScenarioDefinition      := TScenario_Definition.Create;
  ResourceAllocation    := TResource_Allocation.Create;
  AssetDeployment   := TAsset_Deployment.Create;
  ListFormationfromDB         := TList.Create;
  Platform_Inst     := TList.Create;
  Formation_List    := TList.Create;
  Formation_List_rev    := TFormationManager.Create;
  Links             := TList.Create;
  Platform_Ins      := TList.Create;
  GeoPoint          := TList.Create;
  GeoEvent          := TList.Create;
  ListRPLFromDB := TList.Create;

  ListOverlayFromDB    := TList.Create;
  ListStaticShape        := TList.Create;
  ListDynamicShape      := TList.Create;

  ListPlatformInstanceFromDB    := TList.Create;
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

  if Assigned(ScenarioDefinition) then
    FreeAndNil(ScenarioDefinition);

  if Assigned(ResourceAllocation) then
    FreeAndNil(ResourceAllocation);

  if Assigned(ExternalCom) then
    FreeAndNil(ExternalCom);

  if Assigned(Excom) then
    FreeAndNil(ExCom);

  if Assigned(ListPlatformInstanceFromDB) then
    FreeAndNil(ListPlatformInstanceFromDB);

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

  if Assigned(ListOverlayFromDB) then
    FreeAndNil(ListOverlayFromDB);

  if Assigned(ListStaticShape) then
    FreeAndNil(ListStaticShape);

  if Assigned(ListDynamicShape) then
    FreeAndNil(ListDynamicShape);

  if Assigned(ListRPLFromDB) then
    FreeAndNil(ListRPLFromDB);

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

  if Assigned(ListFormationfromDB) then
    FreeAndNil(ListFormationfromDB);

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
    1 : if Assigned(ScenarioDefinition) then
      Result := ScenarioDefinition.FData.Scenario_Index;
    2 : if Assigned(ScenarioDefinition) then
      Result := ScenarioDefinition.FData.Resource_Alloc_Index;
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
       result := ScenarioDefinition.FData.Scenario_Identifier;
     end;
  end;
end;

procedure TT3DBScenario.ClearScenario;
begin
  ClearAndFreeItems(ListPlatformInstanceFromDB);
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

procedure TT3DBScenario.LoadFromDB(const ScenarioId: Integer; const unassignedGroupCub: TCubicleAssignSetting; const isController: Boolean);
var
  i, j, k, ovIdx : Integer;
  ResourceAllocationId, AssetDeploymentId : Integer;
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

  if not dmTTT.GetScenario(ScenarioId, ScenarioDefinition ) then
    Exit;

  if not dmTTT.GetResourceAlloc(ResourceAllocIndex, ResourceAllocation ) then
    Exit;

  ResourceAllocationId := ResourceAllocIndex;

  if not dmTTT.GetAssetDeployment(ScenarioId, AssetDeployment) then
    Exit;

  AssetDeploymentId  := AssetDeployment.FData.Deployment_Index;

  frmProgress := TfrmProgress.Create(nil);
  frmProgress.Caption := 'Loading Scenario ' + ScenarioDefinition.FData.Scenario_Identifier + '  from database';

  {$REGION ' Load All Platform Instance Mapping '}
  dmTTT.getAllPlatFormInstance(ResourceAllocIndex, AssetDeployment.FData.Deployment_Index, ListPlatformInstanceFromDB);
  {$ENDREGION}

  {$REGION ' Load All RPL Mapping '}
  dmTTT.GetRuntime_Platform_LibraryByResourceAlloc(ResourceAllocIndex, ListRPLFromDB);
  GetAllPiRuntimePlatform;
  {$ENDREGION}

  {$REGION ' Load All Overlay Mapping '}
  dmTTT.GetResource_Overlay_Mapping(ResourceAllocIndex, ListOverlayFromDB);

  if (ListOverlayFromDB.Count > 0) then
  begin
    for I := 0 to ListOverlayFromDB.Count - 1 do
    begin
      ovIdx := TResource_Allocation(ListOverlayFromDB.Items[I]).FOverlay.Overlay_Index;

      case TResource_Allocation(ListOverlayFromDB[I]).FOverlay.Static_Overlay of
        osDynamic : dmTTT.GetAllOverlay_Shape(ovIdx, ListDynamicShape);
        osStatic  : dmTTT.GetAllOverlay_Shape(ovIdx, ListStaticShape);
      end;
    end;
  end;
  {$ENDREGION}

  {$REGION ' Load All Game Defaults '}
  if (dmTTT.GetGame_Defaults(ResourceAllocation.FData.Resource_Alloc_Index, GameDefaults)) then
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
  {$ENDREGION}

  frmProgress.MaxJob := ListPlatformInstanceFromDB.Count;

  {$REGION ' Load Platform Instance Data & Asset '}
  for I := 0 to ListPlatformInstanceFromDB.Count - 1 do
  begin
    pi := ListPlatformInstanceFromDB[i];

    frmProgress.increase( pi.FData.Instance_Name );
    LoadPlatformDefinition(pi);

    //untuk set default data platform instance untuk NonRealTime Platform
    if DefaultNonRealPlatform = nil then
    begin
      if pi.FData.Vehicle_Index > 0 then
      begin
        DefaultNonRealPlatform := TPlatform_Instance.Create;
        DefaultNonRealPlatform.FData.Vehicle_Index := pi.FData.Vehicle_Index;
        LoadPlatformDefinition(DefaultNonRealPlatform)
      end;
    end;

    {$REGION ' Merubah TPlatform_Instance ke TT3PlatformInstance melalui event ini '}
    if Assigned(FOnAssignedPlatform) then
      FOnAssignedPlatform(pi);
    {$ENDREGION}
  end;
  {$ENDREGION}

  {$REGION ' Load All Formation Mapping '}
  dmTTT.GetFormationDefinition(AssetDeploymentId, ListFormationfromDB);
  Formation_List.Clear;
  Platform_Inst.Clear;

  // formation refinement
  Formation_List_rev.Clear;
  dmTTT.GetFormation(AssetDeploymentId, Formation_List_rev);

  for I := 0 to ListFormationfromDB.Count - 1 do
  begin
    form := ListFormationfromDB[i];
    dmTTT.GetFormationAssignment(form, Formation_List) ;
    //Formation_List.Add(Platform_Inst);   //test mm
  end;
  {$ENDREGION}

  {$REGION ' Load All Data Link '}
  dmTTT.GetLinkDefinition(AssetDeploymentId, Links);
  for I := 0 to Links.Count - 1 do
  begin
    link  := Links[i];
    with link do begin
      dmTTT.GetLinkParticipant(link, Platform_Ins);
    end;
  end;
  {$ENDREGION}

  {$REGION ' Load All Environment and Game Area'}
  dmTTT.GetGame_Environment_Definition(ResourceAllocation.FData.Game_Enviro_Index, GameEnvironment);

  dmTTT.GetGame_Area_DefByID(GameEnvironment.FData.Game_Area_Index, GameEnvironment);

  dmTTT.GetSubArea_Enviro_Definition(ResourceAllocation.FData.Game_Enviro_Index, GameEnvironment.FSubArea);

  s := UpperCase(Trim(GameEnvironment.FGameArea.Detail_Map));
  if s  = 'ENC' then
    MapGeosetName := GameEnvironment.FGameArea.Game_Area_Identifier + '\' +
    GameEnvironment.FGameArea.Game_Area_Identifier + '.gst'
  else
    MapGeosetName := GameEnvironment.FGameArea.Game_Area_Identifier + '\' +
    GameEnvironment.FGameArea.Game_Area_Identifier + '.gst';

  dmTTT.GetGeoAreaDefinition(GameEnvironment.FData.Game_Area_Index, GeoPoint);

  GameEnvironment.calculateMaxPowerScaleArea;

  {$ENDREGION}

  {$REGION ' Load All Cubicle Group '}
  dmTTT.GetT3GroupList(ScenarioId, CubiclesGroupsList.FSList);

  for I := 0 to CubiclesGroupsList.Count - 1 do
  begin
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

        while not found and (k < ListPlatformInstanceFromDB.Count) do
        begin
          pi := ListPlatformInstanceFromDB[k];
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

  {Mencari Paltform yg tidak punya group}
  for I := 0 to ListPlatformInstanceFromDB.Count - 1 do
  begin
    pi := ListPlatformInstanceFromDB[i];

    if pi.CubicleGroupID > 1  then
      continue;

    grp := CubiclesGroupsList.GetGroupByIdentifier('Unassigned Group') as T3CubicleGroup;

    if Assigned(grp) then
    begin
      grm := T3CubicleGroupMember.Create;

      with grm.FData do
      begin
        Platform_Instance_Index  := pi.FData.Platform_Instance_Index;
        Group_Index              := 1;
        Command_Priority         := i;
        Deployment_Index         := Deployment_Index;
      end;

      grp.FSList.AddObject(IntToStr(grm.FData.Platform_Instance_Index), grm);
    end;
  end;
  {$ENDREGION}

  {$REGION ' Load All ExCom '}
  for i := ExCom.Count - 1 downto 0 do
  begin
    ExCom.Delete(i);
  end;
  ExCom.Clear;

  dmTTT.GetExternal_Communication_Channel(ExCom, IntToStr(ResourceAllocationId),'' ,ExternalCom);
  {$ENDREGION}

  {$REGION ' Load All Reference Point '}
  dmTTT.getAllReference_Point(ResourceAllocationId, rpList);
  {$ENDREGION}

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

  for i := 0 to ListRPLFromDB.Count - 1 do
  begin
    recLBN := ListRPLFromDB.Items[i];

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
  for i := 0 to ListRPLFromDB.Count - 1 do
  begin
    ObjRPL := ListRPLFromDB.Items[i];

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

  dmTTT.GetPlatform_ActivationToPlatformInstance(pi.FData.Platform_Instance_Index, pi.FActivation.Deployment_Index, pi);

  {$REGION ' Load Vehicle Definition and Asset '}
  if pi.FData.Vehicle_Index > 0 then
  begin

    dmTTT.GetVehicle_Definition(pi.FData.Vehicle_Index, Pi.Vehicle);
    dmTTT.GetHelicopter(pi.FData.Vehicle_Index, Pi.HeliLimitation);
    dmTTT.GetMotion_Characteristics(pi.Vehicle.FData.Motion_Characteristics, Pi.Motion);

    with pi.Vehicle do
    begin
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
  {$ENDREGION}

  {$REGION ' Load Satellite Definition and Asset '}
  if pi.FData.Satellite_Index > 0 then
    dmTTT.GetSatellite_Definition(pi.FData.Satellite_Index, Pi.Satellite);
  {$ENDREGION}

  {$REGION ' Load Mine Definition and Asset '}
  if pi.FData.Mine_Index > 0 then
  begin
    dmTTT.getMine_def(pi.Mine, pi.FData.Mine_Index);
    dmTTT.getMinePOD(pi.Mine.FPOD,pi.FData.Mine_Index);
  end;
  {$ENDREGION}

  {$REGION ' Load Missile Definition and Asset '}
  if pi.FData.Missile_Index > 0 then
  begin
    dmTTT.getMissile_Def(pi.Missile, pi.FData.Missile_Index);
    dmTTT.GetMotion_Characteristics(pi.Missile.FData.Motion_Index, Pi.Motion);
  end;
  {$ENDREGION}

  {$REGION ' Load Torpedo Definition and Asset '}
  if pi.FData.Torpedo_Index > 0 then
  begin
    dmTTT.getTorpedo_Def(pi.Torpedo, pi.FData.Torpedo_Index);
    dmTTT.getTorpedoPOH(pi.Torpedo.FPOHs,pi.FData.Torpedo_Index);
    dmTTT.GetMotion_Characteristics(pi.Torpedo.FData.Motion_Index, Pi.Motion);
  end;
  {$ENDREGION}

  {$REGION ' Load Hybrid Definition and Asset '}
  if pi.FData.Hybrid_Index > 0 then
  begin
  end;
  {$ENDREGION}

  {$REGION ' Load Sonobuoy Definition and Asset '}
  if pi.FData.Sonobuoy_Index > 0 then begin
  end;
  {$ENDREGION}

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
