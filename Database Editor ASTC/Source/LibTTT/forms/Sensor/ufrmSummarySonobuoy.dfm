object frmSummarySonobuoy: TfrmSummarySonobuoy
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Sonobuoy'
  ClientHeight = 313
  ClientWidth = 335
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
    Width = 335
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblName: TLabel
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
      Width = 314
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
    Width = 335
    Height = 205
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 195
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 315
      Height = 185
      ActivePage = tsPhysical
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 175
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 135
        object txtMaxDepth: TLabel
          Left = 10
          Top = 23
          Width = 96
          Height = 14
          Caption = 'Maximum Depth :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtEnduranceTime: TLabel
          Left = 10
          Top = 51
          Width = 97
          Height = 14
          Caption = 'Endurance Time :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtSonarDef: TLabel
          Left = 10
          Top = 82
          Width = 94
          Height = 14
          Caption = 'Sonar Definition :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtMaxDepthUnits: TLabel
          Left = 201
          Top = 23
          Width = 23
          Height = 14
          Caption = 'feet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtEnduranceTimeUnits: TLabel
          Left = 201
          Top = 51
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtMaxDepth: TEdit
          Left = 137
          Top = 19
          Width = 58
          Height = 22
          TabOrder = 0
          Text = '0'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtSonarDef: TEdit
          Tag = 4
          Left = 10
          Top = 102
          Width = 243
          Height = 22
          ReadOnly = True
          TabOrder = 3
          Text = 'None'
        end
        object btnPick: TButton
          Left = 258
          Top = 102
          Width = 32
          Height = 22
          Caption = '...'
          TabOrder = 2
          OnClick = btnPickClick
        end
        object medtEnduranceTime: TMaskEdit
          Left = 137
          Top = 47
          Width = 58
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 1
          Text = '  :  :  '
          OnChange = edtChange
        end
      end
      object tsPhysical: TTabSheet
        Caption = 'Physical'
        ImageIndex = 2
        object grbDimensions: TGroupBox
          Left = 9
          Top = 20
          Width = 288
          Height = 85
          Caption = 'Dimensions'
          TabOrder = 0
          object lblWidth: TLabel
            Left = 11
            Top = 51
            Width = 41
            Height = 14
            Caption = 'Width :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblHeight: TLabel
            Left = 156
            Top = 23
            Width = 44
            Height = 14
            Caption = 'Height :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 116
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 116
            Top = 51
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblLength: TLabel
            Left = 11
            Top = 23
            Width = 47
            Height = 14
            Caption = 'Length :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 255
            Top = 23
            Width = 23
            Height = 14
            Caption = 'feet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtWidth: TEdit
            Left = 66
            Top = 47
            Width = 47
            Height = 22
            TabOrder = 1
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtHeight: TEdit
            Left = 206
            Top = 19
            Width = 47
            Height = 22
            TabOrder = 2
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtLength: TEdit
            Left = 66
            Top = 19
            Width = 47
            Height = 22
            TabOrder = 0
            Text = '0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
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
          Width = 287
          Height = 125
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
    Top = 270
    Width = 335
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 170
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 250
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 90
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
