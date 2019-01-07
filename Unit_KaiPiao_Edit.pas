unit Unit_KaiPiao_Edit;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, Data.Win.ADODB, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCheckBox, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxBarBuiltInMenu, cxPC,
  Vcl.ComCtrls, dxCore, cxDateUtils,RuntimeInfo,System.DateUtils,System.StrUtils,cxCurrencyEdit;

type
  TForm_KaiPiao_Edit = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    actmgr1: TActionManager;
    act_close: TAction;
    act2: TAction;
    cxButton8: TcxButton;
    cxButton2: TcxButton;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    qry_gys: TADOQuery;
    ds_gys: TDataSource;
    ds_liebiao: TDataSource;
    qry_liebiao: TADOQuery;
    act1: TAction;
    cxButton1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl1: TPanel;
    cxlbl2: TcxLabel;
    cxLookup_fenyuan: TcxLookupComboBox;
    cxLookup_gys: TcxLookupComboBox;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl_heji: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    pnl2: TPanel;
    cxlbl6: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxlbl20: TcxLabel;
    cxDateEdit8: TcxDateEdit;
    cxButton30: TcxButton;
    cxGrid15: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    qry_caiwu: TADOQuery;
    ds_caiwu: TDataSource;
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure cxLookup_gysKeyPress(Sender: TObject; var Key: Char);
    procedure cxLookup_gysPropertiesCloseUp(Sender: TObject);
    procedure cxLookup_gysExit(Sender: TObject);
    procedure cxGridDBTableView1Column4HeaderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1EditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure act1Execute(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
  private
    xzbool:boolean;
    procedure Open_LieBiao;
    procedure CreateGrid(cxgridA:TcxGridDBTableView);
  public
    zt:string;
    KPbianhao:string;
    baocun:boolean;
  end;

var
  Form_KaiPiao_Edit: TForm_KaiPiao_Edit;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}

procedure TForm_KaiPiao_Edit.act1Execute(Sender: TObject);
var
  heji:Real;
  i:integer;
  bianh:string;
begin
  if cxLookup_gys.Text='' then
  begin
    Application.MessageBox('��ѡ��Ӧ��', '��ʾ', MB_OK);
    exit;
  end;
  if cxLookup_fenyuan.Text='' then
  begin
    Application.MessageBox('��ѡ���Ժ', '��ʾ', MB_OK);
    exit;
  end;

  cxlbl_heji.Caption:='0';
  heji:=0;

  bianh:='';

  qry_liebiao.DisableControls;
  qry_liebiao.First;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
  for i:=0 to qry_liebiao.RecordCount - 1 do
  begin
    if cxGridDBTableView1Column4.Visible=False then
    begin
      if bianh='' then
        bianh:=qry_liebiao.FieldByName('���').AsString
      else
        bianh:=bianh+','+qry_liebiao.FieldByName('���').AsString;
    end
    else if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      if bianh='' then
        bianh:=qry_liebiao.FieldByName('���').AsString
      else
        bianh:=bianh+','+qry_liebiao.FieldByName('���').AsString;
      heji:=heji+strtofloat(cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column6.Index]);
    end;
    qry_liebiao.Next;
  end;
  cxlbl_heji.Caption:=floattostr(heji);
  qry_liebiao.First;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=true;
  qry_liebiao.EnableControls;

  if bianh='' then
  begin
    Application.MessageBox('��ѡ����Ҫ��ӡ�ļ�¼', '��ʾ', MB_OK);
    exit;
  end;

  DataModule1.ADOQuery_dayin.Close;
  DataModule1.ADOQuery_dayin.SQL.Text :=' select * , '+
  ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� ),'+
  ' RANK () OVER (ORDER BY ��� ) AS ���  from ( '+
  ' select ���,����ʱ��,����,��������,����,������,��Ŀ��� '+
  ' from ������_����� where ��� in ('+bianh+')  )a  order by ����ʱ��';
  DataModule1.ADOQuery_dayin.open;

  DataModule1.frxDBDataset_dayin.FieldAliases.Clear;
  for i:=0 to DataModule1.frxDBDataset_dayin.Dataset.FieldCount-1 do
  begin
    DataModule1.frxDBDataset_dayin.FieldAliases.Add(DataModule1.frxDBDataset_dayin.dataset.Fields[i].FullName+'='+
        DataModule1.frxDBDataset_dayin.dataset.Fields[i].FullName);
  end;
  DataModule1.frxReport_dayin.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Report\chuku.fr3');
  DataModule1.frxReport_dayin.Variables['gys'] :=QuotedStr(cxLookup_gys.text);
  DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(cxLookup_fenyuan.text);
  DataModule1.frxReport_dayin.ShowReport;
end;


