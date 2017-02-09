<<<<<<< HEAD
inherited dmFAT_NF_SERVICO: TdmFAT_NF_SERVICO
  OldCreateOrder = True
  Height = 508
  Width = 819
  object sqlFAT_NF_SERVICO: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'   A.*, B.COD AS CODIGO_CLIENTE, B.NOM AS NOME_CLIENTE, ' +
      'B.CID, B.EST'#13#10'FROM FAT_NF_SERVICO A'#13#10'INNER JOIN CADCLI B ON B.ID' +
      ' = A.COD_CADCLI'#13#10'WHERE COD_FATNFSERVICO = :COD_FATNFSERVICO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
      end>
    SQLConnection = DMBase.Connection
    Left = 64
    Top = 88
    object sqlFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlFAT_NF_SERVICONUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICOSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object sqlFAT_NF_SERVICOCFIL: TStringField
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sqlFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOD_CADCLI: TIntegerField
      FieldName = 'COD_CADCLI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICODATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICOCOD_CADBANCO: TIntegerField
      FieldName = 'COD_CADBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICOCOMPETENCIA: TStringField
      FieldName = 'COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlFAT_NF_SERVICOVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISSQN_BASE: TFMTBCDField
      FieldName = 'ISSQN_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISSQN_ALIQUOTA: TFMTBCDField
      FieldName = 'ISSQN_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISSQN_VALOR: TFMTBCDField
      FieldName = 'ISSQN_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOIRRF_BASE: TFMTBCDField
      FieldName = 'IRRF_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOIRRF_ALIQUOTA: TFMTBCDField
      FieldName = 'IRRF_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOIRRF_VALOR: TFMTBCDField
      FieldName = 'IRRF_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCSLL_BASE: TFMTBCDField
      FieldName = 'CSLL_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCSLL_ALIQUOTA: TFMTBCDField
      FieldName = 'CSLL_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCSLL_VALOR: TFMTBCDField
      FieldName = 'CSLL_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOFINS_BASE: TFMTBCDField
      FieldName = 'COFINS_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOFINS_ALIQUOTA: TFMTBCDField
      FieldName = 'COFINS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOFINS_VALOR: TFMTBCDField
      FieldName = 'COFINS_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOPIS_BASE: TFMTBCDField
      FieldName = 'PIS_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOPIS_ALIQUOTA: TFMTBCDField
      FieldName = 'PIS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOPIS_VALOR: TFMTBCDField
      FieldName = 'PIS_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOD_CADCPAG: TIntegerField
      FieldName = 'COD_CADCPAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICONATUREZA_OPERACAO: TIntegerField
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = []
    end
    object sqlFAT_NF_SERVICONOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sqlFAT_NF_SERVICOCID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object sqlFAT_NF_SERVICOEST: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlFAT_NF_SERVICOOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICOINSS_BASE: TFMTBCDField
      FieldName = 'INSS_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOINSS_ALIQUOTA: TFMTBCDField
      FieldName = 'INSS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOINSS_VALOR: TFMTBCDField
      FieldName = 'INSS_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlFAT_NF_SERVICODISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICOCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOOBS_MONTADA: TMemoField
      FieldName = 'OBS_MONTADA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICORPSSUBSTITUIDO: TStringField
      FieldName = 'RPSSUBSTITUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFAT_NF_SERVICO: TDataSetProvider
    DataSet = sqlFAT_NF_SERVICO
    OnGetTableName = dspFAT_NF_SERVICOGetTableName
    Left = 64
    Top = 152
  end
  object cdsFAT_NF_SERVICO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFAT_NF_SERVICO'
    BeforeEdit = cdsFAT_NF_SERVICOBeforeEdit
    BeforePost = cdsFAT_NF_SERVICOBeforePost
    BeforeDelete = cdsFAT_NF_SERVICOBeforeDelete
    OnNewRecord = cdsFAT_NF_SERVICONewRecord
    Left = 64
    Top = 208
    object cdsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFAT_NF_SERVICONUMERO: TIntegerField
      Tag = -5
      DisplayLabel = 'Nro Nota'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICOSERIE: TStringField
      Tag = 1
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOSERIEChange
      Size = 5
    end
    object cdsFAT_NF_SERVICOCFIL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCFILChange
      FixedChar = True
      Size = 2
    end
    object cdsFAT_NF_SERVICOFilial_Look: TStringField
      DisplayLabel = 'Filial'
      FieldKind = fkLookup
      FieldName = 'Filial_Look'
      LookupDataSet = cdsFilial
      LookupKeyFields = 'CFIL'
      LookupResultField = 'FANT'
      KeyFields = 'CFIL'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsFAT_NF_SERVICODATA_EMISSAO: TDateField
      Tag = -5
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICODATA_EMISSAOChange
    end
    object cdsFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      Tag = -5
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = []
      Required = True
      OnChange = cdsFAT_NF_SERVICOCODIGO_CLIENTEChange
    end
    object cdsFAT_NF_SERVICONOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsFAT_NF_SERVICOBanco_look: TStringField
      DisplayLabel = 'Local Cobr'#226'n'#231'a'
      FieldKind = fkLookup
      FieldName = 'Banco_look'
      LookupDataSet = cdsCADBAN
      LookupKeyFields = 'ID'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADBANCO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCPAG_LOOK: TStringField
      DisplayLabel = 'Cond. Pagamento'
      FieldKind = fkLookup
      FieldName = 'CPAG_LOOK'
      LookupDataSet = cdsCPAG
      LookupKeyFields = 'COD'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADCPAG'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICONatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'Natureza'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'NATUREZA_OPERACAO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCOD_CADCLI: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'COD_CADCLI'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCOD_CADCLIChange
    end
    object cdsFAT_NF_SERVICOCOD_CADBANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'COD_CADBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICOCOMPETENCIA: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOSITUACAO: TStringField
      Tag = -5
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsFAT_NF_SERVICOSITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object cdsFAT_NF_SERVICOVALOR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOVALOR_DESCONTOChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOISSQN_BASE: TFMTBCDField
      DisplayLabel = 'Base ISSQN'
      FieldName = 'ISSQN_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOISSQN_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota ISSQN'
      FieldName = 'ISSQN_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOISSQN_VALOR: TFMTBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'ISSQN_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOIRRF_BASE: TFMTBCDField
      DisplayLabel = 'Base IRRF'
      FieldName = 'IRRF_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOIRRF_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota IRRF'
      FieldName = 'IRRF_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOIRRF_VALOR: TFMTBCDField
      DisplayLabel = 'Valor IRRF'
      FieldName = 'IRRF_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCSLL_BASE: TFMTBCDField
      DisplayLabel = 'Base CSLL'
      FieldName = 'CSLL_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCSLL_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota CSLL'
      FieldName = 'CSLL_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCSLL_VALOR: TFMTBCDField
      DisplayLabel = 'Valor CSLL'
      FieldName = 'CSLL_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOFINS_BASE: TFMTBCDField
      DisplayLabel = 'Base Cofins'
      FieldName = 'COFINS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOFINS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota Cofins'
      FieldName = 'COFINS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOFINS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'COFINS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOPIS_BASE: TFMTBCDField
      DisplayLabel = 'Base PIS'
      FieldName = 'PIS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOPIS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota PIS'
      FieldName = 'PIS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOPIS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'PIS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOD_CADCPAG: TIntegerField
      FieldName = 'COD_CADCPAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICONATUREZA_OPERACAO: TIntegerField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICOEST: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsFAT_NF_SERVICOOBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICOINSS_BASE: TFMTBCDField
      DisplayLabel = 'Base INSS'
      FieldName = 'INSS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOINSS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota INSS'
      FieldName = 'INSS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOINSS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor INSS'
      FieldName = 'INSS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOsqlFAT_NF_SERVICO_ITEM: TDataSetField
      FieldName = 'sqlFAT_NF_SERVICO_ITEM'
    end
    object cdsFAT_NF_SERVICODISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICONATUREZA_CODIGO: TStringField
      FieldKind = fkLookup
      FieldName = 'NATUREZA_CODIGO'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'CODIGO'
      KeyFields = 'NATUREZA_OPERACAO'
      Size = 3
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOD_CADSERVICOChange
    end
    object cdsFAT_NF_SERVICOISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFAT_NF_SERVICOOBS_MONTADA: TMemoField
      FieldName = 'OBS_MONTADA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICORPSSUBSTITUIDO: TStringField
      FieldName = 'RPSSUBSTITUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFAT_NF_SERVICOServico_Look: TStringField
      DisplayLabel = 'Tipo de Servi'#231'o'
      FieldKind = fkLookup
      FieldName = 'Servico_Look'
      LookupDataSet = cdsCad_Servico
      LookupKeyFields = 'COD_CADSERVICO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CADSERVICO'
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOISS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ISS_PERC'
    end
    object cdsFAT_NF_SERVICOIRR_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IRR_PERC'
    end
    object cdsFAT_NF_SERVICOPIS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PIS_PERC'
    end
    object cdsFAT_NF_SERVICOCSLL_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CSLL_PERC'
    end
    object cdsFAT_NF_SERVICOCOFINS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COFINS_PERC'
    end
    object cdsFAT_NF_SERVICOINSS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INSS_PERC'
    end
    object cdsFAT_NF_SERVICOCID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCIDChange
      Size = 72
    end
    object cdsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sqlConsFAT_NF_SERVICO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM V_FAT_NF_SERVICO'
      'WHERE CEMP = :CEMP')
    SQLConnection = DMBase.Connection
    Left = 688
    Top = 111
    object sqlConsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlConsFAT_NF_SERVICONUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICOSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sqlConsFAT_NF_SERVICOCFIL: TStringField
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sqlConsFAT_NF_SERVICODATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlConsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlConsFAT_NF_SERVICOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlConsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICONOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sqlConsFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sqlConsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspConsFAT_NF_SERVICO: TDataSetProvider
    DataSet = sqlConsFAT_NF_SERVICO
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 159
  end
  object cdsConsFAT_NF_SERVICO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsFAT_NF_SERVICO'
    Left = 688
    Top = 207
    object cdsConsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsConsFAT_NF_SERVICONUMERO: TIntegerField
      DisplayLabel = 'Nro Nota'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICOSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsConsFAT_NF_SERVICOCFIL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsConsFAT_NF_SERVICODATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Vlr Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Vlr Liquido'
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConsFAT_NF_SERVICOSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICONOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsConsFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsConsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      DisplayLabel = 'M'#234's Compet'#234'ncia'
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      DisplayLabel = 'Ano Compet'#234'ncia'
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsConsFAT_NF_SERVICO: TDataSource
    DataSet = cdsConsFAT_NF_SERVICO
    Left = 688
    Top = 255
  end
  object sqlCADBAN: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOM FROM CADBAN'
      'WHERE'
      '  CEMP = :CEMP'
      '  or (SELECT EMP FROM MENUITEM WHERE NOME = '#39'CADBAN'#39') = '#39'S'#39)
    SQLConnection = DMBase.Connection
    Left = 256
    Top = 8
  end
  object dspCADBAN: TDataSetProvider
    DataSet = sqlCADBAN
    Left = 256
    Top = 8
  end
  object cdsCADBAN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCADBAN'
    Left = 256
    Top = 8
    object cdsCADBANID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCADBANNOM: TStringField
      FieldName = 'NOM'
      Size = 40
    end
  end
  object dsCADBAN: TDataSource
    DataSet = cdsCADBAN
    Left = 256
    Top = 8
  end
  object sqlCPAG: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COD, NOM FROM CADCPAG'
      'WHERE'
      '  CEMP = :CEMP'
      '  or (SELECT EMP FROM MENUITEM WHERE NOME = '#39'CADCPAG'#39') = '#39'S'#39)
    SQLConnection = DMBase.Connection
    Left = 176
    Top = 8
  end
  object dspCPAG: TDataSetProvider
    DataSet = sqlCPAG
    Left = 176
    Top = 8
  end
  object cdsCPAG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCPAG'
    Left = 176
    Top = 8
    object cdsCPAGCOD: TIntegerField
      FieldName = 'COD'
      Required = True
    end
    object cdsCPAGNOM: TStringField
      FieldName = 'NOM'
      Size = 30
    end
  end
  object dsCPAG: TDataSource
    DataSet = cdsCPAG
    Left = 176
    Top = 8
  end
  object sqlNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT COD_TABELA_NOMES, CODIGO, CODIGO||'#39' - '#39'||DESCRICAO as DES' +
        'CRICAO'
      'FROM TABELA_NOMES'
      'WHERE'
      '  SISTEMA = '#39'FAT'#39
      '  AND TIPO = '#39'01'#39)
    SQLConnection = DMBase.Connection
    Left = 328
    Top = 8
  end
  object dspNatureza: TDataSetProvider
    DataSet = sqlNatureza
    Left = 328
    Top = 8
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 328
    Top = 8
    object cdsNaturezaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object cdsNaturezaCOD_TABELA_NOMES: TIntegerField
      FieldName = 'COD_TABELA_NOMES'
    end
    object cdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 328
    Top = 8
  end
  object sqlFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CFIL, NOM, FANT'
      'FROM CADEMP'
      'WHERE'
      '  CEMP = :CEMP')
    SQLConnection = DMBase.Connection
    Left = 400
    Top = 8
  end
  object dspFilial: TDataSetProvider
    DataSet = sqlFilial
    Left = 400
    Top = 8
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 400
    Top = 8
    object cdsFilialCFIL: TStringField
      FieldName = 'CFIL'
      Size = 2
    end
    object cdsFilialNOM: TStringField
      FieldName = 'NOM'
      Size = 60
    end
    object cdsFilialFANT: TStringField
      FieldName = 'FANT'
      Size = 40
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 400
    Top = 8
  end
  object sqlFAT_NF_SERVICO_ITEM: TSQLDataSet
    CommandText = 
      'SELECT * FROM FAT_NF_SERVICO_ITEM'#13#10'WHERE'#13#10' COD_FATNFSERVICO = :C' +
      'OD_FATNFSERVICO'
    DataSource = dsmFAT_NF_SERVICO
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DMBase.Connection
    Left = 256
    Top = 88
    object sqlFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM: TIntegerField
      FieldName = 'COD_FATNFSERVICOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlFAT_NF_SERVICO_ITEMCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICO_ITEMCOD_FATMON: TIntegerField
      FieldName = 'COD_FATMON'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMMONTANTE: TIntegerField
      FieldName = 'MONTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 6
    end
  end
  object dsmFAT_NF_SERVICO: TDataSource
    DataSet = sqlFAT_NF_SERVICO
    Left = 64
    Top = 264
  end
  object cdsFAT_NF_SERVICO_ITEM: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsFAT_NF_SERVICOsqlFAT_NF_SERVICO_ITEM
    Params = <>
    BeforePost = cdsFAT_NF_SERVICO_ITEMBeforePost
    AfterPost = cdsFAT_NF_SERVICO_ITEMAfterPost
    AfterDelete = cdsFAT_NF_SERVICO_ITEMAfterDelete
    OnNewRecord = cdsFAT_NF_SERVICO_ITEMNewRecord
    Left = 256
    Top = 144
    object cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICO: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICO_ITEMMONTANTE: TIntegerField
      DisplayLabel = 'Montante'
      FieldName = 'MONTANTE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICO_ITEMMONTANTEChange
    end
    object cdsFAT_NF_SERVICO_ITEMDESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICO_ITEMCOD_FATMON: TIntegerField
      FieldName = 'COD_FATMON'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICO_ITEMQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICO_ITEMPRECO_UNITARIO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PRECO_UNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.,000000'
      EditFormat = '0.,000000'
      Precision = 15
      Size = 6
    end
    object cdsFAT_NF_SERVICO_ITEMTOTAL: TAggregateField
      DisplayLabel = 'Total Itens'
      FieldName = 'TOTAL'
      Active = True
      Expression = 'SUM(PRECO_UNITARIO)'
    end
  end
  object SqlComunicacao: TSQLDataSet
    CommandText = 
      'SELECT * FROM FAT_NF_SERVICO_COMUNICACAO'#13#10'WHERE COD_FATNFSERVICO' +
      ' = :COD_FATNFSERVICO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
      end>
    SQLConnection = DMBase.Connection
    Left = 256
    Top = 200
    object SqlComunicacaoCOD_FATNFSERVICOCOMUNICACAO: TIntegerField
      FieldName = 'COD_FATNFSERVICOCOMUNICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlComunicacaoCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SqlComunicacaoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComunicacaoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object SqlComunicacaoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlComunicacaoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object SqlComunicacaoCODIGOVERIFICACAO: TStringField
      FieldName = 'CODIGOVERIFICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComunicacaoNFSE_NUMERO: TStringField
      FieldName = 'NFSE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComunicacaoXML: TMemoField
      FieldName = 'XML'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspComunicacao: TDataSetProvider
    DataSet = SqlComunicacao
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 231
  end
  object cdsComunicacao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
      end>
    ProviderName = 'dspComunicacao'
    Left = 256
    Top = 232
    object cdsComunicacaoCOD_FATNFSERVICOCOMUNICACAO: TIntegerField
      FieldName = 'COD_FATNFSERVICOCOMUNICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsComunicacaoCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsComunicacaoDATA_HORA: TSQLTimeStampField
      DisplayLabel = 'Data Hora'
      FieldName = 'DATA_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsComunicacaoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnGetText = cdsComunicacaoTIPOGetText
      FixedChar = True
      Size = 1
    end
    object cdsComunicacaoPROTOCOLO: TStringField
      DisplayLabel = 'Protocolo'
      FieldName = 'PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsComunicacaoOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsComunicacaoCODIGOVERIFICACAO: TStringField
      FieldName = 'CODIGOVERIFICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsComunicacaoNFSE_NUMERO: TStringField
      FieldName = 'NFSE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsComunicacaoXML: TMemoField
      DisplayLabel = 'Xml'
      FieldName = 'XML'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object sqlCad_Servico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  A.COD_CADSERVICO, A.NOME, A.CODIGO_SERVICO'
      'FROM CAD_SERVICO A'
      'WHERE'
      '  A.CEMP IN ('#39'0'#39', :CEMP)')
    SQLConnection = DMBase.Connection
    Left = 472
    Top = 8
  end
  object dspCad_Servico: TDataSetProvider
    DataSet = sqlCad_Servico
    Left = 472
    Top = 8
  end
  object cdsCad_Servico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCad_Servico'
    Left = 472
    Top = 8
    object cdsCad_ServicoCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      Required = True
    end
    object cdsCad_ServicoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 80
    end
    object cdsCad_ServicoCODIGO_SERVICO: TStringField
      FieldName = 'CODIGO_SERVICO'
      Size = 10
    end
  end
  object dsCad_Servico: TDataSource
    DataSet = cdsCad_Servico
    Left = 472
    Top = 8
  end
  object cdsFat_Nf_Servico_Copy: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFAT_NF_SERVICO'
    BeforePost = cdsFAT_NF_SERVICOBeforePost
    BeforeDelete = cdsFAT_NF_SERVICOBeforeDelete
    OnNewRecord = cdsFAT_NF_SERVICONewRecord
    Left = 688
    Top = 376
    object cdsFat_Nf_Servico_CopyCOD_FATNFSERVICO: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFat_Nf_Servico_CopyNUMERO: TIntegerField
      Tag = 1
      DisplayLabel = 'Nro Nota'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopySERIE: TStringField
      Tag = 1
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOSERIEChange
      Size = 5
    end
    object cdsFat_Nf_Servico_CopyCFIL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCFILChange
      FixedChar = True
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyFilial_Look: TStringField
      Tag = 1
      DisplayLabel = 'Filial'
      FieldKind = fkLookup
      FieldName = 'Filial_Look'
      LookupDataSet = cdsFilial
      LookupKeyFields = 'CFIL'
      LookupResultField = 'FANT'
      KeyFields = 'CFIL'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyDATA_EMISSAO: TDateField
      Tag = 1
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyDATA_VENCIMENTO: TDateField
      Tag = 1
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = []
      Required = True
      OnChange = cdsFAT_NF_SERVICOCODIGO_CLIENTEChange
    end
    object cdsFat_Nf_Servico_CopyNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsFat_Nf_Servico_CopyBanco_look: TStringField
      Tag = 1
      DisplayLabel = 'Local Cobr'#226'n'#231'a'
      FieldKind = fkLookup
      FieldName = 'Banco_look'
      LookupDataSet = cdsCADBAN
      LookupKeyFields = 'ID'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADBANCO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCPAG_LOOK: TStringField
      DisplayLabel = 'Cond. Pagamento'
      FieldKind = fkLookup
      FieldName = 'CPAG_LOOK'
      LookupDataSet = cdsCPAG
      LookupKeyFields = 'COD'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADCPAG'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyNatureza: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'Natureza'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'NATUREZA_OPERACAO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCOD_CADCLI: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'COD_CADCLI'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCOD_CADCLIChange
    end
    object cdsFat_Nf_Servico_CopyCOD_CADBANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'COD_CADBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyCOMPETENCIA: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFat_Nf_Servico_CopyVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopySITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsFAT_NF_SERVICOSITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyVALOR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOVALOR_DESCONTOChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyISSQN_BASE: TFMTBCDField
      DisplayLabel = 'Base ISSQN'
      FieldName = 'ISSQN_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyISSQN_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota ISSQN'
      FieldName = 'ISSQN_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyISSQN_VALOR: TFMTBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'ISSQN_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyIRRF_BASE: TFMTBCDField
      DisplayLabel = 'Base IRRF'
      FieldName = 'IRRF_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyIRRF_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota IRRF'
      FieldName = 'IRRF_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyIRRF_VALOR: TFMTBCDField
      DisplayLabel = 'Valor IRRF'
      FieldName = 'IRRF_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCSLL_BASE: TFMTBCDField
      DisplayLabel = 'Base CSLL'
      FieldName = 'CSLL_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCSLL_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota CSLL'
      FieldName = 'CSLL_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCSLL_VALOR: TFMTBCDField
      DisplayLabel = 'Valor CSLL'
      FieldName = 'CSLL_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOFINS_BASE: TFMTBCDField
      DisplayLabel = 'Base Cofins'
      FieldName = 'COFINS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOFINS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota Cofins'
      FieldName = 'COFINS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOFINS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'COFINS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyPIS_BASE: TFMTBCDField
      DisplayLabel = 'Base PIS'
      FieldName = 'PIS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyPIS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota PIS'
      FieldName = 'PIS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyPIS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'PIS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOD_CADCPAG: TIntegerField
      FieldName = 'COD_CADCPAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyNATUREZA_OPERACAO: TIntegerField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFat_Nf_Servico_CopyEST: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyOBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyCID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCIDChange
      Size = 72
    end
    object cdsFat_Nf_Servico_CopyINSS_BASE: TFMTBCDField
      DisplayLabel = 'Base INSS'
      FieldName = 'INSS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyINSS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota INSS'
      FieldName = 'INSS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyINSS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor INSS'
      FieldName = 'INSS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopysqlFAT_NF_SERVICO_ITEM: TDataSetField
      FieldName = 'sqlFAT_NF_SERVICO_ITEM'
    end
    object cdsFat_Nf_Servico_CopyDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyNATUREZA_CODIGO: TStringField
      FieldKind = fkLookup
      FieldName = 'NATUREZA_CODIGO'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'CODIGO'
      KeyFields = 'NATUREZA_OPERACAO'
      Size = 3
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOD_CADSERVICOChange
    end
    object cdsFat_Nf_Servico_CopyISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyOBS_MONTADA: TMemoField
      FieldName = 'OBS_MONTADA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyRPSSUBSTITUIDO: TStringField
      FieldName = 'RPSSUBSTITUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyServico_Look: TStringField
      Tag = 1
      DisplayLabel = 'Tipo de Servi'#231'o'
      FieldKind = fkLookup
      FieldName = 'Servico_Look'
      LookupDataSet = cdsCad_Servico
      LookupKeyFields = 'COD_CADSERVICO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CADSERVICO'
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyISS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ISS_PERC'
    end
    object cdsFat_Nf_Servico_CopyIRR_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IRR_PERC'
    end
    object cdsFat_Nf_Servico_CopyPIS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PIS_PERC'
    end
    object cdsFat_Nf_Servico_CopyCSLL_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CSLL_PERC'
    end
    object cdsFat_Nf_Servico_CopyCOFINS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COFINS_PERC'
    end
    object cdsFat_Nf_Servico_CopyINSS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INSS_PERC'
    end
  end
  object sqlEND_CIDADES: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT NOME_CIDADE FROM END_CIDADES'
      'ORDER BY NOME_CIDADE')
    SQLConnection = DMBase.Connection
    Left = 464
    Top = 120
  end
  object cdsEND_CIDADES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEND_CIDADES'
    Left = 464
    Top = 240
    object cdsEND_CIDADESNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 100
    end
  end
  object dspEND_CIDADES: TDataSetProvider
    DataSet = sqlEND_CIDADES
    Left = 464
    Top = 176
  end
