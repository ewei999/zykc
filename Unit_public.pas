unit Unit_public;

interface
  uses inifiles,system.Classes,Unit_DM,Data.Win.ADODB,cxGrid,Vcl.Dialogs,cxGridExportLink,
        System.SysUtils;

  function DownLoadFile(sURL, sFName: string): boolean;
  function XiTong_date() :TDateTime;//系统时间
  function AutoCreateNo(aTableName:string;abeizhu:string):string;         //自动编号
  function ut_padstring(inString :string; maxLength :integer; padChar :char; left :boolean) :string;
  procedure DaochuExcel(agrid : TcxGrid);
  function jisuan_danjia(jmbh: string;ckshuliang:string): TADOQuery ;
  function ChaXunKuCun(jmbh:string):Real;
  Function HZToPY(cSTR:String):String;
  Function Getpinyin_shoupinma(hzchar: Ansistring): ansichar; //获得常用字首拼码
  Function GetPinyin_shoupinma2(hz: String): ansiChar;//获取生僻字首拼码

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


Function HZToPY(cSTR:String):String;
Var
 i:integer;
 S:String;
begin
  Result:='';
  for I := 1 to Length(cSTR) do
  begin
    S:=Copy(cSTR,i,1);
    if Trim(Getpinyin_shoupinma(S))='' then
      Result:=Result+S
    else
      Result:=Result+Getpinyin_shoupinma(S);
  end;
end;

Function Getpinyin_shoupinma(hzchar: Ansistring): ansichar; //获得常用字首拼码
var
  i: Integer;
begin
  case WORD(hzchar[1]) shl 8 + WORD(hzchar[2]) of
    $B0A1..$B0C4 : Result := 'A';
    $B0C5..$B2C0 : Result := 'B';
    $B2C1..$B4ED : Result := 'C';
    $B4EE..$B6E9 : Result := 'D';
    $B6EA..$B7A1 : Result := 'E';
    $B7A2..$B8C0 : Result := 'F';
    $B8C1..$B9FD : Result := 'G';
    $B9FE..$BBF6 : Result := 'H';
    $BBF7..$BFA5 : Result := 'J';
    $BFA6..$C0AB : Result := 'K';
    $C0AC..$C2E7 : Result := 'L';
    $C2E8..$C4C2 : Result := 'M';
    $C4C3..$C5B5 : Result := 'N';
    $C5B6..$C5BD : Result := 'O';
    $C5BE..$C6D9 : Result := 'P';
    $C6DA..$C8BA : Result := 'Q';
    $C8BB..$C8F5 : Result := 'R';
    $C8F6..$CBF9 : Result := 'S';
    $CBFA..$CDD9 : Result := 'T';
    $CDDA..$CEF3 : Result := 'W';
    $CEF4..$D188 : Result := 'X';
    $D1B9..$D4D0 : Result := 'Y';
    $D4D1..$D7F9 : Result := 'Z';
    else Result := GetPinyin_shoupinma2(hzchar);
  end;
end;


function ChaXunKuCun(jmbh:string):Real;
var
  ADOQuery_danjia :TADOQuery;
begin
   Result:=-1;
   ADOQuery_danjia := TADOQuery.Create(nil);
   try
     ADOQuery_danjia.Connection := DataModule1.ADOCon_ALi;
     ADOQuery_danjia.Close;
     ADOQuery_danjia.SQL.Text:='select 库存=入库数量-出库数量-未接收 from ( select a.*, '+
      ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=2  and 是否作废=0 and 价目编号=a.价目编号) ,0), '+
      ' 未接收=isnull((select sum(出库数量) from 中央库存_出库表 where 状态=1  and 是否作废=0 and 价目编号=a.价目编号) ,0) '+
      ' from ( select 价目编号,sum(isnull(数量,0)) as 入库数量 from 中央采购入库明细表 '+
      ' where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1) and 价目编号='+QuotedStr(jmbh)+' group by 价目编号 '+
      ' )a left join 药品用品价目表 b on a.价目编号=b.价目编号 )c';
     ADOQuery_danjia.Open;
     Result:=ADOQuery_danjia.FieldByName('库存').AsFloat;
   finally
     ADOQuery_danjia.Free;
   end;
end;


function jisuan_danjia(jmbh: string;ckshuliang:string):TADOQuery ;
var
  ADOBianHao: TADOQuery;
  b,ck:Real;
  i_int:integer;
  ADOQuery_danjia :TADOQuery;
