unit Unit_KaiPiao_Edit;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, Data.Win.ADODB, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCheckBox, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TForm_KaiPiao_Edit = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    actmgr1: TActionManager;
    act_close: TAction;
    act2: TAction;
    cxButton8: TcxButton;
    cxButton2: TcxButton;
    pnl1: TPanel;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    cxlbl2: TcxLabel;
    cxLookup_fenyuan: TcxLookupComboBox;
    cxLookup_gys: TcxLookupComboBox;
    cxlbl3: TcxLabel;
    qry_gys: TADOQuery;
    ds_gys: TDataSource;
    cxlbl4: TcxLabel;
    cxlbl_heji: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_liebiao: TDataSource;
    qry_liebiao: TADOQuery;
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure cxLookup_gysKeyPress(Sender: TObject; var Key: Char);
    procedure cxLookup_gysPropertiesCloseUp(Sender: TObject);
    procedure cxLookup_gysExit(Sender: TObject);
    procedure cxGridDBTableView1Column4HeaderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1EditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
  private
    xzbool:boolean;
    procedure Open_LieBiao;
  public
    zt:string;
    KPbianhao:string;
    baocun:boolean;
  end;

var
  Form_KaiPiao_Edit: TForm_KaiPiao_Edit;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}

procedure TForm_KaiPiao_Edit.act2Execute(Sender: TObject);
var
  heji:Real;
  i,j:integer;
begin
  if cxLookup_gys.Text='' then
  begin
    Application.MessageBox('请选择供应商', '提示', MB_OK);
    exit;
  end;
  if cxLookup_fenyuan.Text='' then
  begin
    Application.MessageBox('请选择分院', '提示', MB_OK);
    exit;
  end;

  cxlbl_heji.Caption:='0';
  heji:=0;
  j:=0;
  for i :=0 to cxGridDBTableView1.DataController.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      j:=j+1;
      heji:=heji+strtofloat(cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column6.Index]);
    end;
  end;
  cxlbl_heji.Caption:=floattostr(heji);

  if j=0 then
  begin
    Application.MessageBox('请选择需要开票的记录', '提示', MB_OK);
    exit;
  end;


  if Application.MessageBox(pchar('已选择 '+inttostr(j)+' 条记录，合计金额：'+cxlbl_heji.Caption+' 确认开票吗？'), '确认', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;
  DataModule1.ADOCon_ALi.BeginTrans;
  try
    KPbianhao:= AutoCreateNo('KP','开票');
    DataModule1.openSql('select top 0 * from 中央采购开票表');
    DataModule1.ADOQuery_L.append;
    DataModule1.ADOQuery_L.FieldByName('开票编号').AsString:= KPbianhao;
    DataModule1.ADOQuery_L.FieldByName('开票人').AsString:= G_user.UserName;
    DataModule1.ADOQuery_L.FieldByName('开票时间').AsDateTime:= xitong_date;
    DataModule1.ADOQuery_L.FieldByName('是否作废').AsBoolean:=false;
    DataModule1.ADOQuery_L.FieldByName('供应商').AsString:= cxLookup_gys.EditValue;
    DataModule1.ADOQuery_L.FieldByName('分店代码').AsString:= cxLookup_fenyuan.EditValue;
    DataModule1.ADOQuery_L.FieldByName('合计金额').AsFloat:= heji;
    DataModule1.ADOQuery_L.post;

    qry_liebiao.DisableControls;
    qry_liebiao.First;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
    for i:=0 to qry_liebiao.RecordCount - 1 do
    begin
      if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
      begin
        DataModule1.execSql('update 中央库存_出库表 set 开票编号='+QuotedStr(KPbianhao)+' '+
        ' where 编号='+qry_liebiao.FieldByName('编号').AsString+'');
      end;
      qry_liebiao.Next;
    end;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=true;
    qry_liebiao.EnableControls;
    baocun:=true;
    Open_LieBiao;
    Application.MessageBox('操作成功', '提示', MB_OK);

    DataModule1.ADOCon_ALi.CommitTrans;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('操作失败', '提示', MB_OK);
  end;


end;

procedure TForm_KaiPiao_Edit.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_KaiPiao_Edit.cxGridDBTableView1Column4HeaderClick(
  Sender: TObject);
var
  i :Integer;
  heji:Real;
begin
  heji:=0;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
  cxGridDBTableView1.BeginUpdate;
  try
    if xzbool = False then
    begin
      for i := 0 to cxGridDBTableView1.DataController.RecordCount - 1 do
      begin
        //先所有的都不选
        cxGridDBTableView1.DataController.SetValue(i,cxGridDBTableView1Column4.Index,false);
      end;
      for i := 0 to cxGridDBTableView1.viewdata.RecordCount - 1 do
      begin
        //再让过滤后的设置为选中
        cxGridDBTableView1.ViewData.Records[i].Values[0] := True;
        heji:=heji+strtofloat(cxGridDBTableView1.ViewData.Records[i].Values[5]);
      end;
      xzbool := True;
    end
    else
    begin
      for i := 0 to cxGridDBTableView1.viewdata.RecordCount - 1 do
      begin
        //所有的都不选
        cxGridDBTableView1.ViewData.Records[i].Values[0] := false;
      end;
      xzbool := False;
    end;
  finally
    cxGridDBTableView1.EndUpdate;
  end;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=true;
  cxlbl_heji.Caption:=FloatToStr(heji);
end;

procedure TForm_KaiPiao_Edit.cxGridDBTableView1EditChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  heji:real;
  i:integer;
begin
  cxGridDBTableView1.DataController.Post();

  cxlbl_heji.Caption:='0';
  heji:=0;
  for i :=0 to cxGridDBTableView1.DataController.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      heji:=heji+strtofloat(cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column6.Index]);
    end;
  end;
  cxlbl_heji.Caption:=floattostr(heji);
