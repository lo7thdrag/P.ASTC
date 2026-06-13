unit ufrmPlatformTools;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn;

type
  TfrmPlatfromTools = class(TForm)
    btnAddPf: TRzBmpButton;
    btnDinamic: TRzBmpButton;
    btnFullScreen: TRzBmpButton;
    btnMultiModes: TRzBmpButton;
    btnPfView: TRzBmpButton;
    btnRemovePf: TRzBmpButton;
    btnStatic: TRzBmpButton;
    btnTacticInfo: TRzBmpButton;
    btnTrackHistory: TRzBmpButton;
    btnWindowedScreen: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlatfromTools: TfrmPlatfromTools;

implementation

{$R *.dfm}

end.
