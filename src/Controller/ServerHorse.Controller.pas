unit ServerHorse.Controller;

interface

uses
  ServerHorse.Controller.Generic,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Model.Entity.USUARIOS;

type
  TController = class(TInterfacedObject, iController)
    private
      FUsers : iControllerEntity<TUSUARIOS>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function USUARIOS : iControllerEntity<TUSUARIOS>;
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

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.USUARIOS: iControllerEntity<TUsuarios>;
begin
  if not Assigned(FUsers) then
    FUsers := TControllerGeneric<TUsuarios>.New(Self);

  Result := FUsers;
end;

end.
