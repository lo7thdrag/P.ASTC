unit ufrmLeft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzBmpBtn,
  Vcl.Imaging.pngimage, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VrControls, VrWheel, Vcl.StdCtrls;

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
    Label9: TLabel;
    lblWind: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    pnlRouteInformation: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblTime: TLabel;
    lblBearring: TLabel;
    lblDist: TLabel;
    lblTrack: TLabel;
    Panel1: TPanel;
    lblTittle1: TLabel;
    vrwhlWindDirec: TVrWheel;
    pnlDepthKet: TPanel;
    Label12: TLabel;
    chtDepth: TChart;
    Series1: THorizBarSeries;
    pnlDepth: TPanel;
    lblDepthBellow: TLabel;
    WindDirection: TPanel;
    lblWindDirection: TLabel;
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
