object frmIFFMount: TfrmIFFMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   IFF'
  ClientHeight = 392
  ClientWidth = 432
  Color = clBtnFace
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
    Width = 432
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
      Left = 10
      Top = 7
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
      Width = 411
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
    Width = 432
    Height = 284
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 274
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 412
      Height = 264
      ActivePage = General
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      ExplicitHeight = 254
      object General: TTabSheet
        Caption = 'General'
        ExplicitHeight = 214
        object lblCapability: TStaticText
          Left = 19
          Top = 28
          Width = 62
          Height = 18
          Caption = 'Capability :'
          TabOrder = 0
        end
        object cbbCapability: TComboBox
          Left = 96
          Top = 26
          Width = 140
          Height = 22
          TabOrder = 1
          Items.Strings = (
            'Automatic/Designated'
            'Designated')
        end
        object txtAntenna: TStaticText
          Left = 19
          Top = 53
          Width = 99
          Height = 18
          Caption = 'Antenna Height :'
          TabOrder = 2
        end
        object edtAntenna: TEdit
          Left = 168
          Top = 51
          Width = 68
          Height = 22
          TabOrder = 3
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object txtSubmerged: TStaticText
          Left = 19
          Top = 79
          Width = 166
          Height = 18
          Caption = 'Submerged Antenna Height :'
          TabOrder = 4
        end
        object edtSubmerged: TEdit
          Left = 168
          Top = 77
          Width = 68
          Height = 22
          TabOrder = 5
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object lblMaxOperational: TStaticText
          Left = 19
          Top = 105
          Width = 166
          Height = 18
          Caption = 'Maximum Operational Depth :'
          TabOrder = 6
        end
        object edtMaxOperational: TEdit
          Left = 168
          Top = 103
          Width = 68
          Height = 22
          TabOrder = 7
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object txtFeetAntenna: TStaticText
          Left = 242
          Top = 53
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 8
        end
        object txtFeetSubmerged: TStaticText
          Left = 242
          Top = 79
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 9
        end
        object txtFeetMaxOperational: TStaticText
          Left = 242
          Top = 105
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 10
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 349
    Width = 432
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 344
    object btnApply: TButton
      Left = 267
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 186
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 348
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
