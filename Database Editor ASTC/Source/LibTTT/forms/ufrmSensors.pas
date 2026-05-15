unit ufrmSensors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  TfrmSensors = class(TForm)
    imgSonar: TImage;
    imgEOD: TImage;
    imgMAD: TImage;
    imgRadar: TImage;
    imgESM: TImage;
    imgSonobuoy: TImage;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure imgRadarClick(Sender: TObject);
    procedure imgSonarClick(Sender: TObject);
    procedure imgESMClick(Sender: TObject);
    procedure imgEODClick(Sender: TObject);
    procedure imgMADClick(Sender: TObject);
    procedure imgSonobuoyClick(Sender: TObject);

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

uses
  ufDBEditor, ufrmAvailableRadar, ufrmAvailableSonar, ufrmAvailableESM, ufrmAvailableEOD, ufrmAvailableMAD, ufrmAvailableSonobuoy;
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

procedure TfrmSensors.imgEODClick(Sender: TObject);
begin
  if not Assigned(frmAvailableEOD) then
    frmAvailableEOD := TfrmAvailableEOD.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableEOD.Show;
end;

procedure TfrmSensors.imgESMClick(Sender: TObject);
begin
  if not Assigned(frmAvailableESM) then
    frmAvailableESM := TfrmAvailableESM.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableESM.Show;
end;

procedure TfrmSensors.imgMADClick(Sender: TObject);
begin
  if not Assigned(frmAvailableMAD) then
    frmAvailableMAD := TfrmAvailableMAD.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableMAD.Show;
end;

procedure TfrmSensors.imgRadarClick(Sender: TObject);
begin
   if not Assigned(frmAvailableRadar) then
    frmAvailableRadar := TfrmAvailableRadar.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableRadar.Show;
end;

procedure TfrmSensors.imgSonarClick(Sender: TObject);
begin
  if not Assigned(frmAvailableSonar) then
    frmAvailableSonar := TfrmAvailableSonar.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableSonar.Show;
end;

procedure TfrmSensors.imgSonobuoyClick(Sender: TObject);
begin
  if not Assigned(frmAvailableSonobuoy) then
    frmAvailableSonobuoy := TfrmAvailableSonobuoy.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableSonobuoy.Show;
end;

end.
