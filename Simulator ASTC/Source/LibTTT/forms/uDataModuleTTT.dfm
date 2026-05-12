object dmTTT: TdmTTT
  OldCreateOrder = False
  Height = 203
  Width = 443
  object ZConn: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = '192.168.1.100'
    Port = 1433
    Database = 'runtime_db'
    User = 'sa'
    Password = 'sa'
    Protocol = 'mssql'
    Left = 72
    Top = 48
  end
  object ZQ: TZQuery
    Connection = ZConn
    Params = <>
    Left = 120
    Top = 48
  end
  object ZQ2: TZQuery
    Connection = ZConn
    Params = <>
    Left = 160
    Top = 48
  end
end
