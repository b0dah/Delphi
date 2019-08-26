object DataServer: TDataServer
  OldCreateOrder = False
  Height = 403
  Width = 679
  object IBDatabase1: TIBDatabase
    DatabaseName = 'DATABASE.FDB'
    Params.Strings = (
      'lc_ctype=WIN1251'
      'user_name=SYSDBA'
      'password=q]/z.q]/z.')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 48
    Top = 40
  end
  object ibtClient: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'Client'
    UniDirectional = False
    Left = 40
    Top = 120
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 128
    Top = 40
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 512
    Top = 120
  end
  object ibtProduct: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'Product'
    UniDirectional = False
    Left = 136
    Top = 120
  end
  object ibtFutura: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'Futura'
    UniDirectional = False
    Left = 224
    Top = 120
  end
  object ibtFuturaInfo: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FuturaInfo'
    UniDirectional = False
    Left = 320
    Top = 120
  end
  object ibtTMP: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TMP'
    UniDirectional = False
    Left = 408
    Top = 120
  end
  object dspClient: TDataSetProvider
    DataSet = ibtClient
    Left = 40
    Top = 192
  end
  object dspProduct: TDataSetProvider
    DataSet = ibtProduct
    Left = 136
    Top = 192
  end
  object dspFutura: TDataSetProvider
    DataSet = ibtFutura
    Left = 224
    Top = 192
  end
  object dspFuturaInfo: TDataSetProvider
    DataSet = ibtFuturaInfo
    Left = 320
    Top = 192
  end
  object dspTMP: TDataSetProvider
    DataSet = ibtTMP
    Left = 408
    Top = 192
  end
  object dspQuery: TDataSetProvider
    DataSet = IBQuery1
    Left = 512
    Top = 192
  end
end
