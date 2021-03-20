unit ServerHorse.Model.Entity.ENDERECO;

interface

uses
  System.Generics.Collections, System.Classes, Rest.Json, System.JSON, SimpleAttributes;

type
  [Tabela('ENDERECO')]
  TENDERECO = class
  private
    FID: integer;
    FUSUARIOID: integer;
    FLOGRADOURO: string;   {TWideStringField}
    FNUMERO: string;   {TWideStringField}
    FCOMPLEMENTO: string;   {TWideStringField}
    FBAIRRO: string;   {TWideStringField}
    FCIDADE: string;   {TWideStringField}
    FESTADO: string;   {TWideStringField}
    FCEP: string;   {TWideStringField}

  public
    constructor Create;
    destructor Destroy; override;

  published
{verificar os atributos do campo de chave primária}
{Exemplo: [Campo('NOME_CAMPO'), PK, AutoInc] }
    [Campo('ID'), PK, AutoInc]
    property ID: integer read FID write FID;
    [Campo('USUARIOID')]
    property USUARIOID: integer read FUSUARIOID write FUSUARIOID;
    [Campo('LOGRADOURO')]
    property LOGRADOURO: string read FLOGRADOURO write FLOGRADOURO;
    [Campo('NUMERO')]
    property NUMERO: string read FNUMERO write FNUMERO;
    [Campo('COMPLEMENTO')]
    property COMPLEMENTO: string read FCOMPLEMENTO write FCOMPLEMENTO;
    [Campo('BAIRRO')]
    property BAIRRO: string read FBAIRRO write FBAIRRO;
    [Campo('CIDADE')]
    property CIDADE: string read FCIDADE write FCIDADE;
    [Campo('ESTADO')]
    property ESTADO: string read FESTADO write FESTADO;
    [Campo('CEP')]
    property CEP: string read FCEP write FCEP;

    function ToJSONObject: TJsonObject;
    function ToJsonString: string;

  end;

implementation

constructor TENDERECO.Create;
begin

end;

destructor TENDERECO.Destroy;
begin

  inherited;
end;

function TENDERECO.ToJSONObject: TJsonObject;
begin
  Result := TJson.ObjectToJsonObject(Self);
end;

function TENDERECO.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

end.

