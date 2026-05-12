unit uFormationMemberList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBFormation, uDBAsset_Deploy, uDBAssetObject;

type
  TFormationMemberForm = class(TForm)
    lstFormationPlatform: TListBox;
    btOk: TButton;
    btCancel: TButton;

    procedure FormShow(Sender: TObject);

    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstFormationPlatformClick(Sender: TObject);
  private
    FSelectedAssetDeployment : TAsset_Deployment;
    FSelectedPlatform : TPlatform_Instance;

    FFormationMemberList : TList;

    procedure UpdateFormationMemberList;
  public
    property SelectedAssetDeployment : TAsset_Deployment
      read FSelectedAssetDeployment write FSelectedAssetDeployment;
    property SelectedPlatform : TPlatform_Instance read FSelectedPlatform;
  end;

var
  FormationMemberForm: TFormationMemberForm;

implementation

uses
  uSimDBEditor, uFormationEditorPanel, ufrmSummaryScenario,
  uDataModuleTTT, uFormationeditor;

{$R *.dfm}

procedure TFormationMemberForm.btCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormationMemberForm.btOkClick(Sender: TObject);
begin
  if lstFormationPlatform.ItemIndex = -1 then
    Exit;

  ModalResult := mrOk;
end;

procedure TFormationMemberForm.FormCreate(Sender: TObject);
begin
  FFormationMemberList := TList.Create;
end;

procedure TFormationMemberForm.FormShow(Sender: TObject);
begin
  UpdateFormationMemberList;
end;

procedure TFormationMemberForm.lstFormationPlatformClick(Sender: TObject);
begin
  FSelectedPlatform := TPlatform_Instance(
    lstFormationPlatform.Items.Objects[lstFormationPlatform.ItemIndex]);
end;

procedure TFormationMemberForm.UpdateFormationMemberList;
var
  i : Integer;
  platInst : TPlatform_Instance;
begin
  lstFormationPlatform.Items.Clear;

  with FSelectedAssetDeployment.FData do
    dmTTT.GetDeployedPlatform(Deployment_Index, FFormationMemberList);

  for i := 0 to FFormationMemberList.Count - 1 do
  begin
    platInst := FFormationMemberList.Items[i];
    lstFormationPlatform.Items.AddObject(platInst.FData.Instance_Name,
      platInst);
  end;
end;

end.
