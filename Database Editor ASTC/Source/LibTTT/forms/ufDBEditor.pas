unit ufDBEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, jpeg, ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, ShellAPI,

  tttData;

type
  TfDBEditor = class(TForm)
    s: TImage;
    pnlLeft: TPanel;
    pnl1ExerciseBody: TPanel;
    mnScenario: TLabel;
    mnResourceAllocation: TLabel;
    mnEnvironment: TLabel;
    mnGameArea: TLabel;
    img1: TImage;
    Image3: TImage;
    Image4: TImage;
    img2: TImage;
    pnl1Exercise: TPanel;
    imgExercise: TImage;
    pnl2Platforms: TPanel;
    imgPlatforms: TImage;
    pnl2PlatformsBody: TPanel;
    Image6: TImage;
    mnVehicle: TLabel;
    pnl1ExerciseSparator: TPanel;
    pnl2PlatformsSparator: TPanel;
    pnl3Sensors: TPanel;
    imgSensors: TImage;
    pnl3SensorsBody: TPanel;
    Image9: TImage;
    mnRadar: TLabel;
    Image10: TImage;
    mnSonar: TLabel;
    Image11: TImage;
    mnESM: TLabel;
    Image12: TImage;
    mnElectroOpticalDetector: TLabel;
    Image13: TImage;
    Image14: TImage;
    mnSonobuoy: TLabel;
    mnMAD: TLabel;
    pnl3SensorsSparator: TPanel;
    pnl4Weapons: TPanel;
    imgWeapons: TImage;
    pnl4WeaponsBody: TPanel;
    Image16: TImage;
    mnMissile: TLabel;
    Image17: TImage;
    mnTorpedo: TLabel;
    Image18: TImage;
    mnMine: TLabel;
    Image19: TImage;
    mnGun: TLabel;
    Image20: TImage;
    mnBomb: TLabel;
    pnl4WeaponsSparator: TPanel;
    pnl5Countermeasur: TPanel;
    imgCountermeasures: TImage;
    pnl5CountermeasuresBody: TPanel;
    Image21: TImage;
    mnAcousticDecoy: TLabel;
    Image22: TImage;
    mnAirBubble: TLabel;
    Image23: TImage;
    mnChaff: TLabel;
    Image24: TImage;
    mnInfraredDecoy: TLabel;
    Image25: TImage;
    mnFloatingDecoy: TLabel;
    Image26: TImage;
    mnSelfDefensiveJammer: TLabel;
    Image27: TImage;
    mnTowedJammerDecoy: TLabel;
    Image28: TImage;
    mnRadarNoiseJammer: TLabel;
    pnl5CountermeasuresSparator: TPanel;
    pnl6Other: TPanel;
    imgOther: TImage;
    pnl6OtherBody: TPanel;
    Image48: TImage;
    mnRuntimePlatformLibrary: TLabel;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    mnGraphicalOverlays: TLabel;
    Image52: TImage;
    mnStudentRoles: TLabel;
    mnGameDefaults: TLabel;
    mnSNRvsPODCurve: TLabel;
    pnl6OtherSparator: TPanel;
    pnl8Shutdown: TPanel;
    imgShutdown: TImage;
    pnl8ShutdownBody: TPanel;
    Image66: TImage;
    mnShutdownDatabaseEditor: TLabel;
    pnl8ShutdownSparator: TPanel;
    pnlSparatorHeader: TPanel;
    pnlSparatorLeft: TPanel;
    pnlHeader: TPanel;
    Timer1: TTimer;
    Image1: TImage;
    mnSatelite: TLabel;
    MainMenu1: TMainMenu;
    Exercise1: TMenuItem;
    Scenario1: TMenuItem;
    ResourceAllocation1: TMenuItem;
    Environment1: TMenuItem;
    GameArea1: TMenuItem;
    Platforms1: TMenuItem;
    Vehicle1: TMenuItem;
    Satellite1: TMenuItem;
    Motion1: TMenuItem;
    Sensors1: TMenuItem;
    Radar1: TMenuItem;
    Sonar1: TMenuItem;
    ESM1: TMenuItem;
    ElectroOpticalDetector1: TMenuItem;
    Sonobuoy1: TMenuItem;
    MAD1: TMenuItem;
    Weapons1: TMenuItem;
    Missile1: TMenuItem;
    Torpedo1: TMenuItem;
    Mine1: TMenuItem;
    Gun1: TMenuItem;
    Bomb1: TMenuItem;
    Countermeasures1: TMenuItem;
    AcousticDecoy1: TMenuItem;
    AirBubble1: TMenuItem;
    Chaff1: TMenuItem;
    InfraredDecoy1: TMenuItem;
    FloatingDecoy1: TMenuItem;
    SelfDefensiveJammer1: TMenuItem;
    TowedJammerDecoy1: TMenuItem;
    RadarNoiseJammer1: TMenuItem;
    Other1: TMenuItem;
    RuntimePlatformLibrary1: TMenuItem;
    PredefinedPatterns1: TMenuItem;
    RadarActivationIntervals1: TMenuItem;
    GraphicalOverlays1: TMenuItem;
    StudentRoles1: TMenuItem;
    GameDefaults1: TMenuItem;
    SNRvsPODCurve1: TMenuItem;
    ReportEditor1: TMenuItem;
    ReportViewer1: TMenuItem;
    Options1: TMenuItem;
    DisplayDimensionsinfeet1: TMenuItem;
    DisplayDimensionsinmetres1: TMenuItem;
    Shutdown1: TMenuItem;
    ShutdownDatabaseEditor1: TMenuItem;
    Help1: TMenuItem;
    AboutDatabaseEditor1: TMenuItem;
    pnlVariasi: TPanel;
    pnlSparatorRight: TPanel;
    Image15: TImage;
    mnRadarActivationIntervals: TLabel;
    img3: TImage;
    pnlFooter: TPanel;
    img4: TImage;
    pnlSparatorFooter: TPanel;
    pnlHome: TPanel;
    Image7: TImage;
    mnMotion: TLabel;
    pnlSparatorCenterLeft: TPanel;
    imgBackground: TImage;
    pnlMainBackground: TPanel;
    pnlSparatorCenterRight: TPanel;

    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    {$REGION ' Exercise Section '}

