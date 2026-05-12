object fChangeTorpedoDepth: TfChangeTorpedoDepth
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Change Torpedo Depth'
  ClientHeight = 192
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 209
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 91
      Width = 111
      Height = 14
      Caption = 'New Depth           :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 24
      Top = 56
      Width = 111
      Height = 14
      Caption = 'Current Depth       :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDepth: TLabel
      Left = 158
      Top = 57
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 24
      Top = 26
      Width = 114
      Height = 14
      Caption = 'Track                    :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbltrack: TLabel
      Left = 158
      Top = 28
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object bvl1: TBevel
      Left = 24
      Top = 136
      Width = 288
      Height = 3
    end
    object lblInstanceIndex: TLabel
      Left = 237
      Top = 27
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TButton
      Left = 237
      Top = 145
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOk: TButton
      Left = 156
      Top = 145
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOkClick
    end
    object EdtNewDepth: TEdit
      Left = 158
      Top = 90
      Width = 91
      Height = 21
      TabOrder = 2
      Text = '---'
    end
  end
end
