object Form2: TForm2
  Width = 640
  Height = 400
  Caption = 'P'#195#161'gina Principal'
  Visible = True
  OnCreate = WebFormCreate
  object lblBemVindo: TWebLabel
    Left = 40
    Top = 40
    Width = 332
    Height = 32
    Caption = 'Login efetuado com sucesso!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object lblUsuario: TWebLabel
    Left = 40
    Top = 100
    Width = 111
    Height = 25
    Caption = 'Bem-vindo(a)!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object btnSair: TWebButton
    Left = 40
    Top = 180
    Width = 200
    Height = 42
    Caption = 'Sair'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnSairClick
  end
end
