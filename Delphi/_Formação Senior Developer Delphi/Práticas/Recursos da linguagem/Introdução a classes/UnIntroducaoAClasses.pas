unit UnIntroducaoAClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

Uses
  View.Pessoa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
  vPessoa: TPessoa;
begin
  vPessoa:= TPessoa.create;
  try
    //classes com interface fluente ao invés de properties;
    vPessoa
      .Nome('Fabiane')
      .Sobrenome('Ben');

    //classes com properties;
    vPessoa.UltimoNome:= 'da Silva';

    ShowMessage(vPessoa.Nome + ' ' + vPessoa.Sobrenome + ' ' + vPessoa.UltimoNome);

  finally
    vPessoa.free;
  end;

end;

end.
