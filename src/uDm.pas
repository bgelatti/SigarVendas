unit uDm;

interface

uses
  System.SysUtils, System.Classes, Vcl.ImgList, Vcl.Controls, cxGraphics,
  DaoUni, TransactionUni, ConnectionUni, uDmDao, Winapi.Windows, Vcl.Forms;

type
  TDm = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Transaction: TTransactionUni;
    Connection: TConnectionUni;
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  Connection := TConnectionUni.Create;

  try
    with Connection do
    begin
      LocalBD := 'system';
      Prt := 5432;
      Serv := 'localhost';
      Provider := 'PostgreSQL';
      User := 'sigar';
      Pass := 'gelsigar';
      Connect;
    end;

    DmDao.SetDao(Connection);
  except
    on E: Exception do
    begin
      Application.MessageBox(PWideChar('Verifique a conexão com o banco de dados!' +
                             #13 + e.message), 'Erro', MB_APPLMODAL + MB_OK + MB_ICONERROR);
    end;
  end;
end;

end.
