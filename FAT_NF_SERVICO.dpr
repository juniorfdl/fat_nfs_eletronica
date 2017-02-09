library FAT_NF_SERVICO;

{ DLL padrão do XpSag }

uses
  FastMM4,
  SysUtils,
  Classes,
  Forms,
  Dialogs,
  uFormBase in '..\..\base\uFormBase.pas' {FormBase},
  uDMBase in '..\..\base\uDMBase.pas' {DMBase: TDataModule},
  uFormCadBase in '..\..\base\uFormCadBase.pas' {FormCadBase},
  uClassFuncaoGlobal in '..\..\..\DMSD\Girotto\uClassFuncaoGlobal.pas',
  uTipos in '..\..\..\DMSD\Girotto\uTipos.pas',
  LibGir in '..\..\..\DMSD\Girotto\LibGir.pas',
  uGirObjDLL in '..\..\GirLib\uGirObjDLL.pas',
  ufrFiltro in '..\..\Frames\ufrFiltro.pas' {frFiltro: TFrame},
  uObservacaoDLL in '..\..\Base\uObservacaoDLL.pas' {fObservacaoDLL},
  uGirDLL in '..\..\GirLib\uGirDLL.pas',
  udmCadBase in '..\..\Base\udmCadBase.pas' {dmCadBase: TDataModule},
  uObjConsultaGir in '..\..\GirLib\uObjConsultaGir.pas',
  uDlgAguarde in '..\..\Dialogs\uDlgAguarde.pas' {fDlgAguarde},
  uCria_Formulario in '..\..\Base\uCria_Formulario.pas',
  udmFAT_NF_SERVICO in 'udmFAT_NF_SERVICO.pas' {dmFAT_NF_SERVICO: TDataModule},
  uFAT_NF_SERVICO in 'uFAT_NF_SERVICO.pas' {fFAT_NF_SERVICO},
  uObjGerRelatorio in '..\..\Sistema\Gerenciador de Relatorio\uObjGerRelatorio.pas',
  uMenssagem in '..\..\..\DMSD\Girotto\uMenssagem.pas' {fMenssagem},
  uClassProgressBar in '..\..\dialogs\uClassProgressBar.pas',
  uDlgBase in '..\..\base\uDlgBase.pas' {fDlgBase},
  udlgConsultaMontante in 'udlgConsultaMontante.pas' {fdlgConsultaMontante},
  uObjAbreConsultaSelecionada in '..\..\Base\uObjAbreConsultaSelecionada.pas',
  uObjFatNFServico in 'uObjFatNFServico.pas',
  uClassAbrirPrograma in '..\..\base\uClassAbrirPrograma.pas',
  udlgFaturamentoMes in 'udlgFaturamentoMes.pas' {fdlgFaturamentoMes};

{$R *.res}

procedure AbrirPrograma(CODIGOUSUARIOMENU, Empresa:String);
var
  ClassAbrirPrograma: TClassAbrirPrograma;
begin
  ClassAbrirPrograma:= TClassAbrirPrograma.Create;
  try
    ClassAbrirPrograma.AbrirPrograma(CODIGOUSUARIOMENU, Empresa);
  finally
    FreeAndNil(ClassAbrirPrograma);
  end;
end;

exports
  AbrirPrograma, Existe_Form_em_uso_dll, AbrirDll;

END.