begin

  ADOBianHao := TADOQuery.Create(nil);
  ADOBianHao.Connection := DataModule1.ADOCon_ALi;
  ADOBianHao.LockType:=ltBatchOptimistic;
  ADOBianHao.Close;
  ADOBianHao.SQL.Text:='select  top 0 名称 as 供应商,价目编号 as 供应商编号,数量,进货单价 as 单价,整付数量,整付金额,备注 from 中央采购入库明细表';
  ADOBianHao.Open;
  Result :=ADOBianHao;

  ADOQuery_danjia := TADOQuery.Create(nil);
  try
    ADOQuery_danjia.Connection := DataModule1.ADOCon_ALi;
    ADOQuery_danjia.SQL.Text := 'select 供应商,进货单价,sum(批次剩余库存数) as 批次剩余库存数,名称=(select top 1 名称 from 供应商表 where 供应商编号=c.供应商),'+
    ' 整付数量,整付金额,备注 '+
    ' from ( select b.进货单价, 供应商,整付数量,整付金额,备注,'+
    ' 批次剩余库存数=(case when 小于批次-出库数量<0 then (case when 小于等于批次-出库数量<0 then 0 else (小于等于批次-出库数量) end ) else b.数量 end) from ('+
    ' select * , '+
    ' 小于批次=isnull((select isnull(sum(数量),0) from 中央采购入库明细表 where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) '+
    '    and 价目编号=a.价目编号 and 进货单价=a.进货单价 and 供应商=a.供应商 and isnull(备注,'''')=isnull(a.备注,'''') and 入库批次<a.入库批次),0),'+
    ' 小于等于批次=isnull((select isnull(sum(数量),0) from 中央采购入库明细表 where 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) '+
    '    and 价目编号=a.价目编号 and 进货单价=a.进货单价 and 供应商=a.供应商 and isnull(备注,'''')=isnull(a.备注,'''') and 入库批次<=a.入库批次),0),'+
    ' 出库数量=isnull((select sum(出库数量) from 中央库存_出库表 where 状态 in (1,2) and 是否作废=0 and 价目编号=a.价目编号 and 单价=a.进货单价'+
    '  and 供应商=a.供应商 and isnull(价目备注,'''')=isnull(a.备注,'''')  ),0)'+
    ' from ( select 价目编号,入库批次,进货单价,数量,整付数量,整付金额,备注,'+
    ' 供应商=(select top 1 供应商 from 中央采购入库主表 where 入库编号=中央采购入库明细表.入库编号) from 中央采购入库明细表  '+
    ' where 价目编号='+QuotedStr(jmbh)+' and 入库编号 in (select 入库编号 from 中央采购入库主表 where 状态=1 ) )a)b)c where 批次剩余库存数>0 '+
    ' group by 供应商,进货单价,整付数量,整付金额,备注' ;
    ADOQuery_danjia.Active := true;
    if ADOQuery_danjia.RecordCount >0 then
    begin
      ADOQuery_danjia.First;
      b:=0;
      ck :=  StrToFloat(ckshuliang);
      while not ADOQuery_danjia.Eof do
      begin
        b := b+1;
        if ck <= ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat then
        begin
          if b=1 then
          begin
            ADOBianHao.Append;
            ADOBianHao.FieldByName('供应商编号').AsString:= ADOQuery_danjia.FieldByName('供应商').AsString;
            ADOBianHao.FieldByName('供应商').AsString:= ADOQuery_danjia.FieldByName('名称').AsString;
            ADOBianHao.FieldByName('单价').AsFloat:= ADOQuery_danjia.FieldByName('进货单价').AsFloat;
            ADOBianHao.FieldByName('备注').AsString:= ADOQuery_danjia.FieldByName('备注').AsString;
            ADOBianHao.FieldByName('整付数量').AsFloat:= ADOQuery_danjia.FieldByName('整付数量').AsFloat;
            ADOBianHao.FieldByName('整付金额').AsFloat:= ADOQuery_danjia.FieldByName('整付金额').AsFloat;
            ADOBianHao.FieldByName('数量').AsFloat:= ck;
            ADOBianHao.Post;
            ck:=0;
            Break;
          end
          else
          begin
            ADOBianHao.First;
            i_int:=0;
            while not ADOBianHao.Eof do
            begin
              if (ADOBianHao.FieldByName('供应商编号').AsString=ADOQuery_danjia.FieldByName('供应商').AsString)
              and (ADOBianHao.FieldByName('单价').asfloat=ADOQuery_danjia.FieldByName('进货单价').asfloat)
              and (ADOBianHao.FieldByName('整付数量').asfloat=ADOQuery_danjia.FieldByName('整付数量').asfloat)
              and (ADOBianHao.FieldByName('整付金额').asfloat=ADOQuery_danjia.FieldByName('整付金额').asfloat)
              and (ADOBianHao.FieldByName('备注').AsString=ADOQuery_danjia.FieldByName('备注').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('数量').AsFloat:=ADOBianHao.FieldByName('数量').AsFloat+ck;
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('供应商编号').AsString:= ADOQuery_danjia.FieldByName('供应商').AsString;
              ADOBianHao.FieldByName('供应商').AsString:= ADOQuery_danjia.FieldByName('名称').AsString;
              ADOBianHao.FieldByName('备注').AsString:= ADOQuery_danjia.FieldByName('备注').AsString;
              ADOBianHao.FieldByName('单价').AsFloat:= ADOQuery_danjia.FieldByName('进货单价').AsFloat;
              ADOBianHao.FieldByName('数量').AsFloat:= ck;
              ADOBianHao.FieldByName('整付数量').AsFloat:= ADOQuery_danjia.FieldByName('整付数量').AsFloat;
              ADOBianHao.FieldByName('整付金额').AsFloat:= ADOQuery_danjia.FieldByName('整付金额').AsFloat;
              ADOBianHao.Post;
            end;
            ck:=0;
            Break;
          end;
        end
        else
        begin
          if StrToFloat(ckshuliang) <= ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat then
          begin
            ADOBianHao.First;
            i_int:=0;
            while not ADOBianHao.Eof do
            begin
              if (ADOBianHao.FieldByName('供应商编号').AsString=ADOQuery_danjia.FieldByName('供应商').AsString)
              and (ADOBianHao.FieldByName('单价').asfloat=ADOQuery_danjia.FieldByName('进货单价').asfloat)
              and (ADOBianHao.FieldByName('整付数量').asfloat=ADOQuery_danjia.FieldByName('整付数量').asfloat)
              and (ADOBianHao.FieldByName('整付金额').asfloat=ADOQuery_danjia.FieldByName('整付金额').asfloat)
              and (ADOBianHao.FieldByName('备注').AsString=ADOQuery_danjia.FieldByName('备注').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('数量').AsFloat:=ADOBianHao.FieldByName('数量').AsFloat+StrToFloat(ckshuliang);
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('供应商编号').AsString:= ADOQuery_danjia.FieldByName('供应商').AsString;
              ADOBianHao.FieldByName('供应商').AsString:= ADOQuery_danjia.FieldByName('名称').AsString;
              ADOBianHao.FieldByName('备注').AsString:= ADOQuery_danjia.FieldByName('备注').AsString;
              ADOBianHao.FieldByName('单价').AsFloat:= ADOQuery_danjia.FieldByName('进货单价').AsFloat;
              ADOBianHao.FieldByName('数量').AsFloat:= StrToFloat(ckshuliang);
              ADOBianHao.FieldByName('整付数量').AsFloat:= ADOQuery_danjia.FieldByName('整付数量').AsFloat;
              ADOBianHao.FieldByName('整付金额').AsFloat:= ADOQuery_danjia.FieldByName('整付金额').AsFloat;
              ADOBianHao.Post;
            end;
            Break;
          end
          else
          begin
            ADOBianHao.First;
            i_int:=0;
            while not ADOBianHao.Eof do
            begin
              if (ADOBianHao.FieldByName('供应商编号').AsString=ADOQuery_danjia.FieldByName('供应商').AsString)
              and (ADOBianHao.FieldByName('单价').asfloat=ADOQuery_danjia.FieldByName('进货单价').asfloat)
              and (ADOBianHao.FieldByName('整付数量').asfloat=ADOQuery_danjia.FieldByName('整付数量').asfloat)
              and (ADOBianHao.FieldByName('整付金额').asfloat=ADOQuery_danjia.FieldByName('整付金额').asfloat)
              and (ADOBianHao.FieldByName('备注').AsString=ADOQuery_danjia.FieldByName('备注').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('数量').AsFloat:=ADOBianHao.FieldByName('数量').AsFloat+ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat;
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('供应商编号').AsString:= ADOQuery_danjia.FieldByName('供应商').AsString;
              ADOBianHao.FieldByName('供应商').AsString:= ADOQuery_danjia.FieldByName('名称').AsString;
              ADOBianHao.FieldByName('备注').AsString:= ADOQuery_danjia.FieldByName('备注').AsString;
              ADOBianHao.FieldByName('单价').AsFloat:= ADOQuery_danjia.FieldByName('进货单价').AsFloat;
              ADOBianHao.FieldByName('数量').AsFloat:= ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat;
              ADOBianHao.FieldByName('整付数量').AsFloat:= ADOQuery_danjia.FieldByName('整付数量').AsFloat;
              ADOBianHao.FieldByName('整付金额').AsFloat:= ADOQuery_danjia.FieldByName('整付金额').AsFloat;
              ADOBianHao.Post;
            end;
            ck := ck- ADOQuery_danjia.FieldByName('批次剩余库存数').AsFloat;
          end;

        end;
        ADOQuery_danjia.Next;
      end;
      if ck>0 then   //剩余批次的数量不够了
      begin
        ADOBianHao.Append;
        ADOBianHao.FieldByName('供应商').AsString:= '库存不足';
        ADOBianHao.Post;
      end;
    end
    else
    begin
      ADOBianHao.Append;
      ADOBianHao.FieldByName('供应商').AsString:= '无货';
      ADOBianHao.Post;
    end;

    Result := ADOBianHao;
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

Function GetPinyin_shoupinma2(hz: String): ansiChar;//获取生僻字首拼码
begin
  case hz[1] of
    '桉': Result := 'A';
    '铵': Result := 'A';
    '螯': Result := 'A';
    '苄': Result := 'B';
    '孢': Result := 'B';
    '吡': Result := 'B';
    '铋': Result := 'B';
    '萆': Result := 'B';
    '缤': Result := 'B';
    '豉': Result := 'C';
    '苁': Result := 'C';
    '黛': Result := 'D';
    '酊': Result := 'D';
    '哚': Result := 'D';
    '甙': Result := 'D';
    '菪': Result := 'D';
    '癜': Result := 'D';
    '啶': Result := 'D';
    '窦': Result := 'D';
    '莪': Result := 'E';
    '呋': Result := 'F';
    '茯': Result := 'F';
    '苷': Result := 'G';
    '膈': Result := 'G';
    '钴': Result := 'G';
    '胍': Result := 'G';
    '呱': Result := 'G';
    '胱': Result := 'G';
    '枸': Result := 'G';
    '斛': Result := 'H';
    '诃': Result := 'H';
    '琥': Result := 'H';
    '癀': Result := 'H';
    '茴': Result := 'H';
    '荟': Result := 'H';
    '藿': Result := 'H';
    '蚧': Result := 'J';
    '槿': Result := 'J';
    '肼': Result := 'J';
    '婧': Result := 'J';
    '喹': Result := 'K';
    '匮': Result := 'K';
    '蠊': Result := 'L';
    '靓': Result := 'L';
    '缧': Result := 'L';
    '蛎': Result := 'L';
    '蓼': Result := 'L';
    '啉': Result := 'L';
    '膦': Result := 'L';
    '癃': Result := 'L';
    '莨': Result := 'L';
    '苓': Result := 'L';
    '蟆': Result := 'M';
    '鳗': Result := 'M';
    '蝥': Result := 'M';
    '莓': Result := 'M';
    '咪': Result := 'M';
    '嘧': Result := 'M';
    '茉': Result := 'M';
    '萘': Result := 'N';
    '喃': Result := 'N';
    '脲': Result := 'N';
    '哌': Result := 'P';
    '杷': Result := 'P';
    '泮': Result := 'P';
    '癖': Result := 'P';
    '嘌': Result := 'P';
    '珀': Result := 'P';
    '枇': Result := 'P';
    '膀': Result := 'P';
    '瞿': Result := 'Q';
    '羟': Result := 'Q';
    '嗪': Result := 'Q';
    '芪': Result := 'Q';
    '杞': Result := 'Q';
    '荞': Result := 'Q';
    '芩': Result := 'Q';
    '祛': Result := 'Q';
    '巯': Result := 'Q';
    '髯': Result := 'R';
    '麝': Result := 'S';
    '鲨': Result := 'S';
//    '麝': Result := 'S';
    '噻': Result := 'S';
    '痧': Result := 'S';
    '肽': Result := 'T';
    '糖': Result := 'T';
    '佗': Result := 'T';
    '肟': Result := 'W';
    '酰': Result := 'X';
    '血': Result := 'X';
//    '酰': Result := 'X';
    '鑫': Result := 'X';
    '醑': Result := 'X';
    '鳕': Result := 'X';
    '逍': Result := 'X';
    '缬': Result := 'X';
    '馨': Result := 'X';
    '芎': Result := 'X';
    '溴': Result := 'X';
    '翳': Result := 'Y';
    '龈': Result := 'Y';
    '吲': Result := 'Y';
    '怡': Result := 'Y';
    '橼': Result := 'Y';
    '妍': Result := 'Y';
    '仪': Result := 'Y';
    '酯': Result := 'Z';
//    '酯': Result := 'Z';
    '跖': Result := 'Z';
    '唑': Result := 'Z';
    '蟑': Result := 'Z';
    '竺': Result := 'Z';
//    '蟑': Result := 'Z';
    '赭': Result := 'Z';
    '甾': Result := 'Z';
    '喋': Result := 'D';
    '楂': Result := 'Z';
    '葆': Result := 'B';
    '檗': Result := 'B';
    '噁': Result := 'E';
    '芙': Result := 'F';
    '焗': Result := 'J';
    '橘': Result := 'J';
    '螵': Result := 'P';
    '羧': Result := 'S';
    '媞': Result := 'T';
    '瘀': Result := 'Y';
    '液': Result := 'Y';
    '啫': Result := 'Z';
    '癥': Result := 'Z';
    '栀': Result := 'Z';
    '腙': Result := 'Z';

    '吖', '锕', '嗄', '锿', '捱', '嗳', '霭', '砹', '嗌', '嫒', '暧', '瑷', {'桉',}
    '庵', '谙', '鹌', '埯', {'铵',} '揞', '犴', '黯', '坳', '嗷', '廒', '獒', '遨',
    '聱'{, '螯'}, '鳌', '鏖', '媪', '岙', '骜', '鏊'{, '廒'}:
    Result := 'a';
    '岜', '粑', '茇', '菝', '魃', '鲅', '灞', '掰', '捭', '呗', '瘢', '癍', '阪',
    '坂', '钣', '舨', '浜', '蒡', '勹'{, '孢'}, '煲', '龅', '鸨'{, '葆'}, '褓', '趵',
    '陂', '鹎', '邶', '悖', '碚', '蓓', '褙', '鞴', '鐾', '贲', '锛', '畚', '坌',
    '嘣', '甏', '荸', '匕'{, '吡'}, '妣', '秕', '俾', '舭', '畀', '哔', '荜', '狴'{,
    '铋'}, '婢', '庳'{, '萆'}, '弼', '愎', '筚', '滗', '裨', '跸', '箅', '嬖', '篦',
    '薜', '濞', '髀', '璧', '襞', '砭', '笾', '煸', '蝙', '鳊', '窆', '匾', '碥',
    '褊', '弁', '忭', '汴'{, '苄'}, '缏', '飑', '髟', '骠', '瘭', '镖', '飙', '飚',
    '镳', '婊', '裱', '鳔', '蹩', '傧'{, '缤'}, '槟', '镔', '豳', '殡', '膑', '髌',
    '鬓', '邴', '禀', '摒', '饽', '啵', '孛', '亳', '钹', '鹁', '踣', '礴', '跛',
    '簸', '擘'{, '檗'}, '逋', '钸', '晡', '醭', '卟', '钚', '瓿', '玢', '宀', '疒':
    Result := 'b';
    '嚓', '礤', '骖', '黪', '粲', '璨', '伧', '嘈', '漕', '艚', '螬', '艹', '恻',
    '岑', '涔', '噌', '杈', '馇', '锸', '猹', '槎', '檫', '衩', '镲', '汊', '姹',
    '钗', '侪', '虿', '瘥', '觇', '婵', '孱', '禅', '廛', '潺', '镡', '蟾', '躔',
    '谄', '蒇', '冁', '忏', '羼', '伥', '娼', '菖', '阊', '鲳', '苌', '徜', '嫦',
    '昶', '惝', '氅', '怅', '鬯', '怊', '焯', '晁', '耖', '砗', '屮', '坼', '抻',
    '琛', '嗔', '宸', '谌', '碜', '龀', '榇', '谶', '柽', '蛏', '铛', '瞠', '丞',
    '枨', '埕', '铖', '裎', '塍', '酲', '哧', '蚩', '鸱', '眵', '笞', '嗤', '媸',
    '螭', '魑', '茌', '墀', '踟', '篪'{, '豉'}, '褫', '彳', '叱', '饬', '敕', '啻',
    '傺', '瘛', '忡', '茺', '舂', '憧', '艟', '铳', '瘳', '俦', '帱', '惆', '雠',
    '樗', '刍', '蜍', '蹰', '杵', '楮', '褚', '亍', '怵', '绌', '憷', '黜', '搋',
    '啜', '嘬', '踹', '巛', '氚', '舡', '遄', '舛', '钏', '怆', '陲', '棰', '槌',
    '蝽', '莼', '鹑', '踔', '辍', '龊', '呲', '祠', '茈', '鹚', '糍'{, '苁'}, '枞',
    '骢', '璁', '淙', '琮', '楱', '腠', '辏', '徂', '殂', '猝', '蔟', '蹙', '蹴',
    '氽', '汆', '撺', '镩', '爨', '榱', '璀', '啐', '悴', '萃', '毳', '皴', '忖',
    '蹉', '嵯', '痤', '矬', '鹾', '脞', '厝', '锉', '膪', '澶', '骣':
    Result := 'c';
    '哒', '耷', '嗒', '褡', '妲', '怛', '笪', '靼', '鞑', '岱'{, '甙'}, '绐', '迨',
    '玳', '埭'{, '黛'}, '眈', '聃', '殚', '瘅', '箪', '儋', '疸', '啖', '萏', '澹',
    '裆', '谠', '凼', '宕', '砀'{, '菪'}, '叨', '忉', '氘', '纛', '锝', '噔', '簦',
    '戥', '嶝', '磴', '镫', '羝', '嘀', '镝', '籴', '荻', '觌', '氐', '诋', '邸',
    '坻', '柢', '砥', '骶', '娣', '谛', '棣', '睇', '碲', '嗲', '巅', '癫', '踮',
    '阽', '坫', '玷', '钿'{, '癜'}, '簟', '貂', '鲷', '铞', '垤', '瓞', '堞', '揲',
    '耋', '牒', '蹀', '鲽', '仃', '玎', '疔', '耵'{, '酊'}{, '啶'}, '腚', '碇', '铥',
    '咚', '岽', '氡', '鸫', '垌', '峒', '胨', '胴', '硐', '蔸', '篼', '蚪'{, '窦'},
    '嘟', '渎', '椟', '牍', '黩', '髑', '笃', '芏', '蠹', '椴', '煅', '簖', '怼',
    '碓', '憝', '镦', '礅', '盹', '趸', '沌', '炖', '砘', '咄', '裰', '铎', '踱'{,
    '哚'}, '缍', '沲', '卩', '亻', '赕', '铫', '町', '铤', '夂', '丶':
    Result := 'd';
    '屙'{, '莪'}, '锇', '婀', '呃', '苊', '轭', '垩', '谔', '阏', '愕', '萼', '腭',
    '锷', '鹗', '颚', '噩', '鳄', '蒽', '摁', '鸸', '鲕', '迩', '珥', '铒', '佴',
    '嗯', '唔', '诶':
    Result := 'e';
    '垡', '砝', '幡', '蕃', '燔', '蹯', '蘩', '畈', '梵', '邡', '枋', '钫', '鲂',
    '舫', '妃', '绯', '扉', '蜚', '霏', '鲱', '淝', '腓', '悱', '斐', '榧', '翡',
    '篚', '狒', '痱', '镄', '棼', '鼢', '偾', '鲼', '瀵', '沣', '砜', '葑', '酆',
    '唪', '俸', '缶'{, '呋'}, '趺', '麸', '稃', '跗', '凫', '孚'{, '芙'}, '芾', '怫',
    '绂', '绋', '苻', '祓', '罘'{{, '茯'}, '郛', '砩', '莩', '蚨', '匐', '桴', '艴',
    '菔', '蜉', '幞', '蝠', '黻', '拊', '滏', '黼', '驸', '鲋', '赙', '蝮', '鳆',
    '馥', '攵', '犭':
    Result := 'f';
    '旮', '伽', '钆', '尜', '尕', '尬', '陔', '垓', '赅', '丐', '戤', '坩', '泔'{,
    '苷'}, '疳', '酐', '尴', '澉', '橄', '擀', '旰', '矸', '绀', '淦', '罡', '筻',
    '戆', '槔', '睾', '杲', '缟', '槁', '藁', '诰', '郜', '锆', '圪', '纥', '袼',
    '鬲', '嗝', '塥', '搿'{, '膈'}, '镉', '骼', '哿', '舸', '虼', '硌', '哏', '亘',
    '艮', '茛', '赓', '哽', '绠', '鲠', '肱', '蚣', '觥', '珙', '佝', '缑', '篝',
    '鞲', '岣'{, '枸'}, '笱', '诟', '媾', '彀', '遘', '觏', '轱', '鸪', '菰', '蛄',
    '觚', '酤', '毂', '鹘', '汩', '诂', '牯', '罟'{, '钴'}, '嘏', '臌', '瞽', '崮',
    '梏', '牿', '痼', '锢', '鲴'{, '胍'}, '鸹'{, '呱'}, '卦', '诖', '倌', '鳏', '掼',
    '涫', '盥', '鹳', '咣', '桄'{, '胱'}, '犷', '妫', '皈', '鲑', '宄', '庋', '匦',
    '晷', '簋', '刿', '炅', '鳜', '衮', '绲', '磙', '鲧', '呙', '埚', '崞', '聒',
    '蝈', '帼', '掴', '虢', '馘', '猓', '椁', '蜾', '桧', '莞', '呷':
    Result := 'g';
    '鹄', '铪', '嗨', '胲', '醢', '顸', '蚶', '鼾', '邗', '晗', '焓', '菡', '颔',
    '撖', '瀚', '绗', '颃', '沆', '蒿', '嚆', '薅', '蚝', '嗥', '濠', '昊', '皓',
    '颢', '灏'{, '诃'}, '嗬', '劾', '曷', '盍', '颌', '阖', '翮', '壑', '桁', '珩',
    '蘅', '訇', '薨', '闳', '泓', '荭', '蕻', '黉', '讧', '瘊', '篌', '糇', '骺',
    '后', '逅', '堠', '鲎', '虍', '烀', '轷', '唿', '惚', '滹', '囫'{, '斛'}, '猢',
    '煳', '鹕', '槲', '醐', '觳', '浒'{, '琥'}, '冱', '岵', '怙', '戽', '祜', '笏',
    '扈', '瓠', '鹱', '骅', '铧', '桦', '踝', '獾', '洹', '萑', '锾', '寰', '缳',
    '鬟', '奂', '浣', '逭', '漶', '鲩', '擐', '肓', '隍', '徨', '湟', '遑', '潢',
    '璜', '篁'{, '癀'}, '蟥', '鳇', '诙', '咴', '虺', '晖', '珲', '麾', '隳', '洄'{,
    '茴'}, '哕', '浍'{, '荟'}, '恚', '彗', '喙', '缋', '蕙', '蟪', '阍', '馄', '诨',
    '溷', '耠', '锪', '劐', '攉', '钬', '夥', '镬', '嚯'{, '藿'}, '蠖', '砉', '圜',
    '後':
    Result := 'h';
    #0: Result := 'i';
    '丌', '叽', '乩', '玑', '芨', '矶', '咭', '剞', '唧', '屐', '笄', '嵇', '犄',
    '赍', '跻', '畿', '齑', '墼', '羁', '岌', '亟', '佶', '笈', '戢', '殛', '楫',
    '蒺', '瘠', '蕺', '虮', '掎', '戟', '嵴', '麂', '芰', '哜', '洎', '觊', '偈',
    '暨', '跽', '霁', '鲚', '稷', '鲫', '髻', '骥', '迦', '浃', '珈', '痂', '笳',
    '袈', '葭', '跏', '镓', '岬', '郏', '恝', '戛', '铗', '蛱', '胛', '瘕', '戋',
    '菅', '湔', '犍', '搛', '缣', '蒹', '鲣', '鹣', '鞯', '囝', '枧', '笕', '趼',
    '睑', '裥', '锏', '谫', '戬', '翦', '謇', '蹇', '牮', '谏', '楗', '毽', '腱',
    '僭', '踺', '茳', '豇', '缰', '礓', '耩', '洚', '绛', '犟', '糨', '艽', '姣',
    '茭', '蛟', '跤', '僬', '鲛', '鹪', '佼', '挢', '皎', '敫', '徼', '噍', '醮',
    '疖', '喈', '嗟', '孑', '讦', '诘', '拮', '桀', '婕', '颉', '碣', '鲒', '羯'{,
    '蚧'}, '骱', '钅', '矜', '衿', '卺', '堇', '廑', '馑'{, '槿'}, '瑾', '妗', '荩',
    '赆', '缙', '觐', '噤', '泾', '旌', '菁', '腈', '阱', '刭'{, '肼'}, '儆', '憬',
    '弪', '迳', '胫'{, '婧'}, '獍', '扃', '迥', '鸠', '赳', '阄', '啾', '鬏', '柩',
    '桕', '噘', '孓', '珏', '崛', '桷', '觖', '厥', '劂', '谲', '獗', '蕨', '橛',
    '镢', '蹶', '矍', '爝', '皲', '筠', '麇', '捃', '纟', '廴', '僦', '鹫', '苴',
    '掬', '椐', '琚', '锔', '裾', '雎', '鞫', '莒', '榉', '榘', '龃', '踽', '讵',
    '苣', '钜', '倨', '犋', '飓', '窭', '屦', '遽', '醵', '涓', '镌', '蠲', '锩',
    '桊', '狷', '隽', '鄄':
    Result := 'j';
    '蚵', '咔', '佧', '胩', '锎', '剀', '垲', '恺', '铠', '蒈', '锴', '忾', '龛',
    '戡', '侃', '莰', '阚', '瞰', '伉', '闶', '钪', '尻', '栲', '铐', '犒', '珂',
    '轲', '疴', '钶', '颏', '稞', '窠', '瞌', '蝌', '髁', '岢', '恪', '氪', '骒',
    '缂', '嗑', '溘', '锞', '裉', '铿', '倥', '崆', '箜', '芤', '眍', '叩', '筘',
    '蔻', '刳', '堀', '骷', '绔', '喾', '侉', '蒯', '郐', '哙', '狯', '脍', '髋',
    '诓', '哐', '诳', '夼', '邝', '圹', '纩', '贶', '悝', '逵', '馗'{, '喹'}, '揆',
    '暌', '睽', '蝰', '夔', '跬'{, '匮'}, '喟', '愦', '蒉', '篑', '聩', '琨', '锟',
    '髡', '醌', '鲲', '悃', '阃', '栝', '蛞':
    Result := 'k';
    '冫'{, '靓'}, '邋', '旯', '砬', '剌', '瘌', '崃', '徕', '涞', '铼', '赉', '睐',
    '濑', '癞', '籁', '岚', '褴', '斓', '镧', '榄', '漤', '罱', '啷'{, '莨'}, '稂',
    '锒', '螂', '阆', '蒗', '唠', '崂', '痨', '铹', '醪', '栳', '铑', '耢', '仂',
    '叻', '泐', '鳓', '嫘'{, '缧'}, '檑', '羸', '耒', '诔', '酹', '嘞', '塄', '愣',
    '骊', '喱', '鹂', '缡', '蓠', '蜊', '嫠', '鲡', '罹', '藜', '黧', '蠡', '俚',
    '娌', '逦', '锂', '澧', '醴', '鳢', '呖', '坜', '苈', '戾', '枥', '疠', '俪',
    '栎', '疬', '轹', '郦', '猁', '砺', '莅', '唳', '笠', '粝'{, '蛎'}, '詈', '跞',
    '雳', '溧', '篥', '奁', '裢', '鲢', '濂', '臁'{, '蠊'}, '琏', '裣', '蔹', '娈',
    '殓', '楝', '潋', '椋', '墚', '踉', '魉', '嘹', '寮', '獠', '缭', '鹩', '钌'{,
    '蓼'}, '尥', '咧', '冽', '洌', '埒', '捩', '趔', '躐', '鬣'{, '啉'}, '粼', '嶙',
    '遴', '辚', '瞵', '麟', '廪', '懔', '檩', '蔺'{, '膦'}, '躏', '囹', '泠'{, '苓'},
    '柃', '瓴', '棂', '绫', '翎', '聆', '蛉', '鲮', '酃', '呤', '熘', '浏', '旒',
    '遛', '骝', '镏', '鎏', '绺', '锍', '鹨', '泷', '茏', '栊', '珑', '胧', '砻'{,
    '癃'}, '垅', '偻'{, '偻'}, '喽', '蒌', '耧', '蝼', '髅', '嵝', '瘘', '镂', '噜',
    '撸', '垆', '泸', '栌', '胪', '轳', '鸬', '舻', '鲈', '橹', '镥', '辂', '渌',
    '逯', '漉', '辘', '璐', '簏', '鹭', '氇', '闾', '榈', '稆':
    Result := 'l';
    '膂', '褛', '栾', '鸾', '脔', '銮', '锊', '囵', '捋', '猡', '脶', '椤', '镙',
    '倮', '瘰', '蠃', '泺', '荦', '珞', '摞', '漯', '雒', '呒', '嬷'{, '蟆'}, '犸',
    '杩', '唛', '霾', '荬', '劢', '颟', '鞔'{, '鳗'}, '螨', '墁', '幔', '缦', '熳',
    '镘', '邙', '硭', '漭', '蟒', '牦', '旄', '蛑', '髦'{, '蝥'}, '蟊', '峁', '泖',
    '茆', '昴', '耄', '袤', '瑁', '瞀', '懋'{, '莓'}, '嵋', '湄', '猸', '楣', '镅',
    '鹛', '浼', '袂', '魅', '扪', '钔', '焖', '懑', '虻', '甍', '瞢', '朦', '礞',
    '艨', '勐', '艋', '蜢', '懵', '蠓'{, '咪'}, '祢', '猕', '縻', '麋', '蘼', '芈',
    '弭', '敉', '脒', '糸', '汨', '宓', '谧'{, '嘧'}, '沔', '黾', '眄', '湎', '腼',
    '喵', '鹋', '杪', '眇', '淼', '缈', '邈', '咩', '篾', '蠛', '岷', '玟', '苠',
    '珉', '缗', '闵', '泯', '愍', '鳘', '茗', '冥', '溟', '暝', '瞑', '酩', '缪',
    '谟', '嫫', '馍', '麽', '殁'{, '茉'}, '秣', '蓦', '貊', '瘼', '镆', '貘', '耱',
    '哞', '侔', '眸', '鍪', '毪', '仫', '沐', '坶', '苜', '钼', '渑':
    Result := 'm';
    '拗', '廾', '乜', '镎', '肭', '衲', '捺', '艿', '柰'{, '萘'}, '鼐', '囡'{, '喃'},
    '楠', '赧', '腩', '蝻', '囔', '馕', '曩', '攮', '孬', '呶', '硇', '铙', '猱',
    '蛲', '垴', '瑙', '讷', '坭', '怩', '铌', '猊', '鲵', '伲', '旎', '昵', '睨',
    '鲇', '鲶', '黏', '辇', '廿', '埝', '茑', '袅', '嬲'{, '脲'}, '陧', '臬', '嗫',
    '颞', '蹑', '蘖', '咛', '聍', '佞', '甯', '妞', '忸', '狃', '侬', '哝', '耨',
    '孥', '驽', '弩', '胬', '钕', '恧', '衄', '傩', '喏', '搦', '锘', '恁':
    Result := 'n';
    '噢', '讴', '瓯', '耦', '怄':
    Result := 'o';
    '钯', '拚', '彷', '冖', '葩'{, '杷'}, '筢', '俳'{, '哌'}, '蒎', '爿', '蹒', '蟠'{,
    '泮'}, '袢', '襻', '滂', '逄', '螃', '脬', '庖', '狍', '匏', '疱', '醅', '锫',
    '帔', '旆', '辔', '霈', '湓', '怦', '嘭', '堋', '蟛', '丕', '纰', '邳', '铍',
    '噼', '芘'{, '枇'}, '蚍', '郫', '陴', '埤', '罴', '蜱', '貔', '鼙', '庀', '仳',
    '圮', '擗'{, '癖'}, '淠', '媲', '睥', '甓', '犏', '翩', '骈', '胼', '蹁', '谝',
    '剽', '缥'{, '螵'}, '殍', '瞟'{, '嘌'}, '嫖', '氕', '丿', '苤', '姘', '嫔', '颦',
    '榀', '牝', '娉', '俜', '枰', '鲆', '钋', '鄱', '皤', '叵', '钷', '笸'{, '珀'},
    '掊', '裒', '攴', '噗', '匍', '璞', '濮', '镤', '溥', '氆', '镨', '蹼', '刂',
    '忄', '尢':
    Result := 'p';
    '匚', '袷', '湫', '峤', '趄'{, '瞿'}, '桤', '萋', '嘁', '槭', '蹊', '亓', '圻',
    '岐'{, '芪'}, '耆', '颀', '淇', '萁', '骐', '琦', '琪', '祺', '蛴', '綦', '蜞',
    '蕲', '鳍', '麒', '屺', '芑'{, '杞'}, '绮', '綮', '汔', '荠', '葺', '碛', '憩',
    '葜', '髂', '阡', '芊', '佥', '岍', '悭', '愆', '骞', '搴', '褰', '钤', '虔',
    '掮', '箝', '肷', '慊', '缱', '芡', '茜', '倩', '椠', '戕', '戗', '跄', '蜣',
    '锖', '锵', '镪', '嫱', '樯'{, '羟'}, '襁', '炝', '硗', '跷', '劁', '缲'{, '荞'},
    '谯', '憔', '鞒', '樵', '愀', '诮', '妾', '挈', '惬', '箧', '锲', '衾'{, '芩'}{,
    '嗪'}, '溱', '噙', '檎', '螓', '锓', '吣', '揿', '圊', '蜻', '鲭', '檠', '黥',
    '苘', '謦', '箐', '磬', '罄', '跫', '銎', '邛', '穹', '茕', '筇', '蛩', '蚯',
    '楸', '鳅', '犰', '虬', '俅', '逑', '赇'{, '巯'}, '遒', '裘', '蝤', '鼽', '糗',
    '岖', '诎'{, '祛'}, '蛐', '麴', '黢', '劬', '朐', '鸲', '蕖', '磲', '璩', '蘧',
    '氍', '癯', '衢', '蠼', '阒', '觑', '悛', '诠', '荃', '辁', '铨', '筌', '蜷',
    '鬈', '畎', '绻', '悫', '阕', '阙', '逡', '郄'{, '镪'}:
    Result := 'q';
    '蚺'{, '髯'}, '苒', '禳', '穰', '荛', '桡', '娆', '荏', '稔', '仞', '轫', '饪',
    '衽', '肜', '狨', '嵘', '榕', '蝾', '糅', '蹂', '鞣', '铷', '嚅', '濡', '薷',
    '襦', '颥', '洳', '溽', '缛', '蓐', '朊', '蕤', '芮', '枘', '蚋', '睿', '偌',
    '箬':
    Result := 'r';
    '灬', '杓', '丨', '凵', '葚', '仨', '卅', '飒', '脎'{, '噻'}, '毵', '糁', '馓',
    '搡', '磉', '颡', '缫', '臊', '鳋', '埽', '瘙', '啬', '铯', '穑', '铩'{, '痧'},
    '裟'{, '鲨'}, '唼', '歃', '霎', '彡', '芟', '姗', '钐', '埏', '舢', '跚', '潸',
    '膻', '讪', '疝', '骟', '鄯', '嬗', '蟮', '鳝', '殇', '觞', '熵', '垧', '绱',
    '筲', '艄', '蛸', '劭', '潲', '猞', '畲', '佘', '厍', '滠'{, '麝'}, '诜', '哂',
    '矧', '谂', '渖', '胂', '椹', '蜃', '笙', '眚', '晟', '嵊', '蓍', '酾', '鲺',
    '饣', '炻', '埘', '莳', '鲥', '豕', '礻', '贳', '舐', '轼', '铈', '弑', '谥',
    '筮', '螫', '艏', '狩', '绶', '殳', '纾', '姝', '倏', '菽', '摅', '毹', '秫',
    '塾', '沭', '腧', '澍', '唰', '蟀', '闩', '涮', '孀', '氵', '妁', '铄', '嗍',
    '搠', '蒴', '槊', '厶', '咝', '鸶', '缌', '蛳', '厮', '锶', '澌', '汜', '兕',
    '姒', '祀', '泗', '驷', '俟', '笥', '耜', '忪', '凇', '崧', '淞', '菘', '嵩',
    '燧', '邃', '狲', '荪', '飧', '隼', '榫', '娑', '挲'{, '挲'}{, '挲'}, '桫', '睃',
    '嗦', '唢', '莘', '悚', '竦', '嗖', '溲', '馊', '飕', '锼', '螋', '叟', '嗾',
    '瞍', '薮', '稣', '夙', '涑', '谡', '嗉', '愫', '蔌', '觫', '簌', '狻', '荽',
    '眭', '睢', '濉', '谇':
    Result := 's';
    '沓', '呔', '焘', '钭', '冂', '苕', '扌', '趿', '铊', '溻', '鳎', '闼', '遢',
    '榻', '骀', '邰', '炱', '跆', '鲐', '薹'{, '肽'}, '钛', '昙', '郯', '覃', '锬',
    '忐', '钽', '铴', '羰', '镗', '饧', '溏', '瑭', '樘', '螗', '螳', '醣', '帑',
    '傥', '耥', '韬', '饕', '洮', '啕', '鼗', '忑', '忒', '铽', '慝', '滕', '绨',
    '缇', '鹈', '醍', '倜', '悌', '逖', '裼', '畋', '阗', '忝', '殄', '掭', '佻',
    '祧', '笤', '龆', '蜩', '髫', '鲦', '窕', '粜', '萜', '餮', '莛', '婷', '葶',
    '蜓', '霆', '梃', '嗵', '仝', '佟', '茼', '砼', '僮', '潼', '恸', '骰', '荼',
    '酴', '钍', '堍', '菟', '抟', '疃', '彖', '煺', '暾', '饨', '豚'{, '氽'}, '乇'{,
    '佗'}, '坨', '沱', '柁', '砣', '跎', '酡', '橐', '鼍', '庹', '柝', '箨':
    Result := 't';
    '亠', '娲', '佤', '腽', '崴', '剜', '蜿', '纨', '芄', '绾', '脘', '菀', '琬',
    '畹', '罔', '惘', '辋', '魍', '偎', '逶', '隈', '葳', '煨', '薇', '囗', '帏',
    '沩', '闱', '涠', '帷', '嵬', '炜', '玮', '洧', '娓', '诿', '隗', '猥', '痿',
    '艉', '韪', '鲔', '軎', '猬', '阌', '雯', '刎', '汶', '璺', '蓊', '蕹', '倭',
    '莴', '喔'{, '肟'}, '幄', '渥', '硪', '龌', '圬', '邬', '浯', '蜈', '鼯', '仵',
    '妩', '庑', '忤', '怃', '迕', '牾', '鹉', '兀', '阢', '杌', '芴', '焐', '婺',
    '痦', '骛', '寤', '鹜', '鋈':
    Result := 'w';
    '郇', '彐', '噱', '荨', '圩', '兮', '穸', '郗', '唏', '奚', '浠', '欷', '淅',
    '菥', '粞', '翕', '舾', '皙', '僖', '蜥', '嬉', '樨', '歙', '熹', '羲', '螅',
    '蟋', '醯', '曦', '鼷', '觋', '隰', '玺', '徙', '葸', '屣', '蓰', '禧', '饩',
    '阋', '舄', '禊', '狎', '柙', '硖', '遐', '瑕', '黠', '罅', '氙', '祆', '籼',
    '莶', '跹'{, '酰'}, '暹', '娴', '痫', '鹇', '冼', '猃', '蚬', '筅', '跣', '藓',
    '燹', '岘', '苋', '霰', '芗', '缃', '葙', '骧', '庠', '饷', '飨', '鲞', '蟓',
    '枭', '哓', '枵', '骁', '绡'{, '逍'}, '潇', '箫', '魈', '崤', '筱', '偕', '勰',
    '撷'{, '缬'}, '蕈', '绁', '亵', '渫', '榍', '榭', '廨', '獬', '薤', '邂', '燮',
    '瀣', '躞', '昕', '歆'{, '馨'}{, '鑫'}, '囟', '陉', '硎', '擤', '荇', '悻'{, '芎'},
    '咻', '庥', '鸺', '貅', '馐', '髹', '岫'{, '溴'}, '盱', '胥', '顼', '诩', '栩',
    '糈'{, '醑'}, '洫', '勖', '溆', '煦', '蓿', '谖', '揎', '萱', '暄', '煊', '儇',
    '痃', '漩', '璇', '泫', '炫', '铉', '渲', '楦', '碹', '镟', '泶', '踅'{, '鳕'},
    '谑', '埙', '窨', '獯', '薰', '曛', '醺', '峋', '恂', '洵', '浔', '荀', '鲟',
    '徇', '巽','学','雪':
    Result := 'x';
    '肀', '剡', '桠', '伢', '岈', '琊', '睚', '痖', '迓', '垭', '娅', '砑', '氩',
    '揠', '恹', '胭', '崦', '菸', '湮', '腌', '鄢', '嫣', '讠', '闫'{, '妍'}, '芫',
    '筵', '檐', '兖', '俨', '偃', '厣', '郾', '琰', '罨', '魇', '鼹', '晏', '焱',
    '滟', '酽', '谳', '餍', '赝', '泱', '鞅', '炀', '徉', '烊', '蛘', '怏', '恙',
    '幺', '夭', '吆', '爻', '肴', '轺', '珧', '徭', '繇', '鳐', '杳', '窈', '崾',
    '鹞', '曜', '揶', '铘', '邺', '晔', '烨', '谒', '靥', '衤', '咿', '猗', '欹',
    '漪', '噫', '黟', '圯', '诒'{, '怡'}, '迤', '饴', '咦', '荑', '贻', '眙', '酏',
    '痍', '嶷', '钇', '苡', '舣', '旖', '弋', '刈', '仡', '佚', '呓', '佾', '峄',
    '怿', '驿', '奕', '弈', '羿', '轶', '悒', '挹', '埸', '翊', '缢', '瘗', '蜴',
    '熠', '镒', '劓', '殪', '薏'{, '翳'}, '癔', '镱', '懿', '洇', '氤', '铟', '喑',
    '堙', '垠', '狺', '鄞', '夤'{, '龈'}, '霪'{, '吲'}, '蚓', '瘾', '茚', '胤', '莺',
    '瑛', '嘤', '撄', '罂', '璎', '鹦', '膺', '茔', '荥', '萦', '楹', '滢', '蓥',
    '潆', '嬴', '瀛', '郢', '颍', '瘿', '媵', '唷', '邕', '墉', '慵', '壅', '镛',
    '鳙', '狳', '谀', '馀', '萸', '雩', '嵛', '揄', '腴', '瑜', '觎', '疋', '饔',
    '喁', '甬', '俑', '攸', '呦', '柚', '疣', '莜', '莸', '蚰', '鱿', '猷', '蝣',
    '卣', '莠', '铕', '牖', '黝', '侑', '囿', '宥', '蚴', '鼬', '纡', '妤', '欤',
    '於', '臾', '禺', '竽', '舁', '窬', '蝓', '伛', '俣', '圄', '圉', '庾', '瘐',
    '窳', '龉', '聿', '妪', '饫', '昱', '钰', '谕', '阈', '鹆', '煜', '蓣', '毓',
    '蜮', '燠', '鹬', '鬻', '鸢', '眢', '箢', '沅', '爰', '鼋', '塬'{, '橼'}, '螈',
    '垸', '媛', '掾', '瑗', '刖', '钺', '樾', '龠', '瀹', '纭', '芸', '昀', '氲',
    '狁', '殒', '郓', '恽', '愠', '韫', '熨':
    Result := 'y';
    '辶', '浞', '诼', '禚', '擢', '濯', '镯', '赀', '缁', '谘', '孳', '嵫', '粢',
    '辎', '觜'{, '觜'}, '趑', '锱', '龇', '髭', '鲻', '姊', '秭', '耔', '笫', '梓',
    '訾', '恣', '眦', '偬', '粽', '驺', '诹', '陬', '鄹', '鲰', '酢'{, '喋'}, '阝',
    '咂', '拶'{, '甾'}, '崽', '糌', '簪', '昝', '趱', '錾', '瓒', '臧', '驵', '奘',
    '唣', '迮', '啧', '帻', '笮', '舴', '箦', '赜', '仄', '昃', '谮', '缯', '罾',
    '锃', '甑', '吒', '哳', '揸'{, '楂'}, '齄', '砟', '咤', '痄', '蚱', '砦', '瘵',
    '旃', '谵', '搌', '鄣', '嫜', '獐', '璋'{, '蟑'}, '仉', '嶂', '幛', '钊', '啁',
    '诏', '笊', '棹', '蜇', '辄', '谪', '摺', '磔'{, '赭'}, '褶', '柘', '鹧', '浈',
    '桢', '祯', '蓁', '榛', '箴', '胗', '轸', '畛', '缜', '稹', '圳', '鸩', '朕',
    '赈', '峥', '钲', '铮', '筝', '徵', '诤', '卮'{, '栀'}, '祗', '胝', '埴', '絷'{,
    '跖'}, '摭', '踯', '芷', '祉', '咫', '枳', '轵', '黹'{, '酯'}, '忮', '豸', '帙',
    '郅', '栉', '陟', '桎', '贽', '轾', '鸷', '彘', '痣', '蛭', '骘', '雉', '膣',
    '觯', '踬', '舯', '锺', '螽', '冢', '踵', '妯', '碡', '纣', '绉', '胄', '荮',
    '酎', '籀', '侏', '邾', '洙', '茱', '铢', '槠', '潴', '橥'{, '竺'}, '舳', '瘃',
    '躅', '渚', '麈', '伫', '苎', '杼', '炷', '疰', '箸', '翥', '颛', '啭', '馔',
    '丬', '隹', '骓', '惴', '缒', '肫', '窀', '倬', '涿', '斫', '菹', '镞', '俎',
    '躜', '缵', '攥', '蕞', '樽', '鳟', '撙', '阼', '怍', '祚', '胙'{, '唑'}:
    Result := 'z';
  end;
end;


end.
