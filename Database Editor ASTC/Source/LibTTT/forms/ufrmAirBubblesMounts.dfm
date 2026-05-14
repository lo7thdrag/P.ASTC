object frmAirBubblesMounts: TfrmAirBubblesMounts
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Air Bubbles'
  ClientHeight = 292
  ClientWidth = 392
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
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 392
    Height = 292
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl2ControlPage: TPanel
      Left = 5
      Top = 70
      Width = 382
      Height = 174
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      object pgc1: TPageControl
        Left = 10
        Top = 10
        Width = 362
        Height = 154
        ActivePage = tsGeneral
        Align = alClient
        TabHeight = 25
        TabOrder = 0
        TabWidth = 75
        object tsGeneral: TTabSheet
          Caption = 'General'
          object txtQuantity: TStaticText
            Left = 88
            Top = 18
            Width = 63
            Height = 18
            Caption = 'Quantity  :'
            TabOrder = 0
          end
          object edtQuantity: TEdit
            Left = 88
            Top = 42
            Width = 68
            Height = 22
            NumbersOnly = True
            TabOrder = 1
          end
        end
      end
    end
    object pnl1Title: TPanel
      Left = 5
      Top = 5
      Width = 382
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      Color = 2499101
      ParentBackground = False
      TabOrder = 1
      object txtClass: TLabel
        Left = 10
        Top = 10
        Width = 81
        Height = 16
        Caption = 'Mount Name :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtName: TEdit
        Tag = 4
        Left = 10
        Top = 30
        Width = 362
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
    object pnl3Button: TPanel
      Left = 5
      Top = 244
      Width = 382
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
      object btnApply: TButton
        Left = 216
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 0
        OnClick = btnApplyClick
      end
      object btnOK: TButton
        Left = 135
        Top = 5
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 297
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
end
