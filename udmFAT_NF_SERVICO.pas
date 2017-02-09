unit udmFAT_NF_SERVICO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmCadBase, Provider, DB, DBClient, FMTBcd, SqlExpr;

type
  TDadosDetalhes = class
    DataSetField: TDataSetField;
    Dados: OleVariant;
  end;

  TdmFAT_NF_SERVICO = class(TdmCadBase)
    sqlFAT_NF_SERVICO: TSQLDataSet;
    dspFAT_NF_SERVICO: TDataSetProvider;
    cdsFAT_NF_SERVICO: TClientDataSet;
    sqlConsFAT_NF_SERVICO: TSQLQuery;
    dspConsFAT_NF_SERVICO: TDataSetProvider;
    cdsConsFAT_NF_SERVICO: TClientDataSet;
    dsConsFAT_NF_SERVICO: TDataSource;
    sqlFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField;
    sqlFAT_NF_SERVICONUMERO: TIntegerField;
    sqlFAT_NF_SERVICOSERIE: TStringField;
    sqlFAT_NF_SERVICOCFIL: TStringField;
    sqlFAT_NF_SERVICOCEMP: TStringField;
    sqlFAT_NF_SERVICOCOD_CADCLI: TIntegerField;
    sqlFAT_NF_SERVICODATA_EMISSAO: TDateField;
    sqlFAT_NF_SERVICODATA_VENCIMENTO: TDateField;
    sqlFAT_NF_SERVICOCOD_CADBANCO: TIntegerField;
    sqlFAT_NF_SERVICOCOMPETENCIA: TStringField;
    sqlFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField;
    sqlFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField;
    sqlFAT_NF_SERVICOSITUACAO: TStringField;
    sqlFAT_NF_SERVICOVALOR_DESCONTO: TFMTBCDField;
    sqlFAT_NF_SERVICOISSQN_BASE: TFMTBCDField;
    sqlFAT_NF_SERVICOISSQN_ALIQUOTA: TFMTBCDField;
    sqlFAT_NF_SERVICOISSQN_VALOR: TFMTBCDField;
    sqlFAT_NF_SERVICOIRRF_BASE: TFMTBCDField;
    sqlFAT_NF_SERVICOIRRF_ALIQUOTA: TFMTBCDField;
    sqlFAT_NF_SERVICOIRRF_VALOR: TFMTBCDField;
    sqlFAT_NF_SERVICOCSLL_BASE: TFMTBCDField;
    sqlFAT_NF_SERVICOCSLL_ALIQUOTA: TFMTBCDField;
    sqlFAT_NF_SERVICOCSLL_VALOR: TFMTBCDField;
    sqlFAT_NF_SERVICOCOFINS_BASE: TFMTBCDField;
    sqlFAT_NF_SERVICOCOFINS_ALIQUOTA: TFMTBCDField;
    sqlFAT_NF_SERVICOCOFINS_VALOR: TFMTBCDField;
    sqlFAT_NF_SERVICOPIS_BASE: TFMTBCDField;
    sqlFAT_NF_SERVICOPIS_ALIQUOTA: TFMTBCDField;
    sqlFAT_NF_SERVICOPIS_VALOR: TFMTBCDField;
    sqlFAT_NF_SERVICOCOD_CADCPAG: TIntegerField;
    sqlFAT_NF_SERVICONATUREZA_OPERACAO: TIntegerField;
    sqlFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField;
    sqlFAT_NF_SERVICONOME_CLIENTE: TStringField;
    cdsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField;
    cdsFAT_NF_SERVICONUMERO: TIntegerField;
    cdsFAT_NF_SERVICOSERIE: TStringField;
    cdsFAT_NF_SERVICOCFIL: TStringField;
    cdsFAT_NF_SERVICOCEMP: TStringField;
    cdsFAT_NF_SERVICOCOD_CADCLI: TIntegerField;
    cdsFAT_NF_SERVICODATA_EMISSAO: TDateField;
    cdsFAT_NF_SERVICODATA_VENCIMENTO: TDateField;
    cdsFAT_NF_SERVICOCOD_CADBANCO: TIntegerField;
    cdsFAT_NF_SERVICOCOMPETENCIA: TStringField;
    cdsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField;
    cdsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField;
    cdsFAT_NF_SERVICOSITUACAO: TStringField;
    cdsFAT_NF_SERVICOVALOR_DESCONTO: TFMTBCDField;
    cdsFAT_NF_SERVICOISSQN_BASE: TFMTBCDField;
    cdsFAT_NF_SERVICOISSQN_ALIQUOTA: TFMTBCDField;
    cdsFAT_NF_SERVICOISSQN_VALOR: TFMTBCDField;
    cdsFAT_NF_SERVICOIRRF_BASE: TFMTBCDField;
    cdsFAT_NF_SERVICOIRRF_ALIQUOTA: TFMTBCDField;
    cdsFAT_NF_SERVICOIRRF_VALOR: TFMTBCDField;
    cdsFAT_NF_SERVICOCSLL_BASE: TFMTBCDField;
    cdsFAT_NF_SERVICOCSLL_ALIQUOTA: TFMTBCDField;
    cdsFAT_NF_SERVICOCSLL_VALOR: TFMTBCDField;
    cdsFAT_NF_SERVICOCOFINS_BASE: TFMTBCDField;
    cdsFAT_NF_SERVICOCOFINS_ALIQUOTA: TFMTBCDField;
    cdsFAT_NF_SERVICOCOFINS_VALOR: TFMTBCDField;
    cdsFAT_NF_SERVICOPIS_BASE: TFMTBCDField;
    cdsFAT_NF_SERVICOPIS_ALIQUOTA: TFMTBCDField;
    cdsFAT_NF_SERVICOPIS_VALOR: TFMTBCDField;
    cdsFAT_NF_SERVICOCOD_CADCPAG: TIntegerField;
    cdsFAT_NF_SERVICONATUREZA_OPERACAO: TIntegerField;
    cdsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField;
    cdsFAT_NF_SERVICONOME_CLIENTE: TStringField;
    sqlConsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField;
    sqlConsFAT_NF_SERVICONUMERO: TIntegerField;
    sqlConsFAT_NF_SERVICOSERIE: TStringField;
    sqlConsFAT_NF_SERVICOCFIL: TStringField;
    sqlConsFAT_NF_SERVICODATA_EMISSAO: TDateField;
    sqlConsFAT_NF_SERVICODATA_VENCIMENTO: TDateField;
    sqlConsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField;
    sqlConsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField;
    sqlConsFAT_NF_SERVICOSITUACAO: TStringField;
    sqlConsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField;
    sqlConsFAT_NF_SERVICONOME_CLIENTE: TStringField;
    sqlConsFAT_NF_SERVICOCEMP: TStringField;
    cdsConsFAT_NF_SERVICOCOD_FATNFSERVICO: TIntegerField;
    cdsConsFAT_NF_SERVICONUMERO: TIntegerField;
    cdsConsFAT_NF_SERVICOSERIE: TStringField;
    cdsConsFAT_NF_SERVICOCFIL: TStringField;
    cdsConsFAT_NF_SERVICODATA_EMISSAO: TDateField;
    cdsConsFAT_NF_SERVICODATA_VENCIMENTO: TDateField;
    cdsConsFAT_NF_SERVICOVALOR_TOTAL: TFMTBCDField;
    cdsConsFAT_NF_SERVICOVALOR_LIQUIDO: TFMTBCDField;
    cdsConsFAT_NF_SERVICOSITUACAO: TStringField;
    cdsConsFAT_NF_SERVICOCODIGO_CLIENTE: TIntegerField;
    cdsConsFAT_NF_SERVICONOME_CLIENTE: TStringField;
    cdsConsFAT_NF_SERVICOCEMP: TStringField;
    sqlFAT_NF_SERVICOCID: TStringField;
    sqlFAT_NF_SERVICOEST: TStringField;
    cdsFAT_NF_SERVICOCID: TStringField;
    cdsFAT_NF_SERVICOEST: TStringField;
    sqlCADBAN: TSQLQuery;
    dspCADBAN: TDataSetProvider;
    cdsCADBAN: TClientDataSet;
    dsCADBAN: TDataSource;
    cdsCADBANID: TIntegerField;
    cdsCADBANNOM: TStringField;
    cdsFAT_NF_SERVICOBanco_look: TStringField;
    sqlCPAG: TSQLQuery;
    dspCPAG: TDataSetProvider;
    cdsCPAG: TClientDataSet;
    dsCPAG: TDataSource;
    cdsCPAGCOD: TIntegerField;
    cdsCPAGNOM: TStringField;
    cdsFAT_NF_SERVICOCPAG_LOOK: TStringField;
    sqlNatureza: TSQLQuery;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    dsNatureza: TDataSource;
    cdsNaturezaDESCRICAO: TStringField;
    cdsFAT_NF_SERVICONatureza: TStringField;
    sqlFilial: TSQLQuery;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialCFIL: TStringField;
    cdsFilialNOM: TStringField;
    cdsFAT_NF_SERVICOFilial_Look: TStringField;
    cdsFilialFANT: TStringField;
    sqlFAT_NF_SERVICOOBSERVACAO: TMemoField;
    cdsFAT_NF_SERVICOOBSERVACAO: TMemoField;
    sqlFAT_NF_SERVICO_ITEM: TSQLDataSet;
    dsmFAT_NF_SERVICO: TDataSource;
    cdsFAT_NF_SERVICOsqlFAT_NF_SERVICO_ITEM: TDataSetField;
    sqlFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM: TIntegerField;
    sqlFAT_NF_SERVICO_ITEMCOD_FATNFSERVICO: TIntegerField;
    sqlFAT_NF_SERVICO_ITEMDESCRICAO: TMemoField;
    sqlFAT_NF_SERVICO_ITEMCOD_FATMON: TIntegerField;
    sqlFAT_NF_SERVICO_ITEMMONTANTE: TIntegerField;
    cdsFAT_NF_SERVICO_ITEM: TClientDataSet;
    cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM: TIntegerField;
    cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICO: TIntegerField;
    cdsFAT_NF_SERVICO_ITEMDESCRICAO: TMemoField;
    cdsFAT_NF_SERVICO_ITEMCOD_FATMON: TIntegerField;
    cdsFAT_NF_SERVICO_ITEMMONTANTE: TIntegerField;
    cdsFAT_NF_SERVICO_ITEMTOTAL: TAggregateField;
    sqlFAT_NF_SERVICOINSS_BASE: TFMTBCDField;
    sqlFAT_NF_SERVICOINSS_ALIQUOTA: TFMTBCDField;
    sqlFAT_NF_SERVICOINSS_VALOR: TFMTBCDField;
    cdsFAT_NF_SERVICOINSS_BASE: TFMTBCDField;
    cdsFAT_NF_SERVICOINSS_ALIQUOTA: TFMTBCDField;
    cdsFAT_NF_SERVICOINSS_VALOR: TFMTBCDField;
    cdsNaturezaCOD_TABELA_NOMES: TIntegerField;
    cdsNaturezaCODIGO: TStringField;
    cdsFAT_NF_SERVICONATUREZA_CODIGO: TStringField;
    sqlFAT_NF_SERVICOISS_RETIDO: TStringField;
    cdsFAT_NF_SERVICOISS_RETIDO: TStringField;
    sqlFAT_NF_SERVICODISCRIMINACAO: TMemoField;
    cdsFAT_NF_SERVICODISCRIMINACAO: TMemoField;
    SqlComunicacao: TSQLDataSet;
    SqlComunicacaoCOD_FATNFSERVICOCOMUNICACAO: TIntegerField;
    SqlComunicacaoCOD_FATNFSERVICO: TIntegerField;
    SqlComunicacaoDATA_HORA: TSQLTimeStampField;
    SqlComunicacaoTIPO: TStringField;
    SqlComunicacaoPROTOCOLO: TStringField;
    SqlComunicacaoOBS: TStringField;
    SqlComunicacaoXML: TMemoField;
    dspComunicacao: TDataSetProvider;
    cdsComunicacao: TClientDataSet;
    cdsComunicacaoCOD_FATNFSERVICOCOMUNICACAO: TIntegerField;
    cdsComunicacaoCOD_FATNFSERVICO: TIntegerField;
    cdsComunicacaoDATA_HORA: TSQLTimeStampField;
    cdsComunicacaoTIPO: TStringField;
    cdsComunicacaoPROTOCOLO: TStringField;
    cdsComunicacaoOBS: TStringField;
    cdsComunicacaoXML: TMemoField;
    sqlCad_Servico: TSQLQuery;
    dspCad_Servico: TDataSetProvider;
    cdsCad_Servico: TClientDataSet;
    dsCad_Servico: TDataSource;
    cdsCad_ServicoCOD_CADSERVICO: TIntegerField;
    cdsCad_ServicoNOME: TStringField;
    sqlFAT_NF_SERVICOCOD_CADSERVICO: TIntegerField;
    cdsFAT_NF_SERVICOCOD_CADSERVICO: TIntegerField;
    cdsFAT_NF_SERVICOServico_Look: TStringField;
    sqlFAT_NF_SERVICOOBS_MONTADA: TMemoField;
    cdsFAT_NF_SERVICOOBS_MONTADA: TMemoField;
    sqlFAT_NF_SERVICORPSSUBSTITUIDO: TStringField;
    SqlComunicacaoCODIGOVERIFICACAO: TStringField;
    SqlComunicacaoNFSE_NUMERO: TStringField;
    cdsComunicacaoCODIGOVERIFICACAO: TStringField;
    cdsComunicacaoNFSE_NUMERO: TStringField;
    cdsFAT_NF_SERVICORPSSUBSTITUIDO: TStringField;
    cdsFAT_NF_SERVICOISS_PERC: TFloatField;
    cdsFAT_NF_SERVICOIRR_PERC: TFloatField;
    cdsFAT_NF_SERVICOPIS_PERC: TFloatField;
    cdsFAT_NF_SERVICOCSLL_PERC: TFloatField;
    cdsFAT_NF_SERVICOCOFINS_PERC: TFloatField;
    cdsFAT_NF_SERVICOINSS_PERC: TFloatField;
    cdsFat_Nf_Servico_Copy: TClientDataSet;
    cdsFat_Nf_Servico_CopyCOD_FATNFSERVICO: TIntegerField;
    cdsFat_Nf_Servico_CopyNUMERO: TIntegerField;
    cdsFat_Nf_Servico_CopySERIE: TStringField;
    cdsFat_Nf_Servico_CopyCFIL: TStringField;
    cdsFat_Nf_Servico_CopyFilial_Look: TStringField;
    cdsFat_Nf_Servico_CopyCEMP: TStringField;
    cdsFat_Nf_Servico_CopyDATA_EMISSAO: TDateField;
    cdsFat_Nf_Servico_CopyDATA_VENCIMENTO: TDateField;
    cdsFat_Nf_Servico_CopyCODIGO_CLIENTE: TIntegerField;
    cdsFat_Nf_Servico_CopyNOME_CLIENTE: TStringField;
    cdsFat_Nf_Servico_CopyBanco_look: TStringField;
    cdsFat_Nf_Servico_CopyCPAG_LOOK: TStringField;
    cdsFat_Nf_Servico_CopyNatureza: TStringField;
    cdsFat_Nf_Servico_CopyCOD_CADCLI: TIntegerField;
    cdsFat_Nf_Servico_CopyCOD_CADBANCO: TIntegerField;
    cdsFat_Nf_Servico_CopyCOMPETENCIA: TStringField;
    cdsFat_Nf_Servico_CopyVALOR_TOTAL: TFMTBCDField;
    cdsFat_Nf_Servico_CopyVALOR_LIQUIDO: TFMTBCDField;
    cdsFat_Nf_Servico_CopySITUACAO: TStringField;
    cdsFat_Nf_Servico_CopyVALOR_DESCONTO: TFMTBCDField;
    cdsFat_Nf_Servico_CopyISSQN_BASE: TFMTBCDField;
    cdsFat_Nf_Servico_CopyISSQN_ALIQUOTA: TFMTBCDField;
    cdsFat_Nf_Servico_CopyISSQN_VALOR: TFMTBCDField;
    cdsFat_Nf_Servico_CopyIRRF_BASE: TFMTBCDField;
    cdsFat_Nf_Servico_CopyIRRF_ALIQUOTA: TFMTBCDField;
    cdsFat_Nf_Servico_CopyIRRF_VALOR: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCSLL_BASE: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCSLL_ALIQUOTA: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCSLL_VALOR: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCOFINS_BASE: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCOFINS_ALIQUOTA: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCOFINS_VALOR: TFMTBCDField;
    cdsFat_Nf_Servico_CopyPIS_BASE: TFMTBCDField;
    cdsFat_Nf_Servico_CopyPIS_ALIQUOTA: TFMTBCDField;
    cdsFat_Nf_Servico_CopyPIS_VALOR: TFMTBCDField;
    cdsFat_Nf_Servico_CopyCOD_CADCPAG: TIntegerField;
    cdsFat_Nf_Servico_CopyNATUREZA_OPERACAO: TIntegerField;
    cdsFat_Nf_Servico_CopyEST: TStringField;
    cdsFat_Nf_Servico_CopyOBSERVACAO: TMemoField;
    cdsFat_Nf_Servico_CopyCID: TStringField;
    cdsFat_Nf_Servico_CopyINSS_BASE: TFMTBCDField;
    cdsFat_Nf_Servico_CopyINSS_ALIQUOTA: TFMTBCDField;
    cdsFat_Nf_Servico_CopyINSS_VALOR: TFMTBCDField;
    cdsFat_Nf_Servico_CopysqlFAT_NF_SERVICO_ITEM: TDataSetField;
    cdsFat_Nf_Servico_CopyDISCRIMINACAO: TMemoField;
    cdsFat_Nf_Servico_CopyNATUREZA_CODIGO: TStringField;
    cdsFat_Nf_Servico_CopyCOD_CADSERVICO: TIntegerField;
    cdsFat_Nf_Servico_CopyISS_RETIDO: TStringField;
    cdsFat_Nf_Servico_CopyOBS_MONTADA: TMemoField;
    cdsFat_Nf_Servico_CopyRPSSUBSTITUIDO: TStringField;
    cdsFat_Nf_Servico_CopyServico_Look: TStringField;
    cdsFat_Nf_Servico_CopyISS_PERC: TFloatField;
    cdsFat_Nf_Servico_CopyIRR_PERC: TFloatField;
    cdsFat_Nf_Servico_CopyPIS_PERC: TFloatField;
    cdsFat_Nf_Servico_CopyCSLL_PERC: TFloatField;
    cdsFat_Nf_Servico_CopyCOFINS_PERC: TFloatField;
    cdsFat_Nf_Servico_CopyINSS_PERC: TFloatField;
    sqlFAT_NF_SERVICO_ITEMQUANTIDADE: TFloatField;
    cdsFAT_NF_SERVICO_ITEMQUANTIDADE: TFloatField;
    sqlFAT_NF_SERVICO_ITEMPRECO_UNITARIO: TFMTBCDField;
    cdsFAT_NF_SERVICO_ITEMPRECO_UNITARIO: TFMTBCDField;
    sqlFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField;
    sqlFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField;
    cdsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField;
    cdsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField;
    sqlConsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField;
    sqlConsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField;
    cdsConsFAT_NF_SERVICOMES_COMPETENCIA: TIntegerField;
    cdsConsFAT_NF_SERVICOANO_COMPETENCIA: TIntegerField;
    cdsCad_ServicoCODIGO_SERVICO: TStringField;
    sqlEND_CIDADES: TSQLQuery;
    cdsEND_CIDADES: TClientDataSet;
    dspEND_CIDADES: TDataSetProvider;
    cdsEND_CIDADESNOME_CIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFAT_NF_SERVICOGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure cdsFAT_NF_SERVICOCODIGO_CLIENTEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICONewRecord(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICOSERIEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOCFILChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOISSQN_BASEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOIRRF_BASEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOCSLL_BASEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOCOFINS_BASEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOPIS_BASEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICO_ITEMNewRecord(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICO_ITEMMONTANTEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOISSQN_VALORChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOVALOR_DESCONTOChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOBeforePost(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICO_ITEMAfterPost(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICO_ITEMAfterDelete(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICOBeforeDelete(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICOSITUACAOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsComunicacaoTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsFAT_NF_SERVICOCOD_CADCLIChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOCOD_CADSERVICOChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOINSS_BASEChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOCIDChange(Sender: TField);
    procedure cdsFAT_NF_SERVICO_ITEMBeforePost(DataSet: TDataSet);
    procedure cdsFAT_NF_SERVICODATA_EMISSAOChange(Sender: TField);
    procedure cdsFAT_NF_SERVICOBeforeEdit(DataSet: TDataSet);
  private
    FCancelandoNota: Boolean;
    { Private declarations }
    procedure MontaDescricao;
    procedure CalculaBaseImpostos;
    procedure BuscarValoresImpostos;
    procedure ConfiguraValoresPadrao;
    procedure CalculaISSQN;
    procedure CalculaIRRF;
    procedure CalculoCSLL;
    procedure CalculaCOFINS;
    procedure CalculaPIS;
    procedure CalculaINSS;
    procedure CalculaValorTotal;
    procedure CalculaValorLiquido;
    procedure SetCancelandoNota(const Value: Boolean);
    procedure BuscaDadosParametro;
    procedure ConsisteAntesDaAlteracao;
    procedure VerrificarNotaCancelada;


  public
    { Public declarations }
    DuplicandoRegistros: Boolean;
    procedure Abrir_END_CIDADES;
    procedure GerarFaturamentoMes;
    procedure ConsisteValores;
    procedure GerarNotaServicoEletronica;
    procedure ConsultaCliente;
    procedure GetNumeroNota(I: Integer);
    procedure ConsultaMontante;
    procedure AbreComunicacao;
    property CancelandoNota: Boolean read FCancelandoNota write SetCancelandoNota;

  end;

implementation

uses uDMBase, uClassFuncaoGlobal, udlgConsultaMontante,
  LibGir, pcnConversao, DateUtils,
  uClassDadosParametro, uObjAbreConsultaSelecionada,
  uObjFatNFServico, StdCtrls,
  JvValidateEdit, udlgFaturamentoMes;

{$R *.dfm}

procedure TdmFAT_NF_SERVICO.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if DMbase = nil then
    Exit;

  FSqlOriginal := sqlConsFAT_NF_SERVICO.SQL.Text;
end;

procedure TdmFAT_NF_SERVICO.dspFAT_NF_SERVICOGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  inherited;
  if DataSet.Name = sqlFAT_NF_SERVICO.Name then
    TableName := 'FAT_NF_SERVICO'
  else
    if DataSet.Name = sqlFAT_NF_SERVICO_ITEM.Name then
      TableName := 'FAT_NF_SERVICO_ITEM';
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCODIGO_CLIENTEChange(
  Sender: TField);
var
  x: string;
  Isql: TSQLQuery;
begin
  inherited;
  if DuplicandoRegistros then
    Exit;

  if Sender.AsInteger > 0 then
  begin
    x := 'SELECT ID,NOM, CID, EST, SIT, BLOQ FROM CADCLI WHERE COD = ' + Sender.AsString
      + ' AND (CEMP = ' + QuotedStr(dmbase.CodigoEmpresa) + '  or (SELECT EMP FROM MENUITEM WHERE NOME = ''CADCLI'') = ''S'' )';

    isql := Dmbase.ExecSql(x);

    if Isql.IsEmpty then
    begin
      MessageDlg('Cliente não encontrado!', mtWarning, [mbOK], 0);
      Abort;
    end;

    if isql.fieldbyname('SIT').AsString = 'S' then
    begin
      MessageDlg('Cliente Inativo!', mtWarning, [mbOK], 0);
      Sender.Clear;
      Abort;
    end;

    if isql.fieldbyname('BLOQ').AsString = 'T' then
    begin
      MessageDlg('Cliente Bloqueado!', mtWarning, [mbOK], 0);
      Sender.Clear;
      Abort;
    end;

    cdsFAT_NF_SERVICONOME_CLIENTE.Value := isql.fieldbyname('NOM').AsString;
    cdsFAT_NF_SERVICOCOD_CADCLI.Value := isql.fieldbyname('ID').AsInteger;
    cdsFAT_NF_SERVICOCID.Value := isql.fieldbyname('CID').AsString;
    cdsFAT_NF_SERVICOEST.Value := isql.fieldbyname('EST').AsString;
  end
  else begin
    cdsFAT_NF_SERVICONOME_CLIENTE.Clear;
    cdsFAT_NF_SERVICOCOD_CADCLI.Clear;
    cdsFAT_NF_SERVICOCID.Clear;
    cdsFAT_NF_SERVICOEST.Clear;
  end;
end;

procedure TdmFAT_NF_SERVICO.ConsultaCliente;
var
  F: TClassFuncaoGlobal;
  cds: TClientDataSet;
  ExisteCadColaborador: Boolean;
begin
  F := TClassFuncaoGlobal.Create(dmbase.Connection, dmbase.CodigoEmpresa, '');
  try
    ExisteCadColaborador := f.Existe_Tabela('CAD_COLABORADOR');

    if ExisteCadColaborador then
      cds := f.AbrirDLL_Consulta('CAD_COLABORADOR.DLL', dmbase.Parametros)
    else
      cds := F.Consulta_Colaborador_Dll(dmbase.Parametros);

    if (cds <> nil) and (not cds.IsEmpty) then
    begin
      if ExisteCadColaborador then
      begin
        with TDataSetField(CDS.FieldByName('sqlCad_Colaborador')).NestedDataSet do
        begin
          cdsFAT_NF_SERVICOCODIGO_CLIENTE.AsInteger := Fieldbyname('CODIGO').AsInteger
        end;
      end
      else
        cdsFAT_NF_SERVICOCODIGO_CLIENTE.AsInteger := cds.fieldbyname('COD').AsInteger;
    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICONewRecord(DataSet: TDataSet);
begin
  inherited;
  ConfiguraValoresPadrao;
  BuscaDadosParametro;
end;

procedure TdmFAT_NF_SERVICO.ConfiguraValoresPadrao;
begin
  cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime := dmbase.DataServidor;
  cdsFAT_NF_SERVICODATA_VENCIMENTO.AsDateTime := cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime;
  cdsFAT_NF_SERVICOANO_COMPETENCIA.AsString := FormatDateTime('yyyy', cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime);

  if cdsFilial.RecordCount = 1 then
    cdsFAT_NF_SERVICOCFIL.AsString := cdsFilialCFIL.AsString;

//  cdsFAT_NF_SERVICOISS_RETIDO.AsString := 'S';
end;

procedure TdmFAT_NF_SERVICO.GetNumeroNota(I: Integer);
begin
  if cdsFAT_NF_SERVICOCFIL.AsString = '' then exit;

  if Trim(cdsFAT_NF_SERVICOSERIE.AsString) = '' then exit;

  if (cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsInteger > 0) and (I = 0) then exit;

  cdsFAT_NF_SERVICONUMERO.AsInteger :=
    dmbase.IncrementaPK('FAT_NF_SERVICO_' + cdsFAT_NF_SERVICOSERIE.AsString + '_' + Dmbase.CodigoEmpresa, i);

  if i = 0 then
    cdsFAT_NF_SERVICONUMERO.AsInteger := cdsFAT_NF_SERVICONUMERO.AsInteger + 1;

end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOSERIEChange(Sender: TField);
begin
  inherited;
  GetNumeroNota(0);
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCFILChange(Sender: TField);
begin
  inherited;
  GetNumeroNota(0);
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOISSQN_BASEChange(
  Sender: TField);
begin
  inherited;
  CalculaISSQN;
end;

procedure TdmFAT_NF_SERVICO.CalculaISSQN;
begin
  cdsFAT_NF_SERVICOISSQN_VALOR.AsCurrency :=
    cdsFAT_NF_SERVICOISSQN_BASE.AsCurrency * cdsFAT_NF_SERVICOISSQN_ALIQUOTA.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOIRRF_BASEChange(
  Sender: TField);
begin
  inherited;
  CalculaIRRF;
end;

procedure TdmFAT_NF_SERVICO.CalculaIRRF;
begin
  cdsFAT_NF_SERVICOIRRF_VALOR.AsCurrency :=
    cdsFAT_NF_SERVICOIRRF_BASE.AsCurrency * cdsFAT_NF_SERVICOIRRF_ALIQUOTA.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCSLL_BASEChange(
  Sender: TField);
begin
  inherited;
  CalculoCSLL;
end;

procedure TdmFAT_NF_SERVICO.CalculoCSLL;
begin
  cdsFAT_NF_SERVICOCSLL_VALOR.AsCurrency :=
    cdsFAT_NF_SERVICOCSLL_BASE.AsCurrency * cdsFAT_NF_SERVICOCSLL_ALIQUOTA.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCOFINS_BASEChange(
  Sender: TField);
begin
  inherited;
  CalculaCOFINS;
end;

procedure TdmFAT_NF_SERVICO.CalculaCOFINS;
begin
  cdsFAT_NF_SERVICOCofins_VALOR.AsCurrency :=
    cdsFAT_NF_SERVICOCofins_BASE.AsCurrency * cdsFAT_NF_SERVICOCofins_ALIQUOTA.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOPIS_BASEChange(
  Sender: TField);
begin
  inherited;
  CalculaPIS;
end;

procedure TdmFAT_NF_SERVICO.CalculaPIS;
begin
  cdsFAT_NF_SERVICOPIS_VALOR.AsCurrency :=
    cdsFAT_NF_SERVICOPIS_BASE.AsCurrency * cdsFAT_NF_SERVICOPIS_ALIQUOTA.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEMNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsFAT_NF_SERVICO_ITEMCOD_FATNFSERVICOITEM.Value := dmbase.IncrementaPK('FAT_NF_SERVICO_ITEM');
  cdsFAT_NF_SERVICO_ITEMMONTANTE.FocusControl;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEMMONTANTEChange(
  Sender: TField);
var
  x: string;
  Isql: TSQLQuery;
begin
  inherited;

  if DuplicandoRegistros then exit;

  if cdsFAT_NF_SERVICO_ITEMMONTANTE.AsInteger > 0 then
  begin
//    X := ' SELECT A.DES, A.COD, A.VUNI, A.EXIGE_QUANTIDADE FROM FATMON A WHERE  A.CEMP = ' + QuotedStr(dmbase.CodigoEmpresa)
//      + ' AND A.CCLI = ' + IntToStr(cdsFAT_NF_SERVICOCODIGO_CLIENTE.AsInteger)
//      + ' AND A.MON = ' + IntToStr(cdsFAT_NF_SERVICO_ITEMMONTANTE.AsInteger);

    x := ' SELECT A.DESCRICAO, A.COD_FATMONTANTE, A.VALOR_MONTANTE, A.EXIGE_QUANTIDADE FROM FAT_MONTANTE A WHERE  A.CEMP IN (''0'','
      + QuotedStr(dmbase.CodigoEmpresa) + ') AND A.COD_CADCOLABORADOR = ' + IntToStr(cdsFAT_NF_SERVICOCOD_CADCLI.AsInteger)
      + ' AND A.CODIGO = ' + cdsFAT_NF_SERVICO_ITEMMONTANTE.AsString;

    Isql := dmbase.ExecSql(x);

    if isql.IsEmpty then
    begin
      MessageDlg('Montante não encontrado nesse cliente!', mtWarning, [mbOK], 0);
      Sender.Clear;
      Sender.FocusControl;
      Abort;
    end;

    cdsFAT_NF_SERVICO_ITEMCOD_FATMON.AsInteger := Isql.fieldbyname('COD_FATMONTANTE').AsInteger;
    cdsFAT_NF_SERVICO_ITEMDESCRICAO.AsString := Isql.fieldbyname('DESCRICAO').AsString;
    if (Isql.FieldByName('EXIGE_QUANTIDADE').AsString = 'S') and (cdsFAT_NF_SERVICO_ITEMQUANTIDADE.AsFloat > 0) then
      cdsFAT_NF_SERVICO_ITEMPRECO_UNITARIO.AsVariant := Isql.fieldbyname('VALOR_MONTANTE').Value * cdsFAT_NF_SERVICO_ITEMQUANTIDADE.Value
    else
      cdsFAT_NF_SERVICO_ITEMPRECO_UNITARIO.AsVariant := Isql.fieldbyname('VALOR_MONTANTE').Value;

    {if cdsFAT_NF_SERVICODISCRIMINACAO.AsString = '' then
    begin
      cdsFAT_NF_SERVICODISCRIMINACAO.AsString := StringReplace(Isql.fieldbyname('DESCRICAO').AsString, '  ', ' ', [rfReplaceAll]);
      cdsFAT_NF_SERVICODISCRIMINACAO.AsString := StringReplace(Isql.fieldbyname('DESCRICAO').AsString, '  ', ' ', [rfReplaceAll]);
      cdsFAT_NF_SERVICODISCRIMINACAO.AsString := StringReplace(Isql.fieldbyname('DESCRICAO').AsString, '  ', ' ', [rfReplaceAll]);
      cdsFAT_NF_SERVICODISCRIMINACAO.AsString := StringReplace(Isql.fieldbyname('DESCRICAO').AsString, '  ', ' ', [rfReplaceAll]);
    end;}
    BuscarValoresImpostos;
  end
  else cdsFAT_NF_SERVICO_ITEMCOD_FATMON.Clear;
end;

procedure TdmFAT_NF_SERVICO.ConsultaMontante;
var
  fdlgConsultaMontante: TfdlgConsultaMontante;
  ExisteFatMontante: Boolean;
  CDS: TClientDataSet;
  ObjAbreConsultaSelecionada: TObjAbreConsultaSelecionada;
begin
  with TClassFuncaoGlobal.Create(Dmbase.Connection, Dmbase.CodigoEmpresa, '') do
  try
    ExisteFatMontante := Existe_Tabela('FAT_MONTANTE');
  finally
    Free;
  end;

  if ExisteFatMontante then
  try
    with TClassFuncaoGlobal.Create(Dmbase.Connection, Dmbase.CodigoEmpresa, '') do
    try
      ObjAbreConsultaSelecionada := TObjAbreConsultaSelecionada.Create;
      ObjAbreConsultaSelecionada.CHAVE := cdsFAT_NF_SERVICOCODIGO_CLIENTE.Value;
      ObjAuxiliar := ObjAbreConsultaSelecionada;
      CDS := AbrirDLL_Consulta('FAT_MONTANTE.DLL', Dmbase.Parametros);
    finally
      Free;
    end;

    if not (CDS.IsEmpty) then
    begin
      cdsFAT_NF_SERVICO_ITEM.Edit;
      cdsFAT_NF_SERVICO_ITEMMONTANTE.AsInteger := CDS.FieldByName('CODIGO').AsInteger;
    end;
  finally
    FreeAndNil(CDS);
    FreeAndNil(ObjAbreConsultaSelecionada);
  end
  else
  begin
    fdlgConsultaMontante := TfdlgConsultaMontante.Create(Self);
    try
      fdlgConsultaMontante.Cliente := cdsFAT_NF_SERVICOCODIGO_CLIENTE.asinteger;
      fdlgConsultaMontante.ShowModal;

      if (fdlgConsultaMontante.Montante > 0) then
      begin
        cdsFAT_NF_SERVICO_ITEM.Edit;
        cdsFAT_NF_SERVICO_ITEMMONTANTE.AsInteger := fdlgConsultaMontante.Montante;
      end;

    finally
      FreeAndNil(fdlgConsultaMontante);
    end;
  end;
end;

procedure TdmFAT_NF_SERVICO.CalculaValorTotal;
var
  valor: Currency;
begin
  if not (cdsFAT_NF_SERVICO.State in [dsinsert, dsedit]) then
    Exit;

  valor := StrToCurrDef(cdsFAT_NF_SERVICO_ITEMTOTAL.Asstring, 0);
  cdsFAT_NF_SERVICOVALOR_TOTAL.AsCurrency := valor;
  CalculaValorLiquido;

  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOISSQN_VALORChange(
  Sender: TField);
begin
  inherited;
  CalculaValorTotal;
end;

procedure TdmFAT_NF_SERVICO.CalculaValorLiquido;
var
  Valor: Currency;
begin

  valor := 0;
  valor := valor + cdsFAT_NF_SERVICOISSQN_VALOR.AsCurrency;
  valor := valor + cdsFAT_NF_SERVICOIRRF_VALOR.AsCurrency;
  valor := valor + cdsFAT_NF_SERVICOCSLL_VALOR.AsCurrency;
  valor := valor + cdsFAT_NF_SERVICOCOFINS_VALOR.AsCurrency;
  valor := valor + cdsFAT_NF_SERVICOPIS_VALOR.AsCurrency;
  valor := valor + cdsFAT_NF_SERVICOINSS_VALOR.AsCurrency;

  cdsFAT_NF_SERVICOVALOR_LIQUIDO.AsCurrency := cdsFAT_NF_SERVICOVALOR_TOTAL.AsCurrency - cdsFAT_NF_SERVICOVALOR_DESCONTO.AsCurrency
    - valor;

end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOVALOR_DESCONTOChange(
  Sender: TField);
begin
  inherited;
  CalculaValorLiquido;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFAT_NF_SERVICOVALOR_TOTAL.IsNull then
    cdsFAT_NF_SERVICOVALOR_TOTAL.AsCurrency := 0;

  if cdsFAT_NF_SERVICOVALOR_LIQUIDO.IsNull then
    cdsFAT_NF_SERVICOVALOR_LIQUIDO.AsCurrency := 0;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEMAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  BuscarValoresImpostos;
  CalculaBaseImpostos;
  CalculaValorTotal;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEMAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  CalculaBaseImpostos;
  CalculaValorTotal;
end;

procedure TdmFAT_NF_SERVICO.SetCancelandoNota(const Value: Boolean);
begin
  FCancelandoNota := Value;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if cdsFAT_NF_SERVICOSITUACAO.AsString = 'C' then
  begin
    MessageDlg('Nota Esta Cancelada!', mtWarning, [mbOK], 0);
    Abort;
  end;

  ConsisteAntesDaAlteracao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOSITUACAOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'C' then
    Text := 'CANCELADA'
  else
    Text := '';
end;

procedure TdmFAT_NF_SERVICO.cdsComunicacaoTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsComunicacaoTIPO.AsString = '1' then
    Text := 'ENVIADA'
  else
    if cdsComunicacaoTIPO.AsString = '2' then
      Text := 'CANCELADA';
end;

procedure TdmFAT_NF_SERVICO.AbreComunicacao;
begin
  cdsComunicacao.Close;
  cdsComunicacao.Params[0].AsInteger := cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsInteger;
  cdsComunicacao.Open;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCOD_CADCLIChange(
  Sender: TField);
begin
  inherited;
  BuscarValoresImpostos;
end;

procedure TdmFAT_NF_SERVICO.BuscarValoresImpostos;
var
  Isql: TSQLQuery;
  x, Cidade: string;
begin
  if duplicandoRegistros then exit;

  if cdsFAT_NF_SERVICOCOD_CADCLI.AsInteger = 0 then exit;

  x := ' SELECT VISS, VIRR, VCSLL, VCOF, VPIS, VSSOC, BISS, BIRR, BCSLL, BCOF, BPIS, BSSOC, CID FROM CADCLI WHERE ID = ' + cdsFAT_NF_SERVICOCOD_CADCLI.AsString;
  Isql := dmbase.ExecSql(x);


  cdsFAT_NF_SERVICOISS_PERC.AsCurrency := Isql.FieldByName('BISS').AsCurrency;
  cdsFAT_NF_SERVICOIRR_PERC.AsCurrency := Isql.FieldByName('BIRR').AsCurrency;
  cdsFAT_NF_SERVICOPIS_PERC.AsCurrency := Isql.FieldByName('BPIS').AsCurrency;
  cdsFAT_NF_SERVICOCSLL_PERC.AsCurrency := Isql.FieldByName('BCSLL').AsCurrency;
  cdsFAT_NF_SERVICOCOFINS_PERC.AsCurrency := Isql.FieldByName('BCOF').AsCurrency;
  cdsFAT_NF_SERVICOINSS_PERC.AsCurrency := Isql.FieldByName('BSSOC').AsCurrency;

  if cdsFAT_NF_SERVICOCOD_CADSERVICO.AsInteger = 0 then exit;

  Cidade := cdsFAT_NF_SERVICOCID.AsString;

  if Cidade = '' then
    Cidade := Isql.FieldByName('CID').AsString;

  if Cidade = '' then exit;

  X := ' SELECT A.ISS_VLR, A.IRR_VLR, A.PIS_VLR, A.CSLL_VLR, A.COFINS_VLR, A.INSS_VLR, '
    + ' A.ISS_PERC, A.IRR_PERC, A.PIS_PERC, A.CSLL_PERC, A.COFINS_PERC, A.INSS_PERC '
    + ' FROM CAD_SERVICO_IMPOSTO A '
    + ' INNER JOIN END_CIDADES B ON B.CODIGO_CIDADE = A.CODIGO_CIDADE WHERE A.COD_CADSERVICO = '
    + cdsFAT_NF_SERVICOCOD_CADSERVICO.AsString + ' AND B.NOME_CIDADE = ' + QuotedStr(AnsiUpperCase(Cidade));

  Isql := dmbase.ExecSql(x);
  if not isql.IsEmpty then
  begin
    cdsFAT_NF_SERVICOISS_PERC.AsCurrency := Isql.FieldByName('ISS_PERC').AsCurrency;
    cdsFAT_NF_SERVICOIRR_PERC.AsCurrency := Isql.FieldByName('IRR_PERC').AsCurrency;
    cdsFAT_NF_SERVICOPIS_PERC.AsCurrency := Isql.FieldByName('PIS_PERC').AsCurrency;
    cdsFAT_NF_SERVICOCSLL_PERC.AsCurrency := Isql.FieldByName('CSLL_PERC').AsCurrency;
    cdsFAT_NF_SERVICOCOFINS_PERC.AsCurrency := Isql.FieldByName('COFINS_PERC').AsCurrency;
    cdsFAT_NF_SERVICOINSS_PERC.AsCurrency := Isql.FieldByName('INSS_PERC').AsCurrency;

    cdsFAT_NF_SERVICOISSQN_ALIQUOTA.AsCurrency := Isql.FieldByName('ISS_VLR').AsCurrency;
    cdsFAT_NF_SERVICOIRRF_ALIQUOTA.AsCurrency := Isql.FieldByName('IRR_VLR').AsCurrency;
    cdsFAT_NF_SERVICOCSLL_ALIQUOTA.AsCurrency := Isql.FieldByName('CSLL_VLR').AsCurrency;
    cdsFAT_NF_SERVICOCOFINS_ALIQUOTA.AsCurrency := Isql.FieldByName('COFINS_VLR').AsCurrency;
    cdsFAT_NF_SERVICOPIS_ALIQUOTA.AsCurrency := Isql.FieldByName('PIS_VLR').AsCurrency;
    cdsFAT_NF_SERVICOINSS_ALIQUOTA.AsCurrency := Isql.FieldByName('INSS_VLR').AsCurrency;
  end;

end;

procedure TdmFAT_NF_SERVICO.CalculaBaseImpostos;
var
  Valor: Currency;
begin
  if DuplicandoRegistros then exit;

  Valor := StrToCurrDef(cdsFAT_NF_SERVICO_ITEMTOTAL.Asstring, 0) - cdsFAT_NF_SERVICOVALOR_DESCONTO.AsCurrency;

  cdsFAT_NF_SERVICOISSQN_BASE.AsCurrency := Valor * cdsFAT_NF_SERVICOISS_PERC.AsCurrency / 100;
  cdsFAT_NF_SERVICOIRRF_BASE.AsCurrency := Valor * cdsFAT_NF_SERVICOIRR_PERC.AsCurrency / 100;
  cdsFAT_NF_SERVICOCSLL_BASE.AsCurrency := Valor * cdsFAT_NF_SERVICOCSLL_PERC.AsCurrency / 100;
  cdsFAT_NF_SERVICOCOFINS_BASE.AsCurrency := Valor * cdsFAT_NF_SERVICOCOFINS_PERC.AsCurrency / 100;
  cdsFAT_NF_SERVICOPIS_BASE.AsCurrency := Valor * cdsFAT_NF_SERVICOPIS_PERC.AsCurrency / 100;
  cdsFAT_NF_SERVICOINSS_BASE.AsCurrency := Valor * cdsFAT_NF_SERVICOINSS_PERC.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.ConsisteValores;
begin
  if cdsFAT_NF_SERVICOISSQN_ALIQUOTA.AsCurrency <= 0 then
    cdsFAT_NF_SERVICOISSQN_BASE.Clear;

  if cdsFAT_NF_SERVICOIRRF_ALIQUOTA.AsCurrency <= 0 then
    cdsFAT_NF_SERVICOIRRF_BASE.Clear;

  if cdsFAT_NF_SERVICOCSLL_ALIQUOTA.AsCurrency <= 0 then
    cdsFAT_NF_SERVICOCSLL_BASE.Clear;

  if cdsFAT_NF_SERVICOCOFINS_ALIQUOTA.AsCurrency <= 0 then
    cdsFAT_NF_SERVICOCOFINS_BASE.Clear;

  if cdsFAT_NF_SERVICOPIS_ALIQUOTA.AsCurrency <= 0 then
    cdsFAT_NF_SERVICOPIS_BASE.Clear;

  if cdsFAT_NF_SERVICOINSS_ALIQUOTA.AsCurrency <= 0 then
    cdsFAT_NF_SERVICOINSS_BASE.Clear;

  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCOD_CADSERVICOChange(
  Sender: TField);
begin
  inherited;
  BuscarValoresImpostos;
  CalculaBaseImpostos;
end;

procedure TdmFAT_NF_SERVICO.CalculaINSS;
begin
  cdsFAT_NF_SERVICOINSS_VALOR.AsCurrency :=
    cdsFAT_NF_SERVICOINSS_BASE.AsCurrency * cdsFAT_NF_SERVICOINSS_ALIQUOTA.AsCurrency / 100;
  MontaDescricao;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOINSS_BASEChange(
  Sender: TField);
begin
  inherited;
  CalculaINSS;
end;

procedure TdmFAT_NF_SERVICO.MontaDescricao;
begin
  cdsFAT_NF_SERVICOOBS_MONTADA.Clear;

  if cdsFAT_NF_SERVICOISSQN_VALOR.AsCurrency > 0 then
    cdsFAT_NF_SERVICOOBS_MONTADA.AsString :=
      'ISSQN ' + MontaString(formatfloat('#,##0.00', cdsFAT_NF_SERVICOISSQN_VALOR.AsCurrency), 12) +
      MontaString(formatfloat('0.0#%', cdsFAT_NF_SERVICOISSQN_ALIQUOTA.AsCurrency), 66);

  if cdsFAT_NF_SERVICOIRRF_VALOR.AsCurrency > 0 then
    cdsFAT_NF_SERVICOOBS_MONTADA.AsString := cdsFAT_NF_SERVICOOBS_MONTADA.AsString + #13#10
      + 'IRRF  ' + MontaString(formatfloat('  #,##0.00', cdsFAT_NF_SERVICOIRRF_VALOR.AsCurrency), 12) +
      MontaString(formatfloat('0.0#%', cdsFAT_NF_SERVICOIRRF_ALIQUOTA.AsCurrency), 66);

  if cdsFAT_NF_SERVICOCSLL_VALOR.AsCurrency > 0 then
    cdsFAT_NF_SERVICOOBS_MONTADA.AsString := cdsFAT_NF_SERVICOOBS_MONTADA.AsString + #13#10
      + 'CSLL  ' + MontaString(formatfloat('  #,##0.00', cdsFAT_NF_SERVICOCSLL_VALOR.AsCurrency), 12) +
      MontaString(formatfloat('0.0#%', cdsFAT_NF_SERVICOCSLL_ALIQUOTA.AsCurrency), 66);

  if cdsFAT_NF_SERVICOCOFINS_VALOR.AsCurrency > 0 then
    cdsFAT_NF_SERVICOOBS_MONTADA.AsString := cdsFAT_NF_SERVICOOBS_MONTADA.AsString + #13#10
      + 'Cofins ' + MontaString(formatfloat('  #,##0.00', cdsFAT_NF_SERVICOCOFINS_VALOR.AsCurrency), 11) +
      MontaString(formatfloat('0.0#%', cdsFAT_NF_SERVICOCOFINS_ALIQUOTA.AsCurrency), 66);

  if cdsFAT_NF_SERVICOPIS_VALOR.AsCurrency > 0 then
    cdsFAT_NF_SERVICOOBS_MONTADA.AsString := cdsFAT_NF_SERVICOOBS_MONTADA.AsString + #13#10
      + 'PIS   ' + MontaString(formatfloat('  #,##0.00', cdsFAT_NF_SERVICOPIS_VALOR.AsCurrency), 12) +
      MontaString(formatfloat('0.0#%', cdsFAT_NF_SERVICOPIS_ALIQUOTA.AsCurrency), 67);

  if cdsFAT_NF_SERVICOINSS_VALOR.AsCurrency > 0 then
    cdsFAT_NF_SERVICOOBS_MONTADA.AsString := cdsFAT_NF_SERVICOOBS_MONTADA.AsString + #13#10
      + 'INSS  ' + MontaString(formatfloat('  #,##0.00', cdsFAT_NF_SERVICOINSS_VALOR.AsCurrency), 13) +
      MontaString(formatfloat('0.0#%', cdsFAT_NF_SERVICOINSS_ALIQUOTA.AsCurrency), 66);
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCIDChange(Sender: TField);
begin
  inherited;
  BuscarValoresImpostos;
end;

procedure TdmFAT_NF_SERVICO.BuscaDadosParametro;
var
  vDadosParametro: TBuscaDadosParametro;
begin
  if DuplicandoRegistros then exit;

  try
    vDadosParametro := TBuscaDadosParametro.Create;

    if cdsFAT_NF_SERVICO.State in [dsEdit, dsInsert] then
    begin
      cdsFAT_NF_SERVICOCOD_CADBANCO.AsInteger := vDadosParametro.LocalCobranca;
      cdsFAT_NF_SERVICOCOD_CADSERVICO.AsInteger := vDadosParametro.TipoServico;
      cdsFAT_NF_SERVICOSERIE.AsString := vDadosParametro.Serie;
      cdsFAT_NF_SERVICONATUREZA_OPERACAO.AsInteger := vDadosParametro.Natureza;
      cdsFAT_NF_SERVICOCOD_CADCPAG.AsInteger := vDadosParametro.CondicaoPagamento;

      if vDadosParametro.ISSRetido then
        cdsFAT_NF_SERVICOISS_RETIDO.AsString := 'S';
    end;
  finally
    FreeAndNil(vDadosParametro);
  end;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEMBeforePost(
  DataSet: TDataSet);
var
  S: string;
  Q: TSQLQuery;
begin
  inherited;
  if cdsFAT_NF_SERVICO_ITEMMONTANTE.AsInteger > 0 then
  begin
    S := ' SELECT A.DES, A.COD, A.VUNI, A.EXIGE_QUANTIDADE FROM FATMON A WHERE  A.CEMP = ' + QuotedStr(dmbase.CodigoEmpresa)
      + ' AND A.CCLI = ' + IntToStr(cdsFAT_NF_SERVICOCODIGO_CLIENTE.AsInteger)
      + ' AND A.MON = ' + IntToStr(cdsFAT_NF_SERVICO_ITEMMONTANTE.AsInteger);

    try
      Q := Dmbase.ExecSql(S);

      if Q.FieldByName('EXIGE_QUANTIDADE').AsString = 'S' then
        if (cdsFAT_NF_SERVICO_ITEMQUANTIDADE.IsNull) or (cdsFAT_NF_SERVICO_ITEMQUANTIDADE.AsFloat = 0) then
        begin
          ShowMessage('Informe a Quantidade!');
          Abort;
        end
        else
          cdsFAT_NF_SERVICO_ITEMPRECO_UNITARIO.AsFloat := Q.FieldByName('VUNI').AsFloat * cdsFAT_NF_SERVICO_ITEMQUANTIDADE.AsFloat;
    finally
      FreeAndNil(Q);
    end;
  end;
end;

procedure TdmFAT_NF_SERVICO.GerarNotaServicoEletronica;
var
  ObjFatNFServico: TObjFatNFServico;
begin
  inherited;

  if (not cdsFAT_NF_SERVICO.Active) or (cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsInteger = 0) then
  begin
    MessageDlg('Selecione uma Nota de Serviço!', mtWarning, [mbOK], 0);
    Abort;
  end;

  with TClassFuncaoGlobal.Create(Dmbase.Connection, Dmbase.CodigoEmpresa, '') do
  try
    ObjFatNFServico := TObjFatNFServico.Create;
    ObjFatNFServico.Cod_FatNot := cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsInteger;
    ObjAuxiliar := TObject(ObjFatNFServico);
    AbrirDLL_Consulta('Fat_Nfs_Eletronica.DLL', Dmbase.Parametros);
    VerrificarNotaCancelada;

  finally
    free;
    FreeAndNil(ObjFatNFServico);
  end;
end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICODATA_EMISSAOChange(
  Sender: TField);
var
 xmsg:String;
begin
  inherited;

  if cdsFAT_NF_SERVICODATA_EMISSAO.IsNull then exit;

  with TClassFuncaoGlobal.Create(dmbase.Connection, dmbase.CodigoEmpresa, '') do
  try
    if not VerificaAutorizacao(FormatDateTime('mm', cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime)
      , FormatDateTime('yyyy', cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime),cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime, xmsg) then
    begin
      Mensagens(10);
      cdsFAT_NF_SERVICODATA_EMISSAO.Clear;
      cdsFAT_NF_SERVICODATA_EMISSAO.FocusControl;
      Exit;
    end;
  finally
    free;
  end;
end;

procedure TdmFAT_NF_SERVICO.ConsisteAntesDaAlteracao;
begin
  if cdsFAT_NF_SERVICOCOD_FATNFSERVICO.IsNull then exit;

  if CancelandoNota then exit;

  if not dmbase.ExecSql(' select COD_FATNFSERVICO from FAT_NF_SERVICO_COMUNICACAO where COD_FATNFSERVICO = '
    + cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsString).IsEmpty then
  begin
    MessageDlg('NFs-e já foi enviado!', mtWarning, [mbok], 0);
    Abort;
  end;

end;

procedure TdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  ConsisteAntesDaAlteracao;
end;

procedure TdmFAT_NF_SERVICO.VerrificarNotaCancelada;
begin
  if cdsFAT_NF_SERVICOSITUACAO.AsString <> 'C' then
  begin
    if not dmbase.ExecSql(' select COD_FATNFSERVICO from FAT_NF_SERVICO_COMUNICACAO where TIPO = ''2'' AND COD_FATNFSERVICO = '
      + cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsString).IsEmpty then
    begin
      if Application.MessageBox('NFs-e foi cancelada, deseja cancelar a nota no sistema? ', 'Atenção', 36) = 6 then
      begin
        try
          CancelandoNota := True;
          cdsFAT_NF_SERVICO.Edit;
          cdsFAT_NF_SERVICOSITUACAO.AsString := 'C';
          cdsFAT_NF_SERVICO.Post;
          cdsFAT_NF_SERVICO.ApplyUpdates(0);
        finally
          CancelandoNota := False;
        end;
      end;
    end;
  end;
end;

procedure TdmFAT_NF_SERVICO.GerarFaturamentoMes;
var
  fdlgFaturamentoMes: TfdlgFaturamentoMes;
  x: string;
  CODIGO: Integer;
begin
{  if cdsFAT_NF_SERVICO.State in [dsedit, dsinsert] then
  begin
    MessageDlg('Primeiro deve confirmar ou cancelar a operação!', mtWarning, [mbOK], 0);
    Abort;
  end;}

  fdlgFaturamentoMes := TfdlgFaturamentoMes.Create(Self);
  try
    if fdlgFaturamentoMes.ShowModal = mrOk then
    begin
      dmbase.IniciaTransacao;
      try
        fdlgFaturamentoMes.cdsDados.First;
        while not fdlgFaturamentoMes.cdsDados.Eof do
        begin
          if fdlgFaturamentoMes.cdsDadosSELECIONAR.Value = 'S' then
          begin
            if cdsFAT_NF_SERVICO.State in [dsedit, dsinsert] then
              cdsFAT_NF_SERVICO.Cancel;

            cdsFAT_NF_SERVICO.Insert;
            cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsInteger := dmbase.IncrementaPK('FAT_NF_SERVICO');
            cdsFAT_NF_SERVICODATA_VENCIMENTO.Value := fdlgFaturamentoMes.edtDataVencimento.Date;
            cdsFAT_NF_SERVICOMES_COMPETENCIA.Value := fdlgFaturamentoMes.cbbMes.ItemIndex + 1;
            cdsFAT_NF_SERVICOANO_COMPETENCIA.Value := fdlgFaturamentoMes.edtAno.Value;
            cdsFAT_NF_SERVICOCODIGO_CLIENTE.Value := fdlgFaturamentoMes.cdsDadosCLIENTE.Value;
            cdsFAT_NF_SERVICOCODIGO_CLIENTE.value := fdlgFaturamentoMes.cdsDadosCOD_CADCOLABORADOR.Value;
            CODIGO := dmbase.IncrementaPK('FAT_NF_SERVICO_' + cdsFAT_NF_SERVICOSERIE.AsString + '_' + Dmbase.CodigoEmpresa, 1);

            cdsFAT_NF_SERVICOOBSERVACAO.Value := fdlgFaturamentoMes.cdsDadosDESCRICAO.AsString
              + ' ' + FormatFloat('00', cdsFAT_NF_SERVICOMES_COMPETENCIA.Value)
              + '/' + cdsFAT_NF_SERVICOANO_COMPETENCIA.AsString;

            x := 'INSERT INTO FAT_NF_SERVICO (COD_FATNFSERVICO, NUMERO, SERIE, CFIL, CEMP, COD_CADCLI, DATA_EMISSAO, DATA_VENCIMENTO, '
              + ' COD_CADBANCO, COMPETENCIA, VALOR_TOTAL, VALOR_LIQUIDO, SITUACAO, VALOR_DESCONTO, ISSQN_BASE, ISSQN_ALIQUOTA, '
              + ' ISSQN_VALOR, IRRF_BASE, IRRF_ALIQUOTA, IRRF_VALOR, CSLL_BASE, CSLL_ALIQUOTA, CSLL_VALOR, COFINS_BASE, COFINS_ALIQUOTA, '
              + ' COFINS_VALOR, PIS_BASE, PIS_ALIQUOTA, PIS_VALOR, COD_CADCPAG, NATUREZA_OPERACAO, OBSERVACAO, COD_SLFLIV, COD_CRPDUP, '
              + ' INSS_BASE, INSS_ALIQUOTA, INSS_VALOR, ISS_RETIDO, DISCRIMINACAO, COD_CADSERVICO, OBS_MONTADA, RPSSUBSTITUIDO, '
              + ' CID, EST, MES_COMPETENCIA, ANO_COMPETENCIA, ANO_EMISSAO) VALUES ('
              + cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsString + ', '
              + IntToStr(CODIGO) + ', ' + QuotedStr(cdsFAT_NF_SERVICOSERIE.Asstring) + ', ' + QuotedStr(cdsFAT_NF_SERVICOCFIL.asstring)
              + ', ' + QuotedStr(dmbase.CodigoEmpresa) + ', ' + fdlgFaturamentoMes.cdsDadosCOD_CADCOLABORADOR.AsString
              + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fdlgFaturamentoMes.edtDataEmissao.Date))
              + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fdlgFaturamentoMes.edtDataVencimento.Date)) + ', '
              + IntToStr(cdsFAT_NF_SERVICOCOD_CADBANCO.AsInteger) + ', ' + IntToStr(fdlgFaturamentoMes.cbbMes.ItemIndex + 1)
              + ', ' + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', fdlgFaturamentoMes.cdsDadosVALOR_MONTANTE.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', fdlgFaturamentoMes.cdsDadosVALOR_MONTANTE.AsCurrency)))
              + ', NULL, NULL, ' + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOISSQN_BASE.AsCurrency)))
              + ', ' + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOISSQN_ALIQUOTA.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOISSQN_VALOR.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOIRRF_BASE.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOIRRF_ALIQUOTA.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOIRRF_VALOR.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOCSLL_BASE.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOCSLL_ALIQUOTA.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOCSLL_VALOR.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOCOFINS_BASE.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOCOFINS_ALIQUOTA.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOCOFINS_VALOR.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOPIS_BASE.AsCurrency))) + ', ' +
              QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOPIS_ALIQUOTA.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOPIS_VALOR.AsCurrency))) + ', '
              + cdsFAT_NF_SERVICOCOD_CADCPAG.AsString + ', ' + cdsFAT_NF_SERVICONATUREZA_OPERACAO.AsString
              + ', NULL, null, null, ' + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOINSS_BASE.AsCurrency)))
              + ', ' + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOINSS_ALIQUOTA.AsCurrency))) + ', '
              + QuotedStr(TrocaVirgPorPto(FormatFloat('0.00', cdsFAT_NF_SERVICOINSS_VALOR.AsCurrency))) + ', '
              + QuotedStr(cdsFAT_NF_SERVICOISS_RETIDO.AsString) + ', ' + QuotedStr(cdsFAT_NF_SERVICOOBSERVACAO.AsString)
              + ', ' + cdsFAT_NF_SERVICOCOD_CADSERVICO.AsString + ', null, ' +
              QuotedStr(cdsFat_Nf_ServicoRPSSUBSTITUIDO.AsString) + ', '
              + QuotedStr(cdsFAT_NF_SERVICOCID.AsString) + ', ' + QuotedStr(cdsFAT_NF_SERVICOEST.AsString)
              + ', ' + QuotedStr(cdsFAT_NF_SERVICOMES_COMPETENCIA.AsString) + ', '
              + QuotedStr(cdsFAT_NF_SERVICOANO_COMPETENCIA.AsString) + ','
              + QuotedStr(FormatDateTime('yyyy', cdsFAT_NF_SERVICODATA_EMISSAO.AsDateTime)) + ')';
            dmbase.Connection.ExecuteDirect(x);

            x := ' INSERT INTO FAT_NF_SERVICO_ITEM (COD_FATNFSERVICOITEM, COD_FATNFSERVICO, DESCRICAO, COD_FATMON, MONTANTE, QUANTIDADE, PRECO_UNITARIO) '
              + ' VALUES (' + IntToStr(dmbase.IncrementaPK('FAT_NF_SERVICO_ITEM'))
              + ', ' + cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsString + ', ' + QuotedStr(cdsFAT_NF_SERVICOOBSERVACAO.AsString) + ', '
              + fdlgFaturamentoMes.cdsDadosCOD_FATMONTANTE.AsString + ', '
              + fdlgFaturamentoMes.cdsDadosCODIGO.AsString + ', NULL, '
              + quotedStr(TrocaVirgPorPto(FormatFloat('0.00', fdlgFaturamentoMes.cdsDadosVALOR_MONTANTE.AsCurrency))) + '); ';
            dmbase.Connection.ExecuteDirect(x);
          end;
          fdlgFaturamentoMes.cdsDados.Next;
        end;

        dmbase.ConfirmaTransacao;
        MessageDlg('Notas Geradas!', mtInformation, [mbOK], 0);

      except
        on E: Exception do
        begin
          dmbase.CancelaTransacao;
          MessageDlg('Problema ao Gerar Notas!', mtWarning, [mbOK], 0);
        end;
      end;
    end;
  finally
    dmbase.CancelaTransacao;
    FreeAndNil(fdlgFaturamentoMes);

    if cdsFAT_NF_SERVICO.State in [dsedit, dsinsert] then
      cdsFAT_NF_SERVICO.CancelUpdates;
  end;
end;

procedure TdmFAT_NF_SERVICO.Abrir_END_CIDADES;
begin
  cdsEND_CIDADES.close;
  cdsEND_CIDADES.open;
end;

end.

