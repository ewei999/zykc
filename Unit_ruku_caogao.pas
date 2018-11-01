unit Unit_ruku_caogao;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxGroupBox, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls, dxGDIPlusClasses, IdMailBox,
  Data.Win.ADODB,DateUtils, cxDBLookupComboBox, cxCheckBox, dxSkinBlue;

type
  TForm_ruku_caogao = class(TForm)
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_close: TAction;
    Action_cancel: TAction;
    Action_save: TAction;
    Action_submit: TAction;
    cxGroupBox1: TcxGroupBox;
    Splitter1: TSplitter;
    cxGrid6: TcxGrid;
    cxGrid6DBTableView1: TcxGridDBTableView;
    cxgrdbclmncxGrid6DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid6DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid6Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    Image2: TImage;
    cxLabel10: TcxLabel;
    cxLabel7: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxButton14: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton9: TcxButton;
    ADOQuery_ruku_zhubiao: TADOQuery;
    DataSource_ruku_zhubiao: TDataSource;
    qry_ruku_mingxi: TADOQuery;
    DataSource_ruku_mignxi: TDataSource;
    cxgrdbclmncxGrid7DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn13: TcxGridDBColumn;
    DataSource_gys_list: TDataSource;
    qry_gys_list: TADOQuery;
    cxButton1: TcxButton;
    cxgrdbclmncxGrid6DBTableView1Column1: TcxGridDBColumn;
    cxButton2: TcxButton;
    ADOQuery_ruku_zhubiao���: TAutoIncField;
    ADOQuery_ruku_zhubiao�����: TWideStringField;
    ADOQuery_ruku_zhubiao��Ӧ��: TWideStringField;
    ADOQuery_ruku_zhubiao���ʱ��: TDateTimeField;
    ADOQuery_ruku_zhubiao�������: TWideStringField;
    bcdfldADOQuery_ruku_zhubiao���: TBCDField;
    bcdfldADOQuery_ruku_zhubiao����: TBCDField;
    bcdfldADOQuery_ruku_zhubiao�ϼƽ��: TBCDField;
    ADOQuery_ruku_zhubiao������ʽ: TWideStringField;
    ADOQuery_ruku_zhubiao��ע: TWideStringField;
    ADOQuery_ruku_zhubiao������: TWideStringField;
    ADOQuery_ruku_zhubiaoԱ�����: TWideStringField;
    ADOQuery_ruku_zhubiao״̬: TIntegerField;
    ADOQuery_ruku_zhubiao�����: TWideStringField;
    ADOQuery_ruku_zhubiao���ʱ��: TWideStringField;
    ADOQuery_ruku_zhubiaoѡ��: TBooleanField;
    qry_ruku_mingxi���: TAutoIncField;
    qry_ruku_mingxi�����: TWideStringField;
    qry_ruku_mingxi�����ϸ���: TWideStringField;
    qry_ruku_mingxi�������: TWideStringField;
    qry_ruku_mingxi���ʱ��: TDateTimeField;
    qry_ruku_mingxi����: TWideStringField;
    qry_ruku_mingxi��Ŀ���: TWideStringField;
    qry_ruku_mingxi���: TWideStringField;
    qry_ruku_mingxi��λ: TWideStringField;
    qry_ruku_mingxi����: TIntegerField;
    bcdfldqry_ruku_mingxi��������: TBCDField;
    bcdfldqry_ruku_mingxi���: TBCDField;
    qry_ruku_mingxi���: TWideStringField;
    qry_ruku_mingxiС��: TWideStringField;
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_newExecute(Sender: TObject);
    procedure cxGrid6DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure find;
    procedure cxButton14Click(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_submitExecute(Sender: TObject);
    procedure cxgrdbclmncxGrid6DBTableView1Column1HeaderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ruku_caogao: TForm_ruku_caogao;
  xuanze : Boolean;

implementation

uses
  Unit_ruku_new, Unit_public, Unit_DM;

{$R *.dfm}

procedure TForm_ruku_caogao.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_ruku_caogao.Action_deleteExecute(Sender: TObject);
begin
  Form_ruku_new := TForm_ruku_new.Create(nil);
  try
    Form_ruku_new.edit('delete');
    Form_ruku_new.button_zhuanti('delete');
    Form_ruku_new.ShowModal;
  finally
    FreeAndNil(Form_ruku_new);
  end;
  ADOQuery_ruku_zhubiao.Requery();
  qry_ruku_mingxi.Requery();
end;

procedure TForm_ruku_caogao.Action_editExecute(Sender: TObject);
begin
  if cxGrid6DBTableView1.DataController.Controller.SelectedRecordCount =1 then
  begin
    Form_ruku_new := TForm_ruku_new.Create(nil);
    try
      with Form_ruku_new do
      begin
        edit('edit');
        Form_ruku_new.button_zhuanti('edit');
      end;
      Form_ruku_new.ShowModal;
    finally
      FreeAndNil(form_ruku_new);
    end;
  end;

end;

procedure TForm_ruku_caogao.Action_newExecute(Sender: TObject);
begin
  Form_ruku_new := TForm_ruku_new.Create(nil);
  try

    Form_ruku_new.Action_newExecute(Sender);

    Form_ruku_new.ShowModal;
  finally
    FreeAndNil(Form_ruku_new);
  end;
  ADOQuery_ruku_zhubiao.Requery();
  qry_ruku_mingxi.Requery();
end;

procedure TForm_ruku_caogao.Action_submitExecute(Sender: TObject);
begin
  ADOQuery_ruku_zhubiao.DisableControls;
  try
    ADOQuery_ruku_zhubiao.First;
    while not ADOQuery_ruku_zhubiao.Eof do
    begin
      if ADOQuery_ruku_zhubiao.FieldByName('ѡ��').AsBoolean = true then
      begin
        DataModule1.ADOQuery_L.Active := false;
        DataModule1.ADOQuery_L.SQL.Text := 'update ����ɹ�������� set ״̬=1 where �����='+
                                            QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
        DataModule1.ADOQuery_L.ExecSQL;
      end;
      ADOQuery_ruku_zhubiao.Next;
    end;
  finally
     ADOQuery_ruku_zhubiao.EnableControls;
  end;
  ADOQuery_ruku_zhubiao.Requery();
  qry_ruku_mingxi.Requery();

end;

procedure TForm_ruku_caogao.cxButton14Click(Sender: TObject);
begin
  find;
end;

procedure TForm_ruku_caogao.cxgrdbclmncxGrid6DBTableView1Column1HeaderClick(
  Sender: TObject);
var i :Integer;
begin

  if xuanze=false then
  begin
    ADOQuery_ruku_zhubiao.DisableControls;
    ADOQuery_ruku_zhubiao.First;

    try
      for I := 0 to ADOQuery_ruku_zhubiao.RecordCount-1 do
      begin
        ADOQuery_ruku_zhubiao.Edit;
        ADOQuery_ruku_zhubiao.FieldByName('ѡ��').AsBoolean := true;
        ADOQuery_ruku_zhubiao.Next;
      end;
    finally
      ADOQuery_ruku_zhubiao.EnableControls;
      xuanze := True;

    end;
  end else
  begin
    ADOQuery_ruku_zhubiao.DisableControls;
    ADOQuery_ruku_zhubiao.First;

    try
      for I := 0 to ADOQuery_ruku_zhubiao.RecordCount-1 do
      begin
        ADOQuery_ruku_zhubiao.Edit;
        ADOQuery_ruku_zhubiao.FieldByName('ѡ��').AsBoolean := false;
        ADOQuery_ruku_zhubiao.Next;
      end;
    finally
      ADOQuery_ruku_zhubiao.EnableControls;
      xuanze := false;

    end;
  end;



end;

procedure TForm_ruku_caogao.cxGrid6DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  qry_ruku_mingxi.Active := false;
  qry_ruku_mingxi.SQL.Text := 'select * from ����ɹ������ϸ�� where �����='+
                                QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
  qry_ruku_mingxi.Active := True;
end;

procedure TForm_ruku_caogao.find;
var
  str :string;

begin

  if cxDateEdit5.Text <> '' then
    str := ' and ���ʱ�� >='+ QuotedStr(cxDateEdit5.Text);
  if cxDateEdit6.Text<> '' then
    str := ' and ���ʱ�� <='+ QuotedStr(cxDateEdit6.Text);
  ADOQuery_ruku_zhubiao.Active := false;
  ADOQuery_ruku_zhubiao.SQL.Text := 'select * from ����ɹ�������� where ״̬=0 '+str+' order by ��� desc';
  ADOQuery_ruku_zhubiao.Active := True;
  qry_ruku_mingxi.Active := false;
  qry_ruku_mingxi.SQL.Text := 'select * from ����ɹ������ϸ�� where �����='+ QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
  qry_ruku_mingxi.Active := True;

end;


procedure TForm_ruku_caogao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADOQuery_ruku_zhubiao.CancelBatch();
end;

procedure TForm_ruku_caogao.FormShow(Sender: TObject);
begin
  cxDateEdit5.Date := IncMonth(date,-1);
  find;
  qry_gys_list.Active := True;
  xuanze := false;
end;

end.
