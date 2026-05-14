object frmGameDefaultsPickList: TfrmGameDefaultsPickList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Game Defaults Selection'
  ClientHeight = 415
  ClientWidth = 277
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
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 0
    Width = 277
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 367
    object lbGameDefaultAvailable: TListBox
      Left = 10
      Top = 10
      Width = 257
      Height = 352
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbGameDefaultAvailableClick
      OnDblClick = lbGameDefaultAvailableDblClick
      ExplicitHeight = 347
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 372
    Width = 277
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object btnCancel: TButton
      Left = 192
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnAdd: TButton
      Left = 112
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Pick'
      TabOrder = 1
      OnClick = btnAddClick
    end
  end
end
