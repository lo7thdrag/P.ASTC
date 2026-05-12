object frmSummaryBomb: TfrmSummaryBomb
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Bomb'
  ClientHeight = 522
  ClientWidth = 520
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
    Width = 520
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblClass: TLabel
      Left = 10
      Top = 5
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
      Top = 26
      Width = 499
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
    Width = 520
    Height = 414
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 404
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 500
      Height = 394
      ActivePage = tsGeneral
      Align = alClient
      MultiLine = True
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 384
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 344
        object lblType: TLabel
          Left = 20
          Top = 20
          Width = 36
          Height = 14
          Caption = 'Type :'
        end
        object cbbType: TComboBox
          Left = 62
          Top = 17
          Width = 103
          Height = 22
          TabOrder = 0
          Text = 'Depth Charge'
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'Bomb'
            'Depth Charge')
        end
        object grpLethality: TGroupBox
          Left = 20
          Top = 246
          Width = 456
          Height = 74
          Caption = ' Lethality   '
          TabOrder = 1
          object mnlbl9: TLabel
            Left = 348
            Top = 54
            Width = 46
            Height = 14
            Caption = '100.000'
          end
          object mnlbl8: TLabel
            Left = 10
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object edtLethality: TEdit
            Left = 392
            Top = 25
            Width = 49
            Height = 22
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
          object trckbrLethality: TTrackBar
            Left = 2
            Top = 25
            Width = 384
            Height = 32
            Max = 100000
            Frequency = 25000
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
        end
        object grpTarget: TGroupBox
          Left = 20
          Top = 53
          Width = 456
          Height = 68
          Caption = ' Target Selection   '
          TabOrder = 2
          object chkAntiSurface: TCheckBox
            Left = 106
            Top = 29
            Width = 89
            Height = 17
            Caption = 'Anti-Surface'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object chkAntiSubSurface: TCheckBox
            Left = 206
            Top = 28
            Width = 109
            Height = 17
            Caption = 'Anti-Subsurface'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
          object chkAntiLand: TCheckBox
            Left = 19
            Top = 30
            Width = 74
            Height = 17
            Caption = 'Anti-Land'
            TabOrder = 2
            OnClick = CheckBoxDataClick
          end
          object chkAntiAmphibious: TCheckBox
            Left = 331
            Top = 27
            Width = 112
            Height = 17
            Caption = 'Anti-Amphibious'
            TabOrder = 3
            OnClick = CheckBoxDataClick
          end
        end
        object grpRange: TGroupBox
          Left = 20
          Top = 139
          Width = 172
          Height = 91
          Caption = ' Range   '
          TabOrder = 3
          object mnlbl4: TLabel
            Left = 138
            Top = 30
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblMaxRange: TLabel
            Left = 18
            Top = 57
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object mnlbl5: TLabel
            Left = 138
            Top = 57
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lblMinRange: TLabel
            Left = 18
            Top = 30
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object edtRangeMin: TEdit
            Tag = 2
            Left = 81
            Top = 29
            Width = 52
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtRangeMax: TEdit
            Tag = 2
            Left = 81
            Top = 57
            Width = 52
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbPOH: TGroupBox
          Left = 205
          Top = 139
          Width = 271
          Height = 91
          Caption = ' Probability of Hit Curve   '
          TabOrder = 4
          object btnEditPOH: TButton
            Left = 33
            Top = 37
            Width = 206
            Height = 30
            Caption = 'Edit...'
            TabOrder = 0
            OnClick = btnEditPOHClick
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 2
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 472
          Height = 334
          Align = alClient
          Lines.Strings = (
            '')
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 479
    Width = 520
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 354
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 434
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 274
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOkClick
    end
  end
end
