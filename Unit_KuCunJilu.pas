unit Unit_KuCunJilu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, cxButtons, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxCalendar;

type
  TForm_KuCunJilu = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    cxButton8: TcxButton;
    actmgr1: TActionManager;
    act_close: TAction;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid11: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBTableView8Column4: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBTableView8Column1: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBTableView8Column2: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    qry_leibiao: TADOQuery;
    ds_leibiao: TDataSource;
    cxTabSheet2: TcxTabSheet;
    cxGridDBTableView8Column3: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView8Column5: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    leibie:string;
  end;

var
  Form_KuCunJilu: TForm_KuCunJilu;

implementation
  uses Unit_DM;
{$R *.dfm}

procedure TForm_KuCunJilu.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_KuCunJilu.FormCreate(Sender: TObject);
begin
  cxPageControl1.HideTabs:=true;
end;

procedure TForm_KuCunJilu.FormShow(Sender: TObject);
begin
  if leibie='入库' then
  begin
    cxTabSheet1.Show;
    cxlbl1.Caption:='入库记录';
    Self.Caption:='入库记录';
  end;
  if leibie='出库' then
  begin
    cxTabSheet2.Show;
    cxlbl1.Caption:='出库记录';
    Self.Caption:='出库记录';
  end;
  if leibie='未接收' then
  begin
    cxTabSheet2.Show;
    cxlbl1.Caption:='未接收记录';
    Self.Caption:='未接收记录';
  end;
  if leibie='采购记录' then
  begin
    cxTabSheet3.Show;
    cxlbl1.Caption:='采购记录';
    Self.Caption:='采购记录';
  end;
end;

end.
