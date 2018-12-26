object Form_KaiPiao_Edit: TForm_KaiPiao_Edit
  Left = 0
  Top = 0
  Caption = #24320#31080
  ClientHeight = 555
  ClientWidth = 726
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
    Width = 726
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
    ExplicitLeft = -82
    ExplicitWidth = 930
  end
  object cxlbl1: TcxLabel
    Left = 7
    Top = 16
    Caption = #24320#31080
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
  object cxButton8: TcxButton
    Left = 661
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
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
    ExplicitLeft = 617
  end
  object cxButton2: TcxButton
    Left = 605
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act2
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
    ExplicitLeft = 561
  end
  object cxButton1: TcxButton
    Left = 549
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act1
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
    ExplicitLeft = 505
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 80
    Width = 726
    Height = 475
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Black'
    ExplicitLeft = 8
    ExplicitTop = 75
    ExplicitWidth = 710
    ExplicitHeight = 461
    ClientRectBottom = 470
    ClientRectLeft = 2
    ClientRectRight = 721
    ClientRectTop = 31
    object cxTabSheet1: TcxTabSheet
      Caption = #21333#24405
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 30
      ExplicitWidth = 710
      ExplicitHeight = 431
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 65
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 21
        ExplicitTop = 123
        ExplicitWidth = 682
        object cxlbl2: TcxLabel
          Left = 244
          Top = 17
          Caption = #20998#38498
          Transparent = True
        end
        object cxLookup_fenyuan: TcxLookupComboBox
          Left = 286
          Top = 15
          Properties.KeyFieldNames = 'abbr'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_fenyuan
          Properties.OnCloseUp = cxLookup_gysPropertiesCloseUp
          StyleDisabled.Color = clYellow
          StyleDisabled.TextColor = clBlack
          TabOrder = 1
          OnExit = cxLookup_gysExit
          OnKeyPress = cxLookup_gysKeyPress
          Width = 136
        end
        object cxLookup_gys: TcxLookupComboBox
          Left = 78
          Top = 15
          Properties.KeyFieldNames = #20379#24212#21830#32534#21495
          Properties.ListColumns = <
            item
              FieldName = #21517#31216
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_gys
          Properties.OnCloseUp = cxLookup_gysPropertiesCloseUp
          StyleDisabled.Color = clYellow
          StyleDisabled.TextColor = clBlack
          TabOrder = 2
          OnExit = cxLookup_gysExit
          OnKeyPress = cxLookup_gysKeyPress
          Width = 136
        end
        object cxlbl3: TcxLabel
          Left = 20
          Top = 17
          Caption = #20379#24212#21830
          Transparent = True
        end
        object cxlbl4: TcxLabel
          Left = 430
          Top = 37
          Caption = #24050#36873#21512#35745#37329#39069#65306
          Transparent = True
        end
        object cxlbl_heji: TcxLabel
          Left = 553
          Top = 37
          Caption = #24050#36873#21512#35745#37329#39069#65306
          Transparent = True
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 65
        Width = 719
        Height = 374
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        ExplicitLeft = 21
        ExplicitTop = 72
        ExplicitWidth = 682
        ExplicitHeight = 353
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnEditChanged = cxGridDBTableView1EditChanged
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = ds_liebiao
          DataController.KeyFieldNames = #32534#21495
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn3
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
            Caption = #36873#25321
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.NullStyle = nssUnchecked
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 50
            OnHeaderClick = cxGridDBTableView1Column4HeaderClick
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #20184#36135#26102#38388
            DataBinding.FieldName = #20986#24211#26102#38388
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Options.Editing = False
            Options.Moving = False
            Width = 100
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            Options.Editing = False
            Options.Moving = False
            Width = 150
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = #20986#24211#25968#37327
            Options.Editing = False
            Options.Moving = False
            Width = 60
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = #21512#35745#37329#39069
            DataBinding.FieldName = #20986#24211#37329#39069
            Options.Editing = False
            Options.Moving = False
            Width = 70
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #25209#24405
      ImageIndex = 1
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 65
        Align = alTop
        TabOrder = 0
        ExplicitTop = 8
        object cxlbl6: TcxLabel
          Left = 26
          Top = 19
          Caption = #20986#24211#26085#26399
          Transparent = True
        end
        object cxDateEdit7: TcxDateEdit
          Left = 100
          Top = 17
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl20: TcxLabel
          Left = 229
          Top = 20
          Caption = #33267
          Transparent = True
        end
        object cxDateEdit8: TcxDateEdit
          Left = 256
          Top = 17
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton30: TcxButton
          Left = 393
          Top = 14
          Width = 75
          Height = 31
          Caption = #32479#35745
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton30Click
        end
      end
      object cxGrid15: TcxGrid
        Left = 0
        Top = 65
        Width = 719
        Height = 374
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        ExplicitTop = 55
        ExplicitWidth = 1067
        ExplicitHeight = 599
        object cxGridDBTableView12: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_caiwu
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
        end
        object cxGridLevel12: TcxGridLevel
          GridView = cxGridDBTableView12
        end
      end
    end
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
    Left = 288
    Top = 8
    StyleName = 'Platform Default'
    object act_close: TAction
      Caption = #36820#22238
      ImageIndex = 6
      OnExecute = act_closeExecute
    end
    object act2: TAction
      Caption = #20445#23384
      ImageIndex = 31
      OnExecute = act2Execute
    end
    object act1: TAction
      Caption = #25171#21360
      ImageIndex = 24
      OnExecute = act1Execute
    end
  end
  object ds_fenyuan: TDataSource
    DataSet = qry_fenyuan
    Left = 344
    Top = 56
  end
  object qry_fenyuan: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 352
    Top = 8
  end
  object qry_gys: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920)
    Left = 302
    Top = 200
  end
  object ds_gys: TDataSource
    DataSet = qry_gys
    Left = 302
    Top = 264
  end
  object ds_liebiao: TDataSource
    DataSet = qry_liebiao
    Left = 104
    Top = 264
  end
  object qry_liebiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 88
    Top = 336
  end
  object qry_caiwu: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 466
    Top = 336
  end
  object ds_caiwu: TDataSource
    DataSet = qry_caiwu
    Left = 474
    Top = 264
  end
end
