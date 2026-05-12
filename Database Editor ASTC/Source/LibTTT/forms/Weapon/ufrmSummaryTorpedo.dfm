object frmSummaryTorpedo: TfrmSummaryTorpedo
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Torpedo'
  ClientHeight = 631
  ClientWidth = 815
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
    Width = 815
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
      Left = 10
      Top = 31
      Width = 795
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
    Width = 815
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 795
      Height = 493
      ActivePage = tsGuidance
      Align = alClient
      MultiLine = True
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object lblDetectabilityType: TLabel
          Left = 14
          Top = 402
          Width = 108
          Height = 14
          Caption = 'Detectability Type :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMaxSearchDepth: TLabel
          Left = 14
          Top = 375
          Width = 137
          Height = 14
          Caption = 'Maximum Search Depth :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 227
          Top = 375
          Width = 23
          Height = 14
          Caption = 'feet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object grpLaunchSetting: TGroupBox
          Left = 15
          Top = 18
          Width = 362
          Height = 76
          Caption = ' Launch Setting   '
          TabOrder = 0
          object lblMethod: TLabel
            Left = 11
            Top = 20
            Width = 50
            Height = 14
            Caption = 'Method :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblSpeed: TLabel
            Left = 11
            Top = 47
            Width = 154
            Height = 14
            Caption = 'Initial Commandedd Speed :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbMethod: TComboBox
            Left = 172
            Top = 16
            Width = 178
            Height = 22
            TabOrder = 0
            Text = 'Aimpoint or Bearing Launch'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Aimpoint Only Launch'
              'Bearing Only Launch'
              'Aimpoint or Bearing Launch'
              'Direct Launch')
          end
          object cbbSpeed: TComboBox
            Left = 172
            Top = 43
            Width = 178
            Height = 22
            ItemIndex = 0
            TabOrder = 1
            Text = 'Minimum'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Minimum'
              'Cruise'
              'High'
              'Maximum')
          end
        end
        object cbbDetectabilityType: TComboBox
          Left = 167
          Top = 398
          Width = 209
          Height = 22
          TabOrder = 1
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'Normal Detection '
            'Undetectable'
            'Passive Detection '
            'Always Visible'
            ' ')
        end
        object grpOptimumLaunchRange: TGroupBox
          Left = 413
          Top = 188
          Width = 351
          Height = 230
          Caption = ' Optimum Launch Range (% Maximum Range)   '
          TabOrder = 2
          object lblNuclearSubmarine: TLabel
            Left = 16
            Top = 24
            Width = 105
            Height = 14
            Caption = 'Nuclear Submarine:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblConventionalSubmarine: TLabel
            Left = 16
            Top = 90
            Width = 135
            Height = 14
            Caption = 'Conventional Submarine:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblOtherSubmarine: TLabel
            Left = 16
            Top = 159
            Width = 97
            Height = 14
            Caption = 'Other Submarine:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 10
            Top = 70
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label7: TLabel
            Left = 267
            Top = 70
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label3: TLabel
            Left = 266
            Top = 137
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label8: TLabel
            Left = 10
            Top = 137
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label9: TLabel
            Left = 10
            Top = 205
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label10: TLabel
            Left = 266
            Top = 205
            Width = 21
            Height = 14
            Caption = '100'
          end
          object trckbrNuclearSubmarine: TTrackBar
            Tag = 2
            Left = 3
            Top = 41
            Width = 286
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 0
            OnChange = trckbrGeneralChange
          end
          object edtNuclearSubmarine: TEdit
            Left = 288
            Top = 41
            Width = 53
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            Text = '0'
            OnChange = edtOptimumLaunchChange
          end
          object edtConventionalSubmarine: TEdit
            Left = 288
            Top = 107
            Width = 53
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 2
            Text = '0'
            OnChange = edtOptimumLaunchChange
          end
          object edtOtherSubmarine: TEdit
            Left = 288
            Top = 175
            Width = 53
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 3
            Text = '0'
            OnChange = edtOptimumLaunchChange
          end
          object trckbrConventionalSubmarine: TTrackBar
            Tag = 3
            Left = 3
            Top = 107
            Width = 286
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 4
            OnChange = trckbrGeneralChange
          end
          object trckbrOtherSubmarine: TTrackBar
            Tag = 4
            Left = 3
            Top = 175
            Width = 286
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 5
            OnChange = trckbrGeneralChange
          end
        end
        object grpLethality: TGroupBox
          Left = 413
          Top = 104
          Width = 351
          Height = 74
          Caption = ' Lethality   '
          TabOrder = 3
          object Label1: TLabel
            Left = 10
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label2: TLabel
            Left = 254
            Top = 54
            Width = 46
            Height = 14
            Caption = '100.000'
          end
          object trckbrLethality: TTrackBar
            Tag = 1
            Left = 3
            Top = 25
            Width = 286
            Height = 32
            Max = 100000
            Frequency = 25000
            TabOrder = 0
            OnChange = trckbrGeneralChange
          end
          object edtLethality: TEdit
            Left = 288
            Top = 25
            Width = 53
            Height = 22
            MaxLength = 6
            NumbersOnly = True
            TabOrder = 1
            Text = '0'
            OnChange = edtGeneralChange
          end
        end
        object grpDamageSustainability: TGroupBox
          Left = 413
          Top = 20
          Width = 351
          Height = 74
          Caption = ' Demage Sustainability   '
          TabOrder = 4
          object Label4: TLabel
            Left = 10
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label5: TLabel
            Left = 254
            Top = 54
            Width = 46
            Height = 14
            Caption = '100.000'
          end
          object edtDamageSustainability: TEdit
            Left = 288
            Top = 25
            Width = 53
            Height = 22
            MaxLength = 6
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
          object trckbrDamageSustainability: TTrackBar
            Left = 3
            Top = 25
            Width = 286
            Height = 32
            Max = 100000
            Frequency = 25000
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
        end
        object grpCapabilities: TGroupBox
          Left = 15
          Top = 171
          Width = 361
          Height = 119
          Caption = ' Capabilities   '
          TabOrder = 5
          object lblPrimaryTargetDomain: TLabel
            Left = 24
            Top = 59
            Width = 126
            Height = 14
            Caption = 'Primary Targer domain:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object chkAntiSubsurface: TCheckBox
            Left = 191
            Top = 25
            Width = 110
            Height = 17
            Caption = 'Anti-Subsurface'
            TabOrder = 0
            OnClick = UpdatePrimaryTargetDomainItems
          end
          object chkAntiSurface: TCheckBox
            Left = 60
            Top = 25
            Width = 86
            Height = 17
            Caption = 'Anti-Surface'
            TabOrder = 1
            OnClick = UpdatePrimaryTargetDomainItems
          end
          object cbbPrimaryTargetDomain: TComboBox
            Left = 24
            Top = 79
            Width = 313
            Height = 22
            TabOrder = 2
            OnChange = ComboBoxDataChange
          end
        end
        object grpSafetyCeiling: TGroupBox
          Left = 14
          Top = 299
          Width = 362
          Height = 61
          Caption = ' Safety Ceiling   '
          TabOrder = 6
          object lblSafetyCeilingDepth: TLabel
            Left = 25
            Top = 27
            Width = 42
            Height = 14
            Caption = 'Depth :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 144
            Top = 27
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object chkFixDepth: TCheckBox
            Left = 244
            Top = 25
            Width = 78
            Height = 17
            Caption = 'Fix-Depth'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object edtSafetyCeilingDepth: TEdit
            Left = 86
            Top = 23
            Width = 53
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpActiveAccoustic: TGroupBox
          Left = 15
          Top = 106
          Width = 362
          Height = 54
          Caption = ' Active Accoustic Seeker Head Transmission   '
          TabOrder = 7
          object lblPower: TLabel
            Left = 7
            Top = 24
            Width = 43
            Height = 14
            Caption = 'Power :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblFrequency: TLabel
            Left = 181
            Top = 24
            Width = 65
            Height = 14
            Caption = 'Frequency :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 113
            Top = 24
            Width = 18
            Height = 14
            Caption = 'kW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 309
            Top = 24
            Width = 18
            Height = 14
            Caption = 'kW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtPower: TEdit
            Left = 55
            Top = 20
            Width = 53
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtFrequency: TEdit
            Left = 251
            Top = 20
            Width = 53
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtMaxSearchDepth: TEdit
          Left = 168
          Top = 370
          Width = 53
          Height = 22
          TabOrder = 8
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
      end
      object tsPhysical: TTabSheet
        Caption = 'Physicsal'
        ImageIndex = 1
        object lblMotionCharacteristic: TLabel
          Left = 18
          Top = 20
          Width = 122
          Height = 14
          Caption = 'Motion Characteristics:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object grpAirDropCapable: TGroupBox
          Left = 459
          Top = 86
          Width = 302
          Height = 107
          Enabled = False
          TabOrder = 0
          object lblLateralDeceleration: TLabel
            Left = 25
            Top = 29
            Width = 116
            Height = 14
            Caption = 'Lateral Deceleration :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblDecentRate: TLabel
            Left = 25
            Top = 57
            Width = 77
            Height = 14
            Caption = 'Decent Rate :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl15: TLabel
            Left = 223
            Top = 29
            Width = 48
            Height = 14
            Caption = 'knot/sec'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl16: TLabel
            Left = 223
            Top = 57
            Width = 47
            Height = 14
            Caption = 'feet/min'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtLateralDeceleration: TEdit
            Tag = 2
            Left = 167
            Top = 25
            Width = 50
            Height = 22
            TabOrder = 0
            Text = '0.00'
          end
          object edtDecentRate: TEdit
            Tag = 2
            Left = 167
            Top = 53
            Width = 50
            Height = 22
            TabOrder = 1
            Text = '0.00'
          end
        end
        object chkAirDropCapable: TCheckBox
          Left = 468
          Top = 77
          Width = 112
          Height = 20
          Caption = 'Air Drop Capable'
          TabOrder = 1
          OnClick = chkAirDropCapableClick
        end
        object grpAcousticCrossSection: TGroupBox
          Left = 19
          Top = 336
          Width = 416
          Height = 65
          Caption = ' Acoustic Cross-Section   '
          TabOrder = 2
          object lblAcousticFront: TLabel
            Left = 44
            Top = 30
            Width = 37
            Height = 14
            Caption = 'Front :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAcousticSide: TLabel
            Left = 236
            Top = 30
            Width = 31
            Height = 14
            Caption = 'Side :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl17: TLabel
            Left = 150
            Top = 30
            Width = 34
            Height = 14
            Caption = 'dB m'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl18: TLabel
            Left = 338
            Top = 30
            Width = 34
            Height = 14
            Caption = 'dB m'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtAcousticFront: TEdit
            Tag = 2
            Left = 93
            Top = 26
            Width = 51
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAcousticSide: TEdit
            Tag = 2
            Left = 282
            Top = 26
            Width = 51
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpAcousticIntensity: TGroupBox
          Left = 18
          Top = 208
          Width = 416
          Height = 109
          Caption = ' Acoustic Intensity   '
          TabOrder = 3
          object lblMinimumSpeed: TLabel
            Left = 15
            Top = 24
            Width = 94
            Height = 14
            Caption = 'Minimum Speed :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblBelowCavitation: TLabel
            Left = 224
            Top = 24
            Width = 98
            Height = 14
            Caption = 'Below Cavitation :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl19: TLabel
            Left = 176
            Top = 24
            Width = 14
            Height = 14
            Caption = 'dB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl20: TLabel
            Left = 385
            Top = 24
            Width = 14
            Height = 14
            Caption = 'dB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAboveCavitation: TLabel
            Left = 224
            Top = 49
            Width = 100
            Height = 14
            Caption = 'Above Cavitation :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMaximumSpeed: TLabel
            Left = 15
            Top = 49
            Width = 97
            Height = 14
            Caption = 'Maximum Speed :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl21: TLabel
            Left = 385
            Top = 49
            Width = 14
            Height = 14
            Caption = 'dB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl22: TLabel
            Left = 176
            Top = 49
            Width = 14
            Height = 14
            Caption = 'dB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblCavitationSpeed: TLabel
            Left = 15
            Top = 76
            Width = 100
            Height = 14
            Caption = 'Cavitation Speed :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl23: TLabel
            Left = 176
            Top = 76
            Width = 30
            Height = 14
            Caption = 'knots'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtMinimumSpeed: TEdit
            Tag = 1
            Left = 119
            Top = 17
            Width = 51
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtBelowCavitation: TEdit
            Tag = 1
            Left = 329
            Top = 20
            Width = 51
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAboveCavitation: TEdit
            Tag = 1
            Left = 329
            Top = 45
            Width = 51
            Height = 22
            TabOrder = 2
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaximumSpeed: TEdit
            Tag = 1
            Left = 119
            Top = 45
            Width = 51
            Height = 22
            TabOrder = 3
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtCavitationSpeed: TEdit
            Tag = 2
            Left = 119
            Top = 73
            Width = 51
            Height = 22
            TabOrder = 4
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtMotionCharacteristics: TEdit
          Tag = 4
          Left = 19
          Top = 40
          Width = 708
          Height = 22
          ReadOnly = True
          TabOrder = 4
          Text = '(None)'
        end
        object btnMotionCharacteristic: TButton
          Left = 733
          Top = 39
          Width = 28
          Height = 22
          Caption = '...'
          TabOrder = 5
          OnClick = btnMotionCharacteristicsClick
        end
        object grpDimensions: TGroupBox
          Left = 18
          Top = 80
          Width = 416
          Height = 113
          Caption = ' Dimensions   '
          TabOrder = 6
          object lblLength: TLabel
            Left = 15
            Top = 23
            Width = 47
            Height = 14
            Caption = 'Length :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl11: TLabel
            Left = 127
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblWidth: TLabel
            Left = 15
            Top = 51
            Width = 41
            Height = 14
            Caption = 'Width :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl12: TLabel
            Left = 127
            Top = 51
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl13: TLabel
            Left = 127
            Top = 78
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblEngagementRange: TLabel
            Left = 191
            Top = 23
            Width = 116
            Height = 14
            Caption = 'Engagement Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl14: TLabel
            Left = 371
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblHeight: TLabel
            Left = 15
            Top = 78
            Width = 44
            Height = 14
            Caption = 'Height :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtLength: TEdit
            Left = 68
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtWidth: TEdit
            Left = 68
            Top = 47
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHeight: TEdit
            Left = 68
            Top = 74
            Width = 55
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtEngagementRange: TEdit
            Left = 311
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 3
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsPOHModifier: TTabSheet
        Caption = 'POH Modifier'
        ImageIndex = 2
        object grpTorpedo: TGroupBox
          Left = 20
          Top = 20
          Width = 737
          Height = 317
          Caption = ' Torpedo   '
          TabOrder = 0
          object lblWakeHoming: TLabel
            Left = 11
            Top = 30
            Width = 84
            Height = 14
            Caption = 'Wake Homing :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblWireGuided: TLabel
            Left = 11
            Top = 85
            Width = 75
            Height = 14
            Caption = 'Wire-Guided :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblActiveAcoustic: TLabel
            Left = 11
            Top = 140
            Width = 92
            Height = 14
            Caption = 'Active Acoustic :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblPassiveAcoustic: TLabel
            Left = 11
            Top = 194
            Width = 96
            Height = 14
            Caption = 'Passive Acoustic :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblActivePassiveAcoustic: TLabel
            Left = 11
            Top = 249
            Width = 77
            Height = 28
            Caption = 'Active/Passive'#13#10'Acoustic :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 122
            Top = 60
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label12: TLabel
            Left = 662
            Top = 60
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label13: TLabel
            Left = 122
            Top = 115
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label14: TLabel
            Left = 662
            Top = 115
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label15: TLabel
            Left = 122
            Top = 170
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label16: TLabel
            Left = 662
            Top = 170
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label17: TLabel
            Left = 122
            Top = 224
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label18: TLabel
            Left = 662
            Top = 224
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label19: TLabel
            Left = 122
            Top = 279
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label20: TLabel
            Left = 662
            Top = 279
            Width = 21
            Height = 14
            Caption = '100'
          end
          object edtWakeHoming: TEdit
            Left = 687
            Top = 30
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            OnChange = edtPOHModifierChange
          end
          object edtActiveAcoustic: TEdit
            Left = 687
            Top = 140
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            OnChange = edtPOHModifierChange
          end
          object edtPassiveAcoustic: TEdit
            Left = 687
            Top = 194
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 2
            OnChange = edtPOHModifierChange
          end
          object edtWireGuided: TEdit
            Left = 687
            Top = 85
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 3
            OnChange = edtPOHModifierChange
          end
          object trckbrWakeHoming: TTrackBar
            Left = 114
            Top = 30
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 4
            OnChange = trckbrPOHModifierChange
          end
          object trckbrWireGuided: TTrackBar
            Tag = 1
            Left = 114
            Top = 85
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 5
            OnChange = trckbrPOHModifierChange
          end
          object trckbrActiveAcoustic: TTrackBar
            Tag = 2
            Left = 114
            Top = 140
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 6
            OnChange = trckbrPOHModifierChange
          end
          object trckbrPassiveAcoustic: TTrackBar
            Tag = 3
            Left = 114
            Top = 194
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 7
            OnChange = trckbrPOHModifierChange
          end
          object edtActivePassiveAcoustic: TEdit
            Left = 687
            Top = 249
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 8
            OnChange = edtPOHModifierChange
          end
          object trckbrActivePassiveAcoustic: TTrackBar
            Tag = 4
            Left = 114
            Top = 249
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 9
            OnChange = trckbrPOHModifierChange
          end
        end
      end
      object tsGuidance: TTabSheet
        Caption = 'Guidance'
        ImageIndex = 3
        object lblMinimumRunoutRange: TLabel
          Left = 395
          Top = 84
          Width = 137
          Height = 14
          Caption = 'Minimum Runout Range :'
        end
        object lbl29: TLabel
          Left = 609
          Top = 84
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object lblDefaultCruiseDepth: TLabel
          Left = 395
          Top = 30
          Width = 121
          Height = 14
          Caption = 'Default Cruise Depth :'
        end
        object lblWireAngleOffset: TLabel
          Left = 395
          Top = 57
          Width = 106
          Height = 14
          Caption = 'Wire-Angle Offset :'
        end
        object lbl38: TLabel
          Left = 609
          Top = 30
          Width = 23
          Height = 14
          Caption = 'feet'
        end
        object lbl39: TLabel
          Left = 609
          Top = 57
          Width = 21
          Height = 14
          Caption = 'deg'
        end
        object grpGuidance: TGroupBox
          Left = 20
          Top = 20
          Width = 326
          Height = 83
          Caption = ' Launch Setting   '
          TabOrder = 0
          object lblPrimary: TLabel
            Left = 11
            Top = 24
            Width = 47
            Height = 14
            Caption = 'Primary :'
          end
          object lblPursuit: TLabel
            Left = 11
            Top = 51
            Width = 45
            Height = 14
            Caption = 'Pursuit :'
          end
          object cbbPrimary: TComboBox
            Left = 114
            Top = 20
            Width = 191
            Height = 22
            TabOrder = 0
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Straight'
              'Active Acoustic'
              'Passive Acoustic'
              'Active/Passive'
              'Wire Guided'
              'Wake Homing')
          end
          object cbbPursuit: TComboBox
            Left = 114
            Top = 47
            Width = 89
            Height = 22
            TabOrder = 1
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Lead'
              'Pure')
          end
        end
        object grpSeekerDetectionEnvelope: TGroupBox
          Left = 20
          Top = 253
          Width = 326
          Height = 83
          Caption = ' Seeker Detection Envelope   '
          TabOrder = 1
          object lbl26: TLabel
            Left = 123
            Top = 22
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblSeekerAzimuth: TLabel
            Left = 11
            Top = 49
            Width = 52
            Height = 14
            Caption = 'Azimuth :'
          end
          object lbl27: TLabel
            Left = 123
            Top = 49
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object lblSeekerRange: TLabel
            Left = 11
            Top = 22
            Width = 42
            Height = 14
            Caption = 'Range :'
          end
          object lblSeekerElevation: TLabel
            Left = 171
            Top = 24
            Width = 57
            Height = 14
            Caption = 'Elevation :'
          end
          object lbl28: TLabel
            Left = 289
            Top = 24
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object edtSeekerRange: TEdit
            Tag = 2
            Left = 76
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSeekerAzimuth: TEdit
            Left = 76
            Top = 47
            Width = 42
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSeekerElevation: TEdit
            Left = 242
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtMinimumRunoutRange: TEdit
          Tag = 2
          Left = 561
          Top = 80
          Width = 42
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grpSinuationRunout: TGroupBox
          Left = 395
          Top = 125
          Width = 366
          Height = 58
          Enabled = False
          TabOrder = 4
          object lbl30: TLabel
            Left = 129
            Top = 26
            Width = 28
            Height = 14
            Caption = 'yards'
          end
          object lblSinuationAmplitude: TLabel
            Left = 186
            Top = 26
            Width = 63
            Height = 14
            Caption = 'Amplitude :'
          end
          object lbl31: TLabel
            Left = 311
            Top = 26
            Width = 28
            Height = 14
            Caption = 'yards'
          end
          object lblSinuationPeriod: TLabel
            Left = 26
            Top = 26
            Width = 42
            Height = 14
            Caption = 'Period :'
          end
          object edtSinuationPeriod: TEdit
            Left = 81
            Top = 22
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSinuationAmplitude: TEdit
            Left = 263
            Top = 22
            Width = 42
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbUseTerminalCircle: TGroupBox
          Left = 395
          Top = 202
          Width = 366
          Height = 58
          Enabled = False
          TabOrder = 6
          object lbl34: TLabel
            Left = 126
            Top = 22
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblRadius: TLabel
            Left = 24
            Top = 22
            Width = 42
            Height = 14
            Caption = 'Radius :'
          end
          object edtRadius: TEdit
            Tag = 2
            Left = 79
            Top = 18
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object chkRadiusOperatorModifable: TCheckBox
            Left = 170
            Top = 23
            Width = 171
            Height = 17
            Caption = 'Radius Operator Modifiable'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object grpRange: TGroupBox
          Left = 20
          Top = 109
          Width = 326
          Height = 58
          Caption = ' Range   '
          TabOrder = 7
          object lbl32: TLabel
            Left = 128
            Top = 24
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblMaxRange: TLabel
            Left = 176
            Top = 24
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object lbl33: TLabel
            Left = 287
            Top = 24
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblMinRange: TLabel
            Left = 16
            Top = 24
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object edtMinRange: TEdit
            Tag = 2
            Left = 80
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxRange: TEdit
            Tag = 2
            Left = 240
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpSeekerTurnOnRange: TGroupBox
          Left = 20
          Top = 181
          Width = 326
          Height = 58
          Caption = ' Seeker Turn-On Range   '
          TabOrder = 8
          object lbl35: TLabel
            Left = 110
            Top = 22
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblSeekerTurnOnRange: TLabel
            Left = 11
            Top = 22
            Width = 42
            Height = 14
            Caption = 'Range :'
          end
          object edtSeekerTurnOnRange: TEdit
            Tag = 2
            Left = 63
            Top = 19
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object chkRangeOperatorModifable: TCheckBox
            Left = 150
            Top = 21
            Width = 166
            Height = 17
            Caption = 'Range Operator Modifiable'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object grpRelaviteGyroAngle: TGroupBox
          Left = 395
          Top = 278
          Width = 366
          Height = 58
          Enabled = False
          TabOrder = 10
          object lblFirstAngle: TLabel
            Left = 8
            Top = 25
            Width = 65
            Height = 14
            Caption = 'First Angle :'
          end
          object lblSecondAngle: TLabel
            Left = 187
            Top = 25
            Width = 84
            Height = 14
            Caption = 'Second Angle :'
          end
          object lbl36: TLabel
            Left = 136
            Top = 24
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object lbl37: TLabel
            Left = 333
            Top = 25
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object cbbFirstAngle: TComboBox
            Left = 78
            Top = 21
            Width = 52
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55'
              '60'
              '65'
              '70'
              '75'
              '80'
              '85'
              '90')
          end
          object cbbSecondAngle: TComboBox
            Left = 276
            Top = 21
            Width = 52
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              '10'
              '20'
              '30'
              '40'
              '50'
              '60'
              '70'
              '80'
              '90'
              '100'
              '110'
              '120'
              '130'
              '140'
              '150'
              '160'
              '170'
              '180')
          end
        end
        object edtDefaultCruiseDepth: TEdit
          Left = 561
          Top = 26
          Width = 42
          Height = 22
          TabOrder = 11
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtWireAngleOffset: TEdit
          Left = 561
          Top = 53
          Width = 42
          Height = 22
          TabOrder = 12
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grpAspectDependentPOH: TGroupBox
          Left = 20
          Top = 347
          Width = 741
          Height = 67
          Caption = ' Aspect Dependent Probability of Hit   '
          TabOrder = 13
          object btnEditPOH: TButton
            Left = 43
            Top = 22
            Width = 655
            Height = 27
            Caption = 'Edit...'
            TabOrder = 0
            OnClick = btnEditPOHClick
          end
        end
        object chkSinuationRunout: TCheckBox
          Left = 403
          Top = 116
          Width = 116
          Height = 17
          Caption = 'Sinuation Runout'
          TabOrder = 3
          OnClick = chkSinuationRunoutClick
        end
        object chkUseTerminalCircle: TCheckBox
          Left = 403
          Top = 193
          Width = 124
          Height = 17
          Caption = 'Use Terminal Circle'
          TabOrder = 5
          OnClick = chkUseTerminalCircleClick
        end
        object chkRelativeGyroAngle: TCheckBox
          Left = 403
          Top = 266
          Width = 184
          Height = 17
          Caption = 'Relative Gyro Angles Required'
          TabOrder = 9
          OnClick = chkRelativeGyroAngleClick
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 5
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 767
          Height = 433
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 588
    Width = 815
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 650
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 730
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 570
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
    Width = 815
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 815
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
    Top = 583
    Width = 815
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 815
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
