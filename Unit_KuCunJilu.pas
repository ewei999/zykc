unit Unit_KuCunJilu;

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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxCalendar, cxCheckBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,system.DateUtils;

type
  TForm_KuCunJilu = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    cxButton8: TcxButton;
    actmgr1: TActionManager;
    act_close: TAction;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid11: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBTableView8Column4: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBTableView8Column1: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBTableView8Column2: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    qry_leibiao: TADOQuery;
    ds_leibiao: TDataSource;
    cxTabSheet2: TcxTabSheet;
    cxGridDBTableView8Column3: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView8Column5: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    act1: TAction;
    cxButton1: TcxButton;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    cxlbl2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxlbl3: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxButton4: TcxButton;
    ds_huizong: TDataSource;
    qry_huizong: TADOQuery;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxlbl9: TcxLabel;
    cxTextEdit37: TcxTextEdit;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView2Column1HeaderClick(Sender: TObject);
    procedure act1Execute(Sender: TObject);
  private
    seltrue:boolean;
  public
    leibie,BHStr:string;
  end;

var
  Form_KuCunJilu: TForm_KuCunJilu;

implementation
  uses Unit_DM;
{$R *.dfm}

procedure TForm_KuCunJilu.act1Execute(Sender: TObject);
var
  i:integer;
begin
  if leibie='采购记录选择' then
  begin
    BHStr:='';
    qry_leibiao.DisableControls;
    qry_leibiao.First;
    cxGridDBTableView2.DataController.DataModeController.SmartRefresh:=false;
    for i:=0 to qry_leibiao.RecordCount - 1 do
    begin
      if cxGridDBTableView2.DataController.Values[i,cxGridDBTableView2Column1.Index] = True then
      begin
        if BHStr='' then
          BHStr:=qry_leibiao.FieldByName('编号').AsString
        else
          BHStr:=BHStr+','+qry_leibiao.FieldByName('编号').AsString;
      end;
      qry_leibiao.next;
    end;
    cxGridDBTableView2.DataController.DataModeController.SmartRefresh:=true;
    qry_leibiao.EnableControls;

    if BHStr='' then
    begin
      Application.MessageBox('请选择采购记录', '提示', MB_OK );
      exit;
    end;
    close;
  end;
end;

procedure TForm_KuCunJilu.act_closeExecute(Sender: TObject);
begin
  if leibie='采购记录选择' then
  begin
    if cxPageControl1.ActivePage=cxTabSheet3 then
      cxTabSheet4.Show
    else
    begin
      BHStr:='';
      close;
    end;
  end
  else
  begin
    BHStr:='';
    close;
  end;
end;

procedure TForm_KuCunJilu.cxButton4Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDateEdit1.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDateEdit1.Text)+'';
  if cxDateEdit2.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDateEdit2.date,1)))+'';

  if Trim(cxTextEdit37.Text)<>'' then
    tjstr:=tjstr+'  and 申请编号 in (select 申请编号 from 中央采购申请明细表 where 名称 like ''%'+Trim(cxTextEdit37.Text)+'%'' )';

  qry_huizong.Close;
  qry_huizong.SQL.Text:='select *,  '+
    '  zt=(case 状态 when 0 then ''草稿'' when 1 then ''已提交'' when 3 then ''审批完成'' when 4 then ''退回'' end ), '+
    ' 申请数=(select count(*) from 中央采购申请明细表 where 申请编号=a.申请编号)'+
    ' from (  select * from 中央采购申请主表 where 是否作废=0 '+tjstr+' )a order by 申请日期 desc';
  qry_huizong.Open;
  cxTabSheet4.Show;
end;

procedure TForm_KuCunJilu.cxGridDBTableView2Column1HeaderClick(Sender: TObject);
var
  j:integer;
