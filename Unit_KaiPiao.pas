unit Unit_KaiPiao;

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
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,Unit_KaiPiao_Edit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxCalendar, Data.Win.ADODB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TForm_KaiPiao = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    actmgr1: TActionManager;
    act_close: TAction;
    cxButton8: TcxButton;
    act1: TAction;
    cxButton1: TcxButton;
    act2: TAction;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn16: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn17: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qry_liebiao: TADOQuery;
    ds_liebiao: TDataSource;
    act3: TAction;
    cxButton3: TcxButton;
    procedure act_closeExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure act2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_KaiPiao: TForm_KaiPiao;

implementation
  uses Unit_DM;
{$R *.dfm}

procedure TForm_KaiPiao.act1Execute(Sender: TObject);
begin
  Form_KaiPiao_Edit := TForm_KaiPiao_Edit.Create(nil);
  try
    Form_KaiPiao_Edit.zt := '����';
    Form_KaiPiao_Edit.ShowModal;
    if Form_KaiPiao_Edit.baocun then
    begin
      if qry_liebiao.Active then
        qry_liebiao.Requery();
    end;
  finally
    FreeAndNil(Form_KaiPiao_Edit);
  end;
end;

procedure TForm_KaiPiao.act2Execute(Sender: TObject);
begin
  if qry_liebiao.Active=False then
    exit;
  if qry_liebiao.RecordCount=0 then
    exit;

  if Application.MessageBox('ȷ��������', 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;
  DataModule1.execSql('update ����ɹ���Ʊ�� set �Ƿ�����=1 where ��Ʊ���='+QuotedStr(qry_liebiao.FieldByName('��Ʊ���').AsString)+' ');
  DataModule1.execSql('update ������_����� set ��Ʊ���='''' where ��Ʊ���='+QuotedStr(qry_liebiao.FieldByName('��Ʊ���').AsString)+' ');
  qry_liebiao.Requery();
  Application.MessageBox('���ϳɹ�', '��ʾ', MB_OK);
end;

procedure TForm_KaiPiao.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_KaiPiao.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_KaiPiao_Edit := TForm_KaiPiao_Edit.Create(nil);
  try
    Form_KaiPiao_Edit.zt := '�鿴';
    Form_KaiPiao_Edit.KPbianhao:= qry_liebiao.FieldByName('��Ʊ���').AsString;
    Form_KaiPiao_Edit.ShowModal;
  finally
    FreeAndNil(Form_KaiPiao_Edit);
  end;
end;

procedure TForm_KaiPiao.FormShow(Sender: TObject);
begin
  qry_liebiao.Close;
  qry_liebiao.SQL.Text:='select *, '+
  ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ), '+
  ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��) '+
  ' from ( select * from ����ɹ���Ʊ�� where �Ƿ�����=0 )a order by ��Ʊʱ�� desc';
  qry_liebiao.Open;
end;

end.
