object DataServer: TDataServer
  OldCreateOrder = False
  Height = 403
  Width = 679
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'DATABASE.FDB'
    Params.Strings = (
      'lc_ctype=WIN1251'
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 40
    Top = 48
  end
  object ibtClient: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'Client'
    UniDirectional = False
    Left = 40
    Top = 120
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 128
    Top = 48
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 512
    Top = 120
  end
  object ibtProduct: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'Product'
    UniDirectional = False
    Left = 136
    Top = 120
  end
  object ibtFutura: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'Futura'
    UniDirectional = False
    Left = 224
    Top = 120
  end
  object ibtFuturaInfo: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FuturaInfo'
    UniDirectional = False
    Left = 320
    Top = 120
  end
  object ibtTMP: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
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
  object ibspUpdateClient: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'UPDATE_CLIENT'
    Left = 40
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_ADRESS'
        ParamType = ptInput
      end>
  end
  object ibspDeleteClient: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_CLIENT'
    Left = 136
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object ibspUpdateProduct: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'UPDATE_PRODUCT'
    Left = 224
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_MS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_VAT'
        ParamType = ptInput
      end>
  end
  object ibspDeleteProduct: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_PRODUCT'
    Left = 320
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object ibspUpdateFutura: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'UPDATE_FUTURA'
    Left = 408
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_CLIENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_TOTAL_SUM'
        ParamType = ptInput
      end>
  end
  object ibspDeleteFutura: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_FUTURA'
    Left = 512
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object ibspUpdateFuturaInfo: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'UPDATE_FUTURA_INFO'
    Left = 176
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_FUTURA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_PRICE'
        ParamType = ptInput
      end>
  end
  object ibspDeleteFuturaInfo: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_FUTURA_INFO'
    Left = 344
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_FUTURA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRODUCT_ID'
        ParamType = ptInput
      end>
  end
end
