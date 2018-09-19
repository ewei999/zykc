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
  cxContainer, cxLabel, cxTextEdit, Data.Win.ADODB;

type
  TForm_jiamubiao = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxgrdbclmncxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn13: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn14: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn15: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn16: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn17: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn18: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn19: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn20: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn21: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn22: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn23: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn24: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn25: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn26: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn27: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn28: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn29: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn30: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn31: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn32: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn33: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn34: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn35: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn36: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn37: TcxGridDBColumn;
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    laiyuan :string;
  end;

var
  Form_jiamubiao: TForm_jiamubiao;

implementation

uses
  Unit_DM, Unit_cg_new, Unit_ruku_new, Unit_public;

{$R *.dfm}

procedure TForm_jiamubiao.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if laiyuan = '采购' then
  begin
    Form_cg_new.ADOQuery_cg_mingxi.Append;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('申请编号').AsString :=Form_cg_new.ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('名称').AsString := ADOQuery1.FieldByName('名称').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('价目编号').AsString := ADOQuery1.FieldByName('价目编号').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('规格').AsString := ADOQuery1.FieldByName('规格').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('单位').AsString := ADOQuery1.FieldByName('单位').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('单价').AsString := ADOQuery1.FieldByName('单价').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('类别').AsString := ADOQuery1.FieldByName('类别').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('原名称').AsString := ADOQuery1.FieldByName('原名称').AsString;
    Form_cg_new.ADOQuery_cg_mingxi.FieldByName('小类').AsString := ADOQuery1.FieldByName('小类').AsString;
    close;
  end else
  if laiyuan ='入库' then
  begin
    Form_ruku_new.ADOQuery_cg_mingxi.Append;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('入库编号').AsString := Form_ruku_new.ADOQuery_cg_zhubiao.FieldByName('入库编号').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('入库明细编号').AsString := AutoCreateNo('RKMX','入库明细');
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('入库批次').AsString := FormatDateTime('yyyymmddhhnnss',now);
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('入库时间').AsDateTime := xitong_date();
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('名称').AsString := ADOQuery1.FieldByName('名称').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('价目编号').AsString := ADOQuery1.FieldByName('价目编号').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('规格').AsString := ADOQuery1.FieldByName('规格').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('单位').AsString := ADOQuery1.FieldByName('单位').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('进货单价').AsString := ADOQuery1.FieldByName('单价').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('类别').AsString := ADOQuery1.FieldByName('类别').AsString;
//    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('原名称').AsString := ADOQuery1.FieldByName('原名称').AsString;
    Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('小类').AsString := ADOQuery1.FieldByName('小类').AsString;
    close;
  end;



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
  ADOQuery1.Active := True;
end;

end.
