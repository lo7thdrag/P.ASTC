program tttRunner;

uses
  Forms,
  Windows,
  Messages,
  uRunner in 'uRunner.pas' {frmRunner},
  uLibSettingTTT in '..\LibTTT\uLibSettingTTT.pas',
  uCodecBase64 in '..\SimFramework\LibComponent\Base64\uCodecBase64.pas',
  uIniFilesProcs in '..\SimFramework\LibBaseUtils\uIniFilesProcs.pas',
  GmXml in '..\SimFramework\LibComponent\XMLReader\GmXml.pas',
  GmXMLInterface in '..\SimFramework\LibComponent\XMLReader\GmXMLInterface.pas',
  xmlInterface in '..\SimFramework\LibComponent\XMLReader\xmlInterface.pas',
  uStringFunc in '..\SimFramework\LibBaseUtils\StringUtils\uStringFunc.pas',
  ufDBSetting in '..\LibTTT\forms\ufDBSetting.pas' {frmDBSetting},
  uExecuter in '..\SimFramework\LibComponent\Executor\uExecuter.pas';

{$R *.res}
{$R 'RequestAdmin.res'}

var
  Mutex : THandle;
begin
  MyMsg := RegisterWindowMessage('TTTRunner_Message');
  Mutex := CreateMutex(nil, True, 'TTTRunner_Mutex');
  if (Mutex = 0) OR (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    SendMessage(HWND_BROADCAST, MyMsg, 0, 0);

    Application.MessageBox('Another TTT Runner has already running.',
      'TTT Runner', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.Title := 'TTT Runner';
    Application.CreateForm(TfrmRunner, frmRunner);
    Application.Run;

    if Mutex <> 0 then
      CloseHandle(Mutex);
  end;
end.
