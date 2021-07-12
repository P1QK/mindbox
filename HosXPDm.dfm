object DmHosXP: TDmHosXP
  OldCreateOrder = False
  Height = 368
  Width = 437
  object cnHosXP: TFDConnection
    Params.Strings = (
      'Password=v,AmTbN'
      'Server=192.168.1.7'
      'Port=6432'
      'User_Name=ictspr'
      'Database=sprhos'
      'CharacterSet=UTF8'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 70
    Top = 55
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'D:\MyProj\FireDacTest\Win32\Debug\libpq.dll'
    Left = 80
    Top = 180
  end
  object DsPatients: TFDQuery
    Connection = cnHosXP
    SQL.Strings = (
      '')
    Left = 75
    Top = 115
  end
end
