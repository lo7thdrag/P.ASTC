unit ufrmVehicleResourceAllocationPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Vehicle;
type
  TfrmVehicleResourceAllocationPickList = class(TForm)
    pnlMain: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllVehicleDef: TListBox;
    lbAllVehicleOnRA: TListBox;
    btnEdit: TButton;
    edtSearch: TEdit;
    btnClose: TButton;
    lbl1: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    imgBackground: TImage;
    pnlMainBackground: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllVehicleOnRAClick(Sender: TObject);
    procedure lbAllVehicleDefClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);

  private
    FSelectedForce : Integer;

    FAllVehicleDefList : TList;
    FAllVehicleOnRAList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedPlatformInstance : TPlatform_Instance;
    FResourceAllocation : TResource_Allocation;

    procedure UpdateVehicleList;

  public
    isNoCancel : Boolean;
    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
  end;

var
  frmVehicleResourceAllocationPickList: TfrmVehicleResourceAllocationPickList;

implementation

uses
  uDataModuleTTT, ufrmResourceAllocationInputName, uSimContainers;


{$R *.dfm}

procedure EnableComposited(WinControl:TWinControl);
var
  i:Integer;
  NewExStyle:DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for I := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

{$REGION ' Form Handle '}

procedure TfrmVehicleResourceAllocationPickList.FormCreate(Sender: TObject);
begin
  FAllVehicleDefList  := TList.Create;
  FAllVehicleOnRAList := TList.Create;

  EnableComposited(pnlMainBackground);
end;

procedure TfrmVehicleResourceAllocationPickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FAllVehicleDefList);
  FreeItemsAndFreeList(FAllVehicleOnRAList);
end;

procedure TfrmVehicleResourceAllocationPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateVehicleList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmVehicleResourceAllocationPickList.btnAddClick(Sender: TObject);
begin
  if lbAllVehicleDef.ItemIndex = -1 then
    Exit;

  frmResourceAllocationInputName := TfrmResourceAllocationInputName.Create(Self);
  try
    with frmResourceAllocationInputName do
    begin
      ResourceAllocation := FResourceAllocation;
      Vehicle := FSelectedVehicle;
      Force := FSelectedForce;

      PlatformInstance := TPlatform_Instance.Create;
      try
      ShowModal;

      if isUpdate then
        UpdateVehicleList;

      isNoCancel := True;

      finally
      PlatformInstance.Free;
      end;
    end;
  finally
    frmResourceAllocationInputName.Free;
  end;

end;

procedure TfrmVehicleResourceAllocationPickList.btnEditClick(Sender: TObject);
begin
  if lbAllVehicleOnRA.ItemIndex = -1 then
    Exit;

  frmResourceAllocationInputName := TfrmResourceAllocationInputName.Create(Self);
  try
    with frmResourceAllocationInputName do
    begin
      ResourceAllocation := FResourceAllocation;
      PlatformInstance := FSelectedPlatformInstance;
      Force := FSelectedForce;

      Vehicle := TVehicle_Definition.Create;
      Vehicle.FData.Vehicle_Index := FSelectedPlatformInstance.FData.Vehicle_Index;

      ShowModal;

      if isUpdate then
        UpdateVehicleList;

      isNoCancel := True;
    end;
  finally
    frmResourceAllocationInputName.Free;
  end;

end;

procedure TfrmVehicleResourceAllocationPickList.btnRemoveClick(Sender: TObject);
begin
 if lbAllVehicleOnRA.ItemIndex = -1 then
    Exit;

 //Merge Kan
 {Delete relasi Cubicle Group}
 dmTTT.DeleteCubicleGroupAssignment(3, FSelectedPlatformInstance.FData.Platform_Instance_Index);

 if dmTTT.DeletePlatformActivation(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;

 if dmTTT.DeletePlatformInstance(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;

  UpdateVehicleList;
end;

procedure TfrmVehicleResourceAllocationPickList.edtSearchKeyPress(Sender: TObject; var Key: Char);
//var
//  i, j : Integer;
//  Vehicle : TVehicle_Definition;
//  platInst : TPlatform_Instance;
//  found : Boolean;
begin
  if Key = #13 then
  begin
    UpdateVehicleList
//    lbAllVehicleDef.Items.Clear;
//    lbAllVehicleOnRA.Items.Clear;
//
//    dmTTT.GetFilterVehicleDef(FAllVehicleDefList, edtSearch.Text);
//    dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 1, FSelectedForce, FAllVehicleOnRAList);
//
//    for i := 0 to FAllVehicleDefList.Count - 1 do
//    begin
//      Vehicle := FAllVehicleDefList.Items[i];
//
//      lbAllVehicleDef.Items.AddObject(Vehicle.FData.Vehicle_Identifier, Vehicle);
//    end;
//
//    for j := 0 to FAllVehicleOnRAList.Count - 1 do
//    begin
//      platInst := FAllVehicleOnRAList.Items[j];
//
//      lbAllVEhicleOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
//    end;
  end;
end;

procedure TfrmVehicleResourceAllocationPickList.btnCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmVehicleResourceAllocationPickList.lbAllVehicleDefClick(Sender: TObject);
begin
 if lbAllVehicleDef.ItemIndex = -1 then
    Exit;

  FSelectedVehicle := TVehicle_Definition(lbAllVehicleDef.Items.Objects[lbAllVehicleDef.ItemIndex]);
end;

procedure TfrmVehicleResourceAllocationPickList.lbAllVehicleOnRAClick(Sender: TObject);
begin
 if lbAllVehicleOnRA.ItemIndex = -1 then
    Exit;

  FSelectedPlatformInstance := TPlatform_Instance(lbAllVehicleOnRA.Items.Objects[lbAllVehicleOnRA.ItemIndex]);
end;

procedure TfrmVehicleResourceAllocationPickList.UpdateVehicleList;
var
  i, j : Integer;
  Vehicle : TVehicle_Definition;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllVehicleDef.Items.Clear;
  lbAllVehicleOnRA.Items.Clear;

//  dmTTT.GetAllVehicleDef(FAllVehicleDefList);
  dmTTT.GetFilterVehicleDef(FAllVehicleDefList, edtSearch.Text);
  dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 1, FSelectedForce, FAllVehicleOnRAList);

  for i := 0 to FAllVehicleDefList.Count - 1 do
  begin
    Vehicle := FAllVehicleDefList.Items[i];

    lbAllVehicleDef.Items.AddObject(Vehicle.FData.Vehicle_Identifier, Vehicle);
  end;

  for j := 0 to FAllVehicleOnRAList.Count - 1 do
  begin
    platInst := FAllVehicleOnRAList.Items[j];

    lbAllVEhicleOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
  end;
end;

{$ENDREGION}

end.
