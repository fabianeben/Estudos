program PrjIntroducaoAClasses;

uses
  Vcl.Forms,
  UnIntroducaoAClasses in 'UnIntroducaoAClasses.pas' {Form1} ,
  View.Pessoa in 'View.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
