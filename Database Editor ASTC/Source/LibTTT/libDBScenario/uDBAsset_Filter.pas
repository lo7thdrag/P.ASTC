unit uDBAsset_Filter;

interface

uses
  Windows, Classes, SysUtils, Graphics, tttData, uDBAsset_Sensor, uDBAsset_Vehicle,
  uDBAsset_Radar, uDBAsset_Weapon, uDBAsset_Sonar, uDBAsset_Sonobuoy;

type

  TVehicle_Filter = class

  public
    FVehicle    : TVehicle_Definition;
    FEO         : TEOD_On_Board ;
    FRadar      : TRadar_On_Board;
    FESM        : TESM_On_Board;
    FVisual     : TVisual_Sensor_On_Board;
    FIFF        : TIFF_Sensor_On_Board;
    FMAD        : TMAD_On_Board;
    FFCR        : TFCR_On_Board;
    FMissile    : TMissile_On_Board;
    FTorpedo    : TTorpedo_On_Board;
    FMine       : TMine_On_Board;
    FGun        : TGun_Definition;
    FBomb       : TBomb_Definition;
    FHybrid     : THybrid_On_Board;
    FSonar      : TSonar_On_Board;
    FSonobuoy   : TSonobuoy_On_Board;

  constructor Create;
  destructor Destroy; override;

  end;

implementation

constructor TVehicle_Filter.Create;
begin
  FVehicle := TVehicle_Definition.Create;
  FEO      := TEOD_On_Board .Create;
  FRadar   := TRadar_On_Board.Create;
  FESM     := TESM_On_Board.Create;
  FVisual  := TVisual_Sensor_On_Board.Create;
  FIFF     := TIFF_Sensor_On_Board.Create;
  FMAD     := TMAD_On_Board.Create;
  FFCR     := TFCR_On_Board.Create;
  FMissile := TMissile_On_Board.Create;
  FTorpedo := TTorpedo_On_Board.Create;
  FMine    := TMine_On_Board.Create;
  FGun     := TGun_Definition.Create;
  FBomb    := TBomb_Definition.Create;
  FHybrid  := THybrid_On_Board.Create;
  FSonar   := TSonar_On_Board.Create;
  FSonobuoy := TSonobuoy_On_Board.Create;
end;

destructor TVehicle_Filter.Destroy;
begin
  inherited;
end;




end.
