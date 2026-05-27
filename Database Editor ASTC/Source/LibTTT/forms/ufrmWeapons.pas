unit ufrmWeapons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TfrmWeapons = class(TForm)
    imgBackground: TImage;
    pnlMainBackground: TPanel;
    imgBomb: TImage;
    imgGun: TImage;
    imgMine: TImage;
    imgMissile: TImage;
    imgTorpedo: TImage;
    lblBombCount: TLabel;
    lblGunCount: TLabel;
    lblMineCount: TLabel;
    lblMissileCount: TLabel;
    lblTorpedoCount: TLabel;
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure imgMissileClick(Sender: TObject);
    procedure imgTorpedoClick(Sender: TObject);
    procedure imgMineClick(Sender: TObject);
    procedure imgGunClick(Sender: TObject);
    procedure imgBombClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;
    procedure UpdateCountWeapon;

  public
    { Public declarations }
  end;

var
  frmWeapons: TfrmWeapons;

implementation

uses
  ufDBEditor, ufrmAvailableMissile, ufrmAvailableTorpedo, ufrmAvailableMine, ufrmAvailableGun, ufrmAvailableBomb, uDataModuleTTT;


{$R *.dfm}

procedure EnableComposited(WinControl:TWinControl);
var
  i:Integer;
  NewExStyle:DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for I := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

procedure TfrmWeapons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EnableComposited(pnlMainBackground);
end;

procedure TfrmWeapons.FormShow(Sender: TObject);
begin
  UpdateCountWeapon;
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

procedure TfrmWeapons.UpdateCountWeapon;
begin
  {$REGION ' Gun '}
  lblGunCount.Caption := IntToStr(dmTTT.GetAllGunCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Missile '}
  lblMissileCount.Caption := IntToStr(dmTTT.GetAllMissileCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Mine '}
  lblMineCount.Caption := IntToStr(dmTTT.GetAllMineCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Bomb '}
  lblBombCount.Caption := IntToStr(dmTTT.GetAllBombCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Torpedo '}
  lblTorpedoCount.Caption := IntToStr(dmTTT.GetAllTorpedoCount) + ' Data';
  {$ENDREGION}
end;

end.
