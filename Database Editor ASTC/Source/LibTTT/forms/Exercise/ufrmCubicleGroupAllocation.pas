unit ufrmCubicleGroupAllocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, ExtCtrls, ComCtrls, uDBAssetObject,
  Vcl.Imaging.pngimage;

type
  TfrmCubicleGroupAllocation = class(TForm)
    pnlSparatorHor1: TPanel;
    Image2: TImage;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    pnl1Title: TPanel;
    lblName: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    btnBrowse: TSpeedButton;
    lblZuluZulu: TLabel;
    edtZuluZulu: TEdit;
    grbExternalComm: TGroupBox;
    btnAddExternalComm: TButton;
    btnRemoveExternalComm: TButton;
    btnMoveUpExternalComm: TButton;
    btnMoveDownExternalComm: TButton;
    lstExternallComm: TListView;
    grbMembers: TGroupBox;
    btnAddMembers: TButton;
    btnRemoveMembers: TButton;
    btnMoveUpMembers: TButton;
    btnMoveDownMembers: TButton;
    lstMembers: TListView;
    grbTrackBlockRange: TGroupBox;
    lblStart: TLabel;
    lblEnd: TLabel;
    edtStart: TEdit;
    edtEnd: TEdit;
    GroupBox1: TGroupBox;
    lblForce: TLabel;
    edtForce: TEdit;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnOK: TButton;
    btnCancel: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure lstMembersClick(Sender: TObject);
    procedure btnAddMembersClick(Sender: TObject);
    procedure btnRemoveMembersClick(Sender: TObject);
    procedure btnMoveUpMembersClick(Sender: TObject);
    procedure btnMoveDownMembersClick(Sender: TObject);
    procedure lstExternallCommClick(Sender: TObject);
    procedure btnAddExternalCommClick(Sender: TObject);
    procedure btnRemoveExternalCommClick(Sender: TObject);
    procedure btnMoveUpExternalCommClick(Sender: TObject);
    procedure btnMoveDownExternalCommClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    FSelectedScenario : TScenario_Definition;
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedCubicleGroup : TCubicle_Group_Assignment;

    FMemberList : TList;
    FCommChannelList : TList;
    FSelectedCubicleAllocation : TCubicle_Group_Assignment;

    procedure UpdateGroupAllocationForm;
    procedure UpdateCubicleMemberList;
    procedure UpdateCubicleChannelList;
  public
    LastName : string;

    function CekInput(IdAction : Integer): Boolean;

    property SelectedScenario : TScenario_Definition read FSelectedScenario
      write FSelectedScenario;
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedCubicleGroup : TCubicle_Group_Assignment
      read FSelectedCubicleGroup write FSelectedCubicleGroup;
  end;

var
  frmCubicleGroupAllocation: TfrmCubicleGroupAllocation;

implementation

uses
  uDataModuleTTT, ufrmGroupMemberPickList;

{$R *.dfm}

procedure TfrmCubicleGroupAllocation.btnAddExternalCommClick(Sender: TObject);
begin
  frmGroupMemberPickList := TfrmGroupMemberPickList.Create(Self);
  try
    with frmGroupMemberPickList do
    begin
      Caller := gmfcComm;
      SelectedResourceAlloc := FSelectedResourceAlloc;
      SelectedCubicleGroup := FSelectedCubicleGroup;
      ShowModal;
    end;
  finally
    frmGroupMemberPickList.Free;
  end;

  btnApply.Enabled := True;
  UpdateCubicleChannelList;
end;

procedure TfrmCubicleGroupAllocation.btnAddMembersClick(Sender: TObject);
begin
  frmGroupMemberPickList := TfrmGroupMemberPickList.Create(Self);
  try
    with frmGroupMemberPickList do
    begin
      Caller := gmfcMember;
      SelectedResourceAlloc := FSelectedResourceAlloc;
      SelectedCubicleGroup := FSelectedCubicleGroup;
      ShowModal;
    end;
  finally
    frmGroupMemberPickList.Free;
  end;

  btnApply.Enabled := True;
  UpdateCubicleMemberList;
end;

procedure TfrmCubicleGroupAllocation.btnApplyClick(Sender: TObject);
var
  cubGroup : TCubicle_Group_Assignment;
