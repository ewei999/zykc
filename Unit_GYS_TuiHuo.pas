unit Unit_GYS_TuiHuo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, cxButtons, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,System.DateUtils,Unit_GYS_TuiHuo_Edit,
  cxGroupBox;

type
  TForm_GYS_TuiHuo = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    cxButton4: TcxButton;
    actmgr1: TActionManager;
    act_close: TAction;
    cxlbl2: TcxLabel;
    cxDate_qishi: TcxDateEdit;
    cxlbl3: TcxLabel;
    cxDate_zhongzhi: TcxDateEdit;
    cxButton3: TcxButton;
    act1: TAction;
    act2: TAction;
    cxButton1: TcxButton;
    act3: TAction;
    act4: TAction;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    qry_gl: TADOQuery;
    ds_gl: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    qry_mingxi: TADOQuery;
    ds_mingxi: TDataSource;
    procedure act_closeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act4Execute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_GYS_TuiHuo: TForm_GYS_TuiHuo;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}

procedure TForm_GYS_TuiHuo.act1Execute(Sender: TObject);
begin
  Form_GYS_TuiHuo_Edit := TForm_GYS_TuiHuo_Edit.Create(nil);
  try
    Form_GYS_TuiHuo_Edit.zt := '新增';
    Form_GYS_TuiHuo_Edit.ShowModal;
    if Form_GYS_TuiHuo_Edit.baocun then
    begin
      qry_mingxi.Close;
      qry_gl.Requery();
    end;
  finally
    FreeAndNil(Form_GYS_TuiHuo_Edit);
  end;
end;

procedure TForm_GYS_TuiHuo.act4Execute(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_qishi.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDate_qishi.Text)+' ';
  if cxDate_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDate_zhongzhi.Date,1)))+' ';

  qry_gl.Active := false;
  qry_gl.SQL.text := 'select *,zt=(case 状态 when 0 then ''草稿'' when 1 then ''已提交'' when 4 then ''退回''  when 2 then ''同意'' end),'+
    ' 申请类别=(case 类别 when 1 then ''提货申请'' when 2 then ''退货'' end)'+
    ' from (select * from 提货申请主表 '+
    ' where  是否作废=0 '+tjstr+' )a order by 申请日期';
  qry_gl.Active := True;
end;

procedure TForm_GYS_TuiHuo.act_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm_GYS_TuiHuo.FormShow(Sender: TObject);
begin
  Self.WindowState:=wsMaximized;
  cxDate_qishi.Date:=IncMonth(Date,-1);
  cxButton2.Click;
end;

end.
