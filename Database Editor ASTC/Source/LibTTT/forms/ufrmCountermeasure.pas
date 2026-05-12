unit ufrmCountermeasure;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmCountermeasure = class(TForm)
    img1: TImage;
    pnlSparatorHor: TPanel;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCountermeasure: TfrmCountermeasure;

implementation

{$R *.dfm}

procedure TfrmCountermeasure.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

end.
