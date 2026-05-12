object frmAvailableCountermeasure: TfrmAvailableCountermeasure
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 462
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbSingle: TListBox
    Left = 8
    Top = 8
    Width = 330
    Height = 376
    ItemHeight = 13
    TabOrder = 0
    OnClick = lbSingleClick
    OnDblClick = lbSingleDblClick
  end
  object btnClose: TButton
    Left = 263
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object btnCopy: TButton
    Left = 93
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Copy'
    TabOrder = 2
    OnClick = btnCopyClick
  end
  object btnEdit: TButton
    Left = 178
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnNew: TButton
    Left = 8
    Top = 390
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 4
    OnClick = btnNewClick
  end
  object btnRemove: TButton
    Left = 263
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = btnRemoveClick
  end
  object btnUsage: TButton
    Left = 178
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Usage'
    TabOrder = 6
    OnClick = btnUsageClick
  end
  object btnFilter: TButton
    Left = 8
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Filter >>'
    Enabled = False
    TabOrder = 7
  end
end
