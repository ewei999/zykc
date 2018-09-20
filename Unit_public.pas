unit Unit_public;

interface
  uses inifiles,system.Classes,Unit_DM,Data.Win.ADODB,cxGrid,Vcl.Dialogs,cxGridExportLink,
        System.SysUtils;

  function DownLoadFile(sURL, sFName: string): boolean;
  function XiTong_date() :TDateTime;//系统时间
  function AutoCreateNo(aTableName:string;abeizhu:string):string;         //自动编号
  function ut_padstring(inString :string; maxLength :integer; padChar :char; left :boolean) :string;
  procedure DaochuExcel(agrid : TcxGrid);
  function jisuan_danjia(jmbh: string;ckshuliang:string): real;


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


function jisuan_danjia(jmbh: string;ckshuliang:string): real;
var
  a,b,c,cb,ck:Real;
  ADOQuery_danjia :TADOQuery;
begin
   Result :=0;
   ADOQuery_danjia := TADOQuery.Create(nil);
   try
     ADOQuery_danjia.Connection := DataModule1.ADOCon_ALi;
     ADOQuery_danjia.SQL.Text := 'select * from ( select b.* , '+
     ' 批次剩余库存数=(case when 小于批次-出库数量<0 then (case when 小于等于批次-出库数量<0 then 0 else (小于等于批次-出库数量) end '+
     '	) else b.数量 end) from ( '+
     ' select * ,'+
     ' 小于批次=isnull((select isnull(sum(数量),0) from 中央采购入库明细表 where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) and 价目编号=a.价目编号 and 入库批次<a.入库批次),0),'+
     ' 小于等于批次=isnull((select isnull(sum(数量),0) from 中央采购入库明细表 where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) and 价目编号=a.价目编号 and 入库批次<=a.入库批次),0),'+
     ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=2 and 是否作废=0 and 价目编号=a.价目编号),0)'+
     ' from ( select 价目编号,入库批次,进货单价,数量,编号 from 中央采购入库明细表 '+
     ' where 价目编号='+QuotedStr(jmbh)+' and 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) )a)b)c where 批次剩余库存数>0  ' ;
     ADOQuery_danjia.Active := true;
     if ADOQuery_danjia.RecordCount >0 then
     begin
       ADOQuery_danjia.First;
       b := 0;
       c := 0;
       cb :=0;

       ck :=  StrToFloat(ckshuliang);
       while not ADOQuery_danjia.Eof do
       begin
         b := b+1;

         if ck <= ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat then
         begin
           if b=1 then
           begin
             Result := ADOQuery_danjia.FieldByName('单价').AsFloat*StrToFloat(ckshuliang);
             Break;
           end
           else
           begin
             a := ck;
             c := adoquery_danjia.FieldByName('单价').AsFloat;
             cb := cb+ a*c;
             Result := cb;
             Break;
           end;

         end
         else
         begin
           a := ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat;
           c := adoquery_danjia.FieldByName('单价').AsFloat;

           if StrToFloat(ckshuliang) <= a then
           begin
             cb := cb+ a*c;
             Result := cb;
             Break;
           end
           else
           begin
             cb := cb+ a*c;
             ck := ck- ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat;
           end;

         end;
         ADOQuery_danjia.Next;
       end;

       if (Result =0) then
       begin
         if b=0 then
         begin
           cb := cb+ a*c;
           Result := cb;
         end else if b>0 then
         begin
           Result := cb+ck*c;
         end;
       end;

     end
     else
     begin
       ADOQuery_danjia.Active := false;
       ADOQuery_danjia.SQL.Text := 'select 进货单价 from 中央采购入库明细表 where 入库批次= (select max(入库批次)  from 中央采购入库明细表 '+
       ' where 价目编号='+QuotedStr(jmbh)+' and 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) )';
       ADOQuery_danjia.Active := true;
       if ADOQuery_danjia.RecordCount>0 then
       begin
         Result := ADOQuery_danjia.FieldByName('进货单价').AsFloat*StrToFloat(ckshuliang);
       end
       else
       begin
         Result := -1;
       end;
     end;
   finally
     ADOQuery_danjia.Free;
   end;
end;


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
