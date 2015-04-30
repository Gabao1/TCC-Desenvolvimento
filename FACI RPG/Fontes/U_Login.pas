unit U_Login;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.dialogs;

type
  TF_login = class(TForm)
    Label1: TLabel;
    txtLogin: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    txtSenha: TEdit;
    Label2: TLabel;
    Image1: TImage;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    tipoJogador: string;
  end;

var
  F_login: TF_login;

implementation

{$R *.dfm}

uses U_funcoes, U_inicial, U_Dmodule;

procedure TF_login.CancelBtnClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TF_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_login := nil;
end;

procedure TF_login.OKBtnClick(Sender: TObject);
var
  login, senha: string;
begin
  login := txtLogin.Text;
  senha := txtSenha.Text;
  if not validarLogin(login, senha) then
    begin
      showMessage('Usuario ou Senha incorreto/a');
      txtLogin.Clear;
      txtSenha.Clear;
      txtLogin.SetFocus;
    end
  else
    // crio o form de acesso
    if (F_inicial = nil) then
      begin
        F_inicial := TF_inicial.create(self);
        F_login.Hide;
        F_inicial.show;
        showMessage('Bem Vindo ' + tipoJogador + (' ') + login);
      end;
end;

end.
