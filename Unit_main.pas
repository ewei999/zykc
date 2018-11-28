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
  cxDBLookupComboBox, System.Actions, Vcl.ActnList, unit_JingJieLiang,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit,Unit_FuHuoDan, cxGroupBox,unit_KaiPiao,Unit_KuCunJilu,Unit_gongyingshang;

type
  TForm_main = class(TForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxNavBar1: TdxNavBar;
    cxPageControl_main: TcxPageControl;
    dxNavBar1Group1: TdxNavBarGroup;
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
    ds_fuhuo_jilu: TDataSource;
    qry_fuhuo_jilu: TADOQuery;
    cxlbl4: TcxLabel;
    cxCombo_FH_Zhuangtai: TcxComboBox;
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
    cxTabSheet9: TcxTabSheet;
    pnl3: TPanel;
    cxlbl5: TcxLabel;
    cxDate_TuiH_qishi: TcxDateEdit;
    cxlbl6: TcxLabel;
    cxDate_TuiH_zhongzhi: TcxDateEdit;
    cxButton19: TcxButton;
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
    ADOQuery_ruku_zhubiao编号: TAutoIncField;
    ADOQuery_ruku_zhubiao入库编号: TWideStringField;
    ADOQuery_ruku_zhubiao供应商: TWideStringField;
    ADOQuery_ruku_zhubiao入库时间: TDateTimeField;
    ADOQuery_ruku_zhubiao入库批次: TWideStringField;
    bcdfldADOQuery_ruku_zhubiao金额: TBCDField;
    bcdfldADOQuery_ruku_zhubiao舍零: TBCDField;
    bcdfldADOQuery_ruku_zhubiao合计金额: TBCDField;
    ADOQuery_ruku_zhubiao购货方式: TWideStringField;
    ADOQuery_ruku_zhubiao备注: TWideStringField;
    ADOQuery_ruku_zhubiao经手人: TWideStringField;
    ADOQuery_ruku_zhubiao员工编号: TWideStringField;
    ADOQuery_ruku_zhubiao状态: TIntegerField;
    ADOQuery_ruku_zhubiao审核人: TWideStringField;
    ADOQuery_ruku_zhubiao审核时间: TWideStringField;
    ADOQuery_ruku_zhubiao选择: TBooleanField;
    ADOQuery_ruku_mingxi编号: TAutoIncField;
    ADOQuery_ruku_mingxi入库编号: TWideStringField;
    ADOQuery_ruku_mingxi入库明细编号: TWideStringField;
    ADOQuery_ruku_mingxi入库批次: TWideStringField;
    ADOQuery_ruku_mingxi入库时间: TDateTimeField;
    ADOQuery_ruku_mingxi名称: TWideStringField;
    ADOQuery_ruku_mingxi价目编号: TWideStringField;
    ADOQuery_ruku_mingxi规格: TWideStringField;
    ADOQuery_ruku_mingxi单位: TWideStringField;
    ADOQuery_ruku_mingxi数量: TIntegerField;
    bcdfldADOQuery_ruku_mingxi进货单价: TBCDField;
    bcdfldADOQuery_ruku_mingxi金额: TBCDField;
    ADOQuery_ruku_mingxi类别: TWideStringField;
    ADOQuery_ruku_mingxi小类: TWideStringField;
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
    dxNavBar1Item11: TdxNavBarItem;
    cxGrid8: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    dxNavBar1Item1: TdxNavBarItem;
    cxTabSheet10: TcxTabSheet;
    pnl6: TPanel;
    cxlbl10: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxlbl11: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxButton17: TcxButton;
    cxlbl12: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxlbl13: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxGrid9: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    ds_TuiHuoJiLu: TDataSource;
    qry_TuiHuoJiLu: TADOQuery;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxGridDBTableView6Column3: TcxGridDBColumn;
    dxNavBar1Item8: TdxNavBarItem;
    cxGridDBTableView8Column5: TcxGridDBColumn;
    cxButton18: TcxButton;
    cxButton20: TcxButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet11: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet14: TcxTabSheet;
    cxGrid12: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    qry_fuhuo_jilu_xiangxi: TADOQuery;
    ds_fuhuo_jilu_xiangxi: TDataSource;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView9Column2: TcxGridDBColumn;
    cxGridDBTableView9Column3: TcxGridDBColumn;
    cxGridDBTableView9Column4: TcxGridDBColumn;
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Item14: TdxNavBarItem;
    cxTabSheet15: TcxTabSheet;
    pnl7: TPanel;
    cxlbl14: TcxLabel;
    cxDate_YL_Qishi: TcxDateEdit;
    cxlbl15: TcxLabel;
    cxDate_YL_Zhongzhi: TcxDateEdit;
    cxButton22: TcxButton;
    cxGrid13: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    ds_yongliang: TDataSource;
    qry_yongliang: TADOQuery;
    cxlbl16: TcxLabel;
    cxText_YL_MC: TcxTextEdit;
    cxButton23: TcxButton;
    cxGridDBTableView8Column6: TcxGridDBColumn;
    dxNavBar1Item15: TdxNavBarItem;
    cxTabSheet16: TcxTabSheet;
    cxGrid14: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    qry_weishenpi: TADOQuery;
    ds_weishenpi: TDataSource;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxComboBox2: TcxComboBox;
    cxlbl17: TcxLabel;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxButton24: TcxButton;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxButton25: TcxButton;
    cxGridDBTableView9Column5: TcxGridDBColumn;
    cxButton26: TcxButton;
    cxButton27: TcxButton;
    cxGridDBTableView8Column7: TcxGridDBColumn;
    cxButton28: TcxButton;
    dxNavBar1Item16: TdxNavBarItem;
    cxButton29: TcxButton;
    cxGridDBTableView8Column8: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
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
    procedure dxNavBar1Item11Click(Sender: TObject);
    procedure dxNavBar1Item4Click(Sender: TObject);
    procedure cxGridDBTableView5CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxNavBar1Group1Click(Sender: TObject);
    procedure dxNavBar1Group4Click(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxGridDBTableView6CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure dxNavBar1Item14Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure dxNavBar1Item15Click(Sender: TObject);
    procedure cxGridDBTableView11CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure dxNavBar1Item16Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
  private
    rktjstr,cktjstr:string;
    procedure CreateGrid;
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
    if (qry_caigou_hz.FieldByName('状态').AsString= '0') or (qry_caigou_hz.FieldByName('状态').AsString= '4') then
    begin
      Form_cg_new := TForm_cg_new.Create(nil);
      try
        Form_cg_new.button_zhuanti('delete');
        Form_cg_new.Action_new_m.Enabled := false;
        Form_cg_new.Action_delete_m.Enabled := False;
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;
        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
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
    if (qry_caigou_hz.FieldByName('状态').AsString= '0') or (qry_caigou_hz.FieldByName('状态').AsString= '4') then
    begin
      Form_cg_new := TForm_cg_new.Create(nil);
      try
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;

        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                      ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
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
      Application.MessageBox('只有草稿状态的采购申请可以修改！', '提示', MB_OK);
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
  if (qry_caigou_hz.FieldByName('状态').AsString= '0') or (qry_caigou_hz.FieldByName('状态').AsString= '4') then
  begin
    Form_cg_new := TForm_cg_new.Create(nil);
    try
      Form_cg_new.Action_new_m.Enabled := false;
      Form_cg_new.Action_delete_m.Enabled := False;
      Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
      Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                    ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
      Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
      Form_cg_new.ADOQuery_cg_zhubiao.Edit;

      Form_cg_new.ADOQuery_cg_mingxi.Active := false;
      Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                    ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
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
    Application.MessageBox('日期选择不正确！', '提示', MB_OK);
    Exit;
  end;

  qry_caigou_hz.Active := false;
  qry_caigou_hz.SQL.Text := 'select *, '+
    ' zt=(case 状态 when 0 then ''草稿'' when 1 then ''已提交'' when 3 then ''审批完成'' when 4 then ''退回'' end ), '+
    ' 申请数=(select count(*) from 中央采购申请明细表 where 申请编号=a.申请编号) '+
    ' from ( select * from 中央采购申请主表 where 状态 <>2 and 申请日期 >= '+QuotedStr(cxDateEdit1.Text)+''+
    ' )a order by 编号 desc';
  qry_cg_mingxi.Active := false;
  qry_cg_mingxi.SQL.Text := 'select a.*,b.申请日期,b.申请编号,b.状态 as 审批状态,待办人,b.供应商 as 供应商编号 from 中央采购申请明细表 a '+
                          '  left outer join                             '     +
                          '  中央采购申请主表 b  '+
                          '  on a.申请编号=b.申请编号 where  申请日期 >= '+
                          QuotedStr(cxDateEdit1.Text)+' order by 编号 desc';
  if cxDateEdit2.Text <> '' then
  begin
    str := cxDateEdit2.Text;
    qry_caigou_hz.SQL.Text := qry_caigou_hz.SQL.Text +' and 申请日期 <='+ QuotedStr(str) ;
    qry_cg_mingxi.SQL.Text := qry_cg_mingxi.SQL.Text + ' and 申请日期 <='+ QuotedStr(str) ;
  end;
  qry_caigou_hz.Active := True;
  qry_cg_mingxi.Active := True;
end;

procedure TForm_main.cxButton13Click(Sender: TObject);
begin
  //待审
  qry_CaiGou_ShenPi.Close;
  qry_CaiGou_ShenPi.SQL.Text:='select *, '+
    ' zt=(case 状态 when 0 then ''草稿'' when 1 then ''已提交'' when 3 then ''审批完成'' when 4 then ''退回'' end ), '+
    ' 申请数=isnull((select sum(isnull(数量,0)) from 中央采购申请明细表 where 申请编号=a.申请编号),0) '+
    ' from ( select * from 中央采购申请主表 where 状态 <>0 and 状态<>2 '+
    ' and 申请编号 in (select 申请编号 from 提货申请审批表 where isnull(状态,'''')<>'''' '+
    ' and isnull(意见,'''')='''' and 审批人='+QuotedStr(g_user.UserName)+'  ) '+
    ' )a order by 申请日期';
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
    rktjstr:=rktjstr+' and 入库时间>='+QuotedStr(cxDate_KuCun_Qishi.Text)+' ';
    cktjstr:=cktjstr+' and 出库时间>='+QuotedStr(cxDate_KuCun_Qishi.Text)+' ';
  end;
  if cxDate_KuCun_Zhongzhi.Text<>'' then
  begin
    rktjstr:=rktjstr+' and 入库时间<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+' ';
    cktjstr:=cktjstr+' and 出库时间<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+' ';
  end;
  if Trim(cxTextEdit37.Text)<>'' then
    mctj:=mctj+'  and 价目编号 in (select 价目编号 from 药品用品价目表 where 名称 like ''%'+Trim(cxTextEdit37.Text)+'%'' or 原名称 like ''%'+Trim(cxTextEdit37.Text)+'%'' )';

  if rktjstr='' then
  begin
    sjdstr:=' 时间段入库=0,时间段出库=0,';
  end
  else
  begin
    sjdstr:=' 时间段入库=isnull((select sum(isnull(数量,0)) from 中央采购入库明细表 where 入库编号 in (select 入库编号 from 中央采购入库主表 '+
      '	where 状态=1 '+rktjstr+' ) and 价目编号=a.价目编号 ),0), '+
      ' 时间段出库=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=2  and 是否作废=0 '+cktjstr+' and 价目编号=a.价目编号) ,0),';
  end;
  cxGridDBTableView8Column1.Visible:=true;
  cxGridDBTableView8Column2.Visible:=true;
  cxGridDBTableView8Column7.Visible:=true;
  cxGridDBTableView8Column8.Visible:=false;
  qry_kucun.Close;
  qry_kucun.SQL.Text:='select *,库存=入库数量-出库数量-未接收,库存金额=(case when 入库数量-出库数量-未接收=0 then 0 else 入库金额-出库金额 end),'+
    ' 供应商=(select top 1 名称 from 供应商表 where 供应商编号=c.gys) '+
    ' from ( select a.*, '+
    ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=2  and 是否作废=0 and 价目编号=a.价目编号 and 供应商=a.gys) ,0), '+ sjdstr+
    ' 未接收=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=1  and 是否作废=0 and 价目编号=a.价目编号 and 供应商=a.gys) ,0), '+
    ' 出库金额=isnull((select sum(出库金额) from 中央库存_出库表 where 状态 in (1,2)  and 是否作废=0 and 价目编号=a.价目编号  and 供应商=a.gys) ,0), '+
    ' b.名称,b.规格,单位=(case when isnull(b.库存单位,'''')<>'''' then b.库存单位 else b.单位 end),b.类别,b.小类'+
    ' from ( '+
    ' select 价目编号,gys,sum(isnull(数量,0)) as 入库数量,sum(isnull(金额,0)) as 入库金额   from ('+
    ' select * ,gys=(select top 1 供应商 from 中央采购入库主表 where 入库编号=t.入库编号 ) from ('+
    '  select 价目编号,入库编号 ,数量,金额 from 中央采购入库明细表 '+
    ' where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1)'+ mctj+
    ' )t)y group by 价目编号,gys '+
    ' )a left join 药品用品价目表 b on a.价目编号=b.价目编号 )c  order by gys,名称';
  qry_kucun.Open;
