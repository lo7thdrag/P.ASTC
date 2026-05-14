unit ufrmAirBubbleOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_Vehicle, uDBAsset_Countermeasure, uSimContainers,
  Vcl.Imaging.pngimage;

type
  TfrmAirBubbleOnBoardPickList = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    lbAirBubbleOnBoard: TListBox;
    lbAllAirBubbleDef: TListBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllAirBubbleDefClick(Sender: TObject);
    procedure lbAirBubbleOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FAllAirBubbleDefList : TList;
    FAllAirBubbleOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedAirBubble : TAir_Bubble_Mount;

    procedure UpdateAirBubbleList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmAirBubbleOnBoardPickList: TfrmAirBubbleOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryAirBubble, ufrmAirBubblesMounts;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAirBubbleOnBoardPickList.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllAirBubbleDefList);
  FreeItemsAndFreeList(FAllAirBubbleOnBoardList);
  Action := cafree;
end;

procedure TfrmAirBubbleOnBoardPickList.FormCreate(Sender: TObject);
begin
  FAllAirBubbleDefList := TList.Create;
  FAllAirBubbleOnBoardList := TList.Create;
end;

procedure TfrmAirBubbleOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateAirBubbleList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAirBubbleOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllAirBubbleDef.ItemIndex = -1 then
    Exit;

  frmAirBubblesMounts := TfrmAirBubblesMounts.Create(Self);
  try
    with frmAirBubblesMounts do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedAirBubble := FSelectedAirBubble;
      ShowModal;
    end;
  finally
    frmAirBubblesMounts.Free;
  end;

  UpdateAirBubbleList;
end;

procedure TfrmAirBubbleOnBoardPickList.btnEditClick(Sender: TObject);
begin
  if lbAirBubbleOnBoard.ItemIndex = -1 then
    Exit;

  frmAirBubblesMounts := TfrmAirBubblesMounts.Create(Self);
  try
    with frmAirBubblesMounts do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedAirBubble := FSelectedAirBubble;
      ShowModal;
    end;
  finally
    frmAirBubblesMounts.Free;
  end;

  UpdateAirBubbleList;
end;

procedure TfrmAirBubbleOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAirBubbleOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedAirBubble.FData do
    dmTTT.DeleteAirBubbleOnBoard(2, Air_Bubble_Instance_Index);

  AfterClose := True;
  UpdateAirBubbleList;
end;

procedure TfrmAirBubbleOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAirBubbleOnBoardPickList.lbAllAirBubbleDefClick(Sender: TObject);
begin
  if lbAllAirBubbleDef.ItemIndex = -1 then
    Exit;

  FSelectedAirBubble := TAir_Bubble_Mount(lbAllAirBubbleDef.Items.Objects[lbAllAirBubbleDef.ItemIndex]);
end;

procedure TfrmAirBubbleOnBoardPickList.lbAirBubbleOnBoardClick(Sender: TObject);
begin
 if lbAirBubbleOnBoard.ItemIndex = -1 then
    Exit;

  FSelectedAirBubble := TAir_Bubble_Mount( lbAirBubbleOnBoard.Items.Objects[lbAirBubbleOnBoard.ItemIndex]);
end;

procedure TfrmAirBubbleOnBoardPickList.UpdateAirBubbleList;
var
  i, j : Integer;
  avaAirBubble, selAirBubble : TAir_Bubble_Mount;
  found : Boolean;
begin
  lbAllAirBubbleDef.Items.Clear;
  lbAirBubbleOnBoard.Items.Clear;

  dmTTT.GetAllAirBubbleDef(FAllAirBubbleDefList);
  dmTTT.GetAirBubbleOnBoard(FSelectedVehicle.FData.Vehicle_Index, FAllAirBubbleOnBoardList);

  for i := 0 to FAllAirBubbleDefList.Count - 1 do
  begin
    avaAirBubble := FAllAirBubbleDefList.Items[i];

    found := False;
    for j := 0 to FAllAirBubbleOnBoardList.Count - 1 do
    begin
      selAirBubble := FAllAirBubbleOnBoardList.Items[j];

      if selAirBubble.FAirBubble_Def.Air_Bubble_Index = avaAirBubble.
        FAirBubble_Def.Air_Bubble_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAirBubbleOnBoard.Items.AddObject(selAirBubble.FData.Instance_Identifier,
        selAirBubble)
    else
      lbAllAirBubbleDef.Items.AddObject(
        avaAirBubble.FAirBubble_Def.Air_Bubble_Identifier, avaAirBubble);
  end;
end;

{$ENDREGION}

end.
