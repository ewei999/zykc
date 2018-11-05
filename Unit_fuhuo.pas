unit Unit_fuhuo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxControls, cxContainer,
  cxEdit, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Data.Win.ADODB, dxBarBuiltInMenu, cxPC,
  cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,Unit_jiamubiao;

type
  TForm_fuhuo = class(TForm)
    img1: TImage;
    actmgr1: TActionManager;
    act_close: TAction;
    cxButton8: TcxButton;
    cxButton6: TcxButton;
    act1: TAction;
    cxLabel10: TcxLabel;
    qry_thshenqing_mx: TADOQuery;
    ds_thshenqing_mx: TDataSource;
    ds_yuanyin: TDataSource;
    qry_yuanyin: TADOQuery;
    qry_gys: TADOQuery;
    ds_gys: TDataSource;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    qry_kucun: TADOQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl1: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxlbl1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxlbl2: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    pnl2: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    qry_zhudong: TADOQuery;
    ds_zhudong: TDataSource;
    ds_jiamu: TDataSource;
    qry_jiamu: TADOQuery;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    procedure act1Execute(Sender: TObject);
    procedure cxGridDBTableView1Column4HeaderClick(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure ds_thshenqing_mxDataChange(Sender: TObject; Field: TField);
    procedure cxLookupComboBox2Exit(Sender: TObject);
    procedure cxLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ds_zhudongDataChange(Sender: TObject; Field: TField);
  private
    CKbianhao:string;
    xzbool,shifoujisuan:boolean;
  public
    laiyuan:string;
    baocun:boolean;
  end;

var
  Form_fuhuo: TForm_fuhuo;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}


procedure TForm_fuhuo.act1Execute(Sender: TObject);
var
  i,j:integer;
  danjia:Real;
  tishi:string;
  shijian:tdatetime;
