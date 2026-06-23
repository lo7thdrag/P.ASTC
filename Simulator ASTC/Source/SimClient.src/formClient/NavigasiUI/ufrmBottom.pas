unit ufrmBottom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmBottom = class(TForm)
    Panel1: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lBearingFCenter: TLabel;
    lDistanceFCenter: TLabel;
    lGridLat: TLabel;
    lGridLong: TLabel;
    lPosLat: TLabel;
    lPosLong: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBottom: TfrmBottom;

implementation

{$R *.dfm}

end.
