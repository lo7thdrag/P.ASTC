object FormationMemberForm: TFormationMemberForm
  Left = 0
  Top = 0
  Caption = 'Formation Platform List'
  ClientHeight = 395
  ClientWidth = 317
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
  object lstFormationPlatform: TListBox
    Left = 8
    Top = 8
    Width = 297
    Height = 345
    ItemHeight = 13
    TabOrder = 0
    OnClick = lstFormationPlatformClick
  end
  object btOk: TButton
    Left = 153
    Top = 359
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btOkClick
  end
  object btCancel: TButton
    Left = 234
    Top = 359
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btCancelClick
  end
end
