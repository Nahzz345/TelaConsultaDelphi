object DM: TDM
  OldCreateOrder = False
  Height = 664
  Width = 903
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 96
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 208
    Top = 96
    ParamData = <
      item
        Name = 'pConsulta'
        ParamType = ptInput
      end>
  end
  object dsSqlConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 208
    Top = 168
  end
end
