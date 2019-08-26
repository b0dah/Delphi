unit ServerComponentsUnit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, AppServer_TLB, StdVcl, Datasnap.Provider, IBX.IBQuery,
  IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet, IBX.IBTable, IBX.IBStoredProc;

type
  TDataServer = class(TRemoteDataModule, IDataServer)
    IBDatabase1: TIBDatabase;
    ibtClient: TIBTable;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    ibtProduct: TIBTable;
    ibtFutura: TIBTable;
    ibtFuturaInfo: TIBTable;
    ibtTMP: TIBTable;
    dspClient: TDataSetProvider;
    dspProduct: TDataSetProvider;
    dspFutura: TDataSetProvider;
    dspFuturaInfo: TDataSetProvider;
    dspTMP: TDataSetProvider;
    dspQuery: TDataSetProvider;
    ibspUpdateClient: TIBStoredProc;
    ibspDeleteClient: TIBStoredProc;
    ibspUpdateProduct: TIBStoredProc;
    ibspDeleteProduct: TIBStoredProc;
    ibspUpdateFutura: TIBStoredProc;
    ibspDeleteFutura: TIBStoredProc;
    ibspUpdateFuturaInfo: TIBStoredProc;
    ibspDeleteFuturaInfo: TIBStoredProc;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure smUpdateClient(ID: Integer; const Name, Adress: WideString); safecall;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TDataServer.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

{*}procedure TDataServer.smUpdateClient(ID: Integer; const Name, Adress: WideString);

begin
    if ibspUpdateClient.Transaction.InTransaction then
      ibspUpdateClient.Transaction.Commit;

    ibspUpdateClient.Params[0].value := ID;

    ibspUpdateClient.Params[1].value := Name;

    ibspUpdateClient.Params[2].value := Adress;

    ibspUpdateClient.ExecProc;

    if ibspUpdateClient.Transaction.InTransaction then
       ibspUpdateClient.Transaction.Commit;

end;

initialization
  TComponentFactory.Create(ComServer, TDataServer,
    Class_DataServer, ciMultiInstance, tmSingle);
end.
