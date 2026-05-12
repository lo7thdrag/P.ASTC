unit ufrmEmbarkedInput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmEmbarkedInput = class(TForm)
    pnlMainBackground: TPanel;
    pnl3Button: TPanel;
    imgExercise: TImage;
    btnCancel: TButton;
    btnOK: TButton;
    pnlSparatorHor2: TPanel;
    pnl2ControlPage: TPanel;
    pnlPlatformInstance: TPanel;
    lblName: TLabel;
    lblTrackID: TLabel;
    cbbName: TComboBox;
    edtTrackId: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmbarkedInput: TfrmEmbarkedInput;

implementation

{$R *.dfm}

end.
