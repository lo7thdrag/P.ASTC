object frmSummaryResourceAllocation: TfrmSummaryResourceAllocation
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Resource Allocation'
  ClientHeight = 409
  ClientWidth = 459
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
    Width = 459
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
    object edtName: TEdit
      Tag = 4
      Left = 10
      Top = 27
      Width = 428
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
    Width = 459
    Height = 301
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 439
      Height = 281
      ActivePage = tsResources
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      object tsGeneral: TTabSheet
        Caption = 'General'
        object btnBrowseEnvironment: TSpeedButton
          Left = 389
          Top = 70
          Width = 23
          Height = 23
          Caption = '...'
          OnClick = btnBrowseEnvironmentClick
        end
        object btnBrowseDefaults: TSpeedButton
          Left = 389
          Top = 125
          Width = 23
          Height = 23
          Caption = '...'
          OnClick = btnBrowseDefaultsClick
        end
        object lblStartTime: TStaticText
          Left = 229
          Top = 9
          Width = 70
          Height = 18
          Caption = 'Start Time :'
          TabOrder = 0
        end
        object lblEnvironment: TStaticText
          Left = 9
          Top = 53
          Width = 73
          Height = 18
          Caption = 'Environment'
          TabOrder = 1
        end
        object edtEnvironment: TEdit
          Left = 9
          Top = 71
          Width = 374
          Height = 22
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '[None]'
        end
        object lblDefaults: TStaticText
          Left = 9
          Top = 108
          Width = 48
          Height = 18
          Caption = 'Defaults'
          TabOrder = 3
        end
        object edtDefaults: TEdit
          Left = 9
          Top = 126
          Width = 374
          Height = 22
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '[None]'
        end
        object btnStudentRoleList: TButton
          Left = 389
          Top = 181
          Width = 23
          Height = 23
          Caption = '...'
          TabOrder = 5
          OnClick = btnStudentRoleListClick
        end
        object dtpDate: TDateTimePicker
          Left = 229
          Top = 27
          Width = 99
          Height = 22
          Date = 42300.000000000000000000
          Format = 'dd MMM yyyy'
          Time = 0.714370370369579100
          TabOrder = 6
          OnChange = dtpDateChange
        end
        object dtpTime: TDateTimePicker
          Left = 334
          Top = 27
          Width = 73
          Height = 22
          Date = 42300.000000000000000000
          Time = 0.714370370369579100
          Kind = dtkTime
          TabOrder = 7
          OnChange = dtpTimeChange
        end
        object StaticText1: TStaticText
          Left = 9
          Top = 164
          Width = 98
          Height = 18
          Caption = 'Student Role List'
          TabOrder = 8
        end
        object edtStudent: TEdit
          Left = 9
          Top = 182
          Width = 374
          Height = 22
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = '[None]'
        end
      end
      object tsPlatforms: TTabSheet
        Caption = 'Platforms'
        ImageIndex = 1
        ExplicitLeft = -10
        ExplicitTop = -18
        object grbForcePlatforms: TGroupBox
          Left = 11
          Top = 24
          Width = 110
          Height = 185
          Caption = 'Force  '
          TabOrder = 0
          object rbRedPlatforms: TRadioButton
            Tag = 1
            Left = 9
            Top = 35
            Width = 100
            Height = 17
            Caption = 'Red'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RadioButtonClick
          end
          object rbAmberPlatforms: TRadioButton
            Tag = 2
            Left = 9
            Top = 63
            Width = 100
            Height = 17
            Caption = 'Yellow'
            TabOrder = 1
            OnClick = RadioButtonClick
          end
          object rbBluePlatforms: TRadioButton
            Tag = 3
            Left = 9
            Top = 91
            Width = 100
            Height = 17
            Caption = 'Blue'
            TabOrder = 2
            OnClick = RadioButtonClick
          end
          object rbGreenPlatforms: TRadioButton
            Tag = 4
            Left = 9
            Top = 119
            Width = 100
            Height = 17
            Caption = 'Green'
            TabOrder = 3
            OnClick = RadioButtonClick
          end
          object rbNoPlatforms: TRadioButton
            Tag = 5
            Left = 9
            Top = 147
            Width = 100
            Height = 17
            Caption = 'No Force'
            TabOrder = 4
            OnClick = RadioButtonClick
          end
        end
        object grbPlatforms: TGroupBox
          Left = 135
          Top = 24
          Width = 271
          Height = 185
          Caption = 'Platforms  '
          TabOrder = 1
          object btnVehicle: TButton
            Left = 18
            Top = 37
            Width = 235
            Height = 45
            Caption = 'Vehicle...'
            TabOrder = 0
            OnClick = btnVehicleClick
          end
          object btnSatellite: TButton
            Left = 18
            Top = 102
            Width = 235
            Height = 45
            Caption = 'Satellite...'
            TabOrder = 1
            OnClick = btnSatelliteClick
          end
        end
      end
      object tsResources: TTabSheet
        Caption = 'Resources'
        ImageIndex = 2
        object btnRuntimePlatformLibraries: TButton
          Left = 23
          Top = 69
          Width = 375
          Height = 38
          Caption = 'Runtime Platform Libraries...'
          TabOrder = 0
          OnClick = btnRuntimePlatformLibrariesClick
        end
        object btnReferencePointsResources: TButton
          Left = 23
          Top = 21
          Width = 375
          Height = 38
          Caption = 'Reference Points...'
          TabOrder = 1
          OnClick = btnReferencePointsResourcesClick
        end
        object btnOverlaysResources: TButton
          Left = 23
          Top = 117
          Width = 375
          Height = 38
          Caption = 'Overlays...'
          TabOrder = 2
          OnClick = btnOverlaysResourcesClick
        end
        object btnCommunicationResources: TButton
          Left = 23
          Top = 161
          Width = 375
          Height = 38
          Caption = 'Communication Channels ...'
          TabOrder = 3
          OnClick = btnCommunicationResourcesClick
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 366
    Width = 459
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnOK: TButton
      Left = 214
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 374
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnApply: TButton
      Left = 294
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 2
      OnClick = btnApplyClick
    end
  end
end
