object frmGunAutoManual: TfrmGunAutoManual
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Gun Auto Manual'
  ClientHeight = 369
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grbGunEngagementAutomaticManualMode: TGroupBox
    Left = 0
    Top = 0
    Width = 318
    Height = 369
    Align = alClient
    TabOrder = 0
    object ScrollBox2: TScrollBox
      Left = 2
      Top = 15
      Width = 314
      Height = 352
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      object Label12: TLabel
        Left = 3
        Top = -1
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object lblGunEngagementStatus: TLabel
        Left = 22
        Top = 14
        Width = 43
        Height = 13
        Caption = 'Available'
      end
      object Label13: TLabel
        Left = 116
        Top = 14
        Width = 49
        Height = 13
        Caption = 'Quantity :'
      end
      object lbGunEngagementQuantity: TLabel
        Left = 172
        Top = 14
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label14: TLabel
        Left = 3
        Top = 31
        Width = 35
        Height = 13
        Caption = 'Control'
      end
      object Bevel3: TBevel
        Left = 40
        Top = 36
        Width = 260
        Height = 2
      end
      object Label25: TLabel
        Left = 47
        Top = 40
        Width = 26
        Height = 13
        Caption = 'Mode'
      end
      object lblSalvoMode: TLabel
        Left = 146
        Top = 40
        Width = 55
        Height = 13
        Caption = 'Salvo Mode'
      end
      object Bevel6: TBevel
        Left = 40
        Top = 6
        Width = 260
        Height = 3
      end
      object sbControlModeAuto: TSpeedButton
        Tag = 1
        Left = 22
        Top = 53
        Width = 81
        Height = 22
        AllowAllUp = True
        GroupIndex = 4
        Caption = 'Automatic'
        OnClick = btnGunModeClick
      end
      object sbControlModeManual: TSpeedButton
        Tag = 2
        Left = 22
        Top = 73
        Width = 81
        Height = 22
        AllowAllUp = True
        GroupIndex = 4
        Caption = 'Manual'
        OnClick = btnGunModeClick
      end
      object sbControlModeChaff: TSpeedButton
        Tag = 3
        Left = 22
        Top = 93
        Width = 81
        Height = 22
        AllowAllUp = True
        GroupIndex = 4
        Caption = 'Chaff'
        Enabled = False
        OnClick = btnGunModeClick
      end
      object sbControlSalvoModeCont: TSpeedButton
        Tag = 4
        Left = 136
        Top = 53
        Width = 80
        Height = 22
        AllowAllUp = True
        GroupIndex = 3
        Caption = 'Continous'
        OnClick = btnGunSalvoClick
      end
      object sbControlSalvoModeSalvo: TSpeedButton
        Tag = 5
        Left = 136
        Top = 73
        Width = 80
        Height = 22
        AllowAllUp = True
        GroupIndex = 3
        Caption = 'Salvo'
        OnClick = btnGunSalvoClick
      end
      object Label15: TLabel
        Left = 3
        Top = 248
        Width = 34
        Height = 13
        Caption = 'Display'
      end
      object Bevel4: TBevel
        Left = 45
        Top = 255
        Width = 255
        Height = 3
      end
      object Label16: TLabel
        Left = 47
        Top = 260
        Width = 31
        Height = 13
        Caption = 'Range'
      end
      object Label17: TLabel
        Left = 126
        Top = 260
        Width = 54
        Height = 13
        Caption = 'Blind Zones'
      end
      object lblIntercept: TLabel
        Left = 205
        Top = 260
        Width = 79
        Height = 13
        Caption = 'Intercept Range'
        Visible = False
      end
      object sbGunEngagementDisplayRangeShow: TSpeedButton
        Tag = 6
        Left = 24
        Top = 273
        Width = 82
        Height = 22
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'Show'
        OnClick = btnRangeClick
      end
      object sbGunEngagementDisplayRangeHide: TSpeedButton
        Tag = 7
        Left = 24
        Top = 293
        Width = 82
        Height = 22
        AllowAllUp = True
        GroupIndex = 1
        Down = True
        Caption = 'Hide'
        OnClick = btnRangeClick
      end
      object sbGunEngagementDisplayBlindShow: TSpeedButton
        Tag = 8
        Left = 113
        Top = 273
        Width = 82
        Height = 22
        AllowAllUp = True
        GroupIndex = 8
        Caption = 'Show'
        OnClick = btnBlindZoneClick
      end
      object sbGunEngagementDisplayBlindHide: TSpeedButton
        Tag = 9
        Left = 113
        Top = 293
        Width = 82
        Height = 22
        AllowAllUp = True
        GroupIndex = 8
        Down = True
        Caption = 'Hide'
        OnClick = btnBlindZoneClick
      end
      object sbGunEngagementDisplayInterceptShow: TSpeedButton
        Tag = 10
        Left = 203
        Top = 273
        Width = 82
        Height = 22
        AllowAllUp = True
        GroupIndex = 2
        Caption = 'Show'
        Visible = False
        OnClick = btnInterceptClick
      end
      object sbGunEngagementDisplayInterceptHide: TSpeedButton
        Tag = 11
        Left = 203
        Top = 293
        Width = 82
        Height = 22
        AllowAllUp = True
        GroupIndex = 2
        Down = True
        Caption = 'Hide'
        Visible = False
        OnClick = btnInterceptClick
      end
      object sbControlModeNGS: TSpeedButton
        Tag = 14
        Left = 22
        Top = 113
        Width = 81
        Height = 22
        AllowAllUp = True
        GroupIndex = 4
        Caption = 'NGS'
        OnClick = btnGunModeClick
      end
      object ScrollBox4: TScrollBox
        Left = 2
        Top = 136
        Width = 299
        Height = 113
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 6
        object Label5: TLabel
          Left = 27
          Top = 4
          Width = 55
          Height = 13
          Caption = 'Salvo Size :'
        end
        object Label7: TLabel
          Left = 5
          Top = 19
          Width = 55
          Height = 13
          Caption = 'Corrections'
        end
        object Bevel1: TBevel
          Left = 76
          Top = 26
          Width = 219
          Height = 3
        end
        object Label9: TLabel
          Left = 19
          Top = 30
          Width = 60
          Height = 13
          Caption = 'Engagement'
        end
        object Edit1: TEdit
          Left = 138
          Top = 1
          Width = 62
          Height = 21
          MaxLength = 5
          NumbersOnly = True
          TabOrder = 0
          Text = '1'
          OnExit = editControlSalvoSizeExit
          OnKeyPress = editControlSalvoSizeKeyPress
        end
        object btnSetup: TButton
          Left = 219
          Top = 27
          Width = 75
          Height = 20
          Caption = 'Setup NGS'
          TabOrder = 1
          OnClick = btnSetupClick
        end
        object GroupBox1: TGroupBox
          Left = 25
          Top = 42
          Width = 160
          Height = 67
          Caption = 'Spotter Correction'
          TabOrder = 2
          object Label8: TLabel
            Left = 65
            Top = 39
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object Label29: TLabel
            Left = 65
            Top = 18
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object Spot1: TEdit
            AlignWithMargins = True
            Left = 6
            Top = 14
            Width = 53
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 7
            ParentFont = False
            TabOrder = 0
            Text = '0.0'
            OnKeyPress = Spot1KeyPress
          end
          object Spot2: TEdit
            Left = 6
            Top = 36
            Width = 53
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 7
            ParentFont = False
            TabOrder = 1
            Text = '0.0'
            OnKeyPress = Spot1KeyPress
          end
          object Button1: TButton
            Tag = 5
            Left = 106
            Top = 15
            Width = 25
            Height = 22
            Caption = 'L'
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button2: TButton
            Tag = 6
            Left = 131
            Top = 15
            Width = 25
            Height = 22
            Caption = 'R'
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button3: TButton
            Tag = 7
            Left = 106
            Top = 36
            Width = 25
            Height = 21
            Caption = 'D'
            TabOrder = 4
            OnClick = Button3Click
          end
          object Button4: TButton
            Tag = 8
            Left = 131
            Top = 36
            Width = 25
            Height = 21
            Caption = 'A'
            TabOrder = 5
            OnClick = Button4Click
          end
        end
        object GroupBox2: TGroupBox
          Left = 191
          Top = 46
          Width = 105
          Height = 63
          Caption = 'Gunner Correction'
          Enabled = False
          TabOrder = 3
          object lblDA: TLabel
            Left = 8
            Top = 30
            Width = 12
            Height = 13
            Alignment = taCenter
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblLR: TLabel
            Left = 8
            Top = 15
            Width = 12
            Height = 13
            Alignment = taCenter
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 45
            Top = 13
            Width = 42
            Height = 13
            Caption = 'mils right'
          end
          object Label28: TLabel
            Left = 45
            Top = 28
            Width = 54
            Height = 13
            Caption = 'metres add'
          end
          object btnConvert: TButton
            Left = 26
            Top = 43
            Width = 75
            Height = 19
            Caption = 'Convert'
            TabOrder = 0
            OnClick = btnConvertClick
          end
        end
      end
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 136
        Width = 295
        Height = 113
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 18
          Width = 61
          Height = 13
          Caption = 'Chaff Type :'
        end
        object Label2: TLabel
          Left = 24
          Top = 38
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object Label3: TLabel
          Left = 24
          Top = 58
          Width = 75
          Height = 13
          Caption = 'Bloom Position :'
        end
        object Label4: TLabel
          Left = 24
          Top = 83
          Width = 75
          Height = 13
          Caption = 'Bloom Altitude :'
        end
        object lblQuantityChaff: TLabel
          Left = 112
          Top = 38
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label6: TLabel
          Left = 166
          Top = 83
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object btnChaffType: TSpeedButton
          Left = 195
          Top = 13
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B0000000000000000000026221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D201C1626221C27
            231D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D25211C29252025211D16110B28241F26221E26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D25211C16110B7676744E4C4906
            010029262026221E26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D0C07017A7977C8CACC35312E07020029262026221E26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D100B05666462C0C2C3B3
            B3B435322E07020029252026221E26221D26221D26221D26221D26221D26221D
            26221D26221D100B056B6A67ADADADAAAAABB3B4B534312E0904002A26212622
            1D26221D26221D26221D26221D26221D26221D26221D100B056B6A67B1B2B296
            9696A7A7A7BABBBC4C4A4614100A26221D26221D26221D26221D26221D26221D
            26221D26221D100B056A6A68B0B2B2969696A7A8A8B8B9BA4B484515100B2622
            1D26221D26221D26221D26221D26221D26221D26221D100C056B6A68ACADAEAB
            ABABB2B2B3322F2B0904002A262126221D26221D26221D26221D26221D26221D
            26221D26221D100C06676664C1C2C3B1B1B3332F2C0702002A262126221D2622
            1D26221D26221D26221D26221D26221D26221D26221D0C07027C7B7AC7C9CA32
            2F2B0702002A262126221D26221D26221D26221D26221D26221D26221D26221D
            26221D25211C16110C7877754C49460602002A262126221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D25211C29252025211C16110C29
            252026221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D201C1626221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D}
          OnClick = btnChaffTypeClick
        end
        object btnPosition: TSpeedButton
          Left = 195
          Top = 53
          Width = 23
          Height = 22
          Caption = '+'
          OnClick = btnPositionClick
        end
        object edtChaffType: TEdit
          Left = 112
          Top = 14
          Width = 75
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtBloomPosition: TEdit
          Left = 112
          Top = 54
          Width = 75
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0.00'
        end
        object edtBloomAltitude: TEdit
          Left = 112
          Top = 79
          Width = 47
          Height = 21
          NumbersOnly = True
          TabOrder = 2
          Text = '100'
        end
      end
      object btnGunEngagementAssign: TButton
        Tag = 1
        Left = 21
        Top = 319
        Width = 68
        Height = 23
        Caption = 'Assign'
        Enabled = False
        TabOrder = 2
        OnClick = btnGunEngagementAssignClick
      end
      object btnGunEngagementCease: TButton
        Tag = 4
        Left = 222
        Top = 319
        Width = 68
        Height = 23
        Caption = 'Cease Fire'
        Enabled = False
        TabOrder = 3
        OnClick = btnGunEngagementCeaseClick
      end
      object btnGunEngagementBreak: TButton
        Tag = 2
        Left = 88
        Top = 319
        Width = 68
        Height = 23
        Caption = 'Break'
        Enabled = False
        TabOrder = 4
        OnClick = btnGunEngagementBreakClick
      end
      object btnGunEngagementFire: TButton
        Tag = 3
        Left = 155
        Top = 319
        Width = 68
        Height = 23
        Caption = 'Fire'
        Enabled = False
        TabOrder = 5
        OnClick = btnGunEngagementFireClick
      end
      object ScrollBox3: TScrollBox
        Left = 2
        Top = 137
        Width = 298
        Height = 111
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 1
        object Label10: TLabel
          Left = 26
          Top = 4
          Width = 55
          Height = 13
          Caption = 'Salvo Size :'
        end
        object Label11: TLabel
          Left = 1
          Top = 18
          Width = 32
          Height = 13
          Caption = 'Target'
        end
        object Bevel2: TBevel
          Left = 43
          Top = 26
          Width = 251
          Height = 3
        end
        object Label18: TLabel
          Left = 25
          Top = 32
          Width = 33
          Height = 13
          Caption = 'Track :'
        end
        object Label19: TLabel
          Left = 1
          Top = 49
          Width = 97
          Height = 13
          Caption = 'Autofire Parameters'
        end
        object Label20: TLabel
          Left = 25
          Top = 65
          Width = 86
          Height = 13
          Caption = 'Intercept Range :'
        end
        object Label21: TLabel
          Left = 25
          Top = 86
          Width = 87
          Height = 13
          Caption = 'Threshold Speed :'
        end
        object Label22: TLabel
          Left = 205
          Top = 86
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object Bevel5: TBevel
          Left = 107
          Top = 55
          Width = 187
          Height = 3
        end
        object Label23: TLabel
          Left = 205
          Top = 65
          Width = 14
          Height = 13
          Caption = 'nm'
        end
        object btnTargetSearch: TSpeedButton
          Tag = 10
          Left = 205
          Top = 28
          Width = 29
          Height = 24
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0C0D0D0B0C0C0A0B0C090A0B08090B07090A07090A0809
            0B08090B090A0B0B0B0C0C0C0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C0D090A0B050709020408000106000106
            00000500000500010600010600030704060907080A0B0C0C0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C0D090A0B090A0B06080A0E
            0D0D11100F1715121513111312101815121815121413100C0C0D0A0B0C090A0B
            0B0B0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0B0B0C0B0C0C090A
            0B11100F3C3122685336927449B28C57C1985EC59A5FBC945CA280507A613E4F
            402B201B150F0E0E0A0B0C0B0B0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0B0C0C
            0406090406091C19146B5637AF8A56B18C57917248896C45EDBA72FFD07FA682
            518B6E46AB8754B690598E7147392F21100F0F0305090B0B0C0D0D0D0D0D0D0D
            0D0D0B0C0C090A0B07080A1512106D5738C79D61D5A86795764A1E1A14000000
            A48251DDAD6A1B171205060979613EC59B60D1A5668B6E4630271D100F0E0A0B
            0C0B0B0C0D0D0D0D0D0D090A0B07090A1A1713715A3AA17F4F8C6F4650412B24
            1F17000000000000A28050E0B06C0E0E0D0000001A17133B3022745C3B9B7B4D
            8A6E45392F200F0F0E090A0B0B0C0C0D0D0D0507090E0E0D4F402ACCA1639E7D
            4E2C251B000003000001000000000000AC8855E8B77018161200000000000100
            00000F0E0D745C3BD0A4658E7146201C150A0B0C07080A0C0C0C0A0B0C262018
            907248D9AB6A6E5839000005000307090A0B000000000000B58F59F4BF751F1B
            1500000008090B06080A0000003C3122C59C60B7905A50412B0C0C0D0406090B
            0B0C08090B4C3D29B38D589B7A4D3B30210000040205080A0B0C000000000000
            B8915AF4C075201C16000000090A0B08090B0000011B171379613EAB87547A61
            3E141310000307090A0B030509725B3BB48E5931291D00000000000000000000
            0000000000000000675336896D45100F0E000000000000000000000000000000
            0406098B6E46A2805017151200010608090B000106856A43BE955C3E33231010
            0E1916121C1914241F17201C1608090B06080A0B0C0C010408100F0E201C161F
            1B151816120E0E0D191712A58251BC945C18151200010608090B000004826741
            FFC87AE8B770E0B06CE9B770EBB971FFC97BC0985E352C1F0000020000010B0C
            0C896D45F4C075F4BF75E8B770E0B06CDCAD6AFFD07FC59A5F13121000000507
            090A000005846842F2BD74BB935BA38150AC8855AF8A56C0975E8D7047241F17
            00000400000206080A675336B8915AB58F59AC8855A28050A48251EDBA72C198
            5E15131100000507090A000106826742AC875416141100000000000000000000
            0000000000000003241F17352C1F08090B000000000000000000000000000000
            000000896C45B28C5717151200010608090B010408635034AE89564538260002
            060000000000000000000000000000008D7047C0985E201C1600000000000000
            00000000000000001E1A1490724892744911100F000106090A0B06070A3C3122
            AB8754B18C5750412B0000040205080C0C0C000000000000C0975EFFC97B241F
            170000000A0B0C090A0B000001251F1795764AB28D576854360E0E0D0204080A
            0B0C090A0B1614117E643FDEAF6C8368420C0C0C000207020408000000000000
            AF8A56EBB9711C191400000002050800030700000351412BD5A867B08B563D32
            2206080A0507090B0C0C040609050709322A1D9F7E4EB9925B4538260B0B0C00
            0004000000000000AC8855E8B7701916120000000000040000052C241B8C6F46
            C69C606B563711110F090A0B090A0B0C0D0D090A0B06070A0E0E0D372D209475
            4AB28D5883684250412B000206000000A07E4FDDAE6B100F0E0000003A30216D
            57399E7D4FA17F506C56381C1813090A0B090A0B0C0C0D0D0D0D0C0C0D0B0C0C
            05070A0E0D0D372D20AE8A56DEAF6CB08B57453825171411BE955CECB9714034
            2331281C9B7A4DD9AB69CDA264725B3B1513110406090B0C0C0C0C0D0D0D0D0D
            0D0D0D0D0D0C0C0D06080A05070A0D0D0D30291D7E6440A98553AD8955B18C57
            FFCE7DFFD983C0975DB18C57B28D589072484E3F2A1A171307080A0406090B0B
            0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C0D0B0C0C06080A06080A1614113B
            3021624F33856A4493754A917348866B4370593A4B3D292520180D0D0D07080A
            090A0B0B0C0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C0D090A
            0B040609090A0B06070A01040700000500000500000400010603050808090B0A
            0B0C050709090A0B0B0C0C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Layout = blGlyphTop
          OnClick = btnTargetSearchClick
        end
        object editControlSalvoSize: TEdit
          Left = 138
          Top = 0
          Width = 64
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          Text = '1'
          OnExit = editControlSalvoSizeExit
          OnKeyPress = editControlSalvoSizeKeyPress
        end
        object editGunEngagementTargetTrack: TEdit
          Left = 137
          Top = 30
          Width = 64
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 1
          Text = '---'
        end
        object editAutofireIntercept: TEdit
          Left = 137
          Top = 61
          Width = 64
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '0.00'
          OnExit = editAutofireInterceptExit
          OnKeyPress = editAutofireInterceptKeyPress
        end
        object editAutofireThreshold: TEdit
          Left = 137
          Top = 82
          Width = 64
          Height = 21
          Enabled = False
          TabOrder = 3
          Text = '0.0'
          OnExit = editAutofireThresholdExit
          OnKeyPress = editAutofireThresholdKeyPress
        end
      end
    end
  end
  object pmenuChaffType: TPopupMenu
    Left = 272
    Top = 80
  end
end
