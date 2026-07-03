unit ufrmSummaryRadarInterval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, newClassASTT, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmSummaryRadarInterval = class(TForm)
    pnl1Title: TPanel;
    pnl2ControlPage: TPanel;
    pcScenarioTabs: TPageControl;
    tsGeneral: TTabSheet;
    pnl3Button: TPanel;
    edtName: TEdit;
    lblName: TStaticText;
    btnEditList: TButton;
    btnOK: TButton;
    btnApply: TButton;
    btnCancel: TButton;
    imgBackground: TImage;
    pnlMainBackground: TPanel;

    procedure FormShow(Sender: TObject);

    procedure btnEditListClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);

  private
    FSelectedRadarInterval : TRadar_Interval_List;

    function CekInput: Boolean;
    procedure UpdateRadarActivationIntervalData;

  public
//    IdAction : Integer; {0: none, 1: new, 2: edit}
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;
    property SelectedRadarInterval : TRadar_Interval_List read FSelectedRadarInterval write FSelectedRadarInterval;
  end;

var
  frmSummaryRadarInterval: TfrmSummaryRadarInterval;

implementation

uses
  uDataModuleTTT, uRadarIntervalSetup;

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

procedure TfrmSummaryRadarInterval.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

procedure TfrmSummaryRadarInterval.FormShow(Sender: TObject);
begin
  UpdateRadarActivationIntervalData;

  with FSelectedRadarInterval.FData do
    btnApply.Enabled := Interval_List_Index = 0;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummaryRadarInterval.btnApplyClick(Sender: TObject);
begin
  if not CekInput then
    Exit;

  with FSelectedRadarInterval do
  begin
    FData.Interval_List_Identifier := edtName.Text;

    if FData.Interval_List_Index = 0 then
      dmTTT.InsertRadarActivationIntervalDef(FData)
    else
      dmTTT.UpdateRadarActivationIntervalDef(FData);
  end;

  UpdateRadarActivationIntervalData;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummaryRadarInterval.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmSummaryRadarInterval.btnEditListClick(Sender: TObject);
begin
  fRadarIntervalSetup := TfRadarIntervalSetup.Create(Self);
  try
    with fRadarIntervalSetup do
    begin
      SelectedRadarInterval := FSelectedRadarInterval;
      ShowModal;
    end;
  finally
    fRadarIntervalSetup.Free;
  end;
end;

procedure TfrmSummaryRadarInterval.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

function TfrmSummaryRadarInterval.CekInput: Boolean;
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
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetRadarActivationIntervalDef(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedRadarInterval.FData.Interval_List_Index = 0 then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end
    else if LastName <> edtName.Text then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmSummaryRadarInterval.edtNameKeyPress(Sender: TObject;var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummaryRadarInterval.UpdateRadarActivationIntervalData;
begin
  with FSelectedRadarInterval.FData do
  begin
    if Interval_List_Index = 0 then
      edtName.Text := 'Unnamed'
    else
      edtName.Text := Interval_List_Identifier;

    btnEditList.Enabled := Interval_List_Index <> 0;
  end;
    LastName := edtName.Text;
end;

{$ENDREGION}

end.
