unit Unit_cg_new;

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
  cxNavigator, Data.DB, cxDBData, cxContainer, cxMemo, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinBlue, cxGroupBox, cxCurrencyEdit;

type
  TForm_cg_new = class(TForm)
    Panel1: TPanel;
    ADOQuery_cg_zhubiao: TADOQuery;
    DataSource_cg_zhubiao: TDataSource;
    ADOQuery_cg_mingxi: TADOQuery;
    DataSource_cg_mingxi: TDataSource;
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_close: TAction;
    Action_cancel: TAction;
    ActionToolBar1: TActionToolBar;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    Action_save: TAction;
    cxButton1: TcxButton;
    Action_new_m: TAction;
    Action_delete_m: TAction;
    cxButton2: TcxButton;
    Action_save_m: TAction;
    cxButton3: TcxButton;
    ADOQuery_list: TADOQuery;
    DataSource_list: TDataSource;
    ADOQuery_jiamu: TADOQuery;
    DataSource_jiamu: TDataSource;
    cxgrdbclmncxGrid1DBTableView1Column1: TcxGridDBColumn;
    Action_submit: TAction;
    ds_shenpi: TDataSource;
    qry_shenpi: TADOQuery;
    cxGroup_shenpi: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    act1: TAction;
    act2: TAction;
    cxButton4: TcxButton;
    act3: TAction;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxButton5: TcxButton;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    procedure Action_newExecute(Sender: TObject);
    procedure button_zhuanti(button:string);
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_new_mExecute(Sender: TObject);
    procedure Action_save_mExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Action_delete_mExecute(Sender: TObject);
    procedure Action_submitExecute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure DataSource_cg_mingxiDataChange(Sender: TObject; Field: TField);
    procedure cxButton5Click(Sender: TObject);
  private
    shenpi:Boolean;
    procedure  ShenPi_data(bj:string);
  public
    baocun:boolean;
    { Public declarations }
  end;

var
  Form_cg_new: TForm_cg_new;

implementation

uses
  Unit_DM, Unit_public, Unit_jiamubiao;

{$R *.dfm}

procedure TForm_cg_new.ShenPi_data(bj:string);
var
  tuihuiyuanyin:string;
begin
  if cxDBTextEdit1.text='' then
    exit;

  if Application.MessageBox(pchar('您的意见为：'+bj+'，确认审批吗？'), '确认', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  DataModule1.ADOCon_ALi.BeginTrans;
  try
    tuihuiyuanyin:='';
    DataModule1.execSql('update 提货申请审批表 set 意见='+QuotedStr(bj)+',审批时间=getdate(),状态=''审批完成'',备注='+QuotedStr(tuihuiyuanyin)+' '+
      ' where 申请编号='+QuotedStr(cxDBTextEdit1.text)+' and 审批人='+QuotedStr(G_user.UserName)+' ');


    if bj='退回' then
    begin
      DataModule1.execSql('update 中央采购申请主表 set 状态=4 where 申请编号='+QuotedStr(cxDBTextEdit1.text)+' ');
    end
    else
    begin
      ADOQuery_cg_mingxi.UpdateBatch();

      DataModule1.openSql('select top 1 * from  提货申请审批表  '+
        ' where 申请编号='+QuotedStr(cxDBTextEdit1.text)+' and isnull(状态,'''')='''' and 审批人<>'+QuotedStr(G_user.UserName)+' order by 编号 ');
      if DataModule1.ADOQuery_L.Eof then
      begin
        DataModule1.execSql('update 中央采购申请主表 set 状态=3 where 申请编号='+QuotedStr(cxDBTextEdit1.text)+' ');     //同意
      end
      else
      begin
        DataModule1.ADOQuery_L.Edit;
        DataModule1.ADOQuery_L.FieldByName('状态').AsString:='正在审批';
        DataModule1.ADOQuery_L.post;
      end;
    end;
    baocun:=true;
    DataModule1.ADOCon_ALi.CommitTrans;
    Application.MessageBox('审批完成', '提示', MB_OK);
    close;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('审批失败', '提示', MB_OK);
  end;
end;

procedure TForm_cg_new.act1Execute(Sender: TObject);
begin
  ShenPi_data('同意');
end;

procedure TForm_cg_new.act2Execute(Sender: TObject);
begin
  ShenPi_data('退回');
end;

procedure TForm_cg_new.act3Execute(Sender: TObject);
begin
  DaochuExcel(cxGrid1);
end;

procedure TForm_cg_new.Action_cancelExecute(Sender: TObject);
begin
  if ADOQuery_cg_zhubiao.Modified  then
     ADOQuery_cg_zhubiao.Cancel;
  button_zhuanti('cancel');
end;

procedure TForm_cg_new.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_cg_new.Action_deleteExecute(Sender: TObject);
begin
  try
    DataModule1.ADOQuery_L.Active := false;
    DataModule1.ADOQuery_L.SQL.Text :='update 中央采购申请主表 set 状态 =2 where 申请编号='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString);
    DataModule1.ADOQuery_L.ExecSQL;
