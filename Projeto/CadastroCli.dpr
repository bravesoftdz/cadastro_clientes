program CadastroCli;

uses
  Vcl.Forms,
  uMain in 'UNITS\uMain.pas' {FrMain},
  Classe.Cep in 'UNITS\Classe.Cep.pas',
  Classe.Smtp in 'UNITS\Classe.Smtp.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrMain, FrMain);
  Application.Run;
end.
