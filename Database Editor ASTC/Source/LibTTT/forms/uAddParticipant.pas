unit uAddParticipant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TAddParticipantForm = class(TForm)
    EParticipantName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EOctalPUC: TEdit;
    btOK: TButton;
    btCancel: TButton;
    verLabel: TLabel;
    pnlMainBackground: TPanel;
    imgBackground: TImage;
    procedure btCancelClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddParticipantForm: TAddParticipantForm;

implementation

uses
  ComCtrls, uLinkWindow;

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

procedure TAddParticipantForm.btCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TAddParticipantForm.btOKClick(Sender: TObject);
var
  Li: TListItem;
  count: Integer;
begin
  if (EParticipantName.Text <> '') and (EOctalPUC.Text <> '') then
    begin
    count := LinkWindowForm.lstParticipants.Items.Count;
    Li := LinkWindowForm.lstParticipants.Items.Add;
    Li.Caption := Self.EParticipantName.Text;
    Li.SubItems.Add(EOctalPUC.Text);
    end
  else
    verLabel.Caption := 'There are empty fields';

  Self.Close;
end;

procedure TAddParticipantForm.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

end.
