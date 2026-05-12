unit ufrmGameAreaPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Vcl.Imaging.pngimage,
  uDBAsset_GameEnvironment, uSimContainers;

type
  TfrmGameAreaPickList = class(TForm)
    pnl2ControlPage: TPanel;
    lbAvailableGameArea: TListBox;
    pnl3Button: TPanel;
    btnCancel: TButton;
    btnAdd: TButton;
    pnlSparatorHor2: TPanel;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAvailableGameAreaClick(Sender: TObject);
    procedure lbAvailableGameAreaDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    FSelectedGameAreaId : Integer;

    FGameAreaList : TList;
    FSelectedGameArea : TGame_Environment_Definition;

    procedure UpdateGameAreaList;

  public
    property SelectedGameAreaId : Integer read FSelectedGameAreaId write FSelectedGameAreaId;
  end;

var
  frmGameAreaPickList: TfrmGameAreaPickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryEnvironment;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmGameAreaPickList.FormCreate(Sender: TObject);
begin
  FGameAreaList := TList.Create;
end;

procedure TfrmGameAreaPickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FGameAreaList);
end;

procedure TfrmGameAreaPickList.FormShow(Sender: TObject);
begin
  UpdateGameAreaList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmGameAreaPickList.btnAddClick(Sender: TObject);
begin
  if lbAvailableGameArea.ItemIndex = -1 then
    Exit;

  FSelectedGameAreaId := FSelectedGameArea.FGameArea.Game_Area_Index;
  Close;

end;

procedure TfrmGameAreaPickList.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGameAreaPickList.lbAvailableGameAreaClick(Sender: TObject);
begin
  if lbAvailableGameArea.ItemIndex = -1 then
    Exit;

  FSelectedGameArea := TGame_Environment_Definition(lbAvailableGameArea.Items.Objects[lbAvailableGameArea.ItemIndex]);
end;

procedure TfrmGameAreaPickList.lbAvailableGameAreaDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfrmGameAreaPickList.UpdateGameAreaList;
var
  i : Integer;
  gameArea : TGame_Environment_Definition;
begin
  lbAvailableGameArea.Items.Clear;

  dmTTT.GetAllGameAreaDef(FGameAreaList);

  for i := 0 to FGameAreaList.Count - 1 do
  begin
    gameArea := FGameAreaList.Items[i];

    lbAvailableGameArea.Items.AddObject(gameArea.FGameArea.Game_Area_Identifier, gameArea);

  end;
end;

{$ENDREGION}

end.
