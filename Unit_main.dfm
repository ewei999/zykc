object Form_main: TForm_main
  Left = 0
  Top = 0
  Caption = #20013#22830#24211#23384#31649#29702#31995#32479
  ClientHeight = 739
  ClientWidth = 1261
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
    Width = 1261
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
      OnClick = dxNavBar1Group1Click
      Links = <
        item
          Item = dxNavBar1Item12
        end
        item
          Item = dxNavBar1Item2
        end
        item
          Item = dxNavBar1Item6
        end
        item
          Item = dxNavBar1Item7
        end
        item
          Item = dxNavBar1Item15
        end>
    end
    object dxNavBar1Group4: TdxNavBarGroup
      Caption = #38376#24215#36864#36135#31649#29702
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OnClick = dxNavBar1Group4Click
      Links = <
        item
          Item = dxNavBar1Item13
        end
        item
          Item = dxNavBar1Item1
        end>
    end
    object dxNavBar1Group2: TdxNavBarGroup
      Caption = #20013#22830#20179#24211#31649#29702
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OnClick = dxNavBar1Item10Click
      Links = <
        item
          Item = dxNavBar1Item10
        end
        item
          Item = dxNavBar1Item3
        end
        item
          Item = dxNavBar1Item5
        end
        item
          Item = dxNavBar1Item11
        end
        item
          Item = dxNavBar1Item8
        end
        item
          Item = dxNavBar1Item14
        end
        item
          Item = dxNavBar1Item16
        end
        item
          Item = dxNavBar1Item9
        end
        item
          Item = dxNavBar1Item17
        end
        item
          Item = dxNavBar1Item18
        end>
    end
    object dxNavBar1Group3: TdxNavBarGroup
      Caption = #31995#32479#35774#32622
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1Item4
        end>
    end
    object dxNavBar1Item2: TdxNavBarItem
      Caption = #20184#36135#65288#25353#30003#35831#21333#65289
      SmallImageIndex = 38
      OnClick = dxNavBar1Item2Click
    end
    object dxNavBar1Item3: TdxNavBarItem
      Caption = #37319#36141#30003#35831
      SmallImageIndex = 30
      OnClick = dxNavBar1Item3Click
    end
    object dxNavBar1Item4: TdxNavBarItem
      Caption = #20379#24212#21830#35774#32622
      SmallImageIndex = 54
      OnClick = dxNavBar1Item4Click
    end
    object dxNavBar1Item5: TdxNavBarItem
      Caption = #20837#24211
      SmallImageIndex = 68
      OnClick = dxNavBar1Item5Click
    end
    object dxNavBar1Item6: TdxNavBarItem
      Caption = #20184#36135#35760#24405
      SmallImageIndex = 24
      OnClick = dxNavBar1Item6Click
    end
    object dxNavBar1Item7: TdxNavBarItem
      Caption = #24320#31080
      LargeImageIndex = 0
      SmallImageIndex = 0
      OnClick = dxNavBar1Item7Click
    end
    object dxNavBar1Item9: TdxNavBarItem
      Caption = #23457#25209#21015#34920
      SmallImageIndex = 56
      OnClick = dxNavBar1Item9Click
    end
    object dxNavBar1Item10: TdxNavBarItem
      Caption = #24211#23384#32479#35745
      SmallImageIndex = 8
      OnClick = dxNavBar1Item10Click
    end
    object dxNavBar1Item11: TdxNavBarItem
      Caption = #20184#36135#65288#20027#21160#20184#36135#65289
      SmallImageIndex = 7
      OnClick = dxNavBar1Item11Click
    end
    object dxNavBar1Item1: TdxNavBarItem
      Caption = #36864#36135#35760#24405
      SmallImageIndex = 60
      OnClick = dxNavBar1Item1Click
    end
    object dxNavBar1Item8: TdxNavBarItem
      Caption = #36864#36135
      SmallImageIndex = 66
    end
    object dxNavBar1Item12: TdxNavBarItem
      Caption = #25552#36135#30003#35831#35760#24405
      SmallImageIndex = 45
      OnClick = dxNavBar1Group1Click
    end
    object dxNavBar1Item13: TdxNavBarItem
      Caption = #36864#36135#30003#35831#35760#24405
      SmallImageIndex = 31
      OnClick = dxNavBar1Group4Click
    end
    object dxNavBar1Item14: TdxNavBarItem
      Caption = #38376#24215#29992#37327#32479#35745
      SmallImageIndex = 58
      OnClick = dxNavBar1Item14Click
    end
    object dxNavBar1Item15: TdxNavBarItem
      Caption = #24050#25552#20132#26410#23457#25209#35760#24405
      SmallImageIndex = 11
      OnClick = dxNavBar1Item15Click
    end
    object dxNavBar1Item16: TdxNavBarItem
      Caption = #24120#22791#33647#21697#31649#29702
      SmallImageIndex = 19
      OnClick = dxNavBar1Item16Click
    end
    object dxNavBar1Item17: TdxNavBarItem
      Caption = #36130#21153#25253#34920
      SmallImageIndex = 65
      OnClick = dxNavBar1Item17Click
    end
    object dxNavBar1Item18: TdxNavBarItem
      Caption = #20215#30446#34920
      SmallImageIndex = 45
      OnClick = dxNavBar1Item18Click
    end
  end
  object cxPageControl_main: TcxPageControl
    Left = 185
    Top = 0
    Width = 1076
    Height = 716
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet17
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 711
    ClientRectLeft = 2
    ClientRectRight = 1071
    ClientRectTop = 31
    object cxTabSheet1: TcxTabSheet
      Caption = #25552#36135#30003#35831
      ImageIndex = 0
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1069
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
          Left = 772
          Top = 20
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 868
          Top = 20
          Width = 75
          Height = 31
          Caption = #26174#31034#26126#32454
          LookAndFeel.SkinName = 'Black'
          TabOrder = 5
          OnClick = cxButton2Click
        end
        object cxComboBox2: TcxComboBox
          Left = 435
          Top = 22
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            #26410#22788#29702
            #24050#22788#29702
            #20840#37096)
          TabOrder = 6
          Text = #26410#22788#29702
          Width = 94
        end
        object cxlbl17: TcxLabel
          Left = 393
          Top = 24
          Caption = #29366#24577
          Transparent = True
        end
        object cxButton25: TcxButton
          Left = 962
          Top = 20
          Width = 95
          Height = 31
          Caption = #23548#20986'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 8
          OnClick = cxButton25Click
        end
        object cxTextEdit1: TcxTextEdit
          Left = 577
          Top = 22
          TabOrder = 9
          Width = 189
        end
        object cxlbl18: TcxLabel
          Left = 535
          Top = 24
          Caption = #21517#31216
          Transparent = True
        end
      end
      object cxPage_tihuoshenqing: TcxPageControl
        Left = 0
        Top = 70
        Width = 1069
        Height = 610
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet3
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Blue'
        ClientRectBottom = 605
        ClientRectLeft = 2
        ClientRectRight = 1064
        ClientRectTop = 31
        object cxTabSheet2: TcxTabSheet
          Caption = #27719#24635
          ImageIndex = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 1062
            Height = 574
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              DataController.DataSource = ds_thshenqing
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #21512#35745#65306'0'
                  Kind = skCount
                  Column = cxGrid1DBTableView1DBColumn16
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
                DataBinding.FieldName = #30003#35831#25968#37327
                Width = 70
              end
              object cxGrid1DBTableView1DBColumn18: TcxGridDBColumn
                DataBinding.FieldName = #24050#20184#36135#25968#37327
                Width = 70
              end
              object cxGrid1DBTableView1Column2: TcxGridDBColumn
                DataBinding.FieldName = #19981#20184#36135#25968#37327
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
            Width = 1062
            Height = 574
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
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #21512#35745#65306'0'
                  Kind = skCount
                  Column = cxGridDBColumn1
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
              object cxGridDBTableView1Column5: TcxGridDBColumn
                DataBinding.FieldName = #23457#25209#26085#26399
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd'
                Options.Editing = False
                Width = 100
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #20215#30446#32534#21495
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
              object cxGridDBTableView1Column7: TcxGridDBColumn
                Caption = #20379#24212#21830
                DataBinding.FieldName = 'gys'
                Options.Editing = False
                Width = 90
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                DataBinding.FieldName = #25968#37327
                Options.Editing = False
                Width = 70
              end
              object cxGridDBTableView1Column6: TcxGridDBColumn
                DataBinding.FieldName = #22791#27880
                Options.Editing = False
                Width = 100
              end
              object cxGridDBTableView1Column3: TcxGridDBColumn
                Caption = #29366#24577
                DataBinding.FieldName = 'zt'
                Options.Editing = False
                Width = 60
              end
              object cxGridDBTableView1Column8: TcxGridDBColumn
                Caption = #22791#27880
                DataBinding.FieldName = #19981#20184#36135#21407#22240
                Options.Editing = False
                Width = 100
              end
              object cxGridDBTableView1Column4: TcxGridDBColumn
                DataBinding.FieldName = #20179#24211#24211#23384
                Options.Editing = False
                Width = 70
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
        Width = 1069
        Height = 89
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 21
          Top = 12
          Width = 92
          Height = 45
          Action = Action_new
          LookAndFeel.SkinName = 'Black'
          TabOrder = 0
        end
        object cxButton5: TcxButton
          Left = 124
          Top = 12
          Width = 92
          Height = 45
          Action = Action_edit
          LookAndFeel.SkinName = 'Black'
          TabOrder = 1
        end
        object cxButton6: TcxButton
          Left = 226
          Top = 12
          Width = 92
          Height = 45
          Action = Action_delete
          LookAndFeel.SkinName = 'Black'
          TabOrder = 2
        end
        object cxButton7: TcxButton
          Left = 330
          Top = 12
          Width = 92
          Height = 45
          Action = Action_submit
          LookAndFeel.SkinName = 'Black'
          TabOrder = 3
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1069
          Height = 74
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          DesignSize = (
            1069
            74)
          object cxLabel9: TcxLabel
            Left = 5
            Top = 17
            Caption = #37319#36141#30003#35831#21333
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
          object cxButton16: TcxButton
            Left = 893
            Top = 8
            Width = 50
            Height = 58
            Action = Action_new
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
          object cxButton10: TcxButton
            Left = 949
            Top = 8
            Width = 50
            Height = 58
            Action = Action_edit
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
          object cxButton11: TcxButton
            Left = 1037
            Top = 56
            Width = 50
            Height = 58
            Action = Action_submit
            Anchors = [akTop, akRight]
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Black'
            OptionsImage.Layout = blGlyphTop
            TabOrder = 3
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxButton12: TcxButton
            Left = 1005
            Top = 8
            Width = 50
            Height = 58
            Action = Action_delete
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
          object cxLabel3: TcxLabel
            Left = 189
            Top = 35
            Caption = #30003#35831#26085#26399
            Transparent = True
          end
          object cxDateEdit1: TcxDateEdit
            Left = 263
            Top = 31
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Properties.EditFormat = 'yyyy-mm-dd'
            TabOrder = 6
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 392
            Top = 35
            Caption = #33267
            Transparent = True
          end
          object cxDateEdit2: TcxDateEdit
            Left = 419
            Top = 31
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Properties.EditFormat = 'yyyy-mm-dd'
            TabOrder = 8
            Width = 121
          end
          object cxButton4: TcxButton
            Left = 555
            Top = 27
            Width = 75
            Height = 31
            Caption = #26597#35810
            LookAndFeel.SkinName = 'Black'
            TabOrder = 9
            OnClick = cxButton4Click
          end
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 89
        Width = 1069
        Height = 591
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet5
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Blue'
        ClientRectBottom = 586
        ClientRectLeft = 2
        ClientRectRight = 1064
        ClientRectTop = 31
        object cxTabSheet5: TcxTabSheet
          Caption = #37319#36141#27719#24635
          ImageIndex = 0
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 1062
            Height = 555
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridDBTableView2CellDblClick
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
                Width = 164
              end
              object cxgrdbclmn3: TcxGridDBColumn
                Caption = #37319#36141#32534#21495
                DataBinding.FieldName = #30003#35831#32534#21495
                Width = 166
              end
              object cxgrdbclmncxGridDBTableView2Column1: TcxGridDBColumn
                DataBinding.FieldName = #20379#24212#21830
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = #20379#24212#21830#32534#21495
                Properties.ListColumns = <
                  item
                    FieldName = #21517#31216
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = DataSource_gys_list
                Width = 100
              end
              object cxgrdbclmn4: TcxGridDBColumn
                Caption = #37319#36141#35828#26126
                DataBinding.FieldName = #30003#35831#35828#26126
                Width = 314
              end
              object cxgrdbclmn5: TcxGridDBColumn
                Caption = #30003#35831#37319#36141#20154
                DataBinding.FieldName = #30003#35831#20154
                Width = 110
              end
              object cxgrdbclmn6: TcxGridDBColumn
                Caption = #30003#35831#26465#25968
                DataBinding.FieldName = #30003#35831#25968
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Width = 110
              end
              object cxgrdbclmn7: TcxGridDBColumn
                Caption = #29366#24577
                DataBinding.FieldName = 'zt'
                Width = 110
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
            Width = 1062
            Height = 555
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DataSource_cg_mingxi
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
              object cxgrdbclmncxGridDBTableView3DBColumn: TcxGridDBColumn
                DataBinding.FieldName = #32534#21495
                Visible = False
              end
              object cxgrdbclmncxGridDBTableView3DBColumn1: TcxGridDBColumn
                DataBinding.FieldName = #30003#35831#32534#21495
                Visible = False
              end
              object cxgrdbclmncxGridDBTableView3DBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #31867#21035
                Width = 58
              end
              object cxgrdbclmncxGridDBTableView3DBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #20215#30446#32534#21495
                Width = 95
              end
              object cxgrdbclmncxGridDBTableView3DBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #21517#31216
                Width = 126
              end
              object cxgrdbclmncxGridDBTableView3DBColumn4: TcxGridDBColumn
                Caption = #20379#24212#21830
                DataBinding.FieldName = #20379#24212#21830#32534#21495
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = #20379#24212#21830#32534#21495
                Properties.ListColumns = <
                  item
                    FieldName = #21517#31216
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = DataSource_gys_list
                Options.Editing = False
                Width = 79
              end
              object cxgrdbclmncxGridDBTableView3DBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #35268#26684
                Width = 79
              end
              object cxgrdbclmncxGridDBTableView3DBColumn5: TcxGridDBColumn
                DataBinding.FieldName = #25968#37327
                Width = 59
              end
              object cxgrdbclmncxGridDBTableView3DBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #29366#24577
                Visible = False
                Width = 20
              end
              object cxgrdbclmncxGridDBTableView3DBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #21333#20301
                Width = 52
              end
              object cxgrdbclmncxGridDBTableView3DBColumn10: TcxGridDBColumn
                DataBinding.FieldName = #22791#27880
                Width = 133
              end
              object cxgrdbclmncxGridDBTableView3DBColumn11: TcxGridDBColumn
                DataBinding.FieldName = #21333#20215
                Width = 99
              end
              object cxgrdbclmncxGridDBTableView3DBColumn12: TcxGridDBColumn
                DataBinding.FieldName = #24211#23384
                Width = 65
              end
              object cxgrdbclmncxGridDBTableView3DBColumn13: TcxGridDBColumn
                DataBinding.FieldName = #21407#21517#31216
                Width = 229
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = #20184#36135#35760#24405
      ImageIndex = 2
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxlbl1: TcxLabel
          Left = 226
          Top = 15
          Caption = #20184#36135#26085#26399
          Transparent = True
        end
        object cxDate_FH_qishi: TcxDateEdit
          Left = 300
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl2: TcxLabel
          Left = 429
          Top = 15
          Caption = #33267
          Transparent = True
        end
        object cxDate_FH_zhongzhi: TcxDateEdit
          Left = 456
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton8: TcxButton
          Left = 776
          Top = 10
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton8Click
        end
        object cxlbl3: TcxLabel
          Left = 31
          Top = 15
          Caption = #20998#38498
          Transparent = True
        end
        object cxLookup_FH_fenyuan: TcxLookupComboBox
          Left = 73
          Top = 13
          Properties.KeyFieldNames = 'abbr'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_fenyuan
          StyleDisabled.Color = clYellow
          StyleDisabled.TextColor = clBlack
          TabOrder = 6
          Width = 144
        end
        object cxlbl4: TcxLabel
          Left = 597
          Top = 15
          Caption = #29366#24577
          Transparent = True
        end
        object cxCombo_FH_Zhuangtai: TcxComboBox
          Left = 639
          Top = 13
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            #24453#25509#25910
            #25509#25910#25104#21151
            #25298#32477#25509#25910
            #20840#37096)
          TabOrder = 8
          Width = 121
        end
        object cxButton20: TcxButton
          Left = 868
          Top = 10
          Width = 75
          Height = 31
          Caption = #26174#31034#26126#32454
          LookAndFeel.SkinName = 'Black'
          TabOrder = 9
          OnClick = cxButton20Click
        end
        object cxButton26: TcxButton
          Left = 967
          Top = 10
          Width = 78
          Height = 31
          Caption = #23548#20986'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 10
          OnClick = cxButton26Click
        end
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 55
        Width = 1069
        Height = 625
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet14
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Blue'
        ClientRectBottom = 620
        ClientRectLeft = 2
        ClientRectRight = 1064
        ClientRectTop = 31
        object cxTabSheet11: TcxTabSheet
          Caption = #27719#24635
          ImageIndex = 0
          object cxGrid5: TcxGrid
            Left = 0
            Top = 0
            Width = 1062
            Height = 589
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView4: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridDBTableView4CellDblClick
              DataController.DataSource = ds_fuhuo_jilu
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #21512#35745#65306'0'
                  Kind = skCount
                  Column = cxGridDBColumn8
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
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #20986#24211#26102#38388
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
                Width = 120
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = #20998#38498
                Width = 80
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #20986#24211#32534#21495
                Width = 80
              end
              object cxGridDBColumn10: TcxGridDBColumn
                Caption = #21512#35745#25968#37327
                DataBinding.FieldName = #25968#37327
                Width = 80
              end
              object cxGridDBColumn11: TcxGridDBColumn
                Caption = #21512#35745#37329#39069
                DataBinding.FieldName = #37329#39069
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '0.00'
                Width = 70
              end
              object cxGridDBColumn12: TcxGridDBColumn
                Caption = #38376#24215#22788#29702#20154
                DataBinding.FieldName = #38376#24215#25509#25910#20154
                Width = 70
              end
              object cxGridDBTableView4Column1: TcxGridDBColumn
                Caption = #38376#24215#22788#29702#26102#38388
                DataBinding.FieldName = #38376#24215#25509#25910#26102#38388
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
                Width = 120
              end
              object cxGridDBColumn13: TcxGridDBColumn
                Caption = #29366#24577
                DataBinding.FieldName = 'zt'
                Width = 70
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBTableView4
            end
          end
        end
        object cxTabSheet14: TcxTabSheet
          Caption = #26126#32454
          ImageIndex = 1
          object cxGrid12: TcxGrid
            Left = 0
            Top = 0
            Width = 1062
            Height = 589
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGridDBTableView9: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = ds_fuhuo_jilu_xiangxi
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #21512#35745#65306'0'
                  Kind = skCount
                  Column = cxGridDBColumn29
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Column = cxGridDBTableView9Column2
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
              object cxGridDBColumn29: TcxGridDBColumn
                DataBinding.FieldName = #20998#38498
                Options.Editing = False
                Width = 80
              end
              object cxGridDBTableView9Column5: TcxGridDBColumn
                DataBinding.FieldName = #20986#24211#32534#21495
                Options.Editing = False
                Width = 100
              end
              object cxGridDBColumn30: TcxGridDBColumn
                DataBinding.FieldName = #20986#24211#26102#38388
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
                Options.Editing = False
                Width = 100
              end
              object cxGridDBColumn45: TcxGridDBColumn
                DataBinding.FieldName = #21517#31216
                Options.Editing = False
                Width = 150
              end
              object cxGridDBColumn47: TcxGridDBColumn
                DataBinding.FieldName = #35268#26684
                Options.Editing = False
                Width = 70
              end
              object cxGridDBColumn48: TcxGridDBColumn
                DataBinding.FieldName = #21333#20301
                Options.Editing = False
                Width = 70
              end
              object cxGridDBColumn46: TcxGridDBColumn
                Caption = #20379#24212#21830
                DataBinding.FieldName = 'gys'
                Options.Editing = False
                Width = 70
              end
              object cxGridDBColumn49: TcxGridDBColumn
                DataBinding.FieldName = #20986#24211#25968#37327
                Options.Editing = False
                Width = 70
              end
              object cxGridDBTableView9Column1: TcxGridDBColumn
                DataBinding.FieldName = #21333#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '0.00'
                Options.Editing = False
                Width = 70
              end
              object cxGridDBTableView9Column2: TcxGridDBColumn
                DataBinding.FieldName = #20986#24211#37329#39069
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '0.00'
                Options.Editing = False
                Width = 70
              end
              object cxGridDBTableView9Column3: TcxGridDBColumn
                DataBinding.FieldName = #33293#38646#37329#39069
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '0.00'
                Options.Editing = False
                Width = 70
              end
              object cxGridDBColumn50: TcxGridDBColumn
                Caption = #29366#24577
                DataBinding.FieldName = 'zt'
                Options.Editing = False
                Width = 60
              end
              object cxGridDBTableView9Column4: TcxGridDBColumn
                DataBinding.FieldName = #24320#31080#32534#21495
                Options.Editing = False
                Width = 70
              end
            end
            object cxGridLevel9: TcxGridLevel
              GridView = cxGridDBTableView9
            end
          end
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = #37319#36141#20837#24211
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1069
          73)
        object cxLabel7: TcxLabel
          Left = 120
          Top = 30
          Caption = #30003#35831#26085#26399
          Transparent = True
        end
        object cxDateEdit5: TcxDateEdit
          Left = 194
          Top = 28
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 323
          Top = 30
          Caption = #33267
          Transparent = True
        end
        object cxDateEdit6: TcxDateEdit
          Left = 350
          Top = 28
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton14: TcxButton
          Left = 486
          Top = 26
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton14Click
        end
        object cxLabel10: TcxLabel
          Left = 6
          Top = 16
          Caption = #20837#24211#21333
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
        object cxButton9: TcxButton
          Left = 901
          Top = 9
          Width = 50
          Height = 58
          Action = Action_ruku_new
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
        object cxButton27: TcxButton
          Left = 578
          Top = 26
          Width = 78
          Height = 31
          Caption = #23548#20986'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 7
          OnClick = cxButton27Click
        end
        object cxButton28: TcxButton
          Left = 957
          Top = 9
          Width = 50
          Height = 58
          Anchors = [akTop, akRight]
          Caption = #20837#24211#20462#25913
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Black'
          OptionsImage.ImageIndex = 17
          OptionsImage.Layout = blGlyphTop
          TabOrder = 8
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = Action_ruku_newExecute
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 73
        Align = alClient
        Caption = #20837#24211#21333
        TabOrder = 1
        Height = 607
        Width = 1069
        object Splitter1: TSplitter
          Left = 633
          Top = 24
          Height = 581
          ExplicitLeft = 432
          ExplicitTop = 136
          ExplicitHeight = 100
        end
        object cxGrid6: TcxGrid
          Left = 2
          Top = 24
          Width = 631
          Height = 581
          Align = alLeft
          TabOrder = 0
          LookAndFeel.SkinName = 'Whiteprint'
          object cxGrid6DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = cxGrid6DBTableView1CellClick
            DataController.DataSource = DataSource_ruku_zhubiao
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmncxGrid6DBTableView1DBColumn5
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
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = #20379#24212#21830#32534#21495
              Properties.ListColumns = <
                item
                  FieldName = #21517#31216
                end>
              Properties.ListSource = DataSource_gys_list
              Width = 80
            end
            object cxgrdbclmncxGrid6DBTableView1DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #20837#24211#26102#38388
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
              Width = 120
            end
            object cxgrdbclmncxGrid6DBTableView1DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #20837#24211#25209#27425
              Visible = False
              Width = 80
            end
            object cxgrdbclmncxGrid6DBTableView1DBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #21512#35745#37329#39069
              Width = 70
            end
            object cxgrdbclmncxGrid6DBTableView1DBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #33293#38646
              Width = 50
            end
            object cxgrdbclmncxGrid6DBTableView1DBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #36141#36135#26041#24335
              Width = 60
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
          Left = 636
          Top = 24
          Width = 431
          Height = 581
          Align = alClient
          TabOrder = 1
          LookAndFeel.SkinName = 'Blueprint'
          object cxGrid7DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataSource_ruku_mingxi
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
              Width = 76
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn12: TcxGridDBColumn
              DataBinding.FieldName = #31867#21035
              Width = 48
            end
            object cxgrdbclmncxGrid7DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = #23567#31867
              Width = 57
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #21517#31216
              Width = 144
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #20215#30446#32534#21495
              Visible = False
              Width = 96
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #35268#26684
              Width = 64
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn9: TcxGridDBColumn
              DataBinding.FieldName = #25968#37327
              Width = 74
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #21333#20301
              Width = 54
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn10: TcxGridDBColumn
              DataBinding.FieldName = #36827#36135#21333#20215
              Width = 86
            end
            object cxgrdbclmncxGrid7DBTableView1DBColumn11: TcxGridDBColumn
              DataBinding.FieldName = #37329#39069
              Width = 125
            end
          end
          object cxGrid7Level1: TcxGridLevel
            GridView = cxGrid7DBTableView1
          end
        end
      end
    end
    object cxTabSheet9: TcxTabSheet
      Caption = #36864#36135#30003#35831
      ImageIndex = 4
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxlbl5: TcxLabel
          Left = 29
          Top = 24
          Caption = #36864#36135#30003#35831#26085#26399
          Transparent = True
        end
        object cxDate_TuiH_qishi: TcxDateEdit
          Left = 133
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl6: TcxLabel
          Left = 262
          Top = 24
          Caption = #33267
          Transparent = True
        end
        object cxDate_TuiH_zhongzhi: TcxDateEdit
          Left = 289
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton19: TcxButton
          Left = 425
          Top = 20
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton19Click
        end
      end
      object cxGrid8: TcxGrid
        Left = 0
        Top = 70
        Width = 1069
        Height = 610
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView5: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView5CellDblClick
          DataController.DataSource = ds_Tuihuo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn14
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
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = #20998#38498
            Width = 80
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#26085#26399
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Width = 100
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#32534#21495
            Width = 80
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#35828#26126
            Width = 200
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#20154
            Width = 70
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = #36864#36135#25968#37327
            DataBinding.FieldName = #30003#35831#25968#37327
            Width = 70
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'zt'
            Width = 70
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
    object cxTabSheet12: TcxTabSheet
      Caption = #37319#36141#23457#25209
      ImageIndex = 5
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 74
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton21: TcxButton
          Left = 195
          Top = 19
          Width = 75
          Height = 31
          Caption = #24050#23457#35760#24405
          LookAndFeel.SkinName = 'Black'
          TabOrder = 0
          OnClick = cxButton21Click
        end
        object cxButton13: TcxButton
          Left = 66
          Top = 19
          Width = 75
          Height = 31
          Caption = #24453#23457#35760#24405
          LookAndFeel.SkinName = 'Black'
          TabOrder = 1
          OnClick = cxButton13Click
        end
      end
      object cxGrid10: TcxGrid
        Left = 0
        Top = 74
        Width = 1069
        Height = 606
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView7: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView7CellDblClick
          DataController.DataSource = ds_CaiGou_ShenPi
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
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = #30003#35831#37319#36141#26085#26399
            DataBinding.FieldName = #30003#35831#26085#26399
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Width = 164
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = #37319#36141#32534#21495
            DataBinding.FieldName = #30003#35831#32534#21495
            Width = 166
          end
          object cxGridDBColumn33: TcxGridDBColumn
            DataBinding.FieldName = #20379#24212#21830
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = #20379#24212#21830#32534#21495
            Properties.ListColumns = <
              item
                FieldName = #21517#31216
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DataSource_gys_list
            Width = 100
          end
          object cxGridDBColumn34: TcxGridDBColumn
            Caption = #37319#36141#35828#26126
            DataBinding.FieldName = #30003#35831#35828#26126
            Width = 314
          end
          object cxGridDBColumn35: TcxGridDBColumn
            Caption = #30003#35831#37319#36141#20154
            DataBinding.FieldName = #30003#35831#20154
            Width = 110
          end
          object cxGridDBColumn36: TcxGridDBColumn
            Caption = #30003#35831#26465#25968
            DataBinding.FieldName = #30003#35831#25968
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Width = 110
          end
          object cxGridDBTableView7Column1: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'zt'
            Width = 70
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxGridDBTableView7
        end
      end
    end
    object cxTabSheet13: TcxTabSheet
      Caption = #24211#23384#32479#35745
      ImageIndex = 6
      object pnl5: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxlbl7: TcxLabel
          Left = 6
          Top = 24
          Caption = #24320#22987#26085#26399
          Transparent = True
        end
        object cxDate_KuCun_Qishi: TcxDateEdit
          Left = 80
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl8: TcxLabel
          Left = 209
          Top = 24
          Caption = #32467#26463#26085#26399
          Transparent = True
        end
        object cxDate_KuCun_Zhongzhi: TcxDateEdit
          Left = 285
          Top = 22
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton15: TcxButton
          Left = 704
          Top = 19
          Width = 75
          Height = 31
          Caption = #32479#35745
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton15Click
        end
        object cxTextEdit37: TcxTextEdit
          Left = 456
          Top = 22
          TabOrder = 5
          Width = 233
        end
        object cxlbl9: TcxLabel
          Left = 416
          Top = 24
          Caption = #21517#31216
          Transparent = True
        end
        object cxButton18: TcxButton
          Left = 885
          Top = 19
          Width = 78
          Height = 31
          Caption = #25171#21360#30424#28857#34920
          LookAndFeel.SkinName = 'Black'
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton18Click
        end
        object cxButton24: TcxButton
          Left = 795
          Top = 19
          Width = 78
          Height = 31
          Caption = #23548#20986'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 8
          OnClick = cxButton24Click
        end
        object cxButton29: TcxButton
          Left = 977
          Top = 19
          Width = 86
          Height = 31
          Caption = #24120#22791#33647#21697#24211#23384
          LookAndFeel.SkinName = 'Black'
          TabOrder = 9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton29Click
        end
      end
      object cxGrid11: TcxGrid
        Left = 0
        Top = 70
        Width = 1069
        Height = 610
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView8: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView8CellDblClick
          DataController.DataSource = ds_kucun
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn37
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView8Column7
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
          object cxGridDBColumn37: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            Width = 150
          end
          object cxGridDBTableView8Column6: TcxGridDBColumn
            DataBinding.FieldName = #20379#24212#21830
            Width = 100
          end
          object cxGridDBColumn39: TcxGridDBColumn
            DataBinding.FieldName = #31867#21035
            Width = 70
          end
          object cxGridDBColumn40: TcxGridDBColumn
            DataBinding.FieldName = #23567#31867
            Width = 70
          end
          object cxGridDBColumn41: TcxGridDBColumn
            DataBinding.FieldName = #35268#26684
            Width = 70
          end
          object cxGridDBTableView8Column4: TcxGridDBColumn
            DataBinding.FieldName = #21333#20301
            Width = 70
          end
          object cxGridDBColumn42: TcxGridDBColumn
            DataBinding.FieldName = #20837#24211#25968#37327
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Width = 70
          end
          object cxGridDBTableView8Column1: TcxGridDBColumn
            DataBinding.FieldName = #26102#38388#27573#20837#24211
            Width = 70
          end
          object cxGridDBColumn43: TcxGridDBColumn
            DataBinding.FieldName = #20986#24211#25968#37327
            Width = 70
          end
          object cxGridDBTableView8Column2: TcxGridDBColumn
            DataBinding.FieldName = #26102#38388#27573#20986#24211
            Width = 70
          end
          object cxGridDBTableView8Column5: TcxGridDBColumn
            Caption = #26410#25509#25910#25968#37327
            DataBinding.FieldName = #26410#25509#25910
            Width = 70
          end
          object cxGridDBTableView8Column3: TcxGridDBColumn
            DataBinding.FieldName = #24211#23384
            Width = 70
          end
          object cxGridDBTableView8Column7: TcxGridDBColumn
            DataBinding.FieldName = #24211#23384#37329#39069
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Options.Editing = False
            Width = 90
          end
          object cxGridDBTableView8Column8: TcxGridDBColumn
            DataBinding.FieldName = #35686#25106#37327
            Options.Editing = False
            Width = 60
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
    end
    object cxTabSheet10: TcxTabSheet
      Caption = #36864#36135#35760#24405
      ImageIndex = 7
      object pnl6: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxlbl10: TcxLabel
          Left = 263
          Top = 15
          Caption = #36864#36135#26085#26399
          Transparent = True
        end
        object cxDateEdit3: TcxDateEdit
          Left = 337
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl11: TcxLabel
          Left = 466
          Top = 15
          Caption = #33267
          Transparent = True
        end
        object cxDateEdit4: TcxDateEdit
          Left = 493
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton17: TcxButton
          Left = 813
          Top = 10
          Width = 75
          Height = 31
          Caption = #26597#35810
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton17Click
        end
        object cxlbl12: TcxLabel
          Left = 31
          Top = 15
          Caption = #20998#38498
          Transparent = True
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 73
          Top = 13
          Properties.KeyFieldNames = 'abbr'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_fenyuan
          StyleDisabled.Color = clYellow
          StyleDisabled.TextColor = clBlack
          TabOrder = 6
          Width = 160
        end
        object cxlbl13: TcxLabel
          Left = 634
          Top = 15
          Caption = #29366#24577
          Transparent = True
        end
        object cxComboBox1: TcxComboBox
          Left = 676
          Top = 13
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            #24453#22788#29702
            #24050#22788#29702
            #20840#37096)
          TabOrder = 8
          Width = 121
        end
      end
      object cxGrid9: TcxGrid
        Left = 0
        Top = 55
        Width = 1069
        Height = 625
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView6: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView6CellDblClick
          DataController.DataSource = ds_TuiHuoJiLu
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn20
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
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = #36864#36135#26102#38388
            DataBinding.FieldName = #20986#24211#26102#38388
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
            Width = 120
          end
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = #20998#38498
            Width = 80
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = #36864#36135#32534#21495
            DataBinding.FieldName = #20986#24211#32534#21495
            Width = 80
          end
          object cxGridDBTableView6Column1: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            Width = 150
          end
          object cxGridDBTableView6Column2: TcxGridDBColumn
            Caption = #36864#36135#25968#37327
            DataBinding.FieldName = #20986#24211#25968#37327
            Width = 60
          end
          object cxGridDBColumn24: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 60
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = #21512#35745#37329#39069
            DataBinding.FieldName = #20986#24211#37329#39069
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 70
          end
          object cxGridDBTableView6Column3: TcxGridDBColumn
            DataBinding.FieldName = #33293#38646#37329#39069
            Width = 60
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = #38376#24215#22788#29702#20154
            DataBinding.FieldName = #38376#24215#25509#25910#20154
            Width = 70
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = #38376#24215#22788#29702#26102#38388
            DataBinding.FieldName = #38376#24215#25509#25910#26102#38388
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
            Width = 120
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'zt'
            Width = 70
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
    end
    object cxTabSheet15: TcxTabSheet
      Caption = #38376#24215#29992#37327#32479#35745
      ImageIndex = 8
      object pnl7: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxlbl14: TcxLabel
          Left = 46
          Top = 15
          Caption = #32479#35745#26085#26399
          Transparent = True
        end
        object cxDate_YL_Qishi: TcxDateEdit
          Left = 120
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl15: TcxLabel
          Left = 249
          Top = 15
          Caption = #33267
          Transparent = True
        end
        object cxDate_YL_Zhongzhi: TcxDateEdit
          Left = 276
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton22: TcxButton
          Left = 747
          Top = 11
          Width = 75
          Height = 31
          Caption = #32479#35745
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton22Click
        end
        object cxlbl16: TcxLabel
          Left = 414
          Top = 15
          Caption = #21517#31216
          Transparent = True
        end
        object cxText_YL_MC: TcxTextEdit
          Left = 456
          Top = 13
          TabOrder = 6
          Width = 266
        end
        object cxButton23: TcxButton
          Left = 843
          Top = 11
          Width = 75
          Height = 31
          Caption = 'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 7
          OnClick = cxButton23Click
        end
      end
      object cxGrid13: TcxGrid
        Left = 0
        Top = 55
        Width = 1069
        Height = 625
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView10: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_yongliang
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
        object cxGridLevel10: TcxGridLevel
          GridView = cxGridDBTableView10
        end
      end
    end
    object cxTabSheet16: TcxTabSheet
      Caption = #24050#25552#20132#26410#23457#25209
      ImageIndex = 9
      object cxGrid14: TcxGrid
        Left = 0
        Top = 0
        Width = 1069
        Height = 680
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView11: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView11CellDblClick
          DataController.DataSource = ds_weishenpi
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn38
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
          object cxGridDBColumn38: TcxGridDBColumn
            DataBinding.FieldName = #20998#38498
            Width = 80
          end
          object cxGridDBColumn51: TcxGridDBColumn
            Caption = #31867#21035
            DataBinding.FieldName = #31867#21035'1'
            Width = 80
          end
          object cxGridDBColumn44: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#26085#26399
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Width = 100
          end
          object cxGridDBColumn53: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#20154
            Width = 70
          end
          object cxGridDBColumn54: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#25968#37327
            Width = 70
          end
          object cxGridDBColumn52: TcxGridDBColumn
            DataBinding.FieldName = #30003#35831#35828#26126
            Width = 200
          end
        end
        object cxGridLevel11: TcxGridLevel
          GridView = cxGridDBTableView11
        end
      end
    end
    object cxTabSheet17: TcxTabSheet
      Caption = #36130#21153#25253#34920
      ImageIndex = 10
      object pnl8: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxlbl19: TcxLabel
          Left = 46
          Top = 15
          Caption = #32479#35745#26085#26399
          Transparent = True
        end
        object cxDateEdit7: TcxDateEdit
          Left = 120
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 1
          Width = 121
        end
        object cxlbl20: TcxLabel
          Left = 249
          Top = 15
          Caption = #33267
          Transparent = True
        end
        object cxDateEdit8: TcxDateEdit
          Left = 276
          Top = 13
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.EditFormat = 'yyyy-mm-dd'
          TabOrder = 3
          Width = 121
        end
        object cxButton30: TcxButton
          Left = 419
          Top = 11
          Width = 75
          Height = 31
          Caption = #32479#35745
          LookAndFeel.SkinName = 'Black'
          TabOrder = 4
          OnClick = cxButton30Click
        end
        object cxButton31: TcxButton
          Left = 515
          Top = 11
          Width = 75
          Height = 31
          Caption = 'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 5
          OnClick = cxButton31Click
        end
      end
      object cxGrid15: TcxGrid
        Left = 0
        Top = 55
        Width = 1069
        Height = 625
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
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
    object cxTabSheet18: TcxTabSheet
      Caption = #20215#30446#34920
      ImageIndex = 11
      object pnl9: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton33: TcxButton
          Left = 589
          Top = 9
          Width = 75
          Height = 31
          Caption = 'Excel'
          LookAndFeel.SkinName = 'Black'
          TabOrder = 0
          OnClick = cxButton33Click
        end
        object cxTextEdit2: TcxTextEdit
          Left = 208
          Top = 11
          Properties.OnChange = cxTextEdit2PropertiesChange
          TabOrder = 1
          Width = 266
        end
        object cxlbl21: TcxLabel
          Left = 166
          Top = 13
          Caption = #21517#31216
          Transparent = True
        end
        object cxButton32: TcxButton
          Left = 493
          Top = 9
          Width = 75
          Height = 31
          Caption = #20445#23384
          LookAndFeel.SkinName = 'Black'
          TabOrder = 3
          OnClick = cxButton32Click
        end
      end
      object cxGrid16: TcxGrid
        Left = 0
        Top = 55
        Width = 1069
        Height = 625
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView13: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridDBTableView8CellDblClick
          DataController.DataSource = ds_JMB
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn55
            end
            item
              Format = '0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn55: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 200
          end
          object cxGridDBColumn57: TcxGridDBColumn
            DataBinding.FieldName = #31867#21035
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn58: TcxGridDBColumn
            DataBinding.FieldName = #23567#31867
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn59: TcxGridDBColumn
            DataBinding.FieldName = #35268#26684
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn60: TcxGridDBColumn
            DataBinding.FieldName = #21333#20301
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn56: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn61: TcxGridDBColumn
            DataBinding.FieldName = #38646#21806#20215
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn62: TcxGridDBColumn
            DataBinding.FieldName = #21253#35013#35268#26684
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 100
          end
          object cxGridDBColumn63: TcxGridDBColumn
            DataBinding.FieldName = #24211#23384#21333#20301
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Width = 100
          end
          object cxGridDBTableView13Column1: TcxGridDBColumn
            DataBinding.FieldName = #35686#25106#37327
            PropertiesClassName = 'TcxMaskEditProperties'
            Width = 60
          end
        end
        object cxGridLevel13: TcxGridLevel
          GridView = cxGridDBTableView13
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
    Left = 240
    Top = 184
  end
  object ds_thshenqing_mx: TDataSource
    DataSet = qry_thshenqing_mx
    Left = 336
    Top = 168
  end
  object qry_caigou_hz: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#30003#35831#20027#34920' ')
    Left = 521
    Top = 258
  end
  object DataSource_caigou_hz: TDataSource
    DataSet = qry_caigou_hz
    Left = 617
    Top = 242
  end
  object DataSource_cg_mingxi: TDataSource
    DataSet = qry_cg_mingxi
    Left = 609
    Top = 314
  end
  object qry_cg_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,b.'#30003#35831#26085#26399',b.'#30003#35831#32534#21495',b.'#29366#24577' as '#23457#25209#29366#24577','#24453#21150#20154',b.'#20379#24212#21830' as '#20379#24212#21830#32534#21495' from '#20013#22830 +
        #37319#36141#30003#35831#26126#32454#34920' a'
      'left outer join'
      #20013#22830#37319#36141#30003#35831#20027#34920' b'
      'on a.'#30003#35831#32534#21495'=b.'#30003#35831#32534#21495
      '')
    Left = 513
    Top = 330
  end
  object qry_gys_list: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920' where '#26159#21542#20316#24223'=0')
    Left = 416
    Top = 296
  end
  object DataSource_gys_list: TDataSource
    DataSet = qry_gys_list
    Left = 432
    Top = 344
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
            Action = Action_close
            Caption = #36864#20986'(&V)'
            ImageIndex = 89
          end>
      end>
    LargeImages = DataModule1.cxImageList32
    Images = DataModule1.cxImageList32
    Left = 680
    Top = 112
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
    end
    object Action_submit: TAction
      Caption = #25552#20132
      ImageIndex = 98
      OnExecute = Action_submitExecute
    end
    object Action_ruku_new: TAction
      Caption = #20837#24211#26032#22686
      ImageIndex = 17
      OnExecute = Action_ruku_newExecute
    end
  end
  object ds_fenyuan: TDataSource
    DataSet = qry_fenyuan
    Left = 992
    Top = 224
  end
  object qry_fenyuan: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 992
    Top = 296
  end
  object ds_fuhuo_jilu: TDataSource
    DataSet = qry_fuhuo_jilu
    Left = 208
    Top = 376
  end
  object qry_fuhuo_jilu: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 280
    Top = 368
  end
  object ADOQuery_ruku_zhubiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#20837#24211#20027#34920)
    Left = 528
    Top = 392
    object ADOQuery_ruku_zhubiao编号: TAutoIncField
      FieldName = #32534#21495
      ReadOnly = True
    end
    object ADOQuery_ruku_zhubiao入库编号: TWideStringField
      FieldName = #20837#24211#32534#21495
      Size = 50
    end
    object ADOQuery_ruku_zhubiao供应商: TWideStringField
      FieldName = #20379#24212#21830
      Size = 50
    end
    object ADOQuery_ruku_zhubiao入库时间: TDateTimeField
      FieldName = #20837#24211#26102#38388
    end
    object ADOQuery_ruku_zhubiao入库批次: TWideStringField
      FieldName = #20837#24211#25209#27425
      Size = 50
    end
    object bcdfldADOQuery_ruku_zhubiao金额: TBCDField
      FieldName = #37329#39069
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object bcdfldADOQuery_ruku_zhubiao舍零: TBCDField
      FieldName = #33293#38646
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object bcdfldADOQuery_ruku_zhubiao合计金额: TBCDField
      FieldName = #21512#35745#37329#39069
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ADOQuery_ruku_zhubiao购货方式: TWideStringField
      FieldName = #36141#36135#26041#24335
      Size = 50
    end
    object ADOQuery_ruku_zhubiao备注: TWideStringField
      FieldName = #22791#27880
      Size = 500
    end
    object ADOQuery_ruku_zhubiao经手人: TWideStringField
      FieldName = #32463#25163#20154
      Size = 50
    end
    object ADOQuery_ruku_zhubiao员工编号: TWideStringField
      FieldName = #21592#24037#32534#21495
      Size = 50
    end
    object ADOQuery_ruku_zhubiao状态: TIntegerField
      FieldName = #29366#24577
    end
    object ADOQuery_ruku_zhubiao审核人: TWideStringField
      FieldName = #23457#26680#20154
      Size = 50
    end
    object ADOQuery_ruku_zhubiao审核时间: TWideStringField
      FieldName = #23457#26680#26102#38388
      Size = 50
    end
    object ADOQuery_ruku_zhubiao选择: TBooleanField
      FieldName = #36873#25321
    end
  end
  object DataSource_ruku_zhubiao: TDataSource
    DataSet = ADOQuery_ruku_zhubiao
    Left = 624
    Top = 376
  end
  object ADOQuery_ruku_mingxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20013#22830#37319#36141#20837#24211#26126#32454#34920)
    Left = 856
    Top = 360
    object ADOQuery_ruku_mingxi编号: TAutoIncField
      FieldName = #32534#21495
      ReadOnly = True
    end
    object ADOQuery_ruku_mingxi入库编号: TWideStringField
      FieldName = #20837#24211#32534#21495
      Size = 50
    end
    object ADOQuery_ruku_mingxi入库明细编号: TWideStringField
      FieldName = #20837#24211#26126#32454#32534#21495
      Size = 50
    end
    object ADOQuery_ruku_mingxi入库批次: TWideStringField
      FieldName = #20837#24211#25209#27425
      Size = 50
    end
    object ADOQuery_ruku_mingxi入库时间: TDateTimeField
      FieldName = #20837#24211#26102#38388
    end
    object ADOQuery_ruku_mingxi名称: TWideStringField
      FieldName = #21517#31216
      Size = 50
    end
    object ADOQuery_ruku_mingxi价目编号: TWideStringField
      FieldName = #20215#30446#32534#21495
      Size = 50
    end
    object ADOQuery_ruku_mingxi规格: TWideStringField
      FieldName = #35268#26684
      Size = 50
    end
    object ADOQuery_ruku_mingxi单位: TWideStringField
      FieldName = #21333#20301
      Size = 50
    end
    object ADOQuery_ruku_mingxi数量: TIntegerField
      FieldName = #25968#37327
    end
    object bcdfldADOQuery_ruku_mingxi进货单价: TBCDField
      FieldName = #36827#36135#21333#20215
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object bcdfldADOQuery_ruku_mingxi金额: TBCDField
      FieldName = #37329#39069
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ADOQuery_ruku_mingxi类别: TWideStringField
      FieldName = #31867#21035
      Size = 50
    end
    object ADOQuery_ruku_mingxi小类: TWideStringField
      FieldName = #23567#31867
      Size = 50
    end
  end
  object DataSource_ruku_mingxi: TDataSource
    DataSet = ADOQuery_ruku_mingxi
    Left = 960
    Top = 384
  end
  object ds_Tuihuo: TDataSource
    DataSet = qry_Tuihuo
    Left = 840
    Top = 256
  end
  object qry_Tuihuo: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 920
    Top = 264
  end
  object qry_CaiGou_ShenPi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 320
    Top = 512
  end
  object ds_CaiGou_ShenPi: TDataSource
    DataSet = qry_CaiGou_ShenPi
    Left = 296
    Top = 568
  end
  object qry_kucun: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 688
    Top = 640
  end
  object ds_kucun: TDataSource
    DataSet = qry_kucun
    Left = 704
    Top = 592
  end
  object ds_TuiHuoJiLu: TDataSource
    DataSet = qry_TuiHuoJiLu
    Left = 1056
    Top = 272
  end
  object qry_TuiHuoJiLu: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 1128
    Top = 160
  end
  object qry_fuhuo_jilu_xiangxi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 576
    Top = 520
  end
  object ds_fuhuo_jilu_xiangxi: TDataSource
    DataSet = qry_fuhuo_jilu_xiangxi
    Left = 504
    Top = 528
  end
  object ds_yongliang: TDataSource
    DataSet = qry_yongliang
    Left = 1128
    Top = 264
  end
  object qry_yongliang: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 1136
    Top = 312
  end
  object qry_weishenpi: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 520
    Top = 152
  end
  object ds_weishenpi: TDataSource
    DataSet = qry_weishenpi
    Left = 448
    Top = 160
  end
  object ds_caiwu: TDataSource
    DataSet = qry_caiwu
    Left = 888
    Top = 128
  end
  object qry_caiwu: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 960
    Top = 120
  end
  object qry_JMB: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 880
    Top = 480
  end
  object ds_JMB: TDataSource
    DataSet = qry_JMB
    Left = 800
    Top = 472
  end
end
