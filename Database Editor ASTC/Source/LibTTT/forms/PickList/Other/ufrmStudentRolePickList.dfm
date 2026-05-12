object frmStudentRolePickList: TfrmStudentRolePickList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Student Role List Selection'
  ClientHeight = 370
  ClientWidth = 274
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
    Width = 274
    Height = 322
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -2
    ExplicitHeight = 323
    object lbAllStudent: TListBox
      Left = 10
      Top = 10
      Width = 254
      Height = 302
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbAllStudentClick
      OnDblClick = btnAddClick
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 327
    Width = 274
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 322
    ExplicitWidth = 264
    object btnCancel: TButton
      Left = 189
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnAdd: TButton
      Left = 109
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
    Top = 322
    Width = 274
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 274
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
      ExplicitWidth = 279
      ExplicitHeight = 4
    end
  end
end
