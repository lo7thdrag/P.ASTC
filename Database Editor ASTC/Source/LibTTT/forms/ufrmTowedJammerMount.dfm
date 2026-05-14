object frmTowedJammerMount: TfrmTowedJammerMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Towed Jammer Mount'
  ClientHeight = 268
  ClientWidth = 395
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
    Width = 395
    Height = 268
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl2ControlPage: TPanel
      Left = 5
      Top = 70
      Width = 385
      Height = 150
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 10
        Top = 10
        Width = 365
        Height = 130
        ActivePage = General
        Align = alClient
        TabHeight = 30
        TabOrder = 0
        TabWidth = 75
        object General: TTabSheet
          Caption = 'General'
          object txtQuantity: TStaticText
            Left = 29
            Top = 18
            Width = 59
            Height = 18
            Caption = 'Quantity :'
            TabOrder = 0
          end
          object edtQuantity: TEdit
            Left = 94
            Top = 16
            Width = 68
            Height = 22
            NumbersOnly = True
            TabOrder = 1
            OnChange = edtChange
          end
        end
      end
    end
    object pnl1Title: TPanel
      Left = 5
      Top = 5
      Width = 385
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      Color = 2499101
      ParentBackground = False
      TabOrder = 1
      object txtClass: TLabel
        Left = 10
        Top = 5
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
        Width = 365
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
        OnChange = edtChange
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 220
      Width = 385
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
      object btnApply: TButton
        Left = 221
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 0
        OnClick = btnApplyClick
      end
      object btnOK: TButton
        Left = 140
        Top = 5
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 302
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
