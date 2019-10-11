unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, XMLDoc, XMLIntf, Vcl.StdCtrls, System.Json,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.StorageXML, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, RzPanel, RzDlgBtn, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.DApt, FireDAC.Phys.SQLiteVDataSet, FireDAC.Stan.StorageBin,
  ACBrEnterTab, ACBrValidador, ACBrBase, ACBrSocket, ACBrCEP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ACBrUtil,
  ACBrMail, Vcl.Menus, Classe.Smtp, Inifiles, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFrMain = class(TForm)
    Query: TFDMemTable;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    btIncluir: TButton;
    edCodigo: TDBEdit;
    edNome: TDBEdit;
    edRg: TDBEdit;
    lstGrid: TDBGrid;
    dsQuery: TDataSource;
    btAlterar: TButton;
    btCancelar: TButton;
    btGravar: TButton;
    btExcluir: TButton;
    Panel1: TPanel;
    btClose: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edCpf: TDBEdit;
    edFone: TDBEdit;
    edEmail: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edCep: TDBEdit;
    Label6: TLabel;
    edLogradouro: TDBEdit;
    edNumero: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edComplemento: TDBEdit;
    edBairro: TDBEdit;
    Label10: TLabel;
    edCidade: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edUF: TDBEdit;
    Label14: TLabel;
    edPais: TDBEdit;
    Label15: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    QueryCodigo: TIntegerField;
    QueryNome: TStringField;
    QueryRg: TStringField;
    QueryCpf: TStringField;
    QueryFone: TStringField;
    QueryEmail: TStringField;
    QueryCep: TStringField;
    QueryLogradouro: TStringField;
    QueryNumero: TIntegerField;
    QueryComplemento: TStringField;
    QueryBairro: TStringField;
    QueryCidade: TStringField;
    QueryUF: TStringField;
    QueryPais: TStringField;
    sqLocal: TFDLocalSQL;
    conTemp: TFDConnection;
    aQuery: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    xQuery: TFDQuery;
    eChecaDoc: TACBrValidador;
    ACBrEnterTab1: TACBrEnterTab;
    HttpCon: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    sndEmail: TACBrMail;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Arquivo2: TMenuItem;
    ConfigurarServidor1: TMenuItem;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure QueryAfterInsert(DataSet: TDataSet);
    procedure QueryAfterEdit(DataSet: TDataSet);
    procedure edCodigoEnter(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QueryBeforeCancel(DataSet: TDataSet);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure edCepExit(Sender: TObject);
    procedure edCpfExit(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QueryAfterDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action2Update(Sender: TObject);
    procedure Action4Update(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action6Update(Sender: TObject);
    procedure Action8Update(Sender: TObject);
    procedure Action7Update(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
  private
    { Private declarations }
    ClassSMTP : TSmtp;
    
    Const
      ArqXML  : String = 'tabClientes.xml';
      ArqSMTP : String = 'SmtpConfig.ini';

    procedure CriarXmlClientes;
      
  public
    { Public declarations }
  end;

var
  FrMain: TFrMain;

implementation

{$R *.dfm}

uses Classe.Cep;

procedure TFrMain.Action1Execute(Sender: TObject);
begin
   Query.Append;
end;

procedure TFrMain.Action1Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.State in [dsInsert, dsEdit]);
end;

procedure TFrMain.Action2Execute(Sender: TObject);
begin
   Query.Edit;
end;

procedure TFrMain.Action2Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.State in [dsInsert, dsEdit]) and (Query.RecordCount > 0);
end;

procedure TFrMain.Action3Execute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrMain.Action4Execute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrMain.Action4Update(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.State in [dsInsert,dsEdit];
end;

procedure TFrMain.Action5Execute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrMain.Action6Execute(Sender: TObject);
var
   // Parâmetros do servidor
   intSSL : integer;
begin
   { ----------------------------------------------------------------------------------------
      Data:       11/10/2019
      Descrição:  Envia o e-mail com um arquivo xml em anexo contendo o(s) cadastro(s)
   -----------------------------------------------------------------------------------------}

   if Query.State in [dsInsert, dsEdit] then
   begin
      Application.MessageBox('Antes de enviar o e-mail grave os dados.','Atenção!',mb_IconStop or mb_ok);
      Exit;   
   end;
      
   if not Assigned(ClassSMTP) then
   begin
      Application.MessageBox('Antes de enviar o e-mail é necessário configura o servidor de envio no menu arquivo','Atenção!',mb_IconStop or mb_ok);
      Exit;
   end;

   // Cria o arquivo xml a ser enviado
   CriarXmlClientes;

   try
      sndEmail.Host                := ClassSMTP.Host;
      sndEmail.Port                := ClassSMTP.Porta;
      sndEmail.Username            := ClassSMTP.Usuario;
      sndEmail.Password            := ClassSMTP.Senha;
      sndEmail.From                := edEmail.Text;
      sndEmail.AddAddress(edEmail.Text,'Teste - Winston Moreira');
      sndEmail.Subject             := 'Teste Delphi - Altec';
      sndEmail.IsHTML              := false;
      sndEmail.SetSSL              := ClassSMTP.Ssl.ToBoolean; // SSL - conexão segura
      sndEmail.SetTLS              := false; // Auto TLS
      sndEmail.ReadingConfirmation := false; // Pede confirmaÃ§Ã£o de leitura do email
      sndEmail.UseThread           := false; // Aguarda Envio do Email(nÃ£o usa thread)
      sndEmail.FromName            := 'Teste Delphi 1.0';
      sndEmail.AltBody.Add(
         'Lista de Cadastros.' + sLineBreak +
         'Total de Registros: ' + Query.RecordCount.ToString() + sLineBreak +
         'Data e hora de Envio: ' + FormatDateTime('dd/mm/yyy hh:mm:ss', Now)
      );

      sndEmail.AddAttachment('Clientes.xml', 'Cadastros de Clientes');
      sndEmail.Send();

      Application.MessageBox('E-mail enviado com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox('Erro ao enviar o e-mail.','TechCore-RTG',mb_IconInformation or mb_Ok);
   end;
end;

procedure TFrMain.Action6Update(Sender: TObject);
begin
   if not Assigned(ClassSMTP) then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(Query.State in [dsInsert, dsEdit])   
end;

procedure TFrMain.Action7Execute(Sender: TObject);
var
   Host, Porta, Usuario, Senha, sSSl : String;
   iSSl : integer;
   SmtpINI : TIniFile;
begin
   { ----------------------------------------------------------------------------------------
      Data:       11/10/2019
      Descrição:  Gera um arquivo contendo os dados de configuração do servidor smtp para
                  para envio dos e-mails.
   -----------------------------------------------------------------------------------------}

   // Checa se esta Cadastrando ou Alterando
   if Query.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Salve os dados informado antes de configurar o servidor SMTP.','Atenção!', mb_IconStop or mb_ok);
      exit;
   end;

   // Coleta os dados para configurar

   // Endereço
   if not (InputQuery('Configurar Servidor Smtp.','Informe o Endereço:', Host)) or (Host = EmptyStr) then
      exit;

   // Porta
   if not (InputQuery('Configurar Servidor Smtp.','Informe a Porta:', Porta)) or (Porta = EmptyStr) then
      exit;

   // Usuário
   if not (InputQuery('Configurar Servidor Smtp.','Informe Usuário:', Usuario)) or (Usuario = EmptyStr) then
      exit;

   // Senha
   if not (InputQuery('Configurar Servidor Smtp.','Informe a Senha:', Senha)) or (Senha = EmptyStr) then
      exit;

   // Ssl
   if not InputQuery('Configurar Servidor Smtp.','Usar SSL 0 -> Não, 1 -> Sim', sSSl) then
      exit
   else
   begin

      // Checa se foi informado 0 ou 1
      if (sSSl < '0') and (sSSl > '1') then
         exit;

      // Converte para inteiro o resultado
      iSSl := StrToIntDef(sSSl, 0);

   end;

   // Grava os dados no arquivo ini de apoio
   try
      SmtpINI := TIniFile.Create(GetCurrentDir + '\' + ArqSMTP);      
      SmtpINI.WriteString('ConfigSMTP','Host', Host);
      SmtpINI.WriteString('ConfigSMTP','Porta', Porta);
      SmtpINI.WriteString('ConfigSMTP','Usuario', Usuario);
      SmtpINI.WriteString('ConfigSMTP','Senha', Senha);
      SmtpINI.WriteInteger('ConfigSMTP','SSL', iSSL);      
   finally
      FreeAndNil(SmtpINI);
   end;

   // Carrega os dados para o objeto para uso posterior
   if not Assigned(ClassSMTP) then
      ClassSMTP := TSmtp.Create;

   ClassSMTP.Host    := Host;
   ClassSMTP.Porta   := Porta;
   ClassSMTP.Usuario := Usuario;
   ClassSMTP.Senha   := Senha;
   ClassSMTP.Ssl     := iSSl;

end;

procedure TFrMain.Action7Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.State in [dsInsert,dsEdit]);
end;

procedure TFrMain.Action8Update(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.RecordCount > 0;
end;

procedure TFrMain.btCloseClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrMain.CriarXmlClientes;
var
  XMLDoc: TXMLDocument;
  NoCadastros, NoDadosCli, NoEndereco: IXMLNode;
begin
   { ----------------------------------------------------------------------------------------
      Data:       10/10/2019
      Descrição:  Criação do arquivo XML
   -----------------------------------------------------------------------------------------}

   // Cria o objeto para trabalhar o xml
   XMLDoc := TXMLDocument.Create(Self);
   try
      XMLDoc.Active := True;
      NoCadastros   := XMLDoc.AddChild('Cadastros');

      // Coloca o cursor no primeiro registro
      Query.First;

      repeat
         // Gera os campos com o dados do cliente
         NoDadosCli := NoCadastros.AddChild('Cliente');
         NoDadosCli.ChildValues['Código']     := QueryCodigo.AsString; // Conversão de tipo automática
         NoDadosCli.ChildValues['Nome']       := QueryNome.AsString;
         NoDadosCli.ChildValues['Identidade'] := QueryRg.AsString;
         NoDadosCli.ChildValues['Cpf']        := QueryCpf.AsString;
         NoDadosCli.ChildValues['Telefone']   := QueryFone.AsString;
         NoDadosCli.ChildValues['E-Mail']     := QueryEmail.AsString;

         // Gera o no endereço
         NoEndereco := NoDadosCli.AddChild('Endereco');
         NoEndereco.ChildValues['Cep']         := QueryCep.AsString;
         NoEndereco.ChildValues['Logradouro']  := QueryLogradouro.AsString;
         NoEndereco.ChildValues['Número']      := QueryNumero.AsString; // Conversão de tipo automática
         NoEndereco.ChildValues['Complemento'] := QueryComplemento.AsString;
         NoEndereco.ChildValues['Bairro']      := QueryBairro.AsString;
         NoEndereco.ChildValues['Cidade']      := QueryCidade.AsString;
         NoEndereco.ChildValues['Estado']      := QueryUF.AsString;
         NoEndereco.ChildValues['Pais']        := QueryPais.AsString;

         // Próximo registro
         Query.Next;
      until (Query.Eof);

      // Grava o resultado no arquivo
      XMLDoc.SaveToFile('Clientes.xml');

   finally
      XMLDoc.Free;
   end;
end;

procedure TFrMain.edCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00E9E9E9;
end;

procedure TFrMain.edCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrMain.edCpfExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;

   // Checa se o cpf é válido
   eChecadoc.TipoDocto := docCPF;
   eChecaDoc.Documento := edCpf.Text;

   if not eChecaDoc.Validar then
   begin
      Application.MessageBox('O CPF informado não é válido','Atenção!',mb_IconStop or mb_Ok);
      edCpf.SetFocus;
   end;
end;

procedure TFrMain.edCepExit(Sender: TObject);
var
   Response : TStringStream;
   JSONObj  : TJSONObject;
   jValue   : TJSOnValue;
   ClassCep : TCep;
begin

   TEdit(Sender).Color := clWindow;

   { ----------------------------------------------------------------------------------------
      Data:       11/10/2019
      Descrição:  Bloco responsável por consumir a api de consulta do cep no durante o
                  cadastrou ou alteração do cadastro do cliente
   -----------------------------------------------------------------------------------------}

   // Se estiver inserindo ou alterando
   if Query.State in [dsInsert,dsEdit] then
   begin

      // Checa se o cep tem o tamanho coreto
      if Length(OnlyNumber(edCep.Text)) = 8 then
      begin

         try
            // Cria os objetos de apoio a leitura do cep
            Response := TStringStream.Create;
            ClassCep := TCep.Create;

            // Consulta o webserver
            HttpCon.Get('https://viacep.com.br/ws/' + OnlyNumber(edCep.Text) + '/json', Response);

            // Checa o retorno da conexão
            if HttpCon.Response.ResponseCode = 200 then
            begin

               JSONObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes( Utf8ToAnsi(Response.DataString)),0) as TJSONObject;

               // Retorna o resultado para classe e recupera os valores
               ClassCep.Logradouro  := jSonObj.Get('logradouro').JsonValue;
               ClassCep.Bairro      := jSonObj.Get('bairro').JsonValue;
               ClassCep.Cidade      := jSonObj.Get('localidade').JsonValue;
               ClassCep.Uf          := jSonObj.Get('uf').JsonValue;
               ClassCep.Complemento := jSonObj.Get('complemento').JsonValue;

               // Exibe nos campos o resultado da pesquisa
               QueryLogradouro.AsString  := ClassCep.Logradouro.Value;
               QueryBairro.AsString      := ClassCep.Bairro.Value;
               QueryCidade.AsString      := ClassCep.Cidade.Value;
               QueryUF.AsString          := ClassCep.Uf.Value;
               QueryComplemento.AsString := ClassCep.Complemento.Value;

               // Posiciona o cursor no campo número
               edNumero.SetFocus;
            end;

         finally
            // Destroi os objetos
            FreeAndNil(jSonObj);
            FreeAndNil(ClassCep);
            FreeAndNil(Response);
         end;

      end
      else
         if Length(OnlyNumber(edCep.Text)) > 0 then
         begin
            // Aviso que auxilia o usuário
            Application.MessageBox('Para que seja possível efetuar a busca automática, informe um CEP válido','Atenção!',mb_IconInformation or mb_ok);
            edCep.SetFocus;
         end;

   end;

end;

procedure TFrMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned(ClassSMTP) then
      FreeAndNil(ClassSMTP);
end;

procedure TFrMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   // Antes de sair, confirma se existem alterações pendentes
   if Query.State in [dsInsert, dsEdit] then
   begin
      Application.MessageBox('Grave os dados ou cancele o processo antes de continuar','Atenção!',mb_IconStop or mb_ok);
      canClose := false;
   end;
end;

procedure TFrMain.FormShow(Sender: TObject);
var
   SmtpINI : TIniFile;
begin
   // Se já exitir o arquivo xml, carrega seu conteudo
   if FileExists(ArqXML) then
      Query.LoadFromFile(ArqXML);

   // Carrega o arquivo de configuração do smtp
   if FilesExists(ArqSMTP) then
   begin

      // Cria o objeto
      if not Assigned(ClassSMTP) then
         ClassSMTP := TSmtp.Create;

      try
         // Carrega os dados do arquivo ini
         SmtpINI := TIniFile.Create(GetCurrentDir + '\' + ArqSMTP); 

         ClassSMTP.Host    := SmtpINI.ReadString('ConfigSMTP','Host','');
         ClassSMTP.Porta   := SmtpINI.ReadString('ConfigSMTP','Porta','');
         ClassSMTP.Usuario := SmtpINI.ReadString('ConfigSMTP','Usuario','');
         ClassSMTP.Senha   := SmtpINI.ReadString('ConfigSMTP','Senha','');
         ClassSMTP.Ssl     := SmtpINI.ReadInteger('ConfigSMTP','SSL', 0);        
         
      finally
         FreeAndNil(SmtpINI);
      end;
      
   end;

   // Exibe os registros
   Query.Open;

   // Conexão ao servidor de dados virtual
   conTemp.Connected := true;

   sqLocal.Connection := conTemp;
   sqLocal.Active := true;
   aQuery.Open();

end;

procedure TFrMain.QueryAfterDelete(DataSet: TDataSet);
begin
   // Grava o conteudo no arquivo de saida XML
   Query.SaveToFile(ArqXML,sfXML);

   // Atualiza o tabela temporária
   aQuery.Refresh;
end;

procedure TFrMain.QueryAfterEdit(DataSet: TDataSet);
begin
   edNome.SetFocus;
end;

procedure TFrMain.QueryAfterInsert(DataSet: TDataSet);
begin
   { ----------------------------------------------------------------------------------------
      Data:       10/10/2019
      Descrição:  Atavés de pesquisa sobre a tabela temporária, garante que seja gerado um código
                  sequencial não repetido para o próximo registro
   -----------------------------------------------------------------------------------------}
   try
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('SELECT COALESCE(MAX(CODIGO),0) AS CODIGO FROM AQUERY');
      xQuery.Open();

      if xQuery.IsEmpty then
         QueryCodigo.AsInteger := 0
      else
         QueryCodigo.AsInteger := xQuery.FieldByName('Codigo').AsInteger + 1;

   finally
      xQuery.Close;
   end;

   // Posiciona o cursor no campo código
   edNome.SetFocus;
end;

procedure TFrMain.QueryAfterPost(DataSet: TDataSet);
begin
   // Grava o conteudo no arquivo de saida XML
   Query.SaveToFile(ArqXML,sfXML);

   // Atualiza o tabela temporária
   aQuery.Refresh;

   // Aviso ao usuário
   Application.MessageBox('Cadastro efetuado com sucesso.','Atenção!',mb_IConInformation or mb_Ok);
end;

procedure TFrMain.QueryBeforeCancel(DataSet: TDataSet);
begin
   // Confirma o cancelamento
   if Application.MessageBox('Tem certeza que deseja cancelar?','Atenção!',mb_IConQuestion or mb_YesNo) = mrNo then
      abort;
end;

procedure TFrMain.QueryBeforeDelete(DataSet: TDataSet);
begin
   // Confirma a exclusão
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','Atenção!',mb_IConQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrMain.QueryBeforePost(DataSet: TDataSet);
begin

   // Força o usuário a informar alguns dados antes de gravar
   if edNome.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar o Nome.','Atenção!',mb_IconStop or mb_ok);
      edNome.SetFocus;
      Abort;
   end;

   if OnlyNumber(edCpf.Text) = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar o CPF.','Atenção!',mb_IconStop or mb_ok);
      edCpf.SetFocus;
      Abort;
   end;

   if OnlyNumber(edCep.Text) = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar o CEP.','Atenção!',mb_IconStop or mb_ok);
      edCep.SetFocus;
      Abort;
   end;

   if edNumero.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar o Número.','Atenção!',mb_IconStop or mb_ok);
      edNumero.SetFocus;
      Abort;
   end;

   // Confere se o CPF informado já existe na base de dados
   try
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('SELECT 1 FROM AQUERY WHERE CPF=:CPF');
      xQuery.ParamByName('cpf').AsString := OnlyNumber(edCpf.Text);
      xQuery.Open();

      if not xQuery.IsEmpty then
      begin
         Application.MessageBox('O CPF informado já se encontra cadastrado para outro cliente.','Atenção!',mb_IconStop or mb_ok);
         edCpf.SetFocus;
         Abort;
      end;
   finally
      xQuery.Close;
   end;

end;

procedure TFrMain.RzDialogButtons1ClickCancel(Sender: TObject);
begin
   Self.Close
end;

end.
