unit ufmOwnShip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ufmControlled, ExtCtrls;

type
  TfmOwnShip = class(TfmControlled)
    ScrollBox4: TScrollBox;
    lbOwnShipPosition1: TLabel;
    Label22: TLabel;
    lbOrderHeading: TLabel;
    lbActualHeading: TLabel;
    Label23: TLabel;
    lbActualCourse: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    lbOwnShipOrderGround: TLabel;
    Label28: TLabel;
    lbOrderedAltitude: TLabel;
    lbOwnShipActualground: TLabel;
    Label29: TLabel;
    lbGuidance: TLabel;
    lbFuel: TLabel;
    Label46: TLabel;
    lbOwnShipPosition2: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lbActualAltitude: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    StaticText16: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText58: TStaticText;
    StaticText64: TStaticText;
    StaticText65: TStaticText;
    StaticText66: TStaticText;
    StaticText68: TStaticText;
    StaticText69: TStaticText;
    StaticText72: TStaticText;
    StaticText73: TStaticText;
    StaticText74: TStaticText;
    StaticText70: TStaticText;
    btnLaunch: TButton;
    lb1: TStaticText;
    lb2: TStaticText;
    lbName: TLabel;
    lb4: TStaticText;
    lb5: TStaticText;
    lbClass: TLabel;
    btnLandPlatform: TButton;
    pnlInfoDepth: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure btnLaunchClick(Sender: TObject);
    procedure btnLandPlatformClick(Sender: TObject);
  private
    FOnLaunchEmbarked : TNotifyEvent;
    procedure SetOnLaunchEmbarked(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateForm; override;
    procedure Refresh_OwnShipTab(Sender: TObject);
    procedure RemoveListOwnShip(ctrlObj: TObject);

    property OnLaunchEmbarked : TNotifyEvent read FOnLaunchEmbarked
      write SetOnLaunchEmbarked;
  end;

implementation

uses
  uT3Unit, uT3Vehicle, uBaseCoordSystem, uGuidance, uLaunchPlatform,
  uDBAsset_Vehicle, uSettingCoordinate, uSimMgr_Client, uSimObjects,
  uGameData_TTT, uFLanding, tttData;

{$R *.dfm}

procedure TfmOwnShip.btnLandPlatformClick(Sender: TObject);
begin
  if not Assigned(frmLanding) then
      frmLanding := TfrmLanding.Create(self);

  frmLanding.ControlledPlatform := FControlled as TT3PlatformInstance;
  frmLanding.Show;
end;

procedure TfmOwnShip.btnLaunchClick(Sender: TObject);
begin
  if FControlled <> nil then begin
    if Assigned(FOnLaunchEmbarked) then
      FOnLaunchEmbarked(TT3PlatformInstance(FControlled));
  end;
end;

procedure TfmOwnShip.Refresh_OwnShipTab(Sender: TObject);
var
  idCoordinat: integer;
  long, lat: double;
  pY, pX: Extended;
begin
  idCoordinat := fSettingCoordinate.IdCoordinat;
  long := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Long;
  lat := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Lat;

  if Sender = nil then
    exit;

  if FControlled = nil then begin
    btnLaunch.Enabled := false;
    exit;
  end;

  if not TT3PlatformInstance(FControlled).Initialized then
    exit;

  with TT3PlatformInstance(FControlled) do
  begin
    if UnitDefinition is TVehicle_Definition then
    begin
      lbGuidance.Caption := GetGuidanceStr(TVehicle_Definition(UnitDefinition).GuidanceType);
    end
    else
    begin
      lbGuidance.Caption := '---';
    end;

    if FControlled is TT3Vehicle then
      lbClass.Caption := TT3Vehicle(FControlled).VehicleDefinition.FData.Vehicle_Identifier
    else
      lbClass.Caption := '---';

    lbName.Caption := InstanceName;

    case idCoordinat of
      1:
      begin
        lbOwnShipPosition1.Caption  := formatDMS_long(getPositionX);
        lbOwnShipPosition2.Caption  := formatDMS_latt(getPositionY);
      end;
      2:
      begin
        pX := CalcMove(getPositionX, long);
        pY := CalcMove(getPositionY, lat);

        if (pX >= 0) and (pY >=0) then
        begin
          lbOwnShipPosition1.Caption := 'White ' + FormatFloat('0.00', Abs(pX));  //kuadran 1
        end;
        if (pX <= 0) and (pY >=0) then
        begin
          lbOwnShipPosition1.Caption := 'Red ' + FormatFloat('0.00', Abs(pX));    //kuadran 2
        end;
        if (pX < 0) and (pY < 0) then
        begin
          lbOwnShipPosition1.Caption := 'Green ' + FormatFloat('0.00', Abs(pX));  //kuadran 3
        end;
        if (pX >= 0) and (pY <= 0) then
        begin
          lbOwnShipPosition1.Caption := 'Blue ' + FormatFloat('0.00', Abs(pX));   //kuadran 4
        end;

       lbOwnShipPosition2.Caption := FormatFloat('0.00', Abs(pY));
      end;
      3:
      begin
        lbOwnShipPosition1.Caption := ConvDegree_To_Georef(getPositionX,getPositionY);
        lbOwnShipPosition2.Caption := '---';
      end;
    end;

    if FControlled is TT3Vehicle then
      lbActualHeading.Caption       := FormatCourse(TT3Vehicle(FControlled).Heading)
    else
      lbActualHeading.Caption       := '---';

    lbActualCourse.Caption        := FormatCourse(Course);
    lbOwnShipActualground.Caption := FormatSpeed(Speed);

    if Speed = 0 then
      lbOwnShipActualground.Caption := '0.00';

    if Course = 0 then
    begin
      lbActualCourse.Caption  := '0.00';
      lbActualHeading.Caption := '0.00';
    end;

    {enabling launch and land button}
    btnLaunch.Enabled := false;

    if not simMgrClient.ISInstructor then
    begin
      btnLandPlatform.Visible := True;
    end
    else
      btnLandPlatform.Visible := false;

    if FControlled is TT3Vehicle then
    begin
      if (TT3Vehicle(FControlled).PlatformDomain = vhdSubsurface) then
      begin
        pnlInfoDepth.Visible := True;
        Label34.Caption := 'meter';
        Label37.Caption := 'meter';
        lbOrderedAltitude.Caption := FormatAltitude (TT3Vehicle(FControlled).OrderedAltitude);
        lbActualAltitude.Caption := FormatAltitude(Altitude);
      end
      else
      begin
        pnlInfoDepth.Visible := False;
        Label34.Caption := 'feet';
        Label37.Caption := 'feet';
        lbOrderedAltitude.Caption := FormatAltitude (TT3Vehicle(FControlled).OrderedAltitude * C_Meter_To_Feet);
        lbActualAltitude.Caption := FormatAltitude(Altitude * C_Meter_To_Feet);
      end;

      lbOrderHeading.Caption        := FormatCourse   (TT3Vehicle(FControlled).OrderedHeading);
      lbOwnShipOrderGround.Caption  := FormatSpeed    (TT3Vehicle(FControlled).OrderedSpeed);

      if TT3Vehicle(FControlled).OrderedHeading = 0 then
        lbOrderHeading.Caption  := '0.00';

      if TT3Vehicle(FControlled).OrderedSpeed = 0 then
        lbOwnShipOrderGround.Caption := '0.00';

      if TT3Vehicle(FControlled).OrderedHeading = 0 then
        lbOrderHeading.Caption := '0.00';

      if TT3Vehicle(FControlled).EmbarkedVehicles.Count > 0 then
        btnLaunch.Enabled := true
      else
        btnLaunch.Enabled := false;

      lbFuel.Caption := FloatToStr(Round(TT3Vehicle(FControlled).FuelPercentage)) + ' %';
    end
    else begin
      lbOrderHeading.Caption      := '---';
      lbOrderedAltitude.Caption   := '---';
      btnLaunch.Enabled := false;
    end;
  end;
end;


procedure TfmOwnShip.RemoveListOwnShip(ctrlObj: TObject);
begin
  if not(Assigned(ctrlObj)) then
    Exit;

  if FControlled = ctrlObj then
  begin
    lbName.Caption                := '---';
    lbClass.Caption               := '---';
    lbOwnShipPosition1.Caption    := '---';
    lbOwnShipPosition2.Caption    := '---';
    lbOrderHeading.Caption        := '---';
    lbActualHeading.Caption       := '---';
    lbActualCourse.Caption        := '---';
    lbOwnShipOrderGround.Caption  := '---';
    lbOwnShipActualground.Caption := '---';
    lbOrderedAltitude.Caption     := '---';
    lbActualAltitude.Caption      := '---';
    lbGuidance.Caption            := '---';
    lbFuel.Caption                := '---';

    btnLaunch.Enabled := false;
    btnLandPlatform.Visible := false;
  end;
end;

procedure TfmOwnShip.SetOnLaunchEmbarked(const Value: TNotifyEvent);
begin
  FOnLaunchEmbarked := Value;
end;

procedure TfmOwnShip.UpdateForm;
begin
  inherited;
  Refresh_OwnShipTab(FControlled);
end;

end.
