unit ServerComponentsUnit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, AppServer_TLB, StdVcl, Datasnap.Provider, IBX.IBQuery,
  IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet, IBX.IBTable;

type
  TDataServer = class(TRemoteDataModule, IDataServer)
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBTable2: TIBTable;
    IBTable3: TIBTable;
    IBTable4: TIBTable;
    IBTable5: TIBTable;
    DataSetProvider1: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    DataSetProvider3: TDataSetProvider;
    DataSetProvider4: TDataSetProvider;
    DataSetProvider5: TDataSetProvider;
    DataSetProvider6: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
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

initialization
  TComponentFactory.Create(ComServer, TDataServer,
    Class_DataServer, ciMultiInstance, tmSingle);
end.
