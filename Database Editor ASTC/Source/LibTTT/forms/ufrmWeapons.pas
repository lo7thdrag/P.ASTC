unit ufrmWeapons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmWeapons = class(TForm)
    imgMissile: TImage;
    imgGun: TImage;
    imgBomb: TImage;
    imgMine: TImage;
    imgTorpedo: TImage;
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
  frmWeapons: TfrmWeapons;

implementation

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
  filePath := 'data\Image DBEditor\Interface\Background\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmWeapons.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Background\';
  imgChoice := '.PNG';

  IconLoad;
end;

end.
