object Form_fuhuo: TForm_fuhuo
  Left = 0
  Top = 0
  Caption = #21521#38376#24215#20184#36135
  ClientHeight = 701
  ClientWidth = 1155
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object img1: TImage
    Left = 0
    Top = 0
    Width = 1155
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
    ExplicitLeft = -209
    ExplicitWidth = 975
  end
  object cxButton8: TcxButton
    Left = 1081
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act_close
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton6: TcxButton
    Left = 1025
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act2
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
  end
  object cxLabel10: TcxLabel
    Left = 7
    Top = 16
    Caption = #21521#38376#24215#20184#36135
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 80
    Width = 1155
    Height = 621
    Align = alClient
    TabOrder = 3
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 616
    ClientRectLeft = 2
    ClientRectRight = 1150
    ClientRectTop = 31
    object cxTabSheet1: TcxTabSheet
      Caption = #25353#30003#35831#21333
      ImageIndex = 0
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1148
        Height = 49
        Align = alTop
        TabOrder = 0
        object cxRadioButton1: TcxRadioButton
          Left = 223
          Top = 18
          Width = 81
          Height = 17
          Caption = #20184#36135
          TabOrder = 0
          OnClick = cxRadioButton1Click
          Transparent = True
        end
        object cxRadioButton2: TcxRadioButton
          Left = 619
          Top = 18
          Width = 81
          Height = 17
          Caption = #19981#20184#36135
          TabOrder = 1
          OnClick = cxRadioButton2Click
          Transparent = True
        end
        object cxlbl1: TcxLabel
          Left = 706
          Top = 14
          Caption = #21407#22240
          Transparent = True
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 749
          Top = 13
          Properties.DropDownListStyle = lsEditList
          Properties.KeyFieldNames = #31867#21035#21517#31216
          Properties.ListColumns = <
            item
              FieldName = #31867#21035#21517#31216
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_yuanyin
          StyleDisabled.Color = clYellow
          StyleDisabled.TextColor = clBlack
          TabOrder = 3
          Width = 207
        end
        object cxlbl2: TcxLabel
          Left = 18
          Top = 14
          Caption = #20998#38498
          Transparent = True
        end
        object cxLookupComboBox2: TcxLookupComboBox
          Left = 60
          Top = 12
          Properties.KeyFieldNames = 'abbr'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_fenyuan
          Properties.OnCloseUp = cxLookupComboBox2PropertiesCloseUp
          StyleDisabled.Color = clYellow
          StyleDisabled.TextColor = clBlack
          TabOrder = 5
          OnExit = cxLookupComboBox2Exit
          OnKeyPress = cxLookupComboBox2KeyPress
          Width = 144
        end
        object cxlbl3: TcxLabel
          Left = 974
          Top = 14
          Caption = #21491#38190#21487#26032#22686#21024#38500#35760#24405
          Transparent = True
        end
        object cxRadioButton3: TcxRadioButton
          Left = 303
          Top = 18
          Width = 81
          Height = 17
          Caption = #26242#19981#20184#36135
          TabOrder = 7
          OnClick = cxRadioButton1Click
          Transparent = True
        end
        object cxTextEdit37: TcxTextEdit
          Left = 390
          Top = 13
          TabOrder = 8
          Width = 204
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 49
        Width = 1148
        Height = 536
        Align = alClient
        PopupMenu = pm_shenqingdan
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView1CellDblClick
          DataController.DataSource = ds_thshenqing_mx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView1Column6
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = #36873#25321
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 47
            OnHeaderClick = cxGridDBTableView1Column4HeaderClick
          end
          object cxGridDBTableView1Column12: TcxGridDBColumn
            DataBinding.FieldName = #23457#25209#26085#26399
            Options.Editing = False
            Width = 100
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 186
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #35268#26684
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 60
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = #21333#20301
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 59
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            DataBinding.FieldName = #21253#35013#35268#26684
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 93
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#26102#24211#23384
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 85
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = #38376#24215#22791#27880
            DataBinding.FieldName = #22791#27880
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Options.Sorting = False
            Width = 92
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#25968#37327
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Content = cxStyle2
            Width = 64
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            DataBinding.FieldName = #20184#36135#25968#37327
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Options.Sorting = False
            Width = 64
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            DataBinding.FieldName = #20179#24211#24211#23384
            PropertiesClassName = 'TcxLabelProperties'
            Properties.ShadowedColor = clBlack
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Width = 64
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            DataBinding.FieldName = #20379#24212#21830
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = #20379#24212#21830#32534#21495
            Properties.ListColumns = <
              item
                FieldName = #21517#31216
              end>
            Properties.ListSource = ds_gys
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 92
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 68
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = #21512#35745#37329#39069
            DataBinding.FieldName = #20986#24211#37329#39069
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 64
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = #33293#38646#37329#39069
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 66
          end
          object cxGridDBTableView1Column13: TcxGridDBColumn
            Caption = #20179#24211#22791#27880
            DataBinding.FieldName = #19981#20184#36135#21407#22240
            Options.Editing = False
            Width = 100
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #20027#21160#20184#36135
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 1148
        Height = 49
        Align = alTop
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 27
          Top = 14
          Width = 75
          Height = 25
          Caption = #26032#22686#35760#24405
          LookAndFeel.SkinName = 'Black'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton3Click
        end
        object cxButton4: TcxButton
          Left = 108
          Top = 14
          Width = 75
          Height = 25
          Caption = #21024#38500#35760#24405
          LookAndFeel.SkinName = 'Black'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton4Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 49
        Width = 1148
        Height = 536
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView2CellDblClick
          DataController.DataSource = ds_zhudong
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn2
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBColumn14
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #20998#24215#21517#31216
            DataBinding.FieldName = #20998#24215#20195#30721
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'abbr'
            Properties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_fenyuan
            Width = 100
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            Options.Editing = False
            Width = 220
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = #20215#30446#32534#21495
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = #20215#30446#32534#21495
            Properties.ListColumns = <
              item
                FieldName = #35268#26684
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_jiamu
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 70
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = #20215#30446#32534#21495
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = #20215#30446#32534#21495
            Properties.ListColumns = <
              item
                FieldName = #21333#20301
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_jiamu
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 70
          end
          object cxGridDBTableView2Column2: TcxGridDBColumn
            DataBinding.FieldName = #21253#35013#35268#26684
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = #20215#30446#32534#21495
            Properties.ListColumns = <
              item
                FieldName = #21253#35013#35268#26684
              end>
            Properties.ListSource = ds_jiamu
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 70
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = #20184#36135#25968#37327
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Options.Sorting = False
            Width = 70
          end
          object cxGridDBTableView2Column1: TcxGridDBColumn
            DataBinding.FieldName = #20179#24211#24211#23384
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Width = 70
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = #20379#24212#21830
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = #20379#24212#21830#32534#21495
            Properties.ListColumns = <
              item
                FieldName = #21517#31216
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_gys
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 70
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = #33293#38646#37329#39069
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 68
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = #21512#35745#37329#39069
            DataBinding.FieldName = #20986#24211#37329#39069
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 70
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object cxButton1: TcxButton
    Left = 969
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act1
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = act_close
            Caption = #36820#22238'(&V)'
            ImageIndex = 6
          end>
      end>
    Images = DataModule1.cxImageList32
    Left = 416
    Top = 248
    StyleName = 'Platform Default'
    object act_close: TAction
      Caption = #36820#22238
      ImageIndex = 6
      OnExecute = act_closeExecute
    end
    object act1: TAction
      Caption = #30830#35748
      ImageIndex = 0
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = 'Excel'
      ImageIndex = 87
      OnExecute = act2Execute
    end
  end
  object qry_thshenqing_mx: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 256
    Top = 336
  end
  object ds_thshenqing_mx: TDataSource
    DataSet = qry_thshenqing_mx
    OnDataChange = ds_thshenqing_mxDataChange
    Left = 240
    Top = 264
  end
  object ds_yuanyin: TDataSource
    DataSet = qry_yuanyin
    Left = 496
    Top = 216
  end
  object qry_yuanyin: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 512
    Top = 288
  end
  object qry_gys: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920)
    Left = 712
    Top = 256
  end
  object ds_gys: TDataSource
    DataSet = qry_gys
    Left = 712
    Top = 320
  end
  object ds_fenyuan: TDataSource
    DataSet = qry_fenyuan
    Left = 72
    Top = 216
  end
  object qry_fenyuan: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 72
    Top = 288
  end
  object qry_kucun: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 144
    Top = 456
  end
  object qry_zhudong: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 392
    Top = 496
  end
  object ds_zhudong: TDataSource
    DataSet = qry_zhudong
    OnDataChange = ds_zhudongDataChange
    Left = 376
    Top = 424
  end
  object ds_jiamu: TDataSource
    DataSet = qry_jiamu
    OnDataChange = ds_thshenqing_mxDataChange
    Left = 584
    Top = 416
  end
  object qry_jiamu: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 600
    Top = 488
  end
  object pm_shenqingdan: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 88
    Top = 398
    object N2: TMenuItem
      Caption = #26032#22686#35760#24405
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #21024#38500#35760#24405
      OnClick = N1Click
    end
  end
  object qry1: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 144
    Top = 520
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 248
    Top = 512
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
end
