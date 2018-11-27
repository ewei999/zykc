unit Unit_JingJieLiang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCalendar,
  Data.Win.ADODB, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,unit_jiamubiao,
  cxMaskEdit;

type
  TForm_JingJieLiang = class(TForm)
    actmgr1: TActionManager;
    act_close: TAction;
    img1: TImage;
    cxlbl1: TcxLabel;
    cxButton8: TcxButton;
    act1: TAction;
    act2: TAction;
    act3: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid14: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    ds_leibiao: TDataSource;
    qry_leibiao: TADOQuery;
    cxGridDBTableView11Column1: TcxGridDBColumn;
    cxGridDBTableView11Column2: TcxGridDBColumn;
    procedure act_closeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_JingJieLiang: TForm_JingJieLiang;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}

procedure TForm_JingJieLiang.act1Execute(Sender: TObject);
begin
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      if qry_leibiao.Locate('价目编号',Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString,[])=False then
      begin
        qry_leibiao.Append;
        qry_leibiao.FieldByName('价目编号').AsString := Form_jiamubiao.ADOQuery1.FieldByName('价目编号').AsString;
        qry_leibiao.FieldByName('名称').AsString := Form_jiamubiao.ADOQuery1.FieldByName('名称').AsString;
        qry_leibiao.FieldByName('类别').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('类别').AsString;
        qry_leibiao.FieldByName('小类').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('小类').AsString;
        qry_leibiao.FieldByName('规格').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('规格').AsString;
        qry_leibiao.FieldByName('单位').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('单位').AsString;
        qry_leibiao.FieldByName('包装规格').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('包装规格').AsString;
        qry_leibiao.FieldByName('警戒量').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('警戒量').AsString;
        qry_leibiao.Post;
        qry_leibiao.Edit;
      end;
    end;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_JingJieLiang.act2Execute(Sender: TObject);
var
  ylint:Integer;
begin
  if qry_leibiao.Active=False then
    exit;
  if qry_leibiao.RecordCount=0 then
    exit;
  qry_leibiao.DisableControls;
  qry_leibiao.First;
  while not qry_leibiao.Eof do
  begin
    if qry_leibiao.FieldByName('警戒量').AsString='' then
    begin
      qry_leibiao.EnableControls;
      qry_leibiao.edit;
      Application.MessageBox('警戒量不能为空', '提示', MB_OK);
      exit;
    end;
    try
      ylint:= qry_leibiao.FieldByName('警戒量').AsInteger;
      if ylint<=0 then
      begin
        qry_leibiao.EnableControls;
        qry_leibiao.edit;
        Application.MessageBox('警戒量不能小于等于0', '提示', MB_OK);
        exit;
      end;
    except
      qry_leibiao.EnableControls;
      qry_leibiao.edit;
      Application.MessageBox('警戒量格式不正确', '提示', MB_OK);
      exit;
    end;
    qry_leibiao.Next;
  end;
  qry_leibiao.EnableControls;

  if Application.MessageBox('确认保存吗？', '确认', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  qry_leibiao.DisableControls;
  qry_leibiao.First;
  while not qry_leibiao.Eof do
  begin
    DataModule1.execSql('update 药品用品价目表 set 警戒量='+qry_leibiao.FieldByName('警戒量').AsString+' '+
    ' where 价目编号='+QuotedStr(qry_leibiao.FieldByName('价目编号').AsString)+' ');

    qry_leibiao.Next;
  end;
  qry_leibiao.EnableControls;
  qry_leibiao.Requery();
  if qry_leibiao.RecordCount>0 then
    qry_leibiao.Edit;
end;

procedure TForm_JingJieLiang.act3Execute(Sender: TObject);
begin
  if qry_leibiao.Active=False then
    exit;
  if qry_leibiao.RecordCount=0 then
    exit;

  if Application.MessageBox('确认删除吗？', '确认', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;

  DataModule1.execSql('update 药品用品价目表 set 警戒量=0 where 价目编号='+QuotedStr(qry_leibiao.FieldByName('价目编号').AsString)+' ');
  qry_leibiao.Requery();
  if qry_leibiao.RecordCount>0 then
    qry_leibiao.Edit;
end;

procedure TForm_JingJieLiang.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_JingJieLiang.FormShow(Sender: TObject);
begin
  qry_leibiao.Close;
  qry_leibiao.SQL.Text:='select 编号,价目编号,名称,小类,类别,规格,单位,包装规格,警戒量,'+
    ' 单价=(case when isnull(进价,0)=0 then 单价 else 进价 end ), '+
    ' 供应商=(select top 1 名称 from 供应商表 where 供应商编号=(select top 1 供应商 from 中央采购入库主表 where 入库编号=b.入库编号))'+
    ' from ( select * , '+
    ' 入库编号=(select top 1 入库编号 from 中央采购入库明细表 where 价目编号=a.价目编号 order by 编号 desc), '+
    ' 进价=(select top 1 进货单价 from 中央采购入库明细表 where 价目编号=a.价目编号 order by 编号 desc) '+
    ' from ( select 编号,价目编号,名称,小类,类别,规格,单位,包装规格,警戒量,单价 from 药品用品价目表 '+
    ' where  是否作废=0 and isnull(是否套餐,0)=0 and 库存=1 and 提货=1 and 警戒量>0 )a)b order by 名称';
  qry_leibiao.Open;
  if qry_leibiao.RecordCount>0 then
    qry_leibiao.Edit;
end;

end.
