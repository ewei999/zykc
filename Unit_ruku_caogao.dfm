object Form_ruku_caogao: TForm_ruku_caogao
  Left = 0
  Top = 0
  Caption = #20837#24211#33609#31295#21333
  ClientHeight = 661
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1008
    661)
  PixelsPerInch = 96
  TextHeight = 19
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 1008
    Height = 80
    Align = alTop
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
      000000480806000000E80CE5320000000467414D410000B18F0BFC6105000000
      097048597300000EBC00000EBC0195BC72490000015E494441545847EDD7C94E
      02411804E07AFF07F0EA3BF800C69B3BB22F03332CC32608C8B08944CA3F818B
      C684CE0CD48178F82A75984C257DEA467BB4E251BCFD14FE8260B8A493413CFE
      1EFCFE826EE6F1F476E0F7EC270E6AF6712CDD1D542DDCCC62F1F6E075AC9C50
      650FE5F68C6EA244500A232AA0D88AA8807C734A05E42C9C349241D6C2493D19
      64EBEF560ECB2484DBF28887DC1D81D3D0319CE1D05FE7790AFF43B1E1BE32A2
      C2190E3D5828E0D11B53413854B52280A7DA980A6738F46CA1A01B4AF9632A20
      155811D00DBD04132AE0C52E770ABAA1B48502D24D2B02C85828206BA1A01BCA
      B5EC4526201C0AAD08201F465440BE6D45403754B05040A133A3028A160A2876
      E75440A9B7A0022AFD2515E0BD2EA9006FB0A202AAC30F2AC01FADA9007FF249
      0504930D15509F6EA880C6F48B0A68465B2AA035DB5201E17C4B051BA295D343
      2F221570B32615707155A2022EAF3B3CBD0EBF0124A3A1ECAF867CCF00000000
      49454E44AE426082}
    Stretch = True
    ExplicitLeft = -151
    ExplicitWidth = 1159
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 80
    Align = alClient
    Caption = #20837#24211#21333
    TabOrder = 0
    ExplicitLeft = -68
    ExplicitTop = 112
    ExplicitWidth = 1076
    ExplicitHeight = 549
    Height = 581
    Width = 1008
    object Splitter1: TSplitter
      Left = 505
      Top = 24
      Height = 555
      ExplicitLeft = 432
      ExplicitTop = 136
      ExplicitHeight = 100
    end
    object cxGrid6: TcxGrid
      Left = 2
      Top = 24
      Width = 503
      Height = 555
      Align = alLeft
      TabOrder = 0
      LookAndFeel.SkinName = 'Whiteprint'
      ExplicitTop = 5
      ExplicitHeight = 542
      object cxGrid6DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid6DBTableView1CellClick
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
        object cxgrdbclmncxGrid6DBTableView1DBColumn: TcxGridDBColumn
          DataBinding.FieldName = #32534#21495
          Visible = False
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #20837#24211#32534#21495
          Width = 80
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #20379#24212#21830
          Width = 69
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn3: TcxGridDBColumn
          Caption = #20837#24211#26085#26399
          DataBinding.FieldName = #20837#24211#26102#38388
          Width = 90
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn4: TcxGridDBColumn
          DataBinding.FieldName = #20837#24211#25209#27425
          Visible = False
          Width = 80
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn5: TcxGridDBColumn
          DataBinding.FieldName = #37329#39069
          Width = 82
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn6: TcxGridDBColumn
          DataBinding.FieldName = #33293#38646
          Width = 55
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn7: TcxGridDBColumn
          DataBinding.FieldName = #36141#36135#26041#24335
          Width = 68
        end
        object cxgrdbclmncxGrid6DBTableView1DBColumn8: TcxGridDBColumn
          DataBinding.FieldName = #22791#27880
          Width = 57
        end
      end
      object cxGrid6Level1: TcxGridLevel
        GridView = cxGrid6DBTableView1
      end
    end
    object cxGrid7: TcxGrid
      Left = 508
      Top = 24
      Width = 498
      Height = 555
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Blueprint'
      ExplicitTop = 5
      ExplicitWidth = 566
      ExplicitHeight = 542
      object cxGrid7DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource_ruku_mignxi
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
        object cxgrdbclmncxGrid7DBTableView1DBColumn: TcxGridDBColumn
          DataBinding.FieldName = #32534#21495
          Visible = False
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #20837#24211#32534#21495
          Visible = False
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #20837#24211#26126#32454#32534#21495
          Visible = False
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #20837#24211#25209#27425
          Visible = False
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn4: TcxGridDBColumn
          DataBinding.FieldName = #20837#24211#26102#38388
          Visible = False
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn12: TcxGridDBColumn
          DataBinding.FieldName = #31867#21035
          Width = 70
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn13: TcxGridDBColumn
          DataBinding.FieldName = #23567#31867
          Width = 71
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn6: TcxGridDBColumn
          DataBinding.FieldName = #20215#30446#32534#21495
          Width = 70
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn5: TcxGridDBColumn
          DataBinding.FieldName = #21517#31216
          Width = 70
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn7: TcxGridDBColumn
          DataBinding.FieldName = #35268#26684
          Width = 45
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn9: TcxGridDBColumn
          DataBinding.FieldName = #25968#37327
          Width = 31
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn8: TcxGridDBColumn
          DataBinding.FieldName = #21333#20301
          Width = 58
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn10: TcxGridDBColumn
          DataBinding.FieldName = #36827#36135#21333#20215
          Width = 40
        end
        object cxgrdbclmncxGrid7DBTableView1DBColumn11: TcxGridDBColumn
          DataBinding.FieldName = #37329#39069
          Width = 41
        end
      end
      object cxGrid7Level1: TcxGridLevel
        GridView = cxGrid7DBTableView1
      end
    end
  end
  object cxLabel10: TcxLabel
    Left = 7
    Top = 16
    Caption = #20837#24211#33609#31295#21333
    ParentFont = False
    Style.BorderColor = clMaroon
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -32
    Style.Font.Name = 'Microsoft Sans Serif'
    Style.Font.Pitch = fpFixed
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = False
    Style.TextColor = 162577
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Properties.Depth = 5
    Properties.LabelEffect = cxleFun
    Properties.LabelStyle = cxlsLowered
    Properties.ShadowedColor = 3487029
    Transparent = True
  end
  object cxLabel7: TcxLabel
    Left = 197
    Top = 34
    Caption = #20837#24211#26085#26399
    Transparent = True
  end
  object cxDateEdit5: TcxDateEdit
    Left = 271
    Top = 30
    Properties.DisplayFormat = 'yyyy-mm-dd'
    Properties.EditFormat = 'yyyy-mm-dd'
    TabOrder = 3
    Width = 121
  end
  object cxLabel8: TcxLabel
    Left = 400
    Top = 34
    Caption = #33267
    Transparent = True
  end
  object cxDateEdit6: TcxDateEdit
    Left = 427
    Top = 30
    Properties.DisplayFormat = 'yyyy-mm-dd'
    Properties.EditFormat = 'yyyy-mm-dd'
    TabOrder = 5
    Width = 121
  end
  object cxButton14: TcxButton
    Left = 563
    Top = 26
    Width = 75
    Height = 31
    Caption = #26597#35810
    LookAndFeel.SkinName = 'Black'
    TabOrder = 6
  end
  object cxButton3: TcxButton
    Left = 828
    Top = 15
    Width = 50
    Height = 58
    Action = Action_new
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton4: TcxButton
    Left = 885
    Top = 15
    Width = 50
    Height = 58
    Action = Action_edit
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton9: TcxButton
    Left = 942
    Top = 15
    Width = 50
    Height = 58
    Action = Action_close
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
            Action = Action_new
            Caption = #26032#22686'(&Y)'
            ImageIndex = 90
          end
          item
            Action = Action_edit
            ImageIndex = 91
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
    end
    object Action_delete: TAction
      Caption = #20316#24223
      ImageIndex = 95
    end
    object Action_close: TAction
      Caption = #36864#20986
      ImageIndex = 89
      OnExecute = Action_closeExecute
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
      Caption = 'Action_delete_m'
      ImageIndex = 97
    end
    object Action_save_m: TAction
      Caption = 'Action_save_m'
      ImageIndex = 33
    end
    object Action_submit: TAction
      Caption = #25552#20132
      ImageIndex = 98
    end
  end
  object ADOQuery_ruku_zhubiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    Parameters = <>
    Left = 336
    Top = 216
  end
  object DataSource_ruku_zhubiao: TDataSource
    DataSet = ADOQuery_ruku_zhubiao
    Left = 400
    Top = 216
  end
  object qry_ruku_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#20837#24211#26126#32454#34920)
    Left = 344
    Top = 304
  end
  object DataSource_ruku_mignxi: TDataSource
    DataSet = qry_ruku_mingxi
    Left = 432
    Top = 312
  end
end
