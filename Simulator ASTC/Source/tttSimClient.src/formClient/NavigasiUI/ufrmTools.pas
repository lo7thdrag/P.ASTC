unit ufrmTools;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn;

type
  TfrmTools = class(TForm)
    btnFullScreen: TRzBmpButton;
    btnOptionLogistik: TRzBmpButton;
    btnOverlayEditor: TRzBmpButton;
    btnPlotting: TRzBmpButton;
    btnTimeOfRaid: TRzBmpButton;
    btnWindowedScreen: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTools: TfrmTools;

implementation

{$R *.dfm}

end.
