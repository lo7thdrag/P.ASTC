unit uAddExCompChannel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TAddExCompChannelForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MemberName: TEdit;
    ChannelName: TEdit;
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
  end;

var
  AddExCompChannelForm: TAddExCompChannelForm;

implementation

uses
  ComCtrls, ufrmCubicleGroupAllocation;

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

procedure TAddExCompChannelForm.btCancelClick(Sender: TObject);
begin
  verLabel.Caption := '';
  MemberName.Text := '';
  ChannelName.Text := '';
  Self.Close;
end;

procedure TAddExCompChannelForm.btOkClick(Sender: TObject);
var
Li: TListItem;
count: integer;
begin
  if((MemberName.Text <> '') and (ChannelName.Text <> ''))
  then
  begin
    count := frmCubicleGroupAllocation.lstExternallComm.Items.Count;
    Li := frmCubicleGroupAllocation.lstExternallComm.Items.Add;
    Li.Caption := IntToStr(count);
    Li.SubItems.Add(MemberName.Text);
    Li.SubItems.Add(ChannelName.Text);
    //clear Field
    MemberName.Text := '';
    ChannelName.Text := '';
    Self.Close;
  end
  else
    verLabel.Caption := 'There are empty field, please insert first';
end;

procedure TAddExCompChannelForm.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

end.
