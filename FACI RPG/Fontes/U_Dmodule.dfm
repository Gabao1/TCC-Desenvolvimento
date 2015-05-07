object D_modulo: TD_modulo
  OldCreateOrder = False
  Height = 326
  Width = 693
  object conexao: TFDConnection
    Params.Strings = (
      'Database=faci_rpg'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 16
  end
  object waitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 216
    Top = 16
  end
  object mySql_link: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Gabao\Documents\GitHub\TCC-Desenvolvimento\FACI RPG\lib' +
      'mySQL.dll'
    Left = 136
    Top = 16
  end
  object SQL_userLogin: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from usuario'
      '')
    Left = 32
    Top = 136
    object SQL_userLoginuser_ID: TFDAutoIncField
      FieldName = 'user_ID'
      Origin = 'user_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_userLoginuser_login: TStringField
      FieldName = 'user_login'
      Origin = 'user_login'
      Required = True
      Size = 10
    end
    object SQL_userLoginuser_senha: TStringField
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Required = True
      Size = 10
    end
    object SQL_userLoginuser_tipoJogador: TStringField
      FieldName = 'user_tipoJogador'
      Origin = 'user_tipoJogador'
      Required = True
      Size = 45
    end
  end
  object TB_userLogin: TFDTable
    IndexFieldNames = 'user_ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'faci_rpg.usuario'
    TableName = 'faci_rpg.usuario'
    Left = 120
    Top = 136
    object TB_userLoginuser_ID: TFDAutoIncField
      FieldName = 'user_ID'
      Origin = 'user_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_userLoginuser_login: TStringField
      FieldName = 'user_login'
      Origin = 'user_login'
      Required = True
      Size = 10
    end
    object TB_userLoginuser_senha: TStringField
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Required = True
      Size = 10
    end
    object TB_userLoginuser_tipoJogador: TStringField
      FieldName = 'user_tipoJogador'
      Origin = 'user_tipoJogador'
      Required = True
      Size = 45
    end
  end
  object TB_personagem: TFDTable
    IndexFieldNames = 'person_ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'faci_rpg.personagem'
    TableName = 'faci_rpg.personagem'
    Left = 344
    Top = 136
    object TB_personagemperson_ID: TFDAutoIncField
      FieldName = 'person_ID'
      Origin = 'person_ID'
      ReadOnly = True
    end
    object TB_personagemperson_nome: TStringField
      FieldName = 'person_nome'
      Origin = 'person_nome'
      Size = 50
    end
    object TB_personagemperson_forca: TLongWordField
      FieldName = 'person_forca'
      Origin = 'person_forca'
    end
    object TB_personagemperson_habilidade: TLongWordField
      FieldName = 'person_habilidade'
      Origin = 'person_habilidade'
    end
    object TB_personagemperson_resistencia: TLongWordField
      FieldName = 'person_resistencia'
      Origin = 'person_resistencia'
    end
    object TB_personagemperson_armadura: TLongWordField
      FieldName = 'person_armadura'
      Origin = 'person_armadura'
    end
    object TB_personagemperson_poderFogo: TLongWordField
      FieldName = 'person_poderFogo'
      Origin = 'person_poderFogo'
    end
    object TB_personagemperson_pontosVida: TLongWordField
      FieldName = 'person_pontosVida'
      Origin = 'person_pontosVida'
    end
    object TB_personagemperson_pontosMagia: TLongWordField
      FieldName = 'person_pontosMagia'
      Origin = 'person_pontosMagia'
    end
    object TB_personagemperson_XP: TLongWordField
      FieldName = 'person_XP'
      Origin = 'person_XP'
    end
    object TB_personagemperson_pontosJogador: TLongWordField
      FieldName = 'person_pontosJogador'
      Origin = 'person_pontosJogador'
    end
    object TB_personagemperson_campId: TLongWordField
      FieldName = 'person_campId'
      Origin = 'person_campId'
    end
    object TB_personagemperson_fotoId: TLongWordField
      FieldName = 'person_fotoId'
      Origin = 'person_fotoId'
    end
    object TB_personagemperson_foto: TBlobField
      FieldName = 'person_foto'
      Origin = 'person_foto'
      Required = True
    end
  end
  object SQL_personagem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from personagem')
    Left = 440
    Top = 136
    object SQL_personagemperson_nome: TStringField
      FieldName = 'person_nome'
      Origin = 'person_nome'
      Size = 50
    end
    object SQL_personagemperson_forca: TLongWordField
      FieldName = 'person_forca'
      Origin = 'person_forca'
    end
    object SQL_personagemperson_habilidade: TLongWordField
      FieldName = 'person_habilidade'
      Origin = 'person_habilidade'
    end
    object SQL_personagemperson_resistencia: TLongWordField
      FieldName = 'person_resistencia'
      Origin = 'person_resistencia'
    end
    object SQL_personagemperson_armadura: TLongWordField
      FieldName = 'person_armadura'
      Origin = 'person_armadura'
    end
    object SQL_personagemperson_poderFogo: TLongWordField
      FieldName = 'person_poderFogo'
      Origin = 'person_poderFogo'
    end
    object SQL_personagemperson_pontosVida: TLongWordField
      FieldName = 'person_pontosVida'
      Origin = 'person_pontosVida'
    end
    object SQL_personagemperson_pontosMagia: TLongWordField
      FieldName = 'person_pontosMagia'
      Origin = 'person_pontosMagia'
    end
    object SQL_personagemperson_XP: TLongWordField
      FieldName = 'person_XP'
      Origin = 'person_XP'
    end
    object SQL_personagemperson_pontosJogador: TLongWordField
      FieldName = 'person_pontosJogador'
      Origin = 'person_pontosJogador'
    end
    object SQL_personagemperson_ID: TFDAutoIncField
      FieldName = 'person_ID'
      Origin = 'person_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_personagemperson_campId: TLongWordField
      FieldName = 'person_campId'
      Origin = 'person_campId'
    end
    object SQL_personagemperson_fotoId: TLongWordField
      FieldName = 'person_fotoId'
      Origin = 'person_fotoId'
    end
    object SQL_personagemperson_foto: TBlobField
      FieldName = 'person_foto'
      Origin = 'person_foto'
      Required = True
    end
  end
  object DS_personagem: TDataSource
    Left = 536
    Top = 136
  end
  object TB_npc: TFDTable
    IndexFieldNames = 'npc_ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'faci_rpg.npc'
    TableName = 'faci_rpg.npc'
    Left = 344
    Top = 232
    object TB_npcnpc_ID: TFDAutoIncField
      FieldName = 'npc_ID'
      Origin = 'npc_ID'
      ReadOnly = True
    end
    object TB_npcnpc_nome: TStringField
      FieldName = 'npc_nome'
      Origin = 'npc_nome'
      Size = 50
    end
    object TB_npcnpc_forca: TLongWordField
      FieldName = 'npc_forca'
      Origin = 'npc_forca'
    end
    object TB_npcnpc_habilidade: TLongWordField
      FieldName = 'npc_habilidade'
      Origin = 'npc_habilidade'
    end
    object TB_npcnpc_resistencia: TLongWordField
      FieldName = 'npc_resistencia'
      Origin = 'npc_resistencia'
    end
    object TB_npcnpc_armadura: TLongWordField
      FieldName = 'npc_armadura'
      Origin = 'npc_armadura'
    end
    object TB_npcnpc_poderFogo: TLongWordField
      FieldName = 'npc_poderFogo'
      Origin = 'npc_poderFogo'
    end
    object TB_npcnpc_pontosVida: TLongWordField
      FieldName = 'npc_pontosVida'
      Origin = 'npc_pontosVida'
    end
    object TB_npcnpc_pontosMagia: TLongWordField
      FieldName = 'npc_pontosMagia'
      Origin = 'npc_pontosMagia'
    end
  end
  object SQL_npc: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from npc')
    Left = 440
    Top = 232
    object SQL_npcnpc_nome: TStringField
      FieldName = 'npc_nome'
      Origin = 'npc_nome'
      Size = 50
    end
    object SQL_npcnpc_forca: TLongWordField
      FieldName = 'npc_forca'
      Origin = 'npc_forca'
    end
    object SQL_npcnpc_habilidade: TLongWordField
      FieldName = 'npc_habilidade'
      Origin = 'npc_habilidade'
    end
    object SQL_npcnpc_resistencia: TLongWordField
      FieldName = 'npc_resistencia'
      Origin = 'npc_resistencia'
    end
    object SQL_npcnpc_armadura: TLongWordField
      FieldName = 'npc_armadura'
      Origin = 'npc_armadura'
    end
    object SQL_npcnpc_poderFogo: TLongWordField
      FieldName = 'npc_poderFogo'
      Origin = 'npc_poderFogo'
    end
    object SQL_npcnpc_pontosVida: TLongWordField
      FieldName = 'npc_pontosVida'
      Origin = 'npc_pontosVida'
    end
    object SQL_npcnpc_pontosMagia: TLongWordField
      FieldName = 'npc_pontosMagia'
      Origin = 'npc_pontosMagia'
    end
  end
  object DS_npc: TDataSource
    Left = 544
    Top = 232
  end
  object TB_campanha: TFDTable
    IndexFieldNames = 'camp_ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'faci_rpg.campanha'
    TableName = 'faci_rpg.campanha'
    Left = 32
    Top = 224
    object TB_campanhacamp_ID: TFDAutoIncField
      FieldName = 'camp_ID'
      Origin = 'camp_ID'
      ReadOnly = True
    end
    object TB_campanhacamp_nome: TStringField
      FieldName = 'camp_nome'
      Origin = 'camp_nome'
      Size = 60
    end
    object TB_campanhacamp_historia: TMemoField
      FieldName = 'camp_historia'
      Origin = 'camp_historia'
      BlobType = ftMemo
    end
    object TB_campanhacamp_tipoJogo: TStringField
      FieldName = 'camp_tipoJogo'
      Origin = 'camp_tipoJogo'
    end
  end
  object SQL_campanha: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from campanha')
    Left = 120
    Top = 224
    object SQL_campanhacamp_nome: TStringField
      FieldName = 'camp_nome'
      Origin = 'camp_nome'
      Size = 60
    end
    object SQL_campanhacamp_historia: TMemoField
      FieldName = 'camp_historia'
      Origin = 'camp_historia'
      BlobType = ftMemo
    end
    object SQL_campanhacamp_tipoJogo: TStringField
      FieldName = 'camp_tipoJogo'
      Origin = 'camp_tipoJogo'
    end
  end
  object DS_campanha: TDataSource
    Left = 200
    Top = 224
  end
  object tb_foto: TFDTable
    Connection = conexao
    UpdateOptions.UpdateTableName = 'faci_rpg.fotos_personagem'
    TableName = 'faci_rpg.fotos_personagem'
    Left = 352
    Top = 56
  end
  object sql_foto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from fotos_personagem')
    Left = 440
    Top = 56
    object StringField1: TStringField
      FieldName = 'person_nome'
      Origin = 'person_nome'
      Size = 50
    end
    object LongWordField1: TLongWordField
      FieldName = 'person_forca'
      Origin = 'person_forca'
    end
    object LongWordField2: TLongWordField
      FieldName = 'person_habilidade'
      Origin = 'person_habilidade'
    end
    object LongWordField3: TLongWordField
      FieldName = 'person_resistencia'
      Origin = 'person_resistencia'
    end
    object LongWordField4: TLongWordField
      FieldName = 'person_armadura'
      Origin = 'person_armadura'
    end
    object LongWordField5: TLongWordField
      FieldName = 'person_poderFogo'
      Origin = 'person_poderFogo'
    end
    object LongWordField6: TLongWordField
      FieldName = 'person_pontosVida'
      Origin = 'person_pontosVida'
    end
    object LongWordField7: TLongWordField
      FieldName = 'person_pontosMagia'
      Origin = 'person_pontosMagia'
    end
    object LongWordField8: TLongWordField
      FieldName = 'person_XP'
      Origin = 'person_XP'
    end
    object LongWordField9: TLongWordField
      FieldName = 'person_pontosJogador'
      Origin = 'person_pontosJogador'
    end
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'person_ID'
      Origin = 'person_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LongWordField10: TLongWordField
      FieldName = 'person_campId'
      Origin = 'person_campId'
    end
    object LongWordField11: TLongWordField
      FieldName = 'person_fotoId'
      Origin = 'person_fotoId'
    end
  end
  object ds_foto: TDataSource
    Left = 528
    Top = 56
  end
end
