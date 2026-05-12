program tttUtility;

uses
  Forms,
  uMain in 'uMain.pas' {frmUtility},
  uLibSettingTTT in '..\LibTTT\uLibSettingTTT.pas',
  uIniFilesProcs in '..\SimFramework\LibBaseUtils\uIniFilesProcs.pas',
  uCodecBase64 in '..\SimFramework\LibComponent\Base64\uCodecBase64.pas',
  ufDBSetting in '..\LibTTT\forms\ufDBSetting.pas' {frmDBSetting};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmUtility, frmUtility);
  Application.Run;
end.
