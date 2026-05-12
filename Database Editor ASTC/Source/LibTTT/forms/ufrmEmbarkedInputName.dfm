object frmEmbarkedInputName: TfrmEmbarkedInputName
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 157
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 109
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 320
    ExplicitHeight = 99
    object pnlPlatformInstance: TPanel
      Left = 10
      Top = 10
      Width = 392
      Height = 89
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 300
      ExplicitHeight = 79
      object lblName: TLabel
        Left = 3
        Top = 18
        Width = 33
        Height = 14
        Caption = 'Class :'
      end
      object lblTrackID: TLabel
        Left = 3
        Top = 45
        Width = 55
        Height = 14
        Caption = 'Quantity :'
      end
      object edtQuantity: TEdit
        Left = 63
        Top = 42
        Width = 58
        Height = 22
        MaxLength = 7
        NumbersOnly = True
        TabOrder = 0
        Text = '0'
      end
      object edtClass: TEdit
        Left = 63
        Top = 14
        Width = 322
        Height = 22
        Enabled = False
        TabOrder = 1
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 114
    Width = 412
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 141
    ExplicitWidth = 330
    object btnCancel: TButton
      Left = 320
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 240
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 109
    Width = 412
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -291
    ExplicitTop = 152
    ExplicitWidth = 621
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 412
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
