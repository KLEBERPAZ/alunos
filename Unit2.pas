unit Unit2;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TForm2 = class(TWebForm)
    lblBemVindo: TWebLabel;
    lblUsuario: TWebLabel;
    btnSair: TWebButton;
    procedure WebFormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
  Unit1;

procedure TForm2.WebFormCreate(Sender: TObject);
var
  LUser: string;
begin
  // Recupera o usuário da sessão
  LUser := window.sessionStorage.getItem('usuario');

  // Se o retorno for nulo ou vazio, define como visitante
  if (LUser = '') or (LUser = 'null') then
    LUser := 'visitante';

  lblUsuario.Caption := 'Bem-vindo(a), ' + LUser + '!';
end;

procedure TForm2.btnSairClick(Sender: TObject);
begin
  // Limpa a sessão e volta para a tela de login (TForm1)
  window.sessionStorage.removeItem('usuario');
  window.location.hash := '#Form1';
end;

initialization
  RegisterClass(TForm2);

end.
