object frmSummaryRadar: TfrmSummaryRadar
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Radar'
  ClientHeight = 445
  ClientWidth = 762
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
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
      Left = 10
      Top = 31
      Width = 741
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 70
    Width = 762
    Height = 327
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 742
      Height = 307
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object lblBaselineDelectionRange: TLabel
          Left = 373
          Top = 33
          Width = 147
          Height = 14
          Caption = 'Baseline Detection Range :'
        end
        object lblAssociatedCrossSection: TLabel
          Left = 373
          Top = 60
          Width = 143
          Height = 14
          Caption = 'Associated Cross-Section :'
        end
        object lblMaxUnambigous: TLabel
          Left = 373
          Top = 87
          Width = 199
          Height = 14
          Caption = 'Max Unambigous Detection Range : '
        end
        object lblNumberofFCR: TLabel
          Left = 373
          Top = 114
          Width = 204
          Height = 14
          Caption = 'Number of FCR Channels Supported :'
        end
        object lblSpotNumber: TLabel
          Left = 373
          Top = 141
          Width = 81
          Height = 14
          Caption = 'Spot Number :'
        end
        object lblOTHRadarFactor: TLabel
          Left = 373
          Top = 168
          Width = 105
          Height = 14
          Caption = 'OTH Radar Factor :'
        end
        object lblMainLobeGain: TLabel
          Left = 373
          Top = 195
          Width = 90
          Height = 14
          Caption = 'Main Lobe Gain :'
        end
        object Label12: TLabel
          Left = 655
          Top = 33
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object Label13: TLabel
          Left = 655
          Top = 87
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object Label14: TLabel
          Left = 655
          Top = 168
          Width = 22
          Height = 14
          Caption = 'MHz'
        end
        object Label15: TLabel
          Left = 655
          Top = 195
          Width = 14
          Height = 14
          Caption = 'dB'
        end
        object edtBaselineDelectionRange: TEdit
          Tag = 2
          Left = 591
          Top = 29
          Width = 57
          Height = 22
          TabOrder = 0
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtAssociatedCrossSection: TEdit
          Tag = 2
          Left = 591
          Top = 56
          Width = 57
          Height = 22
          TabOrder = 1
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxUnambigous: TEdit
          Tag = 2
          Left = 591
          Top = 83
          Width = 57
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtNumberofFCR: TEdit
          Left = 591
          Top = 109
          Width = 57
          Height = 22
          TabOrder = 3
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtSpotNumber: TEdit
          Left = 591
          Top = 137
          Width = 57
          Height = 22
          TabOrder = 4
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtOTHRadarFactor: TEdit
          Tag = 1
          Left = 591
          Top = 164
          Width = 57
          Height = 22
          TabOrder = 5
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMainLobeGain: TEdit
          Tag = 1
          Left = 591
          Top = 191
          Width = 57
          Height = 22
          TabOrder = 6
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object cbbAssociatedCrossSection: TComboBox
          Left = 655
          Top = 56
          Width = 58
          Height = 22
          Enabled = False
          TabOrder = 7
          Text = 'dB m'#178
          Items.Strings = (
            'dB m'#178)
        end
        object grbCapabilities: TGroupBox
          Left = 15
          Top = 147
          Width = 330
          Height = 101
          Caption = ' Capabilities   '
          TabOrder = 8
          object chkAltitudeData: TCheckBox
            Left = 13
            Top = 25
            Width = 93
            Height = 17
            Caption = 'Altitude Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object chkGroundSpeedData: TCheckBox
            Left = 13
            Top = 47
            Width = 129
            Height = 17
            Caption = 'Ground Speed Data'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
          object chkHeadingData: TCheckBox
            Left = 13
            Top = 68
            Width = 93
            Height = 17
            Caption = 'Heading Data'
            TabOrder = 2
            OnClick = CheckBoxDataClick
          end
          object chkPlatformTypeRecognition: TCheckBox
            Left = 149
            Top = 25
            Width = 167
            Height = 17
            Caption = 'Platform Type Recognition'
            TabOrder = 3
            OnClick = CheckBoxDataClick
          end
          object chkPlatformClassRecognition: TCheckBox
            Left = 149
            Top = 47
            Width = 164
            Height = 17
            Caption = 'Platform Class Recognition'
            TabOrder = 4
            OnClick = CheckBoxDataClick
          end
          object chkSectorScan: TCheckBox
            Left = 149
            Top = 68
            Width = 88
            Height = 17
            Caption = 'Sector Scan '
            TabOrder = 5
            OnClick = CheckBoxDataClick
          end
        end
        object GroupBox2: TGroupBox
          Left = 15
          Top = 20
          Width = 330
          Height = 114
          TabOrder = 9
          object lblEmitterType: TLabel
            Left = 21
            Top = 81
            Width = 80
            Height = 14
            Caption = 'Emitter Type :'
          end
          object lblECOMType: TLabel
            Left = 21
            Top = 54
            Width = 72
            Height = 14
            Caption = 'ECOM Type :'
          end
          object lblRadarType: TLabel
            Left = 21
            Top = 28
            Width = 70
            Height = 14
            Caption = 'Radar Type :'
          end
          object edtEmitterType: TEdit
            Tag = 4
            Left = 102
            Top = 78
            Width = 207
            Height = 22
            TabOrder = 0
            OnChange = edtChange
          end
          object cbbECCMType: TComboBox
            Left = 102
            Top = 50
            Width = 57
            Height = 22
            TabOrder = 1
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'A'
              'B'
              'C')
          end
          object cbbRadarType: TComboBox
            Left = 102
            Top = 22
            Width = 207
            Height = 22
            TabOrder = 2
            Text = 'Search and Fire Control radar'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Search radar'
              'Fire Control radar'
              'Search and Fire Control radar'
              'Navigation Radar'
              'Search and Navigation Radar')
          end
        end
      end
      object tsCharacteristic: TTabSheet
        Caption = 'Characteristics'
        ImageIndex = 1
        object lblFrequency: TLabel
          Left = 20
          Top = 20
          Width = 65
          Height = 14
          Caption = 'Frequency :'
        end
        object lblScanRate: TLabel
          Left = 20
          Top = 46
          Width = 63
          Height = 14
          Caption = 'Scan Rate :'
        end
        object lblPulseRepetitionFrequency: TLabel
          Left = 20
          Top = 73
          Width = 157
          Height = 14
          Caption = 'Pulse Repetition Frequency :'
        end
        object lblPulseWidth: TLabel
          Left = 20
          Top = 100
          Width = 73
          Height = 14
          Caption = 'Pulse Width :'
        end
        object lblPower: TLabel
          Left = 20
          Top = 127
          Width = 43
          Height = 14
          Caption = 'Power :'
        end
        object lblClutterRejection: TLabel
          Left = 20
          Top = 154
          Width = 100
          Height = 14
          Caption = 'Clutter Rejection :'
        end
        object lblBeamWidth: TLabel
          Left = 20
          Top = 181
          Width = 75
          Height = 14
          Caption = 'Beam Width :'
        end
        object Label23: TLabel
          Left = 246
          Top = 154
          Width = 14
          Height = 14
          Caption = 'dB'
        end
        object Label24: TLabel
          Left = 246
          Top = 19
          Width = 22
          Height = 14
          Caption = 'MHz'
        end
        object Label25: TLabel
          Left = 246
          Top = 46
          Width = 44
          Height = 14
          Caption = 'deg/sec'
        end
        object Label26: TLabel
          Left = 246
          Top = 73
          Width = 19
          Height = 14
          Caption = 'kHz'
        end
        object Label27: TLabel
          Left = 246
          Top = 100
          Width = 68
          Height = 14
          Caption = 'microsecond'
        end
        object Label28: TLabel
          Left = 246
          Top = 127
          Width = 18
          Height = 14
          Caption = 'kW'
        end
        object Label29: TLabel
          Left = 246
          Top = 181
          Width = 21
          Height = 14
          Caption = 'deg'
        end
        object lblSignalToNoise: TLabel
          Left = 336
          Top = 183
          Width = 311
          Height = 14
          Caption = 'Signal-To-Noise Ration vs Probability of Detection Curve :'
        end
        object edtFrequency: TEdit
          Tag = 1
          Left = 184
          Top = 14
          Width = 57
          Height = 22
          TabOrder = 0
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtScanRate: TEdit
          Tag = 1
          Left = 184
          Top = 42
          Width = 57
          Height = 22
          TabOrder = 1
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtPulseRepetitionFrequency: TEdit
          Tag = 3
          Left = 184
          Top = 69
          Width = 57
          Height = 22
          TabOrder = 2
          Text = '0.000'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtPulseWidth: TEdit
          Tag = 2
          Left = 184
          Top = 95
          Width = 57
          Height = 22
          TabOrder = 3
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtPower: TEdit
          Left = 184
          Top = 123
          Width = 57
          Height = 22
          TabOrder = 4
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtClutterRejection: TEdit
          Tag = 1
          Left = 184
          Top = 149
          Width = 57
          Height = 22
          TabOrder = 5
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtBeamWidth: TEdit
          Left = 184
          Top = 177
          Width = 57
          Height = 22
          TabOrder = 6
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grpVerticalCoverageCurve1: TGroupBox
          Left = 336
          Top = 19
          Width = 370
          Height = 67
          Caption = ' Vertical Coverage Curve 1   '
          TabOrder = 7
          object btnVerticalCoverageCurve1: TButton
            Left = 21
            Top = 28
            Width = 329
            Height = 25
            Caption = 'Edit...'
            TabOrder = 0
            OnClick = btnVerticalCoverageCurve1Click
          end
        end
        object grpVerticalCoverageCurve2: TGroupBox
          Left = 336
          Top = 100
          Width = 370
          Height = 67
          Caption = ' Vertical Coverage Curve 2   '
          TabOrder = 8
          object chkValidVertical2: TCheckBox
            Left = 24
            Top = 28
            Width = 45
            Height = 17
            Caption = 'Valid'
            TabOrder = 0
            OnClick = chkValidVertical2Click
          end
          object btnEditVertical2: TButton
            Left = 84
            Top = 24
            Width = 261
            Height = 25
            Caption = 'Edit...'
            TabOrder = 1
            OnClick = btnEditVertical2Click
          end
        end
        object edtSignalToNoise: TEdit
          Tag = 4
          Left = 336
          Top = 202
          Width = 336
          Height = 22
          ReadOnly = True
          TabOrder = 9
          Text = '(None)'
        end
        object btnPick: TButton
          Left = 678
          Top = 202
          Width = 28
          Height = 22
          Caption = '...'
          TabOrder = 10
          OnClick = btnPickClick
        end
      end
      object tsAntiJamming: TTabSheet
        Caption = 'Anti Jamming'
        ImageIndex = 2
        object grbBasicCapabilities: TGroupBox
          Left = 16
          Top = 20
          Width = 701
          Height = 106
          Caption = ' Basic Capabilities   '
          TabOrder = 0
          object lblJammerStrength: TLabel
            Left = 248
            Top = 26
            Width = 264
            Height = 14
            Caption = 'Jammer Strength Reduction per Off-Axis Beam :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbldBbeamwidth: TLabel
            Left = 370
            Top = 77
            Width = 80
            Height = 14
            Caption = 'dB/beamwidth'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object mnlbl8: TLabel
            Left = 255
            Top = 77
            Width = 7
            Height = 14
            Caption = '1'
          end
          object mnlbl9: TLabel
            Left = 622
            Top = 77
            Width = 21
            Height = 14
            Caption = '500'
          end
          object trckbrJammerStrength: TTrackBar
            Left = 248
            Top = 46
            Width = 395
            Height = 32
            Max = 500
            Min = 1
            Frequency = 100
            Position = 1
            TabOrder = 0
            OnChange = trckbrAntiJammingChange
          end
          object edtJammerReduction: TEdit
            Left = 649
            Top = 49
            Width = 34
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            Text = '1'
            OnChange = edtJammerReductionChange
          end
          object chkTypeAJammingResistant: TCheckBox
            Left = 20
            Top = 23
            Width = 166
            Height = 17
            Caption = 'Type A Jamming Resistant'
            TabOrder = 2
            OnClick = CheckBoxDataClick
          end
          object chkTypeBJammingResistant: TCheckBox
            Left = 20
            Top = 46
            Width = 166
            Height = 17
            Caption = 'Type B Jamming Resistant'
            TabOrder = 3
            OnClick = CheckBoxDataClick
          end
          object chkTypeCJammingResistant: TCheckBox
            Left = 20
            Top = 68
            Width = 166
            Height = 17
            Caption = 'Type C Jamming Resistant'
            TabOrder = 4
            OnClick = CheckBoxDataClick
          end
        end
        object grbAntiJammingCapable: TGroupBox
          Left = 16
          Top = 142
          Width = 701
          Height = 106
          Enabled = False
          TabOrder = 1
          object Label2: TLabel
            Left = 248
            Top = 26
            Width = 391
            Height = 14
            Caption = 
              'Precentage of Maximum Unambigous Range with Anti Jamming Active ' +
              ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 255
            Top = 76
            Width = 19
            Height = 14
            Caption = '0%'
          end
          object Label5: TLabel
            Left = 615
            Top = 76
            Width = 33
            Height = 14
            Caption = '100%'
          end
          object trckbrPercentageMaxUnambigous: TTrackBar
            Tag = 1
            Left = 248
            Top = 45
            Width = 395
            Height = 32
            Max = 100
            Frequency = 20
            TabOrder = 0
            OnChange = trckbrAntiJammingChange
          end
          object edtPercentageMaxUnambigous: TEdit
            Left = 649
            Top = 48
            Width = 34
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            Text = '0'
            OnChange = edtPercentageMaxUnambigousChange
          end
          object chkCancelTypeA: TCheckBox
            Left = 20
            Top = 24
            Width = 205
            Height = 17
            Caption = 'Cancel Effects of Type A Jamming'
            TabOrder = 2
            OnClick = CheckBoxDataClick
          end
          object chkCancelTypeB: TCheckBox
            Left = 20
            Top = 46
            Width = 205
            Height = 17
            Caption = 'Cancel Effects of Type B Jamming'
            TabOrder = 3
            OnClick = CheckBoxDataClick
          end
          object chkCancelTypeC: TCheckBox
            Left = 20
            Top = 68
            Width = 205
            Height = 17
            Caption = 'Cancel Effects of Type C Jamming'
            TabOrder = 4
            OnClick = CheckBoxDataClick
          end
        end
        object chkAntiJammingCapable: TCheckBox
          Left = 28
          Top = 134
          Width = 141
          Height = 17
          Caption = 'Anti Jamming Capable'
          TabOrder = 2
          OnClick = chkAntiJammingCapableClick
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 3
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 714
          Height = 247
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 402
    Width = 762
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 596
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 676
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 516
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
    Width = 762
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 762
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
      ExplicitTop = -4
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 397
    Width = 762
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 762
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
      ExplicitTop = -4
    end
  end
end
