object frmRunner: TfrmRunner
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'TTT Scenario Generator'
  ClientHeight = 119
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = mnMain
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 7
    Width = 60
    Height = 13
    Caption = 'Description :'
  end
  object btnRun: TButton
    Left = 7
    Top = 87
    Width = 204
    Height = 25
    Caption = 'Run'
    TabOrder = 0
    OnClick = btnRunClick
  end
  object btnCancel: TButton
    Left = 217
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 11
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object mmInfo: TMemo
    Left = 7
    Top = 26
    Width = 285
    Height = 55
    BorderStyle = bsNone
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 2
  end
  object ZConn: TZConnection
    ControlsCodePage = cCP_UTF16
    DesignConnection = True
    HostName = '192.168.1.100'
    Port = 1433
    Database = 'runtime_db'
    User = 'sa'
    Password = 'sa'
    Protocol = 'mssql'
    Left = 320
    Top = 56
  end
  object mnMain: TPopupMenu
    Left = 320
    Top = 8
    object Show2: TMenuItem
      Caption = 'Show/Hide'
    end
    object StopModule1: TMenuItem
      Caption = 'Stop Module'
      OnClick = StopModule1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Show1: TMenuItem
      Caption = 'Exit'
      OnClick = Show1Click
    end
  end
end
