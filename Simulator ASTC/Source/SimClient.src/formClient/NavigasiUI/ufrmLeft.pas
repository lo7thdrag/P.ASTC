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
    pnlEnvironment: TPanel;
    pnlAboveWater: TPanel;
    lblTittle1: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lbl1: TLabel;
    Label3: TLabel;
    lblSpeedWIndTrue: TLabel;
    lblDirectionWindTrue: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblWindRelativeSpeed: TLabel;
    lblWindRelativeDirection: TLabel;
    Label103: TLabel;
    Label101: TLabel;
    Label96: TLabel;
    lblAttenuationFactorsRain: TLabel;
    lblAttenuationFactorsCloud: TLabel;
    Label97: TLabel;
    Label81: TLabel;
    Bevel1: TBevel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label91: TLabel;
    Label90: TLabel;
    Label99: TLabel;
    Label94: TLabel;
    Label92: TLabel;
    lblVisibilityFactorsnfrared: TLabel;
    lblVisibilityFactorsElectroOptical: TLabel;
    lblVisibilityactorsTime: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label109: TLabel;
    lblOtherAirTemp: TLabel;
    Label111: TLabel;
    Label107: TLabel;
    lblOtherBarometric: TLabel;
    Label105: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel1: TPanel;
    Label11: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lblOceanCurrentSpeed: TLabel;
    lblOceanCurrentDirection: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel2: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label106: TLabel;
    Label117: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    lblSoundVelocityAverageBottom: TLabel;
    Label43: TLabel;
    imgBackground: TImage;
    Panel2: TPanel;
    pnlStatusRed: TPanel;
    pnlStatusYellow: TPanel;
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
