unit EntryFrm;

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
  cxGrid, cxCheckBox, cxTextEdit, System.StrUtils, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls,
  cxDBEdit, Vcl.StdCtrls, Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers,
  iexRulers, ieview, imageenview, dbimageen, Vcl.Buttons, cxTrackBar, ComObj, ActiveX, Uni,
  cxDBNavigator, Vcl.Grids, Vcl.DBGrids;

type
  TFrmEntry = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    SrcScan: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxDateEdit1: TcxDateEdit;
    Timer1: TTimer;
    Bevel1: TBevel;
    SrcOrderH: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label12: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    SrcWard: TDataSource;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cxTrackBar1: TcxTrackBar;
    Bevel3: TBevel;
    ImageEnView1: TImageEnView;
    SpeedButton3: TSpeedButton;
    cxComboBox1: TcxComboBox;
    Label13: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Bevel4: TBevel;
    Label14: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Bevel5: TBevel;
    SrcOrderD: TDataSource;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    SpeedButton4: TSpeedButton;
    cxDBNavigator1: TcxDBNavigator;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cxDBTextEdit3Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    function CrGUID:string;
  public
    { Public declarations }
    var sD,sM,sY : word;
    var sHH,sMM,sSS,sMS : word;
    var sDrive,sDir,sPath : string;
    var imgFile : string;
    function Date2Text(eDate:TDateTime):String;
    procedure FetchScan(sDate:string);
    procedure ShowImage;
    procedure AdjustImage(iPos:integer);
    function CreateID(eDate:TDateTime):string;
    procedure ShowDetail;
    procedure FetchPat(cHN:string);
    procedure CalTPNVol(vTotal : double;cID : string;dWT : double);
  end;

var
  FrmEntry: TFrmEntry;

implementation

{$R *.dfm}

uses ScanDm, MainDm, HosXPDm;

procedure TFrmEntry.AdjustImage(iPos: integer);
begin
  ImageEnView1.IEBitmap.ChannelOffset[0] := iPos;
  ImageEnView1.IEBitmap.ChannelOffset[1] := iPos;
  ImageEnView1.IEBitmap.ChannelOffset[2] := iPos;
  ImageEnView1.Update;
end;


procedure TFrmEntry.CalTPNVol(vTotal: double; cID: string; dWT: double);   // Calculate TPN Vol //
var
  lVol,wVol : double;
  qrDetail:TUniQuery;
  tempSrc : TDataSource;
begin
try
  qrDetail := TUniQuery.Create(nil);
  qrDetail.Connection := DmMain.cnMain;
  qrDetail.Close;qrDetail.SQL.Clear;
  qrDetail.SQL.Add('SELECT * FROM orderd WHERE or_id='+QuotedStr(cID));
  qrDetail.ExecSQL;
//  ShowMessage(IntToStr(qrDetail.RecordCount));
  qrDetail.First;
  while not(qrDetail.Eof) do
  begin
    if (qrDetail['or_nutrient']='13') then
    begin

    end;
  end;
finally
  qrDetail.Free;
  tempSrc.Free;
end;
end;

function TFrmEntry.CreateID(eDate: TDateTime): string;
begin
  DecodeDate(eDate,sY,sM,sD);
  DecodeTime(eDate,sHH,sMM,sSS,sMS);
  result := IntToStr(sY)+RightStr('00'+IntToStr(sM),2)+RightStr('00'+IntToStr(sD),2)+'-'+
            RightStr('00'+IntToStr(sHH),2)+RightStr('00'+IntToStr(sMM),2)+RightStr('00'+IntToStr(sSS),2);
end;

function TFrmEntry.CrGUID: string;
var
  Uid : TGUID;
begin
  result := '';
  if CoCreateGuid(Uid)=s_ok then
    result := GuidToString(Uid);
end;

procedure TFrmEntry.cxDBTextEdit3Exit(Sender: TObject);
begin
try
  cxDBTextEdit3.Text := RightStr('000000000'+cxDBTextEdit3.Text,9);
  FetchPat(cxDBTextEdit3.Text);
except
end;
end;

procedure TFrmEntry.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowImage;
end;

procedure TFrmEntry.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.GetValue(AviewInfo.GridRecord.RecordIndex,0)=0 then
    Acanvas.Brush.Color := RGB(128,128,255)
  else
    ACanvas.Brush.Color := RGB(255,128,128);
end;

procedure TFrmEntry.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  AdjustImage(cxTrackBar1.Position);
end;

function TFrmEntry.Date2Text(eDate: TDateTime): String;
begin
  DecodeDate(eDate,sY,sM,sD);
  DecodeTime(eDate,sHH,sMM,sSS,sMS);
  result := IntToStr(sY)+RightStr('00'+IntToStr(sM),2)+RightStr('00'+IntToStr(sD),2);
end;

