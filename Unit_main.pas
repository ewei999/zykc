unit Unit_main;

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
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxStatusBar, dxRibbonStatusBar, dxSkinsdxNavBarPainter, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, dxNavBar, dxNavBarCollns, cxClasses, dxNavBarBase,
  Vcl.ExtCtrls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons,System.DateUtils, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Data.Win.ADODB,Unit_caigou_shenqing_new, cxCheckBox,Unit_fuhuo,
  cxDBLookupComboBox, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit,Unit_FuHuoDan, cxGroupBox;

type
  TForm_main = class(TForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxNavBar1: TdxNavBar;
    cxPageControl_main: TcxPageControl;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    cxTabSheet1: TcxTabSheet;
    pnl1: TPanel;
    cxLabel1: TcxLabel;
    cxDate_th_qishi: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxDate_th_zhongzhi: TcxDateEdit;
    cxButton1: TcxButton;
    ds_thshenqing: TDataSource;
    qry_thshenqing: TADOQuery;
    cxButton2: TcxButton;
    cxPage_tihuoshenqing: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn16: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn17: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn18: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qry_thshenqing_mx: TADOQuery;
    ds_thshenqing_mx: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    cxTabSheet4: TcxTabSheet;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxButton4: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    qry_caigou_hz: TADOQuery;
    DataSource_caigou_hz: TDataSource;
    DataSource_cg_mingxi: TDataSource;
    qry_cg_mingxi: TADOQuery;
    cxgrdbclmncxGridDBTableView3DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn13: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxgrdbclmncxGridDBTableView2Column1: TcxGridDBColumn;
    qry_gys_list: TADOQuery;
    DataSource_gys_list: TDataSource;
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_close: TAction;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    Action_submit: TAction;
    dxNavBar1Item6: TdxNavBarItem;
    cxTabSheet7: TcxTabSheet;
    pnl2: TPanel;
    cxlbl1: TcxLabel;
    cxDate_FH_qishi: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxDate_FH_zhongzhi: TcxDateEdit;
    cxButton8: TcxButton;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    cxlbl3: TcxLabel;
    cxLookup_FH_fenyuan: TcxLookupComboBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    ds_fuhuo_jilu: TDataSource;
    qry_fuhuo_jilu: TADOQuery;
    cxlbl4: TcxLabel;
    cxCombo_FH_Zhuangtai: TcxComboBox;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxTabSheet8: TcxTabSheet;
    Panel2: TPanel;
    cxLabel5: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    Panel3: TPanel;
    cxLabel7: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid6DBTableView1: TcxGridDBTableView;
    cxGrid6Level1: TcxGridLevel;
    cxGrid6: TcxGrid;
    ADOQuery_ruku_zhubiao: TADOQuery;
    DataSource_ruku_zhubiao: TDataSource;
    cxgrdbclmncxGrid6DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    Splitter1: TSplitter;
    ADOQuery_ruku_mingxi: TADOQuery;
    DataSource_ruku_mingxi: TDataSource;
    cxgrdbclmncxGrid7DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1Column1: TcxGridDBColumn;
    ActionManager2: TActionManager;
    Action_new2: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    procedure FormCreate(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure dxNavBar1Group2Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Action_newExecute(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure cxGridDBTableView4CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_submitExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure caigou_shenqing;
    procedure dxNavBar1Item5Click(Sender: TObject);
    procedure Action_new2Execute(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form_main: TForm_main;

implementation
  uses Unit_DM,Unit_public , Unit_cg_new, Unit_ruku_new;
{$R *.dfm}

procedure TForm_main.Action_deleteExecute(Sender: TObject);
begin
  if cxGridDBTableView2.DataController.Controller.SelectedRecordCount=1 then
  begin
    if qry_caigou_hz.FieldByName('状态').AsString='0' then
    begin
      Form_cg_new := TForm_cg_new.Create(nil);
      try
        Form_cg_new.button_zhuanti('delete');
        Form_cg_new.Action_new_m.Enabled := false;
        Form_cg_new.Action_delete_m.Enabled := False;
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;
        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
        Form_cg_new.ADOQuery_cg_mingxi.Active := True;
        Form_cg_new.ShowModal;
      finally
        Form_cg_new.Free;
      end;
      qry_cg_mingxi.Requery();
      qry_caigou_hz.Requery();
    end;

  end;



end;

procedure TForm_main.Action_editExecute(Sender: TObject);
begin
  if cxGridDBTableView2.DataController.Controller.SelectedRecordCount=1 then
  begin
    if qry_caigou_hz.FieldByName('状态').AsString= '0' then
    begin
      Form_cg_new := TForm_cg_new.Create(nil);
      try
        Form_cg_new.Action_newExecute(Sender);
        Form_cg_new.button_zhuanti('edit');
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;
        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
        Form_cg_new.ADOQuery_cg_mingxi.Active := True;
        Form_cg_new.Action_new_m.Enabled := true;
        Form_cg_new.Action_delete_m.Enabled := true;
        Form_cg_new.ShowModal;
      finally
        FreeAndNil(form_cg_new);
      end;
    end else
    begin
      Application.MessageBox('只有草稿状态的采购申请可以修改！', '提示', MB_OK);
      exit;
    end;

  end;
  qry_cg_mingxi.Requery();
  qry_caigou_hz.Requery();

end;

procedure TForm_main.Action_new2Execute(Sender: TObject);
begin
  Form_ruku_new := TForm_ruku_new.Create(nil);
  try
    Form_ruku_new.Action_newExecute(Sender);
    Form_ruku_new.button_zhuanti('new');
    Form_ruku_new.ShowModal;
  finally
    FreeAndNil(Form_ruku_new);
  end;
  ADOQuery_ruku_zhubiao.Requery();
  ADOQuery_ruku_mingxi.Requery();
end;

procedure TForm_main.Action_newExecute(Sender: TObject);
begin
  Form_cg_new := TForm_cg_new.Create(nil);
  try
    Form_cg_new.Action_newExecute(Sender);
    Form_cg_new.button_zhuanti('new');
    Form_cg_new.ShowModal;
  finally
    FreeAndNil(Form_cg_new);
  end;
  ADOQuery_ruku_zhubiao.Requery();
  ADOQuery_ruku_mingxi.Requery();
end;

procedure TForm_main.Action_submitExecute(Sender: TObject);
begin
  if qry_caigou_hz.FieldByName('状态').AsString = '0'  then
  begin
    Form_cg_new := TForm_cg_new.Create(nil);
    try
      Form_cg_new.button_zhuanti('submit');
      Form_cg_new.Action_new_m.Enabled := false;
      Form_cg_new.Action_delete_m.Enabled := False;
      Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
      Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                    ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
      Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
      Form_cg_new.ADOQuery_cg_zhubiao.Edit;
      Form_cg_new.ADOQuery_cg_mingxi.Active := false;
      Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                    ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
      Form_cg_new.ADOQuery_cg_mingxi.Active := True;
      Form_cg_new.ShowModal;
    finally
      FreeAndNil(form_cg_new);
    end;
  end;
   qry_cg_mingxi.Requery();
  qry_caigou_hz.Requery();

end;

procedure TForm_main.caigou_shenqing;
var
  str :string;
begin
  if cxDateEdit2.Text <> '' then
  begin
    if cxDateEdit1.Date > cxDateEdit2.Date then
    Application.MessageBox('日期选择不正确！', '提示', MB_OK);
    Exit;
  end;

  qry_caigou_hz.Active := false;
  qry_caigou_hz.SQL.Text := 'select * from 中央采购申请主表 where 状态 <>2 and 申请日期 >= '+QuotedStr(cxDateEdit1.Text)+
                              ' order by 编号 desc';
  qry_cg_mingxi.Active := false;
  qry_cg_mingxi.SQL.Text := 'select a.*,b.申请日期,b.申请编号,b.状态 as 审批状态,待办人,b.供应商 as 供应商编号 from 中央采购申请明细表 a '+
                          '  left outer join                             '     +
                          '  中央采购申请主表 b  '+
                          '  on a.申请编号=b.申请编号 where  申请日期 >= '+
                          QuotedStr(cxDateEdit1.Text)+' order by 编号 desc';
  if cxDateEdit2.Text <> '' then
  begin
    str := cxDateEdit2.Text;
    qry_caigou_hz.SQL.Text := qry_caigou_hz.SQL.Text +' and 申请日期 <='+ QuotedStr(str) ;
    qry_cg_mingxi.SQL.Text := qry_cg_mingxi.SQL.Text + ' and 申请日期 <='+ QuotedStr(str) ;
  end;
  qry_caigou_hz.Active := True;
  qry_cg_mingxi.Active := True;
end;

procedure TForm_main.cxButton1Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';

  qry_thshenqing.Close;
  qry_thshenqing.SQL.Text:='select *, 分院=(select top 1 name from 分院表 where abbr=a.分店代码 ) ,'+
    ' 申请数量=(select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 ) ,'+
    ' 已付货数量=isnull((select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 and 状态=2 ),0) , '+
    ' 不付货数量=isnull((select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 and 状态=3 ),0)  '+
    ' from ( select * from 提货申请主表 where 是否作废=0 and 状态=2 and 类别=1 '+tjstr+' )a order by 申请日期';
  qry_thshenqing.Open;

  cxTabSheet2.Show;
end;

procedure TForm_main.cxButton2Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select * from ( select *,'+
    ' 分院=(select top 1 name from 分院表 where abbr=(select top 1 分店代码 from 提货申请主表 '+
    ' 	where  申请编号=a.申请编号) ) , '+
    ' 申请日期=(select top 1 申请日期 from 提货申请主表 where 申请编号=a.申请编号),'+
    ' mc=(case when isnull(原名称,'''')='''' then 名称 else 原名称 end),'+
    ' 申请人=(select top 1 申请人 from 提货申请主表 where 申请编号=a.申请编号) ,'+
    ' zt=(case when 状态=1 then ''未处理'' when 状态=2 then ''已付货'' when 状态=3 then 不付货原因 end) '+
    ' from ( select * from 提货申请明细表 '+
    ' where 申请编号 in (select 申请编号 from  提货申请主表 where 是否作废=0 and 状态=2 and 类别=1  '+tjstr+') '+
    ' )a)b order by 申请日期';
  qry_thshenqing_mx.Open;

  cxTabSheet3.Show;
end;

procedure TForm_main.cxButton4Click(Sender: TObject);
begin
  caigou_shenqing;
end;

procedure TForm_main.cxButton8Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if (cxLookup_FH_fenyuan.Text<>'') and (cxLookup_FH_fenyuan.Text<>'全部') then
    tjstr:=tjstr+' and 分店代码='+QuotedStr(cxLookup_FH_fenyuan.EditValue)+'';
  if cxDate_FH_qishi.Text<>'' then
    tjstr:=tjstr+' and 出库时间>='+QuotedStr(cxDate_FH_qishi.Text)+'';
  if cxDate_FH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 出库时间<'+QuotedStr(DateToStr(incday(cxDate_FH_zhongzhi.date,1)))+'';
  if cxCombo_FH_Zhuangtai.Text='待接收' then
    tjstr:=tjstr+' and 状态=1 ';
  if cxCombo_FH_Zhuangtai.Text='接收成功' then
    tjstr:=tjstr+' and 状态=2 ';
  if cxCombo_FH_Zhuangtai.Text='拒绝接收' then
    tjstr:=tjstr+' and 状态=3 ';

  qry_fuhuo_jilu.Close;
  qry_fuhuo_jilu.SQL.Text:='select *,zt=(case 状态 when 1 then ''待接收'' when 2 then ''接收成功'' when 3 then ''拒绝接收'' end),'+
    ' 分院=(select top 1 name from 分院表 where abbr=b.分店代码 )'+
    ' from ( select *,'+
    ' 出库时间=(select top 1 出库时间 from 中央库存_出库表 where 出库编号=a.出库编号) ,'+
    ' 数量=(select top 1 sum(出库数量) from 中央库存_出库表 where 出库编号=a.出库编号) ,'+
    ' 金额=(select top 1 sum(出库金额) from 中央库存_出库表 where 出库编号=a.出库编号),'+
    ' 门店接收人=(select top 1 门店接收人 from 中央库存_出库表 where 出库编号=a.出库编号) ,'+
    ' 门店接收时间=(select top 1 门店接收时间 from 中央库存_出库表 where 出库编号=a.出库编号),'+
    ' 状态=(select top 1 状态 from 中央库存_出库表 where 出库编号=a.出库编号), '+
    ' 分店代码=(select top 1 分店代码 from 中央库存_出库表 where 出库编号=a.出库编号)'+
    ' from ( select 出库编号 from 中央库存_出库表 where 是否作废=0 '+tjstr+
    ' group by 出库编号 )a)b order by 出库时间';
  qry_fuhuo_jilu.Open;
end;

procedure TForm_main.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_thshenqing.FieldByName('申请编号').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_thshenqing_mx.FieldByName('申请编号').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView4CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_FuHuoDan := TForm_FuHuoDan.Create(nil);
  try
    Form_FuHuoDan.CKBianhao:=qry_fuhuo_jilu.FieldByName('出库编号').AsString;
    Form_FuHuoDan.ShowModal;
  finally
    FreeAndNil(Form_FuHuoDan);
  end;
end;

procedure TForm_main.dxNavBar1Group2Click(Sender: TObject);
var
  str   :string;
begin
  cxTabSheet4.Show;
  qry_gys_list.Open;
  cxDateEdit1.Date := IncMonth(date,-1);
  caigou_shenqing;
//  qry_caigou_hz.Active := false;
//  qry_caigou_hz.SQL.Text := 'select * from 中央采购申请主表 where 状态<>2 and  申请日期 >= '+QuotedStr(cxDateEdit1.Text)+
//                            ' order by 编号 desc';
//  qry_cg_mingxi.Active := false;
//  qry_cg_mingxi.SQL.Text := 'select a.*,b.申请日期,b.申请编号,b.状态 as 审批状态,待办人,b.供应商 as 供应商编号 from 中央采购申请明细表 a '+
//                          '  left outer join                             '     +
//                          '  中央采购申请主表 b  '+
//                          '  on a.申请编号=b.申请编号 where  申请日期 >= '+
//                          QuotedStr(cxDateEdit1.Text)+' order by 编号 desc';
//  if cxDateEdit2.Text <> '' then
//  begin
//    str := cxDateEdit2.Text;
//    qry_caigou_hz.SQL.Text := qry_caigou_hz.SQL.Text +' and 申请日期 <='+ QuotedStr(str) ;
//    qry_cg_mingxi.SQL.Text := qry_cg_mingxi.SQL.Text + ' and 申请日期 <='+ QuotedStr(str) ;
//  end;
//  qry_caigou_hz.Active := True;
//  qry_cg_mingxi.Active := True;

end;

procedure TForm_main.dxNavBar1Item1Click(Sender: TObject);
begin
  cxTabSheet1.Show;
  cxTabSheet2.Show;
end;

procedure TForm_main.dxNavBar1Item2Click(Sender: TObject);
begin
  Form_fuhuo := tForm_fuhuo.Create(nil);
  try
    Form_fuhuo.ShowModal;
    if Form_fuhuo.baocun then
    begin
      if qry_thshenqing.Active then
        qry_thshenqing.Requery();
      if qry_thshenqing_mx.Active then
        qry_thshenqing_mx.Requery();
      if qry_fuhuo_jilu.Active then
        qry_fuhuo_jilu.Requery();
    end;

  finally
    FreeAndNil(Form_fuhuo);
  end;
end;

procedure TForm_main.dxNavBar1Item3Click(Sender: TObject);
begin
  cxTabSheet4.Show;
end;

procedure TForm_main.dxNavBar1Item5Click(Sender: TObject);
begin
  cxTabSheet8.show;
end;

procedure TForm_main.dxNavBar1Item6Click(Sender: TObject);
begin
  cxTabSheet7.Show;
end;

procedure TForm_main.FormCreate(Sender: TObject);
begin
  cxPageControl_main.HideTabs:=true;
  cxPage_tihuoshenqing.HideTabs:=true;
  cxTabSheet2.Show;

  cxDate_th_qishi.Date:=IncMonth(date,-1);
  cxDate_FH_qishi.Date:=IncMonth(date,-1);

  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from 分院表 where sort_id<>0 union all select abbr=''全部'',name=''全部'' ';
  qry_fenyuan.Open;
end;

end.
