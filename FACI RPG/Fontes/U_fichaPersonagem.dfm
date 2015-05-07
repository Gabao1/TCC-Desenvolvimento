object F_Personagem: TF_Personagem
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'Cadastro/Consulta Personagem'
  ClientHeight = 651
  ClientWidth = 1766
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 46
    Height = 27
    Caption = 'Nome'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 44
    Height = 27
    Caption = 'For'#231'a'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 111
    Width = 96
    Height = 27
    Caption = 'Habilidade'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 176
    Width = 96
    Height = 27
    Caption = 'Resist'#234'ncia'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 232
    Width = 89
    Height = 27
    Caption = 'Armadura'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 287
    Width = 116
    Height = 27
    Caption = 'Poder de Fogo'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 335
    Width = 125
    Height = 27
    Caption = 'Pontos de Vida'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 391
    Width = 138
    Height = 27
    Caption = 'Pontos de Magia'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 447
    Width = 24
    Height = 27
    Caption = 'XP'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 16
    Top = 504
    Width = 152
    Height = 27
    Caption = 'Pontos do Jogador'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object spb_salvar: TSpeedButton
    Left = 237
    Top = 514
    Width = 92
    Height = 42
    Action = DatasetInsert1
    Caption = 'NOVO'
  end
  object SpeedButton2: TSpeedButton
    Left = 351
    Top = 514
    Width = 92
    Height = 42
    Action = DatasetEdit1
    Caption = 'EDITAR'
  end
  object SpeedButton3: TSpeedButton
    Left = 457
    Top = 514
    Width = 92
    Height = 42
    Action = DatasetPost1
    Caption = 'SALVAR'
  end
  object SpeedButton4: TSpeedButton
    Left = 563
    Top = 514
    Width = 92
    Height = 42
    Action = DatasetDelete1
    Caption = 'DELETAR'
  end
  object SpeedButton5: TSpeedButton
    Left = 669
    Top = 514
    Width = 92
    Height = 42
    Action = DatasetCancel1
    Caption = 'CANCELAR'
  end
  object btm_carregarFotoPersonagem: TSpeedButton
    Left = 602
    Top = 241
    Width = 127
    Height = 42
    Caption = 'Carregar Foto'
    OnClick = btm_carregarFotoPersonagemClick
  end
  object btn_salvarFotoPersonagem: TSpeedButton
    Left = 469
    Top = 241
    Width = 127
    Height = 42
    Caption = 'Salvar Foto'
  end
  object Image1: TImage
    Left = 320
    Top = 64
    Width = 481
    Height = 163
  end
  object spb_inicairCalculo: TSpeedButton
    Left = 229
    Top = 368
    Width = 76
    Height = 27
    Caption = 'Calcular'
    OnClick = spb_inicairCalculoClick
  end
  object Label11: TLabel
    Left = 332
    Top = 343
    Width = 77
    Height = 19
    Caption = '1'#186' n'#250'mero'
    Visible = False
  end
  object Label12: TLabel
    Left = 440
    Top = 343
    Width = 77
    Height = 19
    Caption = '2'#186' n'#250'mero'
    Visible = False
  end
  object Label13: TLabel
    Left = 539
    Top = 343
    Width = 77
    Height = 19
    Caption = '3'#186' n'#250'mero'
    Visible = False
  end
  object spb_calcular: TSpeedButton
    Left = 648
    Top = 343
    Width = 65
    Height = 52
    Caption = 'Calcular'
    OnClick = spb_calcularClick
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 954
    Height = 27
    DataField = 'person_nome'
    DataSource = DS_cadastroPersonagem
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 88
    Width = 194
    Height = 27
    DataField = 'person_forca'
    DataSource = DS_cadastroPersonagem
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 144
    Width = 194
    Height = 27
    DataField = 'person_habilidade'
    DataSource = DS_cadastroPersonagem
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 200
    Width = 194
    Height = 27
    DataField = 'person_resistencia'
    DataSource = DS_cadastroPersonagem
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 256
    Width = 194
    Height = 27
    DataField = 'person_armadura'
    DataSource = DS_cadastroPersonagem
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 312
    Width = 194
    Height = 27
    DataField = 'person_poderFogo'
    DataSource = DS_cadastroPersonagem
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 368
    Width = 194
    Height = 27
    DataField = 'person_pontosVida'
    DataSource = DS_cadastroPersonagem
    Enabled = False
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 16
    Top = 424
    Width = 194
    Height = 27
    DataField = 'person_pontosMagia'
    DataSource = DS_cadastroPersonagem
    Enabled = False
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 16
    Top = 480
    Width = 194
    Height = 27
    DataField = 'person_XP'
    DataSource = DS_cadastroPersonagem
    Enabled = False
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 16
    Top = 529
    Width = 194
    Height = 27
    DataField = 'person_pontosJogador'
    DataSource = DS_cadastroPersonagem
    Enabled = False
    TabOrder = 9
  end
  object Edit1: TEdit
    Left = 332
    Top = 368
    Width = 77
    Height = 27
    TabOrder = 10
    Text = 'Edit1'
    Visible = False
  end
  object Edit2: TEdit
    Left = 440
    Top = 368
    Width = 77
    Height = 27
    TabOrder = 11
    Text = 'Edit1'
    Visible = False
  end
  object Edit3: TEdit
    Left = 539
    Top = 368
    Width = 77
    Height = 27
    TabOrder = 12
    Text = 'Edit1'
    Visible = False
  end
  object ACM_personagem: TActionManager
    Left = 376
    Top = 608
    StyleName = 'Platform Default'
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
  end
  object DS_cadastroPersonagem: TDataSource
    DataSet = D_modulo.TB_personagem
    Left = 256
    Top = 608
  end
  object person_abrirFoto: TOpenPictureDialog
    FileName = 'C:\Users\davidSimoes\Pictures\12.jpg'
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Title = 'abrir fotp'
    Left = 832
    Top = 312
  end
end
