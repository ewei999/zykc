unit Unit_cg_new;

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
  cxNavigator, Data.DB, cxDBData, cxContainer, cxMemo, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinBlue, cxGroupBox;

type
  TForm_cg_new = class(TForm)
    Panel1: TPanel;
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
    ActionToolBar1: TActionToolBar;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmncxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn13: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    Action_save: TAction;
    cxButton1: TcxButton;
    Action_new_m: TAction;
    Action_delete_m: TAction;
    cxButton2: TcxButton;
    Action_save_m: TAction;
    cxButton3: TcxButton;
    ADOQuery_list: TADOQuery;
    DataSource_list: TDataSource;
    ADOQuery_jiamu: TADOQuery;
    DataSource_jiamu: TDataSource;
    cxgrdbclmncxGrid1DBTableView1Column1: TcxGridDBColumn;
    Action_submit: TAction;
    ds_shenpi: TDataSource;
    qry_shenpi: TADOQuery;
    cxGroup_shenpi: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    act1: TAction;
    act2: TAction;
    procedure Action_newExecute(Sender: TObject);
    procedure button_zhuanti(button:string);
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_new_mExecute(Sender: TObject);
    procedure Action_save_mExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Action_delete_mExecute(Sender: TObject);
    procedure Action_submitExecute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
  private
    shenpi:Boolean;
    procedure  ShenPi_data(bj:string);
  public
    baocun:boolean;
    { Public declarations }
  end;

var
  Form_cg_new: TForm_cg_new;

implementation

uses
  Unit_DM, Unit_public, Unit_jiamubiao;

{$R *.dfm}

procedure TForm_cg_new.ShenPi_data(bj:string);
var
  tuihuiyuanyin:string;
begin
  if cxDBTextEdit1.text='' then
    exit;

  if Application.MessageBox(pchar('�������Ϊ��'+bj+'��ȷ��������'), 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  DataModule1.ADOCon_ALi.BeginTrans;
  try
    tuihuiyuanyin:='';
    DataModule1.execSql('update ������������� set ���='+QuotedStr(bj)+',����ʱ��=getdate(),״̬=''�������'',��ע='+QuotedStr(tuihuiyuanyin)+' '+
      ' where ������='+QuotedStr(cxDBTextEdit1.text)+' and ������='+QuotedStr(G_user.UserName)+' ');


    if bj='�˻�' then
    begin
      DataModule1.execSql('update ����ɹ��������� set ״̬=4 where ������='+QuotedStr(cxDBTextEdit1.text)+' ');
    end
    else
    begin
      ADOQuery_cg_mingxi.UpdateBatch();

      DataModule1.openSql('select top 1 * from  �������������  '+
        ' where ������='+QuotedStr(cxDBTextEdit1.text)+' and isnull(״̬,'''')='''' and ������<>'+QuotedStr(G_user.UserName)+' order by ��� ');
      if DataModule1.ADOQuery_L.Eof then
      begin
        DataModule1.execSql('update ����ɹ��������� set ״̬=3 where ������='+QuotedStr(cxDBTextEdit1.text)+' ');     //ͬ��
      end
      else
      begin
        DataModule1.ADOQuery_L.Edit;
        DataModule1.ADOQuery_L.FieldByName('״̬').AsString:='��������';
        DataModule1.ADOQuery_L.post;
      end;
    end;
    baocun:=true;
    DataModule1.ADOCon_ALi.CommitTrans;
    Application.MessageBox('�������', '��ʾ', MB_OK);
    close;
  except
    DataModule1.ADOCon_ALi.RollbackTrans;
    Application.MessageBox('����ʧ��', '��ʾ', MB_OK);
  end;
end;

procedure TForm_cg_new.act1Execute(Sender: TObject);
begin
  ShenPi_data('ͬ��');
end;

procedure TForm_cg_new.act2Execute(Sender: TObject);
begin
  ShenPi_data('�˻�');
end;

procedure TForm_cg_new.Action_cancelExecute(Sender: TObject);
begin
  if ADOQuery_cg_zhubiao.Modified  then
     ADOQuery_cg_zhubiao.Cancel;
  button_zhuanti('cancel');
end;

procedure TForm_cg_new.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_cg_new.Action_deleteExecute(Sender: TObject);
begin
   try
    DataModule1.ADOQuery_L.Active := false;
    DataModule1.ADOQuery_L.SQL.Text :='update ����ɹ��������� set ״̬ =2 where ������='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString);
    DataModule1.ADOQuery_L.ExecSQL;
