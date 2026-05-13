unit ufrmMissileResourceAllocationPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Weapon;

type
  TfrmMissileResourceAllocationPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllMissileDef: TListBox;
    lbAllMissileOnRA: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllMissileOnRAClick(Sender: TObject);
    procedure lbAllMissileDefClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FSelectedForce : Integer;

    FAllMissileDefList : TList; {ganti}
    FAllMissileOnRAList : TList; {ganti}

    FSelectedMissile : TMissile_On_Board; {ganti}
    FSelectedPlatformInstance : TPlatform_Instance;
    FResourceAllocation : TResource_Allocation;

    procedure UpdateMissileList; {ganti}

  public
    isNoCancel : Boolean;
    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;

  end;

var
  frmMissileResourceAllocationPickList: TfrmMissileResourceAllocationPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmMissileResourceAllocationPickList.FormCreate(Sender: TObject);
begin
  FAllMissileDefList := TList.Create;
  FAllMissileOnRAList := TList.Create;
end;

procedure TfrmMissileResourceAllocationPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateMissileList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmMissileResourceAllocationPickList.btnAddClick(Sender: TObject);
var
  PlatformInstance : TPlatform_Instance;

begin
  PlatformInstance := TPlatform_Instance.Create;

  with PlatformInstance.FData do
  begin
    Resource_Alloc_Index := FResourceAllocation.FData.Resource_Alloc_Index;
    Platform_Type := 2;
    Missile_Index := FSelectedMissile.FDef.Missile_Index;
    Instance_Name := FSelectedMissile.FDef.Class_Identifier;
    Force_Designation := FSelectedForce;
    Track_ID := 'Mis';

    if (dmTTT.GetPlatformInstance(Resource_Alloc_Index, Platform_Type, 1, Instance_Name)>0) then
    begin
      ShowMessage('Missile already in used at another force');
      Exit;
    end;
  end;

  if dmTTT.InsertPlatformInstance(PlatformInstance.FData)then
    isNoCancel := True;

  PlatformInstance.Free;

  UpdateMissileList;
end;

procedure TfrmMissileResourceAllocationPickList.btnRemoveClick(Sender: TObject);
begin

  if dmTTT.DeletePlatformInstance(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;;

  UpdateMissileList;
end;

procedure TfrmMissileResourceAllocationPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMissileResourceAllocationPickList.lbAllMissileDefClick(Sender: TObject);
begin
  if lbAllMissileDef.ItemIndex = -1 then
    Exit;

  FSelectedMissile := TMissile_On_Board(lbAllMissileDef.Items.Objects[lbAllMissileDef.ItemIndex]);
end;

procedure TfrmMissileResourceAllocationPickList.lbAllMissileOnRAClick(Sender: TObject);
begin
  if lbAllMissileOnRA.ItemIndex = -1 then
    Exit;

  FSelectedPlatformInstance := TPlatform_Instance(lbAllMissileOnRA.Items.Objects[lbAllMissileOnRA.ItemIndex]);
end;

procedure TfrmMissileResourceAllocationPickList.UpdateMissileList;
var
  i, j : Integer;
  missile : TMissile_On_Board;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllMissileDef.Items.Clear;
  lbAllMissileOnRA.Items.Clear;

  dmTTT.GetAllMissileDef(FAllMissileDefList);
  dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 2, FSelectedForce, FAllMissileOnRAList);

  for i := 0 to FAllMissileDefList.Count - 1 do
  begin
    missile := FAllMissileDefList.Items[i];
    found := False;

    for j := 0 to FAllMissileOnRAList.Count - 1 do
    begin
      platInst := FAllMissileOnRAList.Items[j];
      if platInst.FData.Missile_Index = missile.FDef.Missile_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllMissileOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllMissileDef.Items.AddObject(missile.FDef.Class_Identifier, missile);
  end;
end;

{$ENDREGION}

end.
