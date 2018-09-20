program Pro_KuCun;

uses
  Vcl.Forms,
  Unit_login in 'Unit_login.pas' {Form_login},
  Unit_DM in 'Unit_DM.pas' {DataModule1: TDataModule},
  frmRegister in 'frmRegister.pas' {Form_Register},
  Encode in 'Encode.pas',
  Unit_public in 'Unit_public.pas',
  Unit_main in 'Unit_main.pas' {Form_main},
  Unit_caigou_shenqing_new in 'Unit_caigou_shenqing_new.pas' {Form_caigou_shenqing_new},
  Unit_fuhuo in 'Unit_fuhuo.pas' {Form_fuhuo},
  Unit_FuHuoDan in 'Unit_FuHuoDan.pas' {Form_FuHuoDan},
  Unit_KaiPiao in 'Unit_KaiPiao.pas' {Form_KaiPiao},
  Unit_KaiPiao_Edit in 'Unit_KaiPiao_Edit.pas' {Form_KaiPiao_Edit},
  Unit_FuKuan_Edit in 'Unit_FuKuan_Edit.pas' {Form_FuKuan_Edit},
  Unit_ShouTuiHuo in 'Unit_ShouTuiHuo.pas' {Form_ShouTuiHuo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm_login, Form_login);
  Application.Run;
end.
