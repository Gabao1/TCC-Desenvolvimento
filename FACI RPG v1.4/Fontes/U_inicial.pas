unit U_inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TF_Inicial = class(TForm)
    stb_pageInicial: TStatusBar;
    menu_inicial: TMainMenu;
    Inicio1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    pnl_menuInicial: TPanel;
    img_irFastPlay: TImage;
    ipodeJogo1: TMenuItem;
    N2: TMenuItem;
    Helpme1: TMenuItem;
    Ajuda1: TMenuItem;
    N3: TMenuItem;
    Sobre1: TMenuItem;
    N4: TMenuItem;
    FastPlay1: TMenuItem;
    Alpha1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure img_irFastPlayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Inicial: TF_Inicial;

implementation

{$R *.dfm}

uses U_Dmodule, U_menuFastPlay;

procedure TF_Inicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_Inicial := nil;
  application.Terminate;

end;

procedure TF_Inicial.FormCreate(Sender: TObject);
begin
  D_modulo.conexao.open();
end;

procedure TF_Inicial.img_irFastPlayClick(Sender: TObject);
begin
  if F_menuFastPlay = nil then
    begin
      F_menuFastPlay := TF_menuFastPlay.Create(self);
      F_menuFastPlay.Show;
    end
  else
    F_menuFastPlay.Show;
end;

procedure TF_Inicial.Sair1Click(Sender: TObject);
begin
  application.Terminate;
end;

end.
