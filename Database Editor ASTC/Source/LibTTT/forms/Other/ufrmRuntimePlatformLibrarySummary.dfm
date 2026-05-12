object frmRuntimePlatformLibrarySummary: TfrmRuntimePlatformLibrarySummary
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Runtime Platform Library'
  ClientHeight = 355
  ClientWidth = 329
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
    Width = 329
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
      Width = 42
      Height = 16
      Caption = 'Name :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 10
      Top = 32
      Width = 309
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtNameChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 329
    Height = 247
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 237
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 309
      Height = 227
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      ExplicitHeight = 217
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 177
        object grbPlatforms: TGroupBox
          Left = 12
          Top = 6
          Width = 266
          Height = 149
          Caption = ' Platforms   '
          TabOrder = 0
          object btnVehicle: TButton
            Left = 14
            Top = 36
            Width = 116
            Height = 25
            Caption = 'Vehicle ..'
            TabOrder = 0
            OnClick = btnVehicleClick
          end
          object btnTorpedo: TButton
            Left = 14
            Top = 71
            Width = 116
            Height = 25
            Caption = 'Torpedo ..'
            TabOrder = 1
            OnClick = btnTorpedoClick
          end
          object btnMine: TButton
            Left = 14
            Top = 106
            Width = 116
            Height = 25
            Caption = 'Mine ..'
            TabOrder = 2
            OnClick = btnMineClick
          end
          object btnMissile: TButton
            Left = 136
            Top = 36
            Width = 116
            Height = 25
            Caption = 'Missile ..'
            TabOrder = 3
            OnClick = btnMissileClick
          end
          object btnSonobuoy: TButton
            Left = 136
            Top = 71
            Width = 116
            Height = 25
            Caption = 'Sonobuoy ..'
            TabOrder = 4
            OnClick = btnSonobuoyClick
          end
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 312
    Width = 329
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 164
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 244
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 84
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
