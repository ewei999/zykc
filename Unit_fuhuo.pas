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
  cxDBLookupEdit, cxDBLookupComboBox;

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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnl1: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    ds_yuanyin: TDataSource;
    qry_yuanyin: TADOQuery;
    procedure act1Execute(Sender: TObject);
    procedure cxGridDBTableView1Column4HeaderClick(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
  private
    xzbool:boolean;
  public
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
begin
  j:=0;
  qry_thshenqing_mx.DisableControls;
  qry_thshenqing_mx.First;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
  for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      if qry_thshenqing_mx.FieldByName('״̬').AsInteger=1 then  //δ����
      begin
        //�ж�����ֿ��Ǵ���Ʒ�Ŀ���Ƿ񹻱��θ���



        j:=j+1;
      end;
    end;
  end;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
  qry_thshenqing_mx.EnableControls;
  if j=0 then
  begin
    Application.MessageBox('��ѡ��δ������¼', '��ʾ', MB_OK);
    exit;
  end;

  if Application.MessageBox(pchar('��ѡ�� '+inttostr(j)+' ����¼��ȷ�ϸ�����'), 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  qry_thshenqing_mx.DisableControls;
  qry_thshenqing_mx.First;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
  for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      if qry_thshenqing_mx.FieldByName('״̬').AsInteger=1 then  //δ����
      begin
        //
      end;
    end;
  end;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
  qry_thshenqing_mx.EnableControls;
end;

procedure TForm_fuhuo.act_closeExecute(Sender: TObject);
begin
  close;
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
        //�����еĶ���ѡ
        cxGridDBTableView1.DataController.SetValue(i,cxGridDBTableView1Column4.Index,false);
      end;
      for i := 0 to cxGridDBTableView1.viewdata.RecordCount - 1 do
      begin
        //���ù��˺������Ϊѡ��
        cxGridDBTableView1.ViewData.Records[i].Values[0] := True;
      end;
      xzbool := True;
    end
    else
    begin
      for i := 0 to cxGridDBTableView1.viewdata.RecordCount - 1 do
      begin
        //���еĶ���ѡ
        cxGridDBTableView1.ViewData.Records[i].Values[0] := false;
      end;
      xzbool := False;
    end;
  finally
    cxGridDBTableView1.EndUpdate;
  end;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=true;
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

procedure TForm_fuhuo.FormCreate(Sender: TObject);
begin
  baocun:=false;
  xzbool:=false;

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select * from ( select *,'+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=(select top 1 �ֵ���� from ����������� '+
    ' 	where  ������=a.������) ) , '+
    ' ��������=(select top 1 �������� from ����������� where ������=a.������),'+
    ' mc=(case when isnull(ԭ����,'''')='''' then ���� else ԭ���� end),'+
    ' ������=(select top 1 ������ from ����������� where ������=a.������) '+
    ' from ( select * from ���������ϸ�� '+
    ' where ������ in (select ������ from  ����������� where �Ƿ�����=0 and ״̬=2 and ���=1 ) and ״̬=1 '+
    ' )a)b order by ��������';
  qry_thshenqing_mx.Open;

  qry_yuanyin.Close;
  qry_yuanyin.SQL.Text:='select ������� from �������ñ� where �����=''������ԭ��'' group by �������';
  qry_yuanyin.Open;
end;

end.
