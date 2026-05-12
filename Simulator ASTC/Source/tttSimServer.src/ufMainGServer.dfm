object fMainGServer: TfMainGServer
  Left = 390
  Top = 189
  BorderStyle = bsSingle
  BorderWidth = 6
  Caption = 'TTT Game Server'
  ClientHeight = 403
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMinimized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 93
    Width = 435
    Height = 12
    Align = alTop
    Shape = bsSpacer
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 93
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object Label1: TLabel
      Left = 6
      Top = 17
      Width = 61
      Height = 13
      Caption = 'Game Status'
    end
    object Label2: TLabel
      Left = 25
      Top = 33
      Width = 26
      Height = 13
      Caption = 'State'
    end
    object Label3: TLabel
      Left = 25
      Top = 49
      Width = 30
      Height = 13
      Caption = 'Speed'
    end
    object Label4: TLabel
      Left = 25
      Top = 65
      Width = 22
      Height = 13
      Caption = 'Time'
    end
    object lblGameState: TLabel
      Left = 73
      Top = 33
      Width = 40
      Height = 13
      Caption = 'Stopped'
    end
    object lblGameSpeed: TLabel
      Left = 73
      Top = 49
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblGameTime: TLabel
      Left = 73
      Top = 65
      Width = 22
      Height = 13
      Caption = 'Time'
    end
    object lblScenario: TLabel
      Left = 6
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Scenario'
    end
    object spbStart: TSpeedButton
      Left = 355
      Top = 1
      Width = 65
      Height = 22
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Play'
      Visible = False
      OnClick = spbStartClick
    end
    object Label5: TLabel
      Left = 177
      Top = 33
      Width = 36
      Height = 13
      Caption = 'Session'
    end
    object lblSession: TLabel
      Left = 225
      Top = 33
      Width = 40
      Height = 13
      Caption = 'Stopped'
    end
    object lblFrameReplay: TLabel
      Left = 177
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Replay'
    end
    object btn3: TSpeedButton
      Left = 236
      Top = 0
      Width = 78
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Create Thread'
      Visible = False
      OnClick = btn3Click
    end
    object btn1: TBitBtn
      Left = 320
      Top = 1
      Width = 35
      Height = 22
      Caption = '+'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      Visible = False
      OnClick = btn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 435
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 520
      Top = 17
      Width = 65
      Height = 22
      AllowAllUp = True
      GroupIndex = 1
      OnClick = spbStartClick
    end
    object Splitter1: TSplitter
      Left = 0
      Top = 0
      Height = 298
    end
    object PageControl1: TPageControl
      Left = 3
      Top = 0
      Width = 432
      Height = 298
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = TabSheet5
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'EVENT LOG'
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 424
          Height = 270
          Align = alClient
          BevelKind = bkFlat
          BorderStyle = bsNone
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'EVENTS LIST'
        ImageIndex = 1
        object mmEvents: TMemo
          Left = 0
          Top = 25
          Width = 424
          Height = 245
          Align = alClient
          BevelKind = bkFlat
          BorderStyle = bsNone
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
        object Button2: TButton
          Left = 0
          Top = 0
          Width = 424
          Height = 25
          Align = alTop
          Caption = 'Get EVENTS Buffer'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'PLATFORMS'
        ImageIndex = 2
        object mmInit: TMemo
          Left = 0
          Top = 25
          Width = 424
          Height = 245
          Align = alClient
          BevelKind = bkFlat
          BorderStyle = bsNone
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
        object Button1: TButton
          Left = 0
          Top = 0
          Width = 424
          Height = 25
          Align = alTop
          Caption = 'Get PLATFORMS'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'LOGS'
        ImageIndex = 3
        object mmEvent: TMemo
          Left = 0
          Top = 0
          Width = 424
          Height = 270
          Align = alClient
          BevelKind = bkFlat
          BorderStyle = bsNone
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'WATCHER'
        ImageIndex = 4
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 424
          Height = 37
          Align = alTop
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object Button3: TButton
            Left = 272
            Top = 5
            Width = 64
            Height = 25
            Caption = 'Start'
            TabOrder = 0
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 342
            Top = 5
            Width = 64
            Height = 25
            Caption = 'Stop'
            TabOrder = 1
            OnClick = Button4Click
          end
        end
        object lvPlatform: TListView
          Left = 0
          Top = 37
          Width = 424
          Height = 233
          Align = alClient
          Columns = <
            item
              Caption = 'ID'
            end
            item
              Caption = 'Name'
              Width = 80
            end
            item
              Caption = 'Pos X'
              Width = 90
            end
            item
              Caption = 'Pos Y'
              Width = 90
            end
            item
              Caption = 'Actual Speed'
            end
            item
              Caption = 'Ordered Speed'
            end
            item
              Caption = 'Actual Heading'
            end
            item
              Caption = 'Ordered Heading'
            end>
          GridLines = True
          ReadOnly = True
          RowSelect = True
          TabOrder = 1
          ViewStyle = vsReport
          ExplicitTop = 43
          ExplicitHeight = 227
        end
      end
      object tsDatalink: TTabSheet
        Caption = 'DATALINK'
        ImageIndex = 5
        object lblNCS: TLabel
          Left = 3
          Top = 3
          Width = 106
          Height = 13
          Caption = 'Datalink NCS Entities :'
        end
        object lblDL1: TLabel
          Left = 3
          Top = 22
          Width = 47
          Height = 13
          Caption = 'Datalink 1'
        end
        object lblDL2: TLabel
          Left = 143
          Top = 22
          Width = 47
          Height = 13
          Caption = 'Datalink 2'
        end
        object lblDL3: TLabel
          Left = 283
          Top = 22
          Width = 47
          Height = 13
          Caption = 'Datalink 3'
        end
        object mmoDL3: TMemo
          Left = 283
          Top = 41
          Width = 134
          Height = 182
          ReadOnly = True
          TabOrder = 0
        end
        object mmoDL2: TMemo
          Left = 143
          Top = 41
          Width = 134
          Height = 182
          Lines.Strings = (
            '')
          ReadOnly = True
          TabOrder = 1
        end
        object mmoDL1: TMemo
          Left = 3
          Top = 41
          Width = 134
          Height = 182
          ReadOnly = True
          TabOrder = 2
        end
      end
      object tsDataBuffer: TTabSheet
        Caption = 'DATA'
        ImageIndex = 6
        object mmo1: TMemo
          Left = 0
          Top = 25
          Width = 424
          Height = 245
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
        end
        object btn2: TButton
          Left = 0
          Top = 0
          Width = 424
          Height = 25
          Align = alTop
          Caption = 'Get Data Buffer'
          TabOrder = 1
          OnClick = btn2Click
        end
      end
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 384
    Top = 16
  end
  object Timer2: TTimer
    Interval = 3000
    OnTimer = Timer2Timer
    Left = 424
    Top = 16
  end
end
