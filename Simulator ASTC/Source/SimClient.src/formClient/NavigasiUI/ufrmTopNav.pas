unit ufrmTopNav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzBmpBtn, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, System.DateUtils;

type
  TfrmTopNav = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    lblName: TLabel;
    img1: TImage;
    lblDate: TLabel;
    lblLat1: TLabel;
    tmr2: TTimer;
    Label2: TLabel;
    lblclass: TLabel;
    lblLong1: TLabel;
    lbl1: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    lblTrackID: TLabel;
    le: TBevel;
    Bevel3: TBevel;
    Label4: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    lblTime: TLabel;
    Bevel5: TBevel;
    Label7: TLabel;
    lblLMT: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tmrUTC: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure tmrUTCTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTopNav: TfrmTopNav;

implementation

uses
  ufTacticalDisplay, ufrmRightNav;

{$R *.dfm}


procedure TfrmTopNav.Timer1Timer(Sender: TObject);
begin
  lblLMT.Caption := FormatDateTime('hh:nn:ss', Now);
end;

procedure TfrmTopNav.tmr2Timer(Sender: TObject);
begin
  lblDate.Caption := FormatDateTime('dddd, dd mmmm yyyy', Now);
end;

procedure TfrmTopNav.tmrUTCTimer(Sender: TObject);
var
  WaktuUTC: TDateTime;
begin
  WaktuUTC := TTimeZone.Local.ToUniversalTime(Now);
  lblTime.Caption := FormatDateTime('HH:nn:ss', WaktuUTC);
end;

end.
