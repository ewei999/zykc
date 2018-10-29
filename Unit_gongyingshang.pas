unit Unit_gongyingshang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  Data.DB, cxDBData, cxContainer, cxTextEdit, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  cxMemo, cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxGDIPlusClasses,
  cxDBEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxMaskEdit, cxDropDownEdit;

type
  TForm_gongyingshang = class(TForm)
    ActionManager1: TActionManager;
    Action_new: TAction;
    Action_edit: TAction;
    Action_save: TAction;
    Action_cancel: TAction;
    Action_close: TAction;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    Action_zf: TAction;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    Image2: TImage;
    cxLabel10: TcxLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton1: TcxButton;
    cxDBComboBox1: TcxDBComboBox;
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_newExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_zfExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    leibie :string;
  end;

var
  Form_gongyingshang: TForm_gongyingshang;

implementation

{$R *.dfm}

uses unit_dm, Unit_public;

procedure TForm_gongyingshang.Action_cancelExecute(Sender: TObject);
begin
  Action_new.Enabled := True;
  Action_edit.Enabled := True;
  Action_save.Enabled := False;
  Action_zf.Enabled := True;
  Action_cancel.Enabled := false;
  ADOQuery1.Cancel;
  cxDBTextEdit1.Enabled := False;
  cxDBComboBox1.Enabled := False;
  cxDBTextEdit3.Enabled := False;
  cxDBTextEdit5.Enabled := False;
  cxGrid1.Enabled :=true;
end;

procedure TForm_gongyingshang.Action_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_gongyingshang.Action_editExecute(Sender: TObject);
begin
  Action_new.Enabled := False;
  Action_edit.Enabled := false;
  Action_save.Enabled := true;
  Action_cancel.Enabled := true;
  Action_zf.Enabled := False;
  ADOQuery1.Edit;
  cxDBTextEdit1.Enabled := True;
  cxDBComboBox1.Enabled := true;
  cxDBTextEdit3.Enabled := true;
  cxDBTextEdit5.Enabled := true;
  cxGrid1.Enabled := False;
end;

procedure TForm_gongyingshang.Action_newExecute(Sender: TObject);
begin
  Action_new.Enabled := False;
  Action_edit.Enabled := false;
  Action_save.Enabled := true;
  Action_cancel.Enabled := true;
  Action_zf.Enabled := False;
  ADOQuery1.Append;
  cxDBTextEdit1.Enabled := True;
  cxDBComboBox1.Enabled := true;
  cxDBTextEdit3.Enabled := True;
  cxDBTextEdit5.Enabled := True;
  cxGrid1.Enabled := False;
end;

procedure TForm_gongyingshang.Action_saveExecute(Sender: TObject);
begin
  if trim(cxDBTextEdit1.Text) = '' then
  begin
    Application.MessageBox('名称不能为空', '提示', MB_OK + MB_ICONINFORMATION);
    exit;
  end;
  if cxDBComboBox1.Text = '' then
  begin
    Application.MessageBox('支付性质不能为空', '提示', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  Action_new.Enabled := true;
  Action_edit.Enabled := true;
  Action_save.Enabled := false;
  Action_cancel.Enabled := false;
  Action_zf.Enabled := True;

  if ADOQuery1.FieldByName('供应商编号').AsString= '' then
    ADOQuery1.FieldByName('供应商编号').AsString :=AutoCreateNo('GYS','供应商');

  ADOQuery1.FieldByName('拼音').AsString := HZToPY(ADOQuery1.FieldByName('名称').AsString);
  ADOQuery1.FieldByName('是否作废').AsBoolean:=false;
  ADOQuery1.Post;
  cxDBTextEdit1.Enabled := False;
  cxDBComboBox1.Enabled := False;
  cxDBTextEdit3.Enabled := False;
  cxDBTextEdit5.Enabled := False;
  cxGrid1.Enabled := true;
end;

procedure TForm_gongyingshang.Action_zfExecute(Sender: TObject);
begin
  if Application.MessageBox('是否作废？', '提示', MB_YESNO + MB_ICONWARNING) = IDNO  then
    Exit;
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('是否作废').AsBoolean := True;
  ADOQuery1.Post;
  cxGrid1.Enabled := true;
end;

procedure TForm_gongyingshang.FormShow(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.text := 'select * from 供应商表';
  ADOQuery1.Open;
end;

end.
