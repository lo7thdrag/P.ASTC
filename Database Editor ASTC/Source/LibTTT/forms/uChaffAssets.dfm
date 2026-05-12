object frmChaffAssets: TfrmChaffAssets
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Chaff'
  ClientHeight = 272
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnApply: TButton
    Left = 293
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 0
    OnClick = btnApplyClick
  end
  object btnCancel: TButton
    Left = 375
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object btnOK: TButton
    Left = 211
    Top = 234
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnOKClick
  end
  object pgcChaffMountData: TPageControl
    Left = 8
    Top = 8
    Width = 440
    Height = 220
    ActivePage = tsGeneral
    TabOrder = 3
    object tsGeneral: TTabSheet
      Caption = 'General'
      object lblMinDelay: TLabel
        Left = 3
        Top = 95
        Width = 237
        Height = 13
        Caption = 'Minimum Delay Between Rounds in a Chaff Salvo:'
      end
      object lblMaxNumberChaff: TLabel
        Left = 3
        Top = 122
        Width = 274
        Height = 13
        Caption = 'Maximum Number of Chaff Blooms Fired in a Single Salvo:'
      end
      object lbl1: TLabel
        Left = 367
        Top = 95
        Width = 46
        Height = 13
        Caption = 'hh:mm:ss'
      end
      object edtMaxNumberChaff: TEdit
        Left = 296
        Top = 119
        Width = 65
        Height = 21
        TabOrder = 0
        OnChange = edtChange
        OnKeyPress = edtNumeralKeyPress
      end
      object grpChaffMount: TGroupBox
        Left = 3
        Top = 10
        Width = 427
        Height = 67
        Caption = 'Chaff Mount'
        TabOrder = 1
        object btnEditChaffMount: TButton
          Left = 140
          Top = 21
          Width = 147
          Height = 25
          Caption = 'Edit'
          TabOrder = 0
          OnClick = btnOnBoardClick
        end
      end
      object edtMinDelay: TMaskEdit
        Left = 296
        Top = 90
        Width = 68
        Height = 21
        EditMask = '!90:00:00;1;_'
        MaxLength = 8
        TabOrder = 2
        Text = '  :  :  '
        OnChange = edtChange
      end
    end
    object tsLaunchers: TTabSheet
      Caption = 'Launchers '
      ImageIndex = 1
      object grpLauncher1: TGroupBox
        Left = 3
        Top = 3
        Width = 210
        Height = 90
        Caption = 'Chaff Launcher 1'
        TabOrder = 0
        object btnLauncher1: TButton
          Tag = 1
          Left = 110
          Top = 33
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 0
          OnClick = btnLauncher1Click
        end
        object chkLauncher1: TCheckBox
          Tag = 1
          Left = 16
          Top = 37
          Width = 54
          Height = 17
          Caption = 'Valid'
          TabOrder = 1
          OnClick = chkLauncher1Click
        end
      end
      object grpLauncher2: TGroupBox
        Left = 219
        Top = 3
        Width = 210
        Height = 90
        Caption = 'Chaff Launcher 2'
        TabOrder = 1
        object chkLauncher2: TCheckBox
          Tag = 2
          Left = 16
          Top = 37
          Width = 54
          Height = 17
          Caption = 'Valid'
          TabOrder = 0
          OnClick = chkLauncher1Click
        end
        object btnLauncher2: TButton
          Tag = 2
          Left = 110
          Top = 33
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = btnLauncher1Click
        end
      end
      object grpLauncher3: TGroupBox
        Left = 3
        Top = 99
        Width = 210
        Height = 90
        Caption = 'Chaff Launcher 3'
        TabOrder = 2
        object btnLauncher3: TButton
          Tag = 3
          Left = 110
          Top = 33
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 0
          OnClick = btnLauncher1Click
        end
        object chkLauncher3: TCheckBox
          Tag = 3
          Left = 16
          Top = 37
          Width = 54
          Height = 17
          Caption = 'Valid'
          TabOrder = 1
          OnClick = chkLauncher1Click
        end
      end
      object grpLauncher4: TGroupBox
        Left = 219
        Top = 99
        Width = 210
        Height = 90
        Caption = 'Chaff Launcher 4'
        TabOrder = 3
        object chkLauncher4: TCheckBox
          Tag = 4
          Left = 16
          Top = 37
          Width = 54
          Height = 17
          Caption = 'Valid'
          TabOrder = 0
          OnClick = chkLauncher1Click
        end
        object btnLauncher4: TButton
          Tag = 4
          Left = 110
          Top = 33
          Width = 74
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = btnLauncher1Click
        end
      end
    end
    object tsSeduction: TTabSheet
      Caption = 'Seduction'
      ImageIndex = 2
      object lblTimeWeaponImpact: TLabel
        Left = 4
        Top = 48
        Width = 245
        Height = 13
        Caption = 'Time to Weapon Impact for Seduction Delpoyment:'
      end
      object lbl2: TLabel
        Left = 321
        Top = 48
        Width = 46
        Height = 13
        Caption = 'hh:mm:ss'
      end
      object chkCapable: TCheckBox
        Left = 4
        Top = 10
        Width = 60
        Height = 17
        Caption = 'Capable'
        TabOrder = 0
        OnClick = chkCapableClick
      end
      object grpProbabilitySuccess: TGroupBox
        Left = 3
        Top = 104
        Width = 426
        Height = 85
        Caption = 'Probability of Success'
        TabOrder = 1
        object lbl3: TLabel
          Left = 5
          Top = 55
          Width = 20
          Height = 13
          Caption = '0 %'
        end
        object lbl4: TLabel
          Left = 330
          Top = 55
          Width = 32
          Height = 13
          Caption = '100 %'
        end
        object trckbrProbabilitySuccess: TTrackBar
          Left = 3
          Top = 18
          Width = 354
          Height = 31
          Max = 100
          Frequency = 10
          TabOrder = 0
          OnChange = trckbrProbabilitySuccessChange
        end
        object edtProbabilitySuccess: TEdit
          Left = 363
          Top = 24
          Width = 56
          Height = 21
          TabOrder = 1
          Text = '0'
          OnChange = edtProbabilitySuccessChange
        end
      end
      object edtTimeWeaponImpact: TMaskEdit
        Left = 255
        Top = 45
        Width = 60
        Height = 21
        EditMask = '!90:00:00;1;_'
        MaxLength = 8
        TabOrder = 2
        Text = '  :  :  '
        OnChange = edtChange
      end
    end
  end
end
