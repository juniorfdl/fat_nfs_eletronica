unit uClassListasNfs;

interface

type

  TDadosProdutos = Class
  private
    fTotal: Currency;
    fQuantidade: Currency;
    fvalor: Currency;
    fProduto: String;
    fRols: String;
    fContrato: String;
    fDataFaturamento: String;
  published
    property Produto:String read fProduto write fProduto;
    property Valor:Currency read fvalor write fvalor;
    property Quantidade:Currency read fQuantidade write fQuantidade;
    property Total:Currency read fTotal write fTotal;
    property Rols:String read fRols write fRols;
    property Contrato:String read fContrato write fContrato;
    property DataFaturamento:String read fDataFaturamento write fDataFaturamento;
  end;

 TListaDadosProdutos = array of TDadosProdutos;

 TDadosParcelas = Class
  private
    fValor: Currency;
    fNumero: Integer;
    fVendimento: TDateTime;
 published
    property Numero:Integer read fNumero write fNumero;
    property Vendimento:TDateTime read fVendimento write fVendimento;
    property Valor:Currency read fValor write fValor;
 end;

  TListaDadosParcelas = array of TDadosParcelas;


implementation

end.
