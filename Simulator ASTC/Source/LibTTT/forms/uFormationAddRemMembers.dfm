object frmFormationAddRemMembers: TfrmFormationAddRemMembers
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Add/Remove Formation Members'
  ClientHeight = 374
  ClientWidth = 483
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
  object bvl1: TBevel
    Left = 8
    Top = 315
    Width = 449
    Height = 3
  end
  object lb1: TLabel
    Left = 12
    Top = 11
    Width = 50
    Height = 13
    Caption = 'Available :'
  end
  object Label1: TLabel
    Left = 283
    Top = 11
    Width = 50
    Height = 13
    Caption = 'Members :'
  end
  object lvAvailable: TListView
    Left = 12
    Top = 28
    Width = 175
    Height = 256
    Columns = <
      item
        Caption = 'Name'
        Width = 150
      end>
    TabOrder = 0
    ViewStyle = vsReport
    OnSelectItem = lvAvailableSelectItem
  end
  object lvMembers: TListView
    Left = 281
    Top = 28
    Width = 175
    Height = 256
    Columns = <
      item
        Caption = 'Name'
        Width = 150
      end>
    TabOrder = 1
    ViewStyle = vsReport
    OnSelectItem = lvMembersSelectItem
  end
  object btnClose: TButton
    Left = 383
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object btnAdd: TButton
    Left = 195
    Top = 124
    Width = 80
    Height = 25
    Caption = 'Add >'
    Enabled = False
    TabOrder = 3
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 195
    Top = 154
    Width = 80
    Height = 25
    Caption = '< Remove'
    Enabled = False
    TabOrder = 4
    OnClick = btnRemoveClick
  end
  object btnEdit: TButton
    Left = 281
    Top = 285
    Width = 76
    Height = 25
    Caption = 'Edit Members'
    Enabled = False
    TabOrder = 5
    OnClick = btnEditClick
  end
end