//    procedure ScenarioClick(Sender: TObject);
//    procedure ResourceAllocationClick(Sender: TObject);
//    procedure EnvironmentClick(Sender: TObject);
//    procedure GameAreaClick(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Platform Section '}

//    procedure VehicleClick(Sender: TObject);
//    procedure SatelliteClick(Sender: TObject);
//    procedure MotionClick(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Sensors Section '}

    procedure SubMenuClick(Sender: TObject);
//    procedure SonarClick(Sender: TObject);
//    procedure ESMClick(Sender: TObject);
//    procedure ElectroOpticalDetectorClick(Sender: TObject);
//    procedure SonobuoyClick(Sender: TObject);
//    procedure MADClick(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Weapon Section '}

//    procedure MissileClick(Sender: TObject);
//    procedure TorpedoClick(Sender: TObject);
//    procedure MineClick(Sender: TObject);
//    procedure GunClick(Sender: TObject);
//    procedure BombClick(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Countermeasure Section '}

//    procedure AcousticDecoyClick(Sender: TObject);
//    procedure AirBubbleClick(Sender: TObject);
//    procedure ChaffClick(Sender: TObject);
//    procedure InfraredDecoyClick(Sender: TObject);
//    procedure FloatingDecoyClick(Sender: TObject);
//    procedure SelfDefensiveJammerClick(Sender: TObject);
//    procedure TowedJammerDecoyClick(Sender: TObject);
//    procedure RadarNoiseJammerClick(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Other Section '}

//    procedure RuntimePlatformLibraryClick(Sender: TObject);
//    procedure PredefinedPatternsClick(Sender: TObject);
//    procedure RadarActivationIntervalsClick(Sender: TObject);
//    procedure GraphicalOverlaysClick(Sender: TObject);
//    procedure StudentRolesClick(Sender: TObject);
//    procedure GameDefaultsClick(Sender: TObject);
//    procedure SNRvsPODCurveClick(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Shutdown Section '}

    procedure ReportEditor1Click(Sender: TObject);
    procedure ReportViewer1Click(Sender: TObject);
    procedure DisplayDimensionsinfeet1Click(Sender: TObject);
    procedure DisplayDimensionsinmetres1Click(Sender: TObject);
    procedure ShutdownDatabaseEditor1Click(Sender: TObject);
    procedure AboutDatabaseEditor1Click(Sender: TObject);

    {$ENDREGION}

    {$REGION ' Navbar Section '}

    procedure Timer1Timer(Sender: TObject);
    procedure CollapseMenuClick(Sender: TObject);
    procedure UnCollapseMenuClick();
    procedure MainMenuClick(Sender: TObject);

    procedure IconMouseEnter(Sender: TObject);
    procedure IconMouseLeave(Sender: TObject);
    procedure SubMenuMouseEnter(Sender: TObject);
    procedure SuMenuMouseLeave(Sender: TObject);

    {$ENDREGION}

  private
    CurrentForm: TForm;
    isFold : boolean;
    pnlActive : Integer;

    iconName : string;
    filePath, imgChoice : string;

    FDockedForm : TForm;

    procedure IconLoad;

    procedure DockForm(aForm: TForm);
    procedure FormOnClose(Sender: TObject; var Action: TCloseAction);
