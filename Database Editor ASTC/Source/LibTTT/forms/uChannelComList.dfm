object fChannelComList: TfChannelComList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Communication Channel'
  ClientHeight = 380
  ClientWidth = 413
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
  object pnlAction: TPanel
    Left = 0
    Top = 340
    Width = 413
    Height = 40
    Align = alBottom
    TabOrder = 0
    object btnNew: TButton
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Caption = 'New'
      TabOrder = 0
      OnClick = btnNewClick
    end
    object btnUsage: TButton
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Usage'
      TabOrder = 1
      Visible = False
    end
    object btnRemove: TButton
      Left = 248
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Remove'
      TabOrder = 2
      OnClick = btnRemoveClick
    end
    object btnEdit: TButton
      Left = 167
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 3
      OnClick = btnEditClick
    end
    object btnClose: TButton
      Left = 329
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 4
      OnClick = btnCloseClick
    end
    object btnFilter: TButton
      Left = 8
      Top = 37
      Width = 75
      Height = 25
      Caption = '>>Filter'
      Enabled = False
      TabOrder = 5
      Visible = False
    end
  end
  object pnlData: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 340
    Align = alClient
    Caption = 'pnlData'
    TabOrder = 1
    object lbChannelList: TListBox
      Left = 1
      Top = 1
      Width = 411
      Height = 338
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbChannelListClick
      OnDblClick = lbChannelListDblClick
    end
  end
end
