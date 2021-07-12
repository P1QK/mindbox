unit JobListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons, Vcl.ExtCtrls, hyieutils,
  iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers, ieview, imageenview,
  dbimageen, Vcl.DBCtrls, cxCalc, cxDBEdit, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  MemDS, DBAccess, Uni, frxClass, frxDBSet;

type
  TFrmJobList = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxDateEdit1: TcxDateEdit;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    SrcOrHEdit: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Bevel1: TBevel;
    ImageEnDBView1: TImageEnDBView;
    Bevel2: TBevel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label8: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label9: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Label10: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    Label11: TLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Bevel3: TBevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Bevel4: TBevel;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    SrcOrDEdit: TDataSource;
    cxStyle3: TcxStyle;
    SpeedButton1: TSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    UniQuery1: TUniQuery;
    frDoc: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure FetchOrder(sDate:TDateTime);
  public
    { Public declarations }
    var sD,sM,sY : word;
    var sHH,sMM,sSS,sMS : word;
    procedure CalVol(oID:string);
    procedure CalWF(oID:string);
  end;

var
  FrmJobList: TFrmJobList;
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
  function wVita(LVol,vVita,k:double):double; stdcall; external 'ppncal.dll';
  function wSmof(LVol,vSmof,k:double):double; stdcall; external 'ppncal.dll';
  function LVol(vSmof,vVita:double):double; stdcall; external 'ppncal.dll';
  function LConstant(vSmof,vVita:double):double; stdcall; external 'ppncal.dll';
  function wConstant(wVol:double):double; stdcall; external 'ppncal.dll';
  function wNutrient(vNutrient,k:double):double; stdcall; external 'ppncal.dll';

implementation

{$R *.dfm}

uses JobEntryFrm, MainDm;

procedure TFrmJobList.CalVol(oID:string);
var
  vWater,vLipid,vTotal : double;
  smVol : double;
  fWt : double;
  qrDetail : TUniQuery;
