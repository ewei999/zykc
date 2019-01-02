unit Unit_public;

interface
  uses inifiles,system.Classes,Unit_DM,Data.Win.ADODB,cxGrid,Vcl.Dialogs,cxGridExportLink,
        System.SysUtils;

  function DownLoadFile(sURL, sFName: string): boolean;
  function XiTong_date() :TDateTime;//ϵͳʱ��
  function AutoCreateNo(aTableName:string;abeizhu:string):string;         //�Զ����
  function ut_padstring(inString :string; maxLength :integer; padChar :char; left :boolean) :string;
  procedure DaochuExcel(agrid : TcxGrid);
  function jisuan_danjia(jmbh: string;ckshuliang:string): TADOQuery ;
  function ChaXunKuCun(jmbh:string):Real;
  Function HZToPY(cSTR:String):String;
  Function Getpinyin_shoupinma(hzchar: Ansistring): ansichar; //��ó�������ƴ��
  Function GetPinyin_shoupinma2(hz: String): ansiChar;//��ȡ��Ƨ����ƴ��

type
   Tuser = record
     userID :string;         //��Ա���
     UserName : string;      //�û���
     UserPassword:string;    //����
     UserGW : string;         //��λ
   end;

var
  G_user : Tuser;
  G_IniSetingFile: TIniFile; //�����ļ�
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

