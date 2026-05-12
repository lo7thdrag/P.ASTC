object frmSummaryGun: TfrmSummaryGun
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Gun'
  ClientHeight = 575
  ClientWidth = 727
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblClass: TLabel
      Left = 10
      Top = 10
      Width = 39
      Height = 16
      Caption = 'Class :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtClass: TEdit
      Tag = 4
      Left = 11
      Top = 31
      Width = 706
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtClassChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 70
    Width = 727
    Height = 457
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 707
      Height = 437
      ActivePage = tsGeneral
      Align = alClient
      MultiLine = True
      TabHeight = 30
      TabOrder = 0
      TabWidth = 150
      object tsGeneral: TTabSheet
        Caption = 'General'
        object grpLethality: TGroupBox
          Left = 390
          Top = 296
          Width = 296
          Height = 75
          Caption = ' Lethality   '
          TabOrder = 0
          object mnlbl9: TLabel
            Left = 246
            Top = 54
            Width = 14
            Height = 14
            Caption = '10'
          end
          object mnlbl8: TLabel
            Left = 15
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object edtLethality: TEdit
            Left = 263
            Top = 25
            Width = 26
            Height = 22
            MaxLength = 2
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
          object trckbrLethality: TTrackBar
            Left = 7
            Top = 25
            Width = 256
            Height = 32
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
        end
        object grpCapabilities: TGroupBox
          Left = 390
          Top = 165
          Width = 296
          Height = 117
          Caption = ' Capabilities   '
          TabOrder = 1
          object chkAntiSurface: TCheckBox
            Left = 15
            Top = 66
            Width = 90
            Height = 17
            Caption = 'Anti-Surface'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object chkDeployingChaff: TCheckBox
            Left = 143
            Top = 45
            Width = 110
            Height = 17
            Caption = 'Deploying Chaff'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
          object chkAntiLand: TCheckBox
            Left = 15
            Top = 45
            Width = 77
            Height = 17
            Caption = 'Anti-Land'
            TabOrder = 2
            OnClick = CheckBoxDataClick
          end
          object chkAutofireMode: TCheckBox
            Left = 143
            Top = 24
            Width = 103
            Height = 17
            Caption = 'Autofire Mode'
            TabOrder = 3
            OnClick = CheckBoxDataClick
          end
          object chkAntiAir: TCheckBox
            Left = 15
            Top = 24
            Width = 65
            Height = 17
            Caption = 'Anti-Air'
            TabOrder = 4
            OnClick = CheckBoxDataClick
          end
          object chkNavalGunSupport: TCheckBox
            Left = 143
            Top = 66
            Width = 144
            Height = 17
            Caption = 'Naval Gunfire Support'
            TabOrder = 5
            OnClick = CheckBoxDataClick
          end
          object chkAntiAmphibious: TCheckBox
            Left = 15
            Top = 87
            Width = 112
            Height = 17
            Caption = 'Anti-Amphibious'
            TabOrder = 6
            OnClick = CheckBoxDataClick
          end
        end
        object grpRange: TGroupBox
          Left = 24
          Top = 165
          Width = 172
          Height = 91
          Caption = ' Range Air Target   '
          TabOrder = 2
          object lbl4: TLabel
            Left = 138
            Top = 30
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblAirMaxRange: TLabel
            Left = 18
            Top = 57
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object lbl5: TLabel
            Left = 138
            Top = 57
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblAirMinRange: TLabel
            Left = 18
            Top = 30
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object edtAirMinRange: TEdit
            Tag = 2
            Left = 81
            Top = 26
            Width = 52
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAirMaxRange: TEdit
            Tag = 2
            Left = 81
            Top = 53
            Width = 52
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpPOH: TGroupBox
          Left = 20
          Top = 262
          Width = 354
          Height = 110
          Caption = ' Probability of Hit Curve   '
          TabOrder = 3
          object btnEditAirTargetCurve: TButton
            Left = 28
            Top = 29
            Width = 297
            Height = 30
            Caption = 'Edit Air Target Curve...'
            TabOrder = 0
            OnClick = btnEditAirTargetCurveClick
          end
          object btnEditSurfaceLandTargetCurve: TButton
            Left = 28
            Top = 65
            Width = 297
            Height = 30
            Caption = 'Edit Surface/Land Target Curve...'
            TabOrder = 1
            WordWrap = True
            OnClick = btnEditSurfaceLandTargetCurveClick
          end
        end
        object chkFireControl: TCheckBox
          Left = 20
          Top = 142
          Width = 190
          Height = 17
          Caption = 'Fire-Control Director Required'
          TabOrder = 4
          OnClick = CheckBoxDataClick
        end
        object GroupBox3: TGroupBox
          Left = 202
          Top = 165
          Width = 172
          Height = 91
          Caption = ' Range Surface/ Land Target   '
          TabOrder = 5
          object lblSurLandMinRange: TLabel
            Left = 18
            Top = 30
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object lblSurLandMaxRange: TLabel
            Left = 18
            Top = 57
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object lbl6: TLabel
            Left = 138
            Top = 30
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl7: TLabel
            Left = 138
            Top = 57
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtSurLandMinRange: TEdit
            Tag = 2
            Left = 80
            Top = 26
            Width = 52
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSurLandMaxRange: TEdit
            Tag = 2
            Left = 80
            Top = 53
            Width = 52
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox4: TGroupBox
          Left = 20
          Top = 20
          Width = 666
          Height = 110
          TabOrder = 6
          object lblCategory: TLabel
            Left = 20
            Top = 24
            Width = 57
            Height = 14
            Caption = 'Category :'
          end
          object lblRateOfFire: TLabel
            Left = 460
            Top = 24
            Width = 71
            Height = 14
            Caption = 'Rate of Fire :'
          end
          object lbl1: TLabel
            Left = 586
            Top = 24
            Width = 61
            Height = 14
            Caption = 'rounds/min'
          end
          object lblAverageShellVelocity: TLabel
            Left = 20
            Top = 51
            Width = 129
            Height = 14
            Caption = 'Average Shell Velocity :'
          end
          object lbl3: TLabel
            Left = 205
            Top = 51
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object lblMaxAltitudeDiff: TLabel
            Left = 21
            Top = 78
            Width = 333
            Height = 14
            Caption = 'Maximum Altitude Difference between Platform and Target :'
          end
          object lbl2: TLabel
            Left = 417
            Top = 78
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object cbbCategory: TComboBox
            Left = 162
            Top = 20
            Width = 165
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Close-In-Weapon System'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Close-In-Weapon System'
              'Gun'
              'Rocket')
          end
          object edtRateOfFire: TEdit
            Left = 543
            Top = 20
            Width = 41
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAverageShellVelocity: TEdit
            Tag = 2
            Left = 162
            Top = 47
            Width = 41
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxAltitudeDiff: TEdit
            Left = 359
            Top = 74
            Width = 53
            Height = 22
            TabOrder = 3
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsNGS: TTabSheet
        Caption = 'Naval Gunfire Support  '
        ImageIndex = 5
        object grpDamageRating: TGroupBox
          Left = 20
          Top = 141
          Width = 666
          Height = 74
          Caption = ' Damage Rating   '
          TabOrder = 0
          object mnlbl18: TLabel
            Left = 600
            Top = 54
            Width = 21
            Height = 14
            Caption = '100'
          end
          object mnlbl17: TLabel
            Left = 12
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object edtDamageRating: TEdit
            Left = 624
            Top = 25
            Width = 34
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtDamageRatingChange
          end
          object trckbrDamageRating: TTrackBar
            Left = 3
            Top = 25
            Width = 621
            Height = 32
            Max = 100
            Frequency = 10
            TabOrder = 1
            OnChange = trckbrDamageRatingChange
          end
        end
        object GroupBox1: TGroupBox
          Left = 20
          Top = 20
          Width = 186
          Height = 109
          Caption = ' Deflection Error   '
          TabOrder = 1
          object lblMinDeflectionError: TLabel
            Left = 14
            Top = 34
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object lblMaxDeflectionError: TLabel
            Left = 14
            Top = 61
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object lbl10: TLabel
            Left = 136
            Top = 34
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object lbl11: TLabel
            Left = 136
            Top = 61
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object edtMinDeflectionError: TEdit
            Tag = 1
            Left = 86
            Top = 30
            Width = 48
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxDeflectionError: TEdit
            Tag = 1
            Left = 86
            Top = 57
            Width = 48
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 218
          Top = 20
          Width = 186
          Height = 109
          Caption = ' Range Error   '
          TabOrder = 2
          object lblMinRangeError: TLabel
            Left = 14
            Top = 34
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object lblMaxRangeError: TLabel
            Left = 14
            Top = 61
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object lbl12: TLabel
            Left = 136
            Top = 34
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object lbl13: TLabel
            Left = 136
            Top = 61
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object edtMinRangeError: TEdit
            Tag = 1
            Left = 86
            Top = 30
            Width = 48
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxRangeError: TEdit
            Tag = 1
            Left = 86
            Top = 57
            Width = 48
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 415
          Top = 20
          Width = 271
          Height = 109
          Caption = ' Other   '
          TabOrder = 3
          object lbl14: TLabel
            Left = 220
            Top = 26
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object lbl15: TLabel
            Left = 220
            Top = 53
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object lbl16: TLabel
            Left = 220
            Top = 80
            Width = 37
            Height = 14
            Caption = 'Meters'
          end
          object lblMaxDispersionError: TLabel
            Left = 15
            Top = 26
            Width = 146
            Height = 14
            Caption = 'Maximum Dispersion Error :'
          end
          object lblMaxDamageRadius: TLabel
            Left = 15
            Top = 53
            Width = 144
            Height = 14
            Caption = 'Maximum Damage Radius :'
          end
          object lblEffectiveRadius: TLabel
            Left = 15
            Top = 80
            Width = 94
            Height = 14
            Caption = 'Effective Radius :'
          end
          object edtEffectiveRadius: TEdit
            Tag = 1
            Left = 169
            Top = 76
            Width = 48
            Height = 22
            TabOrder = 2
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxDamageRadius: TEdit
            Tag = 1
            Left = 169
            Top = 48
            Width = 48
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxDispersionError: TEdit
            Tag = 1
            Left = 169
            Top = 22
            Width = 48
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 2
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 679
          Height = 377
          Align = alClient
          Lines.Strings = (
            '')
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 532
    Width = 727
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 562
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 642
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 482
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 727
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 727
      Height = 5
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitWidth = 8
      ExplicitHeight = 637
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 527
    Width = 727
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 727
      Height = 5
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitWidth = 8
      ExplicitHeight = 637
    end
  end
end