begin
try
  DmMain.DsOrHEdit.Locate('or_id',oID,[]);
  //DmMain.DsOrderH.Locate('or_id',oID,[]);
  fWt := DmMain.DsOrHEdit['or_wt'];
  vTotal := DmMain.DsOrHEdit['or_total'];
  qrDetail := TUniQuery.Create(nil);
  qrDetail.Connection := DmMain.cnMain;
  qrDetail.Close;qrDetail.SQL.Clear;
  qrDetail.SQL.Add('SELECT * FROM orderd WHERE or_id='+#39+oID+#39);
  qrDetail.ExecSQL;
  qrDetail.First;
  DmMain.DsOrHEdit.Edit;
  while not(qrDetail.Eof) do
  begin
    qrDetail.Edit;
    if (qrDetail['or_nutrient']='01') or (qrDetail['or_nutrient']='02') then qrDetail['or_nutvol'] := calaminovol(fWt,qrDetail['or_dose'])
    else if (qrDetail['or_nutrient']='03') then qrDetail['or_nutvol'] := cal3naclvol(fWt,qrDetail['or_dose'])
    else if (qrDetail['or_nutrient']='04') then qrDetail['or_nutvol'] := calkclvol(fWt,qrDetail['or_dose'])
    else if (qrDetail['or_nutrient']='05') then qrDetail['or_nutvol'] := calkpovol(fWt,qrDetail['or_dose'])
    else if (qrDetail['or_nutrient']='06') then qrDetail['or_nutvol'] := calmgvol(fWt,qrDetail['or_dose'])
    else if (qrDetail['or_nutrient']='07') then qrDetail['or_nutvol'] := calcavol(fWt,qrDetail['or_dose'])
    else if (qrDetail['or_nutrient']='08') then qrDetail['or_nutvol'] := calpedivol(fWt)
    else if (qrDetail['or_nutrient']='09') then qrDetail['or_nutvol'] := calsoluvol(fWt)
    else if (qrDetail['or_nutrient']='13') then
    begin
      qrDetail['or_nutvol'] := calsmofvol(fWt,qrDetail['or_dose']);
      smVol := qrDetail['or_nutvol'];
    end
    else if (qrDetail['or_nutrient']='14') then qrDetail['or_nutvol'] := calvitavol(0,smVol,fWt);
    qrDetail.Post;
    qrDetail.Next;
  end;
  qrDetail.Close;qrDetail.SQL.Clear;
  qrDetail.SQL.Add('SELECT SUM(or_nutvol) as LVol FROM orderd WHERE or_id='+#39+oID+#39+'AND or_phase='+#39+'L'+#39);
  qrDetail.ExecSQL;
  vLipid := qrDetail['LVol'];
  vWater := vTotal-vLipid;
  DmMain.DsOrHEdit['or_lipidvol'] := vLipid;
  DmMain.DsOrHEdit['or_lipidrate']:= vLipid/24;
  DmMain.DsOrHEdit['or_watervol'] := vWater;
  DmMain.DsOrHEdit['or_waterrate']:= vWater/24;
  DmMain.DsOrHEdit.Post;
finally
  DmMain.DsOrDEdit.Refresh;
end;
end;

procedure TFrmJobList.CalWF(oID: string);
var
  qrDetail : TUniQuery;
  mySrc : TDataSource;
  vSmof,vVita : double;
  vLipid,vWater : double;
  kLipid,kWater : double;
begin
try
  qrDetail := TUniQuery.Create(nil);
  qrDetail.Connection := DmMain.cnMain;
  //mySrc := TDatasource.Create(nil);mySrc.DataSet := qrDetail;
  //DBGrid1.DataSource := mySrc;
  qrDetail.Close;qrDetail.SQL.Clear;
  qrDetail.SQL.Add('SELECT or_nutrient,or_nutvol,or_wfvol FROM orderd WHERE or_id='+#39+oID+#39+'AND or_phase='+#39+'L'+#39);
  qrDetail.ExecSQL;
  //ShowMessage(inttostr(QrDetail.RecordCount));
  qrDetail.Locate('or_nutrient','13',[]);
  vSmof := qrDetail['or_nutvol'];
  qrDetail.Locate('or_nutrient','14',[]);
  vVita := qrDetail['or_nutvol'];
  vLipid := vVita+vSmof;
  kLipid := (vLipid+20)/vLipid;
  DmMain.DsOrHEdit.Edit;
  DmMain.DsOrDEdit.Locate('or_id',cxDBTextEdit1.Text,[]);
  DmMain.DsOrDEdit.Locate('or_nutrient','13',[]);
  DmMain.DsOrDEdit.Edit;
  DmMain.DsOrDEdit['or_wfvol'] := wSmof(vLipid,vSmof,kLipid);
  DmMain.DsOrDEdit.Post;
  DmMain.DsOrDEdit.Locate('or_id',cxDBTextEdit1.Text,[]);
  DmMain.DsOrDEdit.Locate('or_nutrient','14',[]);
  DmMain.DsOrDEdit.Edit;
  DmMain.DsOrDEdit['or_wfvol'] := wVita(vLipid,vVita,kLipid);
  DmMain.DsOrDEdit.Post;
  Dmmain.DsOrHEdit.Post;
  {while not(qrDetail.Eof) do
  begin
    qrDetail.Edit;
    if (qrDetail['or_nutrient']='13') then qrDetail['or_wfvol'] := wSmof(vLipid,vSmof,kLipid)
    else if (qrDetail['or_nutrient']='14') then qrDetail['or_wfvol'] := wVita(vLipid,vVita,kLipid);
    qrDetail.Post;
  end;}
  //DmMain.DsOrHEdit.Post;
  //ShowMessage('Lipid OK');
except
end;
try
  qrDetail.Close;qrDetail.SQL.Clear;
  qrDetail.SQL.Add('SELECT SUM(or_nutvol) as wVol FROM orderd WHERE or_id='+#39+oID+#39+'AND or_phase='+#39+'W'+#39);
  qrDetail.ExecSQL;
  vWater := qrDetail['wVol'];
  kWater := wConstant(vWater);
finally
  //qrDetail.Close;
end;
try
  qrDetail.Close;qrDetail.SQL.Clear;
  qrDetail.SQL.Add('SELECT or_nutrient,or_dose,or_nutvol,or_wfvol FROM orderd WHERE or_id='+#39+oID+#39+'AND or_phase='+#39+'W'+#39);
  qrDetail.ExecSQL;
  //ShowMessage(IntToStr(qrDetail.RecordCount));
  qrDetail.First;
  //DmMain.DsOrHEdit.Edit;
  while not(qrDetail.Eof) do
  begin
    qrDetail.Edit;
    if (qrDetail['or_nutrient']<>'12') then qrDetail['or_wfvol'] := wNutrient(qrDetail['or_nutvol'],kWater)
    else if (qrDetail['or_nutrient']='12') then
    begin
      qrDetail['or_dose'] := vWater;
      qrDetail['or_nutvol'] := vWater/500;
      qrDetail['or_wfvol'] := qrDetail['or_nutvol'];
    end;
    qrDetail.Post;
    qrDetail.Next;
  end;
finally
  //DmMain.DsOrHEdit.Post;
  DmMain.DsOrDEdit.Refresh;
end;
end;

procedure TFrmJobList.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  FetchOrder(cxDateEdit1.Date);
end;

procedure TFrmJobList.FetchOrder(sDate: TDateTime);
begin
  DmMain.DsOrHEdit.Close;
  DmMain.DsOrHEdit.ParamByName('cDate').AsDate := sDate;
  DmMain.DsOrHEdit.Active := True;
end;

procedure TFrmJobList.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  FetchOrder(cxDateEdit1.Date);
end;

procedure TFrmJobList.SpeedButton1Click(Sender: TObject);
begin
  CalVol(cxDBTextEdit1.Text);
//  Showmessage('Cal Volume OK');
  CalWF(cxDBTextEdit1.Text);
end;

end.
