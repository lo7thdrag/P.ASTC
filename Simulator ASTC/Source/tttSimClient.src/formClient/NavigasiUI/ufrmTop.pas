unit ufrmTop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzBmpBtn, Vcl.ExtCtrls;

type
  TfrmTop = class(TForm)
    Panel1: TPanel;
    cbSetScale: TComboBox;
    btnIncreaseScale: TRzBmpButton;
    btnDecreaseScale: TRzBmpButton;
    btnSelect: TRzBmpButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTop: TfrmTop;

implementation

uses
  ufTacticalDisplay, ufrmRight;

{$R *.dfm}


end.
