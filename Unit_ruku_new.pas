unit Unit_ruku_new;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxTextEdit, cxMemo,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Data.Win.ADODB, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxLabel, Vcl.ToolWin,
  Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, dxSkinBlue,unit_KuCunJilu;

type
  TForm_ruku_new = class(TForm)
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ADOQuery_cg_zhubiao: TADOQuery;
    DataSource_cg_zhubiao: TDataSource;
    ADOQuery_cg_mingxi: TADOQuery;
    DataSource_cg_mingxi: TDataSource;
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_close: TAction;
    Action_cancel: TAction;
    Action_save: TAction;
    Action_new_m: TAction;
    Action_delete_m: TAction;
    Action_save_m: TAction;
    Action_submit: TAction;
    ADOQuery_list: TADOQuery;
    DataSource_list: TDataSource;
    ADOQuery_jiamu: TADOQuery;
    ds_jiamu: TDataSource;
    cxLabel6: TcxLabel;
    DBComboBox1: TDBComboBox;
    cxLabel7: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn13: TcxGridDBColumn;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    Action_edit_m: TAction;
    cxButton6: TcxButton;
    cxLabel9: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxButton8: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    procedure Action_newExecute(Sender: TObject);
    procedure button_zhuanti(button:string);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_new_mExecute(Sender: TObject);
    procedure Action_save_mExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource_cg_mingxiDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit(zt:string);
    function jine(ado:tadoquery):real;
    procedure cxDBTextEdit4PropertiesChange(Sender: TObject);
    procedure Action_delete_mExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure cxDBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ruku_new: TForm_ruku_new;

implementation

uses
  Unit_public, Unit_jiamubiao, Unit_ruku_caogao, Unit_DM;

{$R *.dfm}

procedure TForm_ruku_new.Action_cancelExecute(Sender: TObject);
begin
  if ADOQuery_cg_zhubiao.Modified  then
     ADOQuery_cg_zhubiao.Cancel;
  button_zhuanti('cancel');
end;

