unit ufrmCountermeasure;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

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
    imgBackground: TImage;
    lblAirBubbleCount: TLabel;
    lblTowedJammerCount: TLabel;
    lblChaffCount: TLabel;
    lblInfraredDecoyCount: TLabel;
    lblRadarJammerCount: TLabel;
    lblFloatingDecoyCount: TLabel;
    lblAccousticDecoyCount: TLabel;
    lblSelfDefensiveCount: TLabel;
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
    procedure FormShow(Sender: TObject);

  private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;
    procedure UpdateCountContermeasures;

  public
    { Public declarations }
  end;

var
  frmCountermeasure: TfrmCountermeasure;

implementation

uses
  ufDBEditor, ufrmAvailableAcousticDecoy, ufrmAvailableAirBubble, ufrmAvailableChaff, ufrmAvailableInfraredDecoy,
  ufrmAvailableFloatingDecoy, ufrmAvailableSelfDefensiveJammer, ufrmAvailableTowedJammerDecoy, ufrmAvailableRadarNoiseJammer, uDataModuleTTT;

{$R *.dfm}

procedure TfrmCountermeasure.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmCountermeasure.FormShow(Sender: TObject);
begin
  UpdateCountContermeasures;
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

procedure TfrmCountermeasure.UpdateCountContermeasures;
begin
  {$REGION ' Acoustic Decoy '}
  lblAccousticDecoyCount.Caption := IntToStr(dmTTT.GetAllAcousticDecoyCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Air Bubble '}
  lblAirBubbleCount.Caption := IntToStr(dmTTT.GetAllAirBubbleCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Chaff '}
  lblChaffCount.Caption := IntToStr(dmTTT.GetAllChaffCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Infrared Decoy '}
  lblInfraredDecoyCount.Caption := IntToStr(dmTTT.GetAllInfraredDecoyCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Towed Jammer '}
  lblTowedJammerCount.Caption := IntToStr(dmTTT.GetAllTowedJammerCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Radar Jammer '}
  lblRadarJammerCount.Caption := IntToStr(dmTTT.GetAllRadarJammerCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Self Defensive '}
  lblSelfDefensiveCount.Caption := IntToStr(dmTTT.GetAllSelfDefensiveCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Floating Decoy '}
  lblFloatingDecoyCount.Caption := IntToStr(dmTTT.GetAllFloatingDecoyCount) + ' Data';
  {$ENDREGION}
end;

end.
