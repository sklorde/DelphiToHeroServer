unit ServerHorse.Model.Entity.USUARIOS;

interface

uses
  SimpleAttributes;

type
  [Tabela('Usuarios')]
  TUsuarios = class
  private
    FID: String;
    FNOME :String;
    FTELEFONE :String;
    FBIRTHDATE: TDateTime;
    FLASTTRANSACTION: TDateTime;
    FCPF: String;
    FCNPJ: String;
    procedure SetNAME (const Value :String);
    function GetNAME :String;
    procedure SetPHONE (const Value :String);
    function GetPHONE :String;
    procedure SetGUUID(const Value: String);
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
  FID := Value;
end;

procedure TUsuarios.SetLASTTRANSACTION(const Value: TDateTime);
begin
  FLASTTRANSACTION := Value;
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
  FNOME := Value;
end;

function TUsuarios.GetGUUID: String;
begin
  Result := FID;
end;

function TUsuarios.GetNAME :String;
begin
  Result := FNOME;
end;

procedure TUsuarios.SetPHONE (const Value :String);
begin
  FTELEFONE := Value;
end;

function TUsuarios.GetPHONE :String;
begin
  Result := FTELEFONE;
end;

end.
