object frmGameDefaultSummary: TfrmGameDefaultSummary
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Game Defaults'
  ClientHeight = 643
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Name  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 11
      Top = 25
      Width = 848
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNameKeyPress
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 56
    Width = 869
    Height = 544
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 61
    ExplicitHeight = 534
    object pgcData: TPageControl
      Left = 10
      Top = 10
      Width = 849
      Height = 524
      ActivePage = tsUnderWater
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabHeight = 30
      TabOrder = 0
      TabWidth = 110
      ExplicitHeight = 514
      object tsAboveWater: TTabSheet
        Caption = 'Above Water'
        object grpRadarEffect: TGroupBox
          Left = 11
          Top = 3
          Width = 158
          Height = 126
          Caption = ' Edit Radar Effects  '
          TabOrder = 0
          object btnEditRadarCloudCover: TButton
            Tag = 1
            Left = 26
            Top = 51
            Width = 105
            Height = 25
            Caption = 'Cloud Cover..'
            TabOrder = 0
            OnClick = DisplayEffectTable
          end
          object btnEditRadarSeaState: TButton
            Tag = 2
            Left = 26
            Top = 82
            Width = 105
            Height = 25
            Caption = 'Sea State..'
            TabOrder = 1
            OnClick = DisplayEffectTable
          end
          object btnEditRadarRainfallRate: TButton
            Left = 26
            Top = 20
            Width = 105
            Height = 25
            Caption = 'Rainfall Rate..'
            TabOrder = 2
            OnClick = DisplayEffectTable
          end
        end
        object grpESMEffect: TGroupBox
          Left = 181
          Top = 3
          Width = 158
          Height = 126
          Caption = ' Edit ESM Effects  '
          TabOrder = 1
          object btnEditESMCloudCover: TButton
            Tag = 4
            Left = 26
            Top = 51
            Width = 105
            Height = 25
            Caption = 'Cloud Cover..'
            TabOrder = 0
            OnClick = DisplayEffectTable
          end
          object btnEditESMRainfallRate: TButton
            Tag = 3
            Left = 26
            Top = 20
            Width = 105
            Height = 25
            Caption = 'Rainfall Rate..'
            TabOrder = 1
            OnClick = DisplayEffectTable
          end
        end
        object grpVisualEOFactor: TGroupBox
          Left = 11
          Top = 135
          Width = 497
          Height = 122
          Caption = ' Visual/Electro-Optical Factors  '
          TabOrder = 2
          object lblDetection: TLabel
            Left = 8
            Top = 23
            Width = 58
            Height = 14
            Caption = 'Detection:'
          end
          object lblIdentification: TLabel
            Left = 8
            Top = 64
            Width = 79
            Height = 14
            Caption = 'Identification :'
          end
          object lbl1: TLabel
            Left = 91
            Top = 97
            Width = 19
            Height = 14
            Caption = '0%'
          end
          object lbl2: TLabel
            Left = 392
            Top = 97
            Width = 33
            Height = 14
            Caption = '100%'
          end
          object trckbrIdentification: TTrackBar
            Left = 91
            Top = 53
            Width = 330
            Height = 38
            Max = 100
            Frequency = 25
            TabOrder = 0
            OnChange = trckbrIdentificationChange
          end
          object trckbrDetection: TTrackBar
            Left = 88
            Top = 20
            Width = 330
            Height = 38
            Max = 100
            Frequency = 25
            TabOrder = 1
            OnChange = trckbrDetectionChange
          end
          object edtIdentification: TEdit
            Left = 423
            Top = 61
            Width = 56
            Height = 22
            TabOrder = 2
            Text = '0'
            OnKeyPress = edtIdentificationKeyPress
          end
          object edtDetection: TEdit
            Left = 423
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 3
            Text = '0'
            OnKeyPress = edtDetectionKeyPress
          end
        end
        object grpVisualDetector: TGroupBox
          Left = 514
          Top = 15
          Width = 245
          Height = 105
          Caption = ' Visual Detector  '
          TabOrder = 3
          object lblVisualDetectRange: TLabel
            Left = 8
            Top = 23
            Width = 96
            Height = 14
            Caption = 'Detection Range:'
          end
          object lblVisualCrossSection: TLabel
            Left = 8
            Top = 50
            Width = 139
            Height = 14
            Caption = 'Associated Cross-Section:'
          end
          object lblVisualMaxRange: TLabel
            Left = 8
            Top = 77
            Width = 92
            Height = 14
            Caption = 'Maximum Range:'
          end
          object lbl3: TLabel
            Left = 195
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl4: TLabel
            Left = 195
            Top = 50
            Width = 38
            Height = 14
            Caption = 'metres'
          end
          object lbl5: TLabel
            Left = 195
            Top = 77
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtVisualCrossSection: TEdit
            Tag = 1
            Left = 133
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnKeyPress = edtVisualCrossSectionKeyPress
          end
          object edtVisualDetectRange: TEdit
            Tag = 2
            Left = 133
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtVisualDetectRangeKeyPress
          end
          object edtVisualMaxRange: TEdit
            Tag = 2
            Left = 133
            Top = 74
            Width = 56
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnKeyPress = edtVisualMaxRangeKeyPress
          end
        end
        object grpChaff: TGroupBox
          Left = 514
          Top = 140
          Width = 245
          Height = 105
          Caption = ' Chaff  '
          TabOrder = 4
          object lblChaffAltitudeThreshold: TLabel
            Left = 8
            Top = 23
            Width = 105
            Height = 14
            Caption = 'Altitude Threshold:'
          end
          object lblSeductionBloomAltitude: TLabel
            Left = 8
            Top = 50
            Width = 143
            Height = 14
            Caption = 'Seduction Bloom Altitude:'
          end
          object lblSeductionBloomRange: TLabel
            Left = 8
            Top = 77
            Width = 134
            Height = 14
            Caption = 'Seduction Bloom Range:'
          end
          object lbl6: TLabel
            Left = 195
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object lbl7: TLabel
            Left = 195
            Top = 50
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object lbl8: TLabel
            Left = 195
            Top = 77
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtSeductionBloomAltitude: TEdit
            Left = 133
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0'
            OnKeyPress = edtSeductionBloomAltitudeKeyPress
          end
          object edtChaffAltitudeThreshold: TEdit
            Left = 133
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0'
            OnKeyPress = edtChaffAltitudeThresholdKeyPress
          end
          object edtSeductionBloomRange: TEdit
            Tag = 2
            Left = 133
            Top = 74
            Width = 56
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnKeyPress = edtSeductionBloomRangeKeyPress
          end
        end
        object grpAutoGun: TGroupBox
          Left = 11
          Top = 263
          Width = 497
          Height = 51
          Caption = ' Auto Gun  '
          TabOrder = 5
          object lblAutoGunInterceptRange: TLabel
            Left = 8
            Top = 21
            Width = 110
            Height = 14
            Caption = 'Interception Range:'
          end
          object lbl9: TLabel
            Left = 195
            Top = 22
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblAutoGunThresholdSpeed: TLabel
            Left = 260
            Top = 21
            Width = 97
            Height = 14
            Caption = 'Threshold Speed:'
          end
          object lbl10: TLabel
            Left = 447
            Top = 22
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object edtAutoGunInterceptRange: TEdit
            Tag = 2
            Left = 133
            Top = 18
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtAutoGunInterceptRangeKeyPress
          end
          object edtAutoGunThresholdSpeed: TEdit
            Tag = 2
            Left = 385
            Top = 18
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtAutoGunThresholdSpeedKeyPress
          end
        end
        object grpMissile: TGroupBox
          Left = 11
          Top = 327
          Width = 515
          Height = 128
          Caption = ' Missile  '
          TabOrder = 6
          object lblMissileReacquisition: TLabel
            Left = 8
            Top = 23
            Width = 105
            Height = 14
            Caption = 'Reacquisition Time:'
          end
          object lblMissileHAFOMinRange: TLabel
            Left = 8
            Top = 50
            Width = 207
            Height = 14
            Caption = 'High Altitude Fly Out Minimum Range:'
          end
          object lblMissileHAFOMaxRange: TLabel
            Left = 8
            Top = 77
            Width = 210
            Height = 14
            Caption = 'High Altitude Fly Out Maximum Range:'
          end
          object lbl11: TLabel
            Left = 447
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl12: TLabel
            Left = 447
            Top = 50
            Width = 28
            Height = 14
            Caption = 'yards'
          end
          object lbl13: TLabel
            Left = 447
            Top = 77
            Width = 28
            Height = 14
            Caption = 'yards'
          end
          object lblMissileSeaStatePeriodCheck: TLabel
            Left = 8
            Top = 104
            Width = 128
            Height = 14
            Caption = 'Sea State Periodcheck:'
          end
          object lbl14: TLabel
            Left = 447
            Top = 104
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object edtMissileHAFOMinRange: TEdit
            Left = 385
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0'
            OnKeyPress = edtMissileHAFOMinRangeKeyPress
          end
          object edtMissileHAFOMaxRange: TEdit
            Left = 385
            Top = 74
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0'
            OnKeyPress = edtMissileHAFOMaxRangeKeyPress
          end
          object medtMissileReacquisition: TMaskEdit
            Left = 385
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnKeyPress = medtMissileReacquisitionKeyPress
          end
          object medtMissileSeaStatePeriodCheck: TMaskEdit
            Left = 385
            Top = 101
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 3
            Text = '  :  :  '
            OnKeyPress = medtMissileSeaStatePeriodCheckKeyPress
          end
        end
        object grpDefensiveJammer: TGroupBox
          Left = 11
          Top = 565
          Width = 497
          Height = 51
          Caption = 'Defensive Jammer'
          TabOrder = 7
          object lblBreakLockIntervalTime: TLabel
            Left = 8
            Top = 23
            Width = 139
            Height = 14
            Caption = 'Break Lock Interval Time:'
          end
          object lbl15: TLabel
            Left = 447
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtBreakLockIntervalTime: TMaskEdit
            Left = 385
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnKeyPress = medtBreakLockIntervalTimeKeyPress
          end
        end
        object grpMissileEffect: TGroupBox
          Left = 350
          Top = 3
          Width = 158
          Height = 126
          Caption = ' Edit Missile Effects  '
          TabOrder = 8
          object btnEditMissileSeaState: TButton
            Tag = 6
            Left = 26
            Top = 82
            Width = 105
            Height = 25
            Caption = 'Sea State..'
            TabOrder = 0
            OnClick = DisplayEffectTable
          end
          object btnEditMissileRainfallRate: TButton
            Tag = 5
            Left = 26
            Top = 20
            Width = 105
            Height = 25
            Caption = 'Rainfall Rate..'
            TabOrder = 1
            OnClick = DisplayEffectTable
          end
        end
      end
      object tsUnderWater: TTabSheet
        Caption = 'Under Water'
        ImageIndex = 1
        ExplicitHeight = 474
        object lblSonobuoy: TLabel
          Left = 183
          Top = 3
          Width = 59
          Height = 14
          Caption = 'Sonobuoy:'
        end
        object lblSonar: TLabel
          Left = 11
          Top = 192
          Width = 35
          Height = 14
          Caption = 'Sonar:'
        end
        object grpAmbientNoiseEffect: TGroupBox
          Left = 11
          Top = 3
          Width = 158
          Height = 126
          Caption = ' Edit Ambient Noise Effects  '
          TabOrder = 0
          object btnEditSonarShipingNoise: TButton
            Tag = 8
            Left = 25
            Top = 51
            Width = 105
            Height = 25
            Caption = 'Shipping Noise..'
            TabOrder = 0
            OnClick = DisplayEffectTable
          end
          object btnEditSonarSeaState: TButton
            Tag = 9
            Left = 25
            Top = 82
            Width = 105
            Height = 25
            Caption = 'Sea State..'
            TabOrder = 1
            OnClick = DisplayEffectTable
          end
          object btnEditSonarRainfallRate: TButton
            Tag = 7
            Left = 25
            Top = 20
            Width = 105
            Height = 25
            Caption = 'Rainfall Rate ..'
            TabOrder = 2
            OnClick = DisplayEffectTable
          end
        end
        object grpAreaOfProbability: TGroupBox
          Left = 175
          Top = 22
          Width = 351
          Height = 107
          Caption = ' Area of Probability  '
          TabOrder = 1
          object lblSonobuoyInitialRadiusDelay: TLabel
            Left = 8
            Top = 24
            Width = 103
            Height = 14
            Caption = 'Initial Radius Delay:'
          end
          object lblProbabilityDecreaseRate: TLabel
            Left = 8
            Top = 50
            Width = 121
            Height = 14
            Caption = 'Radius Decrease Rate:'
          end
          object lblProbabilityModifier: TLabel
            Left = 8
            Top = 76
            Width = 116
            Height = 14
            Caption = 'Initial Radius Modifier:'
          end
          object lbl16: TLabel
            Left = 283
            Top = 24
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl17: TLabel
            Left = 283
            Top = 50
            Width = 41
            Height = 14
            Caption = 'nm/min'
          end
          object edtProbabilityDecreaseRate: TEdit
            Tag = 2
            Left = 221
            Top = 46
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtProbabilityDecreaseRateKeyPress
          end
          object edtProbabilityModifier: TEdit
            Left = 221
            Top = 72
            Width = 56
            Height = 22
            TabOrder = 1
            OnKeyPress = edtProbabilityModifierKeyPress
          end
          object medtSonobuoyInitialRadiusDelay: TMaskEdit
            Left = 221
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnKeyPress = medtSonobuoyInitialRadiusDelayKeyPress
          end
        end
        object grpMine: TGroupBox
          Left = 11
          Top = 135
          Width = 515
          Height = 51
          Caption = ' Mine  '
          TabOrder = 2
          object lblMineTimeIntervalPODChecks: TLabel
            Left = 8
            Top = 23
            Width = 161
            Height = 14
            Caption = 'Time Interval of POD Checks:'
          end
          object lbl18: TLabel
            Left = 447
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtMineTimeIntervalPODChecks: TMaskEdit
            Left = 385
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnKeyPress = medtMineTimeIntervalPODChecksKeyPress
          end
        end
        object grpTMA: TGroupBox
          Left = 11
          Top = 211
          Width = 497
          Height = 161
          Caption = ' TMA  '
          TabOrder = 3
          object lblSonarTMASeduction: TLabel
            Left = 8
            Top = 23
            Width = 197
            Height = 14
            Caption = 'Passive TMA Range Seduction Rate:'
          end
          object lblSonarTMABearing: TLabel
            Left = 8
            Top = 50
            Width = 193
            Height = 14
            Caption = 'TMA Relative Bearing Rate Change:'
          end
          object lblSonarTMAMaxCourseError: TLabel
            Left = 8
            Top = 77
            Width = 180
            Height = 14
            Caption = 'Maximum Reported Course Error:'
          end
          object lbl19: TLabel
            Left = 447
            Top = 23
            Width = 41
            Height = 14
            Caption = 'nm/min'
          end
          object lbl20: TLabel
            Left = 447
            Top = 50
            Width = 44
            Height = 14
            Caption = 'deg/sec'
          end
          object lbl21: TLabel
            Left = 447
            Top = 77
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object lblSonarTMAMaxSpeedError: TLabel
            Left = 8
            Top = 104
            Width = 178
            Height = 14
            Caption = 'Maximum Reported Speed Error:'
          end
          object lbl22: TLabel
            Left = 191
            Top = 137
            Width = 19
            Height = 14
            Caption = '0%'
          end
          object lbl23: TLabel
            Left = 353
            Top = 137
            Width = 33
            Height = 14
            Caption = '100%'
          end
          object edtSonarTMABearing: TEdit
            Tag = 1
            Left = 385
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnKeyPress = edtSonarTMABearingKeyPress
          end
          object edtSonarTMASeduction: TEdit
            Tag = 2
            Left = 385
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtSonarTMASeductionKeyPress
          end
          object edtSonarTMAMaxCourseError: TEdit
            Left = 385
            Top = 74
            Width = 56
            Height = 22
            TabOrder = 2
            Text = '0'
            OnKeyPress = edtSonarTMAMaxCourseErrorKeyPress
          end
          object trckbrSonarTMAMaxSpeedError: TTrackBar
            Left = 188
            Top = 101
            Width = 191
            Height = 30
            Max = 100
            Frequency = 25
            TabOrder = 3
            OnChange = trckbrSonarTMAMaxSpeedErrorChange
          end
          object edtSonarTMAMaxSpeedError: TEdit
            Left = 385
            Top = 101
            Width = 56
            Height = 22
            TabOrder = 4
            Text = '0'
            OnKeyPress = edtSonarTMAMaxSpeedErrorKeyPress
          end
        end
      end
      object tsTrack: TTabSheet
        Caption = 'Tracks'
        ImageIndex = 2
        object lblClutterReduction: TLabel
          Left = 11
          Top = 380
          Width = 202
          Height = 14
          Caption = 'Task Group Clutter Reduction Scale :'
        end
        object lbl41: TLabel
          Left = 458
          Top = 380
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object grpTimeStaleTrackLostContact: TGroupBox
          Left = 11
          Top = 3
          Width = 254
          Height = 166
          Caption = ' Time to Make Stale Track a Lost Contact  '
          TabOrder = 0
          object lbl24: TLabel
            Left = 195
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl25: TLabel
            Left = 195
            Top = 50
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl27: TLabel
            Left = 195
            Top = 104
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl26: TLabel
            Left = 195
            Top = 77
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl28: TLabel
            Left = 195
            Top = 131
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lblTimeStaleTrackLostContactAir: TLabel
            Left = 8
            Top = 23
            Width = 18
            Height = 14
            Caption = 'Air:'
          end
          object lblTimeStaleTrackLostContactSurface: TLabel
            Left = 8
            Top = 50
            Width = 45
            Height = 14
            Caption = 'Surface:'
          end
          object lblTimeStaleTrackLostContactSubsurface: TLabel
            Left = 8
            Top = 77
            Width = 64
            Height = 14
            Caption = 'Subsurface:'
          end
          object lblTimeStaleTrackLostContactESM: TLabel
            Left = 8
            Top = 104
            Width = 97
            Height = 14
            Caption = 'ESM Bearing Line:'
          end
          object lblTimeStaleTrackLostContactSonar: TLabel
            Left = 8
            Top = 131
            Width = 105
            Height = 14
            Caption = 'Sonar Bearing Line:'
          end
          object medtTimeStaleTrackLostContactAir: TMaskEdit
            Left = 133
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnKeyPress = medtTimeStaleTrackLostContactAirKeyPress
          end
          object medtTimeStaleTrackLostContactSurface: TMaskEdit
            Left = 133
            Top = 47
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnKeyPress = medtTimeStaleTrackLostContactSurfaceKeyPress
          end
          object medtTimeStaleTrackLostContactSubsurface: TMaskEdit
            Left = 133
            Top = 74
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnKeyPress = medtTimeStaleTrackLostContactSubsurfaceKeyPress
          end
          object medtTimeStaleTrackLostContactESM: TMaskEdit
            Left = 133
            Top = 101
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 3
            Text = '  :  :  '
            OnKeyPress = medtTimeStaleTrackLostContactESMKeyPress
          end
          object medtTimeStaleTrackLostContactSonar: TMaskEdit
            Left = 133
            Top = 128
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 4
            Text = '  :  :  '
            OnKeyPress = medtTimeStaleTrackLostContactSonarKeyPress
          end
        end
        object grpTimeRemoveStaleTrack: TGroupBox
          Left = 271
          Top = 3
          Width = 263
          Height = 166
          Caption = ' Time to Remove Stale Track  '
          TabOrder = 1
          object lblTimeRemoveStaleTrackAir: TLabel
            Left = 8
            Top = 23
            Width = 18
            Height = 14
            Caption = 'Air:'
          end
          object lblTimeRemoveStaleTrackSurface: TLabel
            Left = 8
            Top = 50
            Width = 45
            Height = 14
            Caption = 'Surface:'
          end
          object lblTimeRemoveStaleTrackSubsurface: TLabel
            Left = 8
            Top = 77
            Width = 64
            Height = 14
            Caption = 'Subsurface:'
          end
          object lbl29: TLabel
            Left = 195
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl30: TLabel
            Left = 195
            Top = 50
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lblTimeRemoveStaleTrackESM: TLabel
            Left = 8
            Top = 104
            Width = 97
            Height = 14
            Caption = 'ESM Bearing Line:'
          end
          object lblTimeRemoveStaleTrackSonar: TLabel
            Left = 8
            Top = 131
            Width = 105
            Height = 14
            Caption = 'Sonar Bearing Line:'
          end
          object lbl32: TLabel
            Left = 195
            Top = 104
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl31: TLabel
            Left = 195
            Top = 77
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl33: TLabel
            Left = 195
            Top = 131
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtTimeRemoveStaleTrackAir: TMaskEdit
            Left = 133
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnKeyPress = medtTimeRemoveStaleTrackAirKeyPress
          end
          object medtTimeRemoveStaleTrackSurface: TMaskEdit
            Left = 133
            Top = 47
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnKeyPress = medtTimeRemoveStaleTrackSurfaceKeyPress
          end
          object medtTimeRemoveStaleTrackSubsurface: TMaskEdit
            Left = 133
            Top = 74
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnKeyPress = medtTimeRemoveStaleTrackSubsurfaceKeyPress
          end
          object medtTimeRemoveStaleTrackESM: TMaskEdit
            Left = 133
            Top = 101
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 3
            Text = '  :  :  '
            OnKeyPress = medtTimeRemoveStaleTrackESMKeyPress
          end
          object medtTimeRemoveStaleTrackSonar: TMaskEdit
            Left = 133
            Top = 128
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 4
            Text = '  :  :  '
            OnKeyPress = medtTimeRemoveStaleTrackSonarKeyPress
          end
        end
        object grpTrackHistorySampleRate: TGroupBox
          Left = 11
          Top = 175
          Width = 245
          Height = 81
          Caption = ' Track History Sample Rate  '
          TabOrder = 2
          object lblSampleRateAir: TLabel
            Left = 8
            Top = 23
            Width = 72
            Height = 14
            Caption = 'Air Platforms:'
          end
          object lblSampleRateSurface: TLabel
            Left = 8
            Top = 50
            Width = 103
            Height = 14
            Caption = 'Surface  Platforms:'
          end
          object lbl34: TLabel
            Left = 195
            Top = 23
            Width = 44
            Height = 14
            Caption = 'seconds'
          end
          object lbl35: TLabel
            Left = 195
            Top = 50
            Width = 44
            Height = 14
            Caption = 'seconds'
          end
          object edtSampleRateSurface: TEdit
            Left = 133
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0'
            OnKeyPress = edtSampleRateSurfaceKeyPress
          end
          object edtSampleRateAir: TEdit
            Left = 133
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0'
            OnKeyPress = edtSampleRateAirKeyPress
          end
        end
        object grpTrackHistoryMaxNumOfPoint: TGroupBox
          Left = 263
          Top = 175
          Width = 245
          Height = 81
          Caption = ' Track History Maximum Number of Points  '
          TabOrder = 3
          object lblMaxNumAir: TLabel
            Left = 8
            Top = 23
            Width = 72
            Height = 14
            Caption = 'Air Platforms:'
          end
          object lblMaxNumSurface: TLabel
            Left = 8
            Top = 50
            Width = 103
            Height = 14
            Caption = 'Surface  Platforms:'
          end
          object lbl36: TLabel
            Left = 195
            Top = 23
            Width = 33
            Height = 14
            Caption = 'points'
          end
          object lbl37: TLabel
            Left = 195
            Top = 50
            Width = 33
            Height = 14
            Caption = 'points'
          end
          object edtMaxNumSurface: TEdit
            Left = 133
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0'
            OnKeyPress = edtMaxNumSurfaceKeyPress
          end
          object edtMaxNumAir: TEdit
            Left = 133
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0'
            OnKeyPress = edtMaxNumAirKeyPress
          end
        end
        object grpStraightLineGuidanceReversionTime: TGroupBox
          Left = 11
          Top = 262
          Width = 523
          Height = 109
          Caption = ' Straight Line Guidance Reversion Time  '
          TabOrder = 4
          object lblReversionTimeEngagement: TLabel
            Left = 8
            Top = 20
            Width = 135
            Height = 14
            Caption = 'Engangement Guidance:'
          end
          object lblReversionTimeOutrun: TLabel
            Left = 8
            Top = 48
            Width = 97
            Height = 14
            Caption = 'Outrun Guidance:'
          end
          object lblReversionTimeShadow: TLabel
            Left = 8
            Top = 76
            Width = 102
            Height = 14
            Caption = 'Shadow Guidance:'
          end
          object lbl38: TLabel
            Left = 447
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl39: TLabel
            Left = 447
            Top = 50
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl40: TLabel
            Left = 447
            Top = 77
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtReversionTimeEngagement: TMaskEdit
            Left = 385
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnKeyPress = medtReversionTimeEngagementKeyPress
          end
          object medtReversionTimeOutrun: TMaskEdit
            Left = 385
            Top = 47
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnKeyPress = medtReversionTimeOutrunKeyPress
          end
          object medtReversionTimeShadow: TMaskEdit
            Left = 385
            Top = 74
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnKeyPress = medtReversionTimeShadowKeyPress
          end
        end
        object edtClutterReduction: TEdit
          Tag = 2
          Left = 396
          Top = 377
          Width = 56
          Height = 22
          TabOrder = 5
          Text = '0.00'
          OnKeyPress = edtClutterReductionKeyPress
        end
      end
      object tsGuidance: TTabSheet
        Caption = 'Guidance'
        ImageIndex = 3
        object lblZigZagPredefinedLegs: TLabel
          Left = 11
          Top = 90
          Width = 132
          Height = 14
          Caption = 'Zig Zag Predefined Legs'
        end
        object grpSinuation: TGroupBox
          Left = 11
          Top = 3
          Width = 176
          Height = 81
          Caption = ' Sinuation  '
          TabOrder = 0
          object lblSinuationPeriod: TLabel
            Left = 8
            Top = 23
            Width = 38
            Height = 14
            Caption = 'Period:'
          end
          object lblSinuationAmplitude: TLabel
            Left = 8
            Top = 50
            Width = 59
            Height = 14
            Caption = 'Amplitude:'
          end
          object lbl42: TLabel
            Left = 142
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl43: TLabel
            Left = 142
            Top = 50
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtSinuationAmplitude: TEdit
            Tag = 2
            Left = 80
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtSinuationAmplitudeKeyPress
          end
          object edtSinuationPeriod: TEdit
            Tag = 2
            Left = 80
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtSinuationPeriodKeyPress
          end
        end
        object grpZigZagShort: TGroupBox
          Left = 12
          Top = 109
          Width = 169
          Height = 81
          Caption = ' Short  '
          TabOrder = 1
          object lblZigZagShortPeriod: TLabel
            Left = 8
            Top = 23
            Width = 38
            Height = 14
            Caption = 'Period:'
          end
          object lblZigZagShortAmplitude: TLabel
            Left = 8
            Top = 50
            Width = 59
            Height = 14
            Caption = 'Amplitude:'
          end
          object lbl44: TLabel
            Left = 142
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl45: TLabel
            Left = 142
            Top = 50
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtZigZagShortAmplitude: TEdit
            Tag = 2
            Left = 80
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtZigZagShortAmplitudeKeyPress
          end
          object edtZigZagShortPeriod: TEdit
            Tag = 2
            Left = 80
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtZigZagShortPeriodKeyPress
          end
        end
        object grpZigZagLong: TGroupBox
          Left = 187
          Top = 109
          Width = 170
          Height = 81
          Caption = ' Long  '
          TabOrder = 2
          object lblZigZagLongPeriod: TLabel
            Left = 8
            Top = 23
            Width = 38
            Height = 14
            Caption = 'Period:'
          end
          object lblZigZagLongAmplitude: TLabel
            Left = 8
            Top = 50
            Width = 59
            Height = 14
            Caption = 'Amplitude:'
          end
          object lbl46: TLabel
            Left = 142
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl47: TLabel
            Left = 142
            Top = 50
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtZigZagLongAmplitude: TEdit
            Tag = 2
            Left = 80
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtZigZagLongAmplitudeKeyPress
          end
          object edtZigZagLongPeriod: TEdit
            Tag = 2
            Left = 80
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtZigZagLongPeriodKeyPress
          end
        end
        object grpZigZagVeryLong: TGroupBox
          Left = 363
          Top = 109
          Width = 166
          Height = 81
          Caption = ' Very Long  '
          TabOrder = 3
          object lblZigZagVeryLongPeriod: TLabel
            Left = 8
            Top = 23
            Width = 38
            Height = 14
            Caption = 'Period:'
          end
          object lblZigZagVeryLongAmplitude: TLabel
            Left = 8
            Top = 50
            Width = 59
            Height = 14
            Caption = 'Amplitude:'
          end
          object lbl48: TLabel
            Left = 142
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl49: TLabel
            Left = 142
            Top = 50
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtZigZagVeryLongAmplitude: TEdit
            Tag = 2
            Left = 80
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtZigZagVeryLongAmplitudeKeyPress
          end
          object edtZigZagVeryLongPeriod: TEdit
            Tag = 2
            Left = 80
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtZigZagVeryLongPeriodKeyPress
          end
        end
      end
      object tsESMIFF: TTabSheet
        Caption = 'ESM/IFF'
        ImageIndex = 4
        object lblESMBearingErrorRate: TLabel
          Left = 11
          Top = 90
          Width = 190
          Height = 14
          Caption = 'ESM Bearing Error Correction Rate:'
        end
        object lbl52: TLabel
          Left = 340
          Top = 90
          Width = 21
          Height = 14
          Caption = 'deg'
        end
        object lblMaxIFFRange: TLabel
          Left = 11
          Top = 117
          Width = 112
          Height = 14
          Caption = 'Maximum IFF Range:'
        end
        object lbl53: TLabel
          Left = 340
          Top = 117
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object grpDetectionModelling: TGroupBox
          Left = 11
          Top = 3
          Width = 497
          Height = 78
          Caption = ' Detection Modelling  '
          TabOrder = 0
          object lblDetectionHF: TLabel
            Left = 8
            Top = 23
            Width = 257
            Height = 14
            Caption = 'HF Band Datalink/MHS Transmission Frequency:'
          end
          object lbl50: TLabel
            Left = 329
            Top = 23
            Width = 21
            Height = 14
            Caption = 'Mhz'
          end
          object lblDetectionUHF: TLabel
            Left = 8
            Top = 50
            Width = 265
            Height = 14
            Caption = 'UHF Band Datalink/MHS Transmission Frequency:'
          end
          object lbl51: TLabel
            Left = 329
            Top = 50
            Width = 21
            Height = 14
            Caption = 'Mhz'
          end
          object edtDetectionUHF: TEdit
            Tag = 1
            Left = 267
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnKeyPress = edtDetectionUHFKeyPress
          end
          object edtDetectionHF: TEdit
            Tag = 1
            Left = 267
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnKeyPress = edtDetectionHFKeyPress
          end
        end
        object edtESMBearingErrorRate: TEdit
          Left = 278
          Top = 87
          Width = 56
          Height = 22
          TabOrder = 1
          Text = '0'
          OnKeyPress = edtESMBearingErrorRateKeyPress
        end
        object edtMaxIFFRange: TEdit
          Tag = 2
          Left = 278
          Top = 114
          Width = 56
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnKeyPress = edtMaxIFFRangeKeyPress
        end
        object grpIFFModesOrCodes: TGroupBox
          Left = 11
          Top = 141
          Width = 497
          Height = 61
          Caption = ' IFF Modes/Codes  '
          TabOrder = 3
          object btnEditIFFModesOrCodes: TButton
            Left = 176
            Top = 16
            Width = 145
            Height = 34
            Caption = 'Edit'
            TabOrder = 0
            OnClick = btnEditIFFModesOrCodesClick
          end
        end
      end
      object tsAllocatioinMax: TTabSheet
        Caption = 'Allocation Max'
        ImageIndex = 5
        object lblMaxRadarClass: TLabel
          Left = 11
          Top = 13
          Width = 63
          Height = 14
          Caption = 'Radar Class:'
        end
        object lblMaxSonarClass: TLabel
          Left = 11
          Top = 40
          Width = 64
          Height = 14
          Caption = 'Sonar Class:'
        end
        object lblMaxSonobuoyClass: TLabel
          Left = 11
          Top = 67
          Width = 88
          Height = 14
          Caption = 'Sonobuoy Class:'
        end
        object lblMaxEOClass: TLabel
          Left = 11
          Top = 94
          Width = 165
          Height = 14
          Caption = 'Electro Optical Detector Class:'
        end
        object lblMaxESMClass: TLabel
          Left = 11
          Top = 121
          Width = 188
          Height = 14
          Caption = 'Electronic Support Measures Class:'
        end
        object lblMaxMADClass: TLabel
          Left = 11
          Top = 148
          Width = 185
          Height = 14
          Caption = 'Magnetic Anomaly Detector Class:'
        end
        object lblMaxFittedWeaponClass: TLabel
          Left = 11
          Top = 175
          Width = 127
          Height = 14
          Caption = 'Fitted Weapon Classes:'
        end
        object lblMaxPointEffectWeaponClass: TLabel
          Left = 11
          Top = 202
          Width = 160
          Height = 14
          Caption = 'Point Effect Weapon Classes:'
        end
        object lblTotalClassAllocationMax: TLabel
          Left = 11
          Top = 255
          Width = 176
          Height = 14
          Caption = 'Total Class Allocation Maximums:'
        end
        object edtMaxRadarClass: TEdit
          Left = 216
          Top = 10
          Width = 57
          Height = 22
          TabOrder = 0
          OnKeyPress = edtMaxRadarClassKeyPress
        end
        object edtMaxSonarClass: TEdit
          Left = 216
          Top = 37
          Width = 57
          Height = 22
          TabOrder = 1
          OnKeyPress = edtMaxSonarClassKeyPress
        end
        object edtMaxSonobuoyClass: TEdit
          Left = 216
          Top = 64
          Width = 57
          Height = 22
          TabOrder = 2
          OnKeyPress = edtMaxSonobuoyClassKeyPress
        end
        object edtMaxEOClass: TEdit
          Left = 216
          Top = 91
          Width = 57
          Height = 22
          TabOrder = 3
          OnKeyPress = edtMaxEOClassKeyPress
        end
        object edtMaxESMClass: TEdit
          Left = 216
          Top = 118
          Width = 57
          Height = 22
          TabOrder = 4
          OnKeyPress = edtMaxESMClassKeyPress
        end
        object edtMaxMADClass: TEdit
          Left = 216
          Top = 145
          Width = 57
          Height = 22
          TabOrder = 5
          OnKeyPress = edtMaxMADClassKeyPress
        end
        object edtMaxFittedWeaponClass: TEdit
          Left = 216
          Top = 172
          Width = 57
          Height = 22
          TabOrder = 6
          OnKeyPress = edtMaxFittedWeaponClassKeyPress
        end
        object edtMaxPointEffectWeaponClass: TEdit
          Left = 216
          Top = 199
          Width = 57
          Height = 22
          TabOrder = 7
          OnKeyPress = edtMaxPointEffectWeaponClassKeyPress
        end
        object edtTotalClassAllocationMax: TEdit
          Left = 216
          Top = 252
          Width = 57
          Height = 22
          Enabled = False
          TabOrder = 8
        end
        object mmoAllocationMaximumInfo: TMemo
          Left = 36
          Top = 292
          Width = 445
          Height = 65
          Color = clCream
          Lines.Strings = (
            
              'The combined total of all weapon/sensor class maximums cannot ex' +
              'ceed '
            '3800.'
            ''
            
              'Note that each radar class uses up two slots in the Total Class ' +
              'Allocation. For '
            'example, a'
            
              'Radar Class Allocation Maximum of 600 uses 1200 of the total cla' +
              'ss allocation '
            'slots.')
          ReadOnly = True
          TabOrder = 9
        end
      end
      object tsCommunication: TTabSheet
        Caption = 'Communication'
        ImageIndex = 6
        object grpMHSDelayTime: TGroupBox
          Left = 11
          Top = 3
          Width = 313
          Height = 134
          Caption = ' MHS Delay Time  '
          TabOrder = 0
          object lblMHSDelayTimeFlash: TLabel
            Left = 8
            Top = 21
            Width = 30
            Height = 14
            Caption = 'Flash:'
          end
          object lblMHSDelayTimeImmediate: TLabel
            Left = 8
            Top = 48
            Width = 62
            Height = 14
            Caption = 'Immediate:'
          end
          object lblMHSDelayTimePriority: TLabel
            Left = 8
            Top = 76
            Width = 41
            Height = 14
            Caption = 'Priority:'
          end
          object lbl54: TLabel
            Left = 247
            Top = 23
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl55: TLabel
            Left = 247
            Top = 50
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lblMHSDelayTimeRoutine: TLabel
            Left = 8
            Top = 104
            Width = 46
            Height = 14
            Caption = 'Routine:'
          end
          object lbl57: TLabel
            Left = 247
            Top = 104
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object lbl56: TLabel
            Left = 247
            Top = 77
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtMHSDelayTimeFlash: TMaskEdit
            Left = 185
            Top = 20
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnKeyPress = medtMHSDelayTimeFlashKeyPress
          end
          object medtMHSDelayTimeImmediate: TMaskEdit
            Left = 185
            Top = 47
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnKeyPress = medtMHSDelayTimeImmediateKeyPress
          end
          object medtMHSDelayTimePriority: TMaskEdit
            Left = 185
            Top = 74
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnKeyPress = medtMHSDelayTimePriorityKeyPress
          end
          object medtMHSDelayTimeRoutine: TMaskEdit
            Left = 185
            Top = 101
            Width = 56
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 3
            Text = '  :  :  '
            OnKeyPress = medtMHSDelayTimeRoutineKeyPress
          end
        end
        object grpMaximumRange: TGroupBox
          Left = 11
          Top = 143
          Width = 313
          Height = 106
          Caption = ' Maximum Ranges  '
          TabOrder = 1
          object lblMaxRangeUnderwaterTelephone: TLabel
            Left = 8
            Top = 23
            Width = 191
            Height = 14
            Caption = 'Underwater Telephone Reception:'
          end
          object lblMaxRangeHF: TLabel
            Left = 8
            Top = 50
            Width = 90
            Height = 14
            Caption = 'HF Transmission:'
          end
          object lblMaxRangeUHF: TLabel
            Left = 8
            Top = 77
            Width = 125
            Height = 14
            Caption = 'UHF/VHF Transmission:'
          end
          object lbl58: TLabel
            Left = 247
            Top = 23
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl59: TLabel
            Left = 247
            Top = 50
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lbl60: TLabel
            Left = 247
            Top = 77
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtMaxRangeHF: TEdit
            Tag = 2
            Left = 185
            Top = 47
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnKeyPress = edtMaxRangeHFKeyPress
          end
          object edtMaxRangeUnderwaterTelephone: TEdit
            Tag = 2
            Left = 185
            Top = 20
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtMaxRangeUnderwaterTelephoneKeyPress
          end
          object edtMaxRangeUHF: TEdit
            Tag = 2
            Left = 185
            Top = 74
            Width = 56
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnKeyPress = edtMaxRangeUHFKeyPress
          end
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 600
    Width = 869
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnSaveAsTrainer: TButton
      Left = 21
      Top = 5
      Width = 180
      Height = 25
      Caption = 'Save As Trainer Defaults'
      TabOrder = 0
      OnClick = btnSaveAsTrainerClick
    end
    object btnApply: TButton
      Left = 704
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 784
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 624
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 3
      OnClick = btnOKClick
    end
  end
end
