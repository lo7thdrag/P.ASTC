object frmSummaryEnvironment: TfrmSummaryEnvironment
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Environment'
  ClientHeight = 296
  ClientWidth = 392
  Color = clBtnFace
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
    Width = 392
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
      Left = 10
      Top = 12
      Width = 112
      Height = 14
      Caption = 'Environment Name :'
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
      Top = 31
      Width = 364
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
    Width = 392
    Height = 188
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 372
      Height = 168
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      object tsGeneral: TTabSheet
        Caption = 'General'
        object btnBrowseGameArea: TSpeedButton
          Left = 324
          Top = 42
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = btnBrowseGameAreaClick
        end
        object lblArea: TStaticText
          Left = 10
          Top = 20
          Width = 72
          Height = 18
          Caption = 'Game Area :'
          TabOrder = 0
        end
        object edtArea: TEdit
          Left = 10
          Top = 42
          Width = 309
          Height = 22
          Enabled = False
          TabOrder = 1
          Text = '[None]'
        end
        object btnEditCharacteristics: TButton
          Left = 10
          Top = 83
          Width = 150
          Height = 25
          Caption = 'Edit Characteristics...'
          TabOrder = 2
          OnClick = btnEditCharacteristicsClick
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 253
    Width = 392
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 217
      Top = 0
      Width = 80
      Height = 30
      Cursor = crHandPoint
      Caption = 'Apply'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 302
      Top = 0
      Width = 80
      Height = 30
      Cursor = crHandPoint
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 132
      Top = 0
      Width = 80
      Height = 30
      Cursor = crHandPoint
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
