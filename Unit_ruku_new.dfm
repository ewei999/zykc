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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 337
    Align = alTop
    Anchors = []
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      743
      337)
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
      Top = 195
      Caption = #22791#27880
    end
    object cxLabel5: TcxLabel
      Left = 400
      Top = 291
      Caption = #32463#25163#20154
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 218
      Top = 59
      DataBinding.DataField = #20837#24211#32534#21495
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 456
      Top = 289
      DataBinding.DataField = #32463#25163#20154
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 456
      Top = 59
      DataBinding.DataField = #20837#24211#26102#38388
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
      Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
      TabOrder = 9
      OnExit = cxDBLookupComboBox1Exit
      OnKeyPress = cxDBLookupComboBox1KeyPress
      Width = 145
    end
    object cxDBMemo1: TcxDBMemo
      Left = 218
      Top = 191
      DataBinding.DataField = #22791#27880
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ScrollBars = ssVertical
      TabOrder = 10
      Height = 87
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
    end
    object cxLabel6: TcxLabel
      Left = 384
      Top = 94
      Caption = #36141#36135#26041#24335
    end
    object DBComboBox1: TDBComboBox
      Left = 458
      Top = 92
      Width = 121
      Height = 27
      DataField = #36141#36135#26041#24335
      DataSource = DataSource_cg_zhubiao
      Items.Strings = (
        #36170#36141
        #29616#36141)
      TabOrder = 15
    end
    object cxLabel7: TcxLabel
      Left = 176
      Top = 128
      Caption = #37329#39069
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 218
      Top = 125
      DataBinding.DataField = #37329#39069
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      TabOrder = 17
      Width = 145
    end
    object cxLabel8: TcxLabel
      Left = 416
      Top = 126
      Caption = #33293#38646
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 456
      Top = 125
      DataBinding.DataField = #33293#38646
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.OnChange = cxDBTextEdit4PropertiesChange
      TabOrder = 19
      Width = 121
    end
    object cxButton4: TcxButton
      Left = 82
      Top = 299
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
      Top = 299
      Width = 33
      Height = 35
      Action = Action_delete_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 21
    end
    object cxButton7: TcxButton
      Left = 4
      Top = 299
      Width = 33
      Height = 35
      Action = Action_new_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 22
    end
    object cxButton6: TcxButton
      Left = 121
      Top = 299
      Width = 33
      Height = 35
      Action = Action_edit_m
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 23
      Visible = False
    end
    object cxLabel9: TcxLabel
      Left = 144
      Top = 158
      Caption = #21512#35745#37329#39069
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 218
      Top = 158
      DataBinding.DataField = #21512#35745#37329#39069
      DataBinding.DataSource = DataSource_cg_zhubiao
      Properties.ReadOnly = True
      TabOrder = 25
      Width = 145
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 337
    Width = 743
    Height = 274
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'LiquidSky'
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
      object cxgrdbclmncxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Options.Editing = False
        Width = 163
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        Options.Editing = False
        Width = 80
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        Caption = #21253#35013#35268#26684
        DataBinding.FieldName = #20215#30446#32534#21495
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = #20215#30446#32534#21495
        Properties.ListColumns = <
          item
            FieldName = #21253#35013#35268#26684
          end>
        Properties.ListSource = ds_jiamu
        Options.Editing = False
        Width = 100
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
        Width = 85
      end
      object cxgrdbclmncxGrid1DBTableView1DBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #37329#39069
        Options.Editing = False
        Width = 106
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ADOQuery_cg_zhubiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from ['#20013#22830#37319#36141#20837#24211#20027#34920']')
    Left = 80
    Top = 208
  end
  object DataSource_cg_zhubiao: TDataSource
    DataSet = ADOQuery_cg_zhubiao
    Left = 176
    Top = 200
  end
  object ADOQuery_cg_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#20837#24211#26126#32454#34920)
    Left = 280
    Top = 360
  end
  object DataSource_cg_mingxi: TDataSource
    DataSet = ADOQuery_cg_mingxi
    OnDataChange = DataSource_cg_mingxiDataChange
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
    end
    object Action_edit_m: TAction
      ImageIndex = 53
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
      'select '#20215#30446#32534#21495','#21253#35013#35268#26684' from '#33647#21697#29992#21697#20215#30446#34920' where '#26159#21542#20316#24223'=0 ')
    Left = 592
    Top = 200
  end
  object ds_jiamu: TDataSource
    DataSet = ADOQuery_jiamu
    Left = 648
    Top = 208
  end
end
