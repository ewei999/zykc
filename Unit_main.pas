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
  cxCurrencyEdit,Unit_FuHuoDan, cxGroupBox,unit_KaiPiao,Unit_KuCunJilu,Unit_gongyingshang,
  RuntimeInfo,system.StrUtils;

type
  TForm_main = class(TForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    ds_thshenqing: TDataSource;
    qry_thshenqing: TADOQuery;
    qry_thshenqing_mx: TADOQuery;
    ds_thshenqing_mx: TDataSource;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    qry_caigou_hz: TADOQuery;
    DataSource_caigou_hz: TDataSource;
    DataSource_cg_mingxi: TDataSource;
    qry_cg_mingxi: TADOQuery;
    qry_gys_list: TADOQuery;
    DataSource_gys_list: TDataSource;
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_close: TAction;
    Action_submit: TAction;
    dxNavBar1Item6: TdxNavBarItem;
    ds_fenyuan: TDataSource;
    qry_fenyuan: TADOQuery;
    ds_fuhuo_jilu: TDataSource;
    qry_fuhuo_jilu: TADOQuery;
    ADOQuery_ruku_zhubiao: TADOQuery;
    DataSource_ruku_zhubiao: TDataSource;
    ADOQuery_ruku_mingxi: TADOQuery;
    DataSource_ruku_mingxi: TDataSource;
    Action_ruku_new: TAction;
    dxNavBar1Item7: TdxNavBarItem;
    dxNavBar1Group4: TdxNavBarGroup;
    ds_Tuihuo: TDataSource;
    qry_Tuihuo: TADOQuery;
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
    qry_CaiGou_ShenPi: TADOQuery;
    ds_CaiGou_ShenPi: TDataSource;
    dxNavBar1Item10: TdxNavBarItem;
    qry_kucun: TADOQuery;
    ds_kucun: TDataSource;
    dxNavBar1Item11: TdxNavBarItem;
    dxNavBar1Item1: TdxNavBarItem;
    ds_TuiHuoJiLu: TDataSource;
    qry_TuiHuoJiLu: TADOQuery;
    dxNavBar1Item8: TdxNavBarItem;
    qry_fuhuo_jilu_xiangxi: TADOQuery;
    ds_fuhuo_jilu_xiangxi: TDataSource;
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Item14: TdxNavBarItem;
    ds_yongliang: TDataSource;
    qry_yongliang: TADOQuery;
    dxNavBar1Item15: TdxNavBarItem;
    qry_weishenpi: TADOQuery;
    ds_weishenpi: TDataSource;
    dxNavBar1Item16: TdxNavBarItem;
    dxNavBar1Item17: TdxNavBarItem;
    ds_caiwu: TDataSource;
    qry_caiwu: TADOQuery;
    dxNavBar1Item18: TdxNavBarItem;
    qry_JMB: TADOQuery;
    ds_JMB: TDataSource;
    pnl10: TPanel;
    cxPageControl_main: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl1: TPanel;
    cxLabel1: TcxLabel;
    cxDate_th_qishi: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxDate_th_zhongzhi: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxComboBox2: TcxComboBox;
    cxlbl17: TcxLabel;
    cxButton25: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxlbl18: TcxLabel;
    cxPage_tihuoshenqing: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn16: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn17: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn18: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    Panel2: TPanel;
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
    cxPageControl1: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxgrdbclmncxGridDBTableView3DBColumn: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxGridDBTableView3DBColumn13: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet7: TcxTabSheet;
    pnl2: TPanel;
    cxlbl1: TcxLabel;
    cxDate_FH_qishi: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxDate_FH_zhongzhi: TcxDateEdit;
    cxButton8: TcxButton;
    cxlbl3: TcxLabel;
    cxLookup_FH_fenyuan: TcxLookupComboBox;
    cxlbl4: TcxLabel;
    cxCombo_FH_Zhuangtai: TcxComboBox;
    cxButton20: TcxButton;
    cxButton26: TcxButton;
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
    cxGridDBTableView9Column5: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView9Column2: TcxGridDBColumn;
    cxGridDBTableView9Column3: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBTableView9Column4: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxTabSheet8: TcxTabSheet;
    Panel3: TPanel;
    cxLabel7: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxButton14: TcxButton;
    cxLabel10: TcxLabel;
    cxButton9: TcxButton;
    cxButton27: TcxButton;
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
    cxTabSheet9: TcxTabSheet;
    pnl3: TPanel;
    cxlbl5: TcxLabel;
    cxDate_TuiH_qishi: TcxDateEdit;
    cxlbl6: TcxLabel;
    cxDate_TuiH_zhongzhi: TcxDateEdit;
    cxButton19: TcxButton;
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
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxTabSheet13: TcxTabSheet;
    pnl5: TPanel;
    cxlbl7: TcxLabel;
    cxDate_KuCun_Qishi: TcxDateEdit;
    cxlbl8: TcxLabel;
    cxDate_KuCun_Zhongzhi: TcxDateEdit;
    cxButton15: TcxButton;
    cxTextEdit37: TcxTextEdit;
    cxlbl9: TcxLabel;
    cxButton18: TcxButton;
    cxButton24: TcxButton;
    cxButton29: TcxButton;
    cxGrid11: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBTableView8Column6: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBTableView8Column4: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBTableView8Column1: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBTableView8Column2: TcxGridDBColumn;
    cxGridDBTableView8Column5: TcxGridDBColumn;
    cxGridDBTableView8Column3: TcxGridDBColumn;
    cxGridDBTableView8Column7: TcxGridDBColumn;
    cxGridDBTableView8Column8: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
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
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBTableView6Column3: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxTabSheet15: TcxTabSheet;
    pnl7: TPanel;
    cxlbl14: TcxLabel;
    cxDate_YL_Qishi: TcxDateEdit;
    cxlbl15: TcxLabel;
    cxDate_YL_Zhongzhi: TcxDateEdit;
    cxButton22: TcxButton;
    cxlbl16: TcxLabel;
    cxText_YL_MC: TcxTextEdit;
    cxButton23: TcxButton;
    cxGrid13: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    cxTabSheet16: TcxTabSheet;
    cxGrid14: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cxTabSheet17: TcxTabSheet;
    pnl8: TPanel;
    cxlbl19: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxlbl20: TcxLabel;
    cxDateEdit8: TcxDateEdit;
    cxButton30: TcxButton;
    cxButton31: TcxButton;
    cxGrid15: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    cxTabSheet18: TcxTabSheet;
    pnl9: TPanel;
    cxButton33: TcxButton;
    cxTextEdit2: TcxTextEdit;
    cxlbl21: TcxLabel;
    cxButton32: TcxButton;
    cxGrid16: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBTableView13Column1: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    pnl11: TPanel;
    cxlblLabel_main: TcxLabel;
    cxGridDBTableView9Column6: TcxGridDBColumn;
    cxGridDBTableView9Column7: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
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
    procedure dxNavBar1Item17Click(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
    procedure dxNavBar1Item18Click(Sender: TObject);
    procedure cxButton32Click(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure cxGridDBTableView12CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid6DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    rktjstr,cktjstr:string;
    procedure CreateGrid(cxgridA:TcxGridDBTableView);
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
        Show_RuntimeInfo('���ڴ�');
        Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
        Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                      ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
        Form_cg_new.ADOQuery_cg_zhubiao.Active := True;
        Form_cg_new.ADOQuery_cg_zhubiao.Edit;

        Form_cg_new.ADOQuery_cg_mingxi.Active := false;
        Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  *,�ɹ���¼=(case when isnull(�����ϸ���,'''')='''' then '''' else ''�����'' end ) from ����ɹ�������ϸ��'+
                                                      ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
        Form_cg_new.ADOQuery_cg_mingxi.Active := True;

        Form_cg_new.ADOQuery_cg_mingxi.DisableControls;
        Form_cg_new.ADOQuery_cg_mingxi.First;
        while not Form_cg_new.ADOQuery_cg_mingxi.Eof do
        begin
          Form_cg_new.ADOQuery_cg_mingxi.Edit;
          Form_cg_new.ADOQuery_cg_mingxi.FieldByName('���').AsFloat:= ChaXunKuCun(Form_cg_new.ADOQuery_cg_mingxi.FieldByName('��Ŀ���').asstring);
          Form_cg_new.ADOQuery_cg_mingxi.Post;
          Form_cg_new.ADOQuery_cg_mingxi.Next;
        end;
        Form_cg_new.ADOQuery_cg_mingxi.First;
        Form_cg_new.ADOQuery_cg_mingxi.EnableControls;
        Form_cg_new.ADOQuery_cg_mingxi.Edit;

        Form_cg_new.button_zhuanti('edit');
        Form_cg_new.Action_new_m.Enabled := true;
        Form_cg_new.Action_delete_m.Enabled := true;
        hide_RuntimeInfo;

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
    begin
      Application.MessageBox('����ѡ����ȷ��', '��ʾ', MB_OK);
      Exit;
    end;
  end;

  qry_caigou_hz.Active := false;
  qry_caigou_hz.SQL.Text := 'select *, '+
    ' zt=(case ״̬ when 0 then ''�ݸ�'' when 1 then ''���ύ'' when 3 then ''�������'' when 4 then ''�˻�'' end ), '+
    ' ������=(select count(*) from ����ɹ�������ϸ�� where ������=a.������) '+
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
  cxGridDBTableView8Column1.Visible:=true;
  cxGridDBTableView8Column2.Visible:=true;
  cxGridDBTableView8Column7.Visible:=true;
  qry_kucun.Close;
  qry_kucun.SQL.Text:='select *,���=�������-��������-δ����,�����=(case when �������-��������-δ����=0 then 0 else �����-������ end),'+
    ' ��Ӧ��=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=c.gys) '+
    ' from ( select a.*, '+
    ' ��������=isnull((select sum(��������) from ������_����� where ״̬=2  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ��� and ��Ӧ��=a.gys) ,0), '+ sjdstr+
    ' δ����=isnull((select sum(��������) from ������_����� where ״̬=1  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ��� and ��Ӧ��=a.gys) ,0), '+
    ' ������=isnull((select sum(������) from ������_����� where ״̬ in (1,2)  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ���  and ��Ӧ��=a.gys) ,0), '+
    ' b.����,b.���,��λ=(case when isnull(b.��浥λ,'''')<>'''' then b.��浥λ else b.��λ end),b.���,b.С��,b.������'+
    ' from ( '+
    ' select ��Ŀ���,gys,sum(isnull(����,0)) as �������,sum(isnull(���,0)) as �����   from ('+
    ' select * ,gys=(select top 1 ��Ӧ�� from ����ɹ�������� where �����=t.����� ) from ('+
    '  select ��Ŀ���,����� ,����,��� from ����ɹ������ϸ�� '+
    ' where ����� in (select ����� from ����ɹ�������� where ״̬=1)'+ mctj+
    ' )t)y group by ��Ŀ���,gys '+
    ' )a left join ҩƷ��Ʒ��Ŀ�� b on a.��Ŀ���=b.��Ŀ��� )c  order by gys,����';
  qry_kucun.Open;
end;

procedure TForm_main.cxButton17Click(Sender: TObject);
var
  tjstr:string;
begin
  tjstr:='';
  if (cxLookupComboBox1.Text<>'') and (cxLookupComboBox1.Text<>'ȫ��') then
    tjstr:=tjstr+' and �ֵ����='+QuotedStr(cxLookupComboBox1.EditValue)+'';
  if cxDateEdit3.Text<>'' then
    tjstr:=tjstr+' and ����ʱ��>='+QuotedStr(cxDateEdit3.Text)+'';
  if cxDateEdit4.Text<>'' then
    tjstr:=tjstr+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDateEdit4.date,1)))+'';
  if cxComboBox1.Text='������' then
    tjstr:=tjstr+' and ״̬=1 ';
  if cxComboBox1.Text='�Ѵ���' then
    tjstr:=tjstr+' and ״̬=2 ';

  qry_TuiHuoJiLu.Close;
  qry_TuiHuoJiLu.SQL.Text:='select *, '+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����) ,'+
    ' zt=(case ״̬ when 1 then ''������'' when 2 then ''�Ѵ���''  end) '+
    ' from ( select ������,����ʱ��,����,��������,������,����,������,�ֵ����,��Ӧ��,״̬,'+
    ' �ŵ������,�ŵ����ʱ�� from ������_����� where �Ƿ�����=0  and left(������,2)=''TH'' '+tjstr+
    ' )a order by  ����ʱ��';
  qry_TuiHuoJiLu.Open;
end;

procedure TForm_main.cxButton18Click(Sender: TObject);
var
  j:integer;
begin
  DataModule1.ADOQuery_dayin.Close;
  DataModule1.ADOQuery_dayin.sql.text :='select Row_Number() OVER ( order by mc,gys ) rank,*,kc=rk-ck-fjs from ( select a.rk, '+
  '  gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.gys),'+
  ' ck=isnull((select sum(��������) from ������_����� where ״̬=2  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ��� and ��Ӧ��=a.gys) ,0),'+
  ' fjs=isnull((select sum(��������) from ������_����� where ״̬=1  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ��� and ��Ӧ��=a.gys) ,0),'+
  ' b.���� as mc,b.��� as gg,dw=(case when isnull(b.��浥λ,'''')<>'''' then b.��浥λ else b.��λ end),b.��װ��� as bz  from ('+
  '  select ��Ŀ���,sum(isnull(����,0)) as rk,gys  from ( '+
  ' select *  ,gys=(select top 1 ��Ӧ��  from ����ɹ�������� where ����� =x.����� )'+
  ' from (  select ��Ŀ���,�����,����  from ����ɹ������ϸ��  where ����� in (select ����� from ����ɹ�������� where ״̬=1)'+
  ' and ��Ŀ��� in (select ��Ŀ��� from ҩƷ��Ʒ��Ŀ�� where ���=1)'+
  '  )x)y  group by ��Ŀ���,gys )a left join ҩƷ��Ʒ��Ŀ�� b on a.��Ŀ���=b.��Ŀ��� )c order by mc,gys';
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
    tjstr:=tjstr+' and ��������>='+QuotedStr(cxDate_TuiH_qishi.Text)+'';
  if cxDate_TuiH_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and ��������<'+QuotedStr(DateToStr(incday(cxDate_TuiH_zhongzhi.date,1)))+'';

  qry_Tuihuo.Close;
  qry_Tuihuo.SQL.Text:='select *, ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ) ,'+
    ' ��������=(select sum(����) from ���������ϸ�� where ������=a.������ ) ,'+
    ' zt=(case ״̬ when 2 then ''������'' when 5 then ''ͬ���˻�'' when 6 then ''�ܾ��˻�'' end)  '+
    ' from ( select * from ����������� where �Ƿ�����=0 and ״̬ not in (0,1,3,4) and ���=2 '+tjstr+' )a order by ��������';
  qry_Tuihuo.Open;
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
  if (cxComboBox2.Text='δ����') then
    tjstr:=tjstr+' and ������ in (select ������ from ���������ϸ�� where ״̬=1)'
  else if (cxComboBox2.Text='�Ѵ���') then
    tjstr:=tjstr+' and ������ in (select ������ from ���������ϸ�� where ״̬ in (2,3))';

  qry_thshenqing.Close;
  qry_thshenqing.SQL.Text:='select *, ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ) ,'+
    ' ��������=(select sum(����) from ���������ϸ�� where ������=a.������ ) ,'+
    ' �Ѹ�������=isnull((select sum(����) from ���������ϸ�� where ������=a.������ and ״̬=2 ),0) , '+
    ' ����������=isnull((select sum(����) from ���������ϸ�� where ������=a.������ and ״̬=3 ),0)  '+
    ' from ( select * from ����������� where �Ƿ�����=0 and ״̬=2 and ���=1 '+tjstr+' )a order by ��������';
  qry_thshenqing.Open;

  cxTabSheet2.Show;
end;

procedure TForm_main.cxButton20Click(Sender: TObject);
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

  qry_fuhuo_jilu_xiangxi.Close;
  qry_fuhuo_jilu_xiangxi.SQL.Text:='select *,zt=(case ״̬ when 1 then ''������'' when 2 then ''���ճɹ�'' when 3 then ''��ͬ�����'' end) , '+
  ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ), '+
  ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��),'+
  ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���),'+
  ' С��=(select top 1 С�� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���),'+
  ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���),'+
  ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ���) from ( '+
  ' select ������,����ʱ��,����,��������,����,������,������,��Ӧ��,�ֵ����,״̬,�ŵ������,�ŵ����ʱ��,��Ŀ���,������,��ע '+
  ' from ������_����� where �Ƿ�����=0 and ��������<>0 '+tjstr+' )a order by ����ʱ��';
  qry_fuhuo_jilu_xiangxi.Open;

  cxTabSheet14.Show;
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


procedure TForm_main.CreateGrid(cxgridA:TcxGridDBTableView);
var
  i,x :integer;
  cl  : TcxGridDBcolumn;
begin
  x:=0;
  cxgridA.BeginUpdate;
  try
    cxgridA.ClearItems;
    cxgridA.DataController.Summary.FooterSummaryItems.Clear;

    for i := 0 to cxgridA.DataController.DataSet.FieldCount - 1 do
    begin
      cl  :=  cxgridA.CreateColumn;
      cl.DataBinding.FieldName := cxgridA.DataController.DataSet.Fields[i].FieldName;

      if (cl.DataBinding.FieldName='����') or (RightStr(cl.DataBinding.FieldName,2)='����')  then
      begin
        if cl.DataBinding.FieldName='����' then
          cl.Styles.Content:=cxStyle1;
        cl.PropertiesClassName := 'TcxCurrencyEditProperties';
        TcxCurrencyEditProperties(cl.Properties).DisplayFormat:='0.00';
        cl.Summary.FooterKind:=skSum;
        cl.Summary.FooterFormat:='0.00';
      end;

      if (cl.DataBinding.FieldName='��Ŀ���') then
        cl.Width := 90
      else if (cl.DataBinding.FieldName='����') then
        cl.Width := 150
      else if (cl.DataBinding.FieldName='ԭ����') then
        cl.Width := 100
      else
        cl.Width := 70;

      if cl.DataBinding.FieldName='��Ӧ��id' then
        cl.Visible:=false;

      if (cl.Visible) and (x=0) then
      begin
        x:=11;
        cl.Summary.FooterKind:=skCount;
        cl.Summary.FooterFormat:='�ϼƣ�0';
      end;
    end;
  finally
    cxgridA.EndUpdate;
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
    sysj:=sysj+' and �շ�ʱ��>='+QuotedStr(cxDate_YL_Qishi.Text)+'';
    cksj:=cksj+' and ����ʱ��>='+QuotedStr(cxDate_YL_Qishi.Text)+'';
  end;
  if cxDate_YL_Zhongzhi.Text<>'' then
  begin
    sysj:=sysj+' and �շ�ʱ��<'+QuotedStr(DateToStr(incday(cxDate_YL_Zhongzhi.date,1)))+'';
    cksj:=cksj+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDate_YL_Zhongzhi.date,1)))+'';
  end;

  mcstr:='';
  if trim(cxText_YL_MC.Text)<>'' then
    mcstr:=' and (���� like '+QuotedStr('%'+Trim(cxText_YL_MC.Text)+'%')+' or ԭ���� like '+QuotedStr('%'+Trim(cxText_YL_MC.Text)+'%')+') ';

  fenystr:='';
  sqlstr:='';
  hejistr:=',�ϼ�=0';
  DataModule1.openSql('select name,abbr from ��Ժ�� where sort_id<>0');
  while not DataModule1.ADOQuery_L.Eof do
  begin
    if fenystr='' then
      fenystr:=','+DataModule1.ADOQuery_L.FieldByName('name').AsString+'=isnull('+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.����,0) '
    else
      fenystr:=fenystr+','+DataModule1.ADOQuery_L.FieldByName('name').AsString+'=isnull('+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.����,0) ';

    hejistr:=hejistr+'+isnull('+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.����,0)';

    sqlstr:=sqlstr+' left join ( select ��Ŀ���,sum(����) as ���� from ('+
    ' select ��Ŀ���,���� from [mgpet'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'].[dbo].[������ϸ��] where ״̬ in (2,3) '+
    ' and �շѱ�� in (select �շѱ�� from [mgpet'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'].[dbo].[�շѼ�¼��] '+
    ' where 1=1 '+sysj+' )  union all '+
    ' select ��Ŀ���,�������� from [mgpet'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'].[dbo].[�����] where �Ƿ�����=0 and left(��ע,2)=''MX'' '+cksj+
    ' )x group by ��Ŀ��� )'+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+' on a.��Ŀ���='+DataModule1.ADOQuery_L.FieldByName('abbr').AsString+'.��Ŀ���';


    DataModule1.ADOQuery_L.Next;
  end;

  qry_yongliang.Close;
  qry_yongliang.SQL.Text:='select * from ( select a.* '+fenystr+hejistr+'  from ( '+
    '  select ��Ŀ���,����,ԭ����,���,���,��λ from ҩƷ��Ʒ��Ŀ��  where �Ƿ�����=0 and ���=1 and isnull(�Ƿ��ײ�,0)=0 '+
    ' and ��� in (''ҩƷ'',''����'',''����'') '+mcstr+' )a'+sqlstr+')t order by ���� ';
  qry_yongliang.Open;

  if cxGridDBTableView10.DataController.ItemCount=0 then
    CreateGrid(cxGridDBTableView10);

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
  qry_kucun.Close;
  qry_kucun.SQL.Text:='select *,���=�������-��������-δ����, '+
  ' ��Ӧ��=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=c.gys) '+
  ' from ( select *, '+
  ' gys=(select top 1 ��Ӧ�� from ����ɹ�������� where �����=(select top 1 ����� from ����ɹ������ϸ��'+
  ' 	where ��Ŀ���=x.��Ŀ��� and ����� in (select ����� from ����ɹ�������� where ״̬=1) order by ��� desc)) ,'+
  ' �������=isnull((select sum(����) from ����ɹ������ϸ�� where ��Ŀ���=x.��Ŀ��� and ����� in (select ����� from ����ɹ�������� where ״̬=1) ),0) ,'+
  ' ��������=isnull((select sum(��������) from ������_����� where ״̬=2  and �Ƿ�����=0 and ��Ŀ���=x.��Ŀ��� ) ,0),'+
  ' δ����=isnull((select sum(��������) from ������_����� where ״̬=1  and �Ƿ�����=0 and ��Ŀ���=x.��Ŀ���) ,0) '+
  ' from ( select ��Ŀ���,����,���,��λ=(case when isnull(��浥λ,'''')<>'''' then ��浥λ else ��λ end),���,С��,������ '+
  '  from ҩƷ��Ʒ��Ŀ�� where �Ƿ�����=0 and isnull(�Ƿ��ײ�,0)=0 and ���=1 and ���=1 and isnull(������,'''')<>'''' )x)c order by ����';
  qry_kucun.Open;
end;

procedure TForm_main.cxButton2Click(Sender: TObject);
var
  tjstr,ztstr:string;
begin
  tjstr:='';
  ztstr:='';
  if cxDate_th_qishi.Text<>'' then
    tjstr:=tjstr+' and ��������>='+QuotedStr(cxDate_th_qishi.Text)+'';
  if cxDate_th_zhongzhi.Text<>'' then
    tjstr:=tjstr+' and ��������<'+QuotedStr(DateToStr(incday(cxDate_th_zhongzhi.date,1)))+'';
  if cxComboBox2.Text='δ����' then
    ztstr:=ztstr+' and ״̬=1 '
  else if cxComboBox2.Text='�Ѵ���' then
    ztstr:=ztstr+' and ״̬ in (2,3) ';
  if Trim(cxTextEdit1.Text)<>'' then
    ztstr:=ztstr+'  and ��Ŀ��� in (select ��Ŀ��� from ҩƷ��Ʒ��Ŀ�� where ���� like ''%'+Trim(cxTextEdit1.Text)+'%'' or ԭ���� like ''%'+Trim(cxTextEdit1.Text)+'%'' )';

  qry_thshenqing_mx.Close;
  qry_thshenqing_mx.SQL.Text:='select *,�ֿ���=�������-��������,'+
    ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱�� =(select top 1 ��Ӧ�� from ����ɹ�������� where �����=b.cgrk))'+
    ' from ( select *,'+
    ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=(select top 1 �ֵ���� from ����������� '+
    ' 	where  ������=a.������) ) , '+
    ' ��������=(select top 1 �������� from ����������� where ������=a.������),'+
    ' ��������=(select top 1 ����ʱ�� from ������������� where ������=a.������ order by ��� desc),'+
    ' mc=����,'+
    ' ������=(select top 1 ������ from ����������� where ������=a.������) ,'+
    ' zt=(case when ״̬=1 then ''δ����'' when ״̬=2 then ''�Ѹ���'' when ״̬=3 then ''������'' end), '+
    ' �������=isnull((select sum(isnull(����,0))  from ����ɹ������ϸ�� '+
    '   where ����� in (select ����� from ����ɹ�������� where ״̬=1) and ��Ŀ���=a.��Ŀ���),0),'+
    '  cgrk=(select top 1 �����  from ����ɹ������ϸ��  where  ��Ŀ���=a.��Ŀ��� order by ��� desc),'+
    ' ��������=isnull((select sum(��������) from ������_����� where ״̬ in (1,2)  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ���),0)'+
    ' from ( select * from ���������ϸ�� '+
    ' where ������ in (select ������ from  ����������� where �Ƿ�����=0 and ״̬=2 and ���=1  '+tjstr+') '+ztstr+
    ' )a)b order by ��������';
  qry_thshenqing_mx.Open;

  cxTabSheet3.Show;
end;

procedure TForm_main.cxButton30Click(Sender: TObject);
var
  tjstr,ckstr,fystr:string;
  i:integer;
  heji:Real;
begin
  if cxDateEdit7.Text='' then
  begin
    Application.MessageBox('��ѡ��ͳ�ƿ�ʼ����', '��ʾ', MB_OK);
    exit;
  end;
  if cxDateEdit8.Text='' then
  begin
    Application.MessageBox('��ѡ��ͳ����ֹ����', '��ʾ', MB_OK);
    exit;
  end;

  Show_RuntimeInfo('����ͳ��');
  tjstr:='select  top 0 ������ as ���,������ as ��Ӧ��id,������ as ��Ӧ������,  ���� as ���� ';
  DataModule1.openSql('	select abbr,name from ��Ժ�� where sort_id<>0');
  while not DataModule1.ADOQuery_L.Eof do
  begin
    tjstr:=tjstr+',���� as '+DataModule1.ADOQuery_L.FieldByName('name').AsString+'����,������ as '+DataModule1.ADOQuery_L.FieldByName('name').AsString+'��Ʊ';
    DataModule1.ADOQuery_L.Next;
  end;

  tjstr:=tjstr+',���� as С��,���� as ��� from ���������ϸ��';
  qry_caiwu.Close;
  qry_caiwu.SQL.Text:=tjstr;
  qry_caiwu.Open;

  tjstr:='';
  ckstr:='';
  if cxDateEdit7.Text<>'' then
  begin
    tjstr:=tjstr+' and ���ʱ��>='+QuotedStr(cxDateEdit7.Text)+' ';
    ckstr:=ckstr+' and ����ʱ��>='+QuotedStr(cxDateEdit7.Text)+' ';
  end;
  if cxDateEdit8.Text<>'' then
  begin
    tjstr:=tjstr+' and ���ʱ��<'+QuotedStr(DateToStr(incday(cxDateEdit8.date,1)))+' ';
    ckstr:=ckstr+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDateEdit8.date,1)))+' ';
  end;

  i:=0;
  DataModule1.openSql('	select abbr,name from ��Ժ�� where sort_id<>0');
  while not DataModule1.ADOQuery_L.Eof do
  begin
    DataModule1.openSql2('	select *, '+
    '	���=isnull((select sum(������) from ������_����� where �Ƿ�����=0 and ״̬ in (1,2) and ��Ӧ��=a.��Ӧ�̱��'+
    ' and �ֵ���� ='+QuotedStr(DataModule1.ADOQuery_L.FieldByName('abbr').AsString)+' '+ckstr+' ),0),'+
    ' ����=isnull((select sum(�ϼƽ��) as ���� from ����ɹ�������� where ״̬=1  and ��Ӧ��=a.��Ӧ�̱�� '+tjstr+'),0)'+
    '	from ( 	select  ��Ӧ�̱��,����	from ��Ӧ�̱� where �Ƿ�����=0 )a');
    while not DataModule1.ADOQuery_L2.Eof  do
    begin
      if qry_caiwu.Locate('��Ӧ������',DataModule1.ADOQuery_L2.FieldByName('����').AsString,[]) then
      begin
        qry_caiwu.Edit;
      end
      else
      begin
        i:=i+1;
        qry_caiwu.Append;
        qry_caiwu.FieldByName('���').AsString:=IntToStr(i);
        qry_caiwu.FieldByName('��Ӧ������').AsString:=DataModule1.ADOQuery_L2.FieldByName('����').AsString;
        qry_caiwu.FieldByName('��Ӧ��id').AsString:=DataModule1.ADOQuery_L2.FieldByName('��Ӧ�̱��').AsString;
        qry_caiwu.FieldByName('����').AsFloat:=DataModule1.ADOQuery_L2.FieldByName('����').AsFloat;
      end;
      qry_caiwu.FieldByName(DataModule1.ADOQuery_L.FieldByName('name').AsString+'����').AsFloat:=DataModule1.ADOQuery_L2.FieldByName('���').AsFloat;
      qry_caiwu.FieldByName(DataModule1.ADOQuery_L.FieldByName('name').AsString+'��Ʊ').AsString:='';
      qry_caiwu.Post;

      DataModule1.ADOQuery_L2.Next;
    end;

    DataModule1.ADOQuery_L.Next;
  end;

  qry_caiwu.DisableControls;
  qry_caiwu.First;
  while not qry_caiwu.Eof do
  begin
    heji:=0;
    for I := 0 to qry_caiwu.FieldCount-1 do
    begin
      if RightStr(qry_caiwu.Fields[i].FieldName,2)='����' then
      begin
        heji:=heji+qry_caiwu.FieldByName(qry_caiwu.Fields[i].FieldName).AsFloat;
      end;
    end;
    qry_caiwu.Edit;
    qry_caiwu.FieldByName('С��').AsFloat:=heji;
    qry_caiwu.FieldByName('���').AsFloat:=qry_caiwu.FieldByName('����').AsFloat-heji;
    qry_caiwu.Post;

    qry_caiwu.Next;
  end;
  qry_caiwu.EnableControls;

  if cxGridDBTableView12.DataController.ItemCount=0 then
    CreateGrid(cxGridDBTableView12);

  hide_RuntimeInfo;
end;

procedure TForm_main.cxButton31Click(Sender: TObject);
begin
  DaochuExcel(cxGrid15);
end;

procedure TForm_main.cxButton32Click(Sender: TObject);
begin
  if Application.MessageBox('ȷ�ϱ�����', 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  qry_JMB.Edit;
  qry_JMB.Post;
  qry_JMB.UpdateBatch();
  qry_JMB.Edit;
  Application.MessageBox('����ɹ�', '��ʾ', MB_OK);
end;

procedure TForm_main.cxButton33Click(Sender: TObject);
begin
  DaochuExcel(cxGrid16);
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
    ' from ( select ������ from ������_����� where �Ƿ�����=0 and left(������,2)<>''TH'' '+tjstr+
    ' group by ������ )a)b order by ����ʱ��';
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

procedure TForm_main.cxGrid6DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_ruku_new := TForm_ruku_new.Create(nil);
  try
    Form_ruku_new.ADOQuery_cg_zhubiao.Active := False;
    Form_ruku_new.ADOQuery_cg_zhubiao.SQL.Text := 'select * from ����ɹ�������� where �����='+
                                  QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
    Form_ruku_new.ADOQuery_cg_zhubiao.Active := true;
    Form_ruku_new.ADOQuery_cg_zhubiao.Edit;

    Form_ruku_new.ADOQuery_cg_mingxi.Active := false;
    Form_ruku_new.ADOQuery_cg_mingxi.SQL.Text := 'select * from ����ɹ������ϸ�� where �����='
                                +QuotedStr(ADOQuery_ruku_zhubiao.FieldByName('�����').AsString);
    Form_ruku_new.ADOQuery_cg_mingxi.Active := true;
    Form_ruku_new.ADOQuery_cg_mingxi.Edit;

    Form_ruku_new.button_zhuanti('edit');
    Form_ruku_new.ShowModal;
  finally
    FreeAndNil(form_ruku_new);
  end;

  ADOQuery_ruku_zhubiao.Requery();
  ADOQuery_ruku_mingxi.Requery();
end;

procedure TForm_main.cxGridDBTableView11CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form_caigou_shenqing_new := TForm_caigou_shenqing_new.Create(nil);
  try
    Form_caigou_shenqing_new.zt := 'chakan';
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_weishenpi.FieldByName('������').asstring;
    Form_caigou_shenqing_new.ShowModal;
  finally
    FreeAndNil(Form_caigou_shenqing_new);
  end;
end;

procedure TForm_main.cxGridDBTableView12CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGridDBTableView12.Controller.FocusedColumn.VisibleCaption='����' then
  begin
    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='���';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:='select * , '+
      ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=(select top 1 ��Ӧ�� from ����ɹ�������� where �����=a.����� )) '+
      ' from ( select * '+
      ' from ����ɹ������ϸ�� where ����� in (select ����� from ����ɹ�������� where ״̬=1 '+
      ' and ��Ӧ��='+QuotedStr(qry_caiwu.FieldByName('��Ӧ��id').AsString)+''+
      ' and ���ʱ��>='+QuotedStr(cxDateEdit7.Text)+' and ���ʱ��<'+QuotedStr(DateToStr(incday(cxDateEdit8.date,1)))+' ) )a '+
      ' order by ���ʱ��';
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;

  if RightStr(cxGridDBTableView12.Controller.FocusedColumn.VisibleCaption,2) = '����' then
  begin
    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='����';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:= 'select * , '+
      ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��), '+
      ' �ֵ�=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����), '+
      ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� ),'+
      ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� )'+
      ' from ( select * from ������_����� '+
      ' where ״̬ in (1,2) and �Ƿ�����=0 and ��Ӧ��='+QuotedStr(qry_caiwu.FieldByName('��Ӧ��id').AsString)+' '+
      ' and �ֵ���� in (select abbr from ��Ժ�� where name='+QuotedStr(copy(cxGridDBTableView12.Controller.FocusedColumn.VisibleCaption,1,length(cxGridDBTableView12.Controller.FocusedColumn.VisibleCaption)-2))+') '+
      ' and ����ʱ��>='+QuotedStr(cxDateEdit7.Text)+' and ����ʱ��<'+QuotedStr(DateToStr(incday(cxDateEdit8.date,1)))+')a order by ����ʱ��';
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;
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
    Show_RuntimeInfo('���ڴ�');
    Form_cg_new.ADOQuery_cg_zhubiao.Active := false;
    Form_cg_new.ADOQuery_cg_zhubiao.SQL.Text  := 'select  * from ����ɹ���������'+
                                                  ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
    Form_cg_new.ADOQuery_cg_zhubiao.Active := True;

    Form_cg_new.ADOQuery_cg_mingxi.Active := false;
    Form_cg_new.ADOQuery_cg_mingxi.SQL.Text  := 'select  *,�ɹ���¼=(case when isnull(�����ϸ���,'''')='''' then '''' else ''�����'' end ) from ����ɹ�������ϸ��'+
                                                  ' where ������='+QuotedStr(qry_caigou_hz.FieldByName('������').AsString);
    Form_cg_new.ADOQuery_cg_mingxi.Active := True;
    Form_cg_new.ADOQuery_cg_mingxi.DisableControls;
    Form_cg_new.ADOQuery_cg_mingxi.First;
    while not Form_cg_new.ADOQuery_cg_mingxi.Eof do
    begin
      Form_cg_new.ADOQuery_cg_mingxi.Edit;
      Form_cg_new.ADOQuery_cg_mingxi.FieldByName('���').AsFloat:= ChaXunKuCun(Form_cg_new.ADOQuery_cg_mingxi.FieldByName('��Ŀ���').asstring);
      Form_cg_new.ADOQuery_cg_mingxi.Post;
      Form_cg_new.ADOQuery_cg_mingxi.Next;
    end;
    Form_cg_new.ADOQuery_cg_mingxi.First;
    Form_cg_new.ADOQuery_cg_mingxi.EnableControls;

    Form_cg_new.button_zhuanti('chakan');
    hide_RuntimeInfo;

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
    if Form_FuHuoDan.baocun then
      qry_fuhuo_jilu.Requery();
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
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_Tuihuo.FieldByName('������').asstring;
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
    Form_caigou_shenqing_new.cxLabel_bianhao.Caption := qry_TuiHuoJiLu.FieldByName('������').asstring;
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
      ' and ����� in (select ����� from ����ɹ�������� where ״̬=1 and ��Ӧ��='+QuotedStr(qry_kucun.FieldByName('gys').AsString)+' :tj ) )a '+
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
      ' where ״̬=2 and �Ƿ�����=0 :tj and ��Ӧ��='+QuotedStr(qry_kucun.FieldByName('gys').AsString)+' '+
      ' and ��Ŀ���='+QuotedStr(qry_kucun.FieldByName('��Ŀ���').AsString)+' )a order by ����ʱ��';

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
  if (cxGridDBTableView8.Controller.FocusedColumn.VisibleCaption = 'δ��������') then
  begin
    sqlstr:= 'select * , '+
      ' gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��), '+
      ' �ֵ�=(select top 1 name from ��Ժ�� where abbr=a.�ֵ����), '+
      ' ���=(select top 1 ��� from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� ),'+
      ' ��λ=(select top 1 ��λ from ҩƷ��Ʒ��Ŀ�� where ��Ŀ���=a.��Ŀ��� )'+
      ' from ( select * from ������_����� '+
      ' where ״̬=1 and �Ƿ�����=0 and ��Ӧ��='+QuotedStr(qry_kucun.FieldByName('gys').AsString)+''+
      ' and ��Ŀ���='+QuotedStr(qry_kucun.FieldByName('��Ŀ���').AsString)+' )a order by ����ʱ��';

    Form_KuCunJilu := TForm_KuCunJilu.Create(nil);
    try
      Form_KuCunJilu.leibie:='δ����';
      Form_KuCunJilu.qry_leibiao.Close;
      Form_KuCunJilu.qry_leibiao.SQL.Text:= sqlstr;
      Form_KuCunJilu.qry_leibiao.Open;
      Form_KuCunJilu.ShowModal;
    finally
      FreeAndNil(Form_KuCunJilu);
    end;
  end;

end;

procedure TForm_main.cxTextEdit2PropertiesChange(Sender: TObject);
begin
  if Trim(cxTextEdit2.Text)<> '' then
  begin
    qry_JMB.Filtered := False;
    qry_JMB.Filter :='ƴ�� like '+QuotedStr('%'+cxTextEdit2.Text+'%')+' or ԭ���� like '+QuotedStr('%'+cxTextEdit2.Text+'%')+' or ���� like '+QuotedStr('%'+cxTextEdit2.Text+'%');
    qry_JMB.Filtered := True;
  end else
  begin
    qry_JMB.Filtered := False;
  end;
end;

procedure TForm_main.dxNavBar1Group1Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet1.Show;
  cxTabSheet2.Show;
end;

procedure TForm_main.dxNavBar1Group4Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet9.Show;
end;

procedure TForm_main.dxNavBar1Item10Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet13.Show;
  cxTextEdit37.SetFocus;
end;

procedure TForm_main.dxNavBar1Item11Click(Sender: TObject);
begin
  Form_fuhuo := tForm_fuhuo.Create(nil);
  try
    Form_fuhuo.laiyuan:='��������';
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
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet15.Show;
end;

procedure TForm_main.dxNavBar1Item15Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  qry_weishenpi.close;
  qry_weishenpi.SQL.Text:='select * , '+
  ' ��Ժ=(select top 1 name from ��Ժ�� where abbr=a.�ֵ���� ) , '+
  ' ���1=(case when ���=1 then ''���'' else ''�� ��'' end), '+
  ' ��������=(select sum(����) from ���������ϸ�� where ������=a.������ ) '+
  ' from ( select * from ����������� where �Ƿ�����=0 and ״̬=1 )a order by ��������';
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

procedure TForm_main.dxNavBar1Item17Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet17.Show;
end;

procedure TForm_main.dxNavBar1Item18Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;

  qry_JMB.Close;
  qry_JMB.SQL.Text:='	select ���,��Ŀ���,����,���,����=(case when isnull(����,0)=0 then ���� else ���� end),'+
    ' ��λ,���,С��,���ۼ�,��װ���,��浥λ,ƴ��,ԭ����,������'+
    '	from ( select ���,��Ŀ���,����,���,����,��λ,���,С��,���ۼ�,��װ���,��浥λ,ƴ��,ԭ����,������,��ʱ����, '+
    ' ����=(select top 1 �������� from ����ɹ������ϸ�� where ��Ŀ���=ҩƷ��Ʒ��Ŀ��.��Ŀ��� order by ��� desc) '+
    '	from ҩƷ��Ʒ��Ŀ��	where �Ƿ�����=0 and ���=1 and ���=1)a	order by ����';
  qry_JMB.Open;
  qry_JMB.Edit;
  cxTabSheet18.Show;
end;

procedure TForm_main.dxNavBar1Item1Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet10.Show;
end;

procedure TForm_main.dxNavBar1Item2Click(Sender: TObject);
begin
  Form_fuhuo := tForm_fuhuo.Create(nil);
  try
    Form_fuhuo.laiyuan:='�����뵥';
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
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet4.Show;
  qry_gys_list.Open;
  cxDateEdit1.Date := IncMonth(date,-1);
  caigou_shenqing;
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
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet8.show;
  qry_gys_list.Open;
  cxDateEdit5.Date := IncMonth(date,-1);
  ADOQuery_ruku_zhubiao.Active := false;
  ruku_caigao;
end;

procedure TForm_main.dxNavBar1Item6Click(Sender: TObject);
begin
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
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
  cxlblLabel_main.Caption := TdxNavBarItem(Sender).caption;
  cxTabSheet12.Show;
  cxButton13.Click;
end;

procedure TForm_main.FormCreate(Sender: TObject);
begin
  cxPageControl_main.HideTabs:=true;
  cxPage_tihuoshenqing.HideTabs:=true;
  cxPageControl2.HideTabs:=true;
  cxTabSheet2.Show;
  cxlblLabel_main.Caption:='';

  cxDate_th_qishi.Date:=IncMonth(date,-1);
  cxDate_FH_qishi.Date:=IncMonth(date,-1);
  cxDate_TuiH_qishi.Date:=IncMonth(date,-1);
  cxDateEdit3.Date:=IncMonth(date,-1);
  cxDate_YL_Qishi.Date:=IncMonth(date,-1);

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
