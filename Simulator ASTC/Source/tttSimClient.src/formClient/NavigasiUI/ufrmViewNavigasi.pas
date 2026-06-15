unit ufrmViewNavigasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn;

type
  TfrmViewNavigasi = class(TForm)
    btnFullScreen: TRzBmpButton;
    btnRotateScreen: TRzBmpButton;
    btnToteDisplay: TRzBmpButton;
    btnWindowedScreen: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewNavigasi: TfrmViewNavigasi;

implementation

{$R *.dfm}

end.
