unit ufrmChaffOnBoardOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_Vehicle, uDBAsset_Countermeasure, uSimContainers,
  Vcl.Imaging.pngimage;

type
  TfrmChaffOnBoardOnBoardPickList = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnEditMount: TButton;
    btnRemove: TButton;
    lbAllChaffDef: TListBox;
    lbAllChaffOnBoard: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllChaffDefClick(Sender: TObject);
    procedure lbAllChaffOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditMountClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FAllChaffDefList : TList;
    FAllChaffOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedChaff : TChaff_On_Board;

    procedure UpdateChaffList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmChaffOnBoardOnBoardPickList: TfrmChaffOnBoardOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryChaff, ufrmChaffMount, uChaffAssets;

{$R *.dfm}

{$REGION ' Form Handle '}


procedure TfrmChaffOnBoardOnBoardPickList.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllChaffDefList);
  FreeItemsAndFreeList(FAllChaffOnBoardList);
  Action := cafree;
end;

procedure TfrmChaffOnBoardOnBoardPickList.FormCreate(Sender: TObject);
begin
  FAllChaffDefList := TList.Create;
  FAllChaffOnBoardList := TList.Create;
end;

procedure TfrmChaffOnBoardOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateChaffList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmChaffOnBoardOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllChaffDef.ItemIndex = -1 then
    Exit;

  frmChaffMountForm := TfrmChaffMountForm.Create(Self);
  try
    with frmChaffMountForm do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedChaff := FSelectedChaff;
      ShowModal;
    end;
  finally
    frmChaffMountForm.Free;
  end;

  UpdateChaffList;
end;

procedure TfrmChaffOnBoardOnBoardPickList.btnEditMountClick(Sender: TObject);
begin
  if lbAllChaffOnBoard.ItemIndex = -1 then
    Exit;

  frmChaffMountForm := TfrmChaffMountForm.Create(Self);
  try
    with frmChaffMountForm do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedChaff := FSelectedChaff;
      ShowModal;
    end;
  finally
    frmChaffMountForm.Free;
  end;

  UpdateChaffList;
end;

procedure TfrmChaffOnBoardOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllChaffOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedChaff.FData do
    dmTTT.DeleteChaffOnBoard(2, Chaff_Instance_Index);

  AfterClose := True;
  UpdateChaffList;
end;

procedure TfrmChaffOnBoardOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmChaffOnBoardOnBoardPickList.lbAllChaffDefClick(Sender: TObject);
begin
  if lbAllChaffDef.ItemIndex = -1 then
    Exit;
  FSelectedChaff := TChaff_On_Board( lbAllChaffDef.Items.Objects[lbAllChaffDef.ItemIndex]);
end;

procedure TfrmChaffOnBoardOnBoardPickList.lbAllChaffOnBoardClick(Sender: TObject);
begin
  if lbAllChaffOnBoard.ItemIndex = -1 then
    Exit;
  FSelectedChaff := TChaff_On_Board(lbAllChaffOnBoard.Items.Objects[lbAllChaffOnBoard.ItemIndex]);
end;

procedure TfrmChaffOnBoardOnBoardPickList.UpdateChaffList;
var
  i : Integer;
  chaff : TChaff_On_Board;
begin
  lbAllChaffDef.Items.Clear;
  lbAllChaffOnBoard.Items.Clear;

  dmTTT.GetChaffDef(FAllChaffDefList);
  dmTTT.GetChaffOnBoard(FSelectedVehicle.FData.Vehicle_Index,
    FAllChaffOnBoardList);

  for i := 0 to FAllChaffDefList.Count - 1 do
  begin
    chaff := FAllChaffDefList.Items[i];
    lbAllChaffDef.Items.AddObject(chaff.FChaff_Def.Chaff_Identifier, chaff);
  end;

  for i := 0 to FAllChaffOnBoardList.Count - 1 do
  begin
    chaff := FAllChaffOnBoardList.Items[i];
    lbAllChaffOnBoard.Items.AddObject(chaff.FData.Instance_Identifier, chaff);
  end;
end;

{$ENDREGION}

end.
