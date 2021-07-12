unit MainDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, DBAccess, Uni,
  UniProvider, MySQLUniProvider, MemDS;

type
  TDmMain = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    cnMain: TUniConnection;
    DsNutrients: TUniQuery;
    DsWards: TUniQuery;
    DsOrderH: TUniQuery;
    SrcOrderH: TDataSource;
    DsOrderHor_id: TWideStringField;
    DsOrderHor_guid: TWideStringField;
    DsOrderHor_date: TDateField;
    DsOrderHor_hn: TWideStringField;
    DsOrderHor_patname: TWideStringField;
    DsOrderHor_ward: TWideStringField;
    DsOrderHor_wprep: TWideStringField;
    DsOrderHor_wprove: TWideStringField;
    DsOrderHor_proved: TIntegerField;
    DsOrderHor_route: TWideStringField;
    DsOrderHor_waterrate: TFloatField;
    DsOrderHor_watervol: TFloatField;
    DsOrderHor_lipidrate: TFloatField;
    DsOrderHor_lipidvol: TFloatField;
    DsOrderHor_image: TBlobField;
    DsOrderHor_wardname: TWideStringField;
    DsNutrientsnu_id: TWideStringField;
    DsNutrientsnu_nutrient: TWideStringField;
    DsNutrientsnu_order: TIntegerField;
    DsRegH: TUniQuery;
    DsRegD: TUniQuery;
    SrcRegH: TDataSource;
    DsRegHreg_id: TWideStringField;
    DsRegHreg_name: TWideStringField;
    DsRegDreg_id: TWideStringField;
    DsRegDreg_nutcode: TWideStringField;
    DsRegDreg_phase: TWideStringField;
    DsWardswd_id: TWideStringField;
    DsWardswd_name: TWideStringField;
    DsOrderD: TUniQuery;
    DsRegDreg_nutrient: TStringField;
    DsWaterPhase: TUniQuery;
    DsLipidPhase: TUniQuery;
    DsOrderDor_id: TWideStringField;
    DsOrderDor_nutrient: TWideStringField;
    DsOrderDor_dose: TFloatField;
    DsOrderDor_nutvol: TFloatField;
    DsOrderDor_wfvol: TFloatField;
    DsOrderDor_orderno: TSmallintField;
    DsOrderDor_phase: TWideStringField;
    DsOrderDor_nutname: TStringField;
    DsRegDreg_order: TSmallintField;
    DsOrderHor_total: TFloatField;
    DsOrHEdit: TUniQuery;
    DsOrDEdit: TUniQuery;
    SrcOrHEdit: TDataSource;
    DsOrHEditor_id: TWideStringField;
    DsOrHEditor_guid: TWideStringField;
    DsOrHEditor_date: TDateField;
    DsOrHEditor_hn: TWideStringField;
    DsOrHEditor_patname: TWideStringField;
    DsOrHEditor_wt: TFloatField;
    DsOrHEditor_ward: TWideStringField;
    DsOrHEditor_wprep: TWideStringField;
    DsOrHEditor_wprove: TWideStringField;
    DsOrHEditor_route: TWideStringField;
    DsOrHEditor_waterrate: TFloatField;
    DsOrHEditor_watervol: TFloatField;
    DsOrHEditor_lipidrate: TFloatField;
    DsOrHEditor_lipidvol: TFloatField;
    DsOrHEditor_image: TBlobField;
    DsOrHEditor_proved: TSmallintField;
    DsOrHEditor_total: TFloatField;
    DsOrHEditorwardname: TStringField;
    DsOrDEditor_id: TWideStringField;
    DsOrDEditor_nutrient: TWideStringField;
    DsOrDEditor_dose: TFloatField;
    DsOrDEditor_nutvol: TFloatField;
    DsOrDEditor_wfvol: TFloatField;
    DsOrDEditor_orderno: TSmallintField;
    DsOrDEditor_phase: TWideStringField;
    DsOrDEditor_nutname: TStringField;
    DsOrderHor_wt: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMain: TDmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmMain.DataModuleCreate(Sender: TObject);
begin
try
  cnMain.Connected := False;cnMain.Connected := True;
  DsNutrients.Active := True;
  DsWards.Active := True;
  DsOrderH.Active := True;
  DsOrderD.Active := True;
  DsRegH.Active := True;
  DsRegD.Active := True;
  DsOrHEdit.Active := True;
  DsOrDEdit.Active := True;
except
  raise Exception.Create('Can not found server...');
  cnMain.Free;
end;
end;

end.
