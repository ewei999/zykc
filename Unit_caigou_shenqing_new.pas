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
    cxButton1: TcxButton;
    act1: TAction;
    act2: TAction;
    cxButton2: TcxButton;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    ds_gys_list: TDataSource;
    qry_gys_list: TADOQuery;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure act_excelExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    fenyuan:string;
    procedure TuiHuoYiJian(yijian:string);
  public
    baocun:boolean;
    zt : string;
  end;

var
  Form_caigou_shenqing_new: TForm_caigou_shenqing_new;

implementation

{$R *.dfm}

uses unit_dm, Unit_public;

procedure TForm_caigou_shenqing_new.TuiHuoYiJian(yijian:string);
var
  shijian:TDateTime;
  danjia:Real;
begin
  if yijian='5' then
  begin
    ADOQuery1.DisableControls;
    ADOQuery1.First;
    while not ADOQuery1.Eof do
    begin
      if ADOQuery1.FieldByName('��Ӧ��').AsString='' then
      begin
        ADOQuery1.EnableControls;
        ADOQuery1.edit;
        Application.MessageBox('��Ӧ�̲���Ϊ��', '��ʾ', MB_OK);
        exit;
      end;

      if ADOQuery1.FieldByName('����').AsString='' then
      begin
        ADOQuery1.EnableControls;
        ADOQuery1.edit;
        Application.MessageBox('���۲���Ϊ��', '��ʾ', MB_OK);
        exit;
      end;

      try
        danjia:= ADOQuery1.FieldByName('����').asfloat;
        if danjia<0 then
        begin
          ADOQuery1.EnableControls;
          ADOQuery1.edit;
          Application.MessageBox('���۲���С��0', '��ʾ', MB_OK);
          exit;
        end;
      except
        ADOQuery1.EnableControls;
        ADOQuery1.edit;
        Application.MessageBox('���۸�ʽ����ȷ', '��ʾ', MB_OK);
        exit;
      end;

      ADOQuery1.Next;
    end;
    ADOQuery1.EnableControls;
  end;

  if yijian='5' then
  begin
    if Application.MessageBox(pchar('�����˻������ ͬ�� ��ȷ�ϲ�����'), 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  end
  else
  begin
    if Application.MessageBox(pchar('�����˻������ �ܾ� ��ȷ�ϲ�����'), 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  end;

  DataModule1.ADOCon_ALi.BeginTrans;
  try
    shijian:=XiTong_date;
    DataModule1.execSql('update ����������� set ״̬='+yijian+' where ������='+QuotedStr(cxLabel_bianhao.Caption)+' ');

    if yijian='5' then    //ͬ���˻�
    begin
      DataModule1.execSql('update ���������ϸ�� set ״̬=2 where ������='+QuotedStr(cxLabel_bianhao.Caption)+' ');
      //���������ɸ������ⵥ
      ADOQuery1.DisableControls;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        DataModule1.openSql('select top 0 * from ������_�����');
        DataModule1.ADOQuery_L.Append;
        DataModule1.ADOQuery_L.FieldByName('������').AsString:=cxLabel_bianhao.Caption;
        DataModule1.ADOQuery_L.FieldByName('����ʱ��').AsDateTime:=shijian;
        DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString:=ADOQuery1.FieldByName('��Ŀ���').AsString;
        DataModule1.ADOQuery_L.FieldByName('����').AsString:=ADOQuery1.FieldByName('����').AsString;
        DataModule1.ADOQuery_L.FieldByName('��������').AsFloat:=ADOQuery1.FieldByName('����').Asfloat*-1;
        DataModule1.ADOQuery_L.FieldByName('����').AsFloat:=ADOQuery1.FieldByName('����').Asfloat;
        DataModule1.ADOQuery_L.FieldByName('������').AsFloat:=ADOQuery1.FieldByName('�ϼƽ��').Asfloat*-1;
//       DataModule1.ADOQuery_L.FieldByName('������').AsFloat:=ADOQuery1.FieldByName('������').Asfloat;
        DataModule1.ADOQuery_L.FieldByName('��Ӧ��').AsString:=ADOQuery1.FieldByName('��Ӧ��').AsString;
        DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString:=fenyuan;
        DataModule1.ADOQuery_L.FieldByName('�Ƿ�����').asboolean:=false;
        DataModule1.ADOQuery_L.FieldByName('״̬').asinteger:=1;    //״̬Ϊ1����ʾ�ŵ�δ������Ҫ�ŵ���һ�£����Լ������ݿ�������һ�ʸ�������ⵥ
        DataModule1.ADOQuery_L.FieldByName('������').asstring:=G_user.UserName;
        DataModule1.ADOQuery_L.post;

        ADOQuery1.Next;
      end;
      ADOQuery1.EnableControls;

      ADOQuery1.UpdateBatch();
    end
    else
    begin
      DataModule1.execSql('update ���������ϸ�� set ״̬=3 where ������='+QuotedStr(cxLabel_bianhao.Caption)+' ');
    end;

    baocun:=true;
    DataModule1.ADOCon_ALi.CommitTrans;
    Application.MessageBox('�����ɹ�', '��ʾ', MB_OK);
    close;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('����ʧ��', '��ʾ', MB_OK);
  end;

end;

procedure TForm_caigou_shenqing_new.act1Execute(Sender: TObject);
begin
  if cxLabel_bianhao.Caption='' then
    exit;
  TuiHuoYiJian('5');    //ͬ��
end;

procedure TForm_caigou_shenqing_new.act2Execute(Sender: TObject);
begin
  if cxLabel_bianhao.Caption='' then
    exit;
  TuiHuoYiJian('6');  //�ܾ�
end;

procedure TForm_caigou_shenqing_new.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_caigou_shenqing_new.act_excelExecute(Sender: TObject);
begin
  DaochuExcel(cxGrid1);
end;

procedure TForm_caigou_shenqing_new.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if Self.Caption<>'�˻����뵥' then
    exit;

  if (ADOQuery1.Modified) and (ADOQuery1.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '����') or (LowerCase(Field.FieldName)= '������') then
    begin
      if ADOQuery1.FieldByName('����').AsString='' then
      begin
        Application.MessageBox('���۲���Ϊ��', '��ʾ', MB_OK);
        exit;
      end;
      if ADOQuery1.FieldByName('������').AsString<>'' then
        ADOQuery1.FieldByName('�ϼƽ��').AsFloat:=ADOQuery1.FieldByName('����').AsFloat*ADOQuery1.FieldByName('����').AsFloat
          -ADOQuery1.FieldByName('������').AsFloat
      else
        ADOQuery1.FieldByName('�ϼƽ��').AsFloat:=ADOQuery1.FieldByName('����').AsFloat*ADOQuery1.FieldByName('����').AsFloat;
    end;
  end;
end;

procedure TForm_caigou_shenqing_new.FormShow(Sender: TObject);
begin
  cxButton1.Visible:=false;
  cxButton2.Visible:=false;

  if zt='chakan' then
  begin
    pnl1.Enabled:=false;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
  end;

  if cxLabel_bianhao.Caption<>'' then
  begin
    DataModule1.openSql('select *,'+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����)'+
    ' from (select * from ����������� where ������='+QuotedStr(cxLabel_bianhao.Caption)+')a');

    cxDateEdit1.Date := DataModule1.ADOQuery_L.FieldByName('��������').asdatetime;
    cxLabel5.Caption := DataModule1.ADOQuery_L.FieldByName('������').asstring;
    cxMemo1.Lines.text := DataModule1.ADOQuery_L.FieldByName('����˵��').asstring;
    cxLabel7.Caption:= DataModule1.ADOQuery_L.FieldByName('��Ժ').asstring;
    fenyuan:= DataModule1.ADOQuery_L.FieldByName('�ֵ����').asstring;

    qry_shenpi.Close;
    qry_shenpi.SQL.Text:='select * from ������������� where ������='+QuotedStr(cxLabel_bianhao.Caption)+' order by ��� ';
    qry_shenpi.Open;

    if DataModule1.ADOQuery_L.FieldByName('���').AsInteger=2 then
    begin
      qry_gys_list.Close;
      qry_gys_list.SQL.Text:='select * from ��Ӧ�̱� where �Ƿ�����=0';
      qry_gys_list.Open;
      Self.Caption:='�˻����뵥';
      cxLabel10.Caption:=self.Caption;
      cxGrid1DBTableView1Column6.Visible:=false;
      cxGrid1DBTableView1DBColumn5.Caption:='�˻�����';
      cxGrid1DBTableView1DBColumn4.Visible:=false;
      cxGrid1DBTableView1.OptionsData.Editing:=true;
      if DataModule1.ADOQuery_L.FieldByName('״̬').AsInteger=2 then
      begin
        cxButton1.Visible:=true;
        cxButton2.Visible:=true;
      end
      else
      begin
        cxGrid1DBTableView1.OptionsData.Editing:=false;
      end;
      ADOQuery1.Active := false;
      ADOQuery1.SQL.text := 'select *,'+
        ' zt=(case ״̬ when 1 then ''������'' when 2 then ''���˻�'' when 3 then ''�ܾ��˻�'' end) '+
        ' from (select  * from ���������ϸ�� where ������ = '+ QuotedStr(cxLabel_bianhao.Caption)+')a';
      ADOQuery1.Active := true;
    end
    else
    begin
      ADOQuery1.Active := false;
      ADOQuery1.SQL.text := 'select *,'+
        ' zt=(case ״̬ when 1 then ''������'' when 2 then ''�Ѹ���'' when 3 then ''������'' end) '+
        ' from (select  * from ���������ϸ�� where ������ = '+ QuotedStr(cxLabel_bianhao.Caption)+')a';
      ADOQuery1.Active := true;
    end;

  end;
end;


end.
