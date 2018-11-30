unit Unit_jiamubiao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, IdMailBox,
  cxContainer, cxLabel, cxTextEdit, Data.Win.ADODB, dxSkinBlue;

type
  TForm_jiamubiao = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn24: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn37: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    baocun:boolean;
  end;

var
  Form_jiamubiao: TForm_jiamubiao;

implementation

uses
  Unit_DM;

{$R *.dfm}

procedure TForm_jiamubiao.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  baocun:=true;
  close;
end;

procedure TForm_jiamubiao.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  if Trim(cxTextEdit1.Text)<> '' then
  begin
    ADOQuery1.Filtered := False;
    ADOQuery1.Filter :='拼音 like '+
                           QuotedStr('%'+cxTextEdit1.Text+'%')+
                            ' or 名称 like '+QuotedStr('%'+cxTextEdit1.Text+'%');
    ADOQuery1.Filtered := True;
  end
  else
  begin
    ADOQuery1.Filtered := False;
  end;
end;

procedure TForm_jiamubiao.FormShow(Sender: TObject);
begin
  ADOQuery1.Active := false;
  ADOQuery1.SQL.Text:='select a.*,isnull(b.库存,0) as 库存 from ('+
    ' select 价目编号,名称,原名称,类别,小类,规格,单位,单价,零售价,拼音,包装规格,警戒量,库存单位  from 药品用品价目表 where 是否作废=0 '+
    ' and isnull(是否套餐,0)= 0 and 标志=0 and 库存=1 and 提货=1 )a left join ( '+
    ' select 价目编号,库存=入库数量-出库数量 from ( select a.*, '+
    ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态 in (1,2)  and 是否作废=0 and 价目编号=a.价目编号) ,0) '+
    ' from ( select 价目编号,sum(isnull(数量,0)) as 入库数量 from 中央采购入库明细表 '+
    ' where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1)  group by 价目编号 '+
    '  )a left join 药品用品价目表 b on a.价目编号=b.价目编号 )c )b on a.价目编号=b.价目编号 order by 名称';
  ADOQuery1.Active := True;

  baocun:=false;
  cxTextEdit1.SetFocus;
end;

end.
