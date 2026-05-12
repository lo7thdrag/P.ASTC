object frmUsage: TfrmUsage
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = ' Usage Report'
  ClientHeight = 402
  ClientWidth = 688
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      Left = 10
      Top = 10
      Width = 406
      Height = 16
      Caption = 
        'Below is a list of the database entries that reference the selec' +
        'ted item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnl2ListView: TPanel
    Left = 0
    Top = 42
    Width = 688
    Height = 312
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object ListView1: TListView
      Left = 10
      Top = 10
      Width = 668
      Height = 292
      Align = alClient
      Columns = <
        item
          Caption = 'Usage'
          Width = 150
        end
        item
          Width = 250
        end
        item
          Width = 293
        end>
      ColumnClick = False
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 359
    Width = 688
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnOk: TButton
      Left = 593
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnPrint: TButton
      Left = 11
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 1
      OnClick = btnPrint1Click
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 37
    Width = 688
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 688
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
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 354
    Width = 688
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 688
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
  object PrintDialog1: TPrintDialog
    Left = 640
    Top = 8
  end
end
