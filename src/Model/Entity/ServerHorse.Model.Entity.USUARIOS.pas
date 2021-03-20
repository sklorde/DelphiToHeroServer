unit ServerHorse.Model.Entity.USUARIOS;

interface

uses
  System.Generics.Collections, System.Classes, Rest.Json, System.JSON, SimpleAttributes;

type
  [Tabela('USUARIO')]
  TUSUARIOS = class
  private
    FID: integer;
    FNOME: string;   {TWideStringField}
    FTELEFONE: string;   {TWideStringField}
    FCPF: string;   {TWideStringField}
    FEMAIL: string;   {TWideStringField}

  public
    constructor Create;
    destructor Destroy; override;

  published
    [Campo('ID'), PK, AutoInc]
    property ID: integer read FID write FID;
    [Campo('NOME')]
    property NOME: string read FNOME write FNOME;
    [Campo('TELEFONE')]
    property TELEFONE: string read FTELEFONE write FTELEFONE;
    [Campo('CPF')]
    property CPF: string read FCPF write FCPF;
    [Campo('EMAIL')]
    property EMAIL: string read FEMAIL write FEMAIL;

    function ToJSONObject: TJsonObject;
    function ToJsonString: string;

  end;

implementation

constructor TUSUARIOS.Create;
begin

end;

destructor TUSUARIOS.Destroy;
begin

  inherited;
end;

function TUSUARIOS.ToJSONObject: TJsonObject;
begin
  Result := TJson.ObjectToJsonObject(Self);
end;

function TUSUARIOS.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

end.

