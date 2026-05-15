object frmResorceAllocationPickList: TfrmResorceAllocationPickList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Resource Allocation List'
  ClientHeight = 419
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClick = btnAddClick
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 384
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lbAvailableResAlloc: TListBox
      Left = 10
      Top = 10
      Width = 260
      Height = 364
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbAvailableResAllocClick
      OnDblClick = lbAvailableResAllocDblClick
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 384
    Width = 280
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object btnCancel: TButton
      Left = 195
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnAdd: TButton
      Left = 115
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Pick'
      TabOrder = 1
      OnClick = btnAddClick
    end
  end
end
