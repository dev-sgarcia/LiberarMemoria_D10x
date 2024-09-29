program LiberarMemoria;

uses
  Vcl.Forms,
  UfrmLiberarMemoria in 'UfrmLiberarMemoria.pas' {frmLiberarMemoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLiberarMemoria, frmLiberarMemoria);
  Application.Run;
end.
