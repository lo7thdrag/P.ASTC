object frmSummaryMine: TfrmSummaryMine
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Mine'
  ClientHeight = 512
  ClientWidth = 815
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
    Width = 815
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
      Width = 785
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
    Width = 815
    Height = 404
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 795
      Height = 384
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object lblCategory: TLabel
          Left = 20
          Top = 107
          Width = 57
          Height = 14
          Caption = 'Category :'
        end
        object lblMooringType: TLabel
          Left = 20
          Top = 134
          Width = 83
          Height = 14
          Caption = 'Mooring Type :'
        end
        object lblDetectabilityType: TLabel
          Left = 20
          Top = 161
          Width = 108
          Height = 14
          Caption = 'Detectability Type :'
        end
        object lbl1: TLabel
          Left = 232
          Top = 188
          Width = 23
          Height = 14
          Caption = 'feet'
        end
        object lblMaxLayingDepth: TLabel
          Left = 20
          Top = 188
          Width = 134
          Height = 14
          Caption = 'Maximum Laying Depth :'
        end
        object cbbCategory: TComboBox
          Left = 174
          Top = 103
          Width = 131
          Height = 22
          TabOrder = 0
          OnClick = ComboBoxDataChange
          Items.Strings = (
            'Acoustic'
            'Impact'
            'Magnetic'
            'Pressure')
        end
        object cbbMooringType: TComboBox
          Left = 174
          Top = 130
          Width = 131
          Height = 22
          TabOrder = 1
          OnClick = ComboBoxDataChange
          Items.Strings = (
            'Fixed'
            'Floating')
        end
        object cbbDetectabilityType: TComboBox
          Left = 174
          Top = 157
          Width = 131
          Height = 22
          TabOrder = 2
          OnClick = ComboBoxDataChange
          Items.Strings = (
            'Normal Detection'
            'Undetectable'
            'Passive Detection'
            'Always Visible')
        end
        object edtMaxLayingDepth: TEdit
          Left = 174
          Top = 184
          Width = 52
          Height = 22
          TabOrder = 3
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grbProbOfDetonationCurve: TGroupBox
          Left = 20
          Top = 228
          Width = 285
          Height = 74
          Caption = ' Probability of Detonation Curve   '
          TabOrder = 4
          object btnEditProbOfDetonanationCurve: TButton
            Left = 54
            Top = 28
            Width = 181
            Height = 25
            Caption = 'Edit...'
            TabOrder = 0
            OnClick = btnEditProbOfDetonanationCurveClick
          end
        end
        object grpDimensions: TGroupBox
          Left = 341
          Top = 20
          Width = 416
          Height = 113
          Caption = ' Dimensions   '
          TabOrder = 5
          object lblLength: TLabel
            Left = 15
            Top = 23
            Width = 47
            Height = 14
            Caption = 'Length :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 127
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblWidth: TLabel
            Left = 15
            Top = 51
            Width = 41
            Height = 14
            Caption = 'Width :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 127
            Top = 51
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 127
            Top = 78
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblEngagementRange: TLabel
            Left = 191
            Top = 23
            Width = 116
            Height = 14
            Caption = 'Engagement Range :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 371
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblHeight: TLabel
            Left = 15
            Top = 78
            Width = 44
            Height = 14
            Caption = 'Height :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtLength: TEdit
            Left = 68
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtWidth: TEdit
            Left = 68
            Top = 47
            Width = 55
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHeight: TEdit
            Left = 68
            Top = 74
            Width = 55
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtEngagementRange: TEdit
            Left = 311
            Top = 19
            Width = 55
            Height = 22
            TabOrder = 3
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpCapabilities: TGroupBox
          Left = 20
          Top = 20
          Width = 285
          Height = 63
          Caption = ' Capabilities   '
          TabOrder = 6
          object chkAntiSubSurface: TCheckBox
            Left = 141
            Top = 25
            Width = 110
            Height = 17
            Caption = 'Anti-Subsurface'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object chkAntiSurface: TCheckBox
            Left = 35
            Top = 25
            Width = 91
            Height = 17
            Caption = 'Anti-Surface'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object grpAcousticCrossSection: TGroupBox
          Left = 341
          Top = 146
          Width = 416
          Height = 65
          Caption = ' Acoustic Cross-Section   '
          TabOrder = 7
          object lblAcousticFront: TLabel
            Left = 44
            Top = 30
            Width = 37
            Height = 14
            Caption = 'Front :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAcousticSide: TLabel
            Left = 236
            Top = 30
            Width = 31
            Height = 14
            Caption = 'Side :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl6: TLabel
            Left = 150
            Top = 30
            Width = 34
            Height = 14
            Caption = 'dB m'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 338
            Top = 30
            Width = 34
            Height = 14
            Caption = 'dB m'#178
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtAcousticFront: TEdit
            Tag = 2
            Left = 94
            Top = 26
            Width = 51
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtAcousticSide: TEdit
            Tag = 2
            Left = 282
            Top = 26
            Width = 51
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grpLethality: TGroupBox
          Left = 341
          Top = 225
          Width = 416
          Height = 77
          Caption = ' Lethality   '
          TabOrder = 8
          object Label9: TLabel
            Left = 10
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object Label10: TLabel
            Left = 328
            Top = 54
            Width = 21
            Height = 14
            Caption = '100'
          end
          object trckbrLethality: TTrackBar
            Left = 3
            Top = 25
            Width = 348
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 0
            OnChange = trckbrGeneralChange
          end
          object edtLethality: TEdit
            Left = 354
            Top = 25
            Width = 53
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 1
            Text = '0'
            OnChange = edtGeneralChange
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 5
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 767
          Height = 324
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 469
    Width = 815
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 640
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 720
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 560
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