begin
  with FSelectedCubicleGroup do
  begin
    if not CekInput(FData.Group_Index)  then
      Exit;

    LastName := edtName.Text;
    FData.Group_Identifier := edtName.Text;

    if FData.Group_Index = 0 then
    begin
      dmTTT.InsertCubicleGroup(FData);
    end
    else
      dmTTT.UpdateCubicleGroup(FData);
  end;

  UpdateGroupAllocationForm;
  btnApply.Enabled := False;
  btnCancel.Visible := False;
end;

procedure TfrmCubicleGroupAllocation.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCubicleGroupAllocation.btnMoveDownExternalCommClick(
  Sender: TObject);
var
  cubGroupAlloc : TCubicle_Group_Assignment;
  tempChannelSlot : Integer;
begin
  cubGroupAlloc := lstExternallComm.Items[lstExternallComm.ItemIndex + 1].Data;

  //step 1
  tempChannelSlot := cubGroupAlloc.FChannel.Channel_Slot;
  cubGroupAlloc.FChannel.Channel_Slot := FCommChannelList.Count + 1;

  dmTTT.UpdateCubicleGroupChannelAssignment(cubGroupAlloc.FChannel);

  //step 2
  cubGroupAlloc.FChannel.Channel_Slot := FSelectedCubicleAllocation.FChannel.
    Channel_Slot;
  FSelectedCubicleAllocation.FChannel.Channel_Slot := tempChannelSlot;

  dmTTT.UpdateCubicleGroupChannelAssignment(FSelectedCubicleAllocation.
    FChannel);

  //step 3
  dmTTT.UpdateCubicleGroupChannelAssignment(cubGroupAlloc.FChannel);

  UpdateCubicleChannelList;
end;

procedure TfrmCubicleGroupAllocation.btnMoveDownMembersClick(Sender: TObject);
var
  cubGroupAlloc : TCubicle_Group_Assignment;
  tempCommandPriority : Integer;
begin
  cubGroupAlloc := lstMembers.Items[lstMembers.ItemIndex + 1].Data;

  //step 1
  tempCommandPriority := cubGroupAlloc.FCubicle.Command_Priority;
  cubGroupAlloc.FCubicle.Command_Priority := FMemberList.Count + 1;

  dmTTT.UpdateCubicleGroupAssignment(cubGroupAlloc.FCubicle);

  //step 2
  cubGroupAlloc.FCubicle.Command_Priority := FSelectedCubicleAllocation.
    FCubicle.Command_Priority;
  FSelectedCubicleAllocation.FCubicle.Command_Priority := tempCommandPriority;

  dmTTT.UpdateCubicleGroupAssignment(FSelectedCubicleAllocation.FCubicle);

  //step 3
  dmTTT.UpdateCubicleGroupAssignment(cubGroupAlloc.FCubicle);

  UpdateCubicleMemberList;
end;

procedure TfrmCubicleGroupAllocation.btnMoveUpExternalCommClick(
  Sender: TObject);
var
  cubGroupAlloc : TCubicle_Group_Assignment;
  tempChannelSlot : Integer;
begin
  cubGroupAlloc := lstExternallComm.Items[lstExternallComm.ItemIndex - 1].Data;

  //step 1
  tempChannelSlot := cubGroupAlloc.FChannel.Channel_Slot;
  cubGroupAlloc.FChannel.Channel_Slot := FCommChannelList.Count + 1;

  dmTTT.UpdateCubicleGroupChannelAssignment(cubGroupAlloc.FChannel);

  //step 2
  cubGroupAlloc.FChannel.Channel_Slot := FSelectedCubicleAllocation.FChannel.
    Channel_Slot;
  FSelectedCubicleAllocation.FChannel.Channel_Slot := tempChannelSlot;

  dmTTT.UpdateCubicleGroupChannelAssignment(FSelectedCubicleAllocation.
    FChannel);

  //step 3
  dmTTT.UpdateCubicleGroupChannelAssignment(cubGroupAlloc.FChannel);

  UpdateCubicleChannelList;
end;

procedure TfrmCubicleGroupAllocation.btnMoveUpMembersClick(Sender: TObject);
var
  cubGroupAlloc : TCubicle_Group_Assignment;
  tempCommandPriority : Integer;
