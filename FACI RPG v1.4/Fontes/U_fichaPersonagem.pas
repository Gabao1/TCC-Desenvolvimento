unit U_fichaPersonagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, ShellAPI,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.jpeg, Vcl.ExtDlgs;

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
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DS_cadastroPersonagem: TDataSource;
    btm_carregarFotoPersonagem: TSpeedButton;
    person_abrirFoto: TOpenPictureDialog;
    btn_salvarFotoPersonagem: TSpeedButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btm_carregarFotoPersonagemClick(Sender: TObject);
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
 // person_abrirFoto.Execute();
 // dbimage_personagem.Picture := person_abrirFoto.FileName;

end;

procedure TF_Personagem.FormCreate(Sender: TObject);
begin
  // ativa a table e sql do personagem
  D_modulo.sql_personagem.open;
  D_modulo.tb_personagem.open;

end;

end.
