library Fat_Nfs_Eletronica;

 { DLL padrão do XpSag }

uses
  //FastMM4,
  MidasLib,
  SysUtils,
  Classes,
  Forms,
  Dialogs,
  uFormBase in '..\..\base\uFormBase.pas' {FormBase},
  uDMBase in '..\..\base\uDMBase.pas' {DMBase: TDataModule},
  uClassFuncaoGlobal in '..\..\..\DMSD\Girotto\uClassFuncaoGlobal.pas',
  uTipos in '..\..\..\DMSD\Girotto\uTipos.pas',
  LibGir in '..\..\..\DMSD\Girotto\LibGir.pas',
  uGirObjDLL in '..\..\GirLib\uGirObjDLL.pas',
  ufrFiltro in '..\..\Frames\ufrFiltro.pas' {frFiltro: TFrame},
  uObservacaoDLL in '..\..\Base\uObservacaoDLL.pas' {fObservacaoDLL},
  uGirDLL in '..\..\GirLib\uGirDLL.pas',
  uObjConsultaGir in '..\..\GirLib\uObjConsultaGir.pas',
  uDlgAguarde in '..\..\Dialogs\uDlgAguarde.pas' {fDlgAguarde},
  uCria_Formulario in '..\..\Base\uCria_Formulario.pas',
  uObjGerRelatorio in '..\..\Sistema\Gerenciador de Relatorio\uObjGerRelatorio.pas',
  uMenssagem in '..\..\..\DMSD\Girotto\uMenssagem.pas' {fMenssagem},
  uClassProgressBar in '..\..\dialogs\uClassProgressBar.pas',
  uFat_Nfs_Eletronica in 'uFat_Nfs_Eletronica.pas' {fFat_Nfs_Eletronica},
  uDlgBase in '..\..\base\uDlgBase.pas' {fDlgBase},
  SendMail in '..\..\..\DMSD\Girotto\SendMail.pas',
  uDlgEMAIL in '..\..\nf_saida_industria\NFS_Industria\uDlgEMAIL.pas' {fDlgEMAIL},
  uObjFatNFServico in '..\FAT_NF_Servico\uObjFatNFServico.pas',
  uClassListasNfs in 'uClassListasNfs.pas',
  ACBrNFSeDANFSeRLRetrato in 'ACBrNFSeDANFSeRLRetrato.pas' {frlDANFSeRLRetrato},
  pnfsConversao in '..\..\..\acbr\Fontes\ACBrDFe\ACBrNFSe\PCNNFSe\pnfsConversao.pas',
  pnfsNFSe in '..\..\..\acbr\trunk2\fontes\acbrdfe\acbrnfse\pcnnfse\pnfsNFSe.pas',
  ACBrNFSeDANFSeRL in '..\..\..\Acbr\Fontes\ACBrDFe\ACBrNFSe\DANFSE\Fortes\ACBrNFSeDANFSeRL.pas' {frlDANFSeRL};

{$R *.res}

function emitirWeb(id: Integer; CEMP, Usuario, CodigoUsuario, Operacao: PAnsiChar): Integer; export; stdcall;
var
  vobj: TGirObjDLL;
  Parametros: array of Variant;
  ObjFatNFServico: TObjFatNFServico;
  resultado: Integer;
  ArquivoErro: string;
begin
  //result := id;
  try
    if fFat_Nfs_Eletronica = nil then
      fFat_Nfs_Eletronica := TfFat_Nfs_Eletronica.Create(Application);   

    vobj := TGirObjDLL.Create;
    SetLength(Parametros, 30);
    Parametros[2] := string(CEMP);
    Parametros[4] := string(Usuario);
    Parametros[7] := '11111';
    Parametros[9] := '01';
    Parametros[23] := string(CodigoUsuario);
    Parametros[24] := 'Fat_Nfs_Eletronica';
    vobj.Parametros := Parametros;

    ObjFatNFServico := TObjFatNFServico.Create;
    ObjFatNFServico.Cod_FatNot := (id);
    ObjFatNFServico.OffLine := string(Operacao) = 'OFF';
    
    vobj.ObjAuxiliar := TObject(ObjFatNFServico);
    fFat_Nfs_Eletronica.ObjDll := vobj;
    fFat_Nfs_Eletronica.OnClose := nil;    

    if dmbase.OperacaoSilenciosa then
    begin
      fFat_Nfs_Eletronica.ExecutarFuncoesShow;

      if Operacao = 'CAN' then
        fFat_Nfs_Eletronica.CancelarNfseWeb
      else
      if Operacao = 'CON' then
        fFat_Nfs_Eletronica.ConsultarNfseWeb
      else
        fFat_Nfs_Eletronica.EmitirNfseWeb;
        
      resultado := 0;
    end
    else begin
      fFat_Nfs_Eletronica.ShowModal;
      resultado := 0;
    end;

    fFat_Nfs_Eletronica.GravarLog;  
  except
    on e: Exception do
    begin
      resultado := 1;
      
      if dmbase.OperacaoSilenciosa then
      begin
        ArquivoErro := ExtractFilePath(Application.ExeName) + 'erronfse' + IntToStr(id) + '.txt';

        if FileExists(ArquivoErro) then
          DeleteFile(ArquivoErro);

        addLog(e.message, ArquivoErro);
      end
      else MessageDlg(e.message, mtWarning, [mbOK],0);
    end;
  end;

  result := resultado;
end;

exports
  //AbrirDll, Existe_Form_em_uso_dll,
  emitirWeb;

begin
end.