begin
  cubGroupAlloc := lstMembers.Items[lstMembers.ItemIndex - 1].Data;

  //step 1
  tempCommandPriority := cubGroupAlloc.FCubicle.Command_Priority;
  cubGroupAlloc.FCubicle.Command_Priority := FMemberList.Count + 1;

  dmTTT.UpdateCubicleGroupAssignment(cubGroupAlloc.FCubicle);

  //step 2
  cubGroupAlloc.FCubicle.Command_Priority := FSelectedCubicleAllocation.
    FCubicle.Command_Priority;
  FSelectedCubicleAllocation.FCubicle.Command_Priority := tempCommandPriority;

  dmTTT.UpdateCubicleGroupAssignment(FSelectedCubicleAllocation.FCubicle);

  //step 3
  dmTTT.UpdateCubicleGroupAssignment(cubGroupAlloc.FCubicle);

  UpdateCubicleMemberList;
end;

procedure TfrmCubicleGroupAllocation.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmCubicleGroupAllocation.btnRemoveExternalCommClick(
  Sender: TObject);
begin
  if lstExternallComm.ItemIndex = -1 then
    Exit;

  with FSelectedCubicleAllocation.FChannel do
    dmTTT.DeleteCubicleGroupChannelAssignment(Group_Index, Comms_Channel_Index);

  UpdateCubicleChannelList;
end;

procedure TfrmCubicleGroupAllocation.btnRemoveMembersClick(Sender: TObject);
begin
  if lstMembers.ItemIndex = -1 then
    Exit;

  with FSelectedCubicleAllocation.FCubicle do
    dmTTT.DeleteCubicleGroupAssignment(3, Platform_Instance_Index);

  UpdateCubicleMemberList;
end;

function TfrmCubicleGroupAllocation.CekInput(IdAction: Integer): Boolean;
var
  i, chkSpace, numSpace: Integer;
  cubGroup: TCubicle_Group_Assignment;
begin
  Result := False;

  if edtName.Text = '' then
  begin
    ShowMessage('Incomplete data input');
    Exit;
  end;

  if Copy(edtName.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtName.Text);
    numSpace := 0;
    for i := 1 to chkSpace do
    begin
      if edtName.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;
    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  if (dmTTT.GetCubicleGroup(FSelectedCubicleGroup.FData.Deployment_Index,
  edtName.Text, cubGroup)) and (IdAction = 0) then
  begin
    ShowMessage('Please use another name');
    Exit;
  end;

  if (IdAction <> 0) and (LastName <> edtName.Text)then
  begin
    if (dmTTT.GetCubicleGroup(FSelectedCubicleGroup.FData.Deployment_Index,
    edtName.Text, cubGroup)) then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmCubicleGroupAllocation.edtNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TfrmCubicleGroupAllocation.FormCreate(Sender: TObject);
begin
  FMemberList := TList.Create;
  FCommChannelList := TList.Create;
end;

procedure TfrmCubicleGroupAllocation.FormShow(Sender: TObject);
begin
  Caption := 'Group in ' + FSelectedScenario.FData.Scenario_Identifier;

  UpdateGroupAllocationForm;
  UpdateCubicleMemberList;
  UpdateCubicleChannelList;

  with FSelectedCubicleGroup.FData do
    btnApply.Enabled := Group_Index = 0;

  btnCancel.Visible := True;
end;

procedure TfrmCubicleGroupAllocation.lstExternallCommClick(Sender: TObject);
begin
  btnRemoveMembers.Enabled := False;
  btnMoveUpMembers.Enabled := False;
  btnMoveDownMembers.Enabled := False;

  if lstExternallComm.ItemIndex <> -1 then
    FSelectedCubicleAllocation := TCubicle_Group_Assignment(
      lstExternallComm.Items[lstExternallComm.ItemIndex].Data);

  btnRemoveExternalComm.Enabled := lstExternallComm.ItemIndex <> -1;
  btnMoveUpExternalComm.Enabled := (lstExternallComm.ItemIndex <> -1) and
    Assigned(lstExternallComm.Items[lstExternallComm.ItemIndex - 1]);
  btnMoveDownExternalComm.Enabled := (lstExternallComm.ItemIndex <> -1) and
    Assigned(lstExternallComm.Items[lstExternallComm.ItemIndex + 1]);
