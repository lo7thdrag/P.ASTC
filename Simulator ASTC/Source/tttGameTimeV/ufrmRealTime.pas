unit ufrmRealTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TufRealTime = class(TForm)
    Panel1: TPanel;
    lblServerTIME: TLabel;
    lblRTCaption: TLabel;
    Timer1: TTimer;
    bntMinimize: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bntMinimizeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     first  : boolean;
//     procedure SetGameTime(const gt: tDateTime);
     procedure SetServerTime(const gt: tDateTime);
  end;

var
  ufRealTime: TufRealTime;

implementation

uses
  uLibSettingTTT;
{$R *.dfm}


procedure TufRealTime.bntMinimizeClick(Sender: TObject);
begin
   WindowState := wsMinimized;
end;

procedure TufRealTime.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Application.Minimize
  end;
end;

procedure TufRealTime.FormResize(Sender: TObject);
begin
  lblRTCaption.Left := ((Width - lblRTCaption.Width) div 2);
  lblRTCaption.Top := Round(Height * 0.2);

  lblServerTIME.Left := ((Width - lblServerTIME.Width) div 2);
  lblServerTIME.Top := Round(Height * 0.55);
end;

procedure TufRealTime.FormShow(Sender: TObject);
begin
   if Screen.MonitorCount > 1 then
  begin
    Width := Screen.Monitors[vGameDataSetting.ToteScreen].Width;
    Height := Screen.Monitors[vGameDataSetting.ToteScreen].Height;
    Left := Screen.Monitors[vGameDataSetting.ToteScreen].Left;
    Top := Screen.Monitors[vGameDataSetting.ToteScreen].Top;
  end
  else
  begin
    Width := Screen.Monitors[0].Width;
    Height := Screen.Monitors[0].Height;
    Left := Screen.Monitors[0].Left;
    Top := Screen.Monitors[0].Top;
  end;
end;

procedure TufRealTime.SetServerTime(const gt: tDateTime);
begin
  lblServerTIME.Caption := FormatDateTime(' hh : nn : ss ', gt)
end;

procedure TufRealTime.Timer1Timer(Sender: TObject);
begin
SetServerTime(Now);
end;

end.
