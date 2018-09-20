unit Unit_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxStatusBar, dxRibbonStatusBar, dxSkinsdxNavBarPainter, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, dxNavBar, dxNavBarCollns, cxClasses, dxNavBarBase,
  Vcl.ExtCtrls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons,System.DateUtils, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Data.Win.ADODB,Unit_caigou_shenqing_new, cxCheckBox,Unit_fuhuo,
  cxDBLookupComboBox, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit,Unit_FuHuoDan, cxGroupBox,unit_KaiPiao,Unit_KuCunJilu;

type
  TForm_main = class(TForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxNavBar1: TdxNavBar;
    cxPageControl_main: TcxPageControl;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    cxTabSheet1: TcxTabSheet;
    pnl1: TPanel;
    cxLabel1: TcxLabel;
    cxDate_th_qishi: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxDate_th_zhongzhi: TcxDateEdit;
    cxButton1: TcxButton;
    ds_thshenqing: TDataSource;
    qry_thshenqing: TADOQuery;
    cxButton2: TcxButton;
    cxPage_tihuoshenqing: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn16: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn17: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn18: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qry_thshenqing_mx: TADOQuery;
    ds_thshenqing_mx: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    cxTabSheet4: TcxTabSheet;
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    qry_caigou_hz: TADOQuery;
    DataSource_caigou_hz: TDataSource;
    DataSource_cg_mingxi: TDataSource;
    qry_cg_mingxi: TADOQuery;
    cxgrdbclmncxGridDBTableView3DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn13: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxgrdbclmncxGridDBTableView2Column1: TcxGridDBColumn;
    qry_gys_list: TADOQuery;
    DataSource_gys_list: TDataSource;
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_close: TAction;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    Action_submit: TAction;
    dxNavBar1Item6: TdxNavBarItem;
    cxTabSheet7: TcxTabSheet;
    pnl2: TPanel;
    cxlbl1: TcxLabel;
    cxDate_FH_qishi: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxDate_FH_zhongzhi: TcxDateEdit;
    cxButton8: TcxButton;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    cxlbl3: TcxLabel;
    cxLookup_FH_fenyuan: TcxLookupComboBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    ds_fuhuo_jilu: TDataSource;
    qry_fuhuo_jilu: TADOQuery;
    cxlbl4: TcxLabel;
    cxCombo_FH_Zhuangtai: TcxComboBox;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxTabSheet8: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel7: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxButton14: TcxButton;
    ADOQuery_ruku_zhubiao: TADOQuery;
    DataSource_ruku_zhubiao: TDataSource;
    ADOQuery_ruku_mingxi: TADOQuery;
    DataSource_ruku_mingxi: TDataSource;
    Action_ruku_new: TAction;
    dxNavBar1Item7: TdxNavBarItem;
    dxNavBar1Group4: TdxNavBarGroup;
    dxNavBar1Item8: TdxNavBarItem;
    cxTabSheet9: TcxTabSheet;
    pnl3: TPanel;
    cxlbl5: TcxLabel;
    cxDate_TuiH_qishi: TcxDateEdit;
    cxlbl6: TcxLabel;
    cxDate_TuiH_zhongzhi: TcxDateEdit;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxPage_TuiHuo: TcxPageControl;
    cxTabSheet10: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet11: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    ds_Tuihuo: TDataSource;
    qry_Tuihuo: TADOQuery;
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
    cxgrdbclmncxGrid7DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGrid7DBTableView1DBColumn11: TcxGridDBColumn;
    cxGrid7Level1: TcxGridLevel;
    cxLabel10: TcxLabel;
    cxLabel9: TcxLabel;
    cxButton16: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxLabel3: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxButton4: TcxButton;
    cxButton9: TcxButton;
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
    ADOQuery_ruku_mingxi���: TAutoIncField;
    ADOQuery_ruku_mingxi�����: TWideStringField;
    ADOQuery_ruku_mingxi�����ϸ���: TWideStringField;
    ADOQuery_ruku_mingxi�������: TWideStringField;
    ADOQuery_ruku_mingxi���ʱ��: TDateTimeField;
    ADOQuery_ruku_mingxi����: TWideStringField;
    ADOQuery_ruku_mingxi��Ŀ���: TWideStringField;
    ADOQuery_ruku_mingxi���: TWideStringField;
    ADOQuery_ruku_mingxi��λ: TWideStringField;
    ADOQuery_ruku_mingxi����: TIntegerField;
    bcdfldADOQuery_ruku_mingxi��������: TBCDField;
    bcdfldADOQuery_ruku_mingxi���: TBCDField;
    ADOQuery_ruku_mingxi���: TWideStringField;
    ADOQuery_ruku_mingxiС��: TWideStringField;
    dxNavBar1Item9: TdxNavBarItem;
    cxTabSheet12: TcxTabSheet;
    pnl4: TPanel;
    cxButton21: TcxButton;
    cxButton13: TcxButton;
    cxGrid10: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    qry_CaiGou_ShenPi: TADOQuery;
    ds_CaiGou_ShenPi: TDataSource;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    dxNavBar1Item10: TdxNavBarItem;
    cxTabSheet13: TcxTabSheet;
    pnl5: TPanel;
    cxlbl7: TcxLabel;
    cxDate_KuCun_Qishi: TcxDateEdit;
    cxlbl8: TcxLabel;
    cxDate_KuCun_Zhongzhi: TcxDateEdit;
    cxButton15: TcxButton;
    cxTextEdit37: TcxTextEdit;
    cxlbl9: TcxLabel;
    cxGrid11: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    qry_kucun: TADOQuery;
    ds_kucun: TDataSource;
    cxGridDBTableView8Column1: TcxGridDBColumn;
    cxGridDBTableView8Column2: TcxGridDBColumn;
    cxGridDBTableView8Column3: TcxGridDBColumn;
    cxGridDBTableView8Column4: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure dxNavBar1Group2Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Action_newExecute(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure cxGridDBTableView4CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_submitExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure caigou_shenqing;
    procedure ruku_caigao;
    procedure dxNavBar1Item5Click(Sender: TObject);
    procedure cxGrid6DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Action_ruku_newExecute(Sender: TObject);
    procedure dxNavBar1Item7Click(Sender: TObject);
    procedure dxNavBar1Item8Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxNavBar1Item9Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxGridDBTableView7CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxNavBar1Item10Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxGridDBTableView8CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    rktjstr,cktjstr:string;
  public
    { Public declarations }
  end;

var
  Form_main: TForm_main;

implementation
  uses Unit_DM,Unit_public , Unit_cg_new, Unit_ruku_new, Unit_ruku_caogao;
{$R *.dfm}

procedure TForm_main.Action_deleteExecute(Sender: TObject);
begin
  if cxGridDBTableView2.DataController.Controller.SelectedRecordCount=1 then
  begin
    if (qry_caigou_hz.FieldByName('״̬').AsString= '0') or (qry_caigou_hz.FieldByName('״̬').AsString= '4') then
    begin
      Form_cg_new := TForm_cg_new.Create(nil);
      try
        Form_cg_new.button_zhuanti('delete');
        Form_cg_new.Action_new_m.Enabled := false;
        Form_cg_new.Action_delete_m.Enabled := False;
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                      ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;
        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from ����ɹ�������ϸ��'+
                                                      ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
        Form_cg_new.ADOQuery_cg_mingxi.Active := True;
        Form_cg_new.ShowModal;
        if Form_cg_new.baocun then
        begin
          qry_cg_mingxi.Requery();
          qry_caigou_hz.Requery();
        end;
      finally
        Form_cg_new.Free;
      end;
    end;
  end;

end;

procedure TForm_main.Action_editExecute(Sender: TObject);
begin
  if cxGridDBTableView2.DataController.Controller.SelectedRecordCount=1 then
  begin
    if (qry_caigou_hz.FieldByName('״̬').AsString= '0') or (qry_caigou_hz.FieldByName('״̬').AsString= '4') then
    begin
      Form_cg_new := TForm_cg_new.Create(nil);
      try
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                      ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;

        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from ����ɹ�������ϸ��'+
                                                      ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
        Form_cg_new.ADOQuery_cg_mingxi.Active := True;

        Form_cg_new.button_zhuanti('edit');
        Form_cg_new.Action_new_m.Enabled := true;
        Form_cg_new.Action_delete_m.Enabled := true;

        Form_cg_new.ShowModal;
        if Form_cg_new.baocun then
        begin
          qry_cg_mingxi.Requery();
          qry_caigou_hz.Requery();
        end;
      finally
        FreeAndNil(form_cg_new);
      end;
    end else
    begin
      Application.MessageBox('ֻ�вݸ�״̬�Ĳɹ���������޸ģ�', '��ʾ', MB_OK);
      exit;
    end;

  end;

end;

procedure TForm_main.Action_newExecute(Sender: TObject);
begin
  Form_cg_new := TForm_cg_new.Create(nil);
  try
    Form_cg_new.Action_newExecute(Sender);
    Form_cg_new.button_zhuanti('new');
    Form_cg_new.ShowModal;
    if Form_cg_new.baocun then
    begin
      qry_cg_mingxi.Requery();
      qry_caigou_hz.Requery();
    end;
  finally
    FreeAndNil(Form_cg_new);
  end;
end;

procedure TForm_main.Action_ruku_newExecute(Sender: TObject);
begin
  Form_ruku_caogao := TForm_ruku_caogao.Create(nil);
  try
    Form_ruku_caogao.ShowModal;
  finally
    FreeAndNil(form_ruku_caogao);
  end;
//  Form_ruku_new := TForm_ruku_new.Create(nil);
//  try
//    Form_ruku_new.ShowModal;
//  finally
//    FreeAndNil(Form_ruku_new);
//  end;
  ADOQuery_ruku_zhubiao.Requery();
  ADOQuery_ruku_mingxi.Requery();
end;

procedure TForm_main.Action_submitExecute(Sender: TObject);
begin
  if (qry_caigou_hz.FieldByName('״̬').AsString= '0') or (qry_caigou_hz.FieldByName('״̬').AsString= '4') then
  begin
    Form_cg_new := TForm_cg_new.Create(nil);
    try
      Form_cg_new.Action_new_m.Enabled := false;
      Form_cg_new.Action_delete_m.Enabled := False;
      Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
      Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                    ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
      Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
      Form_cg_new.ADOQuery_cg_zhubiao.Edit;

      Form_cg_new.ADOQuery_cg_mingxi.Active := false;
      Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from ����ɹ�������ϸ��'+
                                                    ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
      Form_cg_new.ADOQuery_cg_mingxi.Active := True;
      Form_cg_new.button_zhuanti('submit');
      Form_cg_new.ShowModal;
      if Form_cg_new.baocun then
      begin
        qry_cg_mingxi.Requery();
        qry_caigou_hz.Requery();
      end;
    finally
      FreeAndNil(form_cg_new);
    end;
  end;

end;

procedure TForm_main.caigou_shenqing;
var
  str :string;
begin
  if cxDateEdit2.Text <> '' then
  begin
    if cxDateEdit1.Date > cxDateEdit2.Date then
    Application.MessageBox('����ѡ����ȷ��', '��ʾ', MB_OK);
    Exit;
  end;

  qry_caigou_hz.Active := false;
  qry_caigou_hz.SQL.Text := 'select *, '+
    ' zt=(case ״̬ when 0 then ''�ݸ�'' when 1 then ''���ύ'' when 3 then ''�������'' when 4 then ''�˻�'' end ), '+
    ' ������=isnull((select sum(isnull(����,0)) from ����ɹ�������ϸ�� where ������=a.������),0) '+
    ' from ( select * from ����ɹ��������� where ״̬ <>2 and �������� >= '+QuotedStr(cxDateEdit1.Text)+''+
    ' )a order by ��� desc';
  qry_cg_mingxi.Active := false;
  qry_cg_mingxi.SQL.Text := 'select a.*,b.��������,b.������,b.״̬ as ����״̬,������,b.��Ӧ�� as ��Ӧ�̱�� from ����ɹ�������ϸ�� a '+
                          '  left outer join                             '     +
                          '  ����ɹ��������� b  '+
                          '  on a.������=b.������ where  �������� >= '+
                          QuotedStr(cxDateEdit1.Text)+' order by ��� desc';
  if cxDateEdit2.Text <> '' then
  begin
    str := cxDateEdit2.Text;
    qry_caigou_hz.SQL.Text := qry_caigou_hz.SQL.Text +' and �������� <='+ QuotedStr(str) ;
    qry_cg_mingxi.SQL.Text := qry_cg_mingxi.SQL.Text + ' and �������� <='+ QuotedStr(str) ;
  end;
  qry_caigou_hz.Active := True;
  qry_cg_mingxi.Active := True;
end;

procedure TForm_main.cxButton13Click(Sender: TObject);
begin
  //����
  qry_CaiGou_ShenPi.Close;
  qry_CaiGou_ShenPi.SQL.Text:='select *, '+
    ' zt=(case ״̬ when 0 then ''�ݸ�'' when 1 then ''���ύ'' when 3 then ''�������'' when 4 then ''�˻�'' end ), '+
    ' ������=isnull((select sum(isnull(����,0)) from ����ɹ�������ϸ�� where ������=a.������),0) '+
    ' from ( select * from ����ɹ��������� where ״̬ <>0 and ״̬<>2 '+
    ' and ������ in (select ������ from ������������� where isnull(״̬,'''')<>'''' '+
    ' and isnull(���,'''')='''' and ������='+QuotedStr(g_user.UserName)+'  ) '+
    ' )a order by ��������';
  qry_CaiGou_ShenPi.Open;
end;

procedure TForm_main.cxButton14Click(Sender: TObject);
begin
  ruku_caigao;
end;

procedure TForm_main.cxButton15Click(Sender: TObject);
var
  sjdstr,mctj:string;
begin
  sjdstr:='';
  rktjstr:='';
  cktjstr:='';
  mctj:='';
  if cxDate_KuCun_Qishi.Text<>'' then
  begin
    rktjstr:=rktjstr+' and ���ʱ��>='+QuotedStr(cxDate_KuCun_Qishi.Text)+' ';
    cktjstr:=cktjstr+' and ����ʱ��>='+QuotedStr(cxDate_KuCun_Qishi.Text)+' ';
  end;
  if cxDate_KuCun_Zhongzhi.Text<>'' then
  begin
    rktjstr:=rktjstr+' and ���ʱ��<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+' ';
    cktjstr:=cktjstr+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+' ';
  end;
  if Trim(cxTextEdit37.Text)<>'' then
    mctj:=mctj+'  and ��Ŀ��� in (select ��Ŀ��� from ҩƷ��Ʒ��Ŀ�� where ���� like ''%'+Trim(cxTextEdit37.Text)+'%'' or ԭ���� like ''%'+Trim(cxTextEdit37.Text)+'%'' )';

  if rktjstr='' then
  begin
    sjdstr:=' ʱ������=0,ʱ��γ���=0,';
  end
  else
  begin
    sjdstr:=' ʱ������=isnull((select sum(isnull(����,0)) from ����ɹ������ϸ�� where ����� in (select ����� from ����ɹ�������� '+
      '	where ״̬=1 '+rktjstr+' ) and ��Ŀ���=a.��Ŀ��� ),0), '+
      ' ʱ��γ���=isnull((select sum(��������) from ������_����� where ״̬=2  and �Ƿ�����=0 '+cktjstr+' and ��Ŀ���=a.��Ŀ���) ,0),';
  end;

  qry_kucun.Close;
  qry_kucun.SQL.Text:='select *,���=�������-�������� from ( select a.*, '+
    ' ��������=isnull((select sum(��������) from ������_����� where ״̬=2  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ���) ,0), '+ sjdstr+
    ' b.����,b.���,b.��λ,b.���,b.С��,b.ԭ���� '+
    ' from ( select ��Ŀ���,sum(isnull(����,0)) as ������� from ����ɹ������ϸ�� '+
    ' where ����� in (select ����� from ����ɹ�������� where ״̬=1) '+mctj+' group by ��Ŀ��� '+
    ' )a left join ҩƷ��Ʒ��Ŀ�� b on a.��Ŀ���=b.��Ŀ��� )c order by ����';
  qry_kucun.Open;
end;

procedure TForm_main.cxButton19Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_TuiH_qishi.Text<>'' then
    tjstr:=tjstr+' and ��������>='+QuotedStr(cxDate_TuiH_qishi.Text)+'';
  if cxDate_TuiH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and ��������<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+'';

  qry_Tuihuo.Close;
  qry_Tuihuo.SQL.Text:='select *, ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ) ,'+
    ' ��������=(select sum(����) from ���������ϸ�� where ������=a.������ ) ,'+
    ' �Ѹ�������=isnull((select sum(����) from ���������ϸ�� where ������=a.������ and ״̬=2 ),0) , '+
    ' ����������=isnull((select sum(����) from ���������ϸ�� where ������=a.������ and ״̬=3 ),0)  '+
    ' from ( select * from ����������� where �Ƿ�����=0 and ״̬=2 and ���=2 '+tjstr+' )a order by ��������';
  qry_Tuihuo.Open;

  cxTabSheet10.Show;
end;

procedure TForm_main.cxButton1Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and ��������>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and ��������<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';

  qry_thshenqing.Close;
  qry_thshenqing.SQL.Text:='select *, ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ) ,'+
    ' ��������=(select sum(����) from ���������ϸ�� where ������=a.������ ) ,'+
    ' �Ѹ�������=isnull((select sum(����) from ���������ϸ�� where ������=a.������ and ״̬=2 ),0) , '+
    ' ����������=isnull((select sum(����) from ���������ϸ�� where ������=a.������ and ״̬=3 ),0)  '+
    ' from ( select * from ����������� where �Ƿ�����=0 and ״̬=2 and ���=1 '+tjstr+' )a order by ��������';
  qry_thshenqing.Open;

  cxTabSheet2.Show;
end;

procedure TForm_main.cxButton21Click(Sender: TObject);
begin
  //����
  qry_CaiGou_ShenPi.Close;
  qry_CaiGou_ShenPi.SQL.Text:='select *, '+
    ' zt=(case ״̬ when 0 then ''�ݸ�'' when 1 then ''���ύ'' when 3 then ''�������'' when 4 then ''�˻�'' end ), '+
    ' ������=isnull((select sum(isnull(����,0)) from ����ɹ�������ϸ�� where ������=a.������),0) '+
    ' from ( select * from ����ɹ��������� where ״̬ <>0 and ״̬<>2 '+
    ' and ������ in (select ������ from ������������� where isnull(״̬,'''')<>'''' '+
    ' and isnull(���,'''')<>'''' and ������='+QuotedStr(g_user.UserName)+'  ) '+
    ' )a order by ��������';
  qry_CaiGou_ShenPi.Open;
end;

procedure TForm_main.cxButton2Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and ��������>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and ��������<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select * from ( select *,'+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=(select top 1 �ֵ���� from ����������� '+
    ' 	where  ������=a.������) ) , '+
    ' ��������=(select top 1 �������� from ����������� where ������=a.������),'+
    ' mc=(case when isnull(ԭ����,'''')='''' then ���� else ԭ���� end),'+
    ' ������=(select top 1 ������ from ����������� where ������=a.������) ,'+
    ' zt=(case when ״̬=1 then ''δ����'' when ״̬=2 then ''�Ѹ���'' when ״̬=3 then ������ԭ�� end) '+
    ' from ( select * from ���������ϸ�� '+
    ' where ������ in (select ������ from  ����������� where �Ƿ�����=0 and ״̬=2 and ���=1  '+tjstr+') '+
    ' )a)b order by ��������';
  qry_thshenqing_mx.Open;

  cxTabSheet3.Show;
end;

procedure TForm_main.cxButton4Click(Sender: TObject);
begin
  caigou_shenqing;
end;

procedure TForm_main.cxButton8Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if (cxLookup_FH_fenyuan.Text<>'') and (cxLookup_FH_fenyuan.Text<>'ȫ��') then
    tjstr:=tjstr+' and �ֵ����='+QuotedStr(cxLookup_FH_fenyuan.EditValue)+'';
  if cxDate_FH_qishi.Text<>'' then
    tjstr:=tjstr+' and ����ʱ��>='+QuotedStr(cxDate_FH_qishi.Text)+'';
  if cxDate_FH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDate_FH_zhongzhi.date,1)))+'';
  if cxCombo_FH_Zhuangtai.Text='������' then
    tjstr:=tjstr+' and ״̬=1 ';
  if cxCombo_FH_Zhuangtai.Text='���ճɹ�' then
    tjstr:=tjstr+' and ״̬=2 ';
  if cxCombo_FH_Zhuangtai.Text='�ܾ�����' then
    tjstr:=tjstr+' and ״̬=3 ';

  qry_fuhuo_jilu.Close;
  qry_fuhuo_jilu.SQL.Text:='select *,zt=(case ״̬ when 1 then ''������'' when 2 then ''���ճɹ�'' when 3 then ''�ܾ�����'' end),'+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=b.�ֵ���� )'+
    ' from ( select *,'+
    ' ����ʱ��=(select top 1 ����ʱ�� from ������_����� where ������=a.������) ,'+
    ' ����=(select top 1 sum(��������) from ������_����� where ������=a.������) ,'+
    ' ���=(select top 1 sum(������) from ������_����� where ������=a.������),'+
    ' �ŵ������=(select top 1 �ŵ������ from ������_����� where ������=a.������) ,'+
    ' �ŵ����ʱ��=(select top 1 �ŵ����ʱ�� from ������_����� where ������=a.������),'+
    ' ״̬=(select top 1 ״̬ from ������_����� where ������=a.������), '+
    ' �ֵ����=(select top 1 �ֵ���� from ������_����� where ������=a.������)'+
    ' from ( select ������ from ������_����� where �Ƿ�����=0 '+tjstr+
    ' group by ������ )a)b order by ����ʱ��';
  qry_fuhuo_jilu.Open;
