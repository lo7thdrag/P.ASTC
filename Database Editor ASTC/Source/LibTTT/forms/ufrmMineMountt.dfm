object frmMineMount: TfrmMineMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Mine Mount'
  ClientHeight = 401
  ClientWidth = 426
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
    Width = 426
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
      Top = 30
      Width = 406
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
    Width = 426
    Height = 293
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 406
      Height = 273
      ActivePage = General
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      object General: TTabSheet
        Caption = 'General'
        object lblClassName: TStaticText
          Left = 12
          Top = 18
          Width = 72
          Height = 18
          Caption = 'Class Name :'
          TabOrder = 0
        end
        object edtClassName: TEdit
          Tag = 4
          Left = 12
          Top = 41
          Width = 366
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object lblMountExtension: TStaticText
          Left = 12
          Top = 79
          Width = 104
          Height = 18
          Caption = 'Mount Extension :'
          TabOrder = 2
        end
        object cbMountExtension: TComboBox
          Left = 12
          Top = 102
          Width = 366
          Height = 22
          Style = csDropDownList
          TabOrder = 3
          OnChange = cbMountExtensionChange
          Items.Strings = (
            'Mount 1'
            'Mount 2'
            'Mount 3'
            'Mount 4'
            'Mount 5'
            'Mount 6'
            'Mount 7'
            'Mount 8'
            'Mount 9'
            'Aft Mount'
            'Forward Mount'
            'Port Mount'
            'Starboard Mount')
        end
        object lblQuantity: TStaticText
          Left = 104
          Top = 145
          Width = 59
          Height = 18
          Caption = 'Quantity :'
          TabOrder = 4
        end
        object edtQuantity: TEdit
          Left = 235
          Top = 143
          Width = 68
          Height = 22
          NumbersOnly = True
          TabOrder = 5
          OnChange = edtChange
        end
        object lblReload: TStaticText
          Left = 104
          Top = 172
          Width = 125
          Height = 18
          Caption = 'Reload/Launch Delay :'
          TabOrder = 6
        end
        object lblHourReload: TStaticText
          Left = 314
          Top = 172
          Width = 56
          Height = 18
          Caption = 'hh:mm:ss'
          TabOrder = 7
        end
        object edtReload: TMaskEdit
          Left = 235
          Top = 171
          Width = 68
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 8
          Text = '  :  :  '
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 358
    Width = 426
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 260
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 179
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 341
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
