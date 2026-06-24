unit ufrmLeft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzBmpBtn,
  Vcl.Imaging.pngimage, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VrControls, VrWheel, Vcl.StdCtrls, Vcl.ComCtrls,
  VrMeter, AdvSmoothLabel;

type
  TfrmLeft = class(TForm)
    pnlContent: TPanel;
    pnlEnvironment: TPanel;
    pnlAboveWater: TPanel;
    lblTittle1: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lbl1: TLabel;
    Label3: TLabel;
    lblSpeedWIndTrue: TLabel;
    lblDirectionWindTrue: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblWindRelativeSpeed: TLabel;
    lblWindRelativeDirection: TLabel;
    Label103: TLabel;
    Label101: TLabel;
    Label96: TLabel;
    lblAttenuationFactorsRain: TLabel;
    lblAttenuationFactorsCloud: TLabel;
    Label97: TLabel;
    Label81: TLabel;
    Bevel1: TBevel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label91: TLabel;
    Label90: TLabel;
    Label99: TLabel;
    Label94: TLabel;
    Label92: TLabel;
    lblVisibilityFactorsnfrared: TLabel;
    lblVisibilityFactorsElectroOptical: TLabel;
    lblVisibilityactorsTime: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label109: TLabel;
    lblOtherAirTemp: TLabel;
    Label111: TLabel;
    Label107: TLabel;
    lblOtherBarometric: TLabel;
    Label105: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel1: TPanel;
    Label11: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lblOceanCurrentSpeed: TLabel;
    lblOceanCurrentDirection: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    lblSoundVelocityProfile: TLabel;
    lblSoundVelocityLayer: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    lblSeaState: TLabel;
    lblSurfaceTemp: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel2: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label106: TLabel;
    Label117: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    lblSoundVelocityAverageBottom: TLabel;
    Label43: TLabel;
    imgBackground: TImage;
    Panel2: TPanel;
    pnlStatusRed: TPanel;
    pnlStatusYellow: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeft: TfrmLeft;

implementation

uses
  uDBAsset_GameEnvironment, uSimMgr_Client, uBaseCoordSystem, uT3Common;

{$R *.dfm}

procedure TfrmLeft.FormCreate(Sender: TObject);
var
  ge: TGame_Environment_Definition;
  StrTime:string;
  SecondTime : Integer;

begin
  ge := (simMgrClient).GameEnvironment;

  Label111.Caption := Char(176) + 'C';
  Label39.Caption := Char(176) + 'C';

  with ge.FData do
  begin
    lblSpeedWIndTrue.Caption              := FormatSpeed(Wind_Speed);
    lblDirectionWindTrue.Caption          := FormatCourse(Wind_Direction);
    lblAttenuationFactorsRain.Caption     := IntToStr(Rain_Rate);
//    lblAttenuationFactorsCloud.Caption    := IntToStr(Cloud_Attenuation);

	  lblAttenuationFactorsRain.Caption 	  := IntToStr(Rain_Rate);
    lblAttenuationFactorsCloud.Caption    := FormatFloat('0.00', Cloud_Base_Height);
//    lblWindRelativeDirection.Caption := FormatFloat('0.00', TT3Vehicle(controlle).CourseEnvi);
//    lblWindRelativeSpeed.Caption := FormatFloat('0.00', TT3Vehicle(controlle).SpeedEnvi);

    // lblVisibilityactorsTime.Caption :=
    // lblVisibilityFactorsElectroOptical
    // lblVisibilityFactorsnfrared
    StrTime := FormatDateTime('HH:NN:SS', simMgrClient.GameTIME);
    SecondTime := TimeStringToSecond(StrTime);

    if (SecondTime >= Sunrise) and (SecondTime <= Sunset) then
    begin
      lblVisibilityactorsTime.Caption := 'DayTime';
      lblVisibilityFactorsElectroOptical.Caption := FormatFloat('0.00', Daytime_Visual_Modifier) + '%';
      lblVisibilityFactorsnfrared.Caption := FormatFloat('0.00', Daytime_Infrared_Modifier) + '%';
    end
    else
    begin
      lblVisibilityactorsTime.Caption := 'NightTime';
      lblVisibilityFactorsElectroOptical.Caption := FormatFloat('0.00', Nighttime_Visual_Modifier) + '%';
      lblVisibilityFactorsnfrared.Caption := FormatFloat('0.00', Nighttime_Infrared_Modifier) + '%';
    end;

    lblOtherAirTemp.Caption               := FormatFloat('00.0', Air_Temperature);
    lblOtherBarometric.Caption            := FormatFloat('000.0', Barometric_Pressure);
    lblOceanCurrentSpeed.Caption          := FormatFloat('00.0', Ocean_Current_Speed);
    lblOceanCurrentDirection.Caption      := FormatFloat('000.0', Ocean_Current_Direction);

    case Sound_Velocity_Type of
      0 :
        begin
          lblSoundVelocityProfile.Caption := 'Positive';
        end;
      1 :
        begin
          lblSoundVelocityProfile.Caption := 'Negative';
        end;
      2 :
        begin
          lblSoundVelocityProfile.Caption := 'Positive over negative';
        end;
      3 :
        begin
          lblSoundVelocityProfile.Caption := 'Negative over positive';
        end;
    end;

//    lblSoundVelocityProfile.Caption       := IntToStr(Sound_Velocity_Type);
    lblSoundVelocityLayer.Caption         := FormatFloat('0.0', Thermal_Layer_Depth);
    lblSoundVelocityAverageBottom.Caption := FormatFloat('0.0', Ave_Ocean_Depth);

    case Sea_State of
      0 : lblSeaState.Caption           := 'Calm (glassy)';
      1 : lblSeaState.Caption           := 'Calm (rippled)';
      2 : lblSeaState.Caption           := 'Smooth (wavelets)';
      3 : lblSeaState.Caption           := 'Slight';
      4 : lblSeaState.Caption           := 'Moderate';
      5 : lblSeaState.Caption           := 'Rough';
      6 : lblSeaState.Caption           := 'Very rough';
      7 : lblSeaState.Caption           := 'High';
      8 : lblSeaState.Caption           := 'Very high';
      9,10 : lblSeaState.Caption        := 'Phenomenal';
    end;

//    lblSeaState.Caption                   := IntToStr(Sea_State);
    lblSurfaceTemp.Caption                := FormatFloat('0.0', Surface_Temperature);
  end;

end;

end.