end;

procedure TForm_main.cxButton17Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if (cxLookupComboBox1.Text<>'') and (cxLookupComboBox1.Text<>'全部') then
    tjstr:=tjstr+' and 分店代码='+QuotedStr(cxLookupComboBox1.EditValue)+'';
  if cxDateEdit3.Text<>'' then
    tjstr:=tjstr+' and 出库时间>='+QuotedStr(cxDateEdit3.Text)+'';
  if cxDateEdit4.Text<>'' then
    tjstr:=tjstr+' and 出库时间<'+QuotedStr(DateToStr(incday(cxDateEdit4.date,1)))+'';
  if cxComboBox1.Text='待处理' then
    tjstr:=tjstr+' and 状态=1 ';
  if cxComboBox1.Text='已处理' then
    tjstr:=tjstr+' and 状态=2 ';

  qry_TuiHuoJiLu.Close;
  qry_TuiHuoJiLu.SQL.Text:='select *, '+
    ' 分院=(select top 1 name from 分院表 where abbr=a.分店代码) ,'+
    ' zt=(case 状态 when 1 then ''待处理'' when 2 then ''已处理''  end) '+
    ' from ( select 出库编号,出库时间,名称,出库数量,出库金额,单价,舍零金额,分店代码,供应商,状态,'+
    ' 门店接收人,门店接收时间 from 中央库存_出库表 where 是否作废=0  and left(出库编号,2)=''TH'' '+tjstr+
    ' )a order by  出库时间';
  qry_TuiHuoJiLu.Open;