end;

procedure TForm_main.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_thshenqing.FieldByName('������').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGrid6DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ADOQuery_ruku_mingxi.Active := false;
  ADOQuery_ruku_mingxi.SQL.Text := 'select * from ����ɹ������ϸ�� where �����='+
                                     QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
  ADOQuery_ruku_mingxi.Active := True;
end;

procedure TForm_main.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_thshenqing_mx.FieldByName('������').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_cg_new := TForm_cg_new.Create(nil);
  try
    Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
    Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                  ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
    Form_cg_new.ADOQuery_cg_zhubiao.Active := True;

    Form_cg_new.ADOQuery_cg_mingxi.Active := false;
    Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from ����ɹ�������ϸ��'+
                                                  ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
    Form_cg_new.ADOQuery_cg_mingxi.Active := True;
    Form_cg_new.button_zhuanti('chakan');
    Form_cg_new.ShowModal;
  finally
    FreeAndNil(form_cg_new);
  end;
end;

procedure TForm_main.cxGridDBTableView4CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_FuHuoDan := TForm_FuHuoDan.Create(nil);
  try
    Form_FuHuoDan.CKBianhao:=qry_fuhuo_jilu.FieldByName('������').AsString;
    Form_FuHuoDan.ShowModal;
  finally
    FreeAndNil(Form_FuHuoDan);
  end;
