unit ufrmCountermeasure;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

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
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure imgAccousticDecoyClick(Sender: TObject);
    procedure imgAirBubbleClick(Sender: TObject);
    procedure imgChaffClick(Sender: TObject);
    procedure imgInfraredDecoyClick(Sender: TObject);
    procedure imgFloatingDecoyClick(Sender: TObject);
    procedure imgSelfDefensiveJammerClick(Sender: TObject);
    procedure imgTowedJammerIDecoyClick(Sender: TObject);
    procedure imgRadarNoiseJammerClick(Sender: TObject);

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

uses
  ufDBEditor, ufrmAvailableAcousticDecoy, ufrmAvailableAirBubble, ufrmAvailableChaff, ufrmAvailableInfraredDecoy,
  ufrmAvailableFloatingDecoy, ufrmAvailableSelfDefensiveJammer, ufrmAvailableTowedJammerDecoy, ufrmAvailableRadarNoiseJammer;

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

procedure TfrmCountermeasure.imgAccousticDecoyClick(Sender: TObject);
begin
  if not Assigned(frmAvailableAcousticDecoy) then
    frmAvailableAcousticDecoy := TfrmAvailableAcousticDecoy.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableAcousticDecoy.Show;
end;

procedure TfrmCountermeasure.imgAirBubbleClick(Sender: TObject);
begin
  if not Assigned(frmAvailableAirBubble) then
    frmAvailableAirBubble := TfrmAvailableAirBubble.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableAirBubble.Show;
end;

procedure TfrmCountermeasure.imgChaffClick(Sender: TObject);
begin
  if not Assigned(frmAvailableChaff) then
    frmAvailableChaff := TfrmAvailableChaff.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableChaff.Show;
end;

procedure TfrmCountermeasure.imgFloatingDecoyClick(Sender: TObject);
begin
  if not Assigned(frmAvailableFloatingDecoy) then
    frmAvailableFloatingDecoy := TfrmAvailableFloatingDecoy.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableFloatingDecoy.Show;
end;

procedure TfrmCountermeasure.imgInfraredDecoyClick(Sender: TObject);
begin
  if not Assigned(frmAvailableInfraredDecoy) then
    frmAvailableInfraredDecoy := TfrmAvailableInfraredDecoy.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableInfraredDecoy.Show;
end;

procedure TfrmCountermeasure.imgRadarNoiseJammerClick(Sender: TObject);
begin
  if not Assigned(frmAvailableRadarNoiseJammer) then
    frmAvailableRadarNoiseJammer := TfrmAvailableRadarNoiseJammer.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableRadarNoiseJammer.Show;
end;

procedure TfrmCountermeasure.imgSelfDefensiveJammerClick(Sender: TObject);
begin
  if not Assigned(frmAvailableSelfDefensiveJammer) then
    frmAvailableSelfDefensiveJammer := TfrmAvailableSelfDefensiveJammer.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableSelfDefensiveJammer.Show;
end;

procedure TfrmCountermeasure.imgTowedJammerIDecoyClick(Sender: TObject);
begin
  if not Assigned(frmAvailableTowedJammerDecoy) then
    frmAvailableTowedJammerDecoy := TfrmAvailableTowedJammerDecoy.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableTowedJammerDecoy.Show;
end;

end.
