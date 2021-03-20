unit ServerHorse.Model.Entity.ENDERECO;

interface

uses
  SimpleAttributes;

type
  [Tabela('Endereco')]
  TEndereco = class
  private
    property id: integer;
    property usuarioid: string;
    property cep: string;
    property cidade: string;
    property estado: string;
  end;

implementation

end.
