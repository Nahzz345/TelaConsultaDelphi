object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tela de consulta'
  ClientHeight = 624
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object lblConsulta: TLabel
    Left = 168
    Top = 16
    Width = 82
    Height = 16
    Caption = 'Digite seu ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RgConsulta: TRadioGroup
    Left = 16
    Top = 8
    Width = 137
    Height = 89
    Caption = 'Op'#231#245'es de consulta'
    ItemIndex = 0
    Items.Strings = (
      'Id'
      'Nome'
      'Departamento')
    TabOrder = 0
    OnClick = RgConsultaClick
  end
  object txtConsulta: TEdit
    Left = 168
    Top = 38
    Width = 553
    Height = 21
    TabOrder = 1
  end
  object btConsulta: TButton
    Left = 16
    Top = 120
    Width = 729
    Height = 49
    Caption = 'Realizar Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btConsultaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 202
    Width = 737
    Height = 364
    DataSource = dsConsulta
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fun_id'
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fun_Nome'
        Title.Caption = 'Nome'
        Width = 368
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dp_id'
        Title.Caption = 'Id Departamento'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dp_Nome'
        Title.Caption = 'Departamento'
        Width = 107
        Visible = True
      end>
  end
  object qConsulta: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  fun.Fun_id, '
      '  fun.Fun_Nome,  '
      '  fun.Dp_id,'
      '  dep.Dp_Nome'
      'from Funcionarios fun'
      '  inner join Departamentos dep  On dep.dp_id = fun.dp_id')
    Left = 168
    Top = 72
    object qConsultaFun_id: TAutoIncField
      FieldName = 'Fun_id'
      ReadOnly = True
    end
    object qConsultaFun_Nome: TStringField
      FieldName = 'Fun_Nome'
      Size = 50
    end
    object qConsultaDp_id: TIntegerField
      FieldName = 'Dp_id'
    end
    object qConsultaDp_Nome: TStringField
      FieldName = 'Dp_Nome'
      Size = 50
    end
  end
  object dsConsulta: TDataSource
    DataSet = qConsulta
    Left = 224
    Top = 72
  end
end
