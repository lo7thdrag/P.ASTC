unit ufrmRight;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzBmpBtn;

type
  TfrmRight = class(TForm)
    pnlContainer: TPanel;
    btnHook: TRzBmpButton;
    btnFullScreen: TRzBmpButton;
    btnHelp: TRzBmpButton;
    btnCenterGame: TRzBmpButton;
    btnFilterRings: TRzBmpButton;
    btnRuler: TRzBmpButton;
    btnInfo: TRzBmpButton;
    ZoomOut: TRzBmpButton;
    btnZoomIn: TRzBmpButton;
    procedure btnFullScreenClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateAllRightForms;
    { Public declarations }
  end;

var
  frmRight: TfrmRight;

implementation

uses
  ufrmLeft, ufrmBottom, ufrmTop, ufrmRight2;


{$R *.dfm}

{ TfrmRight }

const
  cWidth = 186;

procedure TfrmRight.btnFullScreenClick(Sender: TObject);
begin
  frmLeft.Visible   := False;
  frmTop.Visible    := False;
  frmBottom.Visible := False;
  Close;

  frmRight2.Visible := True
end;

procedure TfrmRight.CreateAllRightForms;
begin

end;

end.
