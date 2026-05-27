unit ufrmRuntimePlatformLibrarySummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_Runtime_Platform_Library,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmRuntimePlatformLibrarySummary = class(TForm)
    pnl1Title: TPanel;
    Label1: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    grbPlatforms: TGroupBox;
    btnVehicle: TButton;
    btnTorpedo: TButton;
    btnMine: TButton;
    btnMissile: TButton;
    btnSonobuoy: TButton;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormShow(Sender: TObject);
    procedure btnVehicleClick(Sender: TObject);
    procedure btnMissileClick(Sender: TObject);
    procedure btnTorpedoClick(Sender: TObject);
    procedure btnSonobuoyClick(Sender: TObject);
    procedure btnMineClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);

  private
    FSelectedRPL : TRuntime_Platform_Library;

    function CekInput: Boolean;
    procedure UpdateButtonState;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    property SelectedRPL : TRuntime_Platform_Library read FSelectedRPL write FSelectedRPL;
  end;

var
  frmRuntimePlatformLibrarySummary: TfrmRuntimePlatformLibrarySummary;

implementation

uses
  uDataModuleTTT, ufrmVehicleRuntimePlatformLibraryPickList, ufrmMissileRuntimePlatformLibraryPickList,
  ufrmTorpedoRuntimePlatformLibraryPickList, ufrmSonobuoyRuntimePlatformLibraryPickList,
  ufrmMineRuntimePlatformLibraryPickList;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmRuntimePlatformLibrarySummary.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateButtonState;

  with FSelectedRPL.FData do
    btnApply.Enabled := Platform_Library_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmRuntimePlatformLibrarySummary.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnApplyClick(Sender: TObject);
begin

  with FSelectedRPL do
  begin
    if not CekInput then
    begin
      isOK := False;
      Exit;
    end;

    LastName := edtName.Text;
    FData.Library_Name := edtName.Text;

    if FData.Platform_Library_Index = 0 then
      dmTTT.InsertRuntimePlatformLibraryDef(FData)
    else
      dmTTT.UpdateRuntimePlatformLibraryDef(FData);
  end;

  UpdateButtonState;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnVehicleClick(Sender: TObject);
begin
  frmVehicleRuntimePlatformLibraryPickList := TfrmVehicleRuntimePlatformLibraryPickList.Create(Self);
  try
    with frmVehicleRuntimePlatformLibraryPickList do
    begin
      RuntimePlatformLibrary := FSelectedRPL;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmVehicleRuntimePlatformLibraryPickList.Free;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnMissileClick(Sender: TObject);
begin
  frmMissileRuntimePlatformLibraryPickList := TfrmMissileRuntimePlatformLibraryPickList.Create(Self);
  try
    with frmMissileRuntimePlatformLibraryPickList do
    begin
      RuntimePlatformLibrary := FSelectedRPL;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmMissileRuntimePlatformLibraryPickList.Free;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnTorpedoClick(Sender: TObject);
begin
  frmTorpedoRuntimePlatformLibraryPickList := TfrmTorpedoRuntimePlatformLibraryPickList.Create(Self);
  try
    with frmTorpedoRuntimePlatformLibraryPickList do
    begin
      RuntimePlatformLibrary := FSelectedRPL;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmTorpedoRuntimePlatformLibraryPickList.Free;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnMineClick(Sender: TObject);
begin
  frmMineRuntimePlatformLibraryPickList := TfrmMineRuntimePlatformLibraryPickList.Create(Self);
  try
    with frmMineRuntimePlatformLibraryPickList do
    begin
      RuntimePlatformLibrary := FSelectedRPL;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmMineRuntimePlatformLibraryPickList.Free;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmRuntimePlatformLibrarySummary.btnSonobuoyClick(Sender: TObject);
begin
  frmSonobuoyRuntimePlatformLibraryPickList := TfrmSonobuoyRuntimePlatformLibraryPickList.Create(Self);
  try
    with frmSonobuoyRuntimePlatformLibraryPickList do
    begin
      RuntimePlatformLibrary := FSelectedRPL;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmSonobuoyRuntimePlatformLibraryPickList.Free;
  end;

  btnApply.Enabled := True;
end;

function TfrmRuntimePlatformLibrarySummary.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  {Jika inputan class name kosong}
  if (edtName.Text = '')then
  begin
    ShowMessage('Please insert class name');
    Exit;
  end;

  {Jika berisi spasi semua}
  if Copy(edtName.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtName.Text);
    numSpace := 0;

    for i := 1 to chkSpace do
    begin
      if edtName.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;

    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetRuntimePlatformLibraryDef(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedRPL.FData.Platform_Library_Index = 0 then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end
    else if LastName <> edtName.Text then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmRuntimePlatformLibrarySummary.edtNameChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmRuntimePlatformLibrarySummary.UpdateButtonState;
begin
  with FSelectedRPL.FData do
  begin
    if Platform_Library_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Library_Name ;

    LastName := edtName.Text;

    btnVehicle.Enabled := Platform_Library_Index <> 0;
    btnMissile.Enabled := Platform_Library_Index <> 0;
    btnTorpedo.Enabled := Platform_Library_Index <> 0;
    btnSonobuoy.Enabled := Platform_Library_Index <> 0;
    btnMine.Enabled := Platform_Library_Index <> 0;
  end;
end;

{$ENDREGION}

end.
