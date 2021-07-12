unit ScanDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, MemDS;

type
  TDmScan = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    cnScan: TUniConnection;
    DsDocScan: TUniQuery;
    DsWard: TUniQuery;
    DsDocScanid: TIntegerField;
    DsDocScanfilename: TWideStringField;
    DsDocScanward: TWideStringField;
    DsDocScandrive: TWideStringField;
    DsDocScandir: TWideStringField;
    DsDocScanpath: TWideStringField;
    DsDocScanprnflag: TIntegerField;
    DsDocScannotify: TWideMemoField;
    DsDocScanhosxp_check: TIntegerField;
    DsDocScanphar_check: TIntegerField;
    DsDocScanwardname: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConnectDB;
  public
    { Public declarations }
  end;

var
  DmScan: TDmScan;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmScan.ConnectDB;
begin
try
  cnScan.Connected := True;
  if cnScan.Connected=True then
  begin
    DsDocScan.Active := True;
  end;
except
  raise Exception.Create('Can not found server...');
  cnScan.Free;
end;
end;

procedure TDmScan.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

end.
