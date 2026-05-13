unit ufrmAvailableResourceAllocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  uDBAssetObject, uSimContainers;

type
  TfrmAvailableResourceAllocation = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    btnUsage: TImage;
    pnlTableList: TPanel;
    lstResourceAllocation: TListBox;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    FUpdateList : Boolean;
    FResourceAllocList : TList;
    FSelectedResourceAlloc : TResource_Allocation;

    procedure UpdateResourceAllocList;
    procedure CopyRuntimePlatformLibrary(const aResAllocIndex, aNewResAllocIndex: Integer);
    procedure CopyResAllocPlatform(const aResAllocIndex, aNewResAllocIndex: Integer);
    procedure CopyResAllocResource(const aResAllocIndex, aNewResAllocIndex: Integer);

  end;

var
  frmAvailableResourceAllocation: TfrmAvailableResourceAllocation;

implementation

uses
  uDataModuleTTT, ufrmSummaryResourceAllocation, ufrmUsage,
  uDBAsset_Runtime_Platform_Library, uDBAsset_Reference_Point, newClassASTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableResourceAllocation.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailableResourceAllocation.FormCreate(Sender: TObject);
begin
  FResourceAllocList := TList.Create;
end;

procedure TfrmAvailableResourceAllocation.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FResourceAllocList);
end;

procedure TfrmAvailableResourceAllocation.FormShow(Sender: TObject);
begin
  UpdateResourceAllocList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableResourceAllocation.btnNewClick(Sender: TObject);
begin
  frmSummaryResourceAllocation := TfrmSummaryResourceAllocation.Create(Self);
  try
    with frmSummaryResourceAllocation do
    begin
      SelectedResourceAllocation := TResource_Allocation.Create;
      ShowModal;
      FUpdateList := AfterClose;
      SelectedResourceAllocation.Free;
    end;
  finally
    frmSummaryResourceAllocation.Free;
  end;

  if FUpdateList then
    UpdateResourceAllocList;
end;

procedure TfrmAvailableResourceAllocation.btnCopyClick(Sender: TObject);
var
  newResAllocName : string;
  count, parentIndex : Integer;
begin
  if lstResourceAllocation.ItemIndex = -1 then
  begin
    ShowMessage('Select Resource Allocation !');
    Exit;
  end;

  with FSelectedResourceAlloc do
  begin
    parentIndex := FData.Resource_Alloc_Index;
    newResAllocName := FData.Allocation_Identifier + ' - Copy';

    count := dmTTT.GetResourceAllocationDef(newResAllocName);

    if count > 0 then
      newResAllocName := newResAllocName + ' (' + IntToStr(count + 1) + ')';

    FData.Allocation_Identifier := newResAllocName;

    dmTTT.InsertResourceAllocationDef(FData);

    CopyRuntimePlatformLibrary(parentIndex, FData.Resource_Alloc_Index);
    CopyResAllocPlatform(parentIndex, FData.Resource_Alloc_Index);
    CopyResAllocResource(parentIndex, FData.Resource_Alloc_Index);
  end;

  UpdateResourceAllocList;
end;

procedure TfrmAvailableResourceAllocation.btnEditClick(Sender: TObject);
begin
  if lstResourceAllocation.ItemIndex = -1 then
  begin
    ShowMessage('Select Resource Allocation !');
    Exit;
  end;

  frmSummaryResourceAllocation := TfrmSummaryResourceAllocation.Create(Self);
  try
    with frmSummaryResourceAllocation do
    begin
      SelectedResourceAllocation := FSelectedResourceAlloc;
      ShowModal;
      FUpdateList := AfterClose;
    end;
  finally
    frmSummaryResourceAllocation.Free;
  end;

  if FUpdateList then
    UpdateResourceAllocList;
end;

procedure TfrmAvailableResourceAllocation.btnDeleteClick(Sender: TObject);
var
  warning, i : Integer;
  scenarioList : TList;
  found : Boolean;
  scenario : TScenario_Definition;
