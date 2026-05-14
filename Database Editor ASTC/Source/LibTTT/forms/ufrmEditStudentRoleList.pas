unit ufrmEditStudentRoleList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, Vcl.Imaging.pngimage;

type
  TfrmEditStudentRoleList = class(TForm)
    pnlMainBackground: TPanel;
    pnl2ControlPage: TPanel;
    pnl3Button: TPanel;
    btnApply: TButton;
    Button2: TButton;
    Button3: TButton;
    btnAdd: TButton;
    btnRemove: TButton;
    edtStudent: TEdit;
    lbl1: TLabel;
    lbStudent: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure edtStudentKeyPress(Sender: TObject; var Key: Char);
    procedure lbStudentClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedStudentRole : TStudent_Role_List;

    FRoleDefList : TList;
    FSelectedStudentRoleDef : TStudent_Role_Definition;

    procedure UpdateStudentRoleList;
  public
    property SelectedStudentRole : TStudent_Role_List read FSelectedStudentRole
      write FSelectedStudentRole;
  end;

var
  frmEditStudentRoleList: TfrmEditStudentRoleList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmEditStudentRoleList.FormCreate(Sender: TObject);
begin
  FRoleDefList := TList.Create;
end;

procedure TfrmEditStudentRoleList.FormShow(Sender: TObject);
begin
  Caption := FSelectedStudentRole.FData.Role_List_Identifier;

  UpdateStudentRoleList;

//  btnAdd.Enabled := False;
//  btnRemove.Enabled := False;
  btnApply.Enabled := False;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmEditStudentRoleList.btnAddClick(Sender: TObject);
var
  roleDef : TStudent_Role_Definition;
begin
  if edtStudent.Text = '' then
    Exit;

  roleDef := TStudent_Role_Definition.Create;

  with roleDef do
  begin
    FData.Role_Identifier := edtStudent.Text;
    FData.Role_List_Index := FSelectedStudentRole.FData.Role_List_Index;

    dmTTT.InsertStudentRoleDef(FData);
  end;

  roleDef.Free;

  UpdateStudentRoleList;
  btnAdd.Enabled := False;
  btnApply.Enabled := False;
end;

procedure TfrmEditStudentRoleList.btnApplyClick(Sender: TObject);
var
  i : Integer;
  roleDef : TStudent_Role_Definition;
begin
  with FSelectedStudentRoleDef do
  begin
    FData.Role_Identifier := edtStudent.Text;

    dmTTT.UpdateStudentRoleDef(FData);
  end;

  UpdateStudentRoleList;
  btnAdd.Enabled := False;
  btnApply.Enabled := False;
end;

procedure TfrmEditStudentRoleList.btnRemoveClick(Sender: TObject);
begin
  if lbStudent.ItemIndex = -1 then
    Exit;

  with FSelectedStudentRoleDef.FData do
    dmTTT.DeleteStudentRoleDef(2, Student_Role_Index);

  UpdateStudentRoleList;
  btnRemove.Enabled := False;
  btnApply.Enabled := False;
end;

procedure TfrmEditStudentRoleList.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfrmEditStudentRoleList.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditStudentRoleList.edtStudentKeyPress(Sender: TObject; var Key: Char);
begin
  btnAdd.Enabled := True;
end;

procedure TfrmEditStudentRoleList.lbStudentClick(Sender: TObject);
begin
  if lbStudent.ItemIndex = -1 then
  begin
    btnRemove.Enabled := True;
    btnApply.Enabled := True;
  end else begin

    FSelectedStudentRoleDef := TStudent_Role_Definition(
      lbStudent.Items.Objects[lbStudent.ItemIndex]);

    edtStudent.Text := FSelectedStudentRoleDef.FData.Role_Identifier;

    btnRemove.Enabled := True;
    btnApply.Enabled := True;
  end;
end;

procedure TfrmEditStudentRoleList.UpdateStudentRoleList;
var
  i : Integer;
  roleDef : TStudent_Role_Definition;
begin
  edtStudent.Text := '';

  lbStudent.Items.Clear;

  dmTTT.GetStudentRoleDef(FSelectedStudentRole.FData.Role_List_Index,
    FRoleDefList);

  for i := 0 to FRoleDefList.Count - 1 do
  begin
    roleDef := FRoleDefList.Items[i];
    lbStudent.Items.AddObject(roleDef.FData.Role_Identifier, roleDef);
  end;
end;

{$ENDREGION}

end.
