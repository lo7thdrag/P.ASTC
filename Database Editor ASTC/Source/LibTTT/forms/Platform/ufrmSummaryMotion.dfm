object frmSummaryMotion: TfrmSummaryMotion
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Motion'
  ClientHeight = 460
  ClientWidth = 496
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
    Width = 496
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 10
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
      Top = 31
      Width = 476
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
    Top = 95
    Width = 496
    Height = 322
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 100
    ExplicitHeight = 312
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 476
      Height = 302
      ActivePage = tsEndurance
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 292
      object tsHorizontal: TTabSheet
        Caption = 'Horizontal'
        object grpIRCM: TGroupBox
          Left = 19
          Top = 10
          Width = 224
          Height = 140
          Caption = ' Ground Speed   '
          TabOrder = 0
          object lblMinGroundSpeed: TLabel
            Left = 21
            Top = 32
            Width = 55
            Height = 14
            Caption = 'Minimum :'
          end
          object lblCruiseGroundSpeed: TLabel
            Left = 21
            Top = 57
            Width = 40
            Height = 14
            Caption = 'Cruise :'
          end
          object lblHighGroundSpeed: TLabel
            Left = 21
            Top = 82
            Width = 32
            Height = 14
            Caption = 'High :'
          end
          object lblMaxGroundSpeed: TLabel
            Left = 21
            Top = 107
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object Label4: TLabel
            Left = 150
            Top = 32
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object Label5: TLabel
            Left = 150
            Top = 57
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object Label6: TLabel
            Left = 150
            Top = 82
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object Label7: TLabel
            Left = 150
            Top = 107
            Width = 30
            Height = 14
            Caption = 'knots'
          end
          object edtMinGroundSpeed: TEdit
            Tag = 2
            Left = 102
            Top = 28
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtCruiseGroundSpeed: TEdit
            Tag = 2
            Left = 102
            Top = 53
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHighGroundSpeed: TEdit
            Tag = 2
            Left = 102
            Top = 78
            Width = 43
            Height = 22
            TabOrder = 2
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxGroundSpeed: TEdit
            Tag = 2
            Left = 102
            Top = 103
            Width = 43
            Height = 22
            TabOrder = 3
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox1: TGroupBox
          Left = 260
          Top = 10
          Width = 190
          Height = 108
          Caption = ' Turn Rate   '
          TabOrder = 1
          object lblStandardTurnRate: TLabel
            Left = 15
            Top = 38
            Width = 57
            Height = 14
            Caption = 'Standard :'
          end
          object lblTightTurnRate: TLabel
            Left = 15
            Top = 65
            Width = 37
            Height = 14
            Caption = 'Tight :'
          end
          object Label10: TLabel
            Left = 130
            Top = 65
            Width = 44
            Height = 14
            Caption = 'deg/sec'
          end
          object Label11: TLabel
            Left = 130
            Top = 38
            Width = 44
            Height = 14
            Caption = 'deg/sec'
          end
          object edtTightTurnRate: TEdit
            Tag = 1
            Left = 82
            Top = 34
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtStandardTurnRate: TEdit
            Tag = 1
            Left = 82
            Top = 61
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 260
          Top = 123
          Width = 190
          Height = 108
          Caption = ' Helm Angle   '
          TabOrder = 2
          object lblMaxHelmAngle: TLabel
            Left = 15
            Top = 42
            Width = 55
            Height = 14
            Caption = 'Maximun :'
          end
          object lblHelmAngleRate: TLabel
            Left = 15
            Top = 69
            Width = 33
            Height = 14
            Caption = 'Rate :'
          end
          object Label12: TLabel
            Left = 130
            Top = 42
            Width = 21
            Height = 14
            Caption = 'deg'
          end
          object Label13: TLabel
            Left = 130
            Top = 69
            Width = 44
            Height = 14
            Caption = 'deg/sec'
          end
          object edtMaxHelmAngle: TEdit
            Left = 82
            Top = 38
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHelmAngleRate: TEdit
            Tag = 1
            Left = 82
            Top = 65
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 19
          Top = 159
          Width = 224
          Height = 72
          TabOrder = 3
          object lblDeceleration: TLabel
            Left = 21
            Top = 41
            Width = 76
            Height = 14
            Caption = 'Deceleration :'
          end
          object lblAcceleration: TLabel
            Left = 21
            Top = 14
            Width = 75
            Height = 14
            Caption = 'Acceleration :'
          end
          object Label8: TLabel
            Left = 150
            Top = 14
            Width = 53
            Height = 14
            Caption = 'knots/sec'
          end
          object Label9: TLabel
            Left = 150
            Top = 41
            Width = 53
            Height = 14
            Caption = 'knots/sec'
          end
          object edtAcceleration: TEdit
            Tag = 2
            Left = 102
            Top = 10
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtDeceleration: TEdit
            Tag = 2
            Left = 102
            Top = 37
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsVertical: TTabSheet
        Caption = 'Vertical'
        ImageIndex = 1
        object lblMaxAltitude: TLabel
          Left = 16
          Top = 24
          Width = 105
          Height = 14
          Caption = 'Maximum Altitude :'
        end
        object lblMaxDepth: TLabel
          Left = 16
          Top = 51
          Width = 96
          Height = 14
          Caption = 'Maximum Depth :'
        end
        object lblVerticalAcceleration: TLabel
          Left = 16
          Top = 78
          Width = 119
          Height = 14
          Caption = 'Vertical Acceleration :'
        end
        object Label30: TLabel
          Left = 198
          Top = 78
          Width = 47
          Height = 14
          Caption = 'feet/min'
        end
        object Label35: TLabel
          Left = 198
          Top = 51
          Width = 38
          Height = 14
          Caption = 'metres'
        end
        object Label36: TLabel
          Left = 198
          Top = 24
          Width = 38
          Height = 14
          Caption = 'metres'
        end
        object edtVerticalAcceleration: TEdit
          Tag = 2
          Left = 149
          Top = 75
          Width = 43
          Height = 22
          TabOrder = 2
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxDepth: TEdit
          Tag = 1
          Left = 148
          Top = 47
          Width = 43
          Height = 22
          TabOrder = 1
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxAltitude: TEdit
          Tag = 1
          Left = 148
          Top = 20
          Width = 43
          Height = 22
          TabOrder = 0
          Text = '0.0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object GroupBox4: TGroupBox
          Left = 16
          Top = 118
          Width = 211
          Height = 91
          Caption = ' Descent Rate   '
          TabOrder = 3
          object Label31: TLabel
            Left = 140
            Top = 55
            Width = 47
            Height = 14
            Caption = 'feet/min'
          end
          object Label32: TLabel
            Left = 140
            Top = 28
            Width = 47
            Height = 14
            Caption = 'feet/min'
          end
          object lblNormalDescentRate: TLabel
            Left = 23
            Top = 28
            Width = 45
            Height = 14
            Caption = 'Normal :'
          end
          object lblMaxDescentRate: TLabel
            Left = 23
            Top = 55
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object edtMaxDescentRate: TEdit
            Tag = 2
            Left = 90
            Top = 51
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtNormalDescentRate: TEdit
            Tag = 2
            Left = 90
            Top = 24
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 242
          Top = 118
          Width = 211
          Height = 91
          Caption = ' Climb Rate   '
          TabOrder = 4
          object lblMaxClimbRate: TLabel
            Left = 23
            Top = 55
            Width = 58
            Height = 14
            Caption = 'Maximum :'
          end
          object lblNormalClimbRate: TLabel
            Left = 23
            Top = 28
            Width = 45
            Height = 14
            Caption = 'Normal :'
          end
          object Label34: TLabel
            Left = 140
            Top = 28
            Width = 47
            Height = 14
            Caption = 'feet/min'
          end
          object Label33: TLabel
            Left = 140
            Top = 55
            Width = 47
            Height = 14
            Caption = 'feet/min'
          end
          object edtNormalClimbRate: TEdit
            Tag = 2
            Left = 90
            Top = 24
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaxClimbRate: TEdit
            Tag = 2
            Left = 90
            Top = 51
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
      end
      object tsEndurance: TTabSheet
        Caption = 'Endurance'
        ImageIndex = 2
        ExplicitHeight = 252
        object Label2: TLabel
          Left = 14
          Top = 19
          Width = 113
          Height = 14
          Caption = 'Type of Endurance :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object grbFuel: TGroupBox
          Left = 14
          Top = 54
          Width = 267
          Height = 171
          Caption = ' Fuel   '
          TabOrder = 0
          object lblMaxFuelCapacity: TLabel
            Left = 13
            Top = 24
            Width = 107
            Height = 14
            Caption = 'Maximum Capacity :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblFuelConsumptionPerHour: TLabel
            Left = 13
            Top = 51
            Width = 131
            Height = 14
            Caption = 'Consumption per Hour :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMinimum: TLabel
            Left = 15
            Top = 74
            Width = 63
            Height = 14
            Caption = '- Minimum :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblCruise: TLabel
            Left = 153
            Top = 74
            Width = 48
            Height = 14
            Caption = '- Cruise :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblHigh: TLabel
            Left = 153
            Top = 101
            Width = 40
            Height = 14
            Caption = '- High :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMaximum: TLabel
            Left = 15
            Top = 101
            Width = 66
            Height = 14
            Caption = '- Maximum :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblUnits: TLabel
            Left = 92
            Top = 141
            Width = 43
            Height = 14
            Caption = 'Unit in :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbUnits: TComboBox
            Left = 149
            Top = 137
            Width = 99
            Height = 22
            TabOrder = 5
            Text = 'Cubic Metres'
            OnChange = ComboBoxDataChange
            Items.Strings = (
              'cubic metres'
              'US gallons'
              'pounds'
              'kilograms'
              'litres'
              'metric tonnes')
          end
          object edtMaxFuelCapacity: TEdit
            Left = 126
            Top = 20
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0,00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMinimum: TEdit
            Left = 87
            Top = 69
            Width = 43
            Height = 22
            TabOrder = 1
            Text = '0,00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtCruise: TEdit
            Left = 207
            Top = 69
            Width = 43
            Height = 22
            TabOrder = 2
            Text = '0,00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHigh: TEdit
            Left = 199
            Top = 97
            Width = 43
            Height = 22
            TabOrder = 3
            Text = '0,00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtMaximum: TEdit
            Left = 87
            Top = 97
            Width = 43
            Height = 22
            TabOrder = 4
            Text = '0,00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object grbEnduranceTime: TGroupBox
          Left = 296
          Top = 54
          Width = 158
          Height = 81
          Caption = ' Time   '
          Enabled = False
          TabOrder = 1
          object Label14: TLabel
            Left = 22
            Top = 24
            Width = 66
            Height = 14
            Caption = 'Endurance :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl16: TLabel
            Left = 84
            Top = 48
            Width = 52
            Height = 14
            Caption = 'hh:mm:ss'
          end
          object medtEnduranceTime: TMaskEdit
            Left = 22
            Top = 44
            Width = 57
            Height = 22
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            TabOrder = 0
            Text = '  :  :  '
            OnChange = edtChange
          end
        end
        object grbMaxEffectiveRange: TGroupBox
          Left = 296
          Top = 144
          Width = 158
          Height = 81
          Caption = ' Range   '
          Enabled = False
          TabOrder = 2
          object lblnmMaxEffectiveRange: TLabel
            Left = 125
            Top = 37
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object Label15: TLabel
            Left = 15
            Top = 37
            Width = 58
            Height = 14
            Caption = 'Maximum :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtMaxEffectiveRange: TEdit
            Tag = 2
            Left = 77
            Top = 33
            Width = 43
            Height = 22
            TabOrder = 0
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object cbxEnduranceType: TComboBox
          Left = 133
          Top = 16
          Width = 80
          Height = 22
          ItemIndex = 0
          TabOrder = 3
          Text = 'Fuel'
          OnChange = cbxEnduranceTypeChange
          Items.Strings = (
            'Fuel'
            'Time'
            'Range'
            'Unlimited')
        end
      end
    end
  end
  object pnl3Type: TPanel
    Left = 0
    Top = 65
    Width = 496
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 70
    object lblTypeHorizontal: TLabel
      Left = 10
      Top = 11
      Width = 36
      Height = 14
      Caption = 'Type :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object CbbType: TComboBox
      Left = 66
      Top = 7
      Width = 100
      Height = 22
      TabOrder = 0
      Text = 'Drift-Current'
      OnChange = ComboBoxDataChange
      Items.Strings = (
        'Mobile'
        'Fixed'
        'Drift-Current')
    end
  end
  object pnl4Button: TPanel
    Left = 0
    Top = 417
    Width = 496
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 3
    object btnApply: TButton
      Left = 331
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 411
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 251
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
