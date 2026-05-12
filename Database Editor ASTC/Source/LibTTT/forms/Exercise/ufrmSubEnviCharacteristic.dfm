object frmSubEnviCharacteristic: TfrmSubEnviCharacteristic
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Global Environment Characteristics'
  ClientHeight = 722
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblClass: TLabel
      Left = 17
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
    object edtName: TEdit
      Tag = 4
      Left = 17
      Top = 32
      Width = 577
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
    Width = 611
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 591
      Height = 584
      ActivePage = tsAboveWater
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabHeight = 30
      TabOrder = 0
      TabWidth = 140
      object tsAboveWater: TTabSheet
        Caption = 'Above Water'
        object grpVisibilityFactors: TGroupBox
          Left = 23
          Top = 117
          Width = 537
          Height = 216
          Caption = 'Visibility factors   '
          TabOrder = 0
          object lbl5: TLabel
            Left = 17
            Top = 22
            Width = 80
            Height = 14
            Caption = 'Daytime visual:'
          end
          object lbl6: TLabel
            Left = 17
            Top = 88
            Width = 93
            Height = 14
            Caption = 'Daytime infrared:'
          end
          object lbl7: TLabel
            Left = 17
            Top = 121
            Width = 100
            Height = 14
            Caption = 'Nighttme infrared:'
          end
          object lbl8: TLabel
            Left = 17
            Top = 55
            Width = 84
            Height = 14
            Caption = 'Nightime visual:'
          end
          object lbl9: TLabel
            Left = 17
            Top = 160
            Width = 43
            Height = 14
            Caption = 'Sunrise:'
          end
          object lbl10: TLabel
            Left = 17
            Top = 187
            Width = 42
            Height = 14
            Caption = 'Sunset:'
          end
          object lbl11: TLabel
            Left = 238
            Top = 187
            Width = 97
            Height = 14
            Caption = 'Period of twilight:'
          end
          object edtDayVis: TEdit
            Left = 464
            Top = 22
            Width = 48
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtVisibilityFactorsChange
          end
          object edtNightVis: TEdit
            Left = 464
            Top = 55
            Width = 48
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            Text = '0'
            OnChange = edtVisibilityFactorsChange
          end
          object trckbrDaytimeVisual: TTrackBar
            Left = 123
            Top = 22
            Width = 335
            Height = 34
            LineSize = 5
            Max = 100
            PageSize = 20
            Frequency = 20
            TabOrder = 4
            OnChange = TrackBarVisibilityFactorsChange
          end
          object trckbrNighttimeVisual: TTrackBar
            Tag = 1
            Left = 123
            Top = 55
            Width = 335
            Height = 34
            LineSize = 5
            Max = 100
            PageSize = 20
            Frequency = 20
            TabOrder = 5
            OnChange = TrackBarVisibilityFactorsChange
          end
          object trckbrDaytimeInfra: TTrackBar
            Tag = 2
            Left = 123
            Top = 88
            Width = 335
            Height = 34
            LineSize = 5
            Max = 100
            PageSize = 20
            Frequency = 20
            Position = 6
            TabOrder = 6
            OnChange = TrackBarVisibilityFactorsChange
          end
          object trckbrNighttimeInfra: TTrackBar
            Tag = 3
            Left = 123
            Top = 121
            Width = 335
            Height = 34
            LineSize = 5
            Max = 100
            PageSize = 20
            Frequency = 20
            Position = 4
            TabOrder = 7
            OnChange = TrackBarVisibilityFactorsChange
          end
          object edtNightInfra: TEdit
            Left = 464
            Top = 121
            Width = 48
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 3
            Text = '0'
            OnChange = edtVisibilityFactorsChange
          end
          object edtDayInfra: TEdit
            Left = 464
            Top = 88
            Width = 48
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 2
            Text = '0'
            OnChange = edtVisibilityFactorsChange
          end
          object edtTwilight: TEdit
            Tag = 2
            Left = 341
            Top = 183
            Width = 60
            Height = 22
            TabOrder = 8
          end
          object medtSunrise: TMaskEdit
            Left = 123
            Top = 157
            Width = 73
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 9
            Text = '  :  :  '
          end
          object medtSunset: TMaskEdit
            Left = 123
            Top = 183
            Width = 73
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 10
            Text = '  :  :  '
          end
          object medtTwilight: TMaskEdit
            Left = 407
            Top = 183
            Width = 73
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 11
            Text = '  :  :  '
          end
        end
        object grpAttenuationFactors: TGroupBox
          Left = 23
          Top = 352
          Width = 537
          Height = 176
          Caption = 'Attenuation factors   '
          TabOrder = 1
          object lbl12: TLabel
            Left = 17
            Top = 20
            Width = 52
            Height = 14
            Caption = 'Rain rate:'
          end
          object lbl13: TLabel
            Left = 17
            Top = 93
            Width = 112
            Height = 14
            Caption = 'Barometric pressure:'
          end
          object lbl14: TLabel
            Left = 17
            Top = 120
            Width = 91
            Height = 14
            Caption = 'Air temperature:'
          end
          object lbl15: TLabel
            Left = 17
            Top = 53
            Width = 106
            Height = 14
            Caption = 'Cloud attenuation :'
          end
          object lbl16: TLabel
            Left = 17
            Top = 147
            Width = 102
            Height = 14
            Caption = 'Cloud base height:'
          end
          object lbl17: TLabel
            Left = 224
            Top = 93
            Width = 38
            Height = 14
            Caption = 'milibars'
          end
          object lbl18: TLabel
            Left = 224
            Top = 120
            Width = 7
            Height = 14
            Caption = 'C'
          end
          object lbl19: TLabel
            Left = 224
            Top = 147
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object edtAttenRainRate: TEdit
            Left = 464
            Top = 17
            Width = 48
            Height = 22
            TabOrder = 0
            Text = '0'
            OnKeyPress = EditAttenuationFactorsKeyPress
          end
          object edtAttenCloud: TEdit
            Tag = 1
            Left = 464
            Top = 50
            Width = 48
            Height = 22
            TabOrder = 1
            Text = '0'
            OnKeyPress = EditAttenuationFactorsKeyPress
          end
          object trckbrAttenRainRate: TTrackBar
            Left = 120
            Top = 17
            Width = 335
            Height = 34
            LineSize = 5
            Max = 6
            PageSize = 1
            TabOrder = 5
            OnChange = TrackBarAttenuationFactorsChange
          end
          object trckbrAttenCloud: TTrackBar
            Tag = 1
            Left = 120
            Top = 50
            Width = 335
            Height = 34
            LineSize = 2
            Max = 6
            PageSize = 1
            TabOrder = 2
            OnChange = TrackBarAttenuationFactorsChange
          end
          object edtAirTemp: TEdit
            Tag = 2
            Left = 145
            Top = 116
            Width = 73
            Height = 22
            TabOrder = 3
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = DataChangeKeyPress
          end
          object edtBarometricPressure: TEdit
            Tag = 2
            Left = 145
            Top = 89
            Width = 73
            Height = 22
            TabOrder = 4
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = DataChangeKeyPress
          end
          object edtCloudBaseHeight: TEdit
            Left = 145
            Top = 143
            Width = 73
            Height = 22
            TabOrder = 6
            Text = '0'
            OnChange = edtChange
            OnKeyPress = DataChangeKeyPress
          end
        end
        object grpWind: TGroupBox
          Left = 23
          Top = 6
          Width = 312
          Height = 105
          Caption = 'Wind   '
          TabOrder = 2
          object txt1: TStaticText
            Left = 123
            Top = 30
            Width = 47
            Height = 18
            Caption = 'Speed :'
            TabOrder = 2
          end
          object txt3: TStaticText
            Left = 123
            Top = 57
            Width = 60
            Height = 18
            Caption = 'Direction :'
            TabOrder = 3
          end
          object edtAboveSpeed: TEdit
            Tag = 2
            Left = 197
            Top = 28
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = DataChangeKeyPress
          end
          object edtAboveDirection: TEdit
            Left = 197
            Top = 55
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = DirectionChange
          end
          object txt2: TStaticText
            Left = 258
            Top = 30
            Width = 34
            Height = 18
            Caption = 'knots'
            TabOrder = 4
          end
          object txt4: TStaticText
            Left = 258
            Top = 57
            Width = 25
            Height = 18
            Caption = 'deg'
            TabOrder = 5
          end
          object pnlWheel: TPanel
            Left = 20
            Top = 16
            Width = 73
            Height = 73
            TabOrder = 6
          end
        end
        object grpHFRangeGap: TGroupBox
          Left = 359
          Top = 6
          Width = 201
          Height = 105
          Caption = 'HF Range Gap   '
          TabOrder = 3
          object txt5: TStaticText
            Left = 39
            Top = 30
            Width = 39
            Height = 18
            Caption = 'Start :'
            TabOrder = 2
          end
          object txt7: TStaticText
            Left = 39
            Top = 57
            Width = 33
            Height = 18
            Caption = 'End :'
            TabOrder = 3
          end
          object edtAboveHFStart: TEdit
            Tag = 2
            Left = 80
            Top = 28
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = DataChangeKeyPress
          end
          object edtAboveHFEnd: TEdit
            Tag = 2
            Left = 80
            Top = 55
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = DataChangeKeyPress
          end
          object txt6: TStaticText
            Left = 141
            Top = 30
            Width = 21
            Height = 18
            Caption = 'nm'
            TabOrder = 4
          end
          object txt8: TStaticText
            Left = 141
            Top = 57
            Width = 21
            Height = 18
            Caption = 'nm'
            TabOrder = 5
          end
        end
      end
      object tsSurfaceAndSubsurface: TTabSheet
        Caption = 'Surface and Subsurface'
        ImageIndex = 1
        ExplicitLeft = 7
        object grbOceanCurrent: TGroupBox
          Left = 22
          Top = 14
          Width = 286
          Height = 105
          Caption = 'Ocean Current'
          TabOrder = 0
          object lblSpeed: TStaticText
            Left = 112
            Top = 24
            Width = 47
            Height = 18
            Caption = 'Speed :'
            TabOrder = 0
          end
          object lblDirection: TStaticText
            Left = 112
            Top = 51
            Width = 60
            Height = 18
            Caption = 'Direction :'
            TabOrder = 1
          end
          object edtSpeed: TEdit
            Tag = 2
            Left = 186
            Top = 22
            Width = 55
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnKeyPress = DataChangeKeyPress
          end
          object edtDirection: TEdit
            Left = 186
            Top = 49
            Width = 55
            Height = 22
            TabOrder = 3
            Text = '0'
            OnKeyPress = DirectionChangeKeyPress
          end
          object lblKnots: TStaticText
            Left = 247
            Top = 24
            Width = 34
            Height = 18
            Caption = 'knots'
            TabOrder = 4
          end
          object lblDeg: TStaticText
            Left = 247
            Top = 51
            Width = 25
            Height = 18
            Caption = 'deg'
            TabOrder = 5
          end
          object pnlOC: TPanel
            Left = 9
            Top = 16
            Width = 73
            Height = 73
            TabOrder = 6
          end
        end
        object grbSoundVelocity: TGroupBox
          Left = 22
          Top = 125
          Width = 286
          Height = 105
          Caption = 'Sound Velocity Profile Type'
          TabOrder = 1
          object btnPositive: TSpeedButton
            Left = 49
            Top = 28
            Width = 43
            Height = 43
            GroupIndex = 1
            Down = True
            Caption = '\'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SoundVelocityProfileTypeClick
          end
          object btnNegative: TSpeedButton
            Tag = 1
            Left = 98
            Top = 28
            Width = 43
            Height = 43
            GroupIndex = 1
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SoundVelocityProfileTypeClick
          end
          object btnPosOverNeg: TSpeedButton
            Tag = 2
            Left = 147
            Top = 28
            Width = 43
            Height = 43
            GroupIndex = 1
            Caption = '>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SoundVelocityProfileTypeClick
          end
          object btnNegOverPos: TSpeedButton
            Tag = 3
            Left = 196
            Top = 28
            Width = 43
            Height = 43
            GroupIndex = 1
            Caption = '<'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SoundVelocityProfileTypeClick
          end
          object lbSoundVelocity: TStaticText
            Left = 119
            Top = 77
            Width = 49
            Height = 17
            Alignment = taCenter
            Caption = 'Positive'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object grbSurfaceDucting: TGroupBox
          Left = 22
          Top = 239
          Width = 241
          Height = 82
          TabOrder = 4
          object lblUpperLimitSurface: TStaticText
            Left = 9
            Top = 24
            Width = 74
            Height = 18
            Caption = 'Upper Limit :'
            TabOrder = 0
          end
          object lblLowerLimitSurface: TStaticText
            Left = 9
            Top = 51
            Width = 75
            Height = 18
            Caption = 'Lower Limit :'
            TabOrder = 1
          end
          object edtUpperLimitSurfaceDucting: TEdit
            Left = 88
            Top = 22
            Width = 63
            Height = 22
            TabOrder = 2
            Text = '0'
            OnKeyPress = DataChangeKeyPress
          end
          object edtLowerLimitSurfaceDucting: TEdit
            Left = 88
            Top = 49
            Width = 63
            Height = 22
            TabOrder = 3
            Text = '0'
            OnKeyPress = DataChangeKeyPress
          end
          object lblFeetUpperSurfaceDucting: TStaticText
            Left = 168
            Top = 24
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 4
          end
          object lblFeetLowerSurfaceDucting: TStaticText
            Left = 168
            Top = 51
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 5
          end
        end
        object grbSubsurfaceDucting: TGroupBox
          Left = 278
          Top = 239
          Width = 241
          Height = 82
          TabOrder = 5
          object lblUpperLimitSubsurface: TStaticText
            Left = 9
            Top = 24
            Width = 74
            Height = 18
            Caption = 'Upper Limit :'
            TabOrder = 0
          end
          object lblLowerLimitSubsurface: TStaticText
            Left = 9
            Top = 51
            Width = 75
            Height = 18
            Caption = 'Lower Limit :'
            TabOrder = 1
          end
          object edtUpperLimitSubsurfaceDucting: TEdit
            Left = 88
            Top = 22
            Width = 63
            Height = 22
            TabOrder = 2
            Text = '0'
            OnKeyPress = DataChangeKeyPress
          end
          object edtLowerLimitSubsurfaceDucting: TEdit
            Left = 88
            Top = 49
            Width = 63
            Height = 22
            TabOrder = 3
            Text = '0'
            OnKeyPress = DataChangeKeyPress
          end
          object lblFeetUpperSubsurfaceDucting: TStaticText
            Left = 168
            Top = 24
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 4
          end
          object lblFeetLowerSubsurfaceDucting: TStaticText
            Left = 168
            Top = 51
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 5
          end
        end
        object grbSpeedOfSound: TGroupBox
          Left = 323
          Top = 125
          Width = 196
          Height = 105
          Caption = 'Speed of Sound'
          TabOrder = 6
          object lblSurface: TStaticText
            Left = 6
            Top = 24
            Width = 53
            Height = 18
            Caption = 'Surface :'
            TabOrder = 0
          end
          object edtSurface: TEdit
            Tag = 2
            Left = 72
            Top = 22
            Width = 63
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = DataChangeKeyPress
          end
          object lblFeetPerSec1: TStaticText
            Left = 141
            Top = 24
            Width = 36
            Height = 18
            Caption = 'ft/sec'
            TabOrder = 2
          end
          object lblLayer: TStaticText
            Left = 6
            Top = 51
            Width = 41
            Height = 18
            Caption = 'Layer :'
            TabOrder = 3
          end
          object edtLayer: TEdit
            Tag = 2
            Left = 72
            Top = 49
            Width = 63
            Height = 22
            TabOrder = 4
            Text = '0,00'
            OnKeyPress = DataChangeKeyPress
          end
          object lblFeetPerSec2: TStaticText
            Left = 141
            Top = 50
            Width = 36
            Height = 18
            Caption = 'ft/sec'
            TabOrder = 5
          end
          object lblBottom: TStaticText
            Left = 6
            Top = 78
            Width = 53
            Height = 18
            Caption = 'Bottom :'
            TabOrder = 6
          end
          object edtBottom: TEdit
            Tag = 2
            Left = 72
            Top = 76
            Width = 63
            Height = 22
            TabOrder = 7
            Text = '0,00'
            OnKeyPress = DataChangeKeyPress
          end
          object lblFeetPerSec3: TStaticText
            Left = 141
            Top = 78
            Width = 36
            Height = 18
            Caption = 'ft/sec'
            TabOrder = 8
          end
        end
        object lblShippingRate: TStaticText
          Left = 323
          Top = 14
          Width = 87
          Height = 18
          Caption = 'Shipping Rate :'
          TabOrder = 7
        end
        object cbbShippingRate: TComboBox
          Left = 323
          Top = 37
          Width = 196
          Height = 22
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Text = 'Distant'
          Items.Strings = (
            'Distant'
            'Low'
            'Medium'
            'High')
        end
        object lblDepthOfThermalLayer: TStaticText
          Left = 323
          Top = 75
          Width = 142
          Height = 18
          Caption = 'Depth of Thermal Layer :'
          TabOrder = 9
        end
        object edtDepthOfThermalLayer: TEdit
          Left = 323
          Top = 98
          Width = 65
          Height = 22
          TabOrder = 10
          Text = '0'
          OnKeyPress = DataChangeKeyPress
        end
        object lblFeet: TStaticText
          Left = 394
          Top = 100
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 11
        end
        object lblSeaState: TStaticText
          Left = 22
          Top = 327
          Width = 66
          Height = 18
          Caption = 'Sea State :'
          TabOrder = 12
        end
        object trckbrSeaState: TTrackBar
          Left = 152
          Top = 327
          Width = 309
          Height = 45
          Max = 9
          PageSize = 1
          TabOrder = 2
          OnChange = trckbrSeaStateChange
        end
        object edtSeaState: TEdit
          Left = 467
          Top = 327
          Width = 52
          Height = 22
          TabOrder = 13
          Text = '0'
          OnKeyPress = edtSeaStateKeyPress
        end
        object lblStillSeaState: TStaticText
          Left = 151
          Top = 352
          Width = 22
          Height = 18
          Caption = 'Still'
          TabOrder = 14
        end
        object lblHeavySeaState: TStaticText
          Left = 431
          Top = 352
          Width = 37
          Height = 18
          Caption = 'Heavy'
          TabOrder = 15
        end
        object lblBottomLossCoeff: TStaticText
          Left = 22
          Top = 375
          Width = 142
          Height = 18
          Caption = 'Bottom Loss Coefficient :'
          TabOrder = 16
        end
        object trckbrBottomLossCoeff: TTrackBar
          Left = 152
          Top = 375
          Width = 309
          Height = 45
          Max = 9
          Min = 1
          PageSize = 1
          Position = 1
          TabOrder = 3
          OnChange = trckbrBottomLossCoeffChange
        end
        object edtBottomLossCoeff: TEdit
          Left = 467
          Top = 375
          Width = 52
          Height = 22
          TabOrder = 17
          Text = '0'
          OnKeyPress = edtBottomLossCoeffKeyPress
        end
        object lbl1BottomLossCoeff: TStaticText
          Left = 155
          Top = 402
          Width = 11
          Height = 18
          Caption = '1'
          TabOrder = 18
        end
        object lbl9BottomLossCoeff: TStaticText
          Left = 444
          Top = 402
          Width = 11
          Height = 18
          Caption = '9'
          TabOrder = 19
        end
        object lblSurfaceTemperature: TStaticText
          Left = 22
          Top = 428
          Width = 129
          Height = 18
          Caption = 'Surface Temperature :'
          TabOrder = 20
        end
        object edtSurfaceTemperature: TEdit
          Tag = 2
          Left = 208
          Top = 426
          Width = 62
          Height = 22
          TabOrder = 21
          Text = '0,00'
          OnKeyPress = DataChangeKeyPress
        end
        object lblDegC: TStaticText
          Left = 276
          Top = 428
          Width = 40
          Height = 18
          Caption = 'Celcius'
          TabOrder = 22
        end
        object lblAverageOceanDepth: TStaticText
          Left = 22
          Top = 455
          Width = 134
          Height = 18
          Caption = 'Average Ocean Depth :'
          TabOrder = 23
        end
        object edtAverageOceanDepth: TEdit
          Left = 208
          Top = 453
          Width = 62
          Height = 22
          TabOrder = 24
          Text = '0'
          OnKeyPress = DataChangeKeyPress
        end
        object lblFeetAverageOceanDepth: TStaticText
          Left = 276
          Top = 455
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 25
        end
        object lblShadowZone: TStaticText
          Left = 22
          Top = 482
          Width = 187
          Height = 18
          Caption = 'Shadow Zone Transmission Loss :'
          TabOrder = 26
        end
        object edtShadowZone: TEdit
          Tag = 1
          Left = 208
          Top = 480
          Width = 62
          Height = 22
          TabOrder = 27
          Text = '0,0'
          OnKeyPress = DataChangeKeyPress
        end
        object lblDBShadowZone: TStaticText
          Left = 276
          Top = 482
          Width = 18
          Height = 18
          Caption = 'dB'
          TabOrder = 28
        end
        object cbSurfaceDucting: TCheckBox
          Left = 27
          Top = 236
          Width = 97
          Height = 17
          Caption = 'Surface Ducting'
          TabOrder = 29
          OnClick = DuctingActiveClick
        end
        object cbSubsurfaceDucting: TCheckBox
          Tag = 1
          Left = 283
          Top = 236
          Width = 113
          Height = 17
          Caption = 'Subsurface Ducting'
          TabOrder = 30
          OnClick = DuctingActiveClick
        end
      end
      object tsConvergenceZones: TTabSheet
        Caption = 'Convergence Zones'
        ImageIndex = 2
        object grbCoverageZones: TGroupBox
          Left = 21
          Top = 32
          Width = 530
          Height = 170
          TabOrder = 0
          object lblRangeInterval: TStaticText
            Left = 9
            Top = 24
            Width = 91
            Height = 18
            Caption = 'Range Interval :'
            Enabled = False
            TabOrder = 0
          end
          object lblWidthOfFirstCZ: TStaticText
            Left = 9
            Top = 51
            Width = 104
            Height = 18
            Caption = 'Width of First CZ :'
            Enabled = False
            TabOrder = 1
          end
          object edtRangeInterval: TEdit
            Tag = 2
            Left = 361
            Top = 22
            Width = 63
            Height = 22
            Enabled = False
            TabOrder = 2
            Text = '0,00'
            OnKeyPress = DataChangeKeyPress
          end
          object edtWidthOfFirstCZ: TEdit
            Tag = 2
            Left = 361
            Top = 49
            Width = 63
            Height = 22
            Enabled = False
            TabOrder = 3
            Text = '0,00'
            OnKeyPress = DataChangeKeyPress
          end
          object lbnmRange: TStaticText
            Left = 430
            Top = 24
            Width = 21
            Height = 18
            Caption = 'nm'
            TabOrder = 4
          end
          object lblnmWidth: TStaticText
            Left = 430
            Top = 51
            Width = 21
            Height = 18
            Caption = 'nm'
            TabOrder = 5
          end
          object lblFirstCZSignal: TStaticText
            Left = 9
            Top = 78
            Width = 137
            Height = 18
            Caption = 'First CZ Signal Increase :'
            Enabled = False
            TabOrder = 6
          end
          object lblAttenuation: TStaticText
            Left = 9
            Top = 105
            Width = 190
            Height = 18
            Caption = 'Attenuation Loss per CZ Bounce :'
            Enabled = False
            TabOrder = 7
          end
          object edtFirstCZSignalIncrease: TEdit
            Tag = 1
            Left = 361
            Top = 76
            Width = 63
            Height = 22
            Enabled = False
            TabOrder = 8
            Text = '0,0'
            OnKeyPress = DataChangeKeyPress
          end
          object edtAttenuation: TEdit
            Tag = 1
            Left = 361
            Top = 103
            Width = 63
            Height = 22
            Enabled = False
            TabOrder = 9
            Text = '0,0'
            OnKeyPress = DataChangeKeyPress
          end
          object lbdBFirstCZ: TStaticText
            Left = 430
            Top = 78
            Width = 18
            Height = 18
            Caption = 'dB'
            TabOrder = 10
          end
          object lbldBAttenuation: TStaticText
            Left = 430
            Top = 105
            Width = 18
            Height = 18
            Caption = 'dB'
            TabOrder = 11
          end
          object lblMaxSonarTarget: TStaticText
            Left = 9
            Top = 132
            Width = 320
            Height = 18
            Caption = 'Maximum Sonar/Target Depth to Apply CZ Signal Excess :'
            Enabled = False
            TabOrder = 12
          end
          object edtMaxSonarTarget: TEdit
            Left = 361
            Top = 130
            Width = 63
            Height = 22
            Enabled = False
            TabOrder = 13
            Text = '0'
            OnKeyPress = DataChangeKeyPress
          end
          object lblFeetMaxSonarTarget: TStaticText
            Left = 430
            Top = 132
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 14
          end
        end
        object cbCoverageZones: TCheckBox
          Left = 12
          Top = 9
          Width = 97
          Height = 17
          Caption = 'Coverage Zones'
          TabOrder = 1
          OnClick = cbCoverageZonesClick
        end
      end
      object tsBoundaries: TTabSheet
        Caption = 'Boundaries'
        ImageIndex = 3
        object grbTopLeft: TGroupBox
          Left = 15
          Top = 3
          Width = 270
          Height = 94
          Caption = 'Top-Left   '
          TabOrder = 0
          object lblPositionTopLeft: TStaticText
            Left = 18
            Top = 28
            Width = 54
            Height = 18
            Caption = 'Position :'
            TabOrder = 0
          end
          object edtPositionTopLeft1: TEdit
            Tag = 4
            Left = 77
            Top = 26
            Width = 82
            Height = 22
            ReadOnly = True
            TabOrder = 1
          end
          object edtPositionTopLeft2: TEdit
            Tag = 4
            Left = 165
            Top = 26
            Width = 89
            Height = 22
            ReadOnly = True
            TabOrder = 2
          end
          object lblGridTopLeft: TStaticText
            Left = 18
            Top = 59
            Width = 33
            Height = 18
            Caption = 'Grid :'
            TabOrder = 3
          end
          object edtGridTopLeft1: TEdit
            Tag = 4
            Left = 77
            Top = 57
            Width = 82
            Height = 22
            ReadOnly = True
            TabOrder = 4
          end
          object edtGridTopLeft2: TEdit
            Tag = 4
            Left = 165
            Top = 57
            Width = 89
            Height = 22
            ReadOnly = True
            TabOrder = 5
          end
        end
        object grpBottomRight: TGroupBox
          Left = 291
          Top = 3
          Width = 270
          Height = 94
          Caption = 'Bottom Right'
          TabOrder = 1
          object lblPositionBottomRight: TStaticText
            Left = 18
            Top = 28
            Width = 54
            Height = 18
            Caption = 'Position :'
            TabOrder = 0
          end
          object edtPositionBottomRight1: TEdit
            Tag = 4
            Left = 77
            Top = 29
            Width = 82
            Height = 22
            ReadOnly = True
            TabOrder = 1
          end
          object edtPositionBottomRight2: TEdit
            Tag = 4
            Left = 165
            Top = 26
            Width = 89
            Height = 22
            ReadOnly = True
            TabOrder = 2
          end
          object lblGridBottomRight: TStaticText
            Left = 18
            Top = 59
            Width = 33
            Height = 18
            Caption = 'Grid :'
            TabOrder = 3
          end
          object edtGridBottomRight1: TEdit
            Tag = 4
            Left = 77
            Top = 57
            Width = 82
            Height = 22
            ReadOnly = True
            TabOrder = 4
          end
          object edtGridBottomRight2: TEdit
            Tag = 4
            Left = 165
            Top = 57
            Width = 89
            Height = 22
            ReadOnly = True
            TabOrder = 5
          end
        end
        object grbAtmospheric: TGroupBox
          Left = 15
          Top = 103
          Width = 546
          Height = 182
          Caption = 'Atmospheric Sub/Super Refreaction Modifier   '
          TabOrder = 2
          object trckbrAtmospheric: TTrackBar
            Left = 3
            Top = 24
            Width = 413
            Height = 45
            Max = 1000
            Min = 1
            PageSize = 20
            Frequency = 20
            Position = 1
            TabOrder = 2
            OnChange = trckbrAtmosphericChange
          end
          object edtAtmospheric: TEdit
            Left = 422
            Top = 24
            Width = 73
            Height = 22
            TabOrder = 0
            Text = '1'
            OnKeyPress = edtAtmosphericKeyPress
          end
          object lbl1Atmospheric: TStaticText
            Left = 12
            Top = 53
            Width = 23
            Height = 18
            Caption = '1%'
            TabOrder = 1
          end
          object lbl100Atmospheric: TStaticText
            Left = 358
            Top = 51
            Width = 44
            Height = 18
            Caption = '1000%'
            TabOrder = 3
          end
          object grbLegendTrackAtmospheric: TGroupBox
            Left = 12
            Top = 75
            Width = 166
            Height = 94
            Caption = 'Legend'
            TabOrder = 4
            object lblLegend1: TStaticText
              Left = 16
              Top = 24
              Width = 135
              Height = 18
              Caption = '< 100% Sub-Refrection'
              TabOrder = 0
            end
            object lblLegend2: TStaticText
              Left = 16
              Top = 47
              Width = 116
              Height = 18
              Caption = '100% No Refrection'
              TabOrder = 1
            end
            object lblLegend3: TStaticText
              Left = 16
              Top = 70
              Width = 146
              Height = 18
              Caption = '> 100% Super-Refrection'
              TabOrder = 2
            end
          end
        end
        object grbCommunicationEffects: TGroupBox
          Left = 15
          Top = 311
          Width = 546
          Height = 74
          Caption = 'Communication Effects'
          TabOrder = 3
          object cbHFTransmission: TCheckBox
            Left = 28
            Top = 24
            Width = 150
            Height = 33
            Caption = 'HF Transmission Black Hole'
            TabOrder = 0
          end
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 679
    Width = 611
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnOK: TButton
      Left = 366
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnApply: TButton
      Left = 446
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 526
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 611
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 611
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
    Top = 674
    Width = 611
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 611
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
