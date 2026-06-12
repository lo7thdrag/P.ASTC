unit ufrmSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmSetting = class(TForm)
    pnlMainBackground: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    imgBackground: TImage;
    cbbSetting: TComboBox;
    lblRole: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetting: TfrmSetting;

implementation

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

procedure TfrmSetting.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSetting.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

end.