end;

procedure TForm_main.cxButton18Click(Sender: TObject);
var
  j:integer;
begin
  DataModule1.ADOQuery_dayin.Close;
  DataModule1.ADOQuery_dayin.sql.text :='select Row_Number() OVER ( order by gys,mc ) rank,*,kc=rk-ck-fjs from ( select a.rk, '+
  '  gys=(select top 1 名称 from 供应商表 where 供应商编号=a.gys),'+
  ' ck=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=2  and 是否作废=0 and 价目编号=a.价目编号 and 供应商=a.gys) ,0),'+
  ' fjs=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=1  and 是否作废=0 and 价目编号=a.价目编号 and 供应商=a.gys) ,0),'+
  ' b.名称 as mc,b.规格 as gg,dw=(case when isnull(b.库存单位,'''')<>'''' then b.库存单位 else b.单位 end),b.包装规格 as bz  from ('+
  '  select 价目编号,sum(isnull(数量,0)) as rk,gys  from ( '+
  ' select *  ,gys=(select top 1 供应商  from 中央采购入库主表 where 入库编号 =x.入库编号 )'+
  ' from (  select 价目编号,入库编号,数量  from 中央采购入库明细表  where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1)'+
  '  )x)y  group by 价目编号,gys )a left join 药品用品价目表 b on a.价目编号=b.价目编号 )c order by gys,mc';
  DataModule1.ADOQuery_dayin.open;

  DataModule1.frxDBDataset_dayin.FieldAliases.Clear;
  for j:=0 to DataModule1.frxDBDataset_dayin.Dataset.FieldCount-1 do
  begin
    DataModule1.frxDBDataset_dayin.FieldAliases.Add(DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName+'='+DataModule1.frxDBDataset_dayin.dataset.Fields[j].FullName);
  end;
  DataModule1.frxReport_dayin.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Report\kucun.fr3');
  DataModule1.frxReport_dayin.Variables['riqi'] :=QuotedStr(FormatDateTime('yyyy-mm-dd',Date));
  DataModule1.frxReport_dayin.ShowReport();
