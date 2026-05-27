unit ufrmOther;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TfrmOther = class(TForm)
    imgMotion: TImage;
    imgGraphicalOverlay: TImage;
    imgRuntimePlatfromLibrary: TImage;
    imgGameDefault: TImage;
    imgSNR: TImage;
    imgBackground: TImage;
    lblGameDefaultCount: TLabel;
    lblGraphicalOverlayCount: TLabel;
    lblMotionCount: TLabel;
    lblRPLCount: TLabel;
    lblSNRvsPODCount: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure imgRuntimePlatfromLibraryClick(Sender: TObject);
    procedure imgGraphicalOverlayClick(Sender: TObject);
    procedure imgMotionClick(Sender: TObject);
    procedure imgGameDefaultClick(Sender: TObject);
    procedure imgSNRClick(Sender: TObject);
    procedure imgRadarActivationIntervalsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;
    procedure UpdateCountOther;

  public
    { Public declarations }
  end;

var
  frmOther: TfrmOther;

implementation

uses
  ufDBEditor, ufrmAvailableRuntimePlatformLibrary, ufrmAvailableGrapicalOverlay, ufrmAvailableStudentRoles, ufrmAvailableGameDefaults,
  ufrmAvailableSNRvsPODCurve, ufrmAvailableRadarActivationIntervals, uDataModuleTTT;

{$R *.dfm}

procedure TfrmOther.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmOther.FormShow(Sender: TObject);
begin
  UpdateCountOther;
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
  else if iconName = 'imgMotion' then
  begin
    imgMotion.Picture.LoadFromFile(filePath + 'imgMotion' + imgChoice);
  end
  else if iconName = 'imgRuntimePlatfromLibrary' then
  begin
    imgRuntimePlatfromLibrary.Picture.LoadFromFile(filePath + 'imgRuntimePlatfromLibrary' + imgChoice);
  end
  else if iconName = 'imgSNR' then
  begin
    imgSNR.Picture.LoadFromFile(filePath + 'imgSNR' + imgChoice);
  end
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

procedure TfrmOther.imgMotionClick(Sender: TObject);
begin
  if not Assigned(frmAvailableStudentRoles) then
    frmAvailableStudentRoles := TfrmAvailableStudentRoles.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableStudentRoles.Show;
end;

procedure TfrmOther.UpdateCountOther;
begin
  {$REGION ' Game Default '}
  lblGameDefaultCount.Caption := IntToStr(dmTTT.GetAllGameDefaultsCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Graphical Overlay '}
  lblGraphicalOverlayCount.Caption := IntToStr(dmTTT.GetAllGraphicalOverlayCount) + ' Data';
  {$ENDREGION}

  {$REGION ' RPL '}
  lblRPLCount.Caption := IntToStr(dmTTT.GetAllRPLCount) + ' Data';
  {$ENDREGION}

  {$REGION ' Motion '}
  lblMotionCount.Caption := IntToStr(dmTTT.GetAllMotionCount) + ' Data';
  {$ENDREGION}

  {$REGION ' SNR vs POD Curve '}
  lblSNRvsPODCount.Caption := IntToStr(dmTTT.GetAllSNRvsPODCount) + ' Data';
  {$ENDREGION}
end;

end.
