unit ServerHorse.Model.Entity.USUARIOS;

interface

uses
  SimpleAttributes;

type
  [Tabela('Usuarios')]
  TUsuarios = class
  private
    FNAME :String;
    FPHONE :String;
    FOCCUPATION :String;
    FGUUID: String;
    FBALANCE: Currency;
    FBIRTHDATE: TDateTime;
    FLASTTRANSACTION: TDateTime;
    FCPF: String;
    FCNPJ: String;
    procedure SetNAME (const Value :String);
    function GetNAME :String;
    procedure SetPHONE (const Value :String);
    function GetPHONE :String;
    procedure SetOCCUPATION (const Value :String);
    function GetOCCUPATION :String;
    procedure SetGUUID(const Value: String);
    procedure SetBALANCE(const Value: Currency);
    procedure SetBIRTHDATE(const Value: TDateTime);
    procedure SetLASTTRANSACTION(const Value: TDateTime);
    procedure SetCPF(const Value: String);
    procedure SetCNPJ(const Value: String);
    function GetGUUID: String;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('GUUID'), Pk]
    property GUUID : String read GetGUUID write SetGUUID;
    [Campo('NAME')]
    property NAME :String read GetNAME write SetNAME;
    [Campo('PHONE')]
    property PHONE :String read GetPHONE write SetPHONE;
    [Campo('OCCUPATION')]
    property OCCUPATION :String read GetOCCUPATION write SetOCCUPATION;
    [Campo('BALANCE')]
    property BALANCE : Currency read FBALANCE write SetBALANCE;
    [Campo('BIRTHDATE')]
    property BIRTHDATE : TDateTime read FBIRTHDATE write SetBIRTHDATE;
    [Campo('LASTTRANSACTION')]
    property LASTTRANSACTION : TDateTime read FLASTTRANSACTION write SetLASTTRANSACTION;
    [Campo('CPF')]
    property CPF : String read FCPF write SetCPF;
    [Campo('CNPJ')]
    property CNPJ : String read FCNPJ write SetCNPJ;
end;

implementation

uses
  System.SysUtils;

constructor TUsuarios.Create;
begin

end;

destructor TUsuarios.Destroy;
begin

  inherited;
end;

procedure TUsuarios.SetGUUID(const Value: String);
begin
  FGUUID := Value;
end;

procedure TUsuarios.SetLASTTRANSACTION(const Value: TDateTime);
begin
  FLASTTRANSACTION := Value;
end;

procedure TUsuarios.SetBALANCE(const Value: Currency);
begin
  FBALANCE := Value;
end;

procedure TUsuarios.SetBIRTHDATE(const Value: TDateTime);
begin
  FBIRTHDATE := Value;
end;

procedure TUsuarios.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TUsuarios.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TUsuarios.SetNAME (const Value :String);
begin
  FNAME := Value;
end;

function TUsuarios.GetGUUID: String;
begin
  Result := FGUUID;
end;

function TUsuarios.GetNAME :String;
begin
  Result := FNAME;
end;

procedure TUsuarios.SetPHONE (const Value :String);
begin
  FPHONE := Value;
end;

function TUsuarios.GetPHONE :String;
begin
  Result := FPHONE;
end;

procedure TUsuarios.SetOCCUPATION (const Value :String);
begin
  FOCCUPATION := Value;
end;

function TUsuarios.GetOCCUPATION :String;
begin
  Result := FOCCUPATION;
end;

end.
