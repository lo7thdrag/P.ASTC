unit uExecuter;

interface

uses
  Classes, Windows, ExtCtrls, SysUtils, Messages;

type

  TAppExecute = class
  private
    timer : TTimer;
    procedure OnTimer(Sender : TObject);
    function GetHWndByPID(const hPID: THandle): THandle; // Get Window Handle By ProcessID
  protected
    pi: TProcessInformation;
    si: TStartupInfo;

    FActive: Boolean;
    FOnStartExec  : TNotifyEvent;
    FOnEndExec    : TNotifyEvent;
  public
    FExecFname: string;

    constructor Create;
    destructor Destroy; override;

    procedure Executes;
    procedure ExecutesAndWait;

	  procedure ExecutesWithParams ( params : string) ;
    procedure Terminates;
  public

    property Active: boolean read FActive;
    property OnStartExecute:  TNotifyEvent read FOnStartExec write FOnStartExec;
    property OnEndExecute:    TNotifyEvent read FOnEndExec   write FOnEndExec;
  end;

//  procedure CreateProcessSimple(sExecutableFilePath: string);
{
  procedure ExecuteAndWait(const fName: string);
  procedure CreateProcessSimple(sExecutableFilePath: string);
}

implementation

uses
  Dialogs;

{procedure CreateProcessSimple(sExecutableFilePath: string);
var pi: TProcessInformation;
    si: TStartupInfo;
begin
  FillMemory(@si, sizeof(si), 0);
  si.cb := sizeof(si);

  CreateProcess(
    nil,
    PChar(sExecutableFilePath),
    nil, nil, False,
    NORMAL_PRIORITY_CLASS, nil, nil,
    si, pi);

  CloseHandle(pi.hProcess);
  CloseHandle(pi.hThread);
end;

procedure ExecuteAndWait(const fName: string);
var prInfo : TProcessInformation;
    stInfo: TStartupInfo;
    exCode: Cardinal;
begin
  FillChar(prInfo, SizeOf(TProcessInformation), 0);
  FillChar(stInfo, SizeOf(TStartupInfo), 0);
  stInfo.cb :=  sizeof(TStartupInfo);;

  if CreateProcess(
    nil, PAnsiChar(fName) , nil, nil, false,  NORMAL_PRIORITY_CLASS,
    nil, nil,  stInfo, prInfo) then begin

    WaitForSingleObject(prInfo.hProcess, INFINITE);

    GetExitCodeProcess(prInfo.hProcess, exCode);  // Optional
    CloseHandle(prInfo.hThread);
    CloseHandle(prInfo.hProcess);
  end
  else
    ShowMessage('Error in launching '+ fName);
end;
}
{ TAppExecute }

constructor TAppExecute.Create;
begin
  FillMemory(@si, sizeof(si), 0);
  si.cb := sizeof(si);

  FActive := False;

  timer := TTimer.Create(nil);
  timer.Interval := 500;
  timer.OnTimer := Ontimer;
  timer.Enabled := True;

end;

destructor TAppExecute.Destroy;
begin
  timer.Free;

  if FActive then
     Terminates;

  inherited;
end;

procedure TAppExecute.Executes;
begin
  FActive := True;
  if CreateProcess(
    nil,
    PChar(FExecFname),
    nil, nil, False,
    NORMAL_PRIORITY_CLASS, nil, nil, si, pi) then begin

  end;
end;

procedure TAppExecute.ExecutesAndWait;
var exCode: Cardinal;
begin
  FillChar(pi, SizeOf(TProcessInformation), 0);
  FillChar(si, SizeOf(TStartupInfo), 0);
  si.cb :=  sizeof(TStartupInfo);;

  if CreateProcess(
    nil, PChar(FExecFname) , nil, nil, false,  NORMAL_PRIORITY_CLASS,
    nil, nil,  si, pi) then begin

    if Assigned(FOnStartExec) then
      FOnStartExec(self);

    WaitForSingleObject(pi.hProcess, INFINITE);

    GetExitCodeProcess(pi.hProcess, exCode);  // Optional
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);

    if Assigned(FOnEndExec) then
      FOnEndExec(self);

  end
  else
    ShowMessage('Error in launching '+ FExecFname);
end;

procedure TAppExecute.ExecutesWithParams ( params : string) ;
var
  CmdLine: PChar;
begin
  FActive := True;
  CmdLine := PChar(FExecFname+' '+params);

  if CreateProcess(
    nil,
    CmdLine,
    nil, nil, False,
    NORMAL_PRIORITY_CLASS, nil, nil, si, pi) then
  begin
  end;
end;

function TAppExecute.GetHWndByPID(const hPID: THandle): THandle;
type
  pEnumInfo = ^TEnumInfo;
  TEnumInfo = record
    ProcessID: DWORD;
    HWND: THandle;
  end;

  function EnumWindowsProc(Wnd: DWORD; var EI: TEnumInfo): BOOL; stdcall;
  var
    PID: DWORD;
  begin
    GetWindowThreadProcessId(Wnd, @PID); //uses SysUtils
    Result := (PID <> EI.ProcessID) or
        (not IsWindowVisible(Wnd)) or
        (not IsWindowEnabled(Wnd));
        if not Result then
          EI.HWND := Wnd;  // break on return
  end;

  function FindMainWindow(PID: DWORD): DWORD;
  var
    EI: TEnumInfo;
  begin
    EI.ProcessID := PID;
    EI.HWND := 0;
    EnumWindows(@EnumWindowsProc, Integer(@EI));
    Result := EI.HWND;
  end;
begin
  if hPID <> 0 then
    Result := FindMainWindow(hPID)
  else
    Result := 0;
end;

procedure TAppExecute.OnTimer(Sender: TObject);
Var
  ovExitCode: LongWord;
begin
  if FActive then
  begin
    GetExitCodeProcess(pi.hProcess, ovExitCode);
    if not ((ovExitCode = STILL_ACTIVE) or (ovExitCode <> WAIT_OBJECT_0)) then
    begin
      timer.Enabled := False;
      if Assigned(FOnEndExec) then
        FOnEndExec(self);
    end;
  end;
end;

procedure TAppExecute.Terminates;
var
  H: HWND;
begin
  if FActive then begin
    // ask to close using window name
//    H :=  FindWindow(nil, LPCWSTR('TTT Game Server'{FExecFname}));
//    if H <> 0 then
//    begin
//      PostMessage(H,WM_CLOSE,0,0); //uses Message
//      AddTerminateProc(Bool(TerminateProcess(pi.hProcess, 0)));
//    end;
  // ask to close using process id
    H:= GetHWndByPID(pi.dwProcessId);
    if H <> 0 then
    begin
      PostMessage(H, WM_CLOSE, 0, 0);
    end;

    if WaitForSingleObject(pi.hProcess, 5000) <> WAIT_OBJECT_0 then
    begin
      TerminateProcess(pi.hProcess, 0);
    end;
//    TerminateProcess(pi.hProcess, 0);
      CloseHandle(pi.hProcess);
      CloseHandle(pi.hThread);

  end;

  FActive := False;
end;

end.