end;

procedure TForm_main.cxGridDBTableView7CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_cg_new := TForm_cg_new.Create(nil);
  try
    Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
    Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                  ' where ������='+QuotedStr(qry_CaiGou_ShenPi.FieldByName('������').AsString);
    Form_cg_new.ADOQuery_cg_zhubiao.Active := True;

    Form_cg_new.ADOQuery_cg_mingxi.Active := false;
    Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from ����ɹ�������ϸ��'+
                                                  ' where ������='+QuotedStr(qry_CaiGou_ShenPi.FieldByName('������').AsString);
    Form_cg_new.ADOQuery_cg_mingxi.Active := True;

    Form_cg_new.button_zhuanti('chakan');
    Form_cg_new.ShowModal;
    if  Form_cg_new.baocun then
    begin
      qry_CaiGou_ShenPi.Requery();
      if qry_caigou_hz.Active then
        qry_caigou_hz.Requery();
    end;
  finally
    FreeAndNil(form_cg_new);
  end;
end;

procedure TForm_main.cxGridDBTableView8CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  sqlstr:string;
begin
  if (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '�������')
  or (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = 'ʱ������')  then
  begin
    sqlstr:= 'select * , '+
      ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=(select top 1 ��Ӧ�� from ����ɹ�������� where �����=a.����� )) '+
      ' from ( select * '+
      ' from ����ɹ������ϸ�� where ��Ŀ���='+QuotedStr(qry_kucun.FieldByName('��Ŀ���').AsString)+' '+
      ' and ����� in (select ����� from ����ɹ�������� where ״̬=1 :tj ) )a '+
      ' order by ���ʱ��';

    if  (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = 'ʱ������')  then
      sqlstr:=StringReplace(sqlstr,':tj',rktjstr,[rfReplaceAll])
    else
      sqlstr:=StringReplace(sqlstr,':tj','',[rfReplaceAll]);

    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='���';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:=sqlstr;
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;
  if (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '��������')
  or (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = 'ʱ��γ���')  then
  begin
    sqlstr:= 'select * , '+
      ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��), '+
      ' �ֵ�=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����), '+
      ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� ),'+
      ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� )'+
      ' from ( select * from ������_����� '+
      ' where ״̬=2 and �Ƿ�����=0 :tj and ��Ŀ���='+QuotedStr(qry_kucun.FieldByName('��Ŀ���').AsString)+' )a order by ����ʱ��';

    if  (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = 'ʱ��γ���')  then
      sqlstr:=StringReplace(sqlstr,':tj',cktjstr,[rfReplaceAll])
    else
      sqlstr:=StringReplace(sqlstr,':tj','',[rfReplaceAll]);

    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='����';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:= sqlstr;
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;
end;

