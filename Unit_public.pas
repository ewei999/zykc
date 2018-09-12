unit Unit_public;

interface
  uses inifiles,system.Classes,Unit_DM,Data.Win.ADODB,cxGrid,Vcl.Dialogs,cxGridExportLink,
        System.SysUtils;

  function DownLoadFile(sURL, sFName: string): boolean;
  function XiTong_date() :TDateTime;//ϵͳʱ��
  function AutoCreateNo(aTableName:string;abeizhu:string):string;         //�Զ����
  function ut_padstring(inString :string; maxLength :integer; padChar :char; left :boolean) :string;
  procedure DaochuExcel(agrid : TcxGrid);



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

end.
