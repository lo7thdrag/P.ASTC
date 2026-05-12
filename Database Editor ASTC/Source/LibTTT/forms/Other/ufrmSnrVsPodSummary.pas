unit ufrmSnrVsPodSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, newClassASTT, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmSnrVsPodSummary = class(TForm)
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

    procedure FormShow(Sender: TObject);

    procedure btnEditListClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);

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
  frmSnrVsPodSummary: TfrmSnrVsPodSummary;

implementation

uses
  uDataModuleTTT, uProbabilityGraph;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSnrVsPodSummary.FormShow(Sender: TObject);
begin
  UpdatePODvsSNRCurveDefData;

  with FSelectedPODvsSNR.FData do
    btnApply.Enabled := Curve_Definition_Index = 0;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSnrVsPodSummary.btnApplyClick(Sender: TObject);
begin
  if not CekInput then
    Exit;

  with FSelectedPODvsSNR do
  begin
    FData.Curve_Definition_Identifier := edtName.Text;

    if FData.Curve_Definition_Index = 0 then
      dmTTT.InsertPODvsSNRCurveDef(FData)
    else
      dmTTT.UpdatePODvsSNRCurveDef(FData);
  end;

  UpdatePODvsSNRCurveDefData;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSnrVsPodSummary.btnEditListClick(Sender: TObject);
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

procedure TfrmSnrVsPodSummary.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmSnrVsPodSummary.btnCancelClick(Sender: TObject);
begin
  IdAction := 0;
  Close;
end;

function TfrmSnrVsPodSummary.CekInput: Boolean;
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
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetPODvsSNRCurveDef(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedPODvsSNR.FData.Curve_Definition_Index = 0 then
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

procedure TfrmSnrVsPodSummary.edtNameChange(Sender: TObject);
begin
 btnApply.Enabled := True;
end;

procedure TfrmSnrVsPodSummary.UpdatePODvsSNRCurveDefData;
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