procedure TForm_main.dxNavBar1Group2Click(Sender: TObject);
var
  str   :string;
begin
  cxTabSheet4.Show;
  qry_gys_list.Open;
  cxDateEdit1.Date := IncMonth(date,-1);
  caigou_shenqing;
//  qry_caigou_hz.Active := false;
//  qry_caigou_hz.SQL.Text := 'select * from ����ɹ��������� where ״̬<>2 and  �������� >= '+QuotedStr(cxDateEdit1.Text)+
//                            ' order by ��� desc';
//  qry_cg_mingxi.Active := false;
//  qry_cg_mingxi.SQL.Text := 'select a.*,b.��������,b.������,b.״̬ as ����״̬,������,b.��Ӧ�� as ��Ӧ�̱�� from ����ɹ�������ϸ�� a '+
//                          '  left outer join                             '     +
//                          '  ����ɹ��������� b  '+
//                          '  on a.������=b.������ where  �������� >= '+
//                          QuotedStr(cxDateEdit1.Text)+' order by ��� desc';
//  if cxDateEdit2.Text <> '' then
//  begin
//    str := cxDateEdit2.Text;
//    qry_caigou_hz.SQL.Text := qry_caigou_hz.SQL.Text +' and �������� <='+ QuotedStr(str) ;
//    qry_cg_mingxi.SQL.Text := qry_cg_mingxi.SQL.Text + ' and �������� <='+ QuotedStr(str) ;
//  end;
//  qry_caigou_hz.Active := True;
//  qry_cg_mingxi.Active := True;

