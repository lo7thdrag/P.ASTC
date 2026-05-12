object frmRadarIntervalSummary: TfrmRadarIntervalSummary
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Radar Interval List'
  ClientHeight = 249
  ClientWidth = 422
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
    Width = 422
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object edtName: TEdit
      Left = 10
      Top = 31
      Width = 402
      Height = 22
      TabOrder = 0
      OnKeyPress = edtNameKeyPress
    end
    object lblName: TStaticText
      Left = 10
      Top = 8
      Width = 43
      Height = 18
      Caption = 'Name :'
      TabOrder = 1
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 422
    Height = 141
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 131
    object pcScenarioTabs: TPageControl
      Left = 10
      Top = 10
      Width = 402
      Height = 121
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 111
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 71
        object btnEditList: TButton
          Left = 20
          Top = 30
          Width = 353
          Height = 25
          Caption = 'Edit List...'
          TabOrder = 0
          OnClick = btnEditListClick
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 206
    Width = 422
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnOK: TButton
      Left = 178
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnApply: TButton
      Left = 258
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 338
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
