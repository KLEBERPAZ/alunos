program Project1;

uses
  Vcl.Forms,
  WEBLib.Forms,
  Unit1 in 'Unit1.pas' {Form1: TWebForm} {*.html},
  Unit2 in 'Unit2.pas' {Form2: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;

  // Abre a tela de login se não houver rota na URL
  if not Application.Route then
  begin
    Application.CreateForm(TForm1, Form1);
  end;

  Application.Run;
end.
