object frmSnrVsPodSummary: TfrmSnrVsPodSummary
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Signal to Noise Ratio vs Probability of Detection Curve'
  ClientHeight = 236
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 11
      Top = 6
      Width = 37
      Height = 13
      Caption = 'Name  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 11
      Top = 24
      Width = 279
      Height = 21
      TabOrder = 0
      OnChange = edtNameChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 56
    Width = 302
    Height = 137
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 61
    ExplicitHeight = 127
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 282
      Height = 117
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      ExplicitHeight = 107
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 67
        object btnEditList: TButton
          Left = 23
          Top = 21
          Width = 234
          Height = 25
          Caption = 'Edit Curve..'
          TabOrder = 0
          OnClick = btnEditListClick
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 193
    Width = 302
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 135
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 215
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 55
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
