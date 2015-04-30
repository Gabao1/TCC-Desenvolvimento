object F_Mestre: TF_Mestre
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  ClientHeight = 515
  ClientWidth = 782
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
  object sbtnNovoJogo: TSpeedButton
    Left = 64
    Top = 128
    Width = 241
    Height = 49
    Caption = 'Criar novo jogo'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sbtnJogoSalvo: TSpeedButton
    Left = 64
    Top = 208
    Width = 241
    Height = 49
    Caption = 'Carregar Campanha'
    Flat = True
  end
end
