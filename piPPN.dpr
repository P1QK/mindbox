program piPPN;

uses
  Vcl.Forms,
  MainFrm in 'MainFrm.pas' {FrmMain},
  MainDm in 'MainDm.pas' {DmMain: TDataModule},
  AboutFra in 'AboutFra.pas' {FraAbout: TFrame},
  NutrientsFrm in 'NutrientsFrm.pas' {FrmNutrients},
  ScanDm in 'ScanDm.pas' {DmScan: TDataModule},
  ProtocolFrm in 'ProtocolFrm.pas' {FrmProtocol},
  HosXPDm in 'HosXPDm.pas' {DmHosXP: TDataModule},
  JobEntryFrm in 'JobEntryFrm.pas' {FrmJobEntry},
  EntryFrm in 'EntryFrm.pas' {FrmEntry},
  JobListFrm in 'JobListFrm.pas' {FrmJobList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmHosXP, DmHosXP);
  Application.CreateForm(TDmScan, DmScan);
  Application.CreateForm(TDmMain, DmMain);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
