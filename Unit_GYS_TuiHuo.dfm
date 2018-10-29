object Form_GYS_TuiHuo: TForm_GYS_TuiHuo
  Left = 0
  Top = 0
  Caption = #36864#36135#30003#35831
  ClientHeight = 711
  ClientWidth = 1008
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  DesignSize = (
    1008
    711)
  PixelsPerInch = 96
  TextHeight = 19
  object img1: TImage
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
    ExplicitLeft = -158
    ExplicitWidth = 1131
  end
  object cxlbl1: TcxLabel
    Left = 23
    Top = 16
    Caption = #36864#36135#30003#35831
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
    Left = 947
    Top = 11
    Width = 50
    Height = 58
    Action = act_close
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 912
  end
  object cxlbl2: TcxLabel
    Left = 222
    Top = 29
    Caption = #30003#35831#26085#26399
    Transparent = True
  end
  object cxDate_qishi: TcxDateEdit
    Left = 298
    Top = 28
    Properties.DisplayFormat = 'yyyy-mm-dd'
    Properties.EditFormat = 'yyyy-mm-dd'
    Properties.ReadOnly = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 3
    Width = 119
  end
  object cxlbl3: TcxLabel
    Left = 423
    Top = 29
    Caption = #33267
    Transparent = True
  end
  object cxDate_zhongzhi: TcxDateEdit
    Left = 449
    Top = 28
    Properties.DisplayFormat = 'yyyy-mm-dd'
    Properties.EditFormat = 'yyyy-mm-dd'
    Properties.ReadOnly = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 5
    Width = 119
  end
  object cxButton3: TcxButton
    Left = 776
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
    ExplicitLeft = 741
  end
  object cxButton1: TcxButton
    Left = 833
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
    ExplicitLeft = 798
  end
  object cxButton2: TcxButton
    Left = 719
    Top = 11
    Width = 50
    Height = 58
    Action = act4
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
    ExplicitLeft = 684
  end
  object cxButton5: TcxButton
    Left = 890
    Top = 11
    Width = 50
    Height = 58
    Action = act3
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
    ExplicitLeft = 855
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 80
    Width = 625
    Height = 631
    Align = alLeft
    BorderStyle = cxcbsNone
    TabOrder = 10
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    ExplicitLeft = -4
    ExplicitTop = 86
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_gl
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = cxGrid1DBTableView1DBColumn1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #30003#35831#32534#21495
        Width = 100
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #30003#35831#35828#26126
        Width = 250
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #30003#35831#26085#26399
        Width = 100
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #30003#35831#20154
        Width = 80
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #29366#24577
        DataBinding.FieldName = 'zt'
        Width = 60
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
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
      Bands = <
        item
          Caption = #26126#32454
        end>
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        DataBinding.FieldName = #31867#21035
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
        DataBinding.FieldName = #21517#31216
        Width = 214
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
        DataBinding.FieldName = #25968#37327
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn
        DataBinding.FieldName = #20379#24212#21830
        Width = 366
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 625
    Top = 80
    Align = alClient
    Caption = #30003#35831#26126#32454
    TabOrder = 11
    ExplicitLeft = 529
    ExplicitTop = 69
    ExplicitWidth = 479
    ExplicitHeight = 642
    Height = 631
    Width = 383
    object cxGrid2: TcxGrid
      Left = 2
      Top = 24
      Width = 379
      Height = 605
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      LookAndFeel.SkinName = 'Blueprint'
      ExplicitTop = 5
      ExplicitWidth = 475
      ExplicitHeight = 635
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_mingxi
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #21512#35745#65306'0'
            Kind = skCount
            Column = cxGrid2DBTableView1DBColumn2
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1DBColumn7: TcxGridDBColumn
          DataBinding.FieldName = #31867#21035
          Width = 70
        end
        object cxGrid2DBTableView1DBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #21517#31216
          Width = 150
        end
        object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #21407#21517#31216
          Width = 150
        end
        object cxGrid2DBTableView1DBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #35268#26684
          Width = 70
        end
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = #21333#20301
          Width = 70
        end
        object cxGrid2DBTableView1DBColumn5: TcxGridDBColumn
          DataBinding.FieldName = #25968#37327
          Width = 60
        end
        object cxGrid2DBTableView1Column2: TcxGridDBColumn
          Caption = #29366#24577
          DataBinding.FieldName = 'zt'
          Width = 60
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object actmgr1: TActionManager
    Images = DataModule1.cxImageList32
    Left = 744
    Top = 161
    StyleName = 'Platform Default'
    object act_close: TAction
      Caption = #36820#22238
      ImageIndex = 46
      OnExecute = act_closeExecute
    end
    object act1: TAction
      Caption = #26032#22686
      ImageIndex = 17
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = #20462#25913
      ImageIndex = 10
    end
    object act3: TAction
      Caption = #20316#24223
      ImageIndex = 3
    end
    object act4: TAction
      Caption = #26597#35810
      ImageIndex = 32
      OnExecute = act4Execute
    end
  end
  object qry_gl: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#37319#36141#30003#35831#20027#34920)
    Left = 416
    Top = 192
  end
  object ds_gl: TDataSource
    DataSet = qry_gl
    Left = 512
    Top = 192
  end
  object qry_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 0 * from '#37319#36141#30003#35831#26126#32454#34920)
    Left = 648
    Top = 424
  end
  object ds_mingxi: TDataSource
    DataSet = qry_mingxi
    Left = 688
    Top = 360
  end
end
