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
    cxGridDBColumn3: TcxGridDBColumn;
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
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    qry_gys: TADOQuery;
    ds_gys: TDataSource;
    cxLabel2: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
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
  private
    CKbianhao:string;
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
  danjia:Real;
  tishi:string;
  shijian:tdatetime;
begin
  if cxLookupComboBox2.Text='' then
  begin
    Application.MessageBox('��ѡ���Ժ', '��ʾ', MB_OK);
    exit;
  end;

  if (cxRadioButton1.Checked=False) and (cxRadioButton2.Checked=False) then
  begin
    Application.MessageBox('��ѡ�񸶻��򲻸���', '��ʾ', MB_OK);
    exit;
  end;

  if cxRadioButton2.Checked then
  begin
    if cxLookupComboBox1.text='' then
    begin
      Application.MessageBox('��ѡ�񲻸���ԭ��', '��ʾ', MB_OK);
      exit;
    end;
  end;
  j:=0;
  qry_thshenqing_mx.edit;
  qry_thshenqing_mx.post;
  qry_thshenqing_mx.DisableControls;
  qry_thshenqing_mx.First;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
  for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
  begin
    if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
    begin
      if cxRadioButton1.Checked then
      begin
        if qry_thshenqing_mx.FieldByName('��Ӧ��').AsString='' then
        begin
          cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
          qry_thshenqing_mx.EnableControls;
          qry_thshenqing_mx.edit;
          Application.MessageBox('��Ӧ�̲���Ϊ��', '��ʾ', MB_OK);
          exit;
        end;

        if qry_thshenqing_mx.FieldByName('����').AsString='' then
        begin
          cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
          qry_thshenqing_mx.EnableControls;
          qry_thshenqing_mx.edit;
          Application.MessageBox('�������۲���Ϊ��', '��ʾ', MB_OK);
          exit;
        end;

        try
          danjia:= qry_thshenqing_mx.FieldByName('����').asfloat;
          if danjia<0 then
          begin
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('���۲���С��0', '��ʾ', MB_OK);
            exit;
          end;
        except
          cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
          qry_thshenqing_mx.EnableControls;
          qry_thshenqing_mx.edit;
          Application.MessageBox('�������۸�ʽ����ȷ', '��ʾ', MB_OK);
          exit;
        end;
        if qry_thshenqing_mx.FieldByName('������').asstring<>'' then
        begin
          try
            danjia:= qry_thshenqing_mx.FieldByName('������').asfloat;
            if danjia<0 then
            begin
              cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('�������С��0', '��ʾ', MB_OK);
              exit;
            end;
          except
            cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('�������ʽ����ȷ', '��ʾ', MB_OK);
            exit;
          end;
        end;

        //�ж�����ֿ��Ǵ���Ʒ�Ŀ���Ƿ񹻱��θ���



      end;
      j:=j+1;
    end;
    qry_thshenqing_mx.Next;
  end;
  cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
  qry_thshenqing_mx.EnableControls;
  qry_thshenqing_mx.edit;
  if j=0 then
  begin
    Application.MessageBox('��ѡ���¼', '��ʾ', MB_OK);
    exit;
  end;
  if cxRadioButton1.Checked then
    tishi:='����';
  if cxRadioButton2.Checked then
    tishi:='������  '+cxLookupComboBox1.text;

  if Application.MessageBox(pchar('��ѡ�� '+inttostr(j)+' ����¼������Ϊ��'+tishi+' ȷ�ϲ�����'), 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  shijian:=XiTong_date;
  DataModule1.ADOCon_ALi.BeginTrans;
  try
    if cxRadioButton1.Checked then  //������д�����
      CKbianhao:= AutoCreateNo('ZYFH','�����渶��');
    qry_thshenqing_mx.DisableControls;
    qry_thshenqing_mx.First;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=false;
    for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
    begin
      if cxGridDBTableView1.DataController.Values[i,cxGridDBTableView1Column4.Index] = True then
      begin
        if cxRadioButton1.Checked then  //������д�����
        begin
          DataModule1.openSql('select top 0 * from ������_�����');
          DataModule1.ADOQuery_L.append;
          DataModule1.ADOQuery_L.FieldByName('������').AsString:= CKbianhao;
          DataModule1.ADOQuery_L.FieldByName('����ʱ��').AsDateTime:= shijian;
          DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString:= qry_thshenqing_mx.FieldByName('��Ŀ���').AsString;
          DataModule1.ADOQuery_L.FieldByName('����').AsString:= qry_thshenqing_mx.FieldByName('mc').AsString;
          DataModule1.ADOQuery_L.FieldByName('��������').AsVariant:= qry_thshenqing_mx.FieldByName('����').AsVariant;
          DataModule1.ADOQuery_L.FieldByName('����').AsVariant:= qry_thshenqing_mx.FieldByName('����').AsVariant;
          DataModule1.ADOQuery_L.FieldByName('������').AsVariant:= qry_thshenqing_mx.FieldByName('������').AsVariant;
          DataModule1.ADOQuery_L.FieldByName('������').AsVariant:= qry_thshenqing_mx.FieldByName('������').AsVariant;
          DataModule1.ADOQuery_L.FieldByName('��Ӧ��').AsString:= qry_thshenqing_mx.FieldByName('��Ӧ��').AsString;
          DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString:= qry_thshenqing_mx.FieldByName('�ֵ����').AsString;
          DataModule1.ADOQuery_L.FieldByName('������').AsString:= G_user.UserName;
          DataModule1.ADOQuery_L.FieldByName('״̬').AsInteger:=1;
          DataModule1.ADOQuery_L.FieldByName('�Ƿ�����').asboolean:= false;
          DataModule1.ADOQuery_L.post;

          DataModule1.execSql('update ���������ϸ�� set ״̬=2,������='+QuotedStr(ckbianhao)+' '+
          ' where ���='+qry_thshenqing_mx.FieldByName('���').AsString+' ');
        end;
        if cxRadioButton2.Checked then  //������
        begin
          DataModule1.execSql('update ���������ϸ�� set ״̬=3,������ԭ��='+QuotedStr(cxLookupComboBox1.Text)+' '+
          ' where ���='+qry_thshenqing_mx.FieldByName('���').AsString+' ');
        end;
      end;
      qry_thshenqing_mx.Next;
    end;
    cxGridDBTableView1.DataController.DataModeController.SmartRefresh:=True;
    qry_thshenqing_mx.EnableControls;
    baocun:=true;
    DataModule1.ADOCon_ALi.CommitTrans;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('����ʧ��', '��ʾ', MB_OK);
  end;

  if baocun then
  begin
    if cxRadioButton1.Checked then  //����
    begin
      if Application.MessageBox('�����ɹ����Ƿ��ӡ��������', '��ʾ', MB_OKCANCEL +
        MB_ICONQUESTION) = IDOK then
      begin
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
        DataModule1.frxReport_dayin.Variables['shijian'] :=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm',shijian));
        DataModule1.frxReport_dayin.Variables['jsr'] :=QuotedStr(G_user.username);
        DataModule1.frxReport_dayin.Variables['bianhao'] :=QuotedStr(CKbianhao);
        DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(cxLookupComboBox2.text);
        DataModule1.frxReport_dayin.Variables['heji'] :=QuotedStr(cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1]);
        DataModule1.frxReport_dayin.ShowReport;
      end;
      close;
    end
    else
    begin
      Application.MessageBox('�����ɹ�', '��ʾ', MB_OK);
      close;
    end;
  end;
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

