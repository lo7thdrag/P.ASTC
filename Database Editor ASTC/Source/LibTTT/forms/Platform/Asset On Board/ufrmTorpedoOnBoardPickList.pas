unit ufrmTorpedoOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Imaging.pngimage,
  uDBAsset_Weapon, uDBAsset_Vehicle, uSimContainers;

type
  E_TorpedoSelectionCaller = (tscResourceAllocation, tscVehicleAssets,
    tscMissile, tscRuntimePlatformLibrary);

  TfrmTorpedoOnBoardPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    Label2: TLabel;
    imgExercise: TImage;
    Label1: TLabel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    lbAllTorpedoDef: TListBox;
    lbAllTorpedoOnBoard: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllTorpedoDefClick(Sender: TObject);
    procedure lbAllTorpedoOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FAllTorpedoDefList : TList;
    FAllTorpedoOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedTorpedo : TTorpedo_On_Board;

    procedure UpdateTorpedoList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmTorpedoOnBoardPickList: TfrmTorpedoOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmTorpedoMounts;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmTorpedoOnBoardPickList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllTorpedoDefList);
  FreeItemsAndFreeList(FAllTorpedoOnBoardList);
  Action := cafree;
end;

procedure TfrmTorpedoOnBoardPickList.FormCreate(Sender: TObject);
begin
  FAllTorpedoDefList := TList.Create;
  FAllTorpedoOnBoardList := TList.Create;
end;

procedure TfrmTorpedoOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateTorpedoList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmTorpedoOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllTorpedoDef.ItemIndex = -1 then
    Exit;

  frmTorpedoMounts := TfrmTorpedoMounts.Create(Self);
  try
    with frmTorpedoMounts do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedTorpedo := FSelectedTorpedo;
      ShowModal;
    end;
  finally
    frmTorpedoMounts.Free;
  end;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoOnBoardPickList.btnEditClick(Sender: TObject);
begin
  if lbAllTorpedoOnBoard.ItemIndex = -1 then
    Exit;

  frmTorpedoMounts := TfrmTorpedoMounts.Create(Self);
  try
    with frmTorpedoMounts do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedTorpedo := FSelectedTorpedo;
      ShowModal;
    end;
  finally
    frmTorpedoMounts.Free;
  end;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllTorpedoOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedTorpedo.FData do
  begin
    dmTTT.DeleteBlindZone(6, Fitted_Weap_Index);
    dmTTT.DeleteFittedWeaponLauncherOnBoard(2, Fitted_Weap_Index);
    dmTTT.DeleteFittedWeaponOnBoard(2, Fitted_Weap_Index);
  end;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTorpedoOnBoardPickList.lbAllTorpedoDefClick(Sender: TObject);
begin
  if lbAllTorpedoDef.ItemIndex = -1 then
    Exit;

  FSelectedTorpedo := TTorpedo_On_Board(lbAllTorpedoDef.Items.Objects[lbAllTorpedoDef.ItemIndex]);
end;

procedure TfrmTorpedoOnBoardPickList.lbAllTorpedoOnBoardClick(Sender: TObject);
begin
  if lbAllTorpedoOnBoard.ItemIndex = -1 then
    Exit;

  FSelectedTorpedo := TTorpedo_On_Board(lbAllTorpedoOnBoard.Items.Objects[lbAllTorpedoOnBoard.ItemIndex]);
end;

procedure TfrmTorpedoOnBoardPickList.UpdateTorpedoList;
var
  i : Integer;
  torpedo : TTorpedo_On_Board;
begin
  lbAllTorpedoDef.Items.Clear;
  lbAllTorpedoOnBoard.Items.Clear;

  dmTTT.GetAllTorpedoDef(FAllTorpedoDefList);
  dmTTT.GetTorpedoOnBoard(FSelectedVehicle.FData.Vehicle_Index, FAllTorpedoOnBoardList);

  for i := 0 to FAllTorpedoDefList.Count - 1 do
  begin
    torpedo := FAllTorpedoDefList.Items[i];
    lbAllTorpedoDef.Items.AddObject(torpedo.FDef.Class_Identifier, torpedo);
  end;

  for i := 0 to FAllTorpedoOnBoardList.Count - 1 do
  begin
    torpedo := FAllTorpedoOnBoardList.Items[i];
    lbAllTorpedoOnBoard.Items.AddObject(torpedo.FData.Instance_Identifier, torpedo);
  end;
end;

 {$ENDREGION}

end.
