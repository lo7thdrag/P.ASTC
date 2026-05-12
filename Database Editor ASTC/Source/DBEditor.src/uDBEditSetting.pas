unit uDBEditSetting;

interface

type
  TDBEditorSetting = record
    MapSourcePathENC : string;   //D:\TTT\mapsource\coverageArea
    MapSourceGeosetENC : string;   //D:\TTT\mapsource\coverage\AreaCoverage.gst
    MapSourcePathVECT : string;   //D:\TTT\mapsource\map
    MapSourceGeosetVECT : string;   //D:\TTT\mapsource\map\world.gst
    MapDestPathENC : string;   //M:\map\mapsea
    MapDestPathVECT : string;   //M:\map\game_area
    MapENC : string;   //D:\TTT\map\mapsea
    OverlayPath : string;   //M:\map\overlay
    Pattern : string;   //D:\TTT\mapsource\map\background.gst
    predefPattern : string;   //M:\map\pattern
    BMPPath : string;
  end;

  function LoadFF_AppDBSetting(const aName: string;
    var aSetting: TDBEditorSetting): Boolean;

var
  vAppDBSetting : TDBEditorSetting;

implementation

uses
  Classes, IniFiles, SysUtils, uIniFilesProcs;

function LoadFF_AppDBSetting(const aName: string; var aSetting: TDBEditorSetting): Boolean;
const
  c_appsetting = 'dbeditor';
var
  iniF : TIniFile;
  s, str : string;
begin
  Result := True;
  IniF := TIniFile.Create(aName);
  s := ExtractFilePath(ParamStr(0));

  with aSetting do
  begin
    MapSourcePathENC      := INIFReadString(iniF, c_appsetting, 'MapSourcePathENC', 'D:\TTT\mapsource\coverageArea' );
    MapSourceGeosetENC    := INIFReadString(iniF, c_appsetting, 'MapSourceGeosetENC', 'D:\TTT\mapsource\coverage\AreaCoverage.gst' );

    MapSourcePathVECT     := INIFReadString(iniF, c_appsetting, 'MapSourcePathVECT', 'D:\TTT\mapsource\map' );
    MapSourceGeosetVECT   := INIFReadString(iniF, c_appsetting, 'MapSourceGeosetVECT', 'D:\TTT\mapsource\map\world.gst' );

    MapDestPathENC        := INIFReadString(iniF, c_appsetting, 'MapDestPathENC', 'M:\map\mapsea' );
    MapDestPathVECT       := INIFReadString(iniF, c_appsetting, 'MapDestPathVECT', 'M:\map\game_area' );
    MapENC                := INIFReadString(iniF, c_appsetting, 'MapENC', 'D:\TTT\map\mapsea' );

    OverlayPath           := INIFReadString(iniF, c_appsetting, 'OverlayPath', 'M:\map\overlay' );

    Pattern               := INIFReadString(iniF, c_appsetting, 'Pattern', 'D:\TTT\mapsource\map\background.gst' );
    predefPattern         := INIFReadString(iniF, c_appsetting, 'predefPattern', 'M:\map\pattern' );
    BMPPath               := INIFReadString(iniF, c_appsetting, 'BMPPath', str + '\data\Bitmap\' );
  end;

  IniF.Free;
end;

end.
