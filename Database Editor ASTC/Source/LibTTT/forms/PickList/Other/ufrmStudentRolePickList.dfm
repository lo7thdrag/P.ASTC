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
    Height = 327
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 322
    object lbAllStudent: TListBox
      Left = 10
      Top = 10
      Width = 254
      Height = 307
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbAllStudentClick
      OnDblClick = btnAddClick
      ExplicitHeight = 302
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 327
    Width = 274
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object btnCancel: TButton
      Left = 189
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnAdd: TButton
      Left = 109
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Pick'
      TabOrder = 1
      OnClick = btnAddClick
    end
  end
end
