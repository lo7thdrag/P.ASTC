object frmMainGT: TfrmMainGT
  Left = 281
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 12
  Caption = 'Tactical Team Trainer Game Time'
  ClientHeight = 602
  ClientWidth = 1249
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
  DesignSize = (
    1249
    602)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1249
    Height = 602
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
    Top = 65
    Width = 652
    Height = 132
    Caption = 'Waktu Asumsi'
    Font.Charset = ANSI_CHARSET
    Font.Color = 8454016
    Font.Height = -133
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblRTCaption: TLabel
    Left = 632
    Top = 68
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
    Width = 1050
    Height = 166
    Caption = ' 00 : 00 : 00 '
    Font.Charset = ANSI_CHARSET
    Font.Color = 8454016
    Font.Height = -167
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
  end
  object lblGameDate: TLabel
    Left = 787
    Top = 504
    Width = 413
    Height = 79
    Alignment = taCenter
    Anchors = [akRight, akBottom]
    Caption = '23 Juni 2026'
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -80
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 811
    ExplicitTop = 528
  end
  object Label1: TLabel
    Left = 40
    Top = 504
    Width = 453
    Height = 79
    Alignment = taCenter
    Anchors = [akLeft, akBottom]
    Caption = 'Percepatan : 1x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -80
    Font.Name = 'Deusex'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 528
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 464
    Top = 96
  end
end
