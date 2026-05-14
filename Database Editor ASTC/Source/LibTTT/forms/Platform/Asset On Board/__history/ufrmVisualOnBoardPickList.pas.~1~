unit ufrmVisualOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uDBAsset_Vehicle, uDBAsset_Sensor,
  Vcl.Imaging.pngimage, uSimContainers;

type
  TfrmVisualOnBoardPickList = class(TForm)
    Shape1: TShape;
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    lbAllVisualDef: TListBox;
    lbAllVisualOnBoard: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllVisualDefClick(Sender: TObject);
    procedure lbAllVisualOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);


  private
    FAllVisualDefList : TList;
    FAllVisualOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedVisual : TVisual_Sensor_On_Board;

    procedure UpdateVisualList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmVisualOnBoardPickList: TfrmVisualOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmVisualDetectorMount, tttData;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmVisualOnBoardPickList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllVisualOnBoardList);
  FreeItemsAndFreeList(FAllVisualDefList);
  Action := cafree;
end;

procedure TfrmVisualOnBoardPickList.FormCreate(Sender: TObject);
var
  visual : TVisual_Sensor_On_Board;
begin
  FAllVisualOnBoardList := TList.Create;
  FAllVisualDefList := TList.Create;

  visual := TVisual_Sensor_On_Board.Create;
  visual.FData.Instance_Identifier := 'Visual';

  FAllVisualDefList.Add(visual);
end;

procedure TfrmVisualOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateVisualList;
end;


{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmVisualOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllVisualDef.ItemIndex = -1 then
    Exit;

  frmVisualDetectorMount := TfrmVisualDetectorMount.Create(Self);
  try
    with frmVisualDetectorMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedVisual := FSelectedVisual;
      ShowModal;
    end;
    AfterClose := frmVisualDetectorMount.AfterClose;
  finally
    frmVisualDetectorMount.Free;
  end;

  UpdateVisualList;
end;

 procedure TfrmVisualOnBoardPickList.btnEditClick(Sender: TObject);
begin
  if lbAllVisualOnBoard.ItemIndex = -1 then
    Exit;

  frmVisualDetectorMount := TfrmVisualDetectorMount.Create(Self);
  try
    with frmVisualDetectorMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedVisual := FSelectedVisual;
      ShowModal;
    end;
    AfterClose := frmVisualDetectorMount.AfterClose;
  finally
    frmVisualDetectorMount.Free;
  end;
  
  UpdateVisualList;
end;

 procedure TfrmVisualOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllVisualOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedVisual.FData do
  begin
    dmTTT.DeleteBlindZone(Ord(bzcVisual), Visual_Instance_Index);
    dmTTT.DeleteVisualOnBoard(2, Visual_Instance_Index);
  end;

  UpdateVisualList;
end;

procedure TfrmVisualOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVisualOnBoardPickList.lbAllVisualDefClick(Sender: TObject);
begin
 if lbAllVisualDef.ItemIndex = -1 then
    Exit;

  FSelectedVisual := TVisual_Sensor_On_Board(lbAllVisualDef.Items.Objects[lbAllVisualDef.ItemIndex]);
end;

procedure TfrmVisualOnBoardPickList.lbAllVisualOnBoardClick(Sender: TObject);
begin
 if lbAllVisualOnBoard.ItemIndex = -1 then
    Exit;

  FSelectedVisual := TVisual_Sensor_On_Board(lbAllVisualOnBoard.Items.Objects[lbAllVisualOnBoard.ItemIndex]);
end;

procedure TfrmVisualOnBoardPickList.UpdateVisualList;
var
  i : Integer;
  visual : TVisual_Sensor_On_Board;
begin
  lbAllVisualDef.Items.Clear;
  lbAllVisualOnBoard.Items.Clear;

  dmTTT.GetVisualOnBoard(FSelectedVehicle.FData.Vehicle_Index,FAllVisualOnBoardList);

  visual := TVisual_Sensor_On_Board.Create;
  visual.FData.Instance_Identifier := 'Visual';
  lbAllVisualOnBoard.Items.AddObject(visual.FData.Instance_Identifier, visual);
  visual := nil;
  visual.Free;

  for i := 0 to FAllVisualOnBoardList.Count - 1 do
  begin
    visual := FAllVisualOnBoardList.Items[i];
    lbAllVisualOnBoard.Items.AddObject(visual.FData.Instance_Identifier, visual);
  end;
end;

{$ENDREGION}

end.
