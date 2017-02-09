unit uObjFatNFServico;

interface

type
   TObjFatNFServico = Class
   private
    fCod_FatNot: Integer;
    fOffLine: Boolean;
   published
      property Cod_FatNot:Integer read fCod_FatNot write fCod_FatNot;
      property OffLine:Boolean read fOffLine write fOffLine;
   end;

implementation

end.
