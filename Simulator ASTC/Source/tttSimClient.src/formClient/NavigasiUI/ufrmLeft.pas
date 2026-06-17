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
    pnlEnvironment: TPanel;
    pnlTemp: TPanel;
    Label13: TLabel;
    advsmthlbl5: TAdvSmoothLabel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    Label11: TLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    tbTemp: TTrackBar;
    edtWaterTemp: TEdit;
    tbSeaState: TTrackBar;
    edtSeaState: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    VrWheel1: TVrWheel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    AdvSmoothLabel6: TAdvSmoothLabel;
    edtCurrentDirec: TEdit;
    Panel1: TPanel;
    lblTittle1: TLabel;
    vrwhlWindDirec: TVrWheel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    edtWindDirec: TEdit;
    Label5: TLabel;
    tbCurrentSpeed: TTrackBar;
    edtCurrentSpeed: TEdit;
    tbWindSpeed: TTrackBar;
    edtWindSpeed: TEdit;
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