end;

procedure TForm_main.dxNavBar1Item10Click(Sender: TObject);
begin
  cxTabSheet13.Show;
end;

procedure TForm_main.dxNavBar1Item1Click(Sender: TObject);
begin
  cxTabSheet1.Show;
  cxTabSheet2.Show;
end;

procedure TForm_main.dxNavBar1Item2Click(Sender: TObject);
begin
  Form_fuhuo := tForm_fuhuo.Create(nil);
  try
    Form_fuhuo.ShowModal;
    if Form_fuhuo.baocun then
    begin
      if qry_thshenqing.Active then
        qry_thshenqing.Requery();
      if qry_thshenqing_mx.Active then
        qry_thshenqing_mx.Requery();
      if qry_fuhuo_jilu.Active then
        qry_fuhuo_jilu.Requery();
    end;

  finally
    FreeAndNil(Form_fuhuo);
  end;
end;

procedure TForm_main.dxNavBar1Item3Click(Sender: TObject);
begin
  cxTabSheet4.Show;
end;

procedure TForm_main.dxNavBar1Item5Click(Sender: TObject);
begin
  cxTabSheet8.show;
  qry_gys_list.Open;
  cxDateEdit5.Date := IncMonth(date,-1);
  ADOQuery_ruku_zhubiao.Active := false;
  ruku_caigao;
