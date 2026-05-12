unit ufrmSonobuoyResourceAllocationPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Sonobuoy;

type
  TfrmSonobuoyResourceAllocationPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllSonobuoyDef: TListBox;
    lbAllSonobuoyOnRA: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllSonobuoyDefClick(Sender: TObject);
    procedure lbAllSonobuoyOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FSelectedForce : Integer;

    FAllSonobuoyDefList : TList;
    FAllSonobuoyOnRAList : TList;

    FSelectedSonobuoy : TSonobuoy_On_Board;
    FSelectedPlatformInstance : TPlatform_Instance;
    FResourceAllocation : TResource_Allocation;

    procedure UpdateSonobuoyList;

  public
    isNoCancel : Boolean;
    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;

  end;

var
  frmSonobuoyResourceAllocationPickList: TfrmSonobuoyResourceAllocationPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSonobuoyResourceAllocationPickList.FormCreate(Sender: TObject);
begin
  FAllSonobuoyDefList := TList.Create;
  FAllSonobuoyOnRAList := TList.Create;
end;

procedure TfrmSonobuoyResourceAllocationPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateSonobuoyList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSonobuoyResourceAllocationPickList.btnAddClick(Sender: TObject);
var
  PlatformInstance : TPlatform_Instance;

begin
  PlatformInstance := TPlatform_Instance.Create;

  with PlatformInstance.FData do
  begin
    Resource_Alloc_Index := FResourceAllocation.FData.Resource_Alloc_Index;
    Platform_Type := 4;
    Sonobuoy_Index := FSelectedSonobuoy.FDef.Sonobuoy_Index;
    Instance_Name := FSelectedSonobuoy.FDef.Class_Identifier;
    Force_Designation := FSelectedForce;
    Track_ID := 'Son';

    if (dmTTT.GetPlatformInstance(Resource_Alloc_Index, Platform_Type, 1, Instance_Name)>0) then
    begin
      ShowMessage('Sonobuoy already in used at another force');
      Exit;
    end;
  end;

  if dmTTT.InsertPlatformInstance(PlatformInstance.FData)then
    isNoCancel := True;

  PlatformInstance.Free;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyResourceAllocationPickList.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfrmSonobuoyResourceAllocationPickList.btnRemoveClick(Sender: TObject);
begin
 if dmTTT.DeletePlatformInstance(2, FSelectedPlatformInstance.FData.Platform_Instance_Index)then
    isNoCancel := True;;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyResourceAllocationPickList.lbAllSonobuoyDefClick(Sender: TObject);
begin
 if lbAllSonobuoyDef.ItemIndex = -1 then
    Exit;

  FSelectedSonobuoy := TSonobuoy_On_Board(lbAllSonobuoyDef.Items.Objects[lbAllSonobuoyDef.ItemIndex]);
end;

procedure TfrmSonobuoyResourceAllocationPickList.lbAllSonobuoyOnBoardClick(Sender: TObject);
begin
 if lbAllSonobuoyOnRA.ItemIndex = -1 then
    Exit;

  FSelectedPlatformInstance := TPlatform_Instance(lbAllSonobuoyOnRA.Items.Objects[lbAllSonobuoyOnRA.ItemIndex]);
end;

procedure TfrmSonobuoyResourceAllocationPickList.UpdateSonobuoyList;
var
  i, j : Integer;
  sonobuoy : TSonobuoy_On_Board;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllSonobuoyDef.Items.Clear;
  lbAllSonobuoyOnRA.Items.Clear;

  dmTTT.GetAllSonobuoyDef(FAllSonobuoyDefList);
  dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 4, FSelectedForce, FAllSonobuoyOnRAList);

  for i := 0 to FAllSonobuoyDefList.Count - 1 do
  begin
   sonobuoy := FAllSonobuoyDefList.Items[i];
    found := False;

    for j := 0 to FAllSonobuoyOnRAList.Count - 1 do
    begin
      platInst := FAllSonobuoyOnRAList.Items[j];
      if platInst.FData.Sonobuoy_Index = sonobuoy.FDef.Sonobuoy_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllSonobuoyOnRA.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllSonobuoyDef.Items.AddObject(sonobuoy.FDef.Class_Identifier,sonobuoy);
  end;
end;

{$ENDREGION}

end.
