unit U_Dmodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, Datasnap.Provider, Datasnap.DBClient;

type
  TD_modulo = class(TDataModule)
    conexao: TFDConnection;
    waitCursor: TFDGUIxWaitCursor;
    mySql_link: TFDPhysMySQLDriverLink;
    SQL_userLogin: TFDQuery;
    TB_userLogin: TFDTable;
    SQL_userLoginuser_ID: TFDAutoIncField;
    SQL_userLoginuser_login: TStringField;
    SQL_userLoginuser_senha: TStringField;
    SQL_userLoginuser_tipoJogador: TStringField;
    TB_userLoginuser_ID: TFDAutoIncField;
    TB_userLoginuser_login: TStringField;
    TB_userLoginuser_senha: TStringField;
    TB_userLoginuser_tipoJogador: TStringField;
    TB_personagem: TFDTable;
    SQL_personagem: TFDQuery;
    DS_personagem: TDataSource;
    TB_personagemperson_ID: TFDAutoIncField;
    TB_personagemperson_nome: TStringField;
    TB_personagemperson_forca: TLongWordField;
    TB_personagemperson_habilidade: TLongWordField;
    TB_personagemperson_resistencia: TLongWordField;
    TB_personagemperson_armadura: TLongWordField;
    TB_personagemperson_poderFogo: TLongWordField;
    TB_personagemperson_pontosVida: TLongWordField;
    TB_personagemperson_pontosMagia: TLongWordField;
    TB_personagemperson_XP: TLongWordField;
    TB_personagemperson_pontosJogador: TLongWordField;
    SQL_personagemperson_nome: TStringField;
    SQL_personagemperson_forca: TLongWordField;
    SQL_personagemperson_habilidade: TLongWordField;
    SQL_personagemperson_resistencia: TLongWordField;
    SQL_personagemperson_armadura: TLongWordField;
    SQL_personagemperson_poderFogo: TLongWordField;
    SQL_personagemperson_pontosVida: TLongWordField;
    SQL_personagemperson_pontosMagia: TLongWordField;
    SQL_personagemperson_XP: TLongWordField;
    SQL_personagemperson_pontosJogador: TLongWordField;
    TB_npc: TFDTable;
    SQL_npc: TFDQuery;
    DS_npc: TDataSource;
    TB_npcnpc_ID: TFDAutoIncField;
    TB_npcnpc_nome: TStringField;
    TB_npcnpc_forca: TLongWordField;
    TB_npcnpc_habilidade: TLongWordField;
    TB_npcnpc_resistencia: TLongWordField;
    TB_npcnpc_armadura: TLongWordField;
    TB_npcnpc_poderFogo: TLongWordField;
    TB_npcnpc_pontosVida: TLongWordField;
    TB_npcnpc_pontosMagia: TLongWordField;
    SQL_npcnpc_nome: TStringField;
    SQL_npcnpc_forca: TLongWordField;
    SQL_npcnpc_habilidade: TLongWordField;
    SQL_npcnpc_resistencia: TLongWordField;
    SQL_npcnpc_armadura: TLongWordField;
    SQL_npcnpc_poderFogo: TLongWordField;
    SQL_npcnpc_pontosVida: TLongWordField;
    SQL_npcnpc_pontosMagia: TLongWordField;
    TB_campanha: TFDTable;
    SQL_campanha: TFDQuery;
    DS_campanha: TDataSource;
    TB_campanhacamp_ID: TFDAutoIncField;
    TB_campanhacamp_nome: TStringField;
    TB_campanhacamp_historia: TMemoField;
    TB_campanhacamp_tipoJogo: TStringField;
    SQL_campanhacamp_nome: TStringField;
    SQL_campanhacamp_historia: TMemoField;
    SQL_campanhacamp_tipoJogo: TStringField;
    TB_personagemperson_campId: TLongWordField;
    TB_personagemperson_fotoId: TLongWordField;
    SQL_personagemperson_ID: TFDAutoIncField;
    SQL_personagemperson_campId: TLongWordField;
    SQL_personagemperson_fotoId: TLongWordField;
    tb_foto: TFDTable;
    sql_foto: TFDQuery;
    StringField1: TStringField;
    LongWordField1: TLongWordField;
    LongWordField2: TLongWordField;
    LongWordField3: TLongWordField;
    LongWordField4: TLongWordField;
    LongWordField5: TLongWordField;
    LongWordField6: TLongWordField;
    LongWordField7: TLongWordField;
    LongWordField8: TLongWordField;
    LongWordField9: TLongWordField;
    FDAutoIncField1: TFDAutoIncField;
    LongWordField10: TLongWordField;
    LongWordField11: TLongWordField;
    ds_foto: TDataSource;
    SQL_personagemperson_foto: TBlobField;
    TB_personagemperson_foto: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  D_modulo: TD_modulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_fichaPersonagem;

{$R *.dfm}

end.
