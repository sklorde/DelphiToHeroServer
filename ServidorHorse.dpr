program ServidorHorse;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Horse,
  ServerHorse.Model.Connection in 'src\Model\Connection\ServerHorse.Model.Connection.pas',
  ServerHorse.Model.DAO in 'src\Model\DAO\ServerHorse.Model.DAO.pas',
  ServerHorse.Model.Entity.USUARIOS in 'src\Model\Entity\ServerHorse.Model.Entity.USUARIOS.pas',
  ServerHorse.Controller.Interfaces in 'src\Controller\ServerHorse.Controller.Interfaces.pas',
  ServerHorse.Controller in 'src\Controller\ServerHorse.Controller.pas',
  ServerHorse.Controller.Generic in 'src\Controller\ServerHorse.Controller.Generic.pas',
  ServerHorse.Routers.Usuarios in 'src\Routers\ServerHorse.Routers.Usuarios.pas',
  System.Classes,
  ServerHorse.Utils in 'src\Utils\ServerHorse.Utils.pas',
  ServerHorse.Model.Entity.ENDERECO in 'src\Model\Entity\ServerHorse.Model.Entity.ENDERECO.pas',
  ServerHorse.Routers.Endereco in 'src\Routers\ServerHorse.Routers.Endereco.pas';

begin
  ServerHorse.Routers.Usuarios.Registry;
  ServerHorse.Routers.Endereco.Registry;
  THorse.Listen(9000);
end.
