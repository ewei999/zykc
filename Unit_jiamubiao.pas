unit Unit_jiamubiao;

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
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, IdMailBox,
  cxContainer, cxLabel, cxTextEdit, Data.Win.ADODB, dxSkinBlue;

type
  TForm_jiamubiao = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn24: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn37: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    baocun:boolean;
  end;

var
  Form_jiamubiao: TForm_jiamubiao;

implementation

uses
  Unit_DM;

{$R *.dfm}

procedure TForm_jiamubiao.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  baocun:=true;
  close;
end;

procedure TForm_jiamubiao.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  if Trim(cxTextEdit1.Text)<> '' then
  begin
    ADOQuery1.Filtered := False;
    ADOQuery1.Filter :='ƴ�� like '+
                           QuotedStr('%'+cxTextEdit1.Text+'%')+
                            ' or ���� like '+QuotedStr('%'+cxTextEdit1.Text+'%');
    ADOQuery1.Filtered := True;
  end
  else
  begin
    ADOQuery1.Filtered := False;
  end;
end;

procedure TForm_jiamubiao.FormShow(Sender: TObject);
begin
  ADOQuery1.Active := false;
  ADOQuery1.SQL.Text:='select a.*,isnull(b.���,0) as ��� from ('+
    ' select ��Ŀ���,����,ԭ����,���,С��,���,��λ,����,���ۼ�,ƴ��,��װ���,������,��浥λ  from ҩƷ��Ʒ��Ŀ�� where �Ƿ�����=0 '+
    ' and isnull(�Ƿ��ײ�,0)= 0 and ��־=0 and ���=1 and ���=1 )a left join ( '+
    ' select ��Ŀ���,���=�������-�������� from ( select a.*, '+
    ' ��������=isnull((select sum(��������) from ������_����� where ״̬ in (1,2)  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ���) ,0) '+
    ' from ( select ��Ŀ���,sum(isnull(����,0)) as ������� from ����ɹ������ϸ�� '+
    ' where ����� in (select ����� from ����ɹ�������� where ״̬=1)  group by ��Ŀ��� '+
    '  )a left join ҩƷ��Ʒ��Ŀ�� b on a.��Ŀ���=b.��Ŀ��� )c )b on a.��Ŀ���=b.��Ŀ��� order by ����';
  ADOQuery1.Active := True;

  baocun:=false;
  cxTextEdit1.SetFocus;
end;

end.
