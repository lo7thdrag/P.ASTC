unit ufrmTorpedoResourceAllocationPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Weapon;

type
  TfrmTorpedoResourceAllocationPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllTorpedoDef: TListBox;
    lbAllTorpedoOnRA: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllTorpedoOnBoardClick(Sender: TObject);
    procedure lbAllTorpedoDefClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);

  private
    FSelectedForce : Integer;

    FAllTorpedoDefList : TList;
    FAllTorpedoOnRAList : TList;

    FSelectedTorpedo : TTorpedo_On_Board;
    FSelectedPlatformInstance : TPlatform_Instance;
    FResourceAllocation : TResource_Allocation;

    procedure UpdateTorpedoList;

  public
    isNoCancel : Boolean;
    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;

  end;

var
  frmTorpedoResourceAllocationPickList: TfrmTorpedoResourceAllocationPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmTorpedoResourceAllocationPickList.FormCreate(Sender: TObject);
begin
  FAllTorpedoDefList := TList.Create;
  FAllTorpedoOnRAList := TList.Create;
end;

procedure TfrmTorpedoResourceAllocationPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateTorpedoList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmTorpedoResourceAllocationPickList.btnAddClick(Sender: TObject);
var
  PlatformInstance : TPlatform_Instance;

begin
  PlatformInstance := TPlatform_Instance.Create;

  with PlatformInstance.FData do
  begin
    Resource_Alloc_Index := FResourceAllocation.FData.Resource_Alloc_Index;
    Platform_Type := 3;
    Torpedo_Index := FSelectedTorpedo.FDef.Torpedo_Index;
    Instance_Name := FSelectedTorpedo.FDef.Class_Identifier;
    Force_Designation := FSelectedForce;
    Track_ID := 'Tor';

    if (dmTTT.GetPlatformInstance(Resource_Alloc_Index, Platform_Type, 1, Instance_Name)>0) then
    begin
      ShowMessage('Torpedo already in used at another force');
      Exit;
    end;
  end;

  if dmTTT.InsertPlatformInstance(PlatformInstance.FData)then
    isNoCancel := True;

  PlatformInstance.Free;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoResourceAllocationPickList.btnRemoveClick(Sender: TObject);
begin
  if dmTTT.DeletePlatformInstance(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoResourceAllocationPickList.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmTorpedoResourceAllocationPickList.lbAllTorpedoDefClick(Sender: TObject);
begin
 if lbAllTorpedoDef.ItemIndex = -1 then
    Exit;

  FSelectedTorpedo := TTorpedo_On_Board(lbAllTorpedoDef.Items.Objects[lbAllTorpedoDef.ItemIndex]);
end;

procedure TfrmTorpedoResourceAllocationPickList.lbAllTorpedoOnBoardClick(Sender: TObject);
begin
  if lbAllTorpedoOnRA.ItemIndex = -1 then
    Exit;

  FSelectedPlatformInstance := TPlatform_Instance(lbAllTorpedoOnRA.Items.Objects[lbAllTorpedoOnRA.ItemIndex]);
end;

procedure TfrmTorpedoResourceAllocationPickList.UpdateTorpedoList;
var
  i, j : Integer;
  torpedo : TTorpedo_On_Board;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllTorpedoDef.Items.Clear;
  lbAllTorpedoOnRA.Items.Clear;

  dmTTT.GetAllTorpedoDef(FAllTorpedoDefList);
  dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 3, FSelectedForce, FAllTorpedoOnRAList);

  for i := 0 to FAllTorpedoDefList.Count - 1 do
  begin
    torpedo := FAllTorpedoDefList.Items[i];
    found := False;

    for j := 0 to FAllTorpedoOnRAList.Count - 1 do
    begin
      platInst := FAllTorpedoOnRAList.Items[j];
      if platInst.FData.Torpedo_Index =torpedo.FDef.Torpedo_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllTorpedoOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllTorpedoDef.Items.AddObject(torpedo.FDef.Class_Identifier, torpedo);
  end;
end;

{$ENDREGION}

end.
