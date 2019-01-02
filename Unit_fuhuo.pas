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
  cxDBLookupEdit, cxDBLookupComboBox,Unit_jiamubiao,RunTimeInfo,unit_FuKuan_Edit,
  cxCurrencyEdit,system.Math;

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
    ds_yuanyin: TDataSource;
    qry_yuanyin: TADOQuery;
    qry_gys: TADOQuery;
    ds_gys: TDataSource;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    qry_kucun: TADOQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl1: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxlbl1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxlbl2: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    pnl2: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    qry_zhudong: TADOQuery;
    ds_zhudong: TDataSource;
    ds_jiamu: TDataSource;
    qry_jiamu: TADOQuery;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    pm_shenqingdan: TPopupMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    cxlbl3: TcxLabel;
    qry1: TADOQuery;
    act2: TAction;
    cxButton1: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxRadioButton3: TcxRadioButton;
    cxTextEdit37: TcxTextEdit;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    qry_temp: TADOQuery;
    cxGridDBTableView1Column14: TcxGridDBColumn;
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
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ds_zhudongDataChange(Sender: TObject; Field: TField);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    CKbianhao,fenyuanm:string;
    xzbool,shifoujisuan:boolean;

    procedure jisuan;
  public
    laiyuan:string;
    baocun:boolean;
  end;

var
  Form_fuhuo: TForm_fuhuo;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}


procedure TForm_fuhuo.act1Execute(Sender: TObject);
var
  i,j,x:integer;
  danjia:Real;
  tishi:string;
  shijian:tdatetime;