Function Getpinyin_shoupinma(hzchar: Ansistring): ansichar; //��ó�������ƴ��
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
     ADOQuery_danjia.SQL.Text:='select ���=�������-��������-δ���� from ( select a.*, '+
      ' ��������=isnull((select sum(��������) from ������_����� where ״̬=2  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ���) ,0), '+
      ' δ����=isnull((select sum(��������) from ������_����� where ״̬=1  and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ���) ,0) '+
      ' from ( select ��Ŀ���,sum(isnull(����,0)) as ������� from ����ɹ������ϸ�� '+
      ' where ����� in (select ����� from ����ɹ�������� where ״̬=1) and ��Ŀ���='+QuotedStr(jmbh)+' group by ��Ŀ��� '+
      ' )a left join ҩƷ��Ʒ��Ŀ�� b on a.��Ŀ���=b.��Ŀ��� )c';
     ADOQuery_danjia.Open;
     Result:=ADOQuery_danjia.FieldByName('���').AsFloat;
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
  ADOBianHao.SQL.Text:='select  top 0 ���� as ��Ӧ��,��Ŀ��� as ��Ӧ�̱��,����,�������� as ����,��������,�������,��ע from ����ɹ������ϸ��';
  ADOBianHao.Open;
  Result :=ADOBianHao;

  ADOQuery_danjia := TADOQuery.Create(nil);
  try
    ADOQuery_danjia.Connection := DataModule1.ADOCon_ALi;
    ADOQuery_danjia.SQL.Text := 'select ��Ӧ��,��������,sum(����ʣ������) as ����ʣ������,����=(select top 1 ���� from ��Ӧ�̱� where ��Ӧ�̱��=c.��Ӧ��),'+
    ' ��������,�������,��ע '+
    ' from ( select b.��������, ��Ӧ��,��������,�������,��ע,'+
    ' ����ʣ������=(case when С������-��������<0 then (case when С�ڵ�������-��������<0 then 0 else (С�ڵ�������-��������) end ) else b.���� end) from ('+
    ' select * , '+
    ' С������=isnull((select isnull(sum(����),0) from ����ɹ������ϸ�� where ����� in (select ����� from ����ɹ�������� where ״̬=1 ) '+
    '    and ��Ŀ���=a.��Ŀ��� and ��������=a.�������� and ��Ӧ��=a.��Ӧ�� and isnull(��ע,'''')=isnull(a.��ע,'''') and �������<a.�������),0),'+
    ' С�ڵ�������=isnull((select isnull(sum(����),0) from ����ɹ������ϸ�� where ����� in (select ����� from ����ɹ�������� where ״̬=1 ) '+
    '    and ��Ŀ���=a.��Ŀ��� and ��������=a.�������� and ��Ӧ��=a.��Ӧ�� and isnull(��ע,'''')=isnull(a.��ע,'''') and �������<=a.�������),0),'+
    ' ��������=isnull((select sum(��������) from ������_����� where ״̬ in (1,2) and �Ƿ�����=0 and ��Ŀ���=a.��Ŀ��� and ����=a.��������'+
    '  and ��Ӧ��=a.��Ӧ�� and isnull(��Ŀ��ע,'''')=isnull(a.��ע,'''')  ),0)'+
    ' from ( select ��Ŀ���,�������,��������,����,��������,�������,��ע,'+
    ' ��Ӧ��=(select top 1 ��Ӧ�� from ����ɹ�������� where �����=����ɹ������ϸ��.�����) from ����ɹ������ϸ��  '+
    ' where ��Ŀ���='+QuotedStr(jmbh)+' and ����� in (select ����� from ����ɹ�������� where ״̬=1 ) )a)b)c where ����ʣ������>0 '+
    ' group by ��Ӧ��,��������,��������,�������,��ע' ;
    ADOQuery_danjia.Active := true;
    if ADOQuery_danjia.RecordCount >0 then
    begin
      ADOQuery_danjia.First;
      b:=0;
      ck :=  StrToFloat(ckshuliang);
      while not ADOQuery_danjia.Eof do
      begin
        b := b+1;
        if ck <= ADOQuery_danjia.FieldByName('����ʣ������').AsFloat then
        begin
          if b=1 then
          begin
            ADOBianHao.Append;
            ADOBianHao.FieldByName('��Ӧ�̱��').AsString:= ADOQuery_danjia.FieldByName('��Ӧ��').AsString;
            ADOBianHao.FieldByName('��Ӧ��').AsString:= ADOQuery_danjia.FieldByName('����').AsString;
            ADOBianHao.FieldByName('����').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
            ADOBianHao.FieldByName('��ע').AsString:= ADOQuery_danjia.FieldByName('��ע').AsString;
            ADOBianHao.FieldByName('��������').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
            ADOBianHao.FieldByName('�������').AsFloat:= ADOQuery_danjia.FieldByName('�������').AsFloat;
            ADOBianHao.FieldByName('����').AsFloat:= ck;
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
              if (ADOBianHao.FieldByName('��Ӧ�̱��').AsString=ADOQuery_danjia.FieldByName('��Ӧ��').AsString)
              and (ADOBianHao.FieldByName('����').asfloat=ADOQuery_danjia.FieldByName('��������').asfloat)
              and (ADOBianHao.FieldByName('��������').asfloat=ADOQuery_danjia.FieldByName('��������').asfloat)
              and (ADOBianHao.FieldByName('�������').asfloat=ADOQuery_danjia.FieldByName('�������').asfloat)
              and (ADOBianHao.FieldByName('��ע').AsString=ADOQuery_danjia.FieldByName('��ע').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('����').AsFloat:=ADOBianHao.FieldByName('����').AsFloat+ck;
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('��Ӧ�̱��').AsString:= ADOQuery_danjia.FieldByName('��Ӧ��').AsString;
              ADOBianHao.FieldByName('��Ӧ��').AsString:= ADOQuery_danjia.FieldByName('����').AsString;
              ADOBianHao.FieldByName('��ע').AsString:= ADOQuery_danjia.FieldByName('��ע').AsString;
              ADOBianHao.FieldByName('����').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
              ADOBianHao.FieldByName('����').AsFloat:= ck;
              ADOBianHao.FieldByName('��������').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
              ADOBianHao.FieldByName('�������').AsFloat:= ADOQuery_danjia.FieldByName('�������').AsFloat;
              ADOBianHao.Post;
            end;
            ck:=0;
            Break;
          end;
        end
        else
        begin
          if StrToFloat(ckshuliang) <= ADOQuery_danjia.FieldByName('����ʣ������').AsFloat then
          begin
            ADOBianHao.First;
            i_int:=0;
            while not ADOBianHao.Eof do
            begin
              if (ADOBianHao.FieldByName('��Ӧ�̱��').AsString=ADOQuery_danjia.FieldByName('��Ӧ��').AsString)
              and (ADOBianHao.FieldByName('����').asfloat=ADOQuery_danjia.FieldByName('��������').asfloat)
              and (ADOBianHao.FieldByName('��������').asfloat=ADOQuery_danjia.FieldByName('��������').asfloat)
              and (ADOBianHao.FieldByName('�������').asfloat=ADOQuery_danjia.FieldByName('�������').asfloat)
              and (ADOBianHao.FieldByName('��ע').AsString=ADOQuery_danjia.FieldByName('��ע').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('����').AsFloat:=ADOBianHao.FieldByName('����').AsFloat+StrToFloat(ckshuliang);
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('��Ӧ�̱��').AsString:= ADOQuery_danjia.FieldByName('��Ӧ��').AsString;
              ADOBianHao.FieldByName('��Ӧ��').AsString:= ADOQuery_danjia.FieldByName('����').AsString;
              ADOBianHao.FieldByName('��ע').AsString:= ADOQuery_danjia.FieldByName('��ע').AsString;
              ADOBianHao.FieldByName('����').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
              ADOBianHao.FieldByName('����').AsFloat:= StrToFloat(ckshuliang);
              ADOBianHao.FieldByName('��������').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
              ADOBianHao.FieldByName('�������').AsFloat:= ADOQuery_danjia.FieldByName('�������').AsFloat;
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
              if (ADOBianHao.FieldByName('��Ӧ�̱��').AsString=ADOQuery_danjia.FieldByName('��Ӧ��').AsString)
              and (ADOBianHao.FieldByName('����').asfloat=ADOQuery_danjia.FieldByName('��������').asfloat)
              and (ADOBianHao.FieldByName('��������').asfloat=ADOQuery_danjia.FieldByName('��������').asfloat)
              and (ADOBianHao.FieldByName('�������').asfloat=ADOQuery_danjia.FieldByName('�������').asfloat)
              and (ADOBianHao.FieldByName('��ע').AsString=ADOQuery_danjia.FieldByName('��ע').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('����').AsFloat:=ADOBianHao.FieldByName('����').AsFloat+ADOQuery_danjia.FieldByName('����ʣ������').AsFloat;
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('��Ӧ�̱��').AsString:= ADOQuery_danjia.FieldByName('��Ӧ��').AsString;
              ADOBianHao.FieldByName('��Ӧ��').AsString:= ADOQuery_danjia.FieldByName('����').AsString;
              ADOBianHao.FieldByName('��ע').AsString:= ADOQuery_danjia.FieldByName('��ע').AsString;
              ADOBianHao.FieldByName('����').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
              ADOBianHao.FieldByName('����').AsFloat:= ADOQuery_danjia.FieldByName('����ʣ������').AsFloat;
              ADOBianHao.FieldByName('��������').AsFloat:= ADOQuery_danjia.FieldByName('��������').AsFloat;
              ADOBianHao.FieldByName('�������').AsFloat:= ADOQuery_danjia.FieldByName('�������').AsFloat;
              ADOBianHao.Post;
            end;
            ck := ck- ADOQuery_danjia.FieldByName('����ʣ������').AsFloat;
          end;

        end;
        ADOQuery_danjia.Next;
      end;
      if ck>0 then   //ʣ�����ε�����������
      begin
        ADOBianHao.Append;
        ADOBianHao.FieldByName('��Ӧ��').AsString:= '��治��';
        ADOBianHao.Post;
      end;
    end
    else
    begin
      ADOBianHao.Append;
      ADOBianHao.FieldByName('��Ӧ��').AsString:= '�޻�';
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
    SaveDialog1.Filter :='(Excel���ʽxls)|*.xls';
    SaveDialog1.Title := '��ѡ��Ҫ������ļ���';
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
     L_query_date.SQL.Text := 'select getdate() as ϵͳʱ��';
     L_query_date.Open;
     result := L_query_date.FieldByName('ϵͳʱ��').AsDateTime;
   finally
     L_query_date.Free;
   end;
end;

function DownLoadFile(sURL, sFName: string): boolean;
var //�����ļ�
  tStream: TMemoryStream;
begin
  tStream := TMemoryStream.Create;
  try //��ֹ����Ԥ�ϴ�����
    try
      DataModule1.IdHTTP_main.Get(sURL, tStream); //���浽�ڴ���
      tStream.SaveToFile(sFName); //����Ϊ�ļ�

      Result := True;
    finally //��ʹ��������Ԥ�ϵĴ���Ҳ�����ͷ���Դ
      tStream.Free;
    end;
  except //��ķ�������ִ�еĴ���
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
    l_query.sql.text := 'select * from ��ű� where ���ͷ='+ QuotedStr(aTableName)+' ';
    l_query.open;
    if l_query.Eof=True then
    begin
      l_query.Close;
      l_query.sql.text := 'insert into ��ű�(���ͷ,��ǰ���,��ų���,��ע)'+
                          ' values('+quotedstr(aTableName)+',''0'',''8'', '+quotedstr(abeizhu)+')';
      l_query.ExecSQL;
    end;

    l_query.Close;
    l_query.SQL.Text := 'select * from ��ű� where ���ͷ = '+ QuotedStr(aTableName);
    l_query.Open;

    number :=  l_query.FieldByName('��ǰ���').AsInteger;
    cdmax:=1;
    bhcd := l_query.FieldByName('��ų���').AsInteger;
    for cd := 1 to bhcd-1 do
    cdmax := cdmax*10;

    while l_query.FieldByName('��ǰ���').AsInteger<>number+1 do
    begin

      number :=  l_query.FieldByName('��ǰ���').AsInteger;
      if number+1 > 9*cdmax then
      begin
        l_query.Close;
        l_query.SQL.Text := 'update ��ű�  set ��ų��� = '+inttostr(bhcd+1)+' where ���ͷ = '+ QuotedStr(aTableName);
        l_query.ExecSQL;
      end;
      l_query.Close;
      l_query.SQL.Text := 'update ��ű�  set ��ǰ��� = ��ǰ���+1 where ���ͷ = '+ QuotedStr(aTableName);
      l_query.ExecSQL;

      l_query.Close;
      l_query.SQL.Text := 'select * from ��ű� where ���ͷ = '+ QuotedStr(aTableName);
      l_query.Open;
    end;
    Result := l_query.fieldbyname('���ͷ').AsString +ut_padstring(IntToStr(l_query.fieldbyname('��ǰ���').AsInteger),l_query.fieldbyname('��ų���').AsInteger,'0',True)
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

Function GetPinyin_shoupinma2(hz: String): ansiChar;//��ȡ��Ƨ����ƴ��
begin
  case hz[1] of
    '��': Result := 'A';
    '�': Result := 'A';
    '��': Result := 'A';
    '��': Result := 'B';
    '��': Result := 'B';
    '��': Result := 'B';
    '��': Result := 'B';
    '��': Result := 'B';
    '��': Result := 'B';
    '��': Result := 'C';
    '��': Result := 'C';
    '��': Result := 'D';
    '��': Result := 'D';
    '��': Result := 'D';
    '߰': Result := 'D';
    '��': Result := 'D';
    '�': Result := 'D';
    '�': Result := 'D';
    '�': Result := 'D';
    'ݭ': Result := 'E';
    '߻': Result := 'F';
    '��': Result := 'F';
    '��': Result := 'G';
    '��': Result := 'G';
    '��': Result := 'G';
    '��': Result := 'G';
    '��': Result := 'G';
    '��': Result := 'G';
    '��': Result := 'G';
    '��': Result := 'H';
    'ڭ': Result := 'H';
    '��': Result := 'H';
    '�': Result := 'H';
    '��': Result := 'H';
    '��': Result := 'H';
    '޽': Result := 'H';
    '�': Result := 'J';
    '��': Result := 'J';
    '��': Result := 'J';
    '�': Result := 'J';
    '�': Result := 'K';
    '��': Result := 'K';
    '�': Result := 'L';
    '��': Result := 'L';
    '��': Result := 'L';
    '��': Result := 'L';
    'ޤ': Result := 'L';
    '��': Result := 'L';
    '�': Result := 'L';
    '�': Result := 'L';
    'ݹ': Result := 'L';
    '��': Result := 'L';
    '�': Result := 'M';
    '��': Result := 'M';
    '��': Result := 'M';
    'ݮ': Result := 'M';
    '��': Result := 'M';
    '��': Result := 'M';
    '��': Result := 'M';
    '��': Result := 'N';
    '�': Result := 'N';
    '��': Result := 'N';
    '��': Result := 'P';
    '��': Result := 'P';
    '��': Result := 'P';
    '�': Result := 'P';
    '��': Result := 'P';
    '��': Result := 'P';
    '��': Result := 'P';
    '��': Result := 'P';
    '��': Result := 'Q';
    '��': Result := 'Q';
    '�': Result := 'Q';
    '��': Result := 'Q';
    '�': Result := 'Q';
    '��': Result := 'Q';
    '��': Result := 'Q';
    '��': Result := 'Q';
    '��': Result := 'Q';
    '��': Result := 'R';
    '��': Result := 'S';
    '��': Result := 'S';
//    '��': Result := 'S';
    '��': Result := 'S';
    '��': Result := 'S';
    '��': Result := 'T';
    '��': Result := 'T';
    '٢': Result := 'T';
    '�': Result := 'W';
    '��': Result := 'X';
    'Ѫ': Result := 'X';
//    '��': Result := 'X';
    '��': Result := 'X';
    '��': Result := 'X';
    '��': Result := 'X';
    '��': Result := 'X';
    '��': Result := 'X';
    'ܰ': Result := 'X';
    'ܺ': Result := 'X';
    '��': Result := 'X';
    '��': Result := 'Y';
    '��': Result := 'Y';
    '��': Result := 'Y';
    '��': Result := 'Y';
    '��': Result := 'Y';
    '��': Result := 'Y';
    '��': Result := 'Y';
    '��': Result := 'Z';
//    '��': Result := 'Z';
    '��': Result := 'Z';
    '��': Result := 'Z';
    '�': Result := 'Z';
    '��': Result := 'Z';
//    '�': Result := 'Z';
    '��': Result := 'Z';
    '��': Result := 'Z';
    '�': Result := 'D';
    '�': Result := 'Z';
    '��': Result := 'B';
    '��': Result := 'B';
    '�f': Result := 'E';
    'ܽ': Result := 'F';
    '�h': Result := 'J';
    '��': Result := 'J';
    '�': Result := 'P';
    '��': Result := 'S';
    '�q': Result := 'T';
    '��': Result := 'Y';
    'Һ': Result := 'Y';
    '��': Result := 'Z';
    '�Y': Result := 'Z';
    '��': Result := 'Z';
    '��': Result := 'Z';

    '߹', '�', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�', {'��',}
    '��', '��', '��', '��', {'�',} '��', '��', '��', '��', '�', '��', '��', '��',
    '��'{, '��'}, '��', '��', '��', '�', '��', '��'{, '��'}:
    Result := 'a';
    '�', '��', '��', '��', '��', '��', '�', '��', '��', '��', '�', '�', '��',
    '��', '��', '��', '�', '��', '��'{, '��'}, '��', '��', '�'{, '��'}, '��', '��',
    '��', '��', '��', '�', '��', '��', '��', '��', '��', '��', '�', '��', '��',
    '��', '�', 'ݩ', 'ذ'{, '��'}, '��', '��', '��', '��', '�', '��', '��', '��'{,
    '��'}, '�', '��'{, '��'}, '��', '�', '��', '��', '��', '��', '��', '��', '��',
    '޵', '�', '��', '�', '��', '�', '��', '��', '��', '��', '�', '��', '��',
    '��', '��', '��', '��'{, '��'}, '��', '�', '��', '��', '�', '��', '�', '�',
    '��', '�', '��', '��', '��', '��'{, '��'}, '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '�', '��', '��', '��', '�', '��', '��', '��',
    '��', '�'{, '��'}, '��', '��', '��', '��', '߲', '��', '�', '��', '�', '��':
    Result := 'b';
    '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '�', 'ܳ', '��',
    '�', '�', '��', '�', '��', '��', '�', '�', '��', '��', '��', '��', '�',
    '��', '٭', '�', '��', '��', '�', '��', '��', '��', '��', '��', '�', '��',
    '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��',
    '��', '�', '�', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��',
    '�', '��', '�', '��', '��', '��', '�', '��', '��', '��', '��', '�', 'ة',
    '��', '��', '��', '��', '��', '��', '��', '�', '�', '��', '��', '��', '��',
    '�', '��', '��', 'ܯ', '��', '��'{, '��'}, '��', '��', '߳', '��', '�', '�',
    '��', '�', '��', '��', '��', '�', '��', '�', '�', 'ٱ', '��', '�', '��',
    '��', 'ۻ', '��', '��', '��', '��', '��', 'ء', '��', '�', '��', '��', '��',
    '�', '��', '��', '��', '�', '��', '��', '�', '��', '��', '��', '�', '�',
    '��', 'ݻ', '��', '��', '�', '��', '��', '��', '��', '��', '��'{, '��'}, '��',
    '��', '�', '��', '��', '�', '��', '�', '��', '��', '�', '��', '��', '��',
    '��', '��', 'ߥ', '��', '��', '��', '�', '��', '�', '��', '�', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', '�', '��', '�', '��':
    Result := 'c';
    '��', '��', '�', '��', '�', '��', '��', '��', '��', '�'{, '߰'}, '�', '��',
    '��', 'ܤ'{, '��'}, '��', '��', '��', '��', '��', '��', '��', '�', '��', '�',
    '��', '��', '��', '�', '�'{, '��'}, '߶', '��', '�', '��', '�', '��', '��',
    '�', '��', '��', '��', '��', '��', '��', '��', 'ݶ', '��', 'ص', 'ڮ', 'ۡ',
    '��', '��', '��', '��', '�', '��', '�', '��', '��', '��', '��', '�', '��',
    '��', '��', '��', '��'{, '�'}, '��', '��', '��', '��', '��', '�', 'ܦ', '��',
    '��', '�', '��', '��', '��', '��', '��', '��'{, '��'}{, '�'}, '��', '��', '��',
    '��', '�', '�', '�', '��', '�', '��', '��', '��', '��', '��', '�'{, '�'},
    '�', '��', '��', '�', '��', '��', '��', 'ܶ', '�', '�', '��', '��', '�',
    '��', '�', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��'{,
    '��'}, '�', '��', '��', '��', '��', '�', '�', '��', '�', 'ؼ':
    Result := 'd';
    '��'{, 'ݭ'}, '�', '�', '��', '��', '��', '��', '��', '��', '�', '��', '��',
    '��', '��', '�', 'ج', '��', '��', '��', '�', '��', '��', '��', '��', '٦',
    '��', '��', '��':
    Result := 'e';
    '��', '��', '�', 'ެ', '��', '��', '��', '�', '��', '��', '��', '��', '��',
    '��', '��', '�', '��', '��', '��', '��', '��', '��', '�', '�', '�', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '�', '��', '�', '��', 'ۺ',
    '��', 'ٺ', '�'{, '߻'}, '��', '��', '��', '��', '��', '��'{, 'ܽ'}, '��', '��',
    '�', '�', '��', '��', '�'{{, '��'}, 'ۮ', '��', 'ݳ', '�', '��', '��', '��',
    '��', '��', '�', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
    '�', '�', '��':
    Result := 'f';
    '�', '٤', '��', '��', '��', '��', '��', '��', '��', 'ؤ', '�', '��', '��'{,
    '��'}, '��', '��', '��', '��', '��', 'ߦ', '�', '�', '�', '��', '�', '��',
    '�', '��', 'غ', '�', '��', '��', '޻', 'ھ', '۬', '�', '��', '��', '��',
    'ت', '��', 'ܪ', '�'{, '��'}, '��', '��', '��', '��', '�', '��', '��', 'ب',
    '��', 'ݢ', '��', '��', '�', '��', '��', '�', '��', '��', '��', '��', '��',
    '��', '�'{, '��'}, '��', 'ڸ', '��', '�', '��', '��', '��', '�', '��', '��',
    '��', '��', '�', '��', '��', 'ڬ', '��', '�'{, '��'}, '��', '��', '�', '��',
    '��', '��', '��', '��', '��'{, '��'}, '�'{, '��'}, '��', 'ڴ', '��', '��', '��',
    '��', '��', '��', '��', '��'{, '��'}, '��', '�', '�', '��', '�', '��', '��',
    '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '�', '��', '�', '�', '��', '��', 'ݸ', '��':
    Result := 'g';
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�',
    '��', '�', '�', '��', '��', '��', '��', '޶', '�', '��', '�', '�', '�',
    '�', '�'{, 'ڭ'}, '��', '��', '��', '��', '�', '��', '��', '��', '��', '��',
    '޿', '��', 'ް', '��', '��', 'ݦ', 'ޮ', '��', 'ڧ', '��', '��', '��', '��',
    '��', '��', 'ܩ', '��', '�', '��', '��', '��', '�', '��', '��'{, '��'}, '�',
    '��', '��', '��', '��', '�', '�'{, '��'}, '��', '�', '��', '��', '��', '��',
    '��', '�', '��', '��', '��', '��', '��', '�', '�', '��', '��', '�', '��',
    '��', 'ۼ', '�', '��', '��', '��', 'ߧ', '��', '��', '��', '��', '��', '��',
    '�', '��'{, '�'}, '�', '��', 'ڶ', '��', '�', '��', '��', '��', '��', '�'{,
    '��'}, '��', '�'{, '��'}, '�', '��', '�', '��', 'ޥ', '�', '��', '��', 'ڻ',
    '��', '��', '��', '��', '߫', '��', '�', '��', '��'{, '޽'}, '�', '�', '��',
    '��':
    Result := 'h';
    #0: Result := 'i';
    'آ', 'ߴ', '��', '��', 'ܸ', '�', '��', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '�', '��', '�', '�', 'ؽ', '٥', '��', '�', '��', '�',
    '��', '�', 'ު', '�', '��', '�', '��', '��', '��', '��', '�', '��', '��',
    '��', '��', '��', '��', '�', '��', '��', '��', '��', '�', '��', '��', '��',
    '��', '��', '��', '��', '�', 'ۣ', '�', '�', '��', '��', '��', '��', '�',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
    '��', '��', '�', '��', '�', '��', '��', '�', '��', '��', '�', '�', '��',
    '��', '��', '��', '��', '��', '��', '��', '�', '�', '��', '��', 'ܴ', '�',
    '��', '��', '��', '��', '��', '��', 'ٮ', '��', '�', '�', '��', '��', '��',
    '��', '�', '�', '��', 'ڦ', 'ڵ', '��', '��', '�', '�', '��', '��', '��'{,
    '�'}, '��', '��', '��', '��', '��', '��', '��', '��'{, '��'}, '�', '�', 'ݣ',
    '��', '��', '��', '��', '��', '�', 'ݼ', '��', '��', '��'{, '��'}, '��', '�',
    '��', '��', '��'{, '�'}, '�', '��', '��', '�', '��', '��', '�', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�', 'ާ', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
    '��', '�', '�', '�', '��', '��', '��', '��', '�', '�', '��', '��', 'ڪ',
    '��', '��', '��', '��', '�', '��', '��', '��', '��', '�', '��', '��', '��',
    '��', '��', '��', '۲':
    Result := 'j';
    '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��', '��', '��',
    '�', '٩', 'ݨ', '��', '�', '��', '��', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '�', '��', '�', '�', '��', '��', '�', '�', '�', '��',
    '�', '�', '��', '�', '��', '�', '��', '��', '��', '��', '��', 'ߵ', '��',
    'ޢ', '��', 'ܥ', '��', '�', '�', '٨', '��', 'ۦ', '��', '��', '��', '��',
    'ڲ', '��', 'ڿ', '��', '��', '��', '��', '��', '�', '��', 'ظ'{, '�'}, '��',
    '��', '�', '��', '��', '��'{, '��'}, '�', '�', '��', '��', '��', '��', '�',
    '��', '��', '��', '�', '��', '��', '��':
    Result := 'k';
    '��'{, '��'}, '��', '�', '��', '��', '��', '��', '��', '�', '�', '��', '��',
    '��', '�', '��', '�', '��', '�', '��', '�', '��', '�', '�'{, 'ݹ'}, '��',
    '�', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��',
    '߷', '��', '��', '��'{, '��'}, '��', '��', '��', 'ڳ', '��', '��', 'ܨ', '�',
    '��', '�', '�', '��', '��', '��', '��', '��', '�', '޼', '��', '�', 'ٵ',
    '�', '��', '�', '�', '��', '��', '߿', '��', '��', '��', '��', '��', 'ٳ',
    '��', '��', '��', '۪', '��', '��', 'ݰ', '�', '��', '��'{, '��'}, '�', '��',
    '��', '��', '��', '��', '��', '��', '�', '�'{, '�'}, '��', '��', '��', '�',
    '��', '�', '��', '�', 'ܮ', '��', '��', '��', '�', '�', '��', '��', '��'{,
    'ޤ'}, '��', '��', '��', '�', '��', '��', '��', '��', '��'{, '��'}, '��', '��',
    '��', '�', '�', '��', '��', '��', '��', '��'{, '�'}, '��', '��', '��'{, '��'},
    '��', '�', '��', '�', '��', '��', '��', '��', '۹', '��', '��', '�', '�',
    '��', '��', '��', '��', '�', '�', '��', '��', '��', '��', '��', '��', '��'{,
    '�'}, '��', '��'{, '��'}, '�', '��', '��', '��', '��', '��', '��', '��', '��',
    'ߣ', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��',
    '��', '��', '�', '�', '��', '��', '�', '��', '�', '��':
    Result := 'l';
    '��', '��', '��', '�', '��', '��', '�', '��', '��', '�', '��', '�', '��',
    '��', '�', '��', '��', '��', '��', '��', '��', '��', '߼', '��'{, '�'}, '��',
    '�', '��', '��', 'ݤ', '۽', '�', '��'{, '��'}, '��', 'ܬ', '�', '��', '��',
    '��', '��', '��', '��', '��', '��', '�', '��', '��'{, '��'}, '�', '�', '��',
    '��', '��', '�', '��', '�', '�', '�'{, 'ݮ'}, '��', '��', '�', '�', '��',
    '��', '�', '��', '��', '��', '��', '��', '�', '�', '��', 'ޫ', '��', '��',
    '��', '��', '��', '��', '��', '�'{, '��'}, '��', '�', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '�', '��'{, '��'}, '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '�', '�', '��', '��', '��', '�', '�', '��', '��',
    '��', '��', '��', '��', '�', '��', '��', 'ڤ', '��', '��', '�', '��', '��',
    '��', '��', '��', '��', '��'{, '��'}, '��', '��', '��', '�', '��', '��', '��',
    '��', 'ٰ', '��', '��', '�', '��', '��', '��', '��', '��', '��':
    Result := 'm';
    '��', '��', 'ؿ', '��', '��', '��', '��', 'ܵ', '��'{, '��'}, 'ؾ', '��'{, '�'},
    '�', '��', '��', '��', '��', '��', '��', '߭', 'ث', '��', '��', '��', '�',
    '��', '��', '�', 'ګ', '��', '��', '��', '�', '��', '٣', '�', '��', '��',
    '��', '��', '�', '��', 'إ', '��', '��', '��', '��'{, '��'}, '��', '��', '�',
    '�', '��', '��', '��', '��', '��', '�', '�', '��', '��', 'ٯ', '��', '��',
    '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '�', '�':
    Result := 'n';
    '��', 'ک', '�', '��', '��':
    Result := 'o';
    '��', '��', '��', 'ڢ', '��'{, '��'}, '��', 'ٽ'{, '��'}, '��', '��', '��', '�'{,
    '��'}, '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��', '��',
    '��', '�', '��', '��', '��', '��', '��', 'ܡ', '�', 'ا', '�', '��', '��',
    '��', '��'{, '��'}, '�', 'ۯ', '��', '��', '�', '��', '��', 'ܱ', '��', '��',
    '��', 'ߨ'{, '�'}, '��', '��', '�', '�', '��', '��', '��', '��', '��', '��',
    '��', '��'{, '�'}, '��', '�'{, '��'}, '��', '�', 'د', '��', '�', '��', '�',
    '�', '��', '�', 'ٷ', '��', '��', '��', '۶', '�', '��', '��', '��'{, '��'},
    '��', '��', '�', '��', '��', '�', '�', '��', '��', '�', '��', '��', '��',
    '��', '��':
    Result := 'p';
    '��', '��', '��', '�', '��'{, '��'}, '��', '��', '��', '��', '��', '��', '��',
    '�'{, '��'}, '��', '��', '�', 'ݽ', '��', '��', '��', '��', '��', '��', '��',
    'ޭ', '��', '��', '�', 'ܻ'{, '�'}, '�', '��', '��', '��', '��', '��', '�',
    '��', '��', '��', 'ܷ', '��', '�', '�', '�', '�', '�', '�', '��', '�',
    '��', '��', '��', '�', '��', '��', '��', 'ٻ', '��', '��', '�', '��', '��',
    '�', '��', '��', '��', '��'{, '��'}, '��', '��', '��', '��', '��', '��'{, '��'},
    '��', '�', '��', '��', '�', 'ڽ', '�', '��', '�', '��', '��', '��'{, '��'}{,
    '�'}, '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��',
    '�', '��', '��', '�', 'ٴ', '��', '��'{, '��'}, '��', '��', '��', '��', '��',
    '�', 'ڰ'{, '��'}, '��', '��', '��', '۾', '��', '�', 'ޡ', '��', '�', '޾',
    '�', '�', '��', '�', '��', '��', '�', 'ڹ', '��', '��', '��', '��', '��',
    '��', '�', '�', '�', '��', '��', '��', 'ۧ'{, '��'}:
    Result := 'q';
    '��'{, '��'}, '��', '��', '�', '��', '��', '�', '��', '��', '��', '��', '�',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '�', '��', '�', '޸',
    '��', '�', '�', '��', '��', '��', '��', 'ި', '��', '��', '�', '�', 'ټ',
    '��':
    Result := 'r';
    '��', '�', 'ح', '��', '��', '��', 'ئ', '�', '��'{, '��'}, '�', '��', '��',
    '��', '��', '�', '��', '��', '��', 'ܣ', '��', '��', '�', '�', '�'{, '��'},
    '��'{, '��'}, '��', '�', '��', '��', '��', '�', '��', '��', '��', '��', '��',
    '��', 'ڨ', '��', '��', '۷', '��', '�', '��', '��', '��', '��', '��', '�',
    '��', '��', '��', 'ۿ', '��', '�', '�', '��', '��', '��'{, '��'}, 'ڷ', '��',
    '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��', '��', '��',
    '�', '��', '��', 'ݪ', '��', '��', '��', '��', '��', '��', '��', '߱', '��',
    '��', '�', '��', '��', '�', '�', '�', '�', 'ٿ', '��', '��', '�', '��',
    '��', '��', '��', '��', '�', '�', '��', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��', '��',
    '�', '��', '��', '��', 'ٹ', '��', '��', '��', 'ڡ', '��', '��', 'ݿ', '��',
    '��', '��', '��', 'ݥ', '�', '��', '�', '�', '��'{, '��'}{, '��'}, '��', '��',
    '��', '��', 'ݷ', '�', '�', '�', '��', '��', '�', '��', '��', '��', '��',
    '�', '޴', '��', '��', '�', '��', '�', '�', '��', '��', '��', '�', 'ݴ',
    '��', '�', '�', '��':
    Result := 's';
    '�', '߾', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
    '�', '��', 'ۢ', '��', '��', '��', '޷'{, '��'}, '��', '�', '۰', '��', '��',
    '��', '��', '�', '��', '��', '�', '��', '�', '��', '�', '�', '��', '��',
    '��', '��', '�', '��', '�', '��', 'ػ', '��', '߯', '�', '�', '��', '�',
    '�', '��', '��', '��', '�', '��', '��', '�', '��', '��', '��', '��', '٬',
    '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '١', '��', '��', '��', '��', '��', '��', 'ݱ',
    '��', '��', 'ܢ', '��', '��', '�', '��', '��', '��', '�', '��'{, '��'}, 'ر'{,
    '٢'}, '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��':
    Result := 't';
    '��', '�', '��', '��', '��', '��', '��', '��', 'ܹ', '�', '��', '��', '��',
    '�', '��', '�', '��', '��', '��', '��', '��', '��', '��', 'ޱ', '��', '��',
    '��', '��', '�', '�', '��', '�', '��', '�', '�', '��', '��', '�', '��',
    '��', '�', '��', '�', '�', '��', '��', '��', '��', '�', '��', '޳', '��',
    'ݫ', '�'{, '�'}, '�', '��', '��', '��', '��', '��', '�', '��', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', 'أ', '��', '�', '��', '��', '��',
    '��', '��', '�', '��', '��':
    Result := 'w';
    'ۨ', '��', '��', 'ݡ', '��', '��', '�', 'ۭ', '��', '��', '�', '�', '��',
    'ݾ', '��', '��', '��', '�', '��', '��', '��', '��', '�', '��', '��', '�',
    '�', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�',
    '��', '��', '��', '��', '��', '��', '��', '�', '��', '��', '�', '��', '��',
    'ݲ', '��'{, '��'}, '��', '�', '��', '��', '��', '��', '�', '��', '��', '޺',
    '��', '�', '��', '��', 'ܼ', '�', '��', '��', '��', '��', '��', '��', '�',
    '��', '��', '��', '��', '�'{, '��'}, '��', '��', '��', '��', '��', '��', '��',
    'ߢ'{, '��'}, 'ަ', '�', '��', '��', '��', '�', '��', '�', 'ޯ', '��', '��',
    '�', '��', '�', '�'{, 'ܰ'}{, '��'}, 'ض', '��', '��', 'ߩ', '��', '�'{, 'ܺ'},
    '��', '��', '�', '��', '��', '��', '�'{, '��'}, '��', '��', '��', 'ڼ', '��',
    '��'{, '��'}, '�', '��', '��', '��', 'ޣ', '��', '��', '��', '��', '��', '��',
    '��', '��', '�', '��', '��', '��', '��', '�', '��', '��', '�', '��'{, '��'},
    '��', '��', '�', '�', '޹', '��', '��', '�', '��', '�', '�', '��', '��',
    '��', '��','ѧ','ѩ':
    Result := 'x';
    '�', '��', '��', '��', '�', '��', '��', '��', '��', '��', '�', '�', '�',
    '��', '��', '��', '��', '��', '��', '��', '۳', '��', 'ڥ', '��'{, '��'}, 'ܾ',
    '��', '��', '��', 'ٲ', '��', '��', '۱', '��', '�', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '�',
    '��', 'ز', 'ߺ', 'س', '��', '��', '��', '��', '��', '��', '��', '�', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�', '�',
    '��', '��', '��', '��', 'ڱ'{, '��'}, '��', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '��', '�', '߮', '��', '��', '��', '߽', '٫', '�',
    '��', '��', '��', '��', '��', '��', '�', '��', '��', '�', '��', '��', '��',
    '��', '��', '��', '��', '޲'{, '��'}, '�', '��', 'ܲ', '�', '�', '��', '�',
    'ܧ', '��', '��', '۴', '�'{, '��'}, '��'{, '��'}, '�', '�', '��', 'ط', 'ݺ',
    '��', '��', '��', '�', '�', '��', '��', '��', '��', '��', '�', '��', '��',
    '��', '��', '�', '۫', '�', '�', '��', '�', '��', 'ܭ', '�', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��',
    '�', '�', 'ٸ', '��', '��', '��', '��', 'ݯ', 'ݵ', '��', '��', '��', '��',
    '��', 'ݬ', '��', '�', '��', '٧', '��', '�', '��', '��', '��', '�', '�',
    '�', '��', 'خ', '��', '��', '�', '��', '��', 'ٶ', '��', '��', '��', '��',
    '��', '��', '�', '��', '��', '��', '��', '��', '��', '��', '��', '��', 'ع',
    '��', '��', '��', '��', '�', '��', '��', '��', '�', '��', 'ܫ'{, '��'}, '�',
    '��', '��', '��', '�', '�', '��', '��', '��', '�', '�', 'ܿ', '��', '�',
    '��', '��', '۩', '�', '�', '�', '��':
    Result := 'y';
    '��', '�', '��', '��', 'ߪ', '�', '��', '��', '�', '��', '��', '��', '��',
    '�', '��'{, '��'}, '��', '��', '��', '��', '��', '�', '��', '��', '��', '��',
    '��', '�', '��', '��', '��', '��', '��', '��', '۸', '��', '��'{, '�'}, '��',
    '��', '��'{, '��'}, '��', '��', '��', '��', '��', '��', '�', '�', '��', '��',
    '��', '��', '��', '��', '��', '��', '��', '��', '��', '�', '��', '��', '��',
    '�', '�', '߸', '��', '��'{, '�'}, '��', '��', '��', '��', '��', '��', '�',
    '�', '��', '��', '۵', '��', '�', '�'{, '�'}, '��', '��', '�', '��', '��',
    'گ', '��', '��', '��', '��', '��', 'ߡ', '��'{, '��'}, '��', '��', '��', '�',
    '��', '��', '��', '�', '��', '��', '��', '�', '��', '�', '��', '�', '��',
    '��', '�', '��', '�', '��', '��', 'ں', 'ش'{, '��'}, '��', '��', '��', '��'{,
    '��'}, '��', '��', '��', '��', '��', '��', '��', '��'{, '��'}, '��', '��', '��',
    'ۤ', '��', '��', '��', '��', '��', '�', '��', '��', '��', '��', '��', '��',
    '��', '��', '��', '��', '�', 'ڣ', '��', '�', '��', '��', '�', '��', 'ݧ',
    '��', '��', '٪', 'ۥ', '�', '��', '��', '��', '��', '��'{, '��'}, '��', '��',
    '��', '�', '��', '��', '��', '��', '��', '��', '��', '��', '�', '��', '��',
    '��', '��', '��', '�', '��', '��', '�', 'پ', '��', '�', '��', '��', '��',
    '��', '��', '߬', 'ީ', '��', '��', 'ߤ', '��', '��', '��', '��'{, '��'}:
    Result := 'z';
  end;
end;


end.
