object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Draw Test'
  ClientHeight = 931
  ClientWidth = 1023
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NotebookTab_Main: TTabbedNotebook
    Left = 0
    Top = 124
    Width = 1023
    Height = 652
    Align = alClient
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    TabOrder = 0
    OnClick = NotebookTab_MainClick
    ExplicitLeft = 80
    ExplicitTop = 160
    ExplicitWidth = 689
    ExplicitHeight = 521
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Default'
      ExplicitWidth = 292
      ExplicitHeight = 222
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1023
    Height = 124
    BarManager = BarMgr
    ColorSchemeName = 'DevExpressDarkStyle'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    ExplicitWidth = 957
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          ToolbarName = 'BarMgrBar1'
        end
        item
          ToolbarName = 'BarMgrBar2'
        end>
      Index = 0
    end
  end
  object memo: TAdvMemo
    Left = 0
    Top = 776
    Width = 1023
    Height = 155
    Cursor = crIBeam
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    Align = alBottom
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -11
    AutoCompletion.Font.Name = 'Tahoma'
    AutoCompletion.Font.Style = []
    AutoCompletion.StartToken = '(.'
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BookmarkGlyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
      2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
      2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
      B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
      B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
      BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
      BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
      BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
      25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    BorderStyle = bsSingle
    ClipboardFormats = [cfText]
    CodeFolding.Enabled = False
    CodeFolding.LineColor = clGray
    Ctl3D = False
    DelErase = True
    EnhancedHomeKey = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -13
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'COURIER NEW'
    Font.Style = []
    HiddenCaret = False
    Lines.Strings = (
      '')
    MarkerList.UseDefaultMarkerImageIndex = False
    MarkerList.DefaultMarkerImageIndex = -1
    MarkerList.ImageTransparentColor = -1
    OleDropTarget = []
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clWhite
    SelBkColor = clNavy
    ShowRightMargin = True
    SmartTabs = False
    TabOrder = 6
    TabStop = True
    TrimTrailingSpaces = False
    UILanguage.ScrollHint = 'Row'
    UILanguage.Undo = 'Undo'
    UILanguage.Redo = 'Redo'
    UILanguage.Copy = 'Copy'
    UILanguage.Cut = 'Cut'
    UILanguage.Paste = 'Paste'
    UILanguage.Delete = 'Delete'
    UILanguage.SelectAll = 'Select All'
    UrlStyle.TextColor = clBlue
    UrlStyle.BkColor = clWhite
    UrlStyle.Style = [fsUnderline]
    UseStyler = True
    Version = '3.4.1.0'
    WordWrap = wwNone
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 816
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      Caption = 'Test'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1057
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_New'
        end
        item
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          Visible = True
          ItemName = 'btn_Test'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMgrBar2: TdxBar
      Caption = 'Draw'
      CaptionButtons = <>
      DockedLeft = 190
      DockedTop = 0
      FloatLeft = 1057
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_New: TdxBarLargeButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      OnClick = btn_NewClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0002000000040000000A0000000F00000011000000110000000F0000000A0000
        0005000000010000000000000000000000000000000000000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000090000
        0011170C073D532D1897804626D293502AEB914F2AE97F4525D1522C17961209
        05340000000B0000000200000000000000000000000000000000000000000000
        000000000002000000070000000F00000016000000190000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001C0000001F0201012B5931
        1BA2A86239FBC58957FFD6A36DFFDDAF75FFDDAF74FFD6A46BFFC58956FFA461
        37F63B2112770000001100000003000000000000000000000000000000000000
        0001000000040000000F78554AC1A57666FFA57565FFA57465FFA57464FFA374
        63FFA47363FFA37362FFA37262FFA27162FFAE8376FFBDA299FFAD7556FFBC7C
        4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B782FFDEAF74FFDBAB
        72FFBD7E4EFF6F3F24B600000011000000020000000000000000000000000000
        00010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F4FFFBF7
        F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFF3F0EEFFC59E87FFBE8053FFE0B3
        7CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC8859FFDFB279FFDFB2
        77FFDEB077FFC08253FF55321D920000000A0000000100000000000000000000
        00010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6ECE6FFF6EC
        E5FFF4EBE5FFF4EBE5FFF4EBE4FFF4ECE7FFE2D4CCFFB5754BFFDFB27DFFDFB2
        7AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB7245FFE2B67EFFE0B4
        7CFFE0B47BFFDEB079FFB3734AFB130B072F0000000300000000000000000000
        00010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6ECE6FFF4ED
        E6FFF4ECE6FFF4ECE6FFF6ECE5FFF2EDE7FFC9A28BFFCD9B6FFFE2B780FFE5BD
        89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA7144FFE8C494FFE8C3
        93FFE5BF8CFFE1B77FFFD09C6EFF5434218B0000000800000000000000000000
        00010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7EDE9FFF6ED
        E8FFF6EDE6FFF6EDE6FFF6ECE6FFF3EDE9FFBF8968FFDCB383FFE3B781FFBA86
        59FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD7547FFB0784AFFB17A
        4BFFC29162FFE4B983FFDEB17EFF8E5B3BD00000000C00000000000000000000
        00000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EFE9FFF7EF
        E9FFF7EFE8FFF6EDE8FFF6EDE8FFF2EEEAFFBC8058FFE3BF8FFFE4BB84FFA56B
        3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7F4FFFAF7F3FFFAF6
        F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEE0000000D00000000000000000000
        00000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0E9FFF6EF
        E9FFF7EFE9FFF7EFE8FFF7EFE9FFF3EFECFFC18861FFE9C9A0FFE5BE89FFA56B
        3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADFD9FFE6DAD4FFE9DE
        D9FFAA7144FFE7C08CFFEACA9DFFAE764FEE0000000D00000000000000000000
        00000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0EBFFF7F0
        EBFFF7F0EAFFF7F0EAFFF7F0E9FFF5F0EDFFC89876FFE9CDACFFEAC796FFB784
        56FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B3FFFA56B3FFFA56B
        3FFFB78457FFEACA99FFEBD1ADFF996A49D40000000A00000000000000000000
        00000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1EBFFF7F1
        EBFFF7F1EBFFF7F0EBFFF8F0EAFFF6F1EDFFD5B39AFFDDBB9DFFEED3A9FFEECF
        A2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B3FFFF1D6AAFFF0D5
        A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F0000000600000000000000000000
        00000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2ECFFF8F1
        ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F2EDFFEDE2DAFFCA976FFFF5E8CCFFEFD6
        ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B3FFFF3DCB2FFF1DB
        B0FFF1D8ADFFF7EACDFFC69470FA1A120D2E0000000200000000000000000000
        0000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF7F3EFFFDBBCA4FFD7B08CFFF8EF
        D3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A5FFFF4E1B9FFF4E2
        BDFFFAF1D5FFD9B390FF664B368C000000060000000000000000000000000000
        0000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3EFFFF8F2
        EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF8F2EEFFF6F2EFFFD6B192FFD9B3
        8FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7ECCAFFF8EED0FFF4E8
        CDFFD7AF8BFF88664BB40202010C000000010000000000000000000000000000
        0000000000030000000DB78E7FFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3F1FFF9F3
        F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF8F2EFFFF7F2EFFFDEC1
        ABFFD2A37AFFE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8B9FFE3C5A3FFD0A3
        7CFF4C392A720000000B00000001000000000000000000000000000000000000
        0000000000030000000CB98F80FFFFFEFEFFFAF4F1FFFAF6F1FFFAF4F1FFF9F4
        F1FFF9F3F1FFF9F3F0FFF9F3EFFFF9F3EFFFF9F3EFFFF8F2EFFFF9F3F0FFF8F4
        F2FFF0E7DEFFE1C7B0FFD6AF90FFD2A57EFFD2A680FFD5AF90FFDFC6B0FFD0B8
        ADFF000000150000000500000000000000000000000000000000000000000000
        0000000000030000000BBB9182FFFFFEFEFFFAF6F3FFF9F6F2FFF9F6F2FFF9F4
        F1FFF9F4F1FFFAF4F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F2
        EFFFF9F4EFFFF9F4F0FFF8F4F1FFF7F4F1FFF7F4F1FFF6F1EEFFF7F4F3FFBC97
        8AFF000000110000000400000000000000000000000000000000000000000000
        0000000000030000000BBC9384FFFFFEFEFFFAF7F3FFFBF7F3FFFAF6F2FFFAF7
        F2FFFAF6F2FFFAF6F2FFFAF4F1FFF9F4F1FFF9F4F0FFF9F3F1FFF9F4F0FFF9F3
        F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1EEFFB385
        76FF000000100000000400000000000000000000000000000000000000000000
        0000000000020000000ABD9685FFFFFFFEFFFBF8F4FFFAF7F4FFFAF7F3FFFAF7
        F3FFFAF7F3FFFAF6F3FFF9F6F2FFFAF6F2FFFAF6F2FFFAF6F1FFF9F4F1FFF8F3
        F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3ECE9FFB389
        78FF0000000F0000000400000000000000000000000000000000000000000000
        00000000000200000009BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7F6FFFAF7
        F4FFFAF7F3FFFAF7F3FFFAF7F3FFFAF6F3FFFAF6F2FFF9F6F3FFFAF6F2FFF8F2
        EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1DDFFB589
        7AFF0000000E0000000400000000000000000000000000000000000000000000
        00000000000200000008C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8F6FFFBF8
        F6FFFAF8F4FFFBF7F4FFFAF7F4FFFBF7F4FFFAF7F4FFF9F5F2FFF9F5F1FFF5EE
        E9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8C2FFB78C
        7DFF0000000D0000000300000000000000000000000000000000000000000000
        00000000000200000007C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFFDF9
        F6FFFBF8F6FFFAF8F6FFFBF8F6FFFBF8F4FFFAF7F4FFFBF7F4FFF8F2EFFFEFE6
        DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5ACFFB78C
        7DFF0000000A0000000300000000000000000000000000000000000000000000
        00000000000200000007C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9F7FFFBFA
        F7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2EFFFECDF
        DAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAFA6FF4C35
        2D86000000060000000200000000000000000000000000000000000000000000
        00000000000100000006C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9F8FFFDFA
        F8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1EDFFEBDF
        DBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F3830860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000005C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFBF9FFFDFA
        F9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0ECFFECE1
        DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B3386000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
        F9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5EDEBFFEBE1
        DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F368500000007000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFDFBFFFEFB
        FAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EBE7FFEDE1
        DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A840000000600000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2ECE9FFEEE3
        E0FFE4D2CBFFDBC5BDFF5A453E83000000050000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F91FFC69F
        92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E8EFFC39D
        8EFFC39D8EFF5D48418200000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000020000000200000003000000030000
        0003000000030000000300000003000000030000000400000004000000040000
        0004000000040000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object btn_Test: TdxBarLargeButton
      Caption = 'Test'
      Category = 0
      Hint = 'Test'
      Visible = ivAlways
      OnClick = btn_TestClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E0000001707140E4D133324951D4E38D11D513BD9246448FF246448FF1E51
        3BD91C4E38D11233249607140F4F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000150C21
        176B1F563FE1257151FF278963FF299D72FF2AA176FF2BB07FFF2BAF80FF2AA2
        76FF2A9E72FF278964FF267151FF20573FE20C21186D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D040C09361C503ACF2678
        56FF2AA074FF2CB180FF2BB180FF2CB081FF2CB081FF2CB180FF2CB181FF2CB1
        80FF2CB080FF2CB081FF2CB180FF2AA074FF277957FF1D5039D1040C093A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E09191255236248F029946BFF2CB1
        81FF2CB181FF2CB181FF2CB282FF2CB282FF2CB282FF2CB282FF2DB282FF2DB2
        82FF2CB182FF2CB281FF2CB181FF2CB181FF2CB181FF29956CFF246248F10919
        135A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C09191253256C4EFA2A9F74FF2CB181FF2DB1
        82FF2CB283FF2DB283FF2DB283FF2EB283FF2EB284FF2EB384FF2EB383FF2EB3
        84FF2EB384FF2EB283FF2EB383FF2EB383FF2DB282FF2DB182FF2A9F74FF256D
        4FFA091A12590000001000000005000000010000000000000000000000000000
        00000000000200000009050F0B38246549EE2EA47AFF2EB383FF2DB283FF2EB3
        83FF2EB384FF2EB385FF2EB484FF51C7A2FF60CFAEFF37B98DFF2EB485FF2FB5
        85FF2FB485FF2EB485FF2EB485FF2EB384FF2EB383FF2EB384FF2FB384FF2FA5
        7AFF23644AEF050F0B3E0000000C000000030000000100000000000000000000
        000100000005000000101D513BCB2E9770FF30B385FF2EB384FF2EB484FF2EB4
        85FF2FB586FF2FB586FF50C6A1FF32916EFF1E7652FF4AB995FF30B587FF31B6
        87FF30B686FF30B587FF30B587FF2FB586FF2EB486FF2EB485FF2EB485FF30B4
        86FF2E9871FF1D533CD000000016000000070000000100000000000000000000
        00020000000A0C231A652D7D5CFF34B689FF2EB384FF2EB485FF2FB586FF30B5
        86FF31B688FF4EC59FFF389774FF7CAE9AFFA2C4B6FF2F8C6AFF41BF95FF32B7
        89FF32B789FF31B688FF31B689FF31B688FF30B588FF30B686FF2FB486FF2EB4
        85FF34B68AFF2D7E5EFF0D241A6B0000000E0000000300000001000000010000
        00040000000F205B43DD32A67DFF30B587FF2FB586FF30B587FF31B688FF31B7
        88FF4BC49DFF3E9F7CFF6BA28BFFF9F5F1FFF5EFEAFF45896CFF4CB491FF35BB
        8DFF34B98BFF34B98AFF33B98AFF32B989FF32B789FF32B688FF31B688FF30B5
        87FF31B688FF33A77DFF215E44DF000000160000000700000001000000020000
        0007091B144E308061FF37B98BFF30B587FF30B688FF31B688FF33B78AFF48C4
        9BFF46A786FF5A967DFFF6F4F0FFF3E8DFFFF3E8DFFFC8D9D0FF247A58FF4FC5
        9EFF35BB8DFF35BB8DFF34BA8CFF34BA8BFF34BA8BFF33B98AFF32B989FF31B7
        88FF31B688FF37B98CFF308162FF0A1D15570000000B00000002000000020000
        0009153B2B923A9B78FF35B98BFF32B788FF32B989FF33B98BFF46C39AFF4CAF
        8EFF4A8A6FFFF4F4F1FFF4EAE2FFF4E9E0FFF3E8E0FFF7EDE7FF699D87FF409D
        7CFF3FC094FF37BC8FFF37BC8EFF36BB8EFF36BB8DFF35BA8DFF34BA8BFF34B9
        8BFF32B78AFF36BA8CFF3B9C79FF153C2C980000000E00000003000000020000
        000B1E553FC63DAC86FF35B88CFF33B78AFF33B98BFF45C398FF54B797FF4084
        67FFEAEFEAFFF5EBE3FFF2E6DEFFEDDFD6FFF4E9E1FFF4E9E0FFE3E8E1FF2570
        50FF56C19EFF39BE91FF39BE90FF38BD90FF37BC8FFF37BC8EFF35BB8DFF35BB
        8CFF33B98BFF35B98DFF3EAD87FF1E5640CA0000001100000004000000030000
        000C256A4EEC3EB88EFF34BA8CFF35B98CFF3FBF94FF57BD9DFF347B5CFFE5EC
        E8FFF6EDE6FFF1E6DDFFCAC3B6FF9DAA97FFEFE3DCFFF4EAE2FFF6EBE5FF9DBD
        AFFF318464FF4FC8A2FF3ABF94FF3ABF92FF39BE91FF38BD90FF37BD8FFF36BB
        8EFF35BB8CFF35BB8CFF3FB98FFF256D50ED0000001300000005000000030000
        000C287455FA43C096FF35BA8BFF36BB8DFF37B488FF1F704EFFC9D0C8FFF7ED
        E7FFF1E5DEFFBEBCB0FF2E7354FF246F4EFFB5B7A8FFF1E6DFFFF4EAE3FFF6F1
        ECFF548B72FF4EAD8DFF42C49AFF3CC195FF3BC094FF3BBF92FF39BE90FF39BD
        90FF37BC8EFF35BB8DFF44C197FF287657FA0000001300000005000000030000
        000B287656FA4CC49BFF35BC8DFF37BC8EFF37BC8EFF24805CFF608A72FFE4D5
        CCFFB2B5A7FF2C7757FF3CBD96FF3BBB93FF2B7151FFC8C3B6FFF4E9E2FFF5EB
        E4FFE1E8E2FF2D7355FF5FCAABFF40C59AFF3EC197FF3CC195FF3BC094FF3ABF
        92FF38BD90FF38BC8EFF4EC59DFF297859FA0000001200000005000000020000
        000A267052EC55C39FFF39BD91FF38BE90FF3ABE92FF3CC096FF257E5BFF4A7C
        61FF2B7F5EFF41CBA3FF45D3ACFF46D3ADFF39B28DFF3C7457FFDACFC5FFF5EB
        E4FFF7EDE8FFADC7BAFF2E8061FF5ED8B7FF43CDA4FF40C99FFF3DC399FF3CBF
        94FF3ABF92FF3BBF92FF56C5A0FF277256ED0000001100000004000000020000
        0008205D46C559BD9DFF3DC094FF3CC296FF43CDA6FF45D2ACFF44CEA8FF319D
        7AFF46D2ACFF48D5B0FF49D5B0FF49D5B0FF49D5B1FF34A481FF4C7B60FFE0D2
        CAFFF5ECE5FFF9F3EFFF699882FF459D7FFF57D6B3FF44CFA6FF43CDA4FF41C8
        A0FF3DC196FF3FC196FF5BBF9FFF205F47C80000000E00000003000000010000
        00061643328F58B194FF49CDA6FF47D2ACFF48D3AEFF49D5AFFF49D5B0FF4AD7
        B2FF4BD7B2FF4CD8B4FF4DD7B4FF4DD8B4FF4CD8B4FF4DD7B4FF329B78FF4B7B
        61FFDFD2C9FFF6EBE5FFEFF0ECFF468066FF58B699FF55D6B1FF45CFA7FF45CE
        A5FF43CAA3FF48C9A2FF58B295FF174433940000000B00000003000000010000
        00040B201848409E80FF63DEC0FF4BD4B1FF4CD7B2FF4DD7B3FF4ED7B4FF4FD8
        B4FF4FD9B7FF50DAB7FF50DAB7FF51DAB8FF51DAB7FF50DAB7FF51D9B7FF38A6
        84FF47795EFFDDD0C7FFF6ECE7FFF0F2EFFF478368FF61C1A5FF56D5B3FF47CF
        A8FF46CDA6FF62D8B8FF409C7DFF0B20184E0000000700000002000000000000
        0002000000072D7D62DA6CD4BBFF55D9B7FF51D8B5FF51D9B6FF53DAB8FF53DB
        BAFF54DCB9FF55DBBAFF55DCBBFF56DCBBFF55DCBAFF56DDBBFF56DDBAFF55DC
        BAFF40B090FF487A60FFD9CCC4FFF3E9E3FFEDF1EDFF4B876DFF67C7ACFF57D6
        B3FF4ED2ADFF6ECFB6FF29785DDC0000000E0000000400000001000000000000
        0001000000041231275B48A98CFF72E5CAFF56DBB9FF56DBBAFF58DCBCFF58DC
        BCFF59DDBDFF59DEBDFF5ADFBEFF5ADFBFFF5BDFBFFF5ADFBEFF5ADFBEFF59DE
        BDFF59DDBCFF47BB9AFF367559FFBAB9ADFFECDFD8FFDDDFDAFF237150FF45BA
        96FF70DFC3FF46A487FF10302561000000080000000200000000000000000000
        000000000002000000062B765EC66CCEB6FF6AE3C6FF5CDDBDFF5DDEBFFF5EDE
        C0FF5EDFC0FF5FE1C2FF60E1C2FF5FE1C2FF60E1C2FF5FE0C2FF5EE1C1FF5EE0
        C1FF5DDFBFFF5CDFBEFF55CFAFFF2E8464FF72937DFF8FA392FF2D8463FF63D8
        B9FF6DCBB1FF287259C80000000C000000040000000100000000000000000000
        00000000000100000003081410283B9679EC7EDFCBFF6FE4C9FF63E0C3FF63E0
        C3FF64E1C4FF65E2C4FF64E3C5FF64E3C5FF64E3C5FF65E3C5FF64E2C5FF63E2
        C4FF63E2C3FF61E0C1FF5FDFBFFF5EDEBDFF48B797FF2A8362FF61D2B5FF80DB
        C6FF379274ED07140F2D00000006000000020000000000000000000000000000
        00000000000000000001000000041028204644A689F982DFCBFF7EEAD3FF69E2
        C6FF69E3C7FF6AE4C7FF6AE4C8FF6AE5C9FF6AE4C8FF6AE4C8FF6AE4C8FF69E4
        C7FF68E3C6FF66E2C4FF64E0C2FF62DFC1FF61DDBEFF7AE5CDFF82DCC7FF40A2
        83FA0E271F4A0000000700000002000000000000000000000000000000000000
        000000000000000000000000000100000004102921453F9E81EE77D5BEFF93F1
        DFFF7BE9D1FF6FE5CAFF6FE6CBFF70E6CBFF70E6CBFF6FE7CCFF6EE6CBFF6DE6
        CAFF6CE4C8FF6BE3C6FF69E2C5FF75E5CBFF92EEDAFF75D2BAFF3B9B7CEE0F28
        204A000000070000000200000001000000000000000000000000000000000000
        000000000000000000000000000000000001000000030814102335856DC85ABF
        A3FF8BE4D2FF9DF4E5FF8DEFDCFF82EBD5FF7EEBD4FF75E8CFFF74E8CEFF7DEA
        D2FF7FEAD3FF8CEDDAFF9DF2E2FF8BE4D0FF58BEA1FF318469CA071410280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000051738
        2E563D987CDA54BD9EFF75D4BCFF8EE6D3FF94EAD9FFA7F5E8FFA7F5E8FF95EA
        D9FF8DE6D3FF73D3BAFF52BB9CFF399679DA16392E5B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000040D201A32255A4A82388D73C53B957ACE49B896FC49BA98FC3A95
        7ACF378D74C6235A4A840C201A34000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
      OnClick = btn_DeleteClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E0000001706031B4D0F084595180B69D11A0B6FD91E0E87FF1E0D87FF180A
        6ED9170968D10F06449606021B4F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000150B06
        2E6B1C0F76E11F148FFF1C199AFF1A1EA4FF1A1FA5FF1823ACFF1822ACFF191E
        A5FF1A1DA3FF1B1899FF1D118DFF1A0C75E20A052C6D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D040311361C0F6ECF2119
        96FF1D21A8FF1C27B2FF1E2AB4FF202DBAFF212DBAFF232FBDFF232FBCFF202D
        B9FF202CB9FF1E2AB6FF1B26B0FF1B1FA5FF1E1492FF180B6AD10402103A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E0A062455241788F02022A5FF202B
        B5FF2231BBFF2432BDFF2533BDFF2533BDFF2533BEFF2533BEFF2433BEFF2532
        BEFF2432BEFF2433BDFF2532BDFF222EBAFF1E2AB3FF1E1EA1FF1D1181F10804
        225A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C0A072553281C93FA2329ADFF2532BCFF2735
        BFFF2735C1FF2836BFFF2836C1FF2836C0FF2836C2FF2836C0FF2836C0FF2836
        C0FF2736C0FF2736C0FF2736BFFF2635BFFF2635BEFF2230BAFF1F25A9FF2114
        8BFA080523590000001000000005000000010000000000000000000000000000
        0000000000020000000906041638281E8CEE262FB2FF2935C0FF2A38C1FF2B38
        C2FF2A39C3FF2B39C2FF2A3AC2FF2B3AC3FF2C3AC3FF2C3AC3FF2C3AC3FF2B3A
        C3FF2B39C3FF2B3AC3FF2939C2FF2A38C2FF2938C2FF2837C0FF2634BFFF2228
        AEFF211585EF0503143E0000000C000000030000000100000000000000000000
        00010000000500000010241B77CB2B2EAFFF2C3BC2FF2D3BC4FF2E3DC4FF2D3D
        C4FF3140C5FF4556CFFF4F5ED2FF4454CEFF303FC7FF2F3EC5FF2F3EC5FF303F
        C6FF4453CEFF4D5DD3FF4555CFFF303FC5FF2C3CC3FF2D3BC4FF2B3AC3FF2A38
        C1FF2526A8FF1D1270D000000016000000070000000100000000000000000000
        00020000000A110D3465312BA5FF3040C4FF2F3FC5FF2F40C6FF3041C6FF3344
        C7FF4B5ACFFF434ABBFF3D41B2FF444CBDFF4A5AD0FF3344C8FF3344C9FF495A
        D1FF4249BAFF393BACFF3E44B6FF4958CDFF3343C7FF2F3FC5FF2E3EC5FF2E3D
        C5FF2E3CC2FF29219AFF0D08306B0000000E0000000300000001000000010000
        00040000000F2C2489DD323BBBFF3344C8FF3243C8FF3244C8FF3444C9FF4B5A
        CFFF4046B6FF9597D4FFE8E8F6FF8081CBFF4147B8FF4D5ED3FF4D5FD3FF3E45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4959CEFF3244C7FF3142C7FF3041
        C7FF3243C7FF2C35B6FF24187EDF000000160000000700000001000000020000
        00070E0C294E3A36ACFF3A4AC9FF3546C9FF3646CAFF3648C9FF3748CBFF4349
        B9FF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C41B3FF3648C9FF3546CAFF3445
        C9FF3344C8FF3747C7FF2F29A1FF0B0827570000000B00000002000000020000
        00091F1A59924044BBFF3E4ECCFF384ACCFF394CCBFF3A4CCCFF3B4DCCFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF3A4CCCFF384BCBFF384A
        CAFF3748CAFF3A4CCBFF373AB2FF181252980000000E00000003000000020000
        000B2F2882C6444FC7FF3D50CEFF3C4ECDFF3C50CFFF3D50CFFF3D51CFFF3B43
        B8FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3E50CEFF3C4FCDFF3B4D
        CDFF3A4DCCFF3C4ECDFF3F48C0FF251D77CA0000001100000004000000030000
        000C3A36A2EC4958CEFF4052D0FF3F52D0FF4053D0FF4054D1FF4155D1FF4255
        D1FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4054CFFF4054D0FF3F52D0FF3E52
        CFFF3D50CFFF3E50CFFF4554CBFF2F2694ED0000001300000005000000030000
        000C423CAFFA5061D5FF4154D1FF4256D1FF4356D2FF4357D2FF4458D3FF4559
        D3FF465AD2FF3E43B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB1FF4559D1FF4459D3FF4358D2FF4357D2FF4256
        D1FF4054D0FF3F53D0FF4C60D3FF362CA0FA0000001300000005000000030000
        000B4541B1FA5B6DDAFF4557D3FF4559D3FF465AD4FF465BD4FF475CD4FF4A5F
        D5FF687ADDFF464BB6FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3F43B1FF6578DCFF4A5ED5FF475BD4FF465AD4FF4559
        D3FF4357D2FF4356D1FF576BD8FF3830A4FA0000001200000005000000020000
        000A433FABEC6576DAFF485ED5FF475CD5FF485DD5FF5468D9FF687BDDFF8496
        E5FF5255BAFF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF4549B2FF7789E0FF5D70DBFF5063D8FF485D
        D5FF465BD4FF475BD4FF6372D8FF38309DED0000001100000004000000020000
        000839378FC56F7DDAFF4E63D9FF5167D8FF7084E1FF7C8FE4FF7D90E4FF5A5F
        BFFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4D51B6FF6B7FDFFF687CDEFF5F73
        DBFF4E62D6FF4D62D7FF6A77D5FF302B84C80000000E00000003000000010000
        00062A28668F747DD6FF6F83E1FF8092E4FF8295E5FF8295E5FF8295E6FF3A3B
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6F84E2FF6E81E0FF6B7F
        DFFF677BDEFF6376DDFF6C73CFFF23205F940000000B00000003000000010000
        0004151430486F72D1FF9FB0EDFF8699E6FF879AE7FF879AE7FF889BE8FF4E53
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF494DB3FF484CB3FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4245B0FF7589E2FF7287E2FF7083
        E2FF6C80E0FF889BE8FF5F5FC4FF11102D4E0000000700000002000000000000
        0002000000075757AEDAA8B5EBFF90A3E9FF8D9FE9FF8EA0E9FF8EA0E9FF8696
        E4FF4649B0FF7E75ADFFC3B1B7FF6D66ABFF4A4FB4FF8799E6FF8698E6FF474C
        B1FF6B64A9FFC2B0B6FF796FAAFF3A3CA8FF7587DEFF7A8EE5FF778BE3FF7489
        E3FF768AE3FF99A5E5FF4643A0DC0000000E0000000400000001000000000000
        0001000000042324455B7E82D9FFB0C1F2FF92A5EAFF93A5EBFF93A5EBFF93A5
        EBFF8A9AE4FF4F54B6FF3534A2FF565CBBFF8D9FE8FF8FA2EBFF8EA1EAFF899C
        E7FF5157B9FF2E2C9CFF454AB0FF7C8EE1FF8295E7FF7F92E6FF7C90E5FF798D
        E5FF9EB0EDFF6C6ECBFF1C1B4061000000080000000200000000000000000000
        000000000002000000065455A2C6A8B2E9FFA8B9F0FF97AAECFF98AAECFF98AA
        ECFF98AAECFF97AAECFF97A9ECFF96A9ECFF95A8ECFF94A7ECFF93A6EBFF91A4
        EBFF8FA3EAFF8DA0EAFF8B9FEAFF899CE9FF859AE8FF8397E8FF8194E6FF93A5
        EBFF9CA5E3FF464497C80000000C000000040000000100000000000000000000
        000000000001000000030F0F1C286B6EC5ECBDCAF2FFACBEF1FF9DAFEDFF9DAF
        EEFF9DAFEDFF9DAFEDFF9BAEEDFF9AADEDFF9AACEDFF99ABEDFF97AAEDFF96A9
        ECFF94A7ECFF91A5EBFF8FA3EAFF8CA0EAFF8A9EEAFF879BE9FF99ACEDFFB2C0
        EEFF5C5CBBED0C0C1A2D00000006000000020000000000000000000000000000
        00000000000000000001000000041D1D3646787BD5F9BFCBF2FFBCCCF5FFA1B4
        EFFFA1B3EFFFA1B3EFFFA0B3EEFF9FB1EFFF9EB1EFFF9DAFEEFF9BAEEEFF9AAD
        EEFF98ABEDFF95A9ECFF93A6ECFF90A4EBFF8EA1EAFFACBEF2FFB6C3EFFF696B
        CBFA1818324A0000000700000002000000000000000000000000000000000000
        0000000000000000000000000001000000041D1E36457074CBEEB0BAEEFFD0E0
        F9FFB5C6F3FFA5B7F0FFA5B7F0FFA3B6F0FFA3B5EFFFA1B4EFFF9FB2EFFF9EB0
        EEFF9CAEEEFF99ACEDFF97ABEDFFA6B9F0FFC7D8F7FFA8B1E9FF6466C4EE1A1A
        334A000000070000000200000001000000000000000000000000000000000000
        000000000000000000000000000000000001000000030E0F1A235E60AAC89196
        E4FFC4D0F4FFD7E7FBFFC7D7F7FFB8C8F4FFB3C4F3FFA6B8F0FFA4B7F0FFAFC0
        F2FFB1C2F2FFC0D1F6FFD2E3FAFFBFCCF2FF888EDEFF5556A6CA0D0D19280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000052728
        4656686CBCDA878CE1FFAAB2ECFFC4D1F4FFCAD6F6FFDDECFCFFDCECFCFFC8D5
        F5FFC1CEF3FFA5AEEAFF8085DEFF6163B7DA2526475B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        000300000004161728323E3F6E825F61A9C56366B2CE797EDBFC787CDAFC6064
        B1CF5C5EA9C63A3D6D8415162734000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 60
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 60
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 60
    end
  end
end
