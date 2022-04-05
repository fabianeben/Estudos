unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnl1: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RadioGroup1Click(Sender: TObject);
  procedure EnableControls(Parent: TWinControl; Enabled: Boolean);
  var
    i: Integer;
    Ctl: TControl;
  begin
    for i := 0 to Pred(Parent.ControlCount) do
    begin
      Ctl := Parent.Controls[i];
      Ctl.Enabled := Enabled;
      if Ctl is TWinControl then
        EnableControls(TWinControl(Ctl), Enabled);
    end;
  end;

begin
  //A função LockWindowUpdate desabilita ou habilita o desenho na janela
  //especificada. Apenas uma janela pode ser bloqueada por vez.
  LockWindowUpdate(Handle); //A função desabilita (handle) ou reabilita (0=zero) o desenho da janela especificada.
  try
    Panel1.Visible := RadioGroup1.ItemIndex = 0;
    Panel2.Visible := Panel1.Visible;
    Panel3.Visible := Panel1.Visible;

    Panel4.Visible := RadioGroup1.ItemIndex = 1;
    Panel5.Visible := Panel1.Visible;
    Panel6.Visible := Panel1.Visible;
    Panel7.Visible := Panel1.Visible;
    Panel8.Visible := Panel1.Visible;
    Panel9.Visible := Panel1.Visible;
    Panel10.Visible := Panel1.Visible;
    Panel11.Visible := Panel1.Visible;
    Panel12.Visible := Panel1.Visible;
  finally
    LockWindowUpdate(0);
  end;

end;

end.
