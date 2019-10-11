unit Classe.Cep;

interface
   Uses
      System.JSON;

type
   TCep = class
   private
      FLogradouro  : TJSOnValue;
      FBairro      : TJSONValue;
      FCidade      : TJSONValue;
      FEstado      : TJSONValue;
      FComplemento : TJSONValue;

   public
      property Logradouro  : TJSONValue read FLogradouro write FLogradouro;
      property Bairro      : TJSONValue read FBairro write FBairro;
      property Cidade      : TJSONValue read FCidade write FCidade;
      property Uf          : TJSONValue read FEstado write FEstado;
      property Complemento : TJSONValue read Fcomplemento write Fcomplemento;

   end;

implementation

end.
