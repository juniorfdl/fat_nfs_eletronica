<<<<<<< HEAD
unit uImprimeMarinonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImprimePadrao, StdCtrls, JvExStdCtrls, JvCombobox,
  JvExControls, JvComponent, JvXPCore, JvXPButtons, JvGradient, DB,
  DBClient, FMTBcd, SqlExpr;

type
  TfImprimePadrao1 = class(TfImprimePadrao)
  private
    FCodCli: String;
    FNumero_Nota: String;
    FFilial: String;
    { Private declarations }
    procedure BuscaDadosImpressao;
  public
    { Public declarations }
    property CodCli: String read FCodCli write FCodCli;
    property Numero_Nota: String read FNumero_Nota write FNumero_Nota;
    property Filial: String read FFilial write FFilial;
  end;

var
  fImprimePadrao1: TfImprimePadrao1;

implementation

uses uDMBase, uClassFuncaoGlobal;

{$R *.dfm}

{ TfImprimePadrao1 }

procedure TfImprimePadrao1.BuscaDadosImpressao;
var
  S, S1: String;
  Q, Q1: TSQLQuery;
begin
  try
    S := 'SELECT NOM, ENDE, CEP, EST, CID, NDOC, IEST FROM CADCLI WHERE (CEMP = ' + QuotedStr(Dmbase.CodigoEmpresa) + ' OR (SELECT EMP FROM MENUTEIM WHERE NOME = ''CADCLI'') = ''S'')' +
         ' AND COD = ' + CodCli;

    S1 := 'SELECT * FROM FAT_NF_SERVICO A' +
          ' INNER JOIN FAT_NF_SERVICO_ITEM B ON B.COD_FATNFSERVICO = A.COD_FATNFSERVICO' +
          ' WHERE NUMERO = ' + Numero_Nota + ' AND CEMP IN (''0'',' + QuotedStr(Dmbase.CodigoEmpresa) + ' AND CFIL = ' + QuotedStr(Filial);

    Q := Dmbase.ExecSql(S);
    Q1 := Dmbase.ExecSql(S1);

    if not(Q.IsEmpty) and not(Q1.IsEmpty) then
      Q1.First;

    while not(Q1.Eof) do
      begin
      
      end;
  finally
    FreeAndNil(Q);
    FreeAndNil(Q1);
  end;
end;

end.
=======
unit uImprimeMarinonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImprimePadrao, StdCtrls, JvExStdCtrls, JvCombobox,
  JvExControls, JvComponent, JvXPCore, JvXPButtons, JvGradient, DB,
  DBClient, FMTBcd, SqlExpr;

type
  TfImprimePadrao1 = class(TfImprimePadrao)
  private
    FCodCli: String;
    FNumero_Nota: String;
    FFilial: String;
    { Private declarations }
    procedure BuscaDadosImpressao;
  public
    { Public declarations }
    property CodCli: String read FCodCli write FCodCli;
    property Numero_Nota: String read FNumero_Nota write FNumero_Nota;
    property Filial: String read FFilial write FFilial;
  end;

var
  fImprimePadrao1: TfImprimePadrao1;

implementation

uses uDMBase, uClassFuncaoGlobal;

{$R *.dfm}

{ TfImprimePadrao1 }

procedure TfImprimePadrao1.BuscaDadosImpressao;
var
  S, S1: String;
  Q, Q1: TSQLQuery;
begin
  try
    S := 'SELECT NOM, ENDE, CEP, EST, CID, NDOC, IEST FROM CADCLI WHERE (CEMP = ' + QuotedStr(Dmbase.CodigoEmpresa) + ' OR (SELECT EMP FROM MENUTEIM WHERE NOME = ''CADCLI'') = ''S'')' +
         ' AND COD = ' + CodCli;

    S1 := 'SELECT * FROM FAT_NF_SERVICO A' +
          ' INNER JOIN FAT_NF_SERVICO_ITEM B ON B.COD_FATNFSERVICO = A.COD_FATNFSERVICO' +
          ' WHERE NUMERO = ' + Numero_Nota + ' AND CEMP IN (''0'',' + QuotedStr(Dmbase.CodigoEmpresa) + ' AND CFIL = ' + QuotedStr(Filial);

    Q := Dmbase.ExecSql(S);
    Q1 := Dmbase.ExecSql(S1);

    if not(Q.IsEmpty) and not(Q1.IsEmpty) then
      Q1.First;

    while not(Q1.Eof) do
      begin
      
      end;
  finally
    FreeAndNil(Q);
    FreeAndNil(Q1);
  end;
end;

end.
>>>>>>> origin/master
