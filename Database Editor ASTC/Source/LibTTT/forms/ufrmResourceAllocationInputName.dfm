object frmResourceAllocationInputName: TfrmResourceAllocationInputName
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 157
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 114
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 109
    object pnlPlatformInstance: TPanel
      Left = 10
      Top = 10
      Width = 310
      Height = 94
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 89
      object lblName: TLabel
        Left = 3
        Top = 18
        Width = 34
        Height = 13
        Caption = 'Name :'
      end
      object lblTrackID: TLabel
        Left = 3
        Top = 45
        Width = 47
        Height = 13
        Caption = 'Track ID :'
      end
      object cbbName: TComboBox
        Left = 63
        Top = 15
        Width = 235
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbbNameChange
      end
      object edtTrackId: TEdit
        Left = 63
        Top = 42
        Width = 81
        Height = 21
        MaxLength = 7
        TabOrder = 1
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 114
    Width = 330
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    object btnCancel: TButton
      Left = 233
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 153
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
end
