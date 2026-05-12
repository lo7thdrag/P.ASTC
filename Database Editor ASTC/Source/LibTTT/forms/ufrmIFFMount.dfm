object frmIFFMount: TfrmIFFMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   IFF'
  ClientHeight = 392
  ClientWidth = 432
  Color = clBtnFace
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
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
      Left = 10
      Top = 7
      Width = 78
      Height = 14
      Caption = 'Mount Name :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Tag = 4
      Left = 10
      Top = 27
      Width = 399
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
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 70
    Width = 432
    Height = 274
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 412
      Height = 254
      ActivePage = General
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      object General: TTabSheet
        Caption = 'General'
        object lblCapability: TStaticText
          Left = 19
          Top = 28
          Width = 62
          Height = 18
          Caption = 'Capability :'
          TabOrder = 0
        end
        object cbbCapability: TComboBox
          Left = 96
          Top = 26
          Width = 140
          Height = 22
          TabOrder = 1
          Items.Strings = (
            'Automatic/Designated'
            'Designated')
        end
        object txtAntenna: TStaticText
          Left = 19
          Top = 53
          Width = 99
          Height = 18
          Caption = 'Antenna Height :'
          TabOrder = 2
        end
        object edtAntenna: TEdit
          Left = 168
          Top = 51
          Width = 68
          Height = 22
          TabOrder = 3
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object txtSubmerged: TStaticText
          Left = 19
          Top = 79
          Width = 166
          Height = 18
          Caption = 'Submerged Antenna Height :'
          TabOrder = 4
        end
        object edtSubmerged: TEdit
          Left = 168
          Top = 77
          Width = 68
          Height = 22
          TabOrder = 5
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object lblMaxOperational: TStaticText
          Left = 19
          Top = 105
          Width = 166
          Height = 18
          Caption = 'Maximum Operational Depth :'
          TabOrder = 6
        end
        object edtMaxOperational: TEdit
          Left = 168
          Top = 103
          Width = 68
          Height = 22
          TabOrder = 7
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object txtFeetAntenna: TStaticText
          Left = 242
          Top = 53
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 8
        end
        object txtFeetSubmerged: TStaticText
          Left = 242
          Top = 79
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 9
        end
        object txtFeetMaxOperational: TStaticText
          Left = 242
          Top = 105
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 10
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 344
    Width = 432
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 262
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 181
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 343
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 432
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image3: TImage
      Left = 0
      Top = 0
      Width = 432
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
      ExplicitTop = 4
      ExplicitWidth = 762
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 387
    Width = 432
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image4: TImage
      Left = 0
      Top = 0
      Width = 432
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
      ExplicitTop = 3
      ExplicitWidth = 762
    end
  end
end
