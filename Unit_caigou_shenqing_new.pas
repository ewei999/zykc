unit Unit_caigou_shenqing_new;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel,
  Data.Win.ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  cxDBLookupComboBox, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxNavigator, Vcl.ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit, dxSkinBlack,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxBlobEdit;

type
  TForm_caigou_shenqing_new = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Image2: TImage;
    cxLabel10: TcxLabel;
    cxButton4: TcxButton;
    ActionManager1: TActionManager;
    Action_close: TAction;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxButton6: TcxButton;
    act_excel: TAction;
    pnl1: TPanel;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel_bianhao: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel3: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    ds_shenpi: TDataSource;
    qry_shenpi: TADOQuery;
    cxGroup_shenpi: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxButton1: TcxButton;
    act1: TAction;
    act2: TAction;
    cxButton2: TcxButton;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    ds_gys_list: TDataSource;
    qry_gys_list: TADOQuery;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure act_excelExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    fenyuan:string;
    procedure TuiHuoYiJian(yijian:string);
  public
    baocun:boolean;
    zt : string;
  end;

var
  Form_caigou_shenqing_new: TForm_caigou_shenqing_new;

implementation

{$R *.dfm}

uses unit_dm, Unit_public;

procedure TForm_caigou_shenqing_new.TuiHuoYiJian(yijian:string);
var
  shijian:TDateTime;
  danjia:Real;
