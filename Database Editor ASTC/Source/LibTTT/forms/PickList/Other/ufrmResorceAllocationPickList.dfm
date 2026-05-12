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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 371
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 270
    ExplicitHeight = 361
    object lbAvailableResAlloc: TListBox
      Left = 10
      Top = 10
      Width = 260
      Height = 351
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbAvailableResAllocClick
      OnDblClick = lbAvailableResAllocDblClick
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 376
    Width = 280
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 371
    ExplicitWidth = 270
    object btnCancel: TButton
      Left = 195
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnAdd: TButton
      Left = 115
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Pick'
      TabOrder = 1
      OnClick = btnAddClick
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 371
    Width = 280
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -68
    ExplicitTop = 411
    ExplicitWidth = 348
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 280
      Height = 5
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitWidth = 8
      ExplicitHeight = 637
    end
  end
end
