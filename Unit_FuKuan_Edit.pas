unit Unit_FuKuan_Edit;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  cxMemo, cxTextEdit, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Data.Win.ADODB, cxCurrencyEdit;

type
  TForm_FuKuan_Edit = class(TForm)
    img1: TImage;
    cxlbl1: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxlbl3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxlbl2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxlbl4: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxlbl5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxlbl6: TcxLabel;
    cxMemo1: TcxMemo;
    actmgr1: TActionManager;
    act_close: TAction;
    act2: TAction;
    cxButton8: TcxButton;
    cxButton2: TcxButton;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxGrid3DBTableView1Column4: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    ds_liebiao: TDataSource;
    qry_liebiao: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure cxGrid3DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    baocun:boolean;
    leibiestr,KPbianhao:string;
  end;

var
  Form_FuKuan_Edit: TForm_FuKuan_Edit;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}

procedure TForm_FuKuan_Edit.act2Execute(Sender: TObject);
begin
  if leibiestr='����' then
  begin
    if cxTextEdit1.Text='' then
    begin
      Application.MessageBox('��Ʊ��Ų���Ϊ��', '��ʾ', MB_OK);
      exit;
    end;

    if Application.MessageBox('ȷ�ϱ��渶����', 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;

    DataModule1.execSql('update ����ɹ���Ʊ�� set ������='+QuotedStr(cxTextEdit4.Text)+', '+
      ' ���ע='+QuotedStr(cxMemo1.Text)+',������='+QuotedStr(G_user.UserName)+',����ʱ��=getdate() '+
      ' where ��Ʊ���='+QuotedStr(KPbianhao)+' ');

    baocun:=true;
    close;
  end;
end;

procedure TForm_FuKuan_Edit.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_FuKuan_Edit.cxGrid3DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if qry_liebiao.FieldByName('��Ӧ��').AsString='�޻�' then
  begin
    Application.MessageBox('����޻�', '��ʾ', MB_OK);
    exit;
  end;
  if qry_liebiao.FieldByName('��Ӧ��').AsString='��治��' then
  begin
    Application.MessageBox('��治��', '��ʾ', MB_OK);
    exit;
  end;
  baocun:=true;
  close;
end;

procedure TForm_FuKuan_Edit.FormCreate(Sender: TObject);
begin
  baocun:=false;
  cxPageControl1.HideTabs:=true;
  Self.Height:= 380;
  Self.width:=480;
end;

procedure TForm_FuKuan_Edit.FormShow(Sender: TObject);
begin
  if leibiestr='����' then
  begin
    cxlbl1.Caption:='����';
    self.Caption:='����';
    DataModule1.openSql('select *,gys=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=a.��Ӧ��) '+
    ' from (select * from ����ɹ���Ʊ�� where ��Ʊ���='+QuotedStr(KPbianhao)+')a ');
    if DataModule1.ADOQuery_L.Eof=False then
    begin
      cxTextEdit1.Text:=KPbianhao;
      cxTextEdit2.Text:=DataModule1.ADOQuery_L.FieldByName('gys').AsString;
      cxTextEdit3.Text:=DataModule1.ADOQuery_L.FieldByName('�ϼƽ��').AsString;
      cxTextEdit4.Text:=DataModule1.ADOQuery_L.FieldByName('������').AsString;
      cxMemo1.Text:=DataModule1.ADOQuery_L.FieldByName('���ע').AsString;
    end;
    cxTabSheet1.Show;
  end;

  if leibiestr='����б�' then
  begin
    cxButton2.Visible:=false;

    cxTabSheet2.Show;
  end;

end;

end.
