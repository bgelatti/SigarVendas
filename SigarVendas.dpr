program SigarVendas;

uses
  Vcl.Forms,
  MenuPrincipal in 'src\MenuPrincipal.pas' {FrmMenuPrincipal},
  TelaPadrao in '..\SigarComum\Padrao\TelaPadrao.pas' {FrmTelaPadrao},
  CadastroPadrao in '..\SigarComum\Padrao\CadastroPadrao.pas' {FrmCadastroPadrao},
  uDm in 'src\uDm.pas' {Dm: TDataModule},
  uDmDao in '..\SigarComum\Padrao\uDmDao.pas' {DmDao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TDmDao, DmDao);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
