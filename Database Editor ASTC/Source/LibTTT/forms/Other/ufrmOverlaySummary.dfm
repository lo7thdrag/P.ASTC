object frmOverlaySummary: TfrmOverlaySummary
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Overlay'
  ClientHeight = 307
  ClientWidth = 273
  Color = clBtnShadow
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
    Width = 273
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 11
      Top = 7
      Width = 43
      Height = 14
      Caption = 'Name  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 11
      Top = 26
      Width = 251
      Height = 22
      TabOrder = 0
      OnChange = edtNameChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 56
    Width = 273
    Height = 208
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 61
    ExplicitHeight = 198
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 253
      Height = 188
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      ExplicitHeight = 178
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 138
        object lbl2: TLabel
          Left = 11
          Top = 21
          Width = 40
          Height = 14
          Caption = 'Type  :'
        end
        object lbl3: TLabel
          Left = 14
          Top = 48
          Width = 52
          Height = 14
          Caption = 'Domain  :'
        end
        object btnEditOverlay: TButton
          Left = 14
          Top = 91
          Width = 219
          Height = 25
          Caption = 'Edit Overlay Shape...'
          TabOrder = 0
          OnClick = btnEditOverlayClick
        end
        object cbbDomain: TComboBox
          Left = 72
          Top = 44
          Width = 89
          Height = 22
          Style = csDropDownList
          TabOrder = 1
          OnChange = cbbDomainChange
          Items.Strings = (
            'Air'
            'Surface'
            'Sub Surface'
            'Land')
        end
        object cbbType: TComboBox
          Left = 72
          Top = 17
          Width = 89
          Height = 22
          Style = csDropDownList
          TabOrder = 2
          OnChange = cbbTypeChange
          Items.Strings = (
            'Dynamic'
            'Static')
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 264
    Width = 273
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 107
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 187
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 27
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOkClick
    end
  end
end
