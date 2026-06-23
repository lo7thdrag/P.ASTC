object ufRealTime: TufRealTime
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 12
  Caption = 'ufRealTime'
  ClientHeight = 626
  ClientWidth = 1273
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1273
    Height = 626
    Align = alClient
    ExplicitLeft = 520
    ExplicitTop = 200
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object lblRTCaption: TLabel
    Left = -309
    Top = 129
    Width = 677
    Height = 199
    Caption = 'Real Time'
    Font.Charset = ANSI_CHARSET
    Font.Color = 16777152
    Font.Height = -200
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
  end
  object lblServerTIME: TLabel
    Left = -1
    Top = 302
    Width = 1252
    Height = 199
    Caption = ' 00 : 00 : 00 '
    Font.Charset = ANSI_CHARSET
    Font.Color = 16777152
    Font.Height = -200
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
  end
  object lblGameDate: TLabel
    Left = 500
    Top = 536
    Width = 566
    Height = 107
    Alignment = taCenter
    Caption = '23 June 2026'
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -107
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 512
    Top = 184
  end
end
