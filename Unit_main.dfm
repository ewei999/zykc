object Form_main: TForm_main
  Left = 0
  Top = 0
  Caption = #20013#22830#24211#23384#31649#29702#31995#32479
  ClientHeight = 739
  ClientWidth = 1251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 716
    Width = 1251
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #30331#24405#20154
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #23703#20301
        Width = 100
      end>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 0
    Width = 185
    Height = 716
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    View = 17
    ViewStyle.ColorSchemeName = 'Blue'
    OptionsImage.LargeImages = DataModule1.cxImageList_main
    OptionsImage.SmallImages = DataModule1.cxImageList_main
    object dxNavBar1Group1: TdxNavBarGroup
      Caption = #38376#24215#25552#36135#31649#29702
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1Item1
        end
        item
          Item = dxNavBar1Item2
        end>
    end
    object dxNavBar1Group2: TdxNavBarGroup
      Caption = #20013#22830#20179#24211#31649#29702
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OnClick = dxNavBar1Group2Click
      Links = <
        item
          Item = dxNavBar1Item3
        end
        item
          Item = dxNavBar1Item5
        end>
    end
    object dxNavBar1Group3: TdxNavBarGroup
      Caption = #31995#32479#35774#32622
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <>
    end
    object dxNavBar1Item1: TdxNavBarItem
      Caption = #25552#36135#30003#35831
      SmallImageIndex = 45
      OnClick = dxNavBar1Item1Click
    end
    object dxNavBar1Item2: TdxNavBarItem
      Caption = #20184#36135
      SmallImageIndex = 38
    end
    object dxNavBar1Item3: TdxNavBarItem
      Caption = #37319#36141#30003#35831
      SmallImageIndex = 30
      OnClick = dxNavBar1Item3Click
    end
    object dxNavBar1Item4: TdxNavBarItem
      Caption = #20379#24212#21830#35774#32622
      SmallImageIndex = 54
    end
    object dxNavBar1Item5: TdxNavBarItem
      Caption = #20837#24211
      SmallImageIndex = 68
    end
  end
  object cxPageControl_main: TcxPageControl
    Left = 185
    Top = 0
    Width = 1066
    Height = 716
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 716
    ClientRectRight = 1066
    ClientRectTop = 30
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1066
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 29
          Top = 24
          Caption = #30003#35831#26085#26399
          Transparent = True
        end
        object cxDate_th_qishi: TcxDateEdit
          Left = 103
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 232
          Top = 24
          Caption = #33267
          Transparent = True
        end
        object cxDate_th_zhongzhi: TcxDateEdit
          Left = 259
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton1: TcxButton
          Left = 395
          Top = 20
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 491
          Top = 20
          Width = 75
          Height = 31
          Caption = #26174#31034#26126#32454
          LookAndFeel.SkinName = 'Black'
          TabOrder = 5
          OnClick = cxButton2Click
        end
        object cxButton3: TcxButton
          Left = 587
          Top = 20
          Width = 99
          Height = 31
          Caption = #20840#37096#26410#20184#36135
          LookAndFeel.SkinName = 'Black'
          TabOrder = 6
          OnClick = cxButton3Click
        end
      end
      object cxPage_tihuoshenqing: TcxPageControl
        Left = 0
        Top = 70
        Width = 1066
        Height = 616
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet3
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Blue'
        ClientRectBottom = 616
        ClientRectRight = 1066
        ClientRectTop = 30
        object cxTabSheet2: TcxTabSheet
          Caption = #27719#24635
          ImageIndex = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 1066
            Height = 586
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              DataController.DataSource = ds_thshenqing
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
              object cxGrid1DBTableView1DBColumn16: TcxGridDBColumn
                DataBinding.FieldName = #20998#38498
                Width = 80
              end
              object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#26085#26399
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd'
                Width = 100
              end
              object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#32534#21495
                Width = 80
              end
              object cxGrid1DBTableView1DBColumn17: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#35828#26126
                Width = 200
              end
              object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#20154
                Width = 70
              end
              object cxGrid1DBTableView1Column1: TcxGridDBColumn
                Caption = #30003#35831#26465#25968
                DataBinding.FieldName = #30003#35831#25968
                Width = 70
              end
              object cxGrid1DBTableView1DBColumn18: TcxGridDBColumn
                Caption = #29366#24577
                DataBinding.FieldName = 'zt'
                Width = 70
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = #26126#32454
          ImageIndex = 1
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 1066
            Height = 586
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridDBTableView1CellDblClick
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = ds_thshenqing_mx
              DataController.KeyFieldNames = #32534#21495
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1Column4: TcxGridDBColumn
                Caption = #36873#25321
                DataBinding.ValueType = 'Boolean'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 50
                OnHeaderClick = cxGridDBTableView1Column4HeaderClick
              end
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = #20998#38498
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#26085#26399
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd'
                Options.Editing = False
                Width = 100
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#32534#21495
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = #21517#31216
                DataBinding.FieldName = 'mc'
                Options.Editing = False
                Width = 150
              end
              object cxGridDBTableView1Column2: TcxGridDBColumn
                DataBinding.FieldName = #31867#21035
                Options.Editing = False
                Width = 70
              end
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #35268#26684
                Options.Editing = False
                Width = 70
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #21333#20301
                Options.Editing = False
                Width = 70
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                DataBinding.FieldName = #25968#37327
                Options.Editing = False
              end
              object cxGridDBTableView1Column3: TcxGridDBColumn
                Caption = #29366#24577
                DataBinding.FieldName = 'zt'
                Options.Editing = False
                Width = 60
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #37319#36141
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1066
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 8
        object cxLabel3: TcxLabel
          Left = 29
          Top = 24
          Caption = #30003#35831#26085#26399
          Transparent = True
        end
        object cxDateEdit1: TcxDateEdit
          Left = 103
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 232
          Top = 24
          Caption = #33267
          Transparent = True
        end
        object cxDateEdit2: TcxDateEdit
          Left = 259
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton4: TcxButton
          Left = 395
          Top = 20
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object cxButton5: TcxButton
          Left = 491
          Top = 20
          Width = 75
          Height = 31
          Caption = #26174#31034#26126#32454
          LookAndFeel.SkinName = 'Black'
          TabOrder = 5
          OnClick = cxButton2Click
        end
        object cxButton6: TcxButton
          Left = 587
          Top = 20
          Width = 99
          Height = 31
          Caption = #20840#37096#26410#20184#36135
          LookAndFeel.SkinName = 'Black'
          TabOrder = 6
          OnClick = cxButton3Click
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 70
        Width = 1066
        Height = 616
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet5
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Blue'
        ClientRectBottom = 616
        ClientRectRight = 1066
        ClientRectTop = 30
        object cxTabSheet5: TcxTabSheet
          Caption = #37319#36141#27719#24635
          ImageIndex = 0
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 1066
            Height = 586
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              DataController.DataSource = DataSource_caigou_hz
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
              object cxgrdbclmn2: TcxGridDBColumn
                Caption = #30003#35831#37319#36141#26085#26399
                DataBinding.FieldName = #30003#35831#26085#26399
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd'
                Width = 100
              end
              object cxgrdbclmn3: TcxGridDBColumn
                Caption = #37319#36141#32534#21495
                DataBinding.FieldName = #30003#35831#32534#21495
                Width = 80
              end
              object cxgrdbclmn4: TcxGridDBColumn
                Caption = #37319#36141#35828#26126
                DataBinding.FieldName = #30003#35831#35828#26126
                Width = 200
              end
              object cxgrdbclmn5: TcxGridDBColumn
                Caption = #30003#35831#37319#36141#20154
                DataBinding.FieldName = #30003#35831#20154
                Width = 70
              end
              object cxgrdbclmn6: TcxGridDBColumn
                Caption = #30003#35831#26465#25968
                DataBinding.FieldName = #30003#35831#25968
                Width = 70
              end
              object cxgrdbclmn7: TcxGridDBColumn
                DataBinding.FieldName = #29366#24577
                Width = 70
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #37319#36141#26126#32454
          ImageIndex = 1
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 1066
            Height = 586
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridDBTableView1CellDblClick
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DataSource_caigou_hz
              DataController.KeyFieldNames = #32534#21495
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
      end
    end
  end
  object ds_thshenqing: TDataSource
    DataSet = qry_thshenqing
    Left = 264
    Top = 264
  end
  object qry_thshenqing: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 336
    Top = 256
  end
  object qry_thshenqing_mx: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 280
    Top = 176
  end
  object ds_thshenqing_mx: TDataSource
    DataSet = qry_thshenqing_mx
    Left = 344
    Top = 192
  end
  object qry_caigou_hz: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#25552#36135#30003#35831#20027#34920' where '#31867#21035'= 2')
    Left = 521
    Top = 258
  end
  object DataSource_caigou_hz: TDataSource
    DataSet = qry_caigou_hz
    Left = 617
    Top = 242
  end
  object qry_cg_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'select * from '#25552#36135#30003#35831#26126#32454#34920
      'where '#31867#21035'=2')
    Left = 513
    Top = 330
  end
  object DataSource_cg_mingxi: TDataSource
    DataSet = qry_cg_mingxi
    Left = 609
    Top = 314
  end
end