//    DataModule1.ADOQuery_L.Active := false;
//    DataModule1.ADOQuery_L.SQL.Text :='update 中央采购申请明细表 set 状态 =2 where 申请编号='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString);
//    DataModule1.ADOQuery_L.ExecSQL;
    baocun:=true;
    Application.MessageBox('作废成功！', '提示', MB_OK);
    Close;
  except
    Application.MessageBox('作废失败！', '错误', MB_OK + MB_ICONSTOP);
    exit;
  end;
end;

procedure TForm_cg_new.Action_delete_mExecute(Sender: TObject);
begin
  ADOQuery_cg_mingxi.Delete;
end;

procedure TForm_cg_new.Action_editExecute(Sender: TObject);
begin
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecordCount>0 then
  begin
    ADOQuery_cg_zhubiao.Edit;
    button_zhuanti('edit');    
  end;
end;

procedure TForm_cg_new.Action_newExecute(Sender: TObject);
begin
  button_zhuanti('new');
  cxDBDateEdit1.Date := XiTong_date;
  ADOQuery_cg_zhubiao.Active := false;
  ADOQuery_cg_zhubiao.SQL.Text := 'select top 0 * from 中央采购申请主表';
  ADOQuery_cg_zhubiao.Active := true;
  ADOQuery_cg_zhubiao.Append;
  ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString := AutoCreateNo('CG','采购申请');
  ADOQuery_cg_zhubiao.FieldByName('申请日期').AsDateTime := XiTong_date;
  ADOQuery_cg_zhubiao.FieldByName('申请人').AsString := G_user.UserName;
  ADOQuery_cg_zhubiao.FieldByName('员工编号').AsString := G_user.userID;
  ADOQuery_cg_zhubiao.FieldByName('状态').AsString := '0';

  ADOQuery_cg_mingxi.Active := False;
  ADOQuery_cg_mingxi.SQL.Text := 'select * from 中央采购申请明细表 where 申请编号='+
                                  QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString);
  ADOQuery_cg_mingxi.Active := true;
end;

procedure TForm_cg_new.Action_new_mExecute(Sender: TObject);
begin
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      ADOQuery_cg_mingxi.Append;
      ADOQuery_cg_mingxi.FieldByName('申请编号').AsString :=ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString;
      ADOQuery_cg_mingxi.FieldByName('名称').AsString := Form_jiamubiao.ADOQuery1.FieldByName('名称').AsString;
      ADOQuery_cg_mingxi.FieldByName('价目编号').AsString := Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString;
      ADOQuery_cg_mingxi.FieldByName('规格').AsString := Form_jiamubiao.ADOQuery1.FieldByName('规格').AsString;
      ADOQuery_cg_mingxi.FieldByName('单位').AsString := Form_jiamubiao.ADOQuery1.FieldByName('单位').AsString;
      ADOQuery_cg_mingxi.FieldByName('单价').AsString := Form_jiamubiao.ADOQuery1.FieldByName('单价').AsString;
      ADOQuery_cg_mingxi.FieldByName('类别').AsString := Form_jiamubiao.ADOQuery1.FieldByName('类别').AsString;
      ADOQuery_cg_mingxi.FieldByName('原名称').AsString := Form_jiamubiao.ADOQuery1.FieldByName('原名称').AsString;
      ADOQuery_cg_mingxi.FieldByName('小类').AsString := Form_jiamubiao.ADOQuery1.FieldByName('小类').AsString;
      ADOQuery_cg_mingxi.FieldByName('库存').AsFloat := ChaXunKuCun(Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString);

      DataModule1.openSql('select *,gys=(select top 1 供应商 from 中央采购入库主表 where 入库编号=a.入库编号) '+
        ' from (select top 1 入库编号,进货单价 from 中央采购入库明细表 '+
        ' where 价目编号='+QuotedStr(Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString)+' order by 编号 desc)a');
      if DataModule1.ADOQuery_L.Eof=false then
      begin
        ADOQuery_cg_mingxi.FieldByName('单价').AsString := DataModule1.ADOQuery_L.FieldByName('进货单价').AsString;
        ADOQuery_cg_mingxi.FieldByName('供应商').AsString := DataModule1.ADOQuery_L.FieldByName('gys').AsString;
      end;

      DataModule1.openSql('select sum(数量) as 门店申请数量 from 提货申请明细表 '+
        ' where 价目编号='+QuotedStr(Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString)+''+
        ' and 状态=1 and 申请编号 in (select 申请编号 from 提货申请主表 where 状态=2)');
      if DataModule1.ADOQuery_L.Eof=false then
        ADOQuery_cg_mingxi.FieldByName('门店申请数量').AsString := DataModule1.ADOQuery_L.FieldByName('门店申请数量').AsString;

      ADOQuery_cg_mingxi.Post;
    end;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_cg_new.Action_saveExecute(Sender: TObject);
