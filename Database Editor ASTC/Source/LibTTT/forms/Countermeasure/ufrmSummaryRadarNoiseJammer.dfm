object frmSummaryRadarNoiseJammer: TfrmSummaryRadarNoiseJammer
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Radar Jammer'
  ClientHeight = 420
  ClientWidth = 395
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
    Width = 395
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblClass: TLabel
      Left = 10
      Top = 10
      Width = 39
      Height = 16
      Caption = 'Class :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtClass: TEdit
      Tag = 4
      Left = 10
      Top = 31
      Width = 376
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
    Width = 395
    Height = 312
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 302
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 375
      Height = 292
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      OnChange = edtChange
      ExplicitHeight = 282
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 242
        object lblPowerDensity: TLabel
          Left = 15
          Top = 24
          Width = 87
          Height = 14
          Caption = 'Power Density :'
        end
        object lbl1: TLabel
          Left = 240
          Top = 24
          Width = 45
          Height = 14
          Caption = 'kW/MHz'
        end
        object lblMaxEffectiveRange: TLabel
          Left = 15
          Top = 51
          Width = 148
          Height = 14
          Caption = 'Maximum Effective Range :'
        end
        object lbl2: TLabel
          Left = 240
          Top = 51
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object lblJammerType: TLabel
          Left = 15
          Top = 105
          Width = 82
          Height = 14
          Caption = 'Jammer Type :'
        end
        object lblMaxSectorWidth: TLabel
          Left = 15
          Top = 78
          Width = 135
          Height = 14
          Caption = 'Maximum Sector Width :'
        end
        object lbl3: TLabel
          Left = 240
          Top = 78
          Width = 21
          Height = 14
          Caption = 'deg'
        end
        object edtPowerDensity: TEdit
          Tag = 2
          Left = 175
          Top = 19
          Width = 59
          Height = 22
          TabOrder = 0
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grbFreqOperatingLimits: TGroupBox
          Left = 15
          Top = 141
          Width = 174
          Height = 81
          Caption = 'Frequency Operating Limits'
          TabOrder = 1
          object lblLowerFreqLimit: TLabel
            Left = 8
            Top = 27
            Width = 38
            Height = 14
            Caption = 'Lower:'
          end
          object lbl4: TLabel
            Left = 138
            Top = 27
            Width = 22
            Height = 14
            Caption = 'MHz'
          end
          object lblUpperFreqLimit: TLabel
            Left = 8
            Top = 54
            Width = 37
            Height = 14
            Caption = 'Upper:'
          end
          object lbl5: TLabel
            Left = 138
            Top = 54
            Width = 22
            Height = 14
            Caption = 'MHz'
          end
          object edtLowerFreqLimit: TEdit
            Tag = 1
            Left = 67
            Top = 24
            Width = 65
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtUpperFreqLimit: TEdit
            Tag = 1
            Left = 67
            Top = 51
            Width = 65
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtMaxEffectiveRange: TEdit
          Tag = 2
          Left = 175
          Top = 47
          Width = 59
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object cbbJammerType: TComboBox
          Left = 175
          Top = 101
          Width = 80
          Height = 22
          ItemIndex = 0
          TabOrder = 3
          Text = 'Jammer A'
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'Jammer A'
            'Jammer B'
            'Jammer C')
        end
        object edtMaxSectorWidth: TEdit
          Left = 175
          Top = 74
          Width = 59
          Height = 22
          TabOrder = 4
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grbVerticalCoverageLimits: TGroupBox
          Left = 205
          Top = 141
          Width = 148
          Height = 81
          Caption = 'Vertical Coverage Limits'
          TabOrder = 5
          object lblLowerVerticalLimit: TLabel
            Left = 16
            Top = 27
            Width = 38
            Height = 14
            Caption = 'Lower:'
          end
          object lbl6: TLabel
            Left = 111
            Top = 27
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object lblUpperVerticalLimit: TLabel
            Left = 16
            Top = 54
            Width = 37
            Height = 14
            Caption = 'Upper:'
          end
          object lbl7: TLabel
            Left = 111
            Top = 54
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object edtLowerVerticalLimit: TEdit
            Left = 67
            Top = 24
            Width = 38
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtUpperVerticalLimit: TEdit
            Left = 67
            Top = 51
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
          Width = 347
          Height = 232
          Align = alClient
          Lines.Strings = (
            '')
          TabOrder = 0
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 377
    Width = 395
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 230
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 310
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 150
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
