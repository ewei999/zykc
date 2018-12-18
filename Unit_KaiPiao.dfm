object Form_KaiPiao: TForm_KaiPiao
  Left = 0
  Top = 0
  Caption = #24320#31080#31649#29702
  ClientHeight = 590
  ClientWidth = 930
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object img1: TImage
    Left = 0
    Top = 0
    Width = 930
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
    ExplicitLeft = -519
    ExplicitWidth = 990
  end
  object cxlbl1: TcxLabel
    Left = 7
    Top = 16
    Caption = #24320#31080#31649#29702
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
    Left = 871
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
  end
  object cxButton1: TcxButton
    Left = 699
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act1
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
  object cxButton2: TcxButton
    Left = 756
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act2
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 80
    Width = 930
    Height = 510
    Align = alClient
    TabOrder = 4
    LookAndFeel.SkinName = 'Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = ds_liebiao
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #21512#35745#65306'0'
          Kind = skCount
          Column = cxGrid1DBTableView1DBColumn2
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1DBColumn17
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
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #24320#31080#26102#38388
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'yyyy-mm-dd'
        Width = 100
      end
      object cxGrid1DBTableView1DBColumn16: TcxGridDBColumn
        DataBinding.FieldName = #20998#38498
        Width = 80
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        Caption = #20379#24212#21830
        DataBinding.FieldName = 'gys'
        Width = 80
      end
      object cxGrid1DBTableView1DBColumn17: TcxGridDBColumn
        DataBinding.FieldName = #21512#35745#37329#39069
        Width = 80
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #24320#31080#20154
        Width = 70
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = #20184#27454#32534#21495
        Width = 70
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = #20184#27454#22791#27880
        Width = 150
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 814
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act3
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    OptionsImage.Layout = blGlyphTop
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxlbl5: TcxLabel
    Left = 189
    Top = 26
    Caption = #24320#31080#26085#26399
    Transparent = True
  end
  object cxDate_TuiH_qishi: TcxDateEdit
    Left = 259
    Top = 24
    Properties.DisplayFormat = 'yyyy-mm-dd'
    Properties.EditFormat = 'yyyy-mm-dd'
    TabOrder = 7
    Width = 121
  end
  object cxlbl6: TcxLabel
    Left = 388
    Top = 26
    Caption = #33267
    Transparent = True
  end
  object cxDate_TuiH_zhongzhi: TcxDateEdit
    Left = 415
    Top = 24
    Properties.DisplayFormat = 'yyyy-mm-dd'
    Properties.EditFormat = 'yyyy-mm-dd'
    TabOrder = 9
    Width = 121
  end
  object cxButton19: TcxButton
    Left = 542
    Top = 22
    Width = 75
    Height = 31
    Caption = #26597#35810
    LookAndFeel.SkinName = 'Black'
    TabOrder = 10
    OnClick = cxButton19Click
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
    Left = 456
    Top = 224
    StyleName = 'Platform Default'
    object act_close: TAction
      Caption = #36820#22238
      ImageIndex = 6
      OnExecute = act_closeExecute
    end
    object act1: TAction
      Caption = #26032#22686
      ImageIndex = 10
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = #20316#24223
      ImageIndex = 27
      OnExecute = act2Execute
    end
    object act3: TAction
      Caption = #20184#27454
      ImageIndex = 85
      OnExecute = act3Execute
    end
  end
  object qry_liebiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 88
    Top = 336
  end
  object ds_liebiao: TDataSource
    DataSet = qry_liebiao
    Left = 104
    Top = 264
  end
end