procedure TFrmEntry.FetchPat(cHN: string);
begin
  DmHosXP.DsPatients.Close;DmHosXP.DsPatients.SQL.Clear;
  DmHosXP.DsPatients.SQL.Add('SELECT * FROM patient WHERE hn='+QuotedStr(cHN));
  DmHosXP.DsPatients.Active := True;
  DmMain.DsOrderH['or_patname'] := DmHosXP.DsPatients['pname']+DmHosXP.DsPatients['fname']+' '+DmHosXP.DsPatients['lname'];
end;

procedure TFrmEntry.FetchScan(sDate: string);
begin
  DmScan.DsDocScan.Close;
  DmScan.DsDocScan.ParamByName('cDate').AsString := sDate;
  DmScan.DsDocScan.Active := True;
end;

procedure TFrmEntry.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := now;
  FetchScan(Date2Text(cxDateEdit1.Date));
  ShowImage;
end;

procedure TFrmEntry.ShowDetail;
var
  myQD,QIns : TUniQuery;
begin
  QIns := TUniQuery.Create(nil);QIns.Connection := DmMain.cnMain;
  myQD := TUniQuery.Create(nil);
  myQD.Connection := DmMain.cnMain;
  myQD.Close;myQD.SQL.Clear;
  if cxComboBox1.ItemIndex=0 then
    myQD.SQL.Add('SELECT * FROM regd WHERE reg_id='+#39+'01'+#39+'ORDER By reg_order ASC')
  else if cxComboBox1.ItemIndex=1 then
    myQD.SQL.Add('SELECT * FROM regd WHERE reg_id='+#39+'02'+#39+'ORDER BY reg_order ASC');
  myQD.ExecSQL;
  myQD.First;
  while not(myQD.Eof) do
  begin
    QIns.Close;QIns.SQL.Clear;
    QIns.SQL.Add('Insert Into orderd(or_id,or_nutrient,or_phase) value ('+#39+DmMain.DsOrderH['or_id']+#39+','+#39+myQD['reg_nutcode']+#39+','+#39+myQD['reg_phase']+#39+')');
    QIns.ExecSQL;
    myQD.Next;
  end;
end;

procedure TFrmEntry.ShowImage;
begin
try
  sDrive := DmScan.DsDocScan['drive'];
  sDir := DmScan.DsDocScan['dir'];
  sPath := DmScan.DsDocScan['path'];
  imgFile := DmScan.DsDocScan['filename'];
  imgFile := '\'+sDrive+'\'+sDir+'\'+sPath+'\'+imgFile;
  ImageEnView1.IO.LoadFromFile(imgFile,0);
  ImageEnView1.Update;
except
  abort;
end;
end;

procedure TFrmEntry.SpeedButton1Click(Sender: TObject);
begin
  ImageEnView1.IEBitmap.Rotate(90);
  ImageEnView1.Update;
end;

procedure TFrmEntry.SpeedButton2Click(Sender: TObject);
begin
  ImageEnView1.IEBitmap.Rotate(-90);
  ImageEnView1.Update;
end;

procedure TFrmEntry.SpeedButton3Click(Sender: TObject);
begin
  DmMain.DsOrderH.Insert;
  DmMain.DsOrderH['or_id']  := CreateID(now);
  DmMain.DsOrderH['or_guid']:= CrGUID;
  cxDBDateEdit1.Date := Date;
  SpeedButton3.Enabled := False;
end;

procedure TFrmEntry.SpeedButton4Click(Sender: TObject);
var
  delQr : TUniQuery;
begin
try
  delQr := TUniQuery.Create(nil);delQr.Connection := DmMain.cnMain;
  if (DmMain.DsOrderH.State<>dsEdit) then DmMain.DsOrderH.Edit;
  try
    delQr.Close;delQr.SQL.Clear;
    delQr.SQL.Add('DELETE FROM orderd WHERE or_id='+QuotedStr(cxDBTextEdit1.Text));
    delQr.ExecSQL;
  finally
    delQr.Free;
  end;
  ShowDetail;
  DmMain.DsOrderD.Refresh;
  TBLOBField(DmMain.DsOrderH.FieldByName('or_image')).LoadFromFile(imgFile);
  DmMain.DsOrderH.Post;
except

end;
end;

procedure TFrmEntry.SpeedButton5Click(Sender: TObject);
begin
//   DmMain.DsOrderH.Edit;DmMain.DsOrderH.Post;
  CalTPNVol(StrToFloat(cxDBTextEdit6.Text),cxDBTextEdit1.Text,StrToFloat(cxDBTextEdit5.Text));
end;

procedure TFrmEntry.Timer1Timer(Sender: TObject);
var
  GetPos : TBookmark;
begin
  GetPos := DmScan.DsDocScan.GetBookmark;
  FetchScan(Date2Text(cxDateEdit1.Date));
  DmScan.DsDocScan.GotoBookmark(GetPos);
end;

end.
