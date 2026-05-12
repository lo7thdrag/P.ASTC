object frmLanding: TfrmLanding
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Landing Platform'
  ClientHeight = 302
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 8
    Top = 231
    Width = 457
    Height = 9
    Align = alNone
  end
  object lvPlaformAvailable: TListView
    Left = 8
    Top = 24
    Width = 457
    Height = 185
    Columns = <
      item
        Caption = 'Class'
        MaxWidth = 300
        MinWidth = 300
        Width = 300
      end
      item
        Caption = 'Capability'
        MaxWidth = 150
        MinWidth = 150
        Width = 150
      end>
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnSelectItem = lvPlaformAvailableSelectItem
  end
  object btnOK: TButton
    Left = 301
    Top = 261
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 390
    Top = 261
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
end
