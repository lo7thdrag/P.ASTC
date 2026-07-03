unit ufrmSummarySnrVsPod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, newClassASTT, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmSummarySnrVsPod = class(TForm)
    pnl1Title: TPanel;
    lbl1: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    btnEditList: TButton;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;
    imgBackground: TImage;
    pnlMainBackground: TPanel;

    procedure FormShow(Sender: TObject);

    procedure btnEditListClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    FSelectedPODvsSNR : TPOD_vs_SNR_Curve_Definition;
    LastName : string;

    function CekInput: Boolean;
    procedure UpdatePODvsSNRCurveDefData;
  public
    IdAction : Integer; {0: none, 1: new, 2: edit}

    property SelectedPODvsSNR : TPOD_vs_SNR_Curve_Definition
      read FSelectedPODvsSNR write FSelectedPODvsSNR;
  end;

var
  frmSummarySnrVsPod: TfrmSummarySnrVsPod;

implementation

uses
  uDataModuleTTT, uProbabilityGraph;

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

procedure TfrmSummarySnrVsPod.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

procedure TfrmSummarySnrVsPod.FormShow(Sender: TObject);
begin
  UpdatePODvsSNRCurveDefData;

  with FSelectedPODvsSNR.FData do
    btnApply.Enabled := Curve_Definition_Index = 0;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummarySnrVsPod.btnApplyClick(Sender: TObject);
begin
  if not CekInput then
    Exit;

  with FSelectedPODvsSNR do
  begin
    FData.Curve_Definition_Identifier := edtName.Text;

    if FData.Curve_Definition_Index = 0 then
    begin
      if dmTTT.InsertPODvsSNRCurveDef(FData) then
      begin
        ShowMessage('Data berhasil disimpan');
      end;
    end
    else
    begin
      if dmTTT.UpdatePODvsSNRCurveDef(FData) then
      begin
        ShowMessage('Data berhasil diperbarui');
      end;
    end;
  end;

  UpdatePODvsSNRCurveDefData;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummarySnrVsPod.btnEditListClick(Sender: TObject);
begin
  fProbabilityGraph := TProbabilityGraph.Create(Self);
  try
    with fProbabilityGraph do
    begin
      ProbabilityGraph := pgSNRvsPOD;
      SelectedProbObj := FSelectedPODvsSNR;
      ShowModal;
    end;
  finally
    fProbabilityGraph.Free;
  end;

end;

procedure TfrmSummarySnrVsPod.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmSummarySnrVsPod.btnCancelClick(Sender: TObject);
begin
  IdAction := 0;
  Close;
end;

function TfrmSummarySnrVsPod.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;
  {Jika inputan class name kosong}
  if (edtName.Text = '') or (edtName.Text = ' ') then
  begin
    ShowMessage('Silahkan masukkan nama class');
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
      ShowMessage('Silahkan gunakan nama class lain');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetPODvsSNRCurveDef(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedPODvsSNR.FData.Curve_Definition_Index = 0 then
    begin
      ShowMessage('Silahkan gunakan nama class lain');
      Exit;
    end
    else if LastName <> edtName.Text then
    begin
      ShowMessage('Silahkan gunakan nama class lain');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmSummarySnrVsPod.edtNameChange(Sender: TObject);
begin
 btnApply.Enabled := True;
end;

procedure TfrmSummarySnrVsPod.UpdatePODvsSNRCurveDefData;
begin
  with FSelectedPODvsSNR.FData do
  begin
    if Curve_Definition_Index = 0 then
      edtName.Text := 'Unnamed'
    else
      edtName.Text := Curve_Definition_Identifier;

    btnEditList.Enabled := Curve_Definition_Index <> 0;
  end;
    LastName := edtName.Text;
end;

{$ENDREGION}

end.
