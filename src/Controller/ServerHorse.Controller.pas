unit ServerHorse.Controller;

interface

uses
  ServerHorse.Controller.Generic,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Model.Entity.ENDERECO,
  ServerHorse.Model.Entity.USUARIO;

type
  TController = class(TInterfacedObject, iController)
    private
      FUsuario  : iControllerEntity<TUsuario>;
      FEndereco : iControllerEntity<TEndereco>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Usuario : iControllerEntity<TUsuario>;
      function Endereco : iControllerEntity<TEndereco>;
  end;

implementation

{ TController }

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Endereco: iControllerEntity<TEndereco>;
begin
  if not Assigned(FEndereco) then
    FEndereco := TControllerGeneric<TEndereco>.New(Self);

  Result := FEndereco;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.Usuario: iControllerEntity<TUsuario>;
begin
  if not Assigned(FUsuario) then
    FUsuario := TControllerGeneric<TUsuario>.New(Self);

  Result := FUsuario;
end;

end.