procedure TForm_KaiPiao_Edit.CreateGrid(cxgridA:TcxGridDBTableView);
var
  i,x :integer;
  cl  : TcxGridDBcolumn;
begin
  x:=0;
  cxgridA.BeginUpdate;
  try
    cxgridA.ClearItems;
    cxgridA.DataController.Summary.FooterSummaryItems.Clear;

    for i := 0 to cxgridA.DataController.DataSet.FieldCount - 1 do
    begin
      cl  :=  cxgridA.CreateColumn;
      cl.DataBinding.FieldName := cxgridA.DataController.DataSet.Fields[i].FieldName;

      if  (RightStr(cl.DataBinding.FieldName,2)='����')  then
      begin
        cl.PropertiesClassName := 'TcxCurrencyEditProperties';
        TcxCurrencyEditProperties(cl.Properties).DisplayFormat:='0.00';
        cl.Summary.FooterKind:=skSum;
        cl.Summary.FooterFormat:='0.00';
      end;
//      if cl.DataBinding.FieldName='ѡ��' then
//      begin
//        cl.PropertiesClassName := 'Tcxcheckbox';
//        TcxcheckboxProperties(cl.Properties).NullStyle:=nssUnchecked;
//      end;


      cl.Width := 70;

      if cl.DataBinding.FieldName='��Ӧ��id' then
        cl.Visible:=false;

      if (cl.Visible) and (x=0) then
      begin
        x:=11;
        cl.Summary.FooterKind:=skCount;
        cl.Summary.FooterFormat:='�ϼƣ�0';
      end;
    end;
  finally
    cxgridA.EndUpdate;
  end;
end;


procedure TForm_KaiPiao_Edit.act2Execute(Sender: TObject);
var
  heji:Real;
  i,j:integer;
begin
  if cxLookup_gys.Text='' then
  begin
    Application.MessageBox('��ѡ��Ӧ��', '��ʾ', MB_OK);
    exit;
  end;
  if cxLookup_fenyuan.Text='' then
  begin
    Application.MessageBox('��ѡ���Ժ', '��ʾ', MB_OK);
    exit;
  end;

  cxlbl_heji.Caption:='0';
  heji:=0;
  j:=0;
  for i :=0 to cxGridDBTableView1.DataController.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      j:=j+1;
      heji:=heji+strtofloat(cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column6.Index]);
    end;
  end;
  cxlbl_heji.Caption:=floattostr(heji);

  if j=0 then
  begin
    Application.MessageBox('��ѡ����Ҫ��Ʊ�ļ�¼', '��ʾ', MB_OK);
    exit;
  end;


  if Application.MessageBox(pchar('��ѡ�� '+inttostr(j)+' ����¼���ϼƽ�'+cxlbl_heji.Caption+' ȷ�Ͽ�Ʊ��'), 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;
  DataModule1.ADOCon_ALi.BeginTrans;
  try
    KPbianhao:= AutoCreateNo('KP','��Ʊ');
    DataModule1.openSql('select top 0 * from ����ɹ���Ʊ��');
    DataModule1.ADOQuery_L.append;
    DataModule1.ADOQuery_L.FieldByName('��Ʊ���').AsString:= KPbianhao;
    DataModule1.ADOQuery_L.FieldByName('��Ʊ��').AsString:= G_user.UserName;
    DataModule1.ADOQuery_L.FieldByName('��Ʊʱ��').AsDateTime:= xitong_date;
    DataModule1.ADOQuery_L.FieldByName('�Ƿ�����').AsBoolean:=false;
    DataModule1.ADOQuery_L.FieldByName('��Ӧ��').AsString:= cxLookup_gys.EditValue;
    DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString:= cxLookup_fenyuan.EditValue;
    DataModule1.ADOQuery_L.FieldByName('�ϼƽ��').AsFloat:= heji;
    DataModule1.ADOQuery_L.post;

    qry_liebiao.DisableControls;
    qry_liebiao.First;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
    for i:=0 to qry_liebiao.RecordCount - 1 do
    begin
      if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
      begin
        DataModule1.execSql('update ������_����� set ��Ʊ���='+QuotedStr(KPbianhao)+' ,�ŵ����״̬=0 '+
        ' where ���='+qry_liebiao.FieldByName('���').AsString+'');
      end;
      qry_liebiao.Next;
    end;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=true;
    qry_liebiao.EnableControls;
    baocun:=true;
    Open_LieBiao;
    Application.MessageBox('�����ɹ�', '��ʾ', MB_OK);

    DataModule1.ADOCon_ALi.CommitTrans;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('����ʧ��', '��ʾ', MB_OK);
  end;


end;

procedure TForm_KaiPiao_Edit.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_KaiPiao_Edit.cxButton30Click(Sender: TObject);
var
  tjstr:string;
  i:integer;
  heji:Real;
begin
  if cxDateEdit7.Text='' then
  begin
    Application.MessageBox('��ѡ��ͳ�ƿ�ʼ����', '��ʾ', MB_OK);
    exit;
  end;
  if cxDateEdit8.Text='' then
  begin
    Application.MessageBox('��ѡ��ͳ����ֹ����', '��ʾ', MB_OK);
    exit;
  end;

  tjstr:='';
  if cxDateEdit7.Text<>'' then
  begin
    tjstr:=tjstr+' and ����ʱ��>='+QuotedStr(cxDateEdit7.Text)+' ';
  end;
  if cxDateEdit8.Text<>'' then
  begin
    tjstr:=tjstr+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDateEdit8.date,1)))+' ';
  end;




  Show_RuntimeInfo('����ͳ��');

  hide_RuntimeInfo;