end;

procedure TForm_main.cxButton19Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_TuiH_qishi.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDate_TuiH_qishi.Text)+'';
  if cxDate_TuiH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+'';

  qry_Tuihuo.Close;
  qry_Tuihuo.SQL.Text:='select *, 分院=(select top 1 name from 分院表 where abbr=a.分店代码 ) ,'+
    ' 申请数量=(select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 ) ,'+
    ' zt=(case 状态 when 2 then ''待处理'' when 5 then ''同意退货'' when 6 then ''拒绝退货'' end)  '+
    ' from ( select * from 提货申请主表 where 是否作废=0 and 状态 not in (0,1,3,4) and 类别=2 '+tjstr+' )a order by 申请日期';
  qry_Tuihuo.Open;
end;

procedure TForm_main.cxButton1Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';
  if (cxComboBox2.Text='未处理') then
    tjstr:=tjstr+' and 申请编号 in (select 申请编号 from 提货申请明细表 where 状态=1)'
  else if (cxComboBox2.Text='已处理') then
    tjstr:=tjstr+' and 申请编号 in (select 申请编号 from 提货申请明细表 where 状态 in (2,3))';

  qry_thshenqing.Close;
  qry_thshenqing.SQL.Text:='select *, 分院=(select top 1 name from 分院表 where abbr=a.分店代码 ) ,'+
    ' 申请数量=(select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 ) ,'+
    ' 已付货数量=isnull((select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 and 状态=2 ),0) , '+
    ' 不付货数量=isnull((select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 and 状态=3 ),0)  '+
    ' from ( select * from 提货申请主表 where 是否作废=0 and 状态=2 and 类别=1 '+tjstr+' )a order by 申请日期';
  qry_thshenqing.Open;

  cxTabSheet2.Show;
end;

procedure TForm_main.cxButton20Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if (cxLookup_FH_fenyuan.Text<>'') and (cxLookup_FH_fenyuan.Text<>'全部') then
    tjstr:=tjstr+' and 分店代码='+QuotedStr(cxLookup_FH_fenyuan.EditValue)+'';
  if cxDate_FH_qishi.Text<>'' then
    tjstr:=tjstr+' and 出库时间>='+QuotedStr(cxDate_FH_qishi.Text)+'';
  if cxDate_FH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 出库时间<'+QuotedStr(DateToStr(incday(cxDate_FH_zhongzhi.date,1)))+'';
  if cxCombo_FH_Zhuangtai.Text='待接收' then
    tjstr:=tjstr+' and 状态=1 ';
  if cxCombo_FH_Zhuangtai.Text='接收成功' then
    tjstr:=tjstr+' and 状态=2 ';
  if cxCombo_FH_Zhuangtai.Text='拒绝接收' then
    tjstr:=tjstr+' and 状态=3 ';

  qry_fuhuo_jilu_xiangxi.Close;
  qry_fuhuo_jilu_xiangxi.SQL.Text:='select *,zt=(case 状态 when 1 then ''待接收'' when 2 then ''接收成功'' when 3 then ''不同意接收'' end) , '+
  ' 分院=(select top 1 name from 分院表 where abbr=a.分店代码 ), '+
  ' gys=(select top 1 名称 from 供应商表 where 供应商编号=a.供应商),'+
  ' 规格=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号),'+
  ' 单位=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号) from ( '+
  ' select 出库编号,出库时间,名称,出库数量,单价,出库金额,舍零金额,供应商,分店代码,状态,门店接收人,门店接收时间,价目编号,经手人,备注 '+
  ' from 中央库存_出库表 where 是否作废=0 and 出库数量<>0 '+tjstr+' )a order by 出库时间';
  qry_fuhuo_jilu_xiangxi.Open;

  cxTabSheet14.Show;
end;

procedure TForm_main.cxButton21Click(Sender: TObject);
begin
  //已审
  qry_CaiGou_ShenPi.Close;
  qry_CaiGou_ShenPi.SQL.Text:='select *, '+
    ' zt=(case 状态 when 0 then ''草稿'' when 1 then ''已提交'' when 3 then ''审批完成'' when 4 then ''退回'' end ), '+
    ' 申请数=isnull((select sum(isnull(数量,0)) from 中央采购申请明细表 where 申请编号=a.申请编号),0) '+
    ' from ( select * from 中央采购申请主表 where 状态 <>0 and 状态<>2 '+
    ' and 申请编号 in (select 申请编号 from 提货申请审批表 where isnull(状态,'''')<>'''' '+
    ' and isnull(意见,'''')<>'''' and 审批人='+QuotedStr(g_user.UserName)+'  ) '+
    ' )a order by 申请日期';
  qry_CaiGou_ShenPi.Open;
end;


procedure TForm_main.CreateGrid;
var
  i,x :integer;
  cl  : TcxGridDBcolumn;
