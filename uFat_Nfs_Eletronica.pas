{ 09/05/2012 15:14:26 (GMT-3:00) > [stela on STELA] checked out /STELA testar qtdes}
unit uFat_Nfs_Eletronica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormBase, Placemnt, AppEvnts, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, Mask, JvExMask, JvToolEdit, DBClient, DB, JvAppStorage,
  JvAppIniStorage, JvComponent, JvFormPlacement, ACBrNFSeDANFSeClass,
  ACBrNFSeDANFSeRLClass, ACBrNFSe, SqlExpr, FMTBcd, Provider, dateutils,
  DBCtrls, pcnLeitor, pnfsNFSe, JvComponentBase, ACBrBase, ACBrDFe, uClassListasNfs, Inifiles, RLConsts;

type
  TfFat_Nfs_Eletronica = class(TFormBase)
    btnEnviar: TBitBtn;
    ACBrNFSe1: TACBrNFSe;
    ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL;
    SqlComunicacao: TSQLDataSet;
    dspComunicacao: TDataSetProvider;
    cdsComunicacao: TClientDataSet;
    SqlComunicacaoCOD_FATNOTS: TIntegerField;
    SqlComunicacaoNFECHAVE: TStringField;
    SqlComunicacaoNFEXML: TBlobField;
    SqlComunicacaoNFSE_NUMERO: TStringField;
    SqlComunicacaoCODIGOVERIFICACAO: TStringField;
    SqlComunicacaoPROTOCOLO: TStringField;
    cdsComunicacaoCOD_FATNOTS: TIntegerField;
    cdsComunicacaoNFECHAVE: TStringField;
    cdsComunicacaoNFEXML: TBlobField;
    cdsComunicacaoNFSE_NUMERO: TStringField;
    cdsComunicacaoCODIGOVERIFICACAO: TStringField;
    cdsComunicacaoPROTOCOLO: TStringField;
    SqlComunicacaoCOD_CADSERVICO: TIntegerField;
    cdsComunicacaoCOD_CADSERVICO: TIntegerField;
    sqlCad_Servico: TSQLQuery;
    dspCad_Servico: TDataSetProvider;
    cdsCad_Servico: TClientDataSet;
    cdsCad_ServicoCOD_CADSERVICO: TIntegerField;
    cdsCad_ServicoNOME: TStringField;
    dsCad_Servico: TDataSource;
    cdsComunicacaoServioLook: TStringField;
    Label1: TLabel;
    cbbServico: TDBLookupComboBox;
    dsComunicacao: TDataSource;
    btnFechar: TBitBtn;
    btnOffLine: TBitBtn;
    btnNfseCancelar: TBitBtn;
    cdsComunicacaoTIPO: TStringField;
    SqlComunicacaoTIPO: TStringField;
    cdsCad_ServicoCODIGO_SERVICO: TStringField;
    btnConsultaNfse: TBitBtn;
    BitBtn1: TBitBtn;
    sqlFAT_NF_SERVICO_COMUNICACAO: TSQLDataSet;
    dspFAT_NF_SERVICO_COMUNICACAO: TDataSetProvider;
    cdsFAT_NF_SERVICO_COMUNICACAO: TClientDataSet;
    cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICOCOMUNICACAO: TIntegerField;
    cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICO: TIntegerField;
    cdsFAT_NF_SERVICO_COMUNICACAODATA_HORA: TSQLTimeStampField;
    cdsFAT_NF_SERVICO_COMUNICACAOTIPO: TStringField;
    cdsFAT_NF_SERVICO_COMUNICACAOPROTOCOLO: TStringField;
    cdsFAT_NF_SERVICO_COMUNICACAOOBS: TStringField;
    cdsFAT_NF_SERVICO_COMUNICACAOCODIGOVERIFICACAO: TStringField;
    cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO: TStringField;
    cdsFAT_NF_SERVICO_COMUNICACAOXML: TMemoField;
    sqlFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICOCOMUNICACAO: TIntegerField;
    sqlFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICO: TIntegerField;
    sqlFAT_NF_SERVICO_COMUNICACAODATA_HORA: TSQLTimeStampField;
    sqlFAT_NF_SERVICO_COMUNICACAOTIPO: TStringField;
    sqlFAT_NF_SERVICO_COMUNICACAOPROTOCOLO: TStringField;
    sqlFAT_NF_SERVICO_COMUNICACAOOBS: TStringField;
    sqlFAT_NF_SERVICO_COMUNICACAOCODIGOVERIFICACAO: TStringField;
    sqlFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO: TStringField;
    sqlFAT_NF_SERVICO_COMUNICACAOXML: TMemoField;
    sqlFAT_NF_SERVICO_COMUNICACAOCOD_CADSERVICO: TIntegerField;
    cdsFAT_NF_SERVICO_COMUNICACAOCOD_CADSERVICO: TIntegerField;
    cdsFAT_NF_SERVICO_COMUNICACAOServioLook: TStringField;
    cdsCad_ServicoCODIGOTRIBUTACAOMUNICIPIO: TIntegerField;
    cdsCad_ServicoREGIMEESPECIALTRIBUTACAO: TIntegerField;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnOffLineClick(Sender: TObject);
    procedure btnNfseCancelarClick(Sender: TObject);
    procedure btnConsultaNfseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cdsFAT_NF_SERVICO_COMUNICACAOBeforePost(DataSet: TDataSet);
  private
    fCod_FatNot: Integer;
    fOffLine, ExisteFAT_NF_SERVICO_COMUNICACAO: Boolean;
    fviaWeb: Boolean;
    procedure setCod_FatNot(const Value: Integer);
    procedure AbreComunicacao;
    procedure EnviarNfsEmail;
    procedure ImprimirNfse;
    procedure MandaEmailPeloOutLook(Assunto, Destinatarios, Descricao,
      Arquivo: string);
    procedure GerarNFSe(NumNFSe: string);
    procedure CancelarNfs;
    procedure ConsultaNfse(pProtocolo, pCodigoVerificacao, NFSE_NUMERO: string);
    function GetNotaEnviada: Boolean;
    function GetNotaCancelada: Boolean;
    procedure GravarCancelamento;
    procedure VerificarConfNfs;
    function GetAliquotaCad_Servico: Currency;
    procedure GravarLogOperacaoOK(Tipo, Protocolo, CODIGOVERIFICACAO, NFSE_NUMERO:String);
  private
    { Private declarations }
    ListaDadosParcelas: TListaDadosParcelas;
    ListaProdutos: TListaDadosProdutos;
    Isql_Tomador, isql_Emitente, isqlParametro, IsqlDadosNota: TSQLQuery;
    IsqlDadosNotaItens: TClientDataSet;

    Email_Emitente, EmailCliente, CaminhoXml: string;
    property Cod_FatNot: Integer read fCod_FatNot write setCod_FatNot;
    procedure ConfiguraComponente;
    procedure LogoEmpresa;
    procedure Enviar_Nfse;
    procedure TestarNotaPodeEnviar;
    function VerificarXmlPasta: boolean;
    procedure PreencheDadosParcelas;
    function GetMontaDescricaoImpressao: string;
    property NotaEnviada: Boolean read GetNotaEnviada;
    property NotaCancelada: Boolean read GetNotaCancelada;
    function Caracter_XML_Invalido(Dados: string): string;
    function GetNFSE_NUMERO(): Integer;
    function GetNFSE_NUMERO_Enviada(): Integer;
    function GetCodigoMunicipio(Estado, Cidade: string): string;
    
  public
    { Public declarations }
    procedure ExecutarFuncoesShow;
    procedure EmitirNfseWeb;
    procedure CancelarNfseWeb;
    procedure ConsultarNfseWeb;    
    property OffLine: Boolean read fOffLine write fOffLine;
    procedure GravarLog;

  end;

var
  fFat_Nfs_Eletronica: TfFat_Nfs_Eletronica;

implementation

uses uClassFuncaoGlobal, uDMBase, LibGir, uGirObjDLL, uObjFatNFServico,
  pcnConversao, pnfsConversao, uDlgEMAIL, SendMail, ACBrNFSeConfiguracoes,
  ACBrNFSeWebServices, ACBrDFeSSL;

{$R *.dfm}

procedure TfFat_Nfs_Eletronica.btnEnviarClick(Sender: TObject);
begin
  inherited;
  OffLine := false;
  Enviar_Nfse;
end;

procedure TfFat_Nfs_Eletronica.ConfiguraComponente;
var
  PathMensal, CamLogo, Filial: string;
begin
  ACBrNFSe1.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) + 'Xml-Nfs';
  ACBrNFSe1.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'Schemas';
  ACBrNFSe1.Configuracoes.Arquivos.PathNFSe := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathCan := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathRPS := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathGer := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSeDANFSeRL1.PathPDF := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\PDF';  
  ACBrNFSe1.Configuracoes.WebServices.Visualizar := not dmbase.OperacaoSilenciosa;

  isqlParametro := dmbase.ExecSql(' SELECT * FROM FAT_PARAMETRO_NFS A WHERE A.CEMP = '
    + QuotedStr(dmbase.CodigoEmpresa) + ' AND A.CFIL = ' + QuotedStr(IsqlDadosNota.fieldbyname('CFIL').AsString));

