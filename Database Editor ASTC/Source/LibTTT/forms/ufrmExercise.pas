unit ufrmExercise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmExercise = class(TForm)
    imgScenario: TImage;
    imgEnvironment: TImage;
    imgGameArea: TImage;
    imgResourceAllocation: TImage;
    procedure FormActivate(Sender: TObject);
    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);

    procedure ScenarioClick(Sender: TObject);
    procedure ResourceAllocationClick(Sender: TObject);
    procedure EnvironmentClick(Sender: TObject);
    procedure GameAreaClick(Sender: TObject);

   private
    iconName : string;
    filePath, imgChoice : string;

    procedure IconLoad;
  public
    { Public declarations }
  end;

var
  frmExercise: TfrmExercise;

implementation

uses
  ufDBEditor, ufrmAvailableScenario, ufrmAvailableResourceAllocation, ufrmAvailableEnvironments,
  ufrmAvailableGameArea;

{$R *.dfm}

procedure TfrmExercise.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmExercise.IconLoad;
begin
  if iconName = 'imgEnvironment' then
  begin
    imgEnvironment.Picture.LoadFromFile(filePath + 'imgEnvironment' + imgChoice);
  end
  else if iconName = 'imgGameArea' then
  begin
    imgGameArea.Picture.LoadFromFile(filePath + 'imgGameArea' + imgChoice);
  end
  else if iconName = 'imgResourceAllocation' then
  begin
    imgResourceAllocation.Picture.LoadFromFile(filePath + 'imgResourceAllocation' + imgChoice);
  end
  else if iconName = 'imgScenario' then
  begin
    imgScenario.Picture.LoadFromFile(filePath + 'imgScenario' + imgChoice);
  end

end;

procedure TfrmExercise.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Exercise\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfrmExercise.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Exercise\';
  imgChoice := '.PNG';

  IconLoad;
end;

procedure TfrmExercise.ScenarioClick(Sender: TObject);
begin
  if not Assigned(frmAvailableScenario) then
    frmAvailableScenario := TfrmAvailableScenario.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableScenario.Show;
end;

procedure TfrmExercise.ResourceAllocationClick(Sender: TObject);
begin
  if not Assigned(frmAvailableResourceAllocation) then
    frmAvailableResourceAllocation := TfrmAvailableResourceAllocation.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableResourceAllocation.Show;
end;

procedure TfrmExercise.EnvironmentClick(Sender: TObject);
begin
  if not Assigned(frmAvailableEnvironments) then
    frmAvailableEnvironments := TfrmAvailableEnvironments.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableEnvironments.Show;
end;

procedure TfrmExercise.GameAreaClick(Sender: TObject);
begin
  if not Assigned(frmAvailableGameArea) then
    frmAvailableGameArea := TfrmAvailableGameArea.Create(self);

  fDBEditor.LoadImageVariasi(0);
  frmAvailableGameArea.Show;
end;

end.
