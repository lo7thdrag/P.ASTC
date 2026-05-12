unit ufrmImportLandmassData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, uDBAsset_GameEnvironment, MapXLib_TLB,
  ShlObj, Vcl.Imaging.pngimage;

type
  TfrmImportLandmassData = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlFilter: TPanel;
    grbImportFilters: TGroupBox;
    cbCoastline: TCheckBox;
    grbDepthContours: TGroupBox;
    cb10mDepthCountours: TCheckBox;
    cb20mDepthCountours: TCheckBox;
    cb40mDepthCountours: TCheckBox;
    cb60mDepthCountours: TCheckBox;
    cb80mDepthCountours: TCheckBox;
    cb100mDepthCountours: TCheckBox;
    cb120mDepthCountours: TCheckBox;
    cb140mDepthCountours: TCheckBox;
    cb160mDepthCountours: TCheckBox;
    cb180mDepthCountours: TCheckBox;
    cb200mDepthCountours: TCheckBox;
    cb300mDepthCountours: TCheckBox;
    cb400mDepthCountours: TCheckBox;
    cb500mDepthCountours: TCheckBox;
    cb700mDepthCountours: TCheckBox;
    cb1000mDepthCountours: TCheckBox;
    cbBelow1000mDepthCountours: TCheckBox;
    grbElevationContours: TGroupBox;
    cb100ftElevationContours: TCheckBox;
    cb200ftElevationContours: TCheckBox;
    cb500ftElevationContours: TCheckBox;
    cb1000ftElevationContours: TCheckBox;
    cb1500ftElevationContours: TCheckBox;
    cb2000ftElevationContours: TCheckBox;
    cb3000ftElevationContours: TCheckBox;
    cb5000ftElevationContours: TCheckBox;
    cb7000ftElevationContours: TCheckBox;
    cb10000ftElevationContours: TCheckBox;
    cbAbove10000ftElevationContours: TCheckBox;
    grbPopulatedPlaces: TGroupBox;
    cbPointsPopulatedPlaces: TCheckBox;
    cbAreasPopulatedPlaces: TCheckBox;
    grbAirports: TGroupBox;
    cbMilitaryAirports: TCheckBox;
    cbCivilianAirports: TCheckBox;
    cbOtherAirports: TCheckBox;
    grbRailroads: TGroupBox;
    cbPrimaryRailroads: TCheckBox;
    cbSecondaryRailroads: TCheckBox;
    grbRoads: TGroupBox;
    cbPrimaryRoads: TCheckBox;
    cbSecondaryRoads: TCheckBox;
    cbPoliticalBoundaries: TCheckBox;
    cbWrecks: TCheckBox;
    cbPipelines: TCheckBox;
    cbPlatforms: TCheckBox;
    grbScaleFactor: TGroupBox;
    trckbrScaleFactor: TTrackBar;
    edtScaleFactor: TEdit;
    lbl1ScaleFactor: TStaticText;
    lbl10ScaleFactor: TStaticText;
    cbDepthContours: TCheckBox;
    cbElevationContours: TCheckBox;
    cbPopulatedPlaces: TCheckBox;
    cbAirports: TCheckBox;
    cbRailroads: TCheckBox;
    cbRoads: TCheckBox;
    ProgressBar1: TProgressBar;
    btnImport: TButton;
    pnlSource: TPanel;
    grbImportSource: TGroupBox;
    grbLibrary: TGroupBox;
    edtLibrary: TEdit;
    btnBrowse: TButton;
    cbbImportSource: TComboBox;
    pnlSparatorHor1: TPanel;
    pnlSparatorHor2: TPanel;
    Image2: TImage;
    Image1: TImage;

    procedure FormShow(Sender: TObject);

    procedure cbbImportSourceChange(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
    procedure cbDepthContoursClick(Sender: TObject);
    procedure cbElevationContoursClick(Sender: TObject);
    procedure cbPopulatedPlacesClick(Sender: TObject);
    procedure cbAirportsClick(Sender: TObject);
    procedure cbRailroadsClick(Sender: TObject);
    procedure cbRoadsClick(Sender: TObject);
    procedure trckbrScaleFactorChange(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure LayerDataChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FSelectedGameArea : TGame_Environment_Definition;

    FLibraryPath : string;
    FCoastlineExist : Boolean;
    FDepthContoursExist : Boolean;
    FElevationContoursExist : Boolean;
    FPointsPopulatedPlacesExist : Boolean;
    FAreasPopulatedPlacesExist : Boolean;
    FMilitaryAirportExist : Boolean;
    FCivilianAirportExist : Boolean;
    FOtherAirportExist : Boolean;
    FPrimaryRailroadsExist : Boolean;
    FSecondaryRailroadsExist : Boolean;
    FPrimaryRoadsExist : Boolean;
    FSecondaryRoadsExist : Boolean;
    FPoliticalBoundariesExist : Boolean;
    FPipelinesExist : Boolean;
    FWrecksExist : Boolean;
    FSelectedLayer : TStrings;

    FMap : TMap;

    procedure GetMapLayerData;
    procedure UpdateGeoFeatureImportForm;
    function BrowseDialog(const aFlag: Integer): string;
    procedure DeleteDirectory(const aPath: string);
    procedure GetSelectedLayer;
    procedure CreateLayerDirectory;
    procedure GetLayerData;
    procedure GetGridIndex(const aCenterX, aCenterY, aWidth: Double;
      var aRect: TRect);
    function GetIndexLat(const aPos: Integer): string;
    function GetIndexLong(const aPos: Integer): string;
  public
    property SelectedGameArea : TGame_Environment_Definition
      read FSelectedGameArea write FSelectedGameArea;
  end;

var
  frmImportLandmassData: TfrmImportLandmassData;

implementation

uses
  ufrmSummaryGameAreaVektor, uDataModuleTTT, ufrmAvailableGameArea, ufrmLandmassEditor, uDBEditSetting,
  ufrmVektorMapGameCenterEditor, Math ;

{$R *.dfm}

procedure TfrmImportLandmassData.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportLandmassData.btnImportClick(Sender: TObject);
var
  i : Integer;
begin
  FSelectedLayer := TStringList.Create;

  with FSelectedGameArea.FGameArea do
  begin
    if DirectoryExists(FLibraryPath + '\' + Game_Area_Identifier) then
      DeleteDirectory(FLibraryPath + '\' + Game_Area_Identifier);

    CreateDir(FLibraryPath + '\' + Game_Area_Identifier);

    Use_Real_World := 1;
  end;

  ProgressBar1.Visible := True;

  for i := 0 to Random(90) do
    ProgressBar1.Position := i;

  GetSelectedLayer;
  CreateLayerDirectory;
  GetLayerData;

  FSelectedLayer.Free;

  ProgressBar1.Position := 100;
  btnImport.Enabled := False;

end;

procedure TfrmImportLandmassData.btnBrowseClick(Sender: TObject);
begin
  FLibraryPath := BrowseDialog(BIF_BROWSEINCLUDEFILES);

  if FLibraryPath <> '' then
    edtLibrary.Text := FLibraryPath
  else
    edtLibrary.Text := 'M:\Map\game_area';

  btnImport.Enabled := True;
end;

function TfrmImportLandmassData.BrowseDialog(
  const aFlag: integer): string;
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result := '';
  FillChar(BrowseInfo, SizeOf(TBrowseInfo), #0);

  with BrowseInfo do
  begin
    hwndOwner := Application.Handle;
    pszDisplayName := @DisplayName;
    //lpszTitle := PChar(Title);
    ulFlags := aFlag;
  end;

  lpItemID := SHBrowseForFolder(BrowseInfo);

  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

procedure TfrmImportLandmassData.cbAirportsClick(Sender: TObject);
begin
  cbMilitaryAirports.Enabled := cbAirports.Checked;
  cbCivilianAirports.Enabled := cbAirports.Checked;
  cbOtherAirports.Enabled := cbAirports.Checked;

  if not cbAirports.Checked then
  begin
    cbMilitaryAirports.Checked := cbAirports.Checked;
    cbCivilianAirports.Checked := cbAirports.Checked;
    cbOtherAirports.Checked := cbAirports.Checked;
  end;
end;

procedure TfrmImportLandmassData.cbDepthContoursClick(Sender: TObject);
begin
  {Note : Data Depth Countours (spesifik) tidak ada}
//  cb10mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb20mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb40mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb60mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb80mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb100mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb120mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb140mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb160mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb180mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb200mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb300mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb400mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb500mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb700mDepthCountours.Enabled := cbDepthContours.Checked;
//  cb1000mDepthCountours.Enabled := cbDepthContours.Checked;
//  cbBelow1000mDepthCountours.Enabled := cbDepthContours.Checked;

  cb10mDepthCountours.Checked := cbDepthContours.Checked;
  cb20mDepthCountours.Checked := cbDepthContours.Checked;
  cb40mDepthCountours.Checked := cbDepthContours.Checked;
  cb60mDepthCountours.Checked := cbDepthContours.Checked;
  cb80mDepthCountours.Checked := cbDepthContours.Checked;
  cb100mDepthCountours.Checked := cbDepthContours.Checked;
  cb120mDepthCountours.Checked := cbDepthContours.Checked;
  cb140mDepthCountours.Checked := cbDepthContours.Checked;
  cb160mDepthCountours.Checked := cbDepthContours.Checked;
  cb180mDepthCountours.Checked := cbDepthContours.Checked;
  cb200mDepthCountours.Checked := cbDepthContours.Checked;
  cb300mDepthCountours.Checked := cbDepthContours.Checked;
  cb400mDepthCountours.Checked := cbDepthContours.Checked;
  cb500mDepthCountours.Checked := cbDepthContours.Checked;
  cb700mDepthCountours.Checked := cbDepthContours.Checked;
  cb1000mDepthCountours.Checked := cbDepthContours.Checked;
  cbBelow1000mDepthCountours.Checked := cbDepthContours.Checked;

  btnImport.Enabled := True;
end;

procedure TfrmImportLandmassData.cbElevationContoursClick(
  Sender: TObject);
begin
  {Note : Data Elevation Countours (spesifik) tidak ada}
//  cb100ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb200ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb500ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb1000ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb1500ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb2000ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb3000ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb5000ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb7000ftElevationContours.Enabled := cbElevationContours.Checked;
//  cb10000ftElevationContours.Enabled := cbElevationContours.Checked;
//  cbAbove10000ftElevationContours.Enabled := cbElevationContours.Checked;

  cb100ftElevationContours.Checked := cbElevationContours.Checked;
  cb200ftElevationContours.Checked := cbElevationContours.Checked;
  cb500ftElevationContours.Checked := cbElevationContours.Checked;
  cb1000ftElevationContours.Checked := cbElevationContours.Checked;
  cb1500ftElevationContours.Checked := cbElevationContours.Checked;
  cb2000ftElevationContours.Checked := cbElevationContours.Checked;
  cb3000ftElevationContours.Checked := cbElevationContours.Checked;
  cb5000ftElevationContours.Checked := cbElevationContours.Checked;
  cb7000ftElevationContours.Checked := cbElevationContours.Checked;
  cb10000ftElevationContours.Checked := cbElevationContours.Checked;
  cbAbove10000ftElevationContours.Checked := cbElevationContours.Checked;

  btnImport.Enabled := True;
end;

procedure TfrmImportLandmassData.cbbImportSourceChange(Sender: TObject);
var
  s : string;
begin
  case cbbImportSource.ItemIndex of
    0:
    begin
      FCoastlineExist := True;
      FDepthContoursExist := True;
      FElevationContoursExist := True;
      FPointsPopulatedPlacesExist := True;
      FAreasPopulatedPlacesExist := True;
      FMilitaryAirportExist := True;
      FCivilianAirportExist := True;
      FOtherAirportExist := True;
      FPrimaryRailroadsExist := True;
      FSecondaryRailroadsExist := True;
      FPrimaryRoadsExist := True;
      FSecondaryRoadsExist := True;
      FPoliticalBoundariesExist := True;
      FPipelinesExist := True;
      FWrecksExist := True;
    end;
    1: GetMapLayerData;
  end;

  UpdateGeoFeatureImportForm;
end;

procedure TfrmImportLandmassData.cbPopulatedPlacesClick(
  Sender: TObject);
begin
  cbPointsPopulatedPlaces.Enabled := cbPopulatedPlaces.Checked;
  cbAreasPopulatedPlaces.Enabled := cbPopulatedPlaces.Checked;

  if not cbPopulatedPlaces.Checked then
  begin
    cbPointsPopulatedPlaces.Checked := cbPopulatedPlaces.Checked;
    cbAreasPopulatedPlaces.Checked := cbPopulatedPlaces.Checked;
  end;
end;

procedure TfrmImportLandmassData.cbRoadsClick(Sender: TObject);
begin
  cbPrimaryRoads.Enabled := cbRoads.Checked;
  cbSecondaryRoads.Enabled := cbRoads.Checked;

  if not cbRoads.Checked then
  begin
    cbPrimaryRoads.Checked := cbRoads.Checked;
    cbSecondaryRoads.Checked := cbRoads.Checked;
  end;
end;

procedure TfrmImportLandmassData.CreateLayerDirectory;
var
  path : string;
  i : Integer;
begin
  with FSelectedGameArea.FGameArea do
    path := FLibraryPath + '\' + Game_Area_Identifier;

  CreateDir(path + '\cells');

  for i := 0 to FSelectedLayer.Count - 1 do
    CreateDir(path + '\cells\' + FSelectedLayer[i]);
end;

procedure TfrmImportLandmassData.DeleteDirectory(const aPath: string);
var
  F : TSearchRec;
begin
  if FindFirst(aPath + '\*', faAnyFile, F) = 0 then
  begin
    try
      repeat
        if (F.Attr and faDirectory <> 0) then
        begin
          if (F.Name <> '.') and (F.Name <> '..') then
            DeleteDirectory(aPath + '\' + F.Name);
        end
        else
          DeleteFile(aPath + '\' + F.Name);
      until FindNext(F) <> 0;
      RemoveDir(aPath);
    finally
      FindClose(F);
    end;
  end;
end;

procedure TfrmImportLandmassData.cbRailroadsClick(Sender: TObject);
begin
  cbPrimaryRailroads.Enabled := cbRailroads.Checked;
  cbSecondaryRailroads.Enabled := cbRailroads.Checked;

  if not cbRailroads.Checked then
  begin
    cbPrimaryRailroads.Checked := cbRailroads.Checked;
    cbSecondaryRailroads.Checked := cbRailroads.Checked;
  end;
end;

procedure TfrmImportLandmassData.FormCreate(Sender: TObject);
begin
  FMap := TMap.Create(nil);
end;

procedure TfrmImportLandmassData.FormShow(Sender: TObject);
begin
  FLibraryPath := vAppDBSetting.MapDestPathVECT;
  edtLibrary.Text := FLibraryPath;

  GetMapLayerData;
  UpdateGeoFeatureImportForm;
  btnImport.Enabled := False;
  ProgressBar1.Visible := False;
end;

procedure TfrmImportLandmassData.GetGridIndex(const aCenterX, aCenterY,
  aWidth: Double; var aRect: TRect);
var
  i : Integer;
  halfWidth : Double;
begin
  halfWidth := 0.5 * aWidth;

  i := Floor((aCenterX - halfWidth + 180.0) / 10.0) + 1;
  aRect.Left := EnsureRange(i, 1, 36);

  i := Ceil((aCenterX + halfWidth + 180.0) / 10.0);
  aRect.Right := EnsureRange(i, 1, 36);

  i := Floor((90.0 - (aCenterY + halfWidth)) / 10.0);
  aRect.Top := EnsureRange(i, 0, 17);

  i := Floor((90.0 - (aCenterY - halfWidth)) / 10.0);
  aRect.Bottom := EnsureRange(i, 0, 17);
end;

function TfrmImportLandmassData.GetIndexLat(
  const aPos: Integer): string;
begin
  EnsureRange(aPos, 0, 17);
  Result := Char(Ord('A') + aPos);
end;

function TfrmImportLandmassData.GetIndexLong(
  const aPos: Integer): string;
var
  i : Integer;
begin
  i := EnsureRange(aPos, 1, 36);
  Result := Format('%2d', [i]);
end;

procedure TfrmImportLandmassData.GetLayerData;
var
  rect : TRect;
  pathSource, pathDest, fileName, fileSource, fileDest : string;
  i, j, k, layerId : Integer;
begin
  with FSelectedGameArea.FGameArea do
  begin
    GetGridIndex(Game_Centre_Long, Game_Centre_Lat, (Game_X_Dimension / 60.0),
      rect);

    pathSource := vAppDBSetting.MapSourcePathVECT + '\cells\';
    pathDest := FLibraryPath + '\' + Game_Area_Identifier + '\cells\';

    layerId := 1;
    FMap.Layers.RemoveAll;

    for i := 0 to FSelectedLayer.Count - 1 do
    begin
      for j := rect.Top to rect.Bottom do
      begin
        for k := rect.Left to rect.Right do
        begin
          fileName := FSelectedLayer[i] + '_' + GetIndexLat(j) + '_' +
            GetIndexLong(k);

          fileSource := pathSource + FSelectedLayer[i] + '\' + fileName;
          fileDest := pathDest + FSelectedLayer[i] + '\' + filename;

          if not FileExists(fileSource + '.tab') then
            Continue;

          CopyFile(PChar(fileSource + '.tab'), PChar(fileDest + '.tab'), False);
          CopyFile(PChar(fileSource + '.id'), PChar(fileDest + '.id'), False);
          CopyFile(PChar(fileSource + '.dat'), PChar(fileDest + '.dat'), False);
          CopyFile(PChar(fileSource + '.map'), PChar(fileDest + '.map'), False);

          FMap.Layers.Add(fileDest + '.tab', layerId);
          Inc(layerId);
        end;
      end;
    end;

    FMap.SaveMapAsGeoset('result', FLibraryPath + '\' + Game_Area_Identifier +
      '\' + Game_Area_Identifier + '.gst');
  end;
end;

procedure TfrmImportLandmassData.GetMapLayerData;
var
  path : string;
begin
  with FSelectedGameArea.FGameArea do
    path := FLibraryPath + '\' + Game_Area_Identifier;

  if not DirectoryExists(path + '\cells\') then
  begin
    FCoastlineExist := False;
    FDepthContoursExist := False;
    FElevationContoursExist := False;
    FPointsPopulatedPlacesExist := False;
    FAreasPopulatedPlacesExist := False;
    FMilitaryAirportExist := False;
    FCivilianAirportExist := False;
    FOtherAirportExist := False;
    FPrimaryRailroadsExist := False;
    FSecondaryRailroadsExist := False;
    FPrimaryRoadsExist := False;
    FSecondaryRoadsExist := False;
    FPoliticalBoundariesExist := False;
    FPipelinesExist := False;
    FWrecksExist := False;

    Exit;
  end;

  FCoastlineExist := DirectoryExists(path + '\cells\coastl\');
  FDepthContoursExist := DirectoryExists(path + '\cells\depthl\');
  FElevationContoursExist := DirectoryExists(path + '\cells\contourl\');
  FPointsPopulatedPlacesExist := DirectoryExists(path + '\cells\mispopp\');
  FAreasPopulatedPlacesExist := DirectoryExists(path + '\cells\builtupa\');
  FMilitaryAirportExist := DirectoryExists(path + '\cells\aerofacpmil\');
  FCivilianAirportExist := DirectoryExists(path + '\cells\aerofacpciv\');
  FOtherAirportExist := DirectoryExists(path + '\cells\aerofacpot\');
  FPrimaryRailroadsExist := DirectoryExists(path + '\cells\railrdlprim\');
  FSecondaryRailroadsExist := DirectoryExists(path + '\cells\railrdlsec\');
  FPrimaryRoadsExist := DirectoryExists(path + '\cells\roadlprim\');
  FSecondaryRoadsExist := DirectoryExists(path + '\cells\roadlsec\');
  FPoliticalBoundariesExist := DirectoryExists(path + '\cells\polbnda\');
  FPipelinesExist := DirectoryExists(path + '\cells\pipel\');
  FWrecksExist := DirectoryExists(path + '\cells\wreck\');
end;

procedure TfrmImportLandmassData.GetSelectedLayer;
begin
  FSelectedLayer.Clear;

//  ===================== symbol =====================
  if cbPointsPopulatedPlaces.Checked then
  begin
    FPointsPopulatedPlacesExist := True;
    FSelectedLayer.Add('mispopp');
  end;

  if cbMilitaryAirports.Checked then
  begin
    FMilitaryAirportExist := True;
    FSelectedLayer.Add('aerofacpmil');
  end;

  if cbCivilianAirports.Checked then
  begin
    FCivilianAirportExist := True;
    FSelectedLayer.Add('aerofacpciv');
  end;

  if cbOtherAirports.Checked then
  begin
    FOtherAirportExist := True;
    FSelectedLayer.Add('aerofacpot');
  end;

  if cbWrecks.Checked then
  begin
    FWrecksExist := True;
    FSelectedLayer.Add('wreck');
  end;

//  ===================== line =====================
  if cbCoastline.Checked then
  begin
    FCoastlineExist := True;
    FSelectedLayer.Add('coastl');
  end;

  if cbDepthContours.Checked then
  begin
    FDepthContoursExist := True;
    FSelectedLayer.Add('depthl');
  end;

  if cbElevationContours.Checked then
  begin
    FElevationContoursExist := True;
    FSelectedLayer.Add('contourl');
  end;

  if cbPrimaryRailroads.Checked then
  begin
    FPrimaryRailroadsExist := True;
    FSelectedLayer.Add('railrdlprim');
  end;

  if cbSecondaryRailroads.Checked then
  begin
    FSecondaryRailroadsExist := True;
    FSelectedLayer.Add('railrdlsec');
  end;

  if cbPrimaryRoads.Checked then
  begin
    FPrimaryRoadsExist := True;
    FSelectedLayer.Add('roadlprim');
  end;

  if cbSecondaryRoads.Checked then
  begin
    FSecondaryRoadsExist := True;
    FSelectedLayer.Add('roadlsec');
  end;

  if cbPipelines.Checked then
  begin
    FPipelinesExist := True;
    FSelectedLayer.Add('pipel');
  end;

//  ===================== region =====================
  if cbAreasPopulatedPlaces.Checked then
  begin
    FAreasPopulatedPlacesExist := True;
    FSelectedLayer.Add('builtupa');
  end;

  if cbPoliticalBoundaries.Checked then
  begin
    FPoliticalBoundariesExist := True;
    FSelectedLayer.Add('polbnda');
  end;

  FSelectedLayer.Add('oceansea');
end;

procedure TfrmImportLandmassData.LayerDataChange(Sender: TObject);
begin
  btnImport.Enabled := True;
end;

procedure TfrmImportLandmassData.trckbrScaleFactorChange(
  Sender: TObject);
begin
  edtScaleFactor.Text := '1 : ' + IntToStr(trckbrScaleFactor.Position);
end;

procedure TfrmImportLandmassData.UpdateGeoFeatureImportForm;
begin
  cbCoastline.Checked := FCoastlineExist;
  cbDepthContours.Checked := FDepthContoursExist;
  cbDepthContoursClick(cbDepthContours);
  cbElevationContours.Checked := FElevationContoursExist;
  cbElevationContoursClick(cbElevationContours);

  cbPointsPopulatedPlaces.Checked := FPointsPopulatedPlacesExist;
  cbAreasPopulatedPlaces.Checked := FAreasPopulatedPlacesExist;
  cbPopulatedPlaces.Checked := FPointsPopulatedPlacesExist or
    FAreasPopulatedPlacesExist;
  cbPopulatedPlacesClick(cbPopulatedPlaces);

  cbMilitaryAirports.Checked := FMilitaryAirportExist;
  cbCivilianAirports.Checked := FCivilianAirportExist;
  cbOtherAirports.Checked := FOtherAirportExist;
  cbAirports.Checked := FMilitaryAirportExist or FCivilianAirportExist or
    FOtherAirportExist;
  cbAirportsClick(cbAirports);

  cbPrimaryRailroads.Checked := FPrimaryRailroadsExist;
  cbSecondaryRailroads.Checked := FSecondaryRailroadsExist;
  cbRailroads.Checked := FPrimaryRailroadsExist or FSecondaryRailroadsExist;
  cbRailroadsClick(cbRailroads);

  cbPrimaryRoads.Checked := FPrimaryRoadsExist;
  cbSecondaryRoads.Checked := FSecondaryRoadsExist;
  cbRoads.Checked := FPrimaryRoadsExist or FSecondaryRoadsExist;
  cbRoadsClick(cbRoads);

  cbPoliticalBoundaries.Checked := FPoliticalBoundariesExist;
  cbPipelines.Checked := FPipelinesExist;
  cbWrecks.Checked := FWrecksExist;
end;

end.
