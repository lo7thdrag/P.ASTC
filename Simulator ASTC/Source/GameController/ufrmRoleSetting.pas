unit ufrmRoleSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls,

  uLibSettingTTT, ufMainGC;

type
  TfrmRoleSetting = class(TForm)
    pnlMainBackground: TPanel;
    imgBackground: TImage;
    cbbRole: TComboBox;
    lblRole: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRoleSetting: TfrmRoleSetting;

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

procedure TfrmRoleSetting.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRoleSetting.btnOKClick(Sender: TObject);
begin
  vGameDataSetting.Role := cbbRole.ItemIndex;
  SaveFF_GameSetting(vSettingFile, vGameDataSetting);
  frmMainGC.lblrole.Caption := cbbRole.Text;

  Close
end;

procedure TfrmRoleSetting.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

end.