begin
//  if ADOQuery_cg_zhubiao.Modified then
  begin
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();
  end;
  button_zhuanti('save');
  baocun:=true;
end;

procedure TForm_cg_new.Action_save_mExecute(Sender: TObject);
begin
  if ADOQuery_cg_mingxi.Modified then
  begin
    ADOQuery_cg_mingxi.UpdateBatch;
  end;
  Action_new_m.Enabled := True;
  Action_delete_m.Enabled := True;
  Action_save_m.Enabled := false;
end;

procedure TForm_cg_new.Action_submitExecute(Sender: TObject);
begin
  if ADOQuery_cg_mingxi.RecordCount=0 then
  begin
    Application.MessageBox('至少添加一条采购物品', '提示', MB_OK);
    exit;
  end;
  ADOQuery_cg_mingxi.DisableControls;
  ADOQuery_cg_mingxi.First;
  while not ADOQuery_cg_mingxi.Eof do
  begin
    if (ADOQuery_cg_mingxi.FieldByName('数量').AsString = '') or (ADOQuery_cg_mingxi.FieldByName('数量').asfloat = 0) then
    begin
      Application.MessageBox(pchar('名称：'+ADOQuery_cg_mingxi.FieldByName('名称').AsString+'，请输入申请数量'), '提示', MB_OK);
      ADOQuery_cg_mingxi.EnableControls;
      Exit;
    end;
    if ADOQuery_cg_mingxi.FieldByName('数量').asfloat<0 then
    begin
      Application.MessageBox(pchar('名称：'+ADOQuery_cg_mingxi.FieldByName('名称').AsString+'，申请数量不能为负数'), '提示', MB_OK);
      ADOQuery_cg_mingxi.EnableControls;
      Exit;
    end;
    
    ADOQuery_cg_mingxi.Next;
  end;
  ADOQuery_cg_mingxi.EnableControls;

  if Application.MessageBox('确认提交吗？', '确认', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  try
    ADOQuery_cg_zhubiao.Edit;
    ADOQuery_cg_zhubiao.Post;
    ADOQuery_cg_mingxi.Edit;
    ADOQuery_cg_mingxi.Post;
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();

    DataModule1.ADOQuery_L.Active := false;
    DataModule1.ADOQuery_L.sql.text :='update 中央采购申请主表 set 状态 =1 where 申请编号='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString);
    DataModule1.ADOQuery_L.ExecSQL;


    //写审批表
    DataModule1.execSql('delete from 提货申请审批表 where 申请编号='+QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString)+'');

    DataModule1.openSql('select 类别名称 from 基础设置表 where 类别编号=''中央采购申请审批'' order by 编号');
    if DataModule1.ADOQuery_L.Eof then
    begin
      DataModule1.execSql('update 中央采购申请主表 set 状态=3 where 申请编号='+QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString)+'');
    end
    else
    begin
      DataModule1.openSql2('select top 0 * from 提货申请审批表 ');
      while not DataModule1.ADOQuery_L.Eof do
      begin
        DataModule1.ADOQuery_L2.append;
        DataModule1.ADOQuery_L2.FieldByName('申请编号').AsString:= ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString;
        DataModule1.ADOQuery_L2.FieldByName('审批人').AsString:= DataModule1.ADOQuery_L.FieldByName('类别名称').AsString;
        if DataModule1.ADOQuery_L.RecNo=1 then
          DataModule1.ADOQuery_L2.FieldByName('状态').AsString:= '正在审批';
        DataModule1.ADOQuery_L2.Post;

        DataModule1.ADOQuery_L.Next;
      end;
    end;
    baocun:=true;
    Application.MessageBox('提交成功！', '提示', MB_OK);
    Close;
  except
    Application.MessageBox('提交失败！', '错误', MB_OK + MB_ICONSTOP);
    exit;
  end;

