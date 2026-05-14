unit ufrmEODOnBoardPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Vcl.Imaging.pngimage,
  uDBAsset_Vehicle, uDBAsset_Sensor, uSimContainers ;

type
  TfrmEODOnBoardPickList = class(TForm)
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    lbAllEODDef: TListBox;
    lbAllEODOnBoard: TListBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllEODDefClick(Sender: TObject);
    procedure lbAllEODOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);


  private
    FAllEODDefList : TList;
    FSelectedEOList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedEO : TEOD_On_Board;

    procedure UpdateEOList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmEODOnBoardPickList: TfrmEODOnBoardPickList;

implementation

uses
  uDataModuleTTT, ufrmElectroOpticalMount, tttData;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmEODOnBoardPickList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeItemsAndFreeList(FAllEODDefList);
  FreeItemsAndFreeList(FSelectedEOList);
  Action := cafree;
end;

procedure TfrmEODOnBoardPickList.FormCreate(Sender: TObject);
begin
  FAllEODDefList := TList.Create;
  FSelectedEOList := TList.Create;
end;

procedure TfrmEODOnBoardPickList.FormShow(Sender: TObject);
begin
  UpdateEOList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmEODOnBoardPickList.btnAddClick(Sender: TObject);
begin
  if lbAllEODDef.ItemIndex = -1 then
    Exit;

  frmElectroOpticalMount := TfrmElectroOpticalMount.Create(Self);
  try
    with frmElectroOpticalMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedEO := FSelectedEO;
      ShowModal;
    end;
  finally
    frmElectroOpticalMount.Free;
  end;

  UpdateEOList;
end;

procedure TfrmEODOnBoardPickList.btnEditClick(Sender: TObject);
begin
  if lbAllEODOnBoard.ItemIndex = -1 then
    Exit;

  frmElectroOpticalMount := TfrmElectroOpticalMount.Create(Self);
  try
    with frmElectroOpticalMount do
    begin
      SelectedVehicle := FSelectedVehicle;
      SelectedEO := FSelectedEO;
      ShowModal;
    end;
  finally
    frmElectroOpticalMount.Free;
  end;

  UpdateEOList;
end;

procedure TfrmEODOnBoardPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllEODOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedEO.FData do
  begin
    dmTTT.DeleteBlindZone(Ord(bzcEO), EO_Instance_Index);
    dmTTT.DeleteEOOnBoard(2, EO_Instance_Index);
  end;

  UpdateEOList;
end;

procedure TfrmEODOnBoardPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEODOnBoardPickList.lbAllEODDefClick(Sender: TObject);
begin
  if lbAllEODDef.ItemIndex = -1 then
    Exit;

  FSelectedEO := TEOD_On_Board(lbAllEODDef.Items.Objects[lbAllEODDef.ItemIndex]);
end;

procedure TfrmEODOnBoardPickList.lbAllEODOnBoardClick(Sender: TObject);
begin
  if lbAllEODOnBoard.ItemIndex = -1 then
    Exit;

  FSelectedEO := TEOD_On_Board(lbAllEODOnBoard.Items.Objects[lbAllEODOnBoard.ItemIndex]);
end;

procedure TfrmEODOnBoardPickList.UpdateEOList;
var
  i : Integer;
  eo : TEOD_On_Board;
begin
  lbAllEODDef.Items.Clear;
  lbAllEODOnBoard.Items.Clear;

  dmTTT.GetAllEODef(FAllEODDefList);
  dmTTT.GetEOOnBoard(FSelectedVehicle.FData.Vehicle_Index, FSelectedEOList);

  for i := 0 to FAllEODDefList.Count - 1 do
  begin
    eo := FAllEODDefList.Items[i];
    lbAllEODDef.Items.AddObject(eo.FEO_Def.Class_Identifier, eo);
  end;

  for i := 0 to FSelectedEOList.Count - 1 do
  begin
    eo := FSelectedEOList.Items[i];
    lbAllEODOnBoard.Items.AddObject(eo.FData.Instance_Identifier, eo);
  end;
end;

{$ENDREGION}

end.
