object Form_KuCunJilu: TForm_KuCunJilu
  Left = 0
  Top = 0
  Caption = #24211#23384#35760#24405
  ClientHeight = 629
  ClientWidth = 1067
  Color = clBtnFace
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
    Width = 1067
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
    ExplicitLeft = -243
    ExplicitWidth = 990
  end
  object cxlbl1: TcxLabel
    Left = 7
    Top = 16
    Caption = #24211#23384#35760#24405
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
    Left = 1007
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 80
    Width = 1067
    Height = 549
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 544
    ClientRectLeft = 2
    ClientRectRight = 1062
    ClientRectTop = 31
    object cxTabSheet1: TcxTabSheet
      Caption = #20837#24211#35760#24405
      ImageIndex = 0
      object cxGrid11: TcxGrid
        Left = 0
        Top = 0
        Width = 1060
        Height = 513
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Blue'
        ExplicitTop = 70
        ExplicitWidth = 1069
        ExplicitHeight = 610
        object cxGridDBTableView8: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_leibiao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBTableView8Column1
            end
            item
              Format = '0.0'
              Kind = skSum
              Column = cxGridDBColumn42
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
          object cxGridDBTableView8Column1: TcxGridDBColumn
            DataBinding.FieldName = #20837#24211#26102#38388
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
            Width = 120
          end
          object cxGridDBColumn37: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            Width = 150
          end
          object cxGridDBColumn39: TcxGridDBColumn
            DataBinding.FieldName = #31867#21035
            Width = 60
          end
          object cxGridDBColumn41: TcxGridDBColumn
            DataBinding.FieldName = #35268#26684
            Width = 60
          end
          object cxGridDBTableView8Column4: TcxGridDBColumn
            DataBinding.FieldName = #21333#20301
            Width = 60
          end
          object cxGridDBColumn40: TcxGridDBColumn
            DataBinding.FieldName = #23567#31867
            Width = 60
          end
          object cxGridDBTableView8Column3: TcxGridDBColumn
            Caption = #20379#24212#21830
            DataBinding.FieldName = 'gys'
            Width = 80
          end
          object cxGridDBColumn42: TcxGridDBColumn
            Caption = #20837#24211#25968#37327
            DataBinding.FieldName = #25968#37327
            Width = 70
          end
          object cxGridDBColumn43: TcxGridDBColumn
            DataBinding.FieldName = #36827#36135#21333#20215
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 70
          end
          object cxGridDBTableView8Column2: TcxGridDBColumn
            DataBinding.FieldName = #37329#39069
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 70
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #20986#24211#35760#24405
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1060
        Height = 513
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Blue'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_leibiao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxGridDBColumn1
            end
            item
              Format = '0.0'
              Kind = skSum
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
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #20986#24211#26102#38388
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yyyy-mm-dd hh:mm'
            Width = 120
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #21517#31216
            Width = 150
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #35268#26684
            Width = 60
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #21333#20301
            Width = 60
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = #20379#24212#21830
            DataBinding.FieldName = 'gys'
            Width = 80
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = #20986#24211#25968#37327
            Width = 70
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 70
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = #20986#24211#37329#39069
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 70
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #20998#24215
            Width = 80
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
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
    Left = 368
    Top = 8
    StyleName = 'Platform Default'
    object act_close: TAction
      Caption = #36820#22238
      ImageIndex = 6
      OnExecute = act_closeExecute
    end
  end
  object qry_leibiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 215
    Top = 312
  end
  object ds_leibiao: TDataSource
    DataSet = qry_leibiao
    Left = 215
    Top = 240
  end
end