end;

procedure TForm_cg_new.button_zhuanti(button: string);
begin
   cxGroup_shenpi.Visible:=False;
   act1.Visible:=False;
   act2.Visible:=False;
   if button = 'new' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := True;

   end else if button='edit' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := True;
     ADOQuery_cg_zhubiao.Edit;
   end else if button='save' then
   begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;

   end else if button='cancel' then
   begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;


   end else if button='submit' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_save.Enabled := false;
     Action_close.Enabled := True;
     Action_delete.Enabled := false;
     Action_submit.Enabled := true;
     Action_cancel.Enabled := False;

     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn11.Options.Editing := false;
     cxGrid1DBTableView1Column1.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;
   end else if button='delete' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_save.Enabled := false;
     Action_close.Enabled := True;
     Action_delete.Enabled := True;
     Action_submit.Enabled := False;
     Action_cancel.Enabled := False;

     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn11.Options.Editing := false;
     cxGrid1DBTableView1Column1.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;
   end
   else if button='chakan' then
   begin
     Action_new_m.Visible := false;
     Action_delete_m.Visible := false;
     Action_save_m.Visible := false;
     Action_save.Visible := false;
     Action_cancel.Visible := false;
     Action_delete.Visible := false;
     Action_submit.Visible := false;
     cxButton5.Visible := false;
     act1.Visible := false;
     act2.Visible := false;
 //    ActionToolBar1.Visible:=false;
     cxButton4.Visible:=false;
     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn11.Options.Editing := false;
     cxGrid1DBTableView1Column1.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;

     cxGroup_shenpi.Visible:=true;

     qry_shenpi.Close;
     qry_shenpi.SQL.Text:='select * from 提货申请审批表 where 申请编号='+QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString)+' order by 编号 ';
     qry_shenpi.Open;

     shenpi:=false;
     if qry_shenpi.Locate('审批人',G_user.UserName,[])  then
     begin
       if (qry_shenpi.FieldByName('状态').AsString='正在审批') and (qry_shenpi.FieldByName('意见').AsString='') then
         shenpi:=true;
     end;
     if shenpi then
     begin
       ActionToolBar1.Visible := true;
       act1.Visible:=true;
       act2.Visible:=true;
       Action_save.Visible := false;
       Action_cancel.Visible := false;
       Action_submit.Visible := false;
       Action_delete.Visible := false;
       ADOQuery_cg_mingxi.Edit;
       cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := True;
       cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := True;
       Action_new_m.Visible := True;
       Action_delete_m.Visible := True;
     end;
   end;
end;

procedure TForm_cg_new.cxButton4Click(Sender: TObject);
begin
  if ADOQuery_cg_mingxi.Active=False then
    exit;
