unit ServerHorse.Controller.Interfaces;

interface

uses
  ServerHorse.Model.DAO,
  ServerHorse.Model.Entity.USUARIOS,
  ServerHorse.Model.Entity.ENDERECO;

type
  iControllerEntity<T : class> = interface;

  iController = interface
    ['{6A60E341-CB38-4034-B924-FB9B49D98577}']
    function USUARIOS : iControllerEntity<TUsuarios>;
    function ENDERECO : iControllerEntity<TEndereco>;
  end;

  iControllerEntity<T : class> = interface
    ['{F7476B60-A9B9-48CA-B1B6-016DADEA41D6}']
    function This : iDAOGeneric<T>;
    function &End : iController;
  end;

implementation

end.
