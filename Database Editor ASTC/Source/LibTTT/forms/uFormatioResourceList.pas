unit uFormatioResourceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_Deploy, uDBFormation, uDBAssetObject;

type
  TFormationResourcesForm = class(TForm)
    lstAvailablePlatforms: TListBox;
    lstSelectedPlatforms: TListBox;
    btnAdd: TButton;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnEditTrack: TButton;
    Shape1: TShape;
    btnFilter: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstAvailablePlatformsClick(Sender: TObject);
    procedure lstAvailablePlatformsDblClick(Sender: TObject);
    procedure lstSelectedPlatformsClick(Sender: TObject);
    procedure lstSelectedPlatformsDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FSelectedAssetDeployment : TAsset_Deployment;
    FSelectedFormation : TFormation;
    FFormationLeader : TPlatform_Instance;

    FPlatformList : TList;
    FFormationMemberList : TList;
    FSelectedPlatform : TPlatform_Instance;

    procedure UpdateFormationMemberList;
  public
    property SelectedAssetDeployment : TAsset_Deployment
      read FSelectedAssetDeployment write FSelectedAssetDeployment;
    property SelectedFormation : TFormation read FSelectedFormation
      write FSelectedFormation;
    property FormationLeader : TPlatform_Instance read FFormationLeader
      write FFormationLeader;
  end;

var
  FormationResourcesForm: TFormationResourcesForm;

implementation

uses
  uDataModuleTTT, newClassASTT;

{$R *.dfm}

procedure TFormationResourcesForm.btnRemoveClick(Sender: TObject);
begin
  if lstSelectedPlatforms.ItemIndex = -1 then
    Exit;

  with FSelectedPlatform.FData do
    dmTTT.DeleteFormationAssignment(3, Platform_Instance_Index);

  UpdateFormationMemberList;
end;

procedure TFormationResourcesForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormationResourcesForm.btnAddClick(Sender: TObject);
begin
  if lstAvailablePlatforms.ItemIndex = -1 then
    Exit;

  with FSelectedFormation do
  begin
    FForm_Assign.Platform_Instance_Index := FSelectedPlatform.FData.
      Platform_Instance_Index;
    FForm_Assign.Formation_Index := FSelectedFormation.FFormation_Def.
      Formation_Index;
    FForm_Assign.Angle_Offset := 0;
    FForm_Assign.Range_from_Leader := 3;
    FForm_Assign.Altitude := 0;

    dmTTT.InsertFormationAssignment(FForm_Assign);
  end;

  UpdateFormationMemberList;
end;

procedure TFormationResourcesForm.FormCreate(Sender: TObject);
begin
  FPlatformList := TList.Create;
  FFormationMemberList := TList.Create;
end;

procedure TFormationResourcesForm.FormShow(Sender: TObject);
begin
  UpdateFormationMemberList;
end;

procedure TFormationResourcesForm.lstAvailablePlatformsClick(Sender: TObject);
begin
  FSelectedPlatform := TPlatform_Instance(
    lstAvailablePlatforms.Items.Objects[lstAvailablePlatforms.ItemIndex]);
end;

procedure TFormationResourcesForm.lstAvailablePlatformsDblClick(
  Sender: TObject);
begin
//
end;

procedure TFormationResourcesForm.lstSelectedPlatformsClick(Sender: TObject);
begin
  FSelectedPlatform := TPlatform_Instance(
    lstSelectedPlatforms.Items.Objects[lstSelectedPlatforms.ItemIndex]);
end;

procedure TFormationResourcesForm.lstSelectedPlatformsDblClick(Sender: TObject);
begin
  btnRemove.Click;
end;

procedure TFormationResourcesForm.UpdateFormationMemberList;
var
  i, j : Integer;
  platInst : TPlatform_Instance;
  member : TFormation_Assignment;
  found : Boolean;
begin
  lstAvailablePlatforms.Items.Clear;
  lstSelectedPlatforms.Items.Clear;

  dmTTT.GetDeployedPlatform(FSelectedAssetDeployment.FData.Deployment_Index,
    FFormationLeader.FData.Force_Designation, FPlatformList);
  dmTTT.GetFormationAssignment(
    FSelectedFormation.FFormation_Def.Formation_Index, FFormationMemberList);

  for i := 0 to FPlatformList.Count - 1 do
  begin
    platInst := FPlatformList.Items[i];

    if platInst.FData.Platform_Instance_Index = FFormationLeader.FData.
      Platform_Instance_Index then
      Continue;

    found := False;
    for j := 0 to FFormationMemberList.Count - 1 do
    begin
      member := FFormationMemberList.Items[j];

      if member.FData.Platform_Instance_Index = platInst.FData.
        Platform_Instance_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lstSelectedPlatforms.Items.AddObject(platInst.FData.Instance_Name,
        platInst)
    else
      lstAvailablePlatforms.Items.AddObject(platInst.FData.Instance_Name,
        platInst);
  end;
end;

end.
