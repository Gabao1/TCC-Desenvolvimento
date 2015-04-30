object F_menuMestre: TF_menuMestre
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  ClientHeight = 522
  ClientWidth = 796
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 30
  object sbtnFichaPerson: TSpeedButton
    Left = 104
    Top = 72
    Width = 273
    Height = 42
    Caption = 'Ficha do personagem'
    Flat = True
  end
  object sbtnTestes: TSpeedButton
    Left = 104
    Top = 128
    Width = 273
    Height = 41
    Caption = 'Testes de Habilidade'
    Flat = True
  end
  object sbtnMapas: TSpeedButton
    Left = 104
    Top = 183
    Width = 273
    Height = 42
    Caption = 'Criar Mapas'
    Flat = True
  end
  object sbtnAventuras: TSpeedButton
    Left = 104
    Top = 239
    Width = 273
    Height = 46
    Caption = 'Escrever Aventuras'
    Flat = True
    OnClick = sbtnAventurasClick
  end
  object sbtnNPCS: TSpeedButton
    Left = 104
    Top = 291
    Width = 273
    Height = 42
    Caption = 'Criar NPC'#39's'
    Flat = True
    OnClick = sbtnNPCSClick
  end
  object sbtnLojas: TSpeedButton
    Left = 104
    Top = 344
    Width = 273
    Height = 41
    Caption = 'Criar Lojas'
    Flat = True
  end
  object sbtnCombate: TSpeedButton
    Left = 104
    Top = 399
    Width = 273
    Height = 42
    Caption = 'Iniciar Combate'
    Flat = True
  end
end
