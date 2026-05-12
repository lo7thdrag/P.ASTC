object frmConnectTerminate: TfrmConnectTerminate
  Left = 0
  Top = 0
  BorderWidth = 1
  Caption = 'Connect'
  ClientHeight = 451
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tvMapping: TTreeView
    Left = 16
    Top = 16
    Width = 429
    Height = 388
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Indent = 19
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 277
    Top = 419
    Width = 75
    Height = 25
    Align = alCustom
    Anchors = [akRight, akBottom]
    Caption = '&Connect'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 370
    Top = 419
    Width = 75
    Height = 25
    Align = alCustom
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
end
