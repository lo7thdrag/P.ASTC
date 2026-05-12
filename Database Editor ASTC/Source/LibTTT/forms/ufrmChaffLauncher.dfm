object frmChaffLauncher: TfrmChaffLauncher
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Chaff Launcher'
  ClientHeight = 267
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblLauncherKind: TLabel
    Left = 8
    Top = 13
    Width = 71
    Height = 13
    Caption = 'Launcher Kind:'
  end
  object lblAverageSpeed: TLabel
    Left = 8
    Top = 194
    Width = 209
    Height = 13
    Caption = 'Average Speed of Launched Chaff Rocket :'
  end
  object lbl5: TLabel
    Left = 321
    Top = 194
    Width = 14
    Height = 13
    Caption = 'kts'
  end
  object lblForward: TLabel
    Left = 28
    Top = 43
    Width = 40
    Height = 13
    Caption = 'Forward'
  end
  object edtAverageSpeed: TEdit
    Left = 249
    Top = 191
    Width = 66
    Height = 21
    TabOrder = 0
    OnChange = edtChange
    OnKeyPress = edtNumeralKeyPress
  end
  object btnApply: TButton
    Left = 610
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 1
    OnClick = btnApplyClick
  end
  object btnCancel: TButton
    Left = 691
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnOK: TButton
    Left = 529
    Top = 234
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOKClick
  end
  object cbbLauncherKind: TComboBox
    Left = 98
    Top = 10
    Width = 81
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    OnChange = ComboBoxDataChange
    Items.Strings = (
      'Fixed'
      'Trainable')
  end
  object edtForward: TEdit
    Left = 19
    Top = 148
    Width = 58
    Height = 21
    Alignment = taRightJustify
    TabOrder = 5
    OnChange = edtForwardChange
    OnKeyPress = edtNumeralKeyPress
  end
  object pnlForward: TPanel
    Left = 8
    Top = 62
    Width = 80
    Height = 80
    TabOrder = 6
  end
  object grbCapabilities: TGroupBox
    Left = 112
    Top = 43
    Width = 203
    Height = 105
    Caption = 'Range   '
    TabOrder = 7
    object lbl4: TLabel
      Left = 16
      Top = 68
      Width = 62
      Height = 13
      Caption = 'Minimum      :'
    end
    object Label1: TLabel
      Left = 16
      Top = 39
      Width = 63
      Height = 13
      Caption = 'Maximum     :'
    end
    object lbl8: TLabel
      Left = 163
      Top = 68
      Width = 14
      Height = 13
      Caption = 'nm'
    end
    object lbl9: TLabel
      Left = 163
      Top = 39
      Width = 14
      Height = 13
      Caption = 'nm'
    end
    object edtMinRange: TEdit
      Tag = 2
      Left = 92
      Top = 64
      Width = 66
      Height = 21
      TabOrder = 1
      Text = '0.00'
      OnChange = edtChange
      OnKeyPress = edtNumeralKeyPress
    end
    object edtMaxRange: TEdit
      Tag = 2
      Left = 92
      Top = 35
      Width = 66
      Height = 21
      TabOrder = 0
      Text = '0.00'
      OnChange = edtChange
      OnKeyPress = edtNumeralKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 336
    Top = 43
    Width = 203
    Height = 105
    Caption = 'Elevation   '
    TabOrder = 8
    object lbl11: TLabel
      Left = 163
      Top = 68
      Width = 20
      Height = 13
      Caption = 'feet'
    end
    object lbl10: TLabel
      Left = 163
      Top = 39
      Width = 20
      Height = 13
      Caption = 'feet'
    end
    object lbl7: TLabel
      Left = 16
      Top = 39
      Width = 51
      Height = 13
      Caption = 'Maximum :'
    end
    object lbl6: TLabel
      Left = 16
      Top = 68
      Width = 50
      Height = 13
      Caption = 'Minimum  :'
    end
    object edtMinElevation: TEdit
      Left = 92
      Top = 35
      Width = 66
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = edtChange
      OnKeyPress = edtNumeralKeyPress
    end
    object edtMaxElevation: TEdit
      Left = 92
      Top = 64
      Width = 66
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = edtChange
      OnKeyPress = edtNumeralKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 560
    Top = 43
    Width = 203
    Height = 105
    Caption = 'Bloom   '
    TabOrder = 9
    object Label2: TLabel
      Left = 16
      Top = 39
      Width = 85
      Height = 13
      Caption = 'Default Range    :'
    end
    object lbl14: TLabel
      Left = 16
      Top = 68
      Width = 82
      Height = 13
      Caption = 'Default Altitude :'
    end
    object lbl15: TLabel
      Left = 174
      Top = 39
      Width = 14
      Height = 13
      Caption = 'nm'
    end
    object lbl16: TLabel
      Left = 174
      Top = 68
      Width = 20
      Height = 13
      Caption = 'feet'
    end
    object edtDefaultAltitude: TEdit
      Left = 110
      Top = 64
      Width = 59
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = edtChange
      OnKeyPress = edtNumeralKeyPress
    end
    object edtDefaultRange: TEdit
      Tag = 2
      Left = 110
      Top = 35
      Width = 59
      Height = 21
      TabOrder = 0
      Text = '0.00'
      OnChange = edtChange
      OnKeyPress = edtNumeralKeyPress
    end
  end
end
