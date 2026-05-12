object frmHelicopterLimitations: TfrmHelicopterLimitations
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Helicopter Launch/Landing Limits'
  ClientHeight = 440
  ClientWidth = 420
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 392
    Align = alClient
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 483
    ExplicitHeight = 409
    object pgc1: TPageControl
      Left = 8
      Top = 8
      Width = 465
      Height = 377
      ActivePage = tsGeneral
      TabOrder = 0
      object tsGeneral: TTabSheet
        Caption = 'General'
        object grp1: TGroupBox
          Left = 3
          Top = 3
          Width = 398
          Height = 169
          Caption = 'Launch/Landing Limits'
          TabOrder = 0
          object lbl1: TLabel
            Left = 16
            Top = 24
            Width = 177
            Height = 13
            Caption = 'Ship Maximum Turn Rate To Launch :'
          end
          object lbl2: TLabel
            Left = 16
            Top = 54
            Width = 166
            Height = 13
            Caption = 'Ship Maximum Turn Rate To Land :'
          end
          object lbl3: TLabel
            Left = 16
            Top = 84
            Width = 173
            Height = 13
            Caption = 'Maximum Relative Wind Magnitude :'
          end
          object lbl4: TLabel
            Left = 16
            Top = 115
            Width = 167
            Height = 13
            Caption = 'Maximum Relative Speed To Land :'
          end
          object lbl9: TLabel
            Left = 336
            Top = 24
            Width = 38
            Height = 13
            Caption = 'deg/min'
          end
          object lbl10: TLabel
            Left = 336
            Top = 54
            Width = 38
            Height = 13
            Caption = 'deg/min'
          end
          object lbl11: TLabel
            Left = 336
            Top = 84
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object lbl12: TLabel
            Left = 336
            Top = 115
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object edtShipMaxTurnRate_toLaunch: TEdit
            Tag = 1
            Left = 248
            Top = 21
            Width = 57
            Height = 21
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtShipMaxTurnRate_toLand: TEdit
            Tag = 1
            Left = 248
            Top = 51
            Width = 57
            Height = 21
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxRelativeWindMagnitude: TEdit
            Tag = 2
            Left = 248
            Top = 81
            Width = 57
            Height = 21
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxRelativeSpeedToLand: TEdit
            Tag = 2
            Left = 248
            Top = 112
            Width = 57
            Height = 21
            TabOrder = 3
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grp2: TGroupBox
          Left = 3
          Top = 178
          Width = 398
          Height = 159
          Caption = 'Landing Box Limits'
          TabOrder = 1
          object lbl5: TLabel
            Left = 16
            Top = 24
            Width = 128
            Height = 13
            Caption = 'Approach Center Bearing :'
          end
          object lbl6: TLabel
            Left = 16
            Top = 53
            Width = 118
            Height = 13
            Caption = 'Approach Sector Width :'
          end
          object lbl7: TLabel
            Left = 16
            Top = 84
            Width = 87
            Height = 13
            Caption = 'Approach Range :'
          end
          object lbl8: TLabel
            Left = 16
            Top = 116
            Width = 134
            Height = 13
            Caption = 'Maximum Landing Altitude : '
          end
          object lbl13: TLabel
            Left = 336
            Top = 24
            Width = 39
            Height = 13
            Caption = 'degrees'
          end
          object lbl14: TLabel
            Left = 336
            Top = 53
            Width = 39
            Height = 13
            Caption = 'degrees'
          end
          object lbl15: TLabel
            Left = 336
            Top = 84
            Width = 14
            Height = 13
            Caption = 'nm'
          end
          object lbl16: TLabel
            Left = 336
            Top = 116
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object edtApproachCentBearing: TEdit
            Left = 248
            Top = 21
            Width = 57
            Height = 21
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtApproachSectorWidth: TEdit
            Left = 248
            Top = 50
            Width = 57
            Height = 21
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtApproachRange: TEdit
            Tag = 2
            Left = 248
            Top = 81
            Width = 57
            Height = 21
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxLandingAltitude: TEdit
            Tag = 1
            Left = 248
            Top = 113
            Width = 57
            Height = 21
            TabOrder = 3
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 392
    Width = 420
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -411
    ExplicitTop = 432
    ExplicitWidth = 894
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
  object pnl3Button: TPanel
    Left = 0
    Top = 397
    Width = 420
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -411
    ExplicitTop = 394
    ExplicitWidth = 894
    object btnApply: TButton
      Left = 258
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 338
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 177
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOkClick
    end
  end
end