begin
  if yijian='5' then
  begin
    ADOQuery1.DisableControls;
    ADOQuery1.First;
    while not ADOQuery1.Eof do
    begin
      if ADOQuery1.FieldByName('供应商').AsString='' then
      begin
        ADOQuery1.EnableControls;
        ADOQuery1.edit;
        Application.MessageBox('供应商不能为空', '提示', MB_OK);
        exit;
      end;

      if ADOQuery1.FieldByName('单价').AsString='' then
      begin
        ADOQuery1.EnableControls;
        ADOQuery1.edit;
        Application.MessageBox('单价不能为空', '提示', MB_OK);
        exit;
      end;

      try
        danjia:= ADOQuery1.FieldByName('单价').asfloat;
        if danjia<0 then
        begin
          ADOQuery1.EnableControls;
          ADOQuery1.edit;
          Application.MessageBox('单价不能小于0', '提示', MB_OK);
          exit;
        end;
      except
        ADOQuery1.EnableControls;
        ADOQuery1.edit;
        Application.MessageBox('单价格式不正确', '提示', MB_OK);
        exit;
      end;

      ADOQuery1.Next;
    end;
    ADOQuery1.EnableControls;
  end;

  if yijian='5' then
  begin
    if Application.MessageBox(pchar('您的退货意见是 同意 ，确认操作吗？'), '确认', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  end
  else
  begin
    if Application.MessageBox(pchar('您的退货意见是 拒绝 ，确认操作吗？'), '确认', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  end;

  DataModule1.ADOCon_ALi.BeginTrans;
  try
    shijian:=XiTong_date;
    DataModule1.execSql('update 提货申请主表 set 状态='+yijian+' where 申请编号='+QuotedStr(cxLabel_bianhao.Caption)+' ');

    if yijian='5' then    //同意退货
    begin
      DataModule1.execSql('update 提货申请明细表 set 状态=2 where 申请编号='+QuotedStr(cxLabel_bianhao.Caption)+' ');
      //中央库存生成负数出库单
      ADOQuery1.DisableControls;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        DataModule1.openSql('select top 0 * from 中央库存_出库表');
        DataModule1.ADOQuery_L.Append;
        DataModule1.ADOQuery_L.FieldByName('出库编号').AsString:=cxLabel_bianhao.Caption;
        DataModule1.ADOQuery_L.FieldByName('出库时间').AsDateTime:=shijian;
        DataModule1.ADOQuery_L.FieldByName('价目编号').AsString:=ADOQuery1.FieldByName('价目编号').AsString;
        DataModule1.ADOQuery_L.FieldByName('名称').AsString:=ADOQuery1.FieldByName('名称').AsString;
        DataModule1.ADOQuery_L.FieldByName('出库数量').AsFloat:=ADOQuery1.FieldByName('数量').Asfloat*-1;
        DataModule1.ADOQuery_L.FieldByName('单价').AsFloat:=ADOQuery1.FieldByName('单价').Asfloat;
        DataModule1.ADOQuery_L.FieldByName('出库金额').AsFloat:=ADOQuery1.FieldByName('合计金额').Asfloat*-1;
//       DataModule1.ADOQuery_L.FieldByName('舍零金额').AsFloat:=ADOQuery1.FieldByName('舍零金额').Asfloat;
        DataModule1.ADOQuery_L.FieldByName('供应商').AsString:=ADOQuery1.FieldByName('供应商').AsString;
        DataModule1.ADOQuery_L.FieldByName('分店代码').AsString:=fenyuan;
        DataModule1.ADOQuery_L.FieldByName('是否作废').asboolean:=false;
        DataModule1.ADOQuery_L.FieldByName('状态').asinteger:=1;    //状态为1，表示门店未处理，需要门店点击一下，在自己的数据库中生成一笔负数的入库单
        DataModule1.ADOQuery_L.FieldByName('经手人').asstring:=G_user.UserName;
        DataModule1.ADOQuery_L.post;

        ADOQuery1.Next;
      end;
      ADOQuery1.EnableControls;

      ADOQuery1.UpdateBatch();
    end
    else
    begin
      DataModule1.execSql('update 提货申请明细表 set 状态=3 where 申请编号='+QuotedStr(cxLabel_bianhao.Caption)+' ');
    end;

    baocun:=true;
    DataModule1.ADOCon_ALi.CommitTrans;
    Application.MessageBox('操作成功', '提示', MB_OK);
    close;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('操作失败', '提示', MB_OK);
  end;

end;

procedure TForm_caigou_shenqing_new.act1Execute(Sender: TObject);
begin
  if cxLabel_bianhao.Caption='' then
    exit;
  TuiHuoYiJian('5');    //同意
end;

procedure TForm_caigou_shenqing_new.act2Execute(Sender: TObject);
begin
  if cxLabel_bianhao.Caption='' then
    exit;
  TuiHuoYiJian('6');  //拒绝
end;

procedure TForm_caigou_shenqing_new.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_caigou_shenqing_new.act_excelExecute(Sender: TObject);
begin
  DaochuExcel(cxGrid1);
end;

procedure TForm_caigou_shenqing_new.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if Self.Caption<>'退货申请单' then
    exit;

  if (ADOQuery1.Modified) and (ADOQuery1.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '单价') or (LowerCase(Field.FieldName)= '舍零金额') then
    begin
      if ADOQuery1.FieldByName('单价').AsString='' then
      begin
        Application.MessageBox('单价不能为空', '提示', MB_OK);
        exit;
      end;
      if ADOQuery1.FieldByName('舍零金额').AsString<>'' then
        ADOQuery1.FieldByName('合计金额').AsFloat:=ADOQuery1.FieldByName('数量').AsFloat*ADOQuery1.FieldByName('单价').AsFloat
          -ADOQuery1.FieldByName('舍零金额').AsFloat
      else
        ADOQuery1.FieldByName('合计金额').AsFloat:=ADOQuery1.FieldByName('数量').AsFloat*ADOQuery1.FieldByName('单价').AsFloat;
    end;
  end;
end;

procedure TForm_caigou_shenqing_new.FormShow(Sender: TObject);
begin
  cxButton1.Visible:=false;
  cxButton2.Visible:=false;

  if zt='chakan' then
  begin
    pnl1.Enabled:=false;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
  end;

  if cxLabel_bianhao.Caption<>'' then
  begin
    DataModule1.openSql('select *,'+
    ' 分院=(select top 1 name from 分院表 where abbr=a.分店代码)'+
    ' from (select * from 提货申请主表 where 申请编号='+QuotedStr(cxLabel_bianhao.Caption)+')a');

    cxDateEdit1.Date := DataModule1.ADOQuery_L.FieldByName('申请日期').asdatetime;
    cxLabel5.Caption := DataModule1.ADOQuery_L.FieldByName('申请人').asstring;
    cxMemo1.Lines.text := DataModule1.ADOQuery_L.FieldByName('申请说明').asstring;
    cxLabel7.Caption:= DataModule1.ADOQuery_L.FieldByName('分院').asstring;
    fenyuan:= DataModule1.ADOQuery_L.FieldByName('分店代码').asstring;

    qry_shenpi.Close;
    qry_shenpi.SQL.Text:='select * from 提货申请审批表 where 申请编号='+QuotedStr(cxLabel_bianhao.Caption)+' order by 编号 ';
    qry_shenpi.Open;

    if DataModule1.ADOQuery_L.FieldByName('类别').AsInteger=2 then
    begin
      qry_gys_list.Close;
      qry_gys_list.SQL.Text:='select * from 供应商表 where 是否作废=0';
      qry_gys_list.Open;
      Self.Caption:='退货申请单';
      cxLabel10.Caption:=self.Caption;
      cxGrid1DBTableView1Column6.Visible:=false;
      cxGrid1DBTableView1DBColumn5.Caption:='退货数量';
      cxGrid1DBTableView1DBColumn4.Visible:=false;
      cxGrid1DBTableView1.OptionsData.Editing:=true;
      if DataModule1.ADOQuery_L.FieldByName('状态').AsInteger=2 then
      begin
        cxButton1.Visible:=true;
        cxButton2.Visible:=true;
      end
      else
      begin
        cxGrid1DBTableView1.OptionsData.Editing:=false;
      end;
      ADOQuery1.Active := false;
      ADOQuery1.SQL.text := 'select *,'+
        ' zt=(case 状态 when 1 then ''待处理'' when 2 then ''已退货'' when 3 then ''拒绝退货'' end) '+
        ' from (select  * from 提货申请明细表 where 申请编号 = '+ QuotedStr(cxLabel_bianhao.Caption)+')a';
      ADOQuery1.Active := true;
    end
    else
    begin
      ADOQuery1.Active := false;
      ADOQuery1.SQL.text := 'select *,'+
        ' zt=(case 状态 when 1 then ''待处理'' when 2 then ''已付货'' when 3 then ''不付货'' end) '+
        ' from (select  * from 提货申请明细表 where 申请编号 = '+ QuotedStr(cxLabel_bianhao.Caption)+')a';
      ADOQuery1.Active := true;
    end;

  end;
end;


end.
