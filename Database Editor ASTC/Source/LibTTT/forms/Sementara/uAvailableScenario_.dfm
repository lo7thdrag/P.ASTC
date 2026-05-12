object fAvailableScenario: TfAvailableScenario
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Scenarios'
  ClientHeight = 441
  ClientWidth = 349
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
  object btNew: TButton
    Left = 8
    Top = 375
    Width = 75
    Height = 25
    Caption = 'New...'
    TabOrder = 1
    OnClick = btNewClick
  end
  object btEdit: TButton
    Left = 179
    Top = 375
    Width = 75
    Height = 25
    Caption = 'Edit...'
    TabOrder = 2
    OnClick = btEditClick
  end
  object lbScenarioList: TListBox
    Left = 8
    Top = 8
    Width = 332
    Height = 361
    ItemHeight = 13
    TabOrder = 0
    OnClick = lbScenarioListClick
    OnDblClick = lbScenarioListDblClick
  end
  object btCopy: TButton
    Left = 94
    Top = 375
    Width = 75
    Height = 25
    Caption = 'Copy'
    TabOrder = 3
    OnClick = btCopyClick
  end
  object btRemove: TButton
    Left = 265
    Top = 375
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 4
    OnClick = btRemoveClick
  end
  object btUsage: TButton
    Left = 179
    Top = 406
    Width = 75
    Height = 25
    Caption = 'Usage'
    TabOrder = 5
    OnClick = btUsageClick
  end
  object btClose: TButton
    Left = 265
    Top = 406
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 6
    OnClick = btCloseClick
  end
  object btFilter: TButton
    Left = 8
    Top = 406
    Width = 75
    Height = 25
    Caption = 'Filter >>'
    TabOrder = 7
  end
end
