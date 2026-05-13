unit ufrmMineResourceAllocationPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Weapon;

type
  TfrmMineResourceAllocationPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllMineDef: TListBox;
    lbAllMineOnRA: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllMineOnBoardClick(Sender: TObject);
    procedure lbAllMineDefClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);

  private
    FSelectedForce : Integer;

    FAllMineDefList : TList;
    FAllMineOnRAList : TList;

    FSelectedMine : TMine_On_Board;
    FSelectedPlatformInstance : TPlatform_Instance;
    FResourceAllocation : TResource_Allocation;

    procedure UpdateMineList;

  public
    isNoCancel : Boolean;
    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;

   end;

var
  frmMineResourceAllocationPickList: TfrmMineResourceAllocationPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmMineResourceAllocationPickList.FormCreate(Sender: TObject);
begin
  FAllMineDefList := TList.Create;
  FAllMineOnRAList := TList.Create;
end;

procedure TfrmMineResourceAllocationPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateMineList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmMineResourceAllocationPickList.btnAddClick(Sender: TObject);
var
  PlatformInstance : TPlatform_Instance;

begin
  PlatformInstance := TPlatform_Instance.Create;

  with PlatformInstance.FData do
  begin
    Resource_Alloc_Index := FResourceAllocation.FData.Resource_Alloc_Index;
    Platform_Type := 5;
    Mine_Index := FSelectedMine.FMine_Def.Mine_Index;
    Instance_Name := FSelectedMine.FMine_Def.Mine_Identifier;
    Force_Designation := FSelectedForce;
    Track_ID := 'Min';

    if (dmTTT.GetPlatformInstance(Resource_Alloc_Index, Platform_Type, 1, Instance_Name)>0) then
    begin
      ShowMessage('Mine already in used at another force');
      Exit;
    end;
  end;

  if dmTTT.InsertPlatformInstance(PlatformInstance.FData)then
    isNoCancel := True;

  PlatformInstance.Free;

  UpdateMineList;
end;

procedure TfrmMineResourceAllocationPickList.btnRemoveClick(Sender: TObject);
begin
 if dmTTT.DeletePlatformInstance(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;;

  UpdateMineList;
end;

procedure TfrmMineResourceAllocationPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMineResourceAllocationPickList.lbAllMineDefClick(Sender: TObject);
begin
  if lbAllMineDef.ItemIndex = -1 then
    Exit;

  FSelectedMine := TMine_On_Board(lbAllMineDef.Items.Objects[lbAllMineDef.ItemIndex]);
end;

procedure TfrmMineResourceAllocationPickList.lbAllMineOnBoardClick(Sender: TObject);
begin
 if lbAllMineOnRA.ItemIndex = -1 then
    Exit;

  FSelectedPlatformInstance := TPlatform_Instance(lbAllMineOnRA.Items.Objects[lbAllMineOnRA.ItemIndex]);
end;

procedure TfrmMineResourceAllocationPickList.UpdateMineList;
var
  i, j : Integer;
  Mine : TMine_On_Board;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllMineDef.Items.Clear;
  lbAllMineOnRA.Items.Clear;

  dmTTT.GetAllMineDef(FAllMineDefList);
  dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 5, FSelectedForce, FAllMineOnRAList);

  for i := 0 to FAllMineDefList.Count - 1 do
  begin
    mine := FAllMineDefList.Items[i];
    found := False;

    for j := 0 to FAllMineOnRAList.Count - 1 do
    begin
      platInst := FAllMineOnRAList.Items[j];
      if platInst.FData.Mine_Index = mine.FMine_Def.Mine_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllMineOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllMineDef.Items.AddObject(mine.FMine_Def.Mine_Identifier, mine);
  end;
end;

{$ENDREGION}

end.
