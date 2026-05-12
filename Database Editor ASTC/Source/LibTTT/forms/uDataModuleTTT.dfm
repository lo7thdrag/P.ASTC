object dmTTT: TdmTTT
  OldCreateOrder = False
  Height = 203
  Width = 443
  object ZConn: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    DesignConnection = True
    HostName = '192.168.1.100'
    Port = 1433
    Database = 'runtime_db'
    User = 'sa'
    Password = 'sa'
    Protocol = 'mssql'
    Left = 48
    Top = 64
  end
  object ZQ: TZQuery
    Connection = ZConn
    Params = <>
    Left = 88
    Top = 64
  end
  object ZQ2: TZQuery
    Connection = ZConn
    Params = <>
    Left = 128
    Top = 64
  end
end
