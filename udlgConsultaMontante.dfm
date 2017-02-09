inherited fdlgConsultaMontante: TfdlgConsultaMontante
  Left = 173
  Top = 80
  Width = 837
  Height = 535
  Caption = 'Consulta de Montantes - fdlgConsultaMontante'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlButtom: TPanel
    Top = 461
    Width = 821
    TabOrder = 1
  end
  object cxGridPadrao: TcxGrid
    Left = 0
    Top = 0
    Width = 821
    Height = 461
    Align = alClient
    TabOrder = 0
    object rdbConsultaNew: TcxGridDBTableView
      OnDblClick = rdbConsultaNewDblClick
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = rdbConsultaNewCellDblClick
      DataController.DataSource = dsMontantes
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
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<  Nenhuma Informa'#231#227'o para Exibir  >'
      OptionsView.Indicator = True
      object rdbConsultaNewMON: TcxGridDBColumn
        DataBinding.FieldName = 'MON'
      end
      object rdbConsultaNewDES: TcxGridDBColumn
        DataBinding.FieldName = 'DES'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Width = 383
      end
      object rdbConsultaNewVUNI: TcxGridDBColumn
        DataBinding.FieldName = 'VUNI'
        Width = 112
      end
      object rdbConsultaNewDATINI: TcxGridDBColumn
        DataBinding.FieldName = 'DATINI'
        Width = 82
      end
      object rdbConsultaNewDATFIN: TcxGridDBColumn
        DataBinding.FieldName = 'DATFIN'
        Width = 72
      end
      object rdbConsultaNewDATR: TcxGridDBColumn
        DataBinding.FieldName = 'DATR'
        Width = 74
      end
    end
    object cxGridLevelPadrao: TcxGridLevel
      GridView = rdbConsultaNew
    end
  end
  object sqlMontantes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        ' SELECT A.COD, A.MON,A.DATINI, A.DATFIN, A.VUNI, A.TIP, A.DES, A' +
        '.DATR'
      ' FROM FATMON A')
    SQLConnection = DMBase.Connection
    Left = 536
    Top = 55
  end
  object dspMontantes: TDataSetProvider
    DataSet = sqlMontantes
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 103
  end
  object cdsMontantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMontantes'
    Left = 536
    Top = 151
    object cdsMontantesCOD: TIntegerField
      FieldName = 'COD'
      Required = True
    end
    object cdsMontantesMON: TIntegerField
      DisplayLabel = 'Montante'
      FieldName = 'MON'
      Required = True
    end
    object cdsMontantesDATINI: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'DATINI'
    end
    object cdsMontantesDATFIN: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'DATFIN'
    end
    object cdsMontantesVUNI: TFloatField
      DisplayLabel = 'Vlr Unit'#225'rio'
      FieldName = 'VUNI'
    end
    object cdsMontantesTIP: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIP'
    end
    object cdsMontantesDES: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES'
      Size = 1
    end
    object cdsMontantesDATR: TDateField
      DisplayLabel = 'Data Reajuste'
      FieldName = 'DATR'
    end
  end
  object dsMontantes: TDataSource
    DataSet = cdsMontantes
    Left = 536
    Top = 199
  end
end
