unit ServerHorse.Routers.Endereco;

interface

uses
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.CORS,
  ServerHorse.Controller;

procedure Registry;

implementation

uses
  System.Classes,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Model.Entity.Endereco,
  System.SysUtils,
  ServerHorse.Utils;


procedure Registry;
begin
  THorse
  .Use(Jhonson)
  .Use(CORS)

  .Get('/endereco',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TEndereco>;
    begin
      iController := TController.New.Endereco;
      iController.This
        .DAO
          .SQL
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/endereco/:usuarioid',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TEndereco>;
    begin
      iController := TController.New.Endereco;
      iController.This
        .DAO
          .SQL
            .Where('usuarioid = ' + QuotedStr(Req.Params['usuarioid']))
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

//  .Post('/endereco',
//    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
//    var
//      vBody : TJsonObject;
//      id: string;
//    begin
//      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
//      try
//        if not vBody.TryGetValue<String>('id', id) then
//          vBody.AddPair('id', TGUID.NewGuid.ToString());
//        TController.New.Usuarios.This.Insert(vBody);
//        Res.Status(200).Send<TJsonObject>(vBody);
//      except
//        Res.Status(500).Send('');
//      end;
//    end)

//  .Put('/usuario/:id',
//    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
//    var
//      vBody : TJsonObject;
//      id: string;
//    begin
//      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
//      try
//        if not vBody.TryGetValue<String>('id', id) then
//          vBody.AddPair('id', '{' + Req.Params['ID'] + '}' );
//        TController.New.Usuarios.This.Update(vBody);
//        Res.Status(200).Send<TJsonObject>(vBody);
//      except
//        Res.Status(500).Send('');
//      end;
//    end)

//  .Delete('/usuario/:id',
//  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
//  begin
//    try
//      TController.New.Usuarios.This.Delete('guuid', QuotedStr('{' + Req.Params['id'] + '}'));
//      Res.Status(200).Send('');
//    except
//      Res.Status(500).Send('');
//    end;
//  end);
end;

end.
