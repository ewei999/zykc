unit Unit_FuHuoDan;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxCalendar, cxDBLookupComboBox, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Data.Win.ADODB;

type
  TForm_FuHuoDan = class(TForm)
    img1: TImage;
    cxLabel10: TcxLabel;
    pnl1: TPanel;
    actmgr1: TActionManager;
    act_close: TAction;
    cxButton8: TcxButton;
    cxLabel2: TcxLabel;
    cxlbl_fenyuan: TcxLabel;
    cxlbl1: TcxLabel;
    cxlbl_shijian: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl_bianhao: TcxLabel;
    ds_fuhuo: TDataSource;
    qry_fuhuo: TADOQuery;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    act1: TAction;
    cxButton1: TcxButton;
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    CKBianhao:string;
  end;

var
  Form_FuHuoDan: TForm_FuHuoDan;

implementation
  uses Unit_DM;
{$R *.dfm}

procedure TForm_FuHuoDan.act1Execute(Sender: TObject);
var
  j:integer;
begin
  if CKBianhao='' then
  begin
    exit;
  end;

  DataModule1.ADOQuery_dayin.Close;
  DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY ���� DESC) AS xh ,'+
          ' ���� as mc,�������� as sl,���� as danjia,������ as jine, '+
          ' lb=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) '+
          ' from ( select ��Ŀ���,����,��������,����,������ '+
          ' from ������_����� where ������='+QuotedStr(CKbianhao)+' )a';
  DataModule1.ADOQuery_dayin.open;

  DataModule1.frxDBDataset_dayin.FieldAliases.Clear;
  for j:=0 to DataModule1.frxDBDataset_dayin.Dataset.FieldCount-1 do
  begin
    DataModule1.frxDBDataset_dayin.FieldAliases.Add(DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName+'='+
              DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName);
  end;

  DataModule1.frxReport_dayin.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Report\fuhuo.fr3');
  DataModule1.frxReport_dayin.Variables['shijian'] :=QuotedStr(cxlbl_shijian.Caption);
  DataModule1.frxReport_dayin.Variables['jsr'] :=QuotedStr(qry_fuhuo.FieldByName('������').AsString);
  DataModule1.frxReport_dayin.Variables['bianhao'] :=QuotedStr(CKbianhao);
  DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(cxlbl_fenyuan.Caption);
  DataModule1.frxReport_dayin.Variables['heji'] :=QuotedStr(cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1]);
  DataModule1.frxReport_dayin.ShowReport;

end;

procedure TForm_FuHuoDan.act_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm_FuHuoDan.FormCreate(Sender: TObject);
begin
  cxlbl_bianhao.Caption:='';
  cxlbl_fenyuan.Caption:='';
  cxlbl_shijian.Caption:='';
  CKBianhao:='';
end;

procedure TForm_FuHuoDan.FormShow(Sender: TObject);
begin
  if CKBianhao<>'' then
  begin
    qry_fuhuo.Close;
    qry_fuhuo.SQL.Text:='select *,zt=(case ״̬ when 1 then ''������'' when 2 then ''���ճɹ�'' when 3 then ''��ͬ�����'' end) , '+
      ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ), '+
      ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��), '+
      ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���),'+
      ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���)'+
      ' from ( '+
      ' select ����ʱ��,����,��������,����,������,������,��Ӧ��,�ֵ����,״̬,�ŵ������,�ŵ����ʱ��,��Ŀ���,������ '+
      ' from ������_����� where ������='+QuotedStr(CKBianhao)+' )a order by ����';
    qry_fuhuo.Open;

    cxlbl_bianhao.Caption:=CKBianhao;
    cxlbl_fenyuan.Caption:=qry_fuhuo.FieldByName('��Ժ').AsString;
    cxlbl_shijian.Caption:=FormatDateTime('yyyy-mm-dd hh:mm',qry_fuhuo.FieldByName('����ʱ��').AsDateTime);
  end;
end;

end.