//    DataModule1.ADOQuery_L.Active := false;
//    DataModule1.ADOQuery_L.SQL.Text :='update ����ɹ�������ϸ�� set ״̬ =2 where ������='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString);
//    DataModule1.ADOQuery_L.ExecSQL;
    baocun:=true;
    Application.MessageBox('���ϳɹ���', '��ʾ', MB_OK);
    Close;
  except
    Application.MessageBox('����ʧ�ܣ�', '����', MB_OK + MB_ICONSTOP);
    exit;
  end;
end;

procedure TForm_cg_new.Action_delete_mExecute(Sender: TObject);
begin
  ADOQuery_cg_mingxi.Delete;
end;

procedure TForm_cg_new.Action_editExecute(Sender: TObject);
begin
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecordCount>0 then
  begin
    ADOQuery_cg_zhubiao.Edit;
  end;
  button_zhuanti('edit');
end;

procedure TForm_cg_new.Action_newExecute(Sender: TObject);
begin
  button_zhuanti('new');
  cxDBDateEdit1.Date := XiTong_date;
  ADOQuery_cg_zhubiao.Active := false;
  ADOQuery_cg_zhubiao.SQL.Text := 'select top 0 * from ����ɹ���������';
  ADOQuery_cg_zhubiao.Active := true;
  ADOQuery_cg_zhubiao.Append;
  ADOQuery_cg_zhubiao.FieldByName('������').AsString := AutoCreateNo('CG','�ɹ�����');
  ADOQuery_cg_zhubiao.FieldByName('��������').AsDateTime := XiTong_date;
  ADOQuery_cg_zhubiao.FieldByName('������').AsString := G_user.UserName;
  ADOQuery_cg_zhubiao.FieldByName('Ա�����').AsString := G_user.userID;
  ADOQuery_cg_zhubiao.FieldByName('״̬').AsString := '0';
  ADOQuery_cg_mingxi.Active := False;
  ADOQuery_cg_mingxi.SQL.Text := 'select * from ����ɹ�������ϸ�� where ������='+
                                  QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString);
  ADOQuery_cg_mingxi.Active := true;

end;

procedure TForm_cg_new.Action_new_mExecute(Sender: TObject);
begin
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.laiyuan := '�ɹ�';
    Form_jiamubiao.ShowModal;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_cg_new.Action_saveExecute(Sender: TObject);
begin
//  if ADOQuery_cg_zhubiao.Modified then
  begin
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();
  end;
  button_zhuanti('save');
  baocun:=true;
end;

procedure TForm_cg_new.Action_save_mExecute(Sender: TObject);
begin
  if ADOQuery_cg_mingxi.Modified then
  begin
    ADOQuery_cg_mingxi.UpdateBatch;
  end;
  Action_new_m.Enabled := True;
  Action_delete_m.Enabled := True;
  Action_save_m.Enabled := false;
end;

