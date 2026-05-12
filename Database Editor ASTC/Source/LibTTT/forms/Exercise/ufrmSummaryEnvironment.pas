unit ufrmSummaryEnvironment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, tttData, newClassASTT,
  uDBAsset_GameEnvironment, Vcl.Imaging.pngimage;

type
  TfrmSummaryEnvironment = class(TForm)
    pnl1Title: TPanel;
    txtClass: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    btnBrowseGameArea: TSpeedButton;
    lblArea: TStaticText;
    edtArea: TEdit;
    btnEditCharacteristics: TButton;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormShow(Sender: TObject);

    procedure edtChange(Sender: TObject);

    procedure btnBrowseGameAreaClick(Sender: TObject);
    procedure btnEditCharacteristicsClick(Sender: TObject);

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedEnvironment : TGame_Environment_Definition;

    function CekInput: Boolean;
    procedure UpdateEnvironmentData;
    procedure UpdateGameAreaData;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    property SelectedEnvironment : TGame_Environment_Definition
      read FSelectedEnvironment write FSelectedEnvironment;
  end;

var
  frmSummaryEnvironment: TfrmSummaryEnvironment;

implementation

uses
  uDataModuleTTT, ufrmGameAreaPickList, ufrmEnvironmentCharacteristic;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSummaryEnvironment.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateEnvironmentData;

  with FSelectedEnvironment.FData do
    btnApply.Enabled := Game_Enviro_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummaryEnvironment.btnOKClick(Sender: TObject);

begin
  if btnApply.Enabled then
    btnApplyClick(nil);

    Close;
end;

procedure TfrmSummaryEnvironment.btnApplyClick(Sender: TObject);
begin
  with FSelectedEnvironment do
  begin
    if not CekInput then
    begin
      isOK := False;
      Exit;
    end;

    LastName := edtName.Text;
    FData.Game_Enviro_Identifier := edtName.Text;

    if FData.Game_Enviro_Index = 0 then
    begin
      if dmTTT.InsertEnvironmentDef(FData) then
      begin
        FGlobal_Conv.Game_Enviro_Index := FData.Game_Enviro_Index;
        dmTTT.InsertGlobalConvergenceZone(FGlobal_Conv);

        ShowMessage('Data has been saved');
      end;
    end
    else
    begin
      if dmTTT.UpdateEnvironmentDef(FData) then
      begin
        dmTTT.UpdateGlobalConvergenceZone(FGlobal_Conv);
        ShowMessage('Data has been updated');
      end;
    end;
  end;

  UpdateEnvironmentData;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummaryEnvironment.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmSummaryEnvironment.btnBrowseGameAreaClick(Sender: TObject);
begin
  frmGameAreaPickList := TfrmGameAreaPickList.Create(Self);
  try
    with frmGameAreaPickList do
    begin
      SelectedGameAreaId := SelectedEnvironment.FData.Game_Area_Index;
      ShowModal;
      FSelectedEnvironment.FData.Game_Area_Index := SelectedGameAreaId;
    end;

  finally
    frmGameAreaPickList.Free;
  end;

  UpdateGameAreaData;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryEnvironment.btnEditCharacteristicsClick(Sender: TObject);
begin
  frmEnvironmentCharacteristic := TfrmEnvironmentCharacteristic.Create(Self);
  try
    with frmEnvironmentCharacteristic do
    begin
      SelectedEnvironment := FSelectedEnvironment;
      ShowModal;
    end;

  finally
    frmEnvironmentCharacteristic.Free;
  end;
 
  btnApply.Enabled := True;
end;

function TfrmSummaryEnvironment.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  {Jika inputan class name kosong}
  if (edtName.Text = '') or (edtName.Text = ' ') then
  begin
    ShowMessage('Please use another class name');
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
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetEnvironmentDef(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedEnvironment.FData.Game_Enviro_Index = 0 then
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

  if FSelectedEnvironment.FGameArea.Game_Area_Index = 0 then
  begin
    ShowMessage('Select Game Area for this Environment.');
    Exit;
  end;

  Result := True;
end;

procedure TfrmSummaryEnvironment.UpdateEnvironmentData;
begin
  with FSelectedEnvironment.FData do
  begin
    if Game_Enviro_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Game_Enviro_Identifier;

    LastName := edtName.Text;
    btnEditCharacteristics.Enabled := Game_Enviro_Index <> 0;

    UpdateGameAreaData;
  end;
end;

procedure TfrmSummaryEnvironment.UpdateGameAreaData;
begin
  with FSelectedEnvironment do
  begin
    dmTTT.GetGameAreaDef(FData.Game_Area_Index, FGameArea);

    if FGameArea.Game_Area_Index = 0 then
    begin
      edtArea.Text := '(None)';
      btnEditCharacteristics.Enabled := False;
    end
    else
    begin
      edtArea.Text := FSelectedEnvironment.FGameArea.Game_Area_Identifier;
    end;
  end;

  btnApply.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

procedure TfrmSummaryEnvironment.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

{$ENDREGION}

end.
