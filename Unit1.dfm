object Form1: TForm1
  Width = 480
  Height = 360
  Caption = 'Login'
  Visible = True
  object lblTitulo: TWebLabel
    Left = 40
    Top = 30
    Width = 209
    Height = 32
    Caption = 'Acesso ao Sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object lblUser: TWebLabel
    Left = 40
    Top = 100
    Width = 59
    Height = 20
    Caption = 'Usu'#195#161'rio:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblPass: TWebLabel
    Left = 40
    Top = 150
    Width = 43
    Height = 20
    Caption = 'Senha:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblMsg: TWebLabel
    Left = 140
    Top = 270
    Width = 170
    Height = 17
    Caption = 'Usu'#195#161'rio ou senha inv'#195#161'lidos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    Visible = False
    WidthPercent = 100.000000000000000000
  end
  object edtUser: TWebEdit
    Left = 140
    Top = 96
    Width = 280
    Height = 28
    HeightPercent = 100.000000000000000000
    TextHint = 'Digite o nome de usu'#195#161'rio'
    WidthPercent = 100.000000000000000000
  end
  object edtPass: TWebEdit
    Left = 140
    Top = 146
    Width = 280
    Height = 28
    HeightPercent = 100.000000000000000000
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Digite a senha'
    WidthPercent = 100.000000000000000000
  end
  object btnLogin: TWebButton
    Left = 140
    Top = 210
    Width = 280
    Height = 42
    Caption = 'Entrar'
    HeightPercent = 100.000000000000000000
    TabOrder = 2
    WidthPercent = 100.000000000000000000
    OnClick = btnLoginClick
  end
end