end;

procedure TForm_KaiPiao_Edit.cxLookup_gysExit(Sender: TObject);
begin
  Open_LieBiao;
end;

procedure TForm_KaiPiao_Edit.cxLookup_gysKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl,True,True);
end;

procedure TForm_KaiPiao_Edit.cxLookup_gysPropertiesCloseUp(Sender: TObject);
begin
     SelectNext(ActiveControl,True,True);
end;

procedure TForm_KaiPiao_Edit.Open_LieBiao;
begin
  qry_liebiao.close;
  cxlbl_heji.Caption:='0';
  if cxLookup_gys.Text='' then
    exit;
  if cxLookup_fenyuan.Text='' then
    exit;

  qry_liebiao.SQL.Text:='select 编号,出库时间,名称,出库数量,单价,出库金额 '+
    ' from 中央库存_出库表 where 状态=2 and isnull(开票编号,'''')='''''+
    ' and 供应商='+QuotedStr(cxLookup_gys.EditValue)+' and 分店代码='+QuotedStr(cxLookup_fenyuan.EditValue)+' order by 出库时间';
  qry_liebiao.Open;
end;

procedure TForm_KaiPiao_Edit.FormCreate(Sender: TObject);
begin
  baocun:=false;
  zt:='';
  xzbool:=false;
  cxlbl_heji.Caption:='0';
  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from 分院表 where sort_id<>0';
  qry_fenyuan.Open;

  qry_gys.Close;
  qry_gys.SQL.Text:='select 供应商编号,名称 from 供应商表 where 是否作废=0';
  qry_gys.Open;
end;

procedure TForm_KaiPiao_Edit.FormShow(Sender: TObject);
begin
  if zt='查看' then
  begin
    cxButton2.Visible:=false;
    cxGridDBTableView1.OptionsData.Editing:=false;
    cxGridDBTableView1Column4.Visible:=false;
    cxLookup_gys.Enabled:=false;
    cxLookup_fenyuan.Enabled:=false;
  end;
  if KPbianhao<>'' then
  begin
    DataModule1.openSql('select * from 中央采购开票表 where 开票编号='+QuotedStr(KPbianhao)+'');
    cxLookup_gys.EditValue:=DataModule1.ADOQuery_L.FieldByName('供应商').asstring;
    cxLookup_fenyuan.EditValue:=DataModule1.ADOQuery_L.FieldByName('分店代码').asstring;
    cxlbl_heji.Caption:= DataModule1.ADOQuery_L.FieldByName('合计金额').asstring;

    qry_liebiao.Close;
    qry_liebiao.SQL.Text:='select 编号,出库时间,名称,出库数量,单价,出库金额 '+
      ' from 中央库存_出库表 where 开票编号='+QuotedStr(KPbianhao)+'';
    qry_liebiao.Open;
  end;
end;

end.
