unit ufrmMapTools;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn;

type
  TfrmMapTools = class(TForm)
    ScrollBox1: TScrollBox;
    btnSeaMap: TRzBmpButton;
    btnLandMap: TRzBmpButton;
    btnMinimap: TRzBmpButton;
    btnAirMap: TRzBmpButton;
    btnBrowseMap: TRzBmpButton;
    btnCenterGame: TRzBmpButton;
    btnCenterHook: TRzBmpButton;
    btnFilterRings: TRzBmpButton;
    btnFullScreen: TRzBmpButton;
    btnOptions: TRzBmpButton;
    btnPan: TRzBmpButton;
    btnRangRing: TRzBmpButton;
    btnRuler: TRzBmpButton;
    btnTool: TRzBmpButton;
    btnWindowedScreen: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMapTools: TfrmMapTools;

implementation

{$R *.dfm}

end.
