object frmVektorMapGameCenterEditor: TfrmVektorMapGameCenterEditor
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Game Center Editor'
  ClientHeight = 457
  ClientWidth = 784
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
  object pnl3Button: TPanel
    Left = 0
    Top = 414
    Width = 784
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 409
    ExplicitWidth = 774
    object Panel1: TPanel
      Left = 536
      Top = 0
      Width = 248
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 526
      object btnOK: TButton
        Left = 6
        Top = 9
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = btnOkClick
      end
      object btnApply: TButton
        Left = 87
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 1
        OnClick = btnApplyClick
      end
      object btnCancel: TButton
        Left = 168
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object pnlMap: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 336
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 774
    ExplicitHeight = 326
    object VectorMap: TMap
      Left = 0
      Top = 0
      Width = 784
      Height = 336
      ParentColor = False
      Align = alClient
      TabOrder = 0
      OnMouseUp = VectorMapMouseUp
      OnMouseMove = VectorMapMouseMove
      OnMouseDown = VectorMapMouseDown
      OnDrawUserLayer = VectorMapDrawUserLayer
      ExplicitTop = -1
      ExplicitWidth = 904
      ExplicitHeight = 476
      ControlData = {
        8A1A060007510000BA220000010000000F0000FF0D47656F44696374696F6E61
        727905456D70747900E8030000000000000000000002000E001E000000000000
        0000000000000000000000000000000000000000000600010000000000500001
        0100000A0000000001F4010000050000800C000000000000000000000000FFFF
        FF000100000000000000000000000000000000000000000000000352E30B918F
        CE119DE300AA004BB8510100000090017CE5070005417269616C000352E30B91
        8FCE119DE300AA004BB851010000009001301B0F0005417269616C0000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFF000000000000000001370000000000FFFFFF000000000000000352E30B91
        8FCE119DE300AA004BB851010000009001DC7C010005417269616C000352E30B
        918FCE119DE300AA004BB851010200009001A42C02000B4D61702053796D626F
        6C730000000000000001000100FFFFFF000200FFFFFF00000000000001000000
        0100011801000008F98A050100000028102F001C000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000002
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        8076C000000000008056C0000000000080764000000000008056400100000018
        01000008F98A05010000004813AB001C00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000200000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000C0D65071B8
        EB9700F1805671B8ECA5057CEA9700ECEEA505B8ECA505000000000000000000
        000088B3400000000000408F400001000001}
    end
  end
  object pnlRight: TPanel
    Left = 0
    Top = 341
    Width = 784
    Height = 68
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 5
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 5
    ExplicitTop = 336
    ExplicitWidth = 774
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 774
      Height = 58
      Align = alClient
      Caption = 'Game Area Setting'
      TabOrder = 0
      ExplicitWidth = 764
      object lblLatitude: TLabel
        Left = 114
        Top = 26
        Width = 53
        Height = 14
        Caption = 'Latitude :'
      end
      object lblLongitude: TLabel
        Left = 306
        Top = 26
        Width = 63
        Height = 14
        Caption = 'Longitude :'
      end
      object lblWidth: TLabel
        Left = 566
        Top = 26
        Width = 41
        Height = 14
        Caption = 'Width :'
      end
      object lblWidthUnit: TLabel
        Left = 669
        Top = 26
        Width = 17
        Height = 14
        Caption = 'nm'
      end
      object edtWidth: TEdit
        Tag = 2
        Left = 615
        Top = 22
        Width = 48
        Height = 22
        TabOrder = 2
        Text = '21600'
        OnChange = edtChange
        OnKeyPress = edtNumeralKeyPress
      end
      object editLongitude: TEdit
        Tag = 4
        Left = 375
        Top = 22
        Width = 102
        Height = 22
        TabOrder = 1
        OnChange = edtChange
      end
      object editLatitude: TEdit
        Tag = 4
        Left = 175
        Top = 22
        Width = 102
        Height = 22
        TabOrder = 0
        OnChange = edtChange
        OnKeyPress = edtNumeralKeyPress
      end
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 336
    Width = 784
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 5
    ExplicitTop = 331
    ExplicitWidth = 774
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 784
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
    Top = 409
    Width = 784
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 5
    ExplicitTop = 404
    ExplicitWidth = 774
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 784
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