begin
  x:=0;
  cxGridDBTableView10.BeginUpdate;
  try
    cxGridDBTableView10.ClearItems;
    cxGridDBTableView10.DataController.Summary.FooterSummaryItems.Clear;

    for i := 0 to cxGridDBTableView10.DataController.DataSet.FieldCount - 1 do
    begin
      cl  :=  cxGridDBTableView10.CreateColumn;
      cl.DataBinding.FieldName := cxGridDBTableView10.DataController.DataSet.Fields[i].FieldName;

      if (cl.DataBinding.FieldName='价目编号') then
        cl.Width := 90
      else if (cl.DataBinding.FieldName='名称') then
        cl.Width := 150
      else if (cl.DataBinding.FieldName='原名称') then
        cl.Width := 100
      else
        cl.Width := 70;

      if (cl.Visible) and (x=0) then
      begin
        x:=11;
        cl.Summary.FooterKind:=skCount;
        cl.Summary.FooterFormat:='合计：0';
      end;
    end;
  finally
    cxGridDBTableView10.EndUpdate;
  end;
end;

procedure TForm_main.cxButton22Click(Sender: TObject);
var
  sysj,cksj,fenystr,sqlstr,mcstr,hejistr:string;
begin
  sysj:='';
  cksj:='';
  if cxDate_YL_Qishi.Text<>'' then
  begin
    sysj:=sysj+' and 收费时间>='+QuotedStr(cxDate_YL_Qishi.Text)+'';
    cksj:=cksj+' and 出库时间>='+QuotedStr(cxDate_YL_Qishi.Text)+'';
  end;
  if cxDate_YL_Zhongzhi.Text<>'' then
  begin
    sysj:=sysj+' and 收费时间<'+QuotedStr(DateToStr(incday(cxDate_YL_Zhongzhi.date,1)))+'';
    cksj:=cksj+' and 出库时间<'+QuotedStr(DateToStr(incday(cxDate_YL_Zhongzhi.date,1)))+'';
  end;

  mcstr:='';
  if trim(cxText_YL_MC.Text)<>'' then
    mcstr:=' and (名称 like '+QuotedStr('%'+Trim(cxText_YL_MC.Text)+'%')+' or 原名称 like '+QuotedStr('%'+Trim(cxText_YL_MC.Text)+'%')+') ';

  fenystr:='';
  sqlstr:='';
  hejistr:=',合计=0';
  DataModule1.openSql('select name,abbr from 分院表 where sort_id<>0');
  while not DataModule1.ADOQuery_L.Eof do
  begin
    if fenystr='' then
      fenystr:=','+DataModule1.ADOQuery_L.FieldByName('name').AsString+'=isnull('+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.数量,0) '
    else
      fenystr:=fenystr+','+DataModule1.ADOQuery_L.FieldByName('name').AsString+'=isnull('+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.数量,0) ';

    hejistr:=hejistr+'+isnull('+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.数量,0)';

    sqlstr:=sqlstr+' left join ( select 价目编号,sum(数量) as 数量 from ('+
    ' select 价目编号,数量 from [mgpet'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'].[dbo].[单据明细表] where 状态 in (2,3) '+
    ' and 收费编号 in (select 收费编号 from [mgpet'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'].[dbo].[收费记录表] '+
    ' where 1=1 '+sysj+' )  union all '+
    ' select 价目编号,出库数量 from [mgpet'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'].[dbo].[出库表] where 是否作废=0 and left(备注,2)=''MX'' '+cksj+
    ' )x group by 价目编号 )'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+' on a.价目编号='+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.价目编号';


    DataModule1.ADOQuery_L.Next;
  end;

  qry_yongliang.Close;
  qry_yongliang.SQL.Text:='select * from ( select a.* '+fenystr+hejistr+'  from ( '+
    '  select 价目编号,名称,原名称,类别,规格,单位 from 药品用品价目表  where 是否作废=0 and 库存=1 and isnull(是否套餐,0)=0 '+
    ' and 类别 in (''药品'',''化验'',''疫苗'') '+mcstr+' )a'+sqlstr+')t order by 名称 ';
  qry_yongliang.Open;

  if cxGridDBTableView10.DataController.ItemCount=0 then
    CreateGrid;

end;

procedure TForm_main.cxButton23Click(Sender: TObject);
begin
  DaochuExcel(cxGrid13);
end;

procedure TForm_main.cxButton24Click(Sender: TObject);
begin
  DaochuExcel(cxGrid11);
end;

procedure TForm_main.cxButton25Click(Sender: TObject);
begin
  if cxPage_tihuoshenqing.ActivePage=cxTabSheet2 then
    DaochuExcel(cxGrid1);
  if cxPage_tihuoshenqing.ActivePage=cxTabSheet3 then
    DaochuExcel(cxGrid2);
end;

procedure TForm_main.cxButton26Click(Sender: TObject);
begin
  if cxPageControl2.ActivePage=cxTabSheet11 then
    DaochuExcel(cxGrid5);
  if cxPageControl2.ActivePage=cxTabSheet14 then
    DaochuExcel(cxGrid12);
end;

procedure TForm_main.cxButton27Click(Sender: TObject);
begin
  DaochuExcel(cxGrid6);
end;

