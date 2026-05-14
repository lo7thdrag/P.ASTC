unit ufrmMineOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uDBAsset_Weapon, uDBAssetObject,
  uDBAsset_Runtime_Platform_Library, uDBAsset_Vehicle, uSimContainers,
   Vcl.Imaging.pngimage;

type
  E_MineSelectionCaller = (mnscResourceAllocation, mnscVehicleAsset,
    mnscRuntimePlatformLibrary);

  TfrmMineOnBoardPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    btnAdd: TButton;
    btnEditTrack: TButton;
    btnRemove: TButton;
    lbAllMineDef: TListBox;
    lbAllMineOnBoard: TListBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllMineDefClick(Sender: TObject);
    procedure lbAllMineOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditTrackClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);


  private
    FAllMineDefList : TList;
    FAllMineOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedMine : TMine_On_Board;

    procedure UpdateMineList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmMineOnBoardPickList: TfrmMineOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmMineMountt;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmMineOnBoardPickList.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllMineDefList);
  FreeItemsAndFreeList(FAllMineOnBoardList);
  Action := cafree;
end;

procedure TfrmMineOnBoardPickList.FormCreate(Sender: TObject);
begin
  FAllMineDefList := TList.Create;
  FAllMineOnBoardList := TList.Create;
end;

procedure TfrmMineOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateMineList
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmMineOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllMineDef.ItemIndex = -1 then
    Exit;

  frmMineMount := TfrmMineMount.Create(Self);
  try
    with frmMineMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedMine := FSelectedMine;
      ShowModal;
    end;
  finally
    frmMineMount.Free;
  end;

  UpdateMineList;
end;

procedure TfrmMineOnBoardPickList.btnEditTrackClick(Sender: TObject);
begin
  if lbAllMineOnBoard.ItemIndex = -1 then
    Exit;

  frmMineMount := TfrmMineMount.Create(Self);
  try
    with frmMineMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedMine := FSelectedMine;
      ShowModal;
    end;
  finally
    frmMineMount.Free;
  end;

  UpdateMineList;
end;

procedure TfrmMineOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllMineOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedMine.FData do
  begin
    dmTTT.DeleteBlindZone(6, Fitted_Weap_Index);
    dmTTT.DeleteFittedWeaponLauncherOnBoard(2, Fitted_Weap_Index);
    dmTTT.DeleteFittedWeaponOnBoard(2, Fitted_Weap_Index);
  end;

  UpdateMineList;
end;

procedure TfrmMineOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMineOnBoardPickList.lbAllMineDefClick(Sender: TObject);
begin
  if lbAllMineDef.ItemIndex = -1 then
    Exit;

  FSelectedMine := TMine_On_Board(lbAllMineDef.Items.Objects[lbAllMineDef.ItemIndex]);
end;

procedure TfrmMineOnBoardPickList.lbAllMineOnBoardClick(Sender: TObject);
begin
  if lbAllMineOnBoard.ItemIndex = -1 then
    Exit;


  FSelectedMine := TMine_On_Board(lbAllMineOnBoard.Items.Objects[lbAllMineOnBoard.ItemIndex]);
end;

procedure TfrmMineOnBoardPickList.UpdateMineList;
var
  i : Integer;
  mine : TMine_On_Board;
begin
  lbAllMineDef.Items.Clear;
  lbAllMineOnBoard.Items.Clear;

  dmTTT.GetAllMineDef(FAllMineDefList);
  dmTTT.GetMineOnBoard(FSelectedVehicle.FData.Vehicle_Index, FAllMineOnBoardList);

  for i := 0 to FAllMineDefList.Count - 1 do
  begin
    mine := FAllMineDefList.Items[i];
    lbAllMineDef.Items.AddObject(mine.FMine_Def.Mine_Identifier, mine);
  end;

  for i := 0 to FAllMineOnBoardList.Count - 1 do
  begin
    mine := FAllMineOnBoardList.Items[i];
    lbAllMineOnBoard.Items.AddObject(mine.FData.Instance_Identifier, mine);
  end;
end;

{$ENDREGION}

end.
