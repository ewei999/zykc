object Form_fuhuo: TForm_fuhuo
  Left = 0
  Top = 0
  Caption = #21521#38376#24215#20184#36135
  ClientHeight = 601
  ClientWidth = 891
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object img1: TImage
    Left = 0
    Top = 0
    Width = 891
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
    Left = 830
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
    Left = 774
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act1
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
  object cxGrid2: TcxGrid
    Left = 0
    Top = 129
    Width = 891
    Height = 472
    Align = alClient
    TabOrder = 3
    LookAndFeel.SkinName = 'Blue'
    ExplicitLeft = 2
    ExplicitTop = 226
    ExplicitHeight = 376
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
        Caption = #30003#35831#25968#37327
        DataBinding.FieldName = #25968#37327
        Options.Editing = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 80
    Width = 891
    Height = 49
    Align = alTop
    TabOrder = 4
    object cxRadioButton1: TcxRadioButton
      Left = 88
      Top = 16
      Width = 81
      Height = 17
      Caption = #20184#36135
      TabOrder = 0
      OnClick = cxRadioButton1Click
      Transparent = True
    end
    object cxRadioButton2: TcxRadioButton
      Left = 220
      Top = 16
      Width = 81
      Height = 17
      Caption = #19981#20184#36135
      TabOrder = 1
      OnClick = cxRadioButton2Click
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 307
      Top = 12
      Caption = #19981#20184#36135#21407#22240
      Transparent = True
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 397
      Top = 10
      Properties.KeyFieldNames = #31867#21035#21517#31216
      Properties.ListColumns = <
        item
          FieldName = #31867#21035#21517#31216
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_yuanyin
      TabOrder = 3
      Width = 228
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
    Left = 368
    Top = 8
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
  end
  object qry_thshenqing_mx: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 256
    Top = 336
  end
  object ds_thshenqing_mx: TDataSource
    DataSet = qry_thshenqing_mx
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
end
