object Form_caigou_shenqing_new: TForm_caigou_shenqing_new
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #25552#36135#30003#35831#21333
  ClientHeight = 721
  ClientWidth = 1131
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    1131
    721)
  PixelsPerInch = 96
  TextHeight = 19
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 1131
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
    ExplicitTop = -6
    ExplicitWidth = 754
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 244
    Width = 1131
    Height = 316
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1Column1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        PropertiesClassName = 'TcxLabelProperties'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        PropertiesClassName = 'TcxLabelProperties'
        Options.Editing = False
        Width = 180
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        PropertiesClassName = 'TcxLabelProperties'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = #21333#20301
        PropertiesClassName = 'TcxLabelProperties'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = #22791#27880
        Options.Editing = False
        Width = 150
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        Caption = #30003#35831#25968#37327
        DataBinding.FieldName = #25968#37327
        PropertiesClassName = 'TcxLabelProperties'
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = #32039#24613#31243#24230
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = #20379#24212#21830
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = #20379#24212#21830#32534#21495
        Properties.ListColumns = <
          item
            FieldName = #21517#31216
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_gys_list
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = #21333#20215
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        DataBinding.FieldName = #21512#35745#37329#39069
        Options.Editing = False
        Width = 65
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        Caption = #29366#24577
        DataBinding.FieldName = 'zt'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = #19981#20184#36135#21407#22240
        Options.Editing = False
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxLabel10: TcxLabel
    Left = 23
    Top = 16
    Caption = #25552#36135#30003#35831#21333
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
  object cxButton4: TcxButton
    Left = 1073
    Top = 11
    Width = 50
    Height = 58
    Action = Action_close
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton6: TcxButton
    Left = 1017
    Top = 11
    Width = 50
    Height = 58
    Action = act_excel
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 80
    Width = 1131
    Height = 164
    Align = alTop
    TabOrder = 4
    object cxLabel2: TcxLabel
      Left = 86
      Top = 20
      Caption = #30003#35831#26085#26399
      Transparent = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 172
      Top = 19
      Properties.DisplayFormat = 'yyyy-mm-dd'
      Properties.EditFormat = 'yyyy-mm-dd'
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 169
    end
    object cxLabel1: TcxLabel
      Left = 404
      Top = 20
      Caption = #30003#35831#32534#21495
      Transparent = True
    end
    object cxLabel_bianhao: TcxLabel
      Left = 484
      Top = 20
      Caption = #30003#35831#32534#21495
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 628
      Top = 20
      Caption = #30003#35831#20998#38498
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 708
      Top = 20
      Caption = #30003#35831#32534#21495
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 86
      Top = 49
      Caption = #30003#35831#35828#26126
      Transparent = True
    end
    object cxMemo1: TcxMemo
      Left = 172
      Top = 52
      Properties.ScrollBars = ssVertical
      TabOrder = 7
      Height = 100
      Width = 604
    end
    object cxLabel4: TcxLabel
      Left = 916
      Top = 20
      Caption = #30003#35831#20154
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 980
      Top = 20
      AutoSize = False
      Caption = #30003#35831#20154
      Transparent = True
      Height = 23
      Width = 95
    end
  end
  object cxGroup_shenpi: TcxGroupBox
    Left = 0
    Top = 560
    Align = alBottom
    Caption = #23457#25209#24847#35265
    TabOrder = 5
    Height = 161
    Width = 1131
    object cxGrid3: TcxGrid
      Left = 2
      Top = 24
      Width = 1127
      Height = 135
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
  object cxButton1: TcxButton
    Left = 905
    Top = 11
    Width = 50
    Height = 58
    Action = act1
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton2: TcxButton
    Left = 961
    Top = 11
    Width = 50
    Height = 58
    Action = act2
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
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from '#37319#36141#30003#35831#26126#32454#34920)
    Left = 136
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 128
    Top = 496
  end
  object ActionManager1: TActionManager
    Images = DataModule1.cxImageList32
    Left = 744
    Top = 161
    StyleName = 'Platform Default'
    object Action_close: TAction
      Caption = #36820#22238
      ImageIndex = 46
      OnExecute = Action_closeExecute
    end
    object act_excel: TAction
      Caption = 'Excel'
      ImageIndex = 87
      OnExecute = act_excelExecute
    end
    object act1: TAction
      Caption = #21516#24847
      ImageIndex = 0
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = #25298#32477
      ImageIndex = 26
      OnExecute = act2Execute
    end
  end
  object ds_shenpi: TDataSource
    DataSet = qry_shenpi
    Left = 416
    Top = 424
  end
  object qry_shenpi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from '#37319#36141#30003#35831#26126#32454#34920)
    Left = 344
    Top = 440
  end
  object ds_gys_list: TDataSource
    DataSet = qry_gys_list
    Left = 704
    Top = 400
  end
  object qry_gys_list: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920' where '#26159#21542#20316#24223'=0')
    Left = 688
    Top = 352
  end
end
