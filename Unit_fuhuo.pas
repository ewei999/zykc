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
  cxDBLookupEdit, cxDBLookupComboBox,Unit_jiamubiao,RunTimeInfo,unit_FuKuan_Edit,
  cxCurrencyEdit,system.Math;

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
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    pm_shenqingdan: TPopupMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    cxlbl3: TcxLabel;
    qry1: TADOQuery;
    act2: TAction;
    cxButton1: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxRadioButton3: TcxRadioButton;
    cxTextEdit37: TcxTextEdit;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    qry_temp: TADOQuery;
    cxGridDBTableView1Column14: TcxGridDBColumn;
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
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    CKbianhao,fenyuanm:string;
    xzbool,shifoujisuan:boolean;

    procedure jisuan;
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
  i,j,x:integer;
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

    if (cxRadioButton1.Checked=False) and (cxRadioButton2.Checked=False) and (cxRadioButton3.Checked=false) then
    begin
      Application.MessageBox('请选择付货，暂不付货或不付货', '提示', MB_OK);
      exit;
    end;

    if cxRadioButton3.Checked then
    begin
      if cxTextEdit37.text='' then
      begin
        Application.MessageBox('请输入暂不付货备注', '提示', MB_OK);
        cxTextEdit37.SetFocus;
        exit;
      end;
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
    qry_kucun.SQL.Text:='select top 0 价目编号,单价,供应商,单价 as 待付数量 from 中央库存_出库表';
    qry_kucun.Open;

    qry_thshenqing_mx.edit;
    qry_thshenqing_mx.post;
    qry_thshenqing_mx.DisableControls;
    qry_thshenqing_mx.First;

    for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
    begin
      if qry_thshenqing_mx.FieldByName('选择').AsBoolean = True then
      begin
        if cxRadioButton1.Checked then
        begin
          if qry_thshenqing_mx.FieldByName('付货数量').AsString='' then
          begin
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('付货数量不能为空', '提示', MB_OK);
            exit;
          end;

          try
            danjia:= qry_thshenqing_mx.FieldByName('付货数量').asfloat;
            if danjia<=0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('付货数量不能小于等于0', '提示', MB_OK);
              exit;
            end;
          except
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('付货数量格式不正确', '提示', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('供应商').AsString='' then
          begin
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('供应商不能为空', '提示', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('单价').AsString='' then
          begin
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('付货单价不能为空', '提示', MB_OK);
            exit;
          end;

          try
            danjia:= qry_thshenqing_mx.FieldByName('单价').asfloat;
            if danjia<0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('单价不能小于0', '提示', MB_OK);
              exit;
            end;
          except
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
                qry_thshenqing_mx.EnableControls;
                qry_thshenqing_mx.edit;
                Application.MessageBox('舍零金额不能小于0', '提示', MB_OK);
                exit;
              end;
            except
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('舍零金额格式不正确', '提示', MB_OK);
              exit;
            end;
          end;

          if (qry_thshenqing_mx.FieldByName('整付数量').AsString<>'') and (qry_thshenqing_mx.FieldByName('整付数量').AsFloat<>0) then
          begin
            if (trunc(qry_thshenqing_mx.FieldByName('付货数量').asfloat*100) mod trunc(qry_thshenqing_mx.FieldByName('整付数量').asfloat*100))<>0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox(PChar('名称'+qry_thshenqing_mx.FieldByName('名称').AsString+'，整付数量为 '+
                qry_thshenqing_mx.FieldByName('整付数量').AsString+' 不能拆开付货'), '提示', MB_OK);
              exit;
            end;
          end;
          if (qry_thshenqing_mx.FieldByName('整付金额').AsString<>'') and (qry_thshenqing_mx.FieldByName('整付金额').AsFloat<>0) then
          begin
            if (trunc(qry_thshenqing_mx.FieldByName('出库金额').asfloat*100) mod trunc(qry_thshenqing_mx.FieldByName('整付金额').asfloat*100))<>0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox(PChar('名称'+qry_thshenqing_mx.FieldByName('名称').AsString+'，整付金额为 '+
                qry_thshenqing_mx.FieldByName('整付金额').AsString+' 不能拆开付货'), '提示', MB_OK);
              exit;
            end;
          end;


          //判断中央仓库是此物品的库存是否够本次付货  ,分单价和供应商

          qry1.Clone(jisuan_danjia(qry_thshenqing_mx.FieldByName('价目编号').AsString ,qry_thshenqing_mx.FieldByName('仓库库存').AsString));
          while not qry1.Eof do
          begin
            if (qry1.FieldByName('供应商编号').AsString=qry_thshenqing_mx.FieldByName('供应商').AsString)
            and (qry1.FieldByName('单价').AsFloat=qry_thshenqing_mx.FieldByName('单价').AsFloat) then
            begin
              if qry_thshenqing_mx.FieldByName('付货数量').AsFloat>qry1.FieldByName('数量').AsFloat then
              begin
                qry_thshenqing_mx.EnableControls;
                qry_thshenqing_mx.edit;
                Application.MessageBox(pchar(qry_thshenqing_mx.FieldByName('名称').AsString+' 库存不足'), '提示', MB_OK);
                exit;
              end
              else
              begin
                qry_kucun.First;
                x:=0;
                while not qry_kucun.Eof do
                begin
                  if (qry_kucun.FieldByName('价目编号').AsString=qry_thshenqing_mx.FieldByName('价目编号').asstring)
                  and (qry_kucun.FieldByName('供应商').asstring=qry_thshenqing_mx.FieldByName('供应商').asstring)
                  and (qry_kucun.FieldByName('单价').AsFloat=qry_thshenqing_mx.FieldByName('单价').AsFloat) then
                  begin
                    qry_kucun.Edit;
                    qry_kucun.FieldByName('待付数量').AsFloat:= qry_kucun.FieldByName('待付数量').AsFloat+qry_thshenqing_mx.FieldByName('付货数量').asfloat;
                    qry_kucun.Post;
                    x:=1;
                    Break;
                  end;
                  qry_kucun.Next;
                end;
                if x=0 then
                begin
                  qry_kucun.Append;
                  qry_kucun.FieldByName('价目编号').AsString:= qry_thshenqing_mx.FieldByName('价目编号').asstring;
                  qry_kucun.FieldByName('单价').asstring:= qry_thshenqing_mx.FieldByName('单价').asstring;
                  qry_kucun.FieldByName('供应商').asstring:= qry_thshenqing_mx.FieldByName('供应商').asstring;
                  qry_kucun.FieldByName('待付数量').AsFloat:= qry_thshenqing_mx.FieldByName('付货数量').asfloat;
                  qry_kucun.Post;
                end;

                if qry_kucun.FieldByName('待付数量').AsFloat>qry1.FieldByName('数量').AsFloat then
                begin
                  qry_thshenqing_mx.EnableControls;
                  qry_thshenqing_mx.edit;
                  Application.MessageBox(pchar('名称：'+qry_thshenqing_mx.FieldByName('名称').asstring+
                  ' 单价：'+qry_thshenqing_mx.FieldByName('单价').asstring+' 供应商：'+qry_thshenqing_mx.FieldByName('供应商').asstring+
                  ' 库存不足，不能付货'), '提示', MB_OK);
                  exit;
                end;

              end;
            end;
            qry1.Next;
          end;

        end;
        j:=j+1;
      end;
      qry_thshenqing_mx.Next;
    end;
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
    if cxRadioButton3.Checked then
      tishi:='暂不付货  '+cxTextEdit37.text;

    if Application.MessageBox(pchar('已选择 '+inttostr(j)+' 条记录，操作为：'+tishi+' 确认操作吗？'), '确认', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;

    shijian:=XiTong_date;
    DataModule1.ADOCon_ALi.BeginTrans;
    try
      qry_temp.Clone(qry_thshenqing_mx);

      if cxRadioButton1.Checked then  //付货，写出库表
        CKbianhao:= AutoCreateNo('ZYFH','中央库存付货');
      qry_thshenqing_mx.DisableControls;
      qry_thshenqing_mx.First;
      for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
      begin
        if qry_thshenqing_mx.FieldByName('选择').AsBoolean = True then
        begin
          if cxRadioButton1.Checked then  //付货，写出库表
          begin
            DataModule1.openSql('select top 0 * from 中央库存_出库表');
            DataModule1.ADOQuery_L.append;
            DataModule1.ADOQuery_L.FieldByName('出库编号').AsString:= CKbianhao;
            DataModule1.ADOQuery_L.FieldByName('出库时间').AsDateTime:= shijian;
            DataModule1.ADOQuery_L.FieldByName('价目编号').AsString:= qry_thshenqing_mx.FieldByName('价目编号').AsString;
            DataModule1.ADOQuery_L.FieldByName('名称').AsString:= qry_thshenqing_mx.FieldByName('名称').AsString;
            DataModule1.ADOQuery_L.FieldByName('出库数量').AsVariant:= qry_thshenqing_mx.FieldByName('付货数量').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('单价').AsVariant:= qry_thshenqing_mx.FieldByName('单价').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('出库金额').AsVariant:= qry_thshenqing_mx.FieldByName('出库金额').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('舍零金额').AsVariant:= qry_thshenqing_mx.FieldByName('舍零金额').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('供应商').AsString:= qry_thshenqing_mx.FieldByName('供应商').AsString;
            DataModule1.ADOQuery_L.FieldByName('分店代码').AsString:= qry_thshenqing_mx.FieldByName('分店代码').AsString;
            DataModule1.ADOQuery_L.FieldByName('备注').AsString:= qry_thshenqing_mx.FieldByName('备注').AsString;
            DataModule1.ADOQuery_L.FieldByName('价目备注').AsString:= qry_thshenqing_mx.FieldByName('价目备注').AsString;
            DataModule1.ADOQuery_L.FieldByName('经手人').AsString:= G_user.UserName;
            DataModule1.ADOQuery_L.FieldByName('状态').AsInteger:=1;
            DataModule1.ADOQuery_L.FieldByName('是否作废').asboolean:= false;

            if qry_thshenqing_mx.FieldByName('申请数量').AsString<>'' then
            begin
              DataModule1.ADOQuery_L.FieldByName('申请编号').AsString:= qry_thshenqing_mx.FieldByName('编号').AsString;

              danjia:=0;
              qry_temp.First;
              while not qry_temp.Eof do
              begin
                if (qry_thshenqing_mx.FieldByName('选择').AsBoolean=true)
                and (qry_temp.FieldByName('价目编号').AsString=DataModule1.ADOQuery_L.FieldByName('价目编号').AsString)
                and (qry_temp.FieldByName('付货数量').AsString<>'') then
                  danjia:=danjia+qry_temp.FieldByName('付货数量').AsFloat;
                qry_temp.Next;
              end;


              if qry_thshenqing_mx.FieldByName('申请数量').AsFloat<=danjia then
              begin
                DataModule1.execSql('update 提货申请明细表 set 状态=2,出库编号='+QuotedStr(ckbianhao)+' '+
                ' where 编号='+qry_thshenqing_mx.FieldByName('编号').AsString+' ');
              end
              else
              begin
                DataModule1.execSql('update 提货申请明细表 set 数量=数量-'+floattostr(danjia)+' '+
                ' where 编号='+qry_thshenqing_mx.FieldByName('编号').AsString+' ');
              end;
            end;
            DataModule1.ADOQuery_L.post;
          end;

          if cxRadioButton3.Checked then  //暂不付货
          begin
            DataModule1.execSql('update 提货申请明细表 set 不付货原因='+QuotedStr(cxTextEdit37.Text)+' '+
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
      qry_thshenqing_mx.EnableControls;
      if cxRadioButton2.Checked then  //不付货
      begin
        DataModule1.openSql('select * from 基础设置表 where 类别编号=''不付货原因'' and 类别名称='+QuotedStr(trim(cxLookupComboBox1.Text))+' ');
        if DataModule1.ADOQuery_L.Eof then
        begin
          DataModule1.ADOQuery_L.Append;
          DataModule1.ADOQuery_L.FieldByName('类别编号').AsString:='不付货原因';
          DataModule1.ADOQuery_L.FieldByName('类别名称').AsString:=trim(cxLookupComboBox1.Text);
          DataModule1.ADOQuery_L.Post;
        end;
      end;
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
          DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY 供应商,名称 ) AS xh ,'+
          ' 名称 as mc,出库数量 as sl,单价 as danjia,出库金额 as jine,备注 as beizhu, '+
          ' bz=(select top 1 包装规格 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' dw=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' gg=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号),  '+
          ' gysmc=(select top 1 名称 from 供应商表 where 供应商编号=a.供应商)'+
          ' from ( select 价目编号,名称,出库数量,单价,出库金额,备注,供应商 '+
          ' from 中央库存_出库表 where 出库编号='+QuotedStr(CKbianhao)+' )a ORDER BY 供应商,名称';
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
        fenyuanm:='';
        cxLookupComboBox2Exit(Sender);
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
    qry_kucun.SQL.Text:='select top 0 价目编号,单价,供应商,单价 as 待付数量,单价 as 整付数量,单价 as 整付金额,供应商 as 备注 from 中央库存_出库表';
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
        danjia:= qry_zhudong.FieldByName('付货数量').asfloat;
        if danjia<=0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('付货数量不能小于等于0', '提示', MB_OK);
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

      if (qry_zhudong.FieldByName('整付数量').AsString<>'') and (qry_zhudong.FieldByName('整付数量').AsFloat<>0) then
      begin
        if (trunc(qry_zhudong.FieldByName('付货数量').asfloat*100) mod trunc(qry_zhudong.FieldByName('整付数量').asfloat*100))<>0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox(PChar('名称'+qry_zhudong.FieldByName('名称').AsString+'，整付数量为 '+
            qry_zhudong.FieldByName('整付数量').AsString+' 不能拆开付货'), '提示', MB_OK);
          exit;
        end;
      end;
      if (qry_zhudong.FieldByName('整付金额').AsString<>'') and (qry_zhudong.FieldByName('整付金额').AsFloat<>0) then
      begin
        if (trunc(qry_zhudong.FieldByName('出库金额').asfloat*100) mod trunc(qry_zhudong.FieldByName('整付金额').asfloat*100))<>0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox(PChar('名称'+qry_zhudong.FieldByName('名称').AsString+'，整付金额为 '+
             qry_zhudong.FieldByName('整付金额').AsString+' 不能拆开付货'), '提示', MB_OK);
          exit;
        end;
      end;



      //判断中央仓库是此物品的库存是否够本次付货  ,分单价和供应商
      qry1.Clone(jisuan_danjia(qry_zhudong.FieldByName('价目编号').AsString ,qry_zhudong.FieldByName('仓库库存').AsString));
      while not qry1.Eof do
      begin
        if (qry1.FieldByName('供应商编号').AsString=qry_zhudong.FieldByName('供应商').AsString)
        and (qry1.FieldByName('单价').AsFloat=qry_zhudong.FieldByName('单价').AsFloat)
        and (qry1.FieldByName('备注').AsString=qry_zhudong.FieldByName('价目备注').AsString)
        and (qry1.FieldByName('整付数量').AsString=qry_zhudong.FieldByName('整付数量').AsString)
        and (qry1.FieldByName('整付金额').AsString=qry_zhudong.FieldByName('整付金额').AsString)
        then
        begin
          if qry_zhudong.FieldByName('付货数量').AsFloat>qry1.FieldByName('数量').AsFloat then
          begin
            qry_zhudong.EnableControls;
            qry_zhudong.edit;
            Application.MessageBox(pchar(qry_zhudong.FieldByName('名称').AsString+' 库存不足'), '提示', MB_OK);
            exit;
          end
          else
          begin
            qry_kucun.First;
            x:=0;
            while not qry_kucun.Eof do
            begin
              if (qry_kucun.FieldByName('价目编号').AsString=qry_zhudong.FieldByName('价目编号').asstring)
              and (qry_kucun.FieldByName('供应商').asstring=qry_zhudong.FieldByName('供应商').asstring)
              and (qry_kucun.FieldByName('单价').AsFloat=qry_zhudong.FieldByName('单价').AsFloat)
              and (qry_kucun.FieldByName('备注').AsString=qry_zhudong.FieldByName('价目备注').AsString)
              and (qry_kucun.FieldByName('整付数量').AsString=qry_zhudong.FieldByName('整付数量').AsString)
              and (qry_kucun.FieldByName('整付金额').AsString=qry_zhudong.FieldByName('整付金额').AsString)
              then
              begin
                qry_kucun.Edit;
                qry_kucun.FieldByName('待付数量').AsFloat:= qry_kucun.FieldByName('待付数量').AsFloat+qry_zhudong.FieldByName('付货数量').asfloat;
                qry_kucun.Post;
                x:=1;
                Break;
              end;
              qry_kucun.Next;
            end;
            if x=0 then
            begin
              qry_kucun.Append;
              qry_kucun.FieldByName('价目编号').AsString:= qry_zhudong.FieldByName('价目编号').asstring;
              qry_kucun.FieldByName('单价').asstring:= qry_zhudong.FieldByName('单价').asstring;
              qry_kucun.FieldByName('供应商').asstring:= qry_zhudong.FieldByName('供应商').asstring;
              qry_kucun.FieldByName('备注').asstring:= qry_zhudong.FieldByName('价目备注').asstring;
              qry_kucun.FieldByName('待付数量').AsFloat:= qry_zhudong.FieldByName('付货数量').asfloat;
              qry_kucun.FieldByName('整付数量').asstring:= qry_zhudong.FieldByName('整付数量').asstring;
              qry_kucun.FieldByName('整付金额').asstring:= qry_zhudong.FieldByName('整付金额').asstring;
              qry_kucun.Post;
            end;

            if qry_kucun.FieldByName('待付数量').AsFloat>qry1.FieldByName('数量').AsFloat then
            begin
              qry_zhudong.EnableControls;
              qry_zhudong.edit;
              Application.MessageBox(pchar('名称：'+qry_zhudong.FieldByName('名称').asstring+
                  ' 单价：'+qry_zhudong.FieldByName('单价').asstring+' 供应商：'+qry_zhudong.FieldByName('供应商').asstring+
                  ' 库存不足，不能付货'), '提示', MB_OK);
              exit;
            end;
          end;
        end;
        qry1.Next;
      end;

      qry_zhudong.Next;
    end;
    qry_zhudong.EnableControls;

    if Application.MessageBox('确认付货吗？', '确认', MB_OKCANCEL + MB_ICONINFORMATION) = IDCANCEL then
      exit;

    shijian:=XiTong_date;
    DataModule1.ADOCon_ALi.BeginTrans;
    try
      qry_zhudong.DisableControls;
      qry_zhudong.First;
      CKbianhao:= AutoCreateNo('ZYFH','中央库存付货');
      while not qry_zhudong.Eof do
      begin
        DataModule1.openSql('select top 0 * from 中央库存_出库表');
        DataModule1.ADOQuery_L.append;
        DataModule1.ADOQuery_L.FieldByName('出库编号').AsString:= CKbianhao;
        DataModule1.ADOQuery_L.FieldByName('出库时间').AsDateTime:= shijian;
        DataModule1.ADOQuery_L.FieldByName('价目编号').AsString:= qry_zhudong.FieldByName('价目编号').AsString;
        DataModule1.ADOQuery_L.FieldByName('名称').AsString:= qry_zhudong.FieldByName('名称').AsString;
        DataModule1.ADOQuery_L.FieldByName('出库数量').AsVariant:= qry_zhudong.FieldByName('付货数量').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('单价').AsVariant:= qry_zhudong.FieldByName('单价').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('出库金额').AsVariant:= qry_zhudong.FieldByName('出库金额').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('供应商').AsString:= qry_zhudong.FieldByName('供应商').AsString;
        DataModule1.ADOQuery_L.FieldByName('分店代码').AsString:= qry_zhudong.FieldByName('分店代码').AsString;
        DataModule1.ADOQuery_L.FieldByName('价目备注').AsString:= qry_zhudong.FieldByName('价目备注').AsString;
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
          DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY 供应商,名称) AS xh ,'+
          ' 名称 as mc,出库数量 as sl,单价 as danjia,出库金额 as jine,备注 as beizhu, '+
          ' bz=(select top 1 包装规格 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' dw=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号) ,'+
          ' gg=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号) , '+
          ' gysmc=(select top 1 名称 from 供应商表 where 供应商编号=a.供应商)'+
          ' from ( select 价目编号,名称,出库数量,单价,出库金额,备注,供应商 '+
          ' from 中央库存_出库表 where 出库编号='+QuotedStr(CKbianhao)+' '+
          ' and 分店代码='+QuotedStr(DataModule1.ADOQuery_L.FieldByName('分店代码').AsString)+'  )a ORDER BY 供应商,名称';
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
          DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(DataModule1.ADOQuery_L.FieldByName('fy').AsString);
          DataModule1.frxReport_dayin.ShowReport;
          DataModule1.ADOQuery_L.Next;
        end;
      end;
      qry_zhudong.Close;
      qry_zhudong.SQL.Text:='select top 0 分店代码,价目编号,名称,出库数量 as 付货数量,单价,出库金额,供应商,'+
      ' 名称 as 包装规格,单价 as 仓库库存,舍零金额,出库数量 as 整付数量,单价 as 整付金额,价目备注 from 中央库存_出库表';
      qry_zhudong.Open;
    end;
    {$ENDREGION}
  end;
end;

procedure TForm_fuhuo.act2Execute(Sender: TObject);
begin
  DaochuExcel(cxGrid2);
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
    Form_jiamubiao.leibie:='主动付货';
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      qry_zhudong.Append;
      qry_zhudong.FieldByName('价目编号').AsString := Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString;
      qry_zhudong.FieldByName('名称').AsString := Form_jiamubiao.ADOQuery1.FieldByName('名称').AsString;
      qry_zhudong.FieldByName('仓库库存').AsFloat:= ChaXunKuCun(qry_zhudong.FieldByName('价目编号').asstring);
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



procedure TForm_fuhuo.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (cxGridDBTableView1.Controller.FocusedColumn.VisibleCaption = '仓库库存') then
  begin
    Form_FuKuan_Edit := TForm_FuKuan_Edit.Create(nil);
    try
      Form_FuKuan_Edit.leibiestr:='库存列表';
      Form_FuKuan_Edit.cxlbl1.Caption:= qry_thshenqing_mx.FieldByName('名称').AsString ;
      Form_FuKuan_Edit.cxlbl1.Style.Font.Size:=16;
      Form_FuKuan_Edit.qry_liebiao.Clone(jisuan_danjia(qry_thshenqing_mx.FieldByName('价目编号').AsString ,qry_thshenqing_mx.FieldByName('仓库库存').AsString));
      Form_FuKuan_Edit.ShowModal;
      if Form_FuKuan_Edit.baocun then
      begin
        qry_thshenqing_mx.Edit;
        qry_thshenqing_mx.FieldByName('单价').AsFloat:=Form_FuKuan_Edit.qry_liebiao.FieldByName('单价').AsFloat;
        if qry_thshenqing_mx.FieldByName('申请数量').AsString <>'' then
        begin
          if Form_FuKuan_Edit.qry_liebiao.FieldByName('数量').AsFloat>qry_thshenqing_mx.FieldByName('申请数量').AsFloat then
            qry_thshenqing_mx.FieldByName('付货数量').AsFloat:= qry_thshenqing_mx.FieldByName('申请数量').AsFloat
          else
            qry_thshenqing_mx.FieldByName('付货数量').AsFloat:= Form_FuKuan_Edit.qry_liebiao.FieldByName('数量').AsFloat;
        end
        else
        begin
          qry_thshenqing_mx.FieldByName('付货数量').AsFloat:= 1;
        end;

        qry_thshenqing_mx.FieldByName('供应商').AsString:= Form_FuKuan_Edit.qry_liebiao.FieldByName('供应商编号').AsString;
        qry_thshenqing_mx.FieldByName('出库金额').AsFloat := qry_thshenqing_mx.FieldByName('单价').AsFloat*qry_thshenqing_mx.FieldByName('付货数量').AsFloat;
        qry_thshenqing_mx.FieldByName('整付数量').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('整付数量').AsVariant;
        qry_thshenqing_mx.FieldByName('整付金额').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('整付金额').AsVariant;
        qry_thshenqing_mx.FieldByName('价目备注').AsString:= Form_FuKuan_Edit.qry_liebiao.FieldByName('备注').AsString;

        qry_thshenqing_mx.Post;
      end;
    finally
      FreeAndNil(Form_FuKuan_Edit);
    end;
  end;
end;

procedure TForm_fuhuo.cxGridDBTableView1Column4HeaderClick(Sender: TObject);
begin
  xzbool:= not xzbool;
  qry_thshenqing_mx.DisableControls;
  qry_thshenqing_mx.First;
  while not qry_thshenqing_mx.Eof do
  begin
    qry_thshenqing_mx.Edit;
    qry_thshenqing_mx.FieldByName('选择').AsBoolean:= xzbool;
    if qry_thshenqing_mx.FieldByName('仓库库存').AsFloat=0 then
      qry_thshenqing_mx.FieldByName('选择').AsBoolean:= false;
    qry_thshenqing_mx.Post;

    qry_thshenqing_mx.Next;
  end;
  qry_thshenqing_mx.EnableControls;
end;

procedure TForm_fuhuo.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (cxGridDBTableView2.Controller.FocusedColumn.VisibleCaption = '仓库库存') then
  begin
    Form_FuKuan_Edit := TForm_FuKuan_Edit.Create(nil);
    try
      Form_FuKuan_Edit.leibiestr:='库存列表';
      Form_FuKuan_Edit.cxlbl1.Caption:= qry_zhudong.FieldByName('名称').AsString ;
      Form_FuKuan_Edit.cxlbl1.Style.Font.Size:=16;
      Form_FuKuan_Edit.qry_liebiao.Clone(jisuan_danjia(qry_zhudong.FieldByName('价目编号').AsString ,qry_zhudong.FieldByName('仓库库存').AsString));
      Form_FuKuan_Edit.ShowModal;
      if Form_FuKuan_Edit.baocun then
      begin
        qry_zhudong.Edit;
        qry_zhudong.FieldByName('单价').AsFloat:=Form_FuKuan_Edit.qry_liebiao.FieldByName('单价').AsFloat;
        qry_zhudong.FieldByName('付货数量').AsFloat:= 0;
        qry_zhudong.FieldByName('供应商').AsString:= Form_FuKuan_Edit.qry_liebiao.FieldByName('供应商编号').AsString;
        qry_zhudong.FieldByName('出库金额').AsFloat := qry_zhudong.FieldByName('单价').AsFloat*qry_zhudong.FieldByName('付货数量').AsFloat;
        qry_zhudong.FieldByName('整付数量').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('整付数量').AsVariant;
        qry_zhudong.FieldByName('整付金额').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('整付金额').AsVariant;
        qry_zhudong.FieldByName('价目备注').AsString := Form_FuKuan_Edit.qry_liebiao.FieldByName('备注').AsString;
        qry_zhudong.Post;
      end;
    finally
      FreeAndNil(Form_FuKuan_Edit);
    end;
  end;
end;

procedure TForm_fuhuo.cxLookupComboBox2Exit(Sender: TObject);
var
  zongjine:real;
begin
  if cxLookupComboBox2.Text='' then
    exit;
  if fenyuanm=cxLookupComboBox2.Text then
    exit;

  fenyuanm:=cxLookupComboBox2.Text;

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select top 0 状态 as 编号,选择,价目编号,数量 as 申请数量,数量 as 付货数量,规格,单位,备注,'+
    ' 库存 as 申请时库存,单价,单位 as 供应商,单价 as 出库金额,单价 as 舍零金额,单位 as 包装规格,名称,单位 as 分店代码,'+
    ' 库存 as 仓库库存,价目编号 as 审批日期,不付货原因,紧急程度,数量 as 整付数量,单价 as 整付金额,价目编号 as 价目备注 from 提货申请明细表';
  qry_thshenqing_mx.Open;

  Show_RuntimeInfo('正在打开');

  DataModule1.openSql('select b.* ,c.舍零金额,c.出库金额,c.供应商,c.单价 from ('+
    ' select 编号,申请编号,价目编号,数量,规格,单位,备注,库存,选择,名称,不付货原因,紧急程度, '+
    ' 分店代码=(select top 1 分店代码 from 提货申请主表 where  申请编号=a.申请编号) ,'+
    ' 审批日期=(select top 1 convert(char(10),审批时间,120) from 提货申请审批表 where 申请编号=a.申请编号 and 审批时间 is not null order by 编号 desc ),'+
    ' 包装规格=(select top 1 包装规格 from 药品用品价目表 where 价目编号=a.价目编号) '+
    ' from ( select * from 提货申请明细表'+
    ' where 状态=1 and 申请编号 in (select 申请编号 from  提货申请主表 where 是否作废=0 and 状态=2 and 类别=1 '+
    '    and 分店代码='+QuotedStr(cxLookupComboBox2.EditValue)+' )'+
    ' )a)b left join (select 舍零金额,出库金额,出库编号,供应商,单价 from 中央库存_出库表 )c '+
    ' on b.申请编号=c.出库编号 ');
  qry_thshenqing_mx.DisableControls;
  while not DataModule1.ADOQuery_L.Eof do
  begin
    qry_thshenqing_mx.Append;
    qry_thshenqing_mx.FieldByName('选择').AsBoolean:=false;
    qry_thshenqing_mx.FieldByName('编号').asstring:= DataModule1.ADOQuery_L.FieldByName('编号').AsString;
    qry_thshenqing_mx.FieldByName('价目编号').asstring:= DataModule1.ADOQuery_L.FieldByName('价目编号').AsString;
    qry_thshenqing_mx.FieldByName('申请数量').asstring:= DataModule1.ADOQuery_L.FieldByName('数量').AsString;
    qry_thshenqing_mx.FieldByName('付货数量').asstring:= '';
    qry_thshenqing_mx.FieldByName('规格').asstring:= DataModule1.ADOQuery_L.FieldByName('规格').AsString;
    qry_thshenqing_mx.FieldByName('单位').asstring:= DataModule1.ADOQuery_L.FieldByName('单位').AsString;
    qry_thshenqing_mx.FieldByName('备注').asstring:= DataModule1.ADOQuery_L.FieldByName('备注').AsString;
    qry_thshenqing_mx.FieldByName('申请时库存').asstring:= DataModule1.ADOQuery_L.FieldByName('库存').AsString;
    qry_thshenqing_mx.FieldByName('包装规格').asstring:= DataModule1.ADOQuery_L.FieldByName('包装规格').AsString;
    qry_thshenqing_mx.FieldByName('名称').asstring:= DataModule1.ADOQuery_L.FieldByName('名称').AsString;
    qry_thshenqing_mx.FieldByName('分店代码').asstring:= DataModule1.ADOQuery_L.FieldByName('分店代码').AsString;
    qry_thshenqing_mx.FieldByName('审批日期').asstring:= DataModule1.ADOQuery_L.FieldByName('审批日期').AsString;
    qry_thshenqing_mx.FieldByName('不付货原因').asstring:= DataModule1.ADOQuery_L.FieldByName('不付货原因').AsString;
    qry_thshenqing_mx.FieldByName('紧急程度').asstring:= DataModule1.ADOQuery_L.FieldByName('紧急程度').AsString;
    qry_thshenqing_mx.FieldByName('单价').AsVariant:= null;
    qry_thshenqing_mx.FieldByName('供应商').asstring:= '';
    qry_thshenqing_mx.FieldByName('出库金额').AsVariant:=null;
    qry_thshenqing_mx.FieldByName('舍零金额').AsVariant:=null;
    qry_thshenqing_mx.FieldByName('出库金额').AsVariant:=null;
    qry_thshenqing_mx.FieldByName('仓库库存').AsFloat:= ChaXunKuCun(qry_thshenqing_mx.FieldByName('价目编号').asstring);
    qry_thshenqing_mx.Post;

    DataModule1.ADOQuery_L.Next;
  end;
  qry_thshenqing_mx.EnableControls;
  hide_RuntimeInfo;
  if qry_thshenqing_mx.RecordCount>0 then
    qry_thshenqing_mx.Edit;
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


procedure TForm_fuhuo.jisuan;
var
  zongjine:real;
begin
//  zongjine:=jisuan_danjia(qry_thshenqing_mx.FieldByName('价目编号').AsString,qry_thshenqing_mx.FieldByName('数量').AsString);
  if zongjine<>-1 then
  begin
    qry_thshenqing_mx.Edit;
    qry_thshenqing_mx.FieldByName('单价').AsFloat:=round(zongjine*100/qry_thshenqing_mx.FieldByName('数量').asfloat)/100;
    qry_thshenqing_mx.FieldByName('出库金额').AsFloat := zongjine;
    qry_thshenqing_mx.Post;
  end;
end;


procedure TForm_fuhuo.N1Click(Sender: TObject);
begin
  if qry_thshenqing_mx.Active=false then
    exit;
  if qry_thshenqing_mx.RecordCount=0 then
    exit;
  if qry_thshenqing_mx.FieldByName('申请数量').AsString<>'' then
  begin
    Application.MessageBox('门店申请记录不能删除', '提示', MB_OK);
    exit;
  end;
  qry_thshenqing_mx.Delete;
end;

procedure TForm_fuhuo.N2Click(Sender: TObject);
var
  mc,jmbh,gg,dw,bzgg,fddd  :string;
begin
  if qry_thshenqing_mx.FieldByName('名称').AsString='' then
    exit;
  jmbh:= qry_thshenqing_mx.FieldByName('价目编号').asstring;
  mc:= qry_thshenqing_mx.FieldByName('名称').asstring;
  gg:= qry_thshenqing_mx.FieldByName('规格').asstring;
  dw:= qry_thshenqing_mx.FieldByName('单位').asstring;
  bzgg:= qry_thshenqing_mx.FieldByName('包装规格').asstring;
  fddd:= qry_thshenqing_mx.FieldByName('分店代码').asstring;

  qry_thshenqing_mx.Append;
  qry_thshenqing_mx.FieldByName('编号').asstring:='';
  qry_thshenqing_mx.FieldByName('选择').AsBoolean:=True;
  qry_thshenqing_mx.FieldByName('价目编号').asstring:= jmbh;
  qry_thshenqing_mx.FieldByName('申请数量').asstring:='';
  qry_thshenqing_mx.FieldByName('付货数量').asstring:= '';
  qry_thshenqing_mx.FieldByName('规格').asstring:= gg;
  qry_thshenqing_mx.FieldByName('单位').asstring:= dw;
  qry_thshenqing_mx.FieldByName('备注').asstring:= '';
  qry_thshenqing_mx.FieldByName('申请时库存').asstring:= '';
  qry_thshenqing_mx.FieldByName('包装规格').asstring:= bzgg;
  qry_thshenqing_mx.FieldByName('名称').asstring:= mc;
  qry_thshenqing_mx.FieldByName('分店代码').asstring:= fddd;
  qry_thshenqing_mx.FieldByName('单价').AsVariant:= null;
  qry_thshenqing_mx.FieldByName('供应商').asstring:= '';
  qry_thshenqing_mx.FieldByName('出库金额').AsVariant:=null;
//  qry_thshenqing_mx.FieldByName('舍零金额').AsVariant:=null;
  qry_thshenqing_mx.FieldByName('出库金额').AsVariant:=null;
  qry_thshenqing_mx.FieldByName('仓库库存').asfloat:=ChaXunKuCun(jmbh);
  qry_thshenqing_mx.Post;
end;

procedure TForm_fuhuo.ds_thshenqing_mxDataChange(Sender: TObject;
  Field: TField);
var
  zongjine:real;
begin
  if (qry_thshenqing_mx.Modified) and (qry_thshenqing_mx.State = dsEdit) and (shifoujisuan=true)  then
  begin
    if  ((LowerCase(Field.FieldName)= '付货数量')   or (LowerCase(Field.FieldName)= '舍零金额') ) and (shifoujisuan=true)  then
    begin
      shifoujisuan:=false;

      if (qry_thshenqing_mx.FieldByName('单价').AsString='') or (qry_thshenqing_mx.FieldByName('付货数量').AsString='') or (qry_thshenqing_mx.FieldByName('付货数量').AsFloat<=0) then
      begin
        qry_thshenqing_mx.FieldByName('舍零金额').AsVariant:=null;
        qry_thshenqing_mx.FieldByName('出库金额').AsVariant:=null;
      end
      else
      begin
        if qry_thshenqing_mx.FieldByName('舍零金额').AsString<>'' then
          qry_thshenqing_mx.FieldByName('出库金额').AsFloat:=qry_thshenqing_mx.FieldByName('付货数量').AsFloat*qry_thshenqing_mx.FieldByName('单价').AsFloat
            -qry_thshenqing_mx.FieldByName('舍零金额').AsFloat
        else
          qry_thshenqing_mx.FieldByName('出库金额').AsFloat:=qry_thshenqing_mx.FieldByName('付货数量').AsFloat*qry_thshenqing_mx.FieldByName('单价').AsFloat;
      end;
    end;
    shifoujisuan:=true;
  end;
end;

procedure TForm_fuhuo.ds_zhudongDataChange(Sender: TObject; Field: TField);
begin
  if (qry_zhudong.Modified) and (qry_zhudong.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '付货数量') or (LowerCase(Field.FieldName)= '舍零金额')  then
    begin
      if (qry_zhudong.FieldByName('单价').AsString<>'') and (qry_zhudong.FieldByName('付货数量').AsString<>'') then
      begin
        if qry_zhudong.FieldByName('舍零金额').AsString='' then
          qry_zhudong.FieldByName('出库金额').AsFloat:=qry_zhudong.FieldByName('付货数量').AsFloat*qry_zhudong.FieldByName('单价').AsFloat
        else
          qry_zhudong.FieldByName('出库金额').AsFloat:=(qry_zhudong.FieldByName('付货数量').AsFloat*qry_zhudong.FieldByName('单价').AsFloat)
                -qry_zhudong.FieldByName('舍零金额').AsFloat;
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
    shifoujisuan:=true;
    self.WindowState:=wsMaximized;
    cxTabSheet1.Show;
  end;
  if laiyuan='主动付货' then
  begin
    cxLabel10.Caption:='向门店付货（主动付货）';
    Self.Caption:=cxLabel10.Caption;
    qry_zhudong.Close;
    qry_zhudong.SQL.Text:='select top 0 分店代码,价目编号,名称,出库数量 as 付货数量,单价,出库金额,供应商,'+
      ' 名称 as 包装规格,单价 as 仓库库存,舍零金额,出库数量 as 整付数量,单价 as 整付金额,价目备注 from 中央库存_出库表';
    qry_zhudong.Open;

    qry_jiamu.Close;
    qry_jiamu.SQL.Text:='select 价目编号,规格,单位,包装规格 from 药品用品价目表';
    qry_jiamu.Open;
    cxTabSheet2.Show;
  end;
end;

end.
