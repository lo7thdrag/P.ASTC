unit ufrmExercise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmExercise = class(TForm)
    imgScenario: TImage;
    imgEnvironment: TImage;
    imgGameArea: TImage;
    imgResourceAllocation: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercise: TfrmExercise;

implementation

{$R *.dfm}

procedure TfrmExercise.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

end.
