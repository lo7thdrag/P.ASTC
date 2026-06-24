unit ufrmTop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzBmpBtn, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmTop = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    lblShipName: TLabel;
    img1: TImage;
    lblDate: TLabel;
    lblLong: TLabel;
    tmr2: TTimer;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    lblLMT: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    lblTime: TLabel;
    Label2: TLabel;
    lblASTC: TLabel;
    lblLat: TLabel;
    lbl1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTop: TfrmTop;

implementation

uses
  ufTacticalDisplay, ufrmRight;

{$R *.dfm}


procedure TfrmTop.Timer1Timer(Sender: TObject);
begin
  lblTime.Caption := FormatDateTime('hh:nn:ss', Now);
end;

procedure TfrmTop.tmr2Timer(Sender: TObject);
begin
  lblDate.Caption := FormatDateTime('dddd, dd mmmm yyyy', Now);
end;

end.
