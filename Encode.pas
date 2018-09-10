unit Encode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Forms, DB, ADODB;

const
  C1 = 52845;
  C2 = 22719;

  //����: ��ȡӲ��ϵ�к�
  function GetIdeSerialNumber: pchar;
  function GetVolumeID: string;


  //����: ���� �ַ���
  function Encrypt(const S: String; Key: Word): String;

  //����: ���� �ַ���
  function Decrypt(const S: String; Key: Word): String;

  function CharCodeToNumCode (S:string; ABlockSize:Integer):string;

  function CreateRegCode (s:string) :string;



implementation


function GetVolumeID: string;
var
  vVolumeNameBuffer: array[0..255]of Char;
  vVolumeSerialNumber: DWORD;
  vMaximumComponentLength: DWORD;
  vFileSystemFlags: DWORD;
  vFileSystemNameBuffer: array[0..255]of Char;
begin
  if GetVolumeInformation('C:\', vVolumeNameBuffer, SizeOf(vVolumeNameBuffer),
     @vVolumeSerialNumber, vMaximumComponentLength, vFileSystemFlags,
     vFileSystemNameBuffer, SizeOf(vFileSystemNameBuffer))   then
  begin
    Result := IntToHex(vVolumeSerialNumber, 8);
  end;
end;




  function GetIdeSerialNumber: pchar;
  const
    IDENTIFY_BUFFER_SIZE = 512;
    //Win98 Ҫ SMARTVSD.VXD ���밲װ�� \windows\system\iosubsys ������
  type
    TIDERegs = packed record
      bFeaturesReg     : BYTE; // Used for specifying SMART "commands".  �����Ĵ���(����SMART����)
      bSectorCountReg  : BYTE; // IDE sector count register  ������Ŀ�Ĵ���
      bSectorNumberReg : BYTE; // IDE sector number register ��ʼ�����Ĵ���
      bCylLowReg       : BYTE; // IDE low order cylinder value ��ʼ������ֽڼĴ���
      bCylHighReg      : BYTE; // IDE high order cylinder value ��ʼ������ֽڼĴ���
      bDriveHeadReg    : BYTE; // IDE drive/head register  ������/��ͷ�Ĵ���
      bCommandReg      : BYTE; // Actual IDE command.      ָ��Ĵ���
      bReserved        : BYTE; // reserved for future use.  Must be zero.    ����
    end;
    TSendCmdInParams = packed record
      cBufferSize  : DWORD;       // Buffer size in bytes  �������ֽ���
      irDriveRegs  : TIDERegs;    // Structure with drive register values.  IDE�Ĵ�����
      bDriveNumber : BYTE;        // Physical drive number to send command to (0,1,2,3).  ��������
      bReserved    : Array[0..2] of Byte;   //����
      dwReserved   : Array[0..3] of DWORD;  //����
      bBuffer      : Array[0..0] of Byte;// Input buffer.   ���뻺����(�˴������Եذ���1�ֽ�)
    end;
    TIdSector = packed record
      wGenConfig                 : Word;
      wNumCyls                   : Word;
      wReserved                  : Word;
      wNumHeads                  : Word;
      wBytesPerTrack             : Word;
      wBytesPerSector            : Word;
      wSectorsPerTrack           : Word;
      wVendorUnique              : Array[0..2] of Word;
      sSerialNumber              : Array[0..19] of CHAR;
      wBufferType                : Word;
      wBufferSize                : Word;
      wECCSize                   : Word;
      sFirmwareRev               : Array[0..7] of Char;
      sModelNumber               : Array[0..39] of Char;
      wMoreVendorUnique          : Word;
      wDoubleWordIO              : Word;
      wCapabilities              : Word;
      wReserved1                 : Word;
      wPIOTiming                 : Word;
      wDMATiming                 : Word;
      wBS                        : Word;
      wNumCurrentCyls            : Word;
      wNumCurrentHeads           : Word;
      wNumCurrentSectorsPerTrack : Word;
      ulCurrentSectorCapacity    : DWORD;
      wMultSectorStuff           : Word;
      ulTotalAddressableSectors  : DWORD;
      wSingleWordDMA             : Word;
      wMultiWordDMA              : Word;
      bReserved                  : Array[0..127] of BYTE;
    end;
    PIdSector = ^TIdSector;
    TDriverStatus = packed record
      bDriverError : Byte;// ���������صĴ�����룬�޴��򷵻�0
      bIDEStatus   : Byte;// IDE����Ĵ��������ݣ�ֻ�е�bDriverErrorΪSMART_IDE_ERRORʱ��Ч
      bReserved    : Array[0..1] of Byte;
      dwReserved   : Array[0..1] of DWORD;
    end;
    TSendCmdOutParams = packed record
      cBufferSize  : DWORD;// bBuffer�Ĵ�С
      DriverStatus : TDriverStatus;// ������״̬
      // ���ڱ�������������������ݵĻ�������ʵ�ʳ�����cBufferSize����
      bBuffer      : Array[0..0] of BYTE;
    end;

    var hDevice : THandle;
      cbBytesReturned : DWORD;
      SCIP : TSendCmdInParams;
      aIdOutCmd : Array [0..(SizeOf(TSendCmdOutParams) + IDENTIFY_BUFFER_SIZE-1) - 1] of Byte;
      IdOutCmd  : TSendCmdOutParams absolute aIdOutCmd;
    procedure ChangeByteOrder( var Data; Size : Integer );
    var ptr : PChar;
      i : Integer;
      c : Char;
    begin
      ptr := @Data;
      for i := 0 to (Size shr 1)-1 do begin
        c := ptr^;
        ptr^ := (ptr+1)^;
        (ptr+1)^ := c;
        Inc(ptr,2);
      end;
    end;

    begin
      Result := ''; // ��������򷵻ؿմ�
      if SysUtils.Win32Platform=VER_PLATFORM_WIN32_NT then
      begin    // Windows NT, Windows 2000
               // ��ʾ! �ı����ƿ���������������������ڶ����������� '\\.\PhysicalDrive1'
        hDevice := CreateFile( '\\.\PhysicalDrive0', GENERIC_READ or GENERIC_WRITE,
                   FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0 );
      end else // Version Windows 95 OSR2, Windows 98
        hDevice := CreateFile( '\\.\SMARTVSD', 0, 0, nil, CREATE_NEW, 0, 0 );

      if hDevice=INVALID_HANDLE_VALUE then
        Exit;
      try
        FillChar(SCIP,SizeOf(TSendCmdInParams)-1,#0);
        FillChar(aIdOutCmd,SizeOf(aIdOutCmd),#0);
        cbBytesReturned := 0;
        // Set up data structures for IDENTIFY command.
        with SCIP do
        begin
          cBufferSize  := IDENTIFY_BUFFER_SIZE;
          with irDriveRegs do
          begin
            bSectorCountReg  := 1;
            bSectorNumberReg := 1;
            bDriveHeadReg    := $A0;
            bCommandReg      := $EC;
          end;
        end;

        if not DeviceIoControl( hDevice, $0007c088, @SCIP, SizeOf(TSendCmdInParams)-1,
            @aIdOutCmd, SizeOf(aIdOutCmd), cbBytesReturned, nil ) then
          Exit;

      finally
        CloseHandle(hDevice);
      end;

      with PIdSector(@IdOutCmd.bBuffer)^ do
      begin
        ChangeByteOrder( sSerialNumber, SizeOf(sSerialNumber) );
        (PChar(@sSerialNumber)+SizeOf(sSerialNumber))^ := #0;
        Result := PChar(@sSerialNumber);
      end;
  end;


  function Encrypt(const S: String; Key: Word): String;
  var
    I: Integer;
  begin
    Result := S;
    for I := 1 to Length(S) do
    begin
      Result[I] := char(byte(S[I]) xor (Key shr 8));
      Key := (byte(Result[I]) + Key) * C1 + C2;
    end;
  end;

  function Decrypt(const S: String; Key: Word): String;
  var
    I: Integer;
  begin
    Result := S;
    for I := 1 to Length(S) do
    begin
      Result[I] := char(byte(S[I]) xor (Key shr 8));
      Key := (byte(S[I]) + Key) * C1 + C2;
    end;
  end;


  function CharCodeToNumCode (S:string; ABlockSize:Integer):string;
  var
    bstring:string;
    astring:string;
    cd:Integer;
    i,k:Integer;
  begin
    k:=1;

    for i:=1 to Length(s) do
    begin
      bstring:=bstring + IntToStr( ord(s[i]));
    end;

    astring:= IntToStr(ABlockSize) + bstring;

    cd := Length (astring) ;

    while k < cd+1 do
    begin
      if k mod ABlockSize = 0 then
      begin
        if k = cd then
          Result:= Result + astring[k]
        else
          Result:= Result + astring[k] +'-';
      end
      else
      begin
        Result:= Result + astring[k];
      end;
      Inc(k);
    end;
  end;

  function CreateRegCode (s:string) :string;
  var
    a,b,c,d,e,f:Integer;
  begin
    if s[1] <> '6' then
     begin
      Result:= '';
      exit;
     end;
    if Length(s)< 6 then
    begin
      Result:= '';
      Exit;
    end;

    a := (StrToInt(s[1])+strtoint(s[2])+strtoint(s[3])+strtoint(s[4])+strtoint(s[5])+strtoint(s[6])) div 6;
    b :=((strtoint(s[2])+strtoint(s[3])+strtoint(s[4])+strtoint(s[5])) div 6 )+2;
    c :=((strtoint(s[3])+strtoint(s[4])) div 6)+ 3;
    Result:= IntToStr(a)+inttostr(b)+inttostr(c);

    if Length(s) >11 then
    begin
    d := ((StrToInt(s[7])+strtoint(s[8])) *   StrToInt(s[8])) div 6;
    e := ((StrToInt(s[9])+strtoint(s[10])) *  StrToInt(s[9])) div 6;
    f := ((StrToInt(s[11])+StrToInt(s[12])) * StrToInt(s[12])) div 6;
    Result:= Result+ IntToStr(d) +inttostr(e) + IntToStr(f) ;
    end;

  end;





end.
