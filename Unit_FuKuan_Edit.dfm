object Form_FuKuan_Edit: TForm_FuKuan_Edit
  Left = 0
  Top = 0
  Caption = #26631#39064
  ClientHeight = 341
  ClientWidth = 464
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
    Width = 464
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
    ExplicitLeft = -476
    ExplicitWidth = 930
  end
  object cxlbl1: TcxLabel
    Left = 7
    Top = 16
    Caption = #26631#39064
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
    Width = 464
    Height = 261
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 256
    ClientRectLeft = 2
    ClientRectRight = 459
    ClientRectTop = 31
    object cxTabSheet1: TcxTabSheet
      Caption = #20184#27454
      ImageIndex = 0
      object cxlbl3: TcxLabel
        Left = 20
        Top = 9
        Caption = #24320#31080#32534#21495
        Transparent = True
      end
      object cxTextEdit1: TcxTextEdit
        Left = 94
        Top = 8
        Enabled = False
        StyleDisabled.Color = clYellow
        StyleDisabled.TextColor = clBlack
        TabOrder = 1
        Width = 121
      end
      object cxlbl2: TcxLabel
        Left = 36
        Top = 42
        Caption = #20379#24212#21830
        Transparent = True
      end
      object cxTextEdit2: TcxTextEdit
        Left = 94
        Top = 41
        Enabled = False
        StyleDisabled.Color = clYellow
        StyleDisabled.TextColor = clBlack
        TabOrder = 3
        Width = 121
      end
      object cxlbl4: TcxLabel
        Left = 228
        Top = 42
        Caption = #26412#21333#37329#39069
        Transparent = True
      end
      object cxTextEdit3: TcxTextEdit
        Left = 302
        Top = 41
        Enabled = False
        StyleDisabled.Color = clYellow
        StyleDisabled.TextColor = clBlack
        TabOrder = 5
        Width = 121
      end
      object cxlbl5: TcxLabel
        Left = 20
        Top = 90
        Caption = #20184#27454#32534#21495
        Transparent = True
      end
      object cxTextEdit4: TcxTextEdit
        Left = 94
        Top = 89
        StyleDisabled.Color = clYellow
        StyleDisabled.TextColor = clBlack
        TabOrder = 7
        Width = 121
      end
      object cxlbl6: TcxLabel
        Left = 46
        Top = 130
        Caption = #22791#27880
        Transparent = True
      end
      object cxMemo1: TcxMemo
        Left = 94
        Top = 122
        Properties.ScrollBars = ssVertical
        TabOrder = 9
        Height = 79
        Width = 329
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #24211#23384#21015#34920
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 457
        Height = 225
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid3DBTableView1CellDblClick
          DataController.DataSource = ds_liebiao
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
          object cxGrid3DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = #20379#24212#21830
            Width = 100
          end
          object cxGrid3DBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = #21333#20215
            Width = 70
          end
          object cxGrid3DBTableView1Column4: TcxGridDBColumn
            Caption = #21487#20184#36135#25968#37327
            DataBinding.FieldName = #25968#37327
            Width = 70
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  object cxButton8: TcxButton
    Left = 400
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act_close
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
    Left = 344
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
    Left = 120
    Top = 16
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
  end
  object ds_liebiao: TDataSource
    DataSet = qry_liebiao
    Left = 212
    Top = 145
  end
  object qry_liebiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#20379#24212#21830#34920)
    Left = 76
    Top = 169
  end
end
