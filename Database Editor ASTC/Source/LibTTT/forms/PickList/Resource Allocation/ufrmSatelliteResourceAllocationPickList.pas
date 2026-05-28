unit ufrmSatelliteResourceAllocationPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Satellite;

type
  TfrmSatelliteResourceAllocationPickList = class(TForm)
    pnlMain: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllSatelliteDef: TListBox;
    lbAllSatelliteOnRA: TListBox;
    btnClose: TButton;
    edtSearch: TEdit;
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

    procedure lbAllSatelliteOnRAClick(Sender: TObject);
    procedure lbAllSatelliteDefClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);


  private
    FSelectedForce : Integer;

    FAllSatelliteDefList : TList;
    FAllSatelliteOnRAList : TList;

    FSelectedSatellite : TSatellite_Definition;
    FSelectedPlatformInstance : TPlatform_Instance;
    FResourceAllocation : TResource_Allocation;

    procedure UpdateSatelliteList;

  public
    isNoCancel : Boolean;
    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
  end;

var
  frmSatelliteResourceAllocationPickList: TfrmSatelliteResourceAllocationPickList;

implementation

uses
  uDataModuleTTT, uSimContainers;

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

procedure TfrmSatelliteResourceAllocationPickList.FormCreate(Sender: TObject);
begin
  FAllSatelliteDefList  := TList.Create;
  FAllSatelliteOnRAList := TList.Create;

  EnableComposited(pnlMainBackground);
end;

procedure TfrmSatelliteResourceAllocationPickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FAllSatelliteDefList);
  FreeItemsAndFreeList(FAllSatelliteOnRAList);
end;

procedure TfrmSatelliteResourceAllocationPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateSatelliteList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSatelliteResourceAllocationPickList.btnAddClick(Sender: TObject);
var
  PlatformInstance : TPlatform_Instance;

begin
  PlatformInstance := TPlatform_Instance.Create;

  with PlatformInstance.FData do
  begin
    Resource_Alloc_Index := FResourceAllocation.FData.Resource_Alloc_Index;
    Platform_Type := 6;
    Satellite_Index := FSelectedSatellite.FData.Satellite_Index;
    Instance_Name := FSelectedSatellite.FData.Satellite_Identifier;
    Force_Designation := FSelectedForce;
    Track_ID := 'Sat';

    if (dmTTT.GetPlatformInstance(Resource_Alloc_Index, Platform_Type, 1, Instance_Name)>0) then
    begin
      ShowMessage('Satellite already in used at another force');
      Exit;
    end;
  end;

  if dmTTT.InsertPlatformInstance(PlatformInstance.FData)then
    isNoCancel := True;

  PlatformInstance.Free;

  UpdateSatelliteList;
end;

procedure TfrmSatelliteResourceAllocationPickList.btnRemoveClick(Sender: TObject);
begin
 if dmTTT.DeletePlatformInstance(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;;

  UpdateSatelliteList;
end;

procedure TfrmSatelliteResourceAllocationPickList.edtSearchKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    UpdateSatelliteList;
  end;

end;

procedure TfrmSatelliteResourceAllocationPickList.btnCloseClick( Sender: TObject);
begin
 Close;
end;

procedure TfrmSatelliteResourceAllocationPickList.lbAllSatelliteDefClick(Sender: TObject);
begin
 if lbAllSatelliteDef.ItemIndex = -1 then
    Exit;

  FSelectedSatellite := TSatellite_Definition(lbAllSatelliteDef.Items.Objects[lbAllSatelliteDef.ItemIndex]);
end;

procedure TfrmSatelliteResourceAllocationPickList.lbAllSatelliteOnRAClick(Sender: TObject);
begin
 if lbAllSatelliteOnRA.ItemIndex = -1 then
    Exit;

  FSelectedPlatformInstance := TPlatform_Instance(lbAllSatelliteOnRA.Items.Objects[lbAllSatelliteOnRA.ItemIndex]);
end;

procedure TfrmSatelliteResourceAllocationPickList.UpdateSatelliteList;
var
  i, j : Integer;
 satellite : TSatellite_Definition;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllSatelliteDef.Items.Clear;
  lbAllSatelliteOnRA.Items.Clear;

//  dmTTT.GetAllSatelliteDef(FAllSatelliteDefList);
  dmTTT.GetFilterSatelliteDef(FAllSatelliteDefList, edtSearch.Text);
  dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 6, FSelectedForce, FAllSatelliteOnRAList);

  for i := 0 to FAllSatelliteDefList.Count - 1 do
  begin
   satellite := FAllSatelliteDefList.Items[i];
    found := False;

    for j := 0 to FAllSatelliteOnRAList.Count - 1 do
    begin
      platInst := FAllSatelliteOnRAList.Items[j];
      if platInst.FData.Satellite_Index = satellite.FData.Satellite_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllSatelliteOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllSatelliteDef.Items.AddObject(satellite.FData.Satellite_Identifier, satellite);
  end;
end;

{$ENDREGION}

end.
