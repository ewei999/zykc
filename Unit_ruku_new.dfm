object Form_ruku_new: TForm_ruku_new
  Left = 0
  Top = 0
  Caption = #20837#24211#21333
  ClientHeight = 611
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 297
    Align = alTop
    Anchors = []
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      743
      297)
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 743
      Height = 42
      ActionManager = ActionManager1
      BiDiMode = bdLeftToRight
      Caption = 'ActionToolBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Spacing = 0
      ExplicitWidth = 984
    end
    object cxLabel1: TcxLabel
      Left = 144
      Top = 61
      Caption = #20837#24211#32534#21495
    end
    object cxLabel2: TcxLabel
      Left = 384
      Top = 61
      Caption = #20837#24211#26085#26399
    end
    object cxLabel3: TcxLabel
      Left = 160
      Top = 94
      Caption = #20379#24212#21830
    end
    object cxLabel4: TcxLabel
      Left = 176
      Top = 159
      Caption = #22791#27880
    end
    object cxLabel5: TcxLabel
      Left = 400
      Top = 255
      Caption = #32463#25163#20154
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 218
      Top = 59
      DataBinding.DataField = #30003#35831#32534#21495
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 456
      Top = 253
      DataBinding.DataField = #30003#35831#20154
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 456
      Top = 59
      DataBinding.DataField = #30003#35831#26085#26399
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 8
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 218
      Top = 92
      DataBinding.DataField = #20379#24212#21830
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.KeyFieldNames = #20379#24212#21830#32534#21495
      Properties.ListColumns = <
        item
          FieldName = #21517#31216
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DataSource_list
      TabOrder = 9
      Width = 145
    end
    object cxDBMemo1: TcxDBMemo
      Left = 218
      Top = 158
      DataBinding.DataField = #30003#35831#35828#26126
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ScrollBars = ssVertical
      TabOrder = 10
      Height = 89
      Width = 359
    end
    object cxButton1: TcxButton
      Left = -237
      Top = 246
      Width = 33
      Height = 35
      Action = Action_new_m
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = ''
      SpeedButtonOptions.Transparent = True
      TabOrder = 11
      ExplicitLeft = 4
    end
    object cxButton2: TcxButton
      Left = -198
      Top = 246
      Width = 33
      Height = 35
      Action = Action_delete_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 12
      ExplicitLeft = 43
    end
    object cxButton3: TcxButton
      Left = -159
      Top = 246
      Width = 33
      Height = 35
      Action = Action_save_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 13
      Visible = False
      ExplicitLeft = 82
    end
    object cxLabel6: TcxLabel
      Left = 384
      Top = 94
      Caption = #36141#36135#26041#24335
    end
    object DBComboBox1: TDBComboBox
      Left = 456
      Top = 92
      Width = 121
      Height = 27
      Items.Strings = (
        #36170
        #29616)
      TabOrder = 15
    end
    object cxLabel7: TcxLabel
      Left = 160
      Top = 125
      Caption = #20379#24212#21830
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 218
      Top = 125
      TabOrder = 17
      Width = 145
    end
    object cxLabel8: TcxLabel
      Left = 416
      Top = 123
      Caption = #33293#38646
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 456
      Top = 125
      TabOrder = 19
      Width = 121
    end
    object cxButton4: TcxButton
      Left = 82
      Top = 256
      Width = 33
      Height = 35
      Action = Action_save_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 20
      Visible = False
    end
    object cxButton5: TcxButton
      Left = 43
      Top = 256
      Width = 33
      Height = 35
      Action = Action_delete_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 21
    end
    object cxButton6: TcxButton
      Left = 4
      Top = 256
      Width = 33
      Height = 35
      Action = Action_new_m
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = ''
      SpeedButtonOptions.Transparent = True
      TabOrder = 22
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 297
    Width = 743
    Height = 314
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'LiquidSky'
    ExplicitLeft = -241
    ExplicitTop = 15
    ExplicitWidth = 984
    ExplicitHeight = 380
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource_cg_mingxi
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = cxgrdbclmncxGrid1DBTableView1DBColumn11
        end
        item
          Format = #21512#35745'0'
          Kind = skCount
          Column = cxgrdbclmncxGrid1DBTableView1DBColumn12
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxgrdbclmncxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #20837#24211#32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #20837#24211#26126#32454#32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #20837#24211#25209#27425
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #20837#24211#26102#38388
        Visible = False
        Width = 78
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        Options.Editing = False
        Width = 59
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn13: TcxGridDBColumn
        DataBinding.FieldName = #23567#31867
        Options.Editing = False
        Width = 62
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #20215#30446#32534#21495
        Visible = False
        Width = 102
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Options.Editing = False
        Width = 163
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        Options.Editing = False
        Width = 98
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #25968#37327
        Width = 90
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #21333#20301
        Options.Editing = False
        Width = 78
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #36827#36135#21333#20215
        Width = 120
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #37329#39069
        Options.Editing = False
        Width = 71
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ADOQuery_cg_zhubiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ['#20013#22830#37319#36141#20837#24211#20027#34920']')
    Left = 80
    Top = 208
  end
  object DataSource_cg_zhubiao: TDataSource
    DataSet = ADOQuery_cg_zhubiao
    Left = 184
    Top = 224
  end
  object ADOQuery_cg_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#20837#24211#26126#32454#34920)
    Left = 280
    Top = 360
  end
  object DataSource_cg_mingxi: TDataSource
    DataSet = ADOQuery_cg_mingxi
    Left = 392
    Top = 360
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end
      item
      end
      item
        Items = <
          item
            Action = Action_save
            Caption = #20445#23384#33609#31295'(&Z)'
            ImageIndex = 50
          end
          item
            Action = Action_cancel
            Caption = #21462#28040'(&X)'
            ImageIndex = 96
          end
          item
            Action = Action_submit
            Caption = #25552#20132'(&Y)'
            ImageIndex = 98
          end
          item
            Action = Action_delete
            Caption = #20316#24223'(&W)'
            ImageIndex = 95
          end
          item
            Action = Action_close
            Caption = #36864#20986'(&V)'
            ImageIndex = 89
          end>
        ActionBar = ActionToolBar1
      end>
    LargeImages = DataModule1.cxImageList32
    Images = DataModule1.cxImageList32
    Left = 632
    Top = 48
    StyleName = 'Platform Default'
    object Action_new: TAction
      Caption = #26032#22686
      ImageIndex = 90
      OnExecute = Action_newExecute
    end
    object Action_edit: TAction
      Caption = #20462#25913
      ImageIndex = 91
    end
    object Action_delete: TAction
      Caption = #20316#24223
      ImageIndex = 95
    end
    object Action_close: TAction
      Caption = #36864#20986
      ImageIndex = 89
    end
    object Action_cancel: TAction
      Caption = #21462#28040
      ImageIndex = 96
    end
    object Action_save: TAction
      Caption = #20445#23384#33609#31295
      ImageIndex = 50
    end
    object Action_new_m: TAction
      Caption = 'Action_new_m'
      ImageIndex = 93
    end
    object Action_delete_m: TAction
      ImageIndex = 97
    end
    object Action_save_m: TAction
      ImageIndex = 33
    end
    object Action_submit: TAction
      Caption = #25552#20132
      ImageIndex = 98
    end
  end
  object ADOQuery_list: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920' where '#26159#21542#20316#24223'=0')
    Left = 584
    Top = 144
  end
  object DataSource_list: TDataSource
    DataSet = ADOQuery_list
    Left = 680
    Top = 136
  end
  object ADOQuery_jiamu: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#33647#21697#29992#21697#20215#30446#34920' where '#26159#21542#20316#24223'=0 ')
    Left = 568
    Top = 208
  end
  object x: TDataSource
    DataSet = ADOQuery_jiamu
    Left = 672
    Top = 208
  end
end
