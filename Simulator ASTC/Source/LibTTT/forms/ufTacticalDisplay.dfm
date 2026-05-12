object frmTacticalDisplay: TfrmTacticalDisplay
  Left = 44
  Top = -238
  BorderStyle = bsToolWindow
  Caption = 
    'Tactical Display - Ahmad Yani - Cubicle 3, Station 6 [Command Pl' +
    'atform: Arctic Passage 3] '
  ClientHeight = 1026
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 616
    Top = 312
    Width = 105
    Height = 105
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 49
    Width = 341
    Height = 904
    Align = alLeft
    BevelKind = bkFlat
    BevelOuter = bvNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    object TacticalDisplayControlPanel: TPageControl
      Left = 0
      Top = 305
      Width = 337
      Height = 595
      Hint = 'tes'
      ActivePage = tsWeapon
      Align = alClient
      Images = ImageList2
      TabHeight = 30
      TabOrder = 1
      OnChange = TacticalDisplayControlPanelChange
      OnMouseLeave = TacticalDisplayControlPanelMouseLeave
      OnMouseMove = TacticalDisplayControlPanelMouseMove
      object tsOwnShip: TTabSheet
        inline fmOwnShip1: TfmOwnShip
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited ScrollBox4: TScrollBox
            Width = 329
            Height = 555
            ExplicitWidth = 329
            ExplicitHeight = 555
            inherited Label34: TLabel
              Width = 20
              Caption = 'feet'
              ExplicitWidth = 20
            end
            inherited Label37: TLabel
              Width = 20
              Caption = 'feet'
              ExplicitWidth = 20
            end
            inherited StaticText23: TStaticText [27]
            end
            inherited StaticText16: TStaticText [28]
            end
            inherited StaticText21: TStaticText [29]
            end
            inherited StaticText22: TStaticText [30]
            end
            inherited btnLaunch: TButton
              OnClick = fmOwnShip1btnLaunchClick
            end
          end
        end
        object pnlInfoDepth: TPanel
          Left = 7
          Top = 185
          Width = 130
          Height = 40
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object StaticText23: TStaticText
            Left = 10
            Top = 24
            Width = 66
            Height = 17
            Caption = 'Actual Depth'
            TabOrder = 0
          end
          object StaticText22: TStaticText
            Left = 10
            Top = 1
            Width = 76
            Height = 17
            Caption = 'Ordered Depth'
            TabOrder = 1
          end
        end
      end
      object tsPlatformGuidance: TTabSheet
        ImageIndex = 1
        inline fmPlatformGuidance1: TfmPlatformGuidance
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited PanelGuidanceControlChoices: TPanel
            Width = 329
            ExplicitWidth = 329
            inherited SpeedButton2: TSpeedButton
              OnClick = fmPlatformGuidance1SpeedButton2Click
            end
          end
          inherited PanelPlatformGuidance: TPanel
            Width = 329
            Height = 514
            ExplicitWidth = 329
            ExplicitHeight = 514
            inherited grpStation: TGroupBox [0]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited sbOnTrackAnchorMode: TSpeedButton
                OnClick = fmPlatformGuidance1sbOnTrackAnchorModeClick
              end
              inherited pnlStationPosition: TPanel
                inherited btnStationAnchorPosition: TSpeedButton
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A
                    FFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC8
                    7AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                    0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
                    C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
                  OnClick = fmPlatformGuidance1btnStationAnchorPositionClick
                end
              end
              inherited pnlStationTrack: TPanel
                inherited sbOnTrackAnchorTrack: TSpeedButton
                  OnClick = fmPlatformGuidance1sbOnTrackAnchorTrackClick
                end
              end
            end
            inherited gbWaypoint: TGroupBox [1]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited btnWaypoint: TButton
                Top = 187
                OnClick = fmPlatformGuidance1btnWaypointClick
                ExplicitTop = 187
              end
            end
            inherited grbEngagement: TGroupBox [2]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited sbEngageTrackToEngage: TSpeedButton
                OnClick = fmPlatformGuidance1sbEngageTrackToEngageClick
              end
            end
            inherited grbEvasion: TGroupBox [3]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited sbTrackToEvade: TSpeedButton
                OnClick = fmPlatformGuidance1sbTrackToEvadeClick
              end
            end
            inherited grbFormation: TGroupBox [4]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
            end
            inherited grbHelm: TGroupBox [5]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited Label129: TLabel
                Width = 39
                Caption = 'degrees'
                ExplicitWidth = 39
              end
              inherited StaticText88: TStaticText [20]
              end
              inherited StaticText89: TStaticText [21]
              end
              inherited StaticText90: TStaticText [22]
              end
              inherited StaticText91: TStaticText [23]
              end
              inherited StaticText92: TStaticText [24]
              end
              inherited StaticText93: TStaticText [25]
              end
              inherited StaticText94: TStaticText [26]
              end
              inherited edtOrderedHelmAngle: TEdit [27]
              end
              inherited StaticText95: TStaticText [28]
              end
              inherited StaticText96: TStaticText [29]
              end
              inherited StaticText97: TStaticText [30]
              end
              inherited StaticText98: TStaticText [31]
              end
              inherited Panel2: TPanel [32]
              end
              inherited Panel1: TPanel [33]
              end
              inherited edtHelmOrderedGroundSpeed: TEdit [34]
              end
            end
            inherited grbOutrun: TGroupBox [6]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited sbTrackToOutrun: TSpeedButton
                OnClick = fmPlatformGuidance1sbTrackToOutrunClick
              end
            end
            inherited grbReturnToBase: TGroupBox [7]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
            end
            inherited grbSinuation: TGroupBox [8]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
            end
            inherited grbStraightLine: TGroupBox [9]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited ScrollBox5: TScrollBox
                Width = 325
                Height = 497
                ExplicitWidth = 325
                ExplicitHeight = 497
                inherited whHeading: TVrWheel
                  OnChange = fmPlatformGuidance1whHeadingChange
                end
                inherited Label128: TLabel
                  Top = 152
                  ExplicitTop = 152
                end
                inherited Label126: TLabel
                  Top = 130
                  ExplicitTop = 130
                end
                inherited Label125: TLabel
                  Top = 193
                  ExplicitTop = 193
                end
                inherited Label124: TLabel
                  Top = 172
                  ExplicitTop = 172
                end
                inherited Label122: TLabel
                  Top = 108
                  ExplicitTop = 108
                end
                inherited panAltitude: TPanel
                  inherited edOrderAltitude: TEdit
                    OnKeyPress = fmPlatformGuidance1edOrderAltitudeKeyPress
                  end
                end
                inherited panDepth: TPanel
                  inherited lbl4: TLabel
                    Top = 26
                    ExplicitTop = 26
                  end
                end
                inherited edtStraightLineOrderedGroundSpeed: TEdit
                  OnKeyPress = fmPlatformGuidance1edtStraightLineOrderedGroundSpeedKeyPress
                end
                inherited edtStraightLineOrderedHeading: TEdit
                  OnKeyPress = fmPlatformGuidance1edtStraightLineOrderedHeadingKeyPress
                end
              end
            end
            inherited grbZigZag: TGroupBox [10]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
            end
            inherited grbShadow: TGroupBox
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
            end
            inherited grpCircle: TGroupBox [12]
              Width = 329
              Height = 514
              ExplicitWidth = 329
              ExplicitHeight = 514
              inherited ScrollBox1: TScrollBox
                Width = 325
                Height = 497
                ExplicitWidth = 325
                ExplicitHeight = 497
                inherited btnCircleMode: TSpeedButton
                  Left = 218
                  Top = 18
                  OnClick = fmPlatformGuidance1btnCircleModeClick
                  ExplicitLeft = 218
                  ExplicitTop = 18
                end
                inherited pnlTrack: TPanel [12]
                  inherited sbCircleOnTrackTrack: TSpeedButton
                    OnClick = fmPlatformGuidance1sbCircleOnTrackTrackClick
                  end
                end
                inherited pnlPosition: TPanel [13]
                  inherited sbCircleOnPositionPosition: TSpeedButton
                    OnClick = fmPlatformGuidance1sbCircleOnPositionPositionClick
                  end
                end
                inherited edtCircleRadius: TEdit
                  Top = 145
                  ExplicitTop = 145
                end
              end
            end
          end
          inherited pmGuidance: TPopupMenu
            inherited mnStraightLine1: TMenuItem
              OnClick = fmPlatformGuidance1mnStraightLine1Click
            end
            inherited mnZigzag1: TMenuItem
              inherited Short1: TMenuItem
                OnClick = fmPlatformGuidance1Short1Click
              end
              inherited Long1: TMenuItem
                OnClick = fmPlatformGuidance1Long1Click
              end
              inherited VeryLong1: TMenuItem
                OnClick = fmPlatformGuidance1VeryLong1Click
              end
            end
            inherited mnOutrun1: TMenuItem
              OnClick = fmPlatformGuidance1mnOutrun1Click
            end
          end
        end
      end
      object tsSensor: TTabSheet
        ImageIndex = 2
        inline fmSensor1: TfmSensor
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited PanelSpace: TPanel
            Top = 111
            Width = 329
            Height = 0
            ExplicitTop = 111
            ExplicitWidth = 329
            ExplicitHeight = 0
          end
          inherited PanelSensorChoices: TPanel
            Width = 329
            Height = 111
            ExplicitWidth = 329
            ExplicitHeight = 111
            inherited lstSensor: TListView
              Width = 327
              Height = 109
              Font.Color = clActiveCaption
              ParentFont = False
              ExplicitWidth = 327
              ExplicitHeight = 109
            end
          end
          inherited PanelALL: TPanel
            Top = 111
            Width = 329
            Height = 444
            ExplicitTop = 111
            ExplicitWidth = 329
            ExplicitHeight = 444
            inherited PanelSensorControl: TPanel
              Width = 329
              Height = 444
              ExplicitWidth = 329
              ExplicitHeight = 444
              inherited grbVisualDetectorSensor: TGroupBox [0]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited Label258: TLabel
                  Left = 160
                  ExplicitLeft = 160
                end
                inherited Label259: TLabel
                  Left = 62
                  ExplicitLeft = 62
                end
                inherited sbVisualDetectorDisplayRangeShow: TSpeedButton
                  Left = 35
                  Width = 89
                  Height = 23
                  OnClick = OnVisualShowClick
                  ExplicitLeft = 35
                  ExplicitWidth = 89
                  ExplicitHeight = 23
                end
                inherited sbVisualDetectorDisplayRangeHide: TSpeedButton
                  Left = 35
                  Top = 65
                  Width = 89
                  Height = 23
                  OnClick = OnVisualShowClick
                  ExplicitLeft = 35
                  ExplicitTop = 65
                  ExplicitWidth = 89
                  ExplicitHeight = 23
                end
                inherited sbVisualDetectorDisplayBlindZonesShow: TSpeedButton
                  Left = 141
                  Width = 89
                  Height = 23
                  OnClick = OnVisualShowClick
                  ExplicitLeft = 141
                  ExplicitWidth = 89
                  ExplicitHeight = 23
                end
                inherited sbVisualDetectorDisplayBlindZonesHide: TSpeedButton
                  Left = 141
                  Top = 65
                  Width = 89
                  Height = 23
                  OnClick = OnVisualShowClick
                  ExplicitLeft = 141
                  ExplicitTop = 65
                  ExplicitWidth = 89
                  ExplicitHeight = 23
                end
              end
              inherited grbSonarControl: TGroupBox [1]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox2: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Bevel43: TBevel
                    Left = 51
                    Top = 207
                    ExplicitLeft = 51
                    ExplicitTop = 207
                  end
                  inherited Label213: TLabel
                    Left = 6
                    Top = -3
                    ExplicitLeft = 6
                    ExplicitTop = -3
                  end
                  inherited Label214: TLabel
                    Left = 49
                    Top = 8
                    ExplicitLeft = 49
                    ExplicitTop = 8
                  end
                  inherited Label237: TLabel
                    Left = 9
                    Top = 201
                    ExplicitLeft = 9
                    ExplicitTop = 201
                  end
                  inherited Label238: TLabel
                    Left = 84
                    Top = 211
                    ExplicitLeft = 84
                    ExplicitTop = 211
                  end
                  inherited Label239: TLabel
                    Left = 182
                    Top = 211
                    ExplicitLeft = 182
                    ExplicitTop = 211
                  end
                  inherited sbDisplayBlindHide: TSpeedButton
                    Left = 165
                    Top = 245
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 165
                    ExplicitTop = 245
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbDisplayBlindShow: TSpeedButton
                    Left = 165
                    Top = 224
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 165
                    ExplicitTop = 224
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbDisplayRangeHide: TSpeedButton
                    Left = 58
                    Top = 245
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 58
                    ExplicitTop = 245
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbDisplayRangeShow: TSpeedButton
                    Left = 58
                    Top = 224
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 58
                    ExplicitTop = 224
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbSonarControlModeActive: TSpeedButton
                    Left = 21
                    Top = 22
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 21
                    ExplicitTop = 22
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbSonarControlModeOff: TSpeedButton
                    Left = 21
                    Top = 64
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 21
                    ExplicitTop = 64
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbSonarControlModePassive: TSpeedButton
                    Left = 21
                    Top = 43
                    Width = 86
                    Height = 23
                    OnClick = OnSonarBtnClick
                    ExplicitLeft = 21
                    ExplicitTop = 43
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited pnlDeployment: TPanel
                    Left = 3
                    Top = 92
                    Height = 114
                    ExplicitLeft = 3
                    ExplicitTop = 92
                    ExplicitHeight = 114
                    inherited Bevel39: TBevel
                      Left = 66
                      Top = 6
                      ExplicitLeft = 66
                      ExplicitTop = 6
                    end
                    inherited Bevel41: TBevel
                      Left = 195
                      Top = 15
                      Width = 113
                      ExplicitLeft = 195
                      ExplicitTop = 15
                      ExplicitWidth = 113
                    end
                    inherited Bevel42: TBevel
                      Left = 169
                      Top = 62
                      ExplicitLeft = 169
                      ExplicitTop = 62
                    end
                    inherited Label215: TLabel
                      Left = 42
                      Top = 12
                      ExplicitLeft = 42
                      ExplicitTop = 12
                    end
                    inherited Label216: TLabel
                      Top = -2
                      ExplicitTop = -2
                    end
                    inherited Label221: TLabel
                      Left = 133
                      Top = 24
                      ExplicitLeft = 133
                      ExplicitTop = 24
                    end
                    inherited Label222: TLabel
                      Left = 133
                      Top = 40
                      ExplicitLeft = 133
                      ExplicitTop = 40
                    end
                    inherited Label223: TLabel
                      Left = 256
                      Top = 24
                      ExplicitLeft = 256
                      ExplicitTop = 24
                    end
                    inherited Label224: TLabel
                      Left = 256
                      Top = 40
                      ExplicitLeft = 256
                      ExplicitTop = 40
                    end
                    inherited Label226: TLabel
                      Left = 17
                      Top = 72
                      ExplicitLeft = 17
                      ExplicitTop = 72
                    end
                    inherited Label228: TLabel
                      Left = 133
                      Top = 69
                      ExplicitLeft = 133
                      ExplicitTop = 69
                    end
                    inherited Label229: TLabel
                      Left = 133
                      Top = 83
                      ExplicitLeft = 133
                      ExplicitTop = 83
                    end
                    inherited Label232: TLabel
                      Left = 256
                      Top = 69
                      ExplicitLeft = 256
                      ExplicitTop = 69
                    end
                    inherited Label233: TLabel
                      Left = 256
                      Top = 84
                      ExplicitLeft = 256
                      ExplicitTop = 84
                    end
                    inherited Label234: TLabel
                      Left = 133
                      Top = 99
                      ExplicitLeft = 133
                      ExplicitTop = 99
                    end
                    inherited Label236: TLabel
                      Left = 256
                      Top = 99
                      ExplicitLeft = 256
                      ExplicitTop = 99
                    end
                    inherited LabelCablePayout: TLabel
                      Left = 125
                      Top = 9
                      ExplicitLeft = 125
                      ExplicitTop = 9
                    end
                    inherited LabelDepth: TLabel
                      Left = 126
                      Top = 55
                      ExplicitLeft = 126
                      ExplicitTop = 55
                    end
                    inherited lbCableActual: TLabel
                      Left = 212
                      Top = 40
                      ExplicitLeft = 212
                      ExplicitTop = 40
                    end
                    inherited lbDepthActual: TLabel
                      Top = 84
                      ExplicitTop = 84
                    end
                    inherited lbDepthSettled: TLabel
                      Top = 69
                      ExplicitTop = 69
                    end
                    inherited lbDepthTow: TLabel
                      Top = 99
                      ExplicitTop = 99
                    end
                    inherited lblStatusDeployment: TLabel
                      Left = 58
                      Top = 72
                      ExplicitLeft = 58
                      ExplicitTop = 72
                    end
                    inherited sbDeploymentActiondeploy: TSpeedButton
                      Left = 21
                      Top = 26
                      Width = 78
                      OnClick = OnSonarBtnClick
                      ExplicitLeft = 21
                      ExplicitTop = 26
                      ExplicitWidth = 78
                    end
                    inherited sbDeploymentActionShow: TSpeedButton
                      Left = 21
                      Top = 46
                      Width = 78
                      OnClick = OnSonarBtnClick
                      ExplicitLeft = 21
                      ExplicitTop = 46
                      ExplicitWidth = 78
                    end
                    inherited editCableOrdered: TEdit
                      Left = 212
                      Top = 20
                      Width = 40
                      ExplicitLeft = 212
                      ExplicitTop = 20
                      ExplicitWidth = 40
                    end
                  end
                end
              end
              inherited grbIFFTransponderControl: TGroupBox [2]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox6: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Bevel8: TBevel
                    Top = 9
                    ExplicitTop = 9
                  end
                  inherited Bevel9: TBevel
                    Top = 92
                    ExplicitTop = 92
                  end
                  inherited Label14: TLabel
                    Top = 2
                    ExplicitTop = 2
                  end
                  inherited Label15: TLabel
                    Left = 43
                    Top = 18
                    ExplicitLeft = 43
                    ExplicitTop = 18
                  end
                  inherited Label16: TLabel
                    Top = 84
                    ExplicitTop = 84
                  end
                  inherited sbIFFTransponderControlModeOff: TSpeedButton
                    Left = 10
                    Top = 53
                    Width = 89
                    Height = 23
                    OnClick = fmSensor1sbIFFTransponderControlModeOffClick
                    ExplicitLeft = 10
                    ExplicitTop = 53
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbIFFTransponderControlModeOn: TSpeedButton
                    Left = 10
                    Top = 32
                    Width = 89
                    Height = 23
                    OnClick = fmSensor1sbIFFTransponderControlModeOnClick
                    ExplicitLeft = 10
                    ExplicitTop = 32
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited cbIFFTransponderControlMode1: TCheckBox
                    Top = 105
                    ExplicitTop = 105
                  end
                  inherited cbIFFTransponderControlMode2: TCheckBox
                    Top = 127
                    ExplicitTop = 127
                  end
                  inherited cbIFFTransponderControlMode3: TCheckBox
                    Top = 149
                    ExplicitTop = 149
                  end
                  inherited cbIFFTransponderControlMode3C: TCheckBox
                    Top = 170
                    ExplicitTop = 170
                  end
                  inherited cbIFFTransponderControlMode4: TCheckBox
                    Top = 191
                    ExplicitTop = 191
                  end
                  inherited edtIFFTransponderControlMode1: TEdit
                    Top = 103
                    Text = '0000'
                    ExplicitTop = 103
                  end
                  inherited edtIFFTransponderControlMode2: TEdit
                    Top = 125
                    ExplicitTop = 125
                  end
                  inherited edtIFFTransponderControlMode3: TEdit
                    Top = 147
                    ExplicitTop = 147
                  end
                end
              end
              inherited grbESMSensorControl: TGroupBox [3]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox4: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Label7: TLabel
                    Left = 48
                    Top = 19
                    ExplicitLeft = 48
                    ExplicitTop = 19
                  end
                  inherited Label8: TLabel
                    Top = 87
                    ExplicitTop = 87
                  end
                  inherited Bevel4: TBevel
                    Top = 94
                    ExplicitTop = 94
                  end
                  inherited Label9: TLabel
                    Left = 32
                    Top = 103
                    ExplicitLeft = 32
                    ExplicitTop = 103
                  end
                  inherited sbESMSensorControlModeOn: TSpeedButton
                    Left = 15
                    Top = 34
                    Width = 89
                    Height = 23
                    OnClick = btnESMOnClick
                    ExplicitLeft = 15
                    ExplicitTop = 34
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbESMSensorControlModeOff: TSpeedButton
                    Left = 15
                    Top = 55
                    Width = 89
                    Height = 23
                    OnClick = btnESMOnClick
                    ExplicitLeft = 15
                    ExplicitTop = 55
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbESMSensorDisplayBlindZoneShow: TSpeedButton
                    Top = 118
                    Width = 89
                    Height = 23
                    OnClick = btnESMOnClick
                    ExplicitTop = 118
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbESMSensorDisplayBlindZoneHide: TSpeedButton
                    Top = 139
                    Width = 89
                    Height = 23
                    OnClick = btnESMOnClick
                    ExplicitTop = 139
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                end
              end
              inherited grbElectroOpticalSensor: TGroupBox [4]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox3: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Label2: TLabel
                    Left = 54
                    Top = 20
                    ExplicitLeft = 54
                    ExplicitTop = 20
                  end
                  inherited Label4: TLabel
                    Left = 161
                    Top = 102
                    ExplicitLeft = 161
                    ExplicitTop = 102
                  end
                  inherited Label5: TLabel
                    Left = 64
                    Top = 102
                    ExplicitLeft = 64
                    ExplicitTop = 102
                  end
                  inherited sbElectroOpticalSensorDisplayRangeShow: TSpeedButton
                    Top = 118
                    Width = 89
                    Height = 23
                    OnClick = btnEOOnClick
                    ExplicitTop = 118
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbElectroOpticalSensorDisplayRangeHide: TSpeedButton
                    Top = 139
                    Width = 89
                    Height = 23
                    OnClick = btnEOOnClick
                    ExplicitTop = 139
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbElectroOpticalSensorBlindZoneShow: TSpeedButton
                    Top = 118
                    Width = 89
                    Height = 23
                    OnClick = btnEOOnClick
                    ExplicitTop = 118
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbElectroOpticalSensorBlindZoneHide: TSpeedButton
                    Top = 139
                    Width = 89
                    Height = 23
                    OnClick = btnEOOnClick
                    ExplicitTop = 139
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbElectroOpticalSensorControlModeOn: TSpeedButton
                    Left = 33
                    Top = 36
                    Width = 89
                    Height = 23
                    OnClick = btnEOOnClick
                    ExplicitLeft = 33
                    ExplicitTop = 36
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbElectroOpticalSensorControlModeOff: TSpeedButton
                    Left = 33
                    Top = 57
                    Width = 89
                    Height = 23
                    OnClick = btnEOOnClick
                    ExplicitLeft = 33
                    ExplicitTop = 57
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                end
              end
              inherited grbAnomalyDetectorSensor: TGroupBox [5]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited Label230: TLabel
                  Left = 48
                  ExplicitLeft = 48
                end
                inherited sbAnomalyDetectorControlModeOn: TSpeedButton
                  Left = 16
                  Width = 89
                  Height = 23
                  OnClick = btnMADOnClick
                  ExplicitLeft = 16
                  ExplicitWidth = 89
                  ExplicitHeight = 23
                end
                inherited sbAnomalyDetectorControlModeOff: TSpeedButton
                  Left = 16
                  Width = 89
                  Height = 23
                  OnClick = btnMADOnClick
                  ExplicitLeft = 16
                  ExplicitWidth = 89
                  ExplicitHeight = 23
                end
              end
              inherited grbSonobuoyControl: TGroupBox [6]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox7: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Bevel12: TBevel
                    Top = 155
                    ExplicitTop = 155
                  end
                  inherited btnSonobuoyControlCombo: TSpeedButton
                    Left = 278
                    Width = 25
                    ExplicitLeft = 278
                    ExplicitWidth = 25
                  end
                  inherited Label21: TLabel
                    Top = 98
                    ExplicitTop = 98
                  end
                  inherited Label22: TLabel
                    Top = 98
                    ExplicitTop = 98
                  end
                  inherited Label23: TLabel
                    Top = 147
                    ExplicitTop = 147
                  end
                  inherited Label24: TLabel
                    Top = 166
                    ExplicitTop = 166
                  end
                  inherited Label25: TLabel
                    Top = 188
                    ExplicitTop = 188
                  end
                  inherited Label26: TLabel
                    Top = 166
                    ExplicitTop = 166
                  end
                  inherited Label27: TLabel
                    Top = 188
                    ExplicitTop = 188
                  end
                  inherited lblSonobuoyMonitorCurrently: TLabel
                    Top = 188
                    ExplicitTop = 188
                  end
                  inherited lblSonobuoyMonitorPlatform: TLabel
                    Top = 166
                    ExplicitTop = 166
                  end
                  inherited btnSonobuoyControlDeploy: TButton
                    Left = 220
                    Top = 122
                    Width = 84
                    Height = 24
                    OnClick = OnSoonobuoyBtnClick
                    ExplicitLeft = 220
                    ExplicitTop = 122
                    ExplicitWidth = 84
                    ExplicitHeight = 24
                  end
                  inherited editControlDepth: TEdit
                    Top = 94
                    ExplicitTop = 94
                  end
                end
              end
              inherited grbSearchRadarControl: TGroupBox [7]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox1: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Bevel28: TBevel
                    Left = 45
                    Width = 251
                    ExplicitLeft = 45
                    ExplicitWidth = 251
                  end
                  inherited Label193: TLabel
                    Left = 41
                    Top = 12
                    ExplicitLeft = 41
                    ExplicitTop = 12
                  end
                  inherited Label194: TLabel
                    Left = 236
                    Top = 14
                    ExplicitLeft = 236
                    ExplicitTop = 14
                  end
                  inherited Label261: TLabel
                    Top = 184
                    ExplicitTop = 184
                  end
                  inherited Bevel31: TBevel
                    Left = 46
                    Top = 189
                    Width = 248
                    ExplicitLeft = 46
                    ExplicitTop = 189
                    ExplicitWidth = 248
                  end
                  inherited Label262: TLabel
                    Left = 47
                    Top = 194
                    ExplicitLeft = 47
                    ExplicitTop = 194
                  end
                  inherited Label263: TLabel
                    Left = 136
                    Top = 194
                    ExplicitLeft = 136
                    ExplicitTop = 194
                  end
                  inherited Label264: TLabel
                    Left = 231
                    Top = 194
                    ExplicitLeft = 231
                    ExplicitTop = 194
                  end
                  inherited btnControlComboInterval: TSpeedButton
                    Left = 266
                    Top = 91
                    Width = 24
                    Height = 21
                    ExplicitLeft = 266
                    ExplicitTop = 91
                    ExplicitWidth = 24
                    ExplicitHeight = 21
                  end
                  inherited sbControlEccmOn: TSpeedButton
                    Left = 207
                    Top = 29
                    Width = 83
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 207
                    ExplicitTop = 29
                    ExplicitWidth = 83
                    ExplicitHeight = 23
                  end
                  inherited sbControlEccmOff: TSpeedButton
                    Left = 207
                    Top = 50
                    Width = 83
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 207
                    ExplicitTop = 50
                    ExplicitWidth = 83
                    ExplicitHeight = 23
                  end
                  inherited sbRangeShow: TSpeedButton
                    Left = 21
                    Top = 208
                    Width = 86
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 21
                    ExplicitTop = 208
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbRangeHide: TSpeedButton
                    Left = 21
                    Top = 229
                    Width = 86
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 21
                    ExplicitTop = 229
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbBlindShow: TSpeedButton
                    Left = 119
                    Top = 208
                    Width = 86
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 119
                    ExplicitTop = 208
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbBlindHide: TSpeedButton
                    Left = 119
                    Top = 229
                    Width = 86
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 119
                    ExplicitTop = 229
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbScanShow: TSpeedButton
                    Left = 214
                    Top = 208
                    Width = 86
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 214
                    ExplicitTop = 208
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited sbScanHide: TSpeedButton
                    Left = 214
                    Top = 229
                    Width = 86
                    Height = 23
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 214
                    ExplicitTop = 229
                    ExplicitWidth = 86
                    ExplicitHeight = 23
                  end
                  inherited pnlControlRadar: TPanel [18]
                    Left = 12
                    Top = 27
                    Width = 88
                    Height = 67
                    ExplicitLeft = 12
                    ExplicitTop = 27
                    ExplicitWidth = 88
                    ExplicitHeight = 67
                    inherited btnControlModeOff2: TSpeedButton
                      Left = 0
                      Top = 21
                      Width = 85
                      ExplicitLeft = 0
                      ExplicitTop = 21
                      ExplicitWidth = 85
                    end
                    inherited btnControlModeOn: TSpeedButton
                      Left = 0
                      Top = 0
                      Width = 85
                      Height = 23
                      ExplicitLeft = 0
                      ExplicitTop = 0
                      ExplicitWidth = 85
                      ExplicitHeight = 23
                    end
                  end
                  inherited pnlControlModeRadar2: TPanel [19]
                    Left = 11
                    Top = 27
                    Height = 68
                    ExplicitLeft = 11
                    ExplicitTop = 27
                    ExplicitHeight = 68
                    inherited sbControlModeSearch: TSpeedButton
                      Left = 1
                      Top = 2
                      Width = 86
                      Height = 23
                      OnClick = OnRadarBtnClick
                      ExplicitLeft = 1
                      ExplicitTop = 2
                      ExplicitWidth = 86
                      ExplicitHeight = 23
                    end
                    inherited sbControlModeTrack: TSpeedButton
                      Left = 1
                      Top = 23
                      Width = 86
                      Height = 23
                      OnClick = OnRadarBtnClick
                      ExplicitLeft = 1
                      ExplicitTop = 23
                      ExplicitWidth = 86
                      ExplicitHeight = 23
                    end
                    inherited sbControlModeOff: TSpeedButton
                      Left = 1
                      Top = 44
                      Width = 86
                      Height = 23
                      OnClick = OnRadarBtnClick
                      ExplicitLeft = 1
                      ExplicitTop = 44
                      ExplicitWidth = 86
                      ExplicitHeight = 23
                    end
                  end
                  inherited pnlScanSector: TPanel [20]
                    Left = 6
                    Top = 115
                    Height = 65
                    ExplicitLeft = 6
                    ExplicitTop = 115
                    ExplicitHeight = 65
                    inherited Bevel30: TBevel
                      Top = 5
                      Width = 194
                      ExplicitTop = 5
                      ExplicitWidth = 194
                    end
                    inherited Label200: TLabel
                      Top = -3
                      ExplicitTop = -3
                    end
                    inherited Label201: TLabel
                      Left = 40
                      Top = 11
                      ExplicitLeft = 40
                      ExplicitTop = 11
                    end
                    inherited sbScanModePartial: TSpeedButton
                      Left = 12
                      Top = 43
                      Width = 79
                      OnClick = OnRadarBtnClick
                      ExplicitLeft = 12
                      ExplicitTop = 43
                      ExplicitWidth = 79
                    end
                    inherited sbScanModeFull: TSpeedButton
                      Left = 12
                      Top = 23
                      Width = 79
                      OnClick = OnRadarBtnClick
                      ExplicitLeft = 12
                      ExplicitTop = 23
                      ExplicitWidth = 79
                    end
                    inherited Label202: TLabel
                      Left = 129
                      Top = 21
                      ExplicitLeft = 129
                      ExplicitTop = 21
                    end
                    inherited Label203: TLabel
                      Left = 129
                      Top = 42
                      ExplicitLeft = 129
                      ExplicitTop = 42
                    end
                    inherited Label205: TLabel
                      Left = 203
                      Top = 43
                      ExplicitLeft = 203
                      ExplicitTop = 43
                    end
                    inherited Label204: TLabel
                      Left = 202
                      Top = 21
                      ExplicitLeft = 202
                      ExplicitTop = 21
                    end
                    inherited btnComboScanStrart: TSpeedButton
                      Left = 260
                      Top = 19
                      Width = 24
                      Height = 20
                      ExplicitLeft = 260
                      ExplicitTop = 19
                      ExplicitWidth = 24
                      ExplicitHeight = 20
                    end
                    inherited editScanStart: TEdit
                      Left = 166
                      Top = 17
                      ParentFont = False
                      ExplicitLeft = 166
                      ExplicitTop = 17
                    end
                    inherited editScanEnd: TEdit
                      Left = 166
                      Top = 38
                      ParentFont = False
                      ExplicitLeft = 166
                      ExplicitTop = 38
                    end
                  end
                  inherited cbActivationInterval: TCheckBox
                    Left = 23
                    Top = 96
                    Height = 14
                    ExplicitLeft = 23
                    ExplicitTop = 96
                    ExplicitHeight = 14
                  end
                  inherited editComboInterval: TEdit
                    Left = 135
                    Top = 92
                    ExplicitLeft = 135
                    ExplicitTop = 92
                  end
                  inherited btShowRangeAltitude: TButton
                    Left = 23
                    Top = 253
                    Height = 21
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 23
                    ExplicitTop = 253
                    ExplicitHeight = 21
                  end
                  inherited btExecuteSingleScan: TButton
                    Left = 188
                    Top = 253
                    Height = 21
                    OnClick = OnRadarBtnClick
                    ExplicitLeft = 188
                    ExplicitTop = 253
                    ExplicitHeight = 21
                  end
                end
              end
              inherited grbIFFInterrogatorControl: TGroupBox [8]
                Width = 323
                Height = 438
                ExplicitWidth = 323
                ExplicitHeight = 438
                inherited ScrollBox5: TScrollBox
                  Width = 319
                  Height = 421
                  ExplicitWidth = 319
                  ExplicitHeight = 421
                  inherited Bevel5: TBevel
                    Top = 6
                    ExplicitTop = 6
                  end
                  inherited Bevel6: TBevel
                    Top = 119
                    ExplicitTop = 119
                  end
                  inherited Bevel7: TBevel
                    Top = 78
                    ExplicitTop = 78
                  end
                  inherited btnIFFInterrogatorTrackSearch: TSpeedButton
                    Left = 93
                    Top = 84
                    Width = 32
                    Height = 24
                    OnClick = fmSensor1btnIFFInterrogatorTrackSearchClick
                    ExplicitLeft = 93
                    ExplicitTop = 84
                    ExplicitWidth = 32
                    ExplicitHeight = 24
                  end
                  inherited Label10: TLabel
                    Top = -1
                    ExplicitTop = -1
                  end
                  inherited Label11: TLabel
                    Left = 47
                    Top = 11
                    ExplicitLeft = 47
                    ExplicitTop = 11
                  end
                  inherited Label12: TLabel
                    Top = 111
                    ExplicitTop = 111
                  end
                  inherited Label13: TLabel
                    Top = 70
                    ExplicitTop = 70
                  end
                  inherited sbIFFInterrogatorControlModeOff: TSpeedButton
                    Left = 16
                    Top = 46
                    Width = 89
                    Height = 23
                    OnClick = fmSensor1sbIFFInterrogatorControlModeOffClick
                    ExplicitLeft = 16
                    ExplicitTop = 46
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbIFFInterrogatorControlModeOn: TSpeedButton
                    Left = 16
                    Top = 25
                    Width = 89
                    Height = 23
                    OnClick = fmSensor1sbIFFInterrogatorControlModeOnClick
                    ExplicitLeft = 16
                    ExplicitTop = 25
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited btnManual: TSpeedButton
                    Left = 154
                    Top = 48
                    Width = 89
                    Height = 23
                    ExplicitLeft = 154
                    ExplicitTop = 48
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited btnAutomatic: TSpeedButton
                    Left = 154
                    Top = 27
                    Width = 89
                    Height = 23
                    ExplicitLeft = 154
                    ExplicitTop = 27
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited lblInterrogation: TLabel
                    Left = 167
                    Top = 13
                    ExplicitLeft = 167
                    ExplicitTop = 13
                  end
                  inherited cbbtnIFFInterrogatorMode1: TCheckBox
                    Left = 13
                    Top = 130
                    OnClick = fmSensor1cbbtnIFFInterrogatorMode1Click
                    ExplicitLeft = 13
                    ExplicitTop = 130
                  end
                  inherited cbbtnIFFInterrogatorMode2: TCheckBox
                    Left = 13
                    Top = 151
                    OnClick = fmSensor1cbbtnIFFInterrogatorMode1Click
                    ExplicitLeft = 13
                    ExplicitTop = 151
                  end
                  inherited cbbtnIFFInterrogatorMode3: TCheckBox
                    Left = 13
                    Top = 172
                    OnClick = fmSensor1cbbtnIFFInterrogatorMode1Click
                    ExplicitLeft = 13
                    ExplicitTop = 172
                  end
                  inherited cbbtnIFFInterrogatorMode3C: TCheckBox
                    Left = 13
                    Top = 192
                    OnClick = fmSensor1cbbtnIFFInterrogatorMode1Click
                    ExplicitLeft = 13
                    ExplicitTop = 192
                  end
                  inherited cbbtnIFFInterrogatorMode4: TCheckBox
                    Left = 13
                    Top = 212
                    OnClick = fmSensor1cbbtnIFFInterrogatorMode1Click
                    ExplicitLeft = 13
                    ExplicitTop = 212
                  end
                  inherited editbtnIFFInterrogatorTrack: TEdit
                    Left = 12
                    Top = 86
                    ExplicitLeft = 12
                    ExplicitTop = 86
                  end
                  inherited edtIFFInterrogatorMode1: TEdit
                    Top = 127
                    OnKeyPress = fmSensor1edtIFFInterrogatorMode1KeyPress
                    ExplicitTop = 127
                  end
                  inherited edtIFFInterrogatorMode2: TEdit
                    Left = 87
                    Top = 149
                    OnKeyPress = fmSensor1edtIFFInterrogatorMode1KeyPress
                    ExplicitLeft = 87
                    ExplicitTop = 149
                  end
                  inherited edtIFFInterrogatorMode3: TEdit
                    Left = 87
                    Top = 171
                    OnKeyPress = fmSensor1edtIFFInterrogatorMode1KeyPress
                    ExplicitLeft = 87
                    ExplicitTop = 171
                  end
                end
              end
            end
          end
          inherited pmModeSonobuoy: TPopupMenu
            Left = 232
            Top = 440
          end
        end
      end
      object tsWeapon: TTabSheet
        ImageIndex = 3
        object VrAnalogClock1: TVrAnalogClock
          Left = 136
          Top = 176
          Width = 90
          Height = 90
          Threaded = True
          Visible = False
        end
        inline fmWeapon1: TfmWeapon
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited PanelWeaponChoices: TPanel
            Width = 329
            ExplicitWidth = 329
            inherited btnWeapon: TSpeedButton
              OnClick = fmWeapon1btnWeaponClick
            end
          end
          inherited PanelALL: TPanel
            Width = 329
            Height = 533
            ExplicitWidth = 329
            ExplicitHeight = 533
            inherited PanelTacticalWeapons: TPanel
              Width = 329
              Height = 533
              ExplicitWidth = 329
              ExplicitHeight = 533
              inherited grbTacticalAcousticTorpedos: TGroupBox [0]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited Label439: TLabel
                  Left = 5
                  Top = 8
                  ExplicitLeft = 5
                  ExplicitTop = 8
                end
                inherited lblTacticalAcousticTorpedosStatus: TLabel
                  Left = 23
                  Top = 25
                  ExplicitLeft = 23
                  ExplicitTop = 25
                end
                inherited Label455: TLabel
                  Left = 125
                  Top = 25
                  ExplicitLeft = 125
                  ExplicitTop = 25
                end
                inherited lbTacticalAcousticTorpedosQuantity: TLabel
                  Left = 181
                  Top = 25
                  ExplicitLeft = 181
                  ExplicitTop = 25
                end
                inherited Label460: TLabel
                  Left = 5
                  Top = 100
                  ExplicitLeft = 5
                  ExplicitTop = 100
                end
                inherited Bevel91: TBevel
                  Left = 45
                  Top = 108
                  Width = 253
                  ExplicitLeft = 45
                  ExplicitTop = 108
                  ExplicitWidth = 253
                end
                inherited Label461: TLabel
                  Left = 23
                  Top = 122
                  ExplicitLeft = 23
                  ExplicitTop = 122
                end
                inherited Label462: TLabel
                  Left = 5
                  Top = 171
                  ExplicitLeft = 5
                  ExplicitTop = 171
                end
                inherited Bevel92: TBevel
                  Left = 47
                  Top = 180
                  Width = 253
                  ExplicitLeft = 47
                  ExplicitTop = 180
                  ExplicitWidth = 253
                end
                inherited Label463: TLabel
                  Left = 50
                  Top = 186
                  ExplicitLeft = 50
                  ExplicitTop = 186
                end
                inherited Label464: TLabel
                  Left = 151
                  Top = 186
                  ExplicitLeft = 151
                  ExplicitTop = 186
                end
                inherited Label465: TLabel
                  Left = 23
                  Top = 145
                  ExplicitLeft = 23
                  ExplicitTop = 145
                end
                inherited lbTacticalAcousticTorpedosTargetIdentity: TLabel
                  Left = 128
                  Top = 145
                  ExplicitLeft = 128
                  ExplicitTop = 145
                end
                inherited Bevel93: TBevel
                  Left = 43
                  Top = 16
                  Width = 253
                  ExplicitLeft = 43
                  ExplicitTop = 16
                  ExplicitWidth = 253
                end
                inherited Label459: TLabel
                  Left = 5
                  Top = 48
                  ExplicitLeft = 5
                  ExplicitTop = 48
                end
                inherited Bevel94: TBevel
                  Left = 42
                  Top = 55
                  Width = 253
                  ExplicitLeft = 42
                  ExplicitTop = 55
                  ExplicitWidth = 253
                end
                inherited Label476: TLabel
                  Left = 23
                  Top = 74
                  ExplicitLeft = 23
                  ExplicitTop = 74
                end
                inherited btnTacticalAcousticTorpedosTargetTrack: TSpeedButton
                  Left = 189
                  Top = 117
                  ExplicitLeft = 189
                  ExplicitTop = 117
                end
                inherited sbTacticalAcousticTorpedosDisplayRangeShow: TSpeedButton
                  Left = 27
                  Top = 202
                  Height = 22
                  ExplicitLeft = 27
                  ExplicitTop = 202
                  ExplicitHeight = 22
                end
                inherited sbTacticalAcousticTorpedosDisplayRangeHide: TSpeedButton
                  Left = 27
                  Top = 221
                  Height = 22
                  ExplicitLeft = 27
                  ExplicitTop = 221
                  ExplicitHeight = 22
                end
                inherited sbTacticalAcousticTorpedosDisplayBlindShow: TSpeedButton
                  Left = 139
                  Top = 202
                  Height = 22
                  ExplicitLeft = 139
                  ExplicitTop = 202
                  ExplicitHeight = 22
                end
                inherited sbTacticalAcousticTorpedosDisplayBlindHide: TSpeedButton
                  Left = 139
                  Top = 221
                  Height = 22
                  ExplicitLeft = 139
                  ExplicitTop = 221
                  ExplicitHeight = 22
                end
                inherited editTacticalAcousticTorpedosTargetTrack: TEdit
                  Left = 128
                  Top = 118
                  ExplicitLeft = 128
                  ExplicitTop = 118
                end
                inherited btnTacticalAcousticTorpedosLaunch: TButton
                  Left = 215
                  Top = 247
                  Height = 22
                  OnClick = fmWeapon1btnAcousticTorpedoLaunchClick
                  ExplicitLeft = 215
                  ExplicitTop = 247
                  ExplicitHeight = 22
                end
                inherited editTacticalAcousticTorpedosSalvo: TEdit
                  Left = 128
                  Top = 70
                  ExplicitLeft = 128
                  ExplicitTop = 70
                end
              end
              inherited grbWireGuidedTorpedo: TGroupBox [1]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox10: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited Bevel19: TBevel
                    Left = 48
                    Top = 57
                    ExplicitLeft = 48
                    ExplicitTop = 57
                  end
                  inherited Bevel20: TBevel
                    Left = 45
                    Top = 180
                    Width = 263
                    ExplicitLeft = 45
                    ExplicitTop = 180
                    ExplicitWidth = 263
                  end
                  inherited Bevel21: TBevel
                    Left = 43
                    Top = 16
                    Width = 265
                    ExplicitLeft = 43
                    ExplicitTop = 16
                    ExplicitWidth = 265
                  end
                  inherited btnlWireGuidedTorpedoTargetTrack: TSpeedButton
                    Left = 180
                    Top = 66
                    ExplicitLeft = 180
                    ExplicitTop = 66
                  end
                  inherited Label84: TLabel
                    Left = 8
                    Top = 9
                    ExplicitLeft = 8
                    ExplicitTop = 9
                  end
                  inherited Label85: TLabel
                    Top = 28
                    ExplicitTop = 28
                  end
                  inherited Label86: TLabel
                    Left = 8
                    Top = 50
                    ExplicitLeft = 8
                    ExplicitTop = 50
                  end
                  inherited Label87: TLabel
                    Top = 69
                    ExplicitTop = 69
                  end
                  inherited Label88: TLabel
                    Left = 8
                    Top = 173
                    ExplicitLeft = 8
                    ExplicitTop = 173
                  end
                  inherited Label89: TLabel
                    Left = 92
                    Top = 191
                    ExplicitLeft = 92
                    ExplicitTop = 191
                  end
                  inherited Label90: TLabel
                    Left = 171
                    Top = 191
                    ExplicitLeft = 171
                    ExplicitTop = 191
                  end
                  inherited Label91: TLabel
                    Top = 100
                    ExplicitTop = 100
                  end
                  inherited Label92: TLabel
                    Top = 117
                    ExplicitTop = 117
                  end
                  inherited Label93: TLabel
                    Top = 134
                    ExplicitTop = 134
                  end
                  inherited Label94: TLabel
                    Top = 151
                    ExplicitTop = 151
                  end
                  inherited Label95: TLabel
                    Left = 180
                    Top = 117
                    ExplicitLeft = 180
                    ExplicitTop = 117
                  end
                  inherited Label96: TLabel
                    Left = 180
                    Top = 134
                    ExplicitLeft = 180
                    ExplicitTop = 134
                  end
                  inherited Label97: TLabel
                    Left = 180
                    Top = 151
                    ExplicitLeft = 180
                    ExplicitTop = 151
                  end
                  inherited lblWGQuantity: TLabel
                    Top = 29
                    ExplicitTop = 29
                  end
                  inherited lblWireGuidedTorpedoStatus: TLabel
                    Left = 28
                    Top = 28
                    ExplicitLeft = 28
                    ExplicitTop = 28
                  end
                  inherited lblWireGuidedTorpedoTargetCourse: TLabel
                    Top = 117
                    ExplicitTop = 117
                  end
                  inherited lblWireGuidedTorpedoTargetDepth: TLabel
                    Top = 151
                    ExplicitTop = 151
                  end
                  inherited lblWireGuidedTorpedoTargetGround: TLabel
                    Top = 134
                    ExplicitTop = 134
                  end
                  inherited lblWireGuidedTorpedoTargetIdentity: TLabel
                    Top = 100
                    ExplicitTop = 100
                  end
                  inherited sblWireGuidedTorpedodDisplayRangeHide: TSpeedButton
                    Left = 69
                    Top = 231
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 231
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited sblWireGuidedTorpedoDisplayBlindHide: TSpeedButton
                    Left = 159
                    Top = 231
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 231
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited sblWireGuidedTorpedoDisplayBlindShow: TSpeedButton
                    Left = 159
                    Top = 207
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 207
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited sblWireGuidedTorpedoDisplayRangeShow: TSpeedButton
                    Left = 69
                    Top = 207
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 207
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited EdtWGTargetTrack: TEdit [28]
                    Left = 114
                    Top = 66
                    Width = 60
                    Text = '---'
                    ExplicitLeft = 114
                    ExplicitTop = 66
                    ExplicitWidth = 60
                  end
                  inherited btnLaunchWG: TButton [29]
                    Left = 232
                    Top = 266
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 266
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                end
              end
              inherited grbGunEngagementChaffMode: TGroupBox [2]
                Width = 329
                Height = 533
                DoubleBuffered = True
                ParentColor = False
                ParentDoubleBuffered = False
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox9: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited Label365: TLabel
                    Left = 23
                    Top = 112
                    ExplicitLeft = 23
                    ExplicitTop = 112
                  end
                  inherited Label366: TLabel
                    Left = 23
                    Top = 131
                    ExplicitLeft = 23
                    ExplicitTop = 131
                  end
                  inherited Label466: TLabel
                    Left = 23
                    Top = 150
                    ExplicitLeft = 23
                    ExplicitTop = 150
                  end
                  inherited Label467: TLabel
                    Left = 23
                    Top = 174
                    ExplicitLeft = 23
                    ExplicitTop = 174
                  end
                  inherited lbChaffControlQuantity: TLabel
                    Left = 147
                    Top = 131
                    ExplicitLeft = 147
                    ExplicitTop = 131
                  end
                  inherited Label469: TLabel
                    Left = 198
                    Top = 174
                    ExplicitLeft = 198
                    ExplicitTop = 174
                  end
                  inherited Label470: TLabel
                    Left = 7
                    Top = 193
                    ExplicitLeft = 7
                    ExplicitTop = 193
                  end
                  inherited Bevel98: TBevel
                    Left = 44
                    Top = 201
                    ExplicitLeft = 44
                    ExplicitTop = 201
                  end
                  inherited Label471: TLabel
                    Left = 53
                    Top = 208
                    ExplicitLeft = 53
                    ExplicitTop = 208
                  end
                  inherited Label472: TLabel
                    Left = 168
                    Top = 207
                    ExplicitLeft = 168
                    ExplicitTop = 207
                  end
                  inherited btnChaffType: TSpeedButton
                    Left = 225
                    Top = 107
                    ExplicitLeft = 225
                    ExplicitTop = 107
                  end
                  inherited btnChaffBloomPosition: TSpeedButton
                    Left = 276
                    Top = 145
                    ExplicitLeft = 276
                    ExplicitTop = 145
                  end
                  inherited sbGunEngagementChaffContolAuto: TSpeedButton
                    Height = 22
                    ExplicitHeight = 22
                  end
                  inherited sbGunEngagementChaffContolManual: TSpeedButton
                    Top = 60
                    Height = 22
                    ExplicitTop = 60
                    ExplicitHeight = 22
                  end
                  inherited sbChaffDisplayShow: TSpeedButton
                    Left = 29
                    Top = 221
                    Height = 22
                    ExplicitLeft = 29
                    ExplicitTop = 221
                    ExplicitHeight = 22
                  end
                  inherited sbChaffDisplayHide: TSpeedButton
                    Left = 29
                    Top = 240
                    Height = 22
                    ExplicitLeft = 29
                    ExplicitTop = 240
                    ExplicitHeight = 22
                  end
                  inherited sbChaffBlindZoneShow: TSpeedButton
                    Left = 150
                    Top = 221
                    Height = 22
                    ExplicitLeft = 150
                    ExplicitTop = 221
                    ExplicitHeight = 22
                  end
                  inherited sbChaffBlindZoneHide: TSpeedButton
                    Left = 150
                    Top = 240
                    Height = 22
                    ExplicitLeft = 150
                    ExplicitTop = 240
                    ExplicitHeight = 22
                  end
                  inherited sbGunEngagementChaffContolChaff: TSpeedButton
                    Top = 81
                    Height = 22
                    ExplicitTop = 81
                    ExplicitHeight = 22
                  end
                  inherited editChaffControlChaff: TEdit
                    Left = 144
                    Top = 108
                    ExplicitLeft = 144
                    ExplicitTop = 108
                  end
                  inherited editChaffControlBloomPosition: TEdit
                    Left = 144
                    Top = 146
                    ExplicitLeft = 144
                    ExplicitTop = 146
                  end
                  inherited editChaffControlBloomAltitude: TEdit
                    Left = 144
                    Top = 170
                    ExplicitLeft = 144
                    ExplicitTop = 170
                  end
                  inherited btnChaffFire: TButton
                    Left = 113
                    Top = 268
                    Height = 23
                    ExplicitLeft = 113
                    ExplicitTop = 268
                    ExplicitHeight = 23
                  end
                  inherited btnChaffCeaseFire: TButton
                    Left = 210
                    Top = 268
                    Height = 23
                    ExplicitLeft = 210
                    ExplicitTop = 268
                    ExplicitHeight = 23
                  end
                end
              end
              inherited grbSurfaceToAirMissile: TGroupBox [3]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox1: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited lblSurfaceToAirStatus: TLabel
                    Left = 21
                    Top = 14
                    ExplicitLeft = 21
                    ExplicitTop = 14
                  end
                  inherited Label2: TLabel
                    Left = 124
                    Top = 14
                    ExplicitLeft = 124
                    ExplicitTop = 14
                  end
                  inherited lbSurfaceToAirStatusQuantity: TLabel
                    Left = 180
                    Top = 14
                    ExplicitLeft = 180
                    ExplicitTop = 14
                  end
                  inherited Label3: TLabel
                    Left = 2
                    Top = 28
                    ExplicitLeft = 2
                    ExplicitTop = 28
                  end
                  inherited Bevel2: TBevel
                    Left = 42
                    Top = 35
                    Width = 260
                    Height = 3
                    ExplicitLeft = 42
                    ExplicitTop = 35
                    ExplicitWidth = 260
                    ExplicitHeight = 3
                  end
                  inherited Label4: TLabel
                    Left = 21
                    Top = 43
                    ExplicitLeft = 21
                    ExplicitTop = 43
                  end
                  inherited Label5: TLabel
                    Left = 3
                    Top = 57
                    ExplicitLeft = 3
                    ExplicitTop = 57
                  end
                  inherited Bevel3: TBevel
                    Left = 40
                    Top = 64
                    ExplicitLeft = 40
                    ExplicitTop = 64
                  end
                  inherited Label6: TLabel
                    Left = 21
                    Top = 76
                    ExplicitLeft = 21
                    ExplicitTop = 76
                  end
                  inherited Label7: TLabel
                    Left = 21
                    Top = 93
                    ExplicitLeft = 21
                    ExplicitTop = 93
                  end
                  inherited Label8: TLabel
                    Left = 21
                    Top = 109
                    ExplicitLeft = 21
                    ExplicitTop = 109
                  end
                  inherited Label9: TLabel
                    Left = 21
                    Top = 126
                    ExplicitLeft = 21
                    ExplicitTop = 126
                  end
                  inherited Label10: TLabel
                    Left = 21
                    Top = 146
                    ExplicitLeft = 21
                    ExplicitTop = 146
                  end
                  inherited Label11: TLabel
                    Left = 21
                    Top = 162
                    ExplicitLeft = 21
                    ExplicitTop = 162
                  end
                  inherited Label12: TLabel
                    Left = 21
                    Top = 178
                    ExplicitLeft = 21
                    ExplicitTop = 178
                  end
                  inherited Label13: TLabel
                    Left = 21
                    Top = 193
                    ExplicitLeft = 21
                    ExplicitTop = 193
                  end
                  inherited Label14: TLabel
                    Left = 6
                    Top = 207
                    ExplicitLeft = 6
                    ExplicitTop = 207
                  end
                  inherited Bevel4: TBevel
                    Left = 43
                    Top = 215
                    ExplicitLeft = 43
                    ExplicitTop = 215
                  end
                  inherited Label15: TLabel
                    Left = 46
                    Top = 219
                    ExplicitLeft = 46
                    ExplicitTop = 219
                  end
                  inherited Label16: TLabel
                    Left = 153
                    Top = 219
                    ExplicitLeft = 153
                    ExplicitTop = 219
                  end
                  inherited lbSurfaceToAirCourse: TLabel
                    Left = 120
                    Top = 94
                    ExplicitLeft = 120
                    ExplicitTop = 94
                  end
                  inherited lbSurfaceToAirGround: TLabel
                    Left = 120
                    Top = 109
                    ExplicitLeft = 120
                    ExplicitTop = 109
                  end
                  inherited lbSurfaceToAirAltitude: TLabel
                    Left = 120
                    Top = 125
                    ExplicitLeft = 120
                    ExplicitTop = 125
                  end
                  inherited lbSurfaceToAirStatus: TLabel
                    Left = 120
                    Top = 164
                    ExplicitLeft = 120
                    ExplicitTop = 164
                  end
                  inherited lbSurfaceToAirTimeToWait: TLabel
                    Left = 120
                    Top = 180
                    ExplicitLeft = 120
                    ExplicitTop = 180
                  end
                  inherited lbSurfaceToAirTimeToIntercept: TLabel
                    Left = 120
                    Top = 195
                    ExplicitLeft = 120
                    ExplicitTop = 195
                  end
                  inherited Label17: TLabel
                    Left = 167
                    Top = 91
                    ExplicitLeft = 167
                    ExplicitTop = 91
                  end
                  inherited Label18: TLabel
                    Left = 167
                    Top = 108
                    ExplicitLeft = 167
                    ExplicitTop = 108
                  end
                  inherited Label19: TLabel
                    Left = 167
                    Top = 125
                    ExplicitLeft = 167
                    ExplicitTop = 125
                  end
                  inherited Label20: TLabel
                    Left = 190
                    Top = 179
                    ExplicitLeft = 190
                    ExplicitTop = 179
                  end
                  inherited Label22: TLabel
                    Left = 190
                    Top = 193
                    ExplicitLeft = 190
                    ExplicitTop = 193
                  end
                  inherited btnSurfaceToAirTargetTrack: TSpeedButton
                    Left = 168
                    Top = 72
                    Height = 18
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitLeft = 168
                    ExplicitTop = 72
                    ExplicitHeight = 18
                  end
                  inherited sbSurfaceToAirDisplayRangeShow: TSpeedButton
                    Left = 22
                    Top = 232
                    Width = 78
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitLeft = 22
                    ExplicitTop = 232
                    ExplicitWidth = 78
                    ExplicitHeight = 22
                  end
                  inherited sbSurfaceToAirDisplayRangeHide: TSpeedButton
                    Left = 22
                    Top = 251
                    Width = 78
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitLeft = 22
                    ExplicitTop = 251
                    ExplicitWidth = 78
                    ExplicitHeight = 22
                  end
                  inherited sbSurfaceToAirDisplayBlindShow: TSpeedButton
                    Top = 232
                    Width = 78
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitTop = 232
                    ExplicitWidth = 78
                    ExplicitHeight = 22
                  end
                  inherited sbSurfaceToAirDisplayBlindHide: TSpeedButton
                    Top = 251
                    Width = 78
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitTop = 251
                    ExplicitWidth = 78
                    ExplicitHeight = 22
                  end
                  inherited ediSurfaceToAirSalvo: TEdit
                    Left = 120
                    Top = 40
                    Width = 67
                    ExplicitLeft = 120
                    ExplicitTop = 40
                    ExplicitWidth = 67
                  end
                  inherited editSurfaceToAirTrack: TEdit
                    Left = 120
                    Top = 72
                    ExplicitLeft = 120
                    ExplicitTop = 72
                  end
                  inherited btSurfaceToAirPlan: TButton
                    Left = 5
                    Top = 278
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitLeft = 5
                    ExplicitTop = 278
                    ExplicitHeight = 22
                  end
                  inherited btSurfaceToAirLaunch: TButton
                    Left = 236
                    Top = 278
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitLeft = 236
                    ExplicitTop = 278
                    ExplicitHeight = 22
                  end
                  inherited btSurfaceToAirCancel: TButton
                    Left = 95
                    Top = 278
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToAirTargetTrackClick
                    ExplicitLeft = 95
                    ExplicitTop = 278
                    ExplicitHeight = 22
                  end
                end
              end
              inherited grbMines: TGroupBox [4]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited Label272: TLabel
                  Left = 8
                  Top = 9
                  ExplicitLeft = 8
                  ExplicitTop = 9
                end
                inherited lblStatusMines: TLabel
                  Left = 25
                  Top = 28
                  ExplicitLeft = 25
                  ExplicitTop = 28
                end
                inherited Label288: TLabel
                  Left = 118
                  Top = 28
                  ExplicitLeft = 118
                  ExplicitTop = 28
                end
                inherited lbMinesQuantity: TLabel
                  Left = 173
                  Top = 28
                  ExplicitLeft = 173
                  ExplicitTop = 28
                end
                inherited Label291: TLabel
                  Left = 8
                  Top = 50
                  ExplicitLeft = 8
                  ExplicitTop = 50
                end
                inherited Bevel58: TBevel
                  Left = 48
                  Top = 57
                  Width = 270
                  ExplicitLeft = 48
                  ExplicitTop = 57
                  ExplicitWidth = 270
                end
                inherited Label292: TLabel
                  Left = 24
                  Top = 69
                  ExplicitLeft = 24
                  ExplicitTop = 69
                end
                inherited Bevel61: TBevel
                  Left = 43
                  Top = 16
                  Width = 275
                  ExplicitLeft = 43
                  ExplicitTop = 16
                  ExplicitWidth = 275
                end
                inherited lbl84: TLabel
                  Left = 183
                  Top = 68
                  ExplicitLeft = 183
                  ExplicitTop = 68
                end
                inherited EdtMinesDepth: TEdit
                  Left = 117
                  Top = 66
                  Width = 60
                  ExplicitLeft = 117
                  ExplicitTop = 66
                  ExplicitWidth = 60
                end
                inherited btnMinesDeploy: TButton
                  Left = 232
                  Top = 101
                  Width = 75
                  Height = 22
                  OnClick = fmWeapon1btnMinesDeployClick
                  ExplicitLeft = 232
                  ExplicitTop = 101
                  ExplicitWidth = 75
                  ExplicitHeight = 22
                end
              end
              inherited grbActivePasiveTorpedo: TGroupBox [5]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox3: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited btnShowBlindZoneAPG: TSpeedButton [0]
                    Left = 159
                    Top = 259
                    Width = 77
                    ExplicitLeft = 159
                    ExplicitTop = 259
                    ExplicitWidth = 77
                  end
                  inherited btnHideRangeAPG: TSpeedButton [1]
                    Left = 69
                    Top = 283
                    Width = 77
                    ExplicitLeft = 69
                    ExplicitTop = 283
                    ExplicitWidth = 77
                  end
                  inherited btnShowRangeAPG: TSpeedButton
                    Left = 69
                    Top = 259
                    Width = 77
                    ExplicitLeft = 69
                    ExplicitTop = 259
                    ExplicitWidth = 77
                  end
                  inherited btnTargetTrackAPG: TSpeedButton
                    Left = 180
                    Top = 66
                    ExplicitLeft = 180
                    ExplicitTop = 66
                  end
                  inherited bvl1: TBevel
                    Left = 43
                    Width = 265
                    ExplicitLeft = 43
                    ExplicitWidth = 265
                  end
                  inherited bvl2: TBevel
                    Left = 48
                    Width = 260
                    ExplicitLeft = 48
                    ExplicitWidth = 260
                  end
                  inherited bvl3: TBevel
                    Left = 49
                    Top = 98
                    Width = 259
                    ExplicitLeft = 49
                    ExplicitTop = 98
                    ExplicitWidth = 259
                  end
                  inherited bvl4: TBevel
                    Top = 232
                    Width = 263
                    Height = 3
                    ExplicitTop = 232
                    ExplicitWidth = 263
                    ExplicitHeight = 3
                  end
                  inherited lbl1: TLabel
                    Left = 8
                    ExplicitLeft = 8
                  end
                  inherited lbl12: TLabel
                    Left = 25
                    Top = 132
                    ExplicitLeft = 25
                    ExplicitTop = 132
                  end
                  inherited lbl13: TLabel
                    Left = 25
                    Top = 155
                    ExplicitLeft = 25
                    ExplicitTop = 155
                  end
                  inherited lbl14: TLabel
                    Left = 25
                    Top = 178
                    ExplicitLeft = 25
                    ExplicitTop = 178
                  end
                  inherited lbl15: TLabel
                    Left = 25
                    Top = 200
                    ExplicitLeft = 25
                    ExplicitTop = 200
                  end
                  inherited lbl17: TLabel
                    Left = 180
                    Top = 132
                    ExplicitLeft = 180
                    ExplicitTop = 132
                  end
                  inherited lbl18: TLabel
                    Left = 180
                    Top = 155
                    ExplicitLeft = 180
                    ExplicitTop = 155
                  end
                  inherited lbl19: TLabel
                    Left = 180
                    Top = 178
                    ExplicitLeft = 180
                    ExplicitTop = 178
                  end
                  inherited lbl20: TLabel
                    Left = 180
                    Top = 200
                    ExplicitLeft = 180
                    ExplicitTop = 200
                  end
                  inherited lbl21: TLabel
                    Left = 92
                    Top = 243
                    ExplicitLeft = 92
                    ExplicitTop = 243
                  end
                  inherited lbl22: TLabel
                    Left = 171
                    Top = 243
                    ExplicitLeft = 171
                    ExplicitTop = 243
                  end
                  inherited lbl3: TLabel
                    Left = 117
                    ExplicitLeft = 117
                  end
                  inherited lbl5: TLabel
                    Left = 8
                    ExplicitLeft = 8
                  end
                  inherited lbl6: TLabel
                    Left = 25
                    Top = 69
                    ExplicitLeft = 25
                    ExplicitTop = 69
                  end
                  inherited lbl7: TLabel
                    Left = 8
                    Top = 91
                    ExplicitLeft = 8
                    ExplicitTop = 91
                  end
                  inherited lbl8: TLabel
                    Left = 8
                    Top = 225
                    ExplicitLeft = 8
                    ExplicitTop = 225
                  end
                  inherited lbl9: TLabel
                    Top = 110
                    ExplicitTop = 110
                  end
                  inherited lblQuantityAPG: TLabel
                    Left = 173
                    ExplicitLeft = 173
                  end
                  inherited btnHideBlindZoneAPG: TSpeedButton
                    Left = 159
                    Top = 283
                    Width = 77
                    ExplicitLeft = 159
                    ExplicitTop = 283
                    ExplicitWidth = 77
                  end
                  inherited btn4: TButton
                    Left = 232
                    Top = 129
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 129
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btn5: TButton
                    Left = 232
                    Top = 151
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 151
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btn6: TButton
                    Left = 232
                    Top = 173
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 173
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btn7: TButton
                    Left = 232
                    Top = 195
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 195
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnLaunchAP: TButton
                    Left = 232
                    Top = 318
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 318
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited EdtAPTargetTrack: TEdit
                    Left = 114
                    Top = 66
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 66
                    ExplicitWidth = 60
                  end
                  inherited EdtSafetyCeilingAP: TEdit
                    Left = 114
                    Top = 173
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 173
                    ExplicitWidth = 60
                  end
                  inherited EdtSalvoAP: TEdit
                    Left = 114
                    Top = 107
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 107
                    ExplicitWidth = 60
                  end
                  inherited EdtSearchDepthAP: TEdit
                    Left = 114
                    Top = 151
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 151
                    ExplicitWidth = 60
                  end
                  inherited EdtSearchRadiusAP: TEdit
                    Top = 129
                    Width = 60
                    ExplicitTop = 129
                    ExplicitWidth = 60
                  end
                  inherited EdtSeekerRangeAP: TEdit
                    Left = 114
                    Top = 195
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 195
                    ExplicitWidth = 60
                  end
                end
              end
              inherited grbAirDroppedVECTAC: TGroupBox [6]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox13: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited Bevel75: TBevel
                    Left = 85
                    Top = 167
                    ExplicitLeft = 85
                    ExplicitTop = 167
                  end
                  inherited Bevel76: TBevel
                    Left = 48
                    ExplicitLeft = 48
                  end
                  inherited btnVectacTargetTrack: TSpeedButton
                    Left = 190
                    Top = 17
                    Height = 21
                    ExplicitLeft = 190
                    ExplicitTop = 17
                    ExplicitHeight = 21
                  end
                  inherited btnVectacWeaponCarrierName: TSpeedButton
                    Left = 295
                    Top = 177
                    Height = 21
                    ExplicitLeft = 295
                    ExplicitTop = 177
                    ExplicitHeight = 21
                  end
                  inherited btnVectacWeaponName: TSpeedButton
                    Left = 295
                    Height = 21
                    ExplicitLeft = 295
                    ExplicitHeight = 21
                  end
                  inherited Label368: TLabel
                    Left = 15
                    Top = 19
                    ExplicitLeft = 15
                    ExplicitTop = 19
                  end
                  inherited Label369: TLabel
                    Top = 160
                    ExplicitTop = 160
                  end
                  inherited Label371: TLabel
                    Left = 15
                    Top = 179
                    ExplicitLeft = 15
                    ExplicitTop = 179
                  end
                  inherited Label375: TLabel
                    Left = 15
                    Top = 205
                    ExplicitLeft = 15
                    ExplicitTop = 205
                  end
                  inherited Label376: TLabel
                    Left = 15
                    Top = 231
                    ExplicitLeft = 15
                    ExplicitTop = 231
                  end
                  inherited Label377: TLabel
                    Left = 15
                    Top = 257
                    ExplicitLeft = 15
                    ExplicitTop = 257
                  end
                  inherited Label378: TLabel
                    Left = 15
                    Top = 283
                    ExplicitLeft = 15
                    ExplicitTop = 283
                  end
                  inherited Label379: TLabel
                    Top = 306
                    ExplicitTop = 306
                  end
                  inherited Label380: TLabel
                    Left = 15
                    Top = 325
                    ExplicitLeft = 15
                    ExplicitTop = 325
                  end
                  inherited Label383: TLabel
                    Left = 160
                    Top = 104
                    ExplicitLeft = 160
                    ExplicitTop = 104
                  end
                  inherited Label384: TLabel
                    Top = 205
                    ExplicitTop = 205
                  end
                  inherited Label385: TLabel
                    Top = 257
                    ExplicitTop = 257
                  end
                  inherited Label386: TLabel
                    Left = 15
                    Top = 50
                    ExplicitLeft = 15
                    ExplicitTop = 50
                  end
                  inherited Label387: TLabel
                    Left = 15
                    Top = 68
                    ExplicitLeft = 15
                    ExplicitTop = 68
                  end
                  inherited Label388: TLabel
                    Left = 15
                    Top = 86
                    ExplicitLeft = 15
                    ExplicitTop = 86
                  end
                  inherited Label389: TLabel
                    Left = 15
                    Top = 104
                    ExplicitLeft = 15
                    ExplicitTop = 104
                  end
                  inherited Label390: TLabel
                    Left = 15
                    Top = 122
                    ExplicitLeft = 15
                    ExplicitTop = 122
                  end
                  inherited Label391: TLabel
                    Left = 15
                    Top = 140
                    ExplicitLeft = 15
                    ExplicitTop = 140
                  end
                  inherited Label392: TLabel
                    Left = 160
                    Top = 122
                    ExplicitLeft = 160
                    ExplicitTop = 122
                  end
                  inherited Label393: TLabel
                    Left = 160
                    Top = 140
                    ExplicitLeft = 160
                    ExplicitTop = 140
                  end
                  inherited Label394: TLabel
                    Top = 231
                    ExplicitTop = 231
                  end
                  inherited Label395: TLabel
                    Top = 283
                    ExplicitTop = 283
                  end
                  inherited Label396: TLabel
                    Left = 15
                    Top = 351
                    ExplicitLeft = 15
                    ExplicitTop = 351
                  end
                  inherited Label398: TLabel
                    Left = 185
                    Top = 351
                    ExplicitLeft = 185
                    ExplicitTop = 351
                  end
                  inherited lbVectacTargetCourse: TLabel
                    Top = 104
                    ExplicitTop = 104
                  end
                  inherited lbVectacTargetDepth: TLabel
                    Top = 140
                    ExplicitTop = 140
                  end
                  inherited lbVectacTargetDoppler: TLabel
                    Top = 86
                    ExplicitTop = 86
                  end
                  inherited lbVectacTargetGround: TLabel
                    Top = 122
                    ExplicitTop = 122
                  end
                  inherited lbVectacTargetIdentity: TLabel
                    Top = 50
                    ExplicitTop = 50
                  end
                  inherited lbVectacTargetPropulsion: TLabel
                    Top = 68
                    ExplicitTop = 68
                  end
                  inherited lbVectacWeaponCarrierAdviced: TLabel
                    Top = 231
                    ExplicitTop = 231
                  end
                  inherited lbVectacWeaponCarrierTime: TLabel
                    Top = 283
                    ExplicitTop = 283
                  end
                  inherited lbVectacWeaponExpiry: TLabel
                    Left = 125
                    Top = 351
                    ExplicitLeft = 125
                    ExplicitTop = 351
                  end
                  inherited btnVectacCancel: TButton
                    Left = 106
                    ExplicitLeft = 106
                  end
                  inherited btnVectacConfirm: TButton
                    Width = 114
                    ExplicitWidth = 114
                  end
                  inherited btnVectacPlan: TButton
                    Left = 10
                    ExplicitLeft = 10
                  end
                  inherited btnVectacWeaponCarrierDrop: TButton
                    Left = 253
                    Top = 255
                    Width = 65
                    Height = 22
                    ExplicitLeft = 253
                    ExplicitTop = 255
                    ExplicitWidth = 65
                    ExplicitHeight = 22
                  end
                  inherited btnVectacWeaponCarrierGround: TButton
                    Left = 253
                    Top = 203
                    Width = 65
                    Height = 22
                    ExplicitLeft = 253
                    ExplicitTop = 203
                    ExplicitWidth = 65
                    ExplicitHeight = 22
                  end
                  inherited editVectacTargetTrack: TEdit
                    Width = 60
                    Enabled = True
                    ReadOnly = True
                    ExplicitWidth = 60
                  end
                  inherited editVectacWeaponCarrierDrop: TEdit
                    Top = 255
                    Enabled = True
                    ReadOnly = True
                    ExplicitTop = 255
                  end
                  inherited editVectacWeaponCarrierGround: TEdit
                    Top = 203
                    Enabled = True
                    ReadOnly = True
                    ExplicitTop = 203
                  end
                  inherited editVectacWeaponCarrierName: TEdit
                    Left = 125
                    Top = 177
                    Width = 163
                    Enabled = True
                    ReadOnly = True
                    ExplicitLeft = 125
                    ExplicitTop = 177
                    ExplicitWidth = 163
                  end
                  inherited editVectacWeaponName: TEdit
                    Top = 321
                    Width = 165
                    Enabled = True
                    ReadOnly = True
                    Text = ''
                    ExplicitTop = 321
                    ExplicitWidth = 165
                  end
                end
              end
              inherited grbStraightRunningTorpedos: TGroupBox [7]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox4: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited btnStraightRunningTorpedosDisplayBlindHide: TSpeedButton
                    Left = 159
                    Top = 228
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 228
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnStraightRunningTorpedosDisplayBlindShow: TSpeedButton
                    Left = 159
                    Top = 204
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 204
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnStraightRunningTorpedosDisplayRangeHide: TSpeedButton
                    Left = 69
                    Top = 228
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 228
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnStraightRunningTorpedosDisplayRangeShow: TSpeedButton
                    Left = 69
                    Top = 204
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 204
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnStraightRunningTorpedosTargetTrack: TSpeedButton
                    Left = 180
                    Top = 66
                    ExplicitLeft = 180
                    ExplicitTop = 66
                  end
                  inherited bvl14: TBevel
                    Left = 48
                    Top = 57
                    Width = 250
                    ExplicitLeft = 48
                    ExplicitTop = 57
                    ExplicitWidth = 250
                  end
                  inherited bvl15: TBevel
                    Left = 48
                    Top = 177
                    Width = 253
                    ExplicitLeft = 48
                    ExplicitTop = 177
                    ExplicitWidth = 253
                  end
                  inherited bvl16: TBevel
                    Left = 43
                    Top = 16
                    Width = 255
                    ExplicitLeft = 43
                    ExplicitTop = 16
                    ExplicitWidth = 255
                  end
                  inherited lbl62: TLabel
                    Left = 8
                    Top = 9
                    ExplicitLeft = 8
                    ExplicitTop = 9
                  end
                  inherited lbl63: TLabel
                    Left = 117
                    Top = 28
                    ExplicitLeft = 117
                    ExplicitTop = 28
                  end
                  inherited lbl64: TLabel
                    Left = 8
                    Top = 50
                    ExplicitLeft = 8
                    ExplicitTop = 50
                  end
                  inherited lbl65: TLabel
                    Top = 69
                    ExplicitTop = 69
                  end
                  inherited lbl66: TLabel
                    Left = 8
                    Top = 170
                    ExplicitLeft = 8
                    ExplicitTop = 170
                  end
                  inherited lbl67: TLabel
                    Left = 92
                    Top = 188
                    ExplicitLeft = 92
                    ExplicitTop = 188
                  end
                  inherited lbl68: TLabel
                    Left = 171
                    Top = 188
                    ExplicitLeft = 171
                    ExplicitTop = 188
                  end
                  inherited lbl69: TLabel
                    Top = 96
                    ExplicitTop = 96
                  end
                  inherited lbl70: TLabel
                    Top = 113
                    ExplicitTop = 113
                  end
                  inherited lbl71: TLabel
                    Top = 130
                    ExplicitTop = 130
                  end
                  inherited lbl72: TLabel
                    Top = 147
                    ExplicitTop = 147
                  end
                  inherited lbl73: TLabel
                    Left = 180
                    Top = 113
                    ExplicitLeft = 180
                    ExplicitTop = 113
                  end
                  inherited lbl74: TLabel
                    Left = 180
                    Top = 130
                    ExplicitLeft = 180
                    ExplicitTop = 130
                  end
                  inherited lbl75: TLabel
                    Left = 180
                    Top = 147
                    ExplicitLeft = 180
                    ExplicitTop = 147
                  end
                  inherited lblSRQuantity: TLabel
                    Left = 173
                    Top = 28
                    ExplicitLeft = 173
                    ExplicitTop = 28
                  end
                  inherited lblStatusStraightRunningTorpedos: TLabel
                    Left = 25
                    Top = 28
                    ExplicitLeft = 25
                    ExplicitTop = 28
                  end
                  inherited lblStraightRunningTorpedosTargetCourse: TLabel
                    Left = 117
                    Top = 113
                    ExplicitLeft = 117
                    ExplicitTop = 113
                  end
                  inherited lblStraightRunningTorpedosTargetDepth: TLabel
                    Left = 117
                    Top = 147
                    ExplicitLeft = 117
                    ExplicitTop = 147
                  end
                  inherited lblStraightRunningTorpedosTargetGround: TLabel
                    Left = 117
                    Top = 130
                    ExplicitLeft = 117
                    ExplicitTop = 130
                  end
                  inherited lblStraightRunningTorpedosTargetIdentity: TLabel
                    Left = 117
                    Top = 96
                    ExplicitLeft = 117
                    ExplicitTop = 96
                  end
                  inherited btnLaunchSR: TButton
                    Left = 226
                    Top = 263
                    Width = 75
                    Height = 22
                    ExplicitLeft = 226
                    ExplicitTop = 263
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited EdtSRTargetTrack: TEdit
                    Left = 114
                    Top = 66
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 66
                    ExplicitWidth = 60
                  end
                end
              end
              inherited grbAirDroppedTorpedo: TGroupBox [8]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox8: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited btnAirDropeedBilndZonesHide: TSpeedButton
                    Left = 160
                    Top = 384
                    Width = 77
                    Height = 23
                    ExplicitLeft = 160
                    ExplicitTop = 384
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnAirDroppesDisplayBilndZonesShow: TSpeedButton
                    Left = 160
                    Top = 360
                    Width = 77
                    Height = 23
                    ExplicitLeft = 160
                    ExplicitTop = 360
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnAirDroppesDisplayRangeHide: TSpeedButton
                    Left = 69
                    Top = 384
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 384
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnAirDroppesDisplayRangeShow: TSpeedButton
                    Left = 69
                    Top = 360
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 360
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnAirDroppesTargetTrack: TSpeedButton
                    Left = 180
                    Top = 66
                    ExplicitLeft = 180
                    ExplicitTop = 66
                  end
                  inherited bvl10: TBevel
                    Left = 45
                    Top = 333
                    Width = 262
                    ExplicitLeft = 45
                    ExplicitTop = 333
                    ExplicitWidth = 262
                  end
                  inherited bvl11: TBevel
                    Left = 43
                    Top = 16
                    Width = 264
                    ExplicitLeft = 43
                    ExplicitTop = 16
                    ExplicitWidth = 264
                  end
                  inherited bvl12: TBevel
                    Left = 48
                    Top = 57
                    Width = 259
                    ExplicitLeft = 48
                    ExplicitTop = 57
                    ExplicitWidth = 259
                  end
                  inherited bvl13: TBevel
                    Left = 88
                    Top = 272
                    Width = 219
                    ExplicitLeft = 88
                    ExplicitTop = 272
                    ExplicitWidth = 219
                  end
                  inherited bvl9: TBevel
                    Left = 49
                    Top = 180
                    Width = 258
                    ExplicitLeft = 49
                    ExplicitTop = 180
                    ExplicitWidth = 258
                  end
                  inherited lbl38: TLabel
                    Left = 9
                    Top = 9
                    ExplicitLeft = 9
                    ExplicitTop = 9
                  end
                  inherited lbl39: TLabel
                    Left = 117
                    Top = 28
                    ExplicitLeft = 117
                    ExplicitTop = 28
                  end
                  inherited lbl40: TLabel
                    Left = 9
                    Top = 50
                    ExplicitLeft = 9
                    ExplicitTop = 50
                  end
                  inherited lbl41: TLabel
                    Left = 28
                    Top = 69
                    ExplicitLeft = 28
                    ExplicitTop = 69
                  end
                  inherited lbl42: TLabel
                    Left = 8
                    Top = 325
                    ExplicitLeft = 8
                    ExplicitTop = 325
                  end
                  inherited lbl43: TLabel
                    Left = 92
                    Top = 344
                    ExplicitLeft = 92
                    ExplicitTop = 344
                  end
                  inherited lbl44: TLabel
                    Left = 172
                    Top = 344
                    ExplicitLeft = 172
                    ExplicitTop = 344
                  end
                  inherited lbl45: TLabel
                    Left = 28
                    Top = 100
                    ExplicitLeft = 28
                    ExplicitTop = 100
                  end
                  inherited lbl46: TLabel
                    Left = 8
                    Top = 172
                    ExplicitLeft = 8
                    ExplicitTop = 172
                  end
                  inherited lbl47: TLabel
                    Left = 28
                    Top = 192
                    ExplicitLeft = 28
                    ExplicitTop = 192
                  end
                  inherited lbl48: TLabel
                    Left = 28
                    Top = 216
                    ExplicitLeft = 28
                    ExplicitTop = 216
                  end
                  inherited lbl49: TLabel
                    Left = 28
                    Top = 239
                    ExplicitLeft = 28
                    ExplicitTop = 239
                  end
                  inherited lbl50: TLabel
                    Left = 180
                    Top = 192
                    ExplicitLeft = 180
                    ExplicitTop = 192
                  end
                  inherited lbl51: TLabel
                    Left = 180
                    Top = 216
                    ExplicitLeft = 180
                    ExplicitTop = 216
                  end
                  inherited lbl52: TLabel
                    Left = 180
                    Top = 239
                    ExplicitLeft = 180
                    ExplicitTop = 239
                  end
                  inherited lbl53: TLabel
                    Left = 28
                    Top = 117
                    ExplicitLeft = 28
                    ExplicitTop = 117
                  end
                  inherited lbl54: TLabel
                    Left = 28
                    Top = 134
                    ExplicitLeft = 28
                    ExplicitTop = 134
                  end
                  inherited lbl55: TLabel
                    Left = 28
                    Top = 151
                    ExplicitLeft = 28
                    ExplicitTop = 151
                  end
                  inherited lbl56: TLabel
                    Left = 180
                    Top = 117
                    ExplicitLeft = 180
                    ExplicitTop = 117
                  end
                  inherited lbl57: TLabel
                    Left = 180
                    Top = 134
                    ExplicitLeft = 180
                    ExplicitTop = 134
                  end
                  inherited lbl58: TLabel
                    Left = 180
                    Top = 151
                    ExplicitLeft = 180
                    ExplicitTop = 151
                  end
                  inherited lbl59: TLabel
                    Left = 8
                    Top = 265
                    ExplicitLeft = 8
                    ExplicitTop = 265
                  end
                  inherited lbl60: TLabel
                    Left = 50
                    Top = 308
                    ExplicitLeft = 50
                    ExplicitTop = 308
                  end
                  inherited lbl61: TLabel
                    Left = 180
                    Top = 308
                    ExplicitLeft = 180
                    ExplicitTop = 308
                  end
                  inherited lbl85: TLabel
                    Left = 229
                    Top = 80
                    ExplicitLeft = 229
                    ExplicitTop = 80
                  end
                  inherited lblADQuantity: TLabel
                    Left = 173
                    Top = 28
                    ExplicitLeft = 173
                    ExplicitTop = 28
                  end
                  inherited lblAirDproppedTargetCourse: TLabel
                    Left = 117
                    Top = 117
                    ExplicitLeft = 117
                    ExplicitTop = 117
                  end
                  inherited lblAirDproppedTargetDepth: TLabel
                    Left = 117
                    Top = 151
                    ExplicitLeft = 117
                    ExplicitTop = 151
                  end
                  inherited lblAirDproppedTargetForce: TLabel
                    Left = 117
                    Top = 100
                    ExplicitLeft = 117
                    ExplicitTop = 100
                  end
                  inherited lblAirDproppedTargetGroundSpeed: TLabel
                    Left = 117
                    Top = 134
                    ExplicitLeft = 117
                    ExplicitTop = 134
                  end
                  inherited lblAirDroppedStatus: TLabel
                    Left = 25
                    Top = 28
                    ExplicitLeft = 25
                    ExplicitTop = 28
                  end
                  inherited btnDefaultAirDroppedControlSearchCeiling: TButton
                    Left = 232
                    Top = 235
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 235
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnDefaultAirDroppedSearchDepth: TButton
                    Left = 232
                    Top = 212
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 212
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnLauchAD: TButton
                    Left = 232
                    Top = 419
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 419
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited chkAirDroppedLaunchWhithoutTarget: TCheckBox
                    Left = 210
                    Top = 66
                    ExplicitLeft = 210
                    ExplicitTop = 66
                  end
                  inherited chkAirDroppedUseLaunchPlatformHeading: TCheckBox
                    Left = 28
                    Top = 284
                    ExplicitLeft = 28
                    ExplicitTop = 284
                  end
                  inherited EdtADTargetTrack: TEdit
                    Left = 114
                    Top = 66
                    Width = 60
                    Text = '---'
                    ExplicitLeft = 114
                    ExplicitTop = 66
                    ExplicitWidth = 60
                  end
                  inherited EdtLaunchBearingAD: TEdit
                    Top = 303
                    ExplicitTop = 303
                  end
                  inherited EdtSearchCeilingAD: TEdit
                    Top = 235
                    ExplicitTop = 235
                  end
                  inherited EdtSearchDepthAD: TEdit
                    Top = 212
                    ExplicitTop = 212
                  end
                  inherited EdtSearchRadiusAD: TEdit
                    Top = 189
                    ExplicitTop = 189
                  end
                end
              end
              inherited grbHybridMissile: TGroupBox [9]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited scrlbx1: TScrollBox
                  Width = 325
                  Height = 516
                  VertScrollBar.Position = 0
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited btnAddHybridMissileTargetAimpoint: TSpeedButton
                    OnClick = fmWeapon1btnAddHybridMissileTargetAimpointClick
                  end
                  inherited btnHybridMissileLaunch: TButton
                    Left = 235
                    Top = 382
                    ExplicitLeft = 235
                    ExplicitTop = 382
                  end
                end
              end
              inherited grbAcousticTorpedo: TGroupBox [10]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox2: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited lblAcousticTorpedoStatus: TLabel
                    Top = 28
                    ExplicitTop = 28
                  end
                  inherited lblAcousticTorpedoQuantity: TLabel
                    Left = 173
                    Top = 28
                    ExplicitLeft = 173
                    ExplicitTop = 28
                  end
                  inherited lbl4: TLabel
                    Left = 8
                    Top = 9
                    ExplicitLeft = 8
                    ExplicitTop = 9
                  end
                  inherited lbl37: TLabel
                    Left = 171
                    Top = 312
                    ExplicitLeft = 171
                    ExplicitTop = 312
                  end
                  inherited lbl36: TLabel
                    Left = 180
                    Top = 248
                    ExplicitLeft = 180
                    ExplicitTop = 248
                  end
                  inherited lbl35: TLabel
                    Left = 180
                    Top = 226
                    ExplicitLeft = 180
                    ExplicitTop = 226
                  end
                  inherited lbl34: TLabel
                    Left = 180
                    Top = 204
                    ExplicitLeft = 180
                    ExplicitTop = 204
                  end
                  inherited lbl33: TLabel
                    Left = 180
                    Top = 180
                    ExplicitLeft = 180
                    ExplicitTop = 180
                  end
                  inherited lbl32: TLabel
                    Left = 24
                    Top = 270
                    ExplicitLeft = 24
                    ExplicitTop = 270
                  end
                  inherited lbl31: TLabel
                    Left = 24
                    Top = 248
                    ExplicitLeft = 24
                    ExplicitTop = 248
                  end
                  inherited lbl30: TLabel
                    Left = 24
                    Top = 226
                    ExplicitLeft = 24
                    ExplicitTop = 226
                  end
                  inherited lbl29: TLabel
                    Left = 24
                    Top = 204
                    ExplicitLeft = 24
                    ExplicitTop = 204
                  end
                  inherited lbl28: TLabel
                    Left = 26
                    Top = 180
                    ExplicitLeft = 26
                    ExplicitTop = 180
                  end
                  inherited lbl27: TLabel
                    Left = 24
                    Top = 160
                    ExplicitLeft = 24
                    ExplicitTop = 160
                  end
                  inherited lbl26: TLabel
                    Left = 24
                    Top = 138
                    ExplicitLeft = 24
                    ExplicitTop = 138
                  end
                  inherited lbl25: TLabel
                    Left = 24
                    Top = 110
                    ExplicitLeft = 24
                    ExplicitTop = 110
                  end
                  inherited lbl24: TLabel
                    Left = 8
                    Top = 293
                    ExplicitLeft = 8
                    ExplicitTop = 293
                  end
                  inherited lbl23: TLabel
                    Left = 8
                    Top = 91
                    ExplicitLeft = 8
                    ExplicitTop = 91
                  end
                  inherited lbl2: TLabel
                    Left = 92
                    Top = 312
                    ExplicitLeft = 92
                    ExplicitTop = 312
                  end
                  inherited lbl16: TLabel
                    Left = 24
                    Top = 69
                    ExplicitLeft = 24
                    ExplicitTop = 69
                  end
                  inherited lbl11: TLabel
                    Left = 8
                    Top = 50
                    ExplicitLeft = 8
                    ExplicitTop = 50
                  end
                  inherited lbl10: TLabel
                    Left = 117
                    Top = 28
                    ExplicitLeft = 117
                    ExplicitTop = 28
                  end
                  inherited bvl8: TBevel
                    Left = 34
                    Top = 301
                    Width = 273
                    ExplicitLeft = 34
                    ExplicitTop = 301
                    ExplicitWidth = 273
                  end
                  inherited bvl7: TBevel
                    Left = 38
                    Top = 98
                    Width = 269
                    ExplicitLeft = 38
                    ExplicitTop = 98
                    ExplicitWidth = 269
                  end
                  inherited bvl6: TBevel
                    Left = 37
                    Top = 57
                    Width = 270
                    ExplicitLeft = 37
                    ExplicitTop = 57
                    ExplicitWidth = 270
                  end
                  inherited bvl5: TBevel
                    Left = 32
                    Top = 16
                    Width = 275
                    ExplicitLeft = 32
                    ExplicitTop = 16
                    ExplicitWidth = 275
                  end
                  inherited btnSearchTarget: TSpeedButton
                    Left = 180
                    Top = 66
                    ExplicitLeft = 180
                    ExplicitTop = 66
                  end
                  inherited btnRunOutAT: TSpeedButton
                    Left = 180
                    Top = 156
                    Height = 20
                    ExplicitLeft = 180
                    ExplicitTop = 156
                    ExplicitHeight = 20
                  end
                  inherited btnGyroAngleAT: TSpeedButton
                    Left = 180
                    Top = 266
                    Height = 20
                    ExplicitLeft = 180
                    ExplicitTop = 266
                    ExplicitHeight = 20
                  end
                  inherited btnFiringModeAT: TSpeedButton
                    Left = 180
                    Top = 134
                    Height = 20
                    ExplicitLeft = 180
                    ExplicitTop = 134
                    ExplicitHeight = 20
                  end
                  inherited btnDisplayBlindZonesShow: TSpeedButton
                    Left = 159
                    Top = 328
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 328
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnDisplayBlindZonesHide: TSpeedButton
                    Left = 159
                    Top = 352
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 352
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnAccousticDisplayRangeShow: TSpeedButton
                    Left = 69
                    Top = 328
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 328
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnAccousticDisplayRangeHide: TSpeedButton
                    Left = 69
                    Top = 352
                    Width = 77
                    Height = 23
                    Transparent = False
                    ExplicitLeft = 69
                    ExplicitTop = 352
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnTargetDetails: TButton
                    Left = 232
                    Top = 66
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 66
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited EdtSeekerRangeAT: TEdit
                    Left = 117
                    Top = 244
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 244
                    ExplicitWidth = 60
                  end
                  inherited EdtSearchRadiusAT: TEdit
                    Left = 117
                    Top = 178
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 178
                    ExplicitWidth = 60
                  end
                  inherited EdtSearchDepthAT: TEdit
                    Left = 117
                    Top = 200
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 200
                    ExplicitWidth = 60
                  end
                  inherited EdtSafetyCeilingAT: TEdit
                    Left = 117
                    Top = 221
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 221
                    ExplicitWidth = 60
                  end
                  inherited EdtRunOutAT: TEdit
                    Left = 117
                    Top = 156
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 156
                    ExplicitWidth = 60
                  end
                  inherited EdtGyroAngleAT: TEdit
                    Left = 117
                    Top = 266
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 266
                    ExplicitWidth = 60
                  end
                  inherited EdtFiringModeAT: TEdit
                    Left = 117
                    Top = 134
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 134
                    ExplicitWidth = 60
                  end
                  inherited EdtATTargetTrack: TEdit
                    Left = 117
                    Top = 66
                    Width = 60
                    ExplicitLeft = 117
                    ExplicitTop = 66
                    ExplicitWidth = 60
                  end
                  inherited btnTube4AT: TButton
                    Left = 180
                    Top = 106
                    Width = 20
                    Height = 20
                    ExplicitLeft = 180
                    ExplicitTop = 106
                    ExplicitWidth = 20
                    ExplicitHeight = 20
                  end
                  inherited btnTube3AT: TButton
                    Left = 159
                    Top = 106
                    Width = 20
                    Height = 20
                    ExplicitLeft = 159
                    ExplicitTop = 106
                    ExplicitWidth = 20
                    ExplicitHeight = 20
                  end
                  inherited btnTube2AT: TButton
                    Left = 138
                    Top = 106
                    Width = 20
                    Height = 20
                    ExplicitLeft = 138
                    ExplicitTop = 106
                    ExplicitWidth = 20
                    ExplicitHeight = 20
                  end
                  inherited btnTube1AT: TButton
                    Left = 117
                    Top = 106
                    Width = 20
                    Height = 20
                    ExplicitLeft = 117
                    ExplicitTop = 106
                    ExplicitWidth = 20
                    ExplicitHeight = 20
                  end
                  inherited btntControlGyroAdvised: TButton
                    Left = 232
                    Top = 266
                    Width = 75
                    Height = 22
                    OnClick = fmWeapon1btntControlGyroAdvisedClick
                    ExplicitLeft = 232
                    ExplicitTop = 266
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnPlanAT: TButton
                    Left = 24
                    Top = 387
                    Width = 75
                    Height = 22
                    ExplicitLeft = 24
                    ExplicitTop = 387
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnLaunchAT: TButton
                    Left = 232
                    Top = 387
                    Width = 75
                    Height = 22
                    OnClick = fmWeapon1btnAcousticTorpedoLaunchClick
                    ExplicitLeft = 232
                    ExplicitTop = 387
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnControlSeeker: TButton
                    Left = 232
                    Top = 244
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 244
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnControlSearchRadius: TButton
                    Left = 232
                    Top = 178
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 178
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnControlSearchDepth: TButton
                    Left = 232
                    Top = 200
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 200
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnControlSafety: TButton
                    Left = 232
                    Top = 221
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 221
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnControlControlRunAdvised: TButton
                    Left = 232
                    Top = 156
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 156
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnCancelAT: TButton
                    Left = 118
                    Top = 387
                    Width = 75
                    Height = 22
                    ExplicitLeft = 118
                    ExplicitTop = 387
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                end
              end
              inherited grbWakeHomingTorpedos: TGroupBox [11]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox5: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited Bevel17: TBevel
                    Left = 43
                    Top = 16
                    Width = 264
                    ExplicitLeft = 43
                    ExplicitTop = 16
                    ExplicitWidth = 264
                  end
                  inherited Bevel18: TBevel
                    Left = 49
                    Top = 57
                    Width = 258
                    ExplicitLeft = 49
                    ExplicitTop = 57
                    ExplicitWidth = 258
                  end
                  inherited Bevel5: TBevel
                    Left = 48
                    Top = 98
                    Width = 259
                    ExplicitLeft = 48
                    ExplicitTop = 98
                    ExplicitWidth = 259
                  end
                  inherited Bevel6: TBevel
                    Left = 45
                    Top = 230
                    Width = 262
                    ExplicitLeft = 45
                    ExplicitTop = 230
                    ExplicitWidth = 262
                  end
                  inherited btnWakeHomingTargetTrack: TSpeedButton
                    Left = 180
                    Top = 107
                    ExplicitLeft = 180
                    ExplicitTop = 107
                  end
                  inherited Label23: TLabel
                    Left = 8
                    Top = 9
                    ExplicitLeft = 8
                    ExplicitTop = 9
                  end
                  inherited Label25: TLabel
                    Left = 117
                    ExplicitLeft = 117
                  end
                  inherited Label26: TLabel
                    Left = 8
                    Top = 91
                    ExplicitLeft = 8
                    ExplicitTop = 91
                  end
                  inherited Label27: TLabel
                    Top = 110
                    ExplicitTop = 110
                  end
                  inherited Label28: TLabel
                    Left = 8
                    Top = 223
                    ExplicitLeft = 8
                    ExplicitTop = 223
                  end
                  inherited Label29: TLabel
                    Left = 92
                    Top = 241
                    ExplicitLeft = 92
                    ExplicitTop = 241
                  end
                  inherited Label30: TLabel
                    Left = 171
                    Top = 241
                    ExplicitLeft = 171
                    ExplicitTop = 241
                  end
                  inherited Label31: TLabel
                    Top = 140
                    ExplicitTop = 140
                  end
                  inherited Label32: TLabel
                    Top = 157
                    ExplicitTop = 157
                  end
                  inherited Label33: TLabel
                    Top = 178
                    ExplicitTop = 178
                  end
                  inherited Label34: TLabel
                    Top = 199
                    ExplicitTop = 199
                  end
                  inherited Label35: TLabel
                    Top = 157
                    ExplicitTop = 157
                  end
                  inherited Label37: TLabel
                    Top = 178
                    ExplicitTop = 178
                  end
                  inherited Label46: TLabel
                    Top = 199
                    ExplicitTop = 199
                  end
                  inherited Label47: TLabel
                    Left = 8
                    Top = 50
                    ExplicitLeft = 8
                    ExplicitTop = 50
                  end
                  inherited Label55: TLabel
                    Top = 69
                    ExplicitTop = 69
                  end
                  inherited lblWakeHomingTargetIdentity: TLabel
                    Left = 114
                    Top = 140
                    ExplicitLeft = 114
                    ExplicitTop = 140
                  end
                  inherited lblWHQuantity: TLabel
                    Left = 173
                    ExplicitLeft = 173
                  end
                  inherited lbWakeHomingTargetTarget: TLabel
                    Left = 114
                    Top = 157
                    ExplicitLeft = 114
                    ExplicitTop = 157
                  end
                  inherited sbWakeHomingDisplayBlindHide: TSpeedButton
                    Left = 159
                    Top = 281
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 281
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited sbWakeHomingDisplayBlindShow: TSpeedButton
                    Left = 159
                    Top = 257
                    Width = 77
                    Height = 23
                    ExplicitLeft = 159
                    ExplicitTop = 257
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited sbWakeHomingDisplayRangeHide: TSpeedButton
                    Left = 69
                    Top = 281
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 281
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited sbWakeHomingDisplayRangeShow: TSpeedButton
                    Left = 69
                    Top = 257
                    Width = 77
                    Height = 23
                    ExplicitLeft = 69
                    ExplicitTop = 257
                    ExplicitWidth = 77
                    ExplicitHeight = 23
                  end
                  inherited btnLaunchWH: TButton
                    Left = 232
                    Top = 316
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 316
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited btnTargetSeekerWH: TButton
                    Left = 232
                    Top = 193
                    Width = 75
                    Height = 22
                    ExplicitLeft = 232
                    ExplicitTop = 193
                    ExplicitWidth = 75
                    ExplicitHeight = 22
                  end
                  inherited EdtLaunchBearingWH: TEdit
                    Left = 114
                    Top = 171
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 171
                    ExplicitWidth = 60
                  end
                  inherited EdtSalvoWH: TEdit
                    Left = 114
                    Top = 66
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 66
                    ExplicitWidth = 60
                  end
                  inherited EdtSeekerRangeWH: TEdit
                    Left = 114
                    Top = 193
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 193
                    ExplicitWidth = 60
                  end
                  inherited EdtWHTargetTrack: TEdit
                    Left = 114
                    Top = 107
                    Width = 60
                    ExplicitLeft = 114
                    ExplicitTop = 107
                    ExplicitWidth = 60
                  end
                end
              end
              inherited grbGunEngagementCIWS: TGroupBox [12]
                Width = 329
                Height = 533
                DoubleBuffered = True
                ParentColor = False
                ParentDoubleBuffered = False
                ExplicitWidth = 329
                ExplicitHeight = 533
              end
              inherited grbSurfaceToSurfaceMissile: TGroupBox [13]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox6: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited Label67: TLabel
                    Top = -1
                    ExplicitTop = -1
                  end
                  inherited Bevel29: TBevel
                    Top = 6
                    ExplicitTop = 6
                  end
                  inherited lblSurfaceToSurfaceMissileStatus: TLabel
                    Left = 14
                    Top = 17
                    ExplicitLeft = 14
                    ExplicitTop = 17
                  end
                  inherited Label69: TLabel
                    Left = 109
                    Top = 17
                    ExplicitLeft = 109
                    ExplicitTop = 17
                  end
                  inherited lbSurfaceToSurfaceMissileQuantity: TLabel
                    Left = 165
                    Top = 17
                    ExplicitLeft = 165
                    ExplicitTop = 17
                  end
                  inherited Label75: TLabel
                    Top = 31
                    ExplicitTop = 31
                  end
                  inherited Bevel33: TBevel
                    Left = 42
                    Top = 38
                    ExplicitLeft = 42
                    ExplicitTop = 38
                  end
                  inherited Label76: TLabel
                    Left = 14
                    Top = 49
                    ExplicitLeft = 14
                    ExplicitTop = 49
                  end
                  inherited Label77: TLabel
                    Top = 65
                    ExplicitTop = 65
                  end
                  inherited Bevel74: TBevel
                    Left = 42
                    Top = 89
                    Width = 261
                    Height = 0
                    ExplicitLeft = 42
                    ExplicitTop = 89
                    ExplicitWidth = 261
                    ExplicitHeight = 0
                  end
                  inherited Label78: TLabel
                    Top = 258
                    ExplicitTop = 258
                  end
                  inherited Bevel77: TBevel
                    Left = 76
                    Top = 266
                    Width = 227
                    ExplicitLeft = 76
                    ExplicitTop = 266
                    ExplicitWidth = 227
                  end
                  inherited Label414: TLabel
                    Left = 14
                    Top = 124
                    ExplicitLeft = 14
                    ExplicitTop = 124
                  end
                  inherited Label415: TLabel
                    Left = 14
                    Top = 82
                    ExplicitLeft = 14
                    ExplicitTop = 82
                  end
                  inherited Label416: TLabel
                    Left = 14
                    Top = 104
                    ExplicitLeft = 14
                    ExplicitTop = 104
                  end
                  inherited btnSurfaceToSurfaceMissileFiring: TSpeedButton
                    Left = 164
                    Top = 77
                    Height = 21
                    ExplicitLeft = 164
                    ExplicitTop = 77
                    ExplicitHeight = 21
                  end
                  inherited btnSurfaceToSurfaceMissileEngagement: TSpeedButton
                    Left = 164
                    Top = 99
                    Height = 21
                    ExplicitLeft = 164
                    ExplicitTop = 99
                    ExplicitHeight = 21
                  end
                  inherited btnSurfaceToSurfaceMissileTargetTrack: TSpeedButton
                    Left = 164
                    Top = 47
                    Height = 20
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                    ExplicitLeft = 164
                    ExplicitTop = 47
                    ExplicitHeight = 20
                  end
                  inherited sbSurfaceToSurfaceMissileDisplayRangeShow: TSpeedButton
                    Left = 29
                    Top = 274
                    Width = 77
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                    ExplicitLeft = 29
                    ExplicitTop = 274
                    ExplicitWidth = 77
                    ExplicitHeight = 22
                  end
                  inherited sbSurfaceToSurfaceMissileDisplayRangeHide: TSpeedButton
                    Left = 29
                    Top = 293
                    Width = 77
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                    ExplicitLeft = 29
                    ExplicitTop = 293
                    ExplicitWidth = 77
                    ExplicitHeight = 22
                  end
                  inherited lblDestruckRange: TLabel
                    Left = 14
                    Top = 198
                    ExplicitLeft = 14
                    ExplicitTop = 198
                  end
                  inherited lblCrossOverRange: TLabel
                    Left = 14
                    Top = 180
                    ExplicitLeft = 14
                    ExplicitTop = 180
                  end
                  inherited lblNmCrossOverRange: TLabel
                    Left = 169
                    Top = 180
                    ExplicitLeft = 169
                    ExplicitTop = 180
                  end
                  inherited lblNmDestruckRange: TLabel
                    Left = 169
                    Top = 198
                    ExplicitLeft = 169
                    ExplicitTop = 198
                  end
                  inherited editSurfaceToSurfaceMissileTargetTrack: TEdit
                    Left = 107
                    Top = 47
                    ExplicitLeft = 107
                    ExplicitTop = 47
                  end
                  inherited btnSurfaceToSurfacePlan: TButton
                    Left = 12
                    Top = 317
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                    ExplicitLeft = 12
                    ExplicitTop = 317
                    ExplicitHeight = 22
                  end
                  inherited btnSurfaceToSurfaceLaunch: TButton
                    Left = 220
                    Top = 317
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                    ExplicitLeft = 220
                    ExplicitTop = 317
                    ExplicitHeight = 22
                  end
                  inherited btnSurfaceToSurfaceCancel: TButton
                    Left = 98
                    Top = 317
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                    ExplicitLeft = 98
                    ExplicitTop = 317
                    ExplicitHeight = 22
                  end
                  inherited editSurfaceToSurfaceMissileFiring: TEdit
                    Left = 106
                    Top = 78
                    ExplicitLeft = 106
                    ExplicitTop = 78
                  end
                  inherited editSurfaceToSurfaceMissileEngangement: TEdit
                    Left = 106
                    Top = 100
                    ExplicitLeft = 106
                    ExplicitTop = 100
                  end
                  inherited btnSurfaceToSurfaceMissileTargetTrackDetails: TButton
                    Left = 218
                    Top = 46
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackDetailsClick
                    ExplicitLeft = 218
                    ExplicitTop = 46
                    ExplicitHeight = 22
                  end
                  inherited btnSurfaceToSurfaceMissileLauncherMore: TButton [31]
                    Left = 218
                    Top = 193
                    Height = 22
                    OnClick = fmWeapon1btnSurfaceToSurfaceMissileLauncherMoreClick
                    ExplicitLeft = 218
                    ExplicitTop = 193
                    ExplicitHeight = 22
                  end
                  inherited pnlLaunch1: TPanel [32]
                    Left = 105
                    Top = 122
                    ExplicitLeft = 105
                    ExplicitTop = 122
                  end
                  inherited pnlLaunch2: TPanel [33]
                    Left = 129
                    Top = 122
                    ExplicitLeft = 129
                    ExplicitTop = 122
                    inherited vbl2: TVrBlinkLed
                      ExplicitLeft = 1
                      ExplicitTop = 1
                    end
                  end
                  inherited pnlLaunch3: TPanel [34]
                    Left = 153
                    Top = 122
                    ExplicitLeft = 153
                    ExplicitTop = 122
                  end
                  inherited pnlLaunch4: TPanel [35]
                    Left = 177
                    Top = 122
                    ExplicitLeft = 177
                    ExplicitTop = 122
                    inherited vbl4: TVrBlinkLed
                      ExplicitLeft = 1
                      ExplicitTop = 1
                      ExplicitWidth = 21
                    end
                  end
                  inherited pnlLaunch5: TPanel [36]
                    Left = 201
                    Top = 122
                    ExplicitLeft = 201
                    ExplicitTop = 122
                    inherited vbl5: TVrBlinkLed
                      ExplicitLeft = 1
                      ExplicitTop = 1
                      ExplicitWidth = 21
                    end
                  end
                  inherited pnlLaunch6: TPanel [37]
                    Left = 225
                    Top = 122
                    ExplicitLeft = 225
                    ExplicitTop = 122
                    inherited vbl6: TVrBlinkLed
                      ExplicitLeft = 1
                      ExplicitTop = 1
                      ExplicitWidth = 21
                    end
                  end
                  inherited pnlLaunch7: TPanel [38]
                    Left = 249
                    Top = 122
                    ExplicitLeft = 249
                    ExplicitTop = 122
                    inherited vbl7: TVrBlinkLed
                      ExplicitLeft = 1
                      ExplicitTop = 1
                      ExplicitWidth = 21
                    end
                  end
                  inherited pnlLaunch8: TPanel [39]
                    Left = 273
                    Top = 122
                    ExplicitLeft = 273
                    ExplicitTop = 122
                    inherited vbl8: TVrBlinkLed
                      ExplicitLeft = 1
                      ExplicitTop = 1
                      ExplicitWidth = 21
                    end
                  end
                  inherited edtDestructRange: TEdit [40]
                    Left = 106
                    Top = 198
                    ExplicitLeft = 106
                    ExplicitTop = 198
                  end
                  inherited edtCrossOverRange: TEdit [41]
                    Left = 106
                    Top = 177
                    ExplicitLeft = 106
                    ExplicitTop = 177
                  end
                  inherited panSurfaceToSurfaceWp: TPanel [42]
                    Left = 10
                    Top = 218
                    Width = 295
                    Height = 43
                    ExplicitLeft = 10
                    ExplicitTop = 218
                    ExplicitWidth = 295
                    ExplicitHeight = 43
                    inherited Bevel16: TBevel
                      Top = 6
                      Width = 233
                      ExplicitTop = 6
                      ExplicitWidth = 233
                    end
                    inherited Label54: TLabel
                      Left = 6
                      Top = -1
                      ExplicitLeft = 6
                      ExplicitTop = -1
                    end
                    inherited btnSurfaceToSurfaceMissileWaypointsEdit: TButton
                      Top = 16
                      Width = 56
                      Height = 22
                      OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                      ExplicitTop = 16
                      ExplicitWidth = 56
                      ExplicitHeight = 22
                    end
                    inherited btnSurfaceToSurfaceMissileWaypointsAdd: TButton
                      Left = 60
                      Top = 16
                      Width = 56
                      Height = 22
                      OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                      ExplicitLeft = 60
                      ExplicitTop = 16
                      ExplicitWidth = 56
                      ExplicitHeight = 22
                    end
                    inherited btnSurfaceToSurfaceMissileWaypointsDelete: TButton
                      Left = 116
                      Top = 16
                      Width = 56
                      Height = 22
                      OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                      ExplicitLeft = 116
                      ExplicitTop = 16
                      ExplicitWidth = 56
                      ExplicitHeight = 22
                    end
                    inherited btnSurfaceToSurfaceMissileWaypointsApply: TButton
                      Left = 172
                      Top = 16
                      Width = 56
                      Height = 22
                      OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                      ExplicitLeft = 172
                      ExplicitTop = 16
                      ExplicitWidth = 56
                      ExplicitHeight = 22
                    end
                    inherited btnSurfaceToSurfaceMissileWaypointsCancel: TButton
                      Left = 228
                      Top = 16
                      Width = 56
                      Height = 22
                      OnClick = fmWeapon1btnSurfaceToSurfaceMissileTargetTrackClick
                      ExplicitLeft = 228
                      ExplicitTop = 16
                      ExplicitWidth = 56
                      ExplicitHeight = 22
                    end
                  end
                end
              end
              inherited grbBombDepthCharge: TGroupBox [14]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited bvl17: TBevel
                  Left = 49
                  Top = 98
                  Width = 269
                  ExplicitLeft = 49
                  ExplicitTop = 98
                  ExplicitWidth = 269
                end
                inherited bvl18: TBevel
                  Left = 48
                  Top = 57
                  Width = 270
                  ExplicitLeft = 48
                  ExplicitTop = 57
                  ExplicitWidth = 270
                end
                inherited bvl19: TBevel
                  Left = 45
                  Top = 138
                  Width = 273
                  ExplicitLeft = 45
                  ExplicitTop = 138
                  ExplicitWidth = 273
                end
                inherited bvl20: TBevel
                  Left = 43
                  Top = 16
                  Width = 275
                  ExplicitLeft = 43
                  ExplicitTop = 16
                  ExplicitWidth = 275
                end
                inherited btnBombTarget: TSpeedButton
                  Left = 180
                  Top = 66
                  ExplicitLeft = 180
                  ExplicitTop = 66
                end
                inherited lbl76: TLabel
                  Left = 8
                  Top = 91
                  ExplicitLeft = 8
                  ExplicitTop = 91
                end
                inherited lbl77: TLabel
                  Left = 24
                  Top = 110
                  ExplicitLeft = 24
                  ExplicitTop = 110
                end
                inherited lbl78: TLabel
                  Left = 8
                  Top = 50
                  ExplicitLeft = 8
                  ExplicitTop = 50
                end
                inherited lbl79: TLabel
                  Left = 8
                  Top = 131
                  ExplicitLeft = 8
                  ExplicitTop = 131
                end
                inherited lbl80: TLabel
                  Left = 92
                  Top = 149
                  ExplicitLeft = 92
                  ExplicitTop = 149
                end
                inherited lbl81: TLabel
                  Left = 24
                  Top = 69
                  ExplicitLeft = 24
                  ExplicitTop = 69
                end
                inherited lbl82: TLabel
                  Left = 8
                  Top = 9
                  ExplicitLeft = 8
                  ExplicitTop = 9
                end
                inherited lbl83: TLabel
                  Left = 118
                  Top = 28
                  ExplicitLeft = 118
                  ExplicitTop = 28
                end
                inherited lblBombQuantity: TLabel
                  Left = 173
                  Top = 28
                  ExplicitLeft = 173
                  ExplicitTop = 28
                end
                inherited lblBombStatus: TLabel
                  Left = 25
                  Top = 28
                  ExplicitLeft = 25
                  ExplicitTop = 28
                end
                inherited btnBombDisplayRangeHide: TSpeedButton
                  Left = 69
                  Top = 189
                  Width = 77
                  Height = 23
                  ExplicitLeft = 69
                  ExplicitTop = 189
                  ExplicitWidth = 77
                  ExplicitHeight = 23
                end
                inherited btnBombDisplayRangeShow: TSpeedButton
                  Left = 69
                  Top = 165
                  Width = 77
                  Height = 23
                  ExplicitLeft = 69
                  ExplicitTop = 165
                  ExplicitWidth = 77
                  ExplicitHeight = 23
                end
                inherited lbl86: TLabel
                  Top = 83
                  ExplicitTop = 83
                end
                inherited btnBombDrop: TButton
                  Left = 232
                  Top = 224
                  Width = 75
                  Height = 22
                  ExplicitLeft = 232
                  ExplicitTop = 224
                  ExplicitWidth = 75
                  ExplicitHeight = 22
                end
                inherited EdtBombControlSalvo: TEdit
                  Left = 117
                  Top = 106
                  Width = 60
                  ExplicitLeft = 117
                  ExplicitTop = 106
                  ExplicitWidth = 60
                end
                inherited EdtBombTargetTrack: TEdit
                  Left = 117
                  Top = 66
                  Width = 60
                  ExplicitLeft = 117
                  ExplicitTop = 66
                  ExplicitWidth = 60
                end
                inherited chkBombDropWhitoutTarget: TCheckBox
                  Top = 69
                  ExplicitTop = 69
                end
              end
              inherited grbGunEngagementAutomaticManualMode: TGroupBox
                Width = 329
                Height = 533
                DoubleBuffered = True
                ParentColor = False
                ParentDoubleBuffered = False
                ExplicitWidth = 329
                ExplicitHeight = 533
              end
              inherited grbTacticalMissiles: TGroupBox [16]
                Width = 329
                Height = 533
                ExplicitWidth = 329
                ExplicitHeight = 533
                inherited ScrollBox7: TScrollBox
                  Width = 325
                  Height = 516
                  ExplicitWidth = 325
                  ExplicitHeight = 516
                  inherited Bevel107: TBevel
                    Top = 5
                    ExplicitTop = 5
                  end
                  inherited Bevel108: TBevel
                    Top = 199
                    ExplicitTop = 199
                  end
                  inherited Bevel59: TBevel
                    Left = 41
                    Top = 121
                    ExplicitLeft = 41
                    ExplicitTop = 121
                  end
                  inherited Bevel60: TBevel
                    Left = 38
                    Top = 36
                    ExplicitLeft = 38
                    ExplicitTop = 36
                  end
                  inherited Bevel62: TBevel
                    Left = 42
                    Top = 236
                    ExplicitLeft = 42
                    ExplicitTop = 236
                  end
                  inherited btnTacticalMissileTargetAimpoint: TSpeedButton
                    Left = 247
                    Top = 66
                    ExplicitLeft = 247
                    ExplicitTop = 66
                  end
                  inherited btnTacticalMissileTargetTrack: TSpeedButton
                    Height = 20
                    OnClick = fmWeapon1btnTacticalMissileTargetTrackClick
                    ExplicitHeight = 20
                  end
                  inherited Label289: TLabel
                    Top = -2
                    ExplicitTop = -2
                  end
                  inherited Label294: TLabel
                    Left = 117
                    Top = 14
                    ExplicitLeft = 117
                    ExplicitTop = 14
                  end
                  inherited Label295: TLabel
                    Left = 1
                    Top = 28
                    ExplicitLeft = 1
                    ExplicitTop = 28
                  end
                  inherited Label296: TLabel
                    Left = 4
                    Top = 114
                    ExplicitLeft = 4
                    ExplicitTop = 114
                  end
                  inherited Label302: TLabel
                    Left = 24
                    Top = 130
                    ExplicitLeft = 24
                    ExplicitTop = 130
                  end
                  inherited Label303: TLabel
                    Left = 175
                    Top = 93
                    ExplicitLeft = 175
                    ExplicitTop = 93
                  end
                  inherited Label304: TLabel
                    Left = 2
                    Top = 228
                    ExplicitLeft = 2
                    ExplicitTop = 228
                  end
                  inherited Label486: TLabel
                    Left = 51
                    Top = 239
                    ExplicitLeft = 51
                    ExplicitTop = 239
                  end
                  inherited Label494: TLabel
                    Left = 204
                    Top = 239
                    ExplicitLeft = 204
                    ExplicitTop = 239
                  end
                  inherited Label496: TLabel
                    Left = 24
                    Top = 152
                    ExplicitLeft = 24
                    ExplicitTop = 152
                  end
                  inherited Label497: TLabel
                    Left = 23
                    Top = 174
                    ExplicitLeft = 23
                    ExplicitTop = 174
                  end
                  inherited Label498: TLabel
                    Left = 175
                    Top = 152
                    ExplicitLeft = 175
                    ExplicitTop = 152
                  end
                  inherited Label499: TLabel
                    Left = 174
                    Top = 174
                    ExplicitLeft = 174
                    ExplicitTop = 174
                  end
                  inherited Label500: TLabel
                    Left = 1
                    Top = 191
                    ExplicitLeft = 1
                    ExplicitTop = 191
                  end
                  inherited lblTacticalMissileStatus: TLabel
                    Left = 26
                    Top = 14
                    ExplicitLeft = 26
                    ExplicitTop = 14
                  end
                  inherited lblTacticalMissileStatusQuantity: TLabel
                    Left = 173
                    Top = 14
                    ExplicitLeft = 173
                    ExplicitTop = 14
                  end
                  inherited sbTacticalMissileDisplayBlindHide: TSpeedButton
                    Left = 194
                    Top = 272
                    Height = 22
                    ExplicitLeft = 194
                    ExplicitTop = 272
                    ExplicitHeight = 22
                  end
                  inherited sbTacticalMissileDisplayBlindShow: TSpeedButton
                    Left = 194
                    Top = 253
                    Height = 22
                    ExplicitLeft = 194
                    ExplicitTop = 253
                    ExplicitHeight = 22
                  end
                  inherited sbTacticalMissileDisplayRangeHide: TSpeedButton
                    Left = 31
                    Top = 272
                    Height = 22
                    ExplicitLeft = 31
                    ExplicitTop = 272
                    ExplicitHeight = 22
                  end
                  inherited sbTacticalMissileDisplayRangeShow: TSpeedButton
                    Left = 31
                    Top = 253
                    Height = 22
                    ExplicitLeft = 31
                    ExplicitTop = 253
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileControlCruise: TButton
                    Left = 227
                    Top = 146
                    Height = 22
                    ExplicitLeft = 227
                    ExplicitTop = 146
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileControlSeeker: TButton
                    Left = 227
                    Top = 169
                    Height = 22
                    ExplicitLeft = 227
                    ExplicitTop = 169
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileLaunch: TButton
                    Left = 229
                    Top = 297
                    Height = 22
                    ExplicitLeft = 229
                    ExplicitTop = 297
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileTargetBearing: TButton
                    Left = 226
                    Top = 90
                    Height = 22
                    ExplicitLeft = 226
                    ExplicitTop = 90
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileWaypointAdd: TButton
                    Left = 125
                    Top = 207
                    Height = 22
                    ExplicitLeft = 125
                    ExplicitTop = 207
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileWaypointCancel: TButton
                    Left = 221
                    Top = 207
                    Height = 22
                    ExplicitLeft = 221
                    ExplicitTop = 207
                    ExplicitHeight = 22
                  end
                  inherited btnTacticalMissileWaypointEdit: TButton
                    Left = 29
                    Top = 207
                    Height = 22
                    ExplicitLeft = 29
                    ExplicitTop = 207
                    ExplicitHeight = 22
                  end
                  inherited editTacticalMissileControlCruise: TEdit
                    Left = 115
                    Top = 148
                    ExplicitLeft = 115
                    ExplicitTop = 148
                  end
                  inherited editTacticalMissileControlSalvo: TEdit
                    Left = 115
                    Top = 126
                    ExplicitLeft = 115
                    ExplicitTop = 126
                  end
                  inherited editTacticalMissileControlSeeker: TEdit
                    Left = 115
                    Top = 170
                    ExplicitLeft = 115
                    ExplicitTop = 170
                  end
                  inherited rdoTacticalMissileTargetAimpoint: TRadioButton
                    Top = 68
                    ExplicitTop = 68
                  end
                  inherited rdoTacticalMissileTargetBearing: TRadioButton
                    Top = 90
                    ExplicitTop = 90
                  end
                  inherited rdoTacticalMissileTargetTrack: TRadioButton
                    Top = 46
                    ExplicitTop = 46
                  end
                  inherited editTacticalMissileTargetAimpoint: TEdit
                    Top = 66
                    ExplicitTop = 66
                  end
                  inherited editTacticalMissileTargetTrack: TEdit
                    Top = 44
                    ExplicitTop = 44
                  end
                  inherited editTacticalMissileTargetBearing: TEdit
                    Top = 88
                    ExplicitTop = 88
                  end
                end
              end
            end
          end
          inherited pmenuWeapon: TPopupMenu
            Left = 234
            Top = 65529
          end
          inherited pmenuFiring: TPopupMenu
            Left = 156
            Top = 65527
          end
          inherited pmenuEngagement: TPopupMenu
            Left = 204
            Top = 65528
          end
          inherited TimerLaunch: TTimer
            Left = 128
            Top = 520
          end
          inherited TimerRipple: TTimer
            Left = 96
            Top = 520
          end
          inherited tmrSTOT: TTimer
            OnTimer = nil
            Left = 64
            Top = 520
          end
          inherited tmrLaunchSTOT: TTimer
            Left = 32
            Top = 520
          end
          inherited pmenuWpnCarrier: TPopupMenu
            Left = 176
            Top = 65528
          end
          inherited pmenuWpn: TPopupMenu
            Top = 0
          end
          inherited pmTorpedoFiring: TPopupMenu
            Left = 168
            Top = 520
          end
          inherited pmTorpedoRunOut: TPopupMenu
            Left = 200
            Top = 520
          end
          inherited pmTorpedoGyroAngle: TPopupMenu
            Left = 232
            Top = 520
          end
        end
      end
      object tsCounterMeasure: TTabSheet
        ImageIndex = 4
        inline fmCounterMeasure1: TfmCounterMeasure
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited PanelALL: TPanel
            Width = 329
            Height = 441
            ExplicitWidth = 329
            ExplicitHeight = 441
            inherited PanelCounterMeasure: TPanel
              Width = 329
              Height = 441
              ExplicitWidth = 329
              ExplicitHeight = 441
              inherited grbTowedJammerDecoy: TGroupBox [0]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited ScrollBox4: TScrollBox
                  Width = 325
                  Height = 424
                  ExplicitWidth = 325
                  ExplicitHeight = 424
                  inherited Bevel109: TBevel
                    Top = 189
                    ExplicitTop = 189
                  end
                  inherited Bevel118: TBevel
                    Top = 156
                    ExplicitTop = 156
                  end
                  inherited Label503: TLabel
                    Left = 50
                    ExplicitLeft = 50
                  end
                  inherited Label504: TLabel
                    Top = 126
                    ExplicitTop = 126
                  end
                  inherited Label506: TLabel
                    Top = 105
                    ExplicitTop = 105
                  end
                  inherited Label507: TLabel
                    Top = 107
                    ExplicitTop = 107
                  end
                  inherited Label508: TLabel
                    Top = 171
                    ExplicitTop = 171
                  end
                  inherited Label509: TLabel
                    Top = 166
                    ExplicitTop = 166
                  end
                  inherited Label512: TLabel
                    Top = 183
                    ExplicitTop = 183
                  end
                  inherited Label559: TLabel
                    Top = 149
                    ExplicitTop = 149
                  end
                  inherited Label560: TLabel
                    Top = 201
                    ExplicitTop = 201
                  end
                  inherited Label561: TLabel
                    Top = 219
                    ExplicitTop = 219
                  end
                  inherited Label563: TLabel
                    Top = 219
                    ExplicitTop = 219
                  end
                  inherited Label564: TLabel
                    Top = 201
                    ExplicitTop = 201
                  end
                  inherited lblTowedJammerDecoyActual: TLabel
                    Top = 219
                    ExplicitTop = 219
                  end
                  inherited lblTowedJammerDecoyQuantity: TLabel
                    Top = 166
                    ExplicitTop = 166
                  end
                  inherited sbTowedJammerDecoyActionDeploy: TSpeedButton
                    Left = 20
                    Top = 187
                    Width = 89
                    Height = 24
                    ExplicitLeft = 20
                    ExplicitTop = 187
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbTowedJammerDecoyActionStow: TSpeedButton
                    Left = 20
                    Top = 209
                    Width = 89
                    Height = 24
                    ExplicitLeft = 20
                    ExplicitTop = 209
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbTowedJammerDecoyModeAuto: TSpeedButton
                    Width = 89
                    Height = 24
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbTowedJammerDecoyModeManual: TSpeedButton
                    Top = 54
                    Width = 89
                    Height = 24
                    ExplicitTop = 54
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbTowedJammerDecoyModeOff: TSpeedButton
                    Top = 76
                    Width = 89
                    Height = 24
                    ExplicitTop = 76
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbTowedJammerDecoyTargetingSpot: TSpeedButton
                    Width = 89
                    Height = 24
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbTowedJammerDecoyTargetingTrack: TSpeedButton
                    Top = 54
                    Width = 89
                    Height = 24
                    ExplicitTop = 54
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited editTowedJammerDecoyOrdered: TEdit
                    Top = 197
                    ExplicitTop = 197
                  end
                  inherited edtTowedJammerDecoyBearing: TEdit
                    Top = 105
                    ExplicitTop = 105
                  end
                  inherited edtTowedJammerDecoySpotNumb: TEdit
                    Top = 127
                    ExplicitTop = 127
                  end
                end
              end
              inherited grbSurfaceChaffDeployment: TGroupBox [1]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited ScrollBox2: TScrollBox
                  Width = 325
                  Height = 424
                  ExplicitWidth = 325
                  ExplicitHeight = 424
                  inherited Bevel3: TBevel
                    Top = 4
                    ExplicitTop = 4
                  end
                  inherited Label12: TLabel
                    Top = 43
                    ExplicitTop = 43
                  end
                  inherited btnSurfaceChaffLauncher: TSpeedButton
                    OnClick = fmCounterMeasure1btnSurfaceChaffLauncherClick
                  end
                  inherited btnSurfaceChaffType: TSpeedButton
                    OnClick = fmCounterMeasure1btnSurfaceChaffTypeClick
                  end
                  inherited btnSurfaceChaffCopy: TSpeedButton
                    OnClick = fmCounterMeasure1btnSurfaceChaffCopyClick
                  end
                  inherited btnSurfaceChaffLaunch: TSpeedButton
                    OnClick = fmCounterMeasure1btnSurfaceChaffLaunchClick
                  end
                  inherited btnSurfaceChaffAbort: TSpeedButton
                    OnClick = fmCounterMeasure1btnSurfaceChaffAbortClick
                  end
                  inherited edtSurfaceChaffBloomRange: TEdit
                    OnKeyPress = fmCounterMeasure1edtSurfaceChaffBloomRangeKeyPress
                  end
                  inherited edtSurfaceChaffBloomAltitude: TEdit
                    OnKeyPress = fmCounterMeasure1edtSurfaceChaffBloomAltitudeKeyPress
                  end
                  inherited edtSurfaceChaffSalvoSize: TEdit
                    OnKeyPress = fmCounterMeasure1edtSurfaceChaffSalvoSizeKeyPress
                  end
                  inherited edtSurfaceChaffDelay: TEdit
                    OnKeyPress = fmCounterMeasure1edtSurfaceChaffDelayKeyPress
                  end
                  inherited ckSurfaceChaffEnabled: TCheckBox
                    OnClick = fmCounterMeasure1ckSurfaceChaffEnabledClick
                  end
                  inherited ckSurfaceChaffSeductionEnabled: TCheckBox
                    OnClick = fmCounterMeasure1ckSurfaceChaffSeductionEnabledClick
                  end
                end
              end
              inherited grpAirBubble: TGroupBox [2]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited btnType: TSpeedButton
                  Left = 278
                  Width = 29
                  Height = 23
                  ExplicitLeft = 278
                  ExplicitWidth = 29
                  ExplicitHeight = 23
                end
                inherited btnAirBubbleDeploy: TButton
                  Width = 89
                  Height = 24
                  OnClick = fmCounterMeasure1btnAirBubbleDeployClick
                  ExplicitWidth = 89
                  ExplicitHeight = 24
                end
              end
              inherited grbAcousticDecoy: TGroupBox [3]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited ScrollBox1: TScrollBox
                  Width = 325
                  Height = 424
                  ExplicitWidth = 325
                  ExplicitHeight = 424
                  inherited Label4: TLabel
                    Left = 50
                    ExplicitLeft = 50
                  end
                  inherited Label6: TLabel
                    Left = 43
                    ExplicitLeft = 43
                  end
                  inherited Label7: TLabel
                    Left = 152
                    ExplicitLeft = 152
                  end
                  inherited btnComboAcousticDecoyMode: TSpeedButton
                    Left = 275
                    Width = 26
                    Height = 23
                    ExplicitLeft = 275
                    ExplicitWidth = 26
                    ExplicitHeight = 23
                  end
                  inherited btnComboAcousticDecoyFilter: TSpeedButton
                    Left = 275
                    Width = 26
                    Height = 23
                    ExplicitLeft = 275
                    ExplicitWidth = 26
                    ExplicitHeight = 23
                  end
                  inherited sbAcousticDecoyActionDeploy: TSpeedButton
                    Width = 89
                    ExplicitWidth = 89
                  end
                  inherited sbAcousticDecoyActionStow: TSpeedButton
                    Width = 89
                    ExplicitWidth = 89
                  end
                  inherited sbAcousticDecoyActivationOn: TSpeedButton
                    Width = 89
                    Height = 23
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbAcousticDecoyActivationOff: TSpeedButton
                    Width = 89
                    Height = 23
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbAcousticDecoyCycleTimerOn: TSpeedButton
                    Width = 89
                    Height = 23
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbAcousticDecoyCycleTimerOff: TSpeedButton
                    Width = 89
                    Height = 23
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                end
              end
              inherited grbOnBoardSelfDefenseJammer: TGroupBox [4]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited ScrollBox5: TScrollBox
                  Width = 325
                  Height = 424
                  ExplicitWidth = 325
                  ExplicitHeight = 424
                  inherited Label543: TLabel
                    Left = 161
                    ExplicitLeft = 161
                  end
                  inherited Label544: TLabel
                    Left = 60
                    ExplicitLeft = 60
                  end
                  inherited sbOnBoardSelfDefenseJammerControlModeAuto: TSpeedButton
                    Width = 89
                    Height = 24
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbOnBoardSelfDefenseJammerControlModeManual: TSpeedButton
                    Top = 57
                    Width = 89
                    Height = 24
                    ExplicitTop = 57
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbOnBoardSelfDefenseJammerControlModeOff: TSpeedButton
                    Top = 79
                    Width = 89
                    Height = 24
                    ExplicitTop = 79
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbOnBoardSelfDefenseJammerControlTargetingSpot: TSpeedButton
                    Width = 89
                    Height = 24
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbOnBoardSelfDefenseJammerControlTargetingTrack: TSpeedButton
                    Top = 57
                    Width = 89
                    Height = 24
                    ExplicitTop = 57
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                end
              end
              inherited grbAirborneChaff: TGroupBox [5]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited btnAirboneChaffType: TSpeedButton
                  Left = 279
                  Width = 28
                  Height = 23
                  ExplicitLeft = 279
                  ExplicitWidth = 28
                  ExplicitHeight = 23
                end
                inherited btnChaffAirboneDeploy: TButton
                  Width = 89
                  Height = 24
                  OnClick = fmCounterMeasure1btnChaffAirboneDeployClick
                  ExplicitWidth = 89
                  ExplicitHeight = 24
                end
              end
              inherited grbFloatingDecoy: TGroupBox [6]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited btnFloatingDecoyDeploy: TButton
                  Left = 216
                  Width = 89
                  Height = 24
                  OnClick = fmCounterMeasure1btnFloatingDecoyDeployClick
                  ExplicitLeft = 216
                  ExplicitWidth = 89
                  ExplicitHeight = 24
                end
              end
              inherited grbRadarNoiseJammer: TGroupBox [7]
                Width = 329
                Height = 441
                ExplicitWidth = 329
                ExplicitHeight = 441
                inherited ScrollBox3: TScrollBox
                  Width = 325
                  Height = 424
                  ExplicitWidth = 325
                  ExplicitHeight = 424
                  inherited btnComboRadarJammingControlMode: TSpeedButton
                    Left = 276
                    Top = 78
                    Width = 27
                    Height = 23
                    ExplicitLeft = 276
                    ExplicitTop = 78
                    ExplicitWidth = 27
                    ExplicitHeight = 23
                  end
                  inherited Label532: TLabel
                    Top = 84
                    ExplicitTop = 84
                  end
                  inherited Label558: TLabel
                    Left = 34
                    Top = 13
                    ExplicitLeft = 34
                    ExplicitTop = 13
                  end
                  inherited sbRadarJammingControlActivationOn: TSpeedButton [5]
                    Width = 89
                    Height = 24
                    OnClick = fmCounterMeasure1sbRadarJammingControlActivationOnClick
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited sbRadarJammingControlActivationOff: TSpeedButton [6]
                    Top = 50
                    Width = 89
                    Height = 24
                    OnClick = fmCounterMeasure1sbRadarJammingControlActivationOffClick
                    ExplicitTop = 50
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited cbRadarJammingControlMode: TComboBox
                    Top = 79
                    ExplicitTop = 79
                  end
                  inherited PanelRadarJammingMode: TPanel
                    Top = 104
                    ExplicitTop = 104
                    inherited gbRadarJammingBarrageMode: TGroupBox
                      inherited Label533: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited Label534: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited Label538: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                    end
                    inherited gbRadarJammingSpotNumberMode: TGroupBox
                      inherited Label521: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited Label522: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited Label525: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                    end
                    inherited gbRadarJammingSelectedTrackMode: TGroupBox
                      inherited Label528: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited Label530: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited Label540: TLabel
                        Left = 185
                        ExplicitLeft = 185
                      end
                      inherited btnRadarJammingModeSelectedTrackTrack: TSpeedButton
                        Top = 5
                        Width = 31
                        OnClick = fmCounterMeasure1btnRadarJammingModeSelectedTrackTrackClick
                        ExplicitTop = 5
                        ExplicitWidth = 31
                      end
                    end
                  end
                end
              end
            end
          end
          inherited PanelCounterMeasureSpace: TPanel
            Width = 329
            ExplicitWidth = 329
          end
          inherited PanelCounterMeasureChoice: TPanel
            Width = 329
            ExplicitWidth = 329
            inherited lvECM: TListView
              Width = 329
              ExplicitWidth = 329
            end
          end
        end
      end
      object tsFireControl: TTabSheet
        ImageIndex = 5
        inline fmFireControl1: TfmFireControl
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited PanelFCChoices: TPanel
            Width = 329
            Height = 82
            ExplicitWidth = 329
            ExplicitHeight = 82
            inherited lstAssetsChoices: TListView
              Width = 329
              Height = 87
              ExplicitWidth = 329
              ExplicitHeight = 87
            end
          end
          inherited PaneFCSpace: TPanel
            Top = 82
            Width = 329
            ExplicitTop = 82
            ExplicitWidth = 329
          end
          inherited PanelALL: TPanel
            Top = 94
            Width = 329
            Height = 461
            ExplicitTop = 94
            ExplicitWidth = 329
            ExplicitHeight = 461
            inherited PanelFC: TPanel
              Width = 329
              Height = 461
              ExplicitWidth = 329
              ExplicitHeight = 461
              inherited ScrollBox3: TScrollBox
                Width = 329
                Height = 461
                ExplicitWidth = 329
                ExplicitHeight = 461
                inherited grbFireControl: TGroupBox
                  Width = 329
                  Height = 461
                  ExplicitWidth = 329
                  ExplicitHeight = 461
                  inherited Bevel27: TBevel
                    Top = 10
                    Width = 265
                    ExplicitTop = 10
                    ExplicitWidth = 265
                  end
                  inherited Bevel52: TBevel
                    Top = 101
                    Width = 265
                    ExplicitTop = 101
                    ExplicitWidth = 265
                  end
                  inherited Bevel53: TBevel
                    Top = 250
                    Width = 265
                    ExplicitTop = 250
                    ExplicitWidth = 265
                  end
                  inherited btnSearchFireControlAssetsTarget: TSpeedButton
                    Tag = 4
                    Left = 96
                    Top = 111
                    Height = 21
                    Spacing = 0
                    OnClick = fmFireControl1btnSearchFireControlAssetsTargetClick
                    ExplicitLeft = 96
                    ExplicitTop = 111
                    ExplicitHeight = 21
                  end
                  inherited Label265: TLabel
                    Left = 51
                    Top = 14
                    ExplicitLeft = 51
                    ExplicitTop = 14
                  end
                  inherited Label266: TLabel
                    Top = 17
                    ExplicitTop = 17
                  end
                  inherited Label267: TLabel
                    Top = 4
                    ExplicitTop = 4
                  end
                  inherited Label268: TLabel
                    Top = 95
                    ExplicitTop = 95
                  end
                  inherited Label514: TLabel
                    Top = 244
                    ExplicitTop = 244
                  end
                  inherited Label515: TLabel
                    Left = 74
                    Top = 253
                    ExplicitLeft = 74
                    ExplicitTop = 253
                  end
                  inherited Label527: TLabel
                    Left = 184
                    Top = 253
                    ExplicitLeft = 184
                    ExplicitTop = 253
                  end
                  inherited lbControlChannel: TLabel
                    Top = 17
                    ExplicitTop = 17
                  end
                  inherited sbFireControlAssetsBlindZonesHide: TSpeedButton
                    Left = 166
                    Top = 287
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 166
                    ExplicitTop = 287
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbFireControlAssetsBlindZonesShow: TSpeedButton
                    Left = 166
                    Top = 266
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 166
                    ExplicitTop = 266
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbFireControlAssetsDisplayHide: TSpeedButton
                    Left = 44
                    Top = 287
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 44
                    ExplicitTop = 287
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbFireControlAssetsDisplayShow: TSpeedButton
                    Left = 44
                    Top = 266
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 44
                    ExplicitTop = 266
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbFireControlAssetsModeOff: TSpeedButton
                    Left = 20
                    Top = 69
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 20
                    ExplicitTop = 69
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbFireControlAssetsModeSearch: TSpeedButton
                    Left = 20
                    Top = 27
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 20
                    ExplicitTop = 27
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited sbFireControlAssetsModeTrackOnly: TSpeedButton
                    Left = 20
                    Top = 48
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 20
                    ExplicitTop = 48
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited btnFireControlAssetsTargetAssign: TButton
                    Left = 162
                    Top = 114
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 162
                    ExplicitTop = 114
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited btnFireControlAssetsTargetBreak: TButton
                    Left = 162
                    Top = 135
                    Width = 89
                    Height = 24
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 162
                    ExplicitTop = 135
                    ExplicitWidth = 89
                    ExplicitHeight = 24
                  end
                  inherited btnFireControlAssetsTargetBreakAll: TButton
                    Left = 162
                    Top = 157
                    Width = 89
                    Height = 23
                    OnClick = btnFireControlOnClick
                    ExplicitLeft = 162
                    ExplicitTop = 157
                    ExplicitWidth = 89
                    ExplicitHeight = 23
                  end
                  inherited edtFireControlAssetsTarget: TEdit
                    Top = 111
                    ExplicitTop = 111
                  end
                  inherited lstFireControlAssetsAssignedTracks: TListView
                    Top = 134
                    Width = 108
                    Height = 108
                    ParentFont = False
                    ExplicitTop = 134
                    ExplicitWidth = 108
                    ExplicitHeight = 108
                  end
                end
              end
            end
          end
        end
      end
      object tsEMCON: TTabSheet
        ImageIndex = 6
        inline fmEMCON1: TfmEMCON
          Left = 0
          Top = 0
          Width = 329
          Height = 555
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 329
          ExplicitHeight = 555
          inherited PanelEmconChoices: TPanel
            Width = 329
            ExplicitWidth = 329
            inherited LvEmcon: TListView
              Width = 327
              Font.Color = clActiveCaption
              ParentFont = False
              ExplicitWidth = 327
            end
          end
          inherited PaneALL: TPanel
            Width = 329
            Height = 458
            ExplicitWidth = 329
            ExplicitHeight = 458
            inherited PanelEmcon: TPanel
              Width = 329
              Height = 458
              ExplicitWidth = 329
              ExplicitHeight = 458
              inherited ScrollBox2: TScrollBox
                Width = 327
                Height = 456
                ExplicitWidth = 327
                ExplicitHeight = 456
                inherited Bevel18: TBevel
                  Top = 226
                  ExplicitTop = 226
                end
                inherited Label562: TLabel
                  Top = 220
                  ExplicitTop = 220
                end
                inherited sbEmconAllSystemsAllSilent: TSpeedButton
                  Top = 237
                  Height = 22
                  OnClick = fmEMCON1sbEmconAllSystemsAllSilentClick
                  ExplicitTop = 237
                  ExplicitHeight = 22
                end
                inherited sbEmconAllSystemsClearAll: TSpeedButton
                  Top = 257
                  Height = 22
                  OnClick = fmEMCON1sbEmconAllSystemsClearAllClick
                  ExplicitTop = 257
                  ExplicitHeight = 22
                end
                inherited btnEmconDistributeToGroup: TButton
                  Height = 24
                  ExplicitHeight = 24
                end
                inherited cbEmconAcousticDecoys: TCheckBox
                  Top = 202
                  ExplicitTop = 202
                end
                inherited cbEmconActiveSonar: TCheckBox
                  Top = 187
                  OnClick = fmEMCON1cbEmconSearchRadarClick
                  ExplicitTop = 187
                end
                inherited cbEmconFireControl: TCheckBox
                  Top = 46
                  OnClick = fmEMCON1cbEmconSearchRadarClick
                  ExplicitTop = 46
                end
                inherited cbEmconHFComm: TCheckBox
                  Top = 108
                  ExplicitTop = 108
                end
                inherited cbEmconHFDatalink: TCheckBox
                  Top = 138
                  ExplicitTop = 138
                end
                inherited cbEmconIFF: TCheckBox
                  Top = 63
                  OnClick = fmEMCON1cbEmconSearchRadarClick
                  ExplicitTop = 63
                end
                inherited cbEmconJammingSystems: TCheckBox
                  Top = 78
                  ExplicitTop = 78
                end
                inherited cbEmconLasers: TCheckBox
                  Top = 93
                  ExplicitTop = 93
                end
                inherited cbEmconSearchRadar: TCheckBox
                  OnClick = fmEMCON1cbEmconSearchRadarClick
                end
                inherited cbEmconUWT: TCheckBox
                  Top = 170
                  ExplicitTop = 170
                end
                inherited cbEmconVHFUHFComm: TCheckBox
                  Top = 123
                  ExplicitTop = 123
                end
                inherited cbEmconVHFUHFDatalink: TCheckBox
                  Top = 154
                  OnClick = fmEMCON1cbEmconSearchRadarClick
                  ExplicitTop = 154
                end
                inherited pnlGroupAirbone: TPanel
                  Top = 204
                  Height = 78
                  ExplicitTop = 204
                  ExplicitHeight = 78
                  inherited sbEmconGroupAirboneEMCON: TSpeedButton
                    Top = 53
                    Height = 22
                    ExplicitTop = 53
                    ExplicitHeight = 22
                  end
                  inherited sbEmconGroupAirboneClear: TSpeedButton
                    Top = 33
                    Height = 22
                    ExplicitTop = 33
                    ExplicitHeight = 22
                  end
                end
              end
            end
          end
        end
      end
    end
    object HookContactInfoTraineeDisplay: TPageControl
      Left = 0
      Top = 83
      Width = 337
      Height = 222
      ActivePage = tsDetails
      Align = alTop
      TabOrder = 0
      object tsHook: TTabSheet
        Caption = 'Hook'
        object lbTrackHook: TLabel
          Left = 100
          Top = 5
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label1: TLabel
          Left = 3
          Top = 20
          Width = 27
          Height = 13
          Caption = 'Name'
        end
        object lbNameHook: TLabel
          Left = 100
          Top = 21
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbClassHook: TLabel
          Left = 100
          Top = 38
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label2: TLabel
          Left = 3
          Top = 38
          Width = 25
          Height = 13
          Caption = 'Class'
        end
        object lbBearingHook: TLabel
          Left = 100
          Top = 56
          Width = 15
          Height = 13
          Caption = '---'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 3
          Top = 56
          Width = 36
          Height = 13
          Caption = 'Bearing'
        end
        object Label4: TLabel
          Left = 190
          Top = 56
          Width = 43
          Height = 13
          Caption = 'degree T'
        end
        object Label5: TLabel
          Left = 3
          Top = 73
          Width = 31
          Height = 13
          Caption = 'Range'
        end
        object lbRangeHook: TLabel
          Left = 100
          Top = 73
          Width = 15
          Height = 13
          Caption = '---'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 190
          Top = 73
          Width = 14
          Height = 13
          Caption = 'nm'
        end
        object Label7: TLabel
          Left = 140
          Top = 109
          Width = 3
          Height = 13
        end
        object lbPositionHook1: TLabel
          Left = 100
          Top = 90
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbCourseHook: TLabel
          Left = 100
          Top = 108
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbPositionHook2: TLabel
          Left = 190
          Top = 90
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbGround: TLabel
          Left = 100
          Top = 125
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbFormation: TLabel
          Left = 100
          Top = 160
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label8: TLabel
          Left = 190
          Top = 108
          Width = 43
          Height = 13
          Caption = 'degree T'
        end
        object Label9: TLabel
          Left = 190
          Top = 125
          Width = 21
          Height = 13
          Caption = 'knot'
        end
        object lbDamage: TLabel
          Left = 100
          Top = 144
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lb8: TLabel
          Left = 3
          Top = 142
          Width = 39
          Height = 13
          Caption = 'Damage'
        end
        object pnlDepth: TPanel
          Left = 3
          Top = 172
          Width = 329
          Height = 22
          BevelOuter = bvNone
          TabOrder = 12
          Visible = False
          object lbDepth: TLabel
            Left = 97
            Top = 5
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lb2: TLabel
            Left = 187
            Top = 5
            Width = 28
            Height = 13
            Caption = 'meter'
          end
          object lbtext3: TStaticText
            Left = 0
            Top = 5
            Width = 33
            Height = 17
            Caption = 'Depth'
            TabOrder = 0
          end
          object lb1: TStaticText
            Left = 86
            Top = 5
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 1
          end
        end
        object pnlAltitude: TPanel
          Left = 0
          Top = 171
          Width = 329
          Height = 22
          BevelOuter = bvNone
          TabOrder = 13
          Visible = False
          object lb4: TLabel
            Left = 187
            Top = 5
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object lbAltitude: TLabel
            Left = 100
            Top = 3
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lb6: TStaticText
            Left = 89
            Top = 5
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 0
          end
          object lb5: TStaticText
            Left = 3
            Top = 4
            Width = 41
            Height = 17
            Caption = 'Altitude'
            TabOrder = 1
          end
        end
        object StaticText1: TStaticText
          Left = 3
          Top = 3
          Width = 30
          Height = 17
          Caption = 'Track'
          TabOrder = 0
        end
        object StaticText6: TStaticText
          Left = 3
          Top = 90
          Width = 41
          Height = 17
          Caption = 'Position'
          TabOrder = 1
        end
        object StaticText7: TStaticText
          Left = 3
          Top = 108
          Width = 38
          Height = 17
          Caption = 'Course'
          TabOrder = 2
        end
        object StaticText8: TStaticText
          Left = 3
          Top = 125
          Width = 72
          Height = 17
          Caption = 'Ground Speed'
          TabOrder = 3
        end
        object StaticText10: TStaticText
          Left = 3
          Top = 158
          Width = 74
          Height = 17
          Caption = 'Formation Size'
          TabOrder = 4
        end
        object StaticText25: TStaticText
          Left = 89
          Top = 3
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 5
        end
        object StaticText28: TStaticText
          Left = 89
          Top = 19
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 6
        end
        object StaticText29: TStaticText
          Left = 89
          Top = 36
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 15
        end
        object StaticText30: TStaticText
          Left = 89
          Top = 56
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 7
        end
        object StaticText31: TStaticText
          Left = 89
          Top = 73
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 8
        end
        object StaticText32: TStaticText
          Left = 89
          Top = 90
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 9
        end
        object StaticText33: TStaticText
          Left = 89
          Top = 125
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 10
        end
        object StaticText36: TStaticText
          Left = 89
          Top = 108
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 11
        end
        object lb7: TStaticText
          Left = 89
          Top = 160
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 14
        end
        object lb3: TStaticText
          Left = 89
          Top = 142
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 16
        end
      end
      object tsDetails: TTabSheet
        Caption = 'Details'
        ImageIndex = 1
        object lbTrackDetails: TLabel
          Left = 110
          Top = 5
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label11: TLabel
          Left = 3
          Top = 20
          Width = 27
          Height = 13
          Caption = 'Name'
        end
        object lbNameDetails: TLabel
          Left = 110
          Top = 21
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbClassdetails: TLabel
          Left = 110
          Top = 37
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label12: TLabel
          Left = 3
          Top = 37
          Width = 25
          Height = 13
          Caption = 'Class'
        end
        object Label13: TLabel
          Left = 3
          Top = 54
          Width = 24
          Height = 13
          Caption = 'Type'
        end
        object Label14: TLabel
          Left = 3
          Top = 72
          Width = 35
          Height = 13
          Caption = 'Domain'
        end
        object lbDomain: TLabel
          Left = 110
          Top = 72
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label15: TLabel
          Left = 85
          Top = 105
          Width = 3
          Height = 13
        end
        object lbPropulsion: TLabel
          Left = 110
          Top = 108
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbIdentifier: TLabel
          Left = 110
          Top = 90
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbDoppler: TLabel
          Left = 110
          Top = 144
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbSonarClass: TLabel
          Left = 110
          Top = 126
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbTrackType: TLabel
          Left = 110
          Top = 161
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbTypeDetails: TLabel
          Left = 110
          Top = 54
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbMergeStatus: TLabel
          Left = 110
          Top = 180
          Width = 12
          Height = 13
          Caption = '---'
        end
        object StaticText2: TStaticText
          Left = 3
          Top = 3
          Width = 30
          Height = 17
          Caption = 'Track'
          TabOrder = 0
        end
        object StaticText3: TStaticText
          Left = 3
          Top = 90
          Width = 48
          Height = 17
          Caption = 'Identifier'
          TabOrder = 1
        end
        object StaticText4: TStaticText
          Left = 3
          Top = 108
          Width = 80
          Height = 17
          Caption = 'Propulsion Type'
          TabOrder = 2
        end
        object StaticText5: TStaticText
          Left = 3
          Top = 126
          Width = 41
          Height = 17
          Caption = 'Doppler'
          TabOrder = 3
        end
        object StaticText11: TStaticText
          Left = 3
          Top = 144
          Width = 60
          Height = 17
          Caption = 'Sonar Class'
          TabOrder = 4
        end
        object StaticText12: TStaticText
          Left = 3
          Top = 162
          Width = 57
          Height = 17
          Caption = 'Track Type'
          TabOrder = 5
        end
        object StaticText13: TStaticText
          Left = 3
          Top = 180
          Width = 68
          Height = 17
          Caption = 'Merge Status'
          TabOrder = 6
        end
        object StaticText37: TStaticText
          Left = 96
          Top = 3
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 7
        end
        object StaticText38: TStaticText
          Left = 96
          Top = 19
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 8
        end
        object StaticText39: TStaticText
          Left = 96
          Top = 35
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 9
        end
        object StaticText40: TStaticText
          Left = 96
          Top = 52
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 10
        end
        object StaticText41: TStaticText
          Left = 96
          Top = 72
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 11
        end
        object StaticText42: TStaticText
          Left = 96
          Top = 90
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 12
        end
        object StaticText43: TStaticText
          Left = 96
          Top = 126
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 13
        end
        object StaticText44: TStaticText
          Left = 96
          Top = 144
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 14
        end
        object StaticText45: TStaticText
          Left = 96
          Top = 160
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 15
        end
        object StaticText46: TStaticText
          Left = 96
          Top = 108
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 16
        end
        object StaticText47: TStaticText
          Left = 96
          Top = 180
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 17
        end
      end
      object tsDetection: TTabSheet
        Caption = 'Detection'
        ImageIndex = 2
        object lbTrackDetection: TLabel
          Left = 137
          Top = 5
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label16: TLabel
          Left = 3
          Top = 19
          Width = 27
          Height = 13
          Caption = 'Name'
        end
        object lbNameDetection: TLabel
          Left = 137
          Top = 20
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbClassDetection: TLabel
          Left = 137
          Top = 36
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label17: TLabel
          Left = 3
          Top = 36
          Width = 25
          Height = 13
          Caption = 'Class'
        end
        object Label18: TLabel
          Left = 3
          Top = 62
          Width = 88
          Height = 13
          Caption = 'Owner PU Number'
        end
        object Label19: TLabel
          Left = 3
          Top = 93
          Width = 68
          Height = 13
          Caption = 'First Detected'
        end
        object lbFirstDetected: TLabel
          Left = 137
          Top = 93
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label20: TLabel
          Left = 85
          Top = 114
          Width = 3
          Height = 13
        end
        object lbLastDetected: TLabel
          Left = 137
          Top = 114
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbOwner: TLabel
          Left = 137
          Top = 62
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbDetectionDetectionType: TLabel
          Left = 137
          Top = 135
          Width = 8
          Height = 13
          Caption = '--'
        end
        object StaticText14: TStaticText
          Left = 3
          Top = 3
          Width = 30
          Height = 17
          Caption = 'Track'
          TabOrder = 0
        end
        object StaticText15: TStaticText
          Left = 3
          Top = 113
          Width = 71
          Height = 17
          Caption = 'Last Detected'
          TabOrder = 1
        end
        object lbDetectionType: TStaticText
          Left = 3
          Top = 133
          Width = 77
          Height = 17
          Caption = 'Detection Type'
          TabOrder = 2
        end
        object StaticText48: TStaticText
          Left = 120
          Top = 3
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 3
        end
        object StaticText49: TStaticText
          Left = 120
          Top = 18
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 4
        end
        object StaticText50: TStaticText
          Left = 120
          Top = 34
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 5
        end
        object StaticText51: TStaticText
          Left = 120
          Top = 60
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 6
        end
        object StaticText53: TStaticText
          Left = 120
          Top = 91
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 7
        end
        object StaticText54: TStaticText
          Left = 120
          Top = 133
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 8
        end
        object StaticText55: TStaticText
          Left = 120
          Top = 112
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 9
        end
      end
      object tsIFF: TTabSheet
        Caption = 'IFF'
        ImageIndex = 3
        object lbTrackIff: TLabel
          Left = 91
          Top = 3
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label88: TLabel
          Left = 3
          Top = 19
          Width = 27
          Height = 13
          Caption = 'Name'
        end
        object lbNameIff: TLabel
          Left = 91
          Top = 19
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbClassIff: TLabel
          Left = 91
          Top = 36
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label91: TLabel
          Left = 3
          Top = 36
          Width = 25
          Height = 13
          Caption = 'Class'
        end
        object Label92: TLabel
          Left = 3
          Top = 66
          Width = 35
          Height = 13
          Caption = 'Mode 1'
        end
        object Label93: TLabel
          Left = 3
          Top = 85
          Width = 35
          Height = 13
          Caption = 'Mode 2'
        end
        object lbMode2Iff: TLabel
          Left = 91
          Top = 86
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label95: TLabel
          Left = 95
          Top = 106
          Width = 3
          Height = 13
        end
        object lbMode1Iff: TLabel
          Left = 91
          Top = 66
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbMode3CIff: TLabel
          Left = 91
          Top = 126
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbMode3Iff: TLabel
          Left = 91
          Top = 106
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lbMode4Iff: TLabel
          Left = 91
          Top = 147
          Width = 12
          Height = 13
          Caption = '---'
        end
        object StaticText17: TStaticText
          Left = 3
          Top = 3
          Width = 30
          Height = 17
          Caption = 'Track'
          TabOrder = 0
        end
        object StaticText18: TStaticText
          Left = 3
          Top = 105
          Width = 39
          Height = 17
          Caption = 'Mode 3'
          TabOrder = 1
        end
        object StaticText19: TStaticText
          Left = 3
          Top = 125
          Width = 46
          Height = 17
          Caption = 'Mode 3C'
          TabOrder = 2
        end
        object StaticText20: TStaticText
          Left = 3
          Top = 145
          Width = 39
          Height = 17
          Caption = 'Mode 4'
          TabOrder = 3
        end
        object StaticText52: TStaticText
          Left = 80
          Top = 3
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 4
        end
        object StaticText56: TStaticText
          Left = 80
          Top = 19
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 5
        end
        object StaticText57: TStaticText
          Left = 80
          Top = 35
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 6
        end
        object StaticText59: TStaticText
          Left = 80
          Top = 64
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 7
        end
        object StaticText60: TStaticText
          Left = 80
          Top = 84
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 8
        end
        object StaticText61: TStaticText
          Left = 80
          Top = 124
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 9
        end
        object StaticText62: TStaticText
          Left = 80
          Top = 145
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 10
        end
        object StaticText63: TStaticText
          Left = 80
          Top = 104
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 11
        end
      end
    end
    object lvTrackTable: TListView
      Left = 0
      Top = 0
      Width = 337
      Height = 83
      Align = alTop
      Columns = <
        item
          Caption = 'Domain'
        end
        item
          Caption = 'TrackNumber'
        end
        item
          Caption = 'Identity'
        end
        item
          Caption = 'Course'
        end
        item
          Caption = 'Speed'
        end
        item
          Caption = 'Altitude'
        end
        item
          Caption = 'Depth'
        end>
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      TabOrder = 2
      ViewStyle = vsReport
      OnSelectItem = lvTrackTableSelectItem
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1280
    Height = 49
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1276
      Height = 68
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Images = ImageList1
      TabOrder = 0
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object tbtnFullScreen: TToolButton
        Left = 8
        Top = 0
        Hint = 'Full Screen'
        Caption = 'Full Screen'
        ImageIndex = 0
        OnClick = tbtnFullScreenClick
      end
      object ToolButton43: TToolButton
        Left = 39
        Top = 0
        Width = 8
        Caption = 'ToolButton43'
        ImageIndex = 31
        Style = tbsSeparator
      end
      object toolbtnDecreaseScale: TToolButton
        Left = 47
        Top = 0
        Hint = 'Decrease Scale'
        ImageIndex = 1
        OnClick = tbtnScaleDecreaseClick
      end
      object cbSetScale: TComboBox
        Left = 78
        Top = 0
        Width = 76
        Height = 24
        Hint = 'Select Scale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = cbSetScaleChange
      end
      object toolbtnIncreaseScale: TToolButton
        Left = 154
        Top = 0
        Hint = 'Increase Scale'
        Caption = 'toolbtnIncreaseScale'
        ImageIndex = 2
        OnClick = tbtnScaleIncreaseClick
      end
      object ToolButton8: TToolButton
        Left = 185
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object toolbtnZoom: TToolButton
        Left = 193
        Top = 0
        Hint = 'Zoom'
        Caption = 'toolbtnZoom'
        ImageIndex = 3
        Style = tbsCheck
        OnClick = toolbtnZoomClick
      end
      object ToolBtnCentreOnHook: TToolButton
        Left = 224
        Top = 0
        Hint = 'Center On Hook'
        Caption = 'ToolBtnCentreOnHook'
        ImageIndex = 4
        OnClick = ToolBtnCentreOnHookClick
      end
      object ToolBtnCentreOnGameCentre: TToolButton
        Left = 255
        Top = 0
        Hint = 'Center On Game Center'
        Caption = 'ToolBtnCentreOnGameCentre'
        ImageIndex = 5
        OnClick = ToolBtnCentreOnGameCentreClick
      end
      object ToolBtnPan: TToolButton
        Left = 286
        Top = 0
        Hint = 'Pan'
        Caption = 'ToolBtnPan'
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolBtnPanClick
      end
      object toolBtnFilterRangeRings: TToolButton
        Left = 317
        Top = 0
        Hint = 'Filter Range Rings'
        AllowAllUp = True
        Caption = 'toolBtnFilterRangeRings'
        ImageIndex = 7
        Style = tbsCheck
        OnClick = toolBtnFilterRangeRingsClick
      end
      object ToolBtnRangeRingsOnHook: TToolButton
        Left = 348
        Top = 0
        Hint = 'Range Rings On Hook'
        AllowAllUp = True
        Caption = 'ToolBtnRangeRingsOnHook'
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolBtnRangeRingsOnHookClick
      end
      object ToolButton15: TToolButton
        Left = 379
        Top = 0
        Width = 8
        Caption = 'ToolButton15'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolBtnHookPrevious: TToolButton
        Left = 387
        Top = 0
        Hint = 'Hook Previous Track'
        Caption = 'ToolBtnHookPrevious'
        ImageIndex = 9
        OnClick = ToolBtnHookPreviousClick
      end
      object ToolBtnHookNext: TToolButton
        Left = 418
        Top = 0
        Hint = 'Hooks Next Track'
        Caption = 'ToolBtnHookNext'
        ImageIndex = 10
        OnClick = ToolBtnHookNextClick
      end
      object ToolButton18: TToolButton
        Left = 449
        Top = 0
        Width = 8
        Caption = 'ToolButton18'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object cbAssumeControl: TComboBox
        Left = 457
        Top = 0
        Width = 195
        Height = 24
        Hint = 'Platform Select (for control)'
        Style = csDropDownList
        DropDownCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = cbAssumeControlChange
      end
      object ToolBtnAssumeControlOfHook: TToolButton
        Left = 652
        Top = 0
        Hint = 'Assume Control Of Hook'
        Caption = 'ToolBtnAssumeControlOfHook'
        ImageIndex = 13
        OnClick = ToolBtnAssumeControlOfHookClick
      end
      object ToolBtnAddToTrackTable: TToolButton
        Left = 683
        Top = 0
        Hint = 'Add To Track Table'
        Caption = 'ToolBtnAddToTrackTable'
        ImageIndex = 11
        OnClick = ToolBtnAddToTrackTableClick
      end
      object ToolBtnRemoveFromTrackTable: TToolButton
        Left = 714
        Top = 0
        Hint = 'Remove From Track Table'
        Caption = 'ToolBtnRemoveFromTrackTable'
        ImageIndex = 12
        OnClick = ToolBtnRemoveFromTrackTableClick
      end
      object ToolButton44: TToolButton
        Left = 745
        Top = 0
        Width = 31
        AutoSize = True
        Caption = 'ToolButton44'
        ImageIndex = 31
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton21: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton21'
        ImageIndex = 16
        Wrap = True
        Style = tbsSeparator
      end
      object btn1: TToolButton
        Left = 0
        Top = 38
        Hint = 'Help'
        Caption = 'btn1'
        ImageIndex = 35
      end
      object btn2: TToolButton
        Left = 31
        Top = 38
        Width = 8
        Caption = 'btn2'
        ImageIndex = 31
        Style = tbsSeparator
      end
      object ToolBtnEdit: TToolButton
        Left = 39
        Top = 38
        Hint = 'Edit Text'
        Caption = 'ToolBtnEdit'
        ImageIndex = 14
        OnClick = ToolBtnEditClick
      end
      object ToolButton23: TToolButton
        Left = 70
        Top = 38
        Width = 8
        Caption = 'ToolButton23'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object ToolBtnMerge: TToolButton
        Left = 78
        Top = 38
        Hint = 'Merge'
        Caption = 'ToolBtnMerge'
        ImageIndex = 34
        OnClick = ToolBtnMergeClick
      end
      object ToolBtnSplit: TToolButton
        Left = 109
        Top = 38
        Hint = 'Split'
        Caption = 'ToolBtnSplit'
        ImageIndex = 33
        OnClick = ToolBtnSplitClick
      end
      object btn5: TToolButton
        Left = 140
        Top = 38
        Width = 8
        Caption = 'btn5'
        Enabled = False
        ImageIndex = 31
        Style = tbsSeparator
      end
      object btn6: TToolButton
        Left = 148
        Top = 38
        Hint = 'Add Data Link'
        Caption = 'btn6'
        Enabled = False
        ImageIndex = 32
      end
      object btn7: TToolButton
        Left = 179
        Top = 38
        Hint = 'Remove Data Link'
        Caption = 'btn7'
        Enabled = False
        ImageIndex = 31
      end
      object ToolBtnTrackHistory: TToolButton
        Left = 210
        Top = 38
        Hint = 'History'
        Caption = 'ToolBtnTrackHistory'
        ImageIndex = 15
        OnClick = ToolBtnTrackHistoryClick
      end
      object btn9: TToolButton
        Left = 241
        Top = 38
        Hint = 'Remove'
        Caption = 'btn9'
        Enabled = False
        ImageIndex = 26
        OnClick = btn9Click
      end
      object ToolBtnTransferSonobuoy: TToolButton
        Left = 272
        Top = 38
        Hint = 'Transfer Sonobuoy'
        Caption = 'ToolBtnTransferSonobuoy'
        Enabled = False
        ImageIndex = 18
      end
      object ToolBtnRemoveSonobuoy: TToolButton
        Left = 303
        Top = 38
        Hint = 'Remove Sonobuoy'
        Caption = 'ToolBtnRemoveSonobuoy'
        Enabled = False
        ImageIndex = 17
      end
      object ToolBtnAddSonobuoy: TToolButton
        Left = 334
        Top = 38
        Hint = 'Add Sonobuoy'
        Caption = 'ToolBtnAddSonobuoy'
        Enabled = False
        ImageIndex = 16
      end
      object ToolButton25: TToolButton
        Left = 365
        Top = 38
        Width = 8
        Caption = 'ToolButton25'
        ImageIndex = 18
        Style = tbsSeparator
      end
      object ToolBtnFilterCursor: TToolButton
        Left = 373
        Top = 38
        Hint = 'Filter Cursor'
        Caption = 'ToolBtnFilterCursor'
        ImageIndex = 27
        OnClick = ToolBtnFilterCursorClick
      end
      object ToolBtnAnchorCursor: TToolButton
        Left = 404
        Top = 38
        Hint = 'Anchor Cursor'
        Caption = 'ToolBtnAnchorCursor'
        ImageIndex = 28
        OnClick = ToolBtnAnchorCursorClick
      end
      object ToolBtnOptions: TToolButton
        Left = 435
        Top = 38
        Hint = 'Options'
        Caption = 'ToolBtnOptions'
        ImageIndex = 29
        OnClick = ToolBtnOptionsClick
      end
      object ToolButton27: TToolButton
        Left = 466
        Top = 38
        Width = 8
        Caption = 'ToolButton27'
        ImageIndex = 19
        Style = tbsSeparator
      end
      object ToolBtnContents: TToolButton
        Left = 474
        Top = 38
        Hint = 'Contents'
        Caption = 'ToolBtnContents'
        ImageIndex = 30
      end
      object btn8: TToolButton
        Left = 505
        Top = 38
        Width = 8
        Caption = 'btn8'
        ImageIndex = 32
        Style = tbsSeparator
      end
      object tBtnGameFreeze: TToolButton
        Left = 513
        Top = 38
        Hint = 'Freeze'
        Caption = 'tBtnGameFreeze'
        ImageIndex = 19
        OnClick = tBtnGameFreezeClick
      end
      object tbtnStartGame: TToolButton
        Left = 544
        Top = 38
        Hint = 'Standard Speed'
        Caption = 'tbtnStartGame'
        ImageIndex = 20
        OnClick = tbtnStartGameClick
      end
      object tBtnDoubleSpeed: TToolButton
        Left = 575
        Top = 38
        Hint = 'Double Current Speed'
        Caption = 'tBtnDoubleSpeed'
        ImageIndex = 21
        OnClick = tBtnDoubleSpeedClick
      end
      object ToolButton31: TToolButton
        Left = 606
        Top = 38
        Width = 8
        Caption = 'ToolButton31'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object ToolBtnFind: TToolButton
        Left = 614
        Top = 38
        Hint = 'Monitor Student'
        Caption = 'ToolBtnFind'
        ImageIndex = 22
        OnClick = ToolBtnFindClick
      end
      object ToolBtnAnnotate: TToolButton
        Left = 645
        Top = 38
        Hint = 'Annotate'
        Caption = 'ToolBtnAnnotate'
        Enabled = False
        ImageIndex = 23
      end
      object ToolBtnSnapshot: TToolButton
        Left = 676
        Top = 38
        Hint = 'Snapshot'
        Caption = 'ToolBtnSnapshot'
        ImageIndex = 24
        OnClick = ToolBtnSnapshotClick
      end
      object ToolButton35: TToolButton
        Left = 707
        Top = 38
        Width = 8
        Caption = 'ToolButton35'
        ImageIndex = 25
        Style = tbsSeparator
      end
      object ToolBtnAddPlatform: TToolButton
        Left = 715
        Top = 38
        Hint = 'Runtime Platform'
        Caption = 'ToolBtnAddPlatform'
        ImageIndex = 25
        OnClick = ToolBtnAddPlatformClick
      end
      object ToolBtnRemovePlatformOrTrack: TToolButton
        Left = 746
        Top = 38
        Hint = 'Remove Platform / Track'
        Caption = 'ToolBtnRemovePlatformOrTrack'
        ImageIndex = 26
        OnClick = ToolBtnRemovePlatformOrTrackClick
      end
      object ToolButton45: TToolButton
        Left = 777
        Top = 38
        Width = 8
        Caption = 'ToolButton45'
        ImageIndex = 31
        Style = tbsSeparator
      end
      object btnDepthInfo: TToolButton
        Left = 785
        Top = 38
        Caption = 'btnDepthInfo'
        ImageIndex = 36
        Style = tbsCheck
        OnClick = btnDepthInfoClick
      end
    end
  end
  object pnlMap: TPanel
    Left = 341
    Top = 49
    Width = 939
    Height = 904
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    inline fmMapWindow1: TfmMapWindow
      Left = 0
      Top = 0
      Width = 935
      Height = 900
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 935
      ExplicitHeight = 900
      inherited pnlTop: TPanel
        Width = 935
        Height = 20
        Visible = False
        ExplicitWidth = 935
        ExplicitHeight = 20
      end
      inherited pnlMap: TPanel
        Top = 20
        Width = 935
        Height = 880
        ExplicitTop = 20
        ExplicitWidth = 935
        ExplicitHeight = 880
        inherited Map: TMap
          Width = 933
          Height = 878
          OnExit = Map2Exit
          OnDblClick = Map2DblClick
          OnClick = Map2Click
          ExplicitLeft = -2
          ExplicitTop = 8
          ExplicitWidth = 1006
          ExplicitHeight = 1444
          ControlData = {
            8A1A06006E600000BE5A0000010000000F0000FF0D47656F44696374696F6E61
            727905456D70747900E8030000000000000000000002000E001E000000000000
            0000000000000000000000000000000000000000000600010000000000500001
            010000640000000001F4010000050000800C000000000000000000000000FFFF
            FF000100000000000000000000000000000000000000000000000352E30B918F
            CE119DE300AA004BB8510100000090012C040C0005417269616C000352E30B91
            8FCE119DE300AA004BB8510100000090015C790C0005417269616C0000000000
            00000000000000000000000000000000000000000000000000000000000000FF
            FFFF000000000000000001370000000000FFFFFF000000000000000352E30B91
            8FCE119DE300AA004BB851010000009001DC7C010005417269616C000352E30B
            918FCE119DE300AA004BB851010200009001A42C02000B4D61702053796D626F
            6C730000000000000001000100FFFFFF000200FFFFFF00000000000001000000
            01000118010000D0CB4D0F01000000000000001C000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000002
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            8076C000000000008056C0000000000080764000000000008056400100000018
            010000D0CB4D0F010000006469B1771C00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000200000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000098
            C62B1214E497000C0DB41200000000CC11010000000000000000000000000000
            000088B3400000000000408F400001000001}
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 953
    Width = 1280
    Height = 73
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 3
    object Panel1: TPanel
      Left = 0
      Top = -2
      Width = 1326
      Height = 69
      TabOrder = 0
      object Label55: TLabel
        Left = 358
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Course'
      end
      object Label56: TLabel
        Left = 358
        Top = 26
        Width = 30
        Height = 13
        Caption = 'Speed'
      end
      object lbCourseHooked: TLabel
        Left = 407
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object lbSpeedHooked: TLabel
        Left = 407
        Top = 26
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label60: TLabel
        Left = 480
        Top = 26
        Width = 30
        Height = 13
        Caption = 'Speed'
      end
      object Label62: TLabel
        Left = 480
        Top = 8
        Width = 24
        Height = 13
        Caption = 'Wind'
      end
      object lbRangeRings: TLabel
        Left = 719
        Top = 26
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label64: TLabel
        Left = 630
        Top = 26
        Width = 60
        Height = 13
        Caption = 'Range Rings'
      end
      object lblRangeScale: TLabel
        Left = 719
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label66: TLabel
        Left = 630
        Top = 8
        Width = 59
        Height = 13
        Caption = 'Range Scale'
      end
      object lbRangeAnchor: TLabel
        Left = 830
        Top = 26
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label68: TLabel
        Left = 781
        Top = 26
        Width = 31
        Height = 13
        Caption = 'Range'
      end
      object lbBearingAnchor: TLabel
        Left = 830
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label70: TLabel
        Left = 781
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Bearing'
      end
      object Label71: TLabel
        Left = 974
        Top = 27
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label73: TLabel
        Left = 903
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Origin OCM'
      end
      object Label74: TLabel
        Left = 974
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label72: TLabel
        Left = 1032
        Top = 8
        Width = 22
        Height = 13
        Caption = 'OBM'
      end
      object lbLongitude: TLabel
        Left = 1064
        Top = 26
        Width = 12
        Height = 13
        Caption = '---'
      end
      object lbLatitude: TLabel
        Left = 1064
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object lbY: TLabel
        Left = 1276
        Top = 22
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '---'
      end
      object lbX: TLabel
        Left = 1276
        Top = 8
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '---'
      end
      object Label79: TLabel
        Left = 1167
        Top = 8
        Width = 22
        Height = 13
        Caption = 'OBM'
      end
      object Label80: TLabel
        Left = 1167
        Top = 26
        Width = 21
        Height = 13
        Caption = 'CCG'
      end
      object Bevel1: TBevel
        Left = 772
        Top = 11
        Width = 3
        Height = 27
      end
      object Bevel2: TBevel
        Left = 614
        Top = 13
        Width = 3
        Height = 25
      end
      object Bevel3: TBevel
        Left = 462
        Top = 13
        Width = 3
        Height = 25
      end
      object Bevel4: TBevel
        Left = 894
        Top = 10
        Width = 3
        Height = 25
      end
      object Label35: TLabel
        Left = 903
        Top = 24
        Width = 33
        Height = 13
        Caption = 'SDarwi'
      end
      object Bevel5: TBevel
        Left = 1026
        Top = 11
        Width = 3
        Height = 25
      end
      object Bevel6: TBevel
        Left = 1155
        Top = 13
        Width = 3
        Height = 25
      end
      object lbColor: TLabel
        Left = 1199
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label10: TLabel
        Left = 520
        Top = 8
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label21: TLabel
        Left = 520
        Top = 27
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label22: TLabel
        Left = 8
        Top = 4
        Width = 43
        Height = 16
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlStatusRed: TPanel
        Left = 1
        Top = 3
        Width = 335
        Height = 17
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = pnlStatusRedClick
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 41
        Width = 1324
        Height = 27
        BiDiMode = bdLeftToRight
        Panels = <
          item
            Alignment = taCenter
            Text = 'Fly-by Help'
            Width = 150
          end
          item
            Alignment = taCenter
            Text = 'Entities'
            Width = 70
          end
          item
            Alignment = taCenter
            Text = 'Filter'
            Width = 70
          end
          item
            Alignment = taCenter
            Text = 'Declutter'
            Width = 70
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'EMCON'
            Width = 70
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'Jamming'
            Width = 70
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'Gunfire'
            Width = 70
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'FCR LOCK'
            Width = 70
          end
          item
            Alignment = taCenter
            Text = 'COMMS'
            Width = 70
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'FROZEN'
            Width = 70
          end
          item
            Text = ' DateTime'
            Width = 70
          end>
        ParentBiDiMode = False
        OnDrawPanel = StatusBar1DrawPanel
      end
      object pnlStatusYellow: TPanel
        Left = 1
        Top = 20
        Width = 335
        Height = 17
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = pnlStatusYellowClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 584
    Top = 64
    object View1: TMenuItem
      Caption = 'View'
      object Display1: TMenuItem
        Caption = 'Display'
        object Tactical1: TMenuItem
          Caption = 'Tactical'
          OnClick = Tactical1Click
        end
        object Tote1: TMenuItem
          Caption = 'Tote'
          OnClick = Tote1Click
        end
      end
      object mnFullScreen1: TMenuItem
        Caption = 'Full Screen'
        ImageIndex = 0
        OnClick = tbtnFullScreenClick
      end
      object Scale1: TMenuItem
        Caption = 'Scale'
        object Increase1: TMenuItem
          Caption = 'Increase'
          ImageIndex = 2
          ShortCut = 16457
          OnClick = tbtnScaleIncreaseClick
        end
        object Decrease1: TMenuItem
          Caption = 'Decrease'
          ImageIndex = 1
          ShortCut = 16452
          OnClick = tbtnScaleDecreaseClick
        end
        object Zoom1: TMenuItem
          Caption = 'Zoom...'
          ImageIndex = 3
          ShortCut = 16474
          OnClick = toolbtnZoomClick
        end
      end
      object Centre1: TMenuItem
        Caption = 'Centre'
        object Settings2: TMenuItem
          Caption = 'Settings...'
          ShortCut = 32881
          Visible = False
          OnClick = Settings2Click
        end
        object OnHookedTrack2: TMenuItem
          Caption = 'On Hooked Track'
          ImageIndex = 4
          ShortCut = 113
          OnClick = OnHookedTrack2Click
        end
        object OnGameCentre1: TMenuItem
          Caption = 'On Game Centre'
          ImageIndex = 5
          OnClick = OnGameCentre1Click
        end
        object Pan1: TMenuItem
          Caption = 'Pan'
          ImageIndex = 6
          OnClick = Pan1Click
        end
      end
      object RangeRings1: TMenuItem
        Caption = 'Range Rings'
        object Settings1: TMenuItem
          Caption = 'Settings'
          ShortCut = 32882
          OnClick = Settings1Click
        end
        object OnHookedTrack1: TMenuItem
          Caption = 'On Hooked Track'
          ImageIndex = 4
          ShortCut = 114
          OnClick = ToolBtnRangeRingsOnHookClick
        end
      end
      object Filters1: TMenuItem
        Caption = 'Filters...'
        OnClick = Filters1Click
      end
      object Overrides1: TMenuItem
        Caption = 'Overrides...'
        Visible = False
      end
      object History1: TMenuItem
        Caption = 'History...'
        OnClick = History1Click
      end
    end
    object Hook1: TMenuItem
      Caption = 'Hook'
      object Next1: TMenuItem
        Caption = 'Next'
        OnClick = Next1Click
      end
      object Previous1: TMenuItem
        Caption = 'Previous'
        OnClick = Previous1Click
      end
      object rackTable1: TMenuItem
        Caption = 'Track Table'
        object Add1: TMenuItem
          Caption = 'Add'
          OnClick = Add1Click
        end
        object Remove1: TMenuItem
          Caption = 'Remove'
          OnClick = Remove1Click
        end
      end
      object AssumeControl1: TMenuItem
        Caption = 'Assume Control'
        object HookedTrack1: TMenuItem
          Caption = 'Hooked Track'
          OnClick = ToolBtnAssumeControlOfHookClick
        end
        object CommandPlatform1: TMenuItem
          Caption = 'Command Platform'
          Visible = False
        end
      end
    end
    object Track1: TMenuItem
      Caption = 'Track'
      OnClick = Track1Click
      object Characteristics1: TMenuItem
        Caption = 'Characteristics'
        object Domain1: TMenuItem
          Caption = 'Domain'
          object A1: TMenuItem
            Caption = 'Air'
            OnClick = mniAir4Click
          end
          object Surface1: TMenuItem
            Caption = 'Surface'
            OnClick = mniSurface4Click
          end
          object Subsurface1: TMenuItem
            Caption = 'Subsurface'
            OnClick = mniSubsurface4Click
          end
          object Land1: TMenuItem
            Caption = 'Land'
            OnClick = mniLand4Click
          end
          object General1: TMenuItem
            Caption = 'General'
            OnClick = mniGeneral4Click
          end
        end
        object IDentity1: TMenuItem
          Caption = 'Identity'
          object Pending1: TMenuItem
            Caption = 'Pending'
            OnClick = mniPending1Click
          end
          object Unknown1: TMenuItem
            Caption = 'Unknown'
            OnClick = mniUnknowns1Click
          end
          object AssumedFriend1: TMenuItem
            Caption = 'Assumed Friend'
            OnClick = mniAssumedFriend1Click
          end
          object Friend1: TMenuItem
            Caption = 'Friend'
            OnClick = mniFriend1Click
          end
          object Neutral1: TMenuItem
            Caption = 'Neutral'
            OnClick = mniNeutral1Click
          end
          object Suspect1: TMenuItem
            Caption = 'Suspect'
            OnClick = mniSuspect1Click
          end
          object Hostile1: TMenuItem
            Caption = 'Hostile'
            OnClick = mniHostile1Click
          end
        end
        object PlatformType1: TMenuItem
          Caption = 'Platform Type'
          object AircraftCarrierCVCVN1: TMenuItem
            Caption = 'Aircraft Carrier (CV/CVN)'
            OnClick = mniAircraftCarrier1Click
          end
          object AmphibiousWarfare1: TMenuItem
            Caption = 'Amphibious Warfare'
            OnClick = mniAmphibius1Click
          end
          object Auxiliary1: TMenuItem
            Caption = 'Auxiliary'
            OnClick = mniAuxiliary1Click
          end
          object Chaff1: TMenuItem
            Caption = 'Chaff'
            OnClick = mniChaff1Click
          end
          object CruiserGuidedMissileCGCGN1: TMenuItem
            Caption = 'Cruiser, Guided Missile (CG/CGN)'
            OnClick = mniCruiserGuidedMissileCGCGN1Click
          end
          object Destroyer1: TMenuItem
            Caption = 'Destroyer'
            OnClick = mniDestroyer1Click
          end
          object DestroyerGuidedMissileDOG1: TMenuItem
            Caption = 'Destroyer, Guided Missile (DOG)'
            OnClick = mniDestroyerGuidedMissle1Click
          end
          object FrigateFF1: TMenuItem
            Caption = 'Frigate (FF)'
            OnClick = mniFrigateFF1Click
          end
          object FrigateGuidedMissileFFG1: TMenuItem
            Caption = 'Frigate, Guided Missile (FFG)'
            OnClick = mniFrigateGuidedMissleFFG1Click
          end
          object InfraredDecoy1: TMenuItem
            Caption = 'Infrared Decoy'
            OnClick = mniInfra1Click
          end
          object JammerDecoy1: TMenuItem
            Caption = 'Jammer Decoy'
            OnClick = mniJammerDecoy1Click
          end
          object Merchant1: TMenuItem
            Caption = 'Merchant'
            OnClick = mniMerchant1Click
          end
          object MainWarfare1: TMenuItem
            Caption = 'Main Warfare'
            OnClick = mniMainwarfare1Click
          end
          object PatrolCraftPTPTG1: TMenuItem
            Caption = 'Patrol Craft (PT/PTG)'
            OnClick = mniPatrolCraftPTPTG1Click
          end
          object UtilityVessel1: TMenuItem
            Caption = 'Utility Vessel'
            OnClick = mniUtilityVessel1Click
          end
          object Other1: TMenuItem
            Caption = 'Other'
            OnClick = mniOther1Click
          end
        end
        object Propulsion1: TMenuItem
          Caption = 'Propulsion Type '
          Visible = False
        end
        object Edit1: TMenuItem
          Caption = 'Edit'
          OnClick = mniEdit1Click
        end
      end
      object MErge1: TMenuItem
        Caption = 'Merge'
        OnClick = MErge1Click
      end
      object Split1: TMenuItem
        Caption = 'Split'
        OnClick = Split1Click
      end
      object Datalink1: TMenuItem
        Caption = 'Datalink'
        Visible = False
        object o1: TMenuItem
          Caption = 'To'
        end
        object From1: TMenuItem
          Caption = 'From'
        end
      end
      object Number1: TMenuItem
        Caption = 'Number'
        object Automatic1: TMenuItem
          Caption = 'Automatic'
          OnClick = Automatic1Click
        end
        object Manual1: TMenuItem
          Caption = 'Manual...'
          OnClick = Manual1Click
        end
      end
      object History2: TMenuItem
        Caption = 'History'
        OnClick = History2Click
      end
      object InitiateTMA1: TMenuItem
        Caption = 'Initiate TMA'
        Visible = False
      end
      object Sonobuoys1: TMenuItem
        Caption = 'Sonobuoys'
        Visible = False
        object OperatingMode1: TMenuItem
          Caption = 'Operating Mode'
        end
        object Depth1: TMenuItem
          Caption = 'Depth'
        end
        object Monitor1: TMenuItem
          Caption = 'Monitor'
        end
        object Destroy1: TMenuItem
          Caption = 'Destroy'
        end
      end
      object Break1: TMenuItem
        Caption = 'Break All Fire Control Asset Assignments'
        Visible = False
      end
      object RangeControlandBlindZone1: TMenuItem
        Caption = 'Range Circle and Blind Zones'
        Visible = False
        object ClearforHookedTracks1: TMenuItem
          Caption = 'Clear for Hooked Tracks'
          OnClick = ClearforHookedTracks1Click
        end
        object ClearforAllTracks1: TMenuItem
          Caption = 'Clear for All Tracks'
          OnClick = ClearforAllTracks1Click
        end
      end
      object Remove2: TMenuItem
        Caption = 'Remove'
        OnClick = Remove2Click
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object Cursor1: TMenuItem
        Caption = 'Cursor'
        object Anchor1: TMenuItem
          Caption = 'Anchor'
          OnClick = Anchor1Click
        end
        object Origin1: TMenuItem
          Caption = 'Origin...'
          OnClick = Origin1Click
        end
        object Select1: TMenuItem
          Caption = 'Select...'
          OnClick = Select1Click
        end
        object SendEndPointExactly1: TMenuItem
          Caption = 'Send End Point Exactly...'
          Visible = False
        end
      end
      object Overlays1: TMenuItem
        Caption = 'Overlays...'
        OnClick = Overlays1Click
      end
      object Formation1: TMenuItem
        Caption = 'Formation...'
        OnClick = Formation1Click
      end
      object argetIntercept1: TMenuItem
        Caption = 'Target Intercept...'
        Visible = False
      end
      object argetPriorityA1: TMenuItem
        Caption = 'Target Priority Assessment...'
        Visible = False
      end
      object Opotions1: TMenuItem
        Caption = 'Options...'
        OnClick = Opotions1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Contents1: TMenuItem
        Caption = 'Contents'
        Enabled = False
      end
      object About1: TMenuItem
        Caption = 'About'
        Enabled = False
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 848
    Top = 72
    Bitmap = {
      494C010125002800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000F000000001002000000000000068
      01000000000000000000000000000000000025211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF1813
      0EFF080400FF1E1A15FF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF26221DFF27231EFF090500FF2F2B
      27FF6A6864FF17130DFF120E08FF28241FFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF28241EFF1D18
      13FF14100AFF14100AFF15110BFF25211CFF26221DFF000000FF2F2C26FFDDDD
      DCFFFFFFFFFFB4B3B1FF110D07FF0B0601FF292520FF19150FFF14100AFF1410
      0AFF19140FFF27231EFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF221F1AFF2D29
      24FF34312CFF34312CFF34302BFF26221DFF0C0803FF4E4B47FFFFFFFFFFADAC
      AAFF36332EFFECECECFFE2E2E1FF36332EFF17140FFF302C27FF34312CFF3431
      2CFF302D28FF231F1AFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF000000FF9997
      94FFFFFFFFFFFFFFFFFFFFFFFFFF1A1611FF3E3A36FFFFFFFFFFA09E9CFF524E
      4BFF797673FF282420FFDBDADAFFB1B0AEFF000000FFCAC9C8FFFFFFFFFFFFFF
      FFFFCFCECDFF0C0802FF211D18FF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF181512FF4A47
      43FF6F6D69FF6F6D69FF6B6865FF1D1914FF46423EFF696663FF000000FFC2C0
      BFFFFFFFFFFF18140EFF100C06FF413D39FF1C1814FF5A5754FF6F6D69FF6F6D
      69FF5C5955FF1D1913FF24201BFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF2B2621FF1410
      0AFF030000FF030000FF050100FF27231EFF1D1914FF040000FF090500FFC4C3
      C2FFFFFFFFFF34302BFF0A0500FF17130EFF2A2621FF0D0803FF030000FF0300
      00FF0C0802FF292520FF26221DFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF26221DFF292520FF0C08
      02FF030000FF030000FF050000FF231F1AFF27231FFF211D17FF0D0904FFB9B8
      B6FFFFFFFFFF35322DFF130F0AFF26221DFF292520FF0C0802FF030000FF0300
      00FF0C0802FF292520FF26221DFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF24201BFF1D1913FF5C59
      55FF6F6D69FF6F6D69FF6B6965FF292520FF1F1B16FF211D18FF0C0802FFB4B2
      B1FFFFFFFFFF3A3732FF120E08FF24201BFF1D1913FF5C5955FF6F6D69FF6F6D
      69FF5C5955FF1D1913FF24201BFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF211D18FF0C0802FFCFCE
      CDFFFFFFFFFFFFFFFFFFFFFFFFFF322E2AFF000000FF14100AFF0D0701FFAEAD
      ABFFFFFFFFFF413E39FF050000FF0F0B06FF0D0903FFD0CFCDFFFFFFFFFFFFFF
      FFFFCFCECDFF0C0802FF211D18FF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF231F1AFF302D
      28FF34312CFF34312CFF322E29FF25211CFF4C4944FF26221DFF000000FFB1B0
      AEFFFFFFFFFF393631FF0E0904FF423F3AFF231F1AFF2F2B27FF34312CFF3431
      2CFF302D28FF231F1AFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF27231EFF1914
      0FFF14100AFF14100AFF0F0B05FF100B06FFDBDBDAFFE8E7E7FF000000FF9290
      8DFFFFFFFFFF16120DFFBDBCBAFFE3E2E1FF15110BFF120D08FF14100AFF1410
      0AFF19140FFF27231EFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF26221DFF292520FF0C08
      02FF030000FF030000FF050000FF140F0AFF413D39FFEBEBEAFFE0E0DDFF4B47
      43FF2E2A25FF9B9A97FFFFFFFFFF625F5BFF15110BFF0A0601FF030000FF0300
      00FF050000FF231F1AFF28241FFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF231F1AFF1B1712FF6865
      62FF817E7BFF817E7BFF7C7976FF2C2824FF000000FF1B1611FFD8D7D6FFD8D7
      D6FF8D8B89FFFFFFFFFF585551FF000000FF1B1712FF696662FF817E7BFF817E
      7BFF7B7976FF2A2621FF1E1A14FF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF221E19FF110D07FFADAC
      A9FFDDDDDCFFDDDDDCFFD4D3D2FF2F2B27FF191510FF0D0803FF0D0803FFB7B6
      B4FFFFFFFFFF5F5C59FF000000FF1F1B16FF120E08FFADACA9FFDDDDDCFFDDDD
      DCFFD4D3D2FF2E2A26FF17130DFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF28241FFF1611
      0CFF0E0904FF100C06FF130F09FF24201BFF221E19FF201C16FF110C07FF1915
      10FF322E29FF0F0B06FF1B1711FF211C17FF25211CFF17130EFF120D08FF0D09
      04FF100B06FF25211BFF27231EFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF292520FF1A15
      10FF060200FF060200FF15110BFF110D07FF100B06FF1B1711FF14100AFF0A05
      00FF050000FF0C0702FF1A1611FF15110BFF0A0500FF120D08FF100C06FF0702
      00FF130F09FF26221DFF26221DFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF24201BFF140F0AFF5451
      4DFFC3C1C0FF807C7AFF15110CFF47443FFFC4C3C2FFE1E1E0FFCECDCCFF4D4A
      46FF1C1813FF9D9B99FFE0DFDEFFD0D0CEFF9E9C9AFF28241FFF34302CFFBCBB
      B9FF8A8885FF17130EFF211D18FF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF24201BFF110C07FF524E
      4AFFDDDCDCFFFFFFFFFFECECEBFFFFFFFFFFE2E1E0FFA6A5A3FFDAD9D8FFFFFF
      FFFFF8F7F7FFF6F6F6FFB6B4B3FFBAB9B7FFF6F6F6FFF6F5F5FFFFFFFFFFFFFF
      FFFF7D7B78FF15100BFF211D18FF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF27231EFF1A15
      10FF0E0A04FF4F4C47FFC2C1BFFF999795FF1A1611FF000000FF15100BFF9593
      90FFBBBAB9FF3E3A35FF030000FF070300FF2F2B26FFAAA9A7FFB1B0AEFF2C28
      23FF0C0802FF25211CFF26221DFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF26221DFF2521
      1CFF1E1A15FF0F0B05FF0C0802FF0D0803FF1A1510FF25211CFF1B1712FF0C08
      02FF0B0601FF130F09FF231F19FF221E19FF14100BFF0B0701FF0B0701FF1511
      0CFF24201BFF26221DFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF211D18FF221E19FF25211CFF25211CFF25211CFF221E
      19FF211D18FF25211CFF25211CFF25211CFF25211CFF221E19FF211D18FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF25211CFF191510FF16110CFF17130DFF1612
      0CFF18140EFF24201BFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF27221EFF201C17FF231F1AFF2C2823FF28241FFF2A26
      21FF292520FF231F1AFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF110D07FF35322DFFFFFFFFFFFFFFFFFFEAEAE9FFEDED
      ECFFE5E4E3FF3A3732FF120E08FF25211CFF25211CFF25211CFF26221DFF221E
      19FF221E19FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF191510FF332F2AFF939291FFA8A6A4FFFFFFFFFFFFFF
      FFFFFFFFFFFF494541FF0A0600FF25211CFF25211CFF26221DFF27231EFF100B
      06FF090400FF1C1813FF292520FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF100C
      06FF060200FF27231EFF26221DFF25211CFF25211CFF27231EFF201C17FF1915
      10FF25211CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF27231EFF211C17FF100B06FF231F19FF27231EFF25211CFF2521
      1CFF25211CFF25211CFF2E2924FF070300FF000000FF9D9B99FFFFFFFFFFF0F0
      EFFFFFFFFFFF44403CFF0D0903FF25211CFF25211CFF221E19FF100D08FFBCBB
      BAFFB0AEADFF050200FF0D0903FF2A2621FF25211CFF24201BFF24201BFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF211D
      18FF0B0601FF1F1B16FF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF26221DFF28241FFF040000FF3F3B
      37FF5F5C59FF1D1913FF24201BFF25211CFF26221DFF24201AFF1B1712FF231F
      1AFF191510FF29251FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF24201AFF282520FF3C3935FF0E0A04FF221E19FF27231EFF2521
      1CFF25211CFF2A2620FF0B0703FF050100FFC6C5C2FFFFFFFFFF757371FF7D7B
      78FFFFFFFFFF4A4743FF0A0600FF25211CFF25211CFF221E19FF030000FFB8B7
      B5FFFFFFFFFFC7C5C4FF17130EFF000000FF2A2620FF090400FF040000FF2824
      1FFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1D1914FF100C
      06FF524F4BFF15110CFF1A1611FF28241FFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF26221CFF000000FF262320FFEFEF
      EEFFFFFFFFFF231F1AFF17130EFF27231EFF24201BFF000000FF7A7774FFE1E0
      DFFF413E3AFF110D09FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF030000FF706D69FFFFFFFFFF777471FF000000FF231F1AFF2622
      1DFF2A2620FF0C0804FF050100FFC6C5C3FFFFFFFFFFA19F9DFF000000FF6C6A
      66FFE8E8E7FF3D3935FF110D08FF25211CFF25211CFF26221DFF1D1A15FF0400
      00FF918F8DFFFFFFFFFFDEDEDDFF211E1AFF000000FF82807CFF8E8C89FF1612
      0EFF231F1AFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF1D1814FF000000FF9997
      94FFFFFFFFFFA8A6A4FF000000FF191610FF28241FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF28241FFF1D1914FF000000FF474340FFFFFFFFFFFFFF
      FFFFEBEBEBFF2D2924FF18120DFF211C17FF000000FF5D5A58FFFFFFFFFFFFFF
      FFFF74726EFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF171410FF211E1CFFDBDAD9FFFFFFFFFF686562FF000000FF2824
      1EFF110E0AFF040100FFC5C4C1FFFFFFFFFFA2A09EFF000000FF1B1713FF2622
      1DFF27231FFF221D18FF26221DFF25211CFF25211CFF25211CFF292520FF1A16
      11FF000000FF6E6C69FFFFFFFFFFFFFFFFFF1E1C19FFD4D3D3FFFFFFFFFF0E0A
      04FF1E1A15FF25211CFF25211CFF25211CFF27231EFF211D17FF1A1611FF2521
      1CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF27231EFF1D1813FF000000FFA9A7A6FFFFFF
      FFFF444443FFF7F6F5FFBAB9B8FF000000FF191510FF28241FFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF292520FF120E09FF000000FF777572FFFFFFFFFFE7E5E3FFD3D2
      D1FFF4F4F4FF2A2621FF0F0B06FF000000FF6C6966FFFFFFFFFFFFFFFFFFFFFF
      FFFF6B6965FF020000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF2A2620FF060200FF14110DFFF0EFEEFFFFFFFFFF494642FF0000
      00FF000000FFB3B1AFFFFFFFFFFFA6A4A1FF000000FF16120DFF29251FFF201C
      17FF17130EFF24201BFF26221DFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF241F1AFF000000FF383531FFEBEBEAFFECEBE9FFE1E0E0FFDBDADAFF120E
      08FF1F1B16FF25211CFF25211CFF25211CFF26221CFF231F1AFF201C17FF0F0A
      05FF28241EFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF211C17FF000000FFA6A5A3FFFFFFFFFF2B28
      25FF000000FF1E1B18FFFFFFFFFFBCBAB9FF000000FF191510FF28241FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF1D18
      13FF030000FF000000FF070300FFA5A3A1FFFFFFFFFFCBCAC8FF070503FFA6A5
      A3FFFFFFFFFF201B16FF000000FF7E7C79FFFFFFFFFFCFCDCBFF82807CFFFFFF
      FFFF676461FF020000FF25211CFF25211CFF26221DFF25211CFF1A1611FF1814
      0EFF19150FFF19150FFF1E1A14FF000000FF161310FFDDDDDCFFFFFFFFFF3634
      32FF827E7BFFFFFFFFFFBCBBB8FF000000FF14100BFF292520FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF211D18FF2E2A25FF211E1BFF7A7775FFFFFFFFFFFFFFFFFFCECDCCFF0300
      00FF0E0A05FF16110CFF16110CFF16110CFF000000FF73706DFFE4E4E3FF4B47
      43FF000000FF28241EFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF24201BFF000000FF989795FFFFFFFFFF292724FF0000
      00FF050000FF000000FF201C18FFFFFFFFFFBDBCBAFF000000FF191510FF2824
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1D1915FF3330
      2BFF676461FF5B5856FFCFCECDFFFFFFFFFF9A9896FF000000FF000000FFC0BF
      BEFFFFFFFFFF1F1B16FF7D7C78FFFFFFFFFFDDDCDBFF030200FF413D39FFFFFF
      FFFF797673FF010000FF25211CFF25211CFF27231EFF1F1B15FF221E19FF2723
      1EFF25211CFF25211CFF25211CFF2A2620FF000000FF3D3935FFFFFFFFFFFFFF
      FFFFFFFFFFFFAEACAAFF040000FF110D09FF292520FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF000000FF6B6865FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C2C1FF1410
      0CFF292520FF2D2924FF2D2924FF2D2924FF12100EFF575450FFFFFFFFFFF9F9
      F9FF403D3AFF0C0905FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF24201AFF000000FF7B7877FFFFFFFFFF403D3AFF000000FF3633
      2DFF8B8986FF64615CFF000000FF191511FFFFFFFFFFBEBCBBFF000000FF1815
      10FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF8481
      7DFFFFFFFFFFFFFFFFFFFFFFFFFF72706DFF000000FF14100BFF070200FFB4B3
      B1FFFFFFFFFFC8C7C6FFFFFFFFFFC6C5C3FF0A0602FF000000FF484541FFFFFF
      FFFF9B9997FF000000FF25211CFF25211CFF0C0704FF474440FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4E4FFFDFDFDFFFFFF
      FFFFFFFFFFFF63605DFF000000FF2E2A24FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF292520FF433F3BFF423E3AFF3B3833FF181715FF7B7976FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF25211DFF16120CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF24201AFF000000FF7A7876FFFFFFFFFF4A4744FF000000FF0E0903FF4845
      41FFFFFFFFFFBAB9B7FF000000FF020000FF181511FFFFFFFFFFBCBBB9FF0000
      00FF201C17FF26221DFF25211CFF25211CFF25211CFF25211CFF1D1915FF3330
      2BFF6B6965FF726F6CFF3C3935FF010000FF1F1B16FF25211CFF060200FFB9B7
      B6FFFFFFFFFFFFFFFFFFC1BFBEFF080300FF0B0602FF0E0902FF46433EFFFFFF
      FFFF979593FF000000FF25211CFF25211CFF181410FF37332EFF94918FFF9A98
      95FF979593FF979593FF989694FF989693FF6C6A69FFC2C1C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFEDEDEDFF25221FFF030000FF2A2620FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF16130FFF413D39FF8A8885FF827E7CFF726F6CFF5B5A59FF918F8DFF9C9A
      99FFA2A19EFFA3A19FFFA3A19FFFA3A19FFFA8A6A3FF838383FFC3C2C0FFFFFF
      FFFFD9D8D7FF15120EFF1C1813FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF040000FF82807DFFFFFFFFFF494643FF000000FF29251FFF26221DFF231F
      1AFF231F1AFF221E19FF25211CFF2A2621FF040000FF171410FFFFFFFFFFB9B7
      B6FF050100FF231F1AFF25211CFF25211CFF25211CFF25211CFF292520FF1D18
      13FF040000FF030000FF000000FF0D0802FF2C2822FF24201BFF010000FFA09E
      9CFFFFFFFFFF989693FF020000FF0F0B07FF2A2620FF090500FF4D4A46FFFFFF
      FFFFA19F9EFF000000FF25211CFF25211CFF292620FF1F1B15FF000000FF0000
      00FF000000FF000000FF020000FF000000FF282522FFECECEBFFECEBEAFFD1D1
      D1FFC2C1C0FFFFFFFFFFEAEAE8FF130F0CFF040100FF2A2621FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF020000FF696662FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D4D4FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0E0B07FFE0DFDEFFF9FA
      F9FF23201CFF0C0905FF27231FFF25211CFF25211CFF25211CFF25211CFF0C07
      04FF53504DFFFFFFFFFF4F4B48FF000000FF29251FFF25211CFF221E19FF2925
      20FF45423DFF302C27FF1F1B17FF25211CFF2A2621FF050200FF38342FFF807C
      79FF1C1813FF231F1AFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF1A1510FF807D7AFF696663FF14100CFF25211CFF1B1813FF3531
      2CFF615E5BFF0C0802FF16110CFF292520FF25211CFF120E09FF383530FFF3F3
      F3FF888583FF030100FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF2A2620FF000000FF3A3734FFFFFFFFFFFFFFFFFF1E1B16FF0C09
      05FF000000FF7A7875FFFFFFFFFFD8D7D5FF0F0C08FF060300FF2B2621FF1915
      0FFF080300FF221E19FF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF2A2520FF100C07FF000000FFA7A5A3FFFFFFFFFFFFFFFFFFCAC9C8FF120E
      08FF1F1B16FF25211CFF25211CFF25211CFF000000FF908E8BFFFFFFFFFF5B58
      54FF000000FF29251FFF25211CFF25211CFF25211CFF25211CFF25211CFF1D18
      14FF423F3AFF393631FF050000FF29251FFF25211CFF25211CFF090400FF4946
      42FFFFFFFFFFAFAEABFF000000FF28231EFF25211DFF2A2621FF130F09FF0703
      00FF292520FF26221DFF25211CFF25211CFF25211CFF25211CFF27231EFF2622
      1DFF000000FF000000FFFFFFFFFFDBDBDAFF000000FF0A0600FF2F2B25FF1814
      0FFF050000FF221D18FF28241FFF25211CFF25211CFF27231EFF1F1A15FF3431
      2CFF28241FFF231F19FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF0D0A07FF3F3C3AFFFFFFFFFFFFFFFFFF35322FFF000000FF1E1A
      14FF191510FF000000FF908E8BFFFFFFFFFFD6D5D4FF0F0B07FF0B0905FF3B38
      33FF534F4CFF27231EFF221E19FF25211CFF25211CFF25211CFF25211CFF2925
      20FF16120DFF000000FF989693FFFFFFFFFF92908DFFCDCCCBFFECECEBFF130F
      08FF1F1B16FF25211CFF25211CFF25211CFF201B17FF36332EFF474440FF130E
      09FF24201BFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF1C1712FF130E09FF28241FFF25211CFF27231EFF231F1AFF0A0600FF100D
      0AFFADABA8FFFFFFFFFF3F3C38FF010000FF2A2620FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C17FF201C
      16FF797773FFA09F9DFFFFFFFFFFEBEBEAFF928F8DFF666360FF16120DFF231F
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF25211CFF130E
      09FF1D1914FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF080503FF696662FFE1E1E0FF4B4844FF000000FF29251FFF2521
      1CFF28241FFF1A1611FF000000FF908E8CFFFFFFFFFFD5D4D3FF000000FF706D
      6AFFFFFFFFFF44403CFF0D0903FF25211CFF25211CFF25211CFF292520FF1410
      0CFF000000FFA7A5A3FFFFFFFFFFABAAA7FF000000FFD5D4D3FFFFFFFFFF0D09
      03FF1F1B16FF25211CFF25211CFF25211CFF292520FF1B1611FF0C0702FF2420
      1BFF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF211D18FF2F2B26FF403C38FF0F0B
      06FF000000FFA7A5A3FFFFFFFFFF3B3835FF100C09FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF19140FFF1C18
      13FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0BFBDFF040000FF211D
      18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF29251FFF1B1712FF18130EFF110D07FF29251FFF25211CFF2521
      1CFF25211CFF28241FFF1A1611FF000000FF8B8885FFFFFFFFFFAEACAAFF918E
      8CFFFFFFFFFF474440FF0C0802FF25211CFF25211CFF26221DFF1D1A15FF0000
      00FFA7A5A3FFFFFFFFFFADABA8FF000000FF0F0D0AFF5B5854FF5E5C58FF1B17
      12FF24201BFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF17130DFF2D2923FFFFFFFFFF7977
      74FF000000FF000000FFFFFFFFFFB4B3B0FF000000FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1E1A
      15FF292420FF46433EFFFFFFFFFFD5D4D3FF2E2A26FF292520FF201C17FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF24201AFF1D1913FF24201BFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF2B2722FF14100BFF000000FF817E7BFFFFFFFFFFFFFF
      FFFFFFFFFFFF44403CFF0D0903FF25211CFF25211CFF221E19FF030000FFBAB9
      B7FFFFFFFFFFA8A6A4FF000000FF140F0BFF2B2721FF0B0601FF070200FF2925
      20FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF24201BFF000000FFB4B3B1FFFFFF
      FFFF6C6C6CFFA3A2A0FFF0F0F0FF3B3834FF13100CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2824
      1FFF060100FF0C0702FFFFFFFFFFDFDFDEFF000000FF17130DFF28241FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF130F0AFF37332EFFE0E0DFFFDBDBDAFFFFFFFFFFFFFF
      FFFFFFFFFFFF494541FF090500FF25211CFF25211CFF221E19FF100D08FFBCBB
      BAFFB0AEACFF030000FF14100BFF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF26221DFF1B1713FF0E0A04FF9795
      93FFDEDCDAFFB5B3B2FF36322DFF060300FF29251FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF1E1A15FF1A1610FFC8C7C6FFA2A09FFF0B0703FF24201BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120CFF322E29FFD1D0CFFFDAD9D8FFBCBBB9FFBEBC
      BBFFB7B5B3FF34302BFF17130DFF25211CFF25211CFF26221DFF27231EFF100B
      06FF090400FF1D1915FF292520FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF1D1813FF0200
      00FF120D08FF030000FF0F0A05FF2A2520FF26221DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF211D18FF16110CFF18140FFF25211DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF292520FF201C16FF070300FF0B0701FF090500FF0A05
      00FF0C0802FF221E19FF28241FFF25211CFF25211CFF25211CFF26221DFF221E
      19FF221E19FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2420
      1BFF211D18FF24201BFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF1E1914FF1F1B16FF27231DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF231E19FF211D18FF221E19FF221E
      19FF211C17FF24201BFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF201C17FF1410
      0AFF14100AFF1F1B16FF28241EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211C17FF1C1813FF302C
      28FF302C28FF1D1914FF18140FFF24201BFF26221DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF231F1AFF1915
      10FF231F1AFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF28241EFF0B0701FF000000FF716F6CFFF4F4
      F3FFF4F4F3FF7E7C79FF000000FF020000FF0B0701FF28251FFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF1F1B16FF0C0702FF221E19FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF28241FFF221D18FF030000FF15110CFF2A2621FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF28241EFF100B06FF060100FF2521
      1CFF100C06FF25211BFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF1E1A15FF000000FF4B4844FFA6A5A5FFF6F6F6FFFFFF
      FFFFFFFFFFFFFDFDFDFFD1D1D1FF9B9997FF383430FF000000FF26221CFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF1D1914FF16120DFF4A4743FF0E0A04FF211D17FF27231EFF25211CFF2521
      1CFF25211CFF28241FFF17130EFF16110CFF797673FF322E29FF14110DFF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211DFF292520FF120D08FF000000FF322E2AFFBDBCBAFFFFFF
      FFFF74716EFF000000FF211D17FF27231EFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF100C
      07FF070200FF27231EFF26221DFF25211CFF25211CFF27231EFF201C17FF1915
      10FF25211CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28251FFF18140FFF000000FF73706EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFF514E4BFF000000FF2824
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1E1A
      15FF16130FFFADACAAFFFFFFFFFF787673FF000000FF211D18FF27231EFF2521
      1CFF28241FFF16120EFF000000FF9E9C99FFFFFFFFFFCAC9C8FF0F0D0BFF1E1A
      15FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF18140EFF000000FF292420FFAEADACFFFBFBFAFFBDBCBBFF6D6C
      6BFFFFFFFFFF8F8E8DFF000000FF1D1914FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF26221DFF28241FFF040000FF3E3B
      36FF5F5C58FF1D1913FF24201BFF25211CFF26221DFF24201AFF1B1712FF231F
      1AFF191510FF29251FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF201C16FF020000FF9A9896FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFFCDCCCBFFE3E2E2FFFFFFFFFFFFFFFFFFFFFFFFFF413E3BFF0300
      00FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1A16
      11FF181512FFEAEAE8FFFFFFFFFFFFFFFFFF706E6BFF000000FF24201AFF2824
      1FFF17120EFF010000FFC4C3C1FF838280FF5C5955FFFFFFFFFF302C28FF1511
      0BFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF1B17
      11FF000000FF1D1915FF959392FFFFFFFEFFD1D0CFFF53504DFF000000FF0000
      00FF494744FFFFFFFFFFA3A19FFF000000FF1E1915FF27231EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF26221CFF000000FF262320FFEFEE
      EEFFFFFFFFFF231F1AFF18130EFF27231EFF24201BFF000000FF7A7774FFE0E0
      DFFF413D39FF110D09FF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF000000FF716F6BFFFFFFFFFFFFFFFFFFF2F1F1FF595756FF353330FFE4E4
      E3FFFDFDFDFF28241FFF090603FF5D5C59FFDFDFDDFFFFFFFFFFE9E8E8FF0A06
      03FF191510FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1FFF0E0B07FF1C1814FFEFEEEDFFFFFFFFFFFFFFFFFF55524FFF000000FF1915
      10FF030000FFC4C3C1FF908F8DFF191715FFC9C8C6FF54514EFF0F0B08FF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF1C1915FF1510
      0DFF868483FFF6F6F6FFE2E2E1FF686562FF000000FF000000FF3F3B37FF3B37
      31FF000000FF302C29FFFFFFFFFFA4A3A1FF000000FF1A1611FF28251FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF28241FFF1D1914FF000000FF46433FFFFFFFFFFFFFFF
      FFFFEBEBEAFF2C2824FF18120DFF211D17FF000000FF5C5957FFFFFFFFFFFFFF
      FFFF74726EFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF1A15
      0FFF171410FFECECEBFFFFFFFFFFEEEEEDFF2E2B29FF000000FF000000FFDCDB
      DBFFFFFFFFFF393631FF000000FF000000FF15120EFFDFDEDEFFFFFFFFFF7A77
      73FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF292520FF010000FF302D29FFF3F3F2FFFFFFFFFFFFFFFFFF43403DFF0000
      00FFC4C3C1FF8D8A87FF2C2925FFEEEDEBFF615E5CFF000000FF28241EFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF221E19FF080501FFBBB9
      B8FFFCFCFBFF6B6865FF090500FF000000FF020000FF73706DFFFCFCFCFFE9E9
      E8FF221E1AFF000000FF322E2BFFFFFFFFFFACABA9FF000000FF16120DFF2824
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF292520FF120E09FF000000FF767472FFFFFFFFFFE6E5E3FFD3D2
      D1FFF4F4F3FF292521FF100B06FF000000FF6B6965FFFFFFFFFFFFFFFFFFFFFF
      FFFF6B6965FF020000FF25211CFF25211CFF25211CFF25211CFF26221DFF0000
      00FF6A6763FFFFFFFFFFF3F3F2FF292520FF000000FF221D17FF17130EFFE0DF
      DFFFFFFFFFFF3D3A35FF0F0B05FF2D2923FF000000FF3E3B36FFFFFFFFFFF7F6
      F6FF1D1A15FF1A1610FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF29251FFF000000FF312E2AFFFCFCFCFFFFFFFFFFF4F4F3FFD4D3
      D2FF747270FF312D28FFE7E6E4FF4E4B49FF000000FF28241EFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C17FF15100AFFE8E8
      E8FF6D6A67FF000000FF000000FF312D29FFBCBBBAFFFFFFFFFFFFFFFFFFFFFF
      FFFFDFDFDEFF1E1A16FF000000FF302D29FFFFFFFFFFBCBBBAFF020000FF211D
      17FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF1D19
      13FF030000FF000000FF060200FFA4A2A1FFFFFFFFFFCAC9C7FF060503FFA6A5
      A3FFFFFFFFFF1F1B16FF000000FF7D7B79FFFFFFFFFFCECDCBFF827E7CFFFFFF
      FFFF676460FF020000FF25211CFF25211CFF25211CFF25211CFF221E19FF0300
      00FFBFBEBCFFFFFFFFFFFCFCFBFF6C6966FF100C07FF1B1712FF17130EFFE0DF
      DFFFFFFFFFFF3D3A35FF0F0B05FF1A1510FF211D1AFFB9B7B6FFFFFFFFFFFFFF
      FFFF4E4A45FF070300FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF29251FFF000000FF494643FFF1F1F0FFFFFFFFFF8280
      7DFF1B1814FFC2C1C0FF3D3A38FF000000FF29251FFF2B2721FF16120CFF0601
      00FF25211CFF27231EFF25211CFF25211CFF25211CFF211D18FF15110BFFD4D4
      D3FF514E4BFF000000FF7B7977FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDEDDDCFF1C1814FF000000FF14110EFFF6F6F5FFA4A19FFF0300
      00FF24201BFF25211CFF25211CFF25211CFF25211CFF25211CFF1D1915FF332F
      2BFF676460FF5B5856FFCFCECDFFFFFFFFFF9A9896FF000000FF000000FFC0BF
      BEFFFFFFFFFF1E1A15FF7D7B78FFFFFFFFFFDCDBDAFF030100FF403D39FFFFFF
      FFFF787673FF010000FF25211CFF25211CFF25211CFF25211CFF1B1711FF201C
      15FFFFFFFFFFB6B5B3FF44413FFF7C7A77FF1F1B17FF1A1611FF17130EFFE0DF
      DFFFFFFFFFFF3D3A35FF0F0B05FF18130EFF3E3A35FF807D7AFF5B5956FFFFFF
      FFFF858380FF000000FF25211CFF25211CFF25211CFF25211CFF26221DFF2521
      1CFF15100BFF130F09FF0E0A05FF030000FF000000FFDADAD8FF83807DFF0F0B
      08FFFDFDFDFFB8B6B5FF000000FF1E1A14FF28241FFF1A1612FF3E3B36FF5D5A
      56FF050000FF1F1B15FF27231EFF25211CFF25211CFF211D18FF130F09FFC4C3
      C2FF8B8886FFB2B0AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDCDCDAFF292522FF000000FFAAA8A6FFD0CFCEFF0000
      00FF24201BFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF8481
      7DFFFFFFFFFFFFFFFFFFFFFFFFFF726F6CFF000000FF15110CFF070100FFB4B2
      B1FFFFFFFFFFC7C7C5FFFFFFFFFFC6C4C2FF0A0501FF000000FF484540FFFFFF
      FFFF9B9996FF000000FF25211CFF25211CFF25211CFF25211CFF221D18FF2B27
      22FF5E5B58FF1C1712FF000000FF0B0600FF28241FFF1E1A15FF17130EFFE0DF
      DFFFFFFFFFFF3D3A35FF0F0B05FF292520FF1F1B16FF020000FF000000FF7371
      6EFF696763FF0F0B08FF25211CFF25211CFF25211CFF25211CFF25211CFF231F
      19FF312D29FF33302BFF423E3AFF363431FF9B9996FF6B6865FF393531FFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9A97FF000000FF201B16FF000000FF8C8987FFFFFF
      FFFF797673FF000000FF24201AFF25211CFF25211CFF201C17FF090400FFD9D9
      D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F1FF161411FFA7A5A3FFAAA8A6FF0000
      00FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1D1915FF332F
      2BFF6B6865FF716F6CFF3D3935FF020000FF1F1B17FF25211CFF060000FFB9B7
      B5FFFFFFFFFFFFFFFFFFC0BFBDFF080300FF0B0602FF0E0902FF46433EFFFFFF
      FFFF979592FF000000FF25211CFF25211CFF25211CFF25211CFF27231EFF2420
      1BFF080300FF1C1813FF28251FFF25211CFF25211CFF1D1914FF17130EFFE0DF
      DFFFFFFFFFFF3D3A35FF0F0B05FF25211CFF25211CFF25211CFF28241EFF100C
      06FF1A1610FF29251FFF25211CFF25211CFF25211CFF25211CFF16120DFF2A26
      22FFE4E4E3FFFFFFFFFFFFFFFFFFFFFFFFFFC6C5C3FF64615EFFBBB9B6FF5150
      50FFF3F3F2FFFFFFFFFFFFFFFFFF797773FF000000FF000000FFD8D7D6FFF3F3
      F2FFFFFFFFFF83817EFF030201FF25211CFF25211CFF24201BFF0E0A06FF6A68
      66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0DFDDFFDBDBDAFF686663FF0401
      00FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF1D19
      13FF030000FF010000FF110C07FF27231DFF26221DFF24201BFF010000FF9F9E
      9BFFFFFFFFFF979593FF020000FF0F0B07FF2A2620FF090500FF4D4A46FFFFFF
      FFFFA19F9DFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF1D1914FF17130EFFE0DF
      DFFFFFFFFFFF3D3A35FF0F0B05FF25211CFF25211CFF25211CFF26221DFF231F
      1AFF231F1AFF26221DFF25211CFF25211CFF25211CFF25211CFF130F09FF322E
      2AFFFFFFFFFFE2E1E1FF9A9999FFF8F8F7FFF9F9F9FFCECDCCFF1C1A18FF0000
      00FF2E2B28FFE1E0DFFFFFFFFFFFFFFFFFFF898886FFBBB9B7FFFFFFFFFF5855
      52FFFFFFFFFFABA9A7FF000000FF25211CFF25211CFF26221DFF26221DFF0000
      00FF726F6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF423E3AFF0000
      00FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1B1813FF3431
      2CFF615E5AFF0C0702FF16120DFF292520FF25211CFF120E09FF383430FFF3F3
      F2FF878582FF030100FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF020000FFDCDB
      DBFFFFFFFFFF26231DFF0F0B04FF26221DFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF130F09FF312D
      29FFFFFFFFFF7C7A77FF000000FF66635FFFFFFFFFFF83817EFF000000FF2B26
      20FF000000FF191611FFC0BFBDFFFFFFFFFFFFFFFFFFFFFFFFFF696562FF5955
      52FFFFFFFFFF2C2A26FF140F0AFF25211CFF25211CFF25211CFF26221DFF201C
      17FF000000FF888684FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FF4F4D
      4AFF0D0B07FF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF2622
      1DFF060200FF000000FF000000FF000000FF000000FF0E0A04FF2F2B25FF1914
      0FFF050000FF221E19FF28241FFF25211CFF25211CFF27231EFF1F1A15FF3430
      2CFF28241FFF241F19FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF090602FF37342FFFFFFF
      FFFFFFFFFFFF6B6865FF000000FF27231EFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C17FF211D
      18FF8C8A87FF585551FF000000FF302C27FFFFFFFFFFB5B4B3FF050200FF2420
      1AFF2D2923FF000000FF534F4BFFFFFFFFFF4A4642FF140F0AFF000000FFEBEA
      EAFF969592FF000000FF28241FFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF1C1813FF000000FF908E8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF716E
      6BFF020000FF25211CFF25211CFF25211CFF25211CFF25211CFF201C17FF201C
      16FF7E7C79FFA19F9DFF9A9996FF9B9A97FF9E9D9AFF676461FF16120DFF231F
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF25211CFF130E
      09FF1D1914FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF1D1914FF1B1714FFDEDEDDFF9290
      8DFF5A5855FFF1F0F0FF484442FF100C07FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231FFF2420
      1BFF000000FF030000FF7D7A78FFD6D6D5FFFFFFFFFFD1D0CFFF000000FF0000
      00FF000000FF1F1B18FFFCFCFBFFCCCBC9FF000000FF000000FF7A7774FFFFFF
      FFFF322E29FF0F0A05FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF191510FF000000FFB3B1AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF999896FF322E2BFF0D09
      05FF27221DFF25211CFF25211CFF25211CFF25211CFF25211CFF19150FFF1B17
      12FFF2F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBCBBFF040000FF211D
      18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF130E09FF4E4A44FFF4F4F4FF0000
      00FF000000FFD8D8D7FF989693FF000000FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF0F0B06FFA1A09CFFCDCCCBFFAFADABFF6A6864FF17120FFF8A88
      85FF898685FFECEBEAFFD1D0CFFF0E0B08FF62605FFFDDDDDDFFFFFFFFFFA09F
      9DFF060200FF231F19FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF14100CFF000000FFB7B5B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9B99FF332F2CFF000000FF0B0601FF2723
      1EFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1E1A
      15FF322F2AFF484541FF46423EFF46433EFF47433FFF2B2722FF201C17FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF1F1B16FF120F0CFFCBCAC9FFCCCB
      CBFFA3A2A1FFEDECECFF35312EFF15100BFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF28241FFF0C0702FF060100FF060100FF060100FF1E1A15FFB0AE
      ADFFFFFFFFFFFFFFFFFFEFEFEFFFEAEBECFFFFFFFFFFE6E5E4FF72706DFF0000
      00FF1D1914FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF292520FF0F0B07FF000000FFCDCCCBFFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B2B0FF45423EFF000000FF090500FF26221DFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2824
      1FFF16110CFF0B0701FF0D0803FF0C0802FF0C0802FF1B1711FF28241FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF120E0AFF26221DFFA6A4
      A2FFBAB8B6FF45413DFF070400FF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF24201BFF231F1AFF231F1AFF27231EFF1E1A15FF0000
      00FF595652FF93918EFFA7A5A3FFAEADAAFF585551FF050000FF000000FF211D
      18FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF292520FF0A0602FF1E1A15FFD7D7D6FFCCCB
      CAFF4A4743FF000000FF030000FF26221CFF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2621FF19140FFF0000
      00FF000000FF100C06FF2A2620FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF2622
      1DFF090400FF000000FF000000FF000000FF090500FF221E19FF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF2A2621FF110D07FF1E1914FF1712
      0DFF020000FF231F1AFF27231EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1B1711FF1D19
      14FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2925
      1FFF120E08FF030000FF1A1611FF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2622
      1DFF18140FFF14100AFF14100AFF1C1813FF28241EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF24201BFF120E09FF040000FF0501
      00FF050100FF040000FF0E0A04FF221D18FF26221DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A251FFF0C08
      03FF36322DFF5E5B58FF1E1A14FF000000FF27231EFF27231EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241EFF1D18
      13FF191510FF28231EFF25211CFF25211CFF25211CFF25211CFF25211CFF221E
      18FF2C2823FF332F2BFF332F2AFF18140FFF060300FF2A2620FF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF231F
      1AFF211D18FF211D18FF211D18FF211D18FF211D18FF211D18FF211D18FF211D
      18FF211D18FF211D18FF211D18FF211D18FF211D18FF211D18FF211D18FF211D
      18FF221E19FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF16120CFF000000FF1B1712FF5B5855FF868481FF817E
      7BFF807C7AFF868481FF686561FF27231EFF020000FF0F0B06FF27231EFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0F0B08FF3D3A
      37FFF1F1F0FFFFFFFFFFD2D1D0FF4D4A47FF020000FF25211BFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF1B1713FF1814
      0EFF2C2924FF231F1AFF25211CFF25211CFF25211CFF25211CFF18140FFF231E
      1AFFF0EFEFFFFFFFFFFFFFFFFFFFD4D4D3FF3A3734FF14100CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF27231FFF100C
      07FF0D0903FF0C0802FF0C0802FF0C0802FF0C0802FF0C0802FF0C0802FF0D09
      03FF0D0903FF0C0802FF0C0802FF0C0802FF0C0802FF0C0802FF0C0802FF0D09
      03FF0B0601FF221E19FF27231FFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF231F19FF000000FF3B3835FF95928FFF979594FFA1A09DFFA3A19FFF918F
      8DFF908E8BFF9F9D9BFFA3A2A0FF989694FF979592FF524F4BFF000000FF1B17
      12FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FFAEAD
      AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494642FF000000FF28241EFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF211D17FF000000FFC3C2
      C1FFD6D5D4FF0A0703FF221E19FF25211CFF25211CFF25211CFF201C17FF2420
      1BFF73706DFF7B7976FF7B7976FFFFFFFFFFEFEEEEFF0D0905FF1F1A15FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF0F0B08FF8785
      82FFC6C5C3FFC3C2C1FFC3C2C0FFC3C2C0FFC3C2C0FFCAC9C8FFE6E6E5FFEBEB
      EAFFEAE9E9FFEAE9E9FFCFCECDFFC3C2C0FFC3C2C0FFC3C2C0FFC3C2C0FFC6C5
      C3FFA5A3A1FF201C16FF1D1914FF25211CFF25211CFF25211CFF26221DFF211D
      18FF040000FF7D7B79FFC6C5C4FF858381FF403C39FF130F09FF000000FF0300
      00FF030000FF000000FF0C0803FF35312DFF73706EFFBCBCBAFF9D9B9AFF110D
      09FF17130EFF27231EFF25211CFF25211CFF25211CFF25211CFF060402FF5D5A
      57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBFF423F3CFF000000FF2824
      1EFF26221DFF25211CFF25211CFF25211CFF29251FFF000000FF6A6763FFFFFF
      FFFFAAA8A6FF000000FF24201BFF25211CFF25211CFF25211CFF27231EFF2622
      1DFF070200FF000000FF000000FFB4B2B1FFFFFFFFFF17120DFF1E1A15FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C17FF090500FFDDDC
      DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAFF9492
      8FFF8D8C8BFFC9C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2F2C27FF130E09FF25211CFF25211CFF25211CFF28241FFF0000
      00FF858481FFD1D0CEFF1F1C18FF000000FF19150FFF24211BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF1D1914FF000000FF0C0804FFB5B3B0FFA7A6
      A4FF070400FF25201AFF25211CFF25211CFF25211CFF25211CFF26211BFF0A06
      02FF504D4AFFBFBEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF403E3BFF0000
      00FF28241EFF26221DFF26221DFF29251FFF000000FF1C1915FFFFFFFFFFFFFF
      FFFF231F1BFF120E0AFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF24201BFF000000FFC5C3C3FFF9F9F9FF000000FF1F1B16FF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC6C5
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5956FF000000FF0000
      00FF000000FF000000FF363431FFF1F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F2F2FF2E2B26FF15100BFF25211CFF25211CFF25211CFF140F0AFF4E4B
      48FFC8C7C5FF16120DFF0E0A05FF29241FFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF28241FFF1B1711FF000000FFB9B8
      B6FF797773FF090502FF25211CFF25211CFF25211CFF25211CFF27231EFF2622
      1DFF000000FF000000FF6C6B68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF403E
      3BFF000000FF2A251FFF25211CFF000000FF3F3D3BFFF8F7F7FFFFFFFFFF6B69
      67FF000000FF28241EFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF24201BFF000000FF9C9A97FFFFFFFFFF5A5754FF000000FF2521
      1CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC5C4
      C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF706D68FF000000FF797773FFE7E6
      E6FFEFEEEEFF9C9A97FF000000FF403C38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF2E2B26FF15100BFF25211CFF25211CFF25211CFF010000FF918F
      8DFF898785FF000000FF292520FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF000000FF706E
      6AFFB1B0AEFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241EFF1E1A15FF000000FF423F3CFFF5F4F3FFFFFFFFFFFFFFFFFFFFFF
      FEFF403E3BFF000000FF000000FF5F5D5BFFFFFFFFFFFFFFFFFF494643FF0000
      00FF24201BFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF1D1914FF0C0805FFBCBAB9FFFFFFFFFF565451FF0000
      00FF25211CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC5C4
      C2FFFFFFFFFFFFFFFFFFFFFFFFFFE1E0E0FF000000FF5D5A57FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF94928FFF000000FFBFBEBCFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF2E2B26FF15100BFF25211CFF25211CFF25211CFF060100FF8381
      7CFF9B9A97FF000000FF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF000000FF8482
      7EFFAAA8A6FF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF27231DFF000000FF211F1CFFD7D6D5FFFFFFFFFFFFFF
      FFFFFFFFFEFF393635FF6A6865FFFFFFFFFFFFFFFFFF403E3BFF000000FF2521
      1BFF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF292520FF0F0B07FF000000FFC5C4C2FFFFFFFFFF5854
      52FF000000FF211D18FF27231EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC5C4
      C2FFFFFFFFFFFFFFFFFFFFFFFFFFAEADABFF000000FFCCCCCAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3F3F2FF000000FF7E7B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF2E2B26FF15100BFF25211CFF25211CFF25211CFF1E1A14FF221E
      1BFFCCCBC9FF5C5955FF000000FF231F19FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF26221DFF000000FF2F2B28FFD4D3
      D2FF413F3BFF15110CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF292520FF030000FF15110DFFA09E9BFFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F2FF45433FFF000000FF28241EFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF292520FF100C07FF000000FFC3C2C0FFFFFF
      FFFF605D5BFF000000FF1C1813FF28241FFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC5C4
      C2FFFFFFFFFFFFFFFFFFFFFFFFFFBDBCBBFF000000FFB5B2B0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4E3E2FF000000FF8E8C8AFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF2E2B26FF15100BFF25211CFF25211CFF25211CFF28241FFF0602
      00FF44423FFFD8D7D6FF7D7B7AFF120E0AFF000000FF110C07FF1B1711FF201C
      17FF201C17FF1C1813FF130F09FF000000FF080400FF64625FFFDDDCDAFF6360
      5DFF000000FF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF2C2822FF100C06FF000000FF918F
      8CFFFFFFFFFFFFFFFFFFFFFFFFFF4F4C48FF000000FF2E2923FF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF292520FF100C08FF000000FFBCBB
      BAFFFFFFFFFF908E8CFF000000FF1A1611FF28241FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC5C4
      C2FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FF110E0AFF211F1CFFF9F9F8FFFFFF
      FFFFFFFFFFFFFFFFFFFF4F4D4AFF000000FFE0E0DFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF2E2B26FF15100BFF25211CFF25211CFF25211CFF25211CFF2A26
      20FF020000FF312E2AFFB0AFACFFA5A4A2FF82807CFF5B5856FF45423DFF1712
      0DFF140F0AFF413E39FF56534FFF7C7A78FFA09F9EFFB8B7B5FF4B4846FF0000
      00FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF292520FF191510FF000000FF53514EFFDBDA
      D9FFFFFFFFFFFFFFFFFFFFFFFFFFC1C0BEFF1A1713FF030000FF2B2621FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF110D09FF0100
      00FF908E8CFFFFFFFFFF9A9896FF000000FF191510FF28241FFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFC5C4
      C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B4B1FF000000FF16130EFF9694
      91FF9C9B98FF373430FF000000FF8A8683FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2F2F2FF2C2924FF15100BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF2A2520FF120D08FF010000FF4B4743FF858380FF999795FF979593FFBDBC
      BAFFBDBCBAFF969592FF9B9997FF8B8885FF5B5854FF090500FF090500FF2925
      20FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF2B2721FF0A0601FF000000FF999795FFFFFFFFFFFFFF
      FFFFFFFFFFFF787674FFB0AEACFFFFFFFFFFE2E1E0FF15120FFF030000FF2B26
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF292520FF1814
      0FFF000000FF807D7AFFFFFFFFFF9C9B98FF000000FF14100BFF231E19FF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0D0903FFCECD
      CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B2AFFF1C1915FF0000
      00FF000000FF0B0602FF989593FFFFFFFFFF888583FF44403FFF4F4C47FF7673
      70FFF4F4F4FF3E3B36FF140F0AFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF26221DFF16120CFF030000FF0C0701FF020000FFF0F0
      EFFFFAFBFAFF070400FF0F0B05FF020000FF110D07FF25211CFF27231DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF292520FF000000FF161311FFB8B7B5FFFFFFFFFFFFFFFFFFFFFF
      FFFF767471FF000000FF000000FFA5A3A1FFFFFFFFFFE4E3E2FF15120EFF0000
      00FF2A2620FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF1F1B16FF000000FF7D7B78FFFFFFFFFFA09F9DFF010000FF070300FF1511
      0CFF2A2620FF25211CFF25211CFF25211CFF25211CFF211D18FF080400FFC7C6
      C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCB
      CBFFC7C6C5FFFBFAFAFFFFFFFFFFFFFFFFFFC3C2BFFF959392FF9C9B98FFBAB9
      B7FFF1F1F0FF302C28FF16110CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF27231EFF27231EFF020000FF000000FFCDCB
      CAFFD6D6D5FF000000FF000000FF26221DFF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF19150FFF000000FF2B2926FFDCDBD9FFFFFFFFFFFFFFFFFFFFFFFFFF7674
      71FF000000FF241F1AFF171310FF000000FF767471FFFFFFFFFFECEBEAFF3734
      32FF070300FF29251FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF201B16FF000000FF777673FFFFFFFFFFFFFFFFFFBAB9B7FF231F
      19FF16120FFF25211CFF25211CFF25211CFF25211CFF25211CFF1C1814FF3C38
      34FF5E5B58FF5B5854FF5A5854FF3B3C3CFFB4B3B1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCAFF5C5A5AFF83817CFF82807CFF7D7A
      77FF47433FFF1B1712FF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF1E1A14FF26221DFF959390FF7D7A79FFE6E6
      E6FFECECEBFF7D7A78FF979593FF292521FF1D1813FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF0805
      00FF130F0BFF6C6A67FFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFF767471FF0000
      00FF201C17FF27231EFF28241FFF1C1813FF000000FF575552FFFFFFFFFFFFFF
      FFFF1C1815FF110E0AFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF27231EFF201C17FF000000FF6A6864FFAFAEACFFFFFFFFFFC7C6
      C5FF050100FF221E19FF25211CFF25211CFF25211CFF25211CFF2A2620FF130F
      0AFF030000FF050000FF050000FF000000FF5A5753FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF807D79FF000000FF040000FF050000FF0300
      00FF0D0903FF27231EFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF211D17FF0C0906FF969593FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9F9E9CFF0D0A07FF201C17FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0D0B09FF413F
      3CFFDADAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767471FF000000FF201C
      17FF27231EFF25211CFF25211CFF27231EFF24201BFF000000FF797672FFFFFF
      FFFF9C9A97FF000000FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF27231EFF26221DFF050000FF000000FFC2C1C0FFFDFE
      FEFF0E0903FF201C17FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF201C16FF1D1913FF7D7B78FF93918EFF908E
      8BFF908E8BFF93918EFF898784FF28241FFF1B1712FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF211D18FF000000FF868481FFFFFF
      FFFFFFFFFFFF908E8BFF000000FF1F1B16FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF050200FFDBDA
      D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777471FF000000FF201C17FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF26221DFF1D1814FF010000FFE1E0
      DFFFFFFFFFFF201D17FF18140EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF24201BFF000000FFCBCAC9FFF2F3
      F3FF0D0803FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF292520FF211D18FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1C1813FF2A2621FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF1D1914FF000000FFB9B7
      B6FFBDBCBAFF000000FF1B1712FF27231EFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF221E19FF030100FFBBBA
      B7FFFFFFFFFFFFFFFFFFFFFFFFFF8B8988FF000000FF1F1B16FF27231EFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF29251FFF0D0A06FF3936
      31FF8B8987FF2E2A25FF1D1914FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF24201BFF000000FFCECDCCFFF4F3
      F4FF080400FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF191510FF1C18
      13FF1C1812FF18140FFF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF15120FFF2724
      21FFB2B1AFFFC2C1BFFF4D4A46FF000000FF201C18FF27231EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2B2721FF130F
      09FF000000FF231F1AFF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF1C1814FF44403CFF4A46
      42FF1C1814FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF1B17
      12FF1B1712FF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2B2721FF1511
      0CFF080300FF0C0802FF090400FF26221CFF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2621FF100C07FF0C08
      02FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF221E19FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF25221DFF1713
      0DFF14100AFF14100AFF14100AFF14100AFF14100BFF231F1AFF27231EFF2521
      1CFF25211CFF27231EFF221E19FF14100AFF14100AFF14100AFF14100AFF1410
      0AFF18140FFF26221DFF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF231F1AFF211D18FF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF211D
      17FF201C17FF27231EFF25211CFF25211CFF25211CFF25211CFF26221DFF231F
      1AFF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF221D18FF2A26
      21FF302C28FF302C28FF302C28FF302C28FF302C27FF211C17FF26221CFF2521
      1CFF25211CFF25211BFF201C17FF302C28FF302C28FF302C28FF302C28FF302C
      28FF27231EFF1F1B16FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF292520FF0F0B05FF18140EFF292520FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF100B06FF1C1813FF28241FFF25211CFF25211CFF25211CFF25211CFF2C28
      23FF120E08FF130F0AFF2A2620FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF18130EFF292520FFE0DF
      DFFFF4F4F3FFF4F3F3FFF4F3F3FFF4F4F3FFF3F3F2FF514E4AFF090502FF2521
      1CFF25211CFF060301FF5D5A56FFF4F4F3FFF4F4F3FFF4F3F3FFF4F3F3FFF4F4
      F3FFD9D9D8FF25211CFF191510FF25211CFF25211CFF25211CFF25211CFF2723
      1EFF25211CFF020000FF000000FF000000FF14100AFF2C2721FF25211CFF2521
      1CFF25211CFF25211CFF2C2721FF110D07FF000000FF000000FF010000FF2420
      1BFF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF19150FFF433F3BFF999794FF14100AFF120E0AFF2925
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0C0703FF6966
      63FFA3A19FFF000000FF19150FFF28241FFF25211CFF25211CFF1F1B16FF2B28
      23FF989593FF312D28FF090501FF2A2621FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF120E09FF332F2AFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696763FF000000FF2521
      1CFF25211CFF000000FF7A7875FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF34302BFF120E09FF25211CFF25211CFF25211CFF25211CFF1C18
      13FF2D2923FF918F8CFF93918EFF93918EFF423F3BFF100E0CFF26221DFF2521
      1CFF25211CFF26221DFF0E0C0AFF4A4743FF93918EFF93908EFF94928FFF312D
      27FF1B1611FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF15110BFF2D2924FFFFFFFFFFC0BFBDFF000000FF120E
      0AFF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF040000FF5F5C
      58FFFFFFFFFF9D9B99FF000000FF181410FF28241FFF25211CFF1F1B16FF100B
      06FFFAFAFAFFE1E1E0FF090501FF090601FF2A2621FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF14100BFF302C27FFF3F3
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF615F5BFF030000FF2521
      1CFF25211CFF010000FF716E6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F3F2FF302C27FF14100BFF25211CFF25211CFF25211CFF25211CFF1E1A
      15FF0B0906FFE7E7E6FFFFFFFFFFFFFFFFFFADACAAFF000000FF25211CFF2521
      1CFF25211CFF25201BFF000000FFC2C0BFFFFFFFFFFFFFFFFFFFECECEBFF0F0C
      0AFF1D1913FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF17130DFF27231EFFEFEFEEFFFFFFFFFFAEACAAFF0000
      00FF120E0AFF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070300FF514D
      49FFFFFFFFFFFFFFFFFF969492FF000000FF191410FF28241FFF1F1B16FF110C
      07FFCBCAC9FFFFFFFFFFC9C8C6FF080501FF090501FF2A2621FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF14100BFF302C27FFF3F3
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF615F5BFF030000FF2521
      1CFF25211CFF010000FF716E6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F3F2FF302C27FF14100BFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF000000FF6B6865FFFFFFFFFFFFFFFFFFEDECECFF060100FF000000FF0000
      00FF000000FF000000FF18130DFFF9F9F9FFFFFFFFFFFFFFFFFF6F6D6AFF0000
      00FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF17130DFF292520FFE8E8E7FFFFFFFFFFFFFFFFFFAEAC
      A9FF000000FF120E0AFF292520FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070300FF5451
      4DFFFFFFFFFFFFFFFFFFFFFFFFFF969492FF000000FF181510FF221E19FF120E
      08FFCAC9C8FFFFFFFFFFFFFFFFFFC9C8C6FF090501FF090501FF2A2621FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF130F0AFF322E29FFF6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF615F5BFF030000FF2521
      1CFF25211CFF010000FF716E6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F7F7FF332F2AFF130F0AFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF15100BFF25211AFFF5F5F4FFFFFFFFFFFFFFFFFFA9A7A5FF7C7A78FF8E8C
      89FF8E8C89FF797776FFB2B0AEFFFFFFFFFFFFFFFFFFF8F8F7FF2A251FFF140F
      0AFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF17120DFF292520FFEBEAEAFFFFFFFFFFFFFFFFFFFFFF
      FFFFAEACAAFF000000FF120E0AFF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070300FF5451
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969492FF000000FF130F0BFF1410
      0AFFCBCAC9FFFFFFFFFFFFFFFFFFFFFFFFFFC9C8C6FF080501FF090601FF2A26
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF14100AFF312D28FFF6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5854FF000000FF2622
      1DFF26221DFF000000FF6C6966FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4F4F3FF2E2A24FF15110CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26211CFF000000FFAEACAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B2B1FF000000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF17120DFF292621FFEBEAEAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFADACAAFF000000FF120E0AFF292520FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070200FF5451
      4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969492FF000000FF0804
      00FFCFCECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C8C6FF090501FF0905
      01FF2A2621FF25211CFF25211CFF25211CFF25211CFF1E1A15FF140F09FFD2D1
      D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5854FF000000FF201C
      16FF211C17FF000000FF696562FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC2C1C0FF0B0702FF211D18FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF000000FF5F5D59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64615DFF000000FF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF17120DFF292621FFEBEBEAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAEACA9FF000000FF14100CFF292520FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070200FF5552
      4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF908E8CFF0000
      00FFC5C4C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C8C6FF0906
      02FF0E0B06FF292520FF25211CFF25211CFF25211CFF25211DFF000000FF9D9C
      99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4E3FF5A5754FF0000
      00FF000000FF63605DFFE4E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8C8A87FF000000FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF19140EFF1E1913FFEDEDEDFFFFFFFFFFFFFFFFFF7E7B79FF3937
      37FF363435FF888683FFFFFFFFFFFFFFFFFFF0F0F0FF211C16FF18130DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120DFF2A2621FFEBEBEAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCCCAFF1D1A17FF1A1510FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070200FF5552
      4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9A
      97FFB3B2B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2
      E0FF24211DFF17120DFF25211CFF25211CFF25211CFF26221DFF000000FF6C69
      66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A19FFFADAD
      ACFFA3A2A1FFA8A7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5A5753FF030000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF000000FFA2A09EFFFFFFFFFFFFFFFFFF8A8785FF0000
      00FF000000FF9A9896FFFFFFFFFFFFFFFFFFA7A6A3FF000000FF26221CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120DFF2A2621FFEBEBEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C6C4FF1D1A17FF1A1611FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF070200FF5552
      4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9896
      93FFB5B3B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDC
      DBFF24201DFF17130EFF25211CFF25211CFF25211CFF25211CFF0E0803FF3E3A
      35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949290FFFEFD
      FCFFF0EFEFFF959491FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7
      F7FF2E2B25FF140F09FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF020000FF54504CFFFFFFFFFFFFFFFFFFEAEAE9FF0D08
      03FF1B1610FFF4F3F3FFFFFFFFFFFFFFFFFF585551FF010000FF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120DFF2A2621FFECEBEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA8A7A4FF000000FF15110CFF292520FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF060200FF5653
      4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8986FF0000
      00FFC7C6C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C3C1FF0603
      00FF0F0B07FF292520FF25211CFF25211CFF25211CFF25211CFF1E1A14FF1611
      0BFFDCDBDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92908EFFE0DF
      DEFFD4D3D2FF949390FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9
      C8FF0C0702FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF1D1812FF140F0AFFE2E2E1FFFFFFFFFFFFFFFFFF322E
      29FF413E3AFFFFFFFFFFFFFFFFFFE7E6E6FF17130DFF1B1710FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120DFF2A2722FFECECEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA8A7A4FF000000FF14100BFF292520FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF060200FF5653
      4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF918F8CFF000000FF0A06
      02FFD1D0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C4C2FF060200FF0B07
      03FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0000
      00FFAAA9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92908EFFE0DF
      DEFFD4D3D2FF949390FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9795
      92FF000000FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF27231EFF000000FF93918FFFFFFFFFFFFFFFFFFF7A77
      74FF84827EFFFFFFFFFFFFFFFFFF999695FF000000FF27231EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120DFF2A2722FFECECEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFA8A7A4FF000000FF14100BFF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF060200FF5653
      4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF918F8CFF000000FF140F0BFF1611
      0CFFCECDCCFFFFFFFFFFFFFFFFFFFFFFFFFFC5C3C1FF060200FF0B0703FF2A26
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF0000
      00FF777471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92908EFFE0DF
      DEFFD4D3D2FF949390FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6562
      5EFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF080501FF46423EFFFFFFFFFFFFFFFFFFE9E8
      E8FFEAE9E9FFFFFFFFFFFFFFFFFF4A4743FF060300FF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120DFF2B2722FFEAEAEAFFFFFFFFFFFFFFFFFFA8A7
      A4FF000000FF14100CFF292520FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF060200FF5653
      50FFFFFFFFFFFFFFFFFFFFFFFFFF918F8CFF000000FF1A1611FF211D18FF1410
      0AFFCDCCCBFFFFFFFFFFFFFFFFFFC5C4C2FF060200FF0B0703FF2A2620FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0904
      00FF43403CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A19FFFFFFF
      FFFFF4F3F3FFA4A4A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3430
      2BFF0F0A05FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF211C16FF0B0702FFD4D3D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD9D9D7FF0E0A05FF1F1B15FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF16120CFF292520FFF2F2F2FFFFFFFFFFA8A6A4FF0000
      00FF14100CFF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF060200FF5450
      4DFFFFFFFFFFFFFFFFFF918F8DFF000000FF1A1611FF28241FFF1E1A15FF130F
      09FFD0CFCEFFFFFFFFFFC4C3C1FF060200FF0B0703FF2A2620FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1F1A
      14FF211D18FF9F9D9BFFA9A8A6FF999795FF999795FF9C9A98FF5D5A56FF9997
      93FF918F8CFF5E5B57FF9F9D9BFF9A9996FF9A9896FFADABA9FF949290FF1A16
      11FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF27231EFF000000FF848380FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8885FF000000FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100AFF302C27FFFFFFFFFFBAB9B7FF000000FF1410
      0BFF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF020000FF6562
      5EFFFFFFFFFF969492FF000000FF1A1611FF28241FFF25211CFF1D1914FF140F
      0AFFFFFFFFFFDBDBDAFF060200FF0B0703FF2A2620FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF221E19FF000000FF24201BFFAEACAAFFAEACAAFFB0AEADFF605D59FF0000
      00FF000000FF65625FFFB1AFADFFAEADABFFACAAA9FF18130FFF000000FF2420
      1BFF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF0C0804FF35322DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF3A3632FF0A0602FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF18140FFF45423DFF979592FF110C07FF13100BFF2925
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0B0603FF6C69
      66FFA19F9DFF000000FF1A1611FF28241FFF25211CFF25211CFF1E1A15FF2F2C
      27FF989694FF2B2722FF0B0703FF2A2620FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF020000FF55524EFFFFFFFFFFFFFFFFFFFFFFFFFF9E9D9AFF0000
      00FF000000FFA8A6A5FFFFFFFFFFFFFFFFFFFFFFFFFF413D39FF0A0400FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF231F1AFF18140EFF787572FF9291
      8EFF92908DFF7B7875FF1A1510FF231E18FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF292520FF0E0A04FF19140FFF292520FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221CFF2622
      1DFF0F0B06FF1D1914FF28241FFF25211CFF25211CFF25211CFF25211BFF2C28
      23FF120E08FF14100AFF2A2620FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF0C0802FF494642FFF0F0F0FFF1F1F1FFF4F4F3FF7E7B78FF0201
      01FF010101FF878582FFF4F4F3FFF2F2F1FFEDECECFF3B3732FF120D08FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF25211CFF020000FF0000
      00FF000000FF020000FF25211CFF27241FFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF231F1AFF211D18FF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF211D
      18FF201C17FF27231EFF25211CFF25211CFF25211CFF25211CFF26221DFF231F
      1AFF211D18FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF24201BFF25211CFF2E2A25FF2E2B26FF302C28FF27231EFF241F
      1AFF231F1AFF28241FFF302C28FF2F2B26FF2C2823FF25211CFF24211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF27231EFF221E19FF15110BFF15110BFF14100AFF1E1A15FF2824
      1EFF28241EFF1E1A14FF14100AFF15100BFF16120CFF241F1AFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF231E19FF0C0802FF030000FF030000FF0B0701FF221E19FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF231E19FF0C0802FF030000FF030000FF0B0701FF221E19FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF221E19FF0C0702FF030000FF030000FF0C0802FF231F1AFF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25221DFF2A26
      20FF090500FF080400FF5E5B57FF888583FF888683FF615E5BFF0B0600FF0703
      00FF292520FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25221DFF2A26
      20FF090500FF080400FF5E5B57FF888583FF888683FF615E5BFF0B0600FF0703
      00FF292520FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2A25
      20FF080400FF090500FF605D59FF888683FF888583FF5D5A56FF080300FF0A05
      00FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF28241FFF231F1AFF060100FF030000FF0D0903FF2926
      21FF292621FF0D0903FF030000FF060100FF231F1AFF28241FFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2520FF0000
      00FF393430FFD8D7D6FFE8E8E7FFBAB9B7FFB9B8B6FFE6E6E6FFDCDBDAFF3F3C
      37FF000000FF29251FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2520FF0000
      00FF393430FFD8D7D6FFE8E8E7FFBAB9B7FFB9B8B6FFE6E6E6FFDCDBDAFF3F3C
      37FF000000FF29251FFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2520FF0000
      00FF3A3732FFDAD9D8FFE7E7E7FFB9B8B6FFBAB9B7FFE8E7E7FFD7D6D4FF3632
      2EFF000000FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF211D18FF27231FFF5A5753FF5E5B58FF4D4A46FF1E19
      14FF1E1914FF4D4A46FF5E5B58FF5A5753FF27231FFF211D18FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF070300FF3D3A
      36FFFFFFFFFFADABAAFF1F1B18FF010000FF000000FF1B1814FFA5A4A3FFFFFF
      FFFF464340FF040100FF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF070300FF3D3A
      36FFFFFFFFFFADABAAFF1F1B18FF010000FF000000FF1B1814FFA5A4A3FFFFFF
      FFFF464340FF040100FF28241FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231FFF060300FF3F3C
      38FFFFFFFFFFAAA9A8FF1D1915FF000000FF000000FF1F1B17FFAFADACFFFFFF
      FFFF393632FF080502FF27231EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF120E09FF312D28FFFFFFFFFFFFFFFFFFD3D2D1FF0501
      00FF050100FFD3D2D1FFFFFFFFFFFFFFFFFF312D28FF120E09FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C16FF0B0704FFF4F3
      F3FFAFAEACFF000000FF15100BFF26221DFF26221DFF16120CFF000000FFA3A1
      9FFFFBFBFBFF0D0A07FF1F1A14FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C16FF0B0704FFF4F3
      F3FFAFAEACFF000000FF15100BFF26221DFF26221DFF16120CFF000000FFA3A1
      9FFFFBFBFBFF0D0A07FF1F1A14FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C16FF0B0804FFF4F4
      F3FFACABA9FF000000FF16110CFF26221DFF26221DFF14100BFF000000FFB5B3
      B2FFEFEFEEFF050200FF211D17FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF7F7F6FFFFFFFFFFC5C4C3FF0703
      00FF070300FFC5C4C3FFFFFFFFFFF7F7F6FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF090500FF6C6964FFEBEA
      EAFF100C05FF19150FFF26221DFF25211CFF25211CFF26221DFF1C1712FF0803
      00FFE8E8E8FF7B7874FF060200FF29251FFF1F1A15FF090400FF1B1711FF2925
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF090500FF6C6964FFEBEA
      EAFF100C05FF19150FFF26221DFF25211CFF25211CFF26221DFF1C1712FF0803
      00FFE8E8E8FF7B7874FF060200FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF090500FF6C6965FFE9E9
      E8FF0F0B05FF1A1510FF26221DFF25211CFF25211CFF26231DFF17130EFF1510
      0AFFECECECFF67645FFF0A0601FF25211CFF292520FF15100BFF15110BFF2925
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF020000FF8B8987FFA6A4
      A2FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF27231EFF0000
      00FFA7A5A3FFA8A6A4FF000000FF201C18FF2C2823FF4F4C48FF322E29FF1F1B
      16FF25211CFF25211CFF25211CFF25211CFF25211CFF020000FF8B8987FFA6A4
      A2FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF27231EFF0000
      00FFA7A5A3FFA8A6A4FF000000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF020000FF8B8986FFA5A3
      A1FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF27231EFF0000
      00FFB1AFAEFF9C9A98FF000000FF25211CFF1F1B16FF3D3A35FF2E2A25FF0500
      00FF2A2520FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF030000FF898784FF9A98
      96FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF27231EFF0000
      00FF9D9B98FFA5A4A2FF000000FF000000FF64615EFFFFFFFFFF84827EFF0000
      00FF211D18FF24201BFF25211DFF25211CFF25211CFF030000FF898784FF9A98
      96FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF27231EFF0000
      00FF9D9B98FFA5A4A2FF000000FF221E19FF221E19FF221E19FF221E19FF221E
      19FF211D18FF24201BFF25211DFF25211CFF25211CFF030000FF898684FF9997
      95FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF27231EFF0000
      00FFA8A6A5FF9D9B9AFF000000FF1B1712FF000000FFBAB8B7FFE6E6E5FF2E2B
      28FF000000FF25211CFF27231EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF050000FF807D79FFD5D4
      D3FF010000FF221E18FF25211CFF25211CFF25211CFF25211CFF24201AFF0000
      00FFD3D2D2FF959491FF000000FF000000FF585451FFFFFFFFFF7A7874FF0000
      00FF0B0601FF1E1A15FF29251FFF25211CFF25211CFF050000FF807D79FFD5D4
      D3FF010000FF221E18FF25211CFF25211CFF25211CFF25211CFF24201AFF0000
      00FFD3D2D2FF959491FF000000FF090500FF0A0500FF0A0500FF0A0500FF0A05
      00FF0B0601FF1E1A15FF29251FFF25211CFF25211CFF050000FF807D7AFFD3D2
      D2FF010000FF231E18FF25211CFF25211CFF25211CFF25211CFF221D17FF0400
      00FFDADAD9FF7E7C79FF000000FF16120CFF000000FFAAA8A6FFFFFFFFFFF6F6
      F6FF4A4744FF040000FF27221CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF19150FFF25221EFFFFFF
      FFFF6E6C68FF000000FF26221CFF26221DFF26221DFF26221DFF000000FF625E
      5AFFFBFAFBFF3A3631FFB7B5B3FFBCBCBBFFD6D5D4FFFFFFFFFFDCDCDBFFB8B7
      B7FFC5C4C3FF4D4A46FF0D0906FF25211CFF25211CFF19150FFF25221EFFFFFF
      FFFF6E6C68FF000000FF26221CFF26221DFF26221DFF26221DFF000000FF625E
      5AFFFBFAFBFF3A3631FFB7B5B3FFC5C4C2FFC5C4C2FFC4C3C1FFC1C0BFFFC2C1
      C0FFC5C4C3FF4D4A46FF0D0906FF25211CFF25211CFF19150FFF26231FFFFFFF
      FFFF6B6965FF000000FF26221CFF26221DFF26221DFF26211CFF000000FF7572
      6EFFF0EFEFFF34302BFFD4D3D1FFDDDDDCFFD8D7D6FFF2F2F2FFFFFFFFFFFFFF
      FFFFFFFFFFFF696662FF050402FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF000000FF7976
      74FFFFFFFFFF575453FF000000FF000000FF000000FF000000FF4D4B49FFFFFF
      FFFF706E6BFF070300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF686561FF000000FF25211CFF25211CFF28241FFF000000FF7976
      74FFFFFFFFFF575453FF000000FF000000FF000000FF000000FF4D4B49FFFFFF
      FFFF706E6BFF070300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF686561FF000000FF25211CFF25211CFF28241FFF000000FF7B79
      76FFFFFFFFFF53514FFF000000FF000000FF000000FF000000FF595755FFFFFF
      FFFF595754FF1C1812FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF888582FF000000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF24201AFF0000
      00FF7B7876FFFFFFFFFFA4A2A1FF696664FF8E8C8AFFBFBFBEFFFFFFFFFF7673
      71FF000000FF28241FFF494641FF2F2C2BFF817E7BFFFFFFFFFFA09E9CFF3636
      36FF55524EFF2F2B26FF1F1A16FF25211CFF25211CFF25211CFF24201AFF0000
      00FF7B7876FFFFFFFFFFA4A2A1FF696664FF8E8C8AFFBFBFBEFFFFFFFFFF7673
      71FF000000FF28241FFF494641FF4C4845FF484541FF4D4945FF55514DFF5552
      4EFF55524EFF2F2B26FF1F1A16FF25211CFF25211CFF25211CFF241F1AFF0000
      00FF7E7C78FFFFFFFFFFA1A09FFF696664FF908D8AFFC3C2C1FFFFFFFFFF6866
      62FF000000FF2D2924FF4A4743FF4B4844FF2A2A29FF94928FFFFFFFFFFFFFFF
      FFFFC0BFBDFF030000FF201B15FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF231F
      1AFF000000FF24211EFFFDFDFCFFFFFFFFFFA3A1A0FFA5A3A1FF25221EFF0000
      00FF38342FFF211D18FF0C0802FF000000FF5F5B58FFFFFFFFFF83817DFF0000
      00FF070200FF1E1A15FF292520FF25211CFF25211CFF25211CFF27231EFF231F
      1AFF000000FF24211EFFFDFDFCFFFFFFFFFFA3A1A0FFA5A3A1FF25221EFF0000
      00FF38342FFF211D18FF0C0802FF0A0600FF0B0701FF0A0500FF070200FF0702
      00FF070200FF1E1A15FF292520FF25211CFF25211CFF25211CFF27231EFF231E
      19FF000000FF282420FFFFFFFFFFFFFFFFFFA2A1A0FFA3A19EFF1E1A16FF0100
      00FF393530FF1F1B16FF0B0601FF0A0600FF000000FF7A7975FFFFFFFFFFE3E2
      E2FF100D0AFF0C0906FF292520FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF25221CFF000000FFCFCFCDFFCAC9C8FF000000FF000000FF000000FFE0DF
      DEFFCDCDCBFF080300FF221E19FF17130FFF3E3A36FF8E8C8AFF4B4844FF1512
      0EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF25221CFF000000FFCFCFCDFFCAC9C8FF000000FF000000FF000000FFE0DF
      DEFFCDCDCBFF080300FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF24201BFF000000FFD6D5D4FFC2C1BEFF000000FF000000FF030000FFE6E6
      E5FFC0BFBDFF050000FF231F1AFF25211CFF070503FF72706CFFDCDBDAFF413D
      39FF000000FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF060200FFD5D5D3FFD4D3D2FF000000FF080501FFE2E1E0FFFFFF
      FFFFC0BFBDFF090400FF221E19FF2B2721FF1A1610FF000000FF14100BFF2C27
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF060200FFD5D5D3FFD4D3D2FF000000FF080501FFE2E1E0FFFFFF
      FFFFC0BFBDFF090400FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF080300FFDCDAD9FFCDCCCAFF000000FF0F0B07FFECEBEAFFFFFF
      FFFFB3B3B1FF050000FF231F1AFF25211CFF27221DFF211D18FF1E1A15FF120D
      08FF2A251FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF060200FFDADAD8FFB2B0AFFF12110FFFF2F2F1FFEDECEBFFC4C3
      C2FFCFCECDFF0A0500FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF060200FFDADAD8FFB2B0AFFF12110FFFF2F2F1FFEDECEBFFC4C3
      C2FFCFCECDFF0A0500FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF080300FFE0DFDEFFAAA8A6FF161513FFFBFBFAFFE5E4E2FFCAC9
      C8FFC5C4C2FF060100FF231F1AFF25211CFF27231DFF211D18FF1B1711FF2521
      1CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF060200FFC2C1C0FFD0CFCEFFF8F7F6FFF0EFEEFF0B0906FFA2A0
      9EFFE6E5E5FF0A0500FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF060200FFC2C1C0FFD0CFCEFFF8F7F6FFF0EFEEFF0B0906FFA2A0
      9EFFE6E5E5FF0A0500FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF080300FFC6C5C4FFCECCCBFFFDFCFBFFE7E7E5FF060502FFB1B0
      AEFFD9D8D7FF060100FF231F1AFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF14100BFF302C27FFF3F3F2FFFFFFFFFFC2C1C0FF0804
      00FF080400FFC2C1C0FFFFFFFFFFF3F3F2FF302C27FF14100BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF040000FFBBB9B8FFFFFFFFFFDAD9D8FF060300FF000000FFC7C7
      C4FFE3E2E0FF0A0500FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF040000FFBBB9B8FFFFFFFFFFDAD9D8FF060300FF000000FFC7C7
      C4FFE3E2E0FF0A0500FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF221E19FF060100FFC0BFBDFFFFFFFFFFD2D1D0FF000000FF000000FFD4D3
      D3FFD5D4D3FF060100FF231F1AFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF130F0AFF312D28FFFFFFFFFFFFFFFFFFCECECDFF0602
      00FF060200FFCECECDFFFFFFFFFFFFFFFFFF312D28FF130F0AFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF070200FFB5B4B2FFD2D2D1FF0A0602FF090601FF000000FFDAD9
      D8FFFFFEFEFF040000FF211D18FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF070200FFB5B4B2FFD2D2D1FF0A0602FF090601FF000000FFDAD9
      D8FFFFFEFEFF040000FF211D18FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF080300FFBBB9B8FFCFCECDFF070200FF0B0703FF000000FFE9E8
      E8FFF0EFEFFF000000FF231F1AFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF15110CFF2F2B26FFE7E7E6FFF4F4F3FFBAB8B7FF0A06
      01FF0A0601FFBAB8B7FFF4F4F3FFE7E7E6FF2F2B26FF15110CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF221F1AFF2A2722FF1C1813FF130F0BFF2A2520FF13100EFF6663
      60FF73706EFF16110EFF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF221F1AFF2A2722FF1C1813FF130F0BFF2A2520FF13100EFF6663
      60FF73706EFF16110EFF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF221E1AFF2A2722FF1B1712FF15100CFF292520FF14100EFF6C69
      66FF6E6B68FF14100EFF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF24201BFF25211CFF2F2B26FF302C28FF2D2924FF241F
      1AFF241F1AFF2D2924FF302C28FF2F2B26FF25211CFF24201BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF1B1611FF1B1712FF28241FFF25211CFF2C2721FF0A05
      00FF040000FF2A2721FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF1B1611FF1B1712FF28241FFF25211CFF2C2721FF0A05
      00FF040000FF2A2721FF26221DFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF1A1611FF1B1712FF28241EFF25211CFF2B2721FF0803
      00FF070200FF2B2721FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF24201BFF15110CFF14100AFF191510FF2723
      1EFF27231EFF191510FF14100AFF15110CFF24201BFF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF28241FFF080300FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF17130DFF2B2621FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF221E18FF211D18FF211D18FF211D18FF211D18FF211D18FF211D
      18FF211D18FF211D18FF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221CFF0F0C08FF605D5AFFA19F9DFFAAA8
      A6FFA6A4A2FFA6A4A2FFA6A4A2FFADACAAFF979593FF2B2722FF0E0A06FF2824
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF26221DFF231F1AFF18140FFF1410
      0AFF14100AFF16110CFF1F1B16FF26221DFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A26
      20FF18130EFF0A0600FF0D0903FF0C0802FF0C0802FF0C0802FF0C0802FF0C08
      02FF0D0903FF0D0903FF0E0904FF28241EFF26221DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF27231EFF0E0A06FF18140FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D6FF000000FF130F
      0AFF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF1B1711FF14100AFF15110BFF15110BFF15110BFF15110BFF15110BFF1511
      0BFF14100AFF1C1813FF26221DFF1A1611FF24201BFF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF28241FFF211D18FF020000FF0C0802FF3D3935FF5451
      4DFF575350FF484541FF1C1712FF000000FF18130EFF292520FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF0C09
      05FF2B2823FFBCBBBAFFC6C5C3FFC3C2C0FFC3C2C0FFC3C2C0FFC3C2C0FFC3C2
      C0FFC5C4C2FFC5C4C2FF5D5A56FF000000FF29241FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221DFF24201AFF000000FFA8A7A4FFFFFFFFFF4B4843FF0C08
      02FF24211CFF24211CFF24201BFF0D0903FF565350FFFFFFFFFFB2B0AEFF0000
      00FF1F1A15FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF221E
      19FF27221DFF3B3833FF46423EFF433F3BFF433F3BFF433F3BFF433F3BFF433F
      3BFF433F3BFF383430FF211D17FF26221DFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF2A2621FF0D0904FF050000FF7C7976FFC7C6C5FFC1C0BFFFA09F
      9DFF969491FFBDBCBAFFCCCBCAFFA2A09DFF221E19FF000000FF28241FFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1D1914FF110D
      0AFFC7C6C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF403D39FF0F0B08FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241EFF000000FF615E5AFFFFFFFFFF9B9995FF000000FF1713
      0DFF19140FFF19140FFF19140FFF191510FF000000FF6C6965FFFFFFFFFF8482
      7DFF050100FF24201BFF25211CFF25211CFF25211CFF25211CFF221E19FF0D09
      04FFB7B6B4FFEAE9E9FFCBCAC9FFCFCECDFFDAD9D8FFD2D1D0FFCDCDCCFFCFCE
      CDFFD6D6D5FF82807CFF231F1AFFC7C5C4FF3B3833FF18140EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF2A2621FF050100FF211D1AFFD9D8D7FFC1C0BFFF4D4A46FF2A2621FF1712
      0DFF110D07FF2A2621FF373430FF9C9B9BFFEFEEEEFF595754FF000000FF2824
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF120E08FF3531
      2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A5A2FF000000FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF29251FFF050100FF2D2925FFFFFFFFFFC8C7C6FF000000FF1C1813FF2723
      1EFF25211CFF25211CFF25211CFF26221DFF1E1A15FF000000FFDEDEDDFFF8F8
      F8FF0A0601FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF120D
      08FFDFDFDEFF908D8BFF2D2A26FF494642FF3B3833FF46423EFF4C4945FF4946
      42FF514E4AFF2B2822FF3D3935FFEEEDEDFF413E39FF14100AFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF110E0AFF211E1BFFDCDBDAFF898784FF3B3935FF868380FFC0BFBDFFD1CF
      CEFFD1D0CFFFC8C7C6FFA2A09EFF4B4948FF585653FFE3E3E2FF54524FFF0000
      00FF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9996FF000000FF110D07FF1E1A14FF2824
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF15110DFF000000FFEEEEEDFFFFFFFFFF130F0AFF0C0703FF28241FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF24201BFF020000FFD1D0CFFFEAE9
      E9FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0BFFBCBBB9FF94918FFFBEBDBBFFBEBCBBFF3C3934FF9D9B99FFC2C0BFFFBDBC
      BBFFC1C0BEFF908F8CFF37332EFFD6D5D4FF3E3B36FF16120CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2520
      1BFF010000FFB6B5B2FFB6B5B3FF706E6AFFD3D2D1FFA4A2A1FF424243FFDEDD
      DCFFF8F8F8FF363434FF8F8D8AFFCDCBCAFF8F8E8DFF9C9A97FFEEEDECFF1814
      10FF191511FF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF969491FF000000FF3B3732FF1B1712FF211D
      18FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1E1A
      14FF000000FFC2C0BEFFFFFFFFFF433F3BFF000000FF0A0500FF201C17FF2824
      20FF25211CFF25211CFF25211CFF25211CFF211D18FF080400FFD6D5D4FFE6E5
      E5FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0AFFCDCDCCFF787572FF3D3A36FF75726FFF312D29FF5C5955FF74716EFF7572
      6FFF74716EFF5A5753FF3F3B37FFD7D6D6FF3E3B36FF16120CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0A06
      03FF4B4843FFF2F2F1FFFBFBFAFFFFFFFFFF191511FF000000FF000000FF5D5A
      56FF696663FF000000FF000000FF000000FF9F9D9AFFFFFFFFFFFFFFFFFFA5A2
      A0FF010000FF24201BFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF908E8BFF000000FFF2F2F1FF949290FF0000
      00FF29241FFF25211CFF25211CFF25211CFF25211CFF25211CFF27221CFF0000
      00FF888582FFFFFFFFFF74716EFF000000FF36322DFF8F8D8AFF302D28FF1A16
      11FF25211CFF231F1AFF24201BFF24201BFF070300FF010000FFD9D8D7FFE6E5
      E5FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0AFFD4D4D3FF595652FF27241FFFCAC9C8FF3A3632FF8A8885FFD2D2D1FFCAC9
      C7FFB9B8B6FFB2B0AEFF504C49FFCDCCCBFF3E3B36FF16120CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF0000
      00FFA19F9DFFFFFFFFFF7B7976FFCAC9C8FF726F6CFF070400FF2B2621FF0F0B
      06FF0E0A04FF110C07FF0C0802FF6D6B67FFC0BEBDFFD0CFCEFFFFFFFFFFD9D8
      D7FF0D0903FF201C17FF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF908E8BFF000000FFEDEDECFFFFFFFFFF3D3A
      36FF010000FF2A2620FF25211CFF25211CFF25211CFF25211CFF0B0805FF5552
      4FFFFFFFFFFF918F8CFF000000FF2C2A27FFE1E1E0FFFFFFFFFF4E4B47FF0000
      00FF231F19FF191510FF0E0903FF2C2824FF716E6BFF1D1914FFCDCCCBFFE6E5
      E5FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0AFFD2D2D1FF777471FF060200FF1A1611FF221E19FF322E29FF33302BFF1612
      0DFF5C5956FF1B1711FF2F2B27FFDFDEDDFF3E3B36FF19150EFF1C1712FF110D
      07FF27241FFF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF0905
      00FFEDECEBFFCECDCCFF000000FF37332FFF4F4B47FF1A1713FF25211CFF2925
      1FFF0A0600FF241F1BFFAAA8A6FFF1F0F0FFD5D4D4FFB6B5B3FFF2F2F2FFF2F2
      F1FF24201BFF19140EFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF908E8BFF000000FFCAC9C8FFFFFFFFFFFAFA
      FAFF322F2BFF110D0AFF25211CFF25211CFF25211CFF25211CFF000000FFB6B5
      B3FFFFFFFFFF0C0802FF33312FFFFFFFFFFFFFFFFFFFFEFEFEFF4D4A46FF7572
      6FFF312D28FF5E5B58FF767370FF1A1610FFEAE9E9FF3C3934FFBFBEBDFFE6E5
      E5FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0AFFD3D3D2FF726F6CFF010000FF4D4A46FF1E1A15FF0E0A05FF000000FF8583
      80FFEDEDECFF62605CFF44403CFFD0CECDFF35322DFF0C0904FF1D1813FF413D
      39FF221E19FF25211CFF25211CFF25211CFF25211CFF25211CFF211D18FF1914
      0EFFD4D3D2FF524E4BFF000000FF15100BFF18140EFF2A2520FF292520FF0000
      00FF413E39FFEAE9E9FFEBEAEAFFBCBBBAFFBAB9B8FFEEEEEDFFFFFFFFFFFFFF
      FFFF514D4AFF090401FF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF908E8BFF000000FFCCCBCAFFFFFFFFFFFFFF
      FFFF4C4946FF080402FF25211CFF25211CFF25211CFF25211CFF000000FF6A68
      64FFFFFFFFFFFFFFFFFFFFFFFFFFAAA8A6FF63615DFFFDFDFDFF514E4AFFD6D5
      D4FF3A3732FF91908DFFCBCAC8FF070300FFD1D0D0FF35322DFFC2C1C0FFE6E5
      E5FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0AFFD1D1D0FF615E5BFF46433EFFE6E6E5FF514E49FF030000FF605D59FFD5D5
      D4FF4F4C48FFADACAAFF8B8985FFDFDEDDFF4E4B46FF000000FFAAA8A6FFD9D8
      D8FF0F0B06FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF130F
      0AFFB8B6B4FFD6D5D4FFA9A7A4FF1B1712FF1E1A15FF25211CFF1B1712FF2826
      24FF807D7AFFFAFAFAFFFEFEFEFFE2E1E0FFCBCAC9FFCCCBC9FFD3D2D1FFFFFF
      FFFF6D6B67FF000000FF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8D8AFF000000FFECECECFFFFFFFFFF6562
      5FFF000000FF28241EFF25211CFF25211CFF25211CFF25211CFF1B1611FF2C28
      23FF8D8B89FFB0AFADFF959491FF000000FF514E4AFFFFFFFFFF514D49FFBBB9
      B8FF37342FFF83817DFFB3B2B0FF0C0802FFD0CFCFFF35322DFFC2C1C0FFE6E5
      E5FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211D18FF1410
      0BFFCBCAC9FF5D5B57FFADACAAFF868381FFBCBAB9FF787672FFC3C2C1FF807D
      7AFFA5A3A1FF494641FF181410FFD6D6D6FFADACAAFF6C6965FFF9F9F9FFD3D2
      D2FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF211C17FF100B
      04FFD1D1D0FFCBCAC9FF7D7B7AFF1D1914FF16120CFF24201BFF0F0A07FF524F
      4BFFDCDBDAFF9A9895FFF9F9F9FFFFFFFFFFFFFFFFFFE1E0E0FFDDDCDCFFFFFF
      FFFF46423EFF0D0904FF25211CFF25211CFF25211CFF25211CFF15110BFF2F2B
      27FFF2F2F2FFFFFFFFFFFFFFFFFFC5C4C3FF646362FF7E7B78FF74726EFF7674
      71FFECECEBFFFFFFFFFFFFFFFFFF92908DFF000000FFD7D7D5FFA2A09EFF0000
      00FF221D18FF26221DFF25211CFF25211CFF25211CFF25211CFF2A2621FF1D19
      14FF000000FF000000FF000000FF000000FF716E6CFFFFFFFFFF514D49FFBBB9
      B8FF37342FFF83817DFFB4B3B1FF0D0802FFCDCCCCFF130F0AFFB9B7B6FFF3F3
      F3FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF201C17FF0F0B
      05FFEAEAEAFFA8A6A4FF33302BFFD8D8D6FF65625FFFA6A5A2FFA7A5A3FFB2B1
      AFFF83817DFFDCDCDBFF615E5CFF000000FF4A4743FFC7C6C4FFA6A5A3FFBFBE
      BDFF130F09FF211D18FF25211CFF25211CFF25211CFF25211CFF231F1AFF0503
      01FFDFDFDEFF908E8CFF000000FF130E09FF27231EFF2C2823FF26221CFF0000
      00FF767471FFF3F3F2FF92918EFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFBBB9
      B8FF15110BFF1F1B15FF25211CFF25211CFF25211CFF25211CFF130F09FF322E
      2AFFFFFFFFFFFFFFFFFFFFFFFFFFC0BFBDFF4C4A48FF6B6965FF615E5AFF605D
      5AFFEAEAE9FFFFFFFFFFFFFFFFFFAAA8A5FF000000FF25211CFF110D07FF1F1B
      16FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25201BFF25211CFF030000FF6D6A67FFFFFFFFFF514D49FFBBB9
      B8FF37342FFF83817DFFB4B3B1FF050100FFD0CFCEFF84827EFFF1F1F0FFE3E2
      E1FF070300FF211D18FF25211CFF25211CFF25211CFF25211CFF231F1AFF100B
      07FFA3A19FFFD4D4D2FF2B2722FF353435FFAAA9A6FFB9B8B6FF9F9D9BFF7370
      6DFFBCBBB9FF888684FF2E2A25FF17130EFF000000FF56544FFFFFFFFFFFC3C2
      C1FF0C0802FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF0000
      00FF83817CFFFFFFFFFF050100FF595652FFE2E2E0FF282421FF1D1914FF1E1A
      14FF000000FF8A8785FFD6D5D4FFA19F9DFFFFFFFFFFFFFFFFFFFFFFFFFF3E3B
      36FF070300FF27231EFF25211CFF25211CFF25211CFF25211CFF1F1B16FF0F0B
      08FFB2B1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5B57FF080503FF1A1510FF201C16FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF030000FF6E6B68FFFFFFFFFF413D39FFB8B6
      B5FF383630FF83817DFFA8A6A4FF171410FFF9F9F8FFFFFFFFFFC4C3C1FF2622
      20FF1A1612FF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2622
      1DFF14100AFF19150FFF231F1AFF000000FF5A5855FF83817EFF908E8CFFD0CF
      CEFF726F6CFF000000FF000000FF020000FF232120FF92908EFFC8C7C6FFC5C4
      C3FF100B06FF211D18FF25211CFF25211CFF25211CFF25211CFF25211CFF1F1A
      14FF030000FFDEDDDCFFE0DFDEFFCAC9C8FF5F5E5BFF110D0AFF25201AFF1E1A
      15FF15110BFF000000FF908E8BFFE1E0E0FFA5A3A1FFFBFBFBFFFFFFFFFF625F
      5BFF020000FF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF1612
      0EFF080400FFB0AEACFFEAEAE9FFF0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE1E0E1FFEEEDEDFF8A8885FF000000FF26211BFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF000000FF7A7775FFFFFFFFFF615E5BFFB8B6
      B5FF312D29FF8A8785FF8F8D8BFF25211CFFFFFFFFFF8E8B89FF000000FF0703
      00FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF211D18FF1F1B16FF25211CFF2B2721FF000000FF524F4BFFC4C3C2FF6663
      60FF4E4B47FF504D49FF5E5B57FF403D3DFF888682FFBAB8B7FF979592FFE1E1
      E0FF110C07FF201C17FF25211CFF25211CFF25211CFF25211CFF25211CFF2925
      20FF090602FF1D1915FFFFFFFFFFF7F7F7FF060300FF000000FF000000FF8C8B
      88FFA4A2A0FF000000FF000000FF908E8BFFF8F8F7FFFFFFFFFFFFFFFFFF7A77
      73FF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A25
      20FF16120DFF120D08FF25211BFF211D19FFA9A7A5FFF4F4F3FFCECDCCFF3E3A
      37FF171310FF2C2823FF130F09FF1F1B17FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF100C09FF393531FFE7E7E6FFFFFFFFFFF9F9
      F9FF120E08FF615E5AFFC0BEBDFFBFBEBCFFFBFBFBFF1C1915FF070300FF2925
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27221DFF1F1B16FF040000FFA4A2
      A0FFF9F9F9FFFBFBFBFFF9F9F9FFFFFFFFFF6E6B68FF2A2621FFD8D7D6FFA09F
      9DFF0F0B06FF231E19FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF2A2620FF070300FF1D1915FFADACABFFF0EFEEFFA5A3A1FF474849FFE4E4
      E4FFFFFFFFFF414041FF8A8887FFC7C6C4FFD6D5D4FF585653FFBAB9B7FF6563
      5FFF0B0706FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF1F1B16FF18130EFF100C06FF0A0500FF302C28FF18140FFF0904
      00FF1A1610FF16120CFF211D18FF27231EFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF2A2520FF0E0A04FF1F1B16FF989693FFFFFF
      FFFF918F8CFF75726FFFFFFFFFFFFFFFFFFF5F5C59FF000000FF29251FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF26221DFF221E19FF1B1712FF322E
      29FF393631FF383430FF383530FF3A3732FF2B2722FF191510FF1D1914FF1712
      0DFF25211CFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF2A2620FF100C07FF000000FF53504CFFAFADABFFC3C1C0FFBFBE
      BCFFBEBDBBFFC3C3C1FFC2C1BFFF706D6AFF0C0802FF000000FF0E0A04FF201C
      17FF28241EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF27231EFF221E19FF14100AFF1D1813FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF292520FF110D08FF000000FFA2A1
      9FFFFFFFFFFFFFFFFFFFB6B5B3FF1F1D1BFF110D07FF25201BFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1B16
      11FF14100AFF15110BFF15100BFF14100AFF1F1B16FF26221DFF1D1914FF201C
      17FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF27231EFF25211CFF0C0802FF000000FF16110CFF1410
      0BFF130E09FF1B1712FF030000FF050000FF1F1B16FF28241FFF201C17FF231E
      19FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF0E0A07FF3A36
      31FFC5C4C3FFA1A09EFF1C1812FF000000FF24201BFF27231EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF221E19FF211D
      18FF211D18FF211D18FF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF1915
      0FFF0C0702FF020000FF18140EFF2A2621FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF211D18FF24201BFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF221E19FF211D18FF211D18FF211D18FF211D18FF211D18FF211D
      18FF211D18FF211D18FF24201BFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2925
      20FF050000FF0F0B05FF2B2721FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF292520FF060100FF0D0803FF2C27
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A26
      20FF19140FFF0A0600FF0D0903FF0C0802FF0C0802FF0C0802FF0C0802FF0C08
      02FF0D0903FF0D0803FF0F0A05FF28241EFF26221DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF1915
      10FF908E8CFF474440FF050100FF2A2620FF090400FF1D1914FF28241FFF2521
      1CFF2B2721FF140F0AFF0C0802FF29241FFF000000FF6B6965FF7B7875FF0E0C
      09FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF0E0A
      06FF26221DFFBAB9B7FFC6C5C3FFC3C2C0FFC3C2C0FFC3C2C0FFC3C2C0FFC3C2
      C0FFC5C4C3FFC4C3C1FF575450FF000000FF29251FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF0501
      00FFB4B2B0FFFFFFFFFF14110EFF000000FF676561FF3D3935FF1C1813FF2521
      1CFF171310FF524F4BFF5F5B58FF000000FF4F4D4AFFFFFFFFFF716F6DFF0603
      01FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1E1A15FF0F0C
      09FFC1C0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFF3B3835FF100D09FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF211D
      18FF000000FFC9C7C5FFEAE9E8FF23201CFFDBDAD9FF4A4743FF100B06FF211D
      17FF000000FF908E8CFFBFBEBCFF252322FFFFFFFFFF82817DFF000000FF2924
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF231F1AFF231F1AFF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25221DFF24201AFF231F1AFF26221DFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF130E09FF3430
      2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A4A1FF000000FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2925
      20FF15120DFF000000FFBAB8B7FFEFEFEEFFC3C1C1FF080400FF0C0701FF2723
      1DFF000000FF47433FFFDDDDDCFFEDECEBFF817E7BFF000000FF25211BFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF24201BFF231F1AFF231F1AFF2521
      1CFF25211CFF25211CFF2A251FFF16120CFF0C0702FF27231EFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF2A251FFF110D07FF0F0B05FF29251FFF25211CFF2521
      1CFF25211CFF231F1AFF231F1AFF24201BFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9895FF000000FF25211CFF2A2620FF0C08
      02FF0E0A04FF2B2721FF25211CFF25211CFF25211CFF25211CFF25211CFF1A16
      10FF2C2823FFAAA8A7FFD4D3D2FFFFFFFFFFCBCAC9FF73706DFF9B9997FF7E7D
      7BFFA4A2A0FF56534EFFFDFDFDFFFFFFFFFFC0BFBEFF93918FFF110D08FF221E
      19FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF2C2721FF130F09FF000000FF000000FF060100FF040000FF1D19
      13FF2A2621FF25211CFF080605FF878482FF908D8BFF030000FF27231EFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF27231EFF060402FF6D6A67FF9E9C9AFF0E0A06FF24201BFF2925
      20FF201B16FF040000FF060200FF010000FF000000FF130F09FF2C2721FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF979592FF000000FF2A2620FF050000FF4945
      41FF54504DFF1A1612FF25211CFF25211CFF25211CFF25211CFF25211CFF201B
      16FF27231DFF6E6B67FF827E7CFF686664FFC9C8C6FFCDCCCCFFA9A7A5FFBCBC
      BCFFAEADABFFCCCBCAFF8E8C89FF716F6FFF82807CFF5C5955FF1B1611FF2420
      1BFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF15120EFF4D4A46FF817E7BFF959390FFAFAEACFFBBB9B8FF4B47
      42FF100C08FF25211CFF000000FF898683FFFFFFFFFF211D18FF19150FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF231F19FF000000FFEBEBEAFFC6C5C4FF000000FF24201BFF1410
      0BFF3E3A35FFBBBAB8FFB0AFADFF969492FF817E7BFF4D4A46FF15120EFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF979592FF000000FF000000FF272421FFFFFF
      FFFFBCBBBAFF000000FF24201BFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF25211CFF0B0701FF000000FF0F0B06FFA7A5A3FF9A9896FFB2B0AFFF8988
      86FF969492FFB5B4B2FF898684FF000000FF030000FF110D07FF292520FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF000000FFA3A2A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B28
      25FF120E0AFF25211CFF1F1B14FF120D06FFEDECECFF827E7BFF030000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF140F09FF423E38FFF5F5F4FF413E39FF110D08FF25211CFF1713
      0EFF1D1A17FFF8F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFA4A2A0FF000000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF979592FF000000FF211E1CFFDCDBD9FFFFFF
      FFFF92908EFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF100C06FF64615DFF8D8B88FFBFBEBDFF46423FFF0000
      00FFA19F9DFFD5D5D4FF82807CFF0E0902FF24201BFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF010000FF767471FFFFFFFFFFFFFFFFFFF6F6F6FF1D1913FF0000
      00FF2C2822FF25211CFF26221DFF000000FFBBB9B8FFB9B7B6FF000000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF040000FF807C7AFFD8D7D7FF0D0803FF221E18FF25211CFF2B27
      22FF060200FF0B0601FFEBEAEAFFFFFFFFFFFFFFFFFF767471FF010000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF969491FF000000FFA8A5A2FFFFFFFFFFFFFF
      FFFFB1B0AEFF070401FF221E19FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF24201BFF100C06FF35312CFFB0AFADFF979593FFB1AFADFF7877
      77FFA09E9CFFB2B0AEFFA09E9CFF000000FF201B16FF24201BFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF010000FF686562FFFFFFFFFFFFFFFFFFFEFEFDFF64615EFF0000
      00FF000000FF130F0AFF1E1A14FF000000FFBCBBB9FFBFBEBCFF000000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF030000FF84817EFFDAD9D8FF020000FF19150FFF16110CFF0000
      00FF000000FF55524EFFF8F7F6FFFFFFFFFFFFFFFFFF686562FF010000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF979592FF000000FF312E2BFFF0F0EFFFFFFF
      FFFFC6C5C3FF0E0A03FF201C17FF25211CFF25211CFF25211CFF25211CFF2723
      1EFF231F1AFF0D0803FF16120DFF060200FFA19F9DFFD2D1D0FFA1A09DFFB6B5
      B3FFA7A5A3FFD9D8D7FF4D4A45FF0D0A07FF130F0AFF120E09FF27231EFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF040000FF615F5BFFFFFFFFFF73706DFF474643FFF7F7F7FFDBDB
      DAFF75736FFF3E3B36FF120E0AFF2F2A25FFFFFFFFFF726F6BFF040000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF15110BFF34312CFFFFFFFFFF676561FF040000FF383530FF6A67
      64FFD1D0CFFFFDFDFDFF52514FFF686561FFFFFFFFFF64615EFF030000FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2E2A
      26FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF979592FF000000FF000000FF3A3632FFFFFF
      FFFFEEEFEEFF090500FF201C17FF25211CFF25211CFF25211CFF25211CFF1A16
      11FF28241FFFBBBAB8FFCFCECDFFE1E1E2FF9F9D9BFF888684FF9F9D9BFF8482
      81FFB4B3B1FF615E5BFFB7B5B3FFE9E8E6FFCECDCCFF9B9896FF100B06FF221E
      19FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF18140DFF43403CFF989693FF16120DFF000000FF24201BFFA4A2
      A0FFE7E6E6FFE6E5E4FFD6D6D6FFFFFFFFFFA8A7A5FF0D0905FF201B15FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF060200FF82807CFFFFFFFFFFD8D8D9FFE3E2E2FFE8E8
      E7FFB1AFADFF2E2925FF000000FF120E08FF959391FF46433EFF17130DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF15110BFF2F2B
      27FFF2F2F2FFFFFFFFFFFFFFFFFFC5C4C3FF8F8F8FFFFFFFFFFFDAD9D8FF8F8D
      8BFFF4F4F4FFFFFFFFFFFFFFFFFF989693FF000000FF27231DFF000000FF9694
      91FFB6B5B3FF100C07FF231F1AFF25211CFF25211CFF25211CFF25211CFF201B
      16FF2A2621FF43403EFFB9B8B7FFFFFFFFFFD3D1D1FF000000FF25211CFF413D
      38FF000000FF292521FFFFFFFFFFFFFFFFFF8B8987FF3E3B38FF201B16FF231F
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF292520FF1E1A14FF060200FF201C17FF2A2620FF15110CFF0000
      00FF18140EFF413D39FF6E6B67FF6C6966FF090400FF181410FF292520FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF26221EFF231F1AFF000000FF575450FF777471FF45423EFF1E1A
      15FF000000FF120E08FF2A2620FF211D18FF060200FF1D1914FF292520FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF130F09FF312D
      28FFFFFFFFFFFFFFFFFFFFFFFFFFC6C4C3FF000000FF9A9897FF35322DFF2D29
      25FFF8F8F8FFFFFFFFFFFFFFFFFFA9A7A5FF000000FF26221DFF25211CFF0E0A
      04FF120D08FF26221EFF26221DFF25211CFF25211CFF25211CFF25211CFF2B27
      22FF000000FF322F2CFFEEEDEDFF8C8A87FFCECDCCFF3A3632FF0E0A04FF1A16
      10FF000000FF7B7875FFC5C4C3FF918F8DFFDCDCDBFF060300FF0C0905FF2A26
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF24201BFF231F1AFF25211CFF25211CFF25211DFF2622
      1DFF1F1B16FF14100BFF090500FF060100FF221E19FF28241FFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF27231EFF0A0600FF060200FF130F0AFF1D19
      14FF25211CFF26221DFF25211CFF25211CFF231F1AFF24201BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF201C17FF0D0A
      07FFAAA9A7FFFFFFFFFFFFFFFFFFFFFFFFFFBEBCBAFF000000FF2F2B26FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF585551FF090604FF25211CFF26221DFF221E
      19FF211D18FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF100D
      09FF474441FFFFFFFFFF7B7976FF000000FFB5B4B2FF494642FF15110CFF2521
      1CFF090502FF7B7876FF9D9B99FF000000FFCBCBC9FFFEFDFDFF1B1916FF1A16
      12FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1713
      0FFF040000FFAAA8A6FFEAE9E9FFF0F0EFFFFFFFFFFFBFBDBCFFF2F2F2FFFFFF
      FFFFE1E1E1FFEDEDECFF84827EFF000000FF27221CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF221E19FF0905
      01FFCCCBCAFFADABAAFF000000FF1E1914FF231F1AFF2A2621FF24201BFF2521
      1CFF25211CFF292520FF231F1AFF17140FFF060300FFDCDBDBFF989692FF0100
      00FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2925
      20FF17130EFF110D08FF24211BFF211D19FFA9A8A6FFFFFFFFFFE5E5E4FF3E3A
      37FF171310FF2B2723FF130F09FF201C18FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2722
      1DFF2F2B27FF100B06FF201C17FF27231EFF1C1813FF221E19FF26221DFF2521
      1CFF27231EFF1F1B16FF1D1914FF2A2520FF15110DFF18140EFF35312CFF221E
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF27231EFF1F1B16FF18130EFF100C06FF0A0500FF302D28FF18140FFF0904
      00FF1A1610FF16120CFF211D18FF27231EFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF1B1611FF201C17FF27231EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF1D1913FF1C1813FF2823
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF27231EFF221E19FF14100AFF1D1813FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241EFF1B17
      12FF1A1611FF28241EFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2621FF15110DFF1C18
      13FF1E1A15FF130F0BFF2A2621FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF26221DFF27231EFF18140EFF040000FF000000FF0000
      00FF000000FF000000FF080300FF1D1914FF27231EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF221E19FF010000FF1A1611FF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF24201BFF020000FF1813
      0EFF2B2721FF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF2925
      20FF050000FF0F0B05FF2B2721FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF292520FF060100FF0D0803FF2C27
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF29251FFF110D08FF090401FFCFCF
      CEFFD7D6D6FF100C07FF0C0905FF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF292520FF1A1611FF000000FF24201BFF72706DFFADACA9FFB9B8
      B7FFB9B8B6FFA2A09EFF5D5A56FF14100BFF000000FF221E19FF28241FFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1C18
      13FF36322DFF92908DFF1F1B16FF17130FFF1F1A15FF0A0600FF26221DFF2622
      1DFF25211CFF2B2721FF0E0904FF140F0AFF241F1AFF040000FF83817DFF5A57
      52FF120E0AFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF1915
      10FF908E8CFF474440FF050100FF292520FF0A0500FF1E1A14FF28241FFF2521
      1CFF2B2621FF14100BFF0D0803FF29241FFF000000FF6B6965FF7B7875FF0E0C
      09FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF27231EFF1B1712FF000000FFA8A6A4FFFFFF
      FFFFFFFFFFFFB7B5B3FF000000FF17130FFF28241FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF2A2621FF0B0703FF0B0601FF8C8A87FFFFFFFFFFFFFFFFFFEDEDEDFFC9C8
      C7FFCFCECEFFF7F7F6FFFFFFFFFFF3F2F2FF65635FFF000000FF18140FFF2925
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1C18
      13FF15120FFFF1F0F0FFDDDCDCFF000000FF26231EFF63615DFF26221DFF221E
      19FF25211CFF191411FF5C5A56FF484540FF000000FF959390FFFFFFFFFF3A37
      35FF100C09FF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF0501
      00FFB4B2B0FFFFFFFFFF14110EFF010000FF64615EFF3B3733FF1D1914FF2521
      1CFF171410FF504C48FF5C5955FF000000FF4F4D4AFFFFFFFFFF716F6DFF0603
      01FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF241F1AFF050100FF969491FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA3A19EFF000000FF231F19FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2925
      20FF0A0501FF16110DFFD8D7D6FFFFFFFFFF9E9C9BFF34302CFF0C0702FF0000
      00FF000000FF120E08FF484541FFC4C3C2FFFFFFFFFFA3A2A0FF000000FF1814
      0FFF28241FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2824
      1FFF110D09FF100D09FFFFFFFFFF989693FF575551FFDADAD9FF120D07FF211D
      18FF25211CFF000000FFC1C1C0FF92908DFF4C4B4AFFFFFFFFFF42403CFF0000
      00FF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF211D
      18FF000000FFC9C7C5FFEAE9E8FF25211EFFD6D5D4FF484541FF110D07FF1B17
      12FF030000FF8C8986FFBCBAB9FF262422FFFFFFFFFF82817DFF000000FF2924
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF050100FF585551FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF898784FF000000FF24201BFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1511
      0DFF090501FFE4E3E2FFFFFFFFFF3C3836FF000000FF000000FF000000FF0905
      00FF080300FF000000FF000000FF000000FF6A6765FFFFFFFFFFAAA9A7FF0000
      00FF221E18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF2D2923FF000000FF0C0906FFDAD9D8FFE7E6E6FFABA9A8FF000000FF0100
      00FF030000FF000000FF898684FFE0DFDFFFE4E3E2FF43403CFF000000FF2D28
      22FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2925
      20FF15120DFF000000FFBAB8B7FFEFEFEEFFC1C0BEFF28231DFF18140FFF1E1A
      15FF0A0500FF5A5753FFD5D4D3FFEFEEECFF817E7BFF000000FF25211BFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF28241FFF070200FF000000FF3D3935FF6B6864FF575450FFDCDB
      DAFFFFFFFFFF928F8DFF908E8CFF73706CFF000000FF010000FF231F1AFF2824
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221CFF0000
      00FFB3B2B0FFFFFFFFFF35302CFF000000FF000000FF6A6764FFC9C7C6FFB4B3
      B1FFBBBAB8FFBEBCBAFF46423EFF000000FF000000FF726F6AFFFFFFFFFF6A68
      64FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF0E0A07FF4F4C47FFAFAEAFFFEEEDEDFFFFFFFFFF7D7B78FF201E1DFF8A88
      86FF878582FF42403EFF44403CFFFFFFFFFFFFFFFFFFB5B3B2FF73706DFF0806
      04FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1A16
      10FF2C2823FFAAA8A7FFD3D2D1FFFFFFFFFFE7E6E5FF010000FF565350FFD5D5
      D4FF17130EFF28241FFFFFFFFFFFFFFFFFFFC0BFBEFF93918FFF110D08FF221E
      19FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF221E19FF000000FF6A6764FF8F8C89FF110D07FF000000FF000000FFCAC9
      C8FFFFFFFFFF040000FF000000FF000000FF74706CFF868481FF000000FF1713
      0EFF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF0E0A05FF3A36
      31FFFFFFFFFF8C8987FF000000FF010000FFA3A19EFFFFFFFFFF9C9A99FF4D4A
      45FF575451FFBEBDBDFFFFFFFFFF6B6966FF000000FF000000FFD1D0CFFFFEFE
      FEFF0E0A07FF1E1913FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF1A1612FF37342FFF777470FF83817DFF656362FF8D8B88FFD4D3D1FF8D8B
      89FF858483FFC9C7C4FFA5A3A1FF63615FFF84827DFF7D7B78FF494642FF1714
      10FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF201B
      16FF27231DFF6E6B67FF82807CFF878582FF54514DFF000000FF676461FFFFFF
      FFFF211D18FF040000FF706D6AFF868481FF827E7BFF5C5955FF1B1611FF2420
      1BFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF1B17
      12FF000000FF696765FFFFFFFFFFE9E8E8FF000000FF0E0A03FF000000FFCECD
      CCFFFFFFFFFF1C1813FF060200FF000000FFA3A1A0FFFFFFFFFF9A9896FF0000
      00FF0D0904FF2A2621FF25211CFF25211CFF25211CFF25211CFF000000FFA7A6
      A4FFFFFFFFFF140F09FF000000FF858380FFFFFFFFFF2D2B29FF000000FF5D5A
      56FF46423EFF000000FF737270FFFFFFFFFF45423EFF000000FF4A4642FFFFFF
      FFFF625F5BFF060200FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF292520FF1F1B15FF080300FF000000FF030000FFD5D4D3FF3F3D39FF716F
      6BFFACABA9FF12100DFFDDDDDCFF3A3733FF000000FF050000FF18140EFF2A26
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF25211CFF0B0701FF030000FF000000FF0D0903FF100B06FF6C6966FFF7F7
      F6FF36322EFF1B1712FF010000FF000000FF030000FF110D07FF292520FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF1F1B17FF0200
      00FF82807DFFFFFFFFFFFFFFFFFFBEBCBBFF120E09FF24201BFF110D08FFD2D1
      D0FFFFFFFFFF312D28FF1C1813FF060606FF8D8B8AFFFFFFFFFFFFFFFFFFB1AF
      ADFF0C0906FF13100BFF28241FFF25211CFF25211CFF221E19FF080400FFE7E8
      E7FFC9C8C7FF000000FF14100CFFF7F7F7FF7D7B78FF000000FFE7E7E5FFE0DF
      DDFFF7F7F7FFB8B6B4FF000000FFC8C7C6FFC9C8C6FF000000FF100B05FFFAFA
      FAFFA8A6A4FF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF0D0903FF6C6A66FF8B8986FF908F8DFFFFFF
      FFFFFFFFFFFFB9B8B7FF908D8BFF8B8986FF000000FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF17130DFF292521FFE2E1E0FFFDFDFCFFF9F9F8FFFEFE
      FEFFF8F8F8FFFAFAFAFF6B6865FF030100FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF060200FFAAA8
      A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE3E2E1FF1A1713FF1A1610FF25211CFF25211CFF211D18FF100B05FFE7E6
      E5FF959391FF000000FF302C26FFCAC9C8FF120E09FF9E9C98FFE2E1E1FF0000
      00FF211D18FFFFFFFFFF4B4743FF575450FFC1BFBEFF050100FF000000FFD2D1
      D0FFBAB9B7FF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF231F1AFF070300FF54504CFFA9A8A6FF1B1A18FFDAD9
      D7FFFFFFFFFF282828FF999795FF868481FF000000FF221E19FF24201BFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF24201BFF191510FF191510FF5F5C59FF5F5C59FF9D9B99FFFAFA
      FAFF777471FF686663FF34302BFF0D0905FF201C17FF24201BFF26221DFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF070300FFA09E
      9CFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FFC8C8C9FFD1D0CFFFCCCBCAFFF5F5
      F5FFFFFFFFFFD2D2D1FFCECDCCFFCAC9C9FFDCDBDAFFFFFFFFFFFFFFFFFFFFFF
      FFFFD8D7D6FF1A1613FF1B1711FF25211CFF25211CFF211D18FF100B05FFE3E2
      E1FF8E8C8AFF000000FF322E29FFBEBDBBFF0B0701FFB8B6B3FFC2C1C0FF0000
      00FF000000FFEDEDECFF635F5AFF4A4743FFB7B5B3FF070200FF000000FFCAC9
      C7FFBAB8B7FF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF29251FFF1F1A15FF0C0802FF16110CFF171410FFD3D3D1FF777573FF3936
      32FF5B5958FF41403EFFE5E5E5FF3E3B36FF100C07FF0F0B05FF19150FFF2924
      1FFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF231F1AFF0D0803FF19150FFF26221DFF070200FF000000FF5B5854FFFFFF
      FFFF14100AFF000000FF15110CFF2A2520FF130F09FF120E09FF27231EFF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF201C18FF0000
      00FF73706EFFFFFFFFFFFFFFFFFF918E8BFF000000FF060200FF000000FFCBCA
      C9FFFFFFFFFF110D07FF000000FF000000FF565350FFFFFFFFFFFFFFFFFFA3A1
      9FFF070400FF15110DFF28241FFF25211CFF25211CFF211D18FF0B0601FFECEC
      EBFFB9B8B6FF000000FF1D1813FFF3F3F3FF55524EFF252321FFFFFFFFFFB8B6
      B5FFDDDCDCFFE9E8E7FF000000FFA4A2A0FFD2D1D0FF000000FF0B0500FFF2F2
      F2FFB1AFADFF000000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF0E0A07FF4B4844FFC9C8C6FFD4D3D2FFD8D8D8FF8E8C89FFBCBBBAFF9593
      91FF767574FFCDCBC9FF868480FFCDCCCBFFDFDFDDFFCECDCCFF73706DFF0805
      03FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF1A16
      11FF28241FFFBBBAB8FFCECDCCFFEBEAEAFFB5B3B2FF000000FF55524EFFCACA
      C8FF1E1A15FF1C1813FFDCDBDAFFE5E4E4FFCECDCCFF9B9896FF100B06FF221E
      19FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF1E1A
      15FF000000FF5C5956FFFFFFFFFFB2B1AEFF000000FF1D1913FF060100FFD0CF
      CEFFFFFFFFFF24201AFF0E0A03FF000000FF716E6BFFFFFFFFFF918F8CFF0000
      00FF110D08FF2A2620FF25211CFF25211CFF25211CFF24201BFF000000FFBEBD
      BCFFF5F4F4FF070300FF000000FFB3B2B0FFFFFFFFFF000000FF1F1B16FFAEAC
      A9FF979593FF000000FF302E2CFFFFFFFFFF6D6A67FF000000FF332F2AFFFFFF
      FFFF777572FF020000FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF1B1713FF34302CFF4B4948FFE5E5E4FFFFFFFFFF8C8A87FF000000FF5C59
      55FF64615DFF000000FF54504DFFFFFFFFFFFFFFFFFF64625FFF3A3734FF1A17
      13FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF201B
      16FF2A2621FF43403EFFB9B8B7FFFFFFFFFFD8D6D5FF1C1712FF18140EFF1612
      0DFF0B0601FF47443FFFFFFFFFFFFFFFFFFF8B8987FF3E3B38FF201B16FF231F
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2723
      1EFF25211CFF000000FF504D49FF524F4AFF0E0A06FF000000FF000000FFC8C7
      C5FFFFFFFFFF130E09FF000000FF100C07FF3D3934FF595552FF070200FF1B17
      12FF29241FFF25211CFF25211CFF25211CFF25211CFF25211CFF060300FF5552
      4DFFFFFFFFFF64605CFF000000FF110D09FFDDDCDBFFF9F8F7FF4F4C49FF110C
      07FF17120EFF747271FFFFFFFFFFA5A4A2FF000000FF000000FFAEACABFFFFFF
      FFFF201C17FF18130DFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF29241FFF000000FF6C6A67FFD6D5D4FF9E9C9AFFC6C5C4FF040000FF0F0A
      05FF110C07FF000000FFADABAAFFB5B3B2FFAAA9A6FFABA9A7FF000000FF1E1A
      14FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2B27
      22FF000000FF322F2CFFEEEDEDFF8D8B89FFC9C8C7FF383430FF16120CFF1E1A
      15FF070200FF757370FFC2C1C0FF92908EFFDCDCDBFF060300FF0C0905FF2A26
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF29251FFF0A0500FF000000FF534F4AFFA5A3A1FF92908DFFE7E6
      E6FFFFFFFFFFC3C2C1FFCDCCCBFF8F8D8AFF000000FF070200FF231F1AFF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF221E17FF0000
      00FFDCDBDAFFFFFFFFFF0E0A06FF000000FF15100AFFA8A6A4FFE9E9E8FFBBBA
      B8FFC4C3C2FFEAE9E8FF7C7A77FF020000FF000000FF413D38FFFFFFFFFF9A98
      95FF000000FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF2420
      1BFF080401FF848280FFFFFFFFFF272420FF2F2B27FFB2B1AFFF1D1813FF211D
      18FF25211CFF070503FF9E9C9AFF6D6A67FF000000FFFFFFFFFFC5C4C2FF0805
      03FF201C17FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF100D
      09FF474441FFFFFFFFFF7B7976FF000000FFB1B0AEFF46433FFF17120DFF2521
      1CFF0A0602FF777471FF9A9896FF000000FFCBCBC9FFFEFDFDFF1B1916FF1A16
      12FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF090603FF484542FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF63615EFF060301FF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF0A06
      03FF26231FFFFFFFFFFFDAD9D7FF0F0C08FF000000FF000000FF1F1B16FF312D
      28FF2F2B26FF17120DFF000000FF000000FF322E2BFFFFFFFFFFDEDEDCFF0300
      00FF1A1611FF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF1A16
      10FF292622FFEDECEBFF6E6B68FF000000FF221E19FF231F19FF292520FF2420
      1BFF25211CFF27221DFF25211CFF221E19FF0A0703FF312D28FFF1F0F0FF5C5A
      56FF0B0704FF25211CFF25211CFF25211CFF25211CFF25211CFF221E19FF0905
      01FFCCCBCAFFADABAAFF000000FF1E1A14FF211D18FF292520FF24201BFF2521
      1CFF25211CFF27241FFF221E19FF17140FFF060300FFDCDBDBFF989692FF0100
      00FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF29251FFF000000FF5E5B58FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6F6C69FF000000FF28231DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2925
      1FFF000000FF3F3B38FFFFFFFFFFFDFDFCFF595653FF0A0600FF000000FF0000
      00FF000000FF000000FF18140FFF7C7977FFFFFFFFFFE1E0E0FF15110DFF0B07
      03FF292520FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F
      1AFF2E2A25FF27231EFF0B0701FF28241FFF231F1AFF1D1914FF25211CFF2521
      1CFF25211CFF27231DFF1E1A14FF201C17FF2B2620FF0D0903FF1F1B16FF3430
      2BFF221E19FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2722
      1DFF2F2B27FF100B06FF201C17FF27231EFF1D1914FF221E19FF26221DFF2521
      1CFF27231EFF201C17FF1E1A15FF2A2520FF15110DFF18140EFF35312CFF221E
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF26221DFF25211BFF000000FF74726FFFFFFF
      FFFFFFFFFFFF85837EFF000000FF221E19FF26221DFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF28241FFF000000FF2C2823FFCDCCCBFFFFFFFFFFF0F0F0FFB5B4B2FF8F8C
      8AFF949390FFC2C1C0FFFFFFFFFFFFFFFFFFA4A3A1FF100B07FF0A0500FF2A26
      20FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF231F1AFF1A1611FF24201BFF26221DFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF27231EFF1B1711FF1F1B
      16FF27231EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2622
      1DFF1B1611FF201C17FF27231EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF1D1913FF1C1813FF2823
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF1E1A15FF010000FF9F9E
      9CFFA7A5A3FF040000FF1B1712FF27231EFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF26221DFF292520FF0A0600FF060100FF54514DFFB6B4B3FFE8E7E7FFE3E2
      E2FFE6E5E5FFE1E1E0FF9E9D9AFF3C3834FF000000FF15110CFF2A2620FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF28241FFF211D18FF0803
      00FF070200FF1F1B16FF28251FFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF27241FFF221E19FF070300FF010000FF0C0702FF100C
      06FF100B06FF090400FF000000FF0E0A04FF26221DFF27231EFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF26221DFF231F
      1AFF231F1AFF26221DFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF24201BFF211D18FF211D
      18FF211D18FF221E19FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2B2621FF14100AFF0300
      00FF030000FF030000FF030000FF030000FF030000FF030000FF030000FF0300
      00FF030000FF030000FF030000FF030000FF030000FF030000FF030000FF0300
      00FF030000FF1C1813FF2A2621FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF110D
      07FF15110BFF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF25211CFF090400FF0300
      00FF030000FF0E0A04FF292520FF25221DFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF28241FFF231F1AFF010000FF110D07FF2B27
      21FF25211CFF25211CFF25211CFF25211CFF25211CFF1B1814FF423E3AFF5E5B
      58FF605D59FF605D5AFF605D59FF605D59FF605D59FF605D59FF605D59FF605D
      59FF605D59FF605D59FF605D59FF605D59FF605D59FF605D59FF605D5AFF5F5C
      58FF5E5B58FF34302CFF1C1814FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF090500FF3A36
      32FF2E2A26FF0E0A06FF2A2620FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF221E19FF24201BFF54514DFF5E5B
      58FF5E5B58FF4B4844FF1E1A15FF24201BFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF28241FFF1B1712FF050000FF898785FF44403CFF0000
      00FF2A2620FF25211CFF25211CFF25211CFF25211CFF000000FF9E9C99FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF64615EFF000000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF2A2621FF040100FF1C1713FFF2F2
      F2FFD9D8D8FF040000FF100C08FF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF18140FFF221D18FFF3F3F3FFFFFF
      FFFFFFFFFFFFCBCAC9FF080300FF221D18FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241EFF1B1712FF000000FFA6A5A3FFFFFFFFFFDDDCDBFF2522
      1FFF070300FF2A2620FF25211CFF25211CFF25211CFF000000FF9A9895FFFFFF
      FFFFA29F9DFF777572FF888683FF888683FF8B8987FF7B7976FF75726FFFBBBA
      B9FF83817DFF787573FF8C8986FF888683FF888683FF888683FF73716FFFC4C3
      C1FFFFFFFFFF605D5AFF020000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF2A2620FF090601FF0B0704FFD8D6D5FFFFFF
      FFFFFFFFFFFFB7B6B3FF000000FF15110CFF28241FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE4E4E3FFFFFF
      FFFFFFFFFFFFBFBEBCFF090500FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF211D
      17FF231F1AFF1B1712FF000000FFB6B4B3FFE3E3E2FF3A3632FFFFFFFFFFFFFF
      FFFF33302DFF110D0AFF25211CFF25211CFF25211CFF000000FF9C9A99FFFFFF
      FFFF35322DFF000000FF010000FF030000FF000000FF000000FF787673FFE9E9
      E8FF83817DFF000000FF000000FF040000FF010000FF010000FF000000FF7471
      6EFFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF292520FF0F0B07FF040100FFC9C8C6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA4A19FFF000000FF191611FF28241FFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF28241FFF221E18FF040000FF050000FF130E
      09FF0B0701FF000000FFA4A2A1FFE2E1E1FF2B2722FFC6C4C3FFFFFFFFFFFFFF
      FFFF3A3733FF0F0A07FF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF524F4BFF090500FF25211CFF1F1C16FF0C0804FFA1A09DFFFFFFFFFFFFFF
      FFFFFFFFFFFFBDBBB9FF1A1511FF1B1712FF25211BFF25211CFF000000FF8886
      83FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF29241FFF14100BFF000000FFBCBAB8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF959390FF000000FF1D1914FF27231EFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF2A2620FF120E09FF030000FF6F6C69FFD4D3D2FFDEDD
      DCFFD4D4D3FFDDDCDBFFF1F1F0FF56534FFFD2D1D0FFFFFFFFFFFFFFFFFF4B48
      44FF000000FF29251FFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF524F4BFF090500FF25211CFF14100AFF34312CFFE0E0DFFFD7D6D5FFFFFF
      FFFFE1E0E0FFE2E2E1FF65625FFF0A0603FF1F1B15FF24201AFF010000FF8886
      83FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF191510FF000000FFA9A7A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84817EFF000000FF211D18FF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF120E0AFF0B0703FFC5C4C3FFFFFFFFFFB3B2B1FF5754
      51FF5C5956FFBAB9B8FFE3E2E0FFFFFFFFFFFFFFFFFFFFFFFFFF72706CFF0000
      00FF27221DFF25211DFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF524F4BFF0B0600FF130E09FF0E0904FF2C2823FF090500FF2C2824FFFFFF
      FFFF7D7A77FF000000FF2D2A25FF27231EFF140F0AFF0C0802FF000000FF8987
      84FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF1D1914FF120F0CFFBCBBB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949290FF0C0805FF211D
      18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF221D17FF000000FFD0CFCEFFFFFFFFFF22201FFF000000FF403C
      38FF423E3AFF000000FF32302EFFEBEBEAFFFFFFFFFF83817DFF000000FF221D
      19FF26221DFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF56534FFF000000FF3D3935FF65625EFF1B1711FF0C0802FF312D29FFCECD
      CCFF625F5BFF030000FF15110BFF1E1A15FFBFBEBCFF6E6B68FF000000FF8784
      81FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF191510FF34312CFF9A9896FF83817DFF787673FF7C7A77FFECECECFFFFFF
      FFFFFFFFFFFFD7D7D6FF6F6C69FF7D7B78FF888683FF8F8C8AFF25211CFF1E1A
      15FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF020000FF75726EFFFFFFFFFF24201BFF000000FF110D08FFFFFF
      FFFFFFFFFFFF1C1813FF000000FF3A3631FFFFFFFFFF433F3BFF040100FF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF34302BFF000000FFE9E9E8FFB6B4B2FF000000FF140F0AFF2B2621FF1611
      0CFF1C1813FF2B2620FF100B06FF000000FFF2F2F2FFFFFFFFFF43403DFF6865
      62FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF231E19FF020000FF000000FF000000FF000000FFDADAD9FFFFFF
      FFFFFFFFFFFFB0AFADFF000000FF000000FF000000FF070200FF27231DFF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF010000FFE0E0DFFFB9B7B6FF000000FF2F2A24FF34302CFFF8F8
      F8FFFFFFFFFF3C3935FF28241EFF000000FFD0CFCEFFC2C1BFFF000000FF2420
      1BFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF5E5B57FFB7B5B2FFFFFFFFFFC1BFBEFF686868FF504D49FF15120EFF1D19
      14FF1C1813FF15110CFFC0BEBDFFEFEFEFFFF4F4F3FFFFFFFFFFFFFFFFFFB3B2
      B0FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF211D18FF140E08FFDFDFDEFF595652FF2A2722FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF322D29FF6F6D69FFD8D7D6FF090300FF231F
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9A9896FFFFFF
      FFFFCAC9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A09EFF000000FF231F
      1AFF201C17FF17130DFF979593FFBCBBB9FFEFEFEFFFFFFFFFFFBBB9B7FF9796
      93FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF211D17FF140F08FFDFDEDEFF5D5B57FF24211CFFE8E7E7FFE8E7E7FFFEFE
      FDFFFFFFFFFFE9E9E8FFE9E8E8FF292622FF74726FFFD8D7D6FF090400FF231F
      1AFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF4F4C48FFB1AFADFFFFFFFFFFAEACABFF151413FF322E2AFF28241EFF0B07
      01FF050000FF2C2823FF050000FF000000FFF6F6F6FFE1E0DFFF000000FF6F6C
      69FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF231E19FF020000FF000000FF000000FF000000FFDADAD9FFFFFF
      FFFFFFFFFFFFB0AFADFF000000FF000000FF000000FF070200FF27231DFF2723
      1EFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF231F1AFF010000FFE1E0E0FFBBB9B8FF000000FF130E07FF18140FFFFEFE
      FEFFFFFFFFFF221E1AFF0D0701FF000000FFD4D3D2FFC9C9C7FF000000FF2420
      1BFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF393430FF000000FFCBC9C8FFB3B1B0FF000000FF17130EFF16120EFF7370
      6DFF918F8CFF1C1812FF1A1610FF292520FF949290FF37332FFF000000FF8C8A
      87FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF191510FF34312CFF9A9896FF83817DFF787673FF7C7A77FFECECECFFFFFF
      FFFFFFFFFFFFD7D7D6FF6F6C69FF7D7B78FF888683FF8F8C8AFF25211CFF1E1A
      15FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF010000FF777470FFFFFFFFFF231F1AFF000000FF1C1813FFF9F9
      FAFFFFFFFFFF26221DFF000000FF403C38FFFFFFFFFF56534FFF090603FF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF575450FF000000FF1F1A15FF393531FF27231DFF130E09FF000000FFD0CF
      CEFFFFFFFFFF000000FF040000FF2A2621FF0D0802FF15110BFF010000FF8886
      83FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF1D1914FF120F0CFFBCBBB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949290FF0C0805FF211D
      18FF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF211D17FF000000FFD4D3D1FFFDFDFDFF1F1C1BFF000000FF221E
      18FF221E19FF000000FF302F2DFFFFFFFFFFB7B5B3FF000000FF25201AFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF524F4BFF0B0600FF1A1611FF14100AFF15100CFF888683FF9D9C9BFFE1E0
      DFFFF7F7F7FF9C9A97FFA19F9DFF1B1712FF1D1914FF25211CFF010000FF8886
      83FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF28241FFF191510FF000000FFA9A7A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84817EFF000000FF211D18FF2622
      1DFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF28241FFF110E0AFF0C0805FFC9C8C7FFFFFFFFFFAFADACFF5E5B
      57FF605D59FFB8B7B6FFFFFFFFFFB2B0AEFF000000FF181410FF27231EFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9B9997FFFFFF
      FFFF524F4BFF090500FF25211CFF24201BFF0E0904FF595653FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9E9C9AFF090401FF211D18FF25211CFF010000FF8886
      83FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF29241FFF14100BFF000000FFBCBAB8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF959390FF000000FF1D1914FF27231EFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF2A2621FF110D08FF050000FF73706DFFD6D5D4FFDBDA
      D9FFDDDCDCFFD1D0CFFF65625FFF000000FF17130EFF292520FF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF9C9A98FFFFFF
      FFFF3B3833FF000000FF090500FF090500FF0D0802FF000000FF16110CFFDFDF
      DEFFFFFFFFFF797774FF000000FF040000FF0A0600FF090500FF000000FF7875
      72FFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE0E0DFFFFFFF
      FFFFFFFFFFFFBCBBB9FF0A0600FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF292520FF0F0B07FF040100FFC9C8C6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA4A19FFF000000FF191611FF28241FFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF28241FFF211D18FF030000FF060100FF130E
      09FF120E09FF040000FF050100FF24201BFF28241EFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FF999795FFFFFF
      FFFF797673FF3B3833FF524F4BFF524F4BFF524F4BFF55514DFF2C2924FF8987
      84FFB2B1AFFF37332FFF464340FF55514DFF524F4BFF524F4BFF353331FFA19F
      9DFFFFFFFFFF605D59FF030000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF191510FF221D18FFE4E4E3FFFFFF
      FFFFFFFFFFFFBFBEBCFF090500FF221E19FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF2A2620FF090601FF0B0704FFD8D6D5FFFFFF
      FFFFFFFFFFFFB7B6B3FF000000FF15110CFF28241FFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF231F1AFF211D
      18FF211D18FF231F1AFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF000000FFA7A5A2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF696663FF000000FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF18140FFF221D18FFF3F3F3FFFFFF
      FFFFFFFFFFFFCBCAC9FF080300FF221D18FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF2A2621FF040100FF1C1713FFF2F2
      F2FFD9D8D8FF040000FF100C08FF292520FF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF12100EFF5B5854FF9391
      8EFF999795FF9C9B98FF9B9997FF9B9997FF9B9997FF9B9997FF9C9A97FF9A99
      96FF9A9896FF9B9A97FF9B9997FF9B9997FF9B9997FF9B9997FF9D9B99FF9795
      93FF93918EFF413E3AFF14100EFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF221E19FF24201BFF54514DFF5E5B
      58FF5E5B58FF4B4844FF1E1A15FF24201BFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF090500FF3A36
      32FF2E2A26FF0E0A06FF2A2620FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF2C2721FF110C07FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1A1611FF2B2721FF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF27231EFF25211CFF090400FF0300
      00FF030000FF0E0A04FF292520FF25221DFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2A2620FF110D
      07FF15110BFF2A2620FF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF25211CFF2521
      1CFF25211CFF25211CFF25211CFF25211CFF424D3E000000000000003E000000
      2800000060000000F00000000100010000000000400B00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Height = 24
    Width = 24
    Left = 848
    Top = 128
    Bitmap = {
      494C010109001800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027231E0024201B00201B16001F1B
      1600201C1600201C1600201C1600201C1600201B16001F1B16001F1B16001F1B
      16001F1B16001F1B16001F1B16001F1B16001F1B16001F1B15001F1B16001F1B
      150025211B0027231E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292520001D19140017130E001A15
      100019150F0019150F0019150F00191510001A1510001A1610001A1610001A16
      10001A1510001A1510001A1610001A1611001B1711001B1712001B1611001A16
      11001915100027231E0027231E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000100C09005F5C5800C3C2C100BBBA
      B900B8B6B400B7B5B300B6B4B200B4B3B100B5B3B200B6B5B400B6B5B400B6B5
      B400B6B4B300B5B4B300B9B7B500BBBAB800BDBBB900BFBEBD00BDBCBB00C3C2
      C100504C48000C08020027231E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000200000086848100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDDDB00201C1600130E080028241F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000201B1500312E2900716E6B008684
      81008886830091908D00AEACAA00CECDCB00F8F8F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AEADAB000B0701001E1A15000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292520001F1B1500100B0600100B
      06000F0B06000F0B050019151000231F1A00504D4900DDDDDC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAE900E0DFDF00F7F8F700FFFF
      FF00FFFFFF00FFFFFF009D9B9A00110D07000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025211C002420
      1B0024201B00231F1A00201C170018140F000F0B0500302C270059555200B3B2
      B000FFFFFF00FFFFFF00F4F3F300F4F3F30066635F00201B1600585551007472
      6F008D8B8800ACAAA8009E9C9A0024201B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000027231E000000000019150F00050000001C18
      1200BEBEBC00FFFFFF00A09D9B003834300028231F00120D080014100A00120E
      0800100C06000E0A040018130E0028241F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001914
      0F0019150F00787572007E7B7800070200001D19140028241F0025211C002420
      1B00231F1A00221E1900231F1A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002723
      1E000F0A050047433F0074716F00201C1700231F1A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000221E190037332E003E3A3500231F1A0025211C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028241F00201C16001C18130027231E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000025211C0026211C000000000029252000191510001B1611002925
      2000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028241F00201B16001611
      0C0017120D00191510000000000027231E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292520001A16110015110B00292520001D1813004E4A46003F3C37001E19
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000025211C00221E190025211C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002723
      1E001C18130018140E0024201B0027231E0000000000231F1A002F2B27003B38
      330036332E00312D28000000000025211C0027231E00000000001A1611001914
      0F000000000027231E0000000000000000000000000000000000000000000000
      000016110C006A6763005A5753000B070100120E08007E7B78008E8C89000904
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028241F001F1B16001814
      0E0018140E0018140E0018140E0018140E0018140E0018140E0018140E001814
      0E0018140E0018140E0018140E0018140E0018140E0018140E0018140E001814
      0E001F1B160028241F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002723
      1E0027231E0018130E00120E08001B17120028241F0000000000000000000000
      000000000000000000000000000000000000000000000000000025211C002521
      1C0044413C00332F2A0016120D0025211C0027231E0005000000827F7C00FFFF
      FF00F7F7F700F4F3F3002F2B260019140F0028241F0018130E00292520004743
      3F002C282300231F1A0000000000000000000000000027231E00221E19001F1B
      160017120D004F4C4900CCCBCA002E2A260009040000423E3900A7A5A4002521
      1C00201C17000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024201C00292520003532
      2D00413D39003F3B37003F3B37003F3B37003F3B37003F3B37003F3B37003F3B
      37003F3B37003F3B37003F3B37003F3B37003F3B37003F3B3700413D39003532
      2D002925200024201C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002824
      1F000F0A05004B484300A5A3A1003F3C3700130F090028241F00000000000000
      000000000000000000000000000000000000000000000000000024201B00130F
      0900817F7C00FFFFFF00625F5B000300000028241F000E09050059565300FFFF
      FF00FFFFFF00D1D0CF001B171200201B16000F0B0600302C2800F2F2F200BFBE
      BD0019140F00201C170000000000000000000000000024201B00302D28001C18
      1200110D0800030000008B898600BFBEBD00040000000B080500A6A4A2006461
      5E00110D08000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030201008F8D8A00F1F0
      F000E8E7E700EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9
      E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900E8E7E700F1F0
      F0008F8D8A000302010000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025211C001410
      0B0046423E00ECECEB00FFFFFF00C4C2C100100C06001F1B1600000000000000
      000000000000000000000000000000000000000000000000000027231E001F1B
      16000C080300C6C4C300FFFFFF002D2A25000C08020029262000090500007F7D
      7A00C2C1BF0017130E001C1813001B17120009050000D3D2D100FFFFFF002E2A
      2500140F0A0027231E00000000000000000000000000130E090058555100D7D6
      D5004E4B47000000000006010000D6D5D30086848100000000008A8784009997
      94000602000027231E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C3C100BDBC
      BA00000000001915100019151000191510001915100019151000191510001915
      100019151000191510001915100019151000191510001915100000000000BDBC
      BA00C4C3C1000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027231E0027231E00110C07000000
      00006C696600FFFFFF00FFFFFF00FFFFFF00615E5B000904000027231E000000
      0000000000000000000000000000000000000000000000000000000000002824
      1F0015110B0016120C00EEEEEE00DFDEDD00100C06000A050000000000002824
      1F00605D59000000000007030000000000009F9D9B00FFFFFF004E4B47000803
      000028241F0000000000000000000000000000000000211D18001D1914008C89
      8800F9F9F900959391000000000036343000FCFCFC002D2A250038353100BEBD
      BB00221E1900211C170025211C0018140E00231F1A0027231E00000000000000
      0000000000000000000000000000000000000000000000000000BBBAB700FCFC
      FC0095959600AAA9A700AAA9A700A7A6A400A8A7A500AAA9A700AAA8A700AAA9
      A700A8A7A500A7A6A400AAA9A700AAA9A700AAA9A700A9A8A60092929300FCFC
      FB00BBBAB8000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024201B001D1914005E5B57007977
      74000E0A0400B7B6B400FFFFFF00FFFFFF00C9C7C700130E09001F1B15000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282420000C0802002D292300F5F4F400A7A6A3002E2A250084828000C6C5
      C400DAD9D800AEACA900696764007B787500FFFFFF0063605C00000000002723
      1E0027231E000000000000000000000000000000000027231E00201C17000000
      0000403D3800D4D3D200D5D5D3001715120088868300CFCECC0000000000BEBC
      BB0064615D000F0B070014100A00342F2B0026231E0000000000000000000000
      0000000000000000000000000000000000000000000014110F0056534F009F9D
      9B00BEBCBA00B9B8B600B4B2B100A6A5A300B5B4B200BAB8B700B9B7B600B8B6
      B500A8A6A400B0AEAC00BBBAB800B8B7B500BAB9B700ACABA900B0AEAB00A19F
      9D0056534F0014110F0000000000000000000000000000000000000000000000
      00000000000000000000282520001B171200000000001D191300FFFFFF00FFFF
      FF005F5C58002E292500FFFFFF00FFFFFF00FFFFFF00504D4900100C06000000
      0000000000000000000000000000000000000000000000000000000000002723
      1F0000000000050000000B070100B8B8B600FFFFFF00FEFEFE00D1D0CF00D1D0
      CE00D5D4D300ACACAB00EAEAEA00FFFFFF00FFFFFF0053504D00030000001410
      0A002A26210000000000000000000000000025211C002C2823002A2621001C17
      1200030000000400000093928F00E2E1E0006A686400D4D4D300524F4A007A77
      7400BCBBB90000000000534F4C00E3E1E100524F4B00130F0A00000000000000
      000000000000000000000000000000000000000000002C282200130F0A000100
      0000020000000000000000000000504D49002A26210000000000000000000000
      00003C38340045423E00000000000100000000000000130F0900595652000B06
      00000D0903002C28220000000000000000000000000000000000000000000000
      0000000000002925200014100A002925210063615D0024201C0085838100FFFF
      FF00F0F0EF001D181300BBBAB800FFFFFF00FFFFFF009A989500120D0700221E
      1900000000000000000000000000000000000000000000000000000000002420
      1A0018140E006A686400EFEEEE00E8E7E700C5C4C300FFFFFF00322E2900201C
      170062605C0000000000DCDBDA00D1D0CF00AFAEAC00FFFFFF00C4C3C1002F2B
      27001A161100000000000000000000000000241F1A002A262100413E39005451
      4C004D4945003B3733000000000039353100A5A3A200D2D1D000C8C7C600B2B0
      AF008D8B88002E2B2700EEEEED00FFFFFF007774710006010000000000000000
      0000000000000000000000000000000000000000000000000000000000002824
      1F001A161000080400008C898700FFFFFF005B5754000C070200040000004E4B
      4700F8F8F80098959300090400000B070100201C1700D6D5D400DEDDDD00211D
      18001D1914000000000000000000000000000000000000000000000000000000
      0000000000001A1610002C282300C8C7C600FFFFFF00D6D5D40035322C00D6D5
      D400FFFFFF006F6C680063615D00FFFFFF00FFFFFF00D3D2D100221E18001D19
      1300000000000000000000000000000000000000000000000000000000001814
      0E0033302B00FFFFFF008C8A870078757200302C2800C8C7C500DBDBDA004542
      3E005F5C580096939000FFFFFF000000000053504C0067646000F5F5F500B0AF
      AD000000000000000000000000000000000027231E00211D1800292520003A37
      3200504C48006764610073716E0056534F004845400092908E00FFFFFF009492
      900036322E00ECECEB00FFFFFF00FFFFFF00716E6B0009040000000000000000
      000000000000000000000000000000000000000000000000000028241F001612
      0D000D0803008F8D8B00FFFFFF00FFFFFF0036322E00000000005B575400F4F4
      F400FFFFFF006F6C6900000000002F2A2500D1D0CF00FFFFFF00B8B6B500110D
      0700211C17000000000000000000000000000000000000000000000000000000
      000000000000020000008B898600FFFFFF00FFFFFF00FFFFFF0093918E007673
      7000FFFFFF00B9B8B6004F4C4700FFFFFF00FFFFFF00EDECEC002C2823001915
      1000000000000000000000000000000000000000000000000000000000001713
      0D0045413E00EBEAEA00000000005C5955000E090400504D4900F5F4F400C6C5
      C400C4C2C100DAD9D800ABAAA8000000000066636000000000008E8C8900C7C7
      C500000000000000000000000000000000000000000027231E0024201B00201C
      170019140F0017130E003C3834005B5854006F6D69008F8D8A006B6965002E2A
      2500E6E5E400FFFFFF00FFFFFF00FFFFFF006C6A66000A060000000000000000
      0000000000000000000000000000000000000000000027231E001E1914001C17
      1200A09F9C00FFFFFF00FFFFFF00F5F6F5004744400059575400FFFFFF00FFFF
      FF00FFFFFF007C7A77002C292700DEDDDB00FFFFFF00FFFFFF00C3C2C0002D29
      24001A1612000000000000000000000000000000000000000000000000000000
      0000000000000C070300625F5B00FFFFFF00FFFFFF00FFFFFF005D5B57007B79
      7600FFFFFF00BDBCBB004F4C4700FFFFFF00FFFFFF00EDEDED002C2823001915
      1000000000000000000000000000000000000000000000000000000000001814
      0E0036322D00F0F0F000B8B6B500D4D3D200C0BFBD00C6C5C400DFDEDE00FFFF
      FF00FFFFFF00E2E2E100C8C7C600C0BFBD00D4D3D200BBBAB800E3E2E1009F9E
      9B00010000000000000000000000000000000000000000000000000000000000
      000027231E00000000001E1A150017130D0014100A00100C060023201A00EAE9
      E900FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5955000703000027231E000000
      00000000000000000000000000000000000000000000211C170014100B00B4B2
      B100FFFFFF00FFFFFF00FFFFFF00FCFCFB00EFEFEE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00908E
      8B00020000000000000000000000000000000000000000000000000000000000
      00000000000025211B0016120C006B686400BCBBBA00696663001B171200E7E7
      E600FFFFFF00706D6A0069676300FFFFFF00FFFFFF00D7D7D600231E19001C18
      1300000000000000000000000000000000000000000000000000000000001814
      0E0037332E00EFEEEE00AEACAB00D4D2D100C2C1BF00C7C6C400CAC9C700FFFF
      FF00FFFFFF00CAC9C800C0BEBD00C3C2C100D5D4D300B7B6B400DDDCDC00A19F
      9C00010000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002925200016120D0001000000C4C3C200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008684810000000000231F1A002723
      1E000000000000000000000000000000000000000000231F1A0017130D007A77
      7400FCFCFC00FFFFFF00FFFFFF00EBEAEA0072706C00D3D3D100FFFFFF00FFFF
      FF00FFFFFF00878582009E9B9800FFFFFF00FFFFFF00FFFFFF00C7C6C500312D
      2800191611000000000000000000000000000000000000000000000000000000
      00000000000028241F00231F1A00100B06000A060000120D0800B9B8B600FFFF
      FF00E3E2E2001D191300CFCECD00FFFFFF00FFFFFF0098969400110C0700231F
      1900000000000000000000000000000000000000000000000000000000001612
      0C0044413D00FFFFFF00050000004E4B47000A0600004A474200DEDEDD00E0E0
      DF00D5D4D300C7C7C50097959300000000005A57540000000000A9A7A500CECE
      CD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E1A15001E1A1600B6B4B200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFC006865630000000000231F
      1A0027231E000000000000000000000000000000000027231E0024201B000803
      00004E4B4600E6E6E500FFFFFF00F8F7F8000000000014100D00BEBDBC00FFFF
      FF00FFFFFF00625F5B00000000008C8A8800FFFFFF00FFFFFF00AFADAC00110D
      0700211D18000000000000000000000000000000000000000000000000000000
      0000000000000000000027231E0024201B000601000067656000FFFFFF00FFFF
      FF00413D3800625F5C00FFFFFF00FFFFFF00FFFFFF0045413C00110E08000000
      0000000000000000000000000000000000000000000000000000000000001D19
      1300211E1800CDCCCB00EFEFEE00C7C7C600322F2900B5B4B200E4E3E3004D49
      45005855510099989500FFFFFF001A150F006F6C6900D0CFCE00FFFFFF007471
      6D00090604000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0B05005B575300FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00656360000000
      000025211C0027231E000000000000000000000000000000000027231E002420
      1B000702000034302B00DCDBDB00FFFFFF004F4B47000000000014100A00A4A2
      9F00FFFFFF008B88860000000000060200006F6C6900FFFFFF00D4D4D3001C17
      12001E1A14000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000211C1700221E19009A9895007F7D
      7A003E3A3600F5F5F400FFFFFF00FFFFFF00B4B2B0000B070100221D18000000
      0000000000000000000000000000000000000000000000000000000000002824
      1E001B17110018140E008B898600DCDCDA00E5E4E400FFFFFF00A5A3A1005C59
      5500868482003D3A3500FFFFFF00D7D6D500D4D4D300E2E2E1005A5753000D08
      020027221C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000025211D0024201B0045413D005E5B57004E4B
      4700423F3A00292520003D393500E7E7E600FFFFFF00FFFFFF00FFFFFF00605D
      5A000D0803000000000000000000000000000000000000000000000000002723
      1E00000000000A05000033302B00BCBBB9005C58550016120C0015100B00110D
      0700A7A5A3008A888500151009001D1914000200000077757200B5B4B2002E29
      24001D1914000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028241F00211D1800090500000000
      0000CAC9C800FFFFFF00FFFFFF00FFFFFF00433F3B000E09040027231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282420001E1A140000000000504C4800FFFFFF00CBCBC900C7C6C500F2F2
      F200F0F0EF00DCDCDB00CCCBCA00FFFFFF00C3C1C00000000000050000000000
      000028241F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000027231E0024201B0014100A000D090300110D
      0700140F0A0018140E0001000000302C2700E6E6E500FFFFFF00FFFFFF00F4F4
      F4001C1813001C17120000000000000000000000000000000000000000000000
      00000000000027231E0016120D00231F1A0036322D0025211C0027231E001C18
      13001B17110036322D002A26220000000000231E190014100B00302C2800322E
      2A00231F1A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027231E00211D18000B06
      01007B787500FFFFFF00FFFFFF008C8A88000400000024201B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028241F00110C0600231E1900F0EFEF00D1D0D0000F0B06001D1914003A37
      320039353100393531000F0A050084827F00FFFFFF0059565200040000002723
      1E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028241F0005000000312D2900DFDEDE00FFFFFF00FFFF
      FF0066645F000601000027231E00000000000000000000000000000000000000
      00000000000000000000000000001D191400211D180027231E00000000002723
      1E00201B16001F1A150027231E000000000027231E00231F1A001D1913002521
      1C0027231E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000027231E00201C
      170016120D00A09F9D00B1AFAD001D1913001A16110027231E00000000000000
      0000000000000000000000000000000000000000000000000000000000002824
      1F0019150F000D090300D3D2D200FEFFFF00221E18000E0904001E1A15001814
      0F0018140E001A15100016120D0001000000B6B4B300FFFFFF0037342F000D09
      030028241F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000028241F000A0600002F2B270087858200E5E4
      E300CFCDCC0015110D00201B1600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002824
      1F00201C170014100B0015110C001E1A15002825200000000000000000000000
      000000000000000000000000000000000000000000000000000000000000211D
      1800100C0600ADABA900FFFFFF004A4742000500000028241F00000000000000
      0000000000000000000028241F0015100B00130F0900EBEAE900F2F2F200221F
      190018140F0027231E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002824200017120D000A050000302C
      280074706E0037332E001F1B1600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027231E00221D1800211C170027231E000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000120D
      08005D5A5700FFFFFF007F7D7A000400000025211C0000000000000000000000
      000000000000000000000000000028241F000C0801003D393500F2F2F2009897
      9400120D0800231F1A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025211C001713
      0E0015110B0027231E0026231E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000231F
      1A0036332E00332F2A0015110B00231F1A0027231E0000000000000000000000
      00000000000000000000000000000000000028241F0016110C0028241F003E3A
      360028241F0025211B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024201B0025211C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002724
      1F00201C170019140F00231F1A0027231E000000000000000000000000000000
      00000000000000000000000000000000000027231E00000000001B1611001C18
      130027231E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024201C002D29
      25002D29250024201C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000025211C0028241F001D19130019151000191510001B1712002925
      2000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020100B1B0
      AD00B1B0AD000302010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292520001511
      0B00120D080015110C00120D08003D3A36002C29230046423E003F3C38001E19
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000027231E001F1B1600100C070000000000B5B4
      B200B5B4B200000000000A06000017130E0025211C0027231E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025211C002521
      1C0025211C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025211C001F1B16005350
      4C004844400062605C003D3934007E7C7800F1F2F100817F7C00817E7C000904
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028241F0024201A000A05000019150F005E5B58008C8C8C00E7E7
      E600E9E9E8009F9E9F00807E7B003C3834000601000017130D0028241F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028241F0027231E000C0702000500
      00000200000015100B002C282200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000231F1A0006020000C4C2
      C100FFFFFF00918F8C00AFAEAB0039353000FFFFFF00A8A6A400817F7C000000
      0000201C17000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027231E00221D1800231F
      1A00292520001E19140006010000625F5C00E3E3E200FAF9F900CAC9C700EBEB
      EA00E4E3E300BDBCB900E4E3E200FCFCFC00ACAAA900231F1A000A0601002925
      2000231F1A00221D180027231E00000000000000000000000000000000000000
      000000000000000000000000000000000000201C170026231E008C8A87009B9A
      9700969492005A57530013100E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024201B00211D1800322E
      2900DADAD900ECEBEB00ADABAA0085848100817F7C00DFDFDE0092908E005D5A
      5700110D08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028241F00211D18000D08
      030014100B000702000094929000FFFFFF00AAA9A7003935300000000000ADAC
      AA00AAA8A600000000001F1B150065625D00EBEBEB00EFEFEF0037332F000000
      00000D090300211D180028241F00000000000000000000000000000000000000
      0000000000000000000000000000000000001A1611001E1A1500FFFFFF00FFFF
      FF00FFFFFF009E9C9A0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000130E090058555100B9B8
      B700504D4900C8C7C600DFDEDE00D1D0CF0077737000C2C1BF00D2D1D0007B78
      75000803000027231E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025211C000C08030098979400BDBC
      BA000E0A07007D7A7600FFFFFF005F5C5A0000000000120D080000000000B8B7
      B500B9B8B600000000001D1914000400000015100B00C5C4C300E7E6E500312D
      2900B3B1AF00999795000C08030025211C000000000000000000000000000000
      00000000000000000000000000000000000025201B00130F0A006A676400FAFA
      FA00C2C1C0002B2823001C171300000000000000000000000000000000000000
      00000000000000000000000000000000000027231E00231F1A0009050000726F
      6D00D3D2D000918F8D00BCBAB900ECEDEC00CAC9C800A3A19F00E5E4E3009F9D
      9B00201B1700201C170000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027241F001D19140018140E001814
      0E0018140E0018140E0018140E0018140E0018140E0018140E0018140E001814
      0E0018140E0018140E0018140E0018140E0018140E0018140E0018140E001814
      0E0018140E0018140E0018140E00211D180000000000140F0B0053504C00D8D7
      D600D3D1D000FFFFFF006866630000000000231E19002925200001000000B8B7
      B500B8B7B5000100000028241F0027231E00000000000A060000F5F6F500FFFF
      FE00CECDCC0054514D00140F0B00000000000000000000000000000000000000
      00000000000000000000000000000000000027231E001F1B1600000000008886
      83003B3833000000000024201B00000000000000000000000000000000000000
      000000000000000000000000000000000000201C1700241F1A00AAA8A6006865
      6200403E3C009D9B9800BFBEBD00D5D4D300FFFFFF00D0CFCD00BFBEBD00E2E1
      E100514D4900100C070000000000000000000000000000000000000000000000
      000000000000000000000000000000000000221E19003C383400484541004845
      4100484541004845410048454100484541004845410048454100484541004845
      4100484541004845410048454100484541004845410048454100484541004845
      4100484541004845410048454100322E2900000000002A2721000D0903000000
      0000C5C4C300FFFFFF00C9C7C500514F4A0000000000110D070001000000B9B8
      B600B9B8B60001000000110D07000000000055524E00CFCECD00E6E5E500F6F6
      F60028241F00020000002A272100000000000000000000000000000000000000
      00000000000027241F0024201B00120E080003000000191510001F1A15008E8C
      89006663600028251F00140F0A000400000017130E000000000027231E000000
      000000000000000000000000000000000000201B1600201C1700A09E9C00E9E9
      E800C2C2C1007F7D790093918F00C2C0BE00FDFCFD00FFFFFF00E2E1E000FFFF
      FF009D9B9900000000001D19140028241F000000000000000000000000000000
      00000000000000000000000000000000000018130E0079777400AAA8A600AAA8
      A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8
      A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8A600AAA8
      A600AAA8A600AAA8A600AAA8A60053504C000000000000000000201B16001712
      0D00D1D0CF008886830081807E00FFFFFF00C4C3C10036332E0000000000B3B2
      AF00B3B2AF000000000036332E00C4C3C100FFFFFF009795930027231E00DFDF
      DE007B7976000A06010000000000000000000000000000000000000000002723
      1E00000000000C0802000803000047443F009F9C9B00CECDCC00EDECEA00F2F2
      F200EFEFEE00E8E8E700D0CFCD0097959300312D290003000000191510002825
      20000000000000000000000000000000000025211C0028241F0025211C00524F
      4B0096949200D7D7D600BAB9B800B2B1AF00E5E4E400FFFFFF00FFFFFF00FFFF
      FF008D8B890019151000201C1700201C170027231E0000000000000000000000
      0000000000000000000000000000000000001B1611006B68650093918E009391
      8E0093918E0093918E0093918E0093918E0093918E0093918E0093918E009391
      8E0093918E0093918E0093918E0093918E0093918E0093918E0093918E009391
      8E0093918E0093918E0093918E004B484400000000000000000019150F003834
      3000F0EFEF004E4B4600000000003C393400C9C8C700FDFDFD00716F6D00ADAC
      AA00ADACAA00716F6D00FDFDFD00C9C8C7003C3934000000000000000000CACA
      C800ACAAA8000200000000000000000000000000000000000000000000002723
      1D000E09030047443F00C5C4C200FDFDFD00F3F3F300C9C8C700413F3E009392
      8F005F5C5800706D6A00DBDADA00D8D8D700FDFDFD009F9D9B001B1712001A16
      100027231E0000000000000000000000000027231E00221E190029242000312D
      2800322E2A004C494500908E8C00D0CFCE00E8E8E700FFFFFF00FFFFFF007F7D
      7A00302C2700DDDDDC009E9C9A000F0B0500231F1A0000000000000000000000
      0000000000000000000000000000000000001C17130065635F00898784008987
      8400898784008987840089878400898784008987840089878400898784008987
      8400898784008987840089878400898784008987840089878400898784008987
      840089878400898784008987840048444000000000000000000017130E00403E
      3900ECECEB003C3935001A150F00100C060001000000423E3900CBCAC900FDFD
      FD00FDFDFD00CBCAC900423E390001000000100C060027231E0000000000B7B6
      B400BCBBB9000000000000000000000000000000000000000000000000000A08
      05006D6A6700FFFFFF00E5E4E4008886830035312C0073706D0000000000817F
      7C003C38340037342F0064615D00211D1800BCBBB900E7E7E700D3D3D200211D
      19001D1913000000000000000000000000000000000027231E0024201B00201C
      17001A16100015100B002B2722003C393400716E6B00C7C6C5007C7A77001B16
      1100DDDCDB00FFFFFF00F7F7F70016120C0017130E0027231E00000000000000
      000000000000000000000000000000000000120D0800918F8C00D2D1D000B5B3
      B200ADACAA00AFAEAC00AFAEAC00AFAEAC00AFAEAC00AFADAB00AEADAB00AFAD
      AB00AFADAB00AFADAB00AEADAB00AEACAA00ADACAA00ADACAA00ADACAA00B8B7
      B500D3D2D100D3D3D200D2D1D000615D5A00000000000000000018140F003E3A
      3600EDECEC0046423E0018130D0016120C00000000002F2B2700CBC9C800FFFF
      FF00FFFFFF00CBC9C8002F2B27000000000016120C0027231E0004010000BEBD
      BB00B6B5B3000100000000000000000000000000000000000000000000000000
      0000C9C9C700B8B6B40018140F00615F5B002C272300817F7C0000000000807E
      7B003C3935003D3A3500716E6B00302C27005C59550014100B00FFFFFF004440
      3C0016120C000000000000000000000000000000000000000000000000000000
      000027231E00000000001F1B160017130D00090400000601000037332E00F4F4
      F300FFFFFF00FFFFFF00FDFDFD006D6A670000000000231F1A0027231E000000
      000000000000000000000000000000000000221E19002E2A25003F3B3700A2A1
      9F00B8B7B500AFAEAC00ACABA900A9A7A500A6A4A200A4A2A000A4A2A000A3A2
      9F00A3A19F00A2A19F00A5A3A100A7A5A300A9A8A500A8A6A500ACABA9007E7C
      79001F1B16003C393400403C38002E2B260000000000000000001B1711002E2A
      2500EEEDED0064625E00000000002F2C2600B8B7B500FFFFFF0085838100B2B0
      AE00B2B0AE0085838100FFFFFF00B8B7B5002F2B26000000000009040000D7D7
      D5009B9997000501000000000000000000000000000000000000000000000100
      0000B6B5B300ADABA900423E39008B88850055514E00969491001D1D1D009694
      91005D5A57005D5A57008986840055524E008A87840037332F00E9E9E9003E3A
      360018140E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000500000063605D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006664600000000000231F1A002723
      1E000000000000000000000000000000000028241F00140F0A0015100B00C9C8
      C700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00585551000000000018140E00221E19000000000000000000231F1A000B06
      0100BEBCBB00ADACAA0069676800F8F8F800CECDCB0044403D0000000000B0AF
      AD00B0AFAD000000000044403D00CDCCCB00F8F7F7007A7774003F3C3700F0F0
      F0005B575300110D070000000000000000000000000000000000000000000100
      000097959200F6F6F500EAEAE900F2F2F100ECECEB00F3F3F300E6E6E600F3F3
      F300EDEDEC00EDEDEC00F2F2F100ECECEB00F2F2F100E9E9E800F3F3F300322E
      2A0018140E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026231D0019151000403D
      380056524E00E6E6E500FFFFFF00FFFFFF00FFFFFF006563600000000000231F
      1A0027231E000000000000000000000000000000000027231E00231F1A00211E
      18002E2B2600302C27003F3C370059565200605E5E00BEBDBC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7D7A00110C080024201A00000000002A262100110C07000000
      00009D9B9900FFFFFF00DAD8D70059555200060200000D08030000000000B9B8
      B600B9B8B600000000000D0803000501000064615E00CECDCC00F8F8F800E2E2
      E100040000000A0500002A262100000000000000000000000000000000000000
      0000BDBCBA00A7A6A300322E29008A88850056524E00969491001D1D1D009694
      91005D5A57005D5A5700898684005754500084817E0027231E00EDECEC00413D
      390017130D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027231E0025211C00130E
      090000000000302C2700E7E7E600FFFFFF00FFFFFF00FFFFFF00656360000000
      000025211C0027231E000000000000000000000000000000000027231E001E1A
      150019150F0019140F0015110B000F0A05000000000019140F00494641007674
      7100FFFFFF00FFFFFF00EAE9E900C1C0C00049454200413D380063605D007875
      7300999795008D8A8800201C1700221E180025211C0018140F0047433F00CFCE
      CC00D6D5D400E1E0E000BDBCBB00000000000A05000028241F0001000000B8B7
      B500B8B7B50001000000292520001B171200000000005A575300FFFFFF00E8E7
      E600C8C8C7004844400018140F0025211C000000000000000000000000000000
      0000B0AEAC00F3F2F20066635F00524F4C0017120D007C7A770000000000817E
      7B003C3834003B3733006966620017120E006C68650066635F00FFFFFF003632
      2E0018140E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028241F0005000000302C2700E7E7E600FFFFFF00FFFFFF00FFFFFF00605D
      5A000D0803000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029251F001F1B16000D0903000000
      00004E4B4600B1B0AE00817E7C000200000017130D00110D07000C0702000702
      0000010000000C08030029251F0027231E00231F1A000F0B0600ABA9A800D1D0
      CF001D19140027221D00F3F3F300DADADA0034312C000000000000000000B3B2
      AF00B4B3B10000000000030000000D08020077747200FFFFFF008B8986001E1C
      1A00D0CFCD00ACAAA8000F0B0600231F1A000000000000000000000000001B17
      12002D292500B7B5B300FFFFFF00DFDFDE008987840088858200000000007370
      6D002B282300302C27008785820067646100FFFFFF00FFFFFF00777471001612
      0D00231F1A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028241F0005000000302C2700E6E6E500FFFFFF00FFFFFF00F4F4
      F4001C1813001C17120000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000027231E002824
      1F0003000000302C280054504D00120D070025211C0027231E00000000000000
      00000000000000000000000000000000000000000000000000002A262200100B
      060017120D000A060000322E2900DBDAD900FFFFFF00B1AFAD004C4B4900C3C2
      C100BCBBB9003533310084827E00DCDCDA00FFFFFF00807E7B00070200000E0B
      0700100C06002A26220000000000000000000000000000000000000000002A26
      210015110B00050000004E4A4600BAB9B700FDFDFD00F3F3F200C2C1C000E7E7
      E600CECECC00D1D0CF00FFFFFF00EFEFEE00A5A3A0003A353100020000002420
      1B0027231F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028241F0005000000312D2900DFDEDE00FFFFFF00FFFF
      FF0066645F000601000027231E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027231D0024201B00231F1A0027231E000000000000000000000000000000
      0000000000000000000000000000000000000000000027231E001F1B1600221E
      180028241F0028241F00110C0600120E0800716E6B00D3D2D100E5E4E200FAF9
      F900F6F6F600E8E7E600E3E3E200ACABA9003C38340006010000201C17002925
      2000221E18001F1B160027231E00000000000000000000000000000000000000
      000028241F0024201B000D09030006020000322E290068666200ACAAA800A7A6
      A400B1AFAE00A3A19F0065635F00322F2A0004000000130E090027231E002723
      1E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000028241F000A0600002F2B270087858200E5E4
      E300CFCDCC0015110D00201B1600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027231E0024201B00231F1A0027231E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028241F00201B16000A050000110D07000D0C0C00C0BF
      BD00C1C0BE0017161600211D180008030000130F09000000000027231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000027231E0024201B00191510000E090400030000000100
      000001000000030000000E0904001A16110025211C0027231E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002824200017120D000A050000302C
      280074706E0037332E001F1B1600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027231E00221D180000000000BDBC
      BA00BDBCBA00000000001E1A150025211C0027231E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025211C001713
      0E0015110B0027231E0026231E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020100B1B0
      AD00B1B0AD000302010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024201B0025211C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024201C002D29
      25002D29250024201C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000FFFFFF000000000000000000FFFFFF000000000000000000
      FFFFFF000000000000000000FFFFFF0000000000000000000000030000000000
      0000000000000100000000000000000000000100000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      C00000000000000000000000FE8000000000000000000000FFE0010000000000
      00000000FFE07F000000000000000000FFF07F000000000000000000FFF0FF00
      0000000000000000FFFFFF000000000000000000FFFFFF000000000000000000
      FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFF90FFFFFFFFFFF
      FFFFFF82FFF00FFFFFFFFFFFF8FFE0824BF00FFF800003FFE07FC000038007FF
      800003FFE03FC000038007FF800003FFC03FC000038003FF800003FF001FE000
      0780003F800003FF001FF0000780007F800003FC001FE8000700003F800003F8
      000FE0000700003FE00007F8000FE0010700003FC00007F8000FE0000780003F
      800007F8000FE00007F4001F800007F8000FE00007FE000F800007F8000FE000
      07FE0007808007FC001FE00007FE0003C00007FF001FE00007FE0007E80007FF
      001FF00017FE0003F80107FF803FF0000FFFFC01FE2107FFC03FE00007FFFE01
      FFFFFFFFE07FE03C03FFFF01FFFFFFFFF0FFE07E03FFFFC1FFFFFFFFFFFFE07F
      03FFFFF3FFFFFFFFFFFFE0FF47FFFFFFFFFFFFFFC3FFFFFFFFF80FFFFFFFFFFF
      C3FFFFFFFFC00FFFFFFFFFFE003FFFC7FF800FFFFFFFFFF8001FFF01FF8017FF
      FFFFFF800001FF01FF8007FFFFFFFF800001FF01FF8003FFFFFFFF000000FF01
      FF0003FF000000800001FF01FF0003FF000000800001F8005F0000FF000000C0
      0003E8000F00007F000000C00003E0000700007F000000C00003E0000780003F
      000000C00003E00007F4001F000000C00003E00007FF800F000000C00003E000
      07FF8007800000800001E00007FF8003C00000000000E00007FFF007FF000000
      0000E00007FFF803FFC03FC00003E00007FFFC01FFF0FF800001F0000FFFFE01
      FFF0FFFC005FFC003FFFFF01FFFFFFFF007FFFFFFFFFFFC1FFFFFFFFC3FFFFFF
      FFFFFFF3FFFFFFFFC3FFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmPopupMenu1: TPopupMenu
    Images = imglistPM
    Left = 456
    Top = 120
    object mniStandardPoint1: TMenuItem
      Caption = 'New Standard (&Point)'
      object mniAir1: TMenuItem
        Caption = '&Air'
        OnClick = mniAir1Click
      end
      object mniSurface1: TMenuItem
        Caption = '&Surface'
        OnClick = mniSurface1Click
      end
      object mniSubsurface1: TMenuItem
        Caption = 'S&ubsurface'
        OnClick = mniSubsurface1Click
      end
      object mniLand1: TMenuItem
        Caption = '&Land'
        OnClick = mniLand1Click
      end
    end
    object mniNewStandardBearing1: TMenuItem
      Caption = 'New Standard (&Bearing)'
      object mniAir2: TMenuItem
        Caption = '&Air'
        OnClick = mniAir2Click
      end
      object mniSurface2: TMenuItem
        Caption = '&Surface'
        OnClick = mniSurface2Click
      end
      object mniSubsurface2: TMenuItem
        Caption = 'S&ubsurface'
        OnClick = mniSubsurface2Click
      end
      object mniLand2: TMenuItem
        Caption = '&Land'
        OnClick = mniLand2Click
      end
      object mniGeneral1: TMenuItem
        Caption = '&General'
        OnClick = mniGeneral1Click
      end
    end
    object mniNewStandard1: TMenuItem
      Caption = 'New Standard (A&OP)'
      object mniAir3: TMenuItem
        Caption = '&Air'
        OnClick = mniAir3Click
      end
      object mniSurface3: TMenuItem
        Caption = '&Surface'
        OnClick = mniSurface3Click
      end
      object mniSubsurface3: TMenuItem
        Caption = 'S&ubsurface'
        OnClick = mniSubsurface3Click
      end
      object mniLand3: TMenuItem
        Caption = '&Land'
        OnClick = mniLand3Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mniNewSpecialPointGeneral1: TMenuItem
      Caption = 'New Special Point (&General)'
      object mniGeneral2: TMenuItem
        Caption = '&General'
        OnClick = mniGeneral2Click
      end
      object mniBouy1: TMenuItem
        Caption = '&Bouy'
        OnClick = mniBouy1Click
      end
      object mniDatalinkReferencePoint1: TMenuItem
        Caption = '&Datalink Reference Point'
        OnClick = mniDatalinkReferencePoint1Click
      end
      object mniDesse1: TMenuItem
        Caption = 'Distressed &Vessel'
        OnClick = mniDesse1Click
      end
      object mniESM1: TMenuItem
        Caption = '&ESM/ECM Fix'
        OnClick = mniESM1Click
      end
      object mniGroundZero1: TMenuItem
        Caption = 'Ground &Zero'
        OnClick = mniGroundZero1Click
      end
      object mniManInWater1: TMenuItem
        Caption = 'Man In &Water'
        OnClick = mniManInWater1Click
      end
      object mniMaritimeHeadquarter1: TMenuItem
        Caption = 'Maritime Head&quarters'
        OnClick = mniMaritimeHeadquarter1Click
      end
      object mniMineHazard1: TMenuItem
        Caption = '&Mine Hazard'
        OnClick = mniMineHazard1Click
      end
      object mniNavigationalHazard1: TMenuItem
        Caption = '&Navigational Hazard'
        OnClick = mniNavigationalHazard1Click
      end
      object mniOilRig1: TMenuItem
        Caption = '&Oil Rig'
        OnClick = mniOilRig1Click
      end
      object mniStation1: TMenuItem
        Caption = '&Station'
        OnClick = mniStation1Click
      end
      object mniTracticalGridOriginal1: TMenuItem
        Caption = '&Tactical Grid Origin'
        OnClick = mniTracticalGridOriginal1Click
      end
    end
    object mniNewSpecialPointAir1: TMenuItem
      Caption = 'New Special Point (&Air)'
      object mniAirGeneral1: TMenuItem
        Caption = '&Air General'
        OnClick = mniAirGeneral1Click
      end
      object mniAirborneEarlyWarning1: TMenuItem
        Caption = 'Airborne Early &Warning'
        OnClick = mniAirborneEarlyWarning1Click
      end
      object mniBullseye1: TMenuItem
        Caption = '&Bullseye'
        OnClick = mniBullseye1Click
      end
      object mniCombatAirPatrol1: TMenuItem
        Caption = '&Combat Air Patrol'
        OnClick = mniCombatAirPatrol1Click
      end
      object mniDitchedAircraft1: TMenuItem
        Caption = '&Ditched Aircraft'
        OnClick = mniDitchedAircraft1Click
      end
      object mniGate1: TMenuItem
        Caption = '&Gate'
        OnClick = mniGate1Click
      end
    end
    object mniNewSpecialPointASW1: TMenuItem
      Caption = 'New Special Point (A&SW)'
      object mniASWGeneral1: TMenuItem
        Caption = '&ASW General'
        OnClick = mniASWGeneral1Click
      end
      object mniBriefContact1: TMenuItem
        Caption = '&Brief Contact'
        OnClick = mniBriefContact1Click
      end
      object mniDatum1: TMenuItem
        Caption = '&Datum'
        OnClick = mniDatum1Click
      end
      object mniKingpin1: TMenuItem
        Caption = '&Kingpin'
        OnClick = mniKingpin1Click
      end
      object mniRiser1: TMenuItem
        Caption = '&Riser'
        OnClick = mniRiser1Click
      end
      object mniSearchCentre1: TMenuItem
        Caption = 'Search &Centre'
        OnClick = mniSearchCentre1Click
      end
      object mniSinker1: TMenuItem
        Caption = '&Sinker'
        OnClick = mniSinker1Click
      end
      object mniWeaponEntryPoint1: TMenuItem
        Caption = 'Weapon Entry &Point'
        OnClick = mniWeaponEntryPoint1Click
      end
      object mniWreck1: TMenuItem
        Caption = '&Wreck'
        OnClick = mniWreck1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mniTorpedo: TMenuItem
      Caption = 'Torpedo'
      object mniTorpedoCourse: TMenuItem
        Caption = 'Course...'
        OnClick = mniTorpedoCourseClick
      end
      object mniTorpedoDepth: TMenuItem
        Caption = 'Depth...'
        OnClick = mniTorpedoDepthClick
      end
    end
    object mniSonobuoys: TMenuItem
      Caption = 'Sonobuoys'
      object mniOperatingMode: TMenuItem
        Caption = 'Operating Mode'
        object Active1: TMenuItem
          Caption = 'Active'
        end
        object Passive1: TMenuItem
          Caption = 'Passive'
        end
        object Off1: TMenuItem
          Caption = 'Off'
        end
      end
      object mniDepth: TMenuItem
        Caption = 'Depth...'
        OnClick = mniDepthClick
      end
      object mniEndurance: TMenuItem
        Caption = 'Endurance...'
        OnClick = mniEnduranceClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object mniMonitor: TMenuItem
        Caption = 'Monitor'
        object Add2: TMenuItem
          Caption = 'Add'
        end
        object Remove3: TMenuItem
          Caption = 'Remove'
        end
        object ransfer1: TMenuItem
          Caption = 'Transfer...'
          OnClick = ransfer1Click
        end
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object mniDestroy: TMenuItem
        Caption = 'Destroy'
      end
    end
    object Platform1: TMenuItem
      Caption = 'Platform'
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object mniConvertRTtoNRT1: TMenuItem
      Caption = 'Con&vert RT to NRT'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mniCharacteristic1: TMenuItem
      Caption = '&Characteristics'
      object mniDomain1: TMenuItem
        Caption = '&Domain'
        object mniAir4: TMenuItem
          AutoCheck = True
          Caption = '&Air'
          RadioItem = True
          OnClick = mniAir4Click
        end
        object mniSurface4: TMenuItem
          AutoCheck = True
          Caption = '&Surface'
          RadioItem = True
          OnClick = mniSurface4Click
        end
        object mniSubsurface4: TMenuItem
          AutoCheck = True
          Caption = 'S&ubsurface'
          RadioItem = True
          OnClick = mniSubsurface4Click
        end
        object mniLand4: TMenuItem
          AutoCheck = True
          Caption = '&Land'
          RadioItem = True
          OnClick = mniLand4Click
        end
        object mniGeneral4: TMenuItem
          AutoCheck = True
          Caption = '&General'
          RadioItem = True
          OnClick = mniGeneral4Click
        end
      end
      object mniIdentity1: TMenuItem
        Caption = '&Identity'
        object mniPending1: TMenuItem
          AutoCheck = True
          Caption = '&Pending'
          RadioItem = True
          OnClick = mniPending1Click
        end
        object mniUnknowns1: TMenuItem
          AutoCheck = True
          Caption = '&Unknown'
          RadioItem = True
          OnClick = mniUnknowns1Click
        end
        object mniAssumedFriend1: TMenuItem
          AutoCheck = True
          Caption = '&Assumed Friend'
          RadioItem = True
          OnClick = mniAssumedFriend1Click
        end
        object mniFriend1: TMenuItem
          AutoCheck = True
          Caption = '&Friend'
          RadioItem = True
          OnClick = mniFriend1Click
        end
        object mniNeutral1: TMenuItem
          AutoCheck = True
          Caption = '&Neutral'
          RadioItem = True
          OnClick = mniNeutral1Click
        end
        object mniSuspect1: TMenuItem
          AutoCheck = True
          Caption = '&Suspect'
          RadioItem = True
          OnClick = mniSuspect1Click
        end
        object mniHostile1: TMenuItem
          AutoCheck = True
          Caption = '&Hostile'
          RadioItem = True
          OnClick = mniHostile1Click
        end
      end
      object mniPlatformType1: TMenuItem
        Caption = '&Platform Type'
        object mniAircraftCarrier1: TMenuItem
          AutoCheck = True
          Caption = 'Aircraft Carrier (CV/CVN)'
          RadioItem = True
          OnClick = mniAircraftCarrier1Click
        end
        object mniAmphibius1: TMenuItem
          AutoCheck = True
          Caption = 'Amphibious Warfare'
          RadioItem = True
          OnClick = mniAmphibius1Click
        end
        object mniAuxiliary1: TMenuItem
          AutoCheck = True
          Caption = 'Auxiliary'
          RadioItem = True
          OnClick = mniAuxiliary1Click
        end
        object mniChaff1: TMenuItem
          AutoCheck = True
          Caption = 'Chaff'
          RadioItem = True
          OnClick = mniChaff1Click
        end
        object mniCruiserGuidedMissileCGCGN1: TMenuItem
          AutoCheck = True
          Caption = 'Cruiser, Guided Missile (CG/CGN)'
          RadioItem = True
          OnClick = mniCruiserGuidedMissileCGCGN1Click
        end
        object mniDestroyer1: TMenuItem
          AutoCheck = True
          Caption = 'Destroyer'
          RadioItem = True
          OnClick = mniDestroyer1Click
        end
        object mniDestroyerGuidedMissle1: TMenuItem
          AutoCheck = True
          Caption = 'Destroyer, Guided Missile (DOG)'
          RadioItem = True
          OnClick = mniDestroyerGuidedMissle1Click
        end
        object mniFrigateFF1: TMenuItem
          AutoCheck = True
          Caption = 'Frigate (FF)'
          RadioItem = True
          OnClick = mniFrigateFF1Click
        end
        object mniFrigateGuidedMissleFFG1: TMenuItem
          AutoCheck = True
          Caption = 'Frigate, Guided Missile (FFG)'
          RadioItem = True
          OnClick = mniFrigateGuidedMissleFFG1Click
        end
        object mniInfra1: TMenuItem
          AutoCheck = True
          Caption = 'Infrared Decoy'
          RadioItem = True
          OnClick = mniInfra1Click
        end
        object mniJammerDecoy1: TMenuItem
          AutoCheck = True
          Caption = 'Jammer Decoy'
          RadioItem = True
          OnClick = mniJammerDecoy1Click
        end
        object mniMerchant1: TMenuItem
          AutoCheck = True
          Caption = 'Merchant'
          RadioItem = True
          OnClick = mniMerchant1Click
        end
        object mniMainwarfare1: TMenuItem
          AutoCheck = True
          Caption = 'Main Warfare'
          OnClick = mniMainwarfare1Click
        end
        object mniPatrolCraftPTPTG1: TMenuItem
          AutoCheck = True
          Caption = 'Patrol Craft (PT/PTG)'
          OnClick = mniPatrolCraftPTPTG1Click
        end
        object mniUtilityVessel1: TMenuItem
          AutoCheck = True
          Caption = 'Utility Vessel'
          OnClick = mniUtilityVessel1Click
        end
        object mniOther1: TMenuItem
          AutoCheck = True
          Caption = 'Other'
          OnClick = mniOther1Click
        end
      end
      object mniPropulsionType1: TMenuItem
        Caption = 'P&ropulsion Type'
        Visible = False
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mniEdit1: TMenuItem
        Caption = '&Edit'
        SubMenuImages = imglistPM
        ImageIndex = 1
        ShortCut = 16453
        OnClick = mniEdit1Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mniMerge1: TMenuItem
      Caption = '&Merge...'
      ShortCut = 16461
      OnClick = mniMerge1Click
    end
    object mniSplit1: TMenuItem
      Caption = '&Split'
      ShortCut = 16467
      OnClick = mniSplit1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object mniDatalink1: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = '&Datalink'
      object mniTo1: TMenuItem
        Caption = 'To'
        ShortCut = 16468
      end
      object mniFrom1: TMenuItem
        Caption = 'From'
        ShortCut = 16454
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object mniTrackNumber1: TMenuItem
      Caption = 'Track &Number'
      object mniAutomatic1: TMenuItem
        Caption = '&Automatic'
        OnClick = mniAutomatic1Click
      end
      object mniManual1: TMenuItem
        Caption = '&Manual'
        OnClick = mniManual1Click
      end
    end
    object mniTrackHistory1: TMenuItem
      Caption = 'Track &History'
      SubMenuImages = imglistPM
      ImageIndex = 2
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object mniIntiate1: TMenuItem
      Caption = 'Intiate TMA'
    end
    object mniBreakAllFireControl1: TMenuItem
      Caption = 'Break All Fire Control Asset Assignments'
    end
    object mniClearRing1: TMenuItem
      Caption = 'Clear Range Circles and Blind Zones '
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object mniRemove1: TMenuItem
      Caption = 'Remove'
      ImageIndex = 0
      OnClick = mniRemove1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object mniCentre1: TMenuItem
      Caption = 'Centre'
      OnClick = mniCentre1Click
    end
    object mniRangeRing1: TMenuItem
      Caption = 'Range Rings'
      OnClick = mniRangeRing1Click
    end
    object mniTrackTable1: TMenuItem
      Caption = 'Track Table'
      object mniAdd1: TMenuItem
        Caption = 'Add'
        ShortCut = 16449
        OnClick = mniAdd1Click
      end
      object mniRemove2: TMenuItem
        Caption = 'Remove'
        ShortCut = 16466
        OnClick = mniRemove2Click
      end
    end
    object mniAnchor1: TMenuItem
      Caption = 'Anchor Cursor'
      SubMenuImages = imglistPM
      ImageIndex = 3
      OnClick = mniAnchor1Click
    end
  end
  object imglistPM: TImageList
    Left = 544
    Top = 120
    Bitmap = {
      494C010104009C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292C29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000424142007375730063616300393C3900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A494A007B7D7B00A5A2A500B5B6B500BDBABD009C9E9C005A5D5A004A49
      4A00000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525552006361
      6300D6D7D600949694004A4D4A00DEDBDE00BDBABD007B7D7B00D6D3D600BDBA
      BD004A4D4A000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052555200636163005255
      5200525152000000000000000000E7E3E7005255520000000000000000005255
      52009C9E9C005255520000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000000000000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A595A00848284005A59
      5A00000000000000000000000000DEDFDE005A595A0000000000000000000000
      00005A595A00B5B6B50000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063616300636163000000
      0000000000000000000000000000DEDFDE006361630000000000000000000000
      00006B696B00ADAAAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B696B00000000000000
      0000000000000000000000000000CECBCE006B696B0000000000000000000000
      0000000000006B696B0000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073717300E7E7E700E7E3E700BDBEBD00ADAAAD00CECFCE00949694000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000000000000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECFCE007375730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000008400000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7D7B00D6D7D600848684007B7D7B00000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848284008C8E8C00848284008482840094929400000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084868400848684008482840084868400A5A2A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9E9C00D6D7D600BDBABD008C8E8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000EFFD001FF81F0000
      C7F7FFDFE70F0000C3EB905FF8070000E3C7FFDF84C30000F187905F07C30000
      F80FFFDF3F830000FC1FFEDF9F030000F83F9D5DBE030000F01FAA093E030000
      C0CFC0719687000081E702F9DF63000083F3F1F9DCA30000CFF9F931E0130000
      FFFFFC0BF81F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object imgListButton: TImageList
    Left = 552
    Top = 192
    Bitmap = {
      494C010102007400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object tmMove: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmMoveTimer
    Left = 384
    Top = 352
  end
end
