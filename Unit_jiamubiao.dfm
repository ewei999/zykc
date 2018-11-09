object Form_jiamubiao: TForm_jiamubiao
  Left = 0
  Top = 0
  Caption = #20215#30446#34920
  ClientHeight = 356
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object cxGrid1: TcxGrid
    Left = 0
    Top = 64
    Width = 765
    Height = 292
    Align = alBottom
    TabOrder = 0
    LookAndFeel.SkinName = 'SharpPlus'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        Width = 40
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn24: TcxGridDBColumn
        DataBinding.FieldName = #23567#31867
        Width = 41
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #20215#30446#32534#21495
        Width = 83
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Width = 159
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        Width = 48
      end
      object TcxGridDBColumn
        DataBinding.FieldName = #21253#35013#35268#26684
        Width = 84
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #21333#20301
        Width = 44
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #21333#20215
        Width = 47
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #38646#21806#20215
        Width = 46
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = #24211#23384
        Width = 49
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn37: TcxGridDBColumn
        DataBinding.FieldName = #21407#21517#31216
        Width = 122
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxTextEdit1: TcxTextEdit
    Left = 80
    Top = 15
    Properties.OnChange = cxTextEdit1PropertiesChange
    TabOrder = 1
    Width = 225
  end
  object cxLabel1: TcxLabel
    Left = 38
    Top = 19
    Caption = #21517#31216
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '#20215#30446#32534#21495','#21517#31216','#25340#38899','#35268#26684','#21333#20215','#21333#20301','#31867#21035','#38646#21806#20215','#24211#23384','#23567#31867','#21253#35013#35268#26684',isnull('#24211#23384#21333#20301','#21333#20301')'#21333#20301
      ' from '#33647#21697#29992#21697#20215#30446#34920' where '#26159#21542#20316#24223'=0'
      'and isnull('#26159#21542#22871#39184',0)= 0 and '#26631#24535'=0'
      '')
    Left = 464
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 528
    Top = 88
  end
end
