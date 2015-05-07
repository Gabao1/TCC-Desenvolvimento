unit U_fichaPersonagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, ShellAPI,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.jpeg, Vcl.ExtDlgs,
  U_limite;

type
  TF_Personagem = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    ACM_personagem: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    spb_salvar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DS_cadastroPersonagem: TDataSource;
    btm_carregarFotoPersonagem: TSpeedButton;
    person_abrirFoto: TOpenPictureDialog;
    btn_salvarFotoPersonagem: TSpeedButton;
    Image1: TImage;
    spb_inicairCalculo: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    spb_calcular: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btm_carregarFotoPersonagemClick(Sender: TObject);
    procedure spb_inicairCalculoClick(Sender: TObject);
    procedure spb_calcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Personagem: TF_Personagem;

implementation

{$R *.dfm}

uses U_inicial, U_menuFastPlay, U_Dmodule, U_menuMestre, U_mestre;

procedure TF_Personagem.btm_carregarFotoPersonagemClick(Sender: TObject);
begin
   //person_abrirFoto.Execute();
   //dbimage_personagem.Picture := person_abrirFoto.FileName;

end;

procedure TF_Personagem.FormCreate(Sender: TObject);
var
total,limite,pontosVidaMagia:integer;
begin
  // ativa a table e sql do personagem
  D_modulo.sql_personagem.open;
  D_modulo.tb_personagem.open;
  pontosVidaMagia:= strtoint(Edit1.Text + Edit2.Text + Edit3.Text);
  DBEdit10.text:=(U_limite.F_limite.Edit1.Text);
  limite:=strtoint(DBEdit10.Text);
  total:=strtoint(DBEdit1.Text+DBEdit2.text+DBEdit3.text+DBEdit4.text+DBEdit5.text+DBEdit6.text);
if total>limite  then
begin
showmessage('Limite de Pontos Ultrapassado');
spb_salvar.Enabled:=false;
end
else
spb_salvar.Enabled:=true;

end;

procedure TF_Personagem.spb_calcularClick(Sender: TObject);
begin
  DBEdit7.Text := (Edit1.Text + Edit2.Text + Edit3.Text);
  DBEdit8.Text := (Edit1.Text + Edit2.Text + Edit3.Text);
  Edit1.Visible := false;
  Label11.Visible := false;
  Edit2.Visible := false;
  Label12.Visible := false;
  Edit3.Visible := false;
  Label13.Visible := false;
  spb_calcular.Visible := false;
  spb_inicairCalculo.Visible := false;
end;

procedure TF_Personagem.spb_inicairCalculoClick(Sender: TObject);

begin
  Edit1.Visible := true;
  Label11.Visible := true;
  Edit2.Visible := true;
  Label12.Visible := true;
  Edit3.Visible := true;
  Label13.Visible := true;
  spb_calcular.Visible := true;
  spb_inicairCalculo.Visible := false;
end;

end.
