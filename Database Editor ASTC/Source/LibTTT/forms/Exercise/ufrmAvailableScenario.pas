unit ufrmAvailableScenario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBAssetObject, uDBAsset_Deploy, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmAvailableScenario = class(TForm)
    Image1: TImage;
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    pnlTableList: TPanel;
    lstScenarioList: TListBox;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstScenarioListClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

  private
    FUpdateList : Boolean;
    FScenarioList : TList;
    FSelectedScenario : TScenario_Definition;
    FSelectedAssetDeployment : TAsset_Deployment;

    procedure UpdateScenarioList;
    procedure CopyPlatformActivation(const aDeploymentIndex, aNewDeploymentIndex: Integer);
    procedure CopyCubicleGroup(const aDeploymentIndex, aNewDeploymentIndex: Integer);
    procedure CopyCubicleGroupPlatformAndCommunication(const aCubGroupIndex, aNewCubGroupIndex, aNewDeploymentIndex: Integer);

  end;

var
  frmAvailableScenario: TfrmAvailableScenario;

implementation

uses
  uDataModuleTTT, ufrmSummaryScenario, ufrmUsage, ufDBEditor;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailableScenario.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
  UpdateScenarioList;
end;

procedure TfrmAvailableScenario.FormCreate(Sender: TObject);
begin
  FScenarioList := TList.Create;
  FSelectedAssetDeployment := TAsset_Deployment.Create;
end;

procedure TfrmAvailableScenario.FormShow(Sender: TObject);
begin
  UpdateScenarioList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailableScenario.btnNewClick(Sender: TObject);
begin
  frmSummaryScenario := TfrmSummaryScenario.Create(Self);
  try
    with frmSummaryScenario do
    begin
      SelectedScenario := TScenario_Definition.Create;
      SelectedAssetDeployment := FSelectedAssetDeployment;
      ShowModal;
      FUpdateList := AfterClose;
    end;
  finally
    frmSummaryScenario.Free;
  end;

  if FUpdateList then
    UpdateScenarioList;
end;

procedure TfrmAvailableScenario.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count, parentIndex : Integer;

begin
  if lstScenarioList.ItemIndex = -1 then
  begin
    ShowMessage('Select Scenario... !');
    Exit;
  end;

  with FSelectedScenario do
  begin
    newClassName := FData.Scenario_Identifier + ' - Copy';

    count := dmTTT.GetScenarioDef(newClassName);

    if count > 0 then
      newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FData.Scenario_Identifier := newClassName;

    dmTTT.InsertScenarioDef(FData);
  end;

  with FSelectedAssetDeployment do
  begin
    parentIndex := FData.Deployment_Index;
    FData.Scenario_Index := FSelectedScenario.FData.Scenario_Index;

    dmTTT.InsertAssetDeployment(FData);

    CopyPlatformActivation(parentIndex, FData.Deployment_Index);
    CopyCubicleGroup(parentIndex, FData.Deployment_Index);
  end;

  UpdateScenarioList;
end;

procedure TfrmAvailableScenario.btnEditClick(Sender: TObject);
begin
  if lstScenarioList.ItemIndex = -1 then
  begin
    ShowMessage('Select Scenario... !');
    Exit;
  end;

  frmSummaryScenario := TfrmSummaryScenario.Create(Self);
  try
    with frmSummaryScenario do
    begin
      SelectedScenario := FSelectedScenario;
      SelectedAssetDeployment := FSelectedAssetDeployment;
      ShowModal;;
      FUpdateList := AfterClose;
    end;
  finally
    frmSummaryScenario.Free;
  end;

  if FUpdateList then
    UpdateScenarioList;
end;

procedure TfrmAvailableScenario.btnDeleteClick(Sender: TObject);
var
  warning : Integer;
