object frmSummarySonar: TfrmSummarySonar
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Sonar'
  ClientHeight = 536
  ClientWidth = 654
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
    Width = 654
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblName: TLabel
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
      Width = 634
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
    Top = 65
    Width = 654
    Height = 428
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 634
      Height = 408
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      StyleElements = [seFont, seClient]
      object tsGeneral: TTabSheet
        Caption = 'General'
        object grpActiveDetectionCapabilities: TGroupBox
          Left = 15
          Top = 71
          Width = 597
          Height = 55
          Caption = ' Active Detection Capabilities   '
          TabOrder = 0
          object chkSurfaceDetecting: TCheckBox
            Left = 16
            Top = 26
            Width = 127
            Height = 17
            Caption = 'Surface Detecting'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object chkSubSurfaceDetecting: TCheckBox
            Left = 161
            Top = 26
            Width = 142
            Height = 17
            Caption = 'Subsurface Detecting'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
          object chkTorpedoDetecting: TCheckBox
            Left = 321
            Top = 26
            Width = 132
            Height = 17
            Caption = 'Torpedo Detecting'
            TabOrder = 2
            OnClick = CheckBoxDataClick
          end
          object chkMineDetecting: TCheckBox
            Left = 471
            Top = 26
            Width = 110
            Height = 17
            Caption = 'Mine Detecting'
            TabOrder = 3
            OnClick = CheckBoxDataClick
          end
        end
        object GroupBox1: TGroupBox
          Left = 15
          Top = 218
          Width = 170
          Height = 115
          Caption = ' Detection Range   '
          TabOrder = 1
          object lblPassiveDetectionRange: TLabel
            Left = 15
            Top = 55
            Width = 46
            Height = 14
            Caption = 'Passive :'
          end
          object lblActiveDetectionRange: TLabel
            Left = 15
            Top = 28
            Width = 42
            Height = 14
            Caption = 'Active :'
          end
          object lblMaxDetectionRange: TLabel
            Left = 17
            Top = 82
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object Label13: TLabel
            Left = 134
            Top = 82
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object Label4: TLabel
            Left = 134
            Top = 28
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object Label12: TLabel
            Left = 134
            Top = 55
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtMaxDetectionRange: TEdit
            Tag = 2
            Left = 85
            Top = 78
            Width = 45
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtActiveDetectionRange: TEdit
            Tag = 2
            Left = 85
            Top = 24
            Width = 45
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtPassiveDetectionRange: TEdit
            Tag = 2
            Left = 85
            Top = 51
            Width = 45
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 15
          Top = 131
          Width = 170
          Height = 80
          Caption = ' Frequency of Operation   '
          TabOrder = 2
          object lblPassiveFrequency: TLabel
            Left = 13
            Top = 52
            Width = 46
            Height = 14
            Caption = 'Passive :'
          end
          object lblActiveFrequency: TLabel
            Left = 13
            Top = 27
            Width = 42
            Height = 14
            Caption = 'Active :'
          end
          object Label37: TLabel
            Left = 112
            Top = 27
            Width = 19
            Height = 14
            Caption = 'kHz'
          end
          object Label39: TLabel
            Left = 112
            Top = 52
            Width = 19
            Height = 14
            Caption = 'kHz'
          end
          object edtActiveFrequency: TEdit
            Tag = 3
            Left = 68
            Top = 23
            Width = 41
            Height = 22
            TabOrder = 0
            Text = '0.000'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtPassiveFrequency: TEdit
            Tag = 3
            Left = 68
            Top = 48
            Width = 41
            Height = 22
            TabOrder = 1
            Text = '0.000'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox4: TGroupBox
          Left = 191
          Top = 132
          Width = 421
          Height = 202
          Caption = ' Other   '
          TabOrder = 3
          object Label15: TLabel
            Left = 388
            Top = 171
            Width = 14
            Height = 14
            Caption = 'dB'
          end
          object lblOwnshipNoiseDueSonarActiveMode: TLabel
            Left = 16
            Top = 171
            Width = 299
            Height = 14
            Caption = 'Ownship Noise Increase due to Sonar in Active Mode :'
          end
          object lblMaxSonarSpeed: TLabel
            Left = 16
            Top = 138
            Width = 132
            Height = 14
            Caption = 'Maximum Sonar Speed :'
          end
          object lblMaxOperatingDepth: TLabel
            Left = 16
            Top = 111
            Width = 154
            Height = 14
            Caption = 'Maximum Operating Depth :'
          end
          object lblActiveSonarPower: TLabel
            Left = 16
            Top = 84
            Width = 174
            Height = 14
            Caption = 'Active Sonar Operating Power :'
          end
          object lblSignalSourceLevel: TLabel
            Left = 16
            Top = 57
            Width = 175
            Height = 14
            Caption = 'Associated Signal Source Level :'
          end
          object lblCrossSection: TLabel
            Left = 16
            Top = 30
            Width = 143
            Height = 14
            Caption = 'Associated Cross-Section :'
          end
          object Label32: TLabel
            Left = 273
            Top = 57
            Width = 14
            Height = 14
            Caption = 'dB'
          end
          object Label36: TLabel
            Left = 273
            Top = 84
            Width = 18
            Height = 14
            Caption = 'kW'
          end
          object Label14: TLabel
            Left = 273
            Top = 111
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object Label40: TLabel
            Left = 273
            Top = 138
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object edtOwnshipNoiseDueSonarActiveMode: TEdit
            Tag = 1
            Left = 326
            Top = 168
            Width = 57
            Height = 22
            TabOrder = 5
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtCrossSection: TEdit
            Tag = 2
            Left = 211
            Top = 26
            Width = 57
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object cbbCrossSection: TComboBox
            Left = 274
            Top = 25
            Width = 56
            Height = 22
            Enabled = False
            TabOrder = 6
            Text = 'dB m'#178
            Items.Strings = (
              'dB m'#178)
          end
          object edtSignalSourceLevel: TEdit
            Tag = 1
            Left = 211
            Top = 53
            Width = 57
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtActiveSonarPower: TEdit
            Tag = 3
            Left = 211
            Top = 80
            Width = 57
            Height = 22
            TabOrder = 2
            Text = '0.000'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxOperatingDepth: TEdit
            Left = 211
            Top = 107
            Width = 57
            Height = 22
            TabOrder = 3
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxSonarSpeed: TEdit
            Tag = 2
            Left = 211
            Top = 134
            Width = 57
            Height = 22
            TabOrder = 4
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 15
          Top = 10
          Width = 597
          Height = 55
          TabOrder = 4
          object lblCategory: TLabel
            Left = 37
            Top = 24
            Width = 57
            Height = 14
            Caption = 'Category :'
          end
          object lblOperatingMode: TLabel
            Left = 332
            Top = 24
            Width = 96
            Height = 14
            Caption = 'Operating Mode :'
          end
          object cbbCategory: TComboBox
            Left = 105
            Top = 20
            Width = 108
            Height = 22
            TabOrder = 0
            Text = 'Variable Depth'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Hull-Mounted'
              'Variable Depth'
              'Towed Array'
              'Sonobuoy'
              'Dipping')
          end
          object cbbOperatingMode: TComboBox
            Left = 437
            Top = 20
            Width = 121
            Height = 22
            TabOrder = 1
            Text = 'Pasive Intercept'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Active'
              'Passive'
              'Active/Passive'
              'Passive Intercept')
          end
        end
      end
      object tsCharacteristic: TTabSheet
        Caption = 'Characteristics'
        ImageIndex = 1
        object txtSNRvsPODCurve: TLabel
          Left = 261
          Top = 120
          Width = 311
          Height = 14
          Caption = 'Signal-To-Noise Ration vs Probability of Detection Curve :'
        end
        object lblTimeToIdentifyTarget: TLabel
          Left = 261
          Top = 33
          Width = 190
          Height = 14
          Caption = 'Time Required to Identify Target :'
        end
        object lbl16: TLabel
          Left = 556
          Top = 33
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblCableLength: TLabel
          Left = 261
          Top = 59
          Width = 80
          Height = 14
          Caption = 'Cable Length :'
        end
        object lblCablePayoutRate: TLabel
          Left = 261
          Top = 86
          Width = 108
          Height = 14
          Caption = 'Cable Payout Rate :'
        end
        object lbl17: TLabel
          Left = 556
          Top = 59
          Width = 23
          Height = 14
          Caption = 'feet'
        end
        object lbl18: TLabel
          Left = 556
          Top = 84
          Width = 46
          Height = 14
          Caption = 'feet/sec'
        end
        object grpTimeIntervalofWatchSetting: TGroupBox
          Left = 19
          Top = 120
          Width = 214
          Height = 113
          Caption = ' Time Interval of Watch Setting  '
          TabOrder = 9
          object lblTimeIntervalWatchShort: TLabel
            Left = 13
            Top = 28
            Width = 76
            Height = 14
            Caption = 'Short Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl13: TLabel
            Left = 168
            Top = 28
            Width = 34
            Height = 14
            Caption = 'kyards'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTimeIntervalWatchMedium: TLabel
            Left = 13
            Top = 55
            Width = 88
            Height = 14
            Caption = 'Medium Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTimeIntervalWatchLong: TLabel
            Left = 13
            Top = 82
            Width = 73
            Height = 14
            Caption = 'Long Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl14: TLabel
            Left = 168
            Top = 55
            Width = 34
            Height = 14
            Caption = 'kyards'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl15: TLabel
            Left = 168
            Top = 82
            Width = 34
            Height = 14
            Caption = 'kyards'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtTimeIntervalWatchShort: TEdit
            Tag = 2
            Left = 108
            Top = 24
            Width = 57
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtTimeIntervalWatchMedium: TEdit
            Tag = 2
            Left = 108
            Top = 51
            Width = 57
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtTimeIntervalWatchLong: TEdit
            Tag = 2
            Left = 108
            Top = 78
            Width = 57
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtSNRvsPODCurve: TEdit
          Tag = 4
          Left = 261
          Top = 144
          Width = 318
          Height = 22
          TabOrder = 3
          Text = '(None)'
          OnChange = edtChange
        end
        object btnSNRvsPODCurve: TButton
          Left = 585
          Top = 145
          Width = 23
          Height = 20
          Caption = '...'
          TabOrder = 4
          OnClick = btnSNRvsPODCurveClick
        end
        object grpIntegrationPeriod: TGroupBox
          Left = 19
          Top = 20
          Width = 214
          Height = 84
          Caption = 'Integration Period'
          TabOrder = 10
          object lblIntegrationPeriodActive: TLabel
            Left = 21
            Top = 28
            Width = 42
            Height = 14
            Caption = 'Active :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblIntegrationPeriodPassive: TLabel
            Left = 21
            Top = 55
            Width = 46
            Height = 14
            Caption = 'Passive :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl11: TLabel
            Left = 144
            Top = 28
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl12: TLabel
            Left = 142
            Top = 55
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtIntegrationPeriodActive: TMaskEdit
            Left = 81
            Top = 24
            Width = 57
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnChange = edtChange
          end
          object medtIntegrationPeriodPassive: TMaskEdit
            Left = 81
            Top = 51
            Width = 57
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnChange = edtChange
          end
        end
        object edtCableLength: TEdit
          Left = 496
          Top = 55
          Width = 57
          Height = 22
          TabOrder = 1
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtCablePayoutRate: TEdit
          Tag = 2
          Left = 493
          Top = 83
          Width = 57
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object chkPassiveTargetInvestigation: TCheckBox
          Left = 261
          Top = 192
          Width = 175
          Height = 17
          Caption = 'Passive Target Investigation'
          TabOrder = 5
          OnClick = CheckBoxDataClick
        end
        object chkPassiveTMAInvestigating: TCheckBox
          Left = 261
          Top = 216
          Width = 164
          Height = 17
          Caption = 'Passive TMA Investigation'
          TabOrder = 6
          OnClick = CheckBoxDataClick
        end
        object chkDepthFinding: TCheckBox
          Left = 474
          Top = 192
          Width = 99
          Height = 17
          Caption = 'Depth Finding'
          TabOrder = 7
          OnClick = CheckBoxDataClick
        end
        object chkTracking: TCheckBox
          Left = 474
          Top = 215
          Width = 71
          Height = 17
          Caption = 'Tracking'
          TabOrder = 8
          OnClick = CheckBoxDataClick
        end
        object medtTimeToIdentifyTarget: TMaskEdit
          Left = 496
          Top = 29
          Width = 57
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 0
          Text = '  :  :  '
          OnChange = edtChange
        end
      end
      object tsTowedArray: TTabSheet
        Caption = 'Towed Array'
        ImageIndex = 2
        object lblMinTowSpeed: TLabel
          Left = 31
          Top = 121
          Width = 123
          Height = 14
          Caption = 'Minimum Tow Speed :'
        end
        object lbl21: TLabel
          Left = 327
          Top = 121
          Width = 30
          Height = 14
          Caption = 'knots'
        end
        object lbl22: TLabel
          Left = 327
          Top = 148
          Width = 23
          Height = 14
          Caption = 'feet'
        end
        object lbl23: TLabel
          Left = 327
          Top = 176
          Width = 21
          Height = 14
          Caption = 'deg'
        end
        object lbl24: TLabel
          Left = 327
          Top = 201
          Width = 21
          Height = 14
          Caption = 'deg'
        end
        object lblMinDepth: TLabel
          Left = 31
          Top = 148
          Width = 93
          Height = 14
          Caption = 'Minimum Depth :'
        end
        object lblMaxBearingError: TLabel
          Left = 31
          Top = 174
          Width = 187
          Height = 14
          Caption = 'Maximum Bearing Reported Error :'
        end
        object lblAverageBeamWidth: TLabel
          Left = 31
          Top = 201
          Width = 124
          Height = 14
          Caption = 'Average Beam Width :'
        end
        object grpKinking: TGroupBox
          Left = 15
          Top = 24
          Width = 381
          Height = 79
          Enabled = False
          TabOrder = 0
          object lblArrayKinkingTurnRate: TLabel
            Left = 16
            Top = 20
            Width = 140
            Height = 14
            Caption = 'Turn Rate To Kink Array :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblArrayKinkingSettleTime: TLabel
            Left = 16
            Top = 47
            Width = 212
            Height = 14
            Caption = 'Time Required to Settle Kinked Array :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl19: TLabel
            Left = 307
            Top = 20
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
          object lbl20: TLabel
            Left = 307
            Top = 47
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtArrayKinkingTurnRate: TEdit
            Tag = 1
            Left = 242
            Top = 16
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object medtArrayKinkingSettleTime: TMaskEdit
            Left = 242
            Top = 44
            Width = 59
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnClick = edtChange
          end
        end
        object chkArrayKinking: TCheckBox
          Left = 24
          Top = 16
          Width = 94
          Height = 17
          Caption = 'Array Kinking'
          TabOrder = 1
          OnClick = chkArrayKinkingClick
        end
        object edtMinTowSpeed: TEdit
          Tag = 2
          Left = 262
          Top = 117
          Width = 59
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMinDepth: TEdit
          Left = 262
          Top = 145
          Width = 59
          Height = 22
          TabOrder = 3
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxBearingError: TEdit
          Left = 262
          Top = 172
          Width = 59
          Height = 22
          TabOrder = 4
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtAverageBeamWidth: TEdit
          Left = 262
          Top = 199
          Width = 59
          Height = 22
          TabOrder = 5
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object chkBearingAmbiguity: TCheckBox
          Left = 31
          Top = 236
          Width = 187
          Height = 17
          Caption = 'Bearing Ambiguity Processing'
          TabOrder = 6
          OnClick = CheckBoxDataClick
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 3
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 606
          Height = 348
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
    Top = 493
    Width = 654
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 489
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 569
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 409
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