procedure TForm_main.cxButton29Click(Sender: TObject);
begin
  cxGridDBTableView8Column1.Visible:=false;
  cxGridDBTableView8Column2.Visible:=false;
  cxGridDBTableView8Column7.Visible:=false;
  cxGridDBTableView8Column8.Visible:=True;
  qry_kucun.Close;
  qry_kucun.SQL.Text:='select *,库存=入库数量-出库数量-未接收, '+
  ' 供应商=(select top 1 名称 from 供应商表 where 供应商编号=c.gys) '+
  ' from ( select *, '+
  ' gys=(select top 1 供应商 from 中央采购入库主表 where 入库编号=(select top 1 入库编号 from 中央采购入库明细表'+
  ' 	where 价目编号=x.价目编号 and 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1) order by 编号 desc)) ,'+
  ' 入库数量=isnull((select sum(数量) from 中央采购入库明细表 where 价目编号=x.价目编号 and 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1) ),0) ,'+
  ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=2  and 是否作废=0 and 价目编号=x.价目编号 ) ,0),'+
  ' 未接收=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=1  and 是否作废=0 and 价目编号=x.价目编号) ,0) '+
  ' from ( select 价目编号,名称,规格,单位=(case when isnull(库存单位,'''')<>'''' then 库存单位 else 单位 end),类别,小类,警戒量 '+
  '  from 药品用品价目表 where 是否作废=0 and isnull(是否套餐,0)=0 and 库存=1 and 提货=1 and 警戒量>0 )x)c order by 名称';
  qry_kucun.Open;
end;

procedure TForm_main.cxButton2Click(Sender: TObject);
var
  tjstr,ztstr:string;
begin
  tjstr:='';
  ztstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and 申请日期>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 申请日期<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';
  if cxComboBox2.Text='未处理' then
    ztstr:=ztstr+' and 状态=1 '
  else if cxComboBox2.Text='已处理' then
    ztstr:=ztstr+' and 状态 in (2,3) ';

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select *,仓库库存=入库数量-出库数量,'+
    ' gys=(select top 1 名称 from 供应商表 where 供应商编号 =(select top 1 供应商 from 中央采购入库主表 where 入库编号=b.cgrk))'+
    ' from ( select *,'+
    ' 分院=(select top 1 name from 分院表 where abbr=(select top 1 分店代码 from 提货申请主表 '+
    ' 	where  申请编号=a.申请编号) ) , '+
    ' 申请日期=(select top 1 申请日期 from 提货申请主表 where 申请编号=a.申请编号),'+
    ' 审批日期=(select top 1 审批时间 from 提货申请审批表 where 申请编号=a.申请编号 order by 编号 desc),'+
    ' mc=名称,'+
    ' 申请人=(select top 1 申请人 from 提货申请主表 where 申请编号=a.申请编号) ,'+
    ' zt=(case when 状态=1 then ''未处理'' when 状态=2 then ''已付货'' when 状态=3 then 不付货原因 end), '+
    ' 入库数量=isnull((select sum(isnull(数量,0))  from 中央采购入库明细表 '+
    '   where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1) and 价目编号=a.价目编号),0),'+
    '  cgrk=(select top 1 入库编号  from 中央采购入库明细表  where  价目编号=a.价目编号 order by 编号 desc),'+
    ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态 in (1,2)  and 是否作废=0 and 价目编号=a.价目编号),0)'+
    ' from ( select * from 提货申请明细表 '+
    ' where 申请编号 in (select 申请编号 from  提货申请主表 where 是否作废=0 and 状态=2 and 类别=1  '+tjstr+') '+ztstr+
    ' )a)b order by 申请日期';
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
  if (cxLookup_FH_fenyuan.Text<>'') and (cxLookup_FH_fenyuan.Text<>'全部') then
    tjstr:=tjstr+' and 分店代码='+QuotedStr(cxLookup_FH_fenyuan.EditValue)+'';
  if cxDate_FH_qishi.Text<>'' then
    tjstr:=tjstr+' and 出库时间>='+QuotedStr(cxDate_FH_qishi.Text)+'';
  if cxDate_FH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and 出库时间<'+QuotedStr(DateToStr(incday(cxDate_FH_zhongzhi.date,1)))+'';
  if cxCombo_FH_Zhuangtai.Text='待接收' then
    tjstr:=tjstr+' and 状态=1 ';
  if cxCombo_FH_Zhuangtai.Text='接收成功' then
    tjstr:=tjstr+' and 状态=2 ';
  if cxCombo_FH_Zhuangtai.Text='拒绝接收' then
    tjstr:=tjstr+' and 状态=3 ';

  qry_fuhuo_jilu.Close;
  qry_fuhuo_jilu.SQL.Text:='select *,zt=(case 状态 when 1 then ''待接收'' when 2 then ''接收成功'' when 3 then ''拒绝接收'' end),'+
    ' 分院=(select top 1 name from 分院表 where abbr=b.分店代码 )'+
    ' from ( select *,'+
    ' 出库时间=(select top 1 出库时间 from 中央库存_出库表 where 出库编号=a.出库编号) ,'+
    ' 数量=(select top 1 sum(出库数量) from 中央库存_出库表 where 出库编号=a.出库编号) ,'+
    ' 金额=(select top 1 sum(出库金额) from 中央库存_出库表 where 出库编号=a.出库编号),'+
    ' 门店接收人=(select top 1 门店接收人 from 中央库存_出库表 where 出库编号=a.出库编号) ,'+
    ' 门店接收时间=(select top 1 门店接收时间 from 中央库存_出库表 where 出库编号=a.出库编号),'+
    ' 状态=(select top 1 状态 from 中央库存_出库表 where 出库编号=a.出库编号), '+
    ' 分店代码=(select top 1 分店代码 from 中央库存_出库表 where 出库编号=a.出库编号)'+
    ' from ( select 出库编号 from 中央库存_出库表 where 是否作废=0 and left(出库编号,2)<>''TH'' '+tjstr+
    ' group by 出库编号 )a)b order by 出库时间';
  qry_fuhuo_jilu.Open;
  cxTabSheet11.Show;
