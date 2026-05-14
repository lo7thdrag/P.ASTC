unit ufrmDefensiveJammerPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_Vehicle, uDBAsset_Countermeasure,
  Vcl.Imaging.pngimage;

type
  TfrmDefensiveJammerPickList = class(TForm)
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
    lbAllDefensiveJammerDef: TListBox;
    lbAllDefensveJammerOnBoard: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllDefensiveJammerDefClick(Sender: TObject);
    procedure lbAllDefensveJammerOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    {tidak ada editmoun}
    procedure btnCloseClick(Sender: TObject);

  private
  FAllDefensiveJammerDefList : TList;
    FAllDefensiveJammerOnBoardList : TList;

    FSelectedVehicle : TVehicle_Definition;
    FSelectedDefensiveJammer : TDefensive_Jammer_On_Board;

    function CekInput: Boolean;
    procedure UpdateDefensiveJammerList;

  public
    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
  end;

var
  frmDefensiveJammerPickList: TfrmDefensiveJammerPickList;

implementation

uses
  uDataModuleTTT, ufrmSummarySelfDefensiveJammer;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmDefensiveJammerPickList.FormCreate(Sender: TObject);
begin
  FAllDefensiveJammerDefList := TList.Create;
  FAllDefensiveJammerOnBoardList := TList.Create;
end;

procedure TfrmDefensiveJammerPickList.FormShow(Sender: TObject);
begin
  UpdateDefensiveJammerList;
end;

 {$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmDefensiveJammerPickList.btnAddClick(Sender: TObject);
begin
  if lbAllDefensiveJammerDef.ItemIndex = -1 then
    Exit;

  with FSelectedDefensiveJammer do
  begin
    FData.Instance_Identifier := FDefensiveJammer_Def.
      Defensive_Jammer_Identifier;
    FData.Instance_Type := 0;
    FData.Vehicle_Index := FSelectedVehicle.FData.Vehicle_Index;
    FData.Defensive_Jammer_Index := FDefensiveJammer_Def.Defensive_Jammer_Index;

    if FData.Defensive_Jammer_Instance_Index = 0 then
      dmTTT.InsertSelfDefensiveJammerOnBoard(FData)
    else
      dmTTT.UpdateSelfDefensiveJammerOnBoard(FData);
  end;

  UpdateDefensiveJammerList;
end;

procedure TfrmDefensiveJammerPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllDefensveJammerOnBoard.ItemIndex = -1 then
    Exit;

  with FSelectedDefensiveJammer.FData do
    dmTTT.DeleteSelfDefensiveJammerOnBoard(2, Defensive_Jammer_Instance_Index);

  UpdateDefensiveJammerList;
end;

function TfrmDefensiveJammerPickList.CekInput: Boolean;
begin
  Result := False;

  {Jika Mount Name sudah ada}
  if dmTTT.GetSelfDefensiveJammerOnBoardCount(FSelectedVehicle.FData.Vehicle_Index, FSelectedDefensiveJammer.FDefensiveJammer_Def.Defensive_Jammer_Identifier) then
  begin
    {Jika inputan baru}
    if FSelectedDefensiveJammer.FData.Defensive_Jammer_Instance_Index = 0 then
    begin
      ShowMessage('Duplicate Defensive Jammer!' + Char(13) + 'Choose another Defensive Jammer to continue.');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmDefensiveJammerPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDefensiveJammerPickList.lbAllDefensiveJammerDefClick(Sender: TObject);
begin
  if lbAllDefensiveJammerDef.ItemIndex = -1 then
    Exit;
  FSelectedDefensiveJammer := TDefensive_Jammer_On_Board(lbAllDefensiveJammerDef.Items.Objects[lbAllDefensiveJammerDef.ItemIndex]);
end;

procedure TfrmDefensiveJammerPickList.lbAllDefensveJammerOnBoardClick(Sender: TObject);
begin
  if lbAllDefensveJammerOnBoard.ItemIndex = -1 then
    Exit;
  FSelectedDefensiveJammer := TDefensive_Jammer_On_Board(lbAllDefensveJammerOnBoard.Items.Objects[lbAllDefensveJammerOnBoard.ItemIndex]);
end;

procedure TfrmDefensiveJammerPickList.UpdateDefensiveJammerList;
var
  i : Integer;
  definsivejammer : TDefensive_Jammer_On_Board;
begin
  lbAllDefensiveJammerDef.Items.Clear;
  lbAllDefensveJammerOnBoard.Items.Clear;

  dmTTT.GetAllSelfDefensiveJammerDef(FAllDefensiveJammerDefList);
  dmTTT.GetSelfDefensiveJammerOnBoard(FSelectedVehicle.FData.Vehicle_Index,FAllDefensiveJammerOnBoardList);

  for i := 0 to FAllDefensiveJammerDefList.Count - 1 do
  begin
    definsivejammer := FAllDefensiveJammerDefList.Items[i];
    lbAllDefensiveJammerDef.Items.AddObject(definsivejammer.FDefensiveJammer_Def.Defensive_Jammer_Identifier, definsivejammer);
  end;

  for i := 0 to FAllDefensiveJammerOnBoardList.Count - 1 do
  begin
    definsivejammer := FAllDefensiveJammerOnBoardList.Items[i];
    lbAllDefensveJammerOnBoard.Items.AddObject(definsivejammer.FData.Instance_Identifier, definsivejammer);
  end;
end;

{$ENDREGION}

end.
