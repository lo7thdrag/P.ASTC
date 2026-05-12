object frmPredefinedPatternSummary: TfrmPredefinedPatternSummary
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Predefined Pattern'
  ClientHeight = 375
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 430
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -3
    ExplicitWidth = 431
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 430
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
      ExplicitLeft = 32
      ExplicitWidth = 428
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 327
    Width = 430
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -3
    ExplicitTop = 254
    ExplicitWidth = 431
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 430
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
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = -60
    ExplicitWidth = 428
    object lblName: TLabel
      Left = 10
      Top = 6
      Width = 43
      Height = 14
      Caption = 'Name  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 10
      Top = 25
      Width = 410
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '[Noname]'
      OnKeyPress = edtNameKeyPress
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 70
    Width = 430
    Height = 257
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 457
    ExplicitHeight = 493
    object pcScenarioTabs: TPageControl
      Left = 10
      Top = 10
      Width = 410
      Height = 237
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitWidth = 403
        ExplicitHeight = 196
        object chkEventPattern: TCheckBox
          Left = 25
          Top = 20
          Width = 89
          Height = 17
          Caption = 'Event Pattern'
          TabOrder = 0
          OnClick = chkEventPatternClick
        end
        object grpEventPattern: TGroupBox
          Left = 10
          Top = 20
          Width = 383
          Height = 67
          TabOrder = 1
          object lblVehicle: TLabel
            Left = 8
            Top = 17
            Width = 51
            Height = 14
            Caption = 'Vehicle  :'
          end
          object edtVehicle: TEdit
            Left = 3
            Top = 36
            Width = 341
            Height = 22
            Enabled = False
            TabOrder = 0
            Text = '[None]'
          end
          object btnVehicle: TButton
            Left = 350
            Top = 34
            Width = 25
            Height = 25
            Caption = '...'
            TabOrder = 1
            OnClick = btnVehicleClick
          end
        end
        object grpPatternTermination: TGroupBox
          Left = 10
          Top = 104
          Width = 383
          Height = 81
          Caption = 'Pattern Termination'
          TabOrder = 2
          object lblType: TLabel
            Left = 5
            Top = 20
            Width = 64
            Height = 14
            Caption = 'Type        :'
          end
          object lblHeading: TLabel
            Left = 5
            Top = 46
            Width = 60
            Height = 14
            Caption = 'Heading   :'
          end
          object lblHeadingUnit: TLabel
            Left = 135
            Top = 46
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object cbbType: TComboBox
            Left = 63
            Top = 17
            Width = 145
            Height = 22
            Style = csDropDownList
            TabOrder = 0
            OnChange = cbbTypeChange
            Items.Strings = (
              'Continue'
              'New Heading'
              'Repeat Pattern Absolutely'
              'Repeat Pattern Relatively'
              'Return to Base'
              'Remove Platform'
              'Heading - this data box is only available')
          end
          object edtHeading: TEdit
            Left = 63
            Top = 44
            Width = 66
            Height = 22
            TabOrder = 1
            Text = '0'
            OnKeyPress = edtHeadingKeyPress
          end
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 332
    Width = 430
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = -29
    ExplicitTop = 563
    ExplicitWidth = 457
    object btnOK: TButton
      Left = 186
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnApply: TButton
      Left = 266
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 347
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
    object btnEditPattern: TButton
      Left = 7
      Top = 6
      Width = 89
      Height = 25
      Caption = 'Edit Pattern ..'
      TabOrder = 3
      OnClick = btnEditPatternClick
    end
  end
end
