unit ufrmStudentRoleSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, Vcl.Imaging.pngimage,
  Vcl.ComCtrls;

type
  TfrmStudentRoleSummary = class(TForm)
    pnl1Title: TPanel;
    Label1: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    btnEditList: TButton;
    pnl3Button: TPanel;
    pnlSparatorHor1: TPanel;
    Image2: TImage;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormShow(Sender: TObject);

    procedure edtNameKeyPress(Sender: TObject; var Key: Char);

    procedure btnEditListClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);

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
  frmStudentRoleSummary: TfrmStudentRoleSummary;

implementation

uses
  uDataModuleTTT, ufrmStudentRolePickList, ufrmEditStudentRoleList, ufDBEDitor,
  uOtherSingleList;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmStudentRoleSummary.FormShow(Sender: TObject);
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

procedure TfrmStudentRoleSummary.btnEditListClick(Sender: TObject);
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

procedure TfrmStudentRoleSummary.btnApplyClick(Sender: TObject);
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

procedure TfrmStudentRoleSummary.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmStudentRoleSummary.btnCancelClick(Sender: TObject);
begin
  IdAction := 0;
  Close;
end;

function TfrmStudentRoleSummary.CekInput: Boolean;
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

procedure TfrmStudentRoleSummary.edtNameChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmStudentRoleSummary.edtNameKeyPress(Sender: TObject;var Key: Char);
begin
  btnApply.Enabled := True;
end;

{$ENDREGION}

end.
