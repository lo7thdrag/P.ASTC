object frmLauncherList: TfrmLauncherList
  Left = 0
  Top = 0
  Caption = 'Launcher'
  ClientHeight = 457
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lstLauncher: TListBox
    Left = 8
    Top = 8
    Width = 330
    Height = 376
    ItemHeight = 13
    TabOrder = 0
    OnClick = lstLauncherClick
    OnDblClick = lstLauncherDblClick
  end
  object btnNew: TButton
    Left = 8
    Top = 390
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 1
    OnClick = btnNewClick
  end
  object btnEdit: TButton
    Left = 93
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btnEditClick
  end
  object btnRemove: TButton
    Left = 178
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 3
    OnClick = btnRemoveClick
  end
  object btnClose: TButton
    Left = 263
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    OnClick = btnCloseClick
  end
end