procedure TForm_cg_new.Action_submitExecute(Sender: TObject);
begin
  if ADOQuery_cg_mingxi.RecordCount=0 then
  begin
    Application.MessageBox('��������һ���ɹ���Ʒ', '��ʾ', MB_OK);
    exit;
  end;

  if Application.MessageBox('ȷ���ύ��', 'ȷ��', MB_OKCANCEL +
    MB_ICONINFORMATION) = IDCANCEL then
    exit;

  try
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();

    DataModule1.ADOQuery_L.Active := false;
    DataModule1.ADOQuery_L.sql.text :='update ����ɹ��������� set ״̬ =1 where ������='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString);
    DataModule1.ADOQuery_L.ExecSQL;


    //д������
    DataModule1.execSql('delete from ������������� where ������='+QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString)+'');

    DataModule1.openSql('select ������� from �������ñ� where �����=''����ɹ���������'' order by ���');
    if DataModule1.ADOQuery_L.Eof then
    begin
      DataModule1.execSql('update ����ɹ��������� set ״̬=3 where ������='+QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString)+'');
    end
    else
    begin
      DataModule1.openSql2('select top 0 * from ������������� ');
      while not DataModule1.ADOQuery_L.Eof do
      begin
        DataModule1.ADOQuery_L2.append;
        DataModule1.ADOQuery_L2.FieldByName('������').AsString:= ADOQuery_cg_zhubiao.FieldByName('������').AsString;
        DataModule1.ADOQuery_L2.FieldByName('������').AsString:= DataModule1.ADOQuery_L.FieldByName('�������').AsString;
        if DataModule1.ADOQuery_L.RecNo=1 then
          DataModule1.ADOQuery_L2.FieldByName('״̬').AsString:= '��������';
        DataModule1.ADOQuery_L2.Post;

        DataModule1.ADOQuery_L.Next;
      end;
    end;
    baocun:=true;
    Application.MessageBox('�ύ�ɹ���', '��ʾ', MB_OK);
    Close;
  except
    Application.MessageBox('�ύʧ�ܣ�', '����', MB_OK + MB_ICONSTOP);
    exit;
  end;

end;

procedure TForm_cg_new.button_zhuanti(button: string);
begin
   cxGroup_shenpi.Visible:=False;
   act1.Visible:=False;
   act2.Visible:=False;
   if button = 'new' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := false;
     Action_cancel.Enabled := True;

   end else if button='edit' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := false;
     Action_cancel.Enabled := True;
     ADOQuery_cg_zhubiao.Edit;
   end else if button='save' then
   begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;

   end else if button='cancel' then
   begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;


   end else if button='submit' then
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
   end else if button='delete' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_save.Enabled := false;
     Action_close.Enabled := True;
     Action_delete.Enabled := True;
     Action_submit.Enabled := False;
     Action_cancel.Enabled := False;

     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;
   end
   else if button='chakan' then
   begin
     Action_new_m.Visible := false;
     Action_delete_m.Visible := false;
     Action_save_m.Visible := false;
     ActionToolBar1.Visible:=false;
     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;

     cxGroup_shenpi.Visible:=true;

     qry_shenpi.Close;
     qry_shenpi.SQL.Text:='select * from ������������� where ������='+QuotedStr(ADOQuery_cg_zhubiao.FieldByName('������').AsString)+' order by ��� ';
     qry_shenpi.Open;

     shenpi:=false;
     if qry_shenpi.Locate('������',G_user.UserName,[])  then
     begin
       if (qry_shenpi.FieldByName('״̬').AsString='��������') and (qry_shenpi.FieldByName('���').AsString='') then
         shenpi:=true;
     end;
     if shenpi then
     begin
       ActionToolBar1.Visible := true;
       act1.Visible:=true;
       act2.Visible:=true;
       Action_save.Visible := false;
       Action_cancel.Visible := false;
       Action_submit.Visible := false;
       Action_delete.Visible := false;
       ADOQuery_cg_mingxi.Edit;
       cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := True;
       cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := True;
       Action_new_m.Visible := True;
       Action_delete_m.Visible := True;
     end;
   end;
end;

procedure TForm_cg_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ADOQuery_cg_zhubiao.Modified then
    ADOQuery_cg_zhubiao.Cancel;
end;

procedure TForm_cg_new.FormShow(Sender: TObject);
begin
  baocun:=false;
  ADOQuery_list.Active := True;
end;

end.
