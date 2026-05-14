unit ufrmSonobuoyOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uDBAsset_Vehicle, uDBAsset_Sonobuoy,
  Vcl.Imaging.pngimage, uSimContainers;

type
  TfrmSonobuoyOnBoardPickList = class(TForm)
    shp1: TShape;
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnEditMount: TButton;
    btnRemove: TButton;
    lbAllSonobuoyDef: TListBox;
    lbAllSonobuoyOnBoard: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllSonobuoyDefClick(Sender: TObject);
    procedure lbAllSonobuoyOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditMountClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);


  private
    FAllSonobuoyDefList : TList;
    FAllSonobuoyOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedSonobuoy : TSonobuoy_On_Board;

    procedure UpdateSonobuoyList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmSonobuoyOnBoardPickList: TfrmSonobuoyOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmSonobuoyMount;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSonobuoyOnBoardPickList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllSonobuoyDefList);
  FreeItemsAndFreeList(FAllSonobuoyOnBoardList);
  Action := cafree;
end;

procedure TfrmSonobuoyOnBoardPickList.FormCreate(Sender: TObject);

begin
  FAllSonobuoyDefList := TList.Create;
  FAllSonobuoyOnBoardList := TList.Create;
end;

procedure TfrmSonobuoyOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateSonobuoyList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSonobuoyOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllSonobuoyDef.ItemIndex = -1 then
    Exit;

  frmSonobuoyMount := TfrmSonobuoyMount.Create(Self);
  try
    with frmSonobuoyMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedSonobuoy := FSelectedSonobuoy;
      ShowModal;
    end;
  finally
    frmSonobuoyMount.Free;
  end;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyOnBoardPickList.btnEditMountClick(Sender: TObject);
begin
  if lbAllSonobuoyOnBoard.ItemIndex = -1 then
    Exit;

  frmSonobuoyMount := TfrmSonobuoyMount.Create(Self);
  try
    with frmSonobuoyMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedSonobuoy := FSelectedSonobuoy;
      ShowModal;
    end;
  finally
    frmSonobuoyMount.Free;
  end;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllSonobuoyOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedSonobuoy.FData do
  begin
    dmTTT.DeleteSonobuoyOnBoard(2, Sonobuoy_Instance_Index);
  end;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSonobuoyOnBoardPickList.lbAllSonobuoyDefClick(Sender: TObject);
begin
 if lbAllSonobuoyDef.ItemIndex = -1 then
    Exit;
  FSelectedSonobuoy := TSonobuoy_On_Board( lbAllSonobuoyDef.Items.Objects[lbAllSonobuoyDef.ItemIndex]);
end;

procedure TfrmSonobuoyOnBoardPickList.lbAllSonobuoyOnBoardClick(Sender: TObject);
begin
  if lbAllSonobuoyOnBoard.ItemIndex = -1 then
    Exit;
  FSelectedSonobuoy := TSonobuoy_On_Board(lbAllSonobuoyOnBoard.Items.Objects[lbAllSonobuoyOnBoard.ItemIndex]);
end;

procedure TfrmSonobuoyOnBoardPickList.UpdateSonobuoyList;
var
  i : Integer;
  sonobuoy : TSonobuoy_On_Board;
begin
  lbAllSonobuoyDef.Items.Clear;
  lbAllSonobuoyOnBoard.Items.Clear;

  dmTTT.GetAllSonobuoy(FAllSonobuoyDefList);
  dmTTT.GetSonobuoyOnBoard(FSelectedVehicle.FData.Vehicle_Index, FAllSonobuoyOnBoardList);

  for i := 0 to FAllSonobuoyDefList.Count - 1 do
  begin
    sonobuoy := FAllSonobuoyDefList.Items[i];
    lbAllSonobuoyDef.Items.AddObject(sonobuoy.FDef.Class_Identifier, sonobuoy);
  end;

  for i := 0 to FAllSonobuoyOnBoardList.Count - 1 do
  begin
    sonobuoy := FAllSonobuoyOnBoardList.Items[i];
    lbAllSonobuoyOnBoard.Items.AddObject(sonobuoy.FData.Instance_Identifier, sonobuoy);
  end;
end;

{$ENDREGION}

 end.
