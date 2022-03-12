program CEPLife;

uses
  Vcl.Forms,
  View.principal in 'SRC\View\View.principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
