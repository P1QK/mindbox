unit JobEntryFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxGrid, cxTextEdit, cxCheckBox, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, System.StrUtils,
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers, ieview,
  imageenview, dbimageen, cxTrackBar, Vcl.Buttons, cxDBEdit, Vcl.DBCtrls,ComObj,ActiveX,
  cxCalc, Vcl.StdCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, MemDS,
  DBAccess, Uni, ShellApi, Vcl.Grids, Vcl.DBGrids;

type
  TFrmJobEntry = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Bevel1: TBevel;
    SrcScan: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxDateEdit1: TcxDateEdit;
    cxTrackBar1: TcxTrackBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SrcOrderH: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label7: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label8: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label9: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label10: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label11: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Label12: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    SpeedButton3: TSpeedButton;
    Bevel5: TBevel;
    SpeedButton4: TSpeedButton;
    cxComboBox1: TcxComboBox;
    Label13: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    SpeedButton5: TSpeedButton;
    SrcOrderD: TDataSource;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    SrcWards: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    QrDetail: TUniQuery;
    Timer1: TTimer;
    DBNavigator1: TDBNavigator;
    qrInsertDetail: TUniQuery;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    QrCalvol: TUniQuery;
    Label14: TLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    DsCalVol: TUniQuery;
    ImageEnView1: TImageEnView;
    QrWorking: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cxDBTextEdit3Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure ShowDetail;
    function HNFill(sHN:string):string;
    procedure GetPat(cHN:string);
    procedure AdjustImage(iPos:integer);
    procedure ShowImage;
    procedure ChgPath(eDate:TDateTime);
    function CreateID(eDate:TDateTime):string;
    function CreateGUID:string;
    //function WaterVol
  public
    { Public declarations }
    procedure GetWaterPVol(cID : string);
    procedure CalVolAll;
    procedure CalWorking;
    procedure ConnectLan(sFile:PChar);
    procedure CalWF;
  end;

var
  FrmJobEntry: TFrmJobEntry;
  sFile : string;
  sD,sM,sY : word;
  sHH,sMM,sSS,sMS : word;
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

uses ScanDm, MainDm, HosXPDm;



procedure TFrmJobEntry.AdjustImage(iPos: integer);
begin
  ImageEnView1.IEBitmap.ChannelOffset[0] := iPos;
  ImageEnView1.IEBitmap.ChannelOffset[1] := iPos;
  ImageEnView1.IEBitmap.ChannelOffset[2] := iPos;
  ImageEnView1.Update;
end;

procedure TFrmJobEntry.CalVolAll;
var
  DsHor : TUniQuery;
  mySrc : TDatasource;
  dWt : double;
  nVol : double;
  nLip : double;
  wVol,lVol : double;
  wRate,lRate : double;
  //nGlu : double;
