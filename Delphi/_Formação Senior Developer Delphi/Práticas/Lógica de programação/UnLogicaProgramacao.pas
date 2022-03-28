unit UnLogicaProgramacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button2: TButton;
    GroupBox3: TGroupBox;
    btnExecutarVetEArray: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnExecutarVetEArrayClick(Sender: TObject);
  private
    { Private declarations }
    function RetornaValor(v1: string; v2: integer): string;
    procedure ExecutaValor(v1, v2: integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarVetEArrayClick(Sender: TObject);
Var
  v1: array [1 .. 3] of integer;
  v2: array of integer;
  v3: integer;

  a1: array [1 .. 3, 0 .. 1] of string;
Const
  CDiaSemana: array [1 .. 7] of string = ('domingo', 'segunda', 'terça', 'quarta', 'quinta', 'sexta', 'sábado');

  procedure AdicionarSeparadorExemplos(AExemplo: integer);
  begin
    Memo1.Lines.Add('-------------------------------------');
    Memo1.Lines.Add(Format('EXEMPLO %d:', [AExemplo]));
    Memo1.Lines.Add(EmptyStr);
  end;

  procedure Exemplo1;
  begin
    // -------------------------------------------
    // Exemplo 1: array fixo
    // -------------------------------------------
    v1[1] := 10;
    v1[2] := 11;
    v1[3] := 20;
    v3 := v1[1] + v1[2] + v1[3];
    AdicionarSeparadorExemplos(1);
    Memo1.Lines.Add(v3.ToString);
  end;

  procedure Exemplo2;
  Var
    I: integer;
  begin
    // -------------------------------------------
    // Exemplo 2: array dinâmico
    // preciso setar o tamanho que o array vai suportar por ser dinâmico
    // -------------------------------------------
    SetLength(v2, 4);
    v2[0] := 10;
    v2[1] := 20;
    v2[2] := 30;
    v2[3] := 40;

    // for I := 0 to length(v2) -1 do
    AdicionarSeparadorExemplos(2);
    for I := 0 to length(v2) do
    begin
      if I = 4 then
      begin
        SetLength(v2, length(v2) + 1);
        v2[I] := 50
      end;
      Memo1.Lines.Add(v2[I].ToString);
    end;
  end;

  procedure Exemplo3;
  Var
    I: integer;
  begin
    // -------------------------------------------
    // Exemplo 3: array dinâmico dias da semana
    // -------------------------------------------
    AdicionarSeparadorExemplos(3);
    for I := 1 to 7 do
      Memo1.Lines.Add(CDiaSemana[I]);
  end;

  procedure Exemplo4;
  Var
    I: integer;
  begin
    a1[1,0]:= 'João';
    a1[1,1]:= 'Silva';

    a1[2,0]:= 'Fabiane';
    a1[2,1]:= 'Ben';

    a1[3,0]:= 'Juarez';
    a1[3,1]:= 'Junges';

    // -------------------------------------------
    // Exemplo 5: array fixo com exibição de duas colunas
    // -------------------------------------------
    AdicionarSeparadorExemplos(4);
    for I := 1 to 3 do
      Memo1.Lines.Add('Nome: ' + a1[I,0] + ' ' + a1[I,1]);
  end;

  procedure Exemplo5;
  Var
    nome: string;
    I: Integer;
  begin
    nome:= 'Fabiane';
    AdicionarSeparadorExemplos(5);
    for I := 1 to Length(nome) do
      Memo1.Lines.Add(nome[I]);
  end;

begin
  Memo1.Clear;

  Exemplo1;
  Exemplo2;
  Exemplo3;
  Exemplo4;
  Exemplo5;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  I: integer;
begin
  // exemplo 1
  // for I := 0 to 10 do
  // ShowMessage((IntToStr(I)));

  // exemplo 2
  // for I := 10 downto 5 do
  // ShowMessage((IntToStr(I)));

  // exemplo 3
  { I:= 0;
    while I < 10 do
    begin
    if I mod 2 = 0 then
    begin
    if I = 6 then
    begin
    ShowMessage('Valor é 6');
    I:= I + 1;
    Continue;
    end
    else if I = 8 then
    begin
    ShowMessage('Valor é 8');
    Break;
    end;
    ShowMessage(IntToStr(I));
    end;
    I:= I + 1;
    end; }

  // exemplo 4
  I := 7;
  repeat
    ShowMessage(IntToStr(I));
    Inc(I);
  until (I >= 10);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ExecutaValor(1, 2);
  ShowMessage('Retorno do método: ' + RetornaValor('2', 3));
end;

procedure TForm1.ExecutaValor(v1, v2: integer);
var
  v3: integer;
begin
  v3 := (v1 + v2);
  ShowMessage(IntToStr(v3));
end;

function TForm1.RetornaValor(v1: string; v2: integer): string;
Var
  v3: string;
begin
  // exemplo 1
  v3 := v1 + IntToStr(v2);

  // exemplo 2
  // v3:= IntToStr((StrToIntDef(v1,0) + v2));

  Result := v3;
end;

end.