end;

procedure TForm_main.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_thshenqing.FieldByName('申请编号').asstring;
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
  ADOQuery_ruku_mingxi.SQL.Text := 'select * from 中央采购入库明细表 where 入库编号='+
                                     QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('入库编号').AsString);
  ADOQuery_ruku_mingxi.Active := True;
end;

procedure TForm_main.cxGridDBTableView11CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_weishenpi.FieldByName('申请编号').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_thshenqing_mx.FieldByName('申请编号').asstring;
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
    Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                  ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
    Form_cg_new.ADOQuery_cg_zhubiao.Active := True;

    Form_cg_new.ADOQuery_cg_mingxi.Active := false;
    Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                  ' where 申请编号='+QuotedStr(qry_caigou_hz.FieldByName('申请编号').AsString);
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
    Form_FuHuoDan.CKBianhao:=qry_fuhuo_jilu.FieldByName('出库编号').AsString;
    Form_FuHuoDan.ShowModal;
  finally
    FreeAndNil(Form_FuHuoDan);
  end;
end;

procedure TForm_main.cxGridDBTableView5CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_Tuihuo.FieldByName('申请编号').asstring;
    Form_caigou_shenqing_new.ShowModal;
    if Form_caigou_shenqing_new.baocun then
      qry_Tuihuo.Requery();
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView6CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_TuiHuoJiLu.FieldByName('出库编号').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView7CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_cg_new := TForm_cg_new.Create(nil);
  try
    Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
    Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from 中央采购申请主表'+
                                                  ' where 申请编号='+QuotedStr(qry_CaiGou_ShenPi.FieldByName('申请编号').AsString);
    Form_cg_new.ADOQuery_cg_zhubiao.Active := True;

    Form_cg_new.ADOQuery_cg_mingxi.Active := false;
    Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  * from 中央采购申请明细表'+
                                                  ' where 申请编号='+QuotedStr(qry_CaiGou_ShenPi.FieldByName('申请编号').AsString);
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
  if (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '入库数量')
  or (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '时间段入库')  then
  begin
    sqlstr:= 'select * , '+
      ' gys=(select top 1 名称 from 供应商表 where 供应商编号=(select top 1 供应商 from 中央采购入库主表 where 入库编号=a.入库编号 )) '+
      ' from ( select * '+
      ' from 中央采购入库明细表 where 价目编号='+QuotedStr(qry_kucun.FieldByName('价目编号').AsString)+' '+
      ' and 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 and 供应商='+QuotedStr(qry_kucun.FieldByName('gys').AsString)+' :tj ) )a '+
      ' order by 入库时间';

    if  (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '时间段入库')  then
      sqlstr:=StringReplace(sqlstr,':tj',rktjstr,[rfReplaceAll])
    else
      sqlstr:=StringReplace(sqlstr,':tj','',[rfReplaceAll]);

    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='入库';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:=sqlstr;
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;
  if (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '出库数量')
  or (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '时间段出库')  then
  begin
    sqlstr:= 'select * , '+
      ' gys=(select top 1 名称 from 供应商表 where 供应商编号=a.供应商), '+
      ' 分店=(select top 1 name from 分院表 where abbr=a.分店代码), '+
      ' 规格=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号 ),'+
      ' 单位=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号 )'+
      ' from ( select * from 中央库存_出库表 '+
      ' where 状态=2 and 是否作废=0 :tj and 供应商='+QuotedStr(qry_kucun.FieldByName('gys').AsString)+' '+
      ' and 价目编号='+QuotedStr(qry_kucun.FieldByName('价目编号').AsString)+' )a order by 出库时间';

    if  (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '时间段出库')  then
      sqlstr:=StringReplace(sqlstr,':tj',cktjstr,[rfReplaceAll])
    else
      sqlstr:=StringReplace(sqlstr,':tj','',[rfReplaceAll]);

    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='出库';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:= sqlstr;
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;
  if (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = '未接收数量') then
  begin
    sqlstr:= 'select * , '+
      ' gys=(select top 1 名称 from 供应商表 where 供应商编号=a.供应商), '+
      ' 分店=(select top 1 name from 分院表 where abbr=a.分店代码), '+
      ' 规格=(select top 1 规格 from 药品用品价目表 where 价目编号=a.价目编号 ),'+
      ' 单位=(select top 1 单位 from 药品用品价目表 where 价目编号=a.价目编号 )'+
      ' from ( select * from 中央库存_出库表 '+
      ' where 状态=1 and 是否作废=0 and 供应商='+QuotedStr(qry_kucun.FieldByName('gys').AsString)+''+
      ' and 价目编号='+QuotedStr(qry_kucun.FieldByName('价目编号').AsString)+' )a order by 出库时间';

    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='未接收';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:= sqlstr;
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;

end;

procedure TForm_main.dxNavBar1Group1Click(Sender: TObject);
begin
  cxTabSheet1.Show;
  cxTabSheet2.Show;
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
//  qry_caigou_hz.SQL.Text := 'select * from 中央采购申请主表 where 状态<>2 and  申请日期 >= '+QuotedStr(cxDateEdit1.Text)+
//                            ' order by 编号 desc';
//  qry_cg_mingxi.Active := false;
//  qry_cg_mingxi.SQL.Text := 'select a.*,b.申请日期,b.申请编号,b.状态 as 审批状态,待办人,b.供应商 as 供应商编号 from 中央采购申请明细表 a '+
//                          '  left outer join                             '     +
//                          '  中央采购申请主表 b  '+
//                          '  on a.申请编号=b.申请编号 where  申请日期 >= '+
//                          QuotedStr(cxDateEdit1.Text)+' order by 编号 desc';
//  if cxDateEdit2.Text <> '' then
//  begin
//    str := cxDateEdit2.Text;
//    qry_caigou_hz.SQL.Text := qry_caigou_hz.SQL.Text +' and 申请日期 <='+ QuotedStr(str) ;
//    qry_cg_mingxi.SQL.Text := qry_cg_mingxi.SQL.Text + ' and 申请日期 <='+ QuotedStr(str) ;
//  end;
//  qry_caigou_hz.Active := True;
//  qry_cg_mingxi.Active := True;

