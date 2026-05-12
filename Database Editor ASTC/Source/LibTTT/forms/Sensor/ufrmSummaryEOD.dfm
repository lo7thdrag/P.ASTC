object frmSummaryEOD: TfrmSummaryEOD
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Electro Optical Detector'
  ClientHeight = 351
  ClientWidth = 400
  Color = clBackground
  DoubleBuffered = True
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
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblName: TLabel
      Left = 10
      Top = 10
      Width = 39
      Height = 16
      Caption = 'Class :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtClass: TEdit
      Tag = 4
      Left = 10
      Top = 31
      Width = 380
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 400
    Height = 243
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 233
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 380
      Height = 223
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 213
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 173
        object txtSensorType: TLabel
          Left = 15
          Top = 24
          Width = 73
          Height = 14
          Caption = 'Sensor Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtDetectionRange: TLabel
          Left = 15
          Top = 51
          Width = 96
          Height = 14
          Caption = 'Detection Range:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtAssociatedCross: TLabel
          Left = 15
          Top = 78
          Width = 139
          Height = 14
          Caption = 'Associated Cross Section:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtMaxPossible: TLabel
          Left = 15
          Top = 105
          Width = 196
          Height = 14
          Caption = 'Maximum Possible Detection Range:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txt1: TLabel
          Left = 278
          Top = 51
          Width = 17
          Height = 14
          Caption = 'nm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txt2: TLabel
          Left = 278
          Top = 78
          Width = 38
          Height = 14
          Caption = 'metres'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txt3: TLabel
          Left = 278
          Top = 105
          Width = 17
          Height = 14
          Caption = 'nm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object chkFC_Capable: TCheckBox
          Left = 15
          Top = 134
          Width = 137
          Height = 17
          Caption = 'Fire Control Capable'
          TabOrder = 0
          OnClick = CheckBoxDataClick
        end
        object edtDetectionRange: TEdit
          Tag = 2
          Left = 224
          Top = 46
          Width = 49
          Height = 22
          TabOrder = 1
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtAssociatedCross: TEdit
          Tag = 1
          Left = 224
          Top = 73
          Width = 49
          Height = 22
          TabOrder = 2
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxPossible: TEdit
          Tag = 2
          Left = 224
          Top = 101
          Width = 49
          Height = 22
          TabOrder = 3
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object cbbSensorType: TComboBox
          Left = 224
          Top = 20
          Width = 138
          Height = 22
          TabOrder = 4
          Text = 'IR Sensor (Infrared)'
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'EO Sensor (Optical)'
            'Laser Sensor'
            'IR Sensor (Infrared)')
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 352
          Height = 163
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 308
    Width = 400
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 235
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 315
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 155
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
