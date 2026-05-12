object frmEffectsTable: TfrmEffectsTable
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Usage Report'
  ClientHeight = 488
  ClientWidth = 779
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
  object btnApply: TButton
    Left = 696
    Top = 454
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 0
    OnClick = btnApplyClick
  end
  object btnCancel: TButton
    Left = 615
    Top = 454
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object btnOk: TButton
    Left = 534
    Top = 454
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnOkClick
  end
  object strGrdEffectTable: TStringGrid
    Left = 8
    Top = 8
    Width = 763
    Height = 440
    ColCount = 2
    DefaultColWidth = 50
    RowCount = 2
    TabOrder = 3
    OnSelectCell = strGrdEffectTableSelectCell
  end
  object edtInput: TEdit
    Left = 224
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
    OnExit = edtInputExit
    OnKeyPress = edtInputKeyPress
  end
end
