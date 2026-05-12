object frmReferencePointNew: TfrmReferencePointNew
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Reference Point Name'
  ClientHeight = 122
  ClientWidth = 338
  Color = clBtnFace
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
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 122
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl1Title: TPanel
      Left = 5
      Top = 5
      Width = 328
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      object lblReferenceName: TLabel
        Left = 8
        Top = 17
        Width = 240
        Height = 14
        Caption = 'Enter a name for the new Reference Point:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtReferenceName: TEdit
        Left = 8
        Top = 36
        Width = 309
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        ParentFont = False
        TabOrder = 0
        Text = '(Reference Point)'
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 74
      Width = 328
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 1
      object btnCancel: TButton
        Left = 239
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnCancelClick
      end
      object btnOK: TButton
        Left = 159
        Top = 9
        Width = 75
        Height = 25
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnOkClick
      end
    end
    object pnlSparatorHor2: TPanel
      Left = 5
      Top = 69
      Width = 328
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 328
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
end
