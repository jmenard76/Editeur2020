object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Chemins d'#39'acc'#232's'
  ClientHeight = 124
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 321
    Height = 65
    Caption = 'Niveaux'
    TabOrder = 0
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 289
      Height = 21
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 96
    Top = 91
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 177
    Top = 91
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Annuler'
    TabOrder = 2
    OnClick = Button2Click
  end
end
