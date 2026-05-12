object fNewMessage: TfNewMessage
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'New Message'
  ClientHeight = 454
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblFrom: TLabel
    Left = 8
    Top = 14
    Width = 24
    Height = 13
    Caption = 'From'
  end
  object lblPriority: TLabel
    Left = 8
    Top = 108
    Width = 34
    Height = 13
    Caption = 'Priority'
  end
  object lblBand: TLabel
    Left = 365
    Top = 107
    Width = 88
    Height = 13
    Caption = 'Transmission Band'
  end
  object lblSubject: TLabel
    Left = 8
    Top = 135
    Width = 36
    Height = 13
    Caption = 'Subject'
  end
  object btnTo: TButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = 'To'
    TabOrder = 0
    OnClick = btnToClick
  end
  object btnInfo: TButton
    Left = 8
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Info'
    TabOrder = 1
  end
  object edtTo: TEdit
    Left = 89
    Top = 40
    Width = 432
    Height = 21
    TabOrder = 2
  end
  object edtInfo: TEdit
    Left = 89
    Top = 72
    Width = 432
    Height = 21
    TabOrder = 3
  end
  object btnSave: TButton
    Left = 284
    Top = 411
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object btnSend: TButton
    Left = 365
    Top = 411
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 5
    OnClick = btnSendClick
  end
  object btnCancel: TButton
    Left = 446
    Top = 411
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 6
    OnClick = btnCancelClick
  end
  object mmoDisplay: TMemo
    Left = 12
    Top = 158
    Width = 513
    Height = 247
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object edtFrom: TEdit
    Left = 89
    Top = 8
    Width = 432
    Height = 21
    TabOrder = 8
  end
  object cbbPrior: TComboBox
    Left = 89
    Top = 104
    Width = 114
    Height = 21
    ItemIndex = 0
    TabOrder = 9
    Text = 'FLASH'
    Items.Strings = (
      'FLASH'
      'IMMED'
      'PRIORITY'
      'ROUTINE')
  end
  object cbbBand: TComboBox
    Left = 464
    Top = 104
    Width = 57
    Height = 21
    ItemIndex = 0
    TabOrder = 10
    Text = 'HF'
    Items.Strings = (
      'HF'
      'UHF/VHF'
      'SATCOM')
  end
  object edtSubject: TEdit
    Left = 89
    Top = 131
    Width = 432
    Height = 21
    TabOrder = 11
  end
end