// คำนวนปริมาตรหลังจากใส่ข้อมูล Dose แล้ว //
begin
  dWt := StrToFloat(cxDBCalcEdit1.Text);
  QrDetail.Close;
  QrDetail.SQL.Clear;
  QrDetail.SQL.Add('SELECT * FROM orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39);
  QrDetail.ExecSQL;
  QrDetail.First;
 // ShowMessage('1');
  DmMain.DsOrderH.Edit;
try
  while not(QrDetail.Eof) do
  begin
    if (QrDetail['or_nutrient']='01') or (QrDetail['or_nutrient']='02') then // Aminoven - Amiparen //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calaminovol(dWt,QrDetail['or_dose']);
      DmMain.DsOrderD.Post;
    end;
    if(QrDetail['or_nutrient']='03') then // 3% NaCl //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := cal3naclvol(dWt,QrDetail['or_dose']);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='04') then // KCl //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calkclvol(dWt,QrDetail['or_dose']);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='05') then // K phosphate //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calkpovol(dWt,QrDetail['or_dose']);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='06') then // 50% MgSO4 //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calmgvol(dWt,QrDetail['or_dose']);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='07') then // 10% Ca gluconate //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calcavol(dWt,QrDetail['or_dose']);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='08') then // Peditrace //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calpedivol(dWt);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='09') then // Soluvit N //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calsoluvol(dWt);
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='13') then // Smoff lipid //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calsmofvol(dWt,QrDetail['or_dose']);
      nLip := DmMain.DsOrderD['or_nutvol'];
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='14') then // Vitalipid //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calvitavol(0,nLip,dWt);
      DmMain.DsOrderD.Post;
    end;
    // Cal Water Vol //
      //DmMain.DsOrderH.Post;
      DsCalVol.Close;
      DsCalVol.SQL.Clear;
      DsCalVol.SQL.Add('SELECT Sum(or_nutvol) as lipidV FROM orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39+'AND or_phase='+#39+'L'+#39);
      DsCalVol.ExecSQL;

      //ShowMessage(FloatToStr(DsCalVol['lipidV']));
      //DmMain.DsOrderH.Edit;
      //DmMain.DsOrderH['or_lipidvol'] := DsCalVol['lipidV'];
      //DmMain.DsOrderH['or_lipidrate']:= DmMain.DsOrderH['or_lipidvol']/24;
      lVol := DsCalVol['lipidV'];
      lRate := lVol/24;
      //ShowMessage('1');
      //DmMain.DsOrderH['or_watervol'] := DmMain.DsOrderH['or_total']-DsCalVol['lipidV'];
      //DmMain.DsOrderH['or_waterrate']:= DmMain.DsOrderH['or_watervol']/24;
      wVol := DmMain.DsOrderH['or_total']-lVol;
      wRate:= wVol/24;
      DsHor := TUniQuery.Create(nil);
      DsHor.Connection := DmMain.cnMain;
      DsHor.Close;DsHor.SQL.Clear;
      DsHor.SQL.Add(('Update orderh Set or_watervol=:w1,or_waterrate=:w2,or_lipidvol=:l1,or_lipidrate=:l2 WHERE or_id='+#39+cxDBTextEdit1.Text+#39));
      DsHor.ParamByName('w1').AsFloat := wVol;
      DsHor.ParamByName('w2').AsFloat := wRate;
      DsHor.ParamByName('l1').AsFloat := lVol;
      DsHor.ParamByName('l2').AsFloat := lRate;
      DsHor.ExecSQL;
      //DmMain.DsOrderH.Post;
      //DmMain.DsOrderH.Edit;
      //ShowMessage('2');
      DsCalVol.Close;
      DsCalVol.SQL.Clear;
      DsCalVol.SQL.Add('SELECT sum(or_nutvol) as wphavol FROM orderd WHERE or_id='#39+cxDBTextEdit1.Text+#39+'AND or_phase='#39+'W'+#39+'AND or_nutrient<>'+#39+'11'+#39);
      DsCalVol.ExecSQL;
    // Cal Dextrose Vol //
    if (QrDetail['or_nutrient']='10') then // Dextrose //
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := calglucosevol(QrDetail['or_dose'],DmMain.DsOrderH['or_watervol']);
      //nGlu := DmMain.DsOrderD['or_nutvol'];
      DmMain.DsOrderD.Post;
    end;
    if (QrDetail['or_nutrient']='11') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDbTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrDetail['or_nutrient'],[]);
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_nutvol'] := DmMain.DsOrderH['or_watervol']- DsCalVol['wphavol'];
      DmMain.DsOrderD.Post;
    end;
      //DmMain.DsOrderH.Post;
    QrDetail.Next;
  end;
  DmMain.DsOrderH.Post;
except
end;
end;

procedure TFrmJobEntry.CalWF;
var
  iRec : integer;
  vLip,kLip : double;
  vSmof,vVita : double;
  vWater,kWater : double;
  qrLoop : TUniQuery;
  SrcLoop : TDataSource;
begin
try
  DmMain.DsOrderH.Locate('or_id',cxDBTextEdit1.Text,[]);
  vWater := DmMain.DsOrderH['or_watervol'];
  qrLoop := TUniQuery.Create(nil);
  qrLoop.Connection := DmMain.cnMain;
  qrLoop.Close;qrLoop.SQL.Clear;
  qrLoop.SQL.Add('SELECT or_nutrient,or_nutvol FROM orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39);
  qrLoop.ExecSQL;
  qrLoop.Locate('or_nutrient','13',[]);
  vSmof := qrLoop['or_nutvol'];
  qrLoop.Locate('or_nutrient','14',[]);
  vVita := qrLoop['or_nutvol'];
  vLip := vSmof+vVita;
  kLip := (vLip+20)/vLip;
except
end;
try
  DmMain.DsOrderH.Edit;
  DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
  DmMain.DsOrderD.Locate('or_nutrient','13',[]);
  DmMain.DsOrderD.Edit;
  DmMain.DsOrderD['or_wfvol'] := wSmof(vLip,vSmof,kLip);
  DmMain.DsOrderD.Post;
  DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
  DmMain.DsOrderD.Locate('or_nutrient','14',[]);
  DmMain.DsOrderD.Edit;
  DmMain.DsOrderD['or_wfvol'] := wVita(vLip,vVita,kLip);
  DmMain.DsOrderD.Post;
  DmMain.DsOrderH.Post;
except
end;
try
  qrLoop.Close;qrLoop.SQL.Clear;
  qrLoop.SQL.Add('SELECT SUM(or_nutvol) as wVol FROM orderd WHERE or_phase='+QuotedStr('W')+' AND or_id='+#39+cxDBTextEdit1.Text+#39);
  qrLoop.ExecSQL;
  //DmMain.DsOrderH.Locate('or_id',cxDBTextEdit1.Text,[]);
  //vWater := qrLoop['wVol'];
  //vWater := DmMain.DsOrderH['or_watervol'];
  //ShowMessage(FloatToStr(vWater));
  kWater := wConstant(vWater);
finally
  qrLoop.Close;
end;
try
  qrLoop.Close;qrLoop.SQL.Clear;
  qrLoop.SQL.Add('SELECT * FROM orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39+'AND or_phase='+#39+'W'+#39);
  qrLoop.ExecSQL;
  qrLoop.First;
  while not(qrLoop.Eof) do
  begin
    qrLoop.Edit;
    if (qrLoop['or_nutrient']<>'12') then qrLoop['or_wfvol'] := wNutrient(qrLoop['or_nutvol'],kWater)
    else if (qrLoop['or_nutrient']='12') then
    begin
      qrLoop['or_dose'] := vWater;
      qrLoop['or_nutvol'] := qrLoop['or_dose']/500;
      qrLoop['or_wfvol'] := qrLoop['or_dose']/500;
    end;
    qrLoop.Post;
    qrLoop.Next;
  end;
finally
  DmMain.DsOrderD.Refresh;
end;
end;
////////////////////////////////////////////////////////////////////////
procedure TFrmJobEntry.CalWorking;
var
  vLip,vWater : double;
  kLip,kWater : double;
  vSmof,vVita : double;
begin
  Try
    QrWorking.Close;QrWorking.SQL.Clear;
    QrWorking.SQL.Add('SELECT or_nutrient,or_nutvol FROM orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39);
    QRWorking.ExecSQL;
    QrWorking.Locate('or_nutrient','13',[]);
    vSmof := QrWorking['or_nutvol'];
    QrWorking.Locate('or_nutrient','14',[]);
    vVita := QrWorking['or_nutvol'];
    vLip := vSMOF+vVita;
    kLip := (vLip+20)/vLip;
  except
  End;
  // SMOFF //
  //DmMain.DsOrderD.Edit;
  DmMain.DsOrderH.Edit;
  DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
  DmMain.DsOrderD.Locate('or_nutrient','13',[]);
  //DmMain.DsOrderH.Edit;
  DmMain.DsOrderD.Edit;
  DmMain.DsOrderD['or_wfvol'] := wSmof(vLip,vSmof,kLip);
  DmMain.DsOrderD.Post;
  //DmMain.DsOrderH.Post;
  ShowMessage('Smoff');
  // Vitalipid //
  DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
  DmMain.DsOrderD.Locate('or_nutrient','14',[]);
  //DmMain.DsOrderH.Edit;
  DmMain.DsOrderD.Edit;
  DmMain.DsOrderD['or_wfvol'] := wVita(vLip,vVita,kLip);
  DmMain.DsOrderD.Post;
  //DmMain.DsOrderH.Post;
  ShowMessage('Vitalipid');
  //DmMain.DsOrderH.Post;
  // Water Phase Constant //
  QrWorking.Close;QrWorking.SQL.Clear;
  QRWorking.SQL.Add('SELECT SUM(or_nutvol) as wVol FROM orderd WHERE or_id='#39+cxDBTextEdit1.Text+#39+'AND or_phase='+#39+'W'+#39);
  QrWorking.ExecSQL;
  vWater := QrWorking['wVol'];
  //ShowMessage(FloatToStr(vWater));
  kWater := wConstant(vWater);
  QrWorking.Close;QrWorking.SQL.Clear;
  QrWorking.SQL.Add('SELECT * FROM orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39+'AND or_phase='+#39+'W'+#39);
  QrWorking.ExecSQL;
//  DmMain.DsOrderH.Edit;
  //ShowMessage(IntToStr(QrWorking.RecordCount));
  QrWorking.First;
  //DmMain.DsOrderH.Edit;
  while not(QrWorking.Eof) do
  begin
    if (QrWorking['or_nutrient']='01') or (QrWorking['or_nutrient']='02') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='03') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='04') or (QrWorking['or_nutrient']='05') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='06') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='07') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='08') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='09') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='10') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      dmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='11') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_wfvol'] := wNutrient(QrWorking['or_nutvol'],kWater);
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    if (QrWorking['or_nutrient']='12') then
    begin
      DmMain.DsOrderD.Locate('or_id',cxDBTextEdit1.Text,[]);
      DmMain.DsOrderD.Locate('or_nutrient',QrWorking['or_nutrient'],[]);
      DmMain.DsOrderH.Edit;
      DmMain.DsOrderD.Edit;
      DmMain.DsOrderD['or_dose']  := vWater;
      DmMain.DsOrderD['or_nutvol']:= vWater/500;
      DmMain.DsOrderD['or_wfvol'] := vWater/500;
      DmMain.DsOrderD.Post;
      DmMain.DsOrderH.Post;
    end;
    //DmMain.DsOrderH.Post;
    QRWorking.Next;
//    DmMain.DsOrderH.Post;
  end;
//ShowMessage('order h');
end;

procedure TFrmJobEntry.ChgPath(eDate: TDateTime);
var
  nDate : string;
begin
  DecodeDate(eDate,sY,sM,sD);
  nDate := IntToStr(sY)+RightStr('00'+IntToStr(sM),2)+RightStr('00'+IntToStr(sD),2);
  DmScan.DsDocScan.Close;
  DmScan.DsDocScan.ParamByName('cDate').AsString := nDate;
  DmScan.DsDocScan.Active := True;
end;

procedure TFrmJobEntry.ConnectLan(sFile: PChar);
begin
  ShellExecute(Handle,'open',sFile,nil,nil,SW_HIDE);
end;

function TFrmJobEntry.CreateGUID: string;
var
  Uid : TGuid;
begin
  result := '';
  if CoCreateGuid(Uid)=s_ok then
    result := GUIDToString(Uid);
end;

function TFrmJobEntry.CreateID(eDate: TDateTime): string;
begin
  DecodeDate(eDate,sY,sM,sD);
  DecodeTime(eDate,sHH,sMM,sSS,sMS);
  Result := IntToStr(sY)+RightStr('00'+IntToStr(sM),2)+RightStr('00'+IntToStr(sD),2)+'-'+
            RightStr('00'+IntToStr(sHH),2)+RightStr('00'+IntToStr(sMM),2)+RightStr('00'+IntToStr(sSS),2);
end;

procedure TFrmJobEntry.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  ChgPath(cxDateEdit1.Date);
end;

procedure TFrmJobEntry.cxDBTextEdit3Exit(Sender: TObject);
begin
if (cxDBTextEdit3.Text<> '000000000') then
begin
  cxDBTextEdit3.Text := HNFill(cxDBTextEdit3.Text);
  GetPat(cxDBTextEdit3.Text);
end;
end;

procedure TFrmJobEntry.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ShowImage;
end;

procedure TFrmJobEntry.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex,2)=0 then
    ACanvas.Brush.Color := RGB(255,255,192)
  else
    ACanvas.Brush.Color := RGB(192,255,255);
