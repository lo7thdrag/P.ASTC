unit ufrmGeneralTools;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn;

type
  TfrmGeneralTools = class(TForm)
    ScrollBox1: TScrollBox;
    btnCounterMeasure: TRzBmpButton;
    btnDetails: TRzBmpButton;
    btnEMCON: TRzBmpButton;
    btnFCR: TRzBmpButton;
    btnGuidance: TRzBmpButton;
    btnInfo: TRzBmpButton;
    btnOther: TRzBmpButton;
    btnRadar: TRzBmpButton;
    btnTransferLog: TRzBmpButton;
    btnWeapon: TRzBmpButton;
    btnFullScreen: TRzBmpButton;
    btnWindowedScreen: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeneralTools: TfrmGeneralTools;

implementation

{$R *.dfm}

end.
