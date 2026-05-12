object fSonobuoySelect: TfSonobuoySelect
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sonobuoy Selection'
  ClientHeight = 370
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 8
    Top = 371
    Width = 610
    Height = 2
  end
  object lbAllSonobuoy: TListBox
    Left = 8
    Top = 8
    Width = 257
    Height = 326
    ItemHeight = 13
    TabOrder = 0
    OnClick = lbAllSonobuoyClick
    OnDblClick = lbAllSonobuoyDblClick
  end
  object btnAdd: TButton
    Left = 275
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Add ->'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 275
    Top = 175
    Width = 75
    Height = 25
    Caption = '<- Remove'
    TabOrder = 2
    OnClick = btnRemoveClick
  end
  object btnClose: TButton
    Left = 543
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object lbSonobuoySel: TListBox
    Left = 361
    Top = 8
    Width = 257
    Height = 326
    ItemHeight = 13
    TabOrder = 4
    OnClick = lbSonobuoySelClick
    OnDblClick = lbSonobuoySelDblClick
  end
  object btnEdit: TButton
    Left = 170
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Edit...'
    TabOrder = 5
    Visible = False
    OnClick = btnEditClick
  end
  object btnCopy: TButton
    Left = 89
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Copy...'
    Enabled = False
    TabOrder = 6
    Visible = False
    OnClick = btnCopyClick
  end
  object btnNew: TButton
    Left = 8
    Top = 340
    Width = 75
    Height = 25
    Caption = 'New...'
    TabOrder = 7
    Visible = False
    OnClick = btnNewClick
  end
  object btnEditMount: TButton
    Left = 463
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Edit...'
    Enabled = False
    TabOrder = 8
    Visible = False
    OnClick = btnEditMountClick
  end
  object btnFilter: TButton
    Left = 8
    Top = 379
    Width = 75
    Height = 25
    Caption = '>> Filter'
    Enabled = False
    TabOrder = 9
    OnClick = btnEditClick
  end
end
