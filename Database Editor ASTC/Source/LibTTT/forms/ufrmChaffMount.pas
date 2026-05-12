unit ufrmChaffMount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, uDBAsset_Vehicle,
  uDBAsset_Countermeasure, Vcl.Imaging.pngimage;

type
  TfrmChaffMountForm = class(TForm)
    PageControl1: TPageControl;
    General: TTabSheet;
    lblClass: TLabel;
    edtClass: TEdit;
    txtQuantity: TStaticText;
    edtQuantity: TEdit;
    pnlMainBackground: TPanel;
    pnl2ControlPage: TPanel;
    pnlSparatorHor1: TPanel;
    pnl1Title: TPanel;
    txtClass: TLabel;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    pnlSparatorHor2: TPanel;
    cbbName: TComboBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedVehicle : TVehicle_Definition;
    FSelectedChaff : TChaff_On_Board;

    function CekInput: Boolean;
    procedure UpdateChaffData;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    LastName : string;

    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
    property SelectedChaff : TChaff_On_Board read FSelectedChaff write FSelectedChaff;
  end;

var
  frmChaffMountForm: TfrmChaffMountForm;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmChaffMountForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmChaffMountForm.FormShow(Sender: TObject);
begin
  UpdateChaffData;

  with FSelectedChaff.FData do
    btnApply.Enabled := Chaff_Instance_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmChaffMountForm.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmChaffMountForm.btnApplyClick(Sender: TObject);
begin
  with FSelectedChaff do
  begin
    LastName := edtClass.Text;
    FData.Instance_Identifier := cbbName.Text;
    FData.Instance_Type := cbbName.ItemIndex;
    FData.Chaff_Qty_On_Board := StrToInt(edtQuantity.Text);
    FData.Vehicle_Index := SelectedVehicle.FData.Vehicle_Index;
    FData.Chaff_Index := FChaff_Def.Chaff_Index;

    if FData.Chaff_Instance_Index = 0 then
      dmTTT.InsertChaffOnBoard(FData)
    else
      dmTTT.UpdateChaffOnBoard(FData);
  end;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmChaffMountForm.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

function TfrmChaffMountForm.CekInput: Boolean;
begin
  Result := False;

  {Jika Mount Name sudah ada}
  if dmTTT.GetChaffOnBoardCount(FSelectedVehicle.FData.Vehicle_Index, edtClass.Text) then
  begin
    {Jika inputan baru}
    if FSelectedChaff.FData.Chaff_Instance_Index = 0 then
    begin
      ShowMessage('Duplicate Chaff!' + Char(13) + 'Choose different Chaff to continue.');
      Exit;
    end
    else if LastName <> edtClass.Text then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmChaffMountForm.UpdateChaffData;
begin
  with FSelectedChaff do
  begin
    if FData.Chaff_Instance_Index = 0 then
      cbbName.ItemIndex := -1
    else
      cbbName.ItemIndex := FData.Instance_Type;

      LastName := edtClass.Text;
    edtClass.Text := FChaff_Def.Chaff_Identifier;
    edtQuantity.Text := IntToStr(FData.Chaff_Qty_On_Board);
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmChaffMountForm.GetNumberOfKoma(s: string): Boolean;
var
  a, i : Integer;
begin
  Result := False;
  a := 0;

  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
      a := a + 1;
  end;

  if a > 0 then
    Result := True;
end;

procedure TfrmChaffMountForm.edtNumeralKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetNumberOfKoma(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if Key = #13 then
  begin
    if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    value := StrToFloat(TEdit(Sender).Text);

    case TEdit(Sender).Tag of
      0: TEdit(Sender).Text := FormatFloat('0', value);
      1: TEdit(Sender).Text := FormatFloat('0.0', value);
      2: TEdit(Sender).Text := FormatFloat('0.00', value);
      3: TEdit(Sender).Text := FormatFloat('0.000', value);
    end;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmChaffMountForm.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmChaffMountForm.ValidationFormatInput;
var
  i: Integer;
  value : Double;

begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TEdit then
    begin
      if TEdit(Components[i]).Tag = 4 then
        continue;

      if TEdit(Components[i]).Text = '' then
        TEdit(Components[i]).Text := '0';

      value := StrToFloat(TEdit(Components[i]).Text);

      case TEdit(Components[i]).Tag of
        0: TEdit(Components[i]).Text := FormatFloat('0', value);
        1: TEdit(Components[i]).Text := FormatFloat('0.0', value);
        2: TEdit(Components[i]).Text := FormatFloat('0.00', value);
        3: TEdit(Components[i]).Text := FormatFloat('0.000', value);
      end;
    end;
  end;
end;

{$ENDREGION}

end.