//    procedure LoadImageVariasi(i : byte);

  public

    procedure LoadImageVariasi(i : byte);
    procedure FormFactory(aFormType: E_FormType; aDocked: Boolean = False);

  end;

var
  fDBEditor: TfDBEditor;

implementation

uses
  ufrmExercise, ufrmPlatforms, ufrmSensors, ufrmWeapons, ufrmCountermeasure, ufrmOther,

  ufrmAvailableScenario, ufrmAvailableResourceAllocation, ufrmAvailableEnvironments,
  ufrmAvailableGameArea,

  ufrmAvailableVehicle, ufrmAvailableSatellite, ufrmAvailableMotion,

  ufrmAvailableRadar, ufrmAvailableSonar,ufrmAvailableESM, ufrmAvailableEOD,
  ufrmAvailableSonobuoy,ufrmAvailableMAD,

  ufrmAvailableMissile, ufrmAvailableTorpedo,ufrmAvailableMine, ufrmAvailableGun,
  ufrmAvailableBomb,

  ufrmAvailableAcousticDecoy, ufrmAvailableAirBubble, ufrmAvailableChaff,
  ufrmAvailableInfraredDecoy, ufrmAvailableFloatingDecoy, ufrmAvailableSelfDefensiveJammer,
  ufrmAvailableTowedJammerDecoy, ufrmAvailableRadarNoiseJammer,

  ufrmAvailableRuntimePlatformLibrary, ufrmAvailablePredifinedPattern,
  ufrmAvailableRadarActivationIntervals,  ufrmAvailableGrapicalOverlay, ufrmAvailableStudentRoles,
  ufrmAvailableGameDefaults, ufrmAvailableSNRvsPODCurve;

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

procedure TfDBEditor.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
  EnableComposited(pnlLeft);

  pnl1ExerciseBody.Height := 0;
  pnl2PlatformsBody.Height := 0;
  pnl3SensorsBody.Height := 0;
  pnl4WeaponsBody.Height := 0;
  pnl5CountermeasuresBody.Height := 0;
  pnl6OtherBody.Height := 0;
  pnl8ShutdownBody.Height := 0;
end;

procedure TfDBEditor.FormShow(Sender: TObject);
begin
  if ParamCount > 0 then
  begin
    case StrToInt(ParamStr(1)) of
      1:
      begin
        Exercise1.Visible := False;
        Other1.Visible := False;
      end;
      2:
      begin
        Exercise1.Visible := False;
        Platforms1.Visible := False;
        Sensors1.Visible := False;
        Weapons1.Visible := False;
        Countermeasures1.Visible := False;

        RuntimePlatformLibrary1.Visible := False;
        RadarActivationIntervals1.Visible := False;
        GraphicalOverlays1.Visible := False;
        StudentRoles1.Visible := False;
        GameDefaults1.Visible := False;
        SNRvsPODCurve1.Visible := False;
        ReportEditor1.Visible := False;
        ReportViewer1.Visible := False;
      end;
      3:
      begin
        Platforms1.Visible := False;
        Sensors1.Visible := False;
        Weapons1.Visible := False;
        Countermeasures1.Visible := False;
        Other1.Visible := False;

        Scenario1.Visible := False;
        Environment1.Visible := False;
        GameArea1.Visible := False;
      end;
      4:
      begin
        Platforms1.Visible := False;
        Sensors1.Visible := False;
        Weapons1.Visible := False;
        Countermeasures1.Visible := False;

        ResourceAllocation1.Visible := False;
        Environment1.Visible := False;
        GameArea1.Visible := False;

        PredefinedPatterns1.Visible := False;
        RadarActivationIntervals1.Visible := False;
        GraphicalOverlays1.Visible := False;
        StudentRoles1.Visible := False;
        GameDefaults1.Visible := False;
        SNRvsPODCurve1.Visible := False;
        ReportEditor1.Visible := False;
        ReportViewer1.Visible := False;
      end;
    end;
  end;

  DisplayDimensionsinfeet1.Checked := True;
  DisplayDimensionsinmetres1.Checked := False;
