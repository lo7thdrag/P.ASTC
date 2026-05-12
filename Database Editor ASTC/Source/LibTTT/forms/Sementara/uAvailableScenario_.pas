unit uAvailableScenario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, newClassASTT;

type
  TfAvailableScenario = class(TForm)
    lbScenarioList: TListBox;
    btNew: TButton;
    btCopy: TButton;
    btEdit: TButton;
    btRemove: TButton;
    btFilter: TButton;
    btUsage: TButton;
    btClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);

    procedure lbScenarioListClick(Sender: TObject);
    procedure lbScenarioListDblClick(Sender: TObject);
    procedure btNewClick(Sender: TObject);
    procedure btCopyClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btUsageClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);

    procedure getScenario;
  private
    FScenarioList : TList;
    FScenario : TScenario_Definition;
    id_scenario : string;

    procedure getDataScenario;
  public
    { Public declarations }
  end;

var
  fAvailableScenario : TfAvailableScenario;

implementation

uses
  uSimDBEditor, ufScenario, uDataModuleTTT, uDBAsset_Deploy,
  uDBAsset_Cubicle, uDBFormation, uUsage;

{$R *.dfm}

procedure TfAvailableScenario.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfAvailableScenario.btCopyClick(Sender: TObject);
begin
  if lbScenarioList.ItemIndex = -1 then
  begin
    Exit;
  end
  else
  begin
    frmScenario.isCopy := True;
    frmScenario.isNew := True;
    getDataScenario;
  end;
end;

procedure TfAvailableScenario.btEditClick(Sender: TObject);
begin
  //ambil nilai point scenario yg diload saja
  //CurrentClient := lstClients.Items.Objects [lstClients.ItemIndex] as TClient;
  frmScenario.isCopy := False;
  //id_scenario := lbScenarioListIndex.Items.Strings[lbScenarioList.ItemIndex];
  getDataScenario;
end;

procedure TfAvailableScenario.getDataScenario;
begin
  with frmScenario do
  begin
    isNew               := False;
    id_scenario         := lbScenarioListIndex.Items.Strings[lbScenarioList.ItemIndex];

    if isCopy then
    begin
      edScenarioName.Text := 'Copy Of ' + lbScenarioList.Items.Strings[lbScenarioList.ItemIndex];
      isNew := True;
      frmScenario.Apply.Enabled := true;
    end
    else
    begin
      edScenarioName.Text := lbScenarioList.Items.Strings[lbScenarioList.ItemIndex];
      frmScenario.Apply.Enabled := false;
      edResourceAllocation.Text:=IntToStr(ResourceAllocation.FData.Resource_Alloc_Index);
    end;

    selectedScenario    := StrToInt(lbScenarioListIndex.Items.Strings[lbScenarioList.ItemIndex]);
    Showmodal;
  end;
end;

procedure TfAvailableScenario.btNewClick(Sender: TObject);
begin
  with frmScenario do
  begin
    edScenarioName.Text := '[Noname]';
    edResourceAllocation.Text := '[None]';
    btGroups.Enabled := False;
    btLinks.Enabled := False;
    isNew := True;

    ShowModal;
  end;
end;

procedure TfAvailableScenario.btRemoveClick(Sender: TObject);
var
  mList : TList;
  asset : TAsset_Deployment;
  cubicle : TCubicle_Group;
  I: Integer;
  warning: Integer;
begin
  if lbScenarioList.ItemIndex <> -1 then
  begin
    warning := MessageDlg('Are you sure you want to delete this item?',mtConfirmation,mbOKCancel,0);
    if warning = mrOK then
    begin
      mList := TList.Create;
      asset := TAsset_Deployment.Create;
      cubicle := TCubicle_Group.Create;
      dmTTT.GetAssetDeployment(StrToInt(lbScenarioListIndex.Items.Strings[lbScenarioList.ItemIndex]),asset);
      dmTTT.getAllCubicle_Groups(asset.FData.Deployment_Index, 0, mList, cubicle);
      for I := 0 to mList.Count - 1 do
      begin
        dmTTT.deleteCubicle_Group(IntToStr(TCubicle_Group(mList[I]).FData.Group_Index));
      end;
      mList.Clear;
      dmTTT.deleteAllLink_Part(IntToStr(asset.FData.Deployment_Index));
      dmTTT.deleteAllLink_Def(IntToStr(asset.FData.Deployment_Index));
      dmTTT.getFormationDefinition(asset.FData.Deployment_Index, mList);
      for I := 0 to mList.Count - 1 do
      begin
        dmTTT.deleteAllFormation_Assign(IntToStr(TFormation(mList[I]).FFormation_Def.Formation_Index));
        dmTTT.deleteFormation_Def(IntToStr(TFormation(mList[I]).FFormation_Def.Formation_Index));
      end;
      dmTTT.deletePlatformActivationByDeploy(IntToStr(asset.FData.Deployment_Index));
      dmTTT.DeleteAsset_Deployment_Definition(IntToStr(asset.FData.Deployment_Index));
      dmTTT.DeleteScenario_Definition(IntToStr(asset.FData.Scenario_Index));

      getScenario;
    end;
  end;
end;

procedure TfAvailableScenario.btUsageClick(Sender: TObject);
begin
  if lbScenarioList.ItemIndex <> -1 then begin
    with fUsage do begin
      UIndex  := -1;
      ShowModal;
    end;
  end;
end;

procedure TfAvailableScenario.FormCreate(Sender: TObject);
begin
  FScenarioList := Tlist.Create;
  FScenario := TScenario_Definition.Create;
end;

procedure TfAvailableScenario.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if GetKeyState(VK_ESCAPE)< 0 then
  begin
    case Msg.CharCode of
      VK_ESCAPE:
      begin
        btClose.Click;
      end;
    end;
  end;
end;

procedure TfAvailableScenario.FormShow(Sender: TObject);
begin
  getScenario;
  btEdit.Enabled := False;
  btCopy.Enabled := False;
  btRemove.Enabled := False;
  btUsage.Enabled  := False;
  btFilter.Enabled := False;
end;

procedure TfAvailableScenario.getScenario;
var
  i : Integer;
begin
  //get all scenario name
  lbScenarioList.Clear;
  lbScenarioListIndex.Clear;
  uSimDBEditor.getPLatforms(FScenarioList);

  for i := 0 to FScenarioList.Count - 1 do
  begin
    lbScenarioList.Items.Add(TScenario_Definition(FScenarioList[i]).FData.Scenario_Identifier);
    lbScenarioListIndex.Items.Add(IntToStr(TScenario_Definition(FScenarioList[I]).FData.Scenario_Index));
  end;
end;


procedure TfAvailableScenario.lbScenarioListClick(Sender: TObject);
begin
  btEdit.Enabled := True;
  btCopy.Enabled := True;
  btRemove.Enabled := True;
  btUsage.Enabled  := True;
end;

procedure TfAvailableScenario.lbScenarioListDblClick(Sender: TObject);
begin
  btEdit.Click;
end;

end.
