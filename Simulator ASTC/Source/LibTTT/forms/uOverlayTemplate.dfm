object frmOverlayTemplate: TfrmOverlayTemplate
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Overlay Template'
  ClientHeight = 423
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOverlayTemplate: TPanel
    Left = -4
    Top = 0
    Width = 349
    Height = 441
    TabOrder = 0
    object grpNameOverlay: TGroupBox
      Left = 16
      Top = 8
      Width = 305
      Height = 81
      TabOrder = 0
      object lblNameOverlay: TLabel
        Left = 16
        Top = 24
        Width = 34
        Height = 13
        Caption = 'Name :'
      end
      object edtNameOverlay: TEdit
        Left = 80
        Top = 21
        Width = 209
        Height = 21
        TabOrder = 0
        Text = 'New Overlay'
      end
    end
    object grpTypeOverlay: TGroupBox
      Left = 16
      Top = 95
      Width = 305
      Height = 266
      Caption = 'Type'
      TabOrder = 1
      object rbDynamic: TRadioButton
        Left = 16
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Dynamic'
        TabOrder = 0
        OnClick = rbDynamicClick
      end
      object rbStatic: TRadioButton
        Left = 16
        Top = 47
        Width = 113
        Height = 17
        Caption = 'Static'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbStaticClick
      end
      object grpDomain: TGroupBox
        Left = 16
        Top = 88
        Width = 273
        Height = 161
        Caption = 'Domain'
        TabOrder = 2
      end
    end
    object rbAir: TRadioButton
      Left = 80
      Top = 213
      Width = 113
      Height = 17
      Caption = 'Air'
      TabOrder = 2
    end
    object rbSurface: TRadioButton
      Left = 80
      Top = 236
      Width = 113
      Height = 17
      Caption = 'Surface'
      Checked = True
      TabOrder = 3
      TabStop = True
    end
    object rbSubsurface: TRadioButton
      Left = 80
      Top = 259
      Width = 113
      Height = 17
      Caption = 'Subsurface'
      TabOrder = 4
    end
    object btnOk: TButton
      Left = 160
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 5
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 246
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = btnCancelClick
    end
    object rbGeneral: TRadioButton
      Left = 80
      Top = 305
      Width = 113
      Height = 17
      Caption = 'General'
      TabOrder = 7
    end
    object rbLand: TRadioButton
      Left = 80
      Top = 282
      Width = 113
      Height = 17
      Caption = 'Land'
      TabOrder = 8
    end
  end
end
