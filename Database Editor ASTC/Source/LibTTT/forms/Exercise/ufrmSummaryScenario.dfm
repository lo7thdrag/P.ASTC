object frmSummaryScenario: TfrmSummaryScenario
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Scenario'
  ClientHeight = 374
  ClientWidth = 431
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
    Width = 431
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
      Left = 10
      Top = 10
      Width = 89
      Height = 14
      Caption = 'Scenario Name :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 8
      Top = 29
      Width = 413
      Height = 22
      TabOrder = 0
      OnChange = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 431
    Height = 266
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object pcScenarioTabs: TPageControl
      Left = 10
      Top = 10
      Width = 411
      Height = 246
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object StaticText1: TStaticText
          Left = 12
          Top = 16
          Width = 118
          Height = 18
          Caption = 'Resource Allocation :'
          TabOrder = 0
        end
        object edResourceAllocation: TEdit
          Left = 12
          Top = 39
          Width = 341
          Height = 22
          Enabled = False
          TabOrder = 1
          Text = '(None)'
        end
        object btnPick: TBitBtn
          Left = 359
          Top = 38
          Width = 23
          Height = 23
          Caption = '...'
          TabOrder = 2
          OnClick = btnPickClick
        end
        object btnDeployPlatforms: TButton
          Left = 3
          Top = 67
          Width = 135
          Height = 25
          Caption = 'Deploy Platforms...'
          TabOrder = 3
          OnClick = btnDeployPlatformsClick
        end
      end
      object tsRelationships: TTabSheet
        Caption = 'Relationships'
        ImageIndex = 3
        object rgForce: TRadioGroup
          Left = 16
          Top = 3
          Width = 129
          Height = 158
          Caption = 'Force'
          ItemIndex = 0
          Items.Strings = (
            'Red'
            'Yellow'
            'Blue'
            'Green'
            'No Force'
            'NTDS')
          TabOrder = 0
        end
        object gbPlatformRelationships: TGroupBox
          Left = 151
          Top = 3
          Width = 227
          Height = 158
          Caption = 'Platform Relationships'
          TabOrder = 1
          object btGroups: TButton
            Left = 53
            Top = 38
            Width = 121
            Height = 33
            Cursor = crHandPoint
            Caption = 'Groups...'
            TabOrder = 0
            OnClick = btGroupsClick
          end
          object btLinks: TButton
            Left = 53
            Top = 94
            Width = 121
            Height = 33
            Cursor = crHandPoint
            Caption = 'Links...'
            TabOrder = 1
            OnClick = btLinksClick
          end
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 331
    Width = 431
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnPreplayScenario: TButton
      Left = 10
      Top = 5
      Width = 104
      Height = 25
      Caption = 'Preplay Scenario...'
      TabOrder = 0
      Visible = False
      OnClick = btnPreplayScenarioClick
    end
    object btnOK: TButton
      Left = 186
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnApply: TButton
      Left = 266
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 2
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 346
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = btnCancelClick
    end
  end
end
