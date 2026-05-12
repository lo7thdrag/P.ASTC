program ttRunnerDB;

uses
  Forms,
  Windows,
  Messages,
  uRunner in 'uRunner.pas' {frmRunner},
  uLibSettingTTT in '..\LibTTT\uLibSettingTTT.pas',
  ufDBSetting in '..\LibTTT\forms\ufDBSetting.pas' {frmDBSetting},
  uIniFilesProcs in '..\SimFramework\LibBaseUtils\uIniFilesProcs.pas',
  uCodecBase64 in '..\SimFramework\LibBaseUtils\StringUtils\uCodecBase64.pas',
  uStringFunc in '..\SimFramework\LibBaseUtils\StringUtils\uStringFunc.pas',
  uExecuter in '..\SimFramework\LibComponent\Executor\uExecuter.pas';

{$R *.res}
var
  Mutex : THandle;
begin
  MyMsg := RegisterWindowMessage('TTTRunnerDB_Message');
  Mutex := CreateMutex(nil, True, 'TTTRunnerDB_Mutex');
  if (Mutex = 0) OR (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    SendMessage(HWND_BROADCAST, MyMsg, 0, 0);

    Application.MessageBox('Another TTT DB Runner has already running.',
      'TTT DB Runner', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.Title := 'TTT DB Runner';
    Application.CreateForm(TfrmRunner, frmRunner);
    Application.Run;

    if Mutex <> 0 then
      CloseHandle(Mutex);
  end;
end.
