unit ufrmResourceAllocationInputName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBAssetObject, newClassASTT, uDBAsset_Vehicle,
  uDBAsset_Weapon, ExtCtrls, Vcl.Imaging.pngimage;

type
  E_InputNameCaller = (incVehicle, incEmbark);

  TfrmResourceAllocationInputName = class(TForm)
    pnl2ControlPage: TPanel;
    pnlPlatformInstance: TPanel;
    lblName: TLabel;
    lblTrackID: TLabel;
    cbbName: TComboBox;
    edtTrackId: TEdit;
    pnl3Button: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    pnlMainBackground: TPanel;
    imgBackground: TImage;

    procedure FormShow(Sender: TObject);

    procedure cbbNameChange(Sender: TObject);

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    FResourceAllocation : TResource_Allocation;
    FVehicle : TVehicle_Definition;
    FPlatformInstance : TPlatform_Instance;
    FForce : Integer;

    FSelectedPIIdent : TPlatform_Instance_Identifier;

    function CekInput: Boolean;
    procedure UpdatePlatformIstanceData;

  public
    isUpdate : Boolean;
    LastName, LastTrackID : string;

    property ResourceAllocation : TResource_Allocation read FResourceAllocation write FResourceAllocation;
    property Vehicle : TVehicle_Definition read FVehicle write FVehicle;
    property PlatformInstance : TPlatform_Instance read FPlatformInstance write FPlatformInstance;
    property Force : Integer read FForce write FForce;

  end;

var
  frmResourceAllocationInputName: TfrmResourceAllocationInputName;

implementation

uses
  uDataModuleTTT, ufrmResorceAllocationPickList, ufrmVehicleResourceAllocationPickList;

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

procedure TfrmResourceAllocationInputName.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

procedure TfrmResourceAllocationInputName.FormShow(Sender: TObject);
begin
  isUpdate := False;
  UpdatePlatformIstanceData;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmResourceAllocationInputName.btnOkClick(Sender: TObject);
var
  i : Integer;
  platInst : TPlatform_Instance;
begin
  if not CekInput then
  begin
    Exit;
  end;

  with FPlatformInstance do
  begin
    FData.Resource_Alloc_Index := FResourceAllocation.FData.Resource_Alloc_Index;
    FData.Platform_Type := 1;
    FData.Vehicle_Index := FVehicle.FData.Vehicle_Index;
    FData.Instance_Name := cbbName.Text;
    FData.Force_Designation := FForce;
    FData.Track_ID := edtTrackId.Text;

    if FData.Platform_Instance_Index = 0 then
      dmTTT.InsertPlatformInstance(FData)
    else
      dmTTT.UpdatePlatformInstance(FData);
  end;

  isUpdate := True;

  frmVehicleResourceAllocationPickList.UpdateVehicleList;
//  Close;
end;

procedure TfrmResourceAllocationInputName.btnCancelClick(Sender: TObject);
begin
  isUpdate := False;
  Close;
end;

procedure TfrmResourceAllocationInputName.cbbNameChange(Sender: TObject);
begin
  FSelectedPIIdent := TPlatform_Instance_Identifier(cbbName.Items.Objects[cbbName.ItemIndex]);
end;

procedure TfrmResourceAllocationInputName.UpdatePlatformIstanceData;
var
  i, tempIndex : Integer;
  piIdentList : TList;
  piIdent : TPlatform_Instance_Identifier;
begin
  tempIndex := -1;
  cbbName.Enabled := False;
  piIdentList := TList.Create;

  with FPlatformInstance.FData do
  begin
    {Digunakan saat add}
    if Vehicle_Index = 0 then
    begin
      dmTTT.GetPlatformInstanceIdentifier(FVehicle.FData.Vehicle_Index, piIdentList);
      LastName := '';
      LastTrackID := '';
      cbbName.Enabled := True;
    end
    {Digunakan saat edit}
    else
    begin
      dmTTT.GetPlatformInstanceIdentifier(FPlatformInstance.FData.Vehicle_Index, piIdentList);
      LastName := FPlatformInstance.FData.Instance_Name;
      LastTrackID := FPlatformInstance.FData.Track_ID;
    end;
  end;

  {Set Posisi cbb index}
  if piIdentList.Count > 0 then
    tempIndex := 0;

  {Mengisi Nilai Combobox}
  cbbName.Items.Clear;
  for i := 0 to piIdentList.Count - 1 do
  begin
    piIdent := piIdentList.Items[i];
    cbbName.Items.AddObject(piIdent.FData.Instance_Identifier, piIdent);

    if piIdent.FData.Instance_Identifier = LastName then
      tempIndex := i;
  end;

  cbbName.ItemIndex := tempIndex;
  edtTrackId.Text := LastTrackID;

  piIdentList.Free;
end;

function TfrmResourceAllocationInputName.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  if cbbName.ItemIndex = -1 then
  begin
    ShowMessage('Anda belum memilih platform');
    Exit;
  end;

  if edtTrackId.Text = '' then
  begin
    ShowMessage('Silahkan masukkan Track ID');
    Exit;
  end;

  {Jika berisi spasi semua}
  if Copy(edtTrackId.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtTrackId.Text);
    numSpace := 0;

    for i := 1 to chkSpace do
    begin
      if edtTrackId.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;

    if chkSpace = numSpace then
    begin
      ShowMessage('Silahkan masukkan Track ID');
      Exit;
    end;
  end;

  {Jika Platform Instance sudah digunakan}
  if (dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 1, 1, cbbName.Text)>0) then
  begin
    {Jika inputan baru}
    if FPlatformInstance.FData.Vehicle_Index = 0  then
    begin
      ShowMessage('Platform sudah digunakan');
      Exit;
    end
    else if LastName <> cbbName.Text then
    begin
      ShowMessage('Platform sudah digunakan');
      Exit;
    end;
  end;

  {Jika Track Id sudah digunakan}
  if (dmTTT.GetPlatformInstance(FResourceAllocation.FData.Resource_Alloc_Index, 1, 2, edtTrackId.Text)>0) then
  begin
    {Jika inputan baru}
    if FPlatformInstance.FData.Vehicle_Index = 0  then
    begin
      ShowMessage('Track Id sudah digunakan, silahkan gunakan Track ID lain');
      Exit;
    end
    else if LastTrackID <> edtTrackId.Text then
    begin
      ShowMessage('Track Id sudah digunakan, silahkan gunakan Track ID lain');
      Exit;
    end;
  end;

  Result := True
end;

{$ENDREGION}



end.
