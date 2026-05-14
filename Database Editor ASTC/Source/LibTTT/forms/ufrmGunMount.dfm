object frmGunMount: TfrmGunMount
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Gun Mount'
  ClientHeight = 436
  ClientWidth = 423
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 423
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
      Width = 403
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
    Width = 423
    Height = 328
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 403
      Height = 308
      ActivePage = General
      Align = alClient
      TabHeight = 25
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
          Height = 22
          Enabled = False
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
        object lblBlindZones: TStaticText
          Left = 12
          Top = 147
          Width = 74
          Height = 18
          Caption = 'Blind Zones :'
          TabOrder = 4
        end
        object lblQuantity: TStaticText
          Left = 104
          Top = 169
          Width = 59
          Height = 18
          Caption = 'Quantity :'
          TabOrder = 5
        end
        object edtQuantity: TEdit
          Left = 181
          Top = 167
          Width = 68
          Height = 22
          TabOrder = 6
          OnChange = edtQuantityChange
        end
        object pnlBlindZone: TPanel
          Left = 12
          Top = 170
          Width = 66
          Height = 65
          TabOrder = 7
          OnClick = pnlBlindZoneClick
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 393
    Width = 423
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 258
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 177
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 339
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
