object DmMain: TDmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 494
  Width = 650
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 20
  end
  object cnMain: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'ppndb'
    SpecificOptions.Strings = (
      'mySQL.UseUnicode=True')
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 140
    Top = 20
    EncryptedPassword = '8FFF96FF8EFF8EFFCFFFCCFFC6FFCDFF'
  end
  object DsNutrients: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM nutrients')
    Active = True
    Left = 60
    Top = 120
    object DsNutrientsnu_id: TWideStringField
      DisplayLabel = #3619#3627#3633#3626
      FieldName = 'nu_id'
      Size = 2
    end
    object DsNutrientsnu_nutrient: TWideStringField
      DisplayLabel = #3626#3634#3619#3629#3634#3627#3634#3619
      FieldName = 'nu_nutrient'
      Size = 60
    end
    object DsNutrientsnu_order: TIntegerField
      DisplayLabel = #3621#3635#3604#3633#3610#3607#3637#3656
      FieldName = 'nu_order'
    end
  end
  object DsWards: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM wards')
    Active = True
    Left = 60
    Top = 205
    object DsWardswd_id: TWideStringField
      FieldName = 'wd_id'
      Size = 4
    end
    object DsWardswd_name: TWideStringField
      FieldName = 'wd_name'
      Size = 50
    end
  end
  object DsOrderH: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM orderh')
    Active = True
    Left = 150
    Top = 120
    object DsOrderHor_id: TWideStringField
      DisplayLabel = #3648#3621#3586#3607#3637#3656#3591#3634#3609
      FieldName = 'or_id'
      Size = 15
    end
    object DsOrderHor_guid: TWideStringField
      DisplayLabel = #3619#3627#3633#3626
      FieldName = 'or_guid'
      Size = 50
    end
    object DsOrderHor_date: TDateField
      DisplayLabel = #3623#3633#3609#3607#3637#3656
      FieldName = 'or_date'
    end
    object DsOrderHor_hn: TWideStringField
      DisplayLabel = 'HN'
      FieldName = 'or_hn'
      Size = 9
    end
    object DsOrderHor_patname: TWideStringField
      DisplayLabel = #3594#3639#3656#3629'-'#3626#3585#3640#3621
      FieldName = 'or_patname'
      Size = 120
    end
    object DsOrderHor_ward: TWideStringField
      DisplayLabel = #3619#3627#3633#3626#3627#3629#3612#3641#3657#3611#3656#3623#3618
      FieldName = 'or_ward'
      Size = 4
    end
    object DsOrderHor_wprep: TWideStringField
      DisplayLabel = #3612#3641#3657#3648#3605#3619#3637#3618#3617
      FieldName = 'or_wprep'
      Size = 13
    end
    object DsOrderHor_wprove: TWideStringField
      DisplayLabel = #3612#3641#3657#3605#3619#3623#3592#3626#3629#3610
      FieldName = 'or_wprove'
      Size = 13
    end
    object DsOrderHor_proved: TIntegerField
      DisplayLabel = #3605#3619#3623#3592#3626#3629#3610#3649#3621#3657#3623
      FieldName = 'or_proved'
    end
    object DsOrderHor_route: TWideStringField
      DisplayLabel = #3623#3636#3608#3637#3585#3634#3619#3651#3627#3657#3618#3634
      FieldName = 'or_route'
      Size = 1
    end
    object DsOrderHor_waterrate: TFloatField
      DisplayLabel = 'Water rate'
      FieldName = 'or_waterrate'
    end
    object DsOrderHor_watervol: TFloatField
      DisplayLabel = 'Water P.Rate'
      FieldName = 'or_watervol'
    end
    object DsOrderHor_lipidrate: TFloatField
      DisplayLabel = 'Lipid P.rate'
      FieldName = 'or_lipidrate'
    end
    object DsOrderHor_lipidvol: TFloatField
      DisplayLabel = #3611#3619#3636#3617#3634#3605#3619#3652#3586#3617#3633#3609
      FieldName = 'or_lipidvol'
    end
    object DsOrderHor_image: TBlobField
      FieldName = 'or_image'
    end
    object DsOrderHor_wardname: TWideStringField
      FieldKind = fkLookup
      FieldName = 'or_wardname'
      LookupDataSet = DsWards
      LookupKeyFields = 'wd_id'
      LookupResultField = 'wd_name'
      KeyFields = 'or_ward'
      Size = 40
      Lookup = True
    end
    object DsOrderHor_total: TFloatField
      DisplayLabel = #3611#3619#3636#3617#3634#3605#3619#3619#3623#3617
      FieldName = 'or_total'
    end
    object DsOrderHor_wt: TFloatField
      FieldName = 'or_wt'
    end
  end
  object SrcOrderH: TDataSource
    DataSet = DsOrderH
    Left = 210
    Top = 120
  end
  object DsRegH: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM regh')
    Active = True
    Left = 150
    Top = 205
    object DsRegHreg_id: TWideStringField
      FieldName = 'reg_id'
      Size = 2
    end
    object DsRegHreg_name: TWideStringField
      FieldName = 'reg_name'
    end
  end
  object DsRegD: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM regd'
      '')
    MasterSource = SrcRegH
    MasterFields = 'reg_id'
    DetailFields = 'reg_id'
    Active = True
    Left = 270
    Top = 205
    ParamData = <
      item
        DataType = ftWideString
        Name = 'reg_id'
        ParamType = ptInput
        Value = '01'
      end>
    object DsRegDreg_id: TWideStringField
      FieldName = 'reg_id'
      Size = 2
    end
    object DsRegDreg_nutcode: TWideStringField
      FieldName = 'reg_nutcode'
      Size = 2
    end
    object DsRegDreg_phase: TWideStringField
      FieldName = 'reg_phase'
      Size = 1
    end
    object DsRegDreg_nutrient: TStringField
      FieldKind = fkLookup
      FieldName = 'reg_nutrient'
      LookupDataSet = DsNutrients
      LookupKeyFields = 'nu_id'
      LookupResultField = 'nu_nutrient'
      KeyFields = 'reg_nutcode'
      Size = 60
      Lookup = True
    end
    object DsRegDreg_order: TSmallintField
      FieldName = 'reg_order'
    end
  end
  object SrcRegH: TDataSource
    DataSet = DsRegH
    Left = 210
    Top = 205
  end
  object DsOrderD: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM orderd'
      ''
      '')
    MasterSource = SrcOrderH
    MasterFields = 'or_id'
    DetailFields = 'or_id'
    Active = True
    IndexFieldNames = #39'or_orderno'#39
    Left = 275
    Top = 120
    ParamData = <
      item
        DataType = ftWideString
        Name = 'or_id'
        ParamType = ptInput
        Value = '20210620-223357'
      end>
    object DsOrderDor_id: TWideStringField
      DisplayWidth = 24
      FieldName = 'or_id'
    end
    object DsOrderDor_nutrient: TWideStringField
      DisplayWidth = 11
      FieldName = 'or_nutrient'
      Size = 2
    end
    object DsOrderDor_dose: TFloatField
      DisplayWidth = 12
      FieldName = 'or_dose'
    end
    object DsOrderDor_nutvol: TFloatField
      DisplayWidth = 12
      FieldName = 'or_nutvol'
    end
    object DsOrderDor_wfvol: TFloatField
      DisplayWidth = 12
      FieldName = 'or_wfvol'
    end
    object DsOrderDor_orderno: TSmallintField
      DisplayWidth = 12
      FieldName = 'or_orderno'
    end
    object DsOrderDor_phase: TWideStringField
      DisplayWidth = 9
      FieldName = 'or_phase'
      Size = 1
    end
    object DsOrderDor_nutname: TStringField
      DisplayWidth = 72
      FieldKind = fkLookup
      FieldName = 'or_nutname'
      LookupDataSet = DsNutrients
      LookupKeyFields = 'nu_id'
      LookupResultField = 'nu_nutrient'
      KeyFields = 'or_nutrient'
      Size = 60
      Lookup = True
    end
  end
  object DsWaterPhase: TUniQuery
    Connection = cnMain
    Left = 420
    Top = 120
  end
  object DsLipidPhase: TUniQuery
    Connection = cnMain
    Left = 420
    Top = 210
  end
  object DsOrHEdit: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM orderh'
      'WHERE or_date =:cDate')
    Active = True
    Left = 150
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cDate'
        Value = nil
      end>
    object DsOrHEditor_id: TWideStringField
      FieldName = 'or_id'
    end
    object DsOrHEditor_guid: TWideStringField
      FieldName = 'or_guid'
      Size = 50
    end
    object DsOrHEditor_date: TDateField
      FieldName = 'or_date'
    end
    object DsOrHEditor_hn: TWideStringField
      FieldName = 'or_hn'
      Size = 9
    end
    object DsOrHEditor_patname: TWideStringField
      FieldName = 'or_patname'
      Size = 120
    end
    object DsOrHEditor_wt: TFloatField
      FieldName = 'or_wt'
    end
    object DsOrHEditor_ward: TWideStringField
      FieldName = 'or_ward'
      Size = 4
    end
    object DsOrHEditor_wprep: TWideStringField
      FieldName = 'or_wprep'
      Size = 13
    end
    object DsOrHEditor_wprove: TWideStringField
      FieldName = 'or_wprove'
      Size = 13
    end
    object DsOrHEditor_route: TWideStringField
      FieldName = 'or_route'
      Size = 1
    end
    object DsOrHEditor_waterrate: TFloatField
      FieldName = 'or_waterrate'
    end
    object DsOrHEditor_watervol: TFloatField
      FieldName = 'or_watervol'
    end
    object DsOrHEditor_lipidrate: TFloatField
      FieldName = 'or_lipidrate'
    end
    object DsOrHEditor_lipidvol: TFloatField
      FieldName = 'or_lipidvol'
    end
    object DsOrHEditor_image: TBlobField
      FieldName = 'or_image'
    end
    object DsOrHEditor_proved: TSmallintField
      FieldName = 'or_proved'
    end
    object DsOrHEditor_total: TFloatField
      FieldName = 'or_total'
    end
    object DsOrHEditorwardname: TStringField
      FieldKind = fkLookup
      FieldName = 'or-wardname'
      LookupDataSet = DsWards
      LookupKeyFields = 'wd_id'
      LookupResultField = 'wd_name'
      KeyFields = 'or_ward'
      Size = 60
      Lookup = True
    end
  end
  object DsOrDEdit: TUniQuery
    Connection = cnMain
    SQL.Strings = (
      'SELECT *'
      'FROM orderd')
    MasterSource = SrcOrHEdit
    MasterFields = 'or_id'
    DetailFields = 'or_id'
    Active = True
    Left = 270
    Top = 295
    ParamData = <
      item
        DataType = ftWideString
        Name = 'or_id'
        ParamType = ptInput
        Value = nil
      end>
    object DsOrDEditor_id: TWideStringField
      FieldName = 'or_id'
    end
    object DsOrDEditor_nutrient: TWideStringField
      FieldName = 'or_nutrient'
      Size = 2
    end
    object DsOrDEditor_dose: TFloatField
      FieldName = 'or_dose'
    end
    object DsOrDEditor_nutvol: TFloatField
      FieldName = 'or_nutvol'
    end
    object DsOrDEditor_wfvol: TFloatField
      FieldName = 'or_wfvol'
    end
    object DsOrDEditor_orderno: TSmallintField
      FieldName = 'or_orderno'
    end
    object DsOrDEditor_phase: TWideStringField
      FieldName = 'or_phase'
      Size = 1
    end
    object DsOrDEditor_nutname: TStringField
      FieldKind = fkLookup
      FieldName = 'or_nutname'
      LookupDataSet = DsNutrients
      LookupKeyFields = 'nu_id'
      LookupResultField = 'nu_nutrient'
      KeyFields = 'or_nutrient'
      Size = 60
      Lookup = True
    end
  end
  object SrcOrHEdit: TDataSource
    DataSet = DsOrHEdit
    Left = 210
    Top = 295
  end
end
