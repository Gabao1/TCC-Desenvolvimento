object F_login: TF_login
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'AUTENTICA'#199#195'O'
  ClientHeight = 159
  ClientWidth = 534
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 42
    Height = 16
    Caption = 'LOGIN :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 55
    Width = 45
    Height = 16
    Caption = 'SENHA :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 344
    Top = 16
    Width = 137
    Height = 131
  end
  object txtLogin: TEdit
    Left = 19
    Top = 28
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 80
    Top = 122
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 161
    Top = 122
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    OnClick = CancelBtnClick
  end
  object txtSenha: TEdit
    Left = 19
    Top = 78
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
end
