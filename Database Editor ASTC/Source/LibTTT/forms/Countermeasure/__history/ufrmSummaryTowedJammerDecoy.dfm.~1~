object frmSummaryTowedJammerDecoy: TfrmSummaryTowedJammerDecoy
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Towed Jammer/Decoy'
  ClientHeight = 580
  ClientWidth = 617
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
    Width = 617
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
      Width = 598
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
    Width = 617
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 597
      Height = 442
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object lblECMType: TLabel
          Left = 14
          Top = 27
          Width = 63
          Height = 14
          Caption = 'ECM Type :'
        end
        object lblActivationControlDelay: TLabel
          Left = 14
          Top = 54
          Width = 138
          Height = 14
          Caption = 'Activation Control Delay :'
        end
        object lbl8: TLabel
          Left = 253
          Top = 54
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblTowLength: TLabel
          Left = 14
          Top = 81
          Width = 76
          Height = 14
          Caption = 'Tow Length :'
        end
        object lbl9: TLabel
          Left = 253
          Top = 81
          Width = 38
          Height = 14
          Caption = 'metres'
        end
        object grbRadarCross: TGroupBox
          Left = 369
          Top = 124
          Width = 201
          Height = 81
          Caption = ' Radar Cross-Section   '
          TabOrder = 0
          object lblSideRadarCross: TLabel
            Left = 12
            Top = 51
            Width = 31
            Height = 14
            Caption = 'Side :'
          end
          object lblFrontRadarCross: TLabel
            Left = 12
            Top = 24
            Width = 37
            Height = 14
            Caption = 'Front :'
          end
          object edtFrontRadarCross: TEdit
            Tag = 2
            Left = 61
            Top = 21
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSideRadarCross: TEdit
            Tag = 2
            Left = 61
            Top = 48
            Width = 59
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object cbFrontRadarCross: TComboBox
            Left = 126
            Top = 20
            Width = 59
            Height = 22
            Style = csDropDownList
            Color = clMenuBar
            ItemIndex = 0
            TabOrder = 2
            Text = 'dB m'#178
            OnChange = CbbGeneralDataChange
            Items.Strings = (
              'dB m'#178
              'metres'#178)
          end
          object cbSideRadarCross: TComboBox
            Tag = 1
            Left = 126
            Top = 48
            Width = 59
            Height = 22
            Style = csDropDownList
            Color = clMenuBar
            ItemIndex = 0
            TabOrder = 3
            Text = 'dB m'#178
            OnChange = CbbGeneralDataChange
            Items.Strings = (
              'dB m'#178
              'metres'#178)
          end
        end
        object grbDimensions: TGroupBox
          Left = 369
          Top = 11
          Width = 202
          Height = 108
          Caption = ' Dimensions   '
          TabOrder = 1
          object lbl1: TLabel
            Left = 156
            Top = 24
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object lblWidth: TLabel
            Left = 25
            Top = 51
            Width = 41
            Height = 14
            Caption = 'Width :'
          end
          object lbl2: TLabel
            Left = 156
            Top = 51
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object lblLength: TLabel
            Left = 25
            Top = 24
            Width = 47
            Height = 14
            Caption = 'Length :'
          end
          object lblHeight: TLabel
            Left = 25
            Top = 78
            Width = 44
            Height = 14
            Caption = 'Height :'
          end
          object lbl3: TLabel
            Left = 156
            Top = 78
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object edtLengthDimensions: TEdit
            Left = 92
            Top = 18
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtWidththDimensions: TEdit
            Left = 92
            Top = 46
            Width = 59
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHeigthDimensions: TEdit
            Left = 92
            Top = 74
            Width = 59
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbAcousticCross: TGroupBox
          Left = 369
          Top = 211
          Width = 201
          Height = 81
          Caption = ' Acoustic Cross-Section   '
          TabOrder = 2
          object lbl4: TLabel
            Left = 141
            Top = 26
            Width = 34
            Height = 14
            Caption = 'dB m'#178
          end
          object lbl5: TLabel
            Left = 142
            Top = 52
            Width = 34
            Height = 14
            Caption = 'dB m'#178
          end
          object lblFrontAcousticCross: TLabel
            Left = 26
            Top = 26
            Width = 37
            Height = 14
            Caption = 'Front :'
          end
          object lblSideAcousticCross: TLabel
            Left = 26
            Top = 53
            Width = 31
            Height = 14
            Caption = 'Side :'
          end
          object edtFrontAcousticCross: TEdit
            Tag = 2
            Left = 77
            Top = 22
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSideAcousticCross: TEdit
            Tag = 2
            Left = 77
            Top = 50
            Width = 59
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbVisualCross: TGroupBox
          Left = 369
          Top = 297
          Width = 201
          Height = 81
          Caption = ' Visual Cross-Section   '
          TabOrder = 3
          object lbl6: TLabel
            Left = 138
            Top = 25
            Width = 44
            Height = 14
            Caption = 'metres'#178
          end
          object lbl7: TLabel
            Left = 138
            Top = 52
            Width = 44
            Height = 14
            Caption = 'metres'#178
          end
          object lblSideVisualCross: TLabel
            Left = 23
            Top = 52
            Width = 31
            Height = 14
            Caption = 'Side :'
          end
          object lblFrontVisualCross: TLabel
            Left = 23
            Top = 25
            Width = 37
            Height = 14
            Caption = 'Front :'
          end
          object edtFrontVisualCross: TEdit
            Tag = 1
            Left = 73
            Top = 22
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtSideVisualCross: TEdit
            Tag = 1
            Left = 73
            Top = 50
            Width = 59
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbTargetSelection: TGroupBox
          Left = 15
          Top = 117
          Width = 330
          Height = 49
          Caption = ' Target Selection   '
          TabOrder = 4
          object cbxTARHMissiles: TCheckBox
            Left = 28
            Top = 20
            Width = 97
            Height = 17
            Caption = 'TARH Missiles'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object cbxFireControlRadars: TCheckBox
            Left = 179
            Top = 21
            Width = 123
            Height = 17
            Caption = 'Fire Control Radars'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object cbbECMType: TComboBox
          Left = 182
          Top = 23
          Width = 65
          Height = 22
          Style = csDropDownList
          TabOrder = 5
          OnChange = CheckBoxDataClick
          Items.Strings = (
            'A'
            'B'
            'C')
        end
        object edtTowLength: TEdit
          Tag = 1
          Left = 182
          Top = 77
          Width = 65
          Height = 22
          TabOrder = 6
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object grbProbOfSuccess: TGroupBox
          Left = 14
          Top = 176
          Width = 331
          Height = 202
          Caption = ' Probability of Success vs. ECCM Type (%)   '
          TabOrder = 7
          object lblTypeA: TLabel
            Left = 11
            Top = 36
            Width = 48
            Height = 14
            Caption = 'Type A :'
          end
          object mnlbl10: TLabel
            Left = 76
            Top = 67
            Width = 7
            Height = 14
            Caption = '0'
          end
          object mnlbl11: TLabel
            Left = 255
            Top = 67
            Width = 21
            Height = 14
            Caption = '100'
          end
          object lblTypeB: TLabel
            Left = 11
            Top = 93
            Width = 47
            Height = 14
            Caption = 'Type B :'
          end
          object mnlbl12: TLabel
            Left = 76
            Top = 124
            Width = 7
            Height = 14
            Caption = '0'
          end
          object mnlbl13: TLabel
            Left = 255
            Top = 124
            Width = 21
            Height = 14
            Caption = '100'
          end
          object lblTypeC: TLabel
            Left = 11
            Top = 149
            Width = 47
            Height = 14
            Caption = 'Type C :'
          end
          object mnlbl14: TLabel
            Left = 76
            Top = 180
            Width = 7
            Height = 14
            Caption = '0'
          end
          object mnlbl15: TLabel
            Left = 255
            Top = 180
            Width = 21
            Height = 14
            Caption = '100'
          end
          object edtTypeA: TEdit
            Left = 281
            Top = 36
            Width = 33
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
          object TrackBarTypeA: TTrackBar
            Left = 69
            Top = 36
            Width = 212
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
          object edtTypeB: TEdit
            Left = 281
            Top = 93
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
            Left = 69
            Top = 93
            Width = 212
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 3
            OnChange = trckbrGeneralChange
          end
          object edtTypeC: TEdit
            Left = 281
            Top = 149
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
            Left = 64
            Top = 144
            Width = 212
            Height = 32
            Max = 100
            Frequency = 25
            TabOrder = 5
            OnChange = trckbrGeneralChange
          end
        end
        object medtActivationControlDelay: TMaskEdit
          Left = 182
          Top = 50
          Width = 65
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 8
          Text = '  :  :  '
          OnChange = edtChange
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 569
          Height = 382
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
    Top = 537
    Width = 617
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 452
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 532
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 371
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 617
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 617
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
    Top = 532
    Width = 617
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 617
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
