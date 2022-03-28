object Form1: TForm1
  Left = 0
  Top = 0
  HorzScrollBar.Style = ssFlat
  VertScrollBar.Style = ssFlat
  Caption = 'Form1'
  ClientHeight = 532
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 209
    Height = 65
    Caption = 'Exemplos: Intera'#231#227'o'
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 145
      Height = 25
      Caption = 'Estruturas repeti'#231#227'o'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 87
    Width = 209
    Height = 65
    Caption = 'Exemplos: M'#233'todos'
    TabOrder = 1
    object Button2: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Executar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 223
    Top = 8
    Width = 242
    Height = 489
    Caption = 'Exemplos: Vetores/Arrays Parte 1'
    TabOrder = 2
    object btnExecutarVetEArray: TButton
      Left = 16
      Top = 24
      Width = 161
      Height = 25
      Caption = 'Executar Vetor/Arrays'
      TabOrder = 0
      OnClick = btnExecutarVetEArrayClick
    end
    object Memo1: TMemo
      Left = 16
      Top = 55
      Width = 223
      Height = 431
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
end
