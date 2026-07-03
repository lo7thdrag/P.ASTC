unit ufrmSummaryStudentRole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, Vcl.Imaging.pngimage,
  Vcl.ComCtrls;

type
  TfrmSummaryStudentRole = class(TForm)
    pnl1Title: TPanel;
    Label1: TLabel;
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

    procedure edtNameKeyPress(Sender: TObject; var Key: Char);

    procedure btnEditListClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    FSelectedStudentRoleList : TStudent_Role_List;
    FLastName : string;

    function CekInput: Boolean;
  public
    IdAction : Integer; {0: none, 1: new, 2:edit}

    property SelectedStudentRoleList : TStudent_Role_List
      read FSelectedStudentRoleList write FSelectedStudentRoleList;
  end;

var
  frmSummaryStudentRole: TfrmSummaryStudentRole;

implementation

uses
  uDataModuleTTT, ufrmStudentRolePickList, ufrmEditStudentRoleList, ufDBEDitor,
  uOtherSingleList;

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

procedure TfrmSummaryStudentRole.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

procedure TfrmSummaryStudentRole.FormShow(Sender: TObject);
begin
  with FSelectedStudentRoleList.FData do
  begin
    if Role_List_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := FSelectedStudentRoleList.FData.Role_List_Identifier;

    btnEditList.Enabled := Role_List_Index <> 0;
  end;

  btnApply.Enabled := False;
  if IdAction = 2 then
    FLastName := edtName.Text;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummaryStudentRole.btnEditListClick(Sender: TObject);
begin
  frmEditStudentRoleList := TfrmEditStudentRoleList.Create(Self);
  try
    with frmEditStudentRoleList do
    begin
      SelectedStudentRole := FSelectedStudentRoleList;
      ShowModal;
    end;
  finally
    frmEditStudentRoleList.Free;
  end;
end;

procedure TfrmSummaryStudentRole.btnApplyClick(Sender: TObject);
begin
  if not CekInput then
    Exit;
  with FSelectedStudentRoleList do
  begin
    FData.Role_List_Identifier := edtName.Text;

    if FData.Role_List_Index = 0 then
      dmTTT.InsertStudentRoleList(FData)
    else
      dmTTT.UpdateStudentRoleList(FData);

    btnEditList.Enabled := FData.Role_List_Index <> 0;
  end;

  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummaryStudentRole.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmSummaryStudentRole.btnCancelClick(Sender: TObject);
begin
  IdAction := 0;
  Close;
end;

function TfrmSummaryStudentRole.CekInput: Boolean;
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
  if (dmTTT.GetStudentRoleList(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedStudentRoleList.FData.Role_List_Index = 0 then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end
    else if FLastName <> edtName.Text then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmSummaryStudentRole.edtNameChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummaryStudentRole.edtNameKeyPress(Sender: TObject;var Key: Char);
begin
  btnApply.Enabled := True;
end;

{$ENDREGION}

end.
