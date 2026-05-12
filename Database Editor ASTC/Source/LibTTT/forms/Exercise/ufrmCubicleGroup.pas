unit ufrmCubicleGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBAssetObject, uDBAsset_Deploy, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmCubicleGroup = class(TForm)
    pnl3Button: TPanel;
    btClose: TButton;
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    pnlTableList: TPanel;
    lstGroup: TListBox;
    pnlSparatorHor2: TPanel;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstGroupClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);

  private
    FSelectedScenario : TScenario_Definition;
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedAssetDeployment : TAsset_Deployment;
    FSelectedForce : Integer;

    FCubicleGroupList : TList;
    FSelectedCubicleGroup : TCubicle_Group_Assignment;

    procedure UpdateGroupList;
  public
    property SelectedScenario : TScenario_Definition read FSelectedScenario
      write FSelectedScenario;
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedAssetDeployment : TAsset_Deployment
      read FSelectedAssetDeployment write FSelectedAssetDeployment;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
  end;

var
  frmCubicleGroup: TfrmCubicleGroup;

implementation

uses
  uDataModuleTTT, ufrmCubicleGroupAllocation;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmCubicleGroup.FormCreate(Sender: TObject);
begin
  FCubicleGroupList := TList.Create;
end;

procedure TfrmCubicleGroup.FormShow(Sender: TObject);
begin

  case FSelectedForce of
    1: Label2.Caption := ' Force : Red';
    2: Label2.Caption := ' Force : Yellow';
    3: Label2.Caption := ' Force : Blue';
    4: Label2.Caption := ' Force : Green';
    5: Label2.Caption := ' Force : No Force';
    6: Label2.Caption := ' Force : NTDS';
  end;

  UpdateGroupList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmCubicleGroup.btnNewClick(Sender: TObject);
begin
  frmCubicleGroupAllocation := TfrmCubicleGroupAllocation.Create(Self);
  try
    with frmCubicleGroupAllocation do
    begin
      SelectedScenario := FSelectedScenario;
      SelectedResourceAlloc := FSelectedResourceAlloc;
      SelectedCubicleGroup := TCubicle_Group_Assignment.Create;

      with SelectedCubicleGroup.FData do
      begin
      Deployment_Index := FSelectedAssetDeployment.FData.Deployment_Index;
      Force_Designation := FSelectedForce;
      Track_Block_Start := (FCubicleGroupList.Count + 1) * 1000;
      Track_Block_End := (FCubicleGroupList.Count + 1) * 1000 + 999;
      end;

      ShowModal;
    end;
  finally
    frmCubicleGroupAllocation.Free;
  end;
  
  UpdateGroupList;
end;

procedure TfrmCubicleGroup.btnCopyClick(Sender: TObject);
var
  newCubGroupName : string;
  duplicate, i : Integer;
  cubGroup : TCubicle_Group_Assignment;
  memberList, commChannelList : TList;
begin
  if lstGroup.ItemIndex = -1 then
  begin
    ShowMessage('Select Cubicle Group !');
    Exit;
  end;

  newCubGroupName := FSelectedCubicleGroup.FData.Group_Identifier + ' - Copy';

  duplicate := 1;
  while True do
  begin
    if duplicate > 1 then
    begin
      if dmTTT.GetCubicleGroup(FSelectedCubicleGroup.FData.Deployment_Index,
        newCubGroupName + ' (' + IntToStr(duplicate) + ')', cubGroup) then
        Inc(duplicate)
      else
      begin
        newCubGroupName := newCubGroupName + ' (' + IntToStr(duplicate) + ')';

        Break;
      end;
    end
    else if dmTTT.GetCubicleGroup(FSelectedCubicleGroup.FData.Deployment_Index,
      newCubGroupName, cubGroup) then
      Inc(duplicate)
    else
      Break;
  end;

  with FSelectedCubicleGroup do
  begin
    commChannelList := nil;
    dmTTT.GetCubicleGroupChannelAssignment(FData.Group_Index, commChannelList);

    FData.Group_Identifier := newCubGroupName;
    FData.Track_Block_Start := (FCubicleGroupList.Count + 1) * 1000;
    FData.Track_Block_End := (FCubicleGroupList.Count + 1) * 1000 + 999;

    dmTTT.InsertCubicleGroup(FData);

    //group member tidak dicopy : 1 member 1 group

    for i := 0 to commChannelList.Count - 1 do
    begin
      cubGroup := commChannelList.Items[i];
      cubGroup.FChannel.Group_Index := FData.Group_Index;

      dmTTT.InsertCubicleGroupChannelAssignment(cubGroup.FChannel);
    end;
  end;

  UpdateGroupList;
end;

procedure TfrmCubicleGroup.btnEditClick(Sender: TObject);
begin
  if lstGroup.ItemIndex = -1 then
  begin
    ShowMessage('Select Cubicle Group !');
    Exit;
  end;

  frmCubicleGroupAllocation := TfrmCubicleGroupAllocation.Create(Self);
  try
    with frmCubicleGroupAllocation do
    begin
      SelectedScenario := FSelectedScenario;
      SelectedResourceAlloc := FSelectedResourceAlloc;
      SelectedCubicleGroup := FSelectedCubicleGroup;
      LastName := SelectedCubicleGroup.FData.Group_Identifier;
      ShowModal;
    end;
  finally
    frmCubicleGroupAllocation.Free;
  end;
  
  UpdateGroupList;
end;

procedure TfrmCubicleGroup.btnRemoveClick(Sender: TObject);
var
  warning: Integer;
begin
  if lstGroup.ItemIndex = -1 then
  begin
    ShowMessage('Select Cubicle Group !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this Cubicle Group?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedCubicleGroup.FData do
    begin
      dmTTT.DeleteCubicleGroupAssignment(2, Group_Index);
      dmTTT.DeleteCubicleGroupChannelAssignment(2, Group_Index);
      dmTTT.DeleteCubicleGroup(2, Group_Index);
    end;

    UpdateGroupList;
  end;
end;

procedure TfrmCubicleGroup.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCubicleGroup.lstGroupClick(Sender: TObject);
begin
  if lstGroup.ItemIndex = -1 then
    Exit;

  FSelectedCubicleGroup := TCubicle_Group_Assignment(lstGroup.Items.Objects[lstGroup.ItemIndex]);
end;

procedure TfrmCubicleGroup.UpdateGroupList;
var
  i : Integer;
  cubGroup : TCubicle_Group_Assignment;
begin
  lstGroup.Items.Clear;

  dmTTT.GetCubicleGroup(FSelectedAssetDeployment.FData.Deployment_Index, FSelectedForce, FCubicleGroupList);

  for i := 0 to FCubicleGroupList.Count - 1 do
  begin
    cubGroup := FCubicleGroupList.Items[i];
    lstGroup.Items.AddObject(cubGroup.FData.Group_Identifier, cubGroup);
  end;
end;

{$ENDREGION}

end.