procedure TForm_fuhuo.cxLookupComboBox2Exit(Sender: TObject);
begin
  if cxLookupComboBox2.Text='' then
    exit;

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select b.* ,c.������,c.������,c.��Ӧ��,c.���� from ('+
    ' select ���,������,��Ŀ���,����,���,��λ, '+
    ' �ֵ����=(select top 1 �ֵ���� from ����������� where  ������=a.������) ,'+
    ' ��������=(select top 1 �������� from ����������� where ������=a.������),'+
    ' mc=(case when isnull(ԭ����,'''')='''' then ���� else ԭ���� end) '+
    ' from ( select * from ���������ϸ��'+
    ' where ״̬=1 and ������ in (select ������ from  ����������� where �Ƿ�����=0 and ״̬=2 and ���=1 '+
    '    and �ֵ����='+QuotedStr(cxLookupComboBox2.EditValue)+' )'+
    ' )a)b left join (select ������,������,������,��Ӧ��,���� from ������_����� )c '+
    ' on b.������=c.������ order by �ֵ����,�������� ';
  qry_thshenqing_mx.Open;

  if qry_thshenqing_mx.RecordCount>0 then
  begin
    qry_thshenqing_mx.DisableControls;
    qry_thshenqing_mx.First;
    while not qry_thshenqing_mx.Eof do
    begin
      DataModule1.openSql('select top 1 ����,��Ӧ�� from ������_����� '+
      ' where �Ƿ�����=0 and ��Ŀ���='+QuotedStr(qry_thshenqing_mx.FieldByName('��Ŀ���').AsString)+' '+
      ' and �ֵ����='+QuotedStr(cxLookupComboBox2.EditValue)+' order by ��� desc');
      if DataModule1.ADOQuery_L.Eof=False then
      begin
        qry_thshenqing_mx.edit;
        qry_thshenqing_mx.FieldByName('����').AsVariant:= DataModule1.ADOQuery_L.FieldByName('����').AsVariant;
        qry_thshenqing_mx.FieldByName('��Ӧ��').AsVariant:= DataModule1.ADOQuery_L.FieldByName('��Ӧ��').AsVariant;
        if qry_thshenqing_mx.FieldByName('����').AsString<>'' then
          qry_thshenqing_mx.FieldByName('������').AsFloat:=qry_thshenqing_mx.FieldByName('����').AsFloat*qry_thshenqing_mx.FieldByName('����').AsFloat;
        qry_thshenqing_mx.Post;
      end;
      qry_thshenqing_mx.Next;
    end;
    qry_thshenqing_mx.EnableControls;
    qry_thshenqing_mx.edit;
  end;
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

procedure TForm_fuhuo.ds_thshenqing_mxDataChange(Sender: TObject;
  Field: TField);
begin
  if (qry_thshenqing_mx.Modified) and (qry_thshenqing_mx.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '����') or (LowerCase(Field.FieldName)= '������') then
    begin
      if qry_thshenqing_mx.FieldByName('����').AsString='' then
      begin
        Application.MessageBox('�������۲���Ϊ��', '��ʾ', MB_OK);
        exit;
      end;
      if qry_thshenqing_mx.FieldByName('������').AsString<>'' then
        qry_thshenqing_mx.FieldByName('������').AsFloat:=qry_thshenqing_mx.FieldByName('����').AsFloat*qry_thshenqing_mx.FieldByName('����').AsFloat
          -qry_thshenqing_mx.FieldByName('������').AsFloat
      else
        qry_thshenqing_mx.FieldByName('������').AsFloat:=qry_thshenqing_mx.FieldByName('����').AsFloat*qry_thshenqing_mx.FieldByName('����').AsFloat;
    end;
  end;
end;

procedure TForm_fuhuo.FormCreate(Sender: TObject);
begin
  baocun:=false;
  xzbool:=false;
  CKbianhao:='';
  cxLookupComboBox1.Enabled:=false;

  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from ��Ժ�� where sort_id<>0';
  qry_fenyuan.Open;

  qry_gys.Close;
  qry_gys.SQL.Text:='select ��Ӧ�̱��,���� from ��Ӧ�̱� where �Ƿ�����=0';
  qry_gys.Open;

  qry_yuanyin.Close;
  qry_yuanyin.SQL.Text:='select ������� from �������ñ� where �����=''������ԭ��'' group by �������';
  qry_yuanyin.Open;
end;

end.
