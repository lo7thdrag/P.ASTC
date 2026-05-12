object frmPlatformDeploymentPickList: TfrmPlatformDeploymentPickList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Platform Available'
  ClientHeight = 467
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 116
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 240
    object GroupBox1: TGroupBox
      Left = 10
      Top = 10
      Width = 230
      Height = 96
      Align = alClient
      Caption = ' Filter   '
      TabOrder = 0
      ExplicitWidth = 220
      object cbForce: TCheckBox
        Left = 16
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Force'
        TabOrder = 0
        OnClick = cbForceClick
      end
      object cbClassification: TCheckBox
        Left = 16
        Top = 47
        Width = 97
        Height = 17
        Caption = 'Classification'
        TabOrder = 1
        OnClick = cbClassificationClick
      end
      object cbHide: TCheckBox
        Left = 16
        Top = 71
        Width = 97
        Height = 17
        Caption = 'Hide if Deployed'
        TabOrder = 2
        OnClick = cbHideClick
      end
      object cbxForce: TComboBox
        Left = 119
        Top = 22
        Width = 82
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 3
        Text = 'Red'
        OnChange = cbxForceChange
        Items.Strings = (
          'Red'
          'Yellow'
          'Blue'
          'Green'
          'No Force'
          'NTDS')
      end
      object cbxClassification: TComboBox
        Left = 119
        Top = 45
        Width = 82
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 4
        Text = 'Air'
        OnChange = cbxClassificationChange
        Items.Strings = (
          'Air'
          'Surface'
          'Subsurface'
          'Land'
          'General')
      end
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 121
    Width = 250
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 126
    ExplicitWidth = 240
    ExplicitHeight = 288
    object lbPlatforms: TListBox
      Left = 10
      Top = 10
      Width = 230
      Height = 278
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbPlatformsClick
      OnDblClick = btnOKClick
      ExplicitWidth = 220
      ExplicitHeight = 268
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 424
    Width = 250
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 5
    ExplicitTop = 419
    ExplicitWidth = 240
    object btnCancel: TButton
      Left = 165
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnFilter: TButton
      Left = 5
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Filter >>'
      TabOrder = 1
      Visible = False
      OnClick = btnFilterClick
    end
    object btnOK: TButton
      Left = 85
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 116
    Width = 250
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 5
    ExplicitTop = 121
    ExplicitWidth = 240
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 419
    Width = 250
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = -98
    ExplicitTop = 411
    ExplicitWidth = 348
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 250
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
