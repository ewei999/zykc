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
      object cxgrdbclmncxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        Width = 47
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn24: TcxGridDBColumn
        DataBinding.FieldName = #23567#31867
        Width = 49
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #20215#30446#32534#21495
        Width = 99
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #26465#30721
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Width = 188
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #25340#38899
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        Width = 57
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #21333#20301
        Width = 52
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #21333#20215
        Width = 56
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #26377#25928#26399
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #38646#21806#20215
        Width = 55
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #35686#25106#37327
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn
        DataBinding.FieldName = #29238#32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn13: TcxGridDBColumn
        DataBinding.FieldName = #21442#32771#20540
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn14: TcxGridDBColumn
        DataBinding.FieldName = #26159#21542#25240#25187
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn15: TcxGridDBColumn
        DataBinding.FieldName = #26631#24535
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn16: TcxGridDBColumn
        DataBinding.FieldName = #26159#21542#20316#24223
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn17: TcxGridDBColumn
        DataBinding.FieldName = #24211#23384
        Visible = False
        Width = 34
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn18: TcxGridDBColumn
        DataBinding.FieldName = #31215#20998#21830#21697
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn19: TcxGridDBColumn
        DataBinding.FieldName = #20817#25442#35268#21017
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn20: TcxGridDBColumn
        DataBinding.FieldName = #26159#21542#22871#39184
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn21: TcxGridDBColumn
        DataBinding.FieldName = #36873#25321
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn22: TcxGridDBColumn
        DataBinding.FieldName = #26159#21542#30456#31561
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn23: TcxGridDBColumn
        DataBinding.FieldName = #20851#32852
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn25: TcxGridDBColumn
        DataBinding.FieldName = #20316#24223#26102#38388
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn26: TcxGridDBColumn
        DataBinding.FieldName = #21019#24314#26102#38388
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn27: TcxGridDBColumn
        DataBinding.FieldName = #21516#27493
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn28: TcxGridDBColumn
        DataBinding.FieldName = #23384#25918#22320#28857
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn29: TcxGridDBColumn
        DataBinding.FieldName = #26242#26102#20316#24223
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn30: TcxGridDBColumn
        DataBinding.FieldName = #20351#29992#21058#37327
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn31: TcxGridDBColumn
        DataBinding.FieldName = #27880#24847#20107#39033
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn32: TcxGridDBColumn
        DataBinding.FieldName = #38144#21806
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn33: TcxGridDBColumn
        DataBinding.FieldName = #31574#34892#31867#21035
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn34: TcxGridDBColumn
        DataBinding.FieldName = #31574#34892#20998#31867
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn35: TcxGridDBColumn
        DataBinding.FieldName = #31574#34892#21517#31216
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn36: TcxGridDBColumn
        DataBinding.FieldName = #32487#32493#20351#29992
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn37: TcxGridDBColumn
        DataBinding.FieldName = #21407#21517#31216
        Width = 143
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
    Width = 121
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
      'select * from '#33647#21697#29992#21697#20215#30446#34920' where '#26159#21542#20316#24223'=0'
      'and '#26159#21542#22871#39184'= 0 and '#26631#24535'=0')
    Left = 464
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 528
    Top = 88
  end
end
