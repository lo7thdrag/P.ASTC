object PlanDetail: TPlanDetail
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Acoustic Torpedo Plan Detail'
  ClientHeight = 386
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bvl1: TBevel
    Left = 55
    Top = 12
    Width = 194
    Height = 3
  end
  object bvl2: TBevel
    Left = 48
    Top = 72
    Width = 201
    Height = 3
  end
  object bvl3: TBevel
    Left = 10
    Top = 337
    Width = 239
    Height = 3
  end
  object bvl4: TBevel
    Left = 76
    Top = 241
    Width = 173
    Height = 3
  end
  object lbl3: TLabel
    Left = 10
    Top = 5
    Width = 40
    Height = 13
    Caption = 'Torpedo'
  end
  object lbl4: TLabel
    Left = 20
    Top = 42
    Width = 34
    Height = 13
    Caption = 'Tube  :'
  end
  object lbl5: TLabel
    Left = 10
    Top = 65
    Width = 32
    Height = 13
    Caption = 'Target'
  end
  object lbl6: TLabel
    Left = 20
    Top = 85
    Width = 33
    Height = 13
    Caption = 'Track :'
  end
  object lbl7: TLabel
    Left = 20
    Top = 102
    Width = 38
    Height = 13
    Caption = 'Identity'
  end
  object lbl9: TLabel
    Left = 20
    Top = 119
    Width = 76
    Height = 13
    Caption = 'Propulsion Type'
  end
  object lbl10: TLabel
    Left = 20
    Top = 144
    Width = 34
    Height = 13
    Caption = 'Course'
  end
  object lbl11: TLabel
    Left = 20
    Top = 161
    Width = 68
    Height = 13
    Caption = 'Ground Speed'
  end
  object lbl12: TLabel
    Left = 20
    Top = 178
    Width = 29
    Height = 13
    Caption = 'Depth'
  end
  object lbl13: TLabel
    Left = 20
    Top = 195
    Width = 36
    Height = 13
    Caption = 'Bearing'
  end
  object lbl14: TLabel
    Left = 20
    Top = 212
    Width = 31
    Height = 13
    Caption = 'Range'
  end
  object lbl15: TLabel
    Left = 10
    Top = 235
    Width = 60
    Height = 13
    Caption = 'Engagement'
  end
  object lbl16: TLabel
    Left = 20
    Top = 255
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl17: TLabel
    Left = 20
    Top = 272
    Width = 100
    Height = 13
    Caption = 'Advised close course'
  end
  object lbl18: TLabel
    Left = 20
    Top = 289
    Width = 107
    Height = 13
    Caption = 'Advised launch course'
  end
  object lbl19: TLabel
    Left = 20
    Top = 306
    Width = 69
    Height = 13
    Caption = 'Time to launch'
  end
  object lblAcousticTorpedoStatus: TLabel
    Left = 20
    Top = 24
    Width = 34
    Height = 13
    Caption = 'Name :'
  end
  object lblNeme: TLabel
    Left = 60
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lblTube: TLabel
    Left = 60
    Top = 42
    Width = 24
    Height = 13
    Caption = 'Tube'
  end
  object lblTrack: TLabel
    Left = 140
    Top = 85
    Width = 33
    Height = 13
    Caption = 'Track :'
  end
  object lblIdentity: TLabel
    Left = 140
    Top = 104
    Width = 38
    Height = 13
    Caption = 'Pending'
  end
  object lblPropulsion: TLabel
    Left = 140
    Top = 121
    Width = 44
    Height = 13
    Caption = 'Unknown'
  end
  object lblCourse: TLabel
    Left = 140
    Top = 146
    Width = 18
    Height = 13
    Caption = '000'
  end
  object lblSpeed: TLabel
    Left = 140
    Top = 163
    Width = 18
    Height = 13
    Caption = '000'
  end
  object lblDepth: TLabel
    Left = 140
    Top = 180
    Width = 24
    Height = 13
    Caption = '0000'
  end
  object lblBearing: TLabel
    Left = 140
    Top = 197
    Width = 18
    Height = 13
    Caption = '000'
  end
  object lblRange: TLabel
    Left = 140
    Top = 214
    Width = 24
    Height = 13
    Caption = '0000'
  end
  object lblStatus: TLabel
    Left = 140
    Top = 257
    Width = 69
    Height = 13
    Caption = 'Unengageable'
  end
  object lblCloseCourse: TLabel
    Left = 140
    Top = 274
    Width = 18
    Height = 13
    Caption = '000'
  end
  object lblLaunchCourse: TLabel
    Left = 140
    Top = 291
    Width = 18
    Height = 13
    Caption = '000'
  end
  object lblTime: TLabel
    Left = 140
    Top = 308
    Width = 28
    Height = 13
    Caption = '00:00'
  end
  object lbl31: TLabel
    Left = 185
    Top = 146
    Width = 48
    Height = 13
    Caption = 'degrees T'
  end
  object lbl32: TLabel
    Left = 185
    Top = 163
    Width = 26
    Height = 13
    Caption = 'knots'
  end
  object lbl33: TLabel
    Left = 185
    Top = 180
    Width = 33
    Height = 13
    Caption = 'metres'
  end
  object lbl34: TLabel
    Left = 185
    Top = 197
    Width = 48
    Height = 13
    Caption = 'degrees T'
  end
  object lbl35: TLabel
    Left = 185
    Top = 214
    Width = 14
    Height = 13
    Caption = 'nm'
  end
  object lbl36: TLabel
    Left = 185
    Top = 274
    Width = 48
    Height = 13
    Caption = 'degrees T'
  end
  object lbl37: TLabel
    Left = 185
    Top = 291
    Width = 48
    Height = 13
    Caption = 'degrees T'
  end
  object lbl38: TLabel
    Left = 185
    Top = 308
    Width = 30
    Height = 13
    Caption = 'mm:ss'
  end
  object btnAcousticTorpedoLaunch: TButton
    Tag = 10
    Left = 169
    Top = 350
    Width = 80
    Height = 23
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnAcousticTorpedoLaunchClick
  end
end
