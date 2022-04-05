unit View.Pessoa;

interface

type
  TPessoa = class
  private
    FNome: string;
    FSobrenome: string;
    FUltimoNome: string;
    procedure SetUltimoNome(const Value: string);
    function GetUltimoNome: string;
  public
    function Nome(aValue: string): TPessoa; overload;
    function Nome: String; overload;
    function Sobrenome(aValue: string): TPessoa; overload;
    function Sobrenome: String; overload;

    property UltimoNome: string read GetUltimoNome write SetUltimoNome;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.GetUltimoNome: string;
begin
  Result := FUltimoNome;
end;

function TPessoa.Nome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetUltimoNome(const Value: string);
begin
  FUltimoNome := Value;
end;

function TPessoa.Sobrenome: String;
begin
  Result := FSobrenome;
end;

function TPessoa.Sobrenome(aValue: string): TPessoa;
begin
  Result := Self;
  if trim(aValue) = emptystr then
    raise Exception.Create('Sobrenome n�o pode ser vazio');
  FSobrenome := aValue;
end;

function TPessoa.Nome(aValue: string): TPessoa;
begin
  Result := Self;
  if trim(aValue) = emptystr then
    raise Exception.Create('Nome n�o pode ser vazio');
  FNome := aValue;
end;

end.
