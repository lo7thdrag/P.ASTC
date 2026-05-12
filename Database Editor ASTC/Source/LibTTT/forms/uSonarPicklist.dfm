object fSonarPicklist: TfSonarPicklist
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Sonars'
  ClientHeight = 453
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbSonar: TListBox
    Left = 9
    Top = 8
    Width = 330
    Height = 376
    ItemHeight = 13
    TabOrder = 0
    OnClick = lbSonarClick
    OnDblClick = lbSonarDblClick
  end
  object btnClose: TButton
    Left = 267
    Top = 421
    Width = 72
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object btnEdit: TButton
    Left = 181
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Edit...'
    TabOrder = 2
    OnClick = btnEditClick
  end
  object btnCopy: TButton
    Left = 95
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Copy'
    TabOrder = 3
    OnClick = btnCopyClick
  end
  object btnNew: TButton
    Left = 9
    Top = 390
    Width = 75
    Height = 25
    Caption = 'New...'
    TabOrder = 4
    OnClick = btnNewClick
  end
  object btnRemove: TButton
    Left = 267
    Top = 390
    Width = 72
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = btnRemoveClick
  end
  object btnUsage: TButton
    Left = 181
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Usage'
    TabOrder = 6
    OnClick = btnUsageClick
  end
  object btnFilter: TButton
    Left = 9
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Filter >>'
    Enabled = False
    TabOrder = 7
    Visible = False
  end
end
