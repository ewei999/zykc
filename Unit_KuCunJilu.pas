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
  if leibie='�ɹ���¼ѡ��' then
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
          BHStr:=qry_leibiao.FieldByName('���').AsString
        else
          BHStr:=BHStr+','+qry_leibiao.FieldByName('���').AsString;
      end;
      qry_leibiao.next;
    end;
    cxGridDBTableView2.DataController.DataModeController.SmartRefresh:=true;
    qry_leibiao.EnableControls;

    if BHStr='' then
    begin
      Application.MessageBox('��ѡ��ɹ���¼', '��ʾ', MB_OK );
      exit;
    end;
    close;
  end;
end;

procedure TForm_KuCunJilu.act_closeExecute(Sender: TObject);
begin
  if leibie='�ɹ���¼ѡ��' then
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
    tjstr:=tjstr+' and ��������>='+QuotedStr(cxDateEdit1.Text)+'';
  if cxDateEdit2.Text<>'' then
    tjstr:=tjstr+' and ��������<'+QuotedStr(DateToStr(incday(cxDateEdit2.date,1)))+'';

  if Trim(cxTextEdit37.Text)<>'' then
    tjstr:=tjstr+'  and ������ in (select ������ from ����ɹ�������ϸ�� where ���� like ''%'+Trim(cxTextEdit37.Text)+'%'' )';

  qry_huizong.Close;
  qry_huizong.SQL.Text:='select *,  '+
    '  zt=(case ״̬ when 0 then ''�ݸ�'' when 1 then ''���ύ'' when 3 then ''�������'' when 4 then ''�˻�'' end ), '+
    ' ������=(select count(*) from ����ɹ�������ϸ�� where ������=a.������)'+
    ' from (  select * from ����ɹ��������� where �Ƿ�����=0 '+tjstr+' )a order by �������� desc';
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
        //�����еĶ���ѡ
        cxGridDBTableView2.DataController.SetValue(j,cxGridDBTableView2Column1.Index,false);
      end;

      for j := 0 to cxGridDBTableView2.viewdata.RecordCount - 1 do
      begin
        //���ù��˺������Ϊѡ��
        cxGridDBTableView2.ViewData.Records[j].Values[0] := True;
      end;

      seltrue := True;
    end
    else
    begin
      for j := 0 to cxGridDBTableView2.viewdata.RecordCount - 1 do
      begin
        //���еĶ���ѡ
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
    '	����=(select top 1 �������� from ����ɹ��������� where ������=a.������ ) ,'+
    '	gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ�� )'+
    '	from (	select ���,������,����,����,���,��λ,��Ӧ��,��ע,'+
    ' ״̬=(case when isnull(�����ϸ���,'''')='''' then '''' else ''�����'' end )	from ����ɹ�������ϸ��'+
    '	where ������ in (select ������ from ����ɹ��������� where ������='+QuotedStr(qry_huizong.FieldByName('������').AsString)+' )	)a)b	order by ���� desc';
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
  if leibie='���' then
  begin
    cxTabSheet1.Show;
    cxlbl1.Caption:='����¼';
    Self.Caption:='����¼';
  end;
  if leibie='����' then
  begin
    cxTabSheet2.Show;
    cxlbl1.Caption:='�����¼';
    Self.Caption:='�����¼';
  end;
  if leibie='δ����' then
  begin
    cxTabSheet2.Show;
    cxlbl1.Caption:='δ���ռ�¼';
    Self.Caption:='δ���ռ�¼';
  end;
  if leibie='�ɹ���¼' then
  begin
    cxTabSheet3.Show;
    cxlbl1.Caption:='�ɹ���¼';
    Self.Caption:='�ɹ���¼';
  end;
  if leibie='�ɹ���¼ѡ��' then
  begin
    cxTabSheet4.Show;
    cxlbl1.Caption:='�ɹ���¼ѡ��';
    Self.Caption:='�ɹ���¼ѡ��';
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
