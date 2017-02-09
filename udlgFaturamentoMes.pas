unit udlgFaturamentoMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDlgBase, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, FMTBcd, DB, SqlExpr, DBClient,
  Provider, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxBlobEdit;

type
  TfdlgFaturamentoMes = class(TfDlgBase)
    Panel1: TPanel;
    edtDataEmissao: TJvDateEdit;
    cbbMes: TComboBox;
    edtDataVencimento: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtAno: TJvValidateEdit;
    Label4: TLabel;
    sqlDados: TSQLQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosCOD_FATMONTANTE: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TBlobField;
    cdsDadosVALOR_MONTANTE: TFMTBCDField;
    cdsDadosFANTASIA: TStringField;
    cdsDadosSELECIONAR: TStringField;
    cxGridPadrao: TcxGrid;
    rdbConsultaNew: TcxGridDBTableView;
    cxGridLevelPadrao: TcxGridLevel;
    rdbConsultaNewCODIGO: TcxGridDBColumn;
    rdbConsultaNewDESCRICAO: TcxGridDBColumn;
    rdbConsultaNewVALOR_MONTANTE: TcxGridDBColumn;
    rdbConsultaNewFANTASIA: TcxGridDBColumn;
    rdbConsultaNewSELECIONAR: TcxGridDBColumn;
    cdsDadosCOD_CADCOLABORADOR: TIntegerField;
    cdsDadosCLIENTE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirDados;
  public
    { Public declarations }
  end;

//var
//  fdlgFaturamentoMes: TfdlgFaturamentoMes;

implementation

uses uDMBase;

{$R *.dfm}

procedure TfdlgFaturamentoMes.AbrirDados;
begin
  cdsDados.Close;
  sqldados.SQL.Clear;
  sqldados.SQL.add(' SELECT A.COD_FATMONTANTE, A.CODIGO, A.DESCRICAO, A.VALOR_MONTANTE, '
    +' B.FANTASIA, CAST(''S'' AS C1) AS SELECIONAR, A.COD_CADCOLABORADOR, B.CODIGO as CLIENTE '
    +' FROM FAT_MONTANTE A INNER JOIN CAD_COLABORADOR B ON B.COD_CADCOLABORADOR = A.COD_CADCOLABORADOR '
    +' WHERE  A.CEMP = '+QuotedStr(dmbase.CodigoEmpresa)
    +' AND A.DATA_INICIAL <= CURRENT_DATE AND COALESCE(A.DATA_FINAL,CURRENT_DATE) >= CURRENT_DATE ');
  cdsDados.Open;

  edtDataEmissao.Date := dmbase.DataServidor;
  edtAno.Text := FormatDateTime('yyyy',edtDataEmissao.date);
  cbbMes.ItemIndex := StrToIntDef(FormatDateTime('mm',edtDataEmissao.date),1) - 1;
end;

procedure TfdlgFaturamentoMes.FormShow(Sender: TObject);
begin
  inherited;
  AbrirDados;
end;

procedure TfdlgFaturamentoMes.btnOKClick(Sender: TObject);
begin

  if edtDataEmissao.Date = 0 then
  begin
    MessageDlg('Informe a Data de Emissão!', mtWarning,[mbOK], 0);
    edtDataEmissao.SetFocus;
    ModalResult := mrNone;
    Abort;
  end;

  if edtAno.Text = '' then
  begin
    MessageDlg('Informe o Ano de Competência!', mtWarning,[mbOK], 0);
    edtAno.SetFocus;
    ModalResult := mrNone;
    Abort;
  end;

  if edtDataVencimento.Date = 0 then
  begin
    MessageDlg('Informe a Data de Vencimento!', mtWarning,[mbOK], 0);
    edtDataVencimento.SetFocus;
    ModalResult := mrNone;
    Abort;
  end;

  inherited;
end;

end.