end
=======
inherited dmFAT_NF_SERVICO: TdmFAT_NF_SERVICO
  OldCreateOrder = True
  Height = 508
  Width = 819
  object sqlFAT_NF_SERVICO: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'   A.*, B.COD AS CODIGO_CLIENTE, B.NOM AS NOME_CLIENTE, ' +
      'B.CID, B.EST'#13#10'FROM FAT_NF_SERVICO A'#13#10'INNER JOIN CADCLI B ON B.ID' +
      ' = A.COD_CADCLI'#13#10'WHERE COD_FATNFSERVICO = :COD_FATNFSERVICO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
      end>
    SQLConnection = DMBase.Connection
    Left = 64
    Top = 88
    object sqlFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlFAT_NF_SERVICONUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICOSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object sqlFAT_NF_SERVICOCFIL: TStringField
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sqlFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOD_CADCLI: TIntegerField
      FieldName = 'COD_CADCLI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICODATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICOCOD_CADBANCO: TIntegerField
      FieldName = 'COD_CADBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICOCOMPETENCIA: TStringField
      FieldName = 'COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlFAT_NF_SERVICOVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISSQN_BASE: TFMTBCDField
      FieldName = 'ISSQN_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISSQN_ALIQUOTA: TFMTBCDField
      FieldName = 'ISSQN_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISSQN_VALOR: TFMTBCDField
      FieldName = 'ISSQN_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOIRRF_BASE: TFMTBCDField
      FieldName = 'IRRF_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOIRRF_ALIQUOTA: TFMTBCDField
      FieldName = 'IRRF_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOIRRF_VALOR: TFMTBCDField
      FieldName = 'IRRF_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCSLL_BASE: TFMTBCDField
      FieldName = 'CSLL_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCSLL_ALIQUOTA: TFMTBCDField
      FieldName = 'CSLL_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCSLL_VALOR: TFMTBCDField
      FieldName = 'CSLL_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOFINS_BASE: TFMTBCDField
      FieldName = 'COFINS_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOFINS_ALIQUOTA: TFMTBCDField
      FieldName = 'COFINS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOFINS_VALOR: TFMTBCDField
      FieldName = 'COFINS_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOPIS_BASE: TFMTBCDField
      FieldName = 'PIS_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOPIS_ALIQUOTA: TFMTBCDField
      FieldName = 'PIS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOPIS_VALOR: TFMTBCDField
      FieldName = 'PIS_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOCOD_CADCPAG: TIntegerField
      FieldName = 'COD_CADCPAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlFAT_NF_SERVICONATUREZA_OPERACAO: TIntegerField
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = []
    end
    object sqlFAT_NF_SERVICONOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sqlFAT_NF_SERVICOCID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object sqlFAT_NF_SERVICOEST: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlFAT_NF_SERVICOOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICOINSS_BASE: TFMTBCDField
      FieldName = 'INSS_BASE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOINSS_ALIQUOTA: TFMTBCDField
      FieldName = 'INSS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOINSS_VALOR: TFMTBCDField
      FieldName = 'INSS_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlFAT_NF_SERVICOISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlFAT_NF_SERVICODISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICOCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOOBS_MONTADA: TMemoField
      FieldName = 'OBS_MONTADA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICORPSSUBSTITUIDO: TStringField
      FieldName = 'RPSSUBSTITUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFAT_NF_SERVICO: TDataSetProvider
    DataSet = sqlFAT_NF_SERVICO
    OnGetTableName = dspFAT_NF_SERVICOGetTableName
    Left = 64
    Top = 152
  end
  object cdsFAT_NF_SERVICO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFAT_NF_SERVICO'
    BeforeEdit = cdsFAT_NF_SERVICOBeforeEdit
    BeforePost = cdsFAT_NF_SERVICOBeforePost
    BeforeDelete = cdsFAT_NF_SERVICOBeforeDelete
    OnNewRecord = cdsFAT_NF_SERVICONewRecord
    Left = 64
    Top = 208
    object cdsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFAT_NF_SERVICONUMERO: TIntegerField
      Tag = -5
      DisplayLabel = 'Nro Nota'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICOSERIE: TStringField
      Tag = 1
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOSERIEChange
      Size = 5
    end
    object cdsFAT_NF_SERVICOCFIL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCFILChange
      FixedChar = True
      Size = 2
    end
    object cdsFAT_NF_SERVICOFilial_Look: TStringField
      DisplayLabel = 'Filial'
      FieldKind = fkLookup
      FieldName = 'Filial_Look'
      LookupDataSet = cdsFilial
      LookupKeyFields = 'CFIL'
      LookupResultField = 'FANT'
      KeyFields = 'CFIL'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsFAT_NF_SERVICODATA_EMISSAO: TDateField
      Tag = -5
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICODATA_EMISSAOChange
    end
    object cdsFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      Tag = -5
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = []
      Required = True
      OnChange = cdsFAT_NF_SERVICOCODIGO_CLIENTEChange
    end
    object cdsFAT_NF_SERVICONOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsFAT_NF_SERVICOBanco_look: TStringField
      DisplayLabel = 'Local Cobr'#226'n'#231'a'
      FieldKind = fkLookup
      FieldName = 'Banco_look'
      LookupDataSet = cdsCADBAN
      LookupKeyFields = 'ID'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADBANCO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCPAG_LOOK: TStringField
      DisplayLabel = 'Cond. Pagamento'
      FieldKind = fkLookup
      FieldName = 'CPAG_LOOK'
      LookupDataSet = cdsCPAG
      LookupKeyFields = 'COD'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADCPAG'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICONatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'Natureza'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'NATUREZA_OPERACAO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCOD_CADCLI: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'COD_CADCLI'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCOD_CADCLIChange
    end
    object cdsFAT_NF_SERVICOCOD_CADBANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'COD_CADBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICOCOMPETENCIA: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOSITUACAO: TStringField
      Tag = -5
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsFAT_NF_SERVICOSITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object cdsFAT_NF_SERVICOVALOR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOVALOR_DESCONTOChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOISSQN_BASE: TFMTBCDField
      DisplayLabel = 'Base ISSQN'
      FieldName = 'ISSQN_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOISSQN_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota ISSQN'
      FieldName = 'ISSQN_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOISSQN_VALOR: TFMTBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'ISSQN_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOIRRF_BASE: TFMTBCDField
      DisplayLabel = 'Base IRRF'
      FieldName = 'IRRF_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOIRRF_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota IRRF'
      FieldName = 'IRRF_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOIRRF_VALOR: TFMTBCDField
      DisplayLabel = 'Valor IRRF'
      FieldName = 'IRRF_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCSLL_BASE: TFMTBCDField
      DisplayLabel = 'Base CSLL'
      FieldName = 'CSLL_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCSLL_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota CSLL'
      FieldName = 'CSLL_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCSLL_VALOR: TFMTBCDField
      DisplayLabel = 'Valor CSLL'
      FieldName = 'CSLL_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOFINS_BASE: TFMTBCDField
      DisplayLabel = 'Base Cofins'
      FieldName = 'COFINS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOFINS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota Cofins'
      FieldName = 'COFINS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOFINS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'COFINS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOPIS_BASE: TFMTBCDField
      DisplayLabel = 'Base PIS'
      FieldName = 'PIS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOPIS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota PIS'
      FieldName = 'PIS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOPIS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'PIS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOCOD_CADCPAG: TIntegerField
      FieldName = 'COD_CADCPAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFAT_NF_SERVICONATUREZA_OPERACAO: TIntegerField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICOEST: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsFAT_NF_SERVICOOBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICOINSS_BASE: TFMTBCDField
      DisplayLabel = 'Base INSS'
      FieldName = 'INSS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOINSS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota INSS'
      FieldName = 'INSS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOINSS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor INSS'
      FieldName = 'INSS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFAT_NF_SERVICOsqlFAT_NF_SERVICO_ITEM: TDataSetField
      FieldName = 'sqlFAT_NF_SERVICO_ITEM'
    end
    object cdsFAT_NF_SERVICODISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICONATUREZA_CODIGO: TStringField
      FieldKind = fkLookup
      FieldName = 'NATUREZA_CODIGO'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'CODIGO'
      KeyFields = 'NATUREZA_OPERACAO'
      Size = 3
      Lookup = True
    end
    object cdsFAT_NF_SERVICOCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOD_CADSERVICOChange
    end
    object cdsFAT_NF_SERVICOISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFAT_NF_SERVICOOBS_MONTADA: TMemoField
      FieldName = 'OBS_MONTADA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICORPSSUBSTITUIDO: TStringField
      FieldName = 'RPSSUBSTITUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFAT_NF_SERVICOServico_Look: TStringField
      DisplayLabel = 'Tipo de Servi'#231'o'
      FieldKind = fkLookup
      FieldName = 'Servico_Look'
      LookupDataSet = cdsCad_Servico
      LookupKeyFields = 'COD_CADSERVICO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CADSERVICO'
      Size = 150
      Lookup = True
    end
    object cdsFAT_NF_SERVICOISS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ISS_PERC'
    end
    object cdsFAT_NF_SERVICOIRR_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IRR_PERC'
    end
    object cdsFAT_NF_SERVICOPIS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PIS_PERC'
    end
    object cdsFAT_NF_SERVICOCSLL_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CSLL_PERC'
    end
    object cdsFAT_NF_SERVICOCOFINS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COFINS_PERC'
    end
    object cdsFAT_NF_SERVICOINSS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INSS_PERC'
    end
    object cdsFAT_NF_SERVICOCID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCIDChange
      Size = 72
    end
    object cdsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sqlConsFAT_NF_SERVICO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM V_FAT_NF_SERVICO'
      'WHERE CEMP = :CEMP')
    SQLConnection = DMBase.Connection
    Left = 688
    Top = 111
    object sqlConsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlConsFAT_NF_SERVICONUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICOSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sqlConsFAT_NF_SERVICOCFIL: TStringField
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sqlConsFAT_NF_SERVICODATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlConsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sqlConsFAT_NF_SERVICOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlConsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICONOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sqlConsFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sqlConsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlConsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspConsFAT_NF_SERVICO: TDataSetProvider
    DataSet = sqlConsFAT_NF_SERVICO
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 159
  end
  object cdsConsFAT_NF_SERVICO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsFAT_NF_SERVICO'
    Left = 688
    Top = 207
    object cdsConsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsConsFAT_NF_SERVICONUMERO: TIntegerField
      DisplayLabel = 'Nro Nota'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICOSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsConsFAT_NF_SERVICOCFIL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsConsFAT_NF_SERVICODATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICODATA_VENCIMENTO: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Vlr Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Vlr Liquido'
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConsFAT_NF_SERVICOSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICONOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsConsFAT_NF_SERVICOCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsConsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField
      DisplayLabel = 'M'#234's Compet'#234'ncia'
      FieldName = 'MES_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField
      DisplayLabel = 'Ano Compet'#234'ncia'
      FieldName = 'ANO_COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsConsFAT_NF_SERVICO: TDataSource
    DataSet = cdsConsFAT_NF_SERVICO
    Left = 688
    Top = 255
  end
  object sqlCADBAN: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOM FROM CADBAN'
      'WHERE'
      '  CEMP = :CEMP'
      '  or (SELECT EMP FROM MENUITEM WHERE NOME = '#39'CADBAN'#39') = '#39'S'#39)
    SQLConnection = DMBase.Connection
    Left = 256
    Top = 8
  end
  object dspCADBAN: TDataSetProvider
    DataSet = sqlCADBAN
    Left = 256
    Top = 8
  end
  object cdsCADBAN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCADBAN'
    Left = 256
    Top = 8
    object cdsCADBANID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCADBANNOM: TStringField
      FieldName = 'NOM'
      Size = 40
    end
  end
  object dsCADBAN: TDataSource
    DataSet = cdsCADBAN
    Left = 256
    Top = 8
  end
  object sqlCPAG: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COD, NOM FROM CADCPAG'
      'WHERE'
      '  CEMP = :CEMP'
      '  or (SELECT EMP FROM MENUITEM WHERE NOME = '#39'CADCPAG'#39') = '#39'S'#39)
    SQLConnection = DMBase.Connection
    Left = 176
    Top = 8
  end
  object dspCPAG: TDataSetProvider
    DataSet = sqlCPAG
    Left = 176
    Top = 8
  end
  object cdsCPAG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCPAG'
    Left = 176
    Top = 8
    object cdsCPAGCOD: TIntegerField
      FieldName = 'COD'
      Required = True
    end
    object cdsCPAGNOM: TStringField
      FieldName = 'NOM'
      Size = 30
    end
  end
  object dsCPAG: TDataSource
    DataSet = cdsCPAG
    Left = 176
    Top = 8
  end
  object sqlNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT COD_TABELA_NOMES, CODIGO, CODIGO||'#39' - '#39'||DESCRICAO as DES' +
        'CRICAO'
      'FROM TABELA_NOMES'
      'WHERE'
      '  SISTEMA = '#39'FAT'#39
      '  AND TIPO = '#39'01'#39)
    SQLConnection = DMBase.Connection
    Left = 328
    Top = 8
  end
  object dspNatureza: TDataSetProvider
    DataSet = sqlNatureza
    Left = 328
    Top = 8
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 328
    Top = 8
    object cdsNaturezaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object cdsNaturezaCOD_TABELA_NOMES: TIntegerField
      FieldName = 'COD_TABELA_NOMES'
    end
    object cdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 328
    Top = 8
  end
  object sqlFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CFIL, NOM, FANT'
      'FROM CADEMP'
      'WHERE'
      '  CEMP = :CEMP')
    SQLConnection = DMBase.Connection
    Left = 400
    Top = 8
  end
  object dspFilial: TDataSetProvider
    DataSet = sqlFilial
    Left = 400
    Top = 8
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 400
    Top = 8
    object cdsFilialCFIL: TStringField
      FieldName = 'CFIL'
      Size = 2
    end
    object cdsFilialNOM: TStringField
      FieldName = 'NOM'
      Size = 60
    end
    object cdsFilialFANT: TStringField
      FieldName = 'FANT'
      Size = 40
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 400
    Top = 8
  end
  object sqlFAT_NF_SERVICO_ITEM: TSQLDataSet
    CommandText = 
      'SELECT * FROM FAT_NF_SERVICO_ITEM'#13#10'WHERE'#13#10' COD_FATNFSERVICO = :C' +
      'OD_FATNFSERVICO'
    DataSource = dsmFAT_NF_SERVICO
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DMBase.Connection
    Left = 256
    Top = 88
    object sqlFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM: TIntegerField
      FieldName = 'COD_FATNFSERVICOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlFAT_NF_SERVICO_ITEMCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object sqlFAT_NF_SERVICO_ITEMCOD_FATMON: TIntegerField
      FieldName = 'COD_FATMON'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMMONTANTE: TIntegerField
      FieldName = 'MONTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlFAT_NF_SERVICO_ITEMPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 6
    end
  end
  object dsmFAT_NF_SERVICO: TDataSource
    DataSet = sqlFAT_NF_SERVICO
    Left = 64
    Top = 264
  end
  object cdsFAT_NF_SERVICO_ITEM: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsFAT_NF_SERVICOsqlFAT_NF_SERVICO_ITEM
    Params = <>
    BeforePost = cdsFAT_NF_SERVICO_ITEMBeforePost
    AfterPost = cdsFAT_NF_SERVICO_ITEMAfterPost
    AfterDelete = cdsFAT_NF_SERVICO_ITEMAfterDelete
    OnNewRecord = cdsFAT_NF_SERVICO_ITEMNewRecord
    Left = 256
    Top = 144
    object cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICO: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICO_ITEMMONTANTE: TIntegerField
      DisplayLabel = 'Montante'
      FieldName = 'MONTANTE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICO_ITEMMONTANTEChange
    end
    object cdsFAT_NF_SERVICO_ITEMDESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object cdsFAT_NF_SERVICO_ITEMCOD_FATMON: TIntegerField
      FieldName = 'COD_FATMON'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICO_ITEMQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFAT_NF_SERVICO_ITEMPRECO_UNITARIO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PRECO_UNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.,000000'
      EditFormat = '0.,000000'
      Precision = 15
      Size = 6
    end
    object cdsFAT_NF_SERVICO_ITEMTOTAL: TAggregateField
      DisplayLabel = 'Total Itens'
      FieldName = 'TOTAL'
      Active = True
      Expression = 'SUM(PRECO_UNITARIO)'
    end
  end
  object SqlComunicacao: TSQLDataSet
    CommandText = 
      'SELECT * FROM FAT_NF_SERVICO_COMUNICACAO'#13#10'WHERE COD_FATNFSERVICO' +
      ' = :COD_FATNFSERVICO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
      end>
    SQLConnection = DMBase.Connection
    Left = 256
    Top = 200
    object SqlComunicacaoCOD_FATNFSERVICOCOMUNICACAO: TIntegerField
      FieldName = 'COD_FATNFSERVICOCOMUNICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlComunicacaoCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SqlComunicacaoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComunicacaoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object SqlComunicacaoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlComunicacaoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object SqlComunicacaoCODIGOVERIFICACAO: TStringField
      FieldName = 'CODIGOVERIFICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComunicacaoNFSE_NUMERO: TStringField
      FieldName = 'NFSE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComunicacaoXML: TMemoField
      FieldName = 'XML'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspComunicacao: TDataSetProvider
    DataSet = SqlComunicacao
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 231
  end
  object cdsComunicacao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_FATNFSERVICO'
        ParamType = ptInput
      end>
    ProviderName = 'dspComunicacao'
    Left = 256
    Top = 232
    object cdsComunicacaoCOD_FATNFSERVICOCOMUNICACAO: TIntegerField
      FieldName = 'COD_FATNFSERVICOCOMUNICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsComunicacaoCOD_FATNFSERVICO: TIntegerField
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsComunicacaoDATA_HORA: TSQLTimeStampField
      DisplayLabel = 'Data Hora'
      FieldName = 'DATA_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsComunicacaoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnGetText = cdsComunicacaoTIPOGetText
      FixedChar = True
      Size = 1
    end
    object cdsComunicacaoPROTOCOLO: TStringField
      DisplayLabel = 'Protocolo'
      FieldName = 'PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsComunicacaoOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsComunicacaoCODIGOVERIFICACAO: TStringField
      FieldName = 'CODIGOVERIFICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsComunicacaoNFSE_NUMERO: TStringField
      FieldName = 'NFSE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsComunicacaoXML: TMemoField
      DisplayLabel = 'Xml'
      FieldName = 'XML'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object sqlCad_Servico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  A.COD_CADSERVICO, A.NOME, A.CODIGO_SERVICO'
      'FROM CAD_SERVICO A'
      'WHERE'
      '  A.CEMP IN ('#39'0'#39', :CEMP)')
    SQLConnection = DMBase.Connection
    Left = 472
    Top = 8
  end
  object dspCad_Servico: TDataSetProvider
    DataSet = sqlCad_Servico
    Left = 472
    Top = 8
  end
  object cdsCad_Servico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCad_Servico'
    Left = 472
    Top = 8
    object cdsCad_ServicoCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      Required = True
    end
    object cdsCad_ServicoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 80
    end
    object cdsCad_ServicoCODIGO_SERVICO: TStringField
      FieldName = 'CODIGO_SERVICO'
      Size = 10
    end
  end
  object dsCad_Servico: TDataSource
    DataSet = cdsCad_Servico
    Left = 472
    Top = 8
  end
  object cdsFat_Nf_Servico_Copy: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFAT_NF_SERVICO'
    BeforePost = cdsFAT_NF_SERVICOBeforePost
    BeforeDelete = cdsFAT_NF_SERVICOBeforeDelete
    OnNewRecord = cdsFAT_NF_SERVICONewRecord
    Left = 688
    Top = 376
    object cdsFat_Nf_Servico_CopyCOD_FATNFSERVICO: TIntegerField
      Tag = 1
      FieldName = 'COD_FATNFSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFat_Nf_Servico_CopyNUMERO: TIntegerField
      Tag = 1
      DisplayLabel = 'Nro Nota'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopySERIE: TStringField
      Tag = 1
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOSERIEChange
      Size = 5
    end
    object cdsFat_Nf_Servico_CopyCFIL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'CFIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCFILChange
      FixedChar = True
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyFilial_Look: TStringField
      Tag = 1
      DisplayLabel = 'Filial'
      FieldKind = fkLookup
      FieldName = 'Filial_Look'
      LookupDataSet = cdsFilial
      LookupKeyFields = 'CFIL'
      LookupResultField = 'FANT'
      KeyFields = 'CFIL'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCEMP: TStringField
      FieldName = 'CEMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyDATA_EMISSAO: TDateField
      Tag = 1
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyDATA_VENCIMENTO: TDateField
      Tag = 1
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = []
      Required = True
      OnChange = cdsFAT_NF_SERVICOCODIGO_CLIENTEChange
    end
    object cdsFat_Nf_Servico_CopyNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsFat_Nf_Servico_CopyBanco_look: TStringField
      Tag = 1
      DisplayLabel = 'Local Cobr'#226'n'#231'a'
      FieldKind = fkLookup
      FieldName = 'Banco_look'
      LookupDataSet = cdsCADBAN
      LookupKeyFields = 'ID'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADBANCO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCPAG_LOOK: TStringField
      DisplayLabel = 'Cond. Pagamento'
      FieldKind = fkLookup
      FieldName = 'CPAG_LOOK'
      LookupDataSet = cdsCPAG
      LookupKeyFields = 'COD'
      LookupResultField = 'NOM'
      KeyFields = 'COD_CADCPAG'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyNatureza: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'Natureza'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'NATUREZA_OPERACAO'
      Required = True
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCOD_CADCLI: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'COD_CADCLI'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsFAT_NF_SERVICOCOD_CADCLIChange
    end
    object cdsFat_Nf_Servico_CopyCOD_CADBANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'COD_CADBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyCOMPETENCIA: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFat_Nf_Servico_CopyVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VALOR_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopySITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsFAT_NF_SERVICOSITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyVALOR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOVALOR_DESCONTOChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyISSQN_BASE: TFMTBCDField
      DisplayLabel = 'Base ISSQN'
      FieldName = 'ISSQN_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyISSQN_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota ISSQN'
      FieldName = 'ISSQN_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyISSQN_VALOR: TFMTBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'ISSQN_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyIRRF_BASE: TFMTBCDField
      DisplayLabel = 'Base IRRF'
      FieldName = 'IRRF_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyIRRF_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota IRRF'
      FieldName = 'IRRF_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOIRRF_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyIRRF_VALOR: TFMTBCDField
      DisplayLabel = 'Valor IRRF'
      FieldName = 'IRRF_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCSLL_BASE: TFMTBCDField
      DisplayLabel = 'Base CSLL'
      FieldName = 'CSLL_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCSLL_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota CSLL'
      FieldName = 'CSLL_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCSLL_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCSLL_VALOR: TFMTBCDField
      DisplayLabel = 'Valor CSLL'
      FieldName = 'CSLL_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOFINS_BASE: TFMTBCDField
      DisplayLabel = 'Base Cofins'
      FieldName = 'COFINS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOFINS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota Cofins'
      FieldName = 'COFINS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOFINS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOFINS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'COFINS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyPIS_BASE: TFMTBCDField
      DisplayLabel = 'Base PIS'
      FieldName = 'PIS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyPIS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota PIS'
      FieldName = 'PIS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOPIS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyPIS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'PIS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyCOD_CADCPAG: TIntegerField
      FieldName = 'COD_CADCPAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFat_Nf_Servico_CopyNATUREZA_OPERACAO: TIntegerField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFat_Nf_Servico_CopyEST: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyOBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyCID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCIDChange
      Size = 72
    end
    object cdsFat_Nf_Servico_CopyINSS_BASE: TFMTBCDField
      DisplayLabel = 'Base INSS'
      FieldName = 'INSS_BASE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyINSS_ALIQUOTA: TFMTBCDField
      DisplayLabel = 'Al'#237'quota INSS'
      FieldName = 'INSS_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOINSS_BASEChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopyINSS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor INSS'
      FieldName = 'INSS_VALOR'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOISSQN_VALORChange
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFat_Nf_Servico_CopysqlFAT_NF_SERVICO_ITEM: TDataSetField
      FieldName = 'sqlFAT_NF_SERVICO_ITEM'
    end
    object cdsFat_Nf_Servico_CopyDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyNATUREZA_CODIGO: TStringField
      FieldKind = fkLookup
      FieldName = 'NATUREZA_CODIGO'
      LookupDataSet = cdsNatureza
      LookupKeyFields = 'COD_TABELA_NOMES'
      LookupResultField = 'CODIGO'
      KeyFields = 'NATUREZA_OPERACAO'
      Size = 3
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyCOD_CADSERVICO: TIntegerField
      FieldName = 'COD_CADSERVICO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsFAT_NF_SERVICOCOD_CADSERVICOChange
    end
    object cdsFat_Nf_Servico_CopyISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyOBS_MONTADA: TMemoField
      FieldName = 'OBS_MONTADA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyRPSSUBSTITUIDO: TStringField
      FieldName = 'RPSSUBSTITUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsFat_Nf_Servico_CopyServico_Look: TStringField
      Tag = 1
      DisplayLabel = 'Tipo de Servi'#231'o'
      FieldKind = fkLookup
      FieldName = 'Servico_Look'
      LookupDataSet = cdsCad_Servico
      LookupKeyFields = 'COD_CADSERVICO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CADSERVICO'
      Size = 150
      Lookup = True
    end
    object cdsFat_Nf_Servico_CopyISS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ISS_PERC'
    end
    object cdsFat_Nf_Servico_CopyIRR_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IRR_PERC'
    end
    object cdsFat_Nf_Servico_CopyPIS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PIS_PERC'
    end
    object cdsFat_Nf_Servico_CopyCSLL_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CSLL_PERC'
    end
    object cdsFat_Nf_Servico_CopyCOFINS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COFINS_PERC'
    end
    object cdsFat_Nf_Servico_CopyINSS_PERC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INSS_PERC'
    end
  end
  object sqlEND_CIDADES: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT NOME_CIDADE FROM END_CIDADES'
      'ORDER BY NOME_CIDADE')
    SQLConnection = DMBase.Connection
    Left = 464
    Top = 120
  end
  object cdsEND_CIDADES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEND_CIDADES'
    Left = 464
    Top = 240
    object cdsEND_CIDADESNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 100
    end
  end
  object dspEND_CIDADES: TDataSetProvider
    DataSet = sqlEND_CIDADES
    Left = 464
    Top = 176
  end
end
>>>>>>> origin/master