end;

procedure TForm_main.dxNavBar1Group4Click(Sender: TObject);
begin
  cxTabSheet9.Show;
end;

procedure TForm_main.dxNavBar1Item10Click(Sender: TObject);
begin
  cxTabSheet13.Show;
end;

procedure TForm_main.dxNavBar1Item11Click(Sender: TObject);
begin
  Form_fuhuo := tForm_fuhuo.Create(nil);
  try
    Form_fuhuo.laiyuan:='主动付货';
    Form_fuhuo.ShowModal;
    if Form_fuhuo.baocun then
    begin
      if qry_fuhuo_jilu.Active then
        qry_fuhuo_jilu.Requery();
    end;
  finally
    FreeAndNil(Form_fuhuo);
  end;
end;

procedure TForm_main.dxNavBar1Item14Click(Sender: TObject);
begin
  cxTabSheet15.Show;
end;

procedure TForm_main.dxNavBar1Item15Click(Sender: TObject);
begin
  qry_weishenpi.close;
  qry_weishenpi.SQL.Text:='select * , '+
  ' 分院=(select top 1 name from 分院表 where abbr=a.分店代码 ) , '+
  ' 类别1=(case when 类别=1 then ''提货'' else ''退 货'' end), '+
  ' 申请数量=(select sum(数量) from 提货申请明细表 where 申请编号=a.申请编号 ) '+
  ' from ( select * from 提货申请主表 where 是否作废=0 and 状态=1 )a order by 申请日期';
  qry_weishenpi.Open;
  cxTabSheet16.Show;
end;

procedure TForm_main.dxNavBar1Item16Click(Sender: TObject);
begin
  Form_JingJieLiang := TForm_JingJieLiang.Create(nil);
  try
    Form_JingJieLiang.ShowModal;
  finally
    FreeAndNil(Form_JingJieLiang);
  end;
end;

procedure TForm_main.dxNavBar1Item1Click(Sender: TObject);
begin
  cxTabSheet10.Show;
end;

procedure TForm_main.dxNavBar1Item2Click(Sender: TObject);
begin
  Form_fuhuo := tForm_fuhuo.Create(nil);
  try
    Form_fuhuo.laiyuan:='按申请单';
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

procedure TForm_main.dxNavBar1Item4Click(Sender: TObject);
begin
  Form_gongyingshang := TForm_gongyingshang.Create(nil);
  try
    Form_gongyingshang.ShowModal;
  finally
    FreeAndNil(Form_gongyingshang);
  end;
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
  cxTabSheet11.Show;
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

procedure TForm_main.dxNavBar1Item9Click(Sender: TObject);
begin
  cxTabSheet12.Show;
  cxButton13.Click;
end;

procedure TForm_main.FormCreate(Sender: TObject);
begin
  cxPageControl_main.HideTabs:=true;
  cxPage_tihuoshenqing.HideTabs:=true;
  cxPageControl2.HideTabs:=true;
  cxTabSheet2.Show;

  cxDate_th_qishi.Date:=IncMonth(date,-1);
  cxDate_FH_qishi.Date:=IncMonth(date,-1);
  cxDate_TuiH_qishi.Date:=IncMonth(date,-1);
  cxDateEdit3.Date:=IncMonth(date,-1);
  cxDate_YL_Qishi.Date:=IncMonth(date,-1);

  qry_fenyuan.Close;
  qry_fenyuan.SQL.Text:='select abbr,name from 分院表 where sort_id<>0 union all select abbr=''全部'',name=''全部'' ';
  qry_fenyuan.Open;
end;

procedure TForm_main.ruku_caigao;
var
  str :string;
begin
  if cxDateEdit6.Text <> '' then
  begin
    if cxDateEdit5.Date > cxDateEdit6.Date then
    Application.MessageBox('日期选择不正确！', '提示', MB_OK);
    Exit;
  end;

  ADOQuery_ruku_zhubiao.Active := false;
  ADOQuery_ruku_zhubiao.SQL.Text := 'select * from 中央采购入库主表 where 状态 =1 and 入库时间 >= '+QuotedStr(cxDateEdit5.Text)  ;

  if cxDateEdit6.Text <> '' then
  begin
    str := cxDateEdit6.Text;
    ADOQuery_ruku_zhubiao.SQL.Text := ADOQuery_ruku_zhubiao.SQL.Text +' and 入库时间 <='+ QuotedStr(str) ;

  end;
  ADOQuery_ruku_zhubiao.SQL.Text := ADOQuery_ruku_zhubiao.SQL.Text + ' order by 编号 desc';
  ADOQuery_ruku_zhubiao.Active := True;
  ADOQuery_ruku_mingxi.Active := false;
  ADOQuery_ruku_mingxi.SQL.Text := 'select *  from 中央采购入库明细表 where 入库编号= '+
                                 QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('入库编号').AsString);
  ADOQuery_ruku_mingxi.Active := True;
end;

end.
