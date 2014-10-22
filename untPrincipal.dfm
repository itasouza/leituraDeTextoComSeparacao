object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Leitor de Texto'
  ClientHeight = 380
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 380
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 378
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 583
        Height = 372
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        object Label7: TLabel
          Left = 24
          Top = 21
          Width = 117
          Height = 13
          Caption = 'Caminho do Arquivo txt:'
        end
        object SpeedButton2: TSpeedButton
          Left = 439
          Top = 39
          Width = 29
          Height = 22
          Caption = '...'
          OnClick = SpeedButton2Click
        end
        object Label1: TLabel
          Left = 16
          Top = 112
          Width = 3
          Height = 13
        end
        object Label2: TLabel
          Left = 368
          Top = 288
          Width = 31
          Height = 13
          Caption = 'Label2'
        end
        object EdtArquivoOriginal: TEdit
          Left = 24
          Top = 40
          Width = 409
          Height = 21
          TabOrder = 0
          Text = 
            'C:\Componentes - Sistemas Fontes\TesteItamar14-10-2013\pesquisa.' +
            'csv'
        end
        object btnProcesso: TBitBtn
          Left = 24
          Top = 67
          Width = 137
          Height = 25
          Caption = 'Processar...'
          TabOrder = 1
          OnClick = btnProcessoClick
        end
        object GroupBox1: TGroupBox
          Left = 16
          Top = 112
          Width = 266
          Height = 105
          Caption = 'Rela'#231#227'o de todos entrevistados ordem alfab'#233'tica : '
          TabOrder = 2
          object ListBoxAlfabetica: TListBox
            Left = 2
            Top = 15
            Width = 262
            Height = 88
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 288
          Top = 112
          Width = 265
          Height = 105
          Caption = 'Rela'#231#227'o entrevistados renda superior a 30.000,00'
          TabOrder = 3
          object ListBoxRenda: TListBox
            Left = 2
            Top = 15
            Width = 261
            Height = 88
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 223
          Width = 266
          Height = 125
          Caption = 'Rela'#231#227'o entrevistados com idade entre 50 e 65 anos '
          TabOrder = 4
          object ListBoxIdade: TListBox
            Left = 2
            Top = 15
            Width = 262
            Height = 108
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
          end
        end
        object Button1: TButton
          Left = 207
          Top = 67
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 5
          OnClick = Button1Click
        end
        object ProgressBar1: TProgressBar
          Left = 288
          Top = 67
          Width = 150
          Height = 25
          TabOrder = 6
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 488
    Top = 256
  end
end
