object frmSummaryMissile: TfrmSummaryMissile
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Missile'
  ClientHeight = 595
  ClientWidth = 816
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
    Width = 816
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 5
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
      Top = 26
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
    Width = 816
    Height = 477
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 796
      Height = 457
      ActivePage = tsGeneral
      Align = alClient
      MultiLine = True
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      StyleElements = [seFont, seClient]
      object tsGeneral: TTabSheet
        Caption = 'General'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        object lblDetectabilityType: TLabel
          Left = 418
          Top = 92
          Width = 104
          Height = 14
          Caption = 'Detectability Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMidCourseUpdateMode: TLabel
          Left = 418
          Top = 119
          Width = 145
          Height = 14
          Caption = 'Mid Course Update Mode :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 477
          Top = 50
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
        object lblMaxAltitudeDiff: TLabel
          Left = 418
          Top = 28
          Width = 333
          Height = 14
          Caption = 'Maximum Altitude Difference between Platform and Target :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object grbCapabilities: TGroupBox
          Left = 15
          Top = 169
          Width = 362
          Height = 138
          Caption = ' Capabilities   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lblPrimaryTargetDomain: TLabel
            Left = 14
            Top = 77
            Width = 136
            Height = 14
            Caption = 'Primary Target Domain  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object chkAntiAir: TCheckBox
            Left = 14
            Top = 20
            Width = 70
            Height = 17
            Caption = 'Anti-Air  '
            TabOrder = 0
            OnClick = UpdatePrimaryTargetDomainItems
          end
          object chkAntiSurface: TCheckBox
            Left = 99
            Top = 20
            Width = 94
            Height = 17
            Caption = 'Anti-Surface  '
            TabOrder = 1
            OnClick = UpdatePrimaryTargetDomainItems
          end
          object chkSeaStateModelling: TCheckBox
            Left = 219
            Top = 42
            Width = 128
            Height = 17
            Caption = 'Sea State Modeling'
            TabOrder = 2
          end
          object chkAntiSubsurface: TCheckBox
            Left = 99
            Top = 43
            Width = 117
            Height = 17
            Caption = 'Anti-Subsurface  '
            TabOrder = 3
            OnClick = UpdatePrimaryTargetDomainItems
          end
          object chkAntiLand: TCheckBox
            Left = 11
            Top = 43
            Width = 82
            Height = 17
            Caption = 'Anti-Land'
            TabOrder = 4
            OnClick = UpdatePrimaryTargetDomainItems
          end
          object chkAntiAmphibious: TCheckBox
            Left = 219
            Top = 18
            Width = 118
            Height = 17
            Caption = 'Anti-Amphibious'
            TabOrder = 5
          end
          object cbbPrimaryTargetDomain: TComboBox
            Left = 14
            Top = 97
            Width = 331
            Height = 22
            TabOrder = 6
            Text = 'Surface/SubSurface to Surface/SubSurface'
            OnChange = ComboBoxDataChange
          end
        end
        object grbHomeOnJammer: TGroupBox
          Left = 15
          Top = 109
          Width = 362
          Height = 45
          Caption = ' Home On Jammer Type   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object chkTypeA: TCheckBox
            Left = 53
            Top = 18
            Width = 67
            Height = 17
            Caption = 'Type A'
            TabOrder = 0
          end
          object chkTypeB: TCheckBox
            Left = 160
            Top = 18
            Width = 67
            Height = 17
            Caption = 'Type B'
            TabOrder = 1
          end
          object chkTypeC: TCheckBox
            Left = 267
            Top = 18
            Width = 67
            Height = 17
            Caption = 'Type C'
            TabOrder = 2
          end
        end
        object grbLaunchSettingGeneral: TGroupBox
          Left = 15
          Top = 20
          Width = 362
          Height = 74
          Caption = ' Launch Setting   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
          object lblInitialCommandedSpeed: TLabel
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
            Top = 15
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
          object cbbInitialCommandedSpeed: TComboBox
            Left = 172
            Top = 43
            Width = 178
            Height = 22
            TabOrder = 1
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Minimum'
              'Cruise'
              'High'
              'Maximum')
          end
        end
        object cbbDetectabilityType: TComboBox
          Left = 568
          Top = 88
          Width = 201
          Height = 22
          TabOrder = 3
          Text = 'Passive Detection '
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'Normal Detection '
            'Undetectable'
            'Passive Detection '
            'Always Visible')
        end
        object cbbMidCourseUpdateMode: TComboBox
          Left = 569
          Top = 116
          Width = 201
          Height = 22
          TabOrder = 4
          Text = 'Switch Missile Target Designation'
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'Switch Missile Target Designation'
            'Change Cruise Phase Waypoints'
            'None'
            'HF'
            'UHF'
            'SATCOM')
        end
        object edtMaxAltitudeDiff: TEdit
          Left = 418
          Top = 46
          Width = 53
          Height = 22
          TabOrder = 5
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grbHybridTorpedoDefinition: TGroupBox
          Left = 16
          Top = 322
          Width = 361
          Height = 63
          Enabled = False
          TabOrder = 7
          object edtHybridTorpedoDef: TEdit
            Tag = 4
            Left = 15
            Top = 19
            Width = 299
            Height = 22
            ReadOnly = True
            TabOrder = 0
            Text = '(None)'
          end
          object btnHybridTorpedoDef: TButton
            Left = 320
            Top = 19
            Width = 28
            Height = 22
            Caption = '...'
            TabOrder = 1
            OnClick = btnHybridTorpedoDefClick
          end
        end
        object chkHybridTorpedoDefinition: TCheckBox
          Left = 24
          Top = 315
          Width = 160
          Height = 17
          Caption = 'Hybrid Torpedo Definition'
          TabOrder = 6
          OnClick = chkHybridTorpedoDefClick
        end
        object grpLethality: TGroupBox
          Left = 418
          Top = 228
          Width = 351
          Height = 74
          Caption = ' Lethality   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          object Label2: TLabel
            Left = 10
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label3: TLabel
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
            Width = 285
            Height = 32
            Max = 100000
            Frequency = 25000
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
          object edtLethality: TEdit
            Left = 289
            Top = 25
            Width = 53
            Height = 22
            MaxLength = 6
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
        end
        object grbDamageSustainability: TGroupBox
          Left = 418
          Top = 146
          Width = 351
          Height = 74
          Caption = ' Damage Sustainability   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
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
          object trckbrDamageSustainability: TTrackBar
            Left = 3
            Top = 25
            Width = 285
            Height = 32
            Max = 100000
            Frequency = 25000
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
          object edtDamageSustainability: TEdit
            Left = 294
            Top = 26
            Width = 53
            Height = 22
            MaxLength = 6
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
        end
        object grbProbabilityofHit: TGroupBox
          Left = 418
          Top = 311
          Width = 351
          Height = 74
          Caption = ' Probability of Hit   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          object Label6: TLabel
            Left = 10
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label7: TLabel
            Left = 267
            Top = 54
            Width = 21
            Height = 14
            Caption = '100'
          end
          object edtProbabilityofHit: TEdit
            Left = 289
            Top = 25
            Width = 53
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtProbabilityofHitChange
          end
          object trckbrProbabilityofHit: TTrackBar
            Tag = 2
            Left = 3
            Top = 25
            Width = 285
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
        end
      end
      object tsPhysical: TTabSheet
        Caption = 'Physical'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
        object lblCroosSection: TLabel
          Left = 18
          Top = 229
          Width = 88
          Height = 14
          Caption = 'Cross-Section:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object grbDimensions: TGroupBox
          Left = 18
          Top = 80
          Width = 455
          Height = 113
          Caption = ' Dimensions   '
          TabOrder = 0
          object lblLengthDimensions: TLabel
            Left = 25
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
          object Label46: TLabel
            Left = 148
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
          object lblWidthDimensions: TLabel
            Left = 25
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
          object Label47: TLabel
            Left = 148
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
          object Label10: TLabel
            Left = 148
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
          object lblEngagementRangeDimensions: TLabel
            Left = 215
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
          object Label12: TLabel
            Left = 406
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
          object lblHeightDimensions: TLabel
            Left = 25
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
          object edtLengthDimensions: TEdit
            Left = 89
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtWidthDimensions: TEdit
            Left = 89
            Top = 47
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHeightDimensions: TEdit
            Left = 89
            Top = 74
            Width = 55
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtEngagementRangeDimensions: TEdit
            Left = 346
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 3
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtMotionCharacteristic: TEdit
          Tag = 4
          Left = 19
          Top = 40
          Width = 687
          Height = 22
          ReadOnly = True
          TabOrder = 1
          Text = '(None)'
        end
        object btnMotionCharacteristic: TButton
          Left = 712
          Top = 40
          Width = 28
          Height = 22
          Caption = '...'
          TabOrder = 2
          OnClick = btnMotionCharacteristicClick
        end
        object grbBoosterSeparation: TGroupBox
          Left = 504
          Top = 80
          Width = 236
          Height = 113
          Enabled = False
          TabOrder = 3
          object lblRangeBooster: TLabel
            Left = 33
            Top = 23
            Width = 42
            Height = 14
            Caption = 'Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblBoxWidthBooster: TLabel
            Left = 33
            Top = 50
            Width = 65
            Height = 14
            Caption = 'Box Width :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 186
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 186
            Top = 50
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 186
            Top = 78
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblBoxHeightBooster: TLabel
            Left = 33
            Top = 78
            Width = 68
            Height = 14
            Caption = 'Box Height :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtRangeBooster: TEdit
            Tag = 2
            Left = 126
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtBoxWidthBooster: TEdit
            Tag = 2
            Left = 126
            Top = 46
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtBoxHeightBooster: TEdit
            Tag = 2
            Left = 126
            Top = 74
            Width = 55
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object chkBoosterSeparation: TCheckBox
          Left = 513
          Top = 73
          Width = 177
          Height = 17
          Caption = 'Booster Separation Required'
          TabOrder = 4
          OnClick = chkBoosterSeparationClick
        end
        object grbRadarPhysical: TGroupBox
          Left = 18
          Top = 249
          Width = 223
          Height = 84
          Caption = ' Radar   '
          TabOrder = 5
          object lblFrontRadarPhysical: TLabel
            Left = 20
            Top = 24
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
          object lblSideRadarPhysical: TLabel
            Left = 20
            Top = 51
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
          object edtFrontRadarPhysical: TEdit
            Tag = 2
            Left = 66
            Top = 20
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSideRadarPhysical: TEdit
            Tag = 2
            Left = 66
            Top = 48
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object cbbFrontRadarPhysical: TComboBox
            Left = 136
            Top = 20
            Width = 60
            Height = 22
            Enabled = False
            TabOrder = 2
            Text = 'dB m2'
          end
          object cbbSideRadarPhysical: TComboBox
            Left = 136
            Top = 48
            Width = 60
            Height = 22
            Enabled = False
            TabOrder = 3
            Text = 'dB m2'
          end
        end
        object grbVisualPhysical: TGroupBox
          Left = 517
          Top = 253
          Width = 223
          Height = 84
          Caption = ' Visual/Electro-Optical   '
          TabOrder = 6
          object lblFrontVisualPhysical: TLabel
            Left = 33
            Top = 24
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
          object lblSideVisualPhysical: TLabel
            Left = 33
            Top = 51
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
          object Label26: TLabel
            Left = 146
            Top = 24
            Width = 44
            Height = 14
            Caption = 'metres'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 146
            Top = 51
            Width = 44
            Height = 14
            Caption = 'metres'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtFrontVisualPhysical: TEdit
            Tag = 1
            Left = 85
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSideVisualPhysical: TEdit
            Tag = 1
            Left = 85
            Top = 47
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbInfraredPhysical: TGroupBox
          Left = 268
          Top = 253
          Width = 223
          Height = 84
          Caption = ' Infrared   '
          TabOrder = 7
          object lblFrontInfraredPhysical: TLabel
            Left = 33
            Top = 24
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
          object lblSideInfraredPhysical: TLabel
            Left = 33
            Top = 51
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
          object Label30: TLabel
            Left = 146
            Top = 24
            Width = 44
            Height = 14
            Caption = 'metres'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 146
            Top = 51
            Width = 44
            Height = 14
            Caption = 'metres'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtFrontInfraredPhysical: TEdit
            Tag = 1
            Left = 85
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSideInfraredPhysical: TEdit
            Tag = 1
            Left = 85
            Top = 47
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsPOHModifier: TTabSheet
        Caption = 'POH Modifier'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grbMissile: TGroupBox
          Left = 24
          Top = 20
          Width = 737
          Height = 277
          Caption = ' Missile   '
          TabOrder = 0
          object lblAntiRadiationMissile: TLabel
            Left = 18
            Top = 30
            Width = 83
            Height = 14
            Caption = 'Anti-Radiation :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblInfraredMissile: TLabel
            Left = 18
            Top = 88
            Width = 51
            Height = 14
            Caption = 'Infrared :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblSARHMissile: TLabel
            Left = 18
            Top = 147
            Width = 38
            Height = 14
            Caption = 'SARH :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTARHMissile: TLabel
            Left = 18
            Top = 205
            Width = 39
            Height = 14
            Caption = 'TARH :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 662
            Top = 60
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label8: TLabel
            Left = 122
            Top = 60
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label11: TLabel
            Left = 122
            Top = 118
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label13: TLabel
            Left = 662
            Top = 118
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label14: TLabel
            Left = 122
            Top = 177
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label15: TLabel
            Left = 662
            Top = 177
            Width = 21
            Height = 14
            Caption = '100'
          end
          object Label16: TLabel
            Left = 122
            Top = 235
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label20: TLabel
            Left = 662
            Top = 235
            Width = 21
            Height = 14
            Caption = '100'
          end
          object trckbrAntiRadiationMissile: TTrackBar
            Left = 114
            Top = 30
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 0
            OnChange = trckbrPOHModifierChange
          end
          object edtAntiRadiationMissile: TEdit
            Left = 687
            Top = 30
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            Text = '0'
            OnChange = edtPOHModifierChange
          end
          object trckbrInfraredMissile: TTrackBar
            Tag = 1
            Left = 114
            Top = 88
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 2
            OnChange = trckbrPOHModifierChange
          end
          object edtInfraredMissile: TEdit
            Left = 687
            Top = 88
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 3
            Text = '0'
            OnChange = edtPOHModifierChange
          end
          object trckbrSARHMissile: TTrackBar
            Tag = 2
            Left = 114
            Top = 147
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 4
            OnChange = trckbrPOHModifierChange
          end
          object edtSARHMissile: TEdit
            Left = 687
            Top = 147
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 5
            Text = '0'
            OnChange = edtPOHModifierChange
          end
          object trckbrTARHMissile: TTrackBar
            Tag = 3
            Left = 114
            Top = 205
            Width = 571
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 6
            OnChange = trckbrPOHModifierChange
          end
          object edtTARHMissile: TEdit
            Left = 687
            Top = 205
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 7
            Text = '0'
            OnChange = edtPOHModifierChange
          end
        end
      end
      object tsGuidance: TTabSheet
        Caption = 'Guidance'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label76: TLabel
          Left = 8
          Top = 10
          Width = 4
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMaxFiringGuidance: TLabel
          Left = 395
          Top = 323
          Width = 128
          Height = 14
          Caption = 'Maximum Firing Depth :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDefaultCruiseGuidance: TLabel
          Left = 395
          Top = 345
          Width = 130
          Height = 14
          Caption = 'Default Cruise Altitude :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label67: TLabel
          Left = 585
          Top = 323
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
        object Label68: TLabel
          Left = 585
          Top = 353
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
        object grbRangeGuindance: TGroupBox
          Left = 23
          Top = 143
          Width = 156
          Height = 89
          Caption = ' Range   '
          TabOrder = 0
          object lblMinRangeGuide: TLabel
            Left = 12
            Top = 24
            Width = 55
            Height = 14
            Caption = 'Minimum :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMaxRangeGuide: TLabel
            Left = 12
            Top = 51
            Width = 58
            Height = 14
            Caption = 'Maximum :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 119
            Top = 24
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 119
            Top = 51
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtMinRangeGuide: TEdit
            Tag = 2
            Left = 73
            Top = 19
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxRangeGuide: TEdit
            Tag = 2
            Left = 72
            Top = 47
            Width = 42
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbFlyGuindance: TGroupBox
          Left = 193
          Top = 143
          Width = 156
          Height = 89
          TabOrder = 1
          object lblRangeFlyGuide: TLabel
            Left = 12
            Top = 24
            Width = 42
            Height = 14
            Caption = 'Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAltitudeFlyGuide: TLabel
            Left = 12
            Top = 51
            Width = 51
            Height = 14
            Caption = 'Altitude :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 118
            Top = 24
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 118
            Top = 48
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
          object edtRangeFlyGuide: TEdit
            Tag = 2
            Left = 70
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAltitudeFlyGuide: TEdit
            Left = 70
            Top = 48
            Width = 42
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object chkFlyOutRequired: TCheckBox
          Left = 203
          Top = 136
          Width = 110
          Height = 17
          Caption = 'Fly Out Required'
          TabOrder = 2
        end
        object grpTerminalGuidance: TGroupBox
          Left = 395
          Top = 22
          Width = 370
          Height = 108
          Caption = ' Terminal Guidance   '
          TabOrder = 3
          object lblCapabilityTerminalGuidance: TLabel
            Left = 12
            Top = 24
            Width = 58
            Height = 14
            Caption = 'Capability :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblStartRangeTerminalGuidance: TLabel
            Left = 12
            Top = 51
            Width = 73
            Height = 14
            Caption = 'Start Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAltitudeTerminalGuidance: TLabel
            Left = 12
            Top = 78
            Width = 51
            Height = 14
            Caption = 'Altitude :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblPeriodTerminalGuidance: TLabel
            Left = 205
            Top = 51
            Width = 42
            Height = 14
            Caption = 'Period :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAmplitudeTerminalGuidance: TLabel
            Left = 205
            Top = 78
            Width = 63
            Height = 14
            Caption = 'Amplitude :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl25: TLabel
            Left = 157
            Top = 51
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl26: TLabel
            Left = 157
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
          object lbl27: TLabel
            Left = 337
            Top = 51
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl28: TLabel
            Left = 337
            Top = 78
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbCapabilityTerminalGuidance: TComboBox
            Left = 99
            Top = 20
            Width = 74
            Height = 22
            TabOrder = 0
            Text = 'Sinuation'
            OnChange = cbbCapabilityTerminalGuidanceChange
            Items.Strings = (
              'None'
              'Pop-up'
              'Sinuation'
              '')
          end
          object edtStartRangeTerminalGuidance: TEdit
            Tag = 2
            Left = 98
            Top = 47
            Width = 53
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAltitudeTerminalGuidance: TEdit
            Left = 99
            Top = 74
            Width = 53
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtPeriodTerminalGuidance: TEdit
            Tag = 2
            Left = 280
            Top = 47
            Width = 53
            Height = 22
            TabOrder = 3
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAmplitudeTerminalGuidance: TEdit
            Tag = 2
            Left = 280
            Top = 74
            Width = 53
            Height = 22
            TabOrder = 4
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpSeekerTurnOnGuidance: TGroupBox
          Left = 23
          Top = 248
          Width = 326
          Height = 55
          Caption = ' Seeker Turn-On Range   '
          TabOrder = 4
          object lblRangeSeekerTurnGuidance: TLabel
            Left = 12
            Top = 24
            Width = 42
            Height = 14
            Caption = 'Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 119
            Top = 24
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtRangeSeekerTurnGuidance: TEdit
            Tag = 2
            Left = 72
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object chkRangeSeekerTurnGuidance: TCheckBox
            Left = 149
            Top = 22
            Width = 167
            Height = 17
            Caption = 'Range Operator Modifiable'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object grpSeekerDetectionEnvelopeGuidance: TGroupBox
          Left = 23
          Top = 318
          Width = 326
          Height = 86
          Caption = ' Seeker Detection Envelope   '
          TabOrder = 5
          object lblRangeSeekerDetectionGuidance: TLabel
            Left = 12
            Top = 24
            Width = 42
            Height = 14
            Caption = 'Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 119
            Top = 24
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAzimuthSeekerDetectionGuidance: TLabel
            Left = 182
            Top = 24
            Width = 52
            Height = 14
            Caption = 'Azimuth :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 288
            Top = 24
            Width = 21
            Height = 14
            Caption = 'deg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblElevationSeekerDetectionGuidance: TLabel
            Left = 12
            Top = 51
            Width = 57
            Height = 14
            Caption = 'Elevation :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 119
            Top = 51
            Width = 21
            Height = 14
            Caption = 'deg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtRangeSeekerDetectionGuidance: TEdit
            Tag = 2
            Left = 72
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAzimuthSeekerDetectionGuidance: TEdit
            Left = 243
            Top = 20
            Width = 42
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtElevationSeekerDetectionGuidance: TEdit
            Left = 72
            Top = 47
            Width = 42
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbTerminalAcquisition: TGroupBox
          Left = 395
          Top = 143
          Width = 370
          Height = 57
          Enabled = False
          TabOrder = 7
          object lblCommandAltitudeGuidance: TLabel
            Left = 12
            Top = 24
            Width = 123
            Height = 14
            Caption = 'Commanded Altitude :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label73: TLabel
            Left = 337
            Top = 24
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
          object edtCommandAltitudeGuidance: TEdit
            Left = 280
            Top = 20
            Width = 53
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object chkTerminalAcqGuidance: TCheckBox
          Left = 403
          Top = 136
          Width = 225
          Height = 17
          Caption = 'Terminal Acquisition Altitude Required'
          TabOrder = 6
          OnClick = chkTerminalAcqGuidanceClick
        end
        object grbchkWaypointUserGuidance: TGroupBox
          Left = 395
          Top = 215
          Width = 370
          Height = 84
          Enabled = False
          TabOrder = 9
          object lblmaxNumWaypointGuidance: TLabel
            Left = 12
            Top = 24
            Width = 228
            Height = 14
            Caption = 'Maximum Numbers of Waypoint Allowed :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 337
            Top = 51
            Width = 17
            Height = 14
            Caption = 'nm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMinFinalWaypointGuidance: TLabel
            Left = 12
            Top = 51
            Width = 205
            Height = 14
            Caption = 'Minimum Final Waypoint Leg Length :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtmaxNumWaypointGuidance: TEdit
            Left = 280
            Top = 20
            Width = 53
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMinFinalWaypointGuidance: TEdit
            Tag = 2
            Left = 280
            Top = 47
            Width = 53
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object chkWaypointUserGuidance: TCheckBox
          Left = 407
          Top = 207
          Width = 173
          Height = 17
          Caption = 'Waypoint User for Guidance'
          TabOrder = 8
          OnClick = chkWaypointUserGuidanceClick
        end
        object grpLaunchSettingGuidance: TGroupBox
          Left = 18
          Top = 22
          Width = 326
          Height = 108
          Caption = ' Launch Setting   '
          TabOrder = 10
          object lblPrimaryLaunchGuindance: TLabel
            Left = 19
            Top = 24
            Width = 47
            Height = 14
            Caption = 'Primary :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblSecondaryLaunchGuindance: TLabel
            Left = 19
            Top = 51
            Width = 65
            Height = 14
            Caption = 'Secondary :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblPursuitLaunchGuindance: TLabel
            Left = 19
            Top = 79
            Width = 45
            Height = 14
            Caption = 'Pursuit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbPrimaryLaunchGuidance: TComboBox
            Left = 114
            Top = 20
            Width = 191
            Height = 22
            TabOrder = 0
            Text = 'Terminal-Active Radar Homing'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Semi-Active Radar Homing'
              'Terminal-Active Radar Homing'
              'Infrared Homing'
              'Anti-Radiation'
              'Straight'
              'Hybrid(Standof ASW)')
          end
          object cbbSecondaryLaunchGuidance: TComboBox
            Left = 114
            Top = 47
            Width = 191
            Height = 22
            TabOrder = 1
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'None'
              'Infrared Homing'
              'Anti-Radiation')
          end
          object cbbPursuitLaunchGuidance: TComboBox
            Left = 114
            Top = 75
            Width = 89
            Height = 22
            TabOrder = 2
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Lead'
              'Pure')
          end
        end
        object edtMaxFiringGuidance: TEdit
          Left = 533
          Top = 319
          Width = 42
          Height = 22
          TabOrder = 11
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtDefaultCruiseGuidance: TEdit
          Left = 533
          Top = 346
          Width = 42
          Height = 22
          TabOrder = 12
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
      end
      object tsSeekerSetting: TTabSheet
        Caption = 'Seeker Settings'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lblPrimaryTARH: TLabel
          Left = 157
          Top = 24
          Width = 70
          Height = 14
          Caption = 'ECCM Type :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblRangeTARH: TLabel
          Left = 20
          Top = 24
          Width = 81
          Height = 14
          Caption = 'Spot Number :'
        end
        object cbbPrimaryTARH: TComboBox
          Left = 237
          Top = 20
          Width = 41
          Height = 22
          TabOrder = 0
          Text = 'A'
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'A'
            'B'
            'C')
        end
        object grpECM: TGroupBox
          Left = 20
          Top = 62
          Width = 258
          Height = 82
          Caption = ' ECM   '
          TabOrder = 1
          object lblDetonationECMTARH: TLabel
            Left = 17
            Top = 24
            Width = 69
            Height = 14
            Caption = 'Detonation :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblDetectionECMTARH: TLabel
            Left = 17
            Top = 51
            Width = 62
            Height = 14
            Caption = 'Detection :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbDetonationECMTARH: TComboBox
            Left = 96
            Top = 20
            Width = 147
            Height = 22
            TabOrder = 0
            Text = 'No Response To Chaff'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'No Response To Chaff'
              'On Chaff')
          end
          object cbbDetectionECMTARH: TComboBox
            Left = 96
            Top = 47
            Width = 147
            Height = 22
            TabOrder = 1
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Chaff'
              'No Chaff')
          end
        end
        object edtRangeTARH: TEdit
          Left = 111
          Top = 20
          Width = 34
          Height = 22
          TabOrder = 2
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grpIRCM: TGroupBox
          Left = 300
          Top = 62
          Width = 258
          Height = 82
          Caption = ' IRCM   '
          TabOrder = 3
          object Label81: TLabel
            Left = 17
            Top = 24
            Width = 65
            Height = 14
            Caption = 'Detonation:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label82: TLabel
            Left = 17
            Top = 51
            Width = 58
            Height = 14
            Caption = 'Detection:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbDetonationIRCM: TComboBox
            Left = 96
            Top = 20
            Width = 147
            Height = 22
            TabOrder = 0
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'No Response To Chaff'
              'On Chaff')
          end
          object cbbDetectionIRCM: TComboBox
            Left = 96
            Top = 47
            Width = 147
            Height = 22
            TabOrder = 1
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Chaff'
              'No Chaff')
          end
        end
        object grpTerminalGuidanceTARH: TGroupBox
          Left = 20
          Top = 164
          Width = 538
          Height = 109
          Caption = ' Emitter   '
          TabOrder = 4
          object lblFreqTerminalTARH: TLabel
            Left = 20
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
          object Label84: TLabel
            Left = 20
            Top = 51
            Width = 96
            Height = 14
            Caption = 'Pulse Repetition :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label85: TLabel
            Left = 195
            Top = 24
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label86: TLabel
            Left = 20
            Top = 78
            Width = 73
            Height = 14
            Caption = 'Pulse Width :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label87: TLabel
            Left = 300
            Top = 24
            Width = 63
            Height = 14
            Caption = 'Scan Rate :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label88: TLabel
            Left = 300
            Top = 51
            Width = 110
            Height = 14
            Caption = 'Transmitter Power :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label89: TLabel
            Left = 195
            Top = 51
            Width = 19
            Height = 14
            Caption = 'kHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label90: TLabel
            Left = 195
            Top = 78
            Width = 73
            Height = 14
            Caption = 'microseconds'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label91: TLabel
            Left = 475
            Top = 24
            Width = 44
            Height = 14
            Caption = 'deg/sec'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label92: TLabel
            Left = 475
            Top = 51
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
          object edtFreqTerminalTARH: TEdit
            Tag = 1
            Left = 139
            Top = 23
            Width = 50
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtPulseRepTerminalTARH: TEdit
            Tag = 3
            Left = 139
            Top = 47
            Width = 50
            Height = 22
            TabOrder = 1
            Text = '0.000'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtScanRateTerminalTARH: TEdit
            Tag = 1
            Left = 419
            Top = 20
            Width = 50
            Height = 22
            TabOrder = 3
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtTransmitterPowerTerminalTARH: TEdit
            Left = 419
            Top = 47
            Width = 50
            Height = 22
            TabOrder = 4
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtPulseWidthTerminalTARH: TEdit
            Tag = 2
            Left = 139
            Top = 75
            Width = 50
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox26: TGroupBox
          Left = 576
          Top = 62
          Width = 195
          Height = 82
          Caption = ' Received Frequency   '
          TabOrder = 5
          object Label93: TLabel
            Left = 14
            Top = 24
            Width = 70
            Height = 14
            Caption = 'Upper Limit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label94: TLabel
            Left = 158
            Top = 27
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label95: TLabel
            Left = 156
            Top = 51
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label96: TLabel
            Left = 14
            Top = 51
            Width = 71
            Height = 14
            Caption = 'Lower Limit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtUpperLimitReceivedFreqTARH: TEdit
            Tag = 1
            Left = 102
            Top = 20
            Width = 50
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtLowerLimitReceivedFreqTARH: TEdit
            Tag = 1
            Left = 102
            Top = 47
            Width = 50
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 768
          Height = 397
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 552
    Width = 816
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
    Width = 816
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 816
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
    Top = 547
    Width = 816
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 816
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
