object ufRealTime: TufRealTime
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'ufRealTime'
  ClientHeight = 447
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1092
    Height = 447
    Align = alClient
    Color = clDefault
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 354
    object lblServerTIME: TLabel
      Left = -706
      Top = 111
      Width = 1668
      Height = 266
      Caption = ' 00 : 00 : 00 '
      Font.Charset = ANSI_CHARSET
      Font.Color = 16777152
      Font.Height = -267
      Font.Name = 'Deusex'
      Font.Style = []
      ParentFont = False
    end
    object lblRTCaption: TLabel
      Left = -489
      Top = -62
      Width = 905
      Height = 266
      Caption = 'Real Time'
      Font.Charset = ANSI_CHARSET
      Font.Color = 16777152
      Font.Height = -267
      Font.Name = 'Deusex'
      Font.Style = []
      ParentFont = False
    end
  end
  object bntMinimize: TButton
    Left = 1027
    Top = 16
    Width = 40
    Height = 30
    Caption = '_'
    TabOrder = 1
    OnClick = bntMinimizeClick
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 512
    Top = 184
  end
end
