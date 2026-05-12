object frmSummaryAirBubble: TfrmSummaryAirBubble
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Air Bubble'
  ClientHeight = 323
  ClientWidth = 368
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
    Width = 368
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
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
      Width = 349
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
    Width = 368
    Height = 215
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 205
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 348
      Height = 195
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 185
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 145
        object lblMaxAcousticCross: TLabel
          Left = 19
          Top = 24
          Width = 181
          Height = 14
          Caption = 'Maximum Acoustic Cross Section:'
        end
        object lbl1: TLabel
          Left = 276
          Top = 24
          Width = 34
          Height = 14
          Caption = 'dB m'#178
        end
        object lblDissipationTime: TLabel
          Left = 19
          Top = 50
          Width = 91
          Height = 14
          Caption = 'Dissipation Time:'
        end
        object lbl2: TLabel
          Left = 276
          Top = 50
          Width = 41
          Height = 14
          Caption = 'Second'
        end
        object lblAscentRate: TLabel
          Left = 19
          Top = 78
          Width = 71
          Height = 14
          Caption = 'Ascent Rate:'
        end
        object lbl3: TLabel
          Left = 276
          Top = 78
          Width = 47
          Height = 14
          Caption = 'feet/min'
        end
        object lblDescentRate: TLabel
          Left = 19
          Top = 105
          Width = 78
          Height = 14
          Caption = 'Descent Rate:'
        end
        object lbl4: TLabel
          Left = 276
          Top = 105
          Width = 47
          Height = 14
          Caption = 'feet/min'
        end
        object edtMaxAcousticCross: TEdit
          Tag = 2
          Left = 220
          Top = 20
          Width = 53
          Height = 22
          TabOrder = 0
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtDissipationTime: TEdit
          Left = 220
          Top = 46
          Width = 53
          Height = 22
          TabOrder = 1
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtAscentRate: TEdit
          Tag = 2
          Left = 220
          Top = 74
          Width = 53
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtDescentRate: TEdit
          Tag = 2
          Left = 220
          Top = 101
          Width = 53
          Height = 22
          TabOrder = 3
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 320
          Height = 135
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 280
    Width = 368
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 202
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 282
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 122
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