begin
  if cxPageControl1.ActivePage=cxTabSheet1 then
  begin
    {$REGION '�����뵥����'}
    if cxLookupComboBox2.Text='' then
    begin
      Application.MessageBox('��ѡ���Ժ', '��ʾ', MB_OK);
      exit;
    end;

    if (cxRadioButton1.Checked=False) and (cxRadioButton2.Checked=False) and (cxRadioButton3.Checked=false) then
    begin
      Application.MessageBox('��ѡ�񸶻����ݲ������򲻸���', '��ʾ', MB_OK);
      exit;
    end;

    if cxRadioButton3.Checked then
    begin
      if cxTextEdit37.text='' then
      begin
        Application.MessageBox('�������ݲ�������ע', '��ʾ', MB_OK);
        cxTextEdit37.SetFocus;
        exit;
      end;
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
    qry_kucun.Close;
    qry_kucun.SQL.Text:='select top 0 ��Ŀ���,����,��Ӧ��,���� as �������� from ������_�����';
    qry_kucun.Open;

    qry_thshenqing_mx.edit;
    qry_thshenqing_mx.post;
    qry_thshenqing_mx.DisableControls;
    qry_thshenqing_mx.First;

    for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
    begin
      if qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean = True then
      begin
        if cxRadioButton1.Checked then
        begin
          if qry_thshenqing_mx.FieldByName('��������').AsString='' then
          begin
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('������������Ϊ��', '��ʾ', MB_OK);
            exit;
          end;

          try
            danjia:= qry_thshenqing_mx.FieldByName('��������').asfloat;
            if danjia<=0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('������������С�ڵ���0', '��ʾ', MB_OK);
              exit;
            end;
          except
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('����������ʽ����ȷ', '��ʾ', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('��Ӧ��').AsString='' then
          begin
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('��Ӧ�̲���Ϊ��', '��ʾ', MB_OK);
            exit;
          end;

          if qry_thshenqing_mx.FieldByName('����').AsString='' then
          begin
            qry_thshenqing_mx.EnableControls;
            qry_thshenqing_mx.edit;
            Application.MessageBox('�������۲���Ϊ��', '��ʾ', MB_OK);
            exit;
          end;

          try
            danjia:= qry_thshenqing_mx.FieldByName('����').asfloat;
            if danjia<0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('���۲���С��0', '��ʾ', MB_OK);
              exit;
            end;
          except
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
                qry_thshenqing_mx.EnableControls;
                qry_thshenqing_mx.edit;
                Application.MessageBox('�������С��0', '��ʾ', MB_OK);
                exit;
              end;
            except
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox('�������ʽ����ȷ', '��ʾ', MB_OK);
              exit;
            end;
          end;

          if (qry_thshenqing_mx.FieldByName('��������').AsString<>'') and (qry_thshenqing_mx.FieldByName('��������').AsFloat<>0) then
          begin
            if (trunc(qry_thshenqing_mx.FieldByName('��������').asfloat*100) mod trunc(qry_thshenqing_mx.FieldByName('��������').asfloat*100))<>0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox(PChar('����'+qry_thshenqing_mx.FieldByName('����').AsString+'����������Ϊ '+
                qry_thshenqing_mx.FieldByName('��������').AsString+' ���ܲ𿪸���'), '��ʾ', MB_OK);
              exit;
            end;
          end;
          if (qry_thshenqing_mx.FieldByName('�������').AsString<>'') and (qry_thshenqing_mx.FieldByName('�������').AsFloat<>0) then
          begin
            if (trunc(qry_thshenqing_mx.FieldByName('������').asfloat*100) mod trunc(qry_thshenqing_mx.FieldByName('�������').asfloat*100))<>0 then
            begin
              qry_thshenqing_mx.EnableControls;
              qry_thshenqing_mx.edit;
              Application.MessageBox(PChar('����'+qry_thshenqing_mx.FieldByName('����').AsString+'���������Ϊ '+
                qry_thshenqing_mx.FieldByName('�������').AsString+' ���ܲ𿪸���'), '��ʾ', MB_OK);
              exit;
            end;
          end;


          //�ж�����ֿ��Ǵ���Ʒ�Ŀ���Ƿ񹻱��θ���  ,�ֵ��ۺ͹�Ӧ��

          qry1.Clone(jisuan_danjia(qry_thshenqing_mx.FieldByName('��Ŀ���').AsString ,qry_thshenqing_mx.FieldByName('�ֿ���').AsString));
          while not qry1.Eof do
          begin
            if (qry1.FieldByName('��Ӧ�̱��').AsString=qry_thshenqing_mx.FieldByName('��Ӧ��').AsString)
            and (qry1.FieldByName('����').AsFloat=qry_thshenqing_mx.FieldByName('����').AsFloat) then
            begin
              if qry_thshenqing_mx.FieldByName('��������').AsFloat>qry1.FieldByName('����').AsFloat then
              begin
                qry_thshenqing_mx.EnableControls;
                qry_thshenqing_mx.edit;
                Application.MessageBox(pchar(qry_thshenqing_mx.FieldByName('����').AsString+' ��治��'), '��ʾ', MB_OK);
                exit;
              end
              else
              begin
                qry_kucun.First;
                x:=0;
                while not qry_kucun.Eof do
                begin
                  if (qry_kucun.FieldByName('��Ŀ���').AsString=qry_thshenqing_mx.FieldByName('��Ŀ���').asstring)
                  and (qry_kucun.FieldByName('��Ӧ��').asstring=qry_thshenqing_mx.FieldByName('��Ӧ��').asstring)
                  and (qry_kucun.FieldByName('����').AsFloat=qry_thshenqing_mx.FieldByName('����').AsFloat) then
                  begin
                    qry_kucun.Edit;
                    qry_kucun.FieldByName('��������').AsFloat:= qry_kucun.FieldByName('��������').AsFloat+qry_thshenqing_mx.FieldByName('��������').asfloat;
                    qry_kucun.Post;
                    x:=1;
                    Break;
                  end;
                  qry_kucun.Next;
                end;
                if x=0 then
                begin
                  qry_kucun.Append;
                  qry_kucun.FieldByName('��Ŀ���').AsString:= qry_thshenqing_mx.FieldByName('��Ŀ���').asstring;
                  qry_kucun.FieldByName('����').asstring:= qry_thshenqing_mx.FieldByName('����').asstring;
                  qry_kucun.FieldByName('��Ӧ��').asstring:= qry_thshenqing_mx.FieldByName('��Ӧ��').asstring;
                  qry_kucun.FieldByName('��������').AsFloat:= qry_thshenqing_mx.FieldByName('��������').asfloat;
                  qry_kucun.Post;
                end;

                if qry_kucun.FieldByName('��������').AsFloat>qry1.FieldByName('����').AsFloat then
                begin
                  qry_thshenqing_mx.EnableControls;
                  qry_thshenqing_mx.edit;
                  Application.MessageBox(pchar('���ƣ�'+qry_thshenqing_mx.FieldByName('����').asstring+
                  ' ���ۣ�'+qry_thshenqing_mx.FieldByName('����').asstring+' ��Ӧ�̣�'+qry_thshenqing_mx.FieldByName('��Ӧ��').asstring+
                  ' ��治�㣬���ܸ���'), '��ʾ', MB_OK);
                  exit;
                end;

              end;
            end;
            qry1.Next;
          end;

        end;
        j:=j+1;
      end;
      qry_thshenqing_mx.Next;
    end;
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
    if cxRadioButton3.Checked then
      tishi:='�ݲ�����  '+cxTextEdit37.text;

    if Application.MessageBox(pchar('��ѡ�� '+inttostr(j)+' ����¼������Ϊ��'+tishi+' ȷ�ϲ�����'), 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;

    shijian:=XiTong_date;
    DataModule1.ADOCon_ALi.BeginTrans;
    try
      qry_temp.Clone(qry_thshenqing_mx);

      if cxRadioButton1.Checked then  //������д�����
        CKbianhao:= AutoCreateNo('ZYFH','�����渶��');
      qry_thshenqing_mx.DisableControls;
      qry_thshenqing_mx.First;
      for i:=0 to qry_thshenqing_mx.RecordCount - 1 do
      begin
        if qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean = True then
        begin
          if cxRadioButton1.Checked then  //������д�����
          begin
            DataModule1.openSql('select top 0 * from ������_�����');
            DataModule1.ADOQuery_L.append;
            DataModule1.ADOQuery_L.FieldByName('������').AsString:= CKbianhao;
            DataModule1.ADOQuery_L.FieldByName('����ʱ��').AsDateTime:= shijian;
            DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString:= qry_thshenqing_mx.FieldByName('��Ŀ���').AsString;
            DataModule1.ADOQuery_L.FieldByName('����').AsString:= qry_thshenqing_mx.FieldByName('����').AsString;
            DataModule1.ADOQuery_L.FieldByName('��������').AsVariant:= qry_thshenqing_mx.FieldByName('��������').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('����').AsVariant:= qry_thshenqing_mx.FieldByName('����').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('������').AsVariant:= qry_thshenqing_mx.FieldByName('������').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('������').AsVariant:= qry_thshenqing_mx.FieldByName('������').AsVariant;
            DataModule1.ADOQuery_L.FieldByName('��Ӧ��').AsString:= qry_thshenqing_mx.FieldByName('��Ӧ��').AsString;
            DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString:= qry_thshenqing_mx.FieldByName('�ֵ����').AsString;
            DataModule1.ADOQuery_L.FieldByName('��ע').AsString:= qry_thshenqing_mx.FieldByName('��ע').AsString;
            DataModule1.ADOQuery_L.FieldByName('��Ŀ��ע').AsString:= qry_thshenqing_mx.FieldByName('��Ŀ��ע').AsString;
            DataModule1.ADOQuery_L.FieldByName('������').AsString:= G_user.UserName;
            DataModule1.ADOQuery_L.FieldByName('״̬').AsInteger:=1;
            DataModule1.ADOQuery_L.FieldByName('�Ƿ�����').asboolean:= false;

            if qry_thshenqing_mx.FieldByName('��������').AsString<>'' then
            begin
              DataModule1.ADOQuery_L.FieldByName('������').AsString:= qry_thshenqing_mx.FieldByName('���').AsString;

              danjia:=0;
              qry_temp.First;
              while not qry_temp.Eof do
              begin
                if (qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean=true)
                and (qry_temp.FieldByName('��Ŀ���').AsString=DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString)
                and (qry_temp.FieldByName('��������').AsString<>'') then
                  danjia:=danjia+qry_temp.FieldByName('��������').AsFloat;
                qry_temp.Next;
              end;


              if qry_thshenqing_mx.FieldByName('��������').AsFloat<=danjia then
              begin
                DataModule1.execSql('update ���������ϸ�� set ״̬=2,������='+QuotedStr(ckbianhao)+' '+
                ' where ���='+qry_thshenqing_mx.FieldByName('���').AsString+' ');
              end
              else
              begin
                DataModule1.execSql('update ���������ϸ�� set ����=����-'+floattostr(danjia)+' '+
                ' where ���='+qry_thshenqing_mx.FieldByName('���').AsString+' ');
              end;
            end;
            DataModule1.ADOQuery_L.post;
          end;

          if cxRadioButton3.Checked then  //�ݲ�����
          begin
            DataModule1.execSql('update ���������ϸ�� set ������ԭ��='+QuotedStr(cxTextEdit37.Text)+' '+
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
      qry_thshenqing_mx.EnableControls;
      if cxRadioButton2.Checked then  //������
      begin
        DataModule1.openSql('select * from �������ñ� where �����=''������ԭ��'' and �������='+QuotedStr(trim(cxLookupComboBox1.Text))+' ');
        if DataModule1.ADOQuery_L.Eof then
        begin
          DataModule1.ADOQuery_L.Append;
          DataModule1.ADOQuery_L.FieldByName('�����').AsString:='������ԭ��';
          DataModule1.ADOQuery_L.FieldByName('�������').AsString:=trim(cxLookupComboBox1.Text);
          DataModule1.ADOQuery_L.Post;
        end;
      end;
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
          DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY ��Ӧ��,���� ) AS xh ,'+
          ' ���� as mc,�������� as sl,���� as danjia,������ as jine,��ע as beizhu, '+
          ' bz=(select top 1 ��װ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
          ' dw=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
          ' gg=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���),  '+
          ' gysmc=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��)'+
          ' from ( select ��Ŀ���,����,��������,����,������,��ע,��Ӧ�� '+
          ' from ������_����� where ������='+QuotedStr(CKbianhao)+' )a ORDER BY ��Ӧ��,����';
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
          DataModule1.frxReport_dayin.ShowReport;
        end;
        close;
      end
      else
      begin
        Application.MessageBox('�����ɹ�', '��ʾ', MB_OK);
        fenyuanm:='';
        cxLookupComboBox2Exit(Sender);
      end;
    end;
    {$ENDREGION}
  end;
  if cxPageControl1.ActivePage=cxTabSheet2 then
  begin
    {$REGION '��������'}
    if qry_zhudong.RecordCount=0 then
    begin
      Application.MessageBox('���������һ����¼', '��ʾ', MB_OK);
      exit;
    end;
    qry_zhudong.edit;
    qry_zhudong.post;
    qry_kucun.Close;
    qry_kucun.SQL.Text:='select top 0 ��Ŀ���,����,��Ӧ��,���� as ��������,���� as ��������,���� as �������,��Ӧ�� as ��ע from ������_�����';
    qry_kucun.Open;
    qry_zhudong.DisableControls;
    qry_zhudong.First;
    while not qry_zhudong.Eof do
    begin
      if qry_zhudong.FieldByName('�ֵ����').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('�ֵ겻��Ϊ��', '��ʾ', MB_OK);
        exit;
      end;
      if qry_zhudong.FieldByName('��Ŀ���').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('��Ŀ����Ϊ��', '��ʾ', MB_OK);
        exit;
      end;
      if qry_zhudong.FieldByName('����').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('���Ʋ���Ϊ��', '��ʾ', MB_OK);
        exit;
      end;
      if qry_zhudong.FieldByName('��Ӧ��').AsString='' then
      begin
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('��Ӧ�̲���Ϊ��', '��ʾ', MB_OK);
        exit;
      end;
      try
        danjia:= qry_zhudong.FieldByName('��������').asfloat;
        if danjia<=0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('������������С�ڵ���0', '��ʾ', MB_OK);
          exit;
        end;
      except
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('����������ʽ����ȷ', '��ʾ', MB_OK);
        exit;
      end;

      try
        danjia:= qry_zhudong.FieldByName('����').asfloat;
        if danjia<0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('���۲���С��0', '��ʾ', MB_OK);
          exit;
        end;
      except
        qry_zhudong.EnableControls;
        qry_zhudong.edit;
        Application.MessageBox('���۸�ʽ����ȷ', '��ʾ', MB_OK);
        exit;
      end;

      if qry_zhudong.FieldByName('������').asstring<>'' then
      begin
        try
          danjia:= qry_zhudong.FieldByName('������').asfloat;
          if danjia<0 then
          begin
            qry_zhudong.EnableControls;
            qry_zhudong.edit;
            Application.MessageBox('�������С��0', '��ʾ', MB_OK);
          exit;
          end;
        except
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox('�������ʽ����ȷ', '��ʾ', MB_OK);
          exit;
        end;
      end;

      if (qry_zhudong.FieldByName('��������').AsString<>'') and (qry_zhudong.FieldByName('��������').AsFloat<>0) then
      begin
        if (trunc(qry_zhudong.FieldByName('��������').asfloat*100) mod trunc(qry_zhudong.FieldByName('��������').asfloat*100))<>0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox(PChar('����'+qry_zhudong.FieldByName('����').AsString+'����������Ϊ '+
            qry_zhudong.FieldByName('��������').AsString+' ���ܲ𿪸���'), '��ʾ', MB_OK);
          exit;
        end;
      end;
      if (qry_zhudong.FieldByName('�������').AsString<>'') and (qry_zhudong.FieldByName('�������').AsFloat<>0) then
      begin
        if (trunc(qry_zhudong.FieldByName('������').asfloat*100) mod trunc(qry_zhudong.FieldByName('�������').asfloat*100))<>0 then
        begin
          qry_zhudong.EnableControls;
          qry_zhudong.edit;
          Application.MessageBox(PChar('����'+qry_zhudong.FieldByName('����').AsString+'���������Ϊ '+
             qry_zhudong.FieldByName('�������').AsString+' ���ܲ𿪸���'), '��ʾ', MB_OK);
          exit;
        end;
      end;



      //�ж�����ֿ��Ǵ���Ʒ�Ŀ���Ƿ񹻱��θ���  ,�ֵ��ۺ͹�Ӧ��
      qry1.Clone(jisuan_danjia(qry_zhudong.FieldByName('��Ŀ���').AsString ,qry_zhudong.FieldByName('�ֿ���').AsString));
      while not qry1.Eof do
      begin
        if (qry1.FieldByName('��Ӧ�̱��').AsString=qry_zhudong.FieldByName('��Ӧ��').AsString)
        and (qry1.FieldByName('����').AsFloat=qry_zhudong.FieldByName('����').AsFloat)
        and (qry1.FieldByName('��ע').AsString=qry_zhudong.FieldByName('��Ŀ��ע').AsString)
        and (qry1.FieldByName('��������').AsString=qry_zhudong.FieldByName('��������').AsString)
        and (qry1.FieldByName('�������').AsString=qry_zhudong.FieldByName('�������').AsString)
        then
        begin
          if qry_zhudong.FieldByName('��������').AsFloat>qry1.FieldByName('����').AsFloat then
          begin
            qry_zhudong.EnableControls;
            qry_zhudong.edit;
            Application.MessageBox(pchar(qry_zhudong.FieldByName('����').AsString+' ��治��'), '��ʾ', MB_OK);
            exit;
          end
          else
          begin
            qry_kucun.First;
            x:=0;
            while not qry_kucun.Eof do
            begin
              if (qry_kucun.FieldByName('��Ŀ���').AsString=qry_zhudong.FieldByName('��Ŀ���').asstring)
              and (qry_kucun.FieldByName('��Ӧ��').asstring=qry_zhudong.FieldByName('��Ӧ��').asstring)
              and (qry_kucun.FieldByName('����').AsFloat=qry_zhudong.FieldByName('����').AsFloat)
              and (qry_kucun.FieldByName('��ע').AsString=qry_zhudong.FieldByName('��Ŀ��ע').AsString)
              and (qry_kucun.FieldByName('��������').AsString=qry_zhudong.FieldByName('��������').AsString)
              and (qry_kucun.FieldByName('�������').AsString=qry_zhudong.FieldByName('�������').AsString)
              then
              begin
                qry_kucun.Edit;
                qry_kucun.FieldByName('��������').AsFloat:= qry_kucun.FieldByName('��������').AsFloat+qry_zhudong.FieldByName('��������').asfloat;
                qry_kucun.Post;
                x:=1;
                Break;
              end;
              qry_kucun.Next;
            end;
            if x=0 then
            begin
              qry_kucun.Append;
              qry_kucun.FieldByName('��Ŀ���').AsString:= qry_zhudong.FieldByName('��Ŀ���').asstring;
              qry_kucun.FieldByName('����').asstring:= qry_zhudong.FieldByName('����').asstring;
              qry_kucun.FieldByName('��Ӧ��').asstring:= qry_zhudong.FieldByName('��Ӧ��').asstring;
              qry_kucun.FieldByName('��ע').asstring:= qry_zhudong.FieldByName('��Ŀ��ע').asstring;
              qry_kucun.FieldByName('��������').AsFloat:= qry_zhudong.FieldByName('��������').asfloat;
              qry_kucun.FieldByName('��������').asstring:= qry_zhudong.FieldByName('��������').asstring;
              qry_kucun.FieldByName('�������').asstring:= qry_zhudong.FieldByName('�������').asstring;
              qry_kucun.Post;
            end;

            if qry_kucun.FieldByName('��������').AsFloat>qry1.FieldByName('����').AsFloat then
            begin
              qry_zhudong.EnableControls;
              qry_zhudong.edit;
              Application.MessageBox(pchar('���ƣ�'+qry_zhudong.FieldByName('����').asstring+
                  ' ���ۣ�'+qry_zhudong.FieldByName('����').asstring+' ��Ӧ�̣�'+qry_zhudong.FieldByName('��Ӧ��').asstring+
                  ' ��治�㣬���ܸ���'), '��ʾ', MB_OK);
              exit;
            end;
          end;
        end;
        qry1.Next;
      end;

      qry_zhudong.Next;
    end;
    qry_zhudong.EnableControls;

    if Application.MessageBox('ȷ�ϸ�����', 'ȷ��', MB_OKCANCEL + MB_ICONINFORMATION) = IDCANCEL then
      exit;

    shijian:=XiTong_date;
    DataModule1.ADOCon_ALi.BeginTrans;
    try
      qry_zhudong.DisableControls;
      qry_zhudong.First;
      CKbianhao:= AutoCreateNo('ZYFH','�����渶��');
      while not qry_zhudong.Eof do
      begin
        DataModule1.openSql('select top 0 * from ������_�����');
        DataModule1.ADOQuery_L.append;
        DataModule1.ADOQuery_L.FieldByName('������').AsString:= CKbianhao;
        DataModule1.ADOQuery_L.FieldByName('����ʱ��').AsDateTime:= shijian;
        DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString:= qry_zhudong.FieldByName('��Ŀ���').AsString;
        DataModule1.ADOQuery_L.FieldByName('����').AsString:= qry_zhudong.FieldByName('����').AsString;
        DataModule1.ADOQuery_L.FieldByName('��������').AsVariant:= qry_zhudong.FieldByName('��������').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('����').AsVariant:= qry_zhudong.FieldByName('����').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('������').AsVariant:= qry_zhudong.FieldByName('������').AsVariant;
        DataModule1.ADOQuery_L.FieldByName('��Ӧ��').AsString:= qry_zhudong.FieldByName('��Ӧ��').AsString;
        DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString:= qry_zhudong.FieldByName('�ֵ����').AsString;
        DataModule1.ADOQuery_L.FieldByName('��Ŀ��ע').AsString:= qry_zhudong.FieldByName('��Ŀ��ע').AsString;
        DataModule1.ADOQuery_L.FieldByName('������').AsString:= G_user.UserName;
        DataModule1.ADOQuery_L.FieldByName('״̬').AsInteger:=1;
        DataModule1.ADOQuery_L.FieldByName('�Ƿ�����').asboolean:= false;
        DataModule1.ADOQuery_L.post;
        qry_zhudong.Next;
      end;
      qry_zhudong.EnableControls;
      baocun:=true;
      DataModule1.ADOCon_ALi.CommitTrans;
    except
      DataModule1.ADOCon_ALi.RollbackTrans;
      Application.MessageBox('����ʧ��', '��ʾ', MB_OK);
    end;

    if baocun then
    begin
      if Application.MessageBox('�����ɹ����Ƿ��ӡ��������', '��ʾ', MB_OKCANCEL +
        MB_ICONQUESTION) = IDOK then
      begin
        DataModule1.openSql('select *,fy=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����) '+
        ' from (select �ֵ���� from ������_����� where ������='+QuotedStr(CKbianhao)+' group by �ֵ����)a');
        while not DataModule1.ADOQuery_L.Eof do
        begin
          DataModule1.ADOQuery_dayin.Close;
          DataModule1.ADOQuery_dayin.SQL.Text :='select RANK () OVER (ORDER BY ��Ӧ��,����) AS xh ,'+
          ' ���� as mc,�������� as sl,���� as danjia,������ as jine,��ע as beizhu, '+
          ' bz=(select top 1 ��װ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
          ' dw=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
          ' gg=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) , '+
          ' gysmc=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��)'+
          ' from ( select ��Ŀ���,����,��������,����,������,��ע,��Ӧ�� '+
          ' from ������_����� where ������='+QuotedStr(CKbianhao)+' '+
          ' and �ֵ����='+QuotedStr(DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString)+'  )a ORDER BY ��Ӧ��,����';
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
          DataModule1.frxReport_dayin.Variables['fenyuan'] :=QuotedStr(DataModule1.ADOQuery_L.FieldByName('fy').AsString);
          DataModule1.frxReport_dayin.ShowReport;
          DataModule1.ADOQuery_L.Next;
        end;
      end;
      qry_zhudong.Close;
      qry_zhudong.SQL.Text:='select top 0 �ֵ����,��Ŀ���,����,�������� as ��������,����,������,��Ӧ��,'+
      ' ���� as ��װ���,���� as �ֿ���,������,�������� as ��������,���� as �������,��Ŀ��ע from ������_�����';
      qry_zhudong.Open;
    end;
    {$ENDREGION}
  end;
end;

procedure TForm_fuhuo.act2Execute(Sender: TObject);
begin
  DaochuExcel(cxGrid2);
end;

procedure TForm_fuhuo.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_fuhuo.cxButton3Click(Sender: TObject);
begin
  if qry_zhudong.Active=false then
    exit;

  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.leibie:='��������';
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      qry_zhudong.Append;
      qry_zhudong.FieldByName('��Ŀ���').AsString := Form_jiamubiao.ADOQuery1.FieldByName('��Ŀ���').AsString;
      qry_zhudong.FieldByName('����').AsString := Form_jiamubiao.ADOQuery1.FieldByName('����').AsString;
      qry_zhudong.FieldByName('�ֿ���').AsFloat:= ChaXunKuCun(qry_zhudong.FieldByName('��Ŀ���').asstring);
      qry_zhudong.Post;
      qry_zhudong.Edit;
      shifoujisuan:=true;
    end;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_fuhuo.cxButton4Click(Sender: TObject);
begin
  if qry_zhudong.Active=false then
    exit;
  if qry_zhudong.RecordCount=0 then
    exit;
  qry_zhudong.Delete;
end;



procedure TForm_fuhuo.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (cxGridDBTableView1.Controller.FocusedColumn.VisibleCaption = '�ֿ���') then
  begin
    Form_FuKuan_Edit := TForm_FuKuan_Edit.Create(nil);
    try
      Form_FuKuan_Edit.leibiestr:='����б�';
      Form_FuKuan_Edit.cxlbl1.Caption:= qry_thshenqing_mx.FieldByName('����').AsString ;
      Form_FuKuan_Edit.cxlbl1.Style.Font.Size:=16;
      Form_FuKuan_Edit.qry_liebiao.Clone(jisuan_danjia(qry_thshenqing_mx.FieldByName('��Ŀ���').AsString ,qry_thshenqing_mx.FieldByName('�ֿ���').AsString));
      Form_FuKuan_Edit.ShowModal;
      if Form_FuKuan_Edit.baocun then
      begin
        qry_thshenqing_mx.Edit;
        qry_thshenqing_mx.FieldByName('����').AsFloat:=Form_FuKuan_Edit.qry_liebiao.FieldByName('����').AsFloat;
        if qry_thshenqing_mx.FieldByName('��������').AsString <>'' then
        begin
          if Form_FuKuan_Edit.qry_liebiao.FieldByName('����').AsFloat>qry_thshenqing_mx.FieldByName('��������').AsFloat then
            qry_thshenqing_mx.FieldByName('��������').AsFloat:= qry_thshenqing_mx.FieldByName('��������').AsFloat
          else
            qry_thshenqing_mx.FieldByName('��������').AsFloat:= Form_FuKuan_Edit.qry_liebiao.FieldByName('����').AsFloat;
        end
        else
        begin
          qry_thshenqing_mx.FieldByName('��������').AsFloat:= 1;
        end;

        qry_thshenqing_mx.FieldByName('��Ӧ��').AsString:= Form_FuKuan_Edit.qry_liebiao.FieldByName('��Ӧ�̱��').AsString;
        qry_thshenqing_mx.FieldByName('������').AsFloat := qry_thshenqing_mx.FieldByName('����').AsFloat*qry_thshenqing_mx.FieldByName('��������').AsFloat;
        qry_thshenqing_mx.FieldByName('��������').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('��������').AsVariant;
        qry_thshenqing_mx.FieldByName('�������').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('�������').AsVariant;
        qry_thshenqing_mx.FieldByName('��Ŀ��ע').AsString:= Form_FuKuan_Edit.qry_liebiao.FieldByName('��ע').AsString;

        qry_thshenqing_mx.Post;
      end;
    finally
      FreeAndNil(Form_FuKuan_Edit);
    end;
  end;
end;

procedure TForm_fuhuo.cxGridDBTableView1Column4HeaderClick(Sender: TObject);
begin
  xzbool:= not xzbool;
  qry_thshenqing_mx.DisableControls;
  qry_thshenqing_mx.First;
  while not qry_thshenqing_mx.Eof do
  begin
    qry_thshenqing_mx.Edit;
    qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean:= xzbool;
    if qry_thshenqing_mx.FieldByName('�ֿ���').AsFloat=0 then
      qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean:= false;
    qry_thshenqing_mx.Post;

    qry_thshenqing_mx.Next;
  end;
  qry_thshenqing_mx.EnableControls;
end;

procedure TForm_fuhuo.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (cxGridDBTableView2.Controller.FocusedColumn.VisibleCaption = '�ֿ���') then
  begin
    Form_FuKuan_Edit := TForm_FuKuan_Edit.Create(nil);
    try
      Form_FuKuan_Edit.leibiestr:='����б�';
      Form_FuKuan_Edit.cxlbl1.Caption:= qry_zhudong.FieldByName('����').AsString ;
      Form_FuKuan_Edit.cxlbl1.Style.Font.Size:=16;
      Form_FuKuan_Edit.qry_liebiao.Clone(jisuan_danjia(qry_zhudong.FieldByName('��Ŀ���').AsString ,qry_zhudong.FieldByName('�ֿ���').AsString));
      Form_FuKuan_Edit.ShowModal;
      if Form_FuKuan_Edit.baocun then
      begin
        qry_zhudong.Edit;
        qry_zhudong.FieldByName('����').AsFloat:=Form_FuKuan_Edit.qry_liebiao.FieldByName('����').AsFloat;
        qry_zhudong.FieldByName('��������').AsFloat:= 0;
        qry_zhudong.FieldByName('��Ӧ��').AsString:= Form_FuKuan_Edit.qry_liebiao.FieldByName('��Ӧ�̱��').AsString;
        qry_zhudong.FieldByName('������').AsFloat := qry_zhudong.FieldByName('����').AsFloat*qry_zhudong.FieldByName('��������').AsFloat;
        qry_zhudong.FieldByName('��������').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('��������').AsVariant;
        qry_zhudong.FieldByName('�������').AsVariant:= Form_FuKuan_Edit.qry_liebiao.FieldByName('�������').AsVariant;
        qry_zhudong.FieldByName('��Ŀ��ע').AsString := Form_FuKuan_Edit.qry_liebiao.FieldByName('��ע').AsString;
        qry_zhudong.Post;
      end;
    finally
      FreeAndNil(Form_FuKuan_Edit);
    end;
  end;
end;

procedure TForm_fuhuo.cxLookupComboBox2Exit(Sender: TObject);
var
  zongjine:real;
begin
  if cxLookupComboBox2.Text='' then
    exit;
  if fenyuanm=cxLookupComboBox2.Text then
    exit;

  fenyuanm:=cxLookupComboBox2.Text;

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select top 0 ״̬ as ���,ѡ��,��Ŀ���,���� as ��������,���� as ��������,���,��λ,��ע,'+
    ' ��� as ����ʱ���,����,��λ as ��Ӧ��,���� as ������,���� as ������,��λ as ��װ���,����,��λ as �ֵ����,'+
    ' ��� as �ֿ���,��Ŀ��� as ��������,������ԭ��,�����̶�,���� as ��������,���� as �������,��Ŀ��� as ��Ŀ��ע from ���������ϸ��';
  qry_thshenqing_mx.Open;

  Show_RuntimeInfo('���ڴ�');

  DataModule1.openSql('select b.* ,c.������,c.������,c.��Ӧ��,c.���� from ('+
    ' select ���,������,��Ŀ���,����,���,��λ,��ע,���,ѡ��,����,������ԭ��,�����̶�, '+
    ' �ֵ����=(select top 1 �ֵ���� from ����������� where  ������=a.������) ,'+
    ' ��������=(select top 1 convert(char(10),����ʱ��,120) from ������������� where ������=a.������ and ����ʱ�� is not null order by ��� desc ),'+
    ' ��װ���=(select top 1 ��װ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) '+
    ' from ( select * from ���������ϸ��'+
    ' where ״̬=1 and ������ in (select ������ from  ����������� where �Ƿ�����=0 and ״̬=2 and ���=1 '+
    '    and �ֵ����='+QuotedStr(cxLookupComboBox2.EditValue)+' )'+
    ' )a)b left join (select ������,������,������,��Ӧ��,���� from ������_����� )c '+
    ' on b.������=c.������ ');
  qry_thshenqing_mx.DisableControls;
  while not DataModule1.ADOQuery_L.Eof do
  begin
    qry_thshenqing_mx.Append;
    qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean:=false;
    qry_thshenqing_mx.FieldByName('���').asstring:= DataModule1.ADOQuery_L.FieldByName('���').AsString;
    qry_thshenqing_mx.FieldByName('��Ŀ���').asstring:= DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString;
    qry_thshenqing_mx.FieldByName('��������').asstring:= DataModule1.ADOQuery_L.FieldByName('����').AsString;
    qry_thshenqing_mx.FieldByName('��������').asstring:= '';
    qry_thshenqing_mx.FieldByName('���').asstring:= DataModule1.ADOQuery_L.FieldByName('���').AsString;
    qry_thshenqing_mx.FieldByName('��λ').asstring:= DataModule1.ADOQuery_L.FieldByName('��λ').AsString;
    qry_thshenqing_mx.FieldByName('��ע').asstring:= DataModule1.ADOQuery_L.FieldByName('��ע').AsString;
    qry_thshenqing_mx.FieldByName('����ʱ���').asstring:= DataModule1.ADOQuery_L.FieldByName('���').AsString;
    qry_thshenqing_mx.FieldByName('��װ���').asstring:= DataModule1.ADOQuery_L.FieldByName('��װ���').AsString;
    qry_thshenqing_mx.FieldByName('����').asstring:= DataModule1.ADOQuery_L.FieldByName('����').AsString;
    qry_thshenqing_mx.FieldByName('�ֵ����').asstring:= DataModule1.ADOQuery_L.FieldByName('�ֵ����').AsString;
    qry_thshenqing_mx.FieldByName('��������').asstring:= DataModule1.ADOQuery_L.FieldByName('��������').AsString;
    qry_thshenqing_mx.FieldByName('������ԭ��').asstring:= DataModule1.ADOQuery_L.FieldByName('������ԭ��').AsString;
    qry_thshenqing_mx.FieldByName('�����̶�').asstring:= DataModule1.ADOQuery_L.FieldByName('�����̶�').AsString;
    qry_thshenqing_mx.FieldByName('����').AsVariant:= null;
    qry_thshenqing_mx.FieldByName('��Ӧ��').asstring:= '';
    qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
    qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
    qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
    qry_thshenqing_mx.FieldByName('�ֿ���').AsFloat:= ChaXunKuCun(qry_thshenqing_mx.FieldByName('��Ŀ���').asstring);
    qry_thshenqing_mx.Post;

    DataModule1.ADOQuery_L.Next;
  end;
  qry_thshenqing_mx.EnableControls;
  hide_RuntimeInfo;
  if qry_thshenqing_mx.RecordCount>0 then
    qry_thshenqing_mx.Edit;
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


procedure TForm_fuhuo.jisuan;
var
  zongjine:real;
begin
//  zongjine:=jisuan_danjia(qry_thshenqing_mx.FieldByName('��Ŀ���').AsString,qry_thshenqing_mx.FieldByName('����').AsString);
  if zongjine<>-1 then
  begin
    qry_thshenqing_mx.Edit;
    qry_thshenqing_mx.FieldByName('����').AsFloat:=round(zongjine*100/qry_thshenqing_mx.FieldByName('����').asfloat)/100;
    qry_thshenqing_mx.FieldByName('������').AsFloat := zongjine;
    qry_thshenqing_mx.Post;
  end;
end;


procedure TForm_fuhuo.N1Click(Sender: TObject);
begin
  if qry_thshenqing_mx.Active=false then
    exit;
  if qry_thshenqing_mx.RecordCount=0 then
    exit;
  if qry_thshenqing_mx.FieldByName('��������').AsString<>'' then
  begin
    Application.MessageBox('�ŵ������¼����ɾ��', '��ʾ', MB_OK);
    exit;
  end;
  qry_thshenqing_mx.Delete;
end;

procedure TForm_fuhuo.N2Click(Sender: TObject);
var
  mc,jmbh,gg,dw,bzgg,fddd  :string;
begin
  if qry_thshenqing_mx.FieldByName('����').AsString='' then
    exit;
  jmbh:= qry_thshenqing_mx.FieldByName('��Ŀ���').asstring;
  mc:= qry_thshenqing_mx.FieldByName('����').asstring;
  gg:= qry_thshenqing_mx.FieldByName('���').asstring;
  dw:= qry_thshenqing_mx.FieldByName('��λ').asstring;
  bzgg:= qry_thshenqing_mx.FieldByName('��װ���').asstring;
  fddd:= qry_thshenqing_mx.FieldByName('�ֵ����').asstring;

  qry_thshenqing_mx.Append;
  qry_thshenqing_mx.FieldByName('���').asstring:='';
  qry_thshenqing_mx.FieldByName('ѡ��').AsBoolean:=True;
  qry_thshenqing_mx.FieldByName('��Ŀ���').asstring:= jmbh;
  qry_thshenqing_mx.FieldByName('��������').asstring:='';
  qry_thshenqing_mx.FieldByName('��������').asstring:= '';
  qry_thshenqing_mx.FieldByName('���').asstring:= gg;
  qry_thshenqing_mx.FieldByName('��λ').asstring:= dw;
  qry_thshenqing_mx.FieldByName('��ע').asstring:= '';
  qry_thshenqing_mx.FieldByName('����ʱ���').asstring:= '';
  qry_thshenqing_mx.FieldByName('��װ���').asstring:= bzgg;
  qry_thshenqing_mx.FieldByName('����').asstring:= mc;
  qry_thshenqing_mx.FieldByName('�ֵ����').asstring:= fddd;
  qry_thshenqing_mx.FieldByName('����').AsVariant:= null;
  qry_thshenqing_mx.FieldByName('��Ӧ��').asstring:= '';
  qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
//  qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
  qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
  qry_thshenqing_mx.FieldByName('�ֿ���').asfloat:=ChaXunKuCun(jmbh);
  qry_thshenqing_mx.Post;
end;

procedure TForm_fuhuo.ds_thshenqing_mxDataChange(Sender: TObject;
  Field: TField);
var
  zongjine:real;
begin
  if (qry_thshenqing_mx.Modified) and (qry_thshenqing_mx.State = dsEdit) and (shifoujisuan=true)  then
  begin
    if  ((LowerCase(Field.FieldName)= '��������')   or (LowerCase(Field.FieldName)= '������') ) and (shifoujisuan=true)  then
    begin
      shifoujisuan:=false;

      if (qry_thshenqing_mx.FieldByName('����').AsString='') or (qry_thshenqing_mx.FieldByName('��������').AsString='') or (qry_thshenqing_mx.FieldByName('��������').AsFloat<=0) then
      begin
        qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
        qry_thshenqing_mx.FieldByName('������').AsVariant:=null;
      end
      else
      begin
        if qry_thshenqing_mx.FieldByName('������').AsString<>'' then
          qry_thshenqing_mx.FieldByName('������').AsFloat:=qry_thshenqing_mx.FieldByName('��������').AsFloat*qry_thshenqing_mx.FieldByName('����').AsFloat
            -qry_thshenqing_mx.FieldByName('������').AsFloat
        else
          qry_thshenqing_mx.FieldByName('������').AsFloat:=qry_thshenqing_mx.FieldByName('��������').AsFloat*qry_thshenqing_mx.FieldByName('����').AsFloat;
      end;
    end;
    shifoujisuan:=true;
  end;
end;

procedure TForm_fuhuo.ds_zhudongDataChange(Sender: TObject; Field: TField);
begin
  if (qry_zhudong.Modified) and (qry_zhudong.State = dsEdit) then
  begin
    if (LowerCase(Field.FieldName)= '��������') or (LowerCase(Field.FieldName)= '������')  then
    begin
      if (qry_zhudong.FieldByName('����').AsString<>'') and (qry_zhudong.FieldByName('��������').AsString<>'') then
      begin
        if qry_zhudong.FieldByName('������').AsString='' then
          qry_zhudong.FieldByName('������').AsFloat:=qry_zhudong.FieldByName('��������').AsFloat*qry_zhudong.FieldByName('����').AsFloat
        else
          qry_zhudong.FieldByName('������').AsFloat:=(qry_zhudong.FieldByName('��������').AsFloat*qry_zhudong.FieldByName('����').AsFloat)
                -qry_zhudong.FieldByName('������').AsFloat;
      end;
    end;
  end;
end;

procedure TForm_fuhuo.FormCreate(Sender: TObject);
begin
  baocun:=false;
  xzbool:=false;
  CKbianhao:='';
  cxLookupComboBox1.Enabled:=false;
  cxPageControl1.HideTabs:=true;

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

procedure TForm_fuhuo.FormShow(Sender: TObject);
begin
  if laiyuan='�����뵥' then
  begin
    cxLabel10.Caption:='���ŵ긶���������뵥��';
    Self.Caption:=cxLabel10.Caption;
    shifoujisuan:=true;
    self.WindowState:=wsMaximized;
    cxTabSheet1.Show;
  end;
  if laiyuan='��������' then
  begin
    cxLabel10.Caption:='���ŵ긶��������������';
    Self.Caption:=cxLabel10.Caption;
    qry_zhudong.Close;
    qry_zhudong.SQL.Text:='select top 0 �ֵ����,��Ŀ���,����,�������� as ��������,����,������,��Ӧ��,'+
      ' ���� as ��װ���,���� as �ֿ���,������,�������� as ��������,���� as �������,��Ŀ��ע from ������_�����';
    qry_zhudong.Open;

    qry_jiamu.Close;
    qry_jiamu.SQL.Text:='select ��Ŀ���,���,��λ,��װ��� from ҩƷ��Ʒ��Ŀ��';
    qry_jiamu.Open;
    cxTabSheet2.Show;
  end;
end;

end.
