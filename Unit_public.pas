unit Unit_public;

interface
  uses inifiles,system.Classes,Unit_DM,Data.Win.ADODB,cxGrid,Vcl.Dialogs,cxGridExportLink,
        System.SysUtils;

  function DownLoadFile(sURL, sFName: string): boolean;
  function XiTong_date() :TDateTime;//ÏµÍ³Ê±¼ä
  function AutoCreateNo(aTableName:string;abeizhu:string):string;         //×Ô¶¯±àºÅ
  function ut_padstring(inString :string; maxLength :integer; padChar :char; left :boolean) :string;
  procedure DaochuExcel(agrid : TcxGrid);
  function jisuan_danjia(jmbh: string;ckshuliang:string): TADOQuery ;
  function ChaXunKuCun(jmbh:string):Real;
  Function HZToPY(cSTR:String):String;
  Function Getpinyin_shoupinma(hzchar: Ansistring): ansichar; //»ñµÃ³£ÓÃ×ÖÊ×Æ´Âë
  Function GetPinyin_shoupinma2(hz: String): ansiChar;//»ñÈ¡ÉúÆ§×ÖÊ×Æ´Âë

type
   Tuser = record
     userID :string;         //ÈËÔ±±àºÅ
     UserName : string;      //ÓÃ»§Ãû
     UserPassword:string;    //ÃÜÂë
     UserGW : string;         //¸ÚÎ»
   end;

var
  G_user : Tuser;
  G_IniSetingFile: TIniFile; //ÅäÖÃÎÄ¼ş
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

