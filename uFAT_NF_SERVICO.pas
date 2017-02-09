
unit uFAT_NF_SERVICO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormCadBase, dxExEdtr, ImgList, Menus, ActnList, DB, Placemnt,
  AppEvnts, ufrFiltro, ComCtrls, StdCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, Buttons, ExtCtrls, udmFAT_NF_SERVICO,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, JvAppStorage, JvAppIniStorage, JvComponent,
  JvFormPlacement, CheckLst, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, JvExMask, JvToolEdit, JvDBControls, DBCtrls,
  Mask, cxBlobEdit, cxButtonEdit, JvDBCombobox, RLConsts, dbclient,
  JvCombobox, JvComponentBase, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfFAT_NF_SERVICO = class(TFormCadBase)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label4: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    edtCliente: TDBEdit;
    BitBtn3: TBitBtn;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    dsFAT_NF_SERVICO_ITEM: TDataSource;
    pcTransferencia: TPageControl;
    TabSheet9: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    TabSheet10: TTabSheet;
    DBNavigator4: TDBNavigator;
    cxGridDBTableView7MONTANTE: TcxGridDBColumn;
    cxGridDBTableView7DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView7PRECO_UNITARIO: TcxGridDBColumn;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    Label33: TLabel;
    DBMemo2: TDBMemo;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    BitBtn1: TBitBtn;
    CancelarNotaFiscal1: TMenuItem;
    DBText1: TDBText;
    ActEnviarNfsE: TAction;
    cbRetido: TDBCheckBox;
    EnviarNFse1: TMenuItem;
    TabSheet8: TTabSheet;
    DBMemo3: TDBMemo;
    ActCancelarNfs: TAction;
    TabComunicacao: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsComunicacao: TDataSource;
    cxGridDBTableView1DATA_HORA: TcxGridDBColumn;
    cxGridDBTableView1TIPO: TcxGridDBColumn;
    cxGridDBTableView1PROTOCOLO: TcxGridDBColumn;
    cxGridDBTableView1OBS: TcxGridDBColumn;
    cxGridDBTableView1XML: TcxGridDBColumn;
    Label38: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBMemo4: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    Label39: TLabel;
    DBEdit26: TDBEdit;
    cxGridDBTableView7QUANTIDADE: TcxGridDBColumn;
    rdbConsultaNewCOD_FATNFSERVICO: TcxGridDBColumn;
    rdbConsultaNewNUMERO: TcxGridDBColumn;
    rdbConsultaNewSERIE: TcxGridDBColumn;
    rdbConsultaNewCFIL: TcxGridDBColumn;
    rdbConsultaNewDATA_EMISSAO: TcxGridDBColumn;
    rdbConsultaNewDATA_VENCIMENTO: TcxGridDBColumn;
    rdbConsultaNewVALOR_TOTAL: TcxGridDBColumn;
    rdbConsultaNewVALOR_LIQUIDO: TcxGridDBColumn;
    rdbConsultaNewSITUACAO: TcxGridDBColumn;
    rdbConsultaNewCODIGO_CLIENTE: TcxGridDBColumn;
    rdbConsultaNewNOME_CLIENTE: TcxGridDBColumn;
    rdbConsultaNewCEMP: TcxGridDBColumn;
    rdbConsultaNewMES_COMPETENCIA: TcxGridDBColumn;
    rdbConsultaNewANO_COMPETENCIA: TcxGridDBColumn;
    Label40: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    Label41: TLabel;
    ActGerarFaturamentoMes: TAction;
    GerarFaturamentoMs1: TMenuItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsEND_CIDADES: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ExecutaAntesDeConfirmar; override;
    procedure ConsisteAntesDaConfirmacao; override;
    procedure actInserirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGridDBTableView7MONTANTEPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure actCancelarNFExecute(Sender: TObject);
    procedure ActEnviarNfsEExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure DuplicaRegistro(Cds :TClientDataSet; CdsFilho:TClientDataSet = nil; FieldPai: TField = nil); override;
    procedure dsPadraoStateChange(Sender: TObject);
    procedure ActGerarFaturamentoMesExecute(Sender: TObject);

  private
    { Private declarations }
    CodigoJaIncrementado:Boolean;
    fdmFAT_NF_SERVICO: TdmFAT_NF_SERVICO;
    procedure CancelarNF;
  public
    { Public declarations }
  end;

implementation

uses uDMBase, LibGir;

{$R *.dfm}