end;

procedure TForm_main.dxNavBar1Item6Click(Sender: TObject);
begin
  cxTabSheet7.Show;
end;

procedure TForm_main.dxNavBar1Item7Click(Sender: TObject);
begin
  Form_KaiPiao := TForm_KaiPiao.Create(nil);
  try
    Form_KaiPiao.ShowModal;
  finally
    FreeAndNil(Form_KaiPiao);
  end;
end;

procedure TForm_main.dxNavBar1Item8Click(Sender: TObject);
begin
  cxTabSheet9.Show;
  cxTabSheet10.Show;
end;

procedure TForm_main.dxNavBar1Item9Click(Sender: TObject);
begin
  cxTabSheet12.Show;
  cxButton13.Click;
end;

procedure TForm_main.FormCreate(Sender: TObject);
begin
  cxPageControl_main.HideTabs:=true;
  cxPage_tihuoshenqing.HideTabs:=true;
  cxPage_TuiHuo.HideTabs:=true;
  cxTabSheet2.Show;

  cxDate_th_qishi.Date:=IncMonth(date,-1);
  cxDate_FH_qishi.Date:=IncMonth(date,-1);
  cxDate_TuiH_qishi.Date:=IncMonth(date,-1);

  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from ��Ժ�� where sort_id<>0 union all select abbr=''ȫ��'',name=''ȫ��'' ';
  qry_fenyuan.Open;
