object RuntimeInfo_Frm: TRuntimeInfo_Frm
  Left = 355
  Top = 372
  BorderStyle = bsNone
  Caption = #27491#22312#22788#29702#29983#25104#25968#25454'...'
  ClientHeight = 65
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 251
    Height = 65
    Align = alClient
    Color = clWindowText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 229
    ExplicitHeight = 100
    object Shape1: TShape
      Left = 16
      Top = 22
      Width = 193
      Height = 25
      Brush.Style = bsClear
      Pen.Color = clRed
    end
    object Label_RunInfo: TLabel
      Left = 22
      Top = 27
      Width = 117
      Height = 16
      Caption = 'Label_RunInfo'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #40657#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 187
    Top = 21
  end
end
