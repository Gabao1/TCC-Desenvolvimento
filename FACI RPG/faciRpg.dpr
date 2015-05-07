program faciRpg;

uses
  Vcl.Forms,
  U_inicial in 'Fontes\U_inicial.pas' {F_Inicial},
  U_Dmodule in 'Fontes\U_Dmodule.pas' {D_modulo: TDataModule},
  U_splashScreen in 'Fontes\U_splashScreen.pas' {F_splashScreen},
  U_menuFastPlay in 'Fontes\U_menuFastPlay.pas' {F_menuFastPlay},
  U_fichaPersonagem in 'Fontes\U_fichaPersonagem.pas' {F_Personagem},
  U_mestre in 'Fontes\U_mestre.pas' {F_Mestre},
  U_menuMestre in 'Fontes\U_menuMestre.pas' {F_menuMestre},
  Vcl.Themes,
  Vcl.Styles,
  U_Login in 'Fontes\U_Login.pas' {F_login},
  U_funcoes in 'Fontes\U_funcoes.pas',
  U_npc in 'Fontes\U_npc.pas',
  U_campanha in 'Fontes\U_campanha.pas' {F_campanha},
  U_limite in 'Fontes\U_limite.pas' {F_limite};

{$R *.res}

var
  Inc: integer;

begin
  Application.Initialize;

  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.Title := 'F.A.C.I RPG';

  // Criando form de splash.
  F_splashScreen := TF_splashScreen.Create(Application);
  F_splashScreen.Show;
  F_splashScreen.Update;

  // Incrementando Posição do ProgessBar
  for Inc := 0 to 50000 do
    begin
      F_splashScreen.pgb_splashScreen.Position := Inc;
    end;

  F_splashScreen.pgb_splashScreen.Visible := false;

  // Criar Form principal
  Application.CreateForm(TD_modulo, D_modulo);
  Application.CreateForm(TF_login, F_login);
  Application.CreateForm(TF_limite, F_limite);
  // Application.CreateForm(TF_splashScreen, F_splashScreen);
  F_splashScreen.Hide;
  F_splashScreen.pgb_splashScreen.Free;
  F_Login.Show;

  Application.Run;

end.
