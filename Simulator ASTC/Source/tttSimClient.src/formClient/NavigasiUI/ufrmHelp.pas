unit ufrmHelp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn,

  ufrmKeyboard;

type
  TfrmHelp = class(TForm)
    btnFullScreen: TRzBmpButton;
    btnKeyboard: TRzBmpButton;
    btnManualBook: TRzBmpButton;
    btnWindowedScreen: TRzBmpButton;
    procedure btnKeyboardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelp: TfrmHelp;

implementation

{$R *.dfm}

procedure TfrmHelp.btnKeyboardClick(Sender: TObject);
begin
  frmKeyboard.Show;
end;

end.
