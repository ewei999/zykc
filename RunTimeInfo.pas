unit RunTimeInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  cxControls, cxContainer, cxEdit, cxProgressBar;

type
  TRuntimeInfo_Frm = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Label_RunInfo: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    F_InfoStr:string;
    F_ProcessStr:string;
    { Private declarations }
  public
    procedure ShowRunInfo(pInfoStr:string);
    { Public declarations }
  end;

var
  d:Integer;
  RuntimeInfo_Frm: TRuntimeInfo_Frm;
  Procedure Show_RuntimeInfo(AMessage:string);
  Procedure hide_RuntimeInfo;


implementation

{$R *.dfm}

Procedure Show_RuntimeInfo(AMessage:string);
begin
  RuntimeInfo_Frm.Timer1.Enabled:=true;
  RuntimeInfo_Frm.ShowRunInfo(AMessage);
//  Application.ProcessMessages;
end;

Procedure hide_RuntimeInfo;
begin
  RuntimeInfo_Frm.Enabled:=false;
  RuntimeInfo_Frm.Hide;
end;

procedure TRuntimeInfo_Frm.FormCreate(Sender: TObject);
begin
  F_ProcessStr:='.';
end;

procedure TRuntimeInfo_Frm.ShowRunInfo(pInfoStr: string);
begin
  F_InfoStr:=pInfoStr;
  //如果信息长度大于60则截断
  if Length(pInfoStr)>60 then
    F_InfoStr:=copy(pInfoStr,1,60)+'...';
  Label_RunInfo.Caption:=F_InfoStr+F_ProcessStr;
  Self.Width:=Label_RunInfo.Width+Label_RunInfo.Left*2;
  Shape1.Width:=Label_RunInfo.Width+(Label_RunInfo.Left-Shape1.Left)*2 ;
  Self.show;
  Application.ProcessMessages;
end;

procedure TRuntimeInfo_Frm.Timer1Timer(Sender: TObject);
begin
  if Length(F_ProcessStr)=5  then
  begin
    F_ProcessStr:='.';
  end
  else
  begin
    F_ProcessStr:=F_ProcessStr+'.' ;
  end;
  Label_RunInfo.Caption:=F_InfoStr+F_ProcessStr;
  Panel1.Repaint;
  Application.ProcessMessages;
end;


initialization
  RuntimeInfo_Frm:=TRuntimeInfo_Frm.Create(nil);
finalization
  RuntimeInfo_Frm.Free;


end.
