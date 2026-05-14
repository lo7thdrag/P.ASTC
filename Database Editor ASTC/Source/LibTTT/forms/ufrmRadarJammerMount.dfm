object frmRadarJammerMount: TfrmRadarJammerMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Radar Jammer Mount'
  ClientHeight = 302
  ClientWidth = 389
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
    Width = 389
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl2ControlPage: TPanel
      Left = 5
      Top = 70
      Width = 379
      Height = 184
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 75
      ExplicitHeight = 174
      object PageControl1: TPageControl
        Left = 10
        Top = 10
        Width = 359
        Height = 164
        ActivePage = General
        Align = alClient
        TabHeight = 30
        TabOrder = 0
        TabWidth = 75
        ExplicitHeight = 154
        object General: TTabSheet
          Caption = 'General'
          ExplicitHeight = 114
          object txtAntenna: TStaticText
            Left = 21
            Top = 18
            Width = 99
            Height = 18
            Caption = 'Antenna Height :'
            TabOrder = 0
          end
          object edtAntenna: TEdit
            Left = 134
            Top = 17
            Width = 68
            Height = 22
            TabOrder = 1
          end
          object txtFeetAntenna: TStaticText
            Left = 208
            Top = 19
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 2
          end
        end
      end
    end
    object pnl1Title: TPanel
      Left = 5
      Top = 5
      Width = 379
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
        Width = 359
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
      Top = 254
      Width = 379
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
      object btnApply: TButton
        Left = 213
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 0
        OnClick = btnApplyClick
      end
      object btnOK: TButton
        Left = 132
        Top = 5
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 294
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
