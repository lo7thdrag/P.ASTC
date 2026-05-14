unit ufrmStudentRolePickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, Vcl.Imaging.pngimage;

type
  TfrmStudentRolePickList = class(TForm)
    pnl2ControlPage: TPanel;
    lbAllStudent: TListBox;
    pnl3Button: TPanel;
    btnCancel: TButton;
    btnAdd: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllStudentClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FPickedStudenRoleId : Integer;

    FStudentRoleList : TList;
    FSelectedStudenRole : TStudent_Role_List;

    procedure UpdateStudenRoleList;
  public
    property PickedStudenRoleId : Integer read FPickedStudenRoleId
      write FPickedStudenRoleId;
  end;

var
  frmStudentRolePickList  : TfrmStudentRolePickList;


implementation

uses
  uDataModuleTTT, ufrmStudentRoleSummary, ufrmSummaryResourceAllocation, ufrmAvailableResourceAllocation,
  ufrmUsage;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmStudentRolePickList.FormCreate(Sender: TObject);
begin
  FStudentRoleList := TList.Create;
end;

procedure TfrmStudentRolePickList.FormShow(Sender: TObject);
begin
  UpdateStudenRoleList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmStudentRolePickList.btnAddClick(Sender: TObject);
begin
  if lbAllStudent.ItemIndex = -1 then
    Exit;

  FPickedStudenRoleId := FSelectedStudenRole.FData.Role_List_Index;
  Close;
end;

procedure TfrmStudentRolePickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmStudentRolePickList.lbAllStudentClick(Sender: TObject);
begin
  if lbAllStudent.ItemIndex = -1 then
    Exit;

  FSelectedStudenRole := TStudent_Role_List(lbAllStudent.Items.Objects[lbAllStudent.ItemIndex]);
end;

procedure TfrmStudentRolePickList.UpdateStudenRoleList;
var
  roleList : TStudent_Role_List;
var
  i : Integer;
  studenRole : TStudent_Role_List;
begin
  lbAllStudent.Items.Clear;


  dmTTT.GetStudent_Role_List(0, FStudentRoleList, roleList);

  for i := 0 to FStudentRoleList.Count - 1 do
  begin
    studenRole := FStudentRoleList.Items[i];


      lbAllStudent.Items.AddObject(
        studenRole.FData.Role_List_Identifier, studenRole);
  end;
end;

{$ENDREGION}

end.
