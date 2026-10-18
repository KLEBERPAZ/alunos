unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TForm1 = class(TWebForm)
    lblTitulo: TWebLabel;
    lblUser: TWebLabel;
    lblPass: TWebLabel;
    edtUser: TWebEdit;
    edtPass: TWebEdit;
    lblMsg: TWebLabel;
    btnLogin: TWebButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Unit2;

procedure TForm1.btnLoginClick(Sender: TObject);
var
  LUser, LPass: string;
begin



  // Teste forçado
  //window.location.href := 'index.html#Form2';


  LUser := Trim(edtUser.Text);
  LPass := edtPass.Text;

  // Verificação simples (em produção, use TWebHttpRequest para chamar sua API)
  if (LUser = '123') and (LPass = '123') then
  begin
    // Salva o usuário na sessão do navegador
    window.sessionStorage.setItem('usuario', LUser);

    // Redireciona para a página principal via rota (usando o nome da classe TForm2)
    window.location.hash := '#Form2';
  end
  else
  begin
    lblMsg.Caption := 'Usuário ou senha inválidos.';
    lblMsg.Visible := True;
  end;

  end;

initialization
  RegisterClass(TForm1);

end.
