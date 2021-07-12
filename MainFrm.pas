unit MainFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  dxGDIPlusClasses, Vcl.ExtCtrls, SkinData, DynamicSkinForm, cxClasses, System.StrUtils, ComObj, ActiveX;

type
  TFrmMain = class(TForm)
    MainPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Image1: TImage;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinData1: TspSkinData;
    spCompressedStoredSkin1: TspCompressedStoredSkin;
    cxTabSheet5: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure MainPageClick(Sender: TObject);
    procedure FrmNutrients1SpeedButton1Click(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure cxTabSheet5Show(Sender: TObject);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure cxTabSheet4Exit(Sender: TObject);

  private
    { Private declarations }
    procedure CaptionConfig;
  public
    { Public declarations }
    //function CreateID(eDate:TDateTime):string;
    //function CreateGUID:string;
  end;

var
  FrmMain: TFrmMain;
  function calglucosevol(gpercent,wavol:double):double; stdcall; external 'ppncal.dll';  // Dextrose Cal //
  function calvitavol(cndose,smdose,wt:double):double; stdcall; external 'ppncal.dll'; // Vitalipid Cal //
  function calsmofvol(wt,ldose:double):double; stdcall; external 'ppncal.dll'; // SMOF lipid cal //
  function calclinoleicvol(wt,ldose:double):double; stdcall; external 'ppncal.dll'; // clinoleic cal //
  function calsoluvol(wt:double):double; stdcall; external 'ppncal.dll'; // Soluvit N cal
  function calpedivol(wt:double):double; stdcall; external 'ppncal.dll'; // Peditrace Cal //
  function calcavol(wt,cadose:double):double; stdcall; external 'ppncal.dll'; // Ca gluconate Cal //
  function calmgvol(wt,mgdose:double):double; stdcall; external 'ppncal.dll'; // MgSO4 Cal //
  function calkpovol(wt,kdose:double):double; stdcall; external 'ppncal.dll'; // K2HPO4 Cal //
  function calkclvol(wt,kdose:double):double; stdcall; external 'ppncal.dll'; // KCl Cal //
  function calnaglyvol(wt,nadose:double):double; stdcall; external 'ppncal.dll'; // Na glycophosphate Cal //
  function calnacetvol(wt,nadose:double):double; stdcall; external 'ppncal.dll'; // Na acetate Cal //
  function cal3naclvol(wt,nadose:double):double; stdcall; external 'ppncal.dll'; // 3%NaCl Cal //
  function calaminovol(wt,adose:double):double; stdcall; external 'ppncal.dll'; // Aminoven Cal //
  function phosdosena(wt,napvol:double):double; stdcall; external 'ppncal.dll'; // Phos from Na Glycophosphate //
  function phosdosekp(wt,kpvol:double):double; stdcall; external 'ppncal.dll'; // phos from Pot Phosphate //

  function wSmof(LVol,vSmof,k:double):double; stdcall; external 'ppncal.dll';
  function LVol(vSmof,vVita:double):double; stdcall; external 'ppncal.dll';
  function LConstant(vSmof,vVita:double):double; stdcall; external 'ppncal.dll';
  function wConstant(wVol:double):double; stdcall; external 'ppncal.dll';
  function wNutrient(vNutrient,k:double):double; stdcall; external 'ppncal.dll';


implementation

{$R *.dfm}

uses MainDm,  JobEntryFrm, ScanDm, NutrientsFrm, ProtocolFrm, EntryFrm,
  JobListFrm;

procedure TFrmMain.CaptionConfig;
begin
  Caption := '';
  Caption := 'Pediatrics Parenteral Nutition';
  Caption := Caption + ' - ' +MainPage.ActivePage.Caption;
end;



procedure TFrmMain.cxTabSheet2Show(Sender: TObject);
begin
  DmScan.DsDocScan.DisableControls;
  DmScan.DsDocScan.Close;
  DmScan.DsDocScan.Active := True;
  DmScan.DsDocScan.EnableControls;
{  if not Assigned(FrmJobEntry) then
  begin
    Application.CreateForm(TFrmJobEntry,FrmJobEntry);
    FrmJobEntry.ManualDock(Sender as TcxTabSheet);
    FrmJobEntry.Show;
    FrmJobEntry.WindowState := wsMaximized;
  end;}
  if not Assigned(FrmEntry) then
  begin
    Application.CreateForm(TFrmEntry,FrmEntry);
    FrmEntry.ManualDock(Sender as TcxTabSheet);
    FrmEntry.Show;
    FrmEntry.WindowState := wsMaximized;
  end;
end;

procedure TFrmMain.cxTabSheet3Show(Sender: TObject);
begin
  {DmMain.DsNutrients.DisableControls;
  DmMain.DsNutrients.Close;
  DmMain.DsNutrients.Active := True;
  DmMain.DsNutrients.EnableControls;}
  if not Assigned(FrmJobList) then
  begin
    Application.CreateForm(TFrmJobList,FrmJobList);
    FrmJobList.ManualDock(Sender as TcxTabSheet);
    FrmJobList.Show;
    FrmJobList.WindowState := wsMaximized;
  end;
end;

procedure TFrmMain.cxTabSheet4Exit(Sender: TObject);
begin
  DmMain.DsNutrients.Close;
end;

procedure TFrmMain.cxTabSheet4Show(Sender: TObject);
begin
  DmMain.DsNutrients.DisableControls;
  DmMain.DsNutrients.Close;
  DmMain.DsNutrients.Active := True;
  DmMain.DsNutrients.EnableControls;
  if not Assigned(FrmNutrients) then
  begin
    Application.CreateForm(TFrmNutrients,FrmNutrients);
    FrmNutrients.ManualDock(Sender as TcxTabSheet);
    FrmNutrients.Show;
    FrmNutrients.WindowState := wsMaximized;
  end;
end;


procedure TFrmMain.cxTabSheet5Show(Sender: TObject);
begin
  if not Assigned(FrmProtocol) then
  begin
    Application.CreateForm(TFrmProtocol,FrmProtocol);
    FrmProtocol.ManualDock(Sender as TcxTabSheet);
    FrmProtocol.Show;
    FrmProtocol.WindowState := wsMaximized;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  //WindowState := wsMaximized;
  MainPage.ActivePage := cxTabSheet1;
  Caption := Caption + ' - ' +MainPage.ActivePage.Caption;
end;

procedure TFrmMain.FrmNutrients1SpeedButton1Click(Sender: TObject);
begin
//  FrmNutrients1.SpeedButton1Click(Sender);
  MainPage.ActivePage := cxTabSheet1;
end;

procedure TFrmMain.MainPageClick(Sender: TObject);
begin
  CaptionConfig;
end;

end.