begin
  if cxPageControl1.ActivePage=cxTabSheet1 then
  begin
    {$REGION '按申请单付货'}
    if cxLookupComboBox2.Text='' then
    begin
      Application.MessageBox('请选择分院', '提示', MB_OK);
      exit;
    end;

    if (cxRadioButton1.Checked=False) and (cxRadioButton2.Checked=False) then
    begin
      Application.MessageBox('请选择付货或不付货', '提示', MB_OK);
      exit;
    end;

    if cxRadioButton2.Checked then
    begin
      if cxLookupComboBox1.text='' then
      begin
        Application.MessageBox('请选择不付货原因', '提示', MB_OK);
        exit;
      end;
    end;
    j:=0;
    qry_kucun.Close;
    qry_kucun.SQL.Text:='select top 0 价目编号,单价 as 库存 from 中央库存_出库表';
    qry_kucun.Open;
    qry_thshenqing_mx.edit;
    qry_thshenqing_mx.post;
    qry_thshenqing_mx.DisableControls;
    qry_thshenqing_mx.First;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
    for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
    begin
      if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
      begin
        if cxRadioButton1.Checked then
        begin
          try
            danjia:= qry_thshenqing_mx.FieldByName('数量').asfloat;
            if danjia<0 then
            begin
              cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('数量不能小于0', '提示', MB_OK);
              exit;
            end;
          except
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('申请/付货数量格式不正确', '提示', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('供应商').AsString='' then
          begin
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('供应商不能为空', '提示', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('单价').AsString='' then
          begin
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('付货单价不能为空', '提示', MB_OK);
            exit;
          end;

          try
            danjia:= qry_thshenqing_mx.FieldByName('单价').asfloat;
            if danjia<0 then
            begin
              cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('单价不能小于0', '提示', MB_OK);
              exit;
            end;
          except
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('付货单价格式不正确', '提示', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('舍零金额').asstring<>'' then
          begin
            try
              danjia:= qry_thshenqing_mx.FieldByName('舍零金额').asfloat;
              if danjia<0 then
              begin
                cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
                qry_thshenqing_mx.EnableControls;
                qry_thshenqing_mx.edit;
                Application.MessageBox('舍零金额不能小于0', '提示', MB_OK);
                exit;
              end;
            except
              cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('舍零金额格式不正确', '提示', MB_OK);
              exit;
            end;
          end;

          //判断中央仓库是此物品的库存是否够本次付货
          if qry_kucun.Locate('价目编号',qry_thshenqing_mx.FieldByName('价目编号').asstring,[]) = False then
          begin
            danjia:= ChaXunKuCun(qry_thshenqing_mx.FieldByName('价目编号').asstring);
            if danjia<>-1 then
            begin
              qry_kucun.Append;
              qry_kucun.FieldByName('价目编号').AsString:= qry_thshenqing_mx.FieldByName('价目编号').asstring;
              qry_kucun.FieldByName('库存').AsFloat:= danjia-qry_thshenqing_mx.FieldByName('数量').asfloat;
              qry_kucun.Post;
            end
            else
            begin
              cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox(pchar('名称：'+qry_thshenqing_mx.FieldByName('mc').asstring+'  库存错误，不能付货'), '提示', MB_OK);
              exit;
            end;
          end
          else
          begin
            qry_kucun.Edit;
            qry_kucun.FieldByName('库存').AsFloat:= qry_kucun.FieldByName('库存').AsFloat-qry_thshenqing_mx.FieldByName('数量').asfloat;
            qry_kucun.Post;
          end;

          if qry_kucun.FieldByName('库存').AsFloat<=0 then
          begin
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox(pchar('名称：'+qry_thshenqing_mx.FieldByName('mc').asstring+'  库存不足，不能付货'), '提示', MB_OK);
            exit;
          end;
        end;
        j:=j+1;
      end;
      qry_thshenqing_mx.Next;
    end;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
    qry_thshenqing_mx.EnableControls;
    qry_thshenqing_mx.edit;
    if j=0 then
    begin
      Application.MessageBox('请选择记录', '提示', MB_OK);
      exit;
    end;

    if cxRadioButton1.Checked then
      tishi:='付货';
    if cxRadioButton2.Checked then
      tishi:='不付货  '+cxLookupComboBox1.text;

    if Application.MessageBox(pchar('已选择 '+inttostr(j)+' 条记录，操作为：'+tishi+' 确认操作吗？'), '确认', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;

    shijian:=XiTong_date;
    DataModule1.ADOCon_ALi.BeginTrans;
    try
      if cxRadioButton1.Checked then  //付货，写出库表
        CKbianhao:= AutoCreateNo('ZYFH','中央库存付货');
      qry_thshenqing_mx.DisableControls;
      qry_thshenqing_mx.First;
      cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
      for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
      begin
        if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
        begin
          if cxRadioButton1.Checked then  //付货，写出库表
          begin
            DataModule1.openSql('select top 0 * from 中央库存_出库表');
            DataModule1.ADOQuery_L.append;
            DataModule1.ADOQuery_L.FieldByName('出库编号').AsString:= CKbianhao;
            DataModule1.ADOQuery_L.FieldByName('出库时间').AsDateTime:= shijian;
            DataModule1.ADOQuery_L.FieldByName('价目编号').AsString:= qry_thshenqing_mx.FieldByName('价目编号').AsString;
            DataModule1.ADOQuery_L.FieldByName('名称').AsString:= qry_thshenqing_mx.FieldByName('mc').AsString;
            DataModule1.ADOQuery_L.FieldByName('出库数量').AsVariant:= qry_thshenqing_mx.FieldByName('数量').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('单价').AsVariant:= qry_thshenqing_mx.FieldByName('单价').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('出库金额').AsVariant:= qry_thshenqing_mx.FieldByName('出库金额').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('舍零金额').AsVariant:= qry_thshenqing_mx.FieldByName('舍零金额').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('供应商').AsString:= qry_thshenqing_mx.FieldByName('供应商').AsString;
            DataModule1.ADOQuery_L.FieldByName('分店代码').AsString:= qry_thshenqing_mx.FieldByName('分店代码').AsString;
            DataModule1.ADOQuery_L.FieldByName('备注').AsString:= qry_thshenqing_mx.FieldByName('备注').AsString;
            DataModule1.ADOQuery_L.FieldByName('经手人').AsString:= G_user.UserName;
            DataModule1.ADOQuery_L.FieldByName('状态').AsInteger:=1;
            DataModule1.ADOQuery_L.FieldByName('是否作废').asboolean:= false;
            DataModule1.ADOQuery_L.post;

            DataModule1.execSql('update 提货申请明细表 set 状态=2,出库编号='+QuotedStr(ckbianhao)+',数量='+qry_thshenqing_mx.FieldByName('数量').AsString+' '+
            ' where 编号='+qry_thshenqing_mx.FieldByName('编号').AsString+' ');
          end;
          if cxRadioButton2.Checked then  //不付货
          begin
            DataModule1.execSql('update 提货申请明细表 set 状态=3,不付货原因='+QuotedStr(cxLookupComboBox1.Text)+' '+
            ' where 编号='+qry_thshenqing_mx.FieldByName('编号').AsString+' ');
          end;
        end;
        qry_thshenqing_mx.Next;
      end;
      cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
      qry_thshenqing_mx.EnableControls;
      baocun:=true;
      DataModule1.ADOCon_ALi.CommitTrans;
    except
      DataModule1.ADOCon_ALi.RollbackTrans;
      Application.MessageBox('保存失败', '提示', MB_OK);
    end;

    if baocun then
    begin
      if cxRadioButton1.Checked then  //付货
      begin
        if Application.MessageBox('操作成功！是否打印付货单？', '提示', MB_OKCANCEL +
          MB_ICONQUESTION) = IDOK then
        begin
          DataModule1.ADOQuery_dayin.Close;
          DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY 名称 DESC) AS xh ,'+
          ' 名称 as mc,出库数量 as sl,单价 as danjia,出库金额 as jine,备注 as beizhu, '+
          ' bz=(select top 1 包装规格 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' dw=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' gg=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号)  '+
          ' from ( select 价目编号,名称,出库数量,单价,出库金额,备注 '+
          ' from 中央库存_出库表 where 出库编号='+QuotedStr(CKbianhao)+' )a';
          DataModule1.ADOQuery_dayin.open;

          DataModule1.frxDBDataset_dayin.FieldAliases.Clear;
          for j:=0 to DataModule1.frxDBDataset_dayin.Dataset.FieldCount-1 do
          begin
            DataModule1.frxDBDataset_dayin.FieldAliases.Add(DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName+'='+
                DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName);
          end;

          DataModule1.frxReport_dayin.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Report\fuhuo.fr3');
          DataModule1.frxReport_dayin.Variables['shijian'] :=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm',shijian));
          DataModule1.frxReport_dayin.Variables['jsr'] :=QuotedStr(G_user.username);
          DataModule1.frxReport_dayin.Variables['bianhao'] :=QuotedStr(CKbianhao);
          DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(cxLookupComboBox2.text);
          DataModule1.frxReport_dayin.ShowReport;
        end;
        close;
      end
      else
      begin
        Application.MessageBox('操作成功', '提示', MB_OK);
        close;
      end;
    end;
    {$ENDREGION}
  end;
  if cxPageControl1.ActivePage=cxTabSheet2 then
  begin
    {$REGION '主动付货'}
    if qry_zhudong.RecordCount=0 then
    begin
      Application.MessageBox('请至少添加一条记录', '提示', MB_OK);
      exit;
    end;
    qry_zhudong.edit;
    qry_zhudong.post;
    qry_kucun.Close;
    qry_kucun.SQL.Text:='select top 0 价目编号,单价 as 库存 from 中央库存_出库表';
    qry_kucun.Open;
    qry_zhudong.DisableControls;
    qry_zhudong.First;
    while not qry_zhudong.Eof do
    begin
      if qry_zhudong.FieldByName('分店代码').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('分店不能为空', '提示', MB_OK);
        exit;
      end;
      if qry_zhudong.FieldByName('价目编号').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('价目不能为空', '提示', MB_OK);
        exit;
      end;
      if qry_zhudong.FieldByName('名称').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('名称不能为空', '提示', MB_OK);
        exit;
      end;
      if qry_zhudong.FieldByName('供应商').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('供应商不能为空', '提示', MB_OK);
        exit;
      end;
      try
        danjia:= qry_zhudong.FieldByName('出库数量').asfloat;
        if danjia<0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('付货数量不能小于0', '提示', MB_OK);
          exit;
        end;
      except
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('付货数量格式不正确', '提示', MB_OK);
        exit;
      end;

      try
        danjia:= qry_zhudong.FieldByName('单价').asfloat;
        if danjia<0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('单价不能小于0', '提示', MB_OK);
          exit;
        end;
      except
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('单价格式不正确', '提示', MB_OK);
        exit;
      end;

      if qry_zhudong.FieldByName('舍零金额').asstring<>'' then
      begin
        try
          danjia:= qry_zhudong.FieldByName('舍零金额').asfloat;
          if danjia<0 then
          begin
            qry_zhudong.EnableControls;
            qry_zhudong.edit;
            Application.MessageBox('舍零金额不能小于0', '提示', MB_OK);
            exit;
          end;
        except
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('舍零金额格式不正确', '提示', MB_OK);
          exit;
        end;
      end;

      //判断中央仓库是此物品的库存是否够本次付货
      if qry_kucun.Locate('价目编号',qry_zhudong.FieldByName('价目编号').asstring,[]) = False then
      begin
        danjia:= ChaXunKuCun(qry_zhudong.FieldByName('价目编号').asstring);
        if danjia<>-1 then
        begin
          qry_kucun.Append;
          qry_kucun.FieldByName('价目编号').AsString:= qry_zhudong.FieldByName('价目编号').asstring;
          qry_kucun.FieldByName('库存').AsFloat:= danjia;
          qry_kucun.Post;
          if qry_kucun.FieldByName('库存').AsFloat<0 then
          begin
            qry_zhudong.EnableControls;
            qry_zhudong.edit;
            Application.MessageBox(pchar('名称：'+qry_zhudong.FieldByName('名称').asstring+'  库存不足，不能付货'), '提示', MB_OK);
            exit;
          end;
        end
        else
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox(pchar('名称：'+qry_zhudong.FieldByName('名称').asstring+'  库存错误，不能付货'), '提示', MB_OK);
          exit;
        end;
      end
      else
      begin
        qry_kucun.Edit;
        qry_kucun.FieldByName('库存').AsFloat:= qry_kucun.FieldByName('库存').AsFloat-qry_zhudong.FieldByName('出库数量').asfloat;
        qry_kucun.Post;

        if qry_kucun.FieldByName('库存').AsFloat<=0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox(pchar('名称：'+qry_zhudong.FieldByName('名称').asstring+'  库存不足，不能付货'), '提示', MB_OK);
          exit;
        end;
      end;

      qry_zhudong.Next;
    end;
    qry_zhudong.EnableControls;

    if Application.MessageBox('确认付货吗？', '确认', MB_OKCANCEL + MB_ICONINFORMATION) = IDCANCEL then
      exit;

    shijian:=XiTong_date;
    DataModule1.ADOCon_ALi.BeginTrans;
    try
      CKbianhao:= AutoCreateNo('ZYFH','中央库存付货');
      qry_zhudong.DisableControls;
      qry_zhudong.First;
      while not qry_zhudong.Eof do
      begin
        DataModule1.openSql('select top 0 * from 中央库存_出库表');
        DataModule1.ADOQuery_L.append;
        DataModule1.ADOQuery_L.FieldByName('出库编号').AsString:= CKbianhao;
        DataModule1.ADOQuery_L.FieldByName('出库时间').AsDateTime:= shijian;
        DataModule1.ADOQuery_L.FieldByName('价目编号').AsString:= qry_zhudong.FieldByName('价目编号').AsString;
        DataModule1.ADOQuery_L.FieldByName('名称').AsString:= qry_zhudong.FieldByName('名称').AsString;
        DataModule1.ADOQuery_L.FieldByName('出库数量').AsVariant:= qry_zhudong.FieldByName('出库数量').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('单价').AsVariant:= qry_zhudong.FieldByName('单价').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('出库金额').AsVariant:= qry_zhudong.FieldByName('出库金额').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('舍零金额').AsVariant:= qry_zhudong.FieldByName('舍零金额').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('供应商').AsString:= qry_zhudong.FieldByName('供应商').AsString;
        DataModule1.ADOQuery_L.FieldByName('分店代码').AsString:= qry_zhudong.FieldByName('分店代码').AsString;
        DataModule1.ADOQuery_L.FieldByName('经手人').AsString:= G_user.UserName;
        DataModule1.ADOQuery_L.FieldByName('状态').AsInteger:=1;
        DataModule1.ADOQuery_L.FieldByName('是否作废').asboolean:= false;
        DataModule1.ADOQuery_L.post;
        qry_zhudong.Next;
      end;
      qry_zhudong.EnableControls;
      baocun:=true;
      DataModule1.ADOCon_ALi.CommitTrans;
    except
      DataModule1.ADOCon_ALi.RollbackTrans;
      Application.MessageBox('保存失败', '提示', MB_OK);
    end;

    if baocun then
    begin
      if Application.MessageBox('操作成功！是否打印付货单？', '提示', MB_OKCANCEL +
        MB_ICONQUESTION) = IDOK then
      begin
        DataModule1.openSql('select *,fy=(select top 1 name from 分院表 where abbr=a.分店代码) '+
        ' from (select 分店代码 from 中央库存_出库表 where 出库编号='+QuotedStr(CKbianhao)+' group by 分店代码)a');
        while not DataModule1.ADOQuery_L.Eof do
        begin
          DataModule1.ADOQuery_dayin.Close;
          DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY 名称 DESC) AS xh ,'+
          ' 名称 as mc,出库数量 as sl,单价 as danjia,出库金额 as jine,备注 as beizhu, '+
          ' bz=(select top 1 包装规格 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' dw=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' gg=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号)  '+
          ' from ( select 价目编号,名称,出库数量,单价,出库金额,备注 '+
          ' from 中央库存_出库表 where 出库编号='+QuotedStr(CKbianhao)+' and 分店代码='+QuotedStr(DataModule1.ADOQuery_L.FieldByName('分店代码').AsString)+'  )a';
          DataModule1.ADOQuery_dayin.open;

          DataModule1.frxDBDataset_dayin.FieldAliases.Clear;
          for j:=0 to DataModule1.frxDBDataset_dayin.Dataset.FieldCount-1 do
          begin
            DataModule1.frxDBDataset_dayin.FieldAliases.Add(DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName+'='+
              DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName);
          end;

          DataModule1.frxReport_dayin.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Report\fuhuo.fr3');
          DataModule1.frxReport_dayin.Variables['shijian'] :=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm',shijian));
          DataModule1.frxReport_dayin.Variables['jsr'] :=QuotedStr(G_user.username);
          DataModule1.frxReport_dayin.Variables['bianhao'] :=QuotedStr(CKbianhao);
          DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(DataModule1.ADOQuery_L.FieldByName('分店代码').AsString);
          DataModule1.frxReport_dayin.ShowReport;
          DataModule1.ADOQuery_L.Next;
        end;
      end;
      close;
    end;
    {$ENDREGION}
  end;
end;

procedure TForm_fuhuo.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_fuhuo.cxButton3Click(Sender: TObject);
begin
  if qry_zhudong.Active=false then
    exit;

  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      qry_zhudong.Append;
      qry_zhudong.FieldByName('价目编号').AsString := Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString;
      qry_zhudong.FieldByName('名称').AsString := Form_jiamubiao.ADOQuery1.FieldByName('名称').AsString;
      qry_zhudong.Post;
      qry_zhudong.Edit;
      shifoujisuan:=true;
    end;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_fuhuo.cxButton4Click(Sender: TObject);
begin
  if qry_zhudong.Active=false then
    exit;
  if qry_zhudong.RecordCount=0 then
    exit;
  qry_zhudong.Delete;
end;

procedure TForm_fuhuo.cxGridDBTableView1Column4HeaderClick(Sender: TObject);
var
  i :Integer;
begin
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
end;

procedure TForm_fuhuo.cxLookupComboBox2Exit(Sender: TObject);
var
  zongjine:real;
begin
  if cxLookupComboBox2.Text='' then
    exit;

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select b.* ,c.舍零金额,c.出库金额,c.供应商,c.单价 from ('+
    ' select 编号,申请编号,价目编号,数量,规格,单位,备注, '+
    ' 分店代码=(select top 1 分店代码 from 提货申请主表 where  申请编号=a.申请编号) ,'+
    ' 包装规格=(select top 1 包装规格 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
    ' 申请日期=(select top 1 申请日期 from 提货申请主表 where 申请编号=a.申请编号),'+
    ' mc=(case when isnull(原名称,'''')='''' then 名称 else 原名称 end) '+
    ' from ( select * from 提货申请明细表'+
    ' where 状态=1 and 申请编号 in (select 申请编号 from  提货申请主表 where 是否作废=0 and 状态=2 and 类别=1 '+
    '    and 分店代码='+QuotedStr(cxLookupComboBox2.EditValue)+' )'+
    ' )a)b left join (select 舍零金额,出库金额,出库编号,供应商,单价 from 中央库存_出库表 )c '+
    ' on b.申请编号=c.出库编号 order by 分店代码,申请日期 ';
  qry_thshenqing_mx.Open;

  if qry_thshenqing_mx.RecordCount>0 then
  begin
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
    qry_thshenqing_mx.DisableControls;
    qry_thshenqing_mx.First;
    while not qry_thshenqing_mx.Eof do
    begin
      zongjine:=jisuan_danjia(qry_thshenqing_mx.FieldByName('价目编号').AsString,qry_thshenqing_mx.FieldByName('数量').AsString);
      if zongjine<>-1 then
      begin
        qry_thshenqing_mx.Edit;
        qry_thshenqing_mx.FieldByName('单价').AsFloat:=round(zongjine*100/qry_thshenqing_mx.FieldByName('数量').asfloat)/100;
        qry_thshenqing_mx.FieldByName('出库金额').AsFloat := zongjine;
        qry_thshenqing_mx.Post;
      end;

      DataModule1.openSql('select top 1 供应商 from 中央库存_出库表 '+
      ' where 是否作废=0 and 价目编号='+QuotedStr(qry_thshenqing_mx.FieldByName('价目编号').AsString)+' '+
      ' and 分店代码='+QuotedStr(cxLookupComboBox2.EditValue)+' order by 编号 desc');
      if DataModule1.ADOQuery_L.Eof=False then
      begin
        qry_thshenqing_mx.edit;
        qry_thshenqing_mx.FieldByName('供应商').AsVariant:= DataModule1.ADOQuery_L.FieldByName('供应商').AsVariant;
        qry_thshenqing_mx.Post;
      end;
      qry_thshenqing_mx.Next;
    end;
    qry_thshenqing_mx.EnableControls;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=true;
    qry_thshenqing_mx.edit;
  end;
end;

procedure TForm_fuhuo.cxLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl,True,True);
end;

procedure TForm_fuhuo.cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
begin
     SelectNext(ActiveControl,True,True);
end;

procedure TForm_fuhuo.cxRadioButton1Click(Sender: TObject);
begin
  cxLookupComboBox1.Text:='';
  cxLookupComboBox1.Enabled:=False;
end;

procedure TForm_fuhuo.cxRadioButton2Click(Sender: TObject);
begin
  cxLookupComboBox1.Text:='';
  cxLookupComboBox1.Enabled:=true;
end;

procedure TForm_fuhuo.ds_thshenqing_mxDataChange(Sender: TObject;
  Field: TField);
begin
  if (qry_thshenqing_mx.Modified) and (qry_thshenqing_mx.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '单价') or (LowerCase(Field.FieldName)= '舍零金额') then
    begin
      if qry_thshenqing_mx.FieldByName('单价').AsString='' then
      begin
        Application.MessageBox('付货单价不能为空', '提示', MB_OK);
        exit;
      end;
      if qry_thshenqing_mx.FieldByName('舍零金额').AsString<>'' then
        qry_thshenqing_mx.FieldByName('出库金额').AsFloat:=qry_thshenqing_mx.FieldByName('数量').AsFloat*qry_thshenqing_mx.FieldByName('单价').AsFloat
          -qry_thshenqing_mx.FieldByName('舍零金额').AsFloat
      else
        qry_thshenqing_mx.FieldByName('出库金额').AsFloat:=qry_thshenqing_mx.FieldByName('数量').AsFloat*qry_thshenqing_mx.FieldByName('单价').AsFloat;
    end;
  end;
end;

procedure TForm_fuhuo.ds_zhudongDataChange(Sender: TObject; Field: TField);
var
  zongjine:real;
begin
  if (qry_zhudong.Modified) and (qry_zhudong.State = dsEdit) and (shifoujisuan) then
  begin
    if (LowerCase(Field.FieldName)= '单价') or (LowerCase(Field.FieldName)= '舍零金额') or (LowerCase(Field.FieldName)= '出库数量')  then
    begin
      DataModule1.openSql('select top 1 供应商 from 中央库存_出库表 '+
      ' where 是否作废=0 and 价目编号='+QuotedStr(qry_zhudong.FieldByName('价目编号').AsString)+' '+
      ' and 分店代码='+QuotedStr(qry_zhudong.FieldByName('分店代码').AsString)+' order by 编号 desc');
      if DataModule1.ADOQuery_L.Eof=False then
      begin
        qry_zhudong.FieldByName('供应商').AsVariant:= DataModule1.ADOQuery_L.FieldByName('供应商').AsVariant;
      end;

      if qry_zhudong.FieldByName('出库数量').AsString<>'' then
      begin
        zongjine:=jisuan_danjia(qry_zhudong.FieldByName('价目编号').AsString,qry_zhudong.FieldByName('出库数量').AsString);
        if zongjine<>-1 then
        begin
          shifoujisuan:=false;
          qry_zhudong.FieldByName('单价').AsFloat:=round(zongjine*100/qry_zhudong.FieldByName('出库数量').asfloat)/100;
          qry_zhudong.FieldByName('出库金额').AsFloat := zongjine;
          shifoujisuan:=true;
        end;
      end;

      if (qry_zhudong.FieldByName('单价').AsString<>'') and (qry_zhudong.FieldByName('出库数量').AsString<>'') then
      begin
        if qry_zhudong.FieldByName('舍零金额').AsString<>'' then
          qry_zhudong.FieldByName('出库金额').AsFloat:=qry_zhudong.FieldByName('出库数量').AsFloat*qry_zhudong.FieldByName('单价').AsFloat
            -qry_zhudong.FieldByName('舍零金额').AsFloat
        else
          qry_zhudong.FieldByName('出库金额').AsFloat:=qry_zhudong.FieldByName('出库数量').AsFloat*qry_zhudong.FieldByName('单价').AsFloat;
      end;
    end;
  end;
end;

procedure TForm_fuhuo.FormCreate(Sender: TObject);
begin
  baocun:=false;
  xzbool:=false;
  CKbianhao:='';
  cxLookupComboBox1.Enabled:=false;
  cxPageControl1.HideTabs:=true;

  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from 分院表 where sort_id<>0';
  qry_fenyuan.Open;

  qry_gys.Close;
  qry_gys.SQL.Text:='select 供应商编号,名称 from 供应商表 where 是否作废=0';
  qry_gys.Open;

  qry_yuanyin.Close;
  qry_yuanyin.SQL.Text:='select 类别名称 from 基础设置表 where 类别编号=''不付货原因'' group by 类别名称';
  qry_yuanyin.Open;
end;

procedure TForm_fuhuo.FormShow(Sender: TObject);
begin
  if laiyuan='按申请单' then
  begin
    cxLabel10.Caption:='向门店付货（按申请单）';
    Self.Caption:=cxLabel10.Caption;
    cxTabSheet1.Show;
  end;
  if laiyuan='主动付货' then
  begin
    cxLabel10.Caption:='向门店付货（主动付货）';
    Self.Caption:=cxLabel10.Caption;
    qry_zhudong.Close;
    qry_zhudong.SQL.Text:='select top 0 分店代码,价目编号,名称,出库数量,单价,出库金额,舍零金额,供应商 from 中央库存_出库表';
    qry_zhudong.Open;

    qry_jiamu.Close;
    qry_jiamu.SQL.Text:='select 价目编号,规格,单位,包装规格 from 药品用品价目表';
    qry_jiamu.Open;
    cxTabSheet2.Show;
  end;
end;

end.
