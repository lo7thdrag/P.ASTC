object fSelectRecipient: TfSelectRecipient
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Select Recipient'
  ClientHeight = 459
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNameRecipient: TLabel
    Left = 8
    Top = 16
    Width = 150
    Height = 13
    Caption = 'Type Name Or Select From Unit'
  end
  object lblTo: TLabel
    Left = 308
    Top = 53
    Width = 12
    Height = 13
    Caption = 'To'
  end
  object lblInfo: TLabel
    Left = 308
    Top = 229
    Width = 20
    Height = 13
    Caption = 'Info'
  end
  object edtNameRecipient: TEdit
    Left = 8
    Top = 35
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object lvName: TListView
    Left = 8
    Top = 72
    Width = 209
    Height = 316
    Columns = <
      item
        Caption = 'Name'
        Width = 200
      end>
    MultiSelect = True
    TabOrder = 1
    ViewStyle = vsReport
  end
  object lvTo: TListView
    Left = 308
    Top = 72
    Width = 210
    Height = 137
    Columns = <
      item
        Caption = 'Name'
        Width = 200
      end>
    MultiSelect = True
    TabOrder = 2
    ViewStyle = vsReport
  end
  object lvInfo: TListView
    Left = 312
    Top = 248
    Width = 210
    Height = 140
    Columns = <
      item
        Caption = 'Name'
        Width = 200
      end>
    MultiSelect = True
    TabOrder = 3
    ViewStyle = vsReport
  end
  object btnAddTo: TButton
    Left = 242
    Top = 112
    Width = 50
    Height = 25
    Caption = 'To -->'
    TabOrder = 4
    OnClick = btnAddToClick
  end
  object btnRemoveTo: TButton
    Left = 242
    Top = 143
    Width = 50
    Height = 25
    Caption = '<-- To'
    TabOrder = 5
    OnClick = btnRemoveToClick
  end
  object btnAddInfo: TButton
    Left = 242
    Top = 288
    Width = 50
    Height = 25
    Caption = 'Info -->'
    TabOrder = 6
    OnClick = btnAddInfoClick
  end
  object btnRemoveInfo: TButton
    Left = 242
    Top = 319
    Width = 50
    Height = 25
    Caption = '<-- Info'
    TabOrder = 7
    OnClick = btnRemoveInfoClick
  end
  object btnOk: TButton
    Left = 192
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 8
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 273
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 9
    OnClick = btnCancelClick
  end
end
