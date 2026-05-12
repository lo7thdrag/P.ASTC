object frmRunner: TfrmRunner
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'TTT Module Runner'
  ClientHeight = 120
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 11
    Width = 86
    Height = 13
    Caption = 'Local IP Address :'
  end
  object Label5: TLabel
    Left = 7
    Top = 35
    Width = 48
    Height = 13
    Caption = 'Scenario :'
  end
  object Label6: TLabel
    Left = 7
    Top = 59
    Width = 52
    Height = 13
    Caption = 'Map Path :'
  end
  object edtServer: TEdit
    Left = 103
    Top = 7
    Width = 192
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object btnRun: TButton
    Left = 7
    Top = 87
    Width = 204
    Height = 25
    Caption = 'Run'
    TabOrder = 1
    OnClick = btnRunClick
  end
  object btnCancel: TButton
    Left = 217
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 11
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object edtScenario: TEdit
    Left = 103
    Top = 31
    Width = 192
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edtMapPath: TEdit
    Left = 103
    Top = 55
    Width = 192
    Height = 21
    TabOrder = 4
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
      OnClick = Show2Click
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
