object frmEnvironmentCharacteristic: TfrmEnvironmentCharacteristic
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Environment Characteristic'
  ClientHeight = 872
  ClientWidth = 1594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 1594
    Height = 872
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnlPlatform: TPanel
      Left = 5
      Top = 5
      Width = 332
      Height = 811
      Align = alLeft
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object pnlSelectedPlatform: TPanel
        Left = 1
        Top = 1
        Width = 330
        Height = 809
        Align = alClient
        Color = 2499101
        ParentBackground = False
        TabOrder = 0
        object grpSelectedPoint: TGroupBox
          Left = 9
          Top = 225
          Width = 313
          Height = 279
          Caption = 'Selected Sub Area  '
          Color = 2499101
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 12
            Top = 30
            Width = 60
            Height = 16
            Caption = 'Identifier :'
          end
          object Label8: TLabel
            Left = 12
            Top = 79
            Width = 53
            Height = 16
            Caption = 'Position :'
          end
          object Label11: TLabel
            Left = 12
            Top = 99
            Width = 32
            Height = 16
            Caption = 'Grid :'
          end
          object lblArea: TLabel
            Left = 100
            Top = 30
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblTLPosLat: TLabel
            Left = 76
            Top = 79
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblTLGridLat: TLabel
            Left = 76
            Top = 99
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblTLPosLong: TLabel
            Left = 165
            Top = 79
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblTLGridLong: TLabel
            Left = 165
            Top = 99
            Width = 5
            Height = 16
            Caption = '-'
          end
          object Label5: TLabel
            Left = 12
            Top = 57
            Width = 69
            Height = 16
            Caption = 'Top - Left  :'
          end
          object Label13: TLabel
            Left = 12
            Top = 133
            Width = 95
            Height = 16
            Caption = 'Right - Bottom  :'
          end
          object Label6: TLabel
            Left = 12
            Top = 155
            Width = 53
            Height = 16
            Caption = 'Position :'
          end
          object Label14: TLabel
            Left = 12
            Top = 174
            Width = 32
            Height = 16
            Caption = 'Grid :'
          end
          object lblRBPosLat: TLabel
            Left = 76
            Top = 155
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblRBGridLat: TLabel
            Left = 76
            Top = 174
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblRBPosLong: TLabel
            Left = 165
            Top = 155
            Width = 5
            Height = 16
            Caption = '-'
          end
          object lblRBGridLong: TLabel
            Left = 165
            Top = 174
            Width = 5
            Height = 16
            Caption = '-'
          end
        end
        object grpSonarPrediction: TGroupBox
          Left = 10
          Top = 494
          Width = 312
          Height = 353
          Caption = 'Sonar Prediction  '
          TabOrder = 1
          Visible = False
          object Label12: TLabel
            Left = 16
            Top = 24
            Width = 44
            Height = 14
            Caption = 'Defaults'
          end
          object Label15: TLabel
            Left = 16
            Top = 70
            Width = 31
            Height = 14
            Caption = 'Sonar'
          end
          object Label16: TLabel
            Left = 12
            Top = 131
            Width = 69
            Height = 14
            Caption = 'Sonar Mode:'
          end
          object Label17: TLabel
            Left = 12
            Top = 158
            Width = 73
            Height = 14
            Caption = 'Sonar Depth:'
          end
          object Label18: TLabel
            Left = 12
            Top = 185
            Width = 115
            Height = 14
            Caption = 'Target Source Level:'
          end
          object Label19: TLabel
            Left = 12
            Top = 212
            Width = 118
            Height = 14
            Caption = 'Target Cross Section:'
          end
          object Label20: TLabel
            Left = 12
            Top = 239
            Width = 79
            Height = 14
            Caption = 'Target Depth:'
          end
          object Label21: TLabel
            Left = 12
            Top = 267
            Width = 96
            Height = 14
            Caption = 'Prediction Range:'
          end
          object Label22: TLabel
            Left = 222
            Top = 158
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object Label23: TLabel
            Left = 222
            Top = 185
            Width = 14
            Height = 14
            Caption = 'dB'
          end
          object Label24: TLabel
            Left = 222
            Top = 210
            Width = 34
            Height = 14
            Caption = 'dB m'#178
          end
          object Label25: TLabel
            Left = 222
            Top = 239
            Width = 23
            Height = 14
            Caption = 'feet'
          end
          object Label26: TLabel
            Left = 222
            Top = 266
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object edtDefaults: TEdit
            Left = 12
            Top = 43
            Width = 212
            Height = 22
            TabOrder = 0
            Text = '(None)'
          end
          object btnShowDefaultList: TButton
            Left = 230
            Top = 41
            Width = 26
            Height = 25
            Caption = '...'
            TabOrder = 1
            OnClick = btnShowDefaultListClick
          end
          object edtSonar: TEdit
            Left = 12
            Top = 89
            Width = 212
            Height = 22
            TabOrder = 2
            Text = '(None)'
          end
          object btnShowSonarList: TButton
            Left = 230
            Top = 89
            Width = 26
            Height = 22
            Caption = '...'
            TabOrder = 3
            OnClick = btnShowSonarListClick
          end
          object cbbSonarCategory: TComboBox
            Left = 160
            Top = 128
            Width = 56
            Height = 22
            ItemIndex = 0
            TabOrder = 4
            Text = 'Passive'
            Items.Strings = (
              'Passive'
              'Active')
          end
          object edtSonarDepth: TEdit
            Left = 160
            Top = 155
            Width = 56
            Height = 22
            TabOrder = 5
            OnKeyPress = edtSonarDepthKeyPress
            OnKeyUp = edtSonarDepthKeyUp
          end
          object edtTargetSourceLevel: TEdit
            Left = 160
            Top = 182
            Width = 56
            Height = 22
            TabOrder = 6
            OnKeyPress = edtTargetSourceLevelKeyPress
            OnKeyUp = edtTargetSourceLevelKeyUp
          end
          object edtTargetCrossSection: TEdit
            Left = 160
            Top = 209
            Width = 56
            Height = 22
            TabOrder = 7
            OnKeyPress = edtTargetCrossSectionKeyPress
            OnKeyUp = edtTargetCrossSectionKeyUp
          end
          object edtTargetDepth: TEdit
            Left = 160
            Top = 236
            Width = 56
            Height = 22
            TabOrder = 8
            OnKeyPress = edtTargetDepthKeyPress
            OnKeyUp = edtTargetDepthKeyUp
          end
          object edtPredictionRange: TEdit
            Left = 160
            Top = 263
            Width = 56
            Height = 22
            TabOrder = 9
            OnKeyPress = edtPredictionRangeKeyPress
            OnKeyUp = edtPredictionRangeKeyUp
          end
          object btnCalculate: TButton
            Left = 179
            Top = 314
            Width = 75
            Height = 25
            Caption = 'Calculation'
            TabOrder = 10
            OnClick = btnCalculateClick
          end
        end
        object GroupBox2: TGroupBox
          Left = 10
          Top = 9
          Width = 312
          Height = 196
          Caption = 'List of Sub Area  '
          Color = 2499101
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object btnNew: TImage
            Left = 223
            Top = 18
            Width = 20
            Height = 20
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
              001408060000008D891D0D000000097048597300000B1300000B1301009A9C18
              0000026A4944415478DAAD953F68144114C6DF9BDDBD3F09B923104BEDEC4410
              BDC38806924EAC2C040BB115A38D5A29588956A285C4229D8845888522248D82
              A2A06225582862139B9C67CC09975C2EBB3BE3F76677CCC6DB2827D9BBEF7666
              F6CDEFDE9BF9E68E8D31B49D17A7C037D00E48FF2F075A866A0EF8153A0A3573
              82236DF48ACC605603B805393143D023688F037E860E424BD92863340136C44C
              E7881440660AD01F6C13DA7495A117503D0B3C0C351C283611C933A5BC2B1EFB
              D7655C9BF83674512A54EC41CA012BD0B36CC9BF81B18941B499D9484FF97731
              F96C0A7C18EBE80425E5434CF8B2BF035B6B4DAA1486ED3203802CFC3B009E4F
              8133DA442759B2C3EB677789AAA51184722EF008525B5C5E6D500541528E0091
              C94D002FA5C0FB588ED3522E62A9D569DA585451C5C0D34DC0488775B4AB915E
              3F5EF4072A8AD93EC0C73164504FDAE6036EB3C99618EE842BED82577E02E002
              065E66819FDADDD6215F05B3A56070BC1F0322E3F7204CA0A239718A037E84C6
              2019DCDF1FD02C20F31A808FD11DCDAE612D36E12E742791E97066CA3EECD0EE
              B48D03C0AF371C1FB651FE3DA5FCB75896573D9B8280C550AF53D91FA47413E4
              760B9B7021ED3F00F4944AAC429DA84D812A1212E8DD14B10DBCD708E32E15FD
              B285C122B9B611A0ECF45AB44A05AF248ED8DA87D237949C146B6CF6A73079D2
              191B406B6C81CA11E4E4B46C0D74472F32A1F50C8EDE0D402FA7C0699C943362
              7A8F837F1EBD51E8FB9FBB8865D809F235E45240FB2A205F7803E42E59F4E759
              A0187302FAD6630B322132EE4A71780702CE718FFC7CCD437B1DF09D2C1714F7
              E3C1CCA5EC77131DE0EDFE0BF805E7984DE89D040AE60000000049454E44AE42
              6082}
            Proportional = True
            Stretch = True
            Transparent = True
            OnClick = btnAddPointClick
          end
          object btnEdit: TImage
            Left = 249
            Top = 18
            Width = 20
            Height = 20
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
              001408060000008D891D0D000000097048597300000B1300000B1301009A9C18
              000001444944415478DAADD53F2884611CC0F1E7F1374A069D4529190D32CAD5
              ED32D86439221994AC069D322A83E93A573697F10C9741492613560619243291
              3A25AFEFAFFB3D7A7374EFF3744F7DEAEEBD7BBEBDEFFBDC3DAF8DA2C8347358
              0D9E60001F72CCB3218176BC20E382B758C03D5A3D835FE8C33E465DF0129378
              0CBCD21E1C63C205AF318DBB84814EBD3D6EF4A38C71DF6037763088793CEBF1
              148E7C8372E38750C1B00666500D09B6611723C8631BA798D345F10AB660131B
              FAFE02CBFADDD7904BCE69D08D1273B2D6DACFD8B1C4C1DFB13DAC32A74AD0F8
              06737A99EE875EC41ADE658E6F701D5BB1D8011675454D48F01C697D7D8825BC
              99FF47C360413EC4155662AB191CEC45179E4C6D376934EA82B2394CE121C1E4
              BF869C80FC837E36871BCCEA19866C5F7286258CB9E099A96D41B28A211B6C87
              CE4DDB663F02BE014413A3D905E9CEC10000000049454E44AE426082}
            Proportional = True
            Stretch = True
            Transparent = True
            OnClick = btnEditCharacteristicClick
          end
          object btnDelete: TImage
            Left = 275
            Top = 18
            Width = 20
            Height = 20
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
              001408060000008D891D0D000000097048597300000B1300000B1301009A9C18
              000002544944415478DABD95BF6B136118C79FE7BD1F4DD2982601B33838E894
              A699AC541041C9E2541C04515C74A89B08F57F707113E9E0A093D0A54E0A4224
              C142C55210872EC1842A6D3C132364499ABB7B5FBFEFDD4582A4AD2DC5830FC9
              3DF73C9F7B9FF77DF3869552749C1747C20FE0249047F5805F607628FC06AE82
              D6D874CF0BDB300C94328FC938015E81C250580373E0A7BE57BD1EF1E62651B7
              4B9CC990BFB3137E2F95883B1D22C7219A9E268AC78913095D1F0755707E5478
              5149E9F4B6B648781ED9CBCB42D5EB52DCBD738DCE9C7D40AEAB05AFE5D2D223
              EA7458CDCF2B776D8D620B0BC4E9740AF5E5D19603A1EC769D41BD4E662EF7D0
              30CD7BD4EBF994CB9DE678DC0E1ADBDD25D56CD668624228CF5B7757566E59A5
              9214F9FC782146E150BF4F148B2D9265CD2286FE954B52BAA4A78ED90076B008
              AEDB51ADD67D4EA55C4A26F7102AE504AD115924C43332CD1C64462434284C16
              A08FD822A6A8C636FC42EC23C4FCE1CA62842DD56ED751D0A0542A8F674D4863
              788655A14BC82B2156C64BF5C80F1466207454B5FA9CB2D932CFCCDC46EC23D0
              855FC053E45D467EE530C2EF6AF5FD4B4A67AA5C28DC406C23DA6F0DF0185313
              0A2DEB30C25508D3FF497884961D55A9BCC01CBEE362F1EF397CF2EFC270DB64
              C9B61DB5BDBD4189C4679E9A9A4351034C0639CC379117AEF2812DFBBEBE4F62
              6FBD05A7827D27A517ED3FFAB30F7DFF3A3E3FED37C20BA01D94E8D860A00BCD
              B1A78F5212278F17C97464125446855FC115F063A4C80F7E7A7B9D7FCC223A07
              87C7D71B501C0AD7F569077C3ADA25A2979FE3E3FE0BF80D613175E8D7BFCE96
              0000000049454E44AE426082}
            Proportional = True
            Stretch = True
            Transparent = True
            OnClick = btnDeletePointClick
          end
          object lstSubEnvi: TListBox
            Left = 15
            Top = 42
            Width = 281
            Height = 137
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = lstSubEnviClick
          end
        end
      end
    end
    object pnlMap: TPanel
      Left = 345
      Top = 5
      Width = 1244
      Height = 811
      Align = alClient
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object pnlToolBar: TPanel
        Left = 1
        Top = 1
        Width = 1242
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        Color = 2499101
        ParentBackground = False
        TabOrder = 0
        object ToolBar1: TToolBar
          Left = 22
          Top = 0
          Width = 1220
          Height = 23
          Align = alClient
          ButtonHeight = 23
          ButtonWidth = 28
          Caption = 'ToolBar1'
          Color = 2499101
          Images = ImageList1
          ParentColor = False
          TabOrder = 0
          object btnDecreaseScale: TToolButton
            Left = 0
            Top = 0
            Hint = 'Decrease Scale'
            Caption = 'btnDecreaseScale'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnDecreaseScaleClick
          end
          object cbbScale: TComboBox
            Left = 28
            Top = 0
            Width = 95
            Height = 22
            Hint = 'Map Scales'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = cbbScaleChange
            Items.Strings = (
              '0.125'
              '0.25'
              '0.5'
              '1'
              '2'
              '4'
              '8'
              '16'
              '32'
              '64'
              '128'
              '256'
              '512'
              '1024'
              '2048'
              '2500')
          end
          object btnIncreaseScale: TToolButton
            Left = 123
            Top = 0
            Hint = 'Increase Scale'
            Caption = 'btnIncreaseScale'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnIncreaseScaleClick
          end
          object btnSelectPoint: TToolButton
            Left = 151
            Top = 0
            Hint = 'Select Point'
            Caption = 'btnSelectPoint'
            ImageIndex = 31
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
            OnClick = btnSelectPointClick
          end
          object btnZoomTool: TToolButton
            Left = 179
            Top = 0
            Hint = 'Zoom In / Out'
            Caption = 'btnZoomTool'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
            OnClick = btnZoomToolClick
          end
          object btnMoveTool: TToolButton
            Left = 207
            Top = 0
            Hint = 'Move Tool'
            Caption = 'btnMoveTool'
            ImageIndex = 13
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
            OnClick = btnMoveToolClick
          end
          object btnCenterHook: TToolButton
            Left = 235
            Top = 0
            Hint = 'Center Hook'
            Caption = 'btnCenterHook'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCenterHookClick
          end
        end
        object pnlAlignToolBar: TPanel
          Left = 0
          Top = 0
          Width = 22
          Height = 23
          Align = alLeft
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 1
        end
      end
      object pnlCursorPosition: TPanel
        Left = 1
        Top = 717
        Width = 1242
        Height = 93
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 3
        Color = 2499101
        ParentBackground = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 3
          Top = 3
          Width = 1236
          Height = 87
          Align = alClient
          Caption = 'Cursor Potition'
          TabOrder = 0
          object Label28: TLabel
            Left = 28
            Top = 32
            Width = 120
            Height = 14
            Caption = 'Bearing From Center :'
          end
          object Label29: TLabel
            Left = 28
            Top = 53
            Width = 126
            Height = 14
            Caption = 'Distance From Center :'
          end
          object Label30: TLabel
            Left = 332
            Top = 32
            Width = 50
            Height = 14
            Caption = 'Position :'
          end
          object Label31: TLabel
            Left = 332
            Top = 53
            Width = 29
            Height = 14
            Caption = 'Grid :'
          end
          object lBearingFCenter: TLabel
            Left = 169
            Top = 32
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lDistanceFCenter: TLabel
            Left = 169
            Top = 53
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lPosLat: TLabel
            Left = 401
            Top = 32
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lGridLat: TLabel
            Left = 401
            Top = 53
            Width = 4
            Height = 14
            Caption = '-'
          end
          object Label32: TLabel
            Left = 210
            Top = 32
            Width = 56
            Height = 14
            Caption = 'degrees T'
          end
          object Label33: TLabel
            Left = 210
            Top = 53
            Width = 17
            Height = 14
            Caption = 'nm'
          end
          object lPosLong: TLabel
            Left = 499
            Top = 32
            Width = 4
            Height = 14
            Caption = '-'
          end
          object lGridLong: TLabel
            Left = 499
            Top = 53
            Width = 4
            Height = 14
            Caption = '-'
          end
        end
      end
      object Map1: TMap
        Left = 1
        Top = 24
        Width = 1242
        Height = 693
        ParentColor = False
        Align = alClient
        TabOrder = 2
        OnMouseUp = Map1MouseUp
        OnMouseMove = Map1MouseMove
        OnMouseDown = Map1MouseDown
        OnMapViewChanged = Map1MapViewChanged
        OnDrawUserLayer = Map1DrawUserLayer
        ExplicitLeft = 0
        ExplicitTop = 21
        ExplicitWidth = 1293
        ExplicitHeight = 696
        ControlData = {
          8A1A06005D800000A0470000010000000F0000FF0D47656F44696374696F6E61
          727905456D70747900E8030000000000000000000002000E001E000000000000
          0000000000000000000000000000000000000000000600010000000000500001
          0100000A0000000001F4010000FFFFFF000C000000000000000000000000FFFF
          FF000100000000000000000000000000000000000000000000000352E30B918F
          CE119DE300AA004BB851010000009001E0E60B0005417269616C000352E30B91
          8FCE119DE300AA004BB8510100000090015C790C0005417269616C0000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FFFF000000000000000001370000000000FFFFFF000000000000000352E30B91
          8FCE119DE300AA004BB851010000009001DC7C010005417269616C000352E30B
          918FCE119DE300AA004BB851010200009001A42C02000B4D61702053796D626F
          6C730000000000000001000100FFFFFF000200FFFFFF00000000000001000000
          01000118010000F041920401000000000000001C000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          8076C000000000008056C0000000000080764000000000008056400100000018
          010000F041920401000000000000001C00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000200000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000088B3400000000000408F400001000001}
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 824
      Width = 1584
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 2
      object Panel3: TPanel
        Left = 1399
        Top = 0
        Width = 185
        Height = 43
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Button1: TButton
          Left = 28
          Top = 7
          Width = 145
          Height = 28
          Caption = 'Close'
          TabOrder = 0
          OnClick = btnCloseClick
        end
      end
      object btnScreenCapture: TButton
        Left = 20
        Top = 8
        Width = 145
        Height = 28
        Caption = 'Screen Capture'
        TabOrder = 1
        Visible = False
        OnClick = btnScreenCaptureClick
      end
    end
    object pnlSparatorHor1: TPanel
      Left = 5
      Top = 816
      Width = 1584
      Height = 8
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 3
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 1584
        Height = 8
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
          001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
          000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
          005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
          0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
          658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
          E3070080B203BC0200156C14659F0000000049454E44AE426082}
        Stretch = True
      end
    end
    object pnlVertical1: TPanel
      Left = 337
      Top = 5
      Width = 8
      Height = 811
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 4
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 8
        Height = 811
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
          001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
          000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
          005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
          0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
          658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
          E3070080B203BC0200156C14659F0000000049454E44AE426082}
        Stretch = True
        ExplicitLeft = -2
        ExplicitTop = -2
        ExplicitHeight = 637
      end
    end
  end
  object ImageList1: TImageList
    BkColor = 14215660
    Left = 848
    Top = 72
    Bitmap = {
      494C010122008800040010001000ECE9D800FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600A5A5A500ADADAD00A5A5A500A5A5A500CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD005A5A5A00737373006B6B6B0073737300ADADAD00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF000000000000000000DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD005A5A5A00737373006B6B6B006B6B6B00ADADAD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF000000000000000000DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00B5B5B5005A5A5A006B6B6B006B6B6B0073737300B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00000000000000000000000000DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD005A5A5A006B6B6B006363630073737300A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF000000000000000000000000000000000000000000DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7F700FFFFFF00F7F7
      F700F7F7F700BDBDBD005A5A5A00737373006B6B6B006B6B6B009C9C9C00E7E7
      E700FFFFFF00FFFFFF00F7F7F700FFFFFF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494940084848400949494008484
      84008C8C8C00737373006B6B6B00636363006B6B6B006B6B6B00737373009494
      94008C8C8C008C8C8C008C8C8C0094949400DEEFEF00DEEFEF00000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B006B6B6B006B6B6B006363
      63006B6B6B006B6B6B0073737300636363006B6B6B006B6B6B00636363006363
      63006B6B6B006B6B6B006B6B6B0073737300DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B00737373006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B0073737300737373006B6B6B00737373007373
      73006B6B6B006B6B6B006B6B6B0073737300DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B0073737300636363006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006363
      63006B6B6B006B6B6B006B6B6B0073737300DEEFEF0000000000DEEFEF00DEEF
      EF00000000000000000000000000000000000000000000000000DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007373730073737300737373007373
      7300848484005A5A5A006B6B6B0063636300636363006B6B6B00636363007B7B
      7B006B6B6B006B6B6B00737373007B7B7B00DEEFEF0000000000DEEFEF00DEEF
      EF00000000000000000000000000000000000000000000000000DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50052525200737373006B6B6B006B6B6B00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD005A5A5A006B6B6B006B6B6B00636363009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50063636300636363006B6B6B0073737300A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B5005A5A5A00737373006B6B6B0063636300A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD0052525200737373006B6B6B006B6B6B00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000000000000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00C6C6C600FFFFFF00737373007373730073737300FFFFFF00FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000000000000000000000000000C6C6C600DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600FFFF
      FF00737373007373730063636300737373007373730063636300FFFFFF00FFFF
      FF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500CECECE00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C6000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00FFFFFF00737373007373
      73007373730063636300C6C6C600FFFFFF00FFFFFF007373730073737300FFFF
      FF00FFFFFF00C6C6C600DEEFEF00DEEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E7009C9C9C0094949400D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      0000C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000C6C6C6000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF007373730073737300636363006363
      6300C6C6C600FFFFFF007373730073737300FFFFFF00FFFFFF00737373007373
      7300FFFFFF00FFFFFF00DEEFEF00DEEFEF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00FFFFFF00FFFFFF00FFFFFF00A5A5A500DEDEDE00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00000000000000
      000000000000DEEFEF00C6C6C6000000000000000000DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000001818
      180000000000C6C6C600DEEFEF00DEEFEF0000000000DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF006363630073737300C6C6C600FFFF
      FF007373730073737300737373007373730073737300FFFFFF00FFFFFF007373
      730073737300FFFFFF00FFFFFF00DEEFEF00FFFFFF00F7F7F700EFEFEF009C9C
      9C00DEDEDE00F7F7F700E7E7E700BDBDBD00EFEFEF00ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF000000000000000000C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000C6C6C60000000000DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0073737300FFFFFF00737373007373
      7300737373007373730073737300737373007373730073737300FFFFFF00FFFF
      FF007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00DEDE
      DE008C8C8C00EFEFEF0084848400DEDEDE00DEDEDE00A5A5A500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00C6C6C6000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6
      C600000000000000000000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF006363630073737300737373007373
      730073737300737373007373730073737300737373007373730073737300FFFF
      FF00FFFFFF007373730073737300DEEFEF00FFFFFF00FFFFFF00E7E7E700DEDE
      DE00EFEFEF0084848400C6C6C600CECECE00BDBDBD00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF0000000000000000000000
      0000DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000C6C6C60000000000C6C6C600DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300FFFFFF0073737300FFFFFF00DEEFEF00FFFFFF00FFFFFF00EFEFEF00DEDE
      DE00CECECE00DEDEDE00D6D6D600E7E7E7008C8C8C00B5B5B500BDBDBD00BDBD
      BD00EFEFEF00FFFFFF00FFFFFF00FFFFFF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEF
      EF0000000000DEEFEF00000000001818180000000000DEEFEF00DEEFEF00DEEF
      EF00C6C6C60000000000DEEFEF00DEEFEF0063636300C6C6C600636363007373
      7300737373007373730073737300737373007373730073737300737373007373
      73007373730073737300FFFFFF00DEEFEF00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700CECECE00D6D6D600CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE008C8C
      8C00E7E7E700FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000C6C6C60000000000DEEFEF00000000001818180000000000C6C6C600DEEF
      EF00000000007373730000000000DEEFEF00DEEFEF0063636300C6C6C6007373
      7300737373007373730073737300737373007373730073737300737373007373
      73007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700CECECE00CECECE00CECECE00D6D6D600BDBDBD00DEDEDE0094949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000007373730063636300DEEFEF00DEEFEF00DEEFEF0063636300C6C6
      C600636363007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700CECECE00CECECE00C6C6C600CECECE00D6D6D600A5A5A500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000007373
      7300737373000000000000000000DEEFEF00DEEFEF00DEEFEF00C6C6C6006363
      6300DEEFEF007373730073737300737373007373730073737300737373007373
      7300737373006363630063636300DEEFEF00FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00C6C6C600C6C6C600CECECE00C6C6C600BDBDBD00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C6000000
      000000000000DEEFEF00DEEFEF00DEEFEF00C6C6C60000000000737373007373
      73007373730000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0063636300C6C6C60063636300737373007373730073737300737373007373
      730063636300C6C6C600DEEFEF00DEEFEF00FFFFFF00FFFFFF00F7F7F700E7E7
      E700C6C6C600BDBDBD00C6C6C600DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000C6C6C600DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000737373007373
      73007373730000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00C6C6C60063636300C6C6C60073737300737373006363630063636300DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00B5B5B500B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000000000007373730073737300000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00636363007373730063636300C6C6C600DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00FFFFFF00FFFFFF00E7E7E700FFFF
      FF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00FFFFFF00FFFFFF00F7F7F700B5B5
      B500FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEFEF00DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00C6C6C600DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00C6C6C600DEEFEF00BDBDBD00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00636363007373
      73007373730073737300C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEF
      EF00C6C6C600636363000000000039393900C6C6C600DEEFEF00C6C6C600DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF007373730000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF000000000063636300D8E9EC00C6C6C60000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC005A5A5A00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00E7E7E700E7E7
      E700E7E7E70063636300DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063636300DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000D8E9EC0000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00E7E7E700E7E7
      E700E7E7E70073737300DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000073737300737373000000
      0000000000007373730073737300737373000000000000000000737373007373
      730000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC005A5A5A00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00E7E7E700E7E7
      E700E7E7E70063636300C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000073737300737373000000
      0000737373007373730073737300737373007373730000000000737373007373
      730000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000D8E9EC00D8E9EC00000000000000
      000000000000C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00E7E7E700E7E7E70063636300C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000073737300737373000000
      000073737300C6C6C600636363006B6B6B007373730000000000737373007373
      730000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00C6C6C60000000000D8E9EC00D8E9EC00D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00C6C6C600000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00E7E7E700E7E7E70063636300DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000073737300737373000000
      000063636300DEEFEF00C6C6C600737373007373730000000000737373007373
      730000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF006363630000000000C6C6
      C600DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEFEF00DEEFEF00C6C6
      C600DEEFEF00DEEFEF000000000073737300D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00000000000000000000000000C6C6C600D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00E7E7E700E7E7E70073737300C6C6C600DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFFFF00FFFFFF000000
      0000000000007373730073737300737373000000000000000000FFFFFF00FFFF
      FF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00E7E7E700E7E7E70063636300DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00E7E7E700E7E7E70063636300C6C6
      C600DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6C6C6000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00E7E7E700E7E7E7007373
      7300DEEFEF00C6C6C600DEEFEF00DEEFEF00DEEFEF000000000000000000DEEF
      EF007373730000000000FFFFFF007B7B7B0063636300DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00C6C6C60000000000C6C6C600DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00000000000000000000000000D8E9EC00D8E9EC000000000000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00E7E7E700E7E7
      E700636363007373730073737300C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00636363000000000031313100C6C6C600DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF000000000000000000000000000000000000000000000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00C6C6C600000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00E7E7
      E700E7E7E700E7E7E70063636300DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      00005A5A5A00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00E7E7
      E700E7E7E700E7E7E70073737300C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00000000000000000000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC0000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC005A5A5A00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00E7E7
      E700E7E7E700E7E7E70063636300DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5
      B500BDBDBD00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00BDBDBD00DEDEDE00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700DEEFEF00B5B5B500D6D6D600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00C6C6C600DEEFEF00DEEFEF00DEEFEF009494940063636300636363007373
      730084848400DEEFEF00DEEFEF009C9C9C006363630073737300737373007373
      73006B6B6B00636363007B7B7B00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00000000000000
      00000000000000000000DEEFEF00DEEFEF00DEEFEF00BDBDBD009C9C9C009C9C
      9C00E7E7E700B5B5B500BDBDBD00DEEFEF00B5B5B500ADADAD00737373007373
      730094949400EFEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00949494008484
      8400D6D6D600FFFFFF00FFFFFF00FFFFFF00D6D6D60073737300737373007373
      730084848400DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000000000000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000C6C6C6000000000000000000DEEFEF00DEEFEF00C6C6C60000000000C6C6
      C6000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500A5A5
      A500737373006B6B6B00636363007373730073737300737373006B6B6B008C8C
      8C00EFEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF009494
      940094949400E7E7E700DEEFEF009C9C9C006363630073737300737373008484
      8400DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF000000000000000000000000007373730000000000DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF009494
      940084848400D6D6D600EFEFEF00ADADAD00737373006B6B6B008C8C8C00EFEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000DEEFEF000000000000000000000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000C6C6C6000000000000000000000000000000000000000000C6C6C6000000
      00000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF009494940094949400D6D6D60073737300737373007373730084848400BDBD
      BD00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000000000000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000000000000000000063636300C6C6C60063636300000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5
      B500A5A5A50084848400A5A5A500737373006B6B6B008C8C8C00EFEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF009C9C9C0073737300737373007373730084848400DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF009C9C9C00737373006B6B6B0094949400EFEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0094949400636363007373730084848400DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00B5B5B500A5A5A5007B7B7B00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500BDBDBD00DEDEDE00F7F7
      F700F7F7F700F7F7F700F7F7F700D6D6D600B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5008C8C8C00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00FFFFFF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B50094949400848484008484
      84008484840084848400C6C6C600FFFFFF00D6D6D600B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5008484840073737300737373007373
      730073737300737373009C9C9C00FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF009C9C9C0073737300737373007373
      730073737300737373007B7B7B00C6C6C600FFFFFF00D6D6D600B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      7300737373007373730073737300A5A5A500FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF007373730073737300737373007373
      73007373730073737300737373007B7B7B00C6C6C600DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      730073737300737373007373730073737300FFFFFF00B5B5B500B5B5B500B5B5
      B500BDBDBD00E7E7E700B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF006B6B6B0073737300737373007373
      730073737300737373007373730073737300B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      730073737300737373007373730073737300FFFFFF00B5B5B500B5B5B500B5B5
      B5008C8C8C00FFFFFF00E7E7E700B5B5B500DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF006B6B6B0073737300737373007373
      730073737300737373007373730073737300B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B5007373730073737300737373007373
      730073737300737373007373730063636300FFFFFF00BDBDBD00E7E7E700E7E7
      E70073737300A5A5A500FFFFFF00E7E7E700DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF006B6B6B0073737300737373007373
      73007373730073737300737373006B6B6B00ADADAD00DEDEDE00B5B5B500D6D6
      D600EFEFEF00EFEFEF00EFEFEF00EFEFEF007373730073737300737373007373
      73007373730073737300737373006B6B6B00CECECE0084848400A5A5A500A5A5
      A5007373730073737300A5A5A500FFFFFF00DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      0000000000000000000000000000DEEFEF006B6B6B0073737300737373007373
      73007373730073737300737373006B6B6B0094949400BDBDBD009C9C9C008C8C
      8C00949494009494940094949400BDBDBD007373730073737300737373007373
      73007373730073737300636363009C9C9C00BDBDBD006B6B6B00636363007373
      7300737373007373730063636300D6D6D600DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF000000
      0000000000000000000000000000000000008484840073737300737373007373
      730073737300737373006B6B6B0084848400ADADAD00B5B5B500949494006B6B
      6B006B6B6B006B6B6B006B6B6B008C8C8C009494940063636300636363007373
      730073737300636363009C9C9C00B5B5B500E7E7E70094949400949494009494
      9400636363007373730094949400B5B5B500DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00ADADAD007B7B7B00636363006B6B
      6B00737373006B6B6B0084848400ADADAD00CECECE00D6D6D600ADADAD009C9C
      9C009C9C9C009C9C9C009C9C9C00A5A5A500B5B5B500949494009C9C9C007373
      7300C6C6C60094949400C6C6C60084848400FFFFFF00B5B5B500B5B5B500BDBD
      BD006363630094949400B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00B5B5B500A5A5A500A5A5A5008C8C
      8C00A5A5A500BDBDBD00ADADAD009C9C9C00B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD006363
      6300FFFFFF00BDBDBD008C8C8C006B6B6B00FFFFFF00B5B5B500B5B5B500BDBD
      BD008C8C8C00B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500B5B5B500B5B5B5008C8C
      8C00B5B5B500DEDEDE009C9C9C0073737300B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5006B6B
      6B00FFFFFF008C8C8C009494940073737300FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500B5B5B500B5B5B5008C8C
      8C00BDBDBD00BDBDBD00949494008C8C8C00B5B5B500DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5006363
      6300B5B5B5008C8C8C00BDBDBD0063636300FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF000000
      00000000000000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF000000000000000000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500B5B5B500B5B5B5008C8C
      8C00848484009C9C9C00ADADAD008C8C8C00ADADAD00DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD006363
      630094949400B5B5B500BDBDBD0063636300FFFFFF00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500B5B5B500B5B5B5008C8C
      8C0084848400ADADAD00B5B5B5008C8C8C00ADADAD00DEDEDE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD008C8C
      8C00B5B5B500B5B5B500BDBDBD0063636300DEDEDE00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500B5B5B500B5B5B500A5A5
      A500A5A5A500B5B5B500B5B5B5008C8C8C009C9C9C00C6C6C600B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B5008C8C8C00BDBDBD00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00B5B5B500DEEFEF00DEEFEF00DEEFEF00B5B5B500DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9EC00C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600C6C6C600C6C6
      C600CECECE00C6C6C600C6C6C600C6C6C600CECECE00C6C6C600DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00000000000000000000000000000000000000000000000000C6C6
      C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00A5A5A500E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00C6C6C600DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C6000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0073737300737373000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000006363
      63007373730000000000C6C6C600DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00000000000000
      0000DEEFEF000000000000000000000000000000000000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFFFF000000
      000000000000FFFFFF00B5B5B50000000000B5B5B500FFFFFF00B5B5B5000000
      0000000000007373730000000000DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEEF
      EF00DEEFEF00BDBDBD00B5B5B500DEEFEF00D8E9EC00C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      0000FFFFFF00B5B5B500FFFFFF0000000000FFFFFF00B5B5B500FFFFFF00FFFF
      FF00000000000000000000000000C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00FFFFFF00B5B5
      B500ADADAD00FFFFFF00CECECE00DEEFEF00D8E9EC0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF000000
      0000DEEFEF000000000000000000000000000000000000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000063636300C6C6C600FFFF
      FF0000000000FFFFFF00B5B5B500FFFFFF00B5B5B500FFFFFF00C6C6C6000000
      0000737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300FFFFFF00BDBD
      BD006B6B6B00EFEFEF00FFFFFF00BDBDBD0000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFFFFF00C6C6C600FFFFFF00C6C6C600636363007373
      7300737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5B5
      B5006363630073737300EFEFEF00F7F7F700000000000000000000000000D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFFFFF006363630073737300737373007373
      7300737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD0000000000737373006B6B6B00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF0000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000737373007373
      7300737373007373730073737300000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00FFFFFF00B5B5
      B5000000000000000000DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF0000000000DEEF
      EF0000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF000000
      000000000000DEEFEF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      00007373730073737300737373000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000063636300FFFFFF00DEEF
      EF006B6B6B00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000DEEFEF00DEEFEF000000
      0000DEEFEF0000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF0000000000DEEFEF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000DEEFEF000000000000000000F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70000000000000000006B6B6B00FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000DEEFEF000000
      000000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000DEEFEF006B6B6B006B6B6B00737373007373
      73007373730073737300737373006B6B6B000000000063636300DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000000000007B7B7B0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000DEEFEF000000000000000000737373000000
      00007373730000000000000000006363630073737300DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000005A5A5A00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      00007373730063636300DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00000000000000000000000000000000000000
      000000000000DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00000000000000000000000000000000000000000000000000DEEF
      EF0000000000FFFFFF0000000000DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      000000000000DEEFEF0000000000000000000000000000000000DEEFEF000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00BDBD
      BD00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500BDBDBD00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6
      C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF003131
      3100C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF009C9C9C00080808006B6B
      6B00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00B5B5B500C6C6C600DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF006363
      630063636300DEEFEF00DEEFEF00DEEFEF00B5B5B5005252520010101000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00A5A5A5000000000000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF0000000000DEEFEF00DEEFEF0000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      00000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF009C9C9C0010101000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00ADADAD0000000000000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF0000000000DEEFEF00DEEFEF0000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF009C9C9C0010101000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00ADADAD00000000000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF0000000000DEEFEF00C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF009C9C9C0018181800BDBDBD00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00ADADAD0000000000ADADAD000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF006363
      630063636300DEEFEF00DEEFEF00DEEFEF00B5B5B5005252520010101000DEEF
      EF00B5B5B500DEEFEF00A5A5A5000000000008080800DEEFEF00DEEFEF00ADAD
      AD0000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF0000000000000000000000
      000000000000DEEFEF0000000000000000000000000000000000DEEFEF000000
      0000000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000003131
      3100C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00A5A5A500525252000000
      0000000000000000000008080800DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000DEEFEF0000000000DEEFEF0000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      000000000000DEEFEF0000000000000000000000000000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00000000000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0084848400DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0084848400DEEFEF0084848400D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000084848400DEEFEF00DEEF
      EF0084848400DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0084848400DEEF
      EF00DEEFEF008484840000000000DEEFEF00848484008484840084848400D8E9
      EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0084848400D8E9
      EC00D8E9EC008484840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000084848400DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF008484840000000000DEEFEF00DEEFEF00D8E9EC008484840084848400D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC008484840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000C6C6C600D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000008484
      840000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000008484
      840000000000DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00000000008484
      840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000008484
      840000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0084848400848484000000
      000000000000DEEFEF00848484008484840084848400DEEFEF00000000000000
      0000DEEFEF0084848400DEEFEF00DEEFEF00D8E9EC0084848400D8E9EC000000
      000000000000D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00000000000000
      0000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF0000000000000000000000000000000000DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF0000000000848484000000
      000000000000DEEFEF00000000000000000000000000DEEFEF00000000000000
      00000000000084848400DEEFEF00DEEFEF00D8E9EC0000000000000000000000
      000084848400D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00000000008484
      8400000000008484840084848400D8E9EC00D8E9EC00D8E9EC00C6C6C6000000
      0000D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9
      EC00C6C6C60000000000D8E9EC00D8E9EC00DEEFEF000000000000000000DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF008484840000000000DEEFEF0084848400DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000C6C6C600D8E9EC00D8E9EC00D8E9EC0000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC000000000000000000C6C6C600DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF008484840000000000DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00848484008484840084848400000000008484840084848400D8E9EC008484
      8400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEEFEF0000000000DEEFEF00DEEF
      EF0000000000DEEFEF0000000000DEEFEF00DEEFEF0000000000DEEFEF000000
      0000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00000000000000000000000000DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000000000000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC00DEEFEF0000000000DEEFEF00DEEF
      EF0000000000DEEFEF0000000000DEEFEF00DEEFEF0000000000DEEFEF000000
      0000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF000000000084848400DEEFEF0000000000DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00C6C6C60000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF008484
      8400DEEFEF000000000084848400DEEFEF00848484000000000084848400DEEF
      EF00DEEFEF0084848400DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0084848400D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC008484
      8400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000C6C6C600D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF000000000000000000DEEFEF00DEEFEF0000000000000000000000
      000000000000DEEFEF00000000000000000000000000DEEFEF00000000000000
      00000000000000000000DEEFEF00DEEFEF00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF00DEEFEF0000000000000000000000000000000000DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC008484840084848400D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEF
      EF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEF
      EF00DEEFEF0000000000DEEFEF0084848400D8E9EC0000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC0000000000D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000DEEFEF0000000000D8E9EC00D8E9EC008484
      8400D8E9EC00D8E9EC0084848400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00D6C6C600D6C6C600D6BDBD00DEBD
      C600DEBDBD00E7BDC600D6ADB500E7C6C600FFD6DE00D6B5BD00E7C6C600D6B5
      BD00D6BDBD00D6B5BD00D6B5BD00CEBDBD00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00CEB5BD0029080800391018002100
      0000310810004210180029000000390810002100000031080800391018002900
      080039101800210000004221290021080800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00B5B5B5007B7B7B00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC000000000000000000D8E9EC00D8E9EC00DEC6C60021000000FFFFFF00FFE7
      EF00FFF7FF00FFD6E700FFF7FF00FFD6F70039103900FFDEFF00FFF7FF00F7D6
      E700FFFFFF00FFF7FF00FFDEE70031081000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC008C8C8C000000000084848400B5B5B500D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC000000000000000000D8E9EC00CEBDC60031080800FFEFEF00FFF7
      FF00EFE7FF00FFF7FF00F7E7FF0021085A001808630010084A00EFE7FF00F7E7
      FF00F7E7FF00FFFFFF00FFE7F70031001000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00B5B5B5008484840000000000000000000000000094949400D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00000000000000000000000000D8E9EC00C6BDBD0021000000FFFFFF00FFF7
      FF00F7F7FF00E7E7FF0018184A0000005A00000063000810520000003900F7F7
      FF00F7F7FF00E7E7F700FFFFFF0021000800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0094949400000000000000000000000000000000000000000084848400B5B5
      B500D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000D8E9EC000000
      00000000000000000000D8E9EC00D8E9EC00BDBDB50039181000FFEFEF00DED6
      EF00E7EFFF00F7F7FF00D6DEFF00E7F7FF0008215200E7F7FF00D6EFFF00EFEF
      FF00DEDEF700F7F7FF00EFDEF70039001800D8E9EC00D8E9EC00D8E9EC008C8C
      8C00000000000000000000000000000000000000000000000000000000009494
      9400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00C6C6C60042181800FFF7FF00DECE
      F70018215200DEE7FF00EFF7FF00BDCEF70008214200BDDEF700D6F7FF00D6E7
      FF0021214200EFEFFF00FFEFFF0039001800D8E9EC00D8E9EC00D8E9EC002121
      2100212121002121210000000000000000000000000021212100212121002121
      2100D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00BDBDCE0018000800F7CEF7002918
      5A0000005200EFEFFF00D6E7FF00DEF7FF00B5D6F700D6FFFF00BDDEF700E7EF
      FF0010084A0018183900FFEFFF0039001800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00CEC6D60031082100421042002110
      5A00181063001008420018214A00ADBDE700DEFFFF00C6E7F70010294A001010
      520018105200101031003929390021000800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D6BDCE0031000800FFD6F7003918
      520021084A00FFF7FF00EFE7FF00F7F7FF00E7EFFF00EFFFFF00CED6EF00EFDE
      FF001808390018103100FFFFFF0039001800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC000000000000000000000000000000000000000000000000000000
      00000000000000000000D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00D6BDC60042080800FFF7FF00F7D6
      FF0029184200EFDEFF00FFF7FF00E7DEFF0008083100DEE7FF00F7FFFF00DECE
      F70031214A00EFE7FF00F7E7F70039081800D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00BDB5B50039100800FFE7E700FFFF
      FF00E7DEF700FFFFFF00DED6F700F7EFFF0008104A00EFF7FF00CEDEFF00F7F7
      FF00EFEFFF00FFFFFF00EFDEEF0031001000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000000000000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0000000000D8E9EC00D8E9EC00D8E9EC00BDC6BD0029100800FFFFF700F7EF
      F700F7FFFF00EFEFFF002118420000004A00101863000008420008103900F7FF
      FF00DEE7EF00DEE7EF00FFFFFF0031001000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC000000000000000000D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6CED60018000000FFE7E700EFEF
      F700DEE7F700FFFFFF00D6D6FF0018186B000800630010185A00CED6FF00E7EF
      FF00F7F7FF00FFFFFF00FFF7FF0021000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00080808000808080008080800D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00B5ADB50039181000FFFFF700FFF7
      F700FFFFFF00EFE7EF00FFF7FF00EFDEFF0018106300D6CEFF00FFF7FF00F7E7
      F700FFF7F700E7EFE700FFF7F70039081000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000
      000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00DEC6C60042080000390000003910
      0800180000002900000029000800210021001800180018001000210808003108
      080031101000080800002921180039081000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF000000FFFF000000000000FFF300000000
      0000FFE9000000000000FFD1000000000000F823000000000000E78700000000
      0000C7C7000000000000DFEF000000000000BFF7000000000000B03700000000
      0000B037000000000000BFF7000000000000DFEF000000000000DFEF00000000
      0000E79F000000000000F87F00000000FFFFFFFFF01F0000FC1FDFFFC00F0000
      E00F1FCF80030000E003878F00030000C463C35F00010000CE71E0BF00000000
      9E71E17F000100008E71F87F00010000BE7DB47300010000FE7F021180000000
      FE7F0701C0000000FE7F6781C8010000FE7FC703F0030000FCBFC703F01F0000
      FDBFFC07FC3F0000FE7FFE1FFFFF0000FFFFD777FFFFD7FFFAFFC000FFFFC1FF
      B0579FFC9FF7C3FF0007BFFE8FFFC3FF0007BFFE87F7C1FF0007BFFEC3EFF0FF
      0007BFFCE38FF8FF04078EECF09FFC3F00078001F83FFE3F0007FF7FFC3FFF0F
      0007FF7FF03FFF8B904FFE3FF18FFFC0F87FF80F83CFFFE1FFFFFC1F87E7FFE0
      FFFFFE3F8FF7FFE1FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
      FFFFFFFFFFFF0200F7FFFFFFF7F70601E7FFFFFFE1C38103E0FFEF7FE9D3C007
      E07FE71FE183C007E00FE11FE003E20FE007E007E823E00FE01FE10FE003F00F
      E07FE31FF007E01FE1FFE77FF9CFF83FE7FFFF7FF9CFF83FFFFFFFFFFFFFF87F
      FFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFF00003C00FFFFC1FF00000000FFFF
      FEFF00000000FFFF7F7F00000000FFFF7F7F00000000E31F7F7B00000000E31F
      7F7B00000000E31F7F6100000000E31FBEE000000000E31FC1FB00000000E31F
      F77B00000000E31FF67F00000000E31FF57F00000000E31FF37F00000000FFFF
      F77F00000000FFFFFF7F00000000FFFFF77FFDBFFFFFFF7F803FF01FFFFFF80F
      001FF00F002FC007001FC00F7FEFC001001FC00F482F80010019800F7FEF8000
      0001800F682F00000000000F7FEF00000000100F7F6F00000001F00F6EAE0000
      0003F00F556400000017F01F6ABA8001001FF03F257C8001003FF87FFAFCC001
      007FFCFFFDFAE001E3FFFFFFFE04F811BFFDFFFFFFFFFFFFB7EDFFFFFFFFFFFF
      D7EBFFFFFFFF803FE7E7FFFFFFFF001F8421FFEF9FFF001FFBDFEFE78F9F001F
      F66FC1E71E07001EF5AFC3F73F07001CF5AFC7F73F870018F66FCAF71F070018
      FBDFDCE71467001C8421FF0781FF001EE7E7FFFFFFFF1B1FD7EBFFFFFFFF0A1F
      B7EDFFFFFFFF843F7FFEFFFFFFFFF1FF7FFD7FFDFFFFFFFF37D917D9FE7FF81F
      97D397D3FE1FF3CFC7C7C7C7FC1FEFF7844BA6CBFF7FDC3B844386C1CE739BD9
      F2BFFEFBC738F66DF4DFF02F8000B5ADF45FF01FCF79B5ADF2DFFEFFEE7BF66D
      E91BF6EFFF3FBBD9844386C3FC1FDC3BE7CFE64FFE3FEFF7D7D7D7D5FF7FF3CF
      B7DAB7DAFFFFF81F5FFD6DFDFFFFFFFF0000FFFFFFFFFFFF0000FCFFFFFFFFF3
      0000FC3FFF1FFFE90000F03FFF1FFFD10000F00FFF1FF8230000E00FFF1FE787
      0000E00FFF1FCFC70000FC7FFF1FDCEF0000FC7FFF1FBCF70000FC7FF803B037
      0000FC7FFC07B0370000FC7FFE0FBCF70000FC7FFF1FDCEF0000FC7FFFBFDFEF
      0000FFFFFFBFE79F0000FFFFFFFFF87F00000000000000000000000000000000
      000000000000}
  end
end
