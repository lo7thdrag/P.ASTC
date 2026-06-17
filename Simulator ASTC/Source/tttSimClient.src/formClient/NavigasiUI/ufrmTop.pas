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
    pnl1: TPanel;
    lbl1: TLabel;
    Label1: TLabel;
    lblChartScale: TLabel;
    lblViewScale: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    Label7: TLabel;
    lblTime: TLabel;
    Panel5: TPanel;
    lblName: TLabel;
    edtRoleName: TEdit;
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