procedure TfFAT_NF_SERVICO.FormShow(Sender: TObject);
begin
  if DMBase <> nil then
    begin
      fdmFAT_NF_SERVICO := TdmFAT_NF_SERVICO.create(self);
      dspadrao.dataset := fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO;
      rdbconsulta.Datasource := fdmFAT_NF_SERVICO.dsConsFAT_NF_SERVICO;
      sqloriginal := fdmFAT_NF_SERVICO.sqloriginal;
    end;

  inherited;

  SetCaptionDBNavigator(DBNavigator4);
  dsPadrao.AutoEdit := False;
  dsFAT_NF_SERVICO_ITEM.AutoEdit := False;
  CodigoJaIncrementado := False;
  HabilitaDuplicaRegistro(True);
  fdmFAT_NF_SERVICO.Abrir_END_CIDADES;
end;

procedure TfFAT_NF_SERVICO.BitBtn3Click(Sender: TObject);
begin
  inherited;
  fdmFAT_NF_SERVICO.ConsultaCliente;
end;

procedure TfFAT_NF_SERVICO.ExecutaAntesDeConfirmar;
begin
  inherited;
  fdmFAT_NF_SERVICO.ConsisteValores;

  if not CodigoJaIncrementado then
    fdmFAT_NF_SERVICO.GetNumeroNota(1);
end;

procedure TfFAT_NF_SERVICO.actInserirExecute(Sender: TObject);
begin
  inherited;
  
  if fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO.State = dsinsert then
    edtCliente.SetFocus;
end;

procedure TfFAT_NF_SERVICO.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fdmFAT_NF_SERVICO.ConsultaMontante;
end;

procedure TfFAT_NF_SERVICO.cxGridDBTableView7MONTANTEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
 fdmFAT_NF_SERVICO.ConsultaMontante;

end;

procedure TfFAT_NF_SERVICO.actCancelarNFExecute(Sender: TObject);
begin
  inherited;
  CancelarNF;
end;

procedure TfFAT_NF_SERVICO.CancelarNF;
begin
  if fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOSITUACAO.AsString = 'C' then
  begin
    MessageDlg('Nota Esta Cancelada!',mtWarning,[mbOK],0);
    Abort;
  end;

 if Application.MessageBox('Deseja Cancelar a Nota Fiscal? ', 'Atenção', 36) <> 6 then exit;

 try
   fdmFAT_NF_SERVICO.CancelandoNota := True;
   btnAlterar1.Click;
   fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOSITUACAO.AsString := 'C';
   btnConfirmar.Click;
 finally
   fdmFAT_NF_SERVICO.CancelandoNota := False;
 end;
end;

procedure TfFAT_NF_SERVICO.ActEnviarNfsEExecute(Sender: TObject);
begin
  inherited;

  if PageControl1.ActivePage = TabConsulta then
    Abre_Tabela_Pela_Grid;

  fdmFAT_NF_SERVICO.GerarNotaServicoEletronica;
end;

procedure TfFAT_NF_SERVICO.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePage = TabComunicacao then
    fdmFAT_NF_SERVICO.AbreComunicacao;
end;

procedure TfFAT_NF_SERVICO.actImprimirExecute(Sender: TObject);
begin
//  inherited;
  ActEnviarNfsE.Execute;
end;

procedure TfFAT_NF_SERVICO.ConsisteAntesDaConfirmacao;
begin
  CodigoJaIncrementado := False;
  inherited;
  if fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICOCOD_FATNFSERVICO.AsInteger > 0 then
    CodigoJaIncrementado := True;
end;

procedure TfFAT_NF_SERVICO.DuplicaRegistro(Cds, CdsFilho: TClientDataSet;
  FieldPai: TField);
begin
  try
    fdmFAT_NF_SERVICO.DuplicandoRegistros := True;
    inherited;

    if fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEM.State in [dsedit, dsinsert] then
      fdmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEM.Post;

  finally
    fdmFAT_NF_SERVICO.DuplicandoRegistros := False; 
  end;

end;

procedure TfFAT_NF_SERVICO.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  dsFAT_NF_SERVICO_ITEM.AutoEdit := dsPadrao.DataSet.State in [dsedit, dsinsert];
end;

procedure TfFAT_NF_SERVICO.ActGerarFaturamentoMesExecute(Sender: TObject);
begin
  inherited;
  fdmFAT_NF_SERVICO.GerarFaturamentoMes;
end;


initialization
  Registerclass(TfFAT_NF_SERVICO);
  //RLConsts.SetVersion(3,70,'B');

finalization
  Unregisterclass(TfFAT_NF_SERVICO);

end.
