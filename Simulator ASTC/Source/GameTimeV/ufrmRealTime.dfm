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
  DesignSize = (
    1273
    626)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1273
    Height = 626
    Align = alClient
    ExplicitWidth = 1249
  end
  object lblRTCaption: TLabel
    Left = 195
    Top = 65
    Width = 652
    Height = 132
    Caption = 'Waktu Sebenarnya'
    Font.Charset = ANSI_CHARSET
    Font.Color = 16777152
    Font.Height = -133
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblServerTIME: TLabel
    Left = 111
    Top = 307
    Width = 1050
    Height = 166
    Caption = ' 00 : 00 : 00 '
    Font.Charset = ANSI_CHARSET
    Font.Color = 16777152
    Font.Height = -167
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
  end
  object lblGameDate: TLabel
    Left = 811
    Top = 528
    Width = 413
    Height = 79
    Alignment = taCenter
    Anchors = [akRight, akBottom]
    Caption = '23 Juni 2026'
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -80
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
