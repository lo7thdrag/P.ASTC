object OverlayEditorForm: TOverlayEditorForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Overlay '
  ClientHeight = 790
  ClientWidth = 1294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 1294
    Height = 790
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnlEditor: TPanel
      Left = 5
      Top = 5
      Width = 412
      Height = 732
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
      object pnlOverlayEditor: TPanel
        Left = 1
        Top = 1
        Width = 410
        Height = 730
        Align = alClient
        TabOrder = 0
        object grbShapeDetail: TGroupBox
          Left = 12
          Top = 138
          Width = 255
          Height = 548
          TabOrder = 0
          Visible = False
          object btnNew: TImage
            Left = 171
            Top = 13
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
            OnClick = btnNewClick
          end
          object btnEdit: TImage
            Left = 197
            Top = 13
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
            OnClick = btnEditClick
          end
          object btnDelete: TImage
            Left = 221
            Top = 13
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
          end
          object pnlDynamic: TPanel
            Left = 14
            Top = 40
            Width = 227
            Height = 325
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            object grpRectangleD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 3
              object lbl26: TLabel
                Left = 14
                Top = 30
                Width = 64
                Height = 14
                Caption = 'Top - Left :'
              end
              object lbl27: TLabel
                Left = 14
                Top = 123
                Width = 89
                Height = 14
                Caption = 'Bottom - Right :'
              end
              object lbl28: TLabel
                Left = 30
                Top = 57
                Width = 42
                Height = 14
                Caption = 'Range :'
              end
              object lbl29: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl30: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object lbl31: TLabel
                Left = 30
                Top = 150
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object lbl32: TLabel
                Left = 30
                Top = 173
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object lbl33: TLabel
                Left = 112
                Top = 173
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label38: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label39: TLabel
                Left = 112
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object edtRecStartRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtRecStartBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object edtRecEndRange: TEdit
                Left = 72
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
              object edtRecEndBearing: TEdit
                Left = 72
                Top = 169
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 3
                Text = '0'
              end
            end
            object grpLineD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 2
              object lbl20: TLabel
                Left = 14
                Top = 30
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object lbl21: TLabel
                Left = 14
                Top = 123
                Width = 29
                Height = 14
                Caption = 'End :'
              end
              object lbl22: TLabel
                Left = 30
                Top = 57
                Width = 42
                Height = 14
                Caption = 'Range :'
              end
              object lbl85: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object lbl23: TLabel
                Left = 30
                Top = 150
                Width = 42
                Height = 14
                Caption = 'Range :'
              end
              object lbl25: TLabel
                Left = 112
                Top = 173
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label40: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object Label41: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label42: TLabel
                Left = 30
                Top = 173
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label43: TLabel
                Left = 112
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object edtLineStartRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtLineStartBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object edtLineEndRange: TEdit
                Left = 72
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
              object edtLineEndBearing: TEdit
                Left = 72
                Top = 169
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 3
                Text = '0'
              end
            end
            object grpGridD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 8
              object lbl53: TLabel
                Left = 17
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lbl54: TLabel
                Left = 31
                Top = 209
                Width = 33
                Height = 14
                Caption = 'Width'
              end
              object lbl55: TLabel
                Left = 108
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl56: TLabel
                Left = 31
                Top = 150
                Width = 36
                Height = 14
                Caption = 'Height'
              end
              object lbl57: TLabel
                Left = 135
                Top = 209
                Width = 33
                Height = 14
                Caption = 'Count'
              end
              object lbl58: TLabel
                Left = 108
                Top = 209
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl59: TLabel
                Left = 135
                Top = 150
                Width = 33
                Height = 14
                Caption = 'Count'
              end
              object bvl5: TBevel
                Left = 89
                Top = 128
                Width = 110
                Height = 3
              end
              object lbl60: TLabel
                Left = 17
                Top = 123
                Width = 75
                Height = 14
                Caption = ' Vertical Cells '
                Color = clBtnFace
                ParentColor = False
                Transparent = False
              end
              object bvl6: TBevel
                Left = 99
                Top = 254
                Width = 100
                Height = 3
              end
              object lbl61: TLabel
                Left = 16
                Top = 249
                Width = 89
                Height = 14
                Caption = ' Rotation Angle '
                Transparent = False
              end
              object lbl62: TLabel
                Left = 65
                Top = 276
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object lbl81: TLabel
                Left = 31
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object lbl82: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl83: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label44: TLabel
                Left = 17
                Top = 186
                Width = 84
                Height = 14
                Caption = 'Horisontal Cells '
                Color = clBtnFace
                ParentColor = False
                Transparent = False
              end
              object Bevel12: TBevel
                Left = 99
                Top = 191
                Width = 100
                Height = 3
              end
              object Label45: TLabel
                Left = 31
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object edtTableRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtTableBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object edtTableHeightD: TEdit
                Left = 69
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
              object edtTableWidthD: TEdit
                Left = 69
                Top = 205
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 3
                Text = '0'
              end
              object edtTableColumnD: TEdit
                Left = 169
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
              end
              object edtTableRowD: TEdit
                Left = 169
                Top = 205
                Width = 35
                Height = 22
                MaxLength = 4
                NumbersOnly = True
                TabOrder = 5
                Text = '0'
              end
              object edtRotationAngleD: TEdit
                Left = 30
                Top = 272
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 6
                Text = '0'
              end
            end
            object grpEllipseD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 5
              object Label4: TLabel
                Left = 16
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lbl48: TLabel
                Left = 30
                Top = 150
                Width = 53
                Height = 14
                Caption = 'Horizontal'
              end
              object lbl50: TLabel
                Left = 127
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl51: TLabel
                Left = 30
                Top = 173
                Width = 40
                Height = 14
                Caption = 'Vertical'
              end
              object lbl52: TLabel
                Left = 127
                Top = 173
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object bvl4: TBevel
                Left = 86
                Top = 128
                Width = 115
                Height = 3
              end
              object lbl49: TLabel
                Left = 12
                Top = 123
                Width = 75
                Height = 14
                Caption = ' Semi - Axis : '
                Transparent = False
              end
              object lbl79: TLabel
                Left = 30
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object lbl80: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object Label5: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label6: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object edtEllipseRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtEllipseBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object edtEllipseHorizontalD: TEdit
                Left = 87
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
              object edtEllipseVerticalD: TEdit
                Left = 87
                Top = 169
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 3
                Text = '0'
              end
            end
            object grpCircleD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 4
              object Label52: TLabel
                Left = 14
                Top = 123
                Width = 42
                Height = 14
                Caption = 'Radius :'
              end
              object lbl1: TLabel
                Left = 71
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lblCentre: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object Label53: TLabel
                Left = 30
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object Label54: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label55: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label56: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object edtCircleRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtCircleBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                Hint = '185'
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object edtCircleRadiusD: TEdit
                Left = 30
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
            end
            object grpArcD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 6
              object lbl40: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lbl41: TLabel
                Left = 66
                Top = 223
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object lbl42: TLabel
                Left = 153
                Top = 223
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object lbl43: TLabel
                Left = 14
                Top = 123
                Width = 42
                Height = 14
                Caption = 'Radius :'
              end
              object lbl44: TLabel
                Left = 71
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl45: TLabel
                Left = 14
                Top = 196
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object lbl46: TLabel
                Left = 110
                Top = 196
                Width = 29
                Height = 14
                Caption = 'End :'
              end
              object Label57: TLabel
                Left = 30
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object Label58: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label3: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label60: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object edtArcRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtArcBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object edtArcRadiusD: TEdit
                Left = 30
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
              object edtArcStartAngleD: TEdit
                Left = 30
                Top = 219
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 3
                Text = '0'
              end
              object edtArcEndAngleD: TEdit
                Left = 118
                Top = 219
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
              end
            end
            object grpPolygonD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 9
              object Label30: TLabel
                Left = 30
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object Label31: TLabel
                Left = 109
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object Label33: TLabel
                Left = 109
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label37: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object AddPolyD: TSpeedButton
                Tag = 1
                Left = 157
                Top = 53
                Width = 43
                Height = 43
                Cursor = crHandPoint
                Hint = 'Add'
                ParentCustomHint = False
                AllowAllUp = True
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303030303030303FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303000000030303FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF030303030303030303030303FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0303
                  03030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303
                  030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03030303030303030303
                  0303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  0303030303030303030303030303030303030303030303030303030303030303
                  03030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0303
                  03030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303
                  030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03030303030303030303
                  0303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303030303030303FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303030303030303FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF030303030303030303030303FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnClick = AddPolyDClick
              end
              object btnDeletePolyD: TSpeedButton
                Tag = 1
                Left = 171
                Top = 250
                Width = 30
                Height = 30
                Cursor = crHandPoint
                Hint = 'Clear Point'
                AllowAllUp = True
                GroupIndex = 1
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303030303FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03030303030303
                  0303030303030303030303030303030303030303030303030303FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0303030303030303030303030303
                  03030303030303030303030303030303030303030303030303FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF030303030303030303030303030303030303030303
                  030303030303030303030303030303030303030303030303FFFFFFFFFFFFFFFF
                  FFFFFFFF03030303030303030303030303030303030303030303030303030303
                  0303FFFFFF030303030303030303030303030303030303FFFFFFFFFFFF030303
                  030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF03030303030303030303030303030303030303030303030303
                  0303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF030303030303030303030303030303030303030303030303FFFF
                  FFFFFFFFFFFFFF030303030303030303030303030303FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF030303030303030303030303030303030303FFFFFFFFFFFFFFFFFF
                  030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF030303030303030303030303030303030303FFFFFFFFFFFFFFFFFF03030303
                  0303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFF030303030303
                  030303030303030303030303030303030303FFFFFFFFFFFFFFFFFF0303030303
                  03030303030303030303FFFFFFFFFFFFFFFFFF03030303030303030303030303
                  0303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFEFEFE030303030303030303030303030303030303FFFFFFFFFF
                  FF030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFF
                  0303030303030303030303030303030303030303030303030303030303030303
                  03030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
                  0303030303030303030303030303030303030303030303030303030303030303
                  030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0303
                  03030303030303030303030303030303030303030303030303030303030303FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303
                  030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnClick = btnDeletePolyDClick
              end
              object Label7: TLabel
                Left = 14
                Top = 30
                Width = 36
                Height = 14
                Caption = 'Point :'
              end
              object edtPolygonRange: TEdit
                Left = 70
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtPolygonBearing: TEdit
                Left = 70
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
              end
              object lvPolyVertexD: TListView
                AlignWithMargins = True
                Left = 14
                Top = 110
                Width = 187
                Height = 131
                Columns = <
                  item
                    Caption = '+'
                    Width = 25
                  end
                  item
                    Alignment = taCenter
                    Caption = 'Range'
                    Width = 79
                  end
                  item
                    Alignment = taCenter
                    Caption = 'Bearing'
                    Width = 79
                  end>
                GridLines = True
                RowSelect = True
                TabOrder = 2
                ViewStyle = vsReport
              end
            end
            object grpNoneD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 1
            end
            object grpTextD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 0
              object lbl17: TLabel
                Left = 14
                Top = 123
                Width = 34
                Height = 14
                Caption = 'Text :'
              end
              object lbl18: TLabel
                Left = 14
                Top = 196
                Width = 29
                Height = 14
                Caption = 'Size :'
              end
              object lbl91: TLabel
                Left = 30
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object lbl93: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label1: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object Label2: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object Label51: TLabel
                Left = 14
                Top = 30
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object edtTextRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtTextFieldD: TEdit
                Left = 30
                Top = 146
                Width = 162
                Height = 22
                MaxLength = 30
                TabOrder = 1
                Text = 'None'
              end
              object edtTextBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 2
                Text = '0'
              end
              object cbbTextSizeD: TComboBox
                Left = 30
                Top = 219
                Width = 82
                Height = 22
                TabOrder = 3
                Text = 'Small'
                Items.Strings = (
                  'Small'
                  'Medium'
                  'Large')
              end
            end
            object grpSectorD: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 7
              object lbl64: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lbl65: TLabel
                Left = 30
                Top = 150
                Width = 29
                Height = 14
                Caption = 'Inner'
              end
              object lbl66: TLabel
                Left = 30
                Top = 173
                Width = 32
                Height = 14
                Caption = 'Outer'
              end
              object lbl67: TLabel
                Left = 30
                Top = 239
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object lbl68: TLabel
                Left = 30
                Top = 262
                Width = 29
                Height = 14
                Caption = 'End :'
              end
              object lbl69: TLabel
                Left = 115
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl70: TLabel
                Left = 115
                Top = 173
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl71: TLabel
                Left = 110
                Top = 239
                Width = 25
                Height = 14
                Caption = 'deg.'
              end
              object lbl72: TLabel
                Left = 110
                Top = 262
                Width = 25
                Height = 14
                Caption = 'deg.'
              end
              object bvl7: TBevel
                Left = 59
                Top = 128
                Width = 140
                Height = 3
              end
              object bvl8: TBevel
                Left = 59
                Top = 221
                Width = 140
                Height = 3
              end
              object lbl73: TLabel
                Left = 14
                Top = 123
                Width = 38
                Height = 14
                Caption = ' Radius'
                Transparent = False
              end
              object lbl74: TLabel
                Left = 14
                Top = 216
                Width = 44
                Height = 14
                Caption = ' Angles '
                Transparent = False
              end
              object lbl63: TLabel
                Left = 30
                Top = 57
                Width = 34
                Height = 14
                Caption = 'Range'
              end
              object lbl89: TLabel
                Left = 30
                Top = 80
                Width = 40
                Height = 14
                Caption = 'Bearing'
              end
              object lbl90: TLabel
                Left = 112
                Top = 80
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label46: TLabel
                Left = 112
                Top = 57
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object edtSectorRange: TEdit
                Left = 72
                Top = 53
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 0
                Text = '0'
              end
              object edtSectorInnerD: TEdit
                Left = 75
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 1
                Text = '0'
              end
              object edtSectorOuterD: TEdit
                Left = 75
                Top = 169
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
              end
              object edtSectorStartAngleD: TEdit
                Left = 75
                Top = 235
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 3
                Text = '0'
              end
              object edtSectorEndAngleD: TEdit
                Left = 75
                Top = 258
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
              end
              object edtSectorBearing: TEdit
                Left = 72
                Top = 76
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 5
                Text = '0'
              end
            end
          end
          object btnApply: TButton
            Left = 159
            Top = 439
            Width = 75
            Height = 25
            Caption = 'Apply'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnHandleShapeEditor
          end
          object pnlStatic: TPanel
            Left = 14
            Top = 40
            Width = 227
            Height = 325
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object grpEllipse: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 4
              ExplicitTop = 20
              object Label63: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lblHorizontal: TLabel
                Left = 31
                Top = 150
                Width = 57
                Height = 14
                Caption = 'Horizontal '
              end
              object Label78: TLabel
                Left = 127
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lblVertical: TLabel
                Left = 31
                Top = 173
                Width = 44
                Height = 14
                Caption = 'Vertical '
              end
              object lbl6: TLabel
                Left = 127
                Top = 173
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object bvl1: TBevel
                Left = 86
                Top = 128
                Width = 115
                Height = 3
              end
              object Label79: TLabel
                Left = 14
                Top = 123
                Width = 67
                Height = 14
                Caption = ' Semi - Axis '
                Transparent = False
              end
              object SpeedButton6: TSpeedButton
                Tag = 6
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label11: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label12: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtEllipsePosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtEllipsePosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object edtHorizontal: TEdit
                Left = 87
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtVertical: TEdit
                Left = 87
                Top = 169
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 3
                Text = '0'
                OnKeyPress = OnKeyPress
              end
            end
            object grpCircle: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 3
              ExplicitTop = 20
              object lbl34: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lbl35: TLabel
                Left = 14
                Top = 123
                Width = 42
                Height = 14
                Caption = 'Radius :'
              end
              object lbl36: TLabel
                Left = 71
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object SpeedButton5: TSpeedButton
                Tag = 5
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label9: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label10: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtCirclePosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object edtCircleRadius: TEdit
                Left = 30
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtCirclePosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
            end
            object grpArc: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 2
              ExplicitTop = 20
              object Label80: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object Label81: TLabel
                Left = 66
                Top = 223
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label82: TLabel
                Left = 153
                Top = 223
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object Label83: TLabel
                Left = 14
                Top = 123
                Width = 42
                Height = 14
                Caption = 'Radius :'
              end
              object Label84: TLabel
                Left = 71
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl7: TLabel
                Left = 14
                Top = 196
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object lbl8: TLabel
                Left = 110
                Top = 196
                Width = 29
                Height = 14
                Caption = 'End :'
              end
              object SpeedButton7: TSpeedButton
                Tag = 7
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label8: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label64: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtArcPosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtArcPosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object edtArcRadius: TEdit
                Left = 31
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtArcStartAngle: TEdit
                Left = 31
                Top = 219
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 3
                Text = '0'
              end
              object edtArcEndAngle: TEdit
                Left = 118
                Top = 219
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
              end
            end
            object grpPolygon: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 5
              ExplicitTop = 20
              object Label91: TLabel
                Left = 14
                Top = 30
                Width = 36
                Height = 14
                Caption = 'Point :'
              end
              object SpeedButton10: TSpeedButton
                Tag = 10
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                AllowAllUp = True
                GroupIndex = 1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object btnDeletePoly: TSpeedButton
                Tag = 3
                Left = 171
                Top = 250
                Width = 30
                Height = 30
                Cursor = crHandPoint
                Hint = 'Clear Point'
                AllowAllUp = True
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303030303030303FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03030303030303
                  0303030303030303030303030303030303030303030303030303FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0303030303030303030303030303
                  03030303030303030303030303030303030303030303030303FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF030303030303030303030303030303030303030303
                  030303030303030303030303030303030303030303030303FFFFFFFFFFFFFFFF
                  FFFFFFFF03030303030303030303030303030303030303030303030303030303
                  0303FFFFFF030303030303030303030303030303030303FFFFFFFFFFFF030303
                  030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF03030303030303030303030303030303030303030303030303
                  0303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF030303030303030303030303030303030303030303030303FFFF
                  FFFFFFFFFFFFFF030303030303030303030303030303FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF030303030303030303030303030303030303FFFFFFFFFFFFFFFFFF
                  030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF030303030303030303030303030303030303FFFFFFFFFFFFFFFFFF03030303
                  0303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFF030303030303
                  030303030303030303030303030303030303FFFFFFFFFFFFFFFFFF0303030303
                  03030303030303030303FFFFFFFFFFFFFFFFFF03030303030303030303030303
                  0303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFEFEFE030303030303030303030303030303030303FFFFFFFFFF
                  FF030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFF
                  0303030303030303030303030303030303030303030303030303030303030303
                  03030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
                  0303030303030303030303030303030303030303030303030303030303030303
                  030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0303
                  03030303030303030303030303030303030303030303030303030303030303FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030303
                  030303030303030303030303030303030303FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnClick = btnDeletePolyClick
              end
              object Label21: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label22: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtPolyPosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtPolyPosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object lvPolyVertex: TListView
                AlignWithMargins = True
                Left = 14
                Top = 110
                Width = 187
                Height = 131
                Columns = <
                  item
                    Caption = '+'
                    Width = 25
                  end
                  item
                    Alignment = taCenter
                    Caption = 'Longitude'
                    Width = 79
                  end
                  item
                    Alignment = taCenter
                    Caption = 'Latitude'
                    Width = 79
                  end>
                GridLines = True
                RowSelect = True
                TabOrder = 2
                ViewStyle = vsReport
              end
            end
            object grpLine: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 1
              ExplicitTop = 20
              object SpeedButton1: TSpeedButton
                Tag = 1
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label47: TLabel
                Left = 14
                Top = 30
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object Label48: TLabel
                Left = 14
                Top = 123
                Width = 29
                Height = 14
                Caption = 'End :'
              end
              object SpeedButton2: TSpeedButton
                Tag = 2
                Left = 156
                Top = 146
                Width = 43
                Height = 43
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                OnClick = btnHandleShapePosition
              end
              object Label17: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label18: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object Label19: TLabel
                Left = 28
                Top = 150
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label20: TLabel
                Left = 28
                Top = 173
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtLineStartPosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtLineStartPosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object edtLineEndPosLat: TEdit
                Left = 60
                Top = 146
                Width = 91
                Height = 22
                TabOrder = 2
              end
              object edtLineEndPosLong: TEdit
                Left = 60
                Top = 169
                Width = 91
                Height = 22
                TabOrder = 3
              end
            end
            object grpGrid: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 8
              ExplicitTop = 20
              object Label85: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object Label86: TLabel
                Left = 31
                Top = 209
                Width = 37
                Height = 14
                Caption = 'Width '
              end
              object Label87: TLabel
                Left = 108
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object Label88: TLabel
                Left = 31
                Top = 150
                Width = 40
                Height = 14
                Caption = 'Height '
              end
              object Label89: TLabel
                Left = 135
                Top = 209
                Width = 37
                Height = 14
                Caption = 'Count '
              end
              object lbl9: TLabel
                Left = 108
                Top = 209
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl10: TLabel
                Left = 135
                Top = 150
                Width = 33
                Height = 14
                Caption = 'Count'
              end
              object bvl2: TBevel
                Left = 89
                Top = 128
                Width = 110
                Height = 3
              end
              object lbl13: TLabel
                Left = 14
                Top = 123
                Width = 75
                Height = 14
                Caption = ' Vertical Cells '
                Color = clBtnFace
                ParentColor = False
                Transparent = False
              end
              object bvl3: TBevel
                Left = 99
                Top = 254
                Width = 100
                Height = 3
              end
              object lbl14: TLabel
                Left = 14
                Top = 249
                Width = 89
                Height = 14
                Caption = ' Rotation Angle '
                Transparent = False
              end
              object lbl15: TLabel
                Left = 65
                Top = 276
                Width = 21
                Height = 14
                Caption = 'deg'
              end
              object SpeedButton9: TSpeedButton
                Tag = 9
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label90: TLabel
                Left = 14
                Top = 186
                Width = 84
                Height = 14
                Caption = 'Horisontal Cells '
                Color = clBtnFace
                ParentColor = False
                Transparent = False
              end
              object Bevel9: TBevel
                Left = 99
                Top = 191
                Width = 100
                Height = 3
              end
              object Label13: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label14: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtTablePosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtTablePosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object edtTableHeight: TEdit
                Left = 69
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtTableWidth: TEdit
                Left = 69
                Top = 205
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 3
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtTableColumn: TEdit
                Left = 169
                Top = 146
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
              end
              object edtTableRow: TEdit
                Left = 169
                Top = 205
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 5
                Text = '0'
              end
              object edtTableRotationAngle: TEdit
                Left = 30
                Top = 272
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 6
                Text = '0'
              end
            end
            object grpSector: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 9
              ExplicitTop = 20
              object lblSectorCenter: TLabel
                Left = 14
                Top = 30
                Width = 45
                Height = 14
                Caption = 'Centre :'
              end
              object lblSectorInner: TLabel
                Left = 31
                Top = 150
                Width = 37
                Height = 14
                Caption = 'Inner :'
              end
              object lblSectorOuter: TLabel
                Left = 31
                Top = 173
                Width = 40
                Height = 14
                Caption = 'Outer :'
              end
              object lblSectorStartAngle: TLabel
                Left = 31
                Top = 239
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object lblSectorEndAngle: TLabel
                Left = 31
                Top = 262
                Width = 29
                Height = 14
                Caption = 'End :'
              end
              object lbl2: TLabel
                Left = 115
                Top = 150
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl3: TLabel
                Left = 115
                Top = 173
                Width = 17
                Height = 14
                Caption = 'nm'
              end
              object lbl4: TLabel
                Left = 110
                Top = 239
                Width = 25
                Height = 14
                Caption = 'deg.'
              end
              object lbl5: TLabel
                Left = 110
                Top = 262
                Width = 25
                Height = 14
                Caption = 'deg.'
              end
              object bvlRadii: TBevel
                Left = 59
                Top = 128
                Width = 140
                Height = 3
              end
              object bvlAngle: TBevel
                Left = 59
                Top = 221
                Width = 140
                Height = 3
              end
              object lbl11: TLabel
                Left = 14
                Top = 123
                Width = 38
                Height = 14
                Caption = ' Radius'
                Transparent = False
              end
              object lbl12: TLabel
                Left = 14
                Top = 216
                Width = 44
                Height = 14
                Caption = ' Angles '
                Transparent = False
              end
              object SpeedButton8: TSpeedButton
                Tag = 8
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label15: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label16: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtSectorPosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtSectorInner: TEdit
                Left = 75
                Top = 146
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 1
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtSectorOuter: TEdit
                Left = 75
                Top = 169
                Width = 35
                Height = 22
                MaxLength = 4
                TabOrder = 2
                Text = '0'
                OnKeyPress = OnKeyPress
              end
              object edtSectorStartAngle: TEdit
                Left = 75
                Top = 235
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 3
                Text = '0'
              end
              object edtSectorEndAngle: TEdit
                Left = 75
                Top = 258
                Width = 30
                Height = 22
                MaxLength = 3
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
              end
              object edtSectorPosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 5
              end
            end
            object grpRectangle: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 6
              ExplicitTop = 20
              object Label49: TLabel
                Left = 14
                Top = 30
                Width = 64
                Height = 14
                Caption = 'Top - Left :'
              end
              object Label50: TLabel
                Left = 14
                Top = 123
                Width = 89
                Height = 14
                Caption = 'Bottom - Right :'
              end
              object SpeedButton3: TSpeedButton
                Tag = 3
                Left = 157
                Top = 53
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object SpeedButton4: TSpeedButton
                Tag = 4
                Left = 157
                Top = 146
                Width = 43
                Height = 43
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                ParentFont = False
                OnClick = btnHandleShapePosition
              end
              object Label23: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label24: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object Label25: TLabel
                Left = 28
                Top = 150
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label26: TLabel
                Left = 28
                Top = 173
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtRectStartPosLat: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 0
              end
              object edtRectStartPosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 1
              end
              object edtRectEndPosLat: TEdit
                Left = 60
                Top = 146
                Width = 91
                Height = 22
                TabOrder = 2
              end
              object edtRectEndPosLong: TEdit
                Left = 60
                Top = 169
                Width = 91
                Height = 22
                TabOrder = 3
              end
            end
            object grpNone: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 0
              ExplicitTop = 20
            end
            object grpText: TGroupBox
              Left = 0
              Top = 0
              Width = 227
              Height = 325
              Align = alClient
              TabOrder = 7
              ExplicitTop = 20
              object lblTextPosition: TLabel
                Left = 14
                Top = 30
                Width = 35
                Height = 14
                Caption = 'Start :'
              end
              object lblTextField: TLabel
                Left = 14
                Top = 123
                Width = 34
                Height = 14
                Caption = 'Text :'
              end
              object lblTextSize: TLabel
                Left = 14
                Top = 196
                Width = 29
                Height = 14
                Caption = 'Size :'
              end
              object SpeedButton: TSpeedButton
                Left = 156
                Top = 53
                Width = 43
                Height = 43
                Glyph.Data = {
                  AA040000424DAA04000000000000360000002800000014000000130000000100
                  18000000000074040000120B0000120B00000000000000000000D4DADDCCD4D7
                  CFD6DACED5D9C6CDD2ECF1F4E7EDEE4A4D4E202020202020202020202020989D
                  9EFCFFFFD0D7DACAD1D4D0D7DACFD6DACCD4D7D4DADDCED5D8C8D0D4C8D0D4C0
                  C7CCE6EEF1E8EEF0343638000000060707000000070707000000000000979C9E
                  F9FFFFC7CED3C4CCD0C8D0D4C8D0D4CED5D8CFD6DAC8D0D4C4CCD0E2ECF0DCE6
                  EA3A3D3E0000006D727375797C0000002A2B2C95989A2222230000008D9395F6
                  FEFFCED6DAC6CED2C8D0D4CFD6DACED5D8C0C8CCE6EFF3D1D9DD3B3D3E000000
                  515557FFFFFF8B8E90000000202122EFF0F1C8CFD1111113000000888D8FF2FC
                  FFCBD3D7C3CACFD0D7DBC7CED2EEF6F8DBE0E22B2C2E000000525455EFF9FDF8
                  FFFF6A6E71000000191A1AC7CFD3FFFFFFAEB5B90C0D0D000000848A8CF4FDFF
                  CCD4D8C9D0D4F2FAFCDCE4E5212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  760000001C1D1EC1C9CDD9E1E6F2FBFEBAC1C4040404000000868C8DFFFFFFD4
                  DBDFD2D9DC2C2D2E0000006D7072FBFFFFDDE5EAC8D0D4ECF5F96D7174000000
                  131415C5CDD1E7F0F4C6D0D4F9FDFFC3C7CA212224000000777D7DF7FFFF4041
                  420000006C7071FFFFFFF1F9FCD7E0E3DFE8ECF0F9FC868B8E171718393C3DCF
                  D8D9F0F9FDDAE3E7D9E3E8FFFFFFD5D8DA2528290000007E8183222222010001
                  4D505160636447494B4B4E50454848545858BFC6C9D2DBDFDBE4E88B91934042
                  434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
                  0000000000000000000000060606AFB5B8DBE4E8E9F2F7585B5E000000000000
                  000000000000000000000000010101232323222222060607585B5C5E62634548
                  4A4A4D50444748545758BFC6CAD0D8DCDAE3E78C91953E4143494B4E484B4D4D
                  5051686C6E2C2D2F0000002222223F3F4000000075797CFFFFFFF0F8FCD6DFE3
                  DFE8ECF0F9FC878C8E131313383A3AD0D8DBF0F8FDDAE3E7D9E3E8FFFFFFD5D9
                  DA2628290000007E8184D2D9DC2C2E2F0000006C7172FBFFFFDDE5EAC8D0D4EB
                  F5F96D7173000000131415C5CDD1E7F0F4C7D0D4F9FDFFC3C8CA212324000000
                  787F7FF7FFFFF1FAFCDCE5E6212223000000575C5DEFF9FCD4DDE1DBE4E86F74
                  750000001B1C1DC0C8CDD8E1E6F1FBFEBAC1C4040404000000858A8BFFFFFFD4
                  DBDEC8CED2EFF6F8D9E0E22A2D2E000000525455EFF9FDF8FFFF6A6E71000000
                  18191AC6CED2FFFFFFAFB5B90C0D0D000000848A8CF9FFFFCCD4D8C9CED3CED5
                  D8BFC7CBE6EEF2D1D8DD3A3C3E000000505456FFFFFF898D8E0000001D2021EE
                  F0F1C9CED1111113000000878C8FF3FCFFCED6DBC2CACFD0D7DBCFD6DAC8D0D4
                  C4CCD0E4EDF2DFE7EC3A3C3E0000006D727374787A000000292B2C97999B2121
                  220000008C9194EDF6FBCDD5D9C6CED2C8D0D4CFD6DACED5D8C8D0D4C8D0D4C0
                  C8CDE8F0F2E8EEF0353639000000070707000000080808000000000000989EA0
                  FAFFFFC4CBCFC4CCD0C8D0D4C8D0D4CED5D8D4DADDCCD4D7CFD6DACED5D8C5CD
                  D1EBF1F3E9EEF04D4E502020202020202020202020209DA2A3FCFFFFD0D6DACB
                  D2D6D0D7DACFD6DACCD4D7D4DADD}
                OnClick = btnHandleShapePosition
              end
              object Label27: TLabel
                Left = 28
                Top = 57
                Width = 33
                Height = 14
                Caption = 'Lat   :'
              end
              object Label28: TLabel
                Left = 28
                Top = 80
                Width = 35
                Height = 14
                Caption = 'Long :'
              end
              object edtTextField: TEdit
                Left = 30
                Top = 146
                Width = 162
                Height = 22
                MaxLength = 30
                TabOrder = 0
                Text = 'None'
              end
              object cbbTextSize: TComboBox
                Left = 30
                Top = 219
                Width = 82
                Height = 22
                TabOrder = 1
                Text = 'Small'
                Items.Strings = (
                  'Small'
                  'Medium'
                  'Large')
              end
              object edtTextPosLAt: TEdit
                Left = 60
                Top = 53
                Width = 91
                Height = 22
                TabOrder = 2
              end
              object edtTextPosLong: TEdit
                Left = 60
                Top = 76
                Width = 91
                Height = 22
                TabOrder = 3
              end
            end
          end
        end
        object grbTypeShape: TGroupBox
          Left = 322
          Top = 26
          Width = 65
          Height = 440
          TabOrder = 1
          object btnText: TSpeedButton
            Tag = 1
            Left = 14
            Top = 15
            Width = 36
            Height = 36
            Hint = 'Text Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202
              02020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202
              0202020202020202020202FFFFFFFFFFFF020202020202020202020202020202
              020202020202FFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202
              02020202020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF02020202020202020202020202020202020202020202
              0202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0202020202020202020202020202020202020202020000
              00020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF020202020202000000020202020202020202020202020202020202
              020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              020202020202020202FFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202
              02020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202
              020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnLine: TSpeedButton
            Tag = 2
            Left = 14
            Top = 56
            Width = 36
            Height = 36
            Hint = 'Line Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020000000202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000020202020202FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000000000010101FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202000000000000010101020202FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAFFFFFFFFFFFFFFFFFF000000000000000000020202020202FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnRectangle: TSpeedButton
            Tag = 3
            Left = 14
            Top = 97
            Width = 36
            Height = 36
            Hint = 'Rectangle Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202020202020202020202020202020202020202020202020202020202020202
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202020202020202
              02020202020202020202020202020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202020202020202020202020202
              020202020202020202020202020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFF02020202020202020202020202020202020202020202020202020202
              0202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              0202020202020202020202020202020202020202020202020202020202020202
              02020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnCircle: TSpeedButton
            Tag = 4
            Left = 14
            Top = 138
            Width = 36
            Height = 36
            Hint = 'Circle Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF020202020202020202020202020202020202020202020202020202020202FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202
              020202020202020202020202020202020202020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFF
              FF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFF020202
              020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFF02020202020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF020202020202020202020202FFFFFFFFFFFF0202020202020202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202020202020202FFFFFFFFFFFFFFFFFF020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202
              020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202020202020202
              0202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnEllipse: TSpeedButton
            Tag = 5
            Left = 14
            Top = 179
            Width = 36
            Height = 36
            Hint = 'Ellipse Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF020202020202020202020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202
              020202020202020202020202020202020202020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202020202020202
              02020202020202020202020202020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFF
              FF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFF020202
              020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFF02020202020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF020202020202020202020202FFFFFFFFFFFF0202020202020202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202020202020202FFFFFFFFFFFFFFFFFF020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202020202
              02020202020202020202020202020202020202020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202
              020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnArc: TSpeedButton
            Tag = 6
            Left = 14
            Top = 220
            Width = 36
            Height = 36
            Hint = 'Arc Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202020202FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202
              0202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnSector: TSpeedButton
            Tag = 7
            Left = 14
            Top = 261
            Width = 36
            Height = 36
            Hint = 'Arc Sector Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFF0202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFF020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFF020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              020202020202FFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202FFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202FFFF
              FFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFF
              020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202
              020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF020202020202FFFFFFFFFFFFFFFFFF02020202020202020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202
              020202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnGrid: TSpeedButton
            Tag = 8
            Left = 14
            Top = 302
            Width = 36
            Height = 36
            Hint = 'Grid Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFF
              FFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFF02
              0202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFF0202020202
              02FFFFFFFFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202020202020202020202020202
              020202020202020202020202020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFF02020202020202020202020202020202020202020202020202020202
              0202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFF0202020202
              02FFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFF
              FFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFF02
              0202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFF0202020202
              02FFFFFFFFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF020202020202020202020202020202020202020202020202
              020202020202020202020202020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFF02020202020202020202020202020202020202020202020202020202
              0202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF020202020202FFFFFFFFFFFF020202020202FFFFFFFFFFFF0202020202
              02FFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnPolygon: TSpeedButton
            Tag = 9
            Left = 14
            Top = 343
            Width = 36
            Height = 36
            Hint = 'Polygon Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF02020202020202020202020202020202020202020202020202
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202
              020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202
              020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202
              02020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object btnNone: TSpeedButton
            Left = -18
            Top = -19
            Width = 36
            Height = 36
            Hint = 'Text Overlay'
            GroupIndex = 1
            Down = True
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020000000202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000020202020202FF
              FFFFFFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFF
              FFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFF
              FFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000000000010101FFFFFF02
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0202020000000000000101010202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAFFFFFFFFFFFFFFFFFF000000000000000000020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202
              020202020202020202020202020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202
              0202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202
              02020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = btnHandleShape
          end
          object btnSelect: TSpeedButton
            Left = 40
            Top = -10
            Width = 36
            Height = 36
            Hint = 'Text Overlay'
            GroupIndex = 1
            Glyph.Data = {
              CA040000424DCA040000000000001A0000000C0000001400140001001800FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202
              0202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202
              020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202020202
              0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020000000202020202
              02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000020202020202FF
              FFFFFFFFFFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFF
              FFFFFFFFFFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202020202020202020202FFFFFF
              FFFFFF020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF020202020202000000000000010101FFFFFF02
              0202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0202020000000000000101010202020202020202
              02020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAFFFFFFFFFFFFFFFFFF000000000000000000020202020202020202020202
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF020202020202020202020202020202020202FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202020202
              020202020202020202020202020202020202020202020202FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020202020202020202
              0202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0202020202020202020202020202
              02020202020202020202020202020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnHandleShape
          end
          object colorPanel: TPanel
            Left = 14
            Top = 393
            Width = 36
            Height = 36
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 0
            object txtColorSelect: TStaticText
              Left = 8
              Top = 8
              Width = 20
              Height = 20
              AutoSize = False
              Color = clBackground
              DoubleBuffered = False
              ParentColor = False
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = txtColorSelectClick
            end
          end
        end
        object grbColour: TGroupBox
          Left = 273
          Top = 465
          Width = 114
          Height = 76
          TabOrder = 2
          Visible = False
          object colorChoose: TColorGrid
            Left = 6
            Top = 7
            Width = 192
            Height = 160
            ClickEnablesColor = True
            DoubleBuffered = False
            ForegroundIndex = -1
            ForegroundEnabled = False
            BackgroundEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnChange = colorChooseChange
          end
        end
      end
    end
    object pnlMap: TPanel
      Left = 422
      Top = 5
      Width = 867
      Height = 732
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
        Width = 865
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object ToolBar1: TToolBar
          Left = 22
          Top = 0
          Width = 843
          Height = 23
          Align = alClient
          Caption = 'ToolBar1'
          DoubleBuffered = False
          EdgeInner = esNone
          EdgeOuter = esNone
          Images = ImageList1
          ParentDoubleBuffered = False
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
          object cbSetScale: TComboBox
            Left = 23
            Top = 0
            Width = 95
            Height = 22
            Hint = 'Map Scales'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = cbSetScaleChange
            Items.Strings = (
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
              '1024')
          end
          object btnIncreaseScale: TToolButton
            Left = 118
            Top = 0
            Hint = 'Increase Scale'
            Caption = 'btnIncreaseScale'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnIncreaseScaleClick
          end
          object btnZoom: TToolButton
            Left = 141
            Top = 0
            Hint = 'Zoom In / Out'
            Caption = 'btnZoom'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = btnZoomClick
          end
          object btnMoveMap: TToolButton
            Left = 164
            Top = 0
            Hint = 'Move Tool'
            Caption = 'btnMoveMap'
            ImageIndex = 13
            ParentShowHint = False
            ShowHint = True
            OnClick = btnMoveMapClick
          end
          object btnCenterOnGame: TToolButton
            Left = 187
            Top = 0
            Hint = 'Center On Game'
            Caption = 'btnCenterOnGame'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCenterOnGameClick
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
        Top = 638
        Width = 865
        Height = 93
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 1
        object grpCursorPosition: TGroupBox
          Left = 3
          Top = 3
          Width = 859
          Height = 87
          Align = alClient
          Caption = 'Cursor Potition'
          TabOrder = 0
          object Label36: TLabel
            Left = 28
            Top = 32
            Width = 120
            Height = 14
            Caption = 'Bearing From Center :'
          end
          object Label61: TLabel
            Left = 28
            Top = 53
            Width = 126
            Height = 14
            Caption = 'Distance From Center :'
          end
          object Label62: TLabel
            Left = 332
            Top = 32
            Width = 50
            Height = 14
            Caption = 'Position :'
          end
          object Label65: TLabel
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
          object Label66: TLabel
            Left = 210
            Top = 32
            Width = 56
            Height = 14
            Caption = 'degrees T'
          end
          object Label67: TLabel
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
        Width = 865
        Height = 614
        ParentColor = False
        Align = alClient
        TabOrder = 2
        OnMouseMove = Map1MouseMove
        OnMouseDown = Map1MouseDown
        OnDrawUserLayer = Map1DrawUserLayer
        ExplicitLeft = -5
        ExplicitTop = 18
        ControlData = {
          8A1A060066590000753F0000010000000F0000FF0D47656F44696374696F6E61
          727905456D70747900E8030000000000000000000002000E001E000000000000
          0000000000000000000000000000000000000000000600010000040000500001
          0100000A0000000001F4010000050000800C000000000000000000000000FFFF
          FF000100000000000000000000000000000000000000000000000352E30B918F
          CE119DE300AA004BB85101000000900130C8070005417269616C000352E30B91
          8FCE119DE300AA004BB8510100000090015C790C0005417269616C0000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FFFF000000000000000001370000000000FFFFFF000000000000000352E30B91
          8FCE119DE300AA004BB851010000009001DC7C010005417269616C000352E30B
          918FCE119DE300AA004BB851010200009001A42C02000B4D61702053796D626F
          6C730000000000000001000100FFFFFF000200FFFFFF00000000000001000000
          0100011801000058858F1001000000000000001C000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          8076C000000000008056C0000000000080764000000000008056400100000018
          01000058858F1001000000000000001C00000000000000000000000000000000
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
      Top = 742
      Width = 1284
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = clBtnShadow
      ParentBackground = False
      TabOrder = 2
      object Panel1: TPanel
        Left = 1099
        Top = 0
        Width = 185
        Height = 43
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnClose: TButton
          Left = 102
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Close'
          TabOrder = 0
          OnClick = btnCloseClick
        end
      end
      object btnScreenCapture: TButton
        Tag = 4
        Left = 106
        Top = 18
        Width = 170
        Height = 25
        Caption = 'Screen Capture'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnlSparatorHor1: TPanel
      Left = 5
      Top = 737
      Width = 1284
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 3
    end
    object pnlVertical1: TPanel
      Left = 417
      Top = 5
      Width = 5
      Height = 732
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 4
    end
  end
  object ImageList1: TImageList
    BkColor = 14215660
    Left = 848
    Top = 96
    Bitmap = {
      494C010122005000040010001000ECE9D800FF10FFFFFFFFFFFFFFFF424D3600
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
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C600C6C6C600C6C6
      C600CECECE00C6C6C600C6C6C600C6C6C600CECECE00C6C6C600DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000000000000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00000000000000000000000000000000000000000000000000C6C6
      C600DEEFEF00DEEFEF00DEEFEF00DEEFEF00A5A5A500E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00C6C6C600DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C6000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0073737300737373000000
      000000000000DEEFEF00DEEFEF00DEEFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000006363
      63007373730000000000C6C6C600DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00000000000000
      0000DEEFEF000000000000000000000000000000000000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFFFF000000
      000000000000FFFFFF00B5B5B50000000000B5B5B500FFFFFF00B5B5B5000000
      0000000000007373730000000000DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEEF
      EF00DEEFEF00BDBDBD00B5B5B500DEEFEF00DEEFEF00C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000000000000000
      0000FFFFFF00B5B5B500FFFFFF0000000000FFFFFF00B5B5B500FFFFFF00FFFF
      FF00000000000000000000000000C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00FFFFFF00B5B5
      B500ADADAD00FFFFFF00CECECE00DEEFEF00DEEFEF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      0000DEEFEF000000000000000000000000000000000000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000063636300C6C6C600FFFF
      FF0000000000FFFFFF00B5B5B500FFFFFF00B5B5B500FFFFFF00C6C6C6000000
      0000737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300FFFFFF00BDBD
      BD006B6B6B00EFEFEF00FFFFFF00BDBDBD0000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFFFFF00C6C6C600FFFFFF00C6C6C600636363007373
      7300737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5B5
      B5006363630073737300EFEFEF00F7F7F700000000000000000000000000DEEF
      EF0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFFFFF006363630073737300737373007373
      7300737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD0000000000737373006B6B6B00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF0000000000DEEFEF000000
      0000DEEFEF00DEEFEF00DEEFEF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000737373007373
      7300737373007373730073737300000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00FFFFFF00B5B5
      B5000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000FFFFFF000000
      0000DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF0000000000DEEF
      EF0000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF000000
      000000000000DEEFEF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      00007373730073737300737373000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000063636300FFFFFF00DEEF
      EF006B6B6B00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000FFFFFF00000000007B7B7B00FFFFFF000000000000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF000000
      0000DEEFEF0000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF0000000000DEEFEF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000DEEFEF000000000000000000F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70000000000000000006B6B6B00FFFFFF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF0000000000FFFFFF00000000007B7B7B00FFFFFF0000000000DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF000000000000000000DEEFEF000000
      000000000000DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000DEEFEF006B6B6B006B6B6B00737373007373
      73007373730073737300737373006B6B6B000000000063636300DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000000000007B7B7B0000000000DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF000000000000000000DEEFEF00DEEFEF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000DEEFEF000000000000000000737373000000
      00007373730000000000000000006363630073737300DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00000000005A5A5A00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF0000000000DEEFEF0000000000DEEFEF00DEEFEF00DEEFEF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000DEEFEF00DEEFEF00DEEFEF00DEEFEF000000
      00007373730063636300DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
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
