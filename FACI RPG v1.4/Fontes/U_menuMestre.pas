unit U_menuMestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  U_npc, U_campanha;

type
  TF_menuMestre = class(TForm)
    sbtnFichaPerson: TSpeedButton;
    sbtnTestes: TSpeedButton;
    sbtnMapas: TSpeedButton;
    sbtnAventuras: TSpeedButton;
    sbtnNPCS: TSpeedButton;
    sbtnLojas: TSpeedButton;
    sbtnCombate: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnNPCSClick(Sender: TObject);
    procedure sbtnAventurasClick(Sender: TObject);
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

end.
