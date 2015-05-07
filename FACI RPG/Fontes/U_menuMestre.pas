unit U_menuMestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  U_npc, U_campanha, U_dmodule, U_limite,
  shellapi;

type
  TF_menuMestre = class(TForm)
    sbtnFichaPerson: TSpeedButton;
    sbtnTestes: TSpeedButton;
    sbtnMapas: TSpeedButton;
    sbtnAventuras: TSpeedButton;
    sbtnNPCS: TSpeedButton;
    sbtnLojas: TSpeedButton;
    sbtnCombate: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnNPCSClick(Sender: TObject);
    procedure sbtnAventurasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbtnMapasClick(Sender: TObject);
    procedure sbtnFichaPersonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_menuMestre: TF_menuMestre;

implementation

{$R *.dfm}

procedure TF_menuMestre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_menuMestre := nil;
end;

procedure TF_menuMestre.sbtnAventurasClick(Sender: TObject);
begin
  if F_campanha = nil then
  begin
    F_campanha := TF_campanha.Create(self);
    F_campanha.ShowModal;
    F_menuMestre.Hide;
    F_menuMestre.close;
  end;
end;

procedure TF_menuMestre.sbtnFichaPersonClick(Sender: TObject);
begin
  if F_limite = nil then
  begin
    F_limite := TF_limite.Create(self);
    F_limite.ShowModal;
    F_menuMestre.Hide;
    F_menuMestre.close;
  end;
end;

procedure TF_menuMestre.sbtnMapasClick(Sender: TObject);
begin
  // verifico se há uma pasta para salvar os mapas
  { if not DirectoryExists('C:\documents\maps') then
    begin
    // crio uma pasta para salvar os mapas
    ForceDirectories('C:\documents\maps');
    // abro o programa AutoRealm
  }
  WinExec('c:\Program Files\AutoREALM\AutoREALM.exe', SW_SHOW);
end;

procedure TF_menuMestre.sbtnNPCSClick(Sender: TObject);
begin
  if F_npc = nil then
  begin
    F_npc := TF_npc.Create(self);
    F_npc.ShowModal;
    F_menuMestre.Hide;
    F_menuMestre.close;
  end;
end;

procedure TF_menuMestre.SpeedButton1Click(Sender: TObject);
begin
  { var
    i: integer;
    NomeCampo: String;
    begin
    U_dmodule.D_modulo.TB_npc.First;
    // enquando não chegou ao fim processa
    While Not U_dmodule.D_modulo.TB_npc.Eof Do
    Begin
    // adiciona dados no fim da tabela
    U_dmodule.D_modulo.TB_npc.Append;
    For i := 0 To U_dmodule.D_modulo.TB_npc.FieldCount - 1 Do
    Begin
    // insere campos da tabela npc na campanha salva
    NomeCampo := U_dmodule.D_modulo.TB_npc.Fields[i].FieldName;
    U_dmodule.D_modulo.TB_npc.FieldbyName(NomeCampo).Value :=
    U_dmodule.D_modulo.TB_npc.FieldbyName(NomeCampo).Value;
    end;
    U_dmodule.D_modulo.TB_npc.Post;
    // leitura da próxima linha
    U_dmodule.D_modulo.TB_npc.Next;
    end; }
end;

end.
