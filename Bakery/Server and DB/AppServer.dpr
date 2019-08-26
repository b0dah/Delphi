program AppServer;

uses
  Vcl.Forms,
  AppServerUnit in 'AppServerUnit.pas' {Form1},
  AppServer_TLB in 'AppServer_TLB.pas',
  ServerComponentsUnit in 'ServerComponentsUnit.pas' {DataServer: TRemoteDataModule} {DataServer: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
