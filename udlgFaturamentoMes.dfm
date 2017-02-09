inherited fdlgFaturamentoMes: TfdlgFaturamentoMes
  Left = 122
  Top = 75
  Width = 847
  Height = 559
  Caption = 'Gerar Faturamento M'#234's - fdlgFaturamentoMes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlButtom: TPanel
    Top = 485
    Width = 831
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
    end
    object Label2: TLabel
      Left = 104
      Top = 5
      Width = 85
      Height = 13
      Caption = 'M'#234's Compet'#234'ncia'
    end
    object Label3: TLabel
      Left = 209
      Top = 5
      Width = 84
      Height = 13
      Caption = 'Ano Compet'#234'ncia'
    end
    object Label4: TLabel
      Left = 300
      Top = 5
      Width = 82
      Height = 13
      Caption = 'Data Vencimento'
    end
    object edtDataEmissao: TJvDateEdit
      Left = 6
      Top = 21
      Width = 97
      Height = 21
      ShowNullDate = False
      TabOrder = 0
    end
    object cbbMes: TComboBox
      Left = 104
      Top = 21
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object edtDataVencimento: TJvDateEdit
      Left = 300
      Top = 21
      Width = 99
      Height = 21
      ShowNullDate = False
      TabOrder = 2
    end
    object edtAno: TJvValidateEdit
      Left = 209
      Top = 21
      Width = 89
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfYear
      EditText = '2000'
      MaxLength = 4
      TabOrder = 3
      ZeroEmpty = True
    end
  end
  object cxGridPadrao: TcxGrid
    Left = 0
    Top = 54
    Width = 831
    Height = 431
    Align = alClient
    TabOrder = 2
    object rdbConsultaNew: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDados
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.PostponedSynchronization = False
      OptionsBehavior.DragHighlighting = False
      OptionsBehavior.DragOpening = False
      OptionsBehavior.DragScrolling = False
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<  Nenhuma Informa'#231#227'o para Exibir  >'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object rdbConsultaNewFANTASIA: TcxGridDBColumn
        DataBinding.FieldName = 'FANTASIA'
        Options.Editing = False
        Width = 216
      end
      object rdbConsultaNewCODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO'
        Options.Editing = False
      end
      object rdbConsultaNewDESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Options.Editing = False
        Width = 304
      end
      object rdbConsultaNewVALOR_MONTANTE: TcxGridDBColumn
        DataBinding.FieldName = 'VALOR_MONTANTE'
        Options.Editing = False
        Width = 86
      end
      object rdbConsultaNewSELECIONAR: TcxGridDBColumn
        DataBinding.FieldName = 'SELECIONAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 77
      end
    end
    object cxGridLevelPadrao: TcxGridLevel
      GridView = rdbConsultaNew
    end
  end
  object sqlDados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT A.COD_FATMONTANTE, A.CODIGO, A.DESCRICAO, A.VALOR_MONTANT' +
        'E, '
      
        '   B.FANTASIA, CAST('#39'S'#39' AS C1) AS SELECIONAR, A.COD_CADCOLABORAD' +
        'OR'
      'FROM FAT_MONTANTE A'
      
        'INNER JOIN CAD_COLABORADOR B ON B.COD_CADCOLABORADOR = A.COD_CAD' +
        'COLABORADOR'
      'WHERE '
      '  A.DATA_INICIAL <= CURRENT_DATE'
      '  AND COALESCE(A.DATA_FINAL,CURRENT_DATE) >= CURRENT_DATE')
    SQLConnection = DMBase.Connection
    Left = 632
    Top = 136
  end
  object dspDados: TDataSetProvider
    DataSet = sqlDados
    Left = 640
    Top = 192
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDados'
    Left = 656
    Top = 264
    object cdsDadosCOD_FATMONTANTE: TIntegerField
      FieldName = 'COD_FATMONTANTE'
      Required = True
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'Montante'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDadosDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 1
    end
    object cdsDadosVALOR_MONTANTE: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_MONTANTE'
      DisplayFormat = '0.,00'
      Precision = 15
      Size = 6
    end
    object cdsDadosFANTASIA: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'FANTASIA'
      Size = 60
    end
    object cdsDadosCOD_CADCOLABORADOR: TIntegerField
      FieldName = 'COD_CADCOLABORADOR'
    end
    object cdsDadosSELECIONAR: TStringField
      DisplayLabel = 'Selecionar'
      FieldName = 'SELECIONAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 656
    Top = 328
  end
end