end;

procedure TForm_KaiPiao_Edit.cxGridDBTableView1Column4HeaderClick(
  Sender: TObject);
var
  i :Integer;
  heji:Real;
begin
  heji:=0;
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
        heji:=heji+strtofloat(cxGridDBTableView1.ViewData.Records[i].Values[5]);
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
  cxlbl_heji.Caption:=FloatToStr(heji);
end;

procedure TForm_KaiPiao_Edit.cxGridDBTableView1EditChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  heji:real;
  i:integer;
begin
  cxGridDBTableView1.DataController.Post();

  cxlbl_heji.Caption:='0';
  heji:=0;
  for i :=0 to cxGridDBTableView1.DataController.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      heji:=heji+strtofloat(cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column6.Index]);
    end;
  end;
  cxlbl_heji.Caption:=floattostr(heji);
end;

procedure TForm_KaiPiao_Edit.cxLookup_gysExit(Sender: TObject);
begin
  Open_LieBiao;
end;

procedure TForm_KaiPiao_Edit.cxLookup_gysKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl,True,True);
end;

procedure TForm_KaiPiao_Edit.cxLookup_gysPropertiesCloseUp(Sender: TObject);
begin
     SelectNext(ActiveControl,True,True);
end;

procedure TForm_KaiPiao_Edit.Open_LieBiao;
begin
  qry_liebiao.close;
  cxlbl_heji.Caption:='0';
  if cxLookup_gys.Text='' then
    exit;
  if cxLookup_fenyuan.Text='' then
    exit;

  qry_liebiao.SQL.Text:='select ���,����ʱ��,����,��������,����,������ '+
    ' from ������_����� where ״̬ in (1,2) and isnull(��Ʊ���,'''')='''''+
    ' and ��Ӧ��='+QuotedStr(cxLookup_gys.EditValue)+' and �ֵ����='+QuotedStr(cxLookup_fenyuan.EditValue)+' order by ����ʱ��';
  qry_liebiao.Open;
end;

procedure TForm_KaiPiao_Edit.FormCreate(Sender: TObject);
begin
  baocun:=false;
  zt:='';
  xzbool:=false;
  cxButton1.Top:=cxButton2.Top;
  cxButton1.left:=cxButton2.left;
  cxButton1.Visible:=false;
  cxlbl_heji.Caption:='0';
  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from ��Ժ�� where sort_id<>0';
  qry_fenyuan.Open;

  qry_gys.Close;
  qry_gys.SQL.Text:='select ��Ӧ�̱��,���� from ��Ӧ�̱� where isnull(�Ƿ�����,0)=0 ';
  qry_gys.Open;

  cxTabSheet1.Show;
end;

procedure TForm_KaiPiao_Edit.FormShow(Sender: TObject);
begin
  if zt='�鿴' then
  begin
    cxButton2.Visible:=false;
    cxGridDBTableView1.OptionsData.Editing:=false;
    cxGridDBTableView1Column4.Visible:=false;
    cxLookup_gys.Enabled:=false;
    cxLookup_fenyuan.Enabled:=false;
    cxButton1.Visible:=true;
    cxPageControl1.HideTabs:=true;
  end;
  if KPbianhao<>'' then
  begin
    DataModule1.openSql('select * from ����ɹ���Ʊ�� where ��Ʊ���='+QuotedStr(KPbianhao)+'');
    cxLookup_gys.EditValue:=DataModule1.ADOQuery_L.FieldByName('��Ӧ��').asstring;
    cxLookup_fenyuan.EditValue:=DataModule1.ADOQuery_L.FieldByName('�ֵ����').asstring;
    cxlbl_heji.Caption:= DataModule1.ADOQuery_L.FieldByName('�ϼƽ��').asstring;

    qry_liebiao.Close;
    qry_liebiao.SQL.Text:='select ���,����ʱ��,����,��������,����,������ '+
      ' from ������_����� where ��Ʊ���='+QuotedStr(KPbianhao)+'';
    qry_liebiao.Open;
  end;
end;

end.
