object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Inicio'
  ClientHeight = 685
  ClientWidth = 642
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 642
    Height = 685
    ActivePage = TBSPaginaInicial
    Align = alClient
    TabOrder = 0
    object TBSLogin: TTabSheet
      Caption = 'Login'
      object PanelLogin: TPanel
        Left = 136
        Top = 144
        Width = 361
        Height = 353
        BevelInner = bvRaised
        BevelKind = bkTile
        BorderStyle = bsSingle
        TabOrder = 0
        object Label2: TLabel
          Left = 94
          Top = 72
          Width = 115
          Height = 32
          Caption = 'Usu'#225'rio*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 94
          Top = 149
          Width = 94
          Height = 32
          Caption = 'Senha*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 142
          Top = 16
          Width = 87
          Height = 32
          Caption = 'LOGIN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 72
          Top = 214
          Width = 221
          Height = 13
          Caption = 'Os campos com asterisco (*) s'#227'o obrigat'#243'rios!'
        end
        object EditUsuario: TEdit
          Left = 126
          Top = 110
          Width = 121
          Height = 21
          TabOrder = 0
          OnKeyPress = EditUsuarioKeyPress
        end
        object EditSenha: TEdit
          Left = 126
          Top = 187
          Width = 121
          Height = 21
          PasswordChar = #9829
          TabOrder = 1
          OnKeyPress = EditSenhaKeyPress
        end
        object btnEntrar: TButton
          Left = 134
          Top = 272
          Width = 75
          Height = 25
          Caption = 'Entrar'
          TabOrder = 2
          OnClick = btnEntrarClick
        end
      end
    end
    object TBSPaginaInicial: TTabSheet
      Caption = 'Pagina Inicial'
      ImageIndex = 1
      object btnTrocarUsuario: TButton
        Left = 77
        Top = 629
        Width = 75
        Height = 25
        Caption = 'Trocar Usuario'
        TabOrder = 0
        OnClick = btnTrocarUsuarioClick
      end
      object btnCadastroDeUsuario: TButton
        Left = 344
        Top = 88
        Width = 257
        Height = 49
        Caption = 'Cadastro De Usu'#225'rios'
        TabOrder = 1
        OnClick = btnCadastroDeUsuarioClick
      end
    end
  end
  object btnSair: TButton
    Left = 0
    Top = 652
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=bancoturma2'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 36
    Top = 96
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'I:\etec\delphi\ProjetoEmapa\Mysql\libmysql.dll'
    Left = 116
    Top = 32
  end
  object FDQueryUsuario: TFDQuery
    Filtered = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM tblusuario'
      'WHERE usuLogin = '#39'luan'#39
      'AND usuSenha = '#39'123456'#39)
    Left = 44
    Top = 208
    object FDQueryUsuarioidusuario: TFDAutoIncField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object FDQueryUsuariousuLogin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuLogin'
      Origin = 'usuLogin'
      Size = 16
    end
    object FDQueryUsuariousuSenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuSenha'
      Origin = 'usuSenha'
      Size = 16
    end
    object FDQueryUsuariocep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
  end
end
