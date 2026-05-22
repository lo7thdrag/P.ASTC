unit ufrmPlatforms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmPlatforms = class(TForm)
    imgVehicle: TImage;
    imgBackground: TImage;
    lblVehicleCount: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure imgVehicleClick(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;
    procedure UpdateCountPlatform;

  public
    { Public declarations }

  end;

var
  frmPlatforms: TfrmPlatforms;

implementation

uses
  ufDBEditor, ufrmAvailableVehicle, uDataModuleTTT;

{$R *.dfm}

procedure TfrmPlatforms.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmPlatforms.FormShow(Sender: TObject);
begin
  UpdateCountPlatform;
end;

procedure TfrmPlatforms.IconLoad;
begin
  if iconName = 'imgVehicle' then
  begin
    imgVehicle.Picture.LoadFromFile(filePath + 'imgVehicle' + imgChoice);
  end
end;

procedure TfrmPlatforms.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Platform\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmPlatforms.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Platform\';
  imgChoice := '.PNG';

  IconLoad;
end;

procedure TfrmPlatforms.imgVehicleClick(Sender: TObject);
begin
  if not Assigned(frmAvailableVehicle) then
    frmAvailableVehicle := TfrmAvailableVehicle.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableVehicle.Show;

end;

procedure TfrmPlatforms.UpdateCountPlatform;
begin
  {$REGION ' Vehicle '}
  lblVehicleCount.Caption := IntToStr(dmTTT.GetAllVehicleCount) + ' Data';
  {$ENDREGION}
end;

end.
