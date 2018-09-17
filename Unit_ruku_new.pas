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
  Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

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
    x: TDataSource;
    cxLabel6: TcxLabel;
    DBComboBox1: TDBComboBox;
    cxLabel7: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxgrdbclmncxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
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
    procedure Action_newExecute(Sender: TObject);
    procedure button_zhuanti(button:string);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_new_mExecute(Sender: TObject);
    procedure Action_delete_mExecute(Sender: TObject);
    procedure Action_save_mExecute(Sender: TObject);
    procedure Action_edit_mExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ruku_new: TForm_ruku_new;

implementation

uses
  Unit_public, Unit_jiamubiao;

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

procedure TForm_ruku_new.Action_delete_mExecute(Sender: TObject);
begin
  ADOQuery_cg_mingxi.Delete;
end;

procedure TForm_ruku_new.Action_edit_mExecute(Sender: TObject);
begin
  ADOQuery_cg_mingxi.Edit;
end;

procedure TForm_ruku_new.Action_newExecute(Sender: TObject);
begin

  cxDBDateEdit1.Date := XiTong_date;
  ADOQuery_cg_zhubiao.Active := false;
  ADOQuery_cg_zhubiao.SQL.Text := 'select top 0 * from 中央采购入库主表';
  ADOQuery_cg_zhubiao.Active := true;
  ADOQuery_cg_zhubiao.Append;
  ADOQuery_cg_zhubiao.FieldByName('入库编号').AsString := AutoCreateNo('RK','采购入库');
  ADOQuery_cg_zhubiao.FieldByName('入库时间').AsDateTime := XiTong_date;
  ADOQuery_cg_zhubiao.FieldByName('经手人').AsString := G_user.UserName;
  ADOQuery_cg_zhubiao.FieldByName('员工编号').AsString := G_user.userID;
  ADOQuery_cg_zhubiao.FieldByName('状态').AsString := '0';
  ADOQuery_cg_mingxi.Active := False;
  ADOQuery_cg_mingxi.SQL.Text := 'select * from 中央采购入库明细表 where 入库编号='+
                                  QuotedStr(ADOQuery_cg_zhubiao.FieldByName('入库编号').AsString);
  ADOQuery_cg_mingxi.Active := true;
  button_zhuanti('new');
end;

procedure TForm_ruku_new.Action_new_mExecute(Sender: TObject);
begin
  Action_new_m.Enabled := false;
  Action_delete_m.Enabled := False;
  Action_save_m.Enabled := True;
  Action_edit_m.Enabled := false;
//  ADOQuery_cg_mingxi.Active := false;
//  ADOQuery_cg_mingxi.SQL.Text := 'select  * from 中央采购申请明细表 where 申请编号= '+
//                                    QuotedStr(ADOQuery_cg_zhubiao.FieldByName('申请编号').AsString);
//  ADOQuery_cg_mingxi.Active := True;
  ADOQuery_cg_mingxi.Append;
  Form_ruku_new.ADOQuery_cg_mingxi.FieldByName('入库编号').AsString := ADOQuery_cg_zhubiao.FieldByName('入库编号').AsString;
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.ShowModal;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_ruku_new.Action_saveExecute(Sender: TObject);
begin
  if ADOQuery_cg_zhubiao.Modified then
  begin
    ADOQuery_cg_zhubiao.Post;
  end;
  button_zhuanti('save');
end;

procedure TForm_ruku_new.Action_save_mExecute(Sender: TObject);
begin
  while not ADOQuery_cg_mingxi.Eof do
  begin
    if ADOQuery_cg_mingxi.FieldByName('名称').AsString = '' then
    begin
      Application.MessageBox('请填写名称', '错误', MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if ADOQuery_cg_mingxi.FieldByName('价目编号').AsString = '' then
    begin
      Application.MessageBox('请选择要入库的价目', '错误', MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if ADOQuery_cg_mingxi.FieldByName('数量').AsString = '' then
    begin
      Application.MessageBox('请填写数量', '错误', MB_OK + MB_ICONSTOP);
      Exit;
    end;
  end;
  if ADOQuery_cg_mingxi.Modified then
  begin
    ADOQuery_cg_mingxi.UpdateBatch();
  end;
  Action_new_m.Enabled := True;
  Action_delete_m.Enabled := True;
  Action_save_m.Enabled := false;
  Action_edit_m.Enabled := true;
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
     Action_new_m.Enabled := false;
     Action_delete_m.Enabled := false;
     Action_save_m.Enabled := false;
     Action_edit_m.Enabled := false;
   end else if button='edit' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_delete.Enabled := True;
     Action_close.Enabled := false;
     Action_cancel.Enabled := True;
     Action_new_m.Enabled := false;
     Action_delete_m.Enabled := false;
     Action_save_m.Enabled := false;
     Action_edit_m.Enabled := false;
   end else if button='save' then
   begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;
     Action_new_m.Enabled := True;
     Action_delete_m.Enabled := True;
     Action_save_m.Enabled := True;
     Action_edit_m.Enabled := true;
   end else if button='cancel' then
   begin
     Action_new.Enabled := True;
     Action_edit.Enabled := True;
     Action_delete.Enabled := True;
     Action_close.Enabled := True;
     Action_cancel.Enabled := False;
     Action_new_m.Enabled := false;
     Action_delete_m.Enabled := false;
     Action_save_m.Enabled := false;
     Action_edit_m.Enabled := false;

   end else if button='submit' then
   begin
     Action_new.Enabled := false;
     Action_edit.Enabled := false;
     Action_save.Enabled := false;
     Action_close.Enabled := True;
     Action_delete.Enabled := false;
     Action_submit.Enabled := true;
     Action_cancel.Enabled := False;
     Action_new_m.Enabled := false;
     Action_delete_m.Enabled := false;
     Action_edit_m.Enabled := True;
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
     Action_new_m.Enabled := false;
     Action_delete_m.Enabled := false;
     Action_edit_m.Enabled := true;
     cxgrdbclmncxGrid1DBTableView1DBColumn5.Options.Editing := false;
     cxgrdbclmncxGrid1DBTableView1DBColumn10.Options.Editing := false;
     cxDBLookupComboBox1.Properties.ReadOnly := True;
     cxDBMemo1.Properties.ReadOnly := true;
   end;
end;

end.
