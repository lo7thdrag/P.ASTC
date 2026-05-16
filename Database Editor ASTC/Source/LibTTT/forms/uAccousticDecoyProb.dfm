object AccousticDecoyProb: TAccousticDecoyProb
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Accoustic Decoy Probability Of Hit (%)'
  ClientHeight = 314
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 266
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object grdpnlAcousticDecoyPOH: TGridPanel
      Left = 8
      Top = 5
      Width = 460
      Height = 254
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end>
      ControlCollection = <
        item
          Column = -1
          Row = 7
        end
        item
          Column = 1
          ColumnSpan = 4
          Control = pnlAspect
          Row = 0
        end
        item
          Column = 0
          Control = pnlGuidanceType
          Row = 1
        end
        item
          Column = 1
          Control = pnl_BZone1
          Row = 1
        end
        item
          Column = 2
          Control = pnl_BZone2
          Row = 1
        end
        item
          Column = 3
          Control = pnl_BZone3
          Row = 1
        end
        item
          Column = 4
          Control = pnl_BZone4
          Row = 1
        end
        item
          Column = 0
          Control = pnlActive
          Row = 2
        end
        item
          Column = 1
          Control = edtActive1
          Row = 2
        end
        item
          Column = 2
          Control = edtActive2
          Row = 2
        end
        item
          Column = 3
          Control = edtActive3
          Row = 2
        end
        item
          Column = 4
          Control = edtActive4
          Row = 2
        end
        item
          Column = 0
          Control = pnlPassive
          Row = 3
        end
        item
          Column = 1
          Control = edtPassive1
          Row = 3
        end
        item
          Column = 2
          Control = edtPassive2
          Row = 3
        end
        item
          Column = 3
          Control = edtPassive3
          Row = 3
        end
        item
          Column = 4
          Control = edtPassive4
          Row = 3
        end
        item
          Column = 0
          Control = pnlActivePassive
          Row = 4
        end
        item
          Column = 1
          Control = edtActivePassive1
          Row = 4
        end
        item
          Column = 2
          Control = edtActivePassive2
          Row = 4
        end
        item
          Column = 3
          Control = edtActivePassive3
          Row = 4
        end
        item
          Column = 4
          Control = edtActivePassive4
          Row = 4
        end
        item
          Column = 0
          Control = pnlWireGuided
          Row = 5
        end
        item
          Column = 1
          Control = edtWireGuided1
          Row = 5
        end
        item
          Column = 2
          Control = edtWireGuided2
          Row = 5
        end
        item
          Column = 3
          Control = edtWireGuided3
          Row = 5
        end
        item
          Column = 4
          Control = edtWireGuided4
          Row = 5
        end
        item
          Column = 0
          Control = pnlWakeHoming
          Row = 6
        end
        item
          Column = 1
          Control = edtWakeHoming1
          Row = 6
        end
        item
          Column = 2
          Control = edtWakeHoming2
          Row = 6
        end
        item
          Column = 3
          Control = edtWakeHoming3
          Row = 6
        end
        item
          Column = 4
          Control = edtWakeHoming4
          Row = 6
        end
        item
          Column = 0
          Control = pnl1
          Row = 0
        end>
      Padding.Left = 1
      Padding.Top = 1
      Padding.Right = 1
      Padding.Bottom = 1
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end>
      TabOrder = 0
      object pnlAspect: TPanel
        Left = 179
        Top = 3
        Width = 278
        Height = 28
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'Aspect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
      object pnlGuidanceType: TPanel
        Left = 3
        Top = 33
        Width = 174
        Height = 68
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'Guidance Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object pnl_BZone1: TPanel
        Left = 179
        Top = 33
        Width = 68
        Height = 68
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 22
      end
      object pnl_BZone2: TPanel
        Left = 249
        Top = 33
        Width = 68
        Height = 68
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 23
      end
      object pnl_BZone3: TPanel
        Left = 319
        Top = 33
        Width = 68
        Height = 68
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 24
      end
      object pnl_BZone4: TPanel
        Left = 389
        Top = 33
        Width = 68
        Height = 68
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 25
      end
      object pnlActive: TPanel
        Left = 3
        Top = 103
        Width = 174
        Height = 28
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Active Accoustic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
      end
      object edtActive1: TEdit
        Left = 179
        Top = 103
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 0
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtActive2: TEdit
        Left = 249
        Top = 103
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 1
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtActive3: TEdit
        Left = 319
        Top = 103
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 2
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtActive4: TEdit
        Left = 389
        Top = 103
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 3
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object pnlPassive: TPanel
        Left = 3
        Top = 133
        Width = 174
        Height = 28
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Passive Accoustic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
      end
      object edtPassive1: TEdit
        Left = 179
        Top = 133
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 4
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtPassive2: TEdit
        Left = 249
        Top = 133
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 5
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtPassive3: TEdit
        Left = 319
        Top = 133
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 6
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtPassive4: TEdit
        Left = 389
        Top = 133
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 7
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object pnlActivePassive: TPanel
        Left = 3
        Top = 163
        Width = 174
        Height = 28
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Active/Passive Accoustic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
      end
      object edtActivePassive1: TEdit
        Left = 179
        Top = 163
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 8
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtActivePassive2: TEdit
        Left = 249
        Top = 163
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 9
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtActivePassive3: TEdit
        Left = 319
        Top = 163
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 10
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtActivePassive4: TEdit
        Left = 389
        Top = 163
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 11
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object pnlWireGuided: TPanel
        Left = 3
        Top = 193
        Width = 174
        Height = 28
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Wire Guided'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 29
      end
      object edtWireGuided1: TEdit
        Left = 179
        Top = 193
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 12
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtWireGuided2: TEdit
        Left = 249
        Top = 193
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 13
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtWireGuided3: TEdit
        Left = 319
        Top = 193
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 14
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtWireGuided4: TEdit
        Left = 389
        Top = 193
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 15
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object pnlWakeHoming: TPanel
        Left = 3
        Top = 223
        Width = 174
        Height = 28
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Wake Homing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 30
      end
      object edtWakeHoming1: TEdit
        Left = 179
        Top = 223
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 16
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtWakeHoming2: TEdit
        Left = 249
        Top = 223
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 17
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtWakeHoming3: TEdit
        Left = 319
        Top = 223
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 18
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object edtWakeHoming4: TEdit
        Left = 389
        Top = 223
        Width = 68
        Height = 28
        Align = alClient
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 19
        Text = '0'
        OnChange = edtGeneralChange
        OnKeyPress = edtAspectPersentageKeyPress
        ExplicitHeight = 21
      end
      object pnl1: TPanel
        Left = 3
        Top = 3
        Width = 174
        Height = 28
        Align = alClient
        Anchors = []
        BevelOuter = bvLowered
        TabOrder = 31
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 271
    Width = 476
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object btnApply: TButton
      Left = 313
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 393
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 232
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 266
    Width = 476
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 476
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
      ExplicitLeft = -8
      ExplicitTop = 6
    end
  end
end
