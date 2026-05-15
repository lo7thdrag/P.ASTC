unit ufrmOther;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  TfrmOther = class(TForm)
    imgStudentRoles: TImage;
    imgGraphicalOverlay: TImage;
    imgRuntimePlatfromLibrary: TImage;
    imgGameDefault: TImage;
    imgRadarActivationIntervals: TImage;
    imgSNR: TImage;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure imgRuntimePlatfromLibraryClick(Sender: TObject);
    procedure imgGraphicalOverlayClick(Sender: TObject);
    procedure imgStudentRolesClick(Sender: TObject);
    procedure imgGameDefaultClick(Sender: TObject);
    procedure imgSNRClick(Sender: TObject);
    procedure imgRadarActivationIntervalsClick(Sender: TObject);

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

uses
  ufDBEditor, ufrmAvailableRuntimePlatformLibrary, ufrmAvailableGrapicalOverlay, ufrmAvailableStudentRoles, ufrmAvailableGameDefaults,
  ufrmAvailableSNRvsPODCurve, ufrmAvailableRadarActivationIntervals;

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

procedure TfrmOther.imgGameDefaultClick(Sender: TObject);
begin
  if not Assigned(frmAvailableGameDefaults) then
    frmAvailableGameDefaults := TfrmAvailableGameDefaults.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableGameDefaults.Show;
end;

procedure TfrmOther.imgGraphicalOverlayClick(Sender: TObject);
begin
  if not Assigned(frmAvailableGrapicalOverlay) then
    frmAvailableGrapicalOverlay := TfrmAvailableGrapicalOverlay.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableGrapicalOverlay.Show;
end;

procedure TfrmOther.imgRadarActivationIntervalsClick(Sender: TObject);
begin
  if not Assigned(frmAvailableRadarActivationIntervals) then
    frmAvailableRadarActivationIntervals := TfrmAvailableRadarActivationIntervals.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableRadarActivationIntervals.Show;
end;

procedure TfrmOther.imgRuntimePlatfromLibraryClick(Sender: TObject);
begin
  if not Assigned(frmAvailableRuntimePlatformLibrary) then
    frmAvailableRuntimePlatformLibrary := TfrmAvailableRuntimePlatformLibrary.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableRuntimePlatformLibrary.Show;
end;

procedure TfrmOther.imgSNRClick(Sender: TObject);
begin
  if not Assigned(frmAvailableSNRvsPODCurve) then
    frmAvailableSNRvsPODCurve := TfrmAvailableSNRvsPODCurve.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableSNRvsPODCurve.Show;
end;

procedure TfrmOther.imgStudentRolesClick(Sender: TObject);
begin
  if not Assigned(frmAvailableStudentRoles) then
    frmAvailableStudentRoles := TfrmAvailableStudentRoles.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableStudentRoles.Show;
end;

end.
