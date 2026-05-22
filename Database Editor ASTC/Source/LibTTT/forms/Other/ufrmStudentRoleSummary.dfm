object frmStudentRoleSummary: TfrmStudentRoleSummary
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '   Student Role List'
  ClientHeight = 234
  ClientWidth = 289
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
    Width = 289
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Name  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 11
      Top = 25
      Width = 269
      Height = 22
      TabOrder = 0
      OnChange = edtNameChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 56
    Width = 289
    Height = 135
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 269
      Height = 115
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      object tsGeneral: TTabSheet
        Caption = 'General'
        object btnEditList: TButton
          Left = 18
          Top = 30
          Width = 223
          Height = 25
          Caption = 'Edit List'
          TabOrder = 0
          OnClick = btnEditListClick
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 191
    Width = 289
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 115
      Top = 0
      Width = 80
      Height = 30
      Caption = 'Apply'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 200
      Top = 0
      Width = 80
      Height = 30
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 30
      Top = 0
      Width = 80
      Height = 30
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnOkClick
    end
  end
end