end;

procedure TfrmCubicleGroupAllocation.lstMembersClick(Sender: TObject);
begin
  btnRemoveExternalComm.Enabled := False;
  btnMoveUpExternalComm.Enabled := False;
  btnMoveDownExternalComm.Enabled := False;

  if lstMembers.ItemIndex <> -1 then
    FSelectedCubicleAllocation := TCubicle_Group_Assignment(
      lstMembers.Items[lstMembers.ItemIndex].Data);

  btnRemoveMembers.Enabled := lstMembers.ItemIndex <> -1;
  btnMoveUpMembers.Enabled := (lstMembers.ItemIndex <> -1) and
    Assigned(lstMembers.Items[lstMembers.ItemIndex - 1]);
  btnMoveDownMembers.Enabled := (lstMembers.ItemIndex <> -1) and
    Assigned(lstMembers.Items[lstMembers.ItemIndex + 1]);
end;

procedure TfrmCubicleGroupAllocation.UpdateCubicleChannelList;
var
  i : Integer;
  cubGroup : TCubicle_Group_Assignment;
  li : TListItem;
begin
  lstExternallComm.Items.Clear;

  dmTTT.GetCubicleGroupChannelAssignment(
    FSelectedCubicleGroup.FData.Group_Index, FCommChannelList);

  for i := 0 to FCommChannelList.Count - 1 do
  begin
    cubGroup := FCommChannelList.Items[i];

    li := lstExternallComm.Items.Add;
    li.Caption := IntToStr(i + 1);
    li.SubItems.Add(IntToStr(cubGroup.FExComm.Channel_Number));
    li.SubItems.Add(cubGroup.FExComm.Channel_Identifier);
    li.Data := cubGroup;
  end;
end;

procedure TfrmCubicleGroupAllocation.UpdateCubicleMemberList;
var
  i : Integer;
  cubGroup : TCubicle_Group_Assignment;
  li : TListItem;
begin
  lstMembers.Items.Clear;

  dmTTT.GetCubicleGroupAssignment(FSelectedCubicleGroup.FData.Group_Index,
    FMemberList);

  for i := 0 to FMemberList.Count - 1 do
  begin
    cubGroup := FMemberList.Items[i];

    li := lstMembers.Items.Add;
    li.Caption := IntToStr(i);
    li.SubItems.Add(cubGroup.FPlatform.Instance_Name);
    li.Data := cubGroup;
  end;
end;

procedure TfrmCubicleGroupAllocation.UpdateGroupAllocationForm;
begin
  with FSelectedCubicleGroup.FData do
  begin
    if Group_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Group_Identifier;

    edtZuluZulu.Text := IntToStr(Zulu_Zulu);

    case Force_Designation of
      1: edtForce.Text := 'Red';
      2: edtForce.Text := 'Yellow';
      3: edtForce.Text := 'Blue';
      4: edtForce.Text := 'Green';
      5: edtForce.Text := 'No Force';
      6: edtForce.Text := 'NTDS';
    end;

    edtStart.Text := IntToStr(Track_Block_Start);
    edtEnd.Text := IntToStr(Track_Block_End);

    btnAddMembers.Enabled := Group_Index <> 0;
    btnRemoveMembers.Enabled := (Group_Index <> 0) and
      (lstMembers.ItemIndex <> -1);
    btnMoveUpMembers.Enabled := (Group_Index <> 0) and
      (lstMembers.ItemIndex <> -1);
    btnMoveDownMembers.Enabled := (Group_Index <> 0) and
      (lstMembers.ItemIndex <> -1);
    btnAddExternalComm.Enabled := Group_Index <> 0;
    btnRemoveExternalComm.Enabled := (Group_Index <> 0) and
      (lstMembers.ItemIndex <> -1);
    btnMoveUpExternalComm.Enabled := (Group_Index <> 0) and
      (lstMembers.ItemIndex <> -1);
    btnMoveDownExternalComm.Enabled := (Group_Index <> 0) and
      (lstMembers.ItemIndex <> -1);
  end;
end;

end.
