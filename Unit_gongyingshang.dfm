object Form_gongyingshang: TForm_gongyingshang
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20379#24212#21830#35774#32622
  ClientHeight = 500
  ClientWidth = 722
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 722
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
    ExplicitLeft = 56
    ExplicitTop = -8
  end
  object Panel1: TPanel
    Left = 0
    Top = 80
    Width = 722
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 58
      Top = 18
      Caption = #21517#31216
      Transparent = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 100
      Top = 18
      DataBinding.DataField = #21517#31216
      DataBinding.DataSource = DataSource1
      Enabled = False
      StyleDisabled.Color = clYellow
      StyleDisabled.TextColor = clBlack
      TabOrder = 0
      Width = 193
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 370
      Top = 16
      DataBinding.DataField = #30005#35805
      DataBinding.DataSource = DataSource1
      Enabled = False
      StyleDisabled.Color = clYellow
      StyleDisabled.TextColor = clBlack
      TabOrder = 1
      Width = 106
    end
    object cxLabel3: TcxLabel
      Left = 330
      Top = 18
      Caption = #30005#35805
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 516
      Top = 18
      Caption = #25903#20184#24615#36136
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 58
      Top = 53
      Caption = #22791#27880
      Transparent = True
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 100
      Top = 51
      DataBinding.DataField = #22791#27880
      DataBinding.DataSource = DataSource1
      Enabled = False
      StyleDisabled.Color = clYellow
      StyleDisabled.TextColor = clBlack
      TabOrder = 3
      Width = 376
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 590
      Top = 16
      DataBinding.DataField = #25903#20184#24615#36136
      DataBinding.DataSource = DataSource1
      Enabled = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        #36170#36141
        #29616#36141)
      StyleDisabled.Color = clYellow
      StyleDisabled.TextColor = clBlack
      TabOrder = 2
      Width = 98
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 177
    Width = 722
    Height = 323
    Align = alClient
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1DBColumn1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Width = 232
      end
      object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #30005#35805
        Width = 117
      end
      object cxGrid1DBTableView1DBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #25903#20184#24615#36136
        Width = 78
      end
      object cxGrid1DBTableView1DBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #22791#27880
        Width = 113
      end
      object cxGrid1DBTableView1DBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #26159#21542#20316#24223
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Width = 70
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxLabel10: TcxLabel
    Left = 7
    Top = 16
    Caption = #20379#24212#21830#35774#32622
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
  object cxButton3: TcxButton
    Left = 382
    Top = 11
    Width = 50
    Height = 58
    Action = Action_new
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
  object cxButton4: TcxButton
    Left = 438
    Top = 11
    Width = 50
    Height = 58
    Action = Action_edit
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
  object cxButton6: TcxButton
    Left = 494
    Top = 11
    Width = 50
    Height = 58
    Action = Action_save
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
  object cxButton5: TcxButton
    Left = 550
    Top = 11
    Width = 50
    Height = 58
    Action = Action_cancel
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
  object cxButton7: TcxButton
    Left = 662
    Top = 11
    Width = 50
    Height = 58
    Action = Action_close
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
  object cxButton1: TcxButton
    Left = 606
    Top = 11
    Width = 50
    Height = 58
    Action = Action_zf
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
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Action_new
            Caption = #26032#22686'(&N)'
            ImageIndex = 17
            ShortCut = 16462
          end
          item
            Action = Action_edit
            Caption = #20462#25913'(&E)'
            ImageIndex = 10
            ShortCut = 16453
          end
          item
            Action = Action_save
            Caption = #20445#23384'(&S)'
            ImageIndex = 31
            ShortCut = 16467
          end
          item
            Action = Action_cancel
            Caption = #21462#28040'(&Z)'
            ImageIndex = 59
            ShortCut = 16474
          end
          item
            Action = Action_zf
            Caption = #20316#24223'(&D)'
            ImageIndex = 44
            ShortCut = 16465
          end
          item
            Action = Action_close
            Caption = #36820#22238'(&Q)'
            ImageIndex = 6
            ShortCut = 16452
          end>
      end>
    LargeImages = DataModule1.cxImageList32
    Images = DataModule1.cxImageList32
    Left = 248
    Top = 112
    StyleName = 'Platform Default'
    object Action_new: TAction
      Caption = #26032#22686
      ImageIndex = 17
      ShortCut = 16462
      OnExecute = Action_newExecute
    end
    object Action_edit: TAction
      Caption = #20462#25913
      ImageIndex = 10
      ShortCut = 16453
      OnExecute = Action_editExecute
    end
    object Action_save: TAction
      Caption = #20445#23384
      Enabled = False
      ImageIndex = 31
      ShortCut = 16467
      OnExecute = Action_saveExecute
    end
    object Action_cancel: TAction
      Caption = #21462#28040
      Enabled = False
      ImageIndex = 59
      ShortCut = 16474
      OnExecute = Action_cancelExecute
    end
    object Action_close: TAction
      Caption = #36820#22238
      ImageIndex = 6
      ShortCut = 16452
      OnExecute = Action_closeExecute
    end
    object Action_zf: TAction
      Caption = #20316#24223
      ImageIndex = 44
      ShortCut = 16465
      OnExecute = Action_zfExecute
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM  '#20379#24212#21830#34920)
    Left = 136
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 240
    Top = 24
  end
end