Function Getpinyin_shoupinma(hzchar: Ansistring): ansichar; //»ñµÃ³£ÓÃ×ÖÊ×Æ´Âë
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
     ADOQuery_danjia.SQL.Text:='select ¿â´æ=Èë¿âÊıÁ¿-³ö¿âÊıÁ¿-Î´½ÓÊÕ from ( select a.*, '+
      ' ³ö¿âÊıÁ¿=isnull((select sum(³ö¿âÊıÁ¿) from ÖĞÑë¿â´æ_³ö¿â±í where ×´Ì¬=2  and ÊÇ·ñ×÷·Ï=0 and ¼ÛÄ¿±àºÅ=a.¼ÛÄ¿±àºÅ) ,0), '+
      ' Î´½ÓÊÕ=isnull((select sum(³ö¿âÊıÁ¿) from ÖĞÑë¿â´æ_³ö¿â±í where ×´Ì¬=1  and ÊÇ·ñ×÷·Ï=0 and ¼ÛÄ¿±àºÅ=a.¼ÛÄ¿±àºÅ) ,0) '+
      ' from ( select ¼ÛÄ¿±àºÅ,sum(isnull(ÊıÁ¿,0)) as Èë¿âÊıÁ¿ from ÖĞÑë²É¹ºÈë¿âÃ÷Ï¸±í '+
      ' where Èë¿â±àºÅ in (select Èë¿â±àºÅ from ÖĞÑë²É¹ºÈë¿âÖ÷±í where ×´Ì¬=1) and ¼ÛÄ¿±àºÅ='+QuotedStr(jmbh)+' group by ¼ÛÄ¿±àºÅ '+
      ' )a left join Ò©Æ·ÓÃÆ·¼ÛÄ¿±í b on a.¼ÛÄ¿±àºÅ=b.¼ÛÄ¿±àºÅ )c';
     ADOQuery_danjia.Open;
     Result:=ADOQuery_danjia.FieldByName('¿â´æ').AsFloat;
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
  ADOBianHao.SQL.Text:='select  top 0 Ãû³Æ as ¹©Ó¦ÉÌ,¼ÛÄ¿±àºÅ as ¹©Ó¦ÉÌ±àºÅ,ÊıÁ¿,½ø»õµ¥¼Û as µ¥¼Û,Õû¸¶ÊıÁ¿,Õû¸¶½ğ¶î,±¸×¢ from ÖĞÑë²É¹ºÈë¿âÃ÷Ï¸±í';
  ADOBianHao.Open;
  Result :=ADOBianHao;

  ADOQuery_danjia := TADOQuery.Create(nil);
  try
    ADOQuery_danjia.Connection := DataModule1.ADOCon_ALi;
    ADOQuery_danjia.SQL.Text := 'select ¹©Ó¦ÉÌ,½ø»õµ¥¼Û,sum(Åú´ÎÊ£Óà¿â´æÊı) as Åú´ÎÊ£Óà¿â´æÊı,Ãû³Æ=(select top 1 Ãû³Æ from ¹©Ó¦ÉÌ±í where ¹©Ó¦ÉÌ±àºÅ=c.¹©Ó¦ÉÌ),'+
    ' Õû¸¶ÊıÁ¿,Õû¸¶½ğ¶î,±¸×¢ '+
    ' from ( select b.½ø»õµ¥¼Û, ¹©Ó¦ÉÌ,Õû¸¶ÊıÁ¿,Õû¸¶½ğ¶î,±¸×¢,'+
    ' Åú´ÎÊ£Óà¿â´æÊı=(case when Ğ¡ÓÚÅú´Î-³ö¿âÊıÁ¿<0 then (case when Ğ¡ÓÚµÈÓÚÅú´Î-³ö¿âÊıÁ¿<0 then 0 else (Ğ¡ÓÚµÈÓÚÅú´Î-³ö¿âÊıÁ¿) end ) else b.ÊıÁ¿ end) from ('+
    ' select * , '+
    ' Ğ¡ÓÚÅú´Î=isnull((select isnull(sum(ÊıÁ¿),0) from ÖĞÑë²É¹ºÈë¿âÃ÷Ï¸±í where Èë¿â±àºÅ in (select Èë¿â±àºÅ from ÖĞÑë²É¹ºÈë¿âÖ÷±í where ×´Ì¬=1 ) '+
    '    and ¼ÛÄ¿±àºÅ=a.¼ÛÄ¿±àºÅ and ½ø»õµ¥¼Û=a.½ø»õµ¥¼Û and ¹©Ó¦ÉÌ=a.¹©Ó¦ÉÌ and isnull(±¸×¢,'''')=isnull(a.±¸×¢,'''') and Èë¿âÅú´Î<a.Èë¿âÅú´Î),0),'+
    ' Ğ¡ÓÚµÈÓÚÅú´Î=isnull((select isnull(sum(ÊıÁ¿),0) from ÖĞÑë²É¹ºÈë¿âÃ÷Ï¸±í where Èë¿â±àºÅ in (select Èë¿â±àºÅ from ÖĞÑë²É¹ºÈë¿âÖ÷±í where ×´Ì¬=1 ) '+
    '    and ¼ÛÄ¿±àºÅ=a.¼ÛÄ¿±àºÅ and ½ø»õµ¥¼Û=a.½ø»õµ¥¼Û and ¹©Ó¦ÉÌ=a.¹©Ó¦ÉÌ and isnull(±¸×¢,'''')=isnull(a.±¸×¢,'''') and Èë¿âÅú´Î<=a.Èë¿âÅú´Î),0),'+
    ' ³ö¿âÊıÁ¿=isnull((select sum(³ö¿âÊıÁ¿) from ÖĞÑë¿â´æ_³ö¿â±í where ×´Ì¬ in (1,2) and ÊÇ·ñ×÷·Ï=0 and ¼ÛÄ¿±àºÅ=a.¼ÛÄ¿±àºÅ and µ¥¼Û=a.½ø»õµ¥¼Û'+
    '  and ¹©Ó¦ÉÌ=a.¹©Ó¦ÉÌ and isnull(¼ÛÄ¿±¸×¢,'''')=isnull(a.±¸×¢,'''')  ),0)'+
    ' from ( select ¼ÛÄ¿±àºÅ,Èë¿âÅú´Î,½ø»õµ¥¼Û,ÊıÁ¿,Õû¸¶ÊıÁ¿,Õû¸¶½ğ¶î,±¸×¢,'+
    ' ¹©Ó¦ÉÌ=(select top 1 ¹©Ó¦ÉÌ from ÖĞÑë²É¹ºÈë¿âÖ÷±í where Èë¿â±àºÅ=ÖĞÑë²É¹ºÈë¿âÃ÷Ï¸±í.Èë¿â±àºÅ) from ÖĞÑë²É¹ºÈë¿âÃ÷Ï¸±í  '+
    ' where ¼ÛÄ¿±àºÅ='+QuotedStr(jmbh)+' and Èë¿â±àºÅ in (select Èë¿â±àºÅ from ÖĞÑë²É¹ºÈë¿âÖ÷±í where ×´Ì¬=1 ) )a)b)c where Åú´ÎÊ£Óà¿â´æÊı>0 '+
    ' group by ¹©Ó¦ÉÌ,½ø»õµ¥¼Û,Õû¸¶ÊıÁ¿,Õû¸¶½ğ¶î,±¸×¢' ;
    ADOQuery_danjia.Active := true;
    if ADOQuery_danjia.RecordCount >0 then
    begin
      ADOQuery_danjia.First;
      b:=0;
      ck :=  StrToFloat(ckshuliang);
      while not ADOQuery_danjia.Eof do
      begin
        b := b+1;
        if ck <= ADOQuery_danjia.FieldByName('Åú´ÎÊ£Óà¿â´æÊı').AsFloat then
        begin
          if b=1 then
          begin
            ADOBianHao.Append;
            ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString:= ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString;
            ADOBianHao.FieldByName('¹©Ó¦ÉÌ').AsString:= ADOQuery_danjia.FieldByName('Ãû³Æ').AsString;
            ADOBianHao.FieldByName('µ¥¼Û').AsFloat:= ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').AsFloat;
            ADOBianHao.FieldByName('±¸×¢').AsString:= ADOQuery_danjia.FieldByName('±¸×¢').AsString;
            ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').AsFloat;
            ADOBianHao.FieldByName('Õû¸¶½ğ¶î').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').AsFloat;
            ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:= ck;
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
              if (ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString=ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString)
              and (ADOBianHao.FieldByName('µ¥¼Û').asfloat=ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').asfloat)
              and (ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').asfloat=ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').asfloat)
              and (ADOBianHao.FieldByName('Õû¸¶½ğ¶î').asfloat=ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').asfloat)
              and (ADOBianHao.FieldByName('±¸×¢').AsString=ADOQuery_danjia.FieldByName('±¸×¢').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:=ADOBianHao.FieldByName('ÊıÁ¿').AsFloat+ck;
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString:= ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString;
              ADOBianHao.FieldByName('¹©Ó¦ÉÌ').AsString:= ADOQuery_danjia.FieldByName('Ãû³Æ').AsString;
              ADOBianHao.FieldByName('±¸×¢').AsString:= ADOQuery_danjia.FieldByName('±¸×¢').AsString;
              ADOBianHao.FieldByName('µ¥¼Û').AsFloat:= ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').AsFloat;
              ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:= ck;
              ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').AsFloat;
              ADOBianHao.FieldByName('Õû¸¶½ğ¶î').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').AsFloat;
              ADOBianHao.Post;
            end;
            ck:=0;
            Break;
          end;
        end
        else
        begin
          if StrToFloat(ckshuliang) <= ADOQuery_danjia.FieldByName('Åú´ÎÊ£Óà¿â´æÊı').AsFloat then
          begin
            ADOBianHao.First;
            i_int:=0;
            while not ADOBianHao.Eof do
            begin
              if (ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString=ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString)
              and (ADOBianHao.FieldByName('µ¥¼Û').asfloat=ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').asfloat)
              and (ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').asfloat=ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').asfloat)
              and (ADOBianHao.FieldByName('Õû¸¶½ğ¶î').asfloat=ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').asfloat)
              and (ADOBianHao.FieldByName('±¸×¢').AsString=ADOQuery_danjia.FieldByName('±¸×¢').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:=ADOBianHao.FieldByName('ÊıÁ¿').AsFloat+StrToFloat(ckshuliang);
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString:= ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString;
              ADOBianHao.FieldByName('¹©Ó¦ÉÌ').AsString:= ADOQuery_danjia.FieldByName('Ãû³Æ').AsString;
              ADOBianHao.FieldByName('±¸×¢').AsString:= ADOQuery_danjia.FieldByName('±¸×¢').AsString;
              ADOBianHao.FieldByName('µ¥¼Û').AsFloat:= ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').AsFloat;
              ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:= StrToFloat(ckshuliang);
              ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').AsFloat;
              ADOBianHao.FieldByName('Õû¸¶½ğ¶î').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').AsFloat;
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
              if (ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString=ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString)
              and (ADOBianHao.FieldByName('µ¥¼Û').asfloat=ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').asfloat)
              and (ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').asfloat=ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').asfloat)
              and (ADOBianHao.FieldByName('Õû¸¶½ğ¶î').asfloat=ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').asfloat)
              and (ADOBianHao.FieldByName('±¸×¢').AsString=ADOQuery_danjia.FieldByName('±¸×¢').AsString)
              then
              begin
                i_int:=1;
                ADOBianHao.Edit;
                ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:=ADOBianHao.FieldByName('ÊıÁ¿').AsFloat+ADOQuery_danjia.FieldByName('Åú´ÎÊ£Óà¿â´æÊı').AsFloat;
                ADOBianHao.Post;
                break;
              end;
              ADOBianHao.Next;
            end;
            if i_int=0 then
            begin
              ADOBianHao.Append;
              ADOBianHao.FieldByName('¹©Ó¦ÉÌ±àºÅ').AsString:= ADOQuery_danjia.FieldByName('¹©Ó¦ÉÌ').AsString;
              ADOBianHao.FieldByName('¹©Ó¦ÉÌ').AsString:= ADOQuery_danjia.FieldByName('Ãû³Æ').AsString;
              ADOBianHao.FieldByName('±¸×¢').AsString:= ADOQuery_danjia.FieldByName('±¸×¢').AsString;
              ADOBianHao.FieldByName('µ¥¼Û').AsFloat:= ADOQuery_danjia.FieldByName('½ø»õµ¥¼Û').AsFloat;
              ADOBianHao.FieldByName('ÊıÁ¿').AsFloat:= ADOQuery_danjia.FieldByName('Åú´ÎÊ£Óà¿â´æÊı').AsFloat;
              ADOBianHao.FieldByName('Õû¸¶ÊıÁ¿').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶ÊıÁ¿').AsFloat;
              ADOBianHao.FieldByName('Õû¸¶½ğ¶î').AsFloat:= ADOQuery_danjia.FieldByName('Õû¸¶½ğ¶î').AsFloat;
              ADOBianHao.Post;
            end;
            ck := ck- ADOQuery_danjia.FieldByName('Åú´ÎÊ£Óà¿â´æÊı').AsFloat;
          end;

        end;
        ADOQuery_danjia.Next;
      end;
      if ck>0 then   //Ê£ÓàÅú´ÎµÄÊıÁ¿²»¹»ÁË
      begin
        ADOBianHao.Append;
        ADOBianHao.FieldByName('¹©Ó¦ÉÌ').AsString:= '¿â´æ²»×ã';
        ADOBianHao.Post;
      end;
    end
    else
    begin
      ADOBianHao.Append;
      ADOBianHao.FieldByName('¹©Ó¦ÉÌ').AsString:= 'ÎŞ»õ';
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
    SaveDialog1.Filter :='(Excel±í¸ñÊ½xls)|*.xls';
    SaveDialog1.Title := 'ÇëÑ¡ÔñÒªÊä³öµÄÎÄ¼ş¼Ğ';
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
     L_query_date.SQL.Text := 'select getdate() as ÏµÍ³Ê±¼ä';
     L_query_date.Open;
     result := L_query_date.FieldByName('ÏµÍ³Ê±¼ä').AsDateTime;
   finally
     L_query_date.Free;
   end;
end;

function DownLoadFile(sURL, sFName: string): boolean;
var //ÏÂÔØÎÄ¼ş
  tStream: TMemoryStream;
begin
  tStream := TMemoryStream.Create;
  try //·ÀÖ¹²»¿ÉÔ¤ÁÏ´íÎó·¢Éú
    try
      DataModule1.IdHTTP_main.Get(sURL, tStream); //±£´æµ½ÄÚ´æÁ÷
      tStream.SaveToFile(sFName); //±£´æÎªÎÄ¼ş

      Result := True;
    finally //¼´Ê¹·¢Éú²»¿ÉÔ¤ÁÏµÄ´íÎóÒ²¿ÉÒÔÊÍ·Å×ÊÔ´
      tStream.Free;
    end;
  except //ÕæµÄ·¢Éú´íÎóÖ´ĞĞµÄ´úÂë
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
    l_query.sql.text := 'select * from ±àºÅ±í where ±àºÅÍ·='+ QuotedStr(aTableName)+' ';
    l_query.open;
    if l_query.Eof=True then
    begin
      l_query.Close;
      l_query.sql.text := 'insert into ±àºÅ±í(±àºÅÍ·,µ±Ç°±àºÅ,±àºÅ³¤¶È,±¸×¢)'+
                          ' values('+quotedstr(aTableName)+',''0'',''8'', '+quotedstr(abeizhu)+')';
      l_query.ExecSQL;
    end;

    l_query.Close;
    l_query.SQL.Text := 'select * from ±àºÅ±í where ±àºÅÍ· = '+ QuotedStr(aTableName);
    l_query.Open;

    number :=  l_query.FieldByName('µ±Ç°±àºÅ').AsInteger;
    cdmax:=1;
    bhcd := l_query.FieldByName('±àºÅ³¤¶È').AsInteger;
    for cd := 1 to bhcd-1 do
    cdmax := cdmax*10;

    while l_query.FieldByName('µ±Ç°±àºÅ').AsInteger<>number+1 do
    begin

      number :=  l_query.FieldByName('µ±Ç°±àºÅ').AsInteger;
      if number+1 > 9*cdmax then
      begin
        l_query.Close;
        l_query.SQL.Text := 'update ±àºÅ±í  set ±àºÅ³¤¶È = '+inttostr(bhcd+1)+' where ±àºÅÍ· = '+ QuotedStr(aTableName);
        l_query.ExecSQL;
      end;
      l_query.Close;
      l_query.SQL.Text := 'update ±àºÅ±í  set µ±Ç°±àºÅ = µ±Ç°±àºÅ+1 where ±àºÅÍ· = '+ QuotedStr(aTableName);
      l_query.ExecSQL;

      l_query.Close;
      l_query.SQL.Text := 'select * from ±àºÅ±í where ±àºÅÍ· = '+ QuotedStr(aTableName);
      l_query.Open;
    end;
    Result := l_query.fieldbyname('±àºÅÍ·').AsString +ut_padstring(IntToStr(l_query.fieldbyname('µ±Ç°±àºÅ').AsInteger),l_query.fieldbyname('±àºÅ³¤¶È').AsInteger,'0',True)
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

Function GetPinyin_shoupinma2(hz: String): ansiChar;//»ñÈ¡ÉúÆ§×ÖÊ×Æ´Âë
begin
  case hz[1] of
    'èñ': Result := 'A';
    'ï§': Result := 'A';
    'òü': Result := 'A';
    'ÜĞ': Result := 'B';
    'æß': Result := 'B';
    'ßÁ': Result := 'B';
    'îé': Result := 'B';
    'İÉ': Result := 'B';
    'çÍ': Result := 'B';
    'ôù': Result := 'C';
    'ÜÊ': Result := 'C';
    '÷ì': Result := 'D';
    'ôú': Result := 'D';
    'ßá': Result := 'D';
    'ß°': Result := 'D';
    'İĞ': Result := 'D';
    'ñ°': Result := 'D';
    'à¤': Result := 'D';
    'ñ¼': Result := 'D';
    'İ­': Result := 'E';
    'ß»': Result := 'F';
    'Üò': Result := 'F';
    'ÜÕ': Result := 'G';
    'ëõ': Result := 'G';
    'îÜ': Result := 'G';
    'ëÒ': Result := 'G';
    'ßÉ': Result := 'G';
    'ë×': Result := 'G';
    'èÛ': Result := 'G';
    'õú': Result := 'H';
    'Ú­': Result := 'H';
    'çú': Result := 'H';
    'ñ¥': Result := 'H';
    'Üî': Result := 'H';
    'Üö': Result := 'H';
    'Ş½': Result := 'H';
    'ò»': Result := 'J';
    'éÈ': Result := 'J';
    'ëÂ': Result := 'J';
    'æº': Result := 'J';
    'à­': Result := 'K';
    'ØÑ': Result := 'K';
    'ó¹': Result := 'L';
    'ö¦': Result := 'L';
    'çĞ': Result := 'L';
    'òÃ': Result := 'L';
    'Ş¤': Result := 'L';
    'ßø': Result := 'L';
    'ì¢': Result := 'L';
    'ñª': Result := 'L';
    'İ¹': Result := 'L';
    'Üß': Result := 'L';
    'ó¡': Result := 'M';
    '÷©': Result := 'M';
    'òú': Result := 'M';
    'İ®': Result := 'M';
    'ßä': Result := 'M';
    'à×': Result := 'M';
    'ÜÔ': Result := 'M';
    'İÁ': Result := 'N';
    'à«': Result := 'N';
    'ëå': Result := 'N';
    'ßß': Result := 'P';
    'èË': Result := 'P';
    'ãú': Result := 'P';
    'ñ±': Result := 'P';
    'àÑ': Result := 'P';
    'çê': Result := 'P';
    'èÁ': Result := 'P';
    '°ò': Result := 'P';
    'öÄ': Result := 'Q';
    'ôÇ': Result := 'Q';
    'àº': Result := 'Q';
    'ÜÎ': Result := 'Q';
    'è½': Result := 'Q';
    'Üñ': Result := 'Q';
    'ÜË': Result := 'Q';
    'ìî': Result := 'Q';
    'ÛÏ': Result := 'Q';
    '÷×': Result := 'R';
    '÷ê': Result := 'S';
    'öè': Result := 'S';
//    '÷ê': Result := 'S';
    'àç': Result := 'S';
    'ğğ': Result := 'S';
    'ëÄ': Result := 'T';
    'ÌÇ': Result := 'T';
    'Ù¢': Result := 'T';
    'ë¿': Result := 'W';
    'õ£': Result := 'X';
    'Ñª': Result := 'X';
//    'õ£': Result := 'X';
    'öÎ': Result := 'X';
    'õ¯': Result := 'X';
    '÷¨': Result := 'X';
    'åĞ': Result := 'X';
    'çÓ': Result := 'X';
    'Ü°': Result := 'X';
    'Üº': Result := 'X';
    'äå': Result := 'X';
    'ôè': Result := 'Y';
    'ö¸': Result := 'Y';
    'ßÅ': Result := 'Y';
    'âù': Result := 'Y';
    'éÚ': Result := 'Y';
    'åû': Result := 'Y';
    'ÒÇ': Result := 'Y';
    'õ¥': Result := 'Z';
//    'õ¥': Result := 'Z';
    'õÅ': Result := 'Z';
    'ßò': Result := 'Z';
    'ó¯': Result := 'Z';
    'óÃ': Result := 'Z';
//    'ó¯': Result := 'Z';
    'ô÷': Result := 'Z';
    'çŞ': Result := 'Z';
    'à©': Result := 'D';
    'é«': Result := 'Z';
    'İá': Result := 'B';
    'éŞ': Result := 'B';
    '‡f': Result := 'E';
    'Ü½': Result := 'F';
    'Ÿh': Result := 'J';
    'éÙ': Result := 'J';
    'óª': Result := 'P';
    'ôÈ': Result := 'S';
    '‹q': Result := 'T';
    'ğö': Result := 'Y';
    'Òº': Result := 'Y';
    '†¨': Result := 'Z';
    '°Y': Result := 'Z';
    'èÙ': Result := 'Z';
    'ëê': Result := 'Z';

    'ß¹', 'ï¹', 'àÄ', 'ïÍ', 'Şß', 'àÈ', 'ö°', 'íÁ', 'àÉ', 'æÈ', 'êÓ', 'è¨', {'èñ',}
    'âÖ', 'ÚÏ', 'ğÆ', 'Ûû', {'ï§',} 'Şî', 'áí', '÷ö', 'Ûê', 'à»', 'âÚ', 'éá', 'åÛ',
    'ñú'{, 'òü'}, '÷¡', '÷é', 'æÁ', 'á®', 'æñ', 'öË'{, 'âÚ'}:
    Result := 'a';
    'á±', 'ôÎ', 'ÜØ', 'İÃ', '÷É', 'öÑ', 'å±', 'êş', 'Şã', 'ßÂ', 'ñ£', 'ñ­', 'Úæ',
    'Ûà', 'îÓ', 'ô²', 'äº', 'İò', 'Ùè'{, 'æß'}, 'ìÒ', 'öµ', 'ğ±'{, 'İá'}, 'ñÙ', 'õÀ',
    'Úé', 'ğÇ', 'Úı', 'ã£', 'íÕ', 'İí', 'ñØ', '÷¹', 'öÍ', 'êÚ', 'ï¼', 'ÛÎ', 'ÛĞ',
    'àÔ', 'ê´', 'İ©', 'Ø°'{, 'ßÁ'}, 'åş', 'ïõ', 'ÙÂ', 'ô°', 'î¯', 'ßÙ', 'Üê', 'áù'{,
    'îé'}, 'æ¾', 'âØ'{, 'İÉ'}, 'åö', 'ã¹', 'óÙ', 'ää', 'ñÔ', 'õÏ', 'óë', 'æÔ', 'ó÷',
    'Şµ', 'å¨', '÷Â', 'èµ', 'ôÅ', 'í¾', 'óÖ', 'ìÔ', 'òù', 'öı', 'ñ¹', 'ØÒ', 'íÜ',
    'ñÛ', 'ÛÍ', 'âí', 'ãê'{, 'ÜĞ'}, 'çÂ', 'ì©', '÷Ô', 'æô', 'ñ¦', 'ïÚ', 'ì­', 'ì®',
    'ïğ', 'æ»', 'ñÑ', '÷§', 'õ¿', 'ÙÏ'{, 'çÍ'}, 'éÄ', 'ïÙ', 'áÙ', 'éë', 'ë÷', '÷Æ',
    '÷Ş', 'Úû', 'Ù÷', 'Şğ', 'âÄ', 'à£', 'ØÃ', 'Ùñ', 'îà', 'ğ¾', 'õÛ', 'íç', 'õË',
    'ô¤', 'ë¢'{, 'éŞ'}, 'åÍ', 'îß', 'êÎ', 'õ³', 'ß²', 'îĞ', 'ê³', 'çã', 'å²', 'ğÚ':
    Result := 'b';
    'àê', 'íå', 'æî', '÷õ', 'ôÓ', 'è²', 'Ø÷', 'àĞ', 'äî', 'ô½', 'ó©', 'Ü³', 'âü',
    'á¯', 'ä¹', 'àá', 'è¾', 'âÇ', 'ïÊ', 'âª', 'é¶', 'éß', 'ñÃ', 'ïï', 'ãâ', 'æ±',
    'îÎ', 'Ù­', 'ò²', 'ğû', 'êè', 'æ¿', 'åî', 'ìø', 'âÜ', 'äı', 'ïâ', 'ó¸', 'õğ',
    'ÚÆ', 'İÛ', 'Ùæ', 'âã', 'åñ', 'Øö', 'æ½', 'İÅ', 'ãÑ', 'öğ', 'ÜÉ', 'áä', 'æÏ',
    'êÆ', 'ã®', 'ë©', 'âê', 'ÛË', 'â÷', 'ìÌ', 'êË', 'ñé', 'íº', 'åø', 'Ûå', 'ŞÓ',
    'è¡', 'àÁ', 'å·', 'ÚÈ', 'í×', 'ö³', 'é´', 'Úß', 'èß', 'òÉ', 'îõ', 'îª', 'Ø©',
    'èÇ', 'Ûô', 'îñ', 'ñÎ', 'ëó', 'õ¨', 'ßê', 'ò¿', 'ğ·', 'í÷', 'ó×', 'àÍ', 'æÊ',
    'ó¤', '÷Î', 'Üİ', 'Ü¯', 'õØ', 'óø'{, 'ôù'}, 'ñİ', 'áÜ', 'ß³', 'âÁ', 'ë·', 'à´',
    'ÙÑ', 'ñ¡', 'âç', 'Üû', 'ô©', 'ã¿', 'ô¾', 'ï¥', 'ñ¬', 'Ù±', 'àü', 'ã°', 'öÅ',
    'éË', 'Û»', 'òÜ', 'õé', 'èÆ', 'èú', 'ñÒ', 'Ø¡', 'âğ', 'ç©', 'ãÀ', '÷í', 'Şõ',
    'à¨', 'àÜ', 'õß', 'çİ', 'ë°', 'ô­', 'å×', 'â¶', 'îË', 'âë', 'Úï', 'é¢', 'é³',
    'òí', 'İ»', 'ğÈ', 'õÖ', 'ê¡', 'öº', 'ßÚ', 'ìô', 'Üë', 'ğË', 'ôÙ'{, 'ÜÊ'}, 'èÈ',
    'æõ', 'è®', 'äÈ', 'çı', 'é¨', 'ëí', 'ê£', 'áŞ', 'éã', 'â§', 'İı', 'õ¾', 'õí',
    'ÙÛ', 'Ùà', 'ß¥', 'ïé', 'ìà', 'éÁ', 'è­', 'ßı', 'ã²', 'İÍ', 'ë¥', 'ñå', 'ââ',
    'õã', 'áÏ', 'ğî', 'ïó', 'õº', 'ëâ', 'ØÈ', 'ï±', 'ëú', 'å¤', 'æö':
    Result := 'c';
    'ßÕ', 'ŞÇ', 'àª', 'ñ×', 'æ§', 'âò', 'óÎ', '÷°', '÷²', 'á·'{, 'ß°'}, 'çª', 'åÊ',
    'çé', 'Ü¤'{, '÷ì'}, 'íñ', 'ñõ', 'éé', 'ğ÷', 'óì', 'ÙÙ', 'ğã', 'à¢', 'İÌ', 'å£',
    'ñÉ', 'ÚÔ', 'ÛÊ', 'å´', 'í¸'{, 'İĞ'}, 'ß¶', 'âá', 'ë®', 'ôî', 'ï½', 'àâ', 'ô£',
    'ê­', 'áØ', 'íã', 'ïë', 'ôÆ', 'àÖ', 'ïá', 'Ùá', 'İ¶', 'êë', 'Øµ', 'Ú®', 'Û¡',
    'Ûæ', 'èÜ', 'íÆ', '÷¾', 'æ·', 'ÚĞ', 'é¦', 'íû', 'íÚ', 'àÇ', 'áÛ', 'ñ²', 'õÚ',
    'Úç', 'Ûã', 'çè', 'îä'{, 'ñ°'}, 'ô¡', 'õõ', 'öô', 'îö', 'Ûì', 'ğ¬', 'Ü¦', 'Şé',
    'ñó', 'ëº', 'õŞ', 'öø', 'Øê', 'çà', 'ğÛ', 'ñô'{, 'ôú'}{, 'à¤'}, 'ëë', 'íÖ', 'îû',
    'ßË', 'á´', 'ë±', 'ğ´', 'Ûí', 'á¼', 'ëË', 'ëØ', 'íÏ', 'İú', 'óû', 'ò½'{, 'ñ¼'},
    'à½', 'äÂ', 'èü', 'ë¹', '÷ò', '÷Ç', 'óÆ', 'Ü¶', 'ó¼', 'é²', 'ìÑ', 'óı', 'í¡',
    'íÔ', 'í­', 'ïæ', 'íâ', 'íï', 'õ»', 'ãç', 'ìÀ', 'í»', 'ßÍ', 'ñÖ', 'îì', 'õâ'{,
    'ßá'}, 'ç¶', 'ãõ', 'Úà', 'Øé', 'êæ', 'ï¢', 'î®', 'îú', 'âº', 'Ø¼':
    Result := 'd';
    'åí'{, 'İ­'}, 'ï°', 'æ¹', 'ßÀ', 'ÜÃ', 'éî', 'ÛÑ', 'ÚÌ', 'ãÕ', 'ãµ', 'İà', 'ëñ',
    'ïÉ', 'ğÊ', 'ò¦', 'Ø¬', 'öù', 'İì', 'Şô', 'ğ¹', 'öÜ', 'åÇ', 'çí', 'îï', 'Ù¦',
    'àÅ', 'ßí', 'ÚÀ':
    Result := 'e';
    'ÛÒ', 'íÀ', 'á¦', 'Ş¬', 'ìÜ', 'õì', 'ŞÀ', 'î²', 'èó', 'Úú', 'èÊ', 'îÕ', 'öĞ',
    'ô³', 'åú', 'ç³', 'ìé', 'òã', 'ö­', 'öî', 'äÇ', 'ëè', 'ã­', 'ì³', 'é¼', 'ôä',
    'óõ', 'áô', 'ğò', 'ïĞ', 'èû', '÷÷', 'ÙÇ', 'ö÷', 'å¯', 'ãã', 'í¿', 'İ×', 'Ûº',
    'ßô', 'Ùº', 'ó¾'{, 'ß»'}, 'õÃ', 'ôï', 'ïû', 'õÆ', 'Ùì', 'æÚ'{, 'Ü½'}, 'ÜÀ', 'âö',
    'ç¦', 'ç¨', 'ÜŞ', 'ìğ', 'î·'{{, 'Üò'}, 'Û®', 'íÉ', 'İ³', 'ò¶', 'Ùë', 'èõ', 'åõ',
    'İÊ', 'òİ', 'á¥', 'òğ', 'íê', 'ŞÔ', 'äæ', 'íë', 'æâ', 'öÖ', 'êç', 'òó', 'öû',
    'ğ¥', 'ë¶', 'áë':
    Result := 'f';
    'ê¸', 'Ù¤', 'îÅ', 'æÙ', 'æØ', 'ŞÎ', 'Úë', 'Ûò', 'êà', 'Ø¤', 'ê®', 'Ûá', 'ãï'{,
    'ÜÕ'}, 'ğá', 'ôû', 'ŞÏ', 'ä÷', 'éÏ', 'ß¦', 'êº', 'í·', 'ç¤', 'äÆ', 'î¸', 'óà',
    'í°', 'éÀ', 'Øº', 'ê½', 'çÉ', 'éÂ', 'Ş»', 'Ú¾', 'Û¬', 'ï¯', 'ÛÙ', 'æü', 'ñË',
    'Øª', 'àÃ', 'Üª', 'ë¡'{, 'ëõ'}, 'ïÓ', '÷À', 'ÛÁ', 'ô´', 'ò´', 'íÑ', 'ßç', 'Ø¨',
    'ôŞ', 'İ¢', 'âÙ', 'ßì', 'ç®', 'öá', 'ëÅ', 'ò¼', 'ö¡', 'çî', 'Øş', 'çÃ', 'óô',
    '÷¸', 'á¸'{, 'èÛ'}, 'óÑ', 'Ú¸', 'æÅ', 'ì°', 'åÜ', 'êí', 'éï', 'ğ³', 'İÔ', 'òÁ',
    'õı', 'ôş', 'ì±', '÷½', 'ãé', 'Ú¬', 'êô', 'î¹'{, 'îÜ'}, 'ØÅ', 'ëû', 'î­', 'áÄ',
    'èô', 'êö', 'ğó', 'ïÀ', 'öñ'{, 'ëÒ'}, 'ğ»'{, 'ßÉ'}, 'ØÔ', 'Ú´', 'ÙÄ', '÷¤', 'Şè',
    'äÊ', 'îÂ', 'ğÙ', 'ßÛ', 'èæ'{, 'ë×'}, 'áî', 'æ£', 'ğ§', 'öÙ', 'å³', 'âÑ', 'ØĞ',
    'êĞ', 'óş', 'ØÛ', 'êÁ', '÷¬', 'Ùò', 'çµ', 'íŞ', 'öç', 'ßÃ', 'Ûö', 'áÆ', 'ñø',
    'òå', 'àş', 'Şâ', 'ë½', 'Ùå', 'â£', 'é¤', 'òä', 'èí', 'İ¸', 'ßÈ':
    Result := 'g';
    'ğÀ', 'îş', 'àË', 'ëÜ', 'õ°', 'ñü', 'òÀ', '÷ı', 'Úõ', 'êÏ', 'ìÊ', 'İÕ', 'ò¥',
    'Şş', 'å«', 'ç¬', 'ñş', 'ãì', 'İï', 'àã', 'Ş¶', 'òº', 'àÆ', 'å©', 'ê»', 'ğ©',
    'ò«', 'å°'{, 'Ú­'}, 'àÀ', 'ÛÀ', 'êÂ', 'îÁ', 'ò¢', 'ãØ', 'ôç', 'ÛÖ', 'èì', 'çñ',
    'Ş¿', 'Ùê', 'Ş°', 'ãÈ', 'ãü', 'İ¦', 'Ş®', 'Ùä', 'Ú§', 'ğú', 'óó', 'ô×', '÷¿',
    'ºó', 'åË', 'Ü©', 'ö×', 'ò®', 'ìÃ', 'éõ', 'ßü', 'ã±', 'äï', 'àñ'{, 'õú'}, 'â©',
    'ìÎ', 'ğÉ', 'éÎ', 'õ­', 'ì²', 'ä°'{, 'çú'}, 'Ùü', 'á²', 'âï', 'ìæ', 'ìï', 'óË',
    'ìè', 'ğ­', 'ğ×', 'æè', 'îü', 'èë', 'õ×', 'âµ', 'ä¡', 'İÈ', 'ïÌ', 'å¾', 'çÙ',
    '÷ß', 'Û¼', 'ä½', 'åÕ', 'äñ', 'öé', 'ß§', 'ëÁ', 'Úò', 'áå', 'äÒ', 'åØ', 'äê',
    'è«', 'óò'{, 'ñ¥'}, 'ó¨', 'öü', 'Ú¶', 'ßÔ', 'ò³', 'êÍ', 'çõ', '÷â', 'ãÄ', 'ä§'{,
    'Üî'}, 'ßÜ', 'ä«'{, 'Üö'}, 'í£', 'åç', 'à¹', 'çÀ', 'Ş¥', 'ó³', 'ãÔ', 'âÆ', 'Ú»',
    'äã', 'ñë', 'ïÁ', 'Øå', 'ß«', 'îØ', 'â·', 'ïì', 'àë'{, 'Ş½'}, 'ó¶', 'í¹', 'à÷',
    'áá':
    Result := 'h';
    #0: Result := 'i';
    'Ø¢', 'ß´', 'ØÀ', 'çá', 'Ü¸', 'í¶', 'ßÒ', 'ØŞ', 'ßó', 'åì', 'óÇ', 'ïú', 'ê÷',
    'êå', 'õÒ', 'çÜ', 'ì´', 'ÛÔ', 'î¿', 'á§', 'Ø½', 'Ù¥', 'óÅ', 'ê«', 'éê', 'é®',
    'İğ', 'ñ¤', 'Şª', 'ò±', 'Şá', 'êª', 'áÕ', '÷ä', 'ÜÁ', 'ßâ', 'ä©', 'êé', 'ÙÊ',
    'ôß', 'õÕ', 'ö«', 'öİ', 'ğ¢', 'öê', '÷Ù', 'æ÷', 'åÈ', 'ä¤', 'çì', 'ğè', 'óÕ',
    'ôÂ', 'İç', 'õÊ', 'ïØ', 'áµ', 'Û£', 'í¢', 'ê©', 'îò', 'òÌ', 'ëÎ', 'ğı', 'ê§',
    'İÑ', 'äÕ', 'êù', 'Şö', 'çÌ', 'İó', 'öä', 'ğÏ', '÷µ', 'àî', 'èÅ', 'óÈ', 'õÂ',
    'íú', 'ñĞ', 'ïµ', 'ÚÙ', 'ê¯', 'ôå', 'åÀ', 'å¿', 'êğ', 'ÚÉ', 'é¥', 'ë¦', 'ëì',
    'ÙÔ', 'õİ', 'Üü', 'ôø', 'çÖ', 'íä', 'ñğ', 'ä®', 'ç­', 'êñ', 'ôİ', 'Ü´', 'æ¯',
    'Üú', 'òÔ', 'õÓ', 'ÙÕ', 'öŞ', 'ğÔ', 'Ù®', 'ŞØ', 'ğ¨', 'ë¸', 'áè', 'àİ', 'õ´',
    'ğÜ', 'à®', 'àµ', 'æİ', 'Ú¦', 'Úµ', 'Ş×', 'èî', 'æ¼', 'ò¡', 'íÙ', 'öÚ', 'ôÉ'{,
    'ò»'}, '÷º', 'îÄ', 'ñæ', 'ñÆ', 'Úá', 'İÀ', 'âÛ', 'âË'{, 'éÈ'}, 'èª', 'æ¡', 'İ£',
    'êá', 'çÆ', 'êî', 'àä', 'ãş', 'ìº', 'İ¼', 'ëæ', 'Úå', 'ØÙ'{, 'ëÂ'}, 'ÙÓ', 'ã½',
    'åò', 'åÉ', 'ëÖ'{, 'æº'}, 'â°', 'ìç', 'åÄ', 'ğ¯', 'ôñ', 'ãÎ', 'à±', '÷İ', 'èÑ',
    'èê', 'àÙ', 'æŞ', 'çå', 'áÈ', 'èö', 'õû', 'ØÊ', 'Øã', 'ÚÜ', 'â±', 'Ş§', 'éÓ',
    'ïã', 'õê', 'ÛÇ', 'ìß', 'ñä', 'óŞ', '÷å', 'ŞÜ', 'æù', 'ÛÈ', 'ÙÖ', 'ğÕ', 'ÜÚ',
    'Şä', 'é§', 'è¢', 'ï¸', 'ñÕ', 'öÂ', '÷¶', 'Üì', 'é·', 'é°', 'ö´', 'õá', 'Úª',
    'ÜÄ', 'îÒ', 'ÙÆ', 'êø', 'ì«', 'ñÀ', 'åğ', 'åá', 'õ¶', 'ä¸', 'ïÔ', 'îÃ', 'ïÃ',
    'èğ', 'áú', 'öÁ', 'Û²':
    Result := 'j';
    'òÂ', 'ßÇ', 'Øû', 'ëÌ', 'ï´', 'ØÜ', 'Ûî', 'âı', 'îø', 'İÜ', 'ïÇ', 'âé', 'íè',
    'ê¬', 'Ù©', 'İ¨', 'ãÛ', 'î«', 'Øø', 'ãÊ', 'îÖ', 'åê', 'èà', 'îí', 'êû', 'çæ',
    'éğ', 'ğâ', 'îİ', 'ò¤', 'ïı', 'ñ½', 'î§', 'òò', '÷Á', 'á³', 'ã¡', 'ë´', 'æì',
    'ç¼', 'à¾', 'äÛ', 'ï¾', 'ñÌ', 'ï¬', 'ÙÅ', 'áÇ', 'óí', 'ÜÒ', 'íî', 'ßµ', 'óØ',
    'Ş¢', 'ØÚ', 'Ü¥', '÷¼', 'ç«', 'à·', 'Ù¨', 'Øá', 'Û¦', 'ßà', 'áö', 'ëÚ', '÷Å',
    'Ú²', 'ßÑ', 'Ú¿', 'ŞÅ', 'Ú÷', 'ÛÛ', 'æş', 'êÜ', 'ã¦', 'åÓ', 'Ø¸'{, 'à­'}, 'Şñ',
    'êÒ', 'î¥', 'òñ', 'Ùç', 'õÍ'{, 'ØÑ'}, 'à°', 'ã´', 'İŞ', 'óñ', 'ñù', 'çû', 'ï¿',
    '÷Õ', 'õ«', 'öï', 'ã§', 'ãÍ', 'èé', 'òÒ':
    Result := 'k';
    'Ùû'{, 'ö¦'}, 'åå', 'ê¹', 'íÇ', 'Øİ', 'ğø', 'áÁ', 'áâ', 'äµ', 'ïª', 'êã', 'íù',
    'äş', 'ñ®', 'ô¥', 'á°', 'ñÜ', 'ìµ', 'ïç', 'é­', 'äí', 'î½', 'à¥'{, 'İ¹'}, 'ïü',
    'ï¶', 'òë', 'ãÏ', 'İõ', 'ßë', 'áÀ', 'ğì', 'ï©', 'õ²', 'èá', 'îî', 'ñì', 'Øì',
    'ß·', 'ãî', '÷¦', 'æĞ'{, 'çĞ'}, 'éÛ', 'Ùú', 'ñç', 'Ú³', 'õª', 'àÏ', 'Ü¨', 'ã¶',
    'æê', 'à¬', 'ğ¿', 'çÊ', 'İñ', 'òÛ', 'æË', 'öâ', 'î¾', 'Ş¼', '÷ó', 'ó»', 'Ùµ',
    'æ²', 'åÎ', 'ï®', 'å¢', 'õ·', '÷¯', 'ß¿', 'ÛŞ', 'ÜÂ', 'ìå', 'èÀ', 'ğİ', 'Ù³',
    'èİ', 'ğß', 'éö', 'Ûª', 'áû', 'íÂ', 'İ°', 'à¦', 'óÒ', 'ôÏ'{, 'òÃ'}, 'îº', 'õÈ',
    'ö¨', 'äà', 'óö', 'ŞÆ', 'ñÍ', 'öã', 'å¥', 'ì¡'{, 'ó¹'}, 'çö', 'ñÏ', 'İü', 'æ®',
    'éç', 'é¬', 'äò', 'é£', 'Ü®', 'õÔ', '÷Ë', 'àÚ', 'å¼', 'â²', 'çÔ', 'ğÓ', 'îÉ'{,
    'Ş¤'}, 'ŞÍ', 'ßÖ', 'Ùı', 'ä£', 'Ûø', 'Şæ', 'ôó', 'õñ', '÷à'{, 'ßø'}, 'ôÔ', 'á×',
    'åà', 'ê¥', 'î¬', '÷ë', 'âŞ', 'ãÁ', 'éİ', 'İş'{, 'ì¢'}, 'õï', 'àò', 'ãö'{, 'Üß'},
    'èÚ', 'ê²', 'èù', 'ç±', 'ôá', 'ñö', 'òÈ', 'öì', 'Û¹', 'ßÊ', 'ìÖ', 'ä¯', 'ì¼',
    'åŞ', 'æò', 'ïÖ', 'öÌ', 'ç¸', 'ï³', 'ğÒ', 'ãñ', 'Ü×', 'èĞ', 'çç', 'ëÊ', 'íÃ'{,
    'ñª'}, 'Ûâ', 'ÙÍ'{, 'ÙÍ'}, 'à¶', 'İä', 'ñï', 'ò÷', '÷Ã', 'áĞ', 'ğü', 'ïÎ', 'àà',
    'ß£', 'Ûä', 'ãò', 'èÓ', 'ëÍ', 'éñ', 'ğµ', 'ôµ', 'öÔ', 'éÖ', 'ïå', 'éû', 'äË',
    'åÖ', 'äõ', 'ê¤', 'è´', 'óü', 'ğØ', 'ëª', 'ãÌ', 'éµ', 'ïù':
    Result := 'l';
    'ëö', 'ñÚ', 'èï', 'ğ½', 'Ùõ', 'öÇ', 'ï²', 'àğ', 'ŞÛ', 'â¤', 'ëá', 'é¡', 'ïİ',
    'ÙÀ', 'ñ§', 'Ùù', 'ãø', 'Üı', 'çó', 'Şû', 'äğ', 'öÃ', 'ß¼', 'æÖ'{, 'ó¡'}, 'áï',
    'è¿', 'ßé', 'ö²', 'İ¤', 'Û½', 'ò©', '÷´'{, '÷©'}, 'òı', 'Ü¬', 'á£', 'çÏ', 'ì×',
    'ïÜ', 'Úø', 'íË', 'äİ', 'òş', 'êó', 'ì¸', 'òÖ', '÷Ö'{, 'òú'}, 'ó±', 'á¹', 'ã÷',
    'Üâ', 'êÄ', 'ë£', 'Ùó', 'è£', 'î¦', 'í®'{, 'İ®'}, 'áÒ', 'äØ', 'â­', 'é¹', 'ïÑ',
    'ğÌ', 'ä¼', 'ñÇ', '÷È', 'ŞÑ', 'îÍ', 'ìË', 'í¯', 'òµ', 'İù', 'Ş«', 'ëü', 'íæ',
    'ô¿', 'ÛÂ', 'ô»', 'òì', 'ãÂ', 'ó·'{, 'ßä'}, 'ìò', 'â¨', '÷ã', '÷ç', 'ŞÂ', 'ØÂ',
    'åô', 'ôÍ', 'ëß', 'ôé', 'ãè', 'åµ', 'Ú×'{, 'à×'}, 'ãæ', 'ö¼', 'íí', 'äÏ', 'ëï',
    'ß÷', 'ğÅ', 'èÂ', 'íğ', 'íµ', 'ç¿', 'åã', 'ßã', 'óú', 'óº', 'áº', 'çä', 'Üå',
    'çë', 'çÅ', 'ãÉ', 'ãı', 'íª', '÷ª', 'Üø', 'Ú¤', 'äé', 'êÔ', 'î¨', 'õ¤', 'çÑ',
    'ÚÓ', 'æÆ', 'âÉ', '÷á', 'éâ'{, 'ÜÔ'}, 'ï÷', 'İë', 'õö', 'ñ¢', 'ïÒ', 'õø', 'ñò',
    'ßè', 'Ù°', 'íø', 'öÊ', 'ë¤', 'Øï', 'ãå', 'Ûé', 'ÜÙ', 'îâ', 'äÅ':
    Result := 'm';
    'ŞÖ', 'ŞÃ', 'Ø¿', 'ïÕ', 'ëÇ', 'ñÄ', 'Şà', 'Üµ', 'èÍ'{, 'İÁ'}, 'Ø¾', 'àï'{, 'à«'},
    'éª', 'ôö', 'ëî', 'òï', 'àì', 'âÎ', 'êÙ', 'ß­', 'Ø«', 'ßÎ', 'íĞ', 'îó', 'â®',
    'òÍ', 'Ûñ', 'è§', 'Ú«', 'Ûè', 'âõ', 'îê', 'â¥', 'öò', 'Ù£', 'ì»', 'êÇ', 'íş',
    'öÓ', 'öó', 'ğ¤', 'éı', 'Ø¥', 'Ûş', 'Üà', 'ôÁ', 'æÕ'{, 'ëå'}, 'Úí', 'ô«', 'à¿',
    'ò¨', 'õæ', 'ŞÁ', 'ßÌ', 'ñ÷', 'Øú', 'å¸', 'æ¤', 'âî', 'áğ', 'Ù¯', 'ßæ', 'ññ',
    'æÛ', 'æå', 'åó', 'æÀ', 'îÏ', 'í¤', 'ô¬', 'ÙĞ', 'ßö', 'Şù', 'ï»', 'í¥':
    Result := 'n';
    'àŞ', 'Ú©', 'ê±', 'ñî', 'âæ':
    Result := 'o';
    'îÙ', 'ŞÕ', 'áİ', 'Ú¢', 'İâ'{, 'èË'}, 'óá', 'Ù½'{, 'ßß'}, 'İå', 'ãİ', 'õç', 'ó´'{,
    'ãú'}, 'ñÈ', 'ñá', 'äè', 'åÌ', 'ó¦', 'ëã', 'âÒ', 'áó', 'ŞË', 'ğå', 'õ¬', 'ïÂ',
    'àú', 'ì·', 'àÎ', 'ö¬', 'äÔ', 'âñ', 'àØ', 'Ü¡', 'ó²', 'Ø§', 'ç¢', 'Úü', 'îë',
    'àè', 'ÜÅ'{, 'èÁ'}, 'ò·', 'Û¯', 'Úğ', 'Ûı', 'î¼', 'òç', 'õù', 'Ü±', 'âÏ', 'Øò',
    'ÛÜ', 'ß¨'{, 'ñ±'}, 'äÄ', 'æÇ', 'î¢', 'ê¶', 'êú', 'ôæ', 'æé', 'ëİ', 'õä', 'ÚÒ',
    'Øâ', 'çÎ'{, 'óª'}, 'éè', 'î©'{, 'àÑ'}, 'æÎ', 'ë­', 'Ø¯', 'ÜÖ', 'æ°', 'æÉ', 'ò­',
    'é¯', 'êò', 'æ³', 'Ù·', 'èÒ', 'öÒ', 'îÇ', 'Û¶', 'ğ«', 'ØÏ', 'îŞ', 'óÍ'{, 'çê'},
    'Şå', 'Ùö', 'ê·', 'àÛ', 'Ùé', 'è±', 'å§', 'ïä', 'äß', 'ë«', 'ïè', 'õë', 'ØÖ',
    'âà', 'ŞÌ':
    Result := 'p';
    'ØÎ', 'ñÊ', 'äĞ', 'á½', 'ôò'{, 'öÄ'}, 'èç', 'İÂ', 'àÒ', 'éÊ', 'õè', 'ØÁ', 'Ûß',
    'áª'{, 'ÜÎ'}, 'êÈ', 'ñı', 'ä¿', 'İ½', 'æë', 'çù', 'ç÷', 'ì÷', 'òÓ', 'ôë', 'òà',
    'Ş­', '÷¢', '÷è', 'á¨', 'Ü»'{, 'è½'}, 'ç²', 'ôì', 'ãà', 'Üù', 'İİ', 'íÓ', 'í¬',
    'İÖ', '÷Ä', 'Úä', 'Ü·', 'Ùİ', 'á©', 'ã¥', 'í©', 'å¹', 'åº', 'å½', 'îÔ', 'ò¯',
    'Şç', 'óé', 'ëÉ', 'ã»', 'ç×', 'ÜÍ', 'Üç', 'Ù»', 'èı', 'ãŞ', 'ê¨', 'õÄ', 'òŞ',
    'ïº', 'ïÏ', 'ïê', 'æÍ', 'éÉ'{, 'ôÇ'}, 'ñß', 'ìÁ', 'íÍ', 'õÎ', 'Øä', 'çØ'{, 'Üñ'},
    'ÚÛ', 'ã¾', '÷³', 'éÔ', 'ã¸', 'Ú½', 'æª', 'êü', 'ã«', 'óæ', 'ïÆ', 'ôÀ'{, 'ÜË'}{,
    'àº'}, 'äÚ', 'àß', 'éÕ', 'òû', 'ï·', 'ßÄ', 'Şì', 'àõ', 'òß', 'öë', 'éÑ', '÷ô',
    'ÜÜ', 'ö¥', 'óä', 'íà', 'óÀ', 'õ¼', 'öÆ', 'Úö', 'ñ·', 'Üä', 'óÌ', 'òË', 'òÇ',
    'é±', 'öú', 'áì', 'ò°', 'Ù´', 'åÏ', 'êä'{, 'ÛÏ'}, 'åÙ', 'ôÃ', 'òø', '÷ü', 'ôÜ',
    'á«', 'Ú°'{, 'ìî'}, 'òĞ', 'ôğ', '÷ñ', 'Û¾', 'ëÔ', 'ğ¶', 'Ş¡', 'íá', 'è³', 'Ş¾',
    'ë¬', 'ñ³', 'áé', 'ó½', 'ãÖ', 'êï', 'ãª', 'Ú¹', 'Üõ', 'éú', 'îı', 'óÜ', 'òé',
    '÷Ü', 'î°', 'ç¹', 'í¨', 'ã×', 'ãÚ', 'åÒ', 'Û§'{, 'ïê'}:
    Result := 'q';
    'òÅ'{, '÷×'}, 'ÜÛ', 'ìü', 'ğ¦', 'Üé', 'èã', 'æ¬', 'Üó', 'ïş', 'Øğ', 'éí', 'â¿',
    'ñÅ', 'ëÀ', 'áõ', 'áÉ', 'éÅ', 'òî', 'ôÛ', 'õå', '÷·', 'ï¨', 'àé', 'å¦', 'Ş¸',
    'ñà', 'ò¬', 'ä²', 'äá', 'çÈ', 'İê', 'ëÃ', 'Ş¨', 'ÜÇ', 'èÄ', 'ò¸', 'î£', 'Ù¼',
    'óè':
    Result := 'r';
    'ìá', 'è¼', 'Ø­', 'ÛÉ', 'İØ', 'Øí', 'Ø¦', 'ìª', 'ëÛ'{, 'àç'}, 'ë§', 'ôÖ', 'âÌ',
    'Şú', 'íß', 'òª', 'çÒ', 'ëı', 'öş', 'Ü£', 'ğş', 'ØÄ', 'ï¤', 'ğ£', 'ï¡'{, 'ğğ'},
    'ôÄ'{, 'öè'}, 'ßş', 'ì¦', 'ö®', 'áê', 'ÜÏ', 'æ©', 'îÌ', 'Ûï', 'ô®', 'õÇ', 'äú',
    'ëş', 'Ú¨', 'ğŞ', 'æó', 'Û·', 'æÓ', 'óµ', '÷­', 'éä', 'õü', 'ìØ', 'Ûğ', 'ç´',
    'óâ', 'ô¹', 'òÙ', 'Û¿', 'äû', 'â¦', 'î´', 'ÙÜ', 'ØÇ', 'äÜ'{, '÷ê'}, 'Ú·', 'ßÓ',
    'ïò', 'ÚÅ', 'äÉ', 'ëÏ', 'é©', 'ò×', 'óÏ', 'íò', 'êÉ', 'áÓ', 'İé', 'õ§', 'öõ',
    'â»', 'ìÂ', 'Ûõ', 'İª', 'öå', 'õ¹', 'ìê', 'êÛ', 'óÂ', 'éø', 'îæ', 'ß±', 'ÚÖ',
    'óß', 'ó§', 'ô¼', 'á÷', 'ç·', 'ì¯', 'ç£', 'æ­', 'Ù¿', 'İÄ', 'Şó', 'ë¨', 'ïø',
    'ÛÓ', 'ãğ', 'ëò', 'äø', 'à§', 'ó°', 'ãÅ', 'äÌ', 'æ×', 'ãß', 'åù', 'îå', 'àÊ',
    'Ş÷', 'İô', 'éÃ', 'ÛÌ', 'ßĞ', 'ğ¸', 'çÁ', 'òÏ', 'ØË', 'ïÈ', 'äù', 'ãá', 'Ùî',
    'æ¦', 'ìë', 'ãô', 'æá', 'Ù¹', 'óÓ', 'ñê', 'âì', 'Ú¡', 'áÂ', 'äÁ', 'İ¿', 'áÔ',
    'ìİ', 'åä', 'áø', 'İ¥', 'â¸', 'öÀ', 'é¾', 'æ¶', 'êı'{, 'êı'}{, 'êı'}, 'èø', 'íü',
    'àÂ', 'ßï', 'İ·', 'ã¤', 'ñµ', 'à²', 'äÑ', 'âÈ', 'ì¬', 'ïË', 'òô', 'ÛÅ', 'àÕ',
    'î¤', 'Ş´', 'öÕ', 'Ùí', 'ä³', 'ÚÕ', 'à¼', 'ãº', 'İø', 'ö¢', 'óù', 'â¡', 'İ´',
    'íõ', 'î¡', 'å¡', 'ÚÇ':
    Result := 's';
    'í³', 'ß¾', 'ìâ', 'î×', 'Øç', 'Üæ', 'ŞĞ', 'õÁ', 'îè', 'äâ', '÷£', 'ãË', 'åİ',
    'é½', 'ææ', 'Û¢', 'ìÆ', 'õÌ', 'öØ', 'Ş·'{, 'ëÄ'}, 'îÑ', 'ê¼', 'Û°', 'ñû', 'ïÄ',
    'ìş', 'îã', 'ï¦', 'ôÊ', 'ïÛ', 'â¼', 'äç', 'è©', 'éÌ', 'ó¥', 'ó«', 'õ±', 'àû',
    'ÙÎ', 'ñí', 'èº', '÷Ò', 'ä¬', 'ßû', 'Ø»', 'ìı', 'ß¯', 'ï«', 'í«', 'ëø', 'ç°',
    'ç¾', 'ğÃ', 'õ®', 'ÙÃ', 'ã©', 'åÑ', 'ñÓ', 'î±', 'ãÙ', 'ãÃ', 'éå', 'Şİ', 'Ù¬',
    'ìö', 'óÔ', 'ö¶', 'òè', '÷Ø', 'öæ', 'ñ»', 'ôĞ', 'İÆ', '÷Ñ', 'Üğ', 'æÃ', 'İã',
    'òÑ', 'öª', 'èè', 'àÌ', 'ÙÚ', 'Ù¡', 'Üí', 'íÅ', 'Ù×', 'äü', 'âú', '÷»', 'İ±',
    'õ©', 'îÊ', 'Ü¢', 'İË', 'ŞÒ', 'î¶', 'åè', 'ìÕ', 'êÕ', 'â½', 'ëà'{, 'ÙÛ'}, 'Ø±'{,
    'Ù¢'}, 'Ûç', 'ãû', 'èŞ', 'íÈ', 'õÉ', 'õ¢', 'éÒ', 'ö¾', 'âÕ', 'èØ', 'óê':
    Result := 't';
    'Ùï', 'æ´', 'Øô', 'ëğ', 'áË', 'Øà', 'òê', 'æı', 'Ü¹', 'çº', 'ëä', 'İÒ', 'çş',
    'îµ', 'Øè', 'ã¯', 'éş', '÷Í', 'ÙË', 'åÔ', 'Úñ', 'İÚ', 'ìĞ', 'Ş±', 'àí', 'àø',
    'ãí', 'ãÇ', 'ä¶', 'á¡', 'áÍ', 'ì¿', 'çâ', 'ä¢', 'æ¸', 'ÚÃ', 'Úó', 'â«', 'ğô',
    'ôº', 'è¸', 'öÛ', 'ê¦', 'â¬', 'ãÓ', 'ö©', 'ØØ', 'ãë', 'è·', 'İî', 'Ş³', 'ÙÁ',
    'İ«', 'à¸'{, 'ë¿'}, 'á¢', 'ä×', 'íÒ', 'ö»', 'ÛØ', 'Úù', 'ä´', 'òÚ', '÷ù', 'Øõ',
    'åü', 'âĞ', 'âè', 'âä', 'åÃ', 'êõ', 'ğÄ', 'Ø£', 'Úã', 'è»', 'ÜÌ', 'ìÉ', 'æÄ',
    'ğí', 'æğ', 'å»', 'ğÍ', 'öÈ':
    Result := 'w';
    'Û¨', 'åæ', 'àå', 'İ¡', 'Û×', 'Ùâ', 'ñ¶', 'Û­', 'ßñ', 'ŞÉ', 'ä»', 'ì¤', 'äÀ',
    'İ¾', 'ôÑ', 'ôâ', 'ô¸', 'ğª', 'ÙÒ', 'òá', 'æÒ', 'éØ', 'ì¨', 'ìä', 'ôË', 'ó£',
    'ó¬', 'õµ', 'êØ', '÷û', 'êê', 'Úô', 'çô', 'áã', 'İß', 'åï', 'İû', 'ìû', 'â¾',
    'ãÒ', 'ôª', 'ìù', 'áò', 'èÔ', 'íÌ', 'åÚ', 'è¦', '÷ï', 'óÁ', 'ë¯', 'ìì', 'ôÌ',
    'İ²', 'õÑ'{, 'õ£'}, 'åß', 'æµ', 'ğï', 'ğÂ', 'Ùş', 'áı', 'ò¹', 'óÚ', 'õĞ', 'Şº',
    'ìŞ', 'á­', 'ÜÈ', 'ö±', 'Ü¼', 'ç½', 'İÙ', 'æø', 'âÔ', 'âÃ', '÷Ï', 'öß', 'ó­',
    'èÉ', 'ßØ', 'èÕ', 'æç', 'ç¯'{, 'åĞ'}, 'äì', 'óï', '÷Ì', 'áÅ', 'óã', 'ÙÉ', 'ÛÄ',
    'ß¢'{, 'çÓ'}, 'Ş¦', 'ç¥', 'Ùô', 'äÍ', 'éÇ', 'é¿', 'âİ', 'â³', 'Ş¯', 'åâ', 'ÛÆ',
    'å¬', 'õó', 'ê¿', 'ì§'{, 'Ü°'}{, 'öÎ'}, 'Ø¶', 'Úê', 'íÊ', 'ß©', 'Üô', 'ã¬'{, 'Üº'},
    'ßİ', 'âÓ', 'ğ¼', 'õ÷', 'âÊ', '÷Û', 'á¶'{, 'äå'}, 'íì', 'ñã', 'çï', 'Ú¼', 'èò',
    'ôÚ'{, 'õ¯'}, 'äª', 'ÛÃ', 'äÓ', 'ìã', 'Ş£', 'ÚÎ', 'Şï', 'İæ', 'êÑ', 'ìÓ', 'ÙØ',
    'ğç', 'äö', 'è¯', 'ãù', 'ìÅ', 'îç', 'äÖ', 'é¸', 'íÛ', 'ïà', 'í´', 'õ½'{, '÷¨'},
    'ÚÊ', 'Û÷', 'ñ¿', 'â´', 'Ş¹', 'êÖ', 'õ¸', 'á¾', 'âş', 'ä­', 'ä±', 'Ü÷', 'öà',
    'áß', 'Ùã','Ñ§','Ñ©':
    Result := 'x';
    'í±', 'Øß', 'èâ', 'Øó', 'á¬', 'çğ', 'íı', 'ğé', 'åÂ', 'Ûë', 'æ«', 'í¼', 'ë²',
    'Şë', 'âû', 'ëÙ', 'áÃ', 'İÎ', 'äÎ', 'ëç', 'Û³', 'æÌ', 'Ú¥', 'ãÆ'{, 'åû'}, 'Ü¾',
    'óÛ', 'éÜ', 'Ùğ', 'Ù²', 'ÙÈ', 'ØÉ', 'Û±', 'çü', 'î»', '÷Ê', '÷ú', 'êÌ', 'ìÍ',
    'äÙ', 'õ¦', 'Úİ', '÷Ğ', 'ØÍ', 'ãó', '÷±', 'ì¾', 'áà', 'ìÈ', 'òÕ', 'âó', 'í¦',
    'çÛ', 'Ø²', 'ßº', 'Ø³', 'ëÈ', 'é÷', 'çò', 'áæ', 'ôí', '÷¥', 'èÃ', 'ñº', 'áÊ',
    'ğÎ', 'ê×', 'ŞŞ', 'îô', 'Úş', 'êÊ', 'ìÇ', 'ÚË', 'ØÌ', 'ñÂ', 'ßŞ', 'â¢', 'ì¥',
    'äô', 'àæ', '÷ğ', 'Ûİ', 'Ú±'{, 'âù'}, 'åÆ', 'âÂ', 'ß×', 'Üè', 'êİ', 'íô', 'ôı',
    'ğê', 'áÚ', 'îÆ', 'ÜÓ', 'ô¯', 'ì½', 'ß®', 'Ø×', 'Øî', 'Øı', 'ß½', 'Ù«', 'á»',
    'âø', 'æä', 'ŞÈ', 'ŞÄ', 'ôà', 'éó', 'ã¨', 'ŞÚ', 'Ûü', 'ñ´', 'çË', 'ğù', 'òæ',
    'ìÚ', 'ï×', 'Øæ', 'éì', 'Ş²'{, 'ôè'}, 'ñ¯', 'ïî', 'Ü²', 'ä¦', 'ë³', 'î÷', 'à³',
    'Ü§', 'Ûó', 'áş', 'Û´', 'â¹'{, 'ö¸'}, 'ö¯'{, 'ßÅ'}, 'ò¾', 'ñ«', 'Üá', 'Ø·', 'İº',
    'çø', 'àÓ', 'Şü', 'ó¿', 'è¬', 'ğĞ', 'âß', 'Üã', 'Üş', 'İÓ', 'éº', 'äŞ', 'İö',
    'äë', 'Ùø', 'å­', 'Û«', 'ò£', 'ñ¨', 'ëô', 'à¡', 'çß', 'Ü­', 'ã¼', 'ÛÕ', 'ïŞ',
    '÷«', 'áü', 'ÚÄ', 'âÅ', 'İÇ', 'ö§', 'áÎ', 'Şí', 'ëé', 'è¤', 'êì', 'ñâ', '÷Ó',
    'à¯', 'ğ®', 'Ù¸', 'Øü', 'ßÏ', 'èÖ', 'ğà', 'İ¯', 'İµ', 'òÄ', 'öÏ', 'éà', 'òö',
    'ØÕ', 'İ¬', 'îğ', 'ë»', '÷î', 'Ù§', 'àó', 'å¶', 'òÊ', '÷ø', 'æú', 'æ¥', 'ì£',
    'ì¶', 'ô§', 'Ø®', 'óÄ', 'ô¨', 'ñ¾', 'òõ', 'Øñ', 'Ù¶', 'àô', 'àö', 'â×', 'ğõ',
    'ñÁ', 'ö¹', 'í²', 'åı', 'âÀ', 'êÅ', 'îÚ', 'ÚÍ', 'ãĞ', 'ğÁ', 'ìÏ', 'İ÷', 'Ø¹',
    'òâ', 'ìÛ', 'ğÖ', 'å÷', 'ğ°', 'íó', 'óî', 'ãä', 'ë¼', 'ö½', 'Ü«'{, 'éÚ'}, 'ó¢',
    'Ûù', 'æÂ', 'Şò', 'è¥', 'ë¾', 'îá', 'éĞ', 'Ùß', 'å®', 'ç¡', 'Ü¿', 'êÀ', 'ëµ',
    'áñ', 'éæ', 'Û©', 'ã¢', 'ã³', 'è¹', 'ìÙ':
    Result := 'y';
    'åÁ', 'ä·', 'ÚÂ', 'ìú', 'ßª', 'åª', 'ïí', 'êß', 'ç»', 'ÚÑ', 'æÜ', 'áÑ', 'ôÒ',
    'ê¢', 'õş'{, 'õş'}, 'ôô', 'ïÅ', 'ö·', '÷Ú', 'öö', 'æ¢', 'ïö', 'ñè', 'óÊ', 'è÷',
    'ö¤', 'í§', 'íö', 'ÙÌ', 'ôÕ', 'æã', 'ÚÁ', 'Úî', 'Û¸', 'öí', 'õ¡'{, 'à©'}, 'Úâ',
    'ßÆ', 'ŞÙ'{, 'çŞ'}, 'áÌ', 'ôØ', 'ô¢', 'êÃ', 'ôõ', 'öÉ', 'è¶', 'ê°', 'æà', 'ŞÊ',
    'ßğ', 'åÅ', 'ßõ', 'àı', 'óĞ', 'ô·', 'óå', 'ØÓ', 'ØÆ', 'ê¾', 'ÚÚ', 'çÕ', 'îÀ',
    'ï­', 'êµ', 'ß¸', 'ßî', 'Şê'{, 'é«'}, '÷ş', 'íÄ', 'ßå', 'ğä', 'òÆ', 'íÎ', 'ñ©',
    'ì¹', 'ÚŞ', 'Şø', 'Ûµ', 'æÑ', 'â¯', 'è°'{, 'ó¯'}, 'Øë', 'áÖ', 'á¤', 'îÈ', 'ßú',
    'Ú¯', 'óÉ', 'èş', 'òØ', 'éü', 'ÚØ', 'ß¡', 'íİ'{, 'ô÷'}, 'ñŞ', 'èÏ', 'ğÑ', 'ä¥',
    'èå', 'ìõ', 'İè', 'é»', 'óğ', 'ëÓ', 'éô', 'î³', 'çÇ', 'ğ¡', 'ÛÚ', 'ğ²', 'ëŞ',
    'êâ', 'á¿', 'îÛ', 'ï£', 'óİ', 'áç', 'Úº', 'Ø´'{, 'èÙ'}, 'ìó', 'ëÕ', 'Ûú', 'ôê'{,
    'õÅ'}, 'Şı', 'õÜ', 'ÜÆ', 'ìí', 'åë', 'è×', 'éò', 'íé'{, 'õ¥'}, 'âå', 'õô', 'àù',
    'Û¤', 'èÎ', 'Úì', 'èä', 'êŞ', 'éù', 'ğº', 'åé', 'ğë', 'òÎ', 'æï', 'ïô', 'ëù',
    'ö£', 'õÙ', 'ô±', 'ïñ', 'ó®', 'Ú£', 'õà', 'æ¨', 'íØ', 'æû', 'ç§', 'ëĞ', 'İ§',
    'ôü', 'ô¦', 'Ùª', 'Û¥', 'ä¨', 'Üï', 'îù', 'éÆ', 'äó', 'éÍ'{, 'óÃ'}, 'ô¶', 'ğñ',
    'õî', 'ä¾', '÷æ', 'Øù', 'ÜÑ', 'èÌ', 'ìÄ', 'ğæ', 'óç', 'ôã', 'ò§', 'ßù', 'âÍ',
    'ãÜ', 'ö¿', 'æí', 'ã·', 'çÄ', 'ëÆ', 'ñ¸', 'Ù¾', 'äÃ', 'í½', 'İÏ', 'ïß', 'ÙŞ',
    'õò', 'çÚ', 'ß¬', 'Ş©', 'é×', '÷®', 'ß¤', 'Úè', 'âô', 'ìñ', 'ëÑ'{, 'ßò'}:
    Result := 'z';
  end;
end;


end.
