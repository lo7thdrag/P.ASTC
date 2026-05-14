object frmPlatformDeploytment: TfrmPlatformDeploytment
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Platform Deployment - Selected Scenario'
  ClientHeight = 581
  ClientWidth = 1368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 1368
    Height = 581
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object pnlPlatform: TPanel
      Left = 5
      Top = 5
      Width = 320
      Height = 528
      Align = alLeft
      Color = 2499101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 523
      object pnlSelectedPlatform: TPanel
        Left = 1
        Top = 1
        Width = 377
        Height = 526
        Align = alLeft
        Color = 2499101
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 521
        object Label1: TLabel
          Left = 12
          Top = 9
          Width = 88
          Height = 14
          Caption = 'Platform Name :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edPlatform: TEdit
          Left = 7
          Top = 26
          Width = 267
          Height = 22
          ReadOnly = True
          TabOrder = 3
        end
        object HookContactInfoTraineeDisplay: TPageControl
          Left = 7
          Top = 60
          Width = 306
          Height = 405
          ActivePage = tsHook
          TabHeight = 25
          TabOrder = 4
          TabWidth = 60
          Visible = False
          object tsHook: TTabSheet
            Caption = 'Initial'
            object Label3: TLabel
              Left = 15
              Top = 43
              Width = 42
              Height = 14
              Caption = 'Position'
            end
            object Label4: TLabel
              Left = 15
              Top = 96
              Width = 21
              Height = 14
              Caption = 'Grid'
            end
            object Label7: TLabel
              Left = 12
              Top = 166
              Width = 119
              Height = 14
              Caption = 'Approximate Position '
            end
            object Label23: TLabel
              Left = 120
              Top = 43
              Width = 17
              Height = 14
              Caption = 'Lat'
            end
            object Label24: TLabel
              Left = 120
              Top = 68
              Width = 27
              Height = 14
              Caption = 'Long'
            end
            object Label6: TLabel
              Left = 120
              Top = 121
              Width = 24
              Height = 14
              Caption = 'Horz'
            end
            object Label8: TLabel
              Left = 120
              Top = 96
              Width = 24
              Height = 14
              Caption = 'Vert'
            end
            object btnApproximatePosition: TSpeedButton
              Left = 157
              Top = 162
              Width = 33
              Height = 22
              Glyph.Data = {
                36090000424D360900000000000036000000280000001F000000180000000100
                18000000000000090000000000000000000000000000000000006161613E3E3E
                3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
              OnClick = btnApproximatePositionClick
            end
            object StaticText1: TStaticText
              Left = 15
              Top = 12
              Width = 89
              Height = 18
              Caption = 'Activation Time'
              TabOrder = 0
            end
            object StaticText7: TStaticText
              Left = 15
              Top = 191
              Width = 41
              Height = 18
              Caption = 'Course'
              TabOrder = 1
            end
            object StaticText8: TStaticText
              Left = 15
              Top = 218
              Width = 66
              Height = 18
              Caption = 'Helm Angle'
              TabOrder = 2
            end
            object StaticText9: TStaticText
              Left = 15
              Top = 245
              Width = 83
              Height = 18
              Caption = 'Ground Speed'
              TabOrder = 3
            end
            object StaticText10: TStaticText
              Left = 15
              Top = 272
              Width = 86
              Height = 18
              Caption = 'Altitude/Depth'
              TabOrder = 4
            end
            object StaticText25: TStaticText
              Left = 101
              Top = 12
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 5
            end
            object StaticText28: TStaticText
              Left = 101
              Top = 43
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 6
            end
            object StaticText29: TStaticText
              Left = 101
              Top = 96
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 7
            end
            object StaticText31: TStaticText
              Left = 136
              Top = 164
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 8
            end
            object StaticText33: TStaticText
              Left = 101
              Top = 299
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 9
            end
            object StaticText34: TStaticText
              Left = 101
              Top = 272
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 10
            end
            object StaticText35: TStaticText
              Left = 101
              Top = 245
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 11
            end
            object StaticText36: TStaticText
              Left = 101
              Top = 218
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 12
            end
            object dtpActivationTime: TDateTimePicker
              Left = 119
              Top = 10
              Width = 75
              Height = 22
              Date = 40492.000000000000000000
              Time = 0.082326388888759540
              Kind = dtkTime
              TabOrder = 13
              OnKeyPress = dtpActivationTimeKeyPress
            end
            object edLatPosition: TEdit
              Left = 158
              Top = 39
              Width = 124
              Height = 22
              TabOrder = 14
              OnKeyPress = edLatPositionKeyPress
            end
            object edLongPosition: TEdit
              Left = 158
              Top = 63
              Width = 124
              Height = 22
              TabOrder = 15
              OnKeyPress = edLongPositionKeyPress
            end
            object edHorz: TEdit
              Left = 158
              Top = 117
              Width = 124
              Height = 22
              TabOrder = 16
              OnKeyPress = edHorzKeyPress
            end
            object edVert: TEdit
              Left = 158
              Top = 92
              Width = 124
              Height = 22
              TabOrder = 17
              OnKeyPress = edVertKeyPress
            end
            object edCourse: TEdit
              Left = 119
              Top = 189
              Width = 74
              Height = 22
              TabOrder = 18
              OnKeyPress = PlatformDataKeyPress
            end
            object edHelmAngle: TEdit
              Tag = 1
              Left = 119
              Top = 216
              Width = 74
              Height = 22
              TabOrder = 19
              OnKeyPress = PlatformDataKeyPress
            end
            object cbGroundSpeed: TComboBox
              Left = 119
              Top = 243
              Width = 74
              Height = 22
              Style = csDropDownList
              TabOrder = 20
              OnChange = PlatformDataChange
              Items.Strings = (
                'Minimum'
                'Cruise'
                'High'
                'Maximum')
            end
            object edAltitude: TEdit
              Tag = 2
              Left = 119
              Top = 270
              Width = 74
              Height = 22
              TabOrder = 21
              OnKeyPress = PlatformDataKeyPress
            end
            object cbVerticalSpeed: TComboBox
              Tag = 1
              Left = 119
              Top = 297
              Width = 124
              Height = 22
              Style = csDropDownList
              TabOrder = 22
              OnChange = PlatformDataChange
              Items.Strings = (
                'Maximum Climb'
                'Normal Climb'
                'Level'
                'Maximum Descent'
                'Normal Descent')
            end
            object StaticText6: TStaticText
              Left = 101
              Top = 191
              Width = 8
              Height = 18
              Caption = ':'
              TabOrder = 23
            end
            object StaticText16: TStaticText
              Left = 15
              Top = 299
              Width = 83
              Height = 18
              Caption = 'Vertical Speed'
              TabOrder = 24
            end
            object btnIFFActivation: TButton
              Left = 193
              Top = 336
              Width = 89
              Height = 25
              Caption = 'IFF Activation'
              TabOrder = 25
            end
          end
          object tsDetails: TTabSheet
            Caption = 'Lateral'
            ImageIndex = 1
            object Panel2: TPanel
              Left = 0
              Top = 43
              Width = 298
              Height = 327
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object grbDefaultKosong: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 16
              end
              object grbCircleOnPointGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 9
                object Label30: TLabel
                  Left = 11
                  Top = 200
                  Width = 91
                  Height = 14
                  Caption = 'Ground Speed : '
                end
                object Label31: TLabel
                  Left = 153
                  Top = 146
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object Label32: TLabel
                  Left = 11
                  Top = 173
                  Width = 60
                  Height = 14
                  Caption = 'Direction : '
                end
                object Label33: TLabel
                  Left = 11
                  Top = 146
                  Width = 46
                  Height = 14
                  Caption = 'Radius : '
                end
                object Label34: TLabel
                  Left = 11
                  Top = 20
                  Width = 95
                  Height = 14
                  Caption = 'Centre Position : '
                end
                object lblCentreGrid: TLabel
                  Left = 11
                  Top = 84
                  Width = 78
                  Height = 14
                  Caption = 'Centre  Grid : '
                end
                object spbtnCentrePosition_CircleOnPointGuidance: TSpeedButton
                  Tag = 2
                  Left = 303
                  Top = 18
                  Width = 24
                  Height = 22
                  Caption = '+'
                  OnClick = PlatformDataClick
                end
                object edtRadius_CircleOnPointGuidance: TEdit
                  Tag = 8
                  Left = 112
                  Top = 142
                  Width = 39
                  Height = 22
                  TabOrder = 0
                  Text = '0.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cmbGroundSpeed_CircleOnPointGuidance: TComboBox
                  Tag = 3
                  Left = 112
                  Top = 196
                  Width = 125
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 2
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
                object edtCentreLat_CircleOnPointGuidance: TEdit
                  Left = 112
                  Top = 17
                  Width = 125
                  Height = 22
                  TabOrder = 3
                end
                object edtCentreLong_CircleOnPointGuidance: TEdit
                  Left = 112
                  Top = 41
                  Width = 125
                  Height = 22
                  TabOrder = 4
                end
                object edtCentreY_CircleOnPointGuidance: TEdit
                  Left = 112
                  Top = 104
                  Width = 90
                  Height = 22
                  TabOrder = 5
                end
                object edtCentreX_CircleOnPointGuidance: TEdit
                  Left = 112
                  Top = 80
                  Width = 90
                  Height = 22
                  TabOrder = 6
                end
                object cmbDirection_CircleOnPointGuidance: TComboBox
                  Tag = 4
                  Left = 112
                  Top = 169
                  Width = 125
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Clockwise'
                    'Counter-Clockwise')
                end
              end
              object grbCircleOnTrackGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 0
                object Label25: TLabel
                  Left = 16
                  Top = 19
                  Width = 45
                  Height = 14
                  Caption = 'Target :'
                end
                object Label26: TLabel
                  Left = 16
                  Top = 100
                  Width = 91
                  Height = 14
                  Caption = 'Ground Speed : '
                end
                object spTarget_CircleOnTrackGuidance: TSpeedButton
                  Tag = 1
                  Left = 303
                  Top = 14
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object lblRangeOffset: TLabel
                  Left = 16
                  Top = 127
                  Width = 84
                  Height = 14
                  Caption = 'Range Offset : '
                end
                object Label27: TLabel
                  Left = 16
                  Top = 154
                  Width = 81
                  Height = 14
                  Caption = 'Angle Offset : '
                end
                object Label28: TLabel
                  Left = 160
                  Top = 46
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object lblDirection: TLabel
                  Left = 16
                  Top = 73
                  Width = 60
                  Height = 14
                  Caption = 'Direction : '
                end
                object lblRadius: TLabel
                  Left = 16
                  Top = 46
                  Width = 46
                  Height = 14
                  Caption = 'Radius : '
                end
                object lblnmm: TLabel
                  Left = 172
                  Top = 127
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object Label29: TLabel
                  Left = 172
                  Top = 154
                  Width = 44
                  Height = 14
                  Caption = 'degrees'
                end
                object edtTarget_CircleOnTrackGuidance: TEdit
                  Left = 112
                  Top = 15
                  Width = 169
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
                object edtRadius_CircleOnTrackGuidance: TEdit
                  Tag = 8
                  Left = 113
                  Top = 42
                  Width = 41
                  Height = 22
                  TabOrder = 1
                  OnKeyPress = PlatformDataKeyPress
                end
                object cbxAbsoluteOffsetAngle_CircleOnTrackGuidance: TCheckBox
                  Tag = 2
                  Left = 16
                  Top = 185
                  Width = 154
                  Height = 17
                  Caption = 'Absolute Offset Angle'
                  TabOrder = 2
                  OnClick = PlatformDataClick
                end
                object cmbDirection_CircleOnTrackGuidance: TComboBox
                  Tag = 4
                  Left = 113
                  Top = 69
                  Width = 125
                  Height = 22
                  TabOrder = 3
                  Text = 'Counter-Clockwise'
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Clockwise'
                    'Counter-Clockwise')
                end
                object cmbGroundSpeed_CircleOnTrackGuidance: TComboBox
                  Tag = 3
                  Left = 113
                  Top = 96
                  Width = 125
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 4
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
                object edtRangeOffset_CircleOnTrackGuidance: TEdit
                  Tag = 9
                  Left = 110
                  Top = 123
                  Width = 41
                  Height = 22
                  TabOrder = 5
                  Text = '0.00'
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtAngleOffset_CircleOnTrackGuidance: TEdit
                  Tag = 10
                  Left = 110
                  Top = 150
                  Width = 41
                  Height = 22
                  TabOrder = 6
                  Text = '0'
                  OnKeyPress = PlatformDataKeyPress
                end
              end
              object grbEngagementGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 3
                OnClick = btnApplyClick
                object Label48: TLabel
                  Left = 158
                  Top = 47
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object Label49: TLabel
                  Left = 16
                  Top = 47
                  Width = 83
                  Height = 14
                  Caption = 'Target Range :'
                end
                object Label50: TLabel
                  Left = 16
                  Top = 19
                  Width = 73
                  Height = 14
                  Caption = 'Target :       '
                end
                object spbtnTarget_EngagementGuidance: TSpeedButton
                  Tag = 1
                  Left = 304
                  Top = 16
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object edtTargetRange_EngagementGuidance: TEdit
                  Tag = 6
                  Left = 112
                  Top = 43
                  Width = 41
                  Height = 22
                  TabOrder = 0
                  Text = '0.00'
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtTarget_EngagementGuidance: TEdit
                  Left = 112
                  Top = 17
                  Width = 169
                  Height = 22
                  ReadOnly = True
                  TabOrder = 1
                  Text = '[None]'
                end
              end
              object grbEvasionGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 4
                object Label51: TLabel
                  Left = 17
                  Top = 29
                  Width = 73
                  Height = 14
                  Caption = 'Target :       '
                end
                object spbtnTarget_EvasionGuidance: TSpeedButton
                  Tag = 1
                  Left = 304
                  Top = 16
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object edtTarget_EvasionGuidance: TEdit
                  Left = 75
                  Top = 25
                  Width = 206
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
              end
              object grbHelmGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 10
                object lblHelm: TLabel
                  Left = 16
                  Top = 19
                  Width = 74
                  Height = 14
                  Caption = 'Helm Angle : '
                end
                object Label16: TLabel
                  Left = 16
                  Top = 46
                  Width = 91
                  Height = 14
                  Caption = 'Ground Speed : '
                end
                object Label17: TLabel
                  Left = 166
                  Top = 19
                  Width = 21
                  Height = 14
                  Caption = 'deg'
                end
                object edtHelmAngle_HelmGuidance: TEdit
                  Tag = 5
                  Left = 112
                  Top = 15
                  Width = 50
                  Height = 22
                  TabOrder = 0
                  Text = '00.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cmbGroundSpeed_HelmGuidance: TComboBox
                  Tag = 3
                  Left = 112
                  Top = 42
                  Width = 115
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
              end
              object grbPatternOnPointGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 8
                object Label12: TLabel
                  Left = 16
                  Top = 19
                  Width = 112
                  Height = 14
                  Caption = 'Predefined Pattern :'
                end
                object spbtnPredefinedPattern_PatternOnPointGuidance: TSpeedButton
                  Left = 301
                  Top = 35
                  Width = 26
                  Height = 22
                  Caption = '...'
                  OnClick = PlatformDataClick
                end
                object Label13: TLabel
                  Left = 16
                  Top = 212
                  Width = 87
                  Height = 14
                  Caption = 'Angular Offset :'
                end
                object Label14: TLabel
                  Left = 166
                  Top = 212
                  Width = 21
                  Height = 14
                  Caption = 'deg'
                end
                object lbl1: TLabel
                  Left = 16
                  Top = 100
                  Width = 93
                  Height = 14
                  Caption = 'Anchor Position :'
                end
                object Label15: TLabel
                  Left = 20
                  Top = 153
                  Width = 72
                  Height = 14
                  Caption = 'Anchor Grid :'
                end
                object spbtnAnchorPosition_PatternOnPointGuidance: TSpeedButton
                  Tag = 2
                  Left = 304
                  Top = 104
                  Width = 23
                  Height = 22
                  Caption = '+'
                  OnClick = PlatformDataClick
                end
                object edtPredefinedPattern_PatternOnPointGuidance: TEdit
                  Left = 16
                  Top = 38
                  Width = 263
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
                object edtAngularOffset_PatternOnPointGuidance: TEdit
                  Tag = 4
                  Left = 121
                  Top = 208
                  Width = 41
                  Height = 22
                  TabOrder = 1
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtLatAnchor_PatternOnPointGuidance: TEdit
                  Left = 121
                  Top = 96
                  Width = 125
                  Height = 22
                  TabOrder = 2
                end
                object edtLongAnchor_PatternOnPointGuidance: TEdit
                  Left = 121
                  Top = 120
                  Width = 125
                  Height = 22
                  TabOrder = 3
                end
                object edtYanchor_PatternOnPointGuidance: TEdit
                  Left = 121
                  Top = 173
                  Width = 90
                  Height = 22
                  TabOrder = 4
                end
                object edtXanchor_PatternOnPointGuidance: TEdit
                  Left = 121
                  Top = 149
                  Width = 90
                  Height = 22
                  TabOrder = 5
                end
              end
              object grbPatternOnSelfGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 7
                object lblPredefined: TLabel
                  Left = 16
                  Top = 19
                  Width = 116
                  Height = 14
                  Caption = 'Predefined Pattern  :'
                end
                object lblAngular: TLabel
                  Left = 16
                  Top = 78
                  Width = 87
                  Height = 14
                  Caption = 'Angular Offset :'
                end
                object spbtnAngularOffset_PatternOnSelfGuidance: TSpeedButton
                  Left = 301
                  Top = 36
                  Width = 26
                  Height = 22
                  Caption = '...'
                  OnClick = PlatformDataClick
                end
                object Label5: TLabel
                  Left = 150
                  Top = 78
                  Width = 21
                  Height = 14
                  Caption = 'deg'
                end
                object edtPredefinedPattern_PatternOnSelfGuidance: TEdit
                  Left = 16
                  Top = 37
                  Width = 263
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
                object edtAngularOffset_PatternOnSelfGuidance: TEdit
                  Tag = 4
                  Left = 104
                  Top = 74
                  Width = 41
                  Height = 22
                  TabOrder = 1
                  OnKeyPress = PlatformDataKeyPress
                end
              end
              object grbPatternOnTargetGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 14
                object Label10: TLabel
                  Left = 16
                  Top = 19
                  Width = 112
                  Height = 14
                  Caption = 'Predefined Pattern :'
                end
                object Label11: TLabel
                  Left = 16
                  Top = 77
                  Width = 49
                  Height = 14
                  Caption = 'Target : '
                end
                object spbtnPredefinedPattern_PatternOnTargetGuidance: TSpeedButton
                  Left = 301
                  Top = 36
                  Width = 26
                  Height = 22
                  Caption = '...'
                  OnClick = PlatformDataClick
                end
                object spbtnTarget_PatternOnTargetGuidance: TSpeedButton
                  Tag = 1
                  Left = 301
                  Top = 73
                  Width = 26
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object LblAngularOffset: TLabel
                  Left = 16
                  Top = 107
                  Width = 91
                  Height = 14
                  Caption = 'Angular Offset : '
                end
                object Label58: TLabel
                  Left = 156
                  Top = 107
                  Width = 21
                  Height = 14
                  Caption = 'deg'
                end
                object edtPredefinedPattern_PatternOnTargetGuidance: TEdit
                  Left = 16
                  Top = 37
                  Width = 263
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
                object edtTarget_PatternOnTargetGuidance: TEdit
                  Left = 110
                  Top = 74
                  Width = 169
                  Height = 22
                  ReadOnly = True
                  TabOrder = 1
                  Text = '[None]'
                end
                object edtAngularOffset_PatternOnTargetGuidance: TEdit
                  Tag = 4
                  Left = 110
                  Top = 103
                  Width = 41
                  Height = 22
                  TabOrder = 2
                  Text = '0'
                  OnKeyPress = PlatformDataKeyPress
                end
              end
              object grbReturnToBaseGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 13
                object Label18: TLabel
                  Left = 16
                  Top = 19
                  Width = 87
                  Height = 14
                  Caption = 'Ground Speed :'
                end
                object lblBase: TLabel
                  Left = 18
                  Top = 48
                  Width = 33
                  Height = 14
                  Caption = 'Base :'
                end
                object spbtnBase_ReturnToBaseGuidance: TSpeedButton
                  Tag = 1
                  Left = 301
                  Top = 50
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object edtBase_ReturnToBaseGuidance: TEdit
                  Left = 112
                  Top = 44
                  Width = 168
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
                object cmbGroundSpeed_ReturnToBaseGuidance: TComboBox
                  Tag = 4
                  Left = 112
                  Top = 15
                  Width = 115
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
              end
              object grbShadowGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 2
                object Label45: TLabel
                  Left = 165
                  Top = 48
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object Label46: TLabel
                  Left = 16
                  Top = 48
                  Width = 83
                  Height = 14
                  Caption = 'Target Range :'
                end
                object Label47: TLabel
                  Left = 16
                  Top = 19
                  Width = 45
                  Height = 14
                  Caption = 'Target :'
                end
                object spbtnTarget_ShadowGuidance: TSpeedButton
                  Tag = 1
                  Left = 304
                  Top = 16
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object edtTargetRange_ShadowGuidance: TEdit
                  Tag = 6
                  Left = 112
                  Top = 44
                  Width = 48
                  Height = 22
                  TabOrder = 0
                  Text = '0.00'
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtTarget_ShadowGuidance: TEdit
                  Left = 112
                  Top = 15
                  Width = 169
                  Height = 22
                  ReadOnly = True
                  TabOrder = 1
                  Text = '[None]'
                end
              end
              object grbSinuateGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 1
                object Label39: TLabel
                  Left = 16
                  Top = 100
                  Width = 87
                  Height = 14
                  Caption = 'Ground Speed :'
                end
                object Label40: TLabel
                  Left = 167
                  Top = 46
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object Label41: TLabel
                  Left = 17
                  Top = 73
                  Width = 63
                  Height = 14
                  Caption = 'Amplitude :'
                end
                object Label42: TLabel
                  Left = 16
                  Top = 46
                  Width = 42
                  Height = 14
                  Caption = 'Period :'
                end
                object Label43: TLabel
                  Left = 16
                  Top = 19
                  Width = 74
                  Height = 14
                  Caption = 'Base Course :'
                end
                object Label44: TLabel
                  Left = 167
                  Top = 73
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object lbldegreesT: TLabel
                  Left = 167
                  Top = 19
                  Width = 33
                  Height = 14
                  Caption = 'deg T'
                end
                object edtPeriod_SinuateGuidance: TEdit
                  Tag = 11
                  Left = 112
                  Top = 42
                  Width = 50
                  Height = 22
                  TabOrder = 0
                  Text = '0.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cmbGroundSpeed_SinuateGuidance: TComboBox
                  Tag = 3
                  Left = 112
                  Top = 96
                  Width = 115
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
                object edtAmplitude_SinuateGuidance: TEdit
                  Tag = 12
                  Left = 112
                  Top = 69
                  Width = 50
                  Height = 22
                  TabOrder = 2
                  Text = '0.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtBaseCourse_SinuateGuidance: TEdit
                  Tag = 3
                  Left = 112
                  Top = 15
                  Width = 50
                  Height = 22
                  TabOrder = 3
                  Text = '000.0'
                  OnKeyPress = PlatformDataKeyPress
                end
              end
              object grbStationKeepOnPositionGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 15
                object Label20: TLabel
                  Left = 13
                  Top = 18
                  Width = 93
                  Height = 14
                  Caption = 'Anchor Position :'
                end
                object Label21: TLabel
                  Left = 13
                  Top = 74
                  Width = 76
                  Height = 14
                  Caption = 'Anchor  Grid :'
                end
                object spbtnAnchorPosition_StationKeepOnPositionGuidance: TSpeedButton
                  Tag = 2
                  Left = 303
                  Top = 18
                  Width = 23
                  Height = 22
                  Caption = '+'
                  OnClick = PlatformDataClick
                end
                object edtAnchorLat_StationKeepOnPositionGuidance: TEdit
                  Left = 121
                  Top = 14
                  Width = 125
                  Height = 22
                  TabOrder = 0
                end
                object cbxDriftsOnCurrent_StationKeepOnPositionGuidance: TCheckBox
                  Tag = 1
                  Left = 13
                  Top = 127
                  Width = 129
                  Height = 17
                  Caption = 'Drifts on Current'
                  TabOrder = 1
                  OnClick = PlatformDataClick
                end
                object edtAnchorLong_StationKeepOnPositionGuidance: TEdit
                  Left = 121
                  Top = 38
                  Width = 125
                  Height = 22
                  TabOrder = 2
                end
                object edtAnchorY_StationKeepOnPositionGuidance: TEdit
                  Left = 121
                  Top = 94
                  Width = 90
                  Height = 22
                  TabOrder = 3
                end
                object edtAnchorX_StationKeepOnPositionGuidance: TEdit
                  Left = 121
                  Top = 70
                  Width = 90
                  Height = 22
                  TabOrder = 4
                end
              end
              object grbOutRunGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 5
                object Label52: TLabel
                  Left = 16
                  Top = 19
                  Width = 45
                  Height = 14
                  Caption = 'Target :'
                end
                object spbtnTarget_OutRunGuidance: TSpeedButton
                  Tag = 1
                  Left = 304
                  Top = 16
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object edtTarget_OutRunGuidance: TEdit
                  Left = 75
                  Top = 15
                  Width = 206
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
              end
              object grbStationKeepOnTrackGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 12
                object Label19: TLabel
                  Left = 16
                  Top = 19
                  Width = 45
                  Height = 14
                  Caption = 'Target :'
                end
                object SpeedButton1: TSpeedButton
                  Tag = 1
                  Left = 304
                  Top = 18
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object lblNM: TLabel
                  Left = 158
                  Top = 46
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object lblDegrees: TLabel
                  Left = 158
                  Top = 73
                  Width = 21
                  Height = 14
                  Caption = 'deg'
                end
                object lblTArgetRange: TLabel
                  Left = 16
                  Top = 46
                  Width = 83
                  Height = 14
                  Caption = 'Target Range :'
                end
                object lblAngleOffset: TLabel
                  Left = 16
                  Top = 73
                  Width = 77
                  Height = 14
                  Caption = 'Angle Offset :'
                end
                object edtTarget_StationKeepOnTrackGuidance: TEdit
                  Left = 112
                  Top = 15
                  Width = 169
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                  Text = '[None]'
                end
                object edtTargetRange_StationKeepOnTrackGuidance: TEdit
                  Tag = 6
                  Left = 112
                  Top = 42
                  Width = 41
                  Height = 22
                  TabOrder = 1
                  Text = '0.00'
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtAngleOffset_StationKeepOnTrackGuidance: TEdit
                  Tag = 7
                  Left = 112
                  Top = 69
                  Width = 41
                  Height = 22
                  TabOrder = 2
                  Text = '0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cbxAbsoluteOffsiteAngle_StationKeepOnTrackGuidance: TCheckBox
                  Left = 16
                  Top = 108
                  Width = 129
                  Height = 17
                  Caption = 'Absolute Offsite Angle'
                  TabOrder = 3
                  OnClick = PlatformDataClick
                end
              end
              object grbStraightGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 6
                object lblCourse: TLabel
                  Left = 16
                  Top = 19
                  Width = 45
                  Height = 14
                  Caption = 'Course :'
                end
                object lblGroundSpeed: TLabel
                  Left = 16
                  Top = 46
                  Width = 87
                  Height = 14
                  Caption = 'Ground Speed :'
                end
                object Label57: TLabel
                  Left = 160
                  Top = 19
                  Width = 33
                  Height = 14
                  Caption = 'deg T'
                end
                object edtCourse_StraightGuidance: TEdit
                  Tag = 3
                  Left = 112
                  Top = 15
                  Width = 43
                  Height = 22
                  TabOrder = 0
                  Text = '00.00'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cmbGroundSpeed_StraightGuidance: TComboBox
                  Tag = 3
                  Left = 112
                  Top = 42
                  Width = 115
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
              end
              object grbWayPointGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 17
                object Bevel1: TBevel
                  Left = 16
                  Top = 24
                  Width = 24
                  Height = 3
                end
                object Label2: TLabel
                  Left = 17
                  Top = 101
                  Width = 45
                  Height = 14
                  Caption = 'Target :'
                end
                object spbtnTarget_WayPointGuidance: TSpeedButton
                  Tag = 1
                  Left = 304
                  Top = 89
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36090000424D360900000000000036000000280000001F000000180000000100
                    18000000000000090000000000000000000000000000000000006161613E3E3E
                    3737374040403B3B3B3A3A3A4141414141413A3A3A3A3A3A4040403737373E3E
                    3E3D3D3D3838384141413A3A3A3B3B3B4040403737373E3E3E3D3D3D38383841
                    41413A3A3A3B3B3B4040403737373E3E3E3C3C3C383838000000B2B2B27C7C7C
                    7474747F7F7F7878787777778080808080807878787878788080807474747C7C
                    7C7B7B7B7474748080807A7A7A7A7A7A7F7F7F7474747C7C7C7B7B7B74747480
                    80807777777979797F7F7F7474747D7D7D7A7A7A757575000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2BDBDBDBBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C04949
                    491111111111111111111212121212121A1A1AB2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29191914D4D4D5454545F5F
                    5F6565656262620000004747476565656363634D4D4D4D4D4D797979BABABAB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29797976969692929292929298686
                    86B2B2B2ADADAD0000007D7D7DB2B2B2ABABAB292929292929545454979797B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23D3D3D3B3B3BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B26A6A6A0E0E0EB2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B21616166F6F6FA5A5A5B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA94949413
                    13138A8A8AB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2A6A6A68B8B8B2C2C2C838383B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007F7F7FB4B4B4B2B2B2B2B2B2B2B2B2B2B2B2A7A7A727
                    27277272729C9C9CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BDBDBDB7B7B7B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD000000888888BBBBBBB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000B0B0B0B3B3B3B2B2B2B2B2B2BFBFBFB6B6
                    B6B2B2B2B1B1B19D9D9DADADADB3B3B3B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3BF
                    BFBF3030304C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000004F4F4F5151515151515151515858585353
                    53737373B2B2B2B2B2B2B2B2B28D8D8D51515151515151515151515152525258
                    58581616164C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B0000002424242525252525252525252525252525
                    25575757B2B2B2B2B2B2B2B2B27D7D7D25252525252525252525252525252525
                    25250909094C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B27B7B7B000000BBBBBBB6B6B6B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD171717848484B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B22C2C2C4C4C4CB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B29999995F5F5F5A5A5A949494B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B5B5B5B2B2B253
                    53535C5C5C828282B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B7B7B7AFAFAF00
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2030303757575B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A400
                    0000868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B29A9A9A4545454B4B4BB2B2B2B2B2B2B2B2
                    B2B2B2B2ADADAD0000007D7D7DB2B2B2B2B2B2B2B2B2B2B2B274747423232399
                    9999ACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B27A7A7A5A5A5A5555555555559494
                    94B5B5B5B4B4B4000000838383B7B7B7ADADAD555555555555585858646464B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B28282822121212121216D6D
                    6D9595959898980000006E6E6E9898988B8B8B2121212121215B5B5BB2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B23939
                    39000000000000000000000000000000090909B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B4B4B4000000D0D0D0B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A0A0
                    A0979797979797979797979797979797999999B2B2B2B2B2B2B2B2B2B2B2B2B2
                    B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
                  OnClick = PlatformDataClick
                end
                object Label53: TLabel
                  Left = 17
                  Top = 47
                  Width = 36
                  Height = 14
                  Caption = 'Type :'
                end
                object Label54: TLabel
                  Left = 152
                  Top = 74
                  Width = 21
                  Height = 14
                  Caption = 'deg'
                end
                object Label55: TLabel
                  Left = 17
                  Top = 74
                  Width = 52
                  Height = 14
                  Caption = 'Heading :'
                end
                object Label56: TLabel
                  Left = 45
                  Top = 17
                  Width = 65
                  Height = 14
                  Caption = 'Termination'
                end
                object Bevel2: TBevel
                  Left = 115
                  Top = 25
                  Width = 170
                  Height = 3
                end
                object edtTarget_WayPointGuidance: TEdit
                  Left = 87
                  Top = 97
                  Width = 169
                  Height = 22
                  ReadOnly = True
                  TabOrder = 0
                end
                object cmbType_WayPointGuidance: TComboBox
                  Tag = 6
                  Left = 87
                  Top = 43
                  Width = 174
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Continue'
                    'New Heading'
                    'Repeat Pattern Absolutely'
                    'Repeat Pattern Relatively'
                    'Return To Base'
                    'Remove Platform')
                end
                object edtRadius_WayPointGuidance: TEdit
                  Tag = 13
                  Left = 87
                  Top = 70
                  Width = 60
                  Height = 22
                  TabOrder = 2
                  OnKeyPress = PlatformDataKeyPress
                end
                object btnEditWaypoints_WayPointGuidance: TButton
                  Left = 157
                  Top = 154
                  Width = 128
                  Height = 25
                  Caption = 'Edit Waypoints'
                  TabOrder = 3
                  OnClick = btnEditWaypoints_WayPointGuidanceClick
                end
              end
              object grbZigZagGuidance: TGroupBox
                Left = 0
                Top = 0
                Width = 298
                Height = 327
                Align = alClient
                TabOrder = 11
                object Label35: TLabel
                  Left = 16
                  Top = 130
                  Width = 87
                  Height = 14
                  Caption = 'Ground Speed :'
                end
                object Label36: TLabel
                  Left = 160
                  Top = 73
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object lblAmplitude: TLabel
                  Left = 17
                  Top = 100
                  Width = 63
                  Height = 14
                  Caption = 'Amplitude :'
                end
                object lblPeriod: TLabel
                  Left = 16
                  Top = 73
                  Width = 42
                  Height = 14
                  Caption = 'Period :'
                end
                object lblLegLength: TLabel
                  Left = 16
                  Top = 19
                  Width = 71
                  Height = 14
                  Caption = 'Leg Length :'
                end
                object lblBaseCourse: TLabel
                  Left = 17
                  Top = 46
                  Width = 74
                  Height = 14
                  Caption = 'Base Course :'
                end
                object Label37: TLabel
                  Left = 160
                  Top = 100
                  Width = 17
                  Height = 14
                  Caption = 'nm'
                end
                object Label38: TLabel
                  Left = 160
                  Top = 46
                  Width = 33
                  Height = 14
                  Caption = 'deg T'
                end
                object edtPeriod_ZigZagGuidance: TEdit
                  Tag = 11
                  Left = 112
                  Top = 69
                  Width = 43
                  Height = 22
                  TabOrder = 0
                  Text = '0.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cmbGroundSpeed_ZigZagGuidance: TComboBox
                  Tag = 3
                  Left = 112
                  Top = 123
                  Width = 115
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 1
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Minimum'
                    'Cruise'
                    'High'
                    'Maximum')
                end
                object edtAmplitude_ZigZagGuidance: TEdit
                  Tag = 12
                  Left = 112
                  Top = 96
                  Width = 43
                  Height = 22
                  TabOrder = 2
                  Text = '0.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object edtBaseCourse_ZigZagGuidance: TEdit
                  Tag = 3
                  Left = 112
                  Top = 42
                  Width = 43
                  Height = 22
                  TabOrder = 3
                  Text = '000.0'
                  OnKeyPress = PlatformDataKeyPress
                end
                object cmbLegLength_ZigZagGuidance: TComboBox
                  Tag = 5
                  Left = 112
                  Top = 15
                  Width = 115
                  Height = 22
                  Style = csDropDownList
                  TabOrder = 4
                  OnChange = PlatformDataChange
                  Items.Strings = (
                    'Short'
                    'Long'
                    'Very Long')
                end
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 298
              Height = 43
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Panel1'
              TabOrder = 1
              object cbLateralGuid: TComboBox
                Tag = 2
                Left = 1
                Top = 15
                Width = 296
                Height = 22
                Style = csDropDownList
                TabOrder = 0
                OnChange = PlatformDataChange
                Items.Strings = (
                  'Straight/Heading'
                  'Pattern on Self'
                  'Pattern on Target '
                  'Pattern on Point'
                  'Helm Guidance'
                  'Return to Base'
                  'Station Keep on Track'
                  'Station Keep on Position'
                  'Circle on Track'
                  'Circle on Point'
                  'Zig-zag'
                  'Sinuate'
                  'Shadow'
                  'Engagement'
                  'Evasion'
                  'Outrun'
                  'Waypoint')
              end
            end
          end
          object tsDetection: TTabSheet
            Caption = 'Vertical'
            ImageIndex = 2
            object lAltitude: TLabel
              Left = 15
              Top = 18
              Width = 90
              Height = 14
              Caption = 'Altitude/Depth :'
            end
            object Label66: TLabel
              Left = 190
              Top = 19
              Width = 25
              Height = 14
              Caption = 'Feet'
            end
            object edAltitudeDepth: TEdit
              Tag = 14
              Left = 111
              Top = 15
              Width = 74
              Height = 22
              TabOrder = 0
              OnKeyPress = PlatformDataKeyPress
            end
          end
        end
        object btnBrowse: TBitBtn
          Left = 280
          Top = 24
          Width = 33
          Height = 25
          Caption = '...'
          TabOrder = 0
          OnClick = btnBrowseClick
        end
        object btnApply: TButton
          Left = 238
          Top = 472
          Width = 75
          Height = 25
          Caption = 'Deploy'
          TabOrder = 1
          Visible = False
          OnClick = btnApplyClick
        end
        object btnRemove: TButton
          Left = 157
          Top = 472
          Width = 75
          Height = 25
          Caption = 'Remove'
          TabOrder = 2
          Visible = False
          OnClick = btnRemoveClick
        end
      end
    end
    object pnlMap: TPanel
      Left = 325
      Top = 5
      Width = 1038
      Height = 528
      Align = alClient
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 330
      ExplicitWidth = 1033
      ExplicitHeight = 523
      object pnlToolBar: TPanel
        Left = 1
        Top = 1
        Width = 1036
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        Color = 2499101
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1031
        object ToolBar1: TToolBar
          Left = 14
          Top = 0
          Width = 1022
          Height = 23
          Align = alClient
          ButtonHeight = 23
          ButtonWidth = 30
          Caption = 'ToolBar1'
          Color = 2499101
          Images = ImageList1
          ParentColor = False
          TabOrder = 0
          ExplicitWidth = 1017
          object btnPrevious: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = 'Previous Platform'
            Caption = 'btnPrevious'
            ImageIndex = 11
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = btnPreviousClick
          end
          object btnNext: TToolButton
            Left = 30
            Top = 0
            Cursor = crHandPoint
            Hint = 'Next Platform'
            Caption = 'btnNext'
            ImageIndex = 12
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = btnNextClick
          end
          object btnLeftSeparator: TToolButton
            Left = 60
            Top = 0
            Width = 8
            Caption = 'btnLeftSeparator'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object btnDecreaseScale: TToolButton
            Left = 68
            Top = 0
            Cursor = crHandPoint
            Hint = 'Decrease Scale'
            Caption = 'btnDecreaseScale'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnDecreaseScaleClick
          end
          object cbbScale: TComboBox
            Left = 98
            Top = 0
            Width = 72
            Height = 22
            Hint = 'Map Scales'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = cbbScaleChange
            Items.Strings = (
              '0.125'
              '0.25'
              '0.5'
              '1'
              '2'
              '4'
              '8'
              '16'
              '32'
              '64'
              '128'
              '256'
              '512'
              '1024'
              '2048'
              '2500')
          end
          object btnIncreaseScale: TToolButton
            Left = 170
            Top = 0
            Cursor = crHandPoint
            Hint = 'Increase Scale'
            Caption = 'btnIncreaseScale'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnIncreaseScaleClick
          end
          object btnRightSeparator: TToolButton
            Left = 200
            Top = 0
            Width = 8
            Caption = 'btnRightSeparator'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object btnHook: TToolButton
            Left = 208
            Top = 0
            Cursor = crHandPoint
            Hint = 'Select Platform'
            Caption = 'btnSelectPlatform'
            ImageIndex = 31
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHookClick
          end
          object btnZoomTool: TToolButton
            Left = 238
            Top = 0
            Cursor = crHandPoint
            Hint = 'Zoom In / Out'
            Caption = 'btnZoomTool'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = btnZoomToolClick
          end
          object btnMoveTool: TToolButton
            Left = 268
            Top = 0
            Cursor = crHandPoint
            Hint = 'Move Tool'
            Caption = 'btnMoveTool'
            ImageIndex = 13
            ParentShowHint = False
            ShowHint = True
            OnClick = btnMoveToolClick
          end
          object btnCenterHook: TToolButton
            Left = 298
            Top = 0
            Cursor = crHandPoint
            Hint = 'Center Hook'
            Caption = 'btnCenterHook'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCenterHookClick
          end
          object btn_Ruler: TToolButton
            Left = 328
            Top = 0
            Caption = 'btn_Ruler'
            ImageIndex = 36
            OnClick = btn_RulerClick
          end
        end
        object pnlAlignToolBar: TPanel
          Left = 0
          Top = 0
          Width = 14
          Height = 23
          Align = alLeft
          BevelOuter = bvNone
          Color = 2499101
          ParentBackground = False
          TabOrder = 1
        end
      end
      object pnlCursorPosition: TPanel
        Left = 1
        Top = 444
        Width = 1036
        Height = 83
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 3
        Color = 2499101
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 439
        ExplicitWidth = 1031
        object grpCursorPosition: TGroupBox
          Left = 3
          Top = 3
          Width = 558
          Height = 77
          Align = alLeft
          Caption = 'Cursor Potition'
          Color = 2499101
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label59: TLabel
            Left = 12
            Top = 23
            Width = 120
            Height = 14
            Caption = 'Bearing From Center :'
          end
          object Label60: TLabel
            Left = 12
            Top = 49
            Width = 126
            Height = 14
            Caption = 'Distance From Center :'
          end
          object Label61: TLabel
            Left = 293
            Top = 23
            Width = 50
            Height = 14
            Caption = 'Position :'
          end
          object Label62: TLabel
            Left = 293
            Top = 51
            Width = 29
            Height = 14
            Caption = 'Grid :'
          end
          object lBearingFCenter: TLabel
            Left = 147
            Top = 23
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lDistanceFCenter: TLabel
            Left = 147
            Top = 49
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lPosLat: TLabel
            Left = 349
            Top = 23
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lGridLat: TLabel
            Left = 349
            Top = 51
            Width = 4
            Height = 14
            Caption = '-'
          end
          object Label63: TLabel
            Left = 194
            Top = 23
            Width = 56
            Height = 14
            Caption = 'degrees T'
          end
          object Label64: TLabel
            Left = 194
            Top = 51
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lPosLong: TLabel
            Left = 444
            Top = 23
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lGridLong: TLabel
            Left = 444
            Top = 51
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lbcenterx: TLabel
            Left = 299
            Top = 20
            Width = 4
            Height = 14
          end
          object lbcentery: TLabel
            Left = 299
            Top = 39
            Width = 4
            Height = 14
          end
        end
        object GroupBox1: TGroupBox
          Left = 581
          Top = 3
          Width = 452
          Height = 77
          Align = alClient
          Caption = 'Hooked Platform'
          Color = 2499101
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 447
          object Label65: TLabel
            Left = 12
            Top = 23
            Width = 39
            Height = 14
            Caption = 'Name :'
          end
          object Label67: TLabel
            Left = 12
            Top = 51
            Width = 50
            Height = 14
            Caption = 'Position :'
          end
          object Label68: TLabel
            Left = 278
            Top = 51
            Width = 29
            Height = 14
            Caption = 'Grid :'
          end
          object lbHookedName: TLabel
            Left = 70
            Top = 23
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lbHookedPosLat: TLabel
            Left = 70
            Top = 51
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lbHookedGridLat: TLabel
            Left = 311
            Top = 51
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lbHookedPosLong: TLabel
            Left = 159
            Top = 51
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lbHookedGridLong: TLabel
            Left = 395
            Top = 51
            Width = 4
            Height = 14
            Caption = '-'
          end
          object Label77: TLabel
            Left = 299
            Top = 20
            Width = 4
            Height = 14
          end
          object Label78: TLabel
            Left = 299
            Top = 39
            Width = 4
            Height = 14
          end
        end
        object Panel4: TPanel
          Left = 561
          Top = 3
          Width = 20
          Height = 77
          Align = alLeft
          BevelOuter = bvNone
          Color = 2499101
          ParentBackground = False
          TabOrder = 2
        end
      end
      object Map1: TMap
        Left = 1
        Top = 24
        Width = 1036
        Height = 420
        ParentColor = False
        Align = alClient
        TabOrder = 2
        OnMouseUp = Map1MouseUp
        OnMouseMove = Map1MouseMove
        OnMouseDown = Map1MouseDown
        OnDblClick = Map1DblClick
        OnDrawUserLayer = Map1DrawUserLayer
        ExplicitTop = 18
        ExplicitWidth = 1031
        ExplicitHeight = 415
        ControlData = {
          8A1A0600136B0000692B0000010000000F0000FF0D47656F44696374696F6E61
          727905456D70747900E8030000000000000000000002000E001E000000000000
          0000000000000000000000000000000000000000000600010000000000500001
          0100000A0000000001F4010000050000800C000000000000000000000000FFFF
          FF000100000000000000000000000000000000000000000000000352E30B918F
          CE119DE300AA004BB85101000000900170F3050005417269616C000352E30B91
          8FCE119DE300AA004BB8510100000090015C790C0005417269616C0000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FFFF000000000000000001370000000000FFFFFF000000000000000352E30B91
          8FCE119DE300AA004BB851010000009001DC7C010005417269616C000352E30B
          918FCE119DE300AA004BB851010200009001A42C02000957696E6764696E6773
          0000000000000001000100FFFFFF000200FFFFFF000000000000010000000000
          0118010000E8EE922801000000000000001C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008076
          C000000000008056C00000000000807640000000000080564001000000180100
          00E8EE922801000000000000001C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          88B3400000000000408F400000000000}
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 533
      Width = 1358
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
      object btnEditFormaions: TButton
        Left = 159
        Top = 10
        Width = 145
        Height = 28
        Caption = 'Edit &Formations...'
        TabOrder = 0
        Visible = False
        WordWrap = True
        OnClick = btnEditFormaionsClick
      end
      object btnScreenCapture: TButton
        Left = 8
        Top = 10
        Width = 145
        Height = 28
        Caption = 'Screen Capture ...'
        TabOrder = 1
        Visible = False
        OnClick = btnScreenCaptureClick
      end
      object Panel3: TPanel
        Left = 1173
        Top = 0
        Width = 185
        Height = 43
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object btnCancel: TButton
          Left = 30
          Top = 10
          Width = 145
          Height = 28
          Caption = 'Close'
          TabOrder = 0
          OnClick = btnCancelClick
        end
      end
    end
  end
  object ImageList1: TImageList
    BkColor = 14215660
    Left = 848
    Top = 72
    Bitmap = {
      494C01012500C000040010001000ECE9D800FF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC000000
      0000CCCCCC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00DDDDDD00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00A4A0A000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0042424200D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00DDDDDD00D8E9
      EC004D4D4D00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC002929
      2900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC0000000000D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC0000000000D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600A5A5A500ADADAD00A5A5A500A5A5A500CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD005A5A5A00737373006B6B6B0073737300ADADAD00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD005A5A5A00737373006B6B6B006B6B6B00ADADAD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC000000000000000000D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC0000000000D8E9EC00D7D7
      D700D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00B5B5B5005A5A5A006B6B6B006B6B6B0073737300B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00000000000000000000000000D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000D8E9EC00D8E9EC00D8E9
      EC003F3F3F00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD005A5A5A006B6B6B006363630073737300A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60042313100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00F7F7F700FFFFFF00F7F7
      F700F7F7F700BDBDBD005A5A5A00737373006B6B6B006B6B6B009C9C9C00E7E7
      E700FFFFFF00FFFFFF00F7F7F700FFFFFF00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00CECECE005A4A4A00DEDEDE00BDB5B500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009494940084848400949494008484
      84008C8C8C00737373006B6B6B00636363006B6B6B006B6B6B00737373009494
      94008C8C8C008C8C8C008C8C8C0094949400D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00ADA5A50052424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC000202
      0200D8E9EC00D8E9EC00D8E9EC004E4E4E00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006B6B6B006B6B6B006B6B6B006363
      63006B6B6B006B6B6B0073737300636363006B6B6B006B6B6B00636363006363
      63006B6B6B006B6B6B006B6B6B0073737300D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E70052424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006B6B6B00737373006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B0073737300737373006B6B6B00737373007373
      73006B6B6B006B6B6B006B6B6B0073737300D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F70052424200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006B6B6B0073737300636363006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006363
      63006B6B6B006B6B6B006B6B6B0073737300D8E9EC0000000000D8E9EC00D8E9
      EC00000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000011111100D8E9EC00D8E9EC00D8E9EC00D5D5
      D500D8E9EC00D8E9EC00D8E9EC00D8E9EC007373730073737300737373007373
      7300848484005A5A5A006B6B6B0063636300636363006B6B6B00636363007B7B
      7B006B6B6B006B6B6B00737373007B7B7B00D8E9EC0000000000D8E9EC00D8E9
      EC00000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0052424200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50052525200737373006B6B6B006B6B6B00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0052424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0007070700D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD005A5A5A006B6B6B006B6B6B00636363009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0052424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0057575700D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50063636300636363006B6B6B0073737300A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000202
      0200D8E9EC00D8E9EC00D8E9EC0053535300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B5005A5A5A00737373006B6B6B0063636300A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD0052525200737373006B6B6B006B6B6B00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C600FFFFFF00737373007373730073737300FFFFFF00FFFFFF00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000C6C6C600D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600FFFF
      FF00737373007373730063636300737373007373730063636300FFFFFF00FFFF
      FF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500CECECE00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C6000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00737373007373
      73007373730063636300C6C6C600FFFFFF00FFFFFF007373730073737300FFFF
      FF00FFFFFF00C6C6C600D8E9EC00D8E9EC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E7009C9C9C0094949400D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      0000C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000C6C6C6000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC007373730073737300636363006363
      6300C6C6C600FFFFFF007373730073737300FFFFFF00FFFFFF00737373007373
      7300FFFFFF00FFFFFF00D8E9EC00D8E9EC00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00FFFFFF00FFFFFF00FFFFFF00A5A5A500DEDEDE00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00C6C6C6000000000000000000D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000001818
      180000000000C6C6C600D8E9EC00D8E9EC0000000000D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006363630073737300C6C6C600FFFF
      FF007373730073737300737373007373730073737300FFFFFF00FFFFFF007373
      730073737300FFFFFF00FFFFFF00D8E9EC00FFFFFF00F7F7F700EFEFEF009C9C
      9C00DEDEDE00F7F7F700E7E7E700BDBDBD00EFEFEF00ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC000000000000000000C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000C6C6C60000000000D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0073737300FFFFFF00737373007373
      7300737373007373730073737300737373007373730073737300FFFFFF00FFFF
      FF007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00DEDE
      DE008C8C8C00EFEFEF0084848400DEDEDE00DEDEDE00A5A5A500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00C6C6C6000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6
      C600000000000000000000000000D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006363630073737300737373007373
      730073737300737373007373730073737300737373007373730073737300FFFF
      FF00FFFFFF007373730073737300D8E9EC00FFFFFF00FFFFFF00E7E7E700DEDE
      DE00EFEFEF0084848400C6C6C600CECECE00BDBDBD00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC0000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000C6C6C60000000000C6C6C600D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300FFFFFF0073737300FFFFFF00D8E9EC00FFFFFF00FFFFFF00EFEFEF00DEDE
      DE00CECECE00DEDEDE00D6D6D600E7E7E7008C8C8C00B5B5B500BDBDBD00BDBD
      BD00EFEFEF00FFFFFF00FFFFFF00FFFFFF00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9
      EC0000000000D8E9EC00000000001818180000000000D8E9EC00D8E9EC00D8E9
      EC00C6C6C60000000000D8E9EC00D8E9EC0063636300C6C6C600636363007373
      7300737373007373730073737300737373007373730073737300737373007373
      73007373730073737300FFFFFF00D8E9EC00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700CECECE00D6D6D600CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE008C8C
      8C00E7E7E700FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000C6C6C60000000000D8E9EC00000000001818180000000000C6C6C600D8E9
      EC00000000007373730000000000D8E9EC00D8E9EC0063636300C6C6C6007373
      7300737373007373730073737300737373007373730073737300737373007373
      73007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700CECECE00CECECE00CECECE00D6D6D600BDBDBD00DEDEDE0094949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000007373730063636300D8E9EC00D8E9EC00D8E9EC0063636300C6C6
      C600636363007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700CECECE00CECECE00C6C6C600CECECE00D6D6D600A5A5A500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000007373
      7300737373000000000000000000D8E9EC00D8E9EC00D8E9EC00C6C6C6006363
      6300D8E9EC007373730073737300737373007373730073737300737373007373
      7300737373006363630063636300D8E9EC00FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00C6C6C600C6C6C600CECECE00C6C6C600BDBDBD00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C6000000
      000000000000D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000737373007373
      73007373730000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0063636300C6C6C60063636300737373007373730073737300737373007373
      730063636300C6C6C600D8E9EC00D8E9EC00FFFFFF00FFFFFF00F7F7F700E7E7
      E700C6C6C600BDBDBD00C6C6C600DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000C6C6C600D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000737373007373
      73007373730000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C60063636300C6C6C60073737300737373006363630063636300D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00B5B5B500B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000007373730073737300000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00636363007373730063636300C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00E7E7E700FFFF
      FF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFFFF00F7F7F700B5B5
      B500FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9EC00D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00C6C6C600D8E9EC00BDBDBD00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00636363007373
      73007373730073737300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9
      EC00C6C6C600636363000000000039393900C6C6C600D8E9EC00C6C6C600D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC007373730000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000063636300D8E9EC00C6C6C60000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC005A5A5A00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7
      E700E7E7E70063636300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063636300D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC0000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7
      E700E7E7E70073737300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000073737300737373000000
      0000000000007373730073737300737373000000000000000000737373007373
      730000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC005A5A5A00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7
      E700E7E7E70063636300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000073737300737373000000
      0000737373007373730073737300737373007373730000000000737373007373
      730000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00000000000000
      000000000000C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00E7E7E700E7E7E70063636300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000073737300737373000000
      000073737300C6C6C600636363006B6B6B007373730000000000737373007373
      730000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00C6C6C600000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00E7E7E700E7E7E70063636300D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000073737300737373000000
      000063636300D8E9EC00C6C6C600737373007373730000000000737373007373
      730000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC006363630000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00C6C6
      C600D8E9EC00D8E9EC000000000073737300D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00000000000000000000000000C6C6C600D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00E7E7E700E7E7E70073737300C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000FFFFFF00FFFFFF000000
      0000000000007373730073737300737373000000000000000000FFFFFF00FFFF
      FF0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7E70063636300D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7E70063636300C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C6000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7E7007373
      7300D8E9EC00C6C6C600D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9
      EC007373730000000000FFFFFF007B7B7B0063636300D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00000000000000000000000000D8E9EC00D8E9EC000000000000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7E700E7E7
      E700636363007373730073737300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00636363000000000031313100C6C6C600D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7
      E700E7E7E700E7E7E70063636300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00005A5A5A00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7
      E700E7E7E700E7E7E70073737300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC005A5A5A00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E7
      E700E7E7E700E7E7E70063636300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5
      B500BDBDBD00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00BDBDBD00DEDEDE00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700D8E9EC00B5B5B500D6D6D600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C600D8E9EC00D8E9EC00D8E9EC009494940063636300636363007373
      730084848400D8E9EC00D8E9EC009C9C9C006363630073737300737373007373
      73006B6B6B00636363007B7B7B00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00BDBDBD009C9C9C009C9C
      9C00E7E7E700B5B5B500BDBDBD00D8E9EC00B5B5B500ADADAD00737373007373
      730094949400EFEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00949494008484
      8400D6D6D600FFFFFF00FFFFFF00FFFFFF00D6D6D60073737300737373007373
      730084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000C6C6C6000000000000000000D8E9EC00D8E9EC00C6C6C60000000000C6C6
      C6000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500A5A5
      A500737373006B6B6B00636363007373730073737300737373006B6B6B008C8C
      8C00EFEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009494
      940094949400E7E7E700D8E9EC009C9C9C006363630073737300737373008484
      8400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC000000000000000000000000007373730000000000D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009494
      940084848400D6D6D600EFEFEF00ADADAD00737373006B6B6B008C8C8C00EFEF
      EF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000D8E9EC000000000000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000C6C6C6000000000000000000000000000000000000000000C6C6C6000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC009494940094949400D6D6D60073737300737373007373730084848400BDBD
      BD00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000000000000000000063636300C6C6C60063636300000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5
      B500A5A5A50084848400A5A5A500737373006B6B6B008C8C8C00EFEFEF00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC009C9C9C0073737300737373007373730084848400D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC009C9C9C00737373006B6B6B0094949400EFEFEF00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0094949400636363007373730084848400D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00B5B5B500A5A5A5007B7B7B00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500BDBDBD00DEDEDE00F7F7
      F700F7F7F700F7F7F700F7F7F700D6D6D600B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5008C8C8C00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00FFFFFF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B50094949400848484008484
      84008484840084848400C6C6C600FFFFFF00D6D6D600B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5008484840073737300737373007373
      730073737300737373009C9C9C00FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009C9C9C0073737300737373007373
      730073737300737373007B7B7B00C6C6C600FFFFFF00D6D6D600B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      7300737373007373730073737300A5A5A500FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC007373730073737300737373007373
      73007373730073737300737373007B7B7B00C6C6C600DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      730073737300737373007373730073737300FFFFFF00B5B5B500B5B5B500B5B5
      B500BDBDBD00E7E7E700B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006B6B6B0073737300737373007373
      730073737300737373007373730073737300B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      730073737300737373007373730073737300FFFFFF00B5B5B500B5B5B500B5B5
      B5008C8C8C00FFFFFF00E7E7E700B5B5B500D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC006B6B6B0073737300737373007373
      730073737300737373007373730073737300B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      730073737300737373007373730063636300FFFFFF00BDBDBD00E7E7E700E7E7
      E70073737300A5A5A500FFFFFF00E7E7E700D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC006B6B6B0073737300737373007373
      73007373730073737300737373006B6B6B00ADADAD00DEDEDE00B5B5B500D6D6
      D600EFEFEF00EFEFEF00EFEFEF00EFEFEF007373730073737300737373007373
      73007373730073737300737373006B6B6B00CECECE0084848400A5A5A500A5A5
      A5007373730073737300A5A5A500FFFFFF00D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC000000
      0000000000000000000000000000D8E9EC006B6B6B0073737300737373007373
      73007373730073737300737373006B6B6B0094949400BDBDBD009C9C9C008C8C
      8C00949494009494940094949400BDBDBD007373730073737300737373007373
      73007373730073737300636363009C9C9C00BDBDBD006B6B6B00636363007373
      7300737373007373730063636300D6D6D600D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC000000
      0000000000000000000000000000000000008484840073737300737373007373
      730073737300737373006B6B6B0084848400ADADAD00B5B5B500949494006B6B
      6B006B6B6B006B6B6B006B6B6B008C8C8C009494940063636300636363007373
      730073737300636363009C9C9C00B5B5B500E7E7E70094949400949494009494
      9400636363007373730094949400B5B5B500D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00ADADAD007B7B7B00636363006B6B
      6B00737373006B6B6B0084848400ADADAD00CECECE00D6D6D600ADADAD009C9C
      9C009C9C9C009C9C9C009C9C9C00A5A5A500B5B5B500949494009C9C9C007373
      7300C6C6C60094949400C6C6C60084848400FFFFFF00B5B5B500B5B5B500BDBD
      BD006363630094949400B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00B5B5B500A5A5A500A5A5A5008C8C
      8C00A5A5A500BDBDBD00ADADAD009C9C9C00B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD006363
      6300FFFFFF00BDBDBD008C8C8C006B6B6B00FFFFFF00B5B5B500B5B5B500BDBD
      BD008C8C8C00B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500B5B5B500B5B5B5008C8C
      8C00B5B5B500DEDEDE009C9C9C0073737300B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5006B6B
      6B00FFFFFF008C8C8C009494940073737300FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500B5B5B500B5B5B5008C8C
      8C00BDBDBD00BDBDBD00949494008C8C8C00B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5006363
      6300B5B5B5008C8C8C00BDBDBD0063636300FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500B5B5B500B5B5B5008C8C
      8C00848484009C9C9C00ADADAD008C8C8C00ADADAD00DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD006363
      630094949400B5B5B500BDBDBD0063636300FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500B5B5B500B5B5B5008C8C
      8C0084848400ADADAD00B5B5B5008C8C8C00ADADAD00DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD008C8C
      8C00B5B5B500B5B5B500BDBDBD0063636300DEDEDE00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500B5B5B500B5B5B500A5A5
      A500A5A5A500B5B5B500B5B5B5008C8C8C009C9C9C00C6C6C600B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B5008C8C8C00BDBDBD00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00B5B5B500D8E9EC00D8E9EC00D8E9EC00B5B5B500D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C600C6C6C600C6C6
      C600CECECE00C6C6C600C6C6C600C6C6C600CECECE00C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00000000000000000000000000000000000000000000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00A5A5A500E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00C6C6C600D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C6000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0073737300737373000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000006363
      63007373730000000000C6C6C600D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00000000000000
      0000D8E9EC000000000000000000000000000000000000000000D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000FFFFFF000000
      000000000000FFFFFF00B5B5B50000000000B5B5B500FFFFFF00B5B5B5000000
      0000000000007373730000000000D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00D8E9
      EC00D8E9EC00BDBDBD00B5B5B500D8E9EC00D8E9EC00C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      0000FFFFFF00B5B5B500FFFFFF0000000000FFFFFF00B5B5B500FFFFFF00FFFF
      FF00000000000000000000000000C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00FFFFFF00B5B5
      B500ADADAD00FFFFFF00CECECE00D8E9EC00D8E9EC0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC000000
      0000D8E9EC000000000000000000000000000000000000000000D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000063636300C6C6C600FFFF
      FF0000000000FFFFFF00B5B5B500FFFFFF00B5B5B500FFFFFF00C6C6C6000000
      0000737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300FFFFFF00BDBD
      BD006B6B6B00EFEFEF00FFFFFF00BDBDBD0000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFFFFF00C6C6C600FFFFFF00C6C6C600636363007373
      7300737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5B5
      B5006363630073737300EFEFEF00F7F7F700000000000000000000000000D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFFFFF006363630073737300737373007373
      7300737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD0000000000737373006B6B6B00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC0000000000D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000737373007373
      7300737373007373730073737300000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00FFFFFF00B5B5
      B5000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC0000000000D8E9
      EC0000000000D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9EC000000
      000000000000D8E9EC00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      00007373730073737300737373000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000063636300FFFFFF00D8E9
      EC006B6B6B00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC000000
      0000D8E9EC0000000000D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC0000000000D8E9EC0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000D8E9EC000000000000000000F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70000000000000000006B6B6B00FFFFFF00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9EC000000
      000000000000D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000D8E9EC006B6B6B006B6B6B00737373007373
      73007373730073737300737373006B6B6B000000000063636300D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000000000007B7B7B0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000D8E9EC000000000000000000737373000000
      00007373730000000000000000006363630073737300D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000005A5A5A00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00007373730063636300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000000000000000
      000000000000D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00000000000000000000000000000000000000000000000000D8E9
      EC0000000000FFFFFF0000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC0000000000000000000000000000000000D8E9EC000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00BDBD
      BD00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500BDBDBD00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC003131
      3100C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC009C9C9C00080808006B6B
      6B00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5B5B500C6C6C600D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC006363
      630063636300D8E9EC00D8E9EC00D8E9EC00B5B5B5005252520010101000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00A5A5A5000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC009C9C9C0010101000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00ADADAD0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC009C9C9C0010101000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00ADADAD00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC0000000000D8E9EC00C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC009C9C9C0018181800BDBDBD00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00ADADAD0000000000ADADAD000000
      000000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC006363
      630063636300D8E9EC00D8E9EC00D8E9EC00B5B5B5005252520010101000D8E9
      EC00B5B5B500D8E9EC00A5A5A5000000000008080800D8E9EC00D8E9EC00ADAD
      AD0000000000D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC0000000000000000000000
      000000000000D8E9EC0000000000000000000000000000000000D8E9EC000000
      0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000003131
      3100C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00A5A5A500525252000000
      0000000000000000000008080800D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000D8E9EC0000000000D8E9EC0000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0084848400D8E9EC0084848400D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000084848400D8E9EC00D8E9
      EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0084848400D8E9
      EC00D8E9EC008484840000000000D8E9EC00848484008484840084848400D8E9
      EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0084848400D8E9
      EC00D8E9EC008484840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000084848400D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC008484840000000000D8E9EC00D8E9EC00D8E9EC008484840084848400D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC008484840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000C6C6C600D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000008484
      840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000008484
      840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000008484
      840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000008484
      840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0084848400848484000000
      000000000000D8E9EC00848484008484840084848400D8E9EC00000000000000
      0000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC0084848400D8E9EC000000
      000000000000D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00000000000000
      0000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC0000000000848484000000
      000000000000D8E9EC00000000000000000000000000D8E9EC00000000000000
      00000000000084848400D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000084848400D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00000000008484
      8400000000008484840084848400D8E9EC00D8E9EC00D8E9EC00C6C6C6000000
      0000D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9
      EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC008484840000000000D8E9EC0084848400D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000C6C6C600D8E9EC00D8E9EC00D8E9EC0000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC000000000000000000C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC008484840000000000D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00848484008484840084848400000000008484840084848400D8E9EC008484
      8400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9EC000000
      0000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00000000000000000000000000D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9EC000000
      0000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000084848400D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC008484
      8400D8E9EC000000000084848400D8E9EC00848484000000000084848400D8E9
      EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0084848400D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC008484
      8400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC000000000000000000D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC00000000000000000000000000D8E9EC00000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC008484840084848400D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC0000000000D8E9EC0084848400D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC0000000000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00FFFFFF00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC0000000000D8E9EC00D8E9EC008484
      8400D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D6C6C600D6C6C600D6BDBD00DEBD
      C600DEBDBD00E7BDC600D6ADB500E7C6C600FFD6DE00D6B5BD00E7C6C600D6B5
      BD00D6BDBD00D6B5BD00D6B5BD00CEBDBD00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00CEB5BD0029080800391018002100
      0000310810004210180029000000390810002100000031080800391018002900
      080039101800210000004221290021080800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00B5B5B5007B7B7B00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC00DEC6C60021000000FFFFFF00FFE7
      EF00FFF7FF00FFD6E700FFF7FF00FFD6F70039103900FFDEFF00FFF7FF00F7D6
      E700FFFFFF00FFF7FF00FFDEE70031081000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC008C8C8C000000000084848400B5B5B500D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC000000000000000000D8E9EC00CEBDC60031080800FFEFEF00FFF7
      FF00EFE7FF00FFF7FF00F7E7FF0021085A001808630010084A00EFE7FF00F7E7
      FF00F7E7FF00FFFFFF00FFE7F70031001000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00B5B5B5008484840000000000000000000000000094949400D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00000000000000000000000000D8E9EC00C6BDBD0021000000FFFFFF00FFF7
      FF00F7F7FF00E7E7FF0018184A0000005A00000063000810520000003900F7F7
      FF00F7F7FF00E7E7F700FFFFFF0021000800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0094949400000000000000000000000000000000000000000084848400B5B5
      B500D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00BDBDB50039181000FFEFEF00DED6
      EF00E7EFFF00F7F7FF00D6DEFF00E7F7FF0008215200E7F7FF00D6EFFF00EFEF
      FF00DEDEF700F7F7FF00EFDEF70039001800D8E9EC00D8E9EC00D8E9EC008C8C
      8C00000000000000000000000000000000000000000000000000000000009494
      9400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00C6C6C60042181800FFF7FF00DECE
      F70018215200DEE7FF00EFF7FF00BDCEF70008214200BDDEF700D6F7FF00D6E7
      FF0021214200EFEFFF00FFEFFF0039001800D8E9EC00D8E9EC00D8E9EC002121
      2100212121002121210000000000000000000000000021212100212121002121
      2100D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00BDBDCE0018000800F7CEF7002918
      5A0000005200EFEFFF00D6E7FF00DEF7FF00B5D6F700D6FFFF00BDDEF700E7EF
      FF0010084A0018183900FFEFFF0039001800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00CEC6D60031082100421042002110
      5A00181063001008420018214A00ADBDE700DEFFFF00C6E7F70010294A001010
      520018105200101031003929390021000800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D6BDCE0031000800FFD6F7003918
      520021084A00FFF7FF00EFE7FF00F7F7FF00E7EFFF00EFFFFF00CED6EF00EFDE
      FF001808390018103100FFFFFF0039001800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D6BDC60042080800FFF7FF00F7D6
      FF0029184200EFDEFF00FFF7FF00E7DEFF0008083100DEE7FF00F7FFFF00DECE
      F70031214A00EFE7FF00F7E7F70039081800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00BDB5B50039100800FFE7E700FFFF
      FF00E7DEF700FFFFFF00DED6F700F7EFFF0008104A00EFF7FF00CEDEFF00F7F7
      FF00EFEFFF00FFFFFF00EFDEEF0031001000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00BDC6BD0029100800FFFFF700F7EF
      F700F7FFFF00EFEFFF002118420000004A00101863000008420008103900F7FF
      FF00DEE7EF00DEE7EF00FFFFFF0031001000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6CED60018000000FFE7E700EFEF
      F700DEE7F700FFFFFF00D6D6FF0018186B000800630010185A00CED6FF00E7EF
      FF00F7F7FF00FFFFFF00FFF7FF0021000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00080808000808080008080800D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5ADB50039181000FFFFF700FFF7
      F700FFFFFF00EFE7EF00FFF7FF00EFDEFF0018106300D6CEFF00FFF7FF00F7E7
      F700FFF7F700E7EFE700FFF7F70039081000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEC6C60042080000390000003910
      0800180000002900000029000800210021001800180018001000210808003108
      080031101000080800002921180039081000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF00E7FF000000000000DFFF000000000000
      BBFF0000000000007DFF0000000000005EFF000000000000D77F000000000000
      EFBF000000000000F7DF000000000000F9EF000000000000FCF7000000000000
      FEBB000000000000FF7D000000000000FFBE000000000000FFCD000000000000
      FFEB000000000000FFF70000000000000000FFFF0000FFFF0000FFF30000FFFF
      0000FFE90000AFFF0000FFD1000077FF0000F8230000FBFF0000E7870000FDFF
      0000C7C70000EEFF0000DFEF0000F7FF0000BFF70000FBFF0000B0370000FCEF
      0000B0370000FF770000BFF70000FFBB0000DFEF0000FFDD0000DFEF0000FFEE
      0000E79F0000FFF30000F87F0000FFFBFFFFFFFFF01F0000FC1FDFFFC00F0000
      E00F1FCF80030000E003878F00030000C463C35F00010000CE71E0BF00000000
      9E71E17F000100008E71F87F00010000BE7DB47300010000FE7F021180000000
      FE7F0701C0000000FE7F6781C8010000FE7FC703F0030000FCBFC703F01F0000
      FDBFFC07FC3F0000FE7FFE1FFFFF0000FFFFD777FFFFD7FFFAFFC000FFFFC1FF
      B0579FFC9FF7C3FF0007BFFE8FFFC3FF0007BFFE87F7C1FF0007BFFEC3EFF0FF
      0007BFFCE38FF8FF04078EECF09FFC3F00078001F83FFE3F0007FF7FFC3FFF0F
      0007FF7FF03FFF8B904FFE3FF18FFFC0F87FF80F83CFFFE1FFFFFC1F87E7FFE0
      FFFFFE3F8FF7FFE1FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
      FFFFFFFFFFFF0200F7FFFFFFF7F70601E7FFFFFFE1C38103E0FFEF7FE9D3C007
      E07FE71FE183C007E00FE11FE003E20FE007E007E823E00FE01FE10FE003F00F
      E07FE31FF007E01FE1FFE77FF9CFF83FE7FFFF7FF9CFF83FFFFFFFFFFFFFF87F
      FFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFF00003C00FFFFC1FF00000000FFFF
      FEFF00000000FFFF7F7F00000000FFFF7F7F00000000E31F7F7B00000000E31F
      7F7B00000000E31F7F6100000000E31FBEE000000000E31FC1FB00000000E31F
      F77B00000000E31FF67F00000000E31FF57F00000000E31FF37F00000000FFFF
      F77F00000000FFFFFF7F00000000FFFFF77FFDBFFFFFFF7F803FF01FFFFFF80F
      001FF00F002FC007001FC00F7FEFC001001FC00F482F80010019800F7FEF8000
      0001800F682F00000000000F7FEF00000000100F7F6F00000001F00F6EAE0000
      0003F00F556400000017F01F6ABA8001001FF03F257C8001003FF87FFAFCC001
      007FFCFFFDFAE001E3FFFFFFFE04F811BFFDFFFFFFFFFFFFB7EDFFFFFFFFFFFF
      D7EBFFFFFFFF803FE7E7FFFFFFFF001F8421FFEF9FFF001FFBDFEFE78F9F001F
      F66FC1E71E07001EF5AFC3F73F07001CF5AFC7F73F870018F66FCAF71F070018
      FBDFDCE71467001C8421FF0781FF001EE7E7FFFFFFFF1B1FD7EBFFFFFFFF0A1F
      B7EDFFFFFFFF843F7FFEFFFFFFFFF1FF7FFD7FFDFFFFFFFF37D917D9FE7FF81F
      97D397D3FE1FF3CFC7C7C7C7FC1FEFF7844BA6CBFF7FDC3B844386C1CE739BD9
      F2BFFEFBC738F66DF4DFF02F8000B5ADF45FF01FCF79B5ADF2DFFEFFEE7BF66D
      E91BF6EFFF3FBBD9844386C3FC1FDC3BE7CFE64FFE3FEFF7D7D7D7D5FF7FF3CF
      B7DAB7DAFFFFF81F5FFD6DFDFFFFFFFF0000FFFFFFFFFFFF0000FCFFFFFFFFF3
      0000FC3FFF1FFFE90000F03FFF1FFFD10000F00FFF1FF8230000E00FFF1FE787
      0000E00FFF1FCFC70000FC7FFF1FDCEF0000FC7FFF1FBCF70000FC7FF803B037
      0000FC7FFC07B0370000FC7FFE0FBCF70000FC7FFF1FDCEF0000FC7FFFBFDFEF
      0000FFFFFFBFE79F0000FFFFFFFFF87F00000000000000000000000000000000
      000000000000}
  end
end
