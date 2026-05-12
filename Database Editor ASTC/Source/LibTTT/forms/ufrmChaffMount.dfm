object frmChaffMountForm: TfrmChaffMountForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Chaff'
  ClientHeight = 325
  ClientWidth = 406
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
    Width = 406
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl2ControlPage: TPanel
      Left = 5
      Top = 75
      Width = 396
      Height = 197
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 10
        Top = 10
        Width = 376
        Height = 177
        ActivePage = General
        Align = alClient
        TabHeight = 25
        TabOrder = 0
        TabWidth = 75
        object General: TTabSheet
          Caption = 'General'
          object lblClass: TLabel
            Left = 15
            Top = 18
            Width = 64
            Height = 14
            Caption = 'Class Name:'
          end
          object txtQuantity: TStaticText
            Left = 15
            Top = 79
            Width = 59
            Height = 18
            Caption = 'Quantity :'
            TabOrder = 0
          end
          object edtQuantity: TEdit
            Left = 82
            Top = 75
            Width = 68
            Height = 22
            NumbersOnly = True
            TabOrder = 1
            OnChange = edtChange
          end
          object edtClass: TEdit
            Tag = 4
            Left = 15
            Top = 41
            Width = 306
            Height = 22
            Enabled = False
            TabOrder = 2
          end
        end
      end
    end
    object pnlSparatorHor1: TPanel
      Left = 5
      Top = 70
      Width = 396
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
    end
    object pnl1Title: TPanel
      Left = 5
      Top = 5
      Width = 396
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
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
      object cbbName: TComboBox
        Left = 10
        Top = 27
        Width = 372
        Height = 22
        Style = csDropDownList
        TabOrder = 0
        Items.Strings = (
          'Barrier'
          'Confusion'
          'Distraction'
          'Seduction'
          'Surface'
          'Aircraft'
          'Gun')
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 277
      Width = 396
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 3
      object btnApply: TButton
        Left = 226
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 0
        OnClick = btnApplyClick
      end
      object btnOK: TButton
        Left = 145
        Top = 6
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 307
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
    object pnlSparatorHor2: TPanel
      Left = 5
      Top = 272
      Width = 396
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 4
    end
  end
end
