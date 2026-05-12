object frmDetailTrackTarget: TfrmDetailTrackTarget
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Surface-to-Surface Missile Target Details'
  ClientHeight = 232
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 14
    Width = 33
    Height = 13
    Caption = 'Track :'
  end
  object Label2: TLabel
    Left = 18
    Top = 33
    Width = 32
    Height = 13
    Caption = 'Class :'
  end
  object Label3: TLabel
    Left = 18
    Top = 52
    Width = 37
    Height = 13
    Caption = 'Force : '
  end
  object Label4: TLabel
    Left = 18
    Top = 86
    Width = 41
    Height = 13
    Caption = 'Course :'
  end
  object Label5: TLabel
    Left = 18
    Top = 105
    Width = 75
    Height = 13
    Caption = 'Ground Speed :'
  end
  object Label6: TLabel
    Left = 18
    Top = 137
    Width = 43
    Height = 13
    Caption = 'Bearing :'
  end
  object Label7: TLabel
    Left = 18
    Top = 156
    Width = 38
    Height = 13
    Caption = 'Range :'
  end
  object lblTrack: TLabel
    Left = 112
    Top = 14
    Width = 12
    Height = 13
    Caption = '---'
  end
  object lblClass: TLabel
    Left = 112
    Top = 33
    Width = 12
    Height = 13
    Caption = '---'
  end
  object lblForce: TLabel
    Left = 112
    Top = 52
    Width = 12
    Height = 13
    Caption = '---'
  end
  object lblCourse: TLabel
    Left = 112
    Top = 86
    Width = 12
    Height = 13
    Caption = '---'
  end
  object lblSpeed: TLabel
    Left = 112
    Top = 105
    Width = 12
    Height = 13
    Caption = '---'
  end
  object lblBearing: TLabel
    Left = 112
    Top = 137
    Width = 12
    Height = 13
    Caption = '---'
  end
  object lblRange: TLabel
    Left = 112
    Top = 156
    Width = 12
    Height = 13
    Caption = '---'
  end
  object Label15: TLabel
    Left = 217
    Top = 86
    Width = 48
    Height = 13
    Caption = 'degrees T'
  end
  object Label16: TLabel
    Left = 217
    Top = 105
    Width = 26
    Height = 13
    Caption = 'knots'
  end
  object Label17: TLabel
    Left = 217
    Top = 137
    Width = 48
    Height = 13
    Caption = 'degrees T'
  end
  object Label18: TLabel
    Left = 217
    Top = 156
    Width = 14
    Height = 13
    Caption = 'nm'
  end
  object Bevel1: TBevel
    Left = 18
    Top = 184
    Width = 314
    Height = 7
  end
  object btnClose: TButton
    Left = 257
    Top = 197
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
end
