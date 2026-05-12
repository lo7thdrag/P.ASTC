object FormationResourcesForm: TFormationResourcesForm
  Left = 0
  Top = 0
  Caption = 'Formation Resources'
  ClientHeight = 415
  ClientWidth = 624
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
  object Shape1: TShape
    Left = 8
    Top = 371
    Width = 610
    Height = 2
  end
  object lstAvailablePlatforms: TListBox
    Left = 8
    Top = 8
    Width = 266
    Height = 326
    ItemHeight = 13
    TabOrder = 7
    OnClick = lstAvailablePlatformsClick
    OnDblClick = lstAvailablePlatformsDblClick
  end
  object btnCopy: TButton
    Left = 89
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Copy...'
    TabOrder = 0
  end
  object btnEdit: TButton
    Left = 170
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Edit...'
    TabOrder = 1
  end
  object btnNew: TButton
    Left = 8
    Top = 340
    Width = 75
    Height = 25
    Caption = 'New...'
    TabOrder = 2
  end
  object btnFilter: TButton
    Left = 8
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Filter'
    TabOrder = 3
  end
  object btnRemove: TButton
    Left = 462
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 4
    OnClick = btnRemoveClick
  end
  object btnClose: TButton
    Left = 543
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = btnCloseClick
  end
  object btnAdd: TButton
    Left = 280
    Top = 144
    Width = 66
    Height = 25
    Caption = 'Add ->'
    TabOrder = 6
    OnClick = btnAddClick
  end
  object lstSelectedPlatforms: TListBox
    Left = 352
    Top = 8
    Width = 266
    Height = 326
    ItemHeight = 13
    TabOrder = 8
    OnClick = lstSelectedPlatformsClick
    OnDblClick = lstSelectedPlatformsDblClick
  end
  object btnEditTrack: TButton
    Left = 543
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 9
    OnClick = btnRemoveClick
  end
end