//  if cxDBLookupComboBox1.Text='' then
//  begin
//    Application.MessageBox('先选择供应商', '错误', MB_OK + MB_ICONSTOP);
//    exit;
//  end;
  DataModule1.openSql('select * from ( select 名称,价目编号, 类别,小类,规格,单位,单价=(case when 进价=0 then 单价 else 进价 end ),供应商,'+
  ' 仓库库存=入库数量-出库数量,门店申请数量,门店备注,门店名称=(select top 1 name from 分院表 where abbr=b.代码),审批日期'+
  ' from ( select a.*, yp.类别,yp.小类,yp.规格,yp.单位,yp.单价, '+
  ' 供应商=(select top 1 供应商 from 中央采购入库主表 where 入库编号 in (select 入库编号 from 中央采购入库明细表 where 价目编号=a.价目编号 ) order by 编号 desc ),'+
  ' 进价=isnull((select top 1 进货单价 from 中央采购入库明细表 where 价目编号=a.价目编号 order by 编号 desc),0), '+
  ' 入库数量=isnull((select sum(isnull(数量,0))  from 中央采购入库明细表 '+
  '    where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1) and 价目编号=a.价目编号),0), '+
  ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态 in (1,2)  and 是否作废=0 and 价目编号=a.价目编号),0),'+
  ' 代码=(select top 1 分店代码  from 提货申请主表 where 申请编号=a.申请编号),'+
  ' 审批日期=(select top 1 审批时间 from 提货申请审批表 where 申请编号=a.申请编号 and 审批时间 is not null order by 编号 desc )'+
  ' from ( select 名称,价目编号,数量 as 门店申请数量,备注 as 门店备注,申请编号 from 提货申请明细表 '+
  ' where 状态=1 and 价目编号 in (select 价目编号 from 药品用品价目表 where 是否作废=0 and 库存=1 and 提货=1 )'+
  ' and 申请编号 in (select 申请编号 from  提货申请主表 where 是否作废=0 and 状态=2 and 类别=1 )  )a '+
  ' left join (select 类别,小类,规格,单位,价目编号,单价 from 药品用品价目表)yp on a.价目编号=yp.价目编号'+
  ' )b where 入库数量-出库数量<=0 )c  order by 价目编号');
  if DataModule1.ADOQuery_L.RecordCount=0 then
  begin
    Application.MessageBox('无记录', '提示', MB_OK );
    exit;
  end;
  
  ADOQuery_cg_mingxi.DisableControls;
  while not DataModule1.ADOQuery_L.Eof do
  begin
    ADOQuery_cg_mingxi.Append;
    ADOQuery_cg_mingxi.FieldByName('申请编号').AsString :=ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString;
    ADOQuery_cg_mingxi.FieldByName('名称').AsString := DataModule1.ADOQuery_L.FieldByName('名称').AsString;
    ADOQuery_cg_mingxi.FieldByName('价目编号').AsString := DataModule1.ADOQuery_L.FieldByName('价目编号').AsString;
    ADOQuery_cg_mingxi.FieldByName('规格').AsString := DataModule1.ADOQuery_L.FieldByName('规格').AsString;
    ADOQuery_cg_mingxi.FieldByName('单位').AsString := DataModule1.ADOQuery_L.FieldByName('单位').AsString;
    ADOQuery_cg_mingxi.FieldByName('单价').AsString := DataModule1.ADOQuery_L.FieldByName('单价').AsString;
    ADOQuery_cg_mingxi.FieldByName('类别').AsString := DataModule1.ADOQuery_L.FieldByName('类别').AsString;
    ADOQuery_cg_mingxi.FieldByName('小类').AsString := DataModule1.ADOQuery_L.FieldByName('小类').AsString;
    ADOQuery_cg_mingxi.FieldByName('供应商').AsString := DataModule1.ADOQuery_L.FieldByName('供应商').AsString;
    ADOQuery_cg_mingxi.FieldByName('库存').AsString := DataModule1.ADOQuery_L.FieldByName('仓库库存').AsString;
    ADOQuery_cg_mingxi.FieldByName('门店申请数量').AsString := DataModule1.ADOQuery_L.FieldByName('门店申请数量').AsString;
    ADOQuery_cg_mingxi.FieldByName('门店备注').AsString := DataModule1.ADOQuery_L.FieldByName('门店备注').AsString;
    ADOQuery_cg_mingxi.FieldByName('门店名称').AsString := DataModule1.ADOQuery_L.FieldByName('门店名称').AsString;
    ADOQuery_cg_mingxi.FieldByName('审批日期').AsString := DataModule1.ADOQuery_L.FieldByName('审批日期').AsString;
    ADOQuery_cg_mingxi.Post;

    DataModule1.ADOQuery_L.Next;
  end;
  ADOQuery_cg_mingxi.First;
  ADOQuery_cg_mingxi.EnableControls;
  Application.MessageBox('导入完成', '提示', MB_OK);

end;

