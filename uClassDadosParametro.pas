unit uClassDadosParametro;

interface

type
  TBuscaDadosParametro = class(TObject)
  private
    FLocalCobranca: Integer;
    FTipoServico: Integer;
    FNatureza: Integer;
    FCondicaoPagamento: Integer;
    FSerie: String;
    FISSRetido: Boolean;
    procedure BuscaDados;
  public
    constructor Create;
    property LocalCobranca: Integer read FLocalCobranca write FLocalCobranca;
    property TipoServico: Integer read FTipoServico write FTipoServico;
    property Serie: String read FSerie write FSerie;
    property Natureza: Integer read FNatureza write FNatureza;
    property CondicaoPagamento: Integer read FCondicaoPagamento write FCondicaoPagamento;
    property ISSRetido: Boolean read FISSRetido write FISSRetido;
  end;

implementation

uses TypInfo, SysUtils, SqlExpr, uDMBase, DB;

{ TBuscaDadosParametro }

procedure TBuscaDadosParametro.BuscaDados;
var
  Q: TSQLQuery;
begin
  try
    Q := Dmbase.ExecSql('SELECT COD_CADBANCO, TIPO_SERVICO, SERIE_PADRAO, NATUREZA_PADRAO, COD_CADCPAG_PADRAO, ISS_RETIDO FROM FAT_PARAMETRO_NFS WHERE CEMP = ' + QuotedStr(Dmbase.CodigoEmpresa));

    if Q.IsEmpty then
      Exit;

    if (Q.FieldByName('COD_CADBANCO').AsInteger > 0) then
      LocalCobranca := Q.FieldByName('COD_CADBANCO').AsInteger;

    if (Q.FieldByName('TIPO_SERVICO').AsInteger > 0) then
      TipoServico := Q.FieldByName('TIPO_SERVICO').AsInteger;

    if (Q.FieldByName('SERIE_PADRAO').AsString <> '') then
      Serie := Q.FieldByName('SERIE_PADRAO').AsString;

    if (Q.FieldByName('NATUREZA_PADRAO').AsInteger > 0) then
      Natureza := Q.FieldByName('NATUREZA_PADRAO').AsInteger;

    if (Q.FieldByName('COD_CADCPAG_PADRAO').AsInteger > 0) then
      CondicaoPagamento := Q.FieldByName('COD_CADCPAG_PADRAO').AsInteger;

    ISSRetido := Q.FieldByName('ISS_RETIDO').AsString = 'S';
  finally
    FreeAndNil(Q);
  end;
end;

constructor TBuscaDadosParametro.Create;
begin
  BuscaDados;
end;

end.
