object frmMADMount: TfrmMADMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   MAD Mount'
  ClientHeight = 351
  ClientWidth = 442
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 442
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
      Width = 78
      Height = 14
      Caption = 'Mount Name :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Tag = 4
      Left = 10
      Top = 30
      Width = 422
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 442
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
      Width = 422
      Height = 223
      ActivePage = General
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      ExplicitHeight = 213
      object General: TTabSheet
        Caption = 'General'
        ExplicitHeight = 173
        object lblAntenna: TStaticText
          Left = 15
          Top = 26
          Width = 99
          Height = 18
          Caption = 'Antenna Height :'
          TabOrder = 0
        end
        object edtAntenna: TEdit
          Left = 164
          Top = 24
          Width = 68
          Height = 22
          TabOrder = 1
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object lblFeetAntenna: TStaticText
          Left = 246
          Top = 26
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 2
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 308
    Width = 442
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 303
    object btnApply: TButton
      Left = 277
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 196
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 358
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