{$IFDEF ACBrNFSeOpenSSL}
  ACBrNFSe1.Configuracoes.Certificados.Certificado := isqlParametro.fieldbyname('CERTIFICADO_SERIE').AsString;
  ACBrNFSe1.Configuracoes.Certificados.Senha := isqlParametro.fieldbyname('CERTIFICADO_SENHA').AsString;
{$ELSE}
  ACBrNFSe1.Configuracoes.Certificados.NumeroSerie := isqlParametro.fieldbyname('CERTIFICADO_SERIE').AsString;
{$ENDIF}

  {  if isqlParametro.fieldbyname('UseCertificado').AsString = 'N' then
    ACBrNFSe1.Configuracoes.Geral.ConfigGeral.UseCertificado := False
  else
    ACBrNFSe1.Configuracoes.Geral.ConfigGeral.UseCertificado := True;}

  Email_Emitente := isqlParametro.fieldbyname('EMAIL').AsString;
  ACBrNFSe1.DANFSe.Prefeitura := isqlParametro.fieldbyname('PREFEITURA').AsString;
  ACBrNFSe1.Configuracoes.Arquivos.AdicionarLiteral := True;
  ACBrNFSe1.Configuracoes.Arquivos.EmissaoPathNFSe := True;
//  ACBrNFSe1.Configuracoes.Arquivos.PastaMensal := True;
  ACBrNFSe1.Configuracoes.Arquivos.PathCan := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathNFSe := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.Salvar := True;

  LogoEmpresa;
  CamLogo := ExtractFileDir(Application.ExeName) + '\NfsImage' + Dmbase.CodigoEmpresa + '.bmp';

  if FileExists(CamLogo) then
  begin
      //  ACBrNFSe1.DANFSe.Logo := CamLogo;
    ACBrNFSe1.DANFSe.PrestLogo := CamLogo;
  end;

  PathMensal := ACBrNFSe1.Configuracoes.Arquivos.GetPathNFSe(0);

  ACBrNFSe1.Configuracoes.Geral.Salvar := True;

  if isqlParametro.fieldbyname('PRODUCAO').AsString <> 'S' then
    ACBrNFSe1.Configuracoes.WebServices.Ambiente := taHomologacao
  else
    ACBrNFSe1.Configuracoes.WebServices.Ambiente := taProducao;

  ACBrNFSe1.Configuracoes.Geral.Salvar := true;
  ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio := StrToIntDef(isqlParametro.fieldbyname('CODIGO_MUNICIPIO').AsString, 0);
  ACBrNFSe1.Configuracoes.Geral.SenhaWeb := isqlParametro.fieldbyname('SENHA').AsString;
  ACBrNFSe1.Configuracoes.Geral.UserWeb := isqlParametro.fieldbyname('USER_WEB').AsString;
    

  if isqlParametro.fieldbyname('AGUARDARCONSULTARETORNO').AsInteger > 0 then
    ACBrNFSe1.Configuracoes.WebServices.AguardarConsultaRet := isqlParametro.fieldbyname('AGUARDARCONSULTARETORNO').AsInteger;

  if isqlParametro.fieldbyname('CONSULTARLOTEAPOSENVIO').AsString = 'S' then
    ACBrNFSe1.Configuracoes.Geral.ConsultaLoteAposEnvio := True
  else
    ACBrNFSe1.Configuracoes.Geral.ConsultaLoteAposEnvio := False;

  if isqlParametro.fieldbyname('INTERVALOTENTATIVAS').AsInteger > 0 then
    ACBrNFSe1.Configuracoes.WebServices.IntervaloTentativas := isqlParametro.fieldbyname('INTERVALOTENTATIVAS').AsInteger;

end;

procedure TfFat_Nfs_Eletronica.FormShow(Sender: TObject);
begin
  ExecutarFuncoesShow;
end;

procedure TfFat_Nfs_Eletronica.LogoEmpresa;
var
  CamLogo, x: string;
  F: TClassFuncaoGlobal;
  Isql: TSQLQuery;
