object frmSummarySatellite: TfrmSummarySatellite
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Satellite'
  ClientHeight = 395
  ClientWidth = 365
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
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 365
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
      Left = 10
      Top = 5
      Width = 39
      Height = 16
      Caption = 'Class :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtClass: TEdit
      Tag = 4
      Left = 10
      Top = 26
      Width = 345
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
    Top = 65
    Width = 365
    Height = 287
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 277
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 345
      Height = 267
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 257
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 217
        object lbl2: TLabel
          Left = 271
          Top = 121
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object grbRecognition: TGroupBox
          Left = 22
          Top = 20
          Width = 301
          Height = 54
          Caption = 'Recognition Capabilties   '
          TabOrder = 0
          object cbPlatformType: TCheckBox
            Left = 24
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Platform Type'
            TabOrder = 0
            OnClick = CheckBoxDataClick
          end
          object cbPlatformClass: TCheckBox
            Left = 171
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Platform Class'
            TabOrder = 1
            OnClick = CheckBoxDataClick
          end
        end
        object lblDetectionRangeRadius: TStaticText
          Left = 22
          Top = 92
          Width = 142
          Height = 18
          Caption = 'Detection Range Radius :'
          TabOrder = 5
        end
        object edtDetectionRangeRadius: TEdit
          Tag = 2
          Left = 206
          Top = 90
          Width = 59
          Height = 22
          TabOrder = 1
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object lblnmDetectionRange: TStaticText
          Left = 271
          Top = 92
          Width = 21
          Height = 18
          Caption = 'nm'
          TabOrder = 6
        end
        object lblAltitude: TStaticText
          Left = 22
          Top = 174
          Width = 55
          Height = 18
          Caption = 'Altitude :'
          TabOrder = 7
        end
        object edtAltitude: TEdit
          Left = 206
          Top = 172
          Width = 59
          Height = 22
          TabOrder = 4
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object lblFeetAltitude: TStaticText
          Left = 271
          Top = 174
          Width = 27
          Height = 18
          Caption = 'feet'
          TabOrder = 8
        end
        object lblGameArea: TStaticText
          Left = 22
          Top = 119
          Width = 161
          Height = 18
          Caption = 'Game Area Re-entry Period :'
          TabOrder = 9
        end
        object lblGroundSpeed: TStaticText
          Left = 22
          Top = 147
          Width = 91
          Height = 18
          Caption = 'Ground Speed :'
          TabOrder = 10
        end
        object edtGroundSpeed: TEdit
          Tag = 2
          Left = 206
          Top = 145
          Width = 59
          Height = 22
          TabOrder = 3
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object lblKnotsGroundSpeed: TStaticText
          Left = 271
          Top = 147
          Width = 34
          Height = 18
          Caption = 'knots'
          TabOrder = 11
        end
        object edtGameArea: TMaskEdit
          Left = 206
          Top = 117
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 2
          Text = '  :  :  '
        end
      end
      object tsPhysical: TTabSheet
        Caption = 'Physical'
        ImageIndex = 1
        object grbDimensions: TGroupBox
          Left = 7
          Top = 16
          Width = 153
          Height = 120
          Caption = ' Dimensions   '
          TabOrder = 0
          object lblLength: TStaticText
            Left = 9
            Top = 29
            Width = 51
            Height = 18
            Caption = 'Length :'
            TabOrder = 0
          end
          object edtLength: TEdit
            Left = 63
            Top = 27
            Width = 45
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object lblFeetLength: TStaticText
            Left = 112
            Top = 29
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 4
          end
          object lblWidth: TStaticText
            Left = 9
            Top = 56
            Width = 45
            Height = 18
            Caption = 'Width :'
            TabOrder = 5
          end
          object edtWidth: TEdit
            Left = 63
            Top = 54
            Width = 45
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object lblFeetWidth: TStaticText
            Left = 112
            Top = 56
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 6
          end
          object lblHeight: TStaticText
            Left = 9
            Top = 83
            Width = 48
            Height = 18
            Caption = 'Height :'
            TabOrder = 7
          end
          object edtHeight: TEdit
            Left = 63
            Top = 81
            Width = 45
            Height = 22
            TabOrder = 3
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object lblFeetHeight: TStaticText
            Left = 112
            Top = 83
            Width = 27
            Height = 18
            Caption = 'feet'
            TabOrder = 8
          end
        end
        object grbRadarCrossSection: TGroupBox
          Left = 169
          Top = 16
          Width = 159
          Height = 120
          Caption = ' Radar Cross-Section   '
          TabOrder = 1
          object lblFront: TStaticText
            Left = 11
            Top = 42
            Width = 41
            Height = 18
            Caption = 'Front :'
            TabOrder = 0
          end
          object edtFront: TEdit
            Tag = 1
            Left = 51
            Top = 40
            Width = 45
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object lblSide: TStaticText
            Left = 11
            Top = 71
            Width = 35
            Height = 18
            Caption = 'Side :'
            TabOrder = 3
          end
          object edtSide: TEdit
            Tag = 1
            Left = 51
            Top = 67
            Width = 45
            Height = 22
            TabOrder = 2
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object cbxDbm2Front: TComboBox
            Left = 100
            Top = 40
            Width = 47
            Height = 22
            Enabled = False
            TabOrder = 4
            Text = 'dB'
            OnChange = ComboBoxDataChange
          end
          object cbxDbm2Side: TComboBox
            Left = 100
            Top = 67
            Width = 47
            Height = 22
            Enabled = False
            TabOrder = 5
            Text = 'dB'
            OnChange = ComboBoxDataChange
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 2
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 317
          Height = 207
          Align = alClient
          Lines.Strings = (
            ''
            '')
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 352
    Width = 365
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 202
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 282
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 122
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
