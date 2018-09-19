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
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_cg_new: TForm_cg_new;

implementation

uses
  Unit_DM, Unit_public, Unit_jiamubiao;

{$R *.dfm}

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
    DataModule1.ADOQuery_L.SQL.Text :='update ÷–—Î≤…π∫…Í«Î÷˜±Ì set ◊¥Ã¨ =2 where …Í«Î±‡∫≈='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('…Í«Î±‡∫≈').AsString);
    DataModule1.ADOQuery_L.ExecSQL;
//    DataModule1.ADOQuery_L.Active := false;
//    DataModule1.ADOQuery_L.SQL.Text :='update ÷–—Î≤…π∫…Í«Î√˜œ∏±Ì set ◊¥Ã¨ =2 where …Í«Î±‡∫≈='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('…Í«Î±‡∫≈').AsString);
//    DataModule1.ADOQuery_L.ExecSQL;
    Application.MessageBox('◊˜∑œ≥…π¶£°', 'Ã· æ', MB_OK);
    Close;
  except
    Application.MessageBox('◊˜∑œ ß∞‹£°', '¥ÌŒÛ', MB_OK + MB_ICONSTOP);
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
  ADOQuery_cg_zhubiao.SQL.Text := 'select top 0 * from ÷–—Î≤…π∫…Í«Î÷˜±Ì';
  ADOQuery_cg_zhubiao.Active := true;
  ADOQuery_cg_zhubiao.Append;
  ADOQuery_cg_zhubiao.FieldByName('…Í«Î±‡∫≈').AsString := AutoCreateNo('CG','≤…π∫…Í«Î');
  ADOQuery_cg_zhubiao.FieldByName('…Í«Î»’∆⁄').AsDateTime := XiTong_date;
  ADOQuery_cg_zhubiao.FieldByName('…Í«Î»À').AsString := G_user.UserName;
  ADOQuery_cg_zhubiao.FieldByName('‘±π§±‡∫≈').AsString := G_user.userID;
  ADOQuery_cg_zhubiao.FieldByName('◊¥Ã¨').AsString := '0';
  ADOQuery_cg_mingxi.Active := False;
  ADOQuery_cg_mingxi.SQL.Text := 'select * from ÷–—Î≤…π∫…Í«Î√˜œ∏±Ì where …Í«Î±‡∫≈='+
                                  QuotedStr(ADOQuery_cg_zhubiao.FieldByName('…Í«Î±‡∫≈').AsString);
  ADOQuery_cg_mingxi.Active := true;

end;

procedure TForm_cg_new.Action_new_mExecute(Sender: TObject);
begin
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.laiyuan := '≤…π∫';
    Form_jiamubiao.ShowModal;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_cg_new.Action_saveExecute(Sender: TObject);
begin
  if ADOQuery_cg_zhubiao.Modified then
  begin
    ADOQuery_cg_zhubiao.UpdateBatch();
    ADOQuery_cg_mingxi.UpdateBatch();
  end;
  button_zhuanti('save');
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
  try
    DataModule1.ADOQuery_L.Active := false;
    DataModule1.ADOQuery_L.sql.text :='update ÷–—Î≤…π∫…Í«Î÷˜±Ì set ◊¥Ã¨ =1 where …Í«Î±‡∫≈='+ QuotedStr(ADOQuery_cg_zhubiao.FieldByName('…Í«Î±‡∫≈').AsString);
    DataModule1.ADOQuery_L.ExecSQL;
    Application.MessageBox('Ã·Ωª≥…π¶£°', 'Ã· æ', MB_OK);
    Close;
  except
    Application.MessageBox('Ã·Ωª ß∞‹£°', '¥ÌŒÛ', MB_OK + MB_ICONSTOP);
    exit;
  end;

end;

procedure TForm_cg_new.button_zhuanti(button: string);
begin
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
   end;
end;

procedure TForm_cg_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ADOQuery_cg_zhubiao.Modified then
  ADOQuery_cg_zhubiao.Cancel;
end;

procedure TForm_cg_new.FormShow(Sender: TObject);
begin
  ADOQuery_list.Active := True;
end;

end.
