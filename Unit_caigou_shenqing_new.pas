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
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
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
    procedure FormShow(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure act_excelExecute(Sender: TObject);

  private

  public
    baocun:boolean;
    zt : string;
  end;

var
  Form_caigou_shenqing_new: TForm_caigou_shenqing_new;

implementation

{$R *.dfm}

uses unit_dm, Unit_public;


procedure TForm_caigou_shenqing_new.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_caigou_shenqing_new.act_excelExecute(Sender: TObject);
begin
  DaochuExcel(cxGrid1);
end;

procedure TForm_caigou_shenqing_new.FormShow(Sender: TObject);
begin
  if cxLabel_bianhao.Caption<>'' then
  begin
    DataModule1.openSql('select *,'+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����)'+
    ' from (select * from ����������� where ������='+QuotedStr(cxLabel_bianhao.Caption)+')a');

    cxDateEdit1.Date := DataModule1.ADOQuery_L.FieldByName('��������').asdatetime;
    cxLabel5.Caption := DataModule1.ADOQuery_L.FieldByName('������').asstring;
    cxMemo1.Lines.text := DataModule1.ADOQuery_L.FieldByName('����˵��').asstring;
    cxLabel7.Caption:= DataModule1.ADOQuery_L.FieldByName('��Ժ').asstring;

    ADOQuery1.Active := false;
    ADOQuery1.SQL.text := 'select *,'+
      ' zt=(case ״̬ when 1 then ''������'' when 2 then ''�Ѹ���'' when 3 then ''������'' end) '+
      ' from (select  * from ���������ϸ�� where ������ = '+ QuotedStr(cxLabel_bianhao.Caption)+')a';
    ADOQuery1.Active := true;

    qry_shenpi.Close;
    qry_shenpi.SQL.Text:='select * from ������������� where ������='+QuotedStr(cxLabel_bianhao.Caption)+' order by ��� ';
    qry_shenpi.Open;
  end;

  if zt='chakan' then
  begin
    pnl1.Enabled:=false;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
  end;
end;


end.
