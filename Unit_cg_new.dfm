object Form_cg_new: TForm_cg_new
  Left = 0
  Top = 0
  Caption = #37319#36141#30003#35831#21333
  ClientHeight = 701
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 257
    Align = alTop
    Anchors = []
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      984
      257)
    object ActionToolBar1: TActionToolBar
      Left = 0
      Top = 0
      Width = 984
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
    end
    object cxLabel1: TcxLabel
      Left = 144
      Top = 61
      Caption = #30003#35831#32534#21495
    end
    object cxLabel2: TcxLabel
      Left = 384
      Top = 61
      Caption = #30003#35831#26085#26399
    end
    object cxLabel3: TcxLabel
      Left = 160
      Top = 94
      Caption = #20379#24212#21830
    end
    object cxLabel4: TcxLabel
      Left = 144
      Top = 124
      Caption = #30003#35831#35828#26126
    end
    object cxLabel5: TcxLabel
      Left = 400
      Top = 222
      Caption = #30003#35831#20154
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
      Top = 220
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
      Top = 123
      DataBinding.DataField = #30003#35831#35828#26126
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ScrollBars = ssVertical
      TabOrder = 10
      Height = 89
      Width = 359
    end
    object cxButton1: TcxButton
      Left = 4
      Top = 215
      Width = 33
      Height = 35
      Action = Action_new_m
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = ''
      SpeedButtonOptions.Transparent = True
      TabOrder = 11
    end
    object cxButton2: TcxButton
      Left = 43
      Top = 215
      Width = 33
      Height = 35
      Action = Action_delete_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 12
    end
    object cxButton3: TcxButton
      Left = 82
      Top = 215
      Width = 33
      Height = 35
      Action = Action_save_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 13
      Visible = False
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 257
    Width = 984
    Height = 327
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'LiquidSky'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource_cg_mingxi
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxgrdbclmncxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #30003#35831#32534#21495
        Visible = False
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #20379#24212#21830
        Visible = False
        Width = 65
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        Options.Editing = False
        Width = 67
      end
      object cxgrdbclmncxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = #23567#31867
        Options.Editing = False
        Width = 64
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #20215#30446#32534#21495
        Options.Editing = False
        Width = 143
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Options.Editing = False
        Width = 238
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        Options.Editing = False
        Width = 49
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #25968#37327
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 54
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #29366#24577
        Visible = False
        Width = 43
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #21333#20301
        Options.Editing = False
        Width = 46
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #22791#27880
        PropertiesClassName = 'TcxMemoProperties'
        Width = 94
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn
        Caption = #36827#20215
        DataBinding.FieldName = #21333#20215
        Options.Editing = False
        Width = 52
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn12: TcxGridDBColumn
        DataBinding.FieldName = #24211#23384
        Options.Editing = False
        Width = 51
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn13: TcxGridDBColumn
        DataBinding.FieldName = #21407#21517#31216
        Options.Editing = False
        Width = 124
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroup_shenpi: TcxGroupBox
    Left = 0
    Top = 584
    Align = alBottom
    Caption = #23457#25209#24847#35265
    TabOrder = 2
    Height = 117
    Width = 984
    object cxGrid3: TcxGrid
      Left = 2
      Top = 24
      Width = 980
      Height = 91
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      LookAndFeel.SkinName = 'Black'
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_shenpi
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
        object cxGrid2DBTableView1DBColumn4: TcxGridDBColumn
          DataBinding.FieldName = #23457#25209#20154
          Width = 100
        end
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #29366#24577
          Width = 80
        end
        object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #24847#35265
          Width = 100
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = #22791#27880
          Width = 200
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #23457#25209#26102#38388
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
          Width = 150
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object ADOQuery_cg_zhubiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from ['#20013#22830#37319#36141#30003#35831#20027#34920']')
    Left = 160
    Top = 144
  end
  object DataSource_cg_zhubiao: TDataSource
    DataSet = ADOQuery_cg_zhubiao
    Left = 232
    Top = 176
  end
  object ADOQuery_cg_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#30003#35831#26126#32454#34920)
    Left = 368
    Top = 336
  end
  object DataSource_cg_mingxi: TDataSource
    DataSet = ADOQuery_cg_mingxi
    Left = 496
    Top = 328
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
            Action = act1
            Caption = #21516#24847'(&U)'
            ImageIndex = 33
          end
          item
            Action = act2
            Caption = #36864#22238'(&T)'
            ImageIndex = 59
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
    Left = 600
    Top = 64
    StyleName = 'Platform Default'
    object Action_new: TAction
      Caption = #26032#22686
      ImageIndex = 90
      OnExecute = Action_newExecute
    end
    object Action_edit: TAction
      Caption = #20462#25913
      ImageIndex = 91
      OnExecute = Action_editExecute
    end
    object Action_delete: TAction
      Caption = #20316#24223
      ImageIndex = 95
      OnExecute = Action_deleteExecute
    end
    object Action_close: TAction
      Caption = #36864#20986
      ImageIndex = 89
      OnExecute = Action_closeExecute
    end
    object Action_cancel: TAction
      Caption = #21462#28040
      ImageIndex = 96
      OnExecute = Action_cancelExecute
    end
    object Action_save: TAction
      Caption = #20445#23384#33609#31295
      ImageIndex = 50
      OnExecute = Action_saveExecute
    end
    object Action_new_m: TAction
      ImageIndex = 93
      OnExecute = Action_new_mExecute
    end
    object Action_delete_m: TAction
      ImageIndex = 97
      OnExecute = Action_delete_mExecute
    end
    object Action_save_m: TAction
      ImageIndex = 33
      OnExecute = Action_save_mExecute
    end
    object Action_submit: TAction
      Caption = #25552#20132
      ImageIndex = 98
      OnExecute = Action_submitExecute
    end
    object act1: TAction
      Caption = #21516#24847
      ImageIndex = 33
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = #36864#22238
      ImageIndex = 59
      OnExecute = act2Execute
    end
  end
  object ADOQuery_list: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920' where '#26159#21542#20316#24223'=0')
    Left = 616
    Top = 136
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
    Left = 624
    Top = 184
  end
  object DataSource_jiamu: TDataSource
    DataSet = ADOQuery_jiamu
    Left = 688
    Top = 184
  end
  object ds_shenpi: TDataSource
    DataSet = qry_shenpi
    Left = 720
    Top = 432
  end
  object qry_shenpi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from '#37319#36141#30003#35831#26126#32454#34920)
    Left = 648
    Top = 433
  end
end
