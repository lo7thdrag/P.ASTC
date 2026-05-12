object TorpedoLauncherForm: TTorpedoLauncherForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Torpedo Launcher'
  ClientHeight = 263
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlName: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblName: TStaticText
      Left = 10
      Top = 10
      Width = 38
      Height = 17
      Caption = 'Name :'
      TabOrder = 0
    end
    object cbbName: TComboBox
      Left = 10
      Top = 24
      Width = 314
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Launcher 1'
      OnChange = ComboBoxDataChange
      Items.Strings = (
        'Launcher 1'
        'Launcher 2'
        'Launcher 3'
        'Launcher 4'
        'Launcher 5'
        'Launcher 6'
        'Launcher 7'
        'Launcher 8'
        'Torpedo Tube 1'
        'Torpedo Tube 2'
        'Torpedo Tube 3'
        'Torpedo Tube 4'
        'Torpedo Tube 5'
        'Torpedo Tube 6'
        'Torpedo Tube 7'
        'Torpedo Tube 8')
    end
  end
  object pnlAction: TPanel
    Left = 0
    Top = 223
    Width = 334
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnApply: TButton
      Left = 168
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 249
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 87
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
  object pnlData: TPanel
    Left = 0
    Top = 50
    Width = 334
    Height = 173
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 10
      Top = 6
      Width = 314
      Height = 167
      ActivePage = General
      TabOrder = 0
      object General: TTabSheet
        Caption = 'General'
        object txtMaxQuantity: TStaticText
          Left = 3
          Top = 27
          Width = 100
          Height = 17
          Caption = 'Maximum Quantity :'
          TabOrder = 0
        end
        object edtMaxQuantity: TEdit
          Left = 154
          Top = 25
          Width = 67
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 75
          Width = 300
          Height = 61
          TabOrder = 2
          object txtAngle: TStaticText
            Left = 10
            Top = 28
            Width = 38
            Height = 17
            Caption = 'Angle :'
            TabOrder = 0
          end
          object edtAngle: TEdit
            Left = 151
            Top = 26
            Width = 68
            Height = 21
            NumbersOnly = True
            TabOrder = 1
            OnChange = edtChange
            OnKeyPress = edtAngleKeyPress
          end
        end
        object chkAngleRequired: TCheckBox
          Left = 13
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Angle Required'
          TabOrder = 3
          OnClick = chkAngleRequiredClick
        end
      end
    end
  end
end