procedure TForm_cg_new.cxButton5Click(Sender: TObject);
begin
  if ADOQuery_cg_mingxi.Active=False then
    exit;

  DataModule1.openSql('select * from ( '+
  ' select 名称,价目编号, 类别,小类,规格,单位,单价=(case when 进价=0 then 单价 else 进价 end ),供应商,警戒量,'+
  ' 仓库库存=入库数量-出库数量,门店申请数量 from ( select a.*, '+
  ' 门店申请数量=isnull((select sum(数量) from 提货申请明细表 where 状态=1 and 申请编号 in (select 申请编号 from 提货申请主表 where 状态=2) and 价目编号=a.价目编号),0),'+
  ' 供应商=(select top 1 供应商 from 中央采购入库主表 where 入库编号 in (select 入库编号 from 中央采购入库明细表 where 价目编号=a.价目编号 ) order by 编号 desc ),'+
  ' 进价=isnull((select top 1 进货单价 from 中央采购入库明细表 where 价目编号=a.价目编号 order by 编号 desc),0),'+
  ' 入库数量=isnull((select sum(isnull(数量,0))  from 中央采购入库明细表 '+
  '   where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1) and 价目编号=a.价目编号),0),'+
  ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态 in (1,2)  and 是否作废=0 and 价目编号=a.价目编号),0)'+
  ' from (   select 价目编号,名称,规格,单位,类别,小类,警戒量,单价  from 药品用品价目表 '+
  '  where 是否作废=0 and isnull(是否套餐,0)=0 and 库存=1 and 提货=1 and 警戒量>0 )a )b )c   order by 名称');
  if DataModule1.ADOQuery_L.RecordCount=0 then
  begin
    Application.MessageBox('无记录', '提示', MB_OK );
    exit;
  end;

  ADOQuery_cg_mingxi.DisableControls;
  while not DataModule1.ADOQuery_L.Eof do
  begin
    ADOQuery_cg_mingxi.Append;
    ADOQuery_cg_mingxi.FieldByName('申请编号').AsString :=ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString;
    ADOQuery_cg_mingxi.FieldByName('名称').AsString := DataModule1.ADOQuery_L.FieldByName('名称').AsString;
    ADOQuery_cg_mingxi.FieldByName('价目编号').AsString := DataModule1.ADOQuery_L.FieldByName('价目编号').AsString;
    ADOQuery_cg_mingxi.FieldByName('规格').AsString := DataModule1.ADOQuery_L.FieldByName('规格').AsString;
    ADOQuery_cg_mingxi.FieldByName('单位').AsString := DataModule1.ADOQuery_L.FieldByName('单位').AsString;
    ADOQuery_cg_mingxi.FieldByName('单价').AsString := DataModule1.ADOQuery_L.FieldByName('单价').AsString;
    ADOQuery_cg_mingxi.FieldByName('类别').AsString := DataModule1.ADOQuery_L.FieldByName('类别').AsString;
    ADOQuery_cg_mingxi.FieldByName('小类').AsString := DataModule1.ADOQuery_L.FieldByName('小类').AsString;
    ADOQuery_cg_mingxi.FieldByName('供应商').AsString := DataModule1.ADOQuery_L.FieldByName('供应商').AsString;
    ADOQuery_cg_mingxi.FieldByName('库存').AsString := DataModule1.ADOQuery_L.FieldByName('仓库库存').AsString;
    ADOQuery_cg_mingxi.FieldByName('门店申请数量').AsString := DataModule1.ADOQuery_L.FieldByName('门店申请数量').AsString;
    ADOQuery_cg_mingxi.Post;

    DataModule1.ADOQuery_L.Next;
  end;
  ADOQuery_cg_mingxi.First;
  ADOQuery_cg_mingxi.EnableControls;
  Application.MessageBox('导入完成', '提示', MB_OK);
end;

procedure TForm_cg_new.DataSource_cg_mingxiDataChange(Sender: TObject;
  Field: TField);
begin
  if (ADOQuery_cg_mingxi.Modified) and (ADOQuery_cg_mingxi.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '单价') or (LowerCase(Field.FieldName)= '数量')   then
    begin
      if (ADOQuery_cg_mingxi.FieldByName('单价').AsString<>'') and (ADOQuery_cg_mingxi.FieldByName('数量').AsString<>'') then
        ADOQuery_cg_mingxi.FieldByName('金额').AsFloat:=ADOQuery_cg_mingxi.FieldByName('单价').AsFloat*ADOQuery_cg_mingxi.FieldByName('数量').AsFloat;
    end;
  end;
end;

procedure TForm_cg_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ADOQuery_cg_zhubiao.Modified then
    ADOQuery_cg_zhubiao.Cancel;
end;

procedure TForm_cg_new.FormShow(Sender: TObject);
begin
  Self.WindowState:=wsMaximized;
  baocun:=false;
  ADOQuery_list.Active := True;
  ADOQuery_jiamu.Open;
end;

end.
