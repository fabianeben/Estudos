unit UnInteracao;

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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  //exemplo 1
//  for I := 0 to 10 do
//    ShowMessage((IntToStr(I)));

  //exemplo 2
//  for I := 10 downto 5 do
//    ShowMessage((IntToStr(I)));

  //exemplo 3
{  I:= 0;
  while I < 10 do
  begin
    if I mod 2 = 0 then
    begin
      if I = 6 then
      begin
        ShowMessage('Valor ? 6');
        I:= I + 1;
        Continue;
      end
      else if I = 8 then
      begin
        ShowMessage('Valor ? 8');
        Break;
      end;
      ShowMessage(IntToStr(I));
    end;
    I:= I + 1;
  end;  }

  //exemplo 4
  I:= 7;
  repeat
    ShowMessage(IntToStr(I));
    Inc(I);
  until (I >= 10);

end;

end.
