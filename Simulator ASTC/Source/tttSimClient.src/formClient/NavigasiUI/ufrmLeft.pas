unit ufrmLeft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzBmpBtn,
  Vcl.Imaging.pngimage, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VrControls, VrWheel, Vcl.StdCtrls, Vcl.ComCtrls,
  VrMeter, AdvSmoothLabel;

type
  TfrmLeft = class(TForm)
    pnlContent: TPanel;
    pnlNavigationBar: TPanel;
    lblTittle: TLabel;
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblLat: TLabel;
    lblLong: TLabel;
    lblHeading: TLabel;
    lblSpeed: TLabel;
    Panel1: TPanel;
    lblTittle1: TLabel;
    vrwhlWindDirec: TVrWheel;
    pnlTemp: TPanel;
    Label13: TLabel;
    tbTemp: TTrackBar;
    advsmthlbl5: TAdvSmoothLabel;
    edtWaterTemp: TEdit;
    AdvSmoothLabel1: TAdvSmoothLabel;
    tbSeaState: TTrackBar;
    edtSeaState: TEdit;
    Label11: TLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    edtWindDirec: TEdit;
    vrmSpeedWind: TVrMeter;
    AdvSmoothLabel4: TAdvSmoothLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeft: TfrmLeft;

implementation

{$R *.dfm}

end.
