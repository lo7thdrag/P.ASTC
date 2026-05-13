unit ufrmOther;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmOther = class(TForm)
    imgStudentRoles: TImage;
    imgGraphicalOverlay: TImage;
    imgRuntimePlatfromLibrary: TImage;
    imgGameDefault: TImage;
    imgRadarActivationIntervals: TImage;
    imgSNR: TImage;
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
  frmOther: TfrmOther;

implementation

{$R *.dfm}

procedure TfrmOther.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmOther.IconLoad;
begin
  if iconName = 'imgGameDefault' then
  begin
    imgGameDefault.Picture.LoadFromFile(filePath + 'imgGameDefault' + imgChoice);
  end
  else if iconName = 'imgGraphicalOverlay' then
  begin
    imgGraphicalOverlay.Picture.LoadFromFile(filePath + 'imgGraphicalOverlay' + imgChoice);
  end
  else if iconName = 'imgRadarActivationIntervals' then
  begin
    imgRadarActivationIntervals.Picture.LoadFromFile(filePath + 'imgRadarActivationIntervals' + imgChoice);
  end
  else if iconName = 'imgRuntimePlatfromLibrary' then
  begin
    imgRuntimePlatfromLibrary.Picture.LoadFromFile(filePath + 'imgRuntimePlatfromLibrary' + imgChoice);
  end
  else if iconName = 'imgSNR' then
  begin
    imgSNR.Picture.LoadFromFile(filePath + 'imgSNR' + imgChoice);
  end
  else if iconName = 'imgStudentRoles' then
  begin
    imgStudentRoles.Picture.LoadFromFile(filePath + 'imgStudentRoles' + imgChoice);
  end;
end;

procedure TfrmOther.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Other\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmOther.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Other\';
  imgChoice := '.PNG';

  IconLoad;
end;

end.
