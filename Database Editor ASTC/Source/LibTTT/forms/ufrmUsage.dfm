object frmUsage: TfrmUsage
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = ' Usage Report'
  ClientHeight = 402
  ClientWidth = 688
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      Left = 10
      Top = 10
      Width = 406
      Height = 16
      Caption = 
        'Below is a list of the database entries that reference the selec' +
        'ted item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnl2ListView: TPanel
    Left = 0
    Top = 37
    Width = 688
    Height = 322
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 42
    ExplicitHeight = 312
    object ListView1: TListView
      Left = 10
      Top = 10
      Width = 668
      Height = 302
      Align = alClient
      Columns = <
        item
          Caption = 'Usage'
          Width = 150
        end
        item
          Width = 250
        end
        item
          Width = 293
        end>
      ColumnClick = False
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitHeight = 292
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 359
    Width = 688
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnOk: TButton
      Left = 593
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnPrint: TButton
      Left = 11
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 1
      OnClick = btnPrint1Click
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 640
    Top = 8
  end
end
