unit Classe.Smtp;

interface

type
   TSmtp = class
   private
      FHost    : string;
      FPorta   : string;
      FUsuario : string;
      FSenha   : string;
      FSsl     : integer;

   public
      property Host    : string  read FHost    write FHost;
      property Porta   : string  read FPorta   write FPorta;
      property Usuario : string  read FUsuario write FUsuario;
      property Senha   : string  read FSenha   write FSenha;
      property Ssl     : integer read FSsl     write FSsl;
   end;


implementation

end.