begin
  if lstResourceAllocation.ItemIndex = -1 then
  begin
    ShowMessage('Select Resource Allocation !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this Resource Aloocation ?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    scenarioList := nil;
    dmTTT.GetScenarioDef(scenarioList);

    found := False;
    for i := 0 to scenarioList.Count - 1 do
    begin
      scenario := scenarioList.Items[i];

      if scenario.FData.Resource_Alloc_Index = FSelectedResourceAlloc.FData.
        Resource_Alloc_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
    begin
      ShowMessage('This Resource Allocation is used by some Scenario. ' +
        'Remove link to proceed this process.');
      Exit;
    end;

    with FSelectedResourceAlloc.FData do
    begin
      dmTTT.DeleteResourceLibraryMapping(Resource_Alloc_Index);

      dmTTT.DeletePlatformInstance(1, Resource_Alloc_Index);
      dmTTT.DeleteReferencePoint(1, Resource_Alloc_Index);
      dmTTT.DeletePredefinedPattern(1, Resource_Alloc_Index);
      dmTTT.DeleteResourceOverlayMapping(1, Resource_Alloc_Index);
      dmTTT.DeleteRadarInterval(1, Resource_Alloc_Index);
      dmTTT.DeleteExternalCommunicationChannel(1, Resource_Alloc_Index);

      dmTTT.DeleteResourceAllocationDef(Resource_Alloc_Index);
    end;

    UpdateResourceAllocList;
  end;
end;

procedure TfrmAvailableResourceAllocation.btnUsageClick(Sender: TObject);
begin
  if lstResourceAllocation.ItemIndex = -1 then
  begin
    ShowMessage('Select Resource Allocation !');
    Exit;
  end;

  frmUsage := TfrmUsage.Create(Self);
  try
    with frmUsage do
    begin
      UId := FSelectedResourceAlloc.FData.Resource_Alloc_Index;
      name_usage := FSelectedResourceAlloc.FData.Allocation_Identifier;
      UIndex := 28;
      usage_title := 'Scenario:';
      ShowModal;
    end;
  finally
    frmUsage.Free;
  end;
  
end;

procedure TfrmAvailableResourceAllocation.CopyResAllocPlatform(const aResAllocIndex,aNewResAllocIndex: Integer);
var
  platInstList : TList;
  i : Integer;
  platInst : TPlatform_Instance;
begin
  platInstList := TList.Create;

  dmTTT.GetPlatformInstance(aResAllocIndex, -1, -1, platInstList);

  for i := 0 to platInstList.Count - 1 do
  begin
    platInst := platInstList.Items[i];

    with platInst do
    begin
      FData.Resource_Alloc_Index := aNewResAllocIndex;

      dmTTT.insertPlatformInstance(FData);
    end;
  end;

  for i := 0 to platInstList.Count - 1 do
  begin
    platInst := platInstList.Items[i];
    platInst.Free;
  end;

  platInstList.Free;
end;

procedure TfrmAvailableResourceAllocation.CopyResAllocResource(const aResAllocIndex,aNewResAllocIndex: Integer);
var
  resourceList : TList;
  force, i : Integer;
  resource : TObject;
begin
  resourceList := TList.Create;

  for force := 1 to 5 do
  begin
    dmTTT.GetReferencePoint(aResAllocIndex, resourceList);

    for i := 0 to resourceList.Count - 1 do
    begin
      resource := resourceList.Items[i];

      with TReference_Point(resource) do
      begin
        FData.Resource_Alloc_Index := aNewResAllocIndex;

        dmTTT.InsertReferencePoint(FData);
      end;
    end;

    for i := 0 to resourceList.Count - 1 do
    begin
      resource := resourceList.Items[i];
      TReference_Point(resource).Free;
    end;

    resourceList.Clear;
  end;

  dmTTT.GetPredefinedPattern(aResAllocIndex, resourceList);

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];

    with TResource_Pattern_Mapping(resource) do
    begin
      FData.Resource_Alloc_Index := aNewResAllocIndex;

      dmTTT.InsertPredefinedPattern(FData);
    end;
  end;

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];
    TResource_Pattern_Mapping(resource).Free;
  end;

  resourceList.Clear;

  dmTTT.GetResourceOverlayMapping(aResAllocIndex, resourceList);

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];

    with TResource_Overlay_Mapping(resource) do
    begin
      FData.Resource_Alloc_Index := aNewResAllocIndex;

      dmTTT.InsertResourceOverlayMapping(FData);
    end;
  end;

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];
    TResource_Overlay_Mapping(resource).Free;
  end;

  resourceList.Clear;

  dmTTT.GetRadarInterval(aResAllocIndex, resourceList);

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];

    with TResource_Interval_List_Mapping(resource) do
    begin
      FData.Resource_Alloc_Index := aNewResAllocIndex;

      dmTTT.InsertRadarInterval(FData);
    end;
  end;

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];
    TResource_Interval_List_Mapping(resource).Free;
  end;

  resourceList.Clear;

  dmTTT.GetExternalCommunicationChannel(aResAllocIndex, resourceList);

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];

    with TExternal_Communication_Channel(resource) do
    begin
      FData.Resource_Alloc_Index := aNewResAllocIndex;

      dmTTT.InsertExternalCommunicationChannel(FData);
    end;
  end;

  for i := 0 to resourceList.Count - 1 do
  begin
    resource := resourceList.Items[i];
    TExternal_Communication_Channel(resource).Free;
  end;

  resourceList.Free;
end;

procedure TfrmAvailableResourceAllocation.CopyRuntimePlatformLibrary(const aResAllocIndex,aNewResAllocIndex: Integer);
var
  runtimePlatformList : TList;
  i : Integer;
  resource : TObject;
begin
  runtimePlatformList := TList.Create;

  dmTTT.GetResourceLibraryMapping(aResAllocIndex, runtimePlatformList);

  for i := 0 to runtimePlatformList.Count - 1 do
  begin
    resource := runtimePlatformList.Items[i];

    with TResource_Library_Mapping(resource) do
    begin
      FData.Resource_Alloc_Index := aNewResAllocIndex;

      dmTTT.InsertResourceLibraryMapping(FData);
    end;
  end;

  for i := 0 to runtimePlatformList.Count - 1 do
  begin
    resource := runtimePlatformList.Items[i];
    TResource_Library_Mapping(resource).Free;
  end;

  runtimePlatformList.Free;
end;

procedure TfrmAvailableResourceAllocation.lbSingleClick(Sender: TObject);
begin
  if lstResourceAllocation.ItemIndex = -1 then
    Exit;

  FSelectedResourceAlloc := TResource_Allocation(lstResourceAllocation.Items.Objects[lstResourceAllocation.ItemIndex]);
end;

procedure TfrmAvailableResourceAllocation.UpdateResourceAllocList;
var
  i : Integer;
  resAlloc : TResource_Allocation;
begin
  lstResourceAllocation.Items.Clear;

  dmTTT.GetResourceAllocationDef(FResourceAllocList);

  for i := 0 to FResourceAllocList.Count - 1 do
  begin
    resAlloc := FResourceAllocList[i];
    lstResourceAllocation.Items.AddObject(resAlloc.FData.Allocation_Identifier, resAlloc);
  end;
end;

{$ENDREGION}

end.