begin
  cxGridDBTableView2.DataController.DataModeController.SmartRefresh:=false;
  cxGridDBTableView2.BeginUpdate;
  try
    if seltrue = False then
    begin
      for j := 0 to cxGridDBTableView2.DataController.RecordCount - 1 do
      begin
        //先所有的都不选
        cxGridDBTableView2.DataController.SetValue(j,cxGridDBTableView2Column1.Index,false);
      end;

      for j := 0 to cxGridDBTableView2.viewdata.RecordCount - 1 do
      begin
        //再让过滤后的设置为选中
        cxGridDBTableView2.ViewData.Records[j].Values[0] := True;
      end;

      seltrue := True;
    end
    else
    begin
      for j := 0 to cxGridDBTableView2.viewdata.RecordCount - 1 do
      begin
        //所有的都不选
        cxGridDBTableView2.ViewData.Records[j].Values[0] := false;
      end;
      seltrue := False;
    end;
  finally
    cxGridDBTableView2.EndUpdate;
  end;
  cxGridDBTableView2.DataController.DataModeController.SmartRefresh:=true;

end;

procedure TForm_KuCunJilu.cxGridDBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  qry_leibiao.Close;
  qry_leibiao.SQL.Text:='select * from (	select *,'+
    '	日期=(select top 1 申请日期 from 中央采购申请主表 where 申请编号=a.申请编号 ) ,'+
    '	gys=(select top 1 名称 from 供应商表 where 供应商编号=a.供应商 )'+
    '	from (	select 编号,申请编号,名称,数量,规格,单位,供应商,备注,'+
    ' 状态=(case when isnull(入库明细编号,'''')='''' then '''' else ''已入库'' end )	from 中央采购申请明细表'+
    '	where 申请编号 in (select 申请编号 from 中央采购申请主表 where 申请编号='+QuotedStr(qry_huizong.FieldByName('申请编号').AsString)+' )	)a)b	order by 日期 desc';
  qry_leibiao.Open;

  cxTabSheet3.Show;
end;

procedure TForm_KuCunJilu.FormCreate(Sender: TObject);
begin
  cxPageControl1.HideTabs:=true;
  cxButton1.Visible:=False;
  cxGridDBTableView2Column1.Visible:=False;
  cxlbl2.Visible:=False;
  cxDateEdit1.Visible:=False;
  cxlbl3.Visible:=False;
  cxDateEdit2.Visible:=False;
  cxButton4.Visible:=False;
  cxlbl9.Visible:=False;
  cxTextEdit37.Visible:=False;
  seltrue:=false;
end;

procedure TForm_KuCunJilu.FormShow(Sender: TObject);
begin
  if leibie='入库' then
  begin
    cxTabSheet1.Show;
    cxlbl1.Caption:='入库记录';
    Self.Caption:='入库记录';
  end;
  if leibie='出库' then
  begin
    cxTabSheet2.Show;
    cxlbl1.Caption:='出库记录';
    Self.Caption:='出库记录';
  end;
  if leibie='未接收' then
  begin
    cxTabSheet2.Show;
    cxlbl1.Caption:='未接收记录';
    Self.Caption:='未接收记录';
  end;
  if leibie='采购记录' then
  begin
    cxTabSheet3.Show;
    cxlbl1.Caption:='采购记录';
    Self.Caption:='采购记录';
  end;
  if leibie='采购记录选择' then
  begin
    cxTabSheet4.Show;
    cxlbl1.Caption:='采购记录选择';
    Self.Caption:='采购记录选择';
    cxButton1.Visible:=true;
    cxGridDBTableView2Column1.Visible:=true;
    cxlbl2.Visible:=true;
    cxDateEdit1.Visible:=true;
    cxlbl3.Visible:=true;
    cxDateEdit2.Visible:=true;
    cxButton4.Visible:=true;
    cxlbl9.Visible:=true;
    cxTextEdit37.Visible:=true;
    cxDateEdit1.Date:=IncMonth(date,-1);
    cxButton4.Click;
  end;
end;

end.
