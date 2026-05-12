unit uFormationeditor;

interface 

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, uDBAsset_Deploy, uDBFormation;

type
  TFormationEditorForm = class(TForm)
    pnlFormation: TPanel;
    lstAvailable: TListBox;
    lstAvailableIndex: TListBox;
    btnNew: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    Panel1: TPanel;
    btnFilter: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstAvailableClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FSelectedAssetDeployment : TAsset_Deployment;

    FFormationList : TList;
    FSelectedFormation : TFormation;

    procedure UpdateFormationList;
  public
    property SelectedAssetDeployment : TAsset_Deployment
      read FSelectedAssetDeployment write FSelectedAssetDeployment;
  end;

var
  FormationEditorForm: TFormationEditorForm;

implementation

uses
  uDataModuleTTT, uFormationEditorPanel, uSimDBEditor, ufrmPlatformDeploytment,
  ufrmSummaryScenario;

{$R *.dfm}

procedure TFormationEditorForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormationEditorForm.btnEditClick(Sender: TObject);
begin
  if lstAvailable.ItemIndex = -1 then
    Exit;

  with FormationEditorPanelForm do
  begin
    SelectedAssetDeployment := FSelectedAssetDeployment;
    SelectedFormation := FSelectedFormation;
    ShowModal;
  end;

  UpdateFormationList;
end;

procedure TFormationEditorForm.UpdateFormationList;
var
  i : Integer;
  formation : TFormation;
begin
  lstAvailable.Items.Clear;

  with FSelectedAssetDeployment.FData do
    dmTTT.GetFormationDef(Deployment_Index, FFormationList);

  for i := 0 to FFormationList.Count - 1 do
  begin
    formation := FFormationList.Items[i];
    lstAvailable.Items.AddObject(formation.FFormation_Def.Formation_Identifier,
      formation);
  end;
end;

procedure TFormationEditorForm.btnFilterClick(Sender: TObject);
begin
  if btnFilter.Caption = 'Filter >>' then
    btnFilter.Caption := '<< Filter'
  else if btnFilter.Caption = '<< Filter' then
    btnFilter.Caption := 'Filter >>';
end;

procedure TFormationEditorForm.btnNewClick(Sender: TObject);
begin
  with FormationEditorPanelForm do
  begin
    SelectedAssetDeployment := FSelectedAssetDeployment;
    SelectedFormation := TFormation.Create;
    ShowModal;
  end;

  UpdateFormationList;
end;

procedure TFormationEditorForm.btnRemoveClick(Sender: TObject);
begin
  if lstAvailable.ItemIndex = -1 then
    Exit;

  with FSelectedFormation.FFormation_Def do
  begin
    dmTTT.DeleteFormationAssignment(2, Formation_Index);
    dmTTT.DeleteFormationDef(2, Formation_Index);
  end;

  UpdateFormationList;
end;

procedure TFormationEditorForm.FormCreate(Sender: TObject);
begin
  FFormationList := TList.Create;
end;

procedure TFormationEditorForm.FormShow(Sender: TObject);
begin
  UpdateFormationList;
end;

procedure TFormationEditorForm.lstAvailableClick(Sender: TObject);
begin
  FSelectedFormation := TFormation(
    lstAvailable.Items.Objects[lstAvailable.ItemIndex]);
end;

end.
