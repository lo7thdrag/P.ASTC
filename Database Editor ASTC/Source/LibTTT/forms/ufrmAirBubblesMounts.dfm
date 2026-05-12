object frmAirBubblesMounts: TfrmAirBubblesMounts
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Air Bubbles'
  ClientHeight = 292
  ClientWidth = 392
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 392
    Height = 292
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl2ControlPage: TPanel
      Left = 5
      Top = 75
      Width = 382
      Height = 164
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      object pgc1: TPageControl
        Left = 10
        Top = 10
        Width = 362
        Height = 144
        ActivePage = tsGeneral
        Align = alClient
        TabHeight = 25
        TabOrder = 0
        TabWidth = 75
        object tsGeneral: TTabSheet
          Caption = 'General'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object txtQuantity: TStaticText
            Left = 88
            Top = 18
            Width = 63
            Height = 18
            Caption = 'Quantity  :'
            TabOrder = 0
          end
          object edtQuantity: TEdit
            Left = 88
            Top = 42
            Width = 68
            Height = 22
            NumbersOnly = True
            TabOrder = 1
          end
        end
      end
    end
    object pnlSparatorHor1: TPanel
      Left = 5
      Top = 70
      Width = 382
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 382
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
        ExplicitTop = -4
        ExplicitWidth = 762
      end
    end
    object pnl1Title: TPanel
      Left = 5
      Top = 5
      Width = 382
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
      object txtClass: TLabel
        Left = 10
        Top = 10
        Width = 81
        Height = 16
        Caption = 'Mount Name :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtName: TEdit
        Tag = 4
        Left = 0
        Top = 32
        Width = 368
        Height = 24
        AutoSize = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 244
      Width = 382
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 3
      object btnApply: TButton
        Left = 216
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 0
        OnClick = btnApplyClick
      end
      object btnOK: TButton
        Left = 135
        Top = 6
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 297
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
    object pnlSparatorHor2: TPanel
      Left = 5
      Top = 239
      Width = 382
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 4
      object Image4: TImage
        Left = 0
        Top = 0
        Width = 382
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
        ExplicitTop = -4
        ExplicitWidth = 762
      end
    end
  end
end
