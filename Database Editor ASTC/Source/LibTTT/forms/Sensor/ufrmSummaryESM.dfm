object frmSummaryESM: TfrmSummaryESM
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Electronic Support Measures'
  ClientHeight = 490
  ClientWidth = 645
  Color = clBtnFace
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
    Width = 645
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
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
      Width = 625
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
    Width = 645
    Height = 382
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 625
      Height = 362
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object gbClassificationCharacteristics: TGroupBox
          Left = 19
          Top = 21
          Width = 326
          Height = 112
          Caption = ' Classification Characteristics   '
          TabOrder = 0
          object lblClassificationPeriod: TLabel
            Left = 17
            Top = 52
            Width = 112
            Height = 14
            Caption = 'Classification Period :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblIdentficationPeriod: TLabel
            Left = 17
            Top = 80
            Width = 115
            Height = 14
            Caption = 'Identfication Period :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 256
            Top = 52
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 255
            Top = 79
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMaximumConfidenceLevel: TLabel
            Left = 17
            Top = 25
            Width = 155
            Height = 14
            Caption = 'Maximum Confidence Level :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbMaximumConfidenceLevel: TComboBox
            Left = 179
            Top = 21
            Width = 70
            Height = 22
            TabOrder = 0
            Text = 'Medium'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'Low'
              'Medium'
              'High'
              'Highest')
          end
          object medtClassificationPeriod: TMaskEdit
            Left = 180
            Top = 48
            Width = 70
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
            OnChange = edtChange
          end
          object medtIdentificationPeriod: TMaskEdit
            Left = 179
            Top = 76
            Width = 70
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 2
            Text = '  :  :  '
            OnChange = edtChange
          end
        end
        object chkCommunicationInterceptCapable: TCheckBox
          Left = 368
          Top = 21
          Width = 212
          Height = 17
          Caption = 'Communication Intercept Capable'
          TabOrder = 1
          OnClick = CheckBoxDataClick
        end
        object grpFirstFrequencyDetectionBand: TGroupBox
          Left = 368
          Top = 50
          Width = 236
          Height = 83
          Caption = ' First Frequency Detection Band   '
          TabOrder = 2
          object lblLowerLimitFirst: TLabel
            Left = 16
            Top = 23
            Width = 71
            Height = 14
            Caption = 'Lower Limit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblUpperLimitFirst: TLabel
            Left = 16
            Top = 51
            Width = 70
            Height = 14
            Caption = 'Upper Limit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 143
            Top = 23
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 143
            Top = 51
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtLowerLimitFirst: TEdit
            Tag = 1
            Left = 95
            Top = 19
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtUpperLimitFirst: TEdit
            Tag = 1
            Left = 95
            Top = 47
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbSecondFrequency: TGroupBox
          Left = 368
          Top = 146
          Width = 236
          Height = 78
          Enabled = False
          TabOrder = 4
          object lblLowerLimitSecond: TLabel
            Left = 16
            Top = 18
            Width = 71
            Height = 14
            Caption = 'Lower Limit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblUpperLimitSecond: TLabel
            Left = 16
            Top = 46
            Width = 70
            Height = 14
            Caption = 'Upper Limit :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 143
            Top = 18
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl6: TLabel
            Left = 144
            Top = 46
            Width = 22
            Height = 14
            Caption = 'MHz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtLowerLimitSecond: TEdit
            Tag = 1
            Left = 95
            Top = 14
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtUpperLimitSecond: TEdit
            Tag = 1
            Left = 95
            Top = 42
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object chkSecondFrequencyDetectionBand: TCheckBox
          Left = 376
          Top = 139
          Width = 216
          Height = 17
          Caption = 'Second Frequency Detection Band      '
          TabOrder = 3
          OnClick = chkSecondFrequencyDetectionBandClick
        end
        object grpDetectionCharacteristics: TGroupBox
          Left = 19
          Top = 140
          Width = 326
          Height = 84
          Caption = ' Detection Characteristics   '
          TabOrder = 5
          object lblEmitterDetectionRangeFactor: TLabel
            Left = 25
            Top = 24
            Width = 187
            Height = 14
            Caption = 'Emmiter Detection Range Factor :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblSectorBlankDetectionFactor: TLabel
            Left = 25
            Top = 52
            Width = 172
            Height = 14
            Caption = 'Sector Blank DEtection Factor :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtEmitterDetectionRangeFactor: TEdit
            Left = 242
            Top = 20
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSectorBlankDetectionFactor: TEdit
            Left = 242
            Top = 48
            Width = 59
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpBearingErrorVariance: TGroupBox
          Left = 19
          Top = 229
          Width = 326
          Height = 60
          Caption = ' Bearing Error Variance   '
          TabOrder = 6
          object lblMinimun: TLabel
            Left = 16
            Top = 25
            Width = 55
            Height = 14
            Caption = 'Minimum :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblInitial: TLabel
            Left = 184
            Top = 25
            Width = 36
            Height = 14
            Caption = 'Initial :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 117
            Top = 25
            Width = 21
            Height = 14
            Caption = 'deg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl8: TLabel
            Left = 266
            Top = 25
            Width = 21
            Height = 14
            Caption = 'deg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtMinimum: TEdit
            Left = 77
            Top = 21
            Width = 38
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtInitial: TEdit
            Left = 226
            Top = 21
            Width = 38
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 597
          Height = 302
          Align = alClient
          Lines.Strings = (
            ''
            '')
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 447
    Width = 645
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 480
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 560
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 400
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
