object frmSummaryMAD: TfrmSummaryMAD
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Magnetic Anomaly Detector'
  ClientHeight = 284
  ClientWidth = 331
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
    Width = 331
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
      Width = 311
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
    Width = 331
    Height = 176
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 166
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 311
      Height = 156
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 146
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 106
        object txtBaselineDetection: TLabel
          Left = 15
          Top = 24
          Width = 143
          Height = 14
          Caption = 'Baseline Detection Range:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtAssociatedCross: TLabel
          Left = 15
          Top = 51
          Width = 139
          Height = 14
          Caption = 'Associated Cross-Section:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblFeetAntenna: TLabel
          Left = 269
          Top = 24
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
        object edtBaselineDetection: TEdit
          Tag = 2
          Left = 209
          Top = 20
          Width = 54
          Height = 22
          TabOrder = 0
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtAssociatedCross: TEdit
          Left = 209
          Top = 47
          Width = 54
          Height = 22
          TabOrder = 1
          Text = '0,00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
      end
      object TabSheet2: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 283
          Height = 96
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
    Top = 241
    Width = 331
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 166
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 246
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 86
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
