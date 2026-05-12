object frmSummarySelfDefensiveJammer: TfrmSummarySelfDefensiveJammer
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Defensive Jammer'
  ClientHeight = 484
  ClientWidth = 420
  Color = clBtnFace
  DoubleBuffered = True
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
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblClass: TLabel
      Left = 10
      Top = 10
      Width = 39
      Height = 16
      Caption = 'Class :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtClass: TEdit
      Tag = 4
      Left = 10
      Top = 31
      Width = 400
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 70
    Width = 420
    Height = 366
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 400
      Height = 346
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object lblECMType: TLabel
          Left = 16
          Top = 16
          Width = 63
          Height = 14
          Caption = 'ECM Type :'
        end
        object grbTargetSelection: TGroupBox
          Left = 16
          Top = 44
          Width = 353
          Height = 50
          Caption = ' Target Selection   '
          TabOrder = 0
          object cbxTARHMissiles: TCheckBox
            Left = 16
            Top = 20
            Width = 97
            Height = 17
            Caption = 'TARH Missiles'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object cbxFireControlRadar: TCheckBox
            Left = 197
            Top = 20
            Width = 127
            Height = 17
            Caption = 'Fire Control Radars'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object cbECMType: TComboBox
          Left = 94
          Top = 16
          Width = 51
          Height = 22
          Style = csDropDownList
          TabOrder = 1
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'A'
            'B'
            'C')
        end
        object grbProbOfSuccess: TGroupBox
          Left = 17
          Top = 107
          Width = 353
          Height = 177
          Caption = ' Probability of Success vs. ECCM Type (%)   '
          TabOrder = 2
          object lblTypeA: TLabel
            Left = 12
            Top = 25
            Width = 48
            Height = 14
            Caption = 'Type A :'
          end
          object mnlbl2: TLabel
            Left = 279
            Top = 54
            Width = 21
            Height = 14
            Caption = '100'
          end
          object lblTypeB: TLabel
            Left = 12
            Top = 74
            Width = 47
            Height = 14
            Caption = 'Type B :'
          end
          object mnlbl3: TLabel
            Left = 86
            Top = 104
            Width = 7
            Height = 14
            Caption = '0'
          end
          object mnlbl4: TLabel
            Left = 279
            Top = 104
            Width = 21
            Height = 14
            Caption = '100'
          end
          object lblTypeC: TLabel
            Left = 12
            Top = 123
            Width = 47
            Height = 14
            Caption = 'Type C :'
          end
          object mnlbl5: TLabel
            Left = 86
            Top = 153
            Width = 7
            Height = 14
            Caption = '0'
          end
          object mnlbl6: TLabel
            Left = 279
            Top = 153
            Width = 21
            Height = 14
            Caption = '100'
          end
          object mnlbl1: TLabel
            Left = 86
            Top = 54
            Width = 7
            Height = 14
            Caption = '0'
          end
          object edtTypeA: TEdit
            Left = 306
            Top = 25
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
          object TrackBarTypeA: TTrackBar
            Left = 77
            Top = 25
            Width = 225
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
          object edtTypeB: TEdit
            Tag = 1
            Left = 306
            Top = 74
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 2
            Text = '0'
            OnChange = edtGeneralChange
          end
          object TrackBarTypeB: TTrackBar
            Tag = 1
            Left = 77
            Top = 74
            Width = 225
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 3
            OnChange = trckbrGeneralChange
          end
          object edtTypeC: TEdit
            Tag = 2
            Left = 306
            Top = 123
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 4
            Text = '0'
            OnChange = edtGeneralChange
          end
          object TrackBarTypeC: TTrackBar
            Tag = 2
            Left = 77
            Top = 123
            Width = 225
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 5
            OnChange = trckbrGeneralChange
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 372
          Height = 286
          Align = alClient
          Lines.Strings = (
            '')
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 441
    Width = 420
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnOK: TButton
      Left = 176
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnApply: TButton
      Left = 256
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 335
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 420
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 420
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
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 436
    Width = 420
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 420
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
