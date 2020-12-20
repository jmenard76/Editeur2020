object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ins'#233'rer un niveau'
  ClientHeight = 101
  ClientWidth = 254
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
  object Button1: TButton
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 39
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Annuler'
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 145
    Height = 81
    Caption = 'Nombre de niveaux'
    TabOrder = 2
    object Edit1: TEdit
      Left = 40
      Top = 34
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 89
      Top = 34
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 1
      Position = 1
      TabOrder = 1
    end
  end
end