end;

procedure TForm_main.ruku_caigao;
var
  str :string;
begin
  if cxDateEdit6.Text <> '' then
  begin
    if cxDateEdit5.Date > cxDateEdit6.Date then
    Application.MessageBox('����ѡ����ȷ��', '��ʾ', MB_OK);
    Exit;
  end;

  ADOQuery_ruku_zhubiao.Active := false;
  ADOQuery_ruku_zhubiao.SQL.Text := 'select * from ����ɹ�������� where ״̬ =1 and ���ʱ�� >= '+QuotedStr(cxDateEdit5.Text)  ;

  if cxDateEdit6.Text <> '' then
  begin
    str := cxDateEdit6.Text;
    ADOQuery_ruku_zhubiao.SQL.Text := ADOQuery_ruku_zhubiao.SQL.Text +' and ���ʱ�� <='+ QuotedStr(str) ;

  end;
  ADOQuery_ruku_zhubiao.SQL.Text := ADOQuery_ruku_zhubiao.SQL.Text + ' order by ��� desc';
  ADOQuery_ruku_zhubiao.Active := True;
  ADOQuery_ruku_mingxi.Active := false;
  ADOQuery_ruku_mingxi.SQL.Text := 'select *  from ����ɹ������ϸ�� where �����= '+
                                 QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
  ADOQuery_ruku_mingxi.Active := True;
end;

end.
