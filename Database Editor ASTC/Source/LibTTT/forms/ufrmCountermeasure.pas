unit ufrmCountermeasure;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmCountermeasure = class(TForm)
    imgTowedJammerIDecoy: TImage;
    imgFloatingDecoy: TImage;
    imgAirBubble: TImage;
    imgAccousticDecoy: TImage;
    imgSelfDefensiveJammer: TImage;
    imgChaff: TImage;
    imgRadarNoiseJammer: TImage;
    imgInfraredDecoy: TImage;
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
  frmCountermeasure: TfrmCountermeasure;

implementation

{$R *.dfm}

procedure TfrmCountermeasure.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmCountermeasure.IconLoad;
begin
  if iconName = 'imgAccousticDecoy' then
  begin
    imgAccousticDecoy.Picture.LoadFromFile(filePath + 'imgAccousticDecoy' + imgChoice);
  end
  else if iconName = 'imgAirBubble' then
  begin
    imgAirBubble.Picture.LoadFromFile(filePath + 'imgAirBubble' + imgChoice);
  end
  else if iconName = 'imgChaff' then
  begin
    imgChaff.Picture.LoadFromFile(filePath + 'imgChaff' + imgChoice);
  end
  else if iconName = 'imgFloatingDecoy' then
  begin
    imgFloatingDecoy.Picture.LoadFromFile(filePath + 'imgFloatingDecoy' + imgChoice);
  end
  else if iconName = 'imgInfraredDecoy' then
  begin
    imgInfraredDecoy.Picture.LoadFromFile(filePath + 'imgInfraredDecoy' + imgChoice);
  end
  else if iconName = 'imgRadarNoiseJammer' then
  begin
    imgRadarNoiseJammer.Picture.LoadFromFile(filePath + 'imgRadarNoiseJammer' + imgChoice);
  end
  else if iconName = 'imgSelfDefensiveJammer' then
  begin
    imgSelfDefensiveJammer.Picture.LoadFromFile(filePath + 'imgSelfDefensiveJammer' + imgChoice);
  end
  else if iconName = 'imgTowedJammerIDecoy' then
  begin
    imgTowedJammerIDecoy.Picture.LoadFromFile(filePath + 'imgTowedJammerIDecoy' + imgChoice);
  end
end;

procedure TfrmCountermeasure.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Countermeasure\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmCountermeasure.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Countermeasure\';
  imgChoice := '.PNG';

  IconLoad;
end;

end.
