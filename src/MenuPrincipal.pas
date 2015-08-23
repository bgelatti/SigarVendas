unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Menus, dxBar, cxClasses, System.Actions, Vcl.ActnList;

type
  TFrmMenuPrincipal = class(TForm)
    bmMenu: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    mmPrincipal: TdxBar;
    ActionList1: TActionList;
    ActPais: TAction;
    btnCadastro: TdxBarSubItem;
    btnCadastroPais: TdxBarButton;
    actSair: TAction;
    btnSair: TdxBarButton;
    btnAuxiliares: TdxBarSubItem;
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPaisExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses
  uDmDao, CadastroPais;

{$R *.dfm}

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
