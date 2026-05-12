unit ufrmGroupMemberPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, Vcl.Imaging.pngimage;

type
  E_GroupMemberFormCaller = (gmfcMember, gmfcComm);

  TfrmGroupMemberPickList = class(TForm)
    pnlMainBackground: TPanel;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllMember: TListBox;
    lbMemberSel: TListBox;
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllMemberClick(Sender: TObject);
    procedure lbMemberSelClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnEditMountClick(Sender: TObject);

  private
    FCaller : E_GroupMemberFormCaller;
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedCubicleGroup : TCubicle_Group_Assignment;

    FAvailableItemsList : TList;
    FSelectedItemsList : TList;
    FSelectedItem : TCubicle_Group_Assignment;

    procedure UpdateGroupMemberList;
    procedure UpdateGroupChannelList;
  public
    property Caller : E_GroupMemberFormCaller read FCaller write FCaller;
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedCubicleGroup : TCubicle_Group_Assignment
      read FSelectedCubicleGroup write FSelectedCubicleGroup;
  end;

var
  frmGroupMemberPickList: TfrmGroupMemberPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmGroupMemberPickList.FormCreate(Sender: TObject);
begin
  FAvailableItemsList := TList.Create;
  FSelectedItemsList := TList.Create;
end;

procedure TfrmGroupMemberPickList.FormShow(Sender: TObject);
begin
  case FCaller of
    gmfcMember:
    begin
      Caption := 'Group Member Selection';
      UpdateGroupMemberList;
    end;
    gmfcComm:
    begin
      Caption := 'Group Communication Selection';
      UpdateGroupChannelList;
    end;
  end;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmGroupMemberPickList.btnAddClick(Sender: TObject);
begin
  if lbAllMember.ItemIndex = -1 then
    Exit;

  case FCaller of
    gmfcMember:
    begin
      with FSelectedItem do
      begin
        FCubicle.Platform_Instance_Index := FPlatform.Platform_Instance_Index;
        FCubicle.Group_Index := FSelectedCubicleGroup.FData.Group_Index;
        FCubicle.Command_Priority := FSelectedItemsList.Count;
        FCubicle.Deployment_Index := FSelectedCubicleGroup.FData.
          Deployment_Index;

        dmTTT.InsertCubicleGroupAssignment(FCubicle);
      end;

      UpdateGroupMemberList;
    end;
    gmfcComm:
    begin
      with FSelectedItem do
      begin
        FChannel.Group_Index := FSelectedCubicleGroup.FData.Group_Index;
        FChannel.Channel_Slot := FSelectedItemsList.Count;
        FChannel.Comms_Channel_Index := FExComm.Comms_Channel_Index;

        dmTTT.InsertCubicleGroupChannelAssignment(FChannel);
      end;

      UpdateGroupChannelList;
    end;
  end;
end;

procedure TfrmGroupMemberPickList.btnEditMountClick(Sender: TObject);
begin
//
end;

procedure TfrmGroupMemberPickList.btnRemoveClick(Sender: TObject);
begin
  if lbMemberSel.ItemIndex = -1 then
    Exit;

  FSelectedItemsList.Delete(lbMemberSel.ItemIndex);

  case FCaller of
    gmfcMember:
    begin
      with FSelectedItem.FCubicle do
        dmTTT.DeleteCubicleGroupAssignment(3, Platform_Instance_Index);

      UpdateGroupMemberList;
    end;
    gmfcComm:
    begin
      with FSelectedItem.FChannel do
        dmTTT.DeleteCubicleGroupChannelAssignment(Group_Index,Comms_Channel_Index);

      UpdateGroupChannelList;
    end;
  end;
end;

procedure TfrmGroupMemberPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGroupMemberPickList.lbAllMemberClick(Sender: TObject);
begin
  if lbAllMember.ItemIndex = -1 then
    Exit;

  FSelectedItem := TCubicle_Group_Assignment(lbAllMember.Items.Objects[lbAllMember.ItemIndex]);
end;

procedure TfrmGroupMemberPickList.lbMemberSelClick(Sender: TObject);
begin
  if lbMemberSel.ItemIndex = -1 then
    Exit;

  FSelectedItem := TCubicle_Group_Assignment(
    lbMemberSel.Items.Objects[lbMemberSel.ItemIndex]);
end;

procedure TfrmGroupMemberPickList.UpdateGroupChannelList;
var
  i : Integer;
  cubGroup : TCubicle_Group_Assignment;
begin
  lbAllMember.Items.Clear;
  lbMemberSel.Items.Clear;

  dmTTT.GetCubicleGroupChannelAssignmentResidu(
    FSelectedResourceAlloc.FData.Resource_Alloc_Index,
    FSelectedCubicleGroup.FData.Group_Index,
    FAvailableItemsList);
  dmTTT.GetCubicleGroupChannelAssignment(
    FSelectedCubicleGroup.FData.Group_Index, FSelectedItemsList);

  for i := 0 to FAvailableItemsList.Count - 1 do
  begin
    cubGroup := FAvailableItemsList.Items[i];
    lbAllMember.Items.AddObject(cubGroup.FExComm.Channel_Identifier, cubGroup);
  end;

  for i := 0 to FSelectedItemsList.Count - 1 do
  begin
    cubGroup := FSelectedItemsList.Items[i];
    lbMemberSel.Items.AddObject(cubGroup.FExComm.Channel_Identifier, cubGroup);
  end;
end;

procedure TfrmGroupMemberPickList.UpdateGroupMemberList;
var
  i : Integer;
  cubGroup : TCubicle_Group_Assignment;
begin
  lbAllMember.Items.Clear;
  lbMemberSel.Items.Clear;

  dmTTT.GetCubicleGroupAssignmentResidu(
    FSelectedResourceAlloc.FData.Resource_Alloc_Index,
    FSelectedCubicleGroup.FData.Force_Designation,
    FSelectedCubicleGroup.FData.Deployment_Index, FAvailableItemsList);
  dmTTT.GetCubicleGroupAssignment(FSelectedCubicleGroup.FData.Group_Index,
    FSelectedItemsList);

  for i := 0 to FAvailableItemsList.Count - 1 do
  begin
    cubGroup := FAvailableItemsList.Items[i];
    lbAllMember.Items.AddObject(cubGroup.FPlatform.Instance_Name, cubGroup);
  end;

  for i := 0 to FSelectedItemsList.Count - 1 do
  begin
    cubGroup := FSelectedItemsList.Items[i];
    lbMemberSel.Items.AddObject(cubGroup.FPlatform.Instance_Name, cubGroup);
  end;
end;

{$ENDREGION}

end.