end;

procedure TFrmJobEntry.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  AdjustImage(cxTrackBar1.Position);
end;

procedure TFrmJobEntry.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  ChgPath(cxDateEdit1.Date);
  //cxDBDateEdit1.Date := Date;
  Width := 1920;
  Height := 1280;
  Position := poScreenCenter;
  ConnectLan('connect.bat');
  ShowImage;
end;

procedure TFrmJobEntry.GetPat(cHN: string);
begin
  cHN := cxDBTextEdit3.Text;
  DmHosXP.DsPatients.Close;
  DmHosXP.DsPatients.SQL.Clear;
  DmHosXP.DsPatients.SQL.Add('SELECT * FROM patient WHERE hn='#39+cHN+#39);
  DmHosXP.DsPatients.Active := True;
  DmMain.DsOrderHor_patname.Value := DmHosXP.DsPatients['pname']+DmHosXP.DsPatients['fname']+' '+DmHosXP.DsPatients['lname'];
end;

procedure TFrmJobEntry.GetWaterPVol(cID: string);
begin
  if cID<>'' then
  begin
    DmMain.DsWaterPhase.Close;
    DmMain.DsWaterPhase.SQL.Clear;
    DmMain.DsWaterPhase.SQL.Add('SELECT SUM(or_nutvol) as wVol FROM orderd WHERE or_id=cID');
    DmMain.DsWaterPhase.ExecSQL;
    DmMain.DsOrderH.Edit;
    DmMain.DsOrderH['or_watervol'] := DmMain.DsWaterPhase['wVol'];
    DmMain.DsOrderH.Post;
  end;
end;

function TFrmJobEntry.HNFill(sHN: string): string;
begin
if sHN<>'' then
  result := RightStr('000000000'+sHN,9)
else
  Abort;
end;

procedure TFrmJobEntry.ShowDetail;
var
  //cOr : string;
  i : integer;
  nRec : integer;
begin
if cxComboBox1.ItemIndex=0 then
  begin
    QrDetail.Close;
    QrDetail.SQL.Clear;
    QrDetail.SQL.Add('SELECT * FROM regd WHERE reg_id='+#39+'01'+#39+' ORDER BY reg_order ASC');
    QrDetail.ExecSQL;
  end
  else if cxComboBox1.ItemIndex=1 then
  begin
    QrDetail.Close;
    QrDetail.SQL.Clear;
    QrDetail.SQL.Add('SELECT * FROM regd WHERE reg_id='+#39+'02'+#39+' ORDER BY reg_order ASC');
    QrDetail.ExecSQL;
  end;
  QrDetail.First;
  while not(QrDetail.Eof) do
  begin
    qrInsertDetail.Close;
    qrInsertDetail.SQL.Clear;
    qrInsertDetail.SQL.Add('Insert Into orderd(or_id,or_nutrient,or_phase) value ('+#39+DmMain.DsOrderH['or_id']+#39+','+#39+qrDetail['reg_nutcode']+#39+','+#39+QrDetail['reg_phase']+#39+')');
    qrInsertDetail.ExecSQL;
    QrDetail.Next;
  end;
end;

procedure TFrmJobEntry.ShowImage;
begin
try
  sFile := '\'+DmScan.DsDocScandrive.Value+'\'+DmScan.DsDocScandir.Value+'\'+DmScan.DsDocScanpath.Value+'\'+DmScan.DsDocScanfilename.Value;
  //ImageEnDBView1.IO.LoadFromFile(sFile,0);
  //ImageEnDBView1.Update;
  ImageEnView1.IO.LoadFromFile(sFile,0);
  ImageEnView1.Update;
except
  ShowMessage('No image...!');
  Abort;
end;
end;

procedure TFrmJobEntry.SpeedButton1Click(Sender: TObject);
begin
  ImageEnView1.IEBitmap.Rotate(90);
  ImageEnView1.Update;
end;

procedure TFrmJobEntry.SpeedButton2Click(Sender: TObject);
begin
  ImageEnView1.IEBitmap.Rotate(-90);
  ImageEnView1.Update;
end;

procedure TFrmJobEntry.SpeedButton3Click(Sender: TObject);
begin
  DmMain.DsOrderH.Insert;
  DmMain.DsOrderHor_id.Value := CreateID(now);
  //DmMain.DsOrderHor_guid.Value := create
  DmMain.DsOrderHor_guid.Value := CreateGUID;
  DmMain.DsOrderHor_date.Value := Date;
  ShowImage;
  cxDBTextEdit3.SetFocus;
end;

procedure TFrmJobEntry.SpeedButton4Click(Sender: TObject);
var
  mQ1 : TUniQuery;
begin
  mQ1 := TUniQuery.Create(nil);
  mQ1.Connection := DmMain.cnMain;
  if DmMain.DsOrderH.State<>dsEdit then  DmMain.DsOrderH.Edit;
  //
  Try
    mQ1.Close;mQ1.SQL.Clear;
    mQ1.SQL.Add('Delete From orderd WHERE or_id='+#39+cxDBTextEdit1.Text+#39);
    mQ1.ExecSQL;
  Finally
    mQ1.Free;
  End;
  //
  ShowDetail;
  DmMain.DsOrderD.Refresh;
  TBlobField(DmMain.DsOrderH.FieldByName('or_image')).LoadFromFile(sFile);
  DmMain.DsOrderH.Post;
end;

procedure TFrmJobEntry.SpeedButton5Click(Sender: TObject);
begin
  CalVolAll;
  ShowMessage(',,,');
  CalWF;
  //ShowMessage('ผ่าน CalVolAll');
  //DmMain.DsOrderD.Refresh;
  //ShowMessage(',,,');
  //CalWorking;
  //ShowMessage('ผ่าน CalWorking');
end;

procedure TFrmJobEntry.Timer1Timer(Sender: TObject);
var
  sDate : TDateTime;
  GetPos : TBookmark;
begin
  GetPos := DmScan.DsDocScan.GetBookmark;
  sDate := cxDateEdit1.Date;
  ChgPath(sDate);
  DmScan.DsDocScan.GotoBookmark(GetPos);
end;

end.
