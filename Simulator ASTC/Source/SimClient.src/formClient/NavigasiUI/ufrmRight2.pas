unit ufrmRight2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBmpBtn;

type
  TfrmRight2 = class(TForm)
    btnScreen: TRzBmpButton;
    procedure btnScreenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRight2: TfrmRight2;

implementation

uses
  ufrmLeftNav, ufrmBottomNav, ufrmTopNav, ufrmRightNav, ufTacticalDisplay;

{$R *.dfm}

procedure TfrmRight2.btnScreenClick(Sender: TObject);
begin
  frmTopNav.Show;
  frmTopNav.align := alTop;
  frmLeft.Show;
  frmLeft.align := alLeft;
  frmRight.Show;
  frmRight.align := alRight;
  frmBottom.Show;
  frmBottom.align := alBottom;
end;

end.
