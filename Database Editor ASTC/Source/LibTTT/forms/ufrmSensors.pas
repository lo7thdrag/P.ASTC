unit ufrmSensors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmSensors = class(TForm)
    imgSonar: TImage;
    imgEOD: TImage;
    imgMAD: TImage;
    imgRadar: TImage;
    imgESM: TImage;
    imgSonobuoy: TImage;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);

  private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;

  public
    { Public declarations }
  end;

var
  frmSensors: TfrmSensors;

implementation

{$R *.dfm}

procedure TfrmSensors.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmSensors.IconLoad;
begin
  if iconName = 'imgEOD' then
  begin
    imgEOD.Picture.LoadFromFile(filePath + 'imgEOD' + imgChoice);
  end
  else if iconName = 'imgESM' then
  begin
    imgESM.Picture.LoadFromFile(filePath + 'imgESM' + imgChoice);
  end
  else if iconName = 'imgMAD' then
  begin
    imgMAD.Picture.LoadFromFile(filePath + 'imgMAD' + imgChoice);
  end
  else if iconName = 'imgRadar' then
  begin
    imgRadar.Picture.LoadFromFile(filePath + 'imgRadar' + imgChoice);
  end
  else if iconName = 'imgSonar' then
  begin
    imgSonar.Picture.LoadFromFile(filePath + 'imgSonar' + imgChoice);
  end
  else if iconName = 'imgSonobuoy' then
  begin
    imgSonobuoy.Picture.LoadFromFile(filePath + 'imgSonobuoy' + imgChoice);
  end;
end;

procedure TfrmSensors.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Sensors\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmSensors.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Sensors\';
  imgChoice := '.PNG';

  IconLoad;
end;

end.
