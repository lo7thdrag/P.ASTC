unit uAddMember;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ufrmCubicleGroupAllocation, Grids, ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TAddMemberForm = class(TForm)
    Label1: TLabel;
    MemberName: TEdit;
    btOk: TButton;
    btCancel: TButton;
    verLabel: TLabel;
    pnlMainBackground: TPanel;
    imgBackground: TImage;
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    name: String;
  end;

var
  AddMemberForm: TAddMemberForm;

implementation

uses
  ComCtrls;

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

procedure TAddMemberForm.btCancelClick(Sender: TObject);
begin
  MemberName.Text := '';
  verLabel.Caption := '';
  Self.Close;
end;

procedure TAddMemberForm.btOkClick(Sender: TObject);
var
Li: TListItem;
count: integer;
begin
  if(MemberName.Text <> '')
  then
  begin
    count := frmCubicleGroupAllocation.lstMembers.Items.Count;
    Li := frmCubicleGroupAllocation.lstMembers.Items.Add;
    Li.Caption := IntToStr(count);
    Li.SubItems.Add(MemberName.Text);
    MemberName.Text := '';
    Self.Close;
  end
  else
    verLabel.Caption := 'This field is empty' ;
end;

procedure TAddMemberForm.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

end.
