object frmMainGT: TfrmMainGT
  Left = 281
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 12
  Caption = 'Tactical Team Trainer Game Time'
  ClientHeight = 698
  ClientWidth = 1345
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Top = 20
  GlassFrame.Right = 20
  GlassFrame.Bottom = 20
  GlassFrame.SheetOfGlass = True
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1345
    Height = 698
    Align = alClient
    ExplicitWidth = 1366
    ExplicitHeight = 369
  end
  object lblServerTIME: TLabel
    Left = 360
    Top = 176
    Width = 872
    Height = 155
    Caption = ' 00 : 00 : 00 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16777152
    Font.Height = -128
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblGTCaption: TLabel
    Left = -297
    Top = 150
    Width = 1117
    Height = 199
    Caption = 'Assumption Time'
    Font.Charset = ANSI_CHARSET
    Font.Color = 8454016
    Font.Height = -200
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblRTCaption: TLabel
    Left = 64
    Top = 56
    Width = 467
    Height = 129
    Caption = 'Real Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16777152
    Font.Height = -107
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblGameTime: TLabel
    Left = -1
    Top = 307
    Width = 1252
    Height = 199
    Caption = ' 00 : 00 : 00 '
    Font.Charset = ANSI_CHARSET
    Font.Color = 8454016
    Font.Height = -200
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 464
    Top = 96
  end
end
