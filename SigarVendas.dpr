program SigarVendas;

{$R *.dres}

uses
  Vcl.Forms,
  MenuPrincipal in 'src\MenuPrincipal.pas' {FrmMenuPrincipal},
  TelaPadrao in '..\SigarComum\Padrao\TelaPadrao.pas' {FrmTelaPadrao},
  CadastroPadrao in '..\SigarComum\Padrao\CadastroPadrao.pas' {FrmCadastroPadrao},
  uDm in 'src\uDm.pas' {Dm: TDataModule},
  uDmDao in '..\SigarComum\Padrao\uDmDao.pas' {DmDao: TDataModule},
  PesquisaGenerica in '..\SigarComum\Padrao\PesquisaGenerica.pas' {FrmPesquisaGenerica},
  CadastroPais in '..\SigarComum\src\CadastroPais.pas' {FrmCadastroPais},
  Pais in '..\SigarComum\src\entidade\Pais.pas',
  Estado in '..\SigarComum\src\entidade\Estado.pas',
  CadastroEstado in '..\SigarComum\src\CadastroEstado.pas' {FrmCadastroEstado},
  Vcl.Themes,
  Vcl.Styles,
  Cidade in '..\SigarComum\src\entidade\Cidade.pas',
  CadastroCidade in '..\SigarComum\src\CadastroCidade.pas' {FrmCadastroCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sigar Vendas';
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TDmDao, DmDao);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