procedure TForm_ruku_new.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm_ruku_new.Action_deleteExecute(Sender: TObject);
begin
  if Application.MessageBox('ȷ��������', 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  DataModule1.ADOCon_ALi.BeginTrans;
  try
    ADOQuery_cg_zhubiao.Delete;
    ADOQuery_cg_zhubiao.DisableControls;
    ADOQuery_cg_zhubiao.First;
    while not ADOQuery_cg_zhubiao.Eof do
    begin
      ADOQuery_cg_zhubiao.Delete;
    end;
    ADOQuery_cg_zhubiao.EnableControls;
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();

    DataModule1.ADOCon_ALi.CommitTrans;
    Application.MessageBox('���ϳɹ���', '��ʾ', MB_OK + MB_ICONINFORMATION);
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('����ʧ�ܣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
  end;
  close;
end;

procedure TForm_ruku_new.Action_delete_mExecute(Sender: TObject);
begin
  ADOQuery_cg_mingxi.Delete;
end;

procedure TForm_ruku_new.Action_newExecute(Sender: TObject);
begin

  cxDBDateEdit1.Date := XiTong_date;
  ADOQuery_cg_zhubiao.Active := false;
  ADOQuery_cg_zhubiao.SQL.Text := 'select top 0 * from ����ɹ��������';
  ADOQuery_cg_zhubiao.Active := true;
  ADOQuery_cg_zhubiao.Append;
  ADOQuery_cg_zhubiao.FieldByName('�����').AsString := AutoCreateNo('RK','�ɹ����');
  ADOQuery_cg_zhubiao.FieldByName('���ʱ��').AsDateTime := XiTong_date;
  ADOQuery_cg_zhubiao.FieldByName('������').AsString := G_user.UserName;
  ADOQuery_cg_zhubiao.FieldByName('Ա�����').AsString := G_user.userID;
  ADOQuery_cg_zhubiao.FieldByName('״̬').AsString := '0';
  ADOQuery_cg_mingxi.Active := False;
  ADOQuery_cg_mingxi.SQL.Text := 'select * from ����ɹ������ϸ�� where �����='+
                                  QuotedStr(ADOQuery_cg_zhubiao.FieldByName('�����').AsString);
  ADOQuery_cg_mingxi.Active := true;
  button_zhuanti('new');
end;

procedure TForm_ruku_new.Action_new_mExecute(Sender: TObject);
begin
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      ADOQuery_cg_mingxi.Append;
      ADOQuery_cg_mingxi.FieldByName('�����').AsString := ADOQuery_cg_zhubiao.FieldByName('�����').AsString;
      ADOQuery_cg_mingxi.FieldByName('�����ϸ���').AsString := AutoCreateNo('RKMX','�����ϸ');
      ADOQuery_cg_mingxi.FieldByName('�������').AsString := FormatDateTime('yyyymmddhhnnss',now);
      ADOQuery_cg_mingxi.FieldByName('���ʱ��').AsDateTime := xitong_date();
      ADOQuery_cg_mingxi.FieldByName('����').AsString := Form_jiamubiao.ADOQuery1.FieldByName('����').AsString;
      ADOQuery_cg_mingxi.FieldByName('��Ŀ���').AsString := Form_jiamubiao.ADOQuery1.FieldByName('��Ŀ���').AsString;
      ADOQuery_cg_mingxi.FieldByName('���').AsString := Form_jiamubiao.ADOQuery1.FieldByName('���').AsString;
      ADOQuery_cg_mingxi.FieldByName('��λ').AsString := Form_jiamubiao.ADOQuery1.FieldByName('��λ').AsString;
      if Form_jiamubiao.ADOQuery1.FieldByName('��浥λ').AsString<>'' then
        ADOQuery_cg_mingxi.FieldByName('��λ').AsString := Form_jiamubiao.ADOQuery1.FieldByName('��浥λ').AsString;

      ADOQuery_cg_mingxi.FieldByName('��������').AsString := Form_jiamubiao.ADOQuery1.FieldByName('����').AsString;
      ADOQuery_cg_mingxi.FieldByName('���').AsString := Form_jiamubiao.ADOQuery1.FieldByName('���').AsString;
      ADOQuery_cg_mingxi.FieldByName('С��').AsString := Form_jiamubiao.ADOQuery1.FieldByName('С��').AsString;

      DataModule1.openSql('select top 1 �������� from ����ɹ������ϸ�� '+
        ' where ��Ŀ���='+QuotedStr(Form_jiamubiao.ADOQuery1.FieldByName('��Ŀ���').AsString)+' order by ��� desc');
      if DataModule1.ADOQuery_L.Eof=false then
        ADOQuery_cg_mingxi.FieldByName('��������').AsString := DataModule1.ADOQuery_L.FieldByName('��������').AsString;

      ADOQuery_cg_mingxi.Post;
      ADOQuery_cg_zhubiao.FieldByName('���').AsFloat :=  (jine(ADOQuery_cg_mingxi));
      if cxDBTextEdit4.Text<>'' then
        ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat-strtofloat(cxDBTextEdit4.Text)
      else
        ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat;
    end;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_ruku_new.Action_saveExecute(Sender: TObject);
begin
  if DBComboBox1.Text ='' then
  begin
    Application.MessageBox('�����빺����ʽ��', '��ʾ', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if ADOQuery_cg_zhubiao.Modified then
  begin
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();
  end;
  button_zhuanti('save');
end;

procedure TForm_ruku_new.Action_save_mExecute(Sender: TObject);
begin
  while not ADOQuery_cg_mingxi.Eof do
  begin
    if ADOQuery_cg_mingxi.FieldByName('����').AsString = '' then
    begin
      Application.MessageBox('����д����', '����', MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if ADOQuery_cg_mingxi.FieldByName('��Ŀ���').AsString = '' then
    begin
      Application.MessageBox('��ѡ��Ҫ���ļ�Ŀ', '����', MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if ADOQuery_cg_mingxi.FieldByName('����').AsString = '' then
    begin
      Application.MessageBox('����д����', '����', MB_OK + MB_ICONSTOP);
      Exit;
    end;
  end;
  
  if ADOQuery_cg_mingxi.Modified then
  begin
    ADOQuery_cg_mingxi.UpdateBatch();
  end;

end;

procedure TForm_ruku_new.button_zhuanti(button: string);
begin
  if button = 'new' then
  begin
    Action_new.Enabled := false;
    Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := false;
     Action_cancel.Enabled := True;

  end
  else if button='edit' then
  begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := false;
     Action_cancel.Enabled := True;
     ADOQuery_cg_zhubiao.FieldByName('���').AsFloat :=  (jine(ADOQuery_cg_mingxi));
     if cxDBTextEdit4.Text<>'' then
       ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat-strtofloat(cxDBTextEdit4.Text)
     else
       ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat;
  end
  else if button='save' then
  begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;

  end
  else if button='cancel' then
  begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;


  end
  else if button='submit' then
  begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_save.Enabled := false;
     Action_close.Enabled := True;
     Action_delete.Enabled := false;
     Action_submit.Enabled := true;
     Action_cancel.Enabled := False;

     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;

  end
  else if button='delete' then
  begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_save.Enabled := false;
     Action_close.Enabled := True;
     Action_delete.Enabled := True;
     Action_submit.Enabled := False;
     Action_cancel.Enabled := False;
     Action_new_m.Enabled := false;
     Action_delete_m.Enabled := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;
  end;
end;

procedure TForm_ruku_new.cxButton8Click(Sender: TObject);
begin
  Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
  try
    Form_KuCunJilu.leibie:='�ɹ���¼ѡ��';
    Form_KuCunJilu.ShowModal;
    if Form_KuCunJilu.BHStr<>'' then
    begin
      ADOQuery_cg_mingxi.DisableControls;
      DataModule1.openSql(' select *,  '+
      ' ����=(select top 1 ���� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' ��浥λ=(select top 1 ��浥λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' С��=(select top 1 С�� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' ����=(select top 1 ���� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) ,'+
      ' ��������=(select top 1 �������� from ����ɹ������ϸ�� where ��Ŀ���=a.��Ŀ��� )'+
      ' from ( select ���,��Ŀ���,���� from ����ɹ�������ϸ�� where ��� in ('+Form_KuCunJilu.BHStr+') )a');
      while not DataModule1.ADOQuery_L.Eof do
      begin
        ADOQuery_cg_mingxi.Append;
        ADOQuery_cg_mingxi.FieldByName('�����').AsString := ADOQuery_cg_zhubiao.FieldByName('�����').AsString;
        ADOQuery_cg_mingxi.FieldByName('�����ϸ���').AsString := AutoCreateNo('RKMX','�����ϸ');
        ADOQuery_cg_mingxi.FieldByName('�������').AsString := FormatDateTime('yyyymmddhhnnss',now);
        ADOQuery_cg_mingxi.FieldByName('���ʱ��').AsDateTime := xitong_date();
        ADOQuery_cg_mingxi.FieldByName('����').AsString := DataModule1.ADOQuery_L.FieldByName('����').AsString;
        ADOQuery_cg_mingxi.FieldByName('��Ŀ���').AsString := DataModule1.ADOQuery_L.FieldByName('��Ŀ���').AsString;
        ADOQuery_cg_mingxi.FieldByName('���').AsString := DataModule1.ADOQuery_L.FieldByName('���').AsString;
        ADOQuery_cg_mingxi.FieldByName('��λ').AsString := DataModule1.ADOQuery_L.FieldByName('��λ').AsString;
        if DataModule1.ADOQuery_L.FieldByName('��浥λ').AsString<>'' then
          ADOQuery_cg_mingxi.FieldByName('��λ').AsString := DataModule1.ADOQuery_L.FieldByName('��浥λ').AsString;

        ADOQuery_cg_mingxi.FieldByName('���').AsString := DataModule1.ADOQuery_L.FieldByName('���').AsString;
        ADOQuery_cg_mingxi.FieldByName('С��').AsString := DataModule1.ADOQuery_L.FieldByName('С��').AsString;
        ADOQuery_cg_mingxi.FieldByName('����').AsString := DataModule1.ADOQuery_L.FieldByName('����').AsString;

        ADOQuery_cg_mingxi.FieldByName('��������').AsString := DataModule1.ADOQuery_L.FieldByName('����').AsString;
        if DataModule1.ADOQuery_L.FieldByName('��������').AsString<>'' then
          ADOQuery_cg_mingxi.FieldByName('��������').AsString := DataModule1.ADOQuery_L.FieldByName('��������').AsString;

        ADOQuery_cg_mingxi.FieldByName('���').AsFloat :=ADOQuery_cg_mingxi.FieldByName('��������').AsFloat*ADOQuery_cg_mingxi.FieldByName('����').asfloat;
        ADOQuery_cg_mingxi.FieldByName('�ɹ���ϸ���').AsString := DataModule1.ADOQuery_L.FieldByName('���').AsString;
        ADOQuery_cg_mingxi.Post;

        DataModule1.ADOQuery_L.next;
      end;
      ADOQuery_cg_mingxi.First;

      ADOQuery_cg_zhubiao.FieldByName('���').AsFloat :=  (jine(ADOQuery_cg_mingxi));
     if cxDBTextEdit4.Text<>'' then
       ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat-strtofloat(cxDBTextEdit4.Text)
     else
       ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat;

      ADOQuery_cg_mingxi.First;
      ADOQuery_cg_mingxi.EnableControls;
      ADOQuery_cg_mingxi.Edit;
    end;
  finally
    FreeAndNil(Form_KuCunJilu);
  end;
end;

procedure TForm_ruku_new.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if cxDBLookupComboBox1.Text='' then
    exit;
  DataModule1.openSql('select ֧������ from ��Ӧ�̱� where ��Ӧ�̱��='+QuotedStr(cxDBLookupComboBox1.EditValue)+'');
  ADOQuery_cg_zhubiao.Edit;
  ADOQuery_cg_zhubiao.FieldByName('������ʽ').AsString:= DataModule1.ADOQuery_L.FieldByName('֧������').AsString;
end;

procedure TForm_ruku_new.cxDBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    cxDBTextEdit3.SetFocus;
end;

procedure TForm_ruku_new.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
    cxDBTextEdit3.SetFocus;
end;

procedure TForm_ruku_new.cxDBTextEdit4PropertiesChange(Sender: TObject);
begin
  if not ADOQuery_cg_zhubiao.Modified then
     ADOQuery_cg_zhubiao.Edit;
  ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat- StrToFloat(cxDBTextEdit4.Text);
end;

procedure TForm_ruku_new.DataSource_cg_mingxiDataChange(Sender: TObject;
  Field: TField);
begin
  if ADOQuery_cg_mingxi.Modified then
  begin
    if (LowerCase(Field.FieldName)= '����') and (ADOQuery_cg_mingxi.FieldByName('����').AsString <> '') and (ADOQuery_cg_mingxi.FieldByName('��������').AsString <> '') then
    begin
      ADOQuery_cg_mingxi.FieldByName('���').AsFloat := ADOQuery_cg_mingxi.FieldByName('����').AsFloat*adoquery_cg_mingxi.FieldByName('��������').AsFloat;
      ADOQuery_cg_zhubiao.Edit;
      if ADOQuery_cg_mingxi.RecordCount>0 then
      begin
        ADOQuery_cg_zhubiao.FieldByName('���').AsFloat :=  (jine(ADOQuery_cg_mingxi));
        ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  :=  (jine(ADOQuery_cg_mingxi) - ADOQuery_cg_zhubiao.FieldByName('����').AsFloat);
      end
      else
      begin
        ADOQuery_cg_zhubiao.FieldByName('���').AsFloat :=ADOQuery_cg_mingxi.FieldByName('���').AsFloat;
        ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat :=ADOQuery_cg_zhubiao.FieldByName('���').AsFloat;
      end;
      ADOQuery_cg_mingxi.Edit;
    end;
    if (LowerCase(Field.FieldName)= '��������') and (ADOQuery_cg_mingxi.FieldByName('��������').AsString <> '') and (ADOQuery_cg_mingxi.FieldByName('����').AsString <> '') then
    begin

      ADOQuery_cg_mingxi.FieldByName('���').AsFloat := ADOQuery_cg_mingxi.FieldByName('����').AsFloat*adoquery_cg_mingxi.FieldByName('��������').AsFloat;
      ADOQuery_cg_zhubiao.Edit;
      if ADOQuery_cg_mingxi.RecordCount>0 then
      begin
        ADOQuery_cg_zhubiao.FieldByName('���').AsFloat :=  (jine(ADOQuery_cg_mingxi));
        ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  :=  (jine(ADOQuery_cg_mingxi) - ADOQuery_cg_zhubiao.FieldByName('����').AsFloat)
      end
      else
      begin
        ADOQuery_cg_zhubiao.FieldByName('���').AsFloat := ADOQuery_cg_mingxi.FieldByName('���').AsFloat ;
        ADOQuery_cg_zhubiao.FieldByName('�ϼƽ��').AsFloat  := ADOQuery_cg_zhubiao.FieldByName('���').AsFloat;
      end;
      ADOQuery_cg_mingxi.Edit;
    end;
  end;
end;

procedure TForm_ruku_new.edit(zt:string);
begin
  ADOQuery_cg_zhubiao.Active := False;
  ADOQuery_cg_zhubiao.SQL.Text := 'select * from ����ɹ�������� where �����='+
                                  QuotedStr(Form_ruku_caogao.ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
  ADOQuery_cg_zhubiao.Active := true;
  ADOQuery_cg_mingxi.Active := false;
  ADOQuery_cg_mingxi.SQL.Text := 'select * from ����ɹ������ϸ�� where �����='
                                +QuotedStr(ADOQuery_cg_zhubiao.FieldByName('�����').AsString);
  ADOQuery_cg_mingxi.Active := true;
  if zt='edit' then
  begin
    ADOQuery_cg_zhubiao.Edit;
    ADOQuery_cg_mingxi.Edit;
  end;
end;

procedure TForm_ruku_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQuery_cg_zhubiao.CancelBatch();
  ADOQuery_cg_mingxi.CancelBatch();
end;

procedure TForm_ruku_new.FormShow(Sender: TObject);
begin
  ADOQuery_list.Active := True;
  ADOQuery_jiamu.Active := True;
end;

function TForm_ruku_new.jine(ado: tadoquery): real;
var
  I : integer;
  K : real;
begin
  result := 0;
  if ado.RecordCount >0  then
  begin
    ado.First;
    for I := 0 to ado.RecordCount-1 do
    begin
      result:= result+ ado.FieldByName('��������').AsFloat*ado.FieldByName('����').asfloat ;
      ado.Next;
    end;
  end;
end;

end.
