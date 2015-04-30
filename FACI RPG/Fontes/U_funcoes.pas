unit U_funcoes;

interface

// declara fun��o

function validarLogin(login, senha: string): boolean;

implementation

// implementa fun��o

uses U_Login, Vcl.dialogs, U_Dmodule;

function validarLogin(login, senha: string): boolean;
begin
  Result := True;
  D_modulo.Tb_userLogin.Open;
  F_login.tipoJogador := '';

  // verifico se login e senha s�o iguais aos cadastrados no banco
  if D_modulo.Tb_userLogin.Locate('user_login', login, []) then
    begin
      if (senha = D_modulo.Tb_userLogin.FindField('user_senha').AsString) then
        Begin
          Result := True;
        End
      else
        Begin
          Result := False;
        End;
    end
  else
    Begin
      Result := False;
    End;
  // verifico se o Usuario � mestre ou jogador
  F_login.tipoJogador := D_modulo.Tb_userLogin.FindField('user_tipoJogador').AsString;

end;

end.
