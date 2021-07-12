object DmScan: TDmScan
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 340
  Width = 335
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 35
    Top = 10
  end
  object cnScan: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'pharmscan'
    SpecificOptions.Strings = (
      'mySQL.UseUnicode=True')
    Username = 'pick'
    Server = '192.168.1.4'
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 75
    EncryptedPassword = '8FFF96FF8EFF8EFFCFFFCCFFC6FFCDFF'
  end
  object DsDocScan: TUniQuery
    Connection = cnScan
    SQL.Strings = (
      'SELECT *'
      'FROM docscan'
      'WHERE'
      'path =:cDate')
    Active = True
    Left = 95
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cDate'
        Value = nil
      end>
    object DsDocScanid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object DsDocScanfilename: TWideStringField
      FieldName = 'filename'
      Size = 50
    end
    object DsDocScanward: TWideStringField
      FieldName = 'ward'
      Size = 35
    end
    object DsDocScandrive: TWideStringField
      FieldName = 'drive'
      Size = 35
    end
    object DsDocScandir: TWideStringField
      FieldName = 'dir'
      Size = 35
    end
    object DsDocScanpath: TWideStringField
      FieldName = 'path'
      Size = 50
    end
    object DsDocScanprnflag: TIntegerField
      FieldName = 'prnflag'
    end
    object DsDocScannotify: TWideMemoField
      FieldName = 'notify'
      BlobType = ftWideMemo
    end
    object DsDocScanhosxp_check: TIntegerField
      FieldName = 'hosxp_check'
    end
    object DsDocScanphar_check: TIntegerField
      FieldName = 'phar_check'
    end
    object DsDocScanwardname: TWideStringField
      FieldKind = fkLookup
      FieldName = 'wardname'
      LookupDataSet = DsWard
      LookupKeyFields = 'w_id'
      LookupResultField = 'w_name'
      KeyFields = 'ward'
      Size = 30
      Lookup = True
    end
  end
  object DsWard: TUniQuery
    Connection = cnScan
    SQL.Strings = (
      'SELECT *'
      'FROM wardtbl')
    Active = True
    Left = 95
    Top = 185
  end
end
