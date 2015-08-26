unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Menus, dxBar, cxClasses, System.Actions, Vcl.ActnList, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter;

type
  TFrmMenuPrincipal = class(TForm)
    bmMenu: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    mmPrincipal: TdxBar;
    ListaAcoesMenuPrincipal: TActionList;
    ActPais: TAction;
    btnCadastro: TdxBarSubItem;
    btnCadastroPais: TdxBarButton;
    actSair: TAction;
    btnSair: TdxBarButton;
    btnAuxiliares: TdxBarSubItem;
    btnCadastroEstado: TdxBarButton;
    ActEstado: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    ActCidade: TAction;
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPaisExecute(Sender: TObject);
    procedure ActEstadoExecute(Sender: TObject);
    procedure ActCidadeExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses
  uDmDao, CadastroPais, CadastroEstado, CadastroCidade;

{$R *.dfm}

procedure TFrmMenuPrincipal.ActCidadeExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroCidade, FrmCadastroCidade);
  FrmCadastroCidade.Show;
end;

procedure TFrmMenuPrincipal.ActEstadoExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroEstado, FrmCadastroEstado);
  FrmCadastroEstado.Show;
end;

procedure TFrmMenuPrincipal.ActPaisExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroPais, FrmCadastroPais);
  FrmCadastroPais.Show;
end;

procedure TFrmMenuPrincipal.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
