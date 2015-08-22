unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Menus, dxBar, cxClasses, System.Actions, Vcl.ActnList;

type
  TFrmMenuPrincipal = class(TForm)
    dxBarManager: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    mmPrincipal: TdxBar;
    ActionList1: TActionList;
    ActPessoa: TAction;
    btnCadastro: TdxBarSubItem;
    btnCadastroPessoa: TdxBarButton;
    actSair: TAction;
    btnSair: TdxBarButton;
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPessoaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses
  uDmDao, CadastroPadrao;

{$R *.dfm}

procedure TFrmMenuPrincipal.ActPessoaExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroPadrao, FrmCadastroPadrao);
  FrmCadastroPadrao.Show;
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
