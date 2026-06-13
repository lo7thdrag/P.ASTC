unit ufrmTop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzBmpBtn, Vcl.ExtCtrls;

type
  TfrmTop = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbSetScale: TComboBox;
    cbAssumeControl: TComboBox;
    btnHook: TRzBmpButton;
    btMapTools: TRzBmpButton;
    Button1: TButton;
    btnPlatform: TRzBmpButton;
    btnPfOptions: TRzBmpButton;
    btnOptions: TRzBmpButton;
    Button2: TButton;
    btnHelp: TRzBmpButton;
    btnViewDisplay: TRzBmpButton;
    btnFullScreen: TRzBmpButton;
    btnDecreaseScale: TRzBmpButton;
    btnIncreaseScale: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTop: TfrmTop;

implementation

{$R *.dfm}

end.
