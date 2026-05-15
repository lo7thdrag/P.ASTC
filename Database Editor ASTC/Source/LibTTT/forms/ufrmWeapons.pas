unit ufrmWeapons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  TfrmWeapons = class(TForm)
    imgMissile: TImage;
    imgGun: TImage;
    imgBomb: TImage;
    imgMine: TImage;
    imgTorpedo: TImage;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure imgMissileClick(Sender: TObject);
    procedure imgTorpedoClick(Sender: TObject);
    procedure imgMineClick(Sender: TObject);
    procedure imgGunClick(Sender: TObject);
    procedure imgBombClick(Sender: TObject);

  private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;

  public
    { Public declarations }
  end;

var
  frmWeapons: TfrmWeapons;

implementation

uses
  ufDBEditor, ufrmAvailableMissile, ufrmAvailableTorpedo, ufrmAvailableMine, ufrmAvailableGun, ufrmAvailableBomb;


{$R *.dfm}

procedure TfrmWeapons.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmWeapons.IconLoad;
begin
  if iconName = 'imgMissile' then
  begin
    imgMissile.Picture.LoadFromFile(filePath + 'imgMissile' + imgChoice);
  end
  else if iconName = 'imgTorpedo' then
  begin
    imgTorpedo.Picture.LoadFromFile(filePath + 'imgTorpedo' + imgChoice);
  end
  else if iconName = 'imgGun' then
  begin
    imgGun.Picture.LoadFromFile(filePath + 'imgGun' + imgChoice);
  end
  else if iconName = 'imgMine' then
  begin
    imgMine.Picture.LoadFromFile(filePath + 'imgMine' + imgChoice);
  end
  else if iconName = 'imgBomb' then
  begin
    imgBomb.Picture.LoadFromFile(filePath + 'imgBomb' + imgChoice);
  end;
end;

procedure TfrmWeapons.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Weapon\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmWeapons.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Weapon\';
  imgChoice := '.PNG';

  IconLoad;
end;

procedure TfrmWeapons.imgBombClick(Sender: TObject);
begin
  if not Assigned(frmAvailableBomb) then
    frmAvailableBomb := TfrmAvailableBomb.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableBomb.Show;
end;

procedure TfrmWeapons.imgGunClick(Sender: TObject);
begin
  if not Assigned(frmAvailableGun) then
    frmAvailableGun := TfrmAvailableGun.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableGun.Show;
end;

procedure TfrmWeapons.imgMineClick(Sender: TObject);
begin
  if not Assigned(frmAvailableMine) then
    frmAvailableMine := TfrmAvailableMine.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableMine.Show;
end;

procedure TfrmWeapons.imgMissileClick(Sender: TObject);
begin
  if not Assigned(frmAvailableMissile) then
    frmAvailableMissile := TfrmAvailableMissile.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableMissile.Show;
end;

procedure TfrmWeapons.imgTorpedoClick(Sender: TObject);
begin
  if not Assigned(frmAvailableTorpedo) then
    frmAvailableTorpedo := TfrmAvailableTorpedo.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableTorpedo.Show;
end;

end.
