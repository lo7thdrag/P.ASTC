object frmfIRmount: TfrmfIRmount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Infrared Decoy'
  ClientHeight = 269
  ClientWidth = 398
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
    Width = 398
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
      Top = 27
      Width = 378
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
    Width = 398
    Height = 161
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 152
    object pgc1: TPageControl
      Left = 10
      Top = 10
      Width = 378
      Height = 141
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      ExplicitHeight = 132
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 92
        object txtQuantity: TStaticText
          Left = 9
          Top = 23
          Width = 63
          Height = 18
          Caption = 'Quantity  :'
          TabOrder = 0
        end
        object edtQuantity: TEdit
          Left = 79
          Top = 21
          Width = 68
          Height = 22
          TabOrder = 1
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 226
    Width = 398
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 218
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 137
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 299
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