end;

procedure TfDBEditor.FormOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caHide;
end;

{$REGION ' Menu Section '}

procedure TfDBEditor.IconMouseLeave(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Main\';
  imgChoice := '.PNG';

  IconLoad;
end;

procedure TfDBEditor.IconMouseEnter(Sender: TObject);
begin
  iconName := TImage(sender).Name;
  filePath := 'data\Image DBEditor\Interface\Main\';
  imgChoice := '_Select.PNG';

  IconLoad;
end;

procedure TfDBEditor.MainMenuClick(Sender: TObject);
begin
  if Sender is TImage then
    pnlActive := TImage(sender).Tag
  else
    Exit;

  LoadImageVariasi(1);
  FormFactory(E_FormType(pnlActive),True);

  CollapseMenuClick(Sender);
end;

procedure TfDBEditor.SuMenuMouseLeave(Sender: TObject);
begin
  TLabel(sender).Font.Color := clWhite;
end;

procedure TfDBEditor.SubMenuMouseEnter(Sender: TObject);
begin
  TLabel(sender).Font.Color := clAqua;
end;

procedure TfDBEditor.SubMenuClick(Sender: TObject);
var
  subMenuTemp : Integer;

begin
  if Sender is TLabel then
    subMenuTemp := TLabel(sender).Tag
  else
    Exit;

  LoadImageVariasi(1);
  FormFactory(E_FormType(subMenuTemp),True);
end;

{$ENDREGION}

{$REGION ' Navbar Section '}

procedure TfDBEditor.LoadImageVariasi(i: byte);
begin
//  pnlVariasi.Visible := i = 0;
  pnlVariasi.Visible := False;
end;

procedure TfDBEditor.DockForm(aForm: TForm);
begin
  if Assigned(FDockedForm) and (FDockedForm <> aForm) then
    FDockedForm.Hide;

  FDockedForm := aForm;

  with FDockedForm do
  begin
    Left := 0;
    Top := 0;
    Position := poDefault;
    BorderStyle := bsNone;
    ParentColor := True;
    Parent := pnlHome;
    Align := alClient;
    OnClose := FormOnClose;
    Show;
  end;
end;

procedure TfDBEditor.FormFactory(aFormType: E_FormType; aDocked: Boolean);
var
  aForm : TForm;
begin
  aForm := nil;

  case aFormType of

    {$REGION ' Main Menu '}
    ftfrmSensor :
    begin
      if not Assigned(frmSensors) then
          frmSensors := TfrmSensors.Create(self);

      aForm := frmSensors;
    end;
    ftfrmWeapon :
    begin
      if not Assigned(frmWeapons) then
          frmWeapons := TfrmWeapons.Create(self);

      aForm := frmWeapons;
    end;
    ftfrmCountermaesure :
    begin
      if not Assigned(frmCountermeasure) then
          frmCountermeasure := TfrmCountermeasure.Create(self);

      aForm := frmCountermeasure;
    end;
    ftfrmPlatform :
    begin
      if not Assigned(frmPlatforms) then
          frmPlatforms := TfrmPlatforms.Create(self);

      aForm := frmPlatforms;
    end;
    ftfrmOther :
    begin
      if not Assigned(frmOther) then
          frmOther := TfrmOther.Create(self);

      aForm := frmOther;
    end;
    ftfrmExercise :
    begin
      if not Assigned(frmExercise) then
          frmExercise := TfrmExercise.Create(self);

      aForm := frmExercise;
    end;
    ftShutdown :
    begin
      Exit
    end;
    {$ENDREGION}

    {$REGION ' Sensor Sub Menu '}
    ftfrmAvailableRadar :
    begin
      if not Assigned(frmAvailableRadar) then
          frmAvailableRadar := TfrmAvailableRadar.Create(self);

      aForm := frmAvailableRadar;
    end;
    ftfrmAvailableSonar :
    begin
      if not Assigned(frmAvailableSonar) then
          frmAvailableSonar := TfrmAvailableSonar.Create(self);

      aForm := frmAvailableSonar;
    end;
    ftfrmAvailableESM :
    begin
      if not Assigned(frmAvailableESM) then
          frmAvailableESM := TfrmAvailableESM.Create(self);

      aForm := frmAvailableESM;
    end;
    ftfrmAvailableEOD :
    begin
      if not Assigned(frmAvailableEOD) then
          frmAvailableEOD := TfrmAvailableEOD.Create(self);

      aForm := frmAvailableEOD;
    end;
    ftfrmAvailableMAD :
    begin
      if not Assigned(frmAvailableMAD) then
          frmAvailableMAD := TfrmAvailableMAD.Create(self);

      aForm := frmAvailableMAD;
    end;
    ftfrmAvailableSonobuoy :
    begin
      if not Assigned(frmAvailableSonobuoy) then
          frmAvailableSonobuoy := TfrmAvailableSonobuoy.Create(self);

      aForm := frmAvailableSonobuoy;
    end;
    {$ENDREGION}

    {$REGION ' Weapon Sub Menu '}
    ftfrmAvailableMissile :
    begin
      if not Assigned(frmAvailableMissile) then
          frmAvailableMissile := TfrmAvailableMissile.Create(self);

      aForm := frmAvailableMissile;
    end;
    ftfrmAvailableTorpedo :
    begin
      if not Assigned(frmAvailableTorpedo) then
          frmAvailableTorpedo := TfrmAvailableTorpedo.Create(self);

      aForm := frmAvailableTorpedo;
    end;
    ftfrmAvailableMine :
    begin
      if not Assigned(frmAvailableMine) then
          frmAvailableMine := TfrmAvailableMine.Create(self);

      aForm := frmAvailableMine;
    end;
    ftfrmAvailableGun :
    begin
      if not Assigned(frmAvailableGun) then
          frmAvailableGun := TfrmAvailableGun.Create(self);

      aForm := frmAvailableGun;
    end;
    ftfrmAvailableBomb :
    begin
      if not Assigned(frmAvailableBomb) then
          frmAvailableBomb := TfrmAvailableBomb.Create(self);

      aForm := frmAvailableBomb;
    end;
    {$ENDREGION}

    {$REGION ' Countermeasure Sub Menu '}
    ftfrmAvailableAcousticDecoy :
    begin
      if not Assigned(frmAvailableAcousticDecoy) then
          frmAvailableAcousticDecoy := TfrmAvailableAcousticDecoy.Create(self);

      aForm := frmAvailableAcousticDecoy;
    end;
    ftfrmAvailableAirBubble :
    begin
      if not Assigned(frmAvailableAirBubble) then
          frmAvailableAirBubble := TfrmAvailableAirBubble.Create(self);

      aForm := frmAvailableAirBubble;
    end;
    ftfrmAvailableChaff :
    begin
      if not Assigned(frmAvailableChaff) then
          frmAvailableChaff := TfrmAvailableChaff.Create(self);

      aForm := frmAvailableChaff;
    end;
    ftfrmAvailableSelfDefensiveJammer :
    begin
      if not Assigned(frmAvailableSelfDefensiveJammer) then
          frmAvailableSelfDefensiveJammer := TfrmAvailableSelfDefensiveJammer.Create(self);

      aForm := frmAvailableSelfDefensiveJammer;
    end;
    ftfrmAvailableInfraredDecoy :
    begin
      if not Assigned(frmAvailableInfraredDecoy) then
          frmAvailableInfraredDecoy := TfrmAvailableInfraredDecoy.Create(self);

      aForm := frmAvailableInfraredDecoy;
    end;
    ftfrmAvailableTowedJammerDecoy :
    begin
      if not Assigned(frmAvailableTowedJammerDecoy) then
          frmAvailableTowedJammerDecoy := TfrmAvailableTowedJammerDecoy.Create(self);

      aForm := frmAvailableTowedJammerDecoy;
    end;
    ftfrmAvailableRadarNoiseJammer :
    begin
      if not Assigned(frmAvailableRadarNoiseJammer) then
          frmAvailableRadarNoiseJammer := TfrmAvailableRadarNoiseJammer.Create(self);

      aForm := frmAvailableRadarNoiseJammer;
    end;
    ftfrmAvailableFloatingDecoy :
    begin
      if not Assigned(frmAvailableFloatingDecoy) then
          frmAvailableFloatingDecoy := TfrmAvailableFloatingDecoy.Create(self);

      aForm := frmAvailableFloatingDecoy;
    end;
    {$ENDREGION}

    {$REGION ' Platform Sub Menu '}
    ftfrmAvailableVehicle :
    begin
      if not Assigned(frmAvailableVehicle) then
          frmAvailableVehicle := TfrmAvailableVehicle.Create(self);

      aForm := frmAvailableVehicle;
    end;
    {$ENDREGION}

    {$REGION ' Other Sub Menu '}
    ftfrmAvailableRuntimePlatformLibrary :
    begin
      if not Assigned(frmAvailableRuntimePlatformLibrary) then
          frmAvailableRuntimePlatformLibrary := TfrmAvailableRuntimePlatformLibrary.Create(self);

      aForm := frmAvailableRuntimePlatformLibrary;
    end;
    ftfrmAvailableGrapicalOverlay :
    begin
      if not Assigned(frmAvailableGrapicalOverlay) then
          frmAvailableGrapicalOverlay := TfrmAvailableGrapicalOverlay.Create(self);

      aForm := frmAvailableGrapicalOverlay;
    end;
    ftfrmAvailableStudentRoles :
    begin
      if not Assigned(frmAvailableStudentRoles) then
          frmAvailableStudentRoles := TfrmAvailableStudentRoles.Create(self);

      aForm := frmAvailableStudentRoles;
    end;
    ftfrmAvailableGameDefaults :
    begin
      if not Assigned(frmAvailableGameDefaults) then
          frmAvailableGameDefaults := TfrmAvailableGameDefaults.Create(self);

      aForm := frmAvailableGameDefaults;
    end;
    ftfrmAvailableSNRvsPODCurve :
    begin
      if not Assigned(frmAvailableSNRvsPODCurve) then
          frmAvailableSNRvsPODCurve := TfrmAvailableSNRvsPODCurve.Create(self);

      aForm := frmAvailableSNRvsPODCurve;
    end;
    ftfrmAvailableMotion :
    begin
      if not Assigned(frmAvailableMotion) then
          frmAvailableMotion := TfrmAvailableMotion.Create(self);

      aForm := frmAvailableMotion;
    end;
    {$ENDREGION}

    {$REGION ' Exercise Sub Menu '}
    ftfrmAvailableScenario :
    begin
      if not Assigned(frmAvailableScenario) then
          frmAvailableScenario := TfrmAvailableScenario.Create(self);

      aForm := frmAvailableScenario;
    end;
    ftfrmAvailableResourceAllocation :
    begin
      if not Assigned(frmAvailableResourceAllocation) then
          frmAvailableResourceAllocation := TfrmAvailableResourceAllocation.Create(self);

      aForm := frmAvailableResourceAllocation;
    end;
    ftfrmAvailableEnvironments :
    begin
      if not Assigned(frmAvailableEnvironments) then
          frmAvailableEnvironments := TfrmAvailableEnvironments.Create(self);

      aForm := frmAvailableEnvironments;
    end;
    ftfrmAvailableGameArea :
    begin
      if not Assigned(frmAvailableGameArea) then
          frmAvailableGameArea := TfrmAvailableGameArea.Create(self);

      aForm := frmAvailableGameArea;
    end;
    {$ENDREGION}

  end;

  if Assigned(aForm) and aDocked then
    DockForm(aForm);
end;

procedure TfDBEditor.IconLoad;
begin
  if iconName = 'imgExercise' then
  begin
    imgExercise.Picture.LoadFromFile(filePath + 'imgExercise' + imgChoice);
  end
  else if iconName = 'imgPlatforms' then
  begin
    imgPlatforms.Picture.LoadFromFile(filePath + 'imgPlatforms' + imgChoice);
  end
  else if iconName = 'imgSensors' then
  begin
    imgSensors.Picture.LoadFromFile(filePath + 'imgSensors' + imgChoice);
  end
  else if iconName = 'imgWeapons' then
  begin
    imgWeapons.Picture.LoadFromFile(filePath + 'imgWeapons' + imgChoice);
  end
  else if iconName = 'imgCountermeasures' then
  begin
    imgCountermeasures.Picture.LoadFromFile(filePath + 'imgCountermeasures' + imgChoice);
  end
  else if iconName = 'imgOther' then
  begin
    imgOther.Picture.LoadFromFile(filePath + 'imgOther' + imgChoice);
  end
  else if iconName = 'imgShutdown' then
  begin
    imgShutdown.Picture.LoadFromFile(filePath + 'imgShutdown' + imgChoice);
  end;
end;

procedure TfDBEditor.CollapseMenuClick(Sender: TObject);
begin

  case pnlActive of
    0: if pnl1ExerciseBody.Height <> 0 then exit;
    1: if pnl2PlatformsBody.Height <> 0 then exit;
    2: if pnl3SensorsBody.Height <> 0 then exit;
    3: if pnl4WeaponsBody.Height <> 0 then exit;
    4: if pnl5CountermeasuresBody.Height <> 0 then exit;
    5: if pnl6OtherBody.Height <> 0 then exit;
    7: if pnl8ShutdownBody.Height <> 0 then exit;
  end;

  UnCollapseMenuClick;

  Timer1.Enabled := True;
  isFold := true;
end;

procedure TfDBEditor.UnCollapseMenuClick;
begin
  pnl1ExerciseBody.Height := 0;
  pnl2PlatformsBody.Height := 0;
  pnl3SensorsBody.Height := 0;
  pnl4WeaponsBody.Height := 0;
  pnl5CountermeasuresBody.Height := 0;
  pnl6OtherBody.Height := 0;
  pnl8ShutdownBody.Height := 0;
end;

procedure TfDBEditor.Timer1Timer(Sender: TObject);
begin
  if not Timer1.Enabled then
    Exit;

  if not isFold then
    Exit;

  case pnlActive of
    0:
    begin
      if pnl1ExerciseBody.Height < (mnGameArea.Top + 38) then //160 then
        pnl1ExerciseBody.Height := pnl1ExerciseBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
    1:
    begin
      if pnl2PlatformsBody.Height < (mnVehicle.Top + 38) then
        pnl2PlatformsBody.Height := pnl2PlatformsBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
    2:
    begin
      if pnl3SensorsBody.Height < (mnSonobuoy.Top + 38) then
        pnl3SensorsBody.Height := pnl3SensorsBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
    3:
    begin
      if pnl4WeaponsBody.Height < (mnBomb.Top + 38) then
        pnl4WeaponsBody.Height := pnl4WeaponsBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
    4:
    begin
      if pnl5CountermeasuresBody.Height < (mnRadarNoiseJammer.Top + 38) then
        pnl5CountermeasuresBody.Height := pnl5CountermeasuresBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
     5:
    begin
      if pnl6OtherBody.Height < (mnMotion.Top + 38) then
        pnl6OtherBody.Height := pnl6OtherBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
    36:
    begin
      if pnl8ShutdownBody.Height < (mnShutdownDatabaseEditor.Top + 38) then
        pnl8ShutdownBody.Height := pnl8ShutdownBody.Height + 2
      else
      begin
        Timer1.Enabled := false;
      end;
    end;
  end;
end;

{$ENDREGION}

{$REGION ' Tidak Digunakan Section '}

procedure TfDBEditor.AboutDatabaseEditor1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'D:\TTT\help\Vol 6.pdf', '', '', 1);
end;

procedure TfDBEditor.DisplayDimensionsinfeet1Click(Sender: TObject);
begin
  DisplayDimensionsinfeet1.Checked := True;
  DisplayDimensionsinmetres1.Checked := False;
end;

procedure TfDBEditor.DisplayDimensionsinmetres1Click(Sender: TObject);
begin
  DisplayDimensionsinfeet1.Checked := False;
  DisplayDimensionsinmetres1.Checked := True;
end;

procedure TfDBEditor.ShutdownDatabaseEditor1Click(Sender: TObject);
var warning : Integer;
begin
  warning := MessageDlg('Shutdown Database Editor?',mtWarning,[mbYes,mbNo],0);
  if warning = mrYes then
  begin
    try
      Self.Close;
    finally
      free;
    end;
  end;
end;

procedure TfDBEditor.ReportEditor1Click(Sender: TObject);
begin
//  with fOtherSingle do
//  begin
//    OtherFormShow := ofsReportEditor;
//    ShowModal;
//  end;
end;

procedure TfDBEditor.ReportViewer1Click(Sender: TObject);
begin
//  with fOtherSingle do
//  begin
//    OtherFormShow := ofsReportViewer;
//    ShowModal;
//  end;
end;

{$ENDREGION}

end.
