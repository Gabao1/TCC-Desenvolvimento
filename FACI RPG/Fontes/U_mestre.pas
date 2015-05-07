unit U_mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons;

type
  TF_Mestre = class(TForm)
    sbtnJogoSalvo: TSpeedButton;
    sbtnNovoJogo: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnNovoJogoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Mestre: TF_Mestre;

implementation

{$R *.dfm}

uses U_menuMestre;

procedure TF_Mestre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_Mestre := nil;
end;

procedure TF_Mestre.sbtnNovoJogoClick(Sender: TObject);
begin
  if F_menumestre = nil then
  begin
    F_menumestre := TF_menumestre.Create(self);
    F_menumestre.ShowModal;
    F_Mestre.Hide;
    F_Mestre.close;
  end;
end;

end.
