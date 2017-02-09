unit udlgConsultaMontante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDlgBase, StdCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxBlobEdit;

type
  TfdlgConsultaMontante = class(TfDlgBase)
    sqlMontantes: TSQLQuery;
    dspMontantes: TDataSetProvider;
    cdsMontantes: TClientDataSet;
    dsMontantes: TDataSource;
    cdsMontantesCOD: TIntegerField;
    cdsMontantesMON: TIntegerField;
    cdsMontantesDATINI: TDateField;
    cdsMontantesDATFIN: TDateField;
    cdsMontantesVUNI: TFloatField;
    cdsMontantesTIP: TIntegerField;
    cdsMontantesDES: TBlobField;
    cdsMontantesDATR: TDateField;
    cxGridPadrao: TcxGrid;
    rdbConsultaNew: TcxGridDBTableView;
    cxGridLevelPadrao: TcxGridLevel;
    rdbConsultaNewMON: TcxGridDBColumn;
    rdbConsultaNewDATINI: TcxGridDBColumn;
    rdbConsultaNewDATFIN: TcxGridDBColumn;
    rdbConsultaNewVUNI: TcxGridDBColumn;
    rdbConsultaNewDES: TcxGridDBColumn;
    rdbConsultaNewDATR: TcxGridDBColumn;
    procedure btnOKClick(Sender: TObject);
    procedure rdbConsultaNewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure rdbConsultaNewDblClick(Sender: TObject);
  private
    FMontante: Integer;
    FCliente: Integer;
    procedure SetMontante(const Value: Integer);
    procedure SetCliente(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Montante:Integer read FMontante write SetMontante;
    property Cliente:Integer read FCliente write SetCliente;
  end;

implementation

uses udmFAT_NF_SERVICO, uDMBase;

{$R *.dfm}

{ TfdlgConsultaMontante }

procedure TfdlgConsultaMontante.SetCliente(const Value: Integer);
var
  x:String;
begin
  FCliente := Value;

  x:= '  SELECT A.COD, A.MON,A.DATINI, A.DATFIN, A.VUNI, A.TIP, A.DES, A.DATR FROM FATMON A WHERE A.CEMP = '
  +QuotedStr(dmbase.CodigoEmpresa)+' AND A.CCLI = ' + IntToStr(Value);

  sqlMontantes.SQL.Clear;
  sqlMontantes.SQL.Add(x);
  cdsMontantes.Close;
  cdsMontantes.Open;
end;

procedure TfdlgConsultaMontante.SetMontante(const Value: Integer);
begin
  FMontante := Value;
end;

procedure TfdlgConsultaMontante.btnOKClick(Sender: TObject);
begin
  inherited;
  Montante := cdsMontantesMON.AsInteger;
end;

procedure TfdlgConsultaMontante.rdbConsultaNewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Montante := cdsMontantesMON.AsInteger;
  ModalResult := mrOk;
  Close;
end;

procedure TfdlgConsultaMontante.rdbConsultaNewDblClick(Sender: TObject);
begin
  inherited;
  Montante := cdsMontantesMON.AsInteger;
  ModalResult := mrOk;
  Close;
end;

end.
