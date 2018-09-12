unit Unit_public;

interface
  uses inifiles,system.Classes,Unit_DM,Data.Win.ADODB,cxGrid,Vcl.Dialogs,cxGridExportLink,
        System.SysUtils;

  function DownLoadFile(sURL, sFName: string): boolean;
  function XiTong_date() :TDateTime;//系统时间
  function AutoCreateNo(aTableName:string;abeizhu:string):string;         //自动编号
  function ut_padstring(inString :string; maxLength :integer; padChar :char; left :boolean) :string;
  procedure DaochuExcel(agrid : TcxGrid);



type
   Tuser = record
     userID :string;         //人员编号
     UserName : string;      //用户名
     UserPassword:string;    //密码
     UserGW : string;         //岗位
   end;

var
  G_user : Tuser;
  G_IniSetingFile: TIniFile; //配置文件
  G_LocalKey, G_RegisterCode: string;
  l_query:TADOQuery;


implementation

procedure DaochuExcel(agrid: TcxGrid);
var
  savedialog1 : TSaveDialog;
begin
  try
    savedialog1 :=TSaveDialog.Create(nil);
    SaveDialog1.DefaultExt := 'xls';
    SaveDialog1.Filter :='(Excel表格式xls)|*.xls';
    SaveDialog1.Title := '请选择要输出的文件夹';
    if SaveDialog1.Execute then
      ExportGridToExcel(SaveDialog1.FileName,agrid,True,True);
  finally
    savedialog1.Free;
  end;
end;

function XiTong_date() :TDateTime;
var
  L_query_date : TADOQuery;
begin
   L_query_date := TADOQuery.Create(nil);
   try
     L_query_date.Connection := DataModule1.ADOCon_ALi;
     L_query_date.SQL.Text := 'select getdate() as 系统时间';
     L_query_date.Open;
     result := L_query_date.FieldByName('系统时间').AsDateTime;
   finally
     L_query_date.Free;
   end;
end;

function DownLoadFile(sURL, sFName: string): boolean;
var //下载文件
  tStream: TMemoryStream;
begin
  tStream := TMemoryStream.Create;
  try //防止不可预料错误发生
    try
      DataModule1.IdHTTP_main.Get(sURL, tStream); //保存到内存流
      tStream.SaveToFile(sFName); //保存为文件

      Result := True;
    finally //即使发生不可预料的错误也可以释放资源
      tStream.Free;
    end;
  except //真的发生错误执行的代码
    Result := False;
    tStream.Free;
  end;
end;
function AutoCreateNo(aTableName: string;abeizhu:string): string;
var
  number : integer;
  cd,bhcd,cdmax:integer;
begin
  l_query:= TADOQuery.Create(nil);
  try
    l_query.Connection := DataModule1.ADOCon_ALi;
    l_query.close;
    l_query.sql.text := 'select * from 编号表 where 编号头='+ QuotedStr(aTableName)+' ';
    l_query.open;
    if l_query.Eof=True then
    begin
      l_query.Close;
      l_query.sql.text := 'insert into 编号表(编号头,当前编号,编号长度,备注)'+
                          ' values('+quotedstr(aTableName)+',''0'',''8'', '+quotedstr(abeizhu)+')';
      l_query.ExecSQL;
    end;

    l_query.Close;
    l_query.SQL.Text := 'select * from 编号表 where 编号头 = '+ QuotedStr(aTableName);
    l_query.Open;

    number :=  l_query.FieldByName('当前编号').AsInteger;
    cdmax:=1;
    bhcd := l_query.FieldByName('编号长度').AsInteger;
    for cd := 1 to bhcd-1 do
    cdmax := cdmax*10;

    while l_query.FieldByName('当前编号').AsInteger<>number+1 do
    begin

      number :=  l_query.FieldByName('当前编号').AsInteger;
      if number+1 > 9*cdmax then
      begin
        l_query.Close;
        l_query.SQL.Text := 'update 编号表  set 编号长度 = '+inttostr(bhcd+1)+' where 编号头 = '+ QuotedStr(aTableName);
        l_query.ExecSQL;
      end;
      l_query.Close;
      l_query.SQL.Text := 'update 编号表  set 当前编号 = 当前编号+1 where 编号头 = '+ QuotedStr(aTableName);
      l_query.ExecSQL;

      l_query.Close;
      l_query.SQL.Text := 'select * from 编号表 where 编号头 = '+ QuotedStr(aTableName);
      l_query.Open;
    end;
    Result := l_query.fieldbyname('编号头').AsString +ut_padstring(IntToStr(l_query.fieldbyname('当前编号').AsInteger),l_query.fieldbyname('编号长度').AsInteger,'0',True)
  finally
    l_query.Free;
  end;
end;
function ut_padstring(inString: string; maxLength: integer;
  padChar: char; left: boolean): string;
begin
  result := inString;
  while (Length(result) < maxLength) do
  if (left) then
    result := padChar + result
  else
    result := result + padChar;
end;

end.
