object FrMain: TFrMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 393
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 38
    Height = 13
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 94
    Top = 19
    Width = 32
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 329
    Top = 19
    Width = 62
    Height = 13
    Caption = 'Identidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 410
    Top = 19
    Width = 20
    Height = 13
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 59
    Width = 49
    Height = 13
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 118
    Width = 21
    Height = 13
    Caption = 'Cep'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 79
    Top = 118
    Width = 65
    Height = 13
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 351
    Top = 118
    Width = 28
    Height = 13
    Caption = 'N'#250'm.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 157
    Width = 34
    Height = 13
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 172
    Top = 157
    Width = 38
    Height = 13
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 94
    Top = 59
    Width = 35
    Height = 13
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 398
    Top = 118
    Width = 79
    Height = 13
    Caption = 'Complemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 351
    Top = 157
    Width = 38
    Height = 13
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 398
    Top = 157
    Width = 23
    Height = 13
    Caption = 'Pais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 204
    Top = 1
    Width = 100
    Height = 19
    Alignment = taCenter
    Caption = 'Dados B'#225'sicos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 186
    Top = 101
    Width = 137
    Height = 19
    Alignment = taCenter
    Caption = 'Dados do Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btIncluir: TButton
    Left = 8
    Top = 325
    Width = 75
    Height = 25
    Action = Action1
    TabOrder = 15
  end
  object edCodigo: TDBEdit
    Left = 8
    Top = 34
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Codigo'
    DataSource = dsQuery
    Enabled = False
    TabOrder = 0
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edNome: TDBEdit
    Left = 94
    Top = 34
    Width = 229
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Nome'
    DataSource = dsQuery
    TabOrder = 1
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edRg: TDBEdit
    Left = 329
    Top = 34
    Width = 75
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Rg'
    DataSource = dsQuery
    TabOrder = 2
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object lstGrid: TDBGrid
    Left = 8
    Top = 199
    Width = 491
    Height = 120
    DataSource = dsQuery
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cpf'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object btAlterar: TButton
    Left = 89
    Top = 325
    Width = 75
    Height = 25
    Action = Action2
    TabOrder = 20
  end
  object btCancelar: TButton
    Left = 424
    Top = 325
    Width = 75
    Height = 25
    Action = Action5
    TabOrder = 18
  end
  object btGravar: TButton
    Left = 343
    Top = 325
    Width = 75
    Height = 25
    Action = Action4
    TabOrder = 17
  end
  object btExcluir: TButton
    Left = 170
    Top = 325
    Width = 75
    Height = 25
    Action = Action3
    TabOrder = 16
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 359
    Width = 499
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 19
    object btClose: TButton
      AlignWithMargins = True
      Left = 421
      Top = 3
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btCloseClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Action = Action6
      Align = alLeft
      TabOrder = 1
    end
  end
  object edCpf: TDBEdit
    Left = 410
    Top = 34
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Cpf'
    DataSource = dsQuery
    TabOrder = 3
    OnEnter = edCodigoEnter
    OnExit = edCpfExit
  end
  object edFone: TDBEdit
    Left = 8
    Top = 74
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Fone'
    DataSource = dsQuery
    TabOrder = 4
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edEmail: TDBEdit
    Left = 94
    Top = 74
    Width = 405
    Height = 21
    CharCase = ecLowerCase
    DataField = 'Email'
    DataSource = dsQuery
    TabOrder = 5
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edCep: TDBEdit
    Left = 8
    Top = 133
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Cep'
    DataSource = dsQuery
    TabOrder = 6
    OnEnter = edCodigoEnter
    OnExit = edCepExit
  end
  object edLogradouro: TDBEdit
    Left = 79
    Top = 133
    Width = 266
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Logradouro'
    DataSource = dsQuery
    TabOrder = 7
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edNumero: TDBEdit
    Left = 351
    Top = 133
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Numero'
    DataSource = dsQuery
    TabOrder = 8
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edComplemento: TDBEdit
    Left = 398
    Top = 133
    Width = 101
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Complemento'
    DataSource = dsQuery
    TabOrder = 9
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edBairro: TDBEdit
    Left = 8
    Top = 172
    Width = 158
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Bairro'
    DataSource = dsQuery
    TabOrder = 10
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edCidade: TDBEdit
    Left = 172
    Top = 172
    Width = 173
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Cidade'
    DataSource = dsQuery
    TabOrder = 11
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edUF: TDBEdit
    Left = 351
    Top = 172
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = dsQuery
    TabOrder = 12
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edPais: TDBEdit
    Left = 398
    Top = 172
    Width = 101
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Pais'
    DataSource = dsQuery
    TabOrder = 13
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object Query: TFDMemTable
    AfterInsert = QueryAfterInsert
    AfterEdit = QueryAfterEdit
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    BeforeCancel = QueryBeforeCancel
    BeforeDelete = QueryBeforeDelete
    AfterDelete = QueryAfterDelete
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    LocalSQL = sqLocal
    StoreDefs = True
    Left = 384
    Top = 83
    object QueryCodigo: TIntegerField
      DisplayWidth = 10
      FieldName = 'Codigo'
      DisplayFormat = '000000'
    end
    object QueryNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object QueryRg: TStringField
      FieldName = 'Rg'
      Size = 15
    end
    object QueryCpf: TStringField
      FieldName = 'Cpf'
      EditMask = '!999\.999\.999\-99;0;_'
      Size = 18
    end
    object QueryFone: TStringField
      FieldName = 'Fone'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 15
    end
    object QueryEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object QueryCep: TStringField
      FieldName = 'Cep'
      EditMask = '!99999\-999'
      Size = 12
    end
    object QueryLogradouro: TStringField
      FieldName = 'Logradouro'
      Size = 120
    end
    object QueryNumero: TIntegerField
      FieldName = 'Numero'
    end
    object QueryComplemento: TStringField
      FieldName = 'Complemento'
      Size = 65
    end
    object QueryBairro: TStringField
      FieldName = 'Bairro'
      Size = 65
    end
    object QueryCidade: TStringField
      FieldName = 'Cidade'
      Size = 65
    end
    object QueryUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QueryPais: TStringField
      FieldName = 'Pais'
      Size = 35
    end
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 384
    Top = 110
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 416
    Top = 83
  end
  object sqLocal: TFDLocalSQL
    Connection = conTemp
    DataSets = <>
    Left = 120
    Top = 246
  end
  object conTemp: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 56
    Top = 246
  end
  object aQuery: TFDQuery
    LocalSQL = sqLocal
    Connection = conTemp
    SQL.Strings = (
      'SELECT * FROM QUERY')
    Left = 88
    Top = 246
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    VendorLib = 'fbclient.dll'
    Left = 24
    Top = 246
  end
  object xQuery: TFDQuery
    LocalSQL = sqLocal
    Connection = conTemp
    SQL.Strings = (
      'SELECT * FROM AQUERY')
    Left = 88
    Top = 278
  end
  object eChecaDoc: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 249
    Top = 236
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 281
    Top = 236
  end
  object HttpCon: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 248
    Top = 270
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 280
    Top = 270
  end
  object sndEmail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 312
    Top = 236
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 2
    object Arquivo2: TMenuItem
      Caption = '&Arquivo'
      ShortCut = 32833
      object ConfigurarServidor1: TMenuItem
        Action = Action7
      end
    end
  end
  object ActionManager1: TActionManager
    Left = 280
    Top = 56
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Incluir'
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object Action2: TAction
      Caption = 'Alterar'
      OnExecute = Action2Execute
      OnUpdate = Action2Update
    end
    object Action3: TAction
      Caption = 'Excluir'
      OnExecute = Action3Execute
      OnUpdate = Action2Update
    end
    object Action4: TAction
      Caption = 'Gravar'
      OnExecute = Action4Execute
      OnUpdate = Action4Update
    end
    object Action5: TAction
      Caption = 'Cancelar'
      OnExecute = Action5Execute
      OnUpdate = Action4Update
    end
    object Action6: TAction
      Caption = 'Enviar E-mail'
      OnExecute = Action6Execute
      OnUpdate = Action6Update
    end
    object Action7: TAction
      Caption = '&Configurar Servidor'
      ShortCut = 16451
      OnExecute = Action7Execute
      OnUpdate = Action7Update
    end
  end
end