begin
  CamLogo := ExtractFileDir(Application.ExeName);

  if FileExists(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.ant') then
  begin
    DeleteFile(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.ant');
  end;

  if FileExists(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.bmp') then
  begin
    RenameFile(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.bmp', CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.ant');
  end;

  x := 'SELECT LOGOTIPO FROM CADEMP WHERE CEMP = ' + QuotedStr(Dmbase.CodigoEmpresa);
  F := TClassFuncaoGlobal.Create(dmbase.Connection, '', '');
  try
    Isql := F.ExecSql(X);

    try
      if not Isql.FieldByName('LOGOTIPO').IsNull then
      begin
        TBlobField(Isql.FieldByName('LOGOTIPO')).SaveToFile(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.jpeg');
      end;

      JpgToBmp(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa);
    finally
      if not FileExists(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.bmp') then
        TBlobField(Isql.FieldByName('LOGOTIPO')).SaveToFile(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.bmp');
    end;

  finally
    freeandnil(F);
    FreeAndNil(iSQL);

    if not FileExists(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.bmp') then
    begin
      RenameFile(CamLogo + '\NfsImage' + Dmbase.CodigoEmpresa + '.ant', CamLogo + '\NfeImage' + Dmbase.CodigoEmpresa + '.bmp');
    end;
  end;
end;

procedure TfFat_Nfs_Eletronica.setCod_FatNot(const Value: Integer);
begin
  fCod_FatNot := Value;
  IsqlDadosNota := dmbase.ExecSql(' SELECT * FROM V_NOTA_SERVICO WHERE COD = ' + IntToStr(Value));
  IsqlDadosNotaItens := TClientDataSet.Create(nil);

  with TClassFuncaoGlobal.Create(Dmbase.Connection, dmbase.CodigoEmpresa, '') do
  begin
    IsqlDadosNotaItens.Data := RetornaDados(' SELECT * FROM V_NOTA_SERVICO_ITENS WHERE COD = ' + IntToStr(Value));
    Free;
  end;
end;

procedure TfFat_Nfs_Eletronica.AbreComunicacao;
begin
  sqlCad_Servico.SQL.Clear;
  sqlCad_Servico.SQL.Add(' SELECT A.COD_CADSERVICO, A.NOME, A.CODIGO_SERVICO, '
    + ' A.REGIMEESPECIALTRIBUTACAO, A.CODIGOTRIBUTACAOMUNICIPIO FROM CAD_SERVICO A WHERE A.CEMP IN (''0'', '
    + QuotedStr(dmbase.CodigoEmpresa) + ' ) ');
  cdsCad_Servico.Close;
  cdsCad_Servico.Open;

  with TClassFuncaoGlobal.Create(dmbase.Connection, '', '') do
  begin
    ExisteFAT_NF_SERVICO_COMUNICACAO := Existe_Tabela('FAT_NF_SERVICO_COMUNICACAO');
    Free;
  end;

  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
  begin
    dsComunicacao.DataSet := cdsComunicacao;
    cbbServico.DataField := cdsComunicacaoServioLook.FieldName;
    cdsComunicacao.Close;
    cdsComunicacao.Params[0].AsInteger := Cod_FatNot;
    cdsComunicacao.Open;
  end
  else begin
    dsComunicacao.DataSet := cdsFAT_NF_SERVICO_COMUNICACAO;
    cbbServico.DataField := cdsFAT_NF_SERVICO_COMUNICACAOServioLook.FieldName;
    cdsFAT_NF_SERVICO_COMUNICACAO.Close;
    cdsFAT_NF_SERVICO_COMUNICACAO.Params[0].AsInteger := Cod_FatNot;
    cdsFAT_NF_SERVICO_COMUNICACAO.Open;
  end;
end;

procedure TfFat_Nfs_Eletronica.EnviarNfsEmail();
var
  fDlgEMAIL: TfDlgEMAIL;
  Isql: TSQLQuery;
  ListaCC: TStringList;
  sCC, CaminhoArq, CaminhoArqPDF: string;
  F: TClassFuncaoGlobal;
begin
  if Cod_FatNot = 0 then exit;

  if Application.MessageBox(PChar('Deseja enviar e-mail da nota de serviço eletrônica para o cliente?'), PChar(Application.Title), MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    fDlgEMAIL := TfDlgEMAIL.Create(nil);
    F := TClassFuncaoGlobal.Create(dmbase.Connection, dmbase.CodigoEmpresa, '');
    try
      if not NotaEnviada then
      begin
        dmbase.ShowMessageDlg('Nota Serviço Eletrônica não pode ir para o cliente!'
            + #13 + 'Não foi emitida a Nfs-e ou o sistema não envio corretamente!'); 
      end;

      if F.Existe_Tabela('CAD_COLABORADOR') then
      begin
        with F.ExecSql(' SELECT B.EMAIL FROM CAD_COLABORADOR A '
          + ' INNER JOIN CAD_PESSOA B ON B.CODIGO_PESSOA = A.CODIGO_PESSOA '
          + ' WHERE A.COD_CADCOLABORADOR = ' + IntToStr(IsqlDadosNota.fieldbyname('COD_CADCLI').AsInteger)) do
        begin
          if not IsEmpty then
            EmailCliente := FieldByName('EMAIL').AsString;
        end;
      end;

      if EmailCliente = '' then
        EmailCliente :=
          DMBASE.ExecSql(' SELECT EMAIL FROM CADCLI WHERE ID = ' + IsqlDadosNota.fieldbyname('COD_CADCLI').AsString)
          .FieldByName('EMAIL').AsString;


      CaminhoArqPDF := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar + 'PDF\'
        + IsqlDadosNota.fieldbyname('NNOT').AsString + '.pdf';

      if not FileExists(CaminhoArqPDF) then
        CaminhoArqPDF := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar + 'PDF\'
          + FormatDateTime('yyyy', IsqlDadosNota.fieldbyname('DEMI').AsDateTime)
          + FormatFloat('00000000000', IsqlDadosNota.fieldbyname('NNOT').AsInteger) + '.pdf';

      if not FileExists(CaminhoArqPDF) then
        if ACBrNFSe1.NotasFiscais.Count > 0 then
          CaminhoArqPDF := ACBrNFSe1.DANFSE.PathPDF + ACBrNFSe1.NumID[ACBrNFSe1.NotasFiscais.Items[0].NFSe] + '-nfse.pdf';

      CaminhoXml := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar + 'Nfs.xml';
      CaminhoXml := CaminhoXml + ';' + CaminhoArqPDF;

      fDlgEMAIL.edtEmail.Text := EmailCliente;
      fDlgEMAIL.EdtEmitente.Text := Email_Emitente;
      fDlgEMAIL.edtEmailAssunto.Text := 'Nfs-e: ' + FormatFloat('0000', IsqlDadosNota.fieldbyname('NNOT').AsInteger);
      CaminhoArq := CaminhoXml;

      if fDlgEMAIL.ShowModal = mrOk then
      begin
        if fDlgEMAIL.edtEmailCC.Text <> '' then
        begin
          ListaCC := TStringList.Create();
          sCC := fDlgEMAIL.edtEmailCC.Text;
          F.ConverteEmLista(sCC, ListaCC);
        end;

        if fDlgEMAIL.cbOutLook.Checked then
          MandaEmailPeloOutLook(fDlgEMAIL.edtEmailAssunto.Text, fDlgEMAIL.edtEmail.Text, fDlgEMAIL.mmEmailMsg.Lines.Text, CaminhoArq)
        else
        begin
          if fDlgEMAIL.edtEmail.Text <> '' then
          begin
            if fDlgEMAIL.EdtEmitente.Text <> '' then
              F.Email_remetente := fDlgEMAIL.EdtEmitente.Text;
            F.MandaEmail(fDlgEMAIL.edtEmailAssunto.Text, fDlgEMAIL.edtEmail.Text, fDlgEMAIL.mmEmailMsg.Lines, CaminhoArq, ListaCC);
          end;
        end;
      end;

    finally
      FreeAndNil(fDlgEMAIL);
      FreeAndNil(iSQL);
      FreeAndNil(F);
    end;
  end;
end;

procedure TfFat_Nfs_Eletronica.ImprimirNfse;
begin
  if not dmbase.OperacaoSilenciosa then
    ACBrNFSe1.NotasFiscais.Imprimir;
    
  ACBrNFSe1.NotasFiscais.ImprimirPDF;
  
  if not dmbase.OperacaoSilenciosa then
    EnviarNfsEmail;
end;

procedure TfFat_Nfs_Eletronica.MandaEmailPeloOutLook(Assunto, Destinatarios, Descricao, Arquivo: string);
var
  s, vdestinatario, vArquivo: string;
  i: Integer;
begin
  with TSendMail.Create(nil) do
  try
    Subject := Assunto;
    Body := Descricao;

    s := Destinatarios;
    vdestinatario := Destinatarios;
    while s <> '' do
    begin
      i := Pos(';', s);
      if i = 0 then
        i := Length(s) + 1;
      Recipients.Add(Copy(s, 1, i - 1));
      Delete(s, 1, i);
    end;

    s := Arquivo;
    vArquivo := Arquivo;
    while s <> '' do
    begin
      i := Pos(';', s);
      if i = 0 then
        i := Length(s) + 1;
      Attachments.Add(Copy(s, 1, i - 1));
      Delete(s, 1, i);
    end;

    EditDialog := True;
    SenderAddress := vdestinatario;
    Send;
  finally
    Free;
  end;
end;

procedure TfFat_Nfs_Eletronica.Enviar_Nfse;
var
  CaminhoNfse, vAux, vNumLote, Caminho, xCodigoVerificacao, xProtocolo: string;
  i: Integer;
begin
  inherited;
  if dmbase = nil then
    exit;

  if cbbServico.DataSource.DataSet.FieldByName('COD_CADSERVICO').IsNull then
  begin
    dmbase.ShowMessageDlg('Informe o Tipo de Serviço!');
  end;

  ConfiguraComponente;
  Caminho := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\Nfs.xml';

  vAux := IntToStr(GetNFSE_NUMERO);

  vNumLote := IntToStr(Cod_FatNot);
  ACBrNFSe1.NotasFiscais.Clear;
  GerarNFSe(vAux);

  if (OffLine) or (NotaEnviada) then
  begin
    if OffLine then
    begin
      ACBrNFSe1.NotasFiscais.GerarNFSe;
      ACBrNFSe1.NotasFiscais.GravarXML(ExtractFilePath(Application.ExeName) + 'Xml-Nfs\NfsOffline.xml');
    end;

    if (NotaEnviada) and (not OffLine) then
    begin
      if not dmbase.OperacaoSilenciosa then
      if Application.MessageBox('Nota já foi enviada deseja imprimir? ', 'Atenção', 36) <> 6 then
        Abort;
    end;

    if not ExisteFAT_NF_SERVICO_COMUNICACAO then
    begin
      if ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero = '' then
        ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero := IsqlDadosNota.fieldbyname('NNOT').AsString;

      ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := cdsComunicacaoCODIGOVERIFICACAO.AsString;
    end
    else begin
      if ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero = '' then
        ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero := IsqlDadosNota.fieldbyname('NNOT').AsString;

      ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := cdsFAT_NF_SERVICO_COMUNICACAOCODIGOVERIFICACAO.AsString;
    end;

    if OffLine then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Producao := snNao;

    if ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero = '' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero := '0';

    if ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao = '' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := '0';

    if isqlParametro.FieldByName('IMPRIMIR_LISTA_PARCELAS').AsString = 'S' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.ListaDadosParcelas := ListaDadosParcelas;

    if isqlParametro.FieldByName('IMPRIMIR_LISTA_PRODUTO').AsString = 'S' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.ListaDadosProdutos := ListaProdutos;

    if NotaCancelada then
    begin
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Cancelada := snSim;
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.NfseCancelamento.DataHora := cdsFAT_NF_SERVICO_COMUNICACAODATA_HORA.AsDateTime;
    end;

    ImprimirNfse;
  end
  else begin
    if not dmbase.OperacaoSilenciosa then
      TestarNotaPodeEnviar;
    try
      try
        (ACBrNFSe1.Enviar(vNumLote, False));
      except
        on E: Exception do
          dmbase.ShowMessageDlg(e.message);
      end;
    finally
      if not OffLine then
      begin
        Sleep(1000);
        ConsultaNfse('', '', vAux);
      end;
    end;
  end;

  ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TfFat_Nfs_Eletronica.GerarNFSe(NumNFSe: string);
var
  ValorISS, BaseCalculo: Currency;
  OK: Boolean;
  EXIGIBILIDADEISS, CodigoMunicipio, NATUREZA_PADRAO, CIDADE_TOMADOR, UF_TOMADOR, xDiscriminacao: string;
  i: Integer;
begin
  isql_Emitente := dmbase.ExecSql(' SELECT NDOC, IMUN, NOM, FANT, ENDE, LGR, NR, BAI , CID, EST, CEND, CEP, EMAIL, NFON1, PFON1 FROM CADEMP WHERE CEMP = ' + QuotedStr(dmbase.CodigoEmpresa));
  Isql_Tomador := dmbase.ExecSql(' SELECT NDOC, NOM, ENDE, CID, BAI, EST, CEND, LGR, NR, CEP, NFON, PFON, HPAG, EMAIL FROM CADCLI WHERE ID = '
    + IsqlDadosNota.fieldbyname('COD_CADCLI').AsString);

  ACBrNFSe1.NotasFiscais.Clear;
  with ACBrNFSe1 do
  begin
    NotasFiscais.NumeroLote := IntToStr(Cod_FatNot);

    with NotasFiscais.Add.NFSe do
    begin

      if (IsqlDadosNota.FindField('MES_COMPETENCIA') <> nil)
        and (IsqlDadosNota.fieldbyname('MES_COMPETENCIA').Value > 0) then
      begin
        Competencia := IsqlDadosNota.fieldbyname('ANO_COMPETENCIA').AsString + '/' +
          FormatFloat('00', IsqlDadosNota.fieldbyname('MES_COMPETENCIA').Value);
      end
      else
        Competencia := FormatDateTime('yyyy/mm', IsqlDadosNota.fieldbyname('DEMI').AsDateTime);

      Numero := IsqlDadosNota.fieldbyname('NNOT').AsString;

      if trim(isqlParametro.fieldbyname('TIPO_RPS').AsString) <> '' then
      begin
        //if (isql_Emitente.fieldbyname('NDOC').AsString = '10656686000127') then
        //  NumNFSe := IntToStr(StrToInt(Numero) + 2);  ///apenas para rodcar

        IdentificacaoRps.Numero := NumNFSe;
        IdentificacaoRps.Serie := IsqlDadosNota.fieldbyname('SER').AsString;

        if isqlParametro.fieldbyname('TIPO_RPS').AsString = 'R' then
          IdentificacaoRps.Tipo := trRPS
        else
          if isqlParametro.fieldbyname('TIPO_RPS').AsString = 'N' then
            IdentificacaoRps.Tipo := trNFConjugada
          else
            if isqlParametro.fieldbyname('TIPO_RPS').AsString = 'C' then
              IdentificacaoRps.Tipo := trCupom;
      end;

      DataEmissao := IsqlDadosNota.fieldbyname('DEMI').AsDateTime + TimeOf(Now);
      NATUREZA_PADRAO := IsqlDadosNota.fieldbyname('NATUREZA_OPERACAO').AsString;

      NaturezaOperacao := StrToNaturezaOperacao(OK, trim(NATUREZA_PADRAO));

      if cdsCad_ServicoREGIMEESPECIALTRIBUTACAO.AsString <> '' then
        RegimeEspecialTributacao := StrToRegimeEspecialTributacao(OK, cdsCad_ServicoREGIMEESPECIALTRIBUTACAO.AsString)
      else
        RegimeEspecialTributacao := StrToRegimeEspecialTributacao(OK, isqlParametro.fieldbyname('REGIMEESPECIALTRIBUTACAO').AsString);

      if isqlParametro.fieldbyname('OPTANTESIMPLESNACIONAL').AsString = 'S' then
        OptanteSimplesNacional := snSim
      else
        OptanteSimplesNacional := snNao;

      if isqlParametro.fieldbyname('INCENTIVADORCULTURAL').AsString = 'S' then
        IncentivadorCultural := snSim
      else
        IncentivadorCultural := snNao;

      if isqlParametro.fieldbyname('PRODUCAO').AsString = 'S' then
        Producao := snSim
      else
        Producao := snNao;

     // TnfseStatusRPS = ( srNormal, srCancelado );
      Status := srNormal;
      Servico.Valores.ValorServicos := IsqlDadosNota.fieldbyname('VNOT').AsCurrency;
      Servico.Valores.DescontoIncondicionado := IsqlDadosNota.fieldbyname('VDES').AsCurrency;
      Servico.Valores.ValorPis := IsqlDadosNota.fieldbyname('VPIS').AsCurrency;
      Servico.Valores.ValorCofins := IsqlDadosNota.fieldbyname('VCOF').AsCurrency;
      Servico.Valores.ValorInss := IsqlDadosNota.fieldbyname('VINSS').AsCurrency;
      Servico.Valores.ValorIr := IsqlDadosNota.fieldbyname('VIRF').AsCurrency;
      Servico.Valores.ValorCsll := IsqlDadosNota.fieldbyname('CSSL').AsCurrency;

      if IsqlDadosNota.fieldbyname('ISS_RETIDO').AsString = 'S' then
        Servico.Valores.IssRetido := stRetencao
      else
        Servico.Valores.IssRetido := stNormal;

      Servico.Valores.OutrasRetencoes := 0.00;
      Servico.Valores.DescontoCondicionado := 0.00;

      BaseCalculo := Servico.Valores.ValorServicos -
        Servico.Valores.ValorDeducoes -
        Servico.Valores.DescontoIncondicionado;

      if IsqlDadosNota.fieldbyname('VISS').AsCurrency > 0 then
      begin
        Servico.Valores.BaseCalculo := IsqlDadosNota.fieldbyname('BISS').AsCurrency;
        Servico.Valores.Aliquota := IsqlDadosNota.fieldbyname('AISS').AsCurrency / 100;

        if Servico.Valores.IssRetido = stNormal then
        begin
          ValorISS := IsqlDadosNota.fieldbyname('VISS').AsCurrency;
          Servico.Valores.ValorIss := ValorISS;
          Servico.Valores.ValorIssRetido := 0.00;
        end
        else begin
          ValorISS := IsqlDadosNota.fieldbyname('VISS').AsCurrency;
          Servico.Valores.ValorIss := ValorISS;
          Servico.Valores.ValorIssRetido := ValorISS;
        end;
      end
      else begin
        Servico.Valores.BaseCalculo := BaseCalculo;
        Servico.Valores.Aliquota := GetAliquotaCad_Servico;
        Servico.Valores.ValorIss := 0;
        Servico.Valores.ValorIssRetido := 0;
      end;

      Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos -
        Servico.Valores.ValorPis -
        Servico.Valores.ValorCofins -
        Servico.Valores.ValorInss -
        Servico.Valores.ValorIr -
        Servico.Valores.ValorCsll -
        Servico.Valores.OutrasRetencoes -
        Servico.Valores.ValorIssRetido -
        Servico.Valores.DescontoIncondicionado -
        Servico.Valores.DescontoCondicionado;

      cdsCad_Servico.Locate('COD_CADSERVICO', cdsComunicacaoCOD_CADSERVICO.AsInteger, []);
      Servico.ItemListaServico := cdsCad_ServicoCODIGO_SERVICO.AsString;
      Servico.xItemListaServico := cdsCad_ServicoNOME.AsString;

     // Para o provedor ISS.NET em ambiente de Homologação
     // o Codigo CNAE tem que ser '6511102'

      Servico.CodigoCnae := isqlParametro.fieldbyname('CODIGOCNAE').AsString;

      if isqlParametro.fieldbyname('PRODUCAO').AsString <> 'S' then
        Servico.CodigoCnae := '6511102';

      if cdsCad_ServicoCODIGOTRIBUTACAOMUNICIPIO.AsString <> '' then
        Servico.CodigoTributacaoMunicipio := cdsCad_ServicoCODIGOTRIBUTACAOMUNICIPIO.AsString
      else
        if isqlParametro.fieldbyname('CODIGOTRIBUTACAOMUNICIPIO').AsString <> '' then
          Servico.CodigoTributacaoMunicipio := isqlParametro.fieldbyname('CODIGOTRIBUTACAOMUNICIPIO').AsString;

      if NaturezaOperacao = no2 then /// FORA DO MUNICIPIO
      begin
        CIDADE_TOMADOR := IsqlDadosNota.fieldbyname('CIDADE_TOMADOR').AsString;
        UF_TOMADOR := IsqlDadosNota.fieldbyname('UF_TOMADOR').AsString;

        if CIDADE_TOMADOR = '' then
        begin
          CIDADE_TOMADOR := Isql_Tomador.fieldbyname('CID').AsString;
          UF_TOMADOR := Isql_Tomador.fieldbyname('EST').AsString;
        end;

        if CIDADE_TOMADOR <> '' then
        begin
          CodigoMunicipio := GetCodigoMunicipio(UF_TOMADOR, CIDADE_TOMADOR);
          Servico.CodigoMunicipio := CodigoMunicipio;
        end;

        if Servico.CodigoMunicipio = '' then
        begin
          dmbase.ShowMessageDlg('Código do Município do Tomador não Localizado!'
            + #13 + 'Município: ' + CIDADE_TOMADOR + '\' + UF_TOMADOR);
        end;
      end;

      if Servico.CodigoMunicipio = '' then
        Servico.CodigoMunicipio := isqlParametro.fieldbyname('CODIGO_MUNICIPIO').AsString;

      if isqlParametro.fieldbyname('EXIGIBILIDADEISS').AsString <> '' then
        EXIGIBILIDADEISS := dmbase.ExecSql('SELECT CODIGO FROM TABELA_NOMES WHERE COD_TABELA_NOMES = '
          + isqlParametro.fieldbyname('EXIGIBILIDADEISS').AsString).fieldbyname('CODIGO').AsString;

      //EXIGIBILIDADEISS := '2';
      Servico.ExigibilidadeISS := StrToExigibilidadeISS(ok, EXIGIBILIDADEISS);

     // Informar para Saatri
      Servico.CodigoPais := 1058; // Brasil
      Servico.Discriminacao := '';

      SetLength(ListaProdutos, IsqlDadosNotaItens.RecordCount);
      IsqlDadosNotaItens.First;
      i := 0;
      while not IsqlDadosNotaItens.Eof do
      begin
        ListaProdutos[i] := TDadosProdutos.Create;
        ListaProdutos[i].Produto := IsqlDadosNotaItens.fieldbyname('DESCRICAO').AsString;
        ListaProdutos[i].Valor := IsqlDadosNotaItens.fieldbyname('VUNI').AsCurrency;
        ListaProdutos[i].Quantidade := IsqlDadosNotaItens.fieldbyname('QTD').AsCurrency;
        ListaProdutos[i].Total := IsqlDadosNotaItens.fieldbyname('VTOT').AsCurrency;
        inc(i);

        if Servico.Discriminacao = '' then
          Servico.Discriminacao := IsqlDadosNotaItens.fieldbyname('DESCRICAO').AsString
        else
          Servico.Discriminacao := Servico.Discriminacao + ' ' + IsqlDadosNotaItens.fieldbyname('DESCRICAO').AsString;

        with Servico.ItemServico.Add do
        begin
          Descricao := IsqlDadosNotaItens.fieldbyname('DESCRICAO').AsString;
          Quantidade := IsqlDadosNotaItens.fieldbyname('QTD').AsInteger;
          ValorUnitario := IsqlDadosNotaItens.fieldbyname('VUNI').AsCurrency;
        end;
        IsqlDadosNotaItens.Next;
      end;

      xDiscriminacao := Servico.Discriminacao;
      Servico.Discriminacao := Caracter_XML_Invalido(xDiscriminacao);

      if Trim(IsqlDadosNota.FieldByName('OCORPO').AsString) <> '' then
        OutrasInformacoes := IsqlDadosNota.FieldByName('OCORPO').AsString + #13 + GetMontaDescricaoImpressao
      else
        OutrasInformacoes := GetMontaDescricaoImpressao;

      // se imprimi lista de produtos a OBS de serviço não precisa ter a descricao dos serviços
//      if isqlParametro.FieldByName('IMPRIMIR_LISTA_PRODUTO').AsString = 'S' then
//      begin
//        Servico.Discriminacao := IsqlDadosNota.FieldByName('OCORPO').AsString;
//      end;

      PreencheDadosParcelas;

      if isqlParametro.FieldByName('IMPRIMIR_LISTA_PRODUTO').AsString = 'S' then
      begin
        ListaDadosParcelas := ListaDadosParcelas;
        ListaDadosProdutos := ListaProdutos;
      end;

      PrestadorServico.IdentificacaoPrestador.Cnpj := TiraCaracteres(isql_Emitente.fieldbyname('NDOC').AsString);
      PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal := isql_Emitente.fieldbyname('IMUN').AsString;
      PrestadorServico.IdentificacaoPrestador.Senha := isqlParametro.fieldbyname('Senha').AsString;
      PrestadorServico.IdentificacaoPrestador.FraseSecreta := isqlParametro.fieldbyname('FRASE_SECRETA').AsString;
      PrestadorServico.IdentificacaoPrestador.cUF := 43;
      PrestadorServico.RazaoSocial := Caracter_XML_Invalido(isql_Emitente.fieldbyname('NOM').AsString);
      PrestadorServico.NomeFantasia := Caracter_XML_Invalido(isql_Emitente.fieldbyname('FANT').AsString);
      PrestadorServico.Endereco.TipoLogradouro := Caracter_XML_Invalido(isql_Emitente.fieldbyname('LGR').AsString);
      PrestadorServico.Endereco.Endereco := Caracter_XML_Invalido(isql_Emitente.fieldbyname('ENDE').AsString);
      PrestadorServico.Endereco.Numero := isql_Emitente.fieldbyname('NR').AsString;
      PrestadorServico.Endereco.Complemento := Caracter_XML_Invalido(isql_Emitente.fieldbyname('CEND').AsString);
      PrestadorServico.Endereco.Bairro := Caracter_XML_Invalido(isql_Emitente.fieldbyname('BAI').AsString);
      PrestadorServico.Endereco.CodigoMunicipio := isqlParametro.fieldbyname('CODIGO_MUNICIPIO').AsString;
      PrestadorServico.Endereco.UF := isql_Emitente.fieldbyname('EST').AsString;
      PrestadorServico.Endereco.CEP := isql_Emitente.fieldbyname('CEP').AsString;
      PrestadorServico.Endereco.xMunicipio := Caracter_XML_Invalido(isql_Emitente.fieldbyname('CID').AsString);
      PrestadorServico.Endereco.CodigoPais := 1058;
      PrestadorServico.Contato.Telefone := isql_Emitente.fieldbyname('PFON1').AsString + isql_Emitente.fieldbyname('NFON1').AsString;
      PrestadorServico.Contato.Email := isql_Emitente.fieldbyname('EMAIL').AsString;

      ACBrNFSe1.Configuracoes.Geral.Emitente.InscMun := PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal;
      ACBrNFSe1.Configuracoes.Geral.Emitente.CNPJ := PrestadorServico.IdentificacaoPrestador.Cnpj;
      ACBrNFSe1.Configuracoes.Geral.Emitente.RazSocial := PrestadorServico.RazaoSocial;

      Prestador.Cnpj := TiraCaracteres(isql_Emitente.fieldbyname('NDOC').AsString);
      Prestador.InscricaoMunicipal := isql_Emitente.fieldbyname('IMUN').AsString;
      Prestador.cUF := 43;

      if isqlParametro.fieldbyname('SENHA').AsString <> '' then
        Prestador.Senha := isqlParametro.fieldbyname('SENHA').AsString;

      if isqlParametro.fieldbyname('FRASE_SECRETA').AsString <> '' then
        Prestador.FraseSecreta := isqlParametro.fieldbyname('FRASE_SECRETA').AsString;

      CodigoMunicipio := GetCodigoMunicipio(Isql_Tomador.fieldbyname('EST').AsString, Isql_Tomador.fieldbyname('CID').AsString);
      Tomador.Endereco.CodigoMunicipio := CodigoMunicipio;

      Tomador.IdentificacaoTomador.CpfCnpj := TiraCaracteres(Isql_Tomador.fieldbyname('NDOC').AsString);

      with Dmbase.ExecSql(' SELECT INSCRICAO_MUNICIPAL, IEST FROM CAD_COLABORADOR WHERE COD_CADCOLABORADOR = '
        + IsqlDadosNota.fieldbyname('COD_CADCLI').AsString) do
      begin
        if FieldByName('INSCRICAO_MUNICIPAL').AsString <> '' then
          Tomador.IdentificacaoTomador.InscricaoMunicipal := FieldByName('INSCRICAO_MUNICIPAL').AsString;

        if FieldByName('IEST').AsString <> '' then
          Tomador.IdentificacaoTomador.InscricaoEstadual := FieldByName('IEST').AsString;
      end;

      //      Tomador.IdentificacaoTomador.DocTomadorEstrangeiro

      Tomador.RazaoSocial := Caracter_XML_Invalido(Isql_Tomador.fieldbyname('NOM').AsString);
      Tomador.Endereco.Endereco :=
        Caracter_XML_Invalido(IIF(Isql_Tomador.fieldbyname('LGR').AsString <> '', Isql_Tomador.fieldbyname('LGR').AsString + ' ', '') +
        Isql_Tomador.fieldbyname('ENDE').AsString);
      Tomador.Endereco.Numero := Isql_Tomador.fieldbyname('NR').AsString;
      Tomador.Endereco.Complemento := Caracter_XML_Invalido(Isql_Tomador.fieldbyname('CEND').AsString);
      Tomador.Endereco.Bairro := Isql_Tomador.fieldbyname('BAI').AsString;
      Tomador.Endereco.UF := Isql_Tomador.fieldbyname('EST').AsString;
      Tomador.Endereco.CEP := Isql_Tomador.fieldbyname('CEP').AsString;
      Tomador.Endereco.xMunicipio := Isql_Tomador.fieldbyname('CID').AsString;

      if CIDADE_TOMADOR <> '' then
        Tomador.Endereco.xMunicipio_Incidencia := CIDADE_TOMADOR
      else
        Tomador.Endereco.xMunicipio_Incidencia := Isql_Tomador.fieldbyname('CID').AsString;

      Tomador.Contato.Telefone := Isql_Tomador.fieldbyname('PFON').AsString + Isql_Tomador.fieldbyname('NFON').AsString;
      Tomador.Contato.Email := Isql_Tomador.fieldbyname('EMAIL').AsString;
    end;
  end;
end;

procedure TfFat_Nfs_Eletronica.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(isqlParametro);
  FreeAndNil(Isql_Tomador);
  FreeAndNil(isql_Emitente);
  Close;
end;

procedure TfFat_Nfs_Eletronica.btnOffLineClick(Sender: TObject);
begin
  inherited;
  OffLine := True;
  Enviar_Nfse;
end;

procedure TfFat_Nfs_Eletronica.CancelarNfs;
var
  Codigo, vAux: string;
begin
  if NotaCancelada then
  begin
    dmbase.ShowMessageDlg('Nota Fiscal ja foi cancelada!');
  end;

  if not NotaEnviada then
  begin
    dmbase.ShowMessageDlg('Nota Fiscal não foi enviada!');
  end;

  ACBrNFSe1.NotasFiscais.Clear;
  ConfiguraComponente;

  //vAux := FormatDateTime('yyyy', IsqlDadosNota.fieldbyname('DEMI').AsDateTime)
  // + FormatFloat('000000',IsqlDadosNota.fieldbyname('NNOT').AsInteger);
  vAux := cdsComunicacaoNFSE_NUMERO.Value;
  GerarNFSe(vAux);

  if not dmbase.OperacaoSilenciosa then
  if not (InputQuery('Cancelar NFSe', 'Código de Cancelamento: '
    + #13 + '1 - Erro de Emissão'
    + #13 + '2 - Serviço não Concluido'
    + #13 + '3 - RPS Cancelado na Emissão', Codigo))
    then exit;

  try

    if ACBrNFSe1.Configuracoes.Geral.Provedor in [proDBSeller, proBHISS] then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero :=
        FormatDateTime('yyyy', ACBrNFSe1.NotasFiscais.Items[0].NFSe.DataEmissao) +
        FormatFloat('00000000000', StrToIntDef(ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero, 0));

    try
      if ACBrNFSe1.CancelarNFSe(Codigo) then
      begin
        GravarCancelamento;
        if not dmbase.OperacaoSilenciosa then
        MessageDlg('Nfs-e Cancelada com sucesso!', mtInformation, [mbOK], 0);
      end
      else begin

        if ACBrNFSe1.WebServices.CancNfse <> nil then
          if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
          begin
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
            begin
              if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
              begin
                GravarCancelamento;
                exit;
              end;
            end;
          end;

        try
          ACBrNFSe1.CancelarNFSe(Codigo);
        finally

          if ACBrNFSe1.WebServices.CancNfse <> nil then
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
            begin
              if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
              begin
                if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
                begin
                  GravarCancelamento;
                end;
              end;
            end;
        end;
      end;
    except

      if ACBrNFSe1.WebServices.CancNfse <> nil then
        if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
        begin
          if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
          begin
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
            begin
              GravarCancelamento;
              exit;
            end;
          end;
        end;

      try
        ACBrNFSe1.CancelarNFSe(Codigo);
      finally

        if ACBrNFSe1.WebServices.CancNfse <> nil then
          if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
          begin
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
            begin
              if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
              begin
                GravarCancelamento;
              end;
            end;
          end;
      end;
    end;
  except
    on E: Exception do
    begin
      dmbase.ShowMessageDlg(E.message);
    end;
  end;

end;


procedure TfFat_Nfs_Eletronica.btnNfseCancelarClick(Sender: TObject);
begin
  inherited;
  CancelarNfs;
end;

procedure TfFat_Nfs_Eletronica.ConsultaNfse(pProtocolo, pCodigoVerificacao, NFSE_NUMERO: string);
var
  vAux, vProtocolo, Caminho, vCodigoVerificacao: string;
begin
  ConfiguraComponente;
  Caminho := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\Nfs.xml';
  vProtocolo := pProtocolo;
  vCodigoVerificacao := pCodigoVerificacao;

  vAux := NFSE_NUMERO;
  ACBrNFSe1.NotasFiscais.Clear;
  GerarNFSe(vAux);

  if ACBrNFSe1.ConsultarNFSeporRps(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
    ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie,
    TipoRPSToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Tipo)) then
  begin
    vCodigoVerificacao :=
      ACBrNFSe1.WebServices.ConsNfseRps.RetornoNFSe.ListaNfse.CompNfse.Items[0].Nfse.CodigoVerificacao;

    if vCodigoVerificacao <> '' then
    begin
      ACBrNFSe1.NotasFiscais.Clear;
      GerarNFSe(vAux);
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := vCodigoVerificacao;
      ACBrNFSe1.NotasFiscais.Items[0].GravarXML(ExtractFileName(Caminho), ExtractFilePath(Caminho));
      NotaEnviada;

      if not ExisteFAT_NF_SERVICO_COMUNICACAO then
      begin
        cdsComunicacao.Edit;
        cdsComunicacaoTIPO.AsString := '1';
        cdsComunicacaoCOD_FATNOTS.AsInteger := Cod_FatNot;
        cdsComunicacaoPROTOCOLO.AsString := vProtocolo;
        cdsComunicacaoCODIGOVERIFICACAO.AsString := vCodigoVerificacao;
        cdsComunicacaoNFSE_NUMERO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero;
        cdsComunicacaoNFEXML.LoadFromFile(Caminho);
        cdsComunicacao.Post;
        cdsComunicacao.ApplyUpdates(0);
      end
      else begin
        cdsFAT_NF_SERVICO_COMUNICACAO.Edit;
        cdsFAT_NF_SERVICO_COMUNICACAOTIPO.AsString := '1';
        cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICO.AsInteger := Cod_FatNot;
        cdsFAT_NF_SERVICO_COMUNICACAOPROTOCOLO.AsString := vProtocolo;
        cdsFAT_NF_SERVICO_COMUNICACAOCODIGOVERIFICACAO.AsString := vCodigoVerificacao;
        cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero;
        cdsFAT_NF_SERVICO_COMUNICACAOXML.LoadFromFile(Caminho);
        cdsFAT_NF_SERVICO_COMUNICACAO.Post;
        cdsFAT_NF_SERVICO_COMUNICACAO.ApplyUpdates(0);
      end;
    end;

    if isqlParametro.FieldByName('IMPRIMIR_LISTA_PRODUTO').AsString = 'S' then
    begin
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.ListaDadosProdutos := ListaProdutos;
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.ListaDadosParcelas := ListaDadosParcelas;
    end;

    ImprimirNfse;
  end
  else
    ShowMessage('Nfse não encontrada!');
end;

procedure TfFat_Nfs_Eletronica.btnConsultaNfseClick(Sender: TObject);
var
  xNFSE_NUMERO_Enviada: string;
begin
  inherited;
  if cbbServico.DataSource.DataSet.FieldByName('COD_CADSERVICO').IsNull then
  begin
    dmbase.ShowMessageDlg('Informe o Tipo de Serviço!');
  end;

  xNFSE_NUMERO_Enviada := IntToStr(GetNFSE_NUMERO_Enviada);

  if not dmbase.OperacaoSilenciosa then
  if xNFSE_NUMERO_Enviada = '0' then
    InputQuery('Informe o Nro do RPS: ', 'Numero: ', xNFSE_NUMERO_Enviada);

  ConsultaNfse('', '', xNFSE_NUMERO_Enviada);
end;

function TfFat_Nfs_Eletronica.VerificarXmlPasta: boolean;
var
  Caminho, ArqProtocolo, Protocolo, CaminhoNfse: string;
  Leitor: TLeitor;
begin
  Result := False;
  ConfiguraComponente;
  Caminho := ACBrNFSe1.Configuracoes.Arquivos.GetPathGer;
  ArqProtocolo := Caminho + '\' + IntToStr(Cod_FatNot) + '-rec.xml';
  CaminhoNfse := ACBrNFSe1.Configuracoes.Arquivos.GetPathNFSe(now) + '\' + IntToStr(IsqlDadosNota.fieldbyname('NNOT').AsInteger) + '-nfse.xml';

  if not FileExists(ArqProtocolo) then exit;
//  if not FileExists(CaminhoNfse) then exit;

  Leitor := TLeitor.Create;
  Leitor.CarregarArquivo(ArqProtocolo);
  Protocolo := Leitor.rCampo(tcStr, 'Protocolo');
  Protocolo := Leitor.rExtrai(1, 'Protocolo', 'Protocolo');
  Protocolo := StringReplace(UpperCase(Protocolo), '<PROTOCOLO>', '', []);

  if not FileExists(CaminhoNfse) then
    ACBrNFSe1.ConsultarLoteRps(IntToStr(Cod_FatNot), Protocolo);

  if not FileExists(CaminhoNfse) then exit;

  ACBrNFSe1.NotasFiscais.Clear;
  ACBrNFSe1.NotasFiscais.LoadFromFile(CaminhoNfse);
  ImprimirNfse;

  NotaEnviada;

  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
  begin
    cdsComunicacao.Edit;
    cdsComunicacaoTIPO.AsString := '1';
    cdsComunicacaoCOD_FATNOTS.AsInteger := Cod_FatNot;
    cdsComunicacaoPROTOCOLO.AsString := Protocolo;
    cdsComunicacaoCODIGOVERIFICACAO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
    cdsComunicacaoNFSE_NUMERO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero;
    cdsComunicacaoNFEXML.LoadFromFile(CaminhoNfse);
    cdsComunicacao.Post;
    cdsComunicacao.ApplyUpdates(0);
  end
  else begin
    cdsFAT_NF_SERVICO_COMUNICACAO.Edit;
    cdsFAT_NF_SERVICO_COMUNICACAOTIPO.AsString := '1';
    cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICO.AsInteger := Cod_FatNot;
    cdsFAT_NF_SERVICO_COMUNICACAOPROTOCOLO.AsString := Protocolo;
    cdsFAT_NF_SERVICO_COMUNICACAOCODIGOVERIFICACAO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
    cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero;
    cdsFAT_NF_SERVICO_COMUNICACAOXML.LoadFromFile(CaminhoNfse);
    cdsFAT_NF_SERVICO_COMUNICACAO.Post;
    cdsFAT_NF_SERVICO_COMUNICACAO.ApplyUpdates(0);
  end;

  Result := True;
end;

procedure TfFat_Nfs_Eletronica.PreencheDadosParcelas;
var
  i: Integer;
  IsqlDadosNotaParcelas: TClientDataSet;
begin

  IsqlDadosNotaParcelas := TClientDataSet.Create(nil);
  with TClassFuncaoGlobal.Create(Dmbase.Connection, dmbase.CodigoEmpresa, '') do
  begin
    IsqlDadosNotaParcelas.Data := RetornaDados(' SELECT VPAR,DVEC,ITEM FROM FATNOTPARC WHERE COD = ' + IntToStr(Cod_FatNot));
    Free;
  end;

  SetLength(ListaDadosParcelas, IsqlDadosNotaParcelas.RecordCount);
  IsqlDadosNotaParcelas.First;
  i := 0;
  while not IsqlDadosNotaParcelas.Eof do
  begin
    ListaDadosParcelas[i] := TDadosParcelas.Create;
    ListaDadosParcelas[i].Numero := IsqlDadosNotaParcelas.fieldbyname('ITEM').AsInteger;
    ListaDadosParcelas[i].Valor := IsqlDadosNotaParcelas.fieldbyname('VPAR').AsCurrency;
    ListaDadosParcelas[i].Vendimento := IsqlDadosNotaParcelas.fieldbyname('DVEC').AsDateTime;
    inc(i);
    IsqlDadosNotaParcelas.Next;
  end;
end;

procedure TfFat_Nfs_Eletronica.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ACBrNFSe1.SSL.SelecionarCertificado;
end;

function TfFat_Nfs_Eletronica.GetMontaDescricaoImpressao: string;
begin
  if IsqlDadosNota.FieldByName('AISS').AsCurrency > 0 then
    Result := Result + '(' +
      'ISSQN ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('AISS').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VISS').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('AIRF').AsCurrency > 0 then
    Result := Result + '('
      + 'IRRF ' + formatfloat('0.0#%', IsqlDadosNota.FieldByName('AIRF').AsCurrency)
      + formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VIRF').AsCurrency) + ')  ';

  if IsqlDadosNota.FieldByName('ACSLL').AsCurrency > 0 then
    Result := Result + '('
      + 'CSLL ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('ACSLL').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('CSSL').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('ACOF').AsCurrency > 0 then
    Result := Result + '('
      + 'Cofins ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('ACOF').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VCOF').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('APIS').AsCurrency > 0 then
    Result := Result + '('
      + 'PIS ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('APIS').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VPIS').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('AINSS').AsCurrency > 0 then
    Result := Result + '('
      + 'INSS ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('AINSS').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VINSS').AsCurrency)) + ')  ';
end;

function TfFat_Nfs_Eletronica.GetNotaEnviada: Boolean;
begin
  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
    result := cdsComunicacao.Locate('TIPO', '1', [])
  else
    result := cdsFAT_NF_SERVICO_COMUNICACAO.Locate('TIPO', '1', []);
end;

function TfFat_Nfs_Eletronica.GetNotaCancelada: Boolean;
begin
  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
    Result := cdsComunicacao.Locate('TIPO', '2', [])
  else
    Result := cdsFAT_NF_SERVICO_COMUNICACAO.Locate('TIPO', '2', []);
end;

procedure TfFat_Nfs_Eletronica.cdsFAT_NF_SERVICO_COMUNICACAOBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICOCOMUNICACAO.IsNull then
    cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICOCOMUNICACAO.AsInteger := Dmbase.IncrementaPK('FAT_NF_SERVICO_COMUNICACAO');

  cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICO.AsInteger := Cod_FatNot;
end;

procedure TfFat_Nfs_Eletronica.GravarCancelamento;
var
  COD_CADSERVICO: integer;
  NFSE_NUMERO, Caminho: string;
begin
  Caminho := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\Nfs.xml';
  ACBrNFSe1.NotasFiscais.Items[0].GravarXML(ExtractFileName(Caminho), ExtractFilePath(Caminho));

  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
  begin
    COD_CADSERVICO := cdsComunicacaoCOD_CADSERVICO.asinteger;
    NFSE_NUMERO := cdsComunicacaoNFSE_NUMERO.AsString;

    if cdsComunicacao.Locate('TIPO', '2', []) then
      cdsComunicacao.Edit
    else
      cdsComunicacao.Insert;

    if COD_CADSERVICO > 0 then
      cdsComunicacaoCOD_CADSERVICO.asinteger := COD_CADSERVICO;

    cdsComunicacaoNFSE_NUMERO.AsString := NFSE_NUMERO;
    cdsComunicacaoCOD_FATNOTS.AsInteger := Cod_FatNot;
    cdsComunicacaoTIPO.AsString := '2';
    cdsComunicacaoPROTOCOLO.AsString := ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento;
    cdsComunicacaoNFEXML.LoadFromFile(Caminho);
    cdsComunicacao.Post;
    cdsComunicacao.ApplyUpdates(0);
  end
  else begin
    COD_CADSERVICO := cdsFAT_NF_SERVICO_COMUNICACAOCOD_CADSERVICO.asinteger;
    NFSE_NUMERO := cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO.AsString;

    if cdsFAT_NF_SERVICO_COMUNICACAO.Locate('TIPO', '2', []) then
      cdsFAT_NF_SERVICO_COMUNICACAO.Edit
    else
      cdsFAT_NF_SERVICO_COMUNICACAO.Insert;

    if COD_CADSERVICO > 0 then
      cdsFAT_NF_SERVICO_COMUNICACAOCOD_CADSERVICO.asinteger := COD_CADSERVICO;

    cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO.AsString := NFSE_NUMERO;
    cdsFAT_NF_SERVICO_COMUNICACAOCOD_FATNFSERVICO.AsInteger := Cod_FatNot;
    cdsFAT_NF_SERVICO_COMUNICACAOTIPO.AsString := '2';
    cdsFAT_NF_SERVICO_COMUNICACAOPROTOCOLO.AsString := ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento;
    cdsFAT_NF_SERVICO_COMUNICACAOXML.LoadFromFile(Caminho);
    cdsFAT_NF_SERVICO_COMUNICACAO.Post;
    cdsFAT_NF_SERVICO_COMUNICACAO.ApplyUpdates(0);
  end;
end;

procedure TfFat_Nfs_Eletronica.TestarNotaPodeEnviar;
var
  NUMERO: Integer;
begin

  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
  begin
    NUMERO :=
      Dmbase.ExecSql(' SELECT FIRST(1) B.NNOT AS NUMERO FROM FATNOTS_XML A '
      + ' INNER JOIN FATNOT B ON B.COD = A.COD_FATNOTS '
      + ' WHERE B.CEMP = ' + QuotedStr(dmbase.CodigoEmpresa)
      + ' AND B.SER = ' + QuotedStr(IsqlDadosNota.fieldbyname('SER').AsString)
      + ' AND EXTRACT(YEAR FROM B.DEMI) = ' + FormatDateTime('YYYY', IsqlDadosNota.fieldbyname('DEMI').AsDateTime)
      + ' ORDER BY B.NNOT DESC ').FieldByName('NUMERO').AsInteger;
  end
  else begin
    NUMERO :=
      Dmbase.ExecSql(' SELECT FIRST(1) B.NUMERO FROM FAT_NF_SERVICO_COMUNICACAO A '
      + ' INNER JOIN FAT_NF_SERVICO B ON B.COD_FATNFSERVICO = A.COD_FATNFSERVICO '
      + ' WHERE B.CEMP = ' + QuotedStr(dmbase.CodigoEmpresa) + '  AND B.SERIE = '
      + QuotedStr(IsqlDadosNota.fieldbyname('SER').AsString)
      + ' AND EXTRACT(YEAR FROM A.DATA_HORA) = ' + FormatDateTime('YYYY', IsqlDadosNota.fieldbyname('DEMI').AsDateTime)
      + ' AND A.TIPO <> ''2'' '
      + ' ORDER BY B.NUMERO DESC ').FieldByName('NUMERO').AsInteger;
  end;

  if NUMERO > 0 then
  begin
    NUMERO := NUMERO + 1;
    if IsqlDadosNota.fieldbyname('NNOT').AsInteger <> NUMERO then
    begin
      dmbase.ShowMessageDlg('Nota de Serviço fora da sequência de envio!'
        + #13 + 'Próxima Nota: ' + FormatFloat('0000', NUMERO));
    end;
  end;

end;

function TfFat_Nfs_Eletronica.Caracter_XML_Invalido(Dados: string): string;
begin
  Result := StringReplace(Dados, '&', 'E', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '>', ' ', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '<', ' ', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '=', ' ', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '"', ' ', [rfReplaceAll, rfIgnoreCase]);
end;

function TfFat_Nfs_Eletronica.GetNFSE_NUMERO: Integer;
var
  NFSE_NUMERO: string;
begin
  Result := GetNFSE_NUMERO_Enviada;

  if Result <= 0 then
  begin

    if ExisteFAT_NF_SERVICO_COMUNICACAO then
      NFSE_NUMERO := dmbase.ExecSql(' SELECT FIRST(1) A.NFSE_NUMERO FROM FAT_NF_SERVICO B '
        + ' INNER JOIN FAT_NF_SERVICO_COMUNICACAO A ON B.COD_FATNFSERVICO = A.COD_FATNFSERVICO '
        + ' WHERE  B.CEMP = ' + QuotedStr(dmbase.CodigoEmpresa) + ' AND A.TIPO = ''1'' AND TRIM(A.NFSE_NUMERO) <> '''' '
        + ' AND char_length(A.NFSE_NUMERO) < 10 '
        + ' ORDER BY CAST(A.NFSE_NUMERO AS INTEGER) DESC ').FieldByName('NFSE_NUMERO').AsString
    else
      NFSE_NUMERO := dmbase.ExecSql(' SELECT FIRST(1) A.NFSE_NUMERO FROM FATNOT B '
        + ' INNER JOIN FATNOTS_XML A ON B.cod = A.cod_fatnots '
        + ' WHERE  B.CEMP = ' + QuotedStr(dmbase.CodigoEmpresa) + ' AND A.TIPO = ''1'' AND TRIM(A.NFSE_NUMERO) <> '''' '
        + ' AND char_length(A.NFSE_NUMERO) < 10 '
        + ' ORDER BY CAST(A.NFSE_NUMERO AS INTEGER) DESC ').FieldByName('NFSE_NUMERO').AsString;

    Result := StrToIntDef(NFSE_NUMERO, 0) + 1;
  end;

end;

function TfFat_Nfs_Eletronica.GetNFSE_NUMERO_Enviada: Integer;
begin
  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
  begin
    cdsComunicacao.Locate('TIPO', '1', []);
    result := StrToIntDef(cdsComunicacaoNFSE_NUMERO.AsString, 0);
  end
  else begin
    cdsFAT_NF_SERVICO_COMUNICACAO.Locate('TIPO', '1', []);
    result := StrToIntDef(cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO.AsString, 0);
  end;
end;

function TfFat_Nfs_Eletronica.GetCodigoMunicipio(Estado,
  Cidade: string): string;
var
  F: TClassFuncaoGlobal;
begin
  Result := '';

  if (Cidade = '') or (Estado = '') then exit;

  F := TClassFuncaoGlobal.Create(dmbase.Connection, '', '');
  try
    if F.Existe_Tabela('END_CIDADES') then
      Result := DMBASE.ExecSql(
        ' SELECT A.CODIGO_IBGE FROM END_CIDADES A INNER JOIN END_ESTADOS B ON B.CODIGO_ESTADO = A.CODIGO_ESTADO '
        + ' WHERE UPPER(A.NOME_CIDADE) = ' + QuotedStr(UpperCase(Cidade))
        + ' AND B.SIGLA_UF = ' + QuotedStr(Estado)).FieldByName('CODIGO_IBGE').AsString;

    if Result = '' then
    begin
      Result := DMBASE.ExecSql(' SELECT CMUN FROM CADMUN WHERE EST = ' + QuotedStr(Estado)
        + ' AND UPPER(NOM) = ' + QuotedStr(UpperCase(Cidade))).FieldByName('CMUN').AsString;
    end;
  finally
    FreeAndNil(F);
  end;

end;

procedure TfFat_Nfs_Eletronica.VerificarConfNfs;
var
  F: TIniFile;
  ProxyHost, ProxyPorta, ProxyUser, ProxySenha, SSLLib: string;
begin
  F := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'ConfDil.ini');
  try
    if F.ReadString('NFS', 'UsarHost', '') <> '' then
    begin
      ProxyHost := F.ReadString('NFE', 'ProxyHost', '');
      ProxyPorta := F.ReadString('NFE', 'ProxyPorta', '');
      ProxyUser := F.ReadString('NFE', 'ProxyUser', '');
      ProxySenha := F.ReadString('NFE', 'ProxySenha', '');

      ACBrNFSe1.Configuracoes.WebServices.ProxyHost := ProxyHost;
      ACBrNFSe1.Configuracoes.WebServices.ProxyPort := ProxyPorta;
      ACBrNFSe1.Configuracoes.WebServices.ProxyUser := ProxyUser;
      ACBrNFSe1.Configuracoes.WebServices.ProxyPass := ProxySenha;
    end;

    SSLLib := F.ReadString('NFS', 'SSLLib', '');

    if SSLLib = 'libNone' then
      ACBrNFSe1.Configuracoes.Geral.SSLLib := libNone
    else
      if SSLLib = 'libOpenSSL' then
        ACBrNFSe1.Configuracoes.Geral.SSLLib := libOpenSSL
      else
        if SSLLib = 'libCapicom' then
          ACBrNFSe1.Configuracoes.Geral.SSLLib := libCapicom
        else
          if SSLLib = 'libCapicomDelphiSoap' then
            ACBrNFSe1.Configuracoes.Geral.SSLLib := libCapicomDelphiSoap;
  finally
    FreeAndNil(F);
  end;
end;

function TfFat_Nfs_Eletronica.GetAliquotaCad_Servico: Currency;
begin
  result := 0;
  if cdsCad_ServicoCOD_CADSERVICO.AsString = '' then exit;
  if isql_Emitente.fieldbyname('CID').AsString = '' then exit;

  result := dmbase.ExecSql(' SELECT A.ISS_VLR FROM CAD_SERVICO_IMPOSTO A '
    + ' INNER JOIN END_CIDADES C ON C.CODIGO_CIDADE = A.CODIGO_CIDADE '
    + ' WHERE A.COD_CADSERVICO = ' + cdsCad_ServicoCOD_CADSERVICO.AsString
    + ' AND C.NOME_CIDADE = ' + QuotedStr(isql_Emitente.fieldbyname('CID').AsString)
    ).FieldByName('ISS_VLR').AsCurrency;
end;

procedure TfFat_Nfs_Eletronica.ExecutarFuncoesShow;
begin
  if dmbase = nil then exit;    

  Cod_FatNot := TObjFatNFServico(TGirObjDLL(dmbase.ObjDll).ObjAuxiliar).Cod_FatNot;
  OffLine := TObjFatNFServico(TGirObjDLL(dmbase.ObjDll).ObjAuxiliar).OffLine;

  AbreComunicacao;
  VerificarConfNfs;

  if cdsComunicacaoCOD_CADSERVICO.IsNull then
  begin
    if (cdsCad_Servico.RecordCount = 1) or (dmbase.OperacaoSilenciosa) then
    begin
      if not ExisteFAT_NF_SERVICO_COMUNICACAO then
      begin
        cdsComunicacao.Edit;
        cdsComunicacaoCOD_CADSERVICO.Value := cdsCad_ServicoCOD_CADSERVICO.AsInteger;
      end
      else begin
        cdsFAT_NF_SERVICO_COMUNICACAO.Edit;
        cdsFAT_NF_SERVICO_COMUNICACAOCOD_CADSERVICO.Value := cdsCad_ServicoCOD_CADSERVICO.AsInteger;
      end;
    end;

    if cdsComunicacaoCOD_CADSERVICO.Value = 0 then
    begin
      if ExisteFAT_NF_SERVICO_COMUNICACAO then
      begin
        cdsFAT_NF_SERVICO_COMUNICACAO.Edit;
        cdsFAT_NF_SERVICO_COMUNICACAOCOD_CADSERVICO.Value := Dmbase.ExecSql(' SELECT COD_CADSERVICO FROM FAT_NF_SERVICO WHERE COD_FATNFSERVICO = '
          + IntToStr(Cod_FatNot)).FieldByName('COD_CADSERVICO').AsInteger;
      end;
    end;
  end;  
end;

procedure TfFat_Nfs_Eletronica.EmitirNfseWeb;
begin
  Enviar_Nfse;
end;

procedure TfFat_Nfs_Eletronica.CancelarNfseWeb;
begin
  CancelarNfs;
end;

procedure TfFat_Nfs_Eletronica.ConsultarNfseWeb;
begin
  ConsultaNfse('', '', IntToStr(GetNFSE_NUMERO_Enviada));
end;

procedure TfFat_Nfs_Eletronica.GravarLogOperacaoOK(Tipo, Protocolo, CODIGOVERIFICACAO, NFSE_NUMERO:String);
var
  Arquivolog:String;
begin
  Arquivolog := ExtractFilePath(Application.ExeName) + 'nfseok' + IntToStr(Cod_FatNot) + '.txt';

  if FileExists(Arquivolog) then
   DeleteFile(Arquivolog);

  addLog(Tipo, Arquivolog);
  addLog(Protocolo, Arquivolog);
  addLog(CODIGOVERIFICACAO, Arquivolog);
  addLog(NFSE_NUMERO, Arquivolog);

  if Dmbase.OperacaoSilenciosa then
    addLog('1', Arquivolog);   
end;

procedure TfFat_Nfs_Eletronica.GravarLog;
begin
  if not ExisteFAT_NF_SERVICO_COMUNICACAO then
  begin
     cdsComunicacao.Last;
     GravarLogOperacaoOK(cdsComunicacaoTIPO.AsString, cdsComunicacaoPROTOCOLO.AsString
      , cdsComunicacaoCODIGOVERIFICACAO.AsString, cdsComunicacaoNFSE_NUMERO.AsString);
  end
  else begin
     cdsFAT_NF_SERVICO_COMUNICACAO.Last;
     GravarLogOperacaoOK(cdsFAT_NF_SERVICO_COMUNICACAOTIPO.AsString, cdsFAT_NF_SERVICO_COMUNICACAOPROTOCOLO.AsString
     , cdsFAT_NF_SERVICO_COMUNICACAOCODIGOVERIFICACAO.AsString, cdsFAT_NF_SERVICO_COMUNICACAONFSE_NUMERO.AsString);
  end;  

end;

initialization registerclass(TfFat_Nfs_Eletronica);

//initialization
  //rlconsts.setversion(3, 72, 'B');

finalization unregisterclass(TfFat_Nfs_Eletronica);

end.

