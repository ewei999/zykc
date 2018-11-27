object Form_JingJieLiang: TForm_JingJieLiang
  Left = 0
  Top = 0
  Caption = #24120#22791#33647#21697#31649#29702
  ClientHeight = 651
  ClientWidth = 932
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object img1: TImage
    Left = 0
    Top = 0
    Width = 932
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
    ExplicitLeft = -314
    ExplicitWidth = 1155
  end
  object cxlbl1: TcxLabel
    Left = 7
    Top = 16
    Caption = #24120#22791#33647#21697#31649#29702
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
    Left = 865
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
    ExplicitLeft = 774
  end
  object cxButton1: TcxButton
    Left = 696
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
    ExplicitLeft = 605
  end
  object cxButton2: TcxButton
    Left = 752
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
    ExplicitLeft = 661
  end
  object cxButton3: TcxButton
    Left = 809
    Top = 11
    Width = 50
    Height = 58
    Align = alCustom
    Action = act3
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
    ExplicitLeft = 718
  end
  object cxGrid14: TcxGrid
    Left = 0
    Top = 80
    Width = 932
    Height = 571
    Align = alClient
    TabOrder = 5
    LookAndFeel.SkinName = 'Blue'
    ExplicitLeft = -228
    ExplicitTop = -121
    ExplicitWidth = 1069
    ExplicitHeight = 680
    object cxGridDBTableView11: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_leibiao
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
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGridDBColumn38: TcxGridDBColumn
        DataBinding.FieldName = #21517#31216
        Options.Editing = False
        Width = 150
      end
      object cxGridDBColumn51: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        Options.Editing = False
        Width = 50
      end
      object cxGridDBColumn44: TcxGridDBColumn
        DataBinding.FieldName = #23567#31867
        Options.Editing = False
        Width = 50
      end
      object cxGridDBColumn53: TcxGridDBColumn
        DataBinding.FieldName = #35268#26684
        Options.Editing = False
        Width = 60
      end
      object cxGridDBColumn54: TcxGridDBColumn
        DataBinding.FieldName = #21253#35013#35268#26684
        Options.Editing = False
        Width = 60
      end
      object cxGridDBColumn52: TcxGridDBColumn
        DataBinding.FieldName = #21333#20215
        Options.Editing = False
        Width = 70
      end
      object cxGridDBTableView11Column1: TcxGridDBColumn
        DataBinding.FieldName = #20379#24212#21830
        Options.Editing = False
        Width = 70
      end
      object cxGridDBTableView11Column2: TcxGridDBColumn
        DataBinding.FieldName = #35686#25106#37327
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '[0-9]+'
        Properties.MaxLength = 0
        Width = 70
      end
    end
    object cxGridLevel11: TcxGridLevel
      GridView = cxGridDBTableView11
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
    Left = 416
    Top = 248
    StyleName = 'Platform Default'
    object act_close: TAction
      Caption = #36820#22238
      ImageIndex = 6
      OnExecute = act_closeExecute
    end
    object act1: TAction
      Caption = #26032#22686
      ImageIndex = 17
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = #20445#23384
      ImageIndex = 11
      OnExecute = act2Execute
    end
    object act3: TAction
      Caption = #21024#38500
      ImageIndex = 27
      OnExecute = act3Execute
    end
  end
  object ds_leibiao: TDataSource
    DataSet = qry_leibiao
    Left = 192
    Top = 224
  end
  object qry_leibiao: TADOQuery
    Connection = DataModule1.ADOCon_ALi
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from '#27425#21345#35774#32622#34920)
    Left = 264
    Top = 216
  end
end
