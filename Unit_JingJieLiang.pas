unit Unit_JingJieLiang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCalendar,
  Data.Win.ADODB, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,unit_jiamubiao,
  cxMaskEdit;

type
  TForm_JingJieLiang = class(TForm)
    actmgr1: TActionManager;
    act_close: TAction;
    img1: TImage;
    cxlbl1: TcxLabel;
    cxButton8: TcxButton;
    act1: TAction;
    act2: TAction;
    act3: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid14: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    ds_leibiao: TDataSource;
    qry_leibiao: TADOQuery;
    cxGridDBTableView11Column1: TcxGridDBColumn;
    cxGridDBTableView11Column2: TcxGridDBColumn;
    procedure act_closeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_JingJieLiang: TForm_JingJieLiang;

implementation
  uses Unit_DM,Unit_public;
{$R *.dfm}

procedure TForm_JingJieLiang.act1Execute(Sender: TObject);
begin
  Form_jiamubiao := TForm_jiamubiao.Create(nil);
  try
    Form_jiamubiao.ShowModal;
    if Form_jiamubiao.baocun then
    begin
      if qry_leibiao.Locate('��Ŀ���',Form_jiamubiao.ADOQuery1.FieldByName('��Ŀ���').AsString,[])=False then
      begin
        qry_leibiao.Append;
        qry_leibiao.FieldByName('��Ŀ���').AsString := Form_jiamubiao.ADOQuery1.FieldByName('��Ŀ���').AsString;
        qry_leibiao.FieldByName('����').AsString := Form_jiamubiao.ADOQuery1.FieldByName('����').AsString;
        qry_leibiao.FieldByName('���').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('���').AsString;
        qry_leibiao.FieldByName('С��').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('С��').AsString;
        qry_leibiao.FieldByName('���').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('���').AsString;
        qry_leibiao.FieldByName('��λ').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('��λ').AsString;
        qry_leibiao.FieldByName('��װ���').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('��װ���').AsString;
        qry_leibiao.FieldByName('������').AsString:= Form_jiamubiao.ADOQuery1.FieldByName('������').AsString;
        qry_leibiao.Post;
        qry_leibiao.Edit;
      end;
    end;
  finally
    FreeAndNil(form_jiamubiao);
  end;
end;

procedure TForm_JingJieLiang.act2Execute(Sender: TObject);
var
  ylint:Integer;
begin
  if qry_leibiao.Active=False then
    exit;
  if qry_leibiao.RecordCount=0 then
    exit;
  qry_leibiao.DisableControls;
  qry_leibiao.First;
  while not qry_leibiao.Eof do
  begin
    if qry_leibiao.FieldByName('������').AsString='' then
    begin
      qry_leibiao.EnableControls;
      qry_leibiao.edit;
      Application.MessageBox('����������Ϊ��', '��ʾ', MB_OK);
      exit;
    end;
    try
      ylint:= qry_leibiao.FieldByName('������').AsInteger;
      if ylint<=0 then
      begin
        qry_leibiao.EnableControls;
        qry_leibiao.edit;
        Application.MessageBox('����������С�ڵ���0', '��ʾ', MB_OK);
        exit;
      end;
    except
      qry_leibiao.EnableControls;
      qry_leibiao.edit;
      Application.MessageBox('��������ʽ����ȷ', '��ʾ', MB_OK);
      exit;
    end;
    qry_leibiao.Next;
  end;
  qry_leibiao.EnableControls;

  if Application.MessageBox('ȷ�ϱ�����', 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;
  qry_leibiao.DisableControls;
  qry_leibiao.First;
  while not qry_leibiao.Eof do
  begin
    DataModule1.execSql('update ҩƷ��Ʒ��Ŀ�� set ������='+qry_leibiao.FieldByName('������').AsString+' '+
    ' where ��Ŀ���='+QuotedStr(qry_leibiao.FieldByName('��Ŀ���').AsString)+' ');

    qry_leibiao.Next;
  end;
  qry_leibiao.EnableControls;
  qry_leibiao.Requery();
  if qry_leibiao.RecordCount>0 then
    qry_leibiao.Edit;
end;

procedure TForm_JingJieLiang.act3Execute(Sender: TObject);
begin
  if qry_leibiao.Active=False then
    exit;
  if qry_leibiao.RecordCount=0 then
    exit;

  if Application.MessageBox('ȷ��ɾ����', 'ȷ��', MB_OKCANCEL +
      MB_ICONINFORMATION) = IDCANCEL then
      exit;

  DataModule1.execSql('update ҩƷ��Ʒ��Ŀ�� set ������=0 where ��Ŀ���='+QuotedStr(qry_leibiao.FieldByName('��Ŀ���').AsString)+' ');
  qry_leibiao.Requery();
  if qry_leibiao.RecordCount>0 then
    qry_leibiao.Edit;
end;

procedure TForm_JingJieLiang.act_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_JingJieLiang.FormShow(Sender: TObject);
begin
  qry_leibiao.Close;
  qry_leibiao.SQL.Text:='select ���,��Ŀ���,����,С��,���,���,��λ,��װ���,������,'+
    ' ����=(case when isnull(����,0)=0 then ���� else ���� end ), '+
    ' ��Ӧ��=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=(select top 1 ��Ӧ�� from ����ɹ�������� where �����=b.�����))'+
    ' from ( select * , '+
    ' �����=(select top 1 ����� from ����ɹ������ϸ�� where ��Ŀ���=a.��Ŀ��� order by ��� desc), '+
    ' ����=(select top 1 �������� from ����ɹ������ϸ�� where ��Ŀ���=a.��Ŀ��� order by ��� desc) '+
    ' from ( select ���,��Ŀ���,����,С��,���,���,��λ,��װ���,������,���� from ҩƷ��Ʒ��Ŀ�� '+
    ' where  �Ƿ�����=0 and isnull(�Ƿ��ײ�,0)=0 and ���=1 and ���=1 and ������>0 )a)b order by ����';
  qry_leibiao.Open;
  if qry_leibiao.RecordCount>0 then
    qry_leibiao.Edit;
end;

end.
