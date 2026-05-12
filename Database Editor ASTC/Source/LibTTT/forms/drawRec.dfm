object fEditGameCenter: TfEditGameCenter
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Vektor Map Editor'
  ClientHeight = 607
  ClientWidth = 914
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 607
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -454
    ExplicitWidth = 1368
    ExplicitHeight = 581
    object pnlMap: TPanel
      Left = 5
      Top = 5
      Width = 904
      Height = 513
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 914
      ExplicitHeight = 528
      object VectorMap: TMap
        Left = 0
        Top = 0
        Width = 904
        Height = 513
        ParentColor = False
        Align = alClient
        TabOrder = 0
        OnMouseUp = VectorMapMouseUp
        OnMouseMove = VectorMapMouseMove
        OnMouseDown = VectorMapMouseDown
        OnDrawUserLayer = VectorMapDrawUserLayer
        ExplicitTop = 1
        ExplicitWidth = 914
        ExplicitHeight = 528
        ControlData = {
          8A1A06006E5D000005350000010000000F0000FF0D47656F44696374696F6E61
          727905456D70747900E8030000000000000000000002000E001E000000000000
          0000000000000000000000000000000000000000000600010000000000500001
          0100000A0000000001F4010000050000800C000000000000000000000000FFFF
          FF000100000000000000000000000000000000000000000000000352E30B918F
          CE119DE300AA004BB8510100000090012C040C0005417269616C000352E30B91
          8FCE119DE300AA004BB851010000009001301B0F0005417269616C0000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FFFF000000000000000001370000000000FFFFFF000000000000000352E30B91
          8FCE119DE300AA004BB851010000009001DC7C010005417269616C000352E30B
          918FCE119DE300AA004BB851010200009001A42C02000B4D61702053796D626F
          6C730000000000000001000100FFFFFF000200FFFFFF00000000000001000000
          010001180100001044291101000000307A06501C000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          8076C000000000008056C0000000000080764000000000008056400100000018
          0100001044291101000000183D4E761C00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000200000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000050F19700D0D50612FD
          9B2C0801112D085CF0970096112D089E112D08D0D50612000000000000000000
          000088B3400000000000408F400001000001}
      end
    end
    object pnlRight: TPanel
      Left = 5
      Top = 523
      Width = 904
      Height = 79
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 5
      Color = clBtnShadow
      ParentBackground = False
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 5
        Top = 5
        Width = 894
        Height = 69
        Align = alClient
        Caption = 'Game Area Setting'
        TabOrder = 0
        object lblLatitude: TLabel
          Left = 33
          Top = 26
          Width = 53
          Height = 14
          Caption = 'Latitude :'
        end
        object lblLongitude: TLabel
          Left = 233
          Top = 26
          Width = 63
          Height = 14
          Caption = 'Longitude :'
        end
        object lblWidth: TLabel
          Left = 441
          Top = 26
          Width = 41
          Height = 14
          Caption = 'Width :'
        end
        object lblWidthUnit: TLabel
          Left = 533
          Top = 26
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object edtWidth: TEdit
          Tag = 2
          Left = 480
          Top = 22
          Width = 49
          Height = 22
          TabOrder = 2
          Text = '21600'
          OnKeyPress = edtWidthKeyPress
        end
        object edtLongitude: TEdit
          Tag = 1
          Left = 291
          Top = 22
          Width = 102
          Height = 22
          TabOrder = 1
        end
        object edtLatitude: TEdit
          Left = 83
          Top = 22
          Width = 102
          Height = 22
          TabOrder = 0
        end
        object btnApply: TButton
          Left = 585
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Apply'
          TabOrder = 3
          Visible = False
          OnClick = btnApplyClick
        end
        object Panel1: TPanel
          Left = 660
          Top = 16
          Width = 232
          Height = 51
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 4
          object btnOk: TButton
            Left = 38
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Ok'
            TabOrder = 0
            OnClick = btnOkClick
          end
          object btnCancel: TButton
            Left = 134
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Cancel'
            TabOrder = 1
            OnClick = btnCancelClick
          end
        end
      end
    end
    object pnlSparatorHor1: TPanel
      Left = 5
      Top = 518
      Width = 904
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 528
      ExplicitWidth = 1358
    end
  end
end