begin
  if lstScenarioList.ItemIndex = -1 then
  begin
    ShowMessage('Select Scenario !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this Scenario ?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedAssetDeployment.FData do
    begin
      dmTTT.DeleteFormationAssignment(1, Deployment_Index);
      dmTTT.DeleteFormationDef(1, Deployment_Index);

      dmTTT.DeletePlatformActivation(1, Deployment_Index);

      dmTTT.DeleteCubicleGroupAssignment(1, Deployment_Index);
      dmTTT.DeleteCubicleGroupChannelAssignment(1, Deployment_Index);
      dmTTT.DeleteCubicleGroup(1, Deployment_Index);

      //hapus Link scenario ini
    end;

    with FSelectedScenario.FData do
      dmTTT.DeleteScenarioDef(Scenario_Index);

    UpdateScenarioList;
  end;
end;

procedure TfrmAvailableScenario.lstScenarioListClick(Sender: TObject);
begin
  if lstScenarioList.ItemIndex = -1 then
    Exit;

  FSelectedScenario := TScenario_Definition(lstScenarioList.Items.Objects[lstScenarioList.ItemIndex]);

  with FSelectedScenario.FData do
    dmTTT.GetAssetDeployment(Scenario_Index, FSelectedAssetDeployment);
end;

procedure TfrmAvailableScenario.CopyCubicleGroup(const aDeploymentIndex,aNewDeploymentIndex: Integer);
var
  cubGroupList : TList;
  i, parentIndex : Integer;
  cubGroup : TCubicle_Group_Assignment;
begin
  cubGroupList := TList.Create;

  dmTTT.GetCubicleGroup(aDeploymentIndex, -1, cubGroupList);

  for i := 0 to cubGroupList.Count - 1 do
  begin
    cubGroup := cubGroupList.Items[i];

    with cubGroup do
    begin
      parentIndex := FData.Group_Index;
      FData.Deployment_Index := aNewDeploymentIndex;

      dmTTT.InsertCubicleGroup(FData);

      CopyCubicleGroupPlatformAndCommunication(parentIndex, FData.Group_Index,
        aNewDeploymentIndex);
    end;
  end;

  for i := 0 to cubGroupList.Count - 1 do
  begin
    cubGroup := cubGroupList.Items[i];
    cubGroup.Free;
  end;

  cubGroupList.Free;
end;

procedure TfrmAvailableScenario.CopyCubicleGroupPlatformAndCommunication(const aCubGroupIndex, aNewCubGroupIndex, aNewDeploymentIndex: Integer);
var
  cubGroupList : TList;
  i : Integer;
  cubGroup : TCubicle_Group_Assignment;
begin
  cubGroupList := TList.Create;

  dmTTT.GetCubicleGroupAssignment(aCubGroupIndex, cubGroupList);

  for i := 0 to cubGroupList.Count - 1 do
  begin
    cubGroup := cubGroupList.Items[i];

    with cubGroup do
    begin
      FCubicle.Group_Index := aNewCubGroupIndex;
      FCubicle.Deployment_Index := aNewDeploymentIndex;

      dmTTT.InsertCubicleGroupAssignment(FCubicle);
    end;
  end;

  for i := 0 to cubGroupList.Count - 1 do
  begin
    cubGroup := cubGroupList.Items[i];
    cubGroup.Free;
  end;

  cubGroupList.Clear;

  dmTTT.GetCubicleGroupChannelAssignment(aCubGroupIndex, cubGroupList);

  for i := 0 to cubGroupList.Count - 1 do
  begin
    cubGroup := cubGroupList.Items[i];

    with cubGroup do
    begin
      FChannel.Group_Index := aNewCubGroupIndex;
//      FChannel.Deployment_Index := aNewDeploymentIndex;

      dmTTT.InsertCubicleGroupChannelAssignment(FChannel);
    end;
  end;

  for i := 0 to cubGroupList.Count - 1 do
  begin
    cubGroup := cubGroupList.Items[i];
    cubGroup.Free;
  end;

  cubGroupList.Free;
end;

procedure TfrmAvailableScenario.CopyPlatformActivation(const aDeploymentIndex,aNewDeploymentIndex: Integer);
var
  platInstList : TList;
  i : Integer;
  platInst : TPlatform_Instance;
begin
  platInstList := TList.Create;

  dmTTT.GetPlatformActivation(aDeploymentIndex, platInstList);

  for i := 0 to platInstList.Count - 1 do
  begin
    platInst := platInstList.Items[i];

    with platInst do
    begin
      FActivation.Deployment_Index := aNewDeploymentIndex;

      dmTTT.InsertPlatformActivation(FActivation);
    end;
  end;

  for i := 0 to platInstList.Count - 1 do
  begin
    platInst := platInstList.Items[i];
    platInst.Free;
  end;

  platInstList.Free;
end;

procedure TfrmAvailableScenario.UpdateScenarioList;
var
  i : Integer;
  scenario : TScenario_Definition;
begin
  lstScenarioList.Items.Clear;

  dmTTT.GetAllScenarioDef(FScenarioList);

  for i := 0 to FScenarioList.Count - 1 do
  begin
    scenario := FScenarioList.Items[i];
    lstScenarioList.Items.AddObject(scenario.FData.Scenario_Identifier,scenario);
  end;
end;

{$ENDREGION}

end.
