unit ufrmDefensiveJammerPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_Vehicle, uDBAsset_Countermeasure,
  Vcl.Imaging.pngimage;

type
  TfrmDefensiveJammerPickList = class(TForm)
    pnlMain: TPanel;
    btnAdd: TButton;
    btnEditMount: TButton;
    btnRemove: TButton;
    lbAllDefensiveJammerDef: TListBox;
    lbAllDefensveJammerOnBoard: TListBox;
    btnClose: TButton;
    edtSearch: TEdit;
    lbl1: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    imgBackground: TImage;
    pnlMainBackground: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllDefensiveJammerDefClick(Sender: TObject);
    procedure lbAllDefensveJammerOnBoardClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    {tidak ada editmoun}
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);

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
  uDataModuleTTT, ufrmSummarySelfDefensiveJammer, uSimContainers;

{$R *.dfm}

procedure EnableComposited(WinControl:TWinControl);
var
  i:Integer;
  NewExStyle:DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for I := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

{$REGION ' Form Handle '}

procedure TfrmDefensiveJammerPickList.FormCreate(Sender: TObject);
begin
  FAllDefensiveJammerDefList     := TList.Create;
  FAllDefensiveJammerOnBoardList := TList.Create;

  EnableComposited(pnlMainBackground);
end;

procedure TfrmDefensiveJammerPickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FAllDefensiveJammerDefList);
  FreeItemsAndFreeList(FAllDefensiveJammerOnBoardList);

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
    FData.Instance_Identifier := FDefensiveJammer_Def.Defensive_Jammer_Identifier;
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

procedure TfrmDefensiveJammerPickList.edtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    UpdateDefensiveJammerList;
  end;

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
  i, j : Integer;
  definsivejammer, definsivejammerOnboard  : TDefensive_Jammer_On_Board;
  found : Boolean;
begin
  lbAllDefensiveJammerDef.Items.Clear;
  lbAllDefensveJammerOnBoard.Items.Clear;

  dmTTT.GetFilterSelfDefensiveJammerDef(FAllDefensiveJammerDefList, edtSearch.Text);
  dmTTT.GetSelfDefensiveJammerOnBoard(FSelectedVehicle.FData.Vehicle_Index,FAllDefensiveJammerOnBoardList);

  for i := 0 to FAllDefensiveJammerDefList.Count - 1 do
  begin
    definsivejammer := FAllDefensiveJammerDefList.Items[i];

    found := False;
    for j := 0 to FAllDefensiveJammerOnBoardList.Count - 1 do
    begin
      definsivejammerOnboard := FAllDefensiveJammerOnBoardList.Items[j];

      if definsivejammerOnboard.FDefensiveJammer_Def.Defensive_Jammer_Index = definsivejammer.FDefensiveJammer_Def.Defensive_Jammer_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllDefensveJammerOnBoard.Items.AddObject(definsivejammerOnboard.FDefensiveJammer_Def.Defensive_Jammer_Identifier, definsivejammer)
    else
      lbAllDefensiveJammerDef.Items.AddObject(definsivejammer.FDefensiveJammer_Def.Defensive_Jammer_Identifier, definsivejammer);
  end;

end;

{$ENDREGION}

end.
