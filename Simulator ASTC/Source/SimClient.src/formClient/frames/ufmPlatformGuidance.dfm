inherited fmPlatformGuidance: TfmPlatformGuidance
  Width = 366
  Height = 470
  ExplicitWidth = 366
  ExplicitHeight = 470
  object PanelGuidanceControlChoices: TPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object SpeedButton2: TSpeedButton
      Tag = 1
      Left = 211
      Top = 8
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
      OnClick = SpeedButton2Click
    end
    object edGuidance: TEdit
      Left = 6
      Top = 9
      Width = 199
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'Straight Line'
    end
  end
  object PanelPlatformGuidance: TPanel
    Left = 0
    Top = 41
    Width = 366
    Height = 429
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object gbWaypoint: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label97: TLabel
        Left = 15
        Top = 26
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object lbName: TLabel
        Left = 150
        Top = 26
        Width = 12
        Height = 13
        Caption = '---'
      end
      object lblLongitude: TLabel
        Left = 150
        Top = 45
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label103: TLabel
        Left = 15
        Top = 45
        Width = 37
        Height = 13
        Caption = 'Position'
      end
      object lbGroundSpeed: TLabel
        Left = 150
        Top = 64
        Width = 16
        Height = 13
        Caption = '0.0'
      end
      object Label104: TLabel
        Left = 15
        Top = 64
        Width = 68
        Height = 13
        Caption = 'Ground Speed'
      end
      object lbEta: TLabel
        Left = 150
        Top = 104
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label105: TLabel
        Left = 15
        Top = 83
        Width = 70
        Height = 13
        Caption = 'Distance to Go'
      end
      object Label106: TLabel
        Left = 230
        Top = 83
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object Label107: TLabel
        Left = 15
        Top = 141
        Width = 111
        Height = 13
        Caption = 'Ordered Ground Speed'
      end
      object lbDistance: TLabel
        Left = 150
        Top = 83
        Width = 18
        Height = 13
        Caption = '000'
      end
      object Label177: TLabel
        Left = 230
        Top = 141
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label179: TLabel
        Left = 230
        Top = 162
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label184: TLabel
        Left = 230
        Top = 64
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblLatitude: TLabel
        Left = 230
        Top = 45
        Width = 12
        Height = 13
        Caption = '---'
      end
      object lbActualGroundWaypoint: TLabel
        Left = 150
        Top = 162
        Width = 16
        Height = 13
        Caption = '0.0'
      end
      object Bevel19: TBevel
        Left = 83
        Top = 13
        Width = 220
        Height = 3
      end
      object Bevel20: TBevel
        Left = 12
        Top = 127
        Width = 295
        Height = 3
      end
      object StaticText24: TStaticText
        Left = 15
        Top = 102
        Width = 23
        Height = 17
        Caption = 'ETA'
        TabOrder = 0
      end
      object StaticText26: TStaticText
        Left = 8
        Top = 7
        Width = 74
        Height = 17
        Caption = 'Next waypoint'
        TabOrder = 1
      end
      object StaticText27: TStaticText
        Left = 15
        Top = 160
        Width = 105
        Height = 17
        Caption = 'Actual Ground Speed'
        TabOrder = 2
      end
      object btnWaypoint: TButton
        Left = 184
        Top = 193
        Width = 120
        Height = 25
        Caption = 'Edit Waypoints..'
        TabOrder = 3
        OnClick = btnWaypointClick
      end
      object StaticText67: TStaticText
        Left = 136
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object StaticText71: TStaticText
        Left = 136
        Top = 43
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 5
      end
      object StaticText76: TStaticText
        Left = 136
        Top = 62
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 6
      end
      object StaticText77: TStaticText
        Left = 136
        Top = 81
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 7
      end
      object StaticText78: TStaticText
        Left = 136
        Top = 102
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 8
      end
      object StaticText79: TStaticText
        Left = 136
        Top = 160
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 9
      end
      object StaticText80: TStaticText
        Left = 136
        Top = 139
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 10
      end
      object edtWaypointOrderedGroundSpeed: TEdit
        Left = 150
        Top = 137
        Width = 60
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        MaxLength = 9
        TabOrder = 11
        OnKeyPress = edtWaypointOrderedGroundSpeedKeyPress
      end
    end
    object grbEngagement: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 5
      object Label300: TLabel
        Left = 10
        Top = 24
        Width = 78
        Height = 13
        Caption = 'Track to engage'
      end
      object Label305: TLabel
        Left = 10
        Top = 50
        Width = 85
        Height = 13
        Caption = 'Standoff distance'
      end
      object Label306: TLabel
        Left = 10
        Top = 76
        Width = 111
        Height = 13
        Caption = 'Ordered Ground Speed'
      end
      object Label307: TLabel
        Left = 216
        Top = 76
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label308: TLabel
        Left = 10
        Top = 102
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label309: TLabel
        Left = 216
        Top = 102
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblEngageActualGroundSpeed: TLabel
        Left = 136
        Top = 102
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object Label314: TLabel
        Left = 216
        Top = 50
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object sbEngageTrackToEngage: TSpeedButton
        Left = 216
        Top = 21
        Width = 23
        Height = 22
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
        OnClick = sbEngageTrackToEngageClick
      end
      object StaticText146: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtTrackToEngage: TEdit
        Left = 136
        Top = 22
        Width = 74
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object StaticText147: TStaticText
        Left = 122
        Top = 50
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object StaticText148: TStaticText
        Left = 122
        Top = 76
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 3
      end
      object StaticText149: TStaticText
        Left = 122
        Top = 100
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object edtEngageStandOffDistance: TEdit
        Left = 136
        Top = 48
        Width = 73
        Height = 21
        MaxLength = 11
        TabOrder = 7
        OnKeyPress = edtEngageStandOffDistanceKeyPress
      end
      object edtEngageOrderedGroundSpeed: TEdit
        Tag = 2
        Left = 136
        Top = 74
        Width = 73
        Height = 21
        MaxLength = 11
        TabOrder = 8
        OnKeyPress = edtStraightLineOrderedGroundSpeedKeyPress
      end
      object pnlDepthEngagement: TPanel
        Left = 1
        Top = 121
        Width = 319
        Height = 58
        BevelOuter = bvNone
        TabOrder = 6
        Visible = False
        object Label13: TLabel
          Left = 9
          Top = 7
          Width = 72
          Height = 13
          Caption = 'Ordered Depth'
        end
        object lblDeptEngagMOde: TLabel
          Left = 135
          Top = 31
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label26: TLabel
          Left = 215
          Top = 5
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object Label27: TLabel
          Left = 215
          Top = 31
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object StaticText17: TStaticText
          Left = 9
          Top = 31
          Width = 66
          Height = 17
          Caption = 'Actual Depth'
          TabOrder = 0
        end
        object StaticText18: TStaticText
          Left = 121
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText19: TStaticText
          Left = 121
          Top = 31
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object Edit2: TEdit
          Tag = 2
          Left = 135
          Top = 5
          Width = 73
          Height = 21
          Ctl3D = True
          MaxLength = 9
          ParentCtl3D = False
          TabOrder = 3
          Text = '0'
          OnKeyPress = edOrderAltitudeKeyPress
        end
      end
      object pnlAltitudeEngagement: TPanel
        Left = 1
        Top = 121
        Width = 319
        Height = 58
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        object Label1: TLabel
          Left = 9
          Top = 7
          Width = 80
          Height = 13
          Caption = 'Ordered Altitude'
        end
        object lblAltitudeEngagement: TLabel
          Left = 135
          Top = 33
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label11: TLabel
          Left = 215
          Top = 7
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object Label12: TLabel
          Left = 215
          Top = 33
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object StaticText8: TStaticText
          Left = 9
          Top = 33
          Width = 74
          Height = 17
          Caption = 'Actual Altitude'
          TabOrder = 0
        end
        object StaticText9: TStaticText
          Left = 120
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText16: TStaticText
          Left = 120
          Top = 28
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object edtAltitudeEngagement: TEdit
          Tag = 1
          Left = 135
          Top = 5
          Width = 73
          Height = 21
          Ctl3D = True
          MaxLength = 9
          ParentCtl3D = False
          TabOrder = 3
          Text = '0'
          OnKeyPress = edOrderAltitudeKeyPress
        end
      end
    end
    object grbEvasion: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object Label318: TLabel
        Left = 10
        Top = 26
        Width = 72
        Height = 13
        Caption = 'Track to evade'
      end
      object Label319: TLabel
        Left = 10
        Top = 55
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label320: TLabel
        Left = 221
        Top = 55
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblEvasionActualGroundSpeed: TLabel
        Left = 141
        Top = 55
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object sbTrackToEvade: TSpeedButton
        Left = 216
        Top = 21
        Width = 23
        Height = 22
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
        OnClick = sbTrackToEvadeClick
      end
      object Label10: TLabel
        Left = 10
        Top = 84
        Width = 76
        Height = 13
        Caption = 'Altitude / Depth'
      end
      object lblEvasionActualAltitudeDepth: TLabel
        Left = 141
        Top = 84
        Width = 18
        Height = 13
        Caption = '100'
      end
      object Label16: TLabel
        Left = 221
        Top = 84
        Width = 63
        Height = 13
        Caption = 'feet / metres'
      end
      object StaticText151: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtTrackToEvade: TEdit
        Left = 141
        Top = 22
        Width = 74
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object StaticText152: TStaticText
        Left = 122
        Top = 53
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object StaticText20: TStaticText
        Left = 122
        Top = 84
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 3
      end
    end
    object grbFormation: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Label323: TLabel
        Left = 10
        Top = 26
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Label324: TLabel
        Left = 10
        Top = 47
        Width = 33
        Height = 13
        Caption = 'Leader'
      end
      object lblLeaderFormation: TLabel
        Left = 141
        Top = 47
        Width = 64
        Height = 13
        Caption = 'Invicible R 05'
      end
      object lblNameFormation: TLabel
        Left = 141
        Top = 26
        Width = 18
        Height = 13
        Caption = 'TF1'
      end
      object Label373: TLabel
        Left = 10
        Top = 79
        Width = 36
        Height = 13
        Caption = 'Bearing'
      end
      object Label374: TLabel
        Left = 10
        Top = 100
        Width = 31
        Height = 13
        Caption = 'Range'
      end
      object Label381: TLabel
        Left = 221
        Top = 100
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object lblRangeFormation: TLabel
        Left = 141
        Top = 100
        Width = 22
        Height = 13
        Caption = '0.00'
      end
      object lblBearingFormation: TLabel
        Left = 141
        Top = 79
        Width = 18
        Height = 13
        Caption = '000'
      end
      object Label399: TLabel
        Left = 221
        Top = 79
        Width = 48
        Height = 13
        Caption = 'degrees T'
      end
      object pnlDepth: TPanel
        Left = 2
        Top = 116
        Width = 319
        Height = 24
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        object labelFormationDepth: TLabel
          Left = 140
          Top = 8
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label42: TLabel
          Left = 219
          Top = 9
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object StaticText34: TStaticText
          Left = 7
          Top = 5
          Width = 66
          Height = 17
          Caption = 'Actual Depth'
          TabOrder = 0
        end
        object StaticText36: TStaticText
          Left = 120
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
      end
      object pnlAltitude: TPanel
        Left = 3
        Top = 115
        Width = 319
        Height = 26
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        object labelFormationAltitude: TLabel
          Left = 138
          Top = 8
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label38: TLabel
          Left = 218
          Top = 9
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object StaticText31: TStaticText
          Left = 6
          Top = 4
          Width = 74
          Height = 17
          Caption = 'Actual Altitude'
          TabOrder = 0
        end
        object StaticText33: TStaticText
          Left = 118
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
      end
      object StaticText154: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object StaticText155: TStaticText
        Left = 122
        Top = 45
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 1
      end
      object StaticText156: TStaticText
        Left = 122
        Top = 77
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object StaticText157: TStaticText
        Left = 122
        Top = 98
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 3
      end
    end
    object grbHelm: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 11
      object Label120: TLabel
        Left = 22
        Top = 141
        Width = 94
        Height = 13
        Caption = 'Ordered helm angle'
      end
      object lblHelmActualTurnRate: TLabel
        Left = 157
        Top = 184
        Width = 18
        Height = 13
        Caption = '000'
      end
      object Label127: TLabel
        Left = 22
        Top = 160
        Width = 84
        Height = 13
        Caption = 'Actual helm angle'
      end
      object Label129: TLabel
        Left = 236
        Top = 160
        Width = 89
        Height = 13
        Caption = 'degrees starboard'
      end
      object Label131: TLabel
        Left = 22
        Top = 245
        Width = 109
        Height = 13
        Caption = 'Ordered ground speed'
      end
      object Label132: TLabel
        Left = 236
        Top = 245
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label133: TLabel
        Left = 236
        Top = 266
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label134: TLabel
        Left = 236
        Top = 141
        Width = 89
        Height = 13
        Caption = 'degrees starboard'
      end
      object lblHelmActualGroundSpeed: TLabel
        Left = 157
        Top = 266
        Width = 16
        Height = 13
        Caption = '0.0'
      end
      object Image2: TImage
        Left = 110
        Top = 3
        Width = 105
        Height = 105
      end
      object Label135: TLabel
        Left = 236
        Top = 184
        Width = 77
        Height = 13
        Caption = 'degrees/second'
      end
      object lbActualHelmAngle: TLabel
        Left = 157
        Top = 160
        Width = 12
        Height = 13
        Caption = '---'
      end
      object lblHelmActualHeading: TLabel
        Left = 157
        Top = 203
        Width = 18
        Height = 13
        Caption = '000'
      end
      object Label137: TLabel
        Left = 236
        Top = 203
        Width = 48
        Height = 13
        Caption = 'degrees T'
      end
      object lblHelmActualCourse: TLabel
        Left = 157
        Top = 223
        Width = 18
        Height = 13
        Caption = '000'
      end
      object Label139: TLabel
        Left = 236
        Top = 223
        Width = 48
        Height = 13
        Caption = 'degrees T'
      end
      object lblHelmActualDepth: TLabel
        Left = 162
        Top = 69
        Width = 16
        Height = 13
        Caption = '0.0'
      end
      object wheelHelmAngle: TVrWheel
        Left = 117
        Top = 14
        Width = 96
        Height = 96
        MaxValue = 360
        Position = 180
        BackImage.Data = {
          366C0000424D366C000000000000360000002800000060000000600000000100
          180000000000006C0000120B0000120B00000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808024272226221D25231F25252026231E2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D23282421
          2F2A242722008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080222C2726231E26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26231E222C27008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080222C2724262126221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26231E222C27008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          808000808000808000808000808000808025241F26221D26221D26221D26221D
          26221D26221D26221D26221D2E261B4233184E3A16563F145D4314644713694A
          126F4D11714F10755110755210725010714E116A4B126548135E441457401450
          3B164434182F271B26221D26221D26221D26221D26221D26221D26221D26221D
          232A260080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          808000808000808000808024262126221D26221D26221D26221D26221D26221D
          2A251C463517553E156145136B4C1175511079540F7B550F7C560F7C560F7E57
          0F7E570F7E570F7F570F7F580F7F570F7E570F7E570F7C560F7C560F7B550F7A
          540F7652106D4D116246135740154937172A251C26221D26221D26221D26221D
          26221D26221D26231E0080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          808000808024262226221D26221D26221D26221D26221D26221D473517573F14
          6648127551107A540F7C560F7E570F7E570E7E570F7E570F7E570F7F570F7F58
          0F80590F815A0F825A0F825A0F815A0F81590F80590F7F580F7E570F7E570F7E
          570F7E570E7E570F7C560F7A550F765210684A125A41144A371726221D26221D
          26221D26221D26221D26221D26231E0080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808022
          2B2626221D26221D26221D26221D26221D32291A503B156145137350107B550F
          7E570E80580E80580E80580E80580E80580E80580E80580E80580E81590E825A
          0E845B0E8860148B641A8B641A8B651B865E12835B0E82590E81590E80580E80
          580E80580E80580E80580E80580E80580F7E570F7C560F765210654813553E15
          342B1A26221D26221D26221D26221D26221D222B260080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080008080008080008080008080222C2726221D26
          221D26221D26221D26221D352B1A523C1565481278530F7E570E80580E80580E
          80580E80580E80580E80580E80580E80580E80580E80580E80580E81590E835B
          0E855C0E8B64178F691F8F691E8F6920896113855C0E825A0E81590E80580E80
          580E80580E80580E80580E80580E80580E80580E80580E80580E7E570E7A540F
          694A12573F15382D1A26221D26221D26221D26221D26221D222C270080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080008080008080008080232A2626221D26221D26
          221D26221D2E261B513B156648117A540F7F580E80580E80580E80580E80580E
          80580E80580E80580E80580E80580E80580E80580E80580E81590E825A0E845C
          0E875E0E926D279775349774339674338E671B865D0E835B0E81590E80580E80
          580E80580E80580E80580E80580E80580E80580E80580E80580E80580E80580E
          80580E7C560F6B4B11563F152F281B26221D26221D26221D26221D25241F0080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808025241F26221D26221D26221D26
          221D4736166246127B550F80580E835A0E835A0E835A0E835A0E835A0E835A0E
          835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E845B0E855C0E885E
          0E8C610E9976329C7B3E9C7B3E9C7B3E946D228A600E875D0E855B0E835A0E83
          5A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E
          835A0E835A0E81590E7E570F6749124D391626221D26221D26221D26221D2622
          1D00808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080222D2926221D26221D26221D26221D332A1A56
          3E1473501080580E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E
          845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E855C0E875D0E8A60
          0E8E630E9976309D7C3E9D7C3E9C7B3C956E218C620E885F0E865D0E845B0E84
          5B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E
          845B0E845B0E845B0E845B0E81590E7853105C4314372C1A26221D26221D2622
          1D26221D222D2900808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          800080800080800080801F332F26221D26221D26221D26221D4332176346127D
          560E845B0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D
          865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D875D0D895E0D8C61
          0D90650E9B772F9E7D3D9E7D3D9E7C3B97701F8F640D8B600D885E0D865C0D86
          5C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D
          865C0D865C0D865C0D865C0D865C0D855B0D80580E694A1248371726221D2622
          1D26221D26221D23292400808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808020302C26221D26221D26221D26221D4D39156D4D1082590D87
          5C0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D
          875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D885E0D8A600D8D62
          0D92660D9C782F9F7D3D9F7D3D9F7D3B99711F90650D8C610D895F0D875D0D87
          5D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D
          875D0D875D0D875D0D875D0D875D0D875D0D875D0D855B0D745110543E152622
          1D26221D26221D26221D24282300808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808024282326221D26221D26221D2B251C543D147C550E875C0D8A5E0D89
          5E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D
          895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D8A5F0D8C600D8F63
          0D93670D9E782FA17E3DA17E3DA07D3B9A721F92660D8E620D8B600D895E0D89
          5E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D
          895E0D895E0D895E0D895E0D895E0D895E0D895E0D8A5E0D895D0D825A0E5C42
          142D261C26221D26221D26221D20302C00808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8024282326221D26221D26221D31281B583F1381580D8A5E0C8C600C8B5F0C8B
          5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C
          8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8C600C8E610C9064
          0C94670C9F792EA27F3DA27F3DA27E3B9B721E93660C8F630C8D610C8B5F0C8B
          5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C
          8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8C600C8B5F0C875C
          0E604613332A1B26221D26221D26221D20302C00808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080802329
          2426221D26221D26221D31281B59401382590D8C5F0C8D600C8D600C8D600C8D
          600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C
          8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8E610C8F620C9264
          0C95670CA17A2FA4803DA4803DA37F3B9C721F94660C91630C8F620C8D600C8D
          600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C
          8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D60
          0C885D0D634713352B1B26221D26221D26221D1F332F00808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080802428232622
          1D26221D26221D30281B5A4112865B0C8E610C90620C90620C90620C90620C90
          620C90620C90620C90620C90620C90620C90620C90620C90620C90620C90620C
          90620C90620C90620C90620C90620C90620C90620C90620C91620C92640C9466
          0C96680CA37C31A6813DA6813DA6813D9E742095670C93650C91630C90620C90
          620C90620C90620C90620C90620C90620C90620C90620C90620C90620C90620C
          90620C90620C90620C90620C90620C90620C90620C90620C90620C90620C9062
          0C90620C8C600C644712332A1B26221D26221D26221D222D2900808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808000808000808000808026221D2622
          1D26221D2B261C594013865B0C8F610B90620B90620B90620B90620B90620B90
          620B90620B90620B90620B90620B90620B90620B90620B90620B90620B90620B
          90620B90620B90620B90620B90620B90620B90620B90620B90620B91630B9364
          0B95660B9B6F189D721D9D711A9D721E996C1294660B92640B91630B90620B90
          620B90620B90620B90620B90620B90620B90620B90620B90620B90620B90620B
          90620B90620B90620B90620B90620B90620B90620B90620B90620B90620B9062
          0B90620B90620B8D600C6347132D261C26221D26221D26231E00808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808000808000808026221D26221D2622
          1D26221D543E13855B0C90620B92630B92630B92630B92630B92630B92630B92
          630B92630B92630B92630B92630B92630B92630B92630B92630B92630B92630B
          92630B92630B92630B92630B92630B92630B92630B92630B92630B93640B9465
          0B95660B96670B97680B97680B97680B96670B94650B93640B93640B92630B92
          630B92630B92630B92630B92630B92630B92630B92630B92630B92630B92630B
          92630B92630B92630B92630B92630B92630B92630B92630B92630B92630B9263
          0B92630B92630B92630B8D600C60451326221D26221D26221D25241F00808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808000808025241F26221D26221D2622
          1D4E3A1483590C91620B94640B94640B94640B94640B94640B94640B94640B94
          640B94640B94640B94640B94640B94640B94640B94640B94640B94640B94640B
          94640B94640B94640B94640B94640B94640B94640B93640B92630B91620B9061
          0B8F600A8E600A8E610A8D600A8C5F0A8C5F0A8C5F0A8D5F0A8D5F0A8F600B91
          620B92630B93640B94640B94640B94640B94640B94640B94640B94640B94640B
          94640B94640B94640B94640B94640B94640B94640B94640B94640B94640B9464
          0B94640B94640B94640B93640B8D610C59411426221D26221D26221D232A2600
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080222C2726221D26221D26221D4332
          1776510E91620B96650A97660A97660A97660A97660A97660A97660A97660A97
          660A97660A97660A97660A97660A97660A97660A97660A97660A97660A97660A
          97660A97660A97660A97660A96660A95650A92630A8F60098A5D09855A098057
          097E56087B54087A52087851087751087851087A52087B53087E550881570985
          5A098A5D098F600992630A95650A96660A97660A97660A97660A97660A97660A
          97660A97660A97660A97660A97660A97660A97660A97660A97660A97660A9766
          0A97660A97660A97660A97660A95650B82590E4B391726221D26221D26221D1E
          3733008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808026221D26221D26221D332A196849
          108F610B97660A98670A98670A98670A98670A98670A98670A98670A98670A98
          670A98670A98670A98670A98670A98670A98670A98670A98670A98670A98670A
          98670A98670A97670A96650A91630A8A5E0981580A714D0B5C410F4D38124131
          15382C1731281A2D261B2B251C2D261B312819382C174031154B3712583E0E69
          480B7550097D5508855A098B5F0991630A96650A97670A98670A98670A98670A
          98670A98670A98670A98670A98670A98670A98670A98670A98670A98670B9867
          0A98670A98670A98670A98670A98670A95650B755210382D1926221D26221D26
          221D008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808025252026221D26221D26221D5840128C5F
          0B98670A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A
          680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A
          99680A98660A93630A8B5D0977520A5A401044331530281A29241C28231C2722
          1D26221D26221D26221D26221D26221D26221D26221D27221D28231C29241C30
          281A423214543C0F6C490A7A52088359098C5E0993640A98660A99680A9A680A
          9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A68
          0A9A680A9A680A9A680A9A680A9A680A9A680A96650B67491226221D26221D26
          221D222B26008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808026221D26221D26221D46351681580C9766
          0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9B690A9B690A9B690A9B
          690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9A680A
          96650A8C5F0973500C4F391333291927231D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D28231C3329194A361267470A7852088459098E600996660A9A680A
          9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B69
          0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C690A8F620C513C1626221D26
          221D26221D008080008080008080008080008080008080008080008080008080
          00808000808000808000808026221D26221D26221D2D271B694A0F93630A9D6A
          099E6B099F6C09A06D09A06D09A06D09A06D099F6C099E6B099E6B099D6A099D
          6A099D6A099D6A099D6A099D6A099D6A099D6A099D6A099C6A099B6809946409
          7B550B523B122F271A26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D2F271A4B37116B490A7E55078A5D08946409
          9B68099C6A099D6A099D6A099D6A099D6A099D6A099D6A099D6A099E6B099E6B
          099F6C09A06D09A06D09A06D09A06D099F6C099E6B099C690A79540F30281B26
          221D26221D242622008080008080008080008080008080008080008080008080
          00808000808000808000808026221D26221D26221D513B148D5F0A9E6A09A16D
          09A36F09A47009A6730CA7740EA67209A57109A47009A36F09A26E09A16D09A1
          6D09A06C09A06C09A06C09A06C09A06C09A06C099F6C099C69098F620966480F
          382C1826221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D372B185A400D785108875B08
          9464089C69099F6C09A06C09A06C09A06C09A06C09A16D09A16D09A26E09A36F
          09A47009A57109A6730BA7740FA5710AA47009A26E09A16D099B690A5F441426
          221D26221D26221D008080008080008080008080008080008080008080008080
          00808000808000808026231E26221D26221D342A19724F0D996709A06C09A26E
          09A47009A67209AF8228B28735AC7C1AA9750CA77309A57109A47009A26E09A1
          6D09A16D09A06C09A06C09A06C09A06C099F6C099C6909865B0A503B132B251C
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D2C251B4936126F4B09
          8359079263089C69099F6C09A06C09A06C09A16D09A26E09A36F09A47009A672
          09A77309A9770EAE8023B28837AC7C1BA57109A36F09A26E09A16D09845A0D39
          2E1926221D26221D242621008080008080008080008080008080008080008080
          00808000808000808026221D26221D26221D543D13916209A06B08A46E08A670
          08A87208AE7B17B58835B58A39B58A39B38327AE7B11AB7609A97308A77108A6
          7008A56F08A46E08A36D08A36D08A26D089F6A0883590A43331626221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D3F3016
          6C4A098458069463079F6A08A26D08A46E08A56F08A67008A87208A97408AC77
          0BB07D17B4862EB58A39B58A39B48630AB760CA77209A56F08A46E08A06C0964
          471326221D26221D26221D008080008080008080008080008080008080008080
          00808000808025241F26221D26221D31281A74500D9C6808A56E08A77108A972
          08AC750BB68932B88C39B88C39B88C39B88C39B88B37B48321B07B0FAC7508AA
          7308A87108A77008A66F08A56F08A26C08845A0B3D2F1726221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          3B2E176D4A09875A06986507A46E08A67108A97208AB7408AD7608B17D12B686
          2AB88C39B88C39B88C39B88C39B88C39B38325AD7811A87208A77008A46E0888
          5D0D362B1A26221D26221D232A26008080008080008080008080008080008080
          00808000808026221D26221D26221D503B13926208A36D08A66F08A87109A972
          08AC760CB48326B78B37B88C39B88C39B88C39B88C39B88C39B78931B27F1BAD
          780FA97208A87108A77008A36D08875C0A3D2F1826221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D3A2D176E4B09895B079B6807A56F08AA7409AF7A12B48221B78B36B88C
          39B88C39B88C39B88C39B88C39B78A34B28121AD7812A87108A77008A66F08A4
          6E0860451326221D26221D212F2A008080008080008080008080008080008080
          008080222C2726221D26221D26221D6C4C0E9C6908A77008A87108A97208AA73
          08AC7508AE7708B4811BB88A2FB98D39B98D39B98D39B98D39B98D39B98D39B5
          8425AC7509AA7308A8710892630A46351626221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D4131157650088F6107A16E08AD770CB88B33B98D39B98D39B98D
          39B98D39B98D39B98D37B7882AB27E13AD7708AB7408AA7308A97208A87108A6
          6F0881590E26221D26221D26221D1E3733008080008080008080008080008080
          00808026231E26221D26221D4333168F6008A46E07AB7207AB7207AC7307AC73
          07AD7507AF7607B17807B37C0AB88520BB8C31BC8E39BC8E39BC8E39BB8D35B5
          8018AF7607AC7407A26D0858401326221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D27221D4E3911835805996706AA7308B68423BC8E39BC8E39BC8E
          39BC8E39BA8A2DB78319B27A07B07807AF7607AD7407AC7307AB7307AB7207AA
          7107A66F084F3A1626221D26221D242622008080008080008080008080008080
          00808026221D26221D26221D5C4111996707AA7107AC7307AC7307AC7307AD74
          07AD7507AE7607B07707B17907B37B07B68010BA8825BC8F37BD8F39B88521B1
          7907AF7707AB730775510E2D261B26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D2D261B62440D8C5E06A26D06B07909BB8B2FBD8F39BC8D
          32B9861EB47D0AB27A07B17807AF7707AE7507AD7407AD7407AC7307AC7307AC
          7307A97107704E1126221D26221D26221D008080008080008080008080008080
          00808026221D26221D2A241C77510BA16B07AB7207AC7307AC7307AC7307AC73
          07AD7407AD7407AE7507AF7607B07807B17907B27A07B7821AB98827B37C0EB0
          7707AD760794640A3C2F1826221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D392D17775108966506A87307B47F15B98827B57F
          11B27A07B17907B07707AF7607AE7507AD7407AD7407AC7307AC7307AC7307AC
          7307AB72078F610B2B251C26221D26221D008080008080008080008080008080
          26231E26221D26221D423316916207A77007AE7407AE7407AE7407AE7407AE74
          07AE7407AE7407AF7507AF7507B07607B17707B27807B27807B27807B17807B0
          7707AC740762461226221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D543C108B5D06A16C06AE7607B27807B278
          07B17807B17707B07607AF7507AF7507AE7407AE7407AE7407AE7407AE7407AE
          7407AD7307AB72074D3A1626221D26221D222C27008080008080008080008080
          25231F26221D26221D573F119A6706AD7306B17606B17606B17606B17606B176
          06B17606B17606B17606B17706B27706B27706B37806B37806B37806B37806B1
          770693640A332A1A26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D32291A765008986605AC7306B27806B378
          06B37806B27706B27706B17706B17606B17606B17606B17606B17606B17606B1
          7606B17606AF74066A4B1126221D26221D222C27008080008080008080008080
          26221D26221D26221D6C4B0DA26B06B07506B27606B27606B27606B27606B276
          06B27606B27606B27606B27606B27606B27606B37706B37706B37706B37706B0
          760662451227231E27231E27231E27231E26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D27231E27231E27231E27231E553C108F5F05A56E06B17606B377
          06B37706B27606B27606B27606B27606B27606B27606B27606B27606B27606B2
          7606B27606B17606845B0D26221D26221D26221D008080008080008080008080
          26221D26221D2D261B835809A87006B27606B37706B37706B37706B37706B377
          06B37706B37706B37706B37706B37706B37706B37706B37706B37706B377069D
          69093A2E1927231E27231E27231E27231E26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D27231E27231E27231E27231E372C187E55079D6805AE7406B377
          06B37706B37706B37706B37706B37706B37706B37706B37706B37706B37706B3
          7706B37706B377069F6A0930281B26221D26221D008080008080008080222D28
          26221D26221D3E3017956306AC7206B47806B47806B47806B47806B47806B478
          06B47806B47806B47806B47806B47806B47806B47806B47806B47806B1770677
          531028241E27231E27231E27231E26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D27231E27231E27231E29241D62450E956305AB7206B378
          06B47806B47806B47806B47806B47806B47806B47806B47806B47806B47806B4
          7806B47806B47806B1760649371726221D26221D1D383400808000808025231F
          26221D26221D4E3913996606AE7405B57805B57805B57805B57805B57805B578
          05B57805B57805B57805B57805B57805B57805B57805B57805B57805B1760557
          3F1528241E28241E28241E28241E26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D28241E28241E28241E28241E4C38148E5E04A56E05B377
          05B57805B57805B57805B57805B57805B57805B57805B57805B57805B57805B5
          7805B57805B57805B377065E441326221D26221D212F2A00808000808025231F
          26221D26221D5B41109D6806B17505B67805B67805B67805B67805B67805B678
          05B67805B67805B67805B67805B67805B67805B67805B67805B678059D690937
          2C1B28241F28241F28241F27231E26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D27231E28241F28241F28241F352B1A7B5308A16A04B275
          05B67805B67805B67805B67805B67805B67805B67805B67805B67805B67805B6
          7805B67805B67805B47806714F1026221D26221D23282400808000808026221D
          26221D26221D68480EA46D05B67805B97B05B97B05B97B05B97B05B97B05B97B
          05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05835A0E2C
          261E28241F28241F28241F27231E26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D27231E28241F28241F28241F2D271E68480D9E6904B277
          05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B9
          7B05B97B05B97B05B87A0583590E26221D26221D25252000808000808026231E
          26221D26221D744F0BA76F05B77905BA7B05BA7B05BA7B05BA7B05BA7B05BA7B
          05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05B97B05B97B056B4D132C
          271F29251F29252028241F26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D28241F2925202925202C271F583F129A6604B075
          05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA
          7B05BA7B05BA7B05BA7B0591630B26221D26221D26231E00808000808026221D
          26221D26221D7E5509AB7104B97B04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C
          04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BA7C04BA7C045A42162A
          262029252029252028241F26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D28241F2925202925202A26204A3815976503B075
          04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB
          7C04BB7C04BB7C04BB7C04A06B0926221D26221D26221D00808000808026221D
          26221D26221D875B07AE7304BC7C04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D
          04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BC7D04BC7D04BC7D044B391A2A
          26202A26202A262028241E26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D28241E2A26202A26202A2620403219966403B075
          04BC7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD
          7D04BD7D04BD7D04BD7D04AE730726221D26221D26221D00808000808026221D
          26221D26221D8F5F05B07504BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E
          04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BE7E04BE7D04BE7D043F321C2A
          26212A26212A262127231E26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D27231E2A26212A26212A2621382E1C966303B175
          04BE7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF
          7E04BF7E04BF7E04BF7E04B6790526221D26221D26221D00808000808026221D
          26221D26221D926104B07504BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E
          04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BE7D04BE7D04BE7D04382E1F2B
          27212B27212B272127231E26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D27231E2B27212B27212C2721332B1E956203B174
          04BE7D04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF
          7E04BF7E04BF7E04BF7E04BC7C0426221D26221D26221D00808000808026221D
          26221D26221D936204B17504C07E04C17F04C17F04C17F04C17F04C17F04C17F
          04C17F04C17F04C17F04C17F04C17F04C17F04C07E04BF7E04BF7E04342D202C
          27222C27222C272227231E26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D27231E2C27222C27222C2822312B20976403B276
          04C07E04C17F04C17F04C17F04C17F04C17F04C17F04C17F04C17F04C17F04C1
          7F04C17F04C17F04C17F04BE7D0426221D26221D26221D00808000808026221D
          26221D26221D905F04B17403C07F03C28003C28003C28003C28003C28003C280
          03C28003C28003C28003C28003C28003C28003C17F03C07F03C07F0339301F2D
          28222C28222C282227231E26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D27231E2C28222C28222D2822352D1F9A6602B477
          03C17F03C28003C28003C28003C28003C28003C28003C28003C28003C28003C2
          8003C28003C28003C28003B87A0426221D26221D26221D00808000808026221D
          26221D26221D895C06AE7403BF7E03C28003C28003C28003C28003C28003C280
          03C28003C28003C28003C28003C28003C28003C07F03C07F03C07F0342341E2D
          28232D28232D282328241F26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D28241F2D28232D28232D28233B301E9C6702B578
          03C07F03C28003C28003C28003C28003C28003C28003C28003C28003C28003C2
          8003C28003C28003C28003B0750626221D26221D26221D00808000808026221D
          26221D26221D825707AE7203C07E03C38103C38103C38103C38103C38103C381
          03C38103C38103C38103C38103C38103C38103C18003C07F04C07F044E3C1C2E
          29232E29232E29232A252026221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D2A25202E29232E29232E292344351BA06A03B779
          04C18003C38103C38103C38103C38103C38103C38103C38103C38103C38103C3
          8103C38103C38103C38103A66F0726221D26221D26221D00808000808026221D
          26221D26221D78510AAB7003BF7E03C58203C58203C58203C58203C58203C582
          03C58203C58203C58203C58203C58203C58203C38103C18004C180055F46192F
          2B242E2A242E2A242B272126221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D2B27212E2A242E2A24302B24503D18A56D03BA7B
          04C38103C58203C58203C58203C58203C58203C58203C58203C58203C58203C5
          8203C58203C58203C5820398670A26221D26221D26231E00808000808026221D
          26221D26221D6B4A0DA86F03BE7D03C58203C58203C58203C58203C58203C582
          03C58203C58203C58203C58203C58203C58203C38103C17F04C2800773521531
          2C232F2A242F2A242D292326221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D2D29232F2A242F2A24312C23604414AA7004BC7C
          04C38103C58203C58203C58203C58203C58203C58203C58203C58203C58203C5
          8203C58203C58203C58203885C0D26221D26221D25252000808000808025231F
          26221D26221D5E430FA56D03BE7C03C78303C78303C78303C78303C78303C783
          03C78303C78303C78303C78303C78303C78303C58203C28004C180048C610F33
          2D24302B25302B25302B2529241F26221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D29241F302B25302B25302B25342D2473500FB17504C07E
          04C68203C78303C78303C78303C78303C78303C78303C78303C78303C78303C7
          8303C78303C78303C6820375520F26221D26221D232824008080008080242622
          26221D26221D4F3A13A06A03BC7B02C78202C88302C88302C88302C88302C883
          02C88302C88302C88302C88302C88302C88302C78202C28003C17F03A9720841
          3521312C26312C26312C262C272226221D26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D26221D2C2722312C26312C26312C263E33208F6007B77903C17F
          03C78302C88302C88302C88302C88302C88302C88302C88302C88302C88302C8
          8302C88302C88302C6820360451326221D26221D25231F008080008080222D28
          26221D26221D3E31179A6603B67702C58102C88302C88302C88302C88302C883
          02C88302C88302C88302C88302C88302C88302C88302C38003C07E03BE7D0362
          491A322D27322D26322D262F2B2427231E26221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D27231E2F2B24322D26322D26322D26564018A76E03BB7B03C380
          03C88302C88302C88302C88302C88302C88302C88302C88302C88302C88302C8
          8302C88302C88302C3810348371726221D26221D222D28008080008080008080
          26221D26221D2D261B8A5B06B17402C48102C98402C98402C98402C98402C984
          02C98402C98402C98402C98402C98402C98402C98402C58203C07F03BE7D0485
          5C12342E27332E27332E27332E272B262126221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D2B2621332E27332E27332E27342E26725010AF7304BF7E03C682
          03C98402C98402C98402C98402C98402C98402C98402C98402C98402C98402C9
          8402C98402C98402B175062F271B26221D26221D008080008080008080008080
          26221D26221D26221D724E0AAA7002C38002CA8502CA8502CA8502CA8502CA85
          02CA8502CA8502CA8502CA8502CA8502CA8602CA8602C98502C28103C07F04AC
          7508483A23342F28342F28342F282F2B2426221D26221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D26221D2F2B24342F28342F28342F28443722986706B87A04C28103C985
          02CA8602CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA
          8502CA8502CA850292630A26221D26221D26221D008080008080008080008080
          26231E26221D26221D5A3F10A36B02BE7D02C98402CA8502CA8502CA8502CA85
          02CA8502CA8502CA8502CA8602CB8602CB8602CB8702CB8702C48203BE7F04BE
          7E0470511936302A3530293530293530292B272126221D26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          26221D2B272135302935302935302936302A644916AE7304BC7D04C48203CB87
          02CB8702CB8602CB8602CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA
          8502CA8502C984026F4E1026221D26221D26231E008080008080008080008080
          222C2726221D26221D4233159C6702B67802C78302CA8502CA8502CA8502CA85
          02CA8502CA8502CB8602CB8602CB8702CC8802CC8902CD8902C88704C08104BD
          7F04A26F0B43382636312A36312A36312A312D2627231E26221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          27231E312D2636312A36312A36312A403625926208B67A04BF8004C88704CD89
          02CC8902CC8802CB8702CB8602CA8602CA8502CA8502CA8502CA8502CA8502CA
          8502CB8502C783024D391526221D26221D222C27008080008080008080008080
          00808026221D26221D29241C7F5607AE7302C48102CC8602CC8602CC8602CC86
          02CC8702CD8702CD8802CE8902CF8A02D08B02D08C02D3951AD49826C6880CBF
          8005BE7E0572531938322B38322B38322B38322B2F2A2426221D26221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
          2F2A2438332B38322B38322B38322B664A18AF7505BE7F05C98D15D49926D291
          0FD08C02CF8B02CE8A02CE8902CD8802CD8702CC8702CC8602CC8602CC8602CC
          8602CB8502A26C072B251C26221D26221D008080008080008080008080008080
          00808026221D26221D26221D60430FA56C02BF7E02CA8502CC8602CC8602CC87
          02CD8702CE8802CE8A02CF8B02D08D02D3920FD59924D69E35D69E35CF931FC0
          8105BD7E05A6720B4F40253B352D3A342D3A342D37322B2C272226221D26221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2C2722
          37322B3A342D3A342D3B352D4B3C2497660AB77B05C08308D1992DD69E35D69D
          30D4981ED29008D08C02CF8B02CE8902CD8802CD8702CC8702CC8602CC8602CC
          8602C9840278530F26221D26221D26221D008080008080008080008080008080
          00808026231E26221D26221D4333159B6602B67702C88302CC8602CC8702CD87
          02CE8802CE8A02D08C02D29009D4981FD69D30D69E35D69E35D69E35D59D32C7
          8C16BB7E05BA7C05875F1443392C3C362F3B352E3C362F36302A29252026221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26221D29252036302A
          3C362F3B352E3C362F41392A7A5612B17605BB7F07CA9123D59D35D69E35D69E
          35D69E35D59B2BD49619D18D03CF8B02CE8902CD8802CD8702CC8602CC8602CC
          8602C782024E3A1526221D26221D242622008080008080008080008080008080
          0080801E373326221D26221D26221D75500AAA6F02C27F01CC8601CD8801CE89
          01CF8A01D18D02D49618D69D2BD79F34D79F34D79F34D79F34D79F34D79F34D0
          941DBE8005B97C05B379076B501E3F39303E38303E38303E38303530292A2520
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D2A25203530293E3830
          3E38303E38303F3830634A1DA87006B77B05C08308D2992CD79F34D79F34D79F
          34D79F34D79F34D79F34D69B26D39311D08C01CF8A01CE8901CD8801CD8701CB
          850294630A26221D26221D26221D1E3733008080008080008080008080008080
          00808000808026221D26221D26221D533C11A06902B87901C98401CE8802CE89
          01D08D06D59922D79F33D79F34D79F34D79F34D79F34D79F34D69B27D39311D1
          8E06C58403B87C05B57905A5700A5C4825413A33403A32403A32403A3239332B
          2E292326221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D2E292339332C403A32403932
          403932413A335744249A670AB27705B97C05C78504D2900AD49618D79D2ED79F
          34D79F34D79F34D79F34D79F34D79E30D4971DD18F0CCE8901CE8801CD8701C9
          830263471126221D26221D212F2B008080008080008080008080008080008080
          008080008080232A2626221D26221D31291A815507AD7101C38001CE8701CF89
          01D18C03D79B29D89F34D89F34D89F34D89F34D79E2FD59616D39006D18C01D0
          8A01CC8701C07F04B57805B477059E6B0D564529433D34423B34423B33423B33
          3E3830332E2728241F26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D28241F332E273E3830423B33423B33423B33
          433C3452422893650CB07405B47905C17F03CE8801D08B01D28D01D4920AD699
          1FD89F34D89F34D89F34D89F34D89F34D5971CD28E09CF8901CF8801CC8601A2
          6C07342A1A26221D26221D232A26008080008080008080008080008080008080
          00808000808000808026221D26221D26221D593F10A16901BA7A01CC8601D08A
          01D18C01D4920DD89E2ED9A034D89F32D7991CD59209D38E01D28D01D18B01D0
          8A01D08901CA8602BC7C04B37706B377069B6A0E58472B453F36443E36443D35
          443E35443D353B362E312C2526221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D312C253B352E443E35443E35443D35443E35453F36
          54442A92640EAF7406B27706BC7D04CB8602D08901D18A01D18C01D28D01D390
          03D5940DD79B24D9A034D9A034D79C28D38E04D18B01D08A01CF8901CA84016B
          4B1026221D26221D26221D008080008080008080008080008080008080008080
          00808000808000808024262126221D26221D342A19805607AD7201C58101CE89
          01D18B01D28D01D6981FD89D2BD5930FD38F02D28D01D18C01D18B01D08A01D0
          8901CF8901CF8801C88402B97B05B27606B276069B6A0E5F4B29474037474037
          464037463F374640374640373C362F322D2628241F26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D28241F322D263C362F463F37463F37463F374640374740374740375A4829
          94650EAF7406B17606BA7B05C98402CF8801CF8901D08901D08A01D18B01D28C
          01D28E01D39005D69718D89E2ED59413D28C01D18B01D08901CD8801A16B0738
          2D1926221D26221D242621008080008080008080008080008080008080008080
          00808000808000808000808026221D26221D26221D563D119F6901B87901CA85
          01D08A01D18B01D28D04D28E06D28C01D18C01D18B01D08A01D08901CF8901CF
          8801CF8801CF8801CF8801C88402B87A05B17606B17606A16E0C6D52234C4335
          4A433A484139484138484138484139484139413A3337322B2F2A2427231E2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D27231E2F2A2437
          322B413A334841394841394841384841384841384A423A4C4235674E229B690C
          AE7406B17606B97B05C88402CF8801CF8801CF8801CF8801D08901D08901D08A
          01D18B01D18C01D28D02D28E06D18C02D18B01D08A01D08901C9840165471126
          221D26221D26221D008080008080008080008080008080008080008080008080
          00808000808000808000808024262226221D26221D2D261B74500AAA6F01C180
          01CF8801D18B01D18B01D18B01D18B01D18B01D18A01D08A01D08901D08901D0
          8901D08901D08901D08901D08901C98502BA7C05B17606B07606AB7408835E19
          5849304A433A4A433A4A433A4A433A4A433A4A433A4A433A4A433A443D353D37
          3037322B322D262D29232A25202D2923322D2637322B3D3730443D354A433A4A
          433A4A433A4A433A4A433A4A433A4A433A4A433A5648307D5B19A67008AF7506
          B17606BB7C05C98502D08901D08901D08901D08901D08901D08901D08A01D18A
          01D18B01D18B01D18B01D18B01D18B01D18A01D18A01CE880192630A2F271B26
          221D26221D242622008080008080008080008080008080008080008080008080
          00808000808000808000808000808026221D26221D26221D483614936203B275
          01C78201CF8901D18A01D18A01D18A01D08A01D08A01D08901D08901D08901D0
          8901D08901D08901D08901D08901D08901CA8502BE7E04B37706AF7506AE7506
          9B6B0E7055245247364D463C4C453B4C443B4C453B4B443B4B443B4B443B4B44
          3B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B
          443B4C443B4C443B4C443B4D453C5146356D522297680EAD7406AE7506B37806
          BE7E04CB8602D08901D08901D08901D08901D08901D08901D08901D08901D089
          01D08A01D08A01D18A01D18A01D18A01D08A01CF8801BB7B03523C1426221D26
          221D26221D008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080222B2626221D26221D26221D60440EA16A
          01B97901CA8501D08801D08901D08901D08901D08901D08901D08901D08901D0
          8901D08901D08901D08901D08901D08901D08901CD8702C38103B67905AF7506
          AF7506AD7407986A0F6F55245649334E463B4D463C4D463D4D463C4D463D4D45
          3C4D453C4D463C4D463C4D453C4D453C4D463C4D453C4D453C4D463C4D463D4D
          463D4D463C4E453A5548336C522495670FAB7207AE7506AF7506B77A05C38103
          CD8701D08901D08901D08901D08901D08901D08901D08901D08901D08901D089
          01D08901D08901D08901D08901D08901D08801C9840174500E26221D26221D26
          221D222B26008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808026221D26221D26221D342A197650
          0AA96F01BF7D01CD8601D08901D08901D08901D08901D08901D08901D08901D0
          8901D08901D08901D08901D08901D08901D08901D08901D08901C88402BC7D04
          B27706AE7407AE7407AD74079E6C0E7D5B1E66512B54483551483B4F473C4E47
          3D4F473D4F483E4F483E50483F4F483E4F473E4F473D4F473D4F473C50473B54
          4736634E2A7B591E9D6A0DAC7307AE7407AE7407B37706BD7D04C98502D08901
          D08901D08901D08901D08901D08901D08901D08901D08901D08901D08901D089
          01D08901D08901D08901D08901D08901CD860192620A362C1926221D26221D24
          2722008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080144F4C26221D26221D26221D4535
          158A5C05AF7201C48101CF8801D28A01D28A01D28A01D28A01D28A01D28A01D2
          8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D08901
          C78303BC7D05B47806B07606B07507AE7408AB7209996A11805C1D6E5426634F
          2E5B4C33554A3853483A51483B53493A5549375A4C33624F2D6D53267F5C1D97
          6811A97109AE7408B07507B07606B47806BC7D05C78303D18901D28A01D28A01
          D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
          01D28A01D28A01D28A01D28A01CF8801AC73054D391526221D26221D26221D1E
          3733008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080008080232A2626221D26221D2622
          1D543C119A6502B37501C68201D08901D28A01D28A01D28A01D28A01D28A01D2
          8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
          D28A01D08901C78303BE7E04B67906B47806B07507B07507B07507B07507B176
          07B17607B27707B27807B27807B27707B27707B17607B17607B07507B07507B0
          7507B07507B47806B77A05BE7E04C78303D18901D28A01D28A01D28A01D28A01
          D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
          01D28A01D28A01D28A01D08901C17F0261441126221D26221D26221D232A2600
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808000808000808025241F26221D2622
          1D26221D5F420EA16901B67701C88301D08901D28A01D28A01D28A01D28A01D2
          8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
          D28A01D28A01D28A01D28A01CC8602C58203BD7D04B77A05B47806B37806B277
          06B27807B37907B47A07B47A07B47A08B37807B27707B27706B27806B47806B7
          7A05BE7E04C68303CC8602D28A01D28A01D28A01D28A01D28A01D28A01D28A01
          D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
          01D28A01D28A01D08901C88301704D0E26221D26221D26221D25241F00808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808000808000808000808000808026221D2622
          1D26221D2C251C67470CA26A01B67701C88301D08901D28A01D28A01D28A01D2
          8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
          D28A01D28A01D28A01D28A01D28A01D18A01CF8802C98403C38103BF7F04BC7E
          05BA7E05BC8517BD881EBC861BBD881FBA8110BA7D05BB7E05BF7F04C48103C9
          8502CF8802D18A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
          D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
          01D28A01D08901C8830179530C2C261C26221D26221D25231F00808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080008080008080008080222D292622
          1D26221D26221D31281A6C490BA36C01B67701C98301D18901D38A01D38A01D3
          8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D48B01D58D
          01D68F01DB9E29DCA134DCA134DCA134D99717D58E01D48C01D48B01D38A01D3
          8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A
          01D18901C983017D560B33291A26221D26221D26221D1D383500808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080801F33
          2F26221D26221D26221D33291A6C490BA36B01B67701C78201D08801D38A01D3
          8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D48C01D58D
          01D69001DB9D25DCA134DCA134DCA132D99715D68F01D48D01D48B01D38A01D3
          8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D088
          01C782017D560B342A1A26221D26221D26221D1F332F00808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8024282326221D26221D26221D31281A67470CA26A01B37501C58101CF8701D2
          8901D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38B01D48C01D58E
          01D79001DB9D24DCA134DCA134DCA132D99814D68F01D58D01D48B01D38A01D3
          8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D28901CF8701C581
          0178520C32291A26221D26221D26221D20302C00808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808024282326221D26221D26221D2C251C5F420E9B6601AF7201C17E01CC
          8601D18901D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38B01D48C01D58E
          01D79101DB9D24DCA134DCA134DCA132D99814D69001D58D01D48B01D38A01D3
          8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
          D38A01D38A01D38A01D38A01D38A01D38A01D38A01D18901CC8601BD7C016C4B
          0E2C261C26221D26221D26221D20302C00808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808020302C26221D26221D26221D26221D543D118B5D04AB7000BC
          7B00C98300D08800D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00
          D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38B00D48C00D58E
          00D79100DB9D24DCA133DCA133DCA131D99813D69000D58D00D48B00D38A00D3
          8A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00
          D38A00D38A00D38A00D38A00D38A00D38A00D08800C98300A56D045D43112622
          1D26221D26221D26221D20302C00808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          800080800080800080801F332F26221D26221D26221D26221D463515785109A4
          6C00B57700C48100CE8700D28A00D48B00D48B00D48B00D48B00D48B00D48B00
          D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48C00D58D00D68F
          00D89100DC9E23DDA233DDA233DCA231DA9913D79000D68E00D58C00D48B00D4
          8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00
          D48B00D48B00D48B00D48B00D28A00CE8700C481008B5E094B371526221D2622
          1D26221D26221D1F332F00808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808013504E26221D26221D26221D26221D342A1961
          450E966302AC7100BC7B00C88300D08800D38A00D48B00D48B00D48B00D48B00
          D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D58D00D68E
          00D79100DB9E24DDA233DDA233DCA231DA9914D79000D58E00D58C00D48B00D4
          8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00
          D48B00D48B00D38A00D08800C88300B175026C4C0E352B1926221D26221D2622
          1D25231F1D383500808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080008080008080212F2B26221D26221D26221D26
          221D493614765009A36B00B17400BE7D00C98400D08800D38A00D48B00D48B00
          D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D58C00D68E
          00D79000DC9E27DDA233DDA233DDA233DA9915D68F00D58D00D58C00D48B00D4
          8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00
          D38A00D08800C98400BE7D00875B094E391426221D26221D26221D26221D212F
          2B00808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          800080800080800080800080800080800080800080801B3E3A26221D26221D26
          221D26221D2D261B573E11825806A56C00B27400BE7D00C88300CF8800D28A00
          D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D58C00D58D
          00D68F00DA9816DB9D22DB9D21DB9D22D8940BD68E00D58D00D48C00D48B00D4
          8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D28A00CF8800
          C88300BE7D009462065D42112E271B26221D26221D26221D26221D232A260080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          800080800080800080800080800080800080800080800080801E373324272226
          221D26221D26221D26221D342A195A4010845806A66C00B17300BD7B00C78200
          CD8600D28900D48A00D58B00D58B00D58B00D58B00D58B00D58B00D58C00D68D
          00D68E00D89104D99309D99309D9930AD79002D68D00D68C00D58C00D58B00D5
          8B00D58B00D58B00D58B00D58B00D58B00D48A00D28900CD8600C78200BD7B00
          936206614410362B1926221D26221D26221D26221D26221D1E37330080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          800080800080800080800080800080800080800080800080800080800080801A
          3F3B26221D26221D26221D26221D26221D31291A543D11795209A26A00AC7100
          B67800BF7E00C88300CD8700D08900D28A00D48B00D58C00D58C00D58C00D68D
          00D68E00D79004D89207D89207D89207D68F02D68D00D58D00D58C00D58C00D5
          8C00D58C00D48B00D28A00D08900CD8700C88300BF7E00B57700855A09594011
          32291A26221D26221D26221D26221D26221D222B260080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          80800080801E373326221D26221D26221D26221D26221D26221D44331563450E
          855906A46C00AC7100B37600BB7B00C27F00C88300CB8500CD8700CF8800D18A
          00D38B00D48C00D58D00D68E00D68E00D58C00D38C00D28A00D18900CF8800CD
          8700CB8500C88300C27F00BB7B00B3760090600669490E46351526221D26221D
          26221D26221D26221D26221D2426220080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          80800080800080800080801E363226221D26221D26221D26221D26221D26221D
          29241C4333155D410F775109926004A56D00AB7100B17400B57700B87900BD7C
          00BF7E00C28000C48100C58200C58200C38100C27F00BF7E00BD7C00B87900B5
          7700B174009C67047D550960440F4534152A241C26221D26221D26221D26221D
          26221D26221D2426210080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080232A2626221D26221D26221D26221D
          26221D26221D26221D26221D2D261B3F3117513B1262450E724E0B8056088C5D
          059764039F6801A36B00A46B00A069019865038F5F05835808744F0B64460E53
          3C124031172D261B26221D26221D26221D26221D26221D26221D26221D212F2B
          232A260080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          80800080800080800080800080800080800080800080801E373324262226221D
          26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D26221D26221D26221D26221D26231E222C27008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080222C2726221D26221D26221D26221D26221D26221D26221D26221D2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
          221D26221D26221D26221D25231F26231E008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080222D2824262223282425252026231E2622
          1D26221D26221D26221D26221D26221D26221D26221D26221D26221D25231F25
          231F222D28008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080}
        HandleImage.Data = {
          86000000424D8600000000000000360000002800000005000000050000000100
          18000000000050000000120B0000120B000000000000000000002E9797B0D8D8
          ECF6F6B0D8D82E979700B2D9D9FFFFFFFFFFFFFFFFFFB2D9D900ECF6F6FFFFFF
          FFFFFFFFFFFFECF6F600B2D9D9FFFFFFFFFFFFFFFFFFB2D9D9002E9797B0D8D8
          ECF6F6B0D8D82E979754}
        Radius = 45
        OnChange = wheelHelmAngleChange
        OnMouseUp = wheelHelmAngleMouseUp
      end
      object Label24: TLabel
        Left = 85
        Top = 55
        Width = 4
        Height = 13
        Caption = '-'
      end
      object Label25: TLabel
        Left = 236
        Top = 54
        Width = 8
        Height = 13
        Caption = '+'
      end
      object Panel1: TPanel
        Left = 22
        Top = 285
        Width = 319
        Height = 53
        BevelOuter = bvNone
        TabOrder = 13
        Visible = False
        object Label140: TLabel
          Left = 1
          Top = 3
          Width = 71
          Height = 13
          Caption = 'Ordered depth'
        end
        object Label141: TLabel
          Left = 214
          Top = 30
          Width = 33
          Height = 13
          Caption = 'meters'
        end
        object Label142: TLabel
          Left = 214
          Top = 7
          Width = 33
          Height = 13
          Caption = 'meters'
        end
        object Label20: TLabel
          Left = 134
          Top = 30
          Width = 12
          Height = 13
          Caption = '---'
        end
        object edtHelmOrderedDepth: TEdit
          Tag = 2
          Left = 134
          Top = 2
          Width = 74
          Height = 21
          MaxLength = 9
          TabOrder = 0
          OnKeyPress = EdtHelmOrderedAltitudeKeyPress
        end
        object StaticText100: TStaticText
          Left = 121
          Top = 22
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText101: TStaticText
          Left = 121
          Top = 3
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object StaticText99: TStaticText
          Left = 2
          Top = 22
          Width = 65
          Height = 17
          Caption = 'Actual depth'
          TabOrder = 3
        end
      end
      object StaticText88: TStaticText
        Left = 22
        Top = 182
        Width = 80
        Height = 17
        Caption = 'Actual turn rate'
        TabOrder = 0
      end
      object StaticText89: TStaticText
        Left = 22
        Top = 265
        Width = 103
        Height = 17
        Caption = 'Actual ground speed'
        TabOrder = 1
      end
      object StaticText90: TStaticText
        Left = 143
        Top = 139
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object StaticText91: TStaticText
        Left = 143
        Top = 158
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 3
      end
      object StaticText92: TStaticText
        Left = 143
        Top = 182
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object StaticText93: TStaticText
        Left = 143
        Top = 264
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 5
      end
      object StaticText94: TStaticText
        Left = 143
        Top = 243
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 6
      end
      object edtOrderedHelmAngle: TEdit
        Left = 157
        Top = 137
        Width = 74
        Height = 21
        MaxLength = 4
        TabOrder = 7
        OnKeyPress = edtOrderedHelmAngleKeyPress
      end
      object StaticText95: TStaticText
        Left = 22
        Top = 201
        Width = 75
        Height = 17
        Caption = 'Actual heading'
        TabOrder = 9
      end
      object StaticText96: TStaticText
        Left = 143
        Top = 201
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 10
      end
      object StaticText97: TStaticText
        Left = 22
        Top = 221
        Width = 71
        Height = 17
        Caption = 'Actual Course'
        TabOrder = 11
      end
      object StaticText98: TStaticText
        Left = 143
        Top = 221
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 12
      end
      object edtHelmOrderedGroundSpeed: TEdit
        Left = 157
        Top = 241
        Width = 74
        Height = 21
        MaxLength = 5
        TabOrder = 8
        OnKeyPress = edtHelmOrderedGroundSpeedKeyPress
      end
      object Panel2: TPanel
        Left = 22
        Top = 283
        Width = 319
        Height = 53
        BevelOuter = bvNone
        TabOrder = 14
        Visible = False
        object Label19: TLabel
          Left = 1
          Top = 3
          Width = 80
          Height = 13
          Caption = 'Ordered Altitude'
        end
        object Label21: TLabel
          Left = 214
          Top = 29
          Width = 25
          Height = 13
          Caption = 'feets'
        end
        object Label22: TLabel
          Left = 214
          Top = 5
          Width = 25
          Height = 13
          Caption = 'feets'
        end
        object lblActuaAltitudeHelm: TLabel
          Left = 134
          Top = 30
          Width = 12
          Height = 13
          Caption = '---'
        end
        object EdtHelmOrderedAltitude: TEdit
          Tag = 1
          Left = 134
          Top = 2
          Width = 74
          Height = 21
          MaxLength = 9
          TabOrder = 0
          OnKeyPress = EdtHelmOrderedAltitudeKeyPress
        end
        object StaticText13: TStaticText
          Left = 120
          Top = 22
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText14: TStaticText
          Left = 120
          Top = 3
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object StaticText15: TStaticText
          Left = 2
          Top = 22
          Width = 73
          Height = 17
          Caption = 'Actual altitude'
          TabOrder = 3
        end
      end
    end
    object grbOutrun: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      object Label310: TLabel
        Left = 10
        Top = 24
        Width = 74
        Height = 13
        Caption = 'Track to outrun'
      end
      object Label321: TLabel
        Left = 10
        Top = 55
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label322: TLabel
        Left = 220
        Top = 55
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblOutrunActualGroundSpeed: TLabel
        Left = 141
        Top = 55
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object sbTrackToOutrun: TSpeedButton
        Left = 220
        Top = 21
        Width = 23
        Height = 22
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
        OnClick = sbTrackToOutrunClick
      end
      object Label23: TLabel
        Left = 10
        Top = 84
        Width = 76
        Height = 13
        Caption = 'Altitude / Depth'
      end
      object lblOutrunAltitudeDepth: TLabel
        Left = 141
        Top = 84
        Width = 18
        Height = 13
        Caption = '100'
      end
      object Label29: TLabel
        Left = 220
        Top = 84
        Width = 63
        Height = 13
        Caption = 'feet / metres'
      end
      object StaticText150: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtTrackToOutrun: TEdit
        Left = 141
        Top = 22
        Width = 74
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object StaticText153: TStaticText
        Left = 122
        Top = 55
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object StaticText21: TStaticText
        Left = 122
        Top = 84
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 3
      end
    end
    object grbReturnToBase: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label327: TLabel
        Left = 10
        Top = 26
        Width = 80
        Height = 13
        Caption = 'Destination Base'
      end
      object lblReturnToBaseDestinationBase: TLabel
        Left = 135
        Top = 26
        Width = 78
        Height = 13
        Caption = 'van Galen F 834'
      end
      object Label329: TLabel
        Left = 10
        Top = 55
        Width = 111
        Height = 13
        Caption = 'Ordered Ground Speed'
      end
      object Label334: TLabel
        Left = 235
        Top = 55
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label382: TLabel
        Left = 10
        Top = 80
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label397: TLabel
        Left = 235
        Top = 80
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblReturnToBaseActualGroundSpeed: TLabel
        Left = 135
        Top = 80
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object Label406: TLabel
        Left = 10
        Top = 111
        Width = 80
        Height = 13
        Caption = 'Ordered Altitude'
      end
      object Label419: TLabel
        Left = 233
        Top = 111
        Width = 28
        Height = 13
        Caption = 'meter'
      end
      object Label437: TLabel
        Left = 10
        Top = 136
        Width = 70
        Height = 13
        Caption = 'Actual Altitude'
      end
      object Label451: TLabel
        Left = 233
        Top = 136
        Width = 28
        Height = 13
        Caption = 'meter'
      end
      object lblReturnToBaseActualAltitude: TLabel
        Left = 135
        Top = 136
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object StaticText158: TStaticText
        Left = 125
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object StaticText159: TStaticText
        Left = 125
        Top = 53
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 1
      end
      object edtReturnToBaseOrderedGroundSpeed: TEdit
        Left = 135
        Top = 51
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 2
        OnKeyPress = edtShadowOrdeeredGroundSpeedKeyPress
      end
      object StaticText160: TStaticText
        Left = 125
        Top = 78
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 3
      end
      object StaticText161: TStaticText
        Left = 125
        Top = 111
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object edtReturnToBaseOrderedAltitude: TEdit
        Tag = 1
        Left = 135
        Top = 107
        Width = 74
        Height = 21
        TabOrder = 5
        OnKeyPress = edOrderAltitudeKeyPress
      end
      object StaticText162: TStaticText
        Left = 125
        Top = 134
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 6
      end
      object pnlCoverAltitudeReturnToBase: TPanel
        Left = 3
        Top = 100
        Width = 364
        Height = 54
        BevelOuter = bvNone
        Enabled = False
        ParentBackground = False
        TabOrder = 7
      end
    end
    object grbSinuation: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 7
      object Label206: TLabel
        Left = 10
        Top = 26
        Width = 60
        Height = 13
        Caption = 'Base Course'
      end
      object Label227: TLabel
        Left = 10
        Top = 50
        Width = 30
        Height = 13
        Caption = 'Period'
      end
      object Label241: TLabel
        Left = 10
        Top = 74
        Width = 47
        Height = 13
        Caption = 'Amplitude'
      end
      object Label255: TLabel
        Left = 216
        Top = 26
        Width = 48
        Height = 13
        Caption = 'degrees T'
      end
      object Label256: TLabel
        Left = 10
        Top = 98
        Width = 111
        Height = 13
        Caption = 'Ordered Ground Speed'
      end
      object Label260: TLabel
        Left = 216
        Top = 98
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label270: TLabel
        Left = 10
        Top = 123
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label287: TLabel
        Left = 216
        Top = 123
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblSinuationActualGroundSpeed: TLabel
        Left = 136
        Top = 123
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object Label293: TLabel
        Left = 216
        Top = 50
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object Label297: TLabel
        Left = 216
        Top = 74
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object StaticText138: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtSinuationBaseCourse: TEdit
        Tag = 1
        Left = 136
        Top = 22
        Width = 74
        Height = 21
        MaxLength = 5
        TabOrder = 1
        OnKeyPress = edtSinuationBaseCourseKeyPress
      end
      object StaticText139: TStaticText
        Left = 122
        Top = 48
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object edtSinuationBasePeriod: TEdit
        Tag = 2
        Left = 136
        Top = 46
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 3
        OnKeyPress = edtSinuationBaseCourseKeyPress
      end
      object StaticText140: TStaticText
        Left = 122
        Top = 72
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object edtSinuationAmplitude: TEdit
        Tag = 3
        Left = 136
        Top = 70
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 5
        OnKeyPress = edtSinuationBaseCourseKeyPress
      end
      object StaticText141: TStaticText
        Left = 122
        Top = 96
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 6
      end
      object edtSinuationOrderedgroundSpeed: TEdit
        Tag = 4
        Left = 136
        Top = 94
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 7
        OnKeyPress = edtSinuationBaseCourseKeyPress
      end
      object StaticText142: TStaticText
        Left = 122
        Top = 121
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 8
      end
    end
    object grbStraightLine: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 12
      object ScrollBox5: TScrollBox
        Left = 2
        Top = 15
        Width = 362
        Height = 412
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object whHeading: TVrWheel
          Left = 115
          Top = 5
          Width = 96
          Height = 96
          MaxValue = 360
          Position = 180
          BackImage.Data = {
            366C0000424D366C000000000000360000002800000060000000600000000100
            180000000000006C0000120B0000120B00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808024272226221D25231F25252026231E2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D23282421
            2F2A242722008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080222C2726231E26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26231E222C27008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080222C2724262126221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26231E222C27008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            808000808000808000808000808000808025241F26221D26221D26221D26221D
            26221D26221D26221D26221D2E261B4233184E3A16563F145D4314644713694A
            126F4D11714F10755110755210725010714E116A4B126548135E441457401450
            3B164434182F271B26221D26221D26221D26221D26221D26221D26221D26221D
            232A260080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            808000808000808000808024262126221D26221D26221D26221D26221D26221D
            2A251C463517553E156145136B4C1175511079540F7B550F7C560F7C560F7E57
            0F7E570F7E570F7F570F7F580F7F570F7E570F7E570F7C560F7C560F7B550F7A
            540F7652106D4D116246135740154937172A251C26221D26221D26221D26221D
            26221D26221D26231E0080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            808000808024262226221D26221D26221D26221D26221D26221D473517573F14
            6648127551107A540F7C560F7E570F7E570E7E570F7E570F7E570F7F570F7F58
            0F80590F815A0F825A0F825A0F815A0F81590F80590F7F580F7E570F7E570F7E
            570F7E570E7E570F7C560F7A550F765210684A125A41144A371726221D26221D
            26221D26221D26221D26221D26231E0080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808022
            2B2626221D26221D26221D26221D26221D32291A503B156145137350107B550F
            7E570E80580E80580E80580E80580E80580E80580E80580E80580E81590E825A
            0E845B0E8860148B641A8B641A8B651B865E12835B0E82590E81590E80580E80
            580E80580E80580E80580E80580E80580F7E570F7C560F765210654813553E15
            342B1A26221D26221D26221D26221D26221D222B260080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80008080008080008080008080008080008080008080008080222C2726221D26
            221D26221D26221D26221D352B1A523C1565481278530F7E570E80580E80580E
            80580E80580E80580E80580E80580E80580E80580E80580E80580E81590E835B
            0E855C0E8B64178F691F8F691E8F6920896113855C0E825A0E81590E80580E80
            580E80580E80580E80580E80580E80580E80580E80580E80580E7E570E7A540F
            694A12573F15382D1A26221D26221D26221D26221D26221D222C270080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80008080008080008080008080008080008080008080232A2626221D26221D26
            221D26221D2E261B513B156648117A540F7F580E80580E80580E80580E80580E
            80580E80580E80580E80580E80580E80580E80580E80580E81590E825A0E845C
            0E875E0E926D279775349774339674338E671B865D0E835B0E81590E80580E80
            580E80580E80580E80580E80580E80580E80580E80580E80580E80580E80580E
            80580E7C560F6B4B11563F152F281B26221D26221D26221D26221D25241F0080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808025241F26221D26221D26221D26
            221D4736166246127B550F80580E835A0E835A0E835A0E835A0E835A0E835A0E
            835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E845B0E855C0E885E
            0E8C610E9976329C7B3E9C7B3E9C7B3E946D228A600E875D0E855B0E835A0E83
            5A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E835A0E
            835A0E835A0E81590E7E570F6749124D391626221D26221D26221D26221D2622
            1D00808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80008080008080008080008080222D2926221D26221D26221D26221D332A1A56
            3E1473501080580E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E
            845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E855C0E875D0E8A60
            0E8E630E9976309D7C3E9D7C3E9C7B3C956E218C620E885F0E865D0E845B0E84
            5B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E845B0E
            845B0E845B0E845B0E845B0E81590E7853105C4314372C1A26221D26221D2622
            1D26221D222D2900808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            800080800080800080801F332F26221D26221D26221D26221D4332176346127D
            560E845B0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D
            865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D875D0D895E0D8C61
            0D90650E9B772F9E7D3D9E7D3D9E7C3B97701F8F640D8B600D885E0D865C0D86
            5C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D865C0D
            865C0D865C0D865C0D865C0D865C0D855B0D80580E694A1248371726221D2622
            1D26221D26221D23292400808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808020302C26221D26221D26221D26221D4D39156D4D1082590D87
            5C0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D
            875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D885E0D8A600D8D62
            0D92660D9C782F9F7D3D9F7D3D9F7D3B99711F90650D8C610D895F0D875D0D87
            5D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D875D0D
            875D0D875D0D875D0D875D0D875D0D875D0D875D0D855B0D745110543E152622
            1D26221D26221D26221D24282300808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808024282326221D26221D26221D2B251C543D147C550E875C0D8A5E0D89
            5E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D
            895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D8A5F0D8C600D8F63
            0D93670D9E782FA17E3DA17E3DA07D3B9A721F92660D8E620D8B600D895E0D89
            5E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D895E0D
            895E0D895E0D895E0D895E0D895E0D895E0D895E0D8A5E0D895D0D825A0E5C42
            142D261C26221D26221D26221D20302C00808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8024282326221D26221D26221D31281B583F1381580D8A5E0C8C600C8B5F0C8B
            5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C
            8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8C600C8E610C9064
            0C94670C9F792EA27F3DA27F3DA27E3B9B721E93660C8F630C8D610C8B5F0C8B
            5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C
            8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8B5F0C8C600C8B5F0C875C
            0E604613332A1B26221D26221D26221D20302C00808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080802329
            2426221D26221D26221D31281B59401382590D8C5F0C8D600C8D600C8D600C8D
            600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C
            8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8E610C8F620C9264
            0C95670CA17A2FA4803DA4803DA37F3B9C721F94660C91630C8F620C8D600C8D
            600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C
            8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D600C8D60
            0C885D0D634713352B1B26221D26221D26221D1F332F00808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080802428232622
            1D26221D26221D30281B5A4112865B0C8E610C90620C90620C90620C90620C90
            620C90620C90620C90620C90620C90620C90620C90620C90620C90620C90620C
            90620C90620C90620C90620C90620C90620C90620C90620C91620C92640C9466
            0C96680CA37C31A6813DA6813DA6813D9E742095670C93650C91630C90620C90
            620C90620C90620C90620C90620C90620C90620C90620C90620C90620C90620C
            90620C90620C90620C90620C90620C90620C90620C90620C90620C90620C9062
            0C90620C8C600C644712332A1B26221D26221D26221D222D2900808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000808026221D2622
            1D26221D2B261C594013865B0C8F610B90620B90620B90620B90620B90620B90
            620B90620B90620B90620B90620B90620B90620B90620B90620B90620B90620B
            90620B90620B90620B90620B90620B90620B90620B90620B90620B91630B9364
            0B95660B9B6F189D721D9D711A9D721E996C1294660B92640B91630B90620B90
            620B90620B90620B90620B90620B90620B90620B90620B90620B90620B90620B
            90620B90620B90620B90620B90620B90620B90620B90620B90620B90620B9062
            0B90620B90620B8D600C6347132D261C26221D26221D26231E00808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808026221D26221D2622
            1D26221D543E13855B0C90620B92630B92630B92630B92630B92630B92630B92
            630B92630B92630B92630B92630B92630B92630B92630B92630B92630B92630B
            92630B92630B92630B92630B92630B92630B92630B92630B92630B93640B9465
            0B95660B96670B97680B97680B97680B96670B94650B93640B93640B92630B92
            630B92630B92630B92630B92630B92630B92630B92630B92630B92630B92630B
            92630B92630B92630B92630B92630B92630B92630B92630B92630B92630B9263
            0B92630B92630B92630B8D600C60451326221D26221D26221D25241F00808000
            8080008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808025241F26221D26221D2622
            1D4E3A1483590C91620B94640B94640B94640B94640B94640B94640B94640B94
            640B94640B94640B94640B94640B94640B94640B94640B94640B94640B94640B
            94640B94640B94640B94640B94640B94640B94640B93640B92630B91620B9061
            0B8F600A8E600A8E610A8D600A8C5F0A8C5F0A8C5F0A8D5F0A8D5F0A8F600B91
            620B92630B93640B94640B94640B94640B94640B94640B94640B94640B94640B
            94640B94640B94640B94640B94640B94640B94640B94640B94640B94640B9464
            0B94640B94640B94640B93640B8D610C59411426221D26221D26221D232A2600
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080222C2726221D26221D26221D4332
            1776510E91620B96650A97660A97660A97660A97660A97660A97660A97660A97
            660A97660A97660A97660A97660A97660A97660A97660A97660A97660A97660A
            97660A97660A97660A97660A96660A95650A92630A8F60098A5D09855A098057
            097E56087B54087A52087851087751087851087A52087B53087E550881570985
            5A098A5D098F600992630A95650A96660A97660A97660A97660A97660A97660A
            97660A97660A97660A97660A97660A97660A97660A97660A97660A97660A9766
            0A97660A97660A97660A97660A95650B82590E4B391726221D26221D26221D1E
            3733008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808026221D26221D26221D332A196849
            108F610B97660A98670A98670A98670A98670A98670A98670A98670A98670A98
            670A98670A98670A98670A98670A98670A98670A98670A98670A98670A98670A
            98670A98670A97670A96650A91630A8A5E0981580A714D0B5C410F4D38124131
            15382C1731281A2D261B2B251C2D261B312819382C174031154B3712583E0E69
            480B7550097D5508855A098B5F0991630A96650A97670A98670A98670A98670A
            98670A98670A98670A98670A98670A98670A98670A98670A98670A98670B9867
            0A98670A98670A98670A98670A98670A95650B755210382D1926221D26221D26
            221D008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808025252026221D26221D26221D5840128C5F
            0B98670A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A
            680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A
            99680A98660A93630A8B5D0977520A5A401044331530281A29241C28231C2722
            1D26221D26221D26221D26221D26221D26221D26221D27221D28231C29241C30
            281A423214543C0F6C490A7A52088359098C5E0993640A98660A99680A9A680A
            9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A680A9A68
            0A9A680A9A680A9A680A9A680A9A680A9A680A96650B67491226221D26221D26
            221D222B26008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808026221D26221D26221D46351681580C9766
            0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9B690A9B690A9B690A9B
            690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9A680A
            96650A8C5F0973500C4F391333291927231D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D28231C3329194A361267470A7852088459098E600996660A9A680A
            9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B690A9B69
            0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C6A0A9C690A8F620C513C1626221D26
            221D26221D008080008080008080008080008080008080008080008080008080
            00808000808000808000808026221D26221D26221D2D271B694A0F93630A9D6A
            099E6B099F6C09A06D09A06D09A06D09A06D099F6C099E6B099E6B099D6A099D
            6A099D6A099D6A099D6A099D6A099D6A099D6A099D6A099C6A099B6809946409
            7B550B523B122F271A26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D2F271A4B37116B490A7E55078A5D08946409
            9B68099C6A099D6A099D6A099D6A099D6A099D6A099D6A099D6A099E6B099E6B
            099F6C09A06D09A06D09A06D09A06D099F6C099E6B099C690A79540F30281B26
            221D26221D242622008080008080008080008080008080008080008080008080
            00808000808000808000808026221D26221D26221D513B148D5F0A9E6A09A16D
            09A36F09A47009A6730CA7740EA67209A57109A47009A36F09A26E09A16D09A1
            6D09A06C09A06C09A06C09A06C09A06C09A06C099F6C099C69098F620966480F
            382C1826221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D372B185A400D785108875B08
            9464089C69099F6C09A06C09A06C09A06C09A06C09A16D09A16D09A26E09A36F
            09A47009A57109A6730BA7740FA5710AA47009A26E09A16D099B690A5F441426
            221D26221D26221D008080008080008080008080008080008080008080008080
            00808000808000808026231E26221D26221D342A19724F0D996709A06C09A26E
            09A47009A67209AF8228B28735AC7C1AA9750CA77309A57109A47009A26E09A1
            6D09A16D09A06C09A06C09A06C09A06C099F6C099C6909865B0A503B132B251C
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D2C251B4936126F4B09
            8359079263089C69099F6C09A06C09A06C09A16D09A26E09A36F09A47009A672
            09A77309A9770EAE8023B28837AC7C1BA57109A36F09A26E09A16D09845A0D39
            2E1926221D26221D242621008080008080008080008080008080008080008080
            00808000808000808026221D26221D26221D543D13916209A06B08A46E08A670
            08A87208AE7B17B58835B58A39B58A39B38327AE7B11AB7609A97308A77108A6
            7008A56F08A46E08A36D08A36D08A26D089F6A0883590A43331626221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D3F3016
            6C4A098458069463079F6A08A26D08A46E08A56F08A67008A87208A97408AC77
            0BB07D17B4862EB58A39B58A39B48630AB760CA77209A56F08A46E08A06C0964
            471326221D26221D26221D008080008080008080008080008080008080008080
            00808000808025241F26221D26221D31281A74500D9C6808A56E08A77108A972
            08AC750BB68932B88C39B88C39B88C39B88C39B88B37B48321B07B0FAC7508AA
            7308A87108A77008A66F08A56F08A26C08845A0B3D2F1726221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            3B2E176D4A09875A06986507A46E08A67108A97208AB7408AD7608B17D12B686
            2AB88C39B88C39B88C39B88C39B88C39B38325AD7811A87208A77008A46E0888
            5D0D362B1A26221D26221D232A26008080008080008080008080008080008080
            00808000808026221D26221D26221D503B13926208A36D08A66F08A87109A972
            08AC760CB48326B78B37B88C39B88C39B88C39B88C39B88C39B78931B27F1BAD
            780FA97208A87108A77008A36D08875C0A3D2F1826221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D3A2D176E4B09895B079B6807A56F08AA7409AF7A12B48221B78B36B88C
            39B88C39B88C39B88C39B88C39B78A34B28121AD7812A87108A77008A66F08A4
            6E0860451326221D26221D212F2A008080008080008080008080008080008080
            008080222C2726221D26221D26221D6C4C0E9C6908A77008A87108A97208AA73
            08AC7508AE7708B4811BB88A2FB98D39B98D39B98D39B98D39B98D39B98D39B5
            8425AC7509AA7308A8710892630A46351626221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D4131157650088F6107A16E08AD770CB88B33B98D39B98D39B98D
            39B98D39B98D39B98D37B7882AB27E13AD7708AB7408AA7308A97208A87108A6
            6F0881590E26221D26221D26221D1E3733008080008080008080008080008080
            00808026231E26221D26221D4333168F6008A46E07AB7207AB7207AC7307AC73
            07AD7507AF7607B17807B37C0AB88520BB8C31BC8E39BC8E39BC8E39BB8D35B5
            8018AF7607AC7407A26D0858401326221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D27221D4E3911835805996706AA7308B68423BC8E39BC8E39BC8E
            39BC8E39BA8A2DB78319B27A07B07807AF7607AD7407AC7307AB7307AB7207AA
            7107A66F084F3A1626221D26221D242622008080008080008080008080008080
            00808026221D26221D26221D5C4111996707AA7107AC7307AC7307AC7307AD74
            07AD7507AE7607B07707B17907B37B07B68010BA8825BC8F37BD8F39B88521B1
            7907AF7707AB730775510E2D261B26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D2D261B62440D8C5E06A26D06B07909BB8B2FBD8F39BC8D
            32B9861EB47D0AB27A07B17807AF7707AE7507AD7407AD7407AC7307AC7307AC
            7307A97107704E1126221D26221D26221D008080008080008080008080008080
            00808026221D26221D2A241C77510BA16B07AB7207AC7307AC7307AC7307AC73
            07AD7407AD7407AE7507AF7607B07807B17907B27A07B7821AB98827B37C0EB0
            7707AD760794640A3C2F1826221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D392D17775108966506A87307B47F15B98827B57F
            11B27A07B17907B07707AF7607AE7507AD7407AD7407AC7307AC7307AC7307AC
            7307AB72078F610B2B251C26221D26221D008080008080008080008080008080
            26231E26221D26221D423316916207A77007AE7407AE7407AE7407AE7407AE74
            07AE7407AE7407AF7507AF7507B07607B17707B27807B27807B27807B17807B0
            7707AC740762461226221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D543C108B5D06A16C06AE7607B27807B278
            07B17807B17707B07607AF7507AF7507AE7407AE7407AE7407AE7407AE7407AE
            7407AD7307AB72074D3A1626221D26221D222C27008080008080008080008080
            25231F26221D26221D573F119A6706AD7306B17606B17606B17606B17606B176
            06B17606B17606B17606B17706B27706B27706B37806B37806B37806B37806B1
            770693640A332A1A26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D32291A765008986605AC7306B27806B378
            06B37806B27706B27706B17706B17606B17606B17606B17606B17606B17606B1
            7606B17606AF74066A4B1126221D26221D222C27008080008080008080008080
            26221D26221D26221D6C4B0DA26B06B07506B27606B27606B27606B27606B276
            06B27606B27606B27606B27606B27606B27606B37706B37706B37706B37706B0
            760662451227231E27231E27231E27231E26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D27231E27231E27231E27231E553C108F5F05A56E06B17606B377
            06B37706B27606B27606B27606B27606B27606B27606B27606B27606B27606B2
            7606B27606B17606845B0D26221D26221D26221D008080008080008080008080
            26221D26221D2D261B835809A87006B27606B37706B37706B37706B37706B377
            06B37706B37706B37706B37706B37706B37706B37706B37706B37706B377069D
            69093A2E1927231E27231E27231E27231E26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D27231E27231E27231E27231E372C187E55079D6805AE7406B377
            06B37706B37706B37706B37706B37706B37706B37706B37706B37706B37706B3
            7706B37706B377069F6A0930281B26221D26221D008080008080008080222D28
            26221D26221D3E3017956306AC7206B47806B47806B47806B47806B47806B478
            06B47806B47806B47806B47806B47806B47806B47806B47806B47806B1770677
            531028241E27231E27231E27231E26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D27231E27231E27231E29241D62450E956305AB7206B378
            06B47806B47806B47806B47806B47806B47806B47806B47806B47806B47806B4
            7806B47806B47806B1760649371726221D26221D1D383400808000808025231F
            26221D26221D4E3913996606AE7405B57805B57805B57805B57805B57805B578
            05B57805B57805B57805B57805B57805B57805B57805B57805B57805B1760557
            3F1528241E28241E28241E28241E26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D28241E28241E28241E28241E4C38148E5E04A56E05B377
            05B57805B57805B57805B57805B57805B57805B57805B57805B57805B57805B5
            7805B57805B57805B377065E441326221D26221D212F2A00808000808025231F
            26221D26221D5B41109D6806B17505B67805B67805B67805B67805B67805B678
            05B67805B67805B67805B67805B67805B67805B67805B67805B678059D690937
            2C1B28241F28241F28241F27231E26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D27231E28241F28241F28241F352B1A7B5308A16A04B275
            05B67805B67805B67805B67805B67805B67805B67805B67805B67805B67805B6
            7805B67805B67805B47806714F1026221D26221D23282400808000808026221D
            26221D26221D68480EA46D05B67805B97B05B97B05B97B05B97B05B97B05B97B
            05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05835A0E2C
            261E28241F28241F28241F27231E26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D27231E28241F28241F28241F2D271E68480D9E6904B277
            05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B97B05B9
            7B05B97B05B97B05B87A0583590E26221D26221D25252000808000808026231E
            26221D26221D744F0BA76F05B77905BA7B05BA7B05BA7B05BA7B05BA7B05BA7B
            05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05B97B05B97B056B4D132C
            271F29251F29252028241F26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D28241F2925202925202C271F583F129A6604B075
            05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA7B05BA
            7B05BA7B05BA7B05BA7B0591630B26221D26221D26231E00808000808026221D
            26221D26221D7E5509AB7104B97B04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C
            04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BA7C04BA7C045A42162A
            262029252029252028241F26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D28241F2925202925202A26204A3815976503B075
            04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB7C04BB
            7C04BB7C04BB7C04BB7C04A06B0926221D26221D26221D00808000808026221D
            26221D26221D875B07AE7304BC7C04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D
            04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BC7D04BC7D04BC7D044B391A2A
            26202A26202A262028241E26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D28241E2A26202A26202A2620403219966403B075
            04BC7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD7D04BD
            7D04BD7D04BD7D04BD7D04AE730726221D26221D26221D00808000808026221D
            26221D26221D8F5F05B07504BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E
            04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BE7E04BE7D04BE7D043F321C2A
            26212A26212A262127231E26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D27231E2A26212A26212A2621382E1C966303B175
            04BE7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF
            7E04BF7E04BF7E04BF7E04B6790526221D26221D26221D00808000808026221D
            26221D26221D926104B07504BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E
            04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BE7D04BE7D04BE7D04382E1F2B
            27212B27212B272127231E26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D27231E2B27212B27212C2721332B1E956203B174
            04BE7D04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF7E04BF
            7E04BF7E04BF7E04BF7E04BC7C0426221D26221D26221D00808000808026221D
            26221D26221D936204B17504C07E04C17F04C17F04C17F04C17F04C17F04C17F
            04C17F04C17F04C17F04C17F04C17F04C17F04C07E04BF7E04BF7E04342D202C
            27222C27222C272227231E26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D27231E2C27222C27222C2822312B20976403B276
            04C07E04C17F04C17F04C17F04C17F04C17F04C17F04C17F04C17F04C17F04C1
            7F04C17F04C17F04C17F04BE7D0426221D26221D26221D00808000808026221D
            26221D26221D905F04B17403C07F03C28003C28003C28003C28003C28003C280
            03C28003C28003C28003C28003C28003C28003C17F03C07F03C07F0339301F2D
            28222C28222C282227231E26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D27231E2C28222C28222D2822352D1F9A6602B477
            03C17F03C28003C28003C28003C28003C28003C28003C28003C28003C28003C2
            8003C28003C28003C28003B87A0426221D26221D26221D00808000808026221D
            26221D26221D895C06AE7403BF7E03C28003C28003C28003C28003C28003C280
            03C28003C28003C28003C28003C28003C28003C07F03C07F03C07F0342341E2D
            28232D28232D282328241F26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D28241F2D28232D28232D28233B301E9C6702B578
            03C07F03C28003C28003C28003C28003C28003C28003C28003C28003C28003C2
            8003C28003C28003C28003B0750626221D26221D26221D00808000808026221D
            26221D26221D825707AE7203C07E03C38103C38103C38103C38103C38103C381
            03C38103C38103C38103C38103C38103C38103C18003C07F04C07F044E3C1C2E
            29232E29232E29232A252026221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D2A25202E29232E29232E292344351BA06A03B779
            04C18003C38103C38103C38103C38103C38103C38103C38103C38103C38103C3
            8103C38103C38103C38103A66F0726221D26221D26221D00808000808026221D
            26221D26221D78510AAB7003BF7E03C58203C58203C58203C58203C58203C582
            03C58203C58203C58203C58203C58203C58203C38103C18004C180055F46192F
            2B242E2A242E2A242B272126221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D2B27212E2A242E2A24302B24503D18A56D03BA7B
            04C38103C58203C58203C58203C58203C58203C58203C58203C58203C58203C5
            8203C58203C58203C5820398670A26221D26221D26231E00808000808026221D
            26221D26221D6B4A0DA86F03BE7D03C58203C58203C58203C58203C58203C582
            03C58203C58203C58203C58203C58203C58203C38103C17F04C2800773521531
            2C232F2A242F2A242D292326221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D2D29232F2A242F2A24312C23604414AA7004BC7C
            04C38103C58203C58203C58203C58203C58203C58203C58203C58203C58203C5
            8203C58203C58203C58203885C0D26221D26221D25252000808000808025231F
            26221D26221D5E430FA56D03BE7C03C78303C78303C78303C78303C78303C783
            03C78303C78303C78303C78303C78303C78303C58203C28004C180048C610F33
            2D24302B25302B25302B2529241F26221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D29241F302B25302B25302B25342D2473500FB17504C07E
            04C68203C78303C78303C78303C78303C78303C78303C78303C78303C78303C7
            8303C78303C78303C6820375520F26221D26221D232824008080008080242622
            26221D26221D4F3A13A06A03BC7B02C78202C88302C88302C88302C88302C883
            02C88302C88302C88302C88302C88302C88302C78202C28003C17F03A9720841
            3521312C26312C26312C262C272226221D26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D26221D2C2722312C26312C26312C263E33208F6007B77903C17F
            03C78302C88302C88302C88302C88302C88302C88302C88302C88302C88302C8
            8302C88302C88302C6820360451326221D26221D25231F008080008080222D28
            26221D26221D3E31179A6603B67702C58102C88302C88302C88302C88302C883
            02C88302C88302C88302C88302C88302C88302C88302C38003C07E03BE7D0362
            491A322D27322D26322D262F2B2427231E26221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D27231E2F2B24322D26322D26322D26564018A76E03BB7B03C380
            03C88302C88302C88302C88302C88302C88302C88302C88302C88302C88302C8
            8302C88302C88302C3810348371726221D26221D222D28008080008080008080
            26221D26221D2D261B8A5B06B17402C48102C98402C98402C98402C98402C984
            02C98402C98402C98402C98402C98402C98402C98402C58203C07F03BE7D0485
            5C12342E27332E27332E27332E272B262126221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D2B2621332E27332E27332E27342E26725010AF7304BF7E03C682
            03C98402C98402C98402C98402C98402C98402C98402C98402C98402C98402C9
            8402C98402C98402B175062F271B26221D26221D008080008080008080008080
            26221D26221D26221D724E0AAA7002C38002CA8502CA8502CA8502CA8502CA85
            02CA8502CA8502CA8502CA8502CA8502CA8602CA8602C98502C28103C07F04AC
            7508483A23342F28342F28342F282F2B2426221D26221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D26221D2F2B24342F28342F28342F28443722986706B87A04C28103C985
            02CA8602CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA
            8502CA8502CA850292630A26221D26221D26221D008080008080008080008080
            26231E26221D26221D5A3F10A36B02BE7D02C98402CA8502CA8502CA8502CA85
            02CA8502CA8502CA8502CA8602CB8602CB8602CB8702CB8702C48203BE7F04BE
            7E0470511936302A3530293530293530292B272126221D26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            26221D2B272135302935302935302936302A644916AE7304BC7D04C48203CB87
            02CB8702CB8602CB8602CA8502CA8502CA8502CA8502CA8502CA8502CA8502CA
            8502CA8502C984026F4E1026221D26221D26231E008080008080008080008080
            222C2726221D26221D4233159C6702B67802C78302CA8502CA8502CA8502CA85
            02CA8502CA8502CB8602CB8602CB8702CC8802CC8902CD8902C88704C08104BD
            7F04A26F0B43382636312A36312A36312A312D2627231E26221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            27231E312D2636312A36312A36312A403625926208B67A04BF8004C88704CD89
            02CC8902CC8802CB8702CB8602CA8602CA8502CA8502CA8502CA8502CA8502CA
            8502CB8502C783024D391526221D26221D222C27008080008080008080008080
            00808026221D26221D29241C7F5607AE7302C48102CC8602CC8602CC8602CC86
            02CC8702CD8702CD8802CE8902CF8A02D08B02D08C02D3951AD49826C6880CBF
            8005BE7E0572531938322B38322B38322B38322B2F2A2426221D26221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
            2F2A2438332B38322B38322B38322B664A18AF7505BE7F05C98D15D49926D291
            0FD08C02CF8B02CE8A02CE8902CD8802CD8702CC8702CC8602CC8602CC8602CC
            8602CB8502A26C072B251C26221D26221D008080008080008080008080008080
            00808026221D26221D26221D60430FA56C02BF7E02CA8502CC8602CC8602CC87
            02CD8702CE8802CE8A02CF8B02D08D02D3920FD59924D69E35D69E35CF931FC0
            8105BD7E05A6720B4F40253B352D3A342D3A342D37322B2C272226221D26221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2C2722
            37322B3A342D3A342D3B352D4B3C2497660AB77B05C08308D1992DD69E35D69D
            30D4981ED29008D08C02CF8B02CE8902CD8802CD8702CC8702CC8602CC8602CC
            8602C9840278530F26221D26221D26221D008080008080008080008080008080
            00808026231E26221D26221D4333159B6602B67702C88302CC8602CC8702CD87
            02CE8802CE8A02D08C02D29009D4981FD69D30D69E35D69E35D69E35D59D32C7
            8C16BB7E05BA7C05875F1443392C3C362F3B352E3C362F36302A29252026221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26221D29252036302A
            3C362F3B352E3C362F41392A7A5612B17605BB7F07CA9123D59D35D69E35D69E
            35D69E35D59B2BD49619D18D03CF8B02CE8902CD8802CD8702CC8602CC8602CC
            8602C782024E3A1526221D26221D242622008080008080008080008080008080
            0080801E373326221D26221D26221D75500AAA6F02C27F01CC8601CD8801CE89
            01CF8A01D18D02D49618D69D2BD79F34D79F34D79F34D79F34D79F34D79F34D0
            941DBE8005B97C05B379076B501E3F39303E38303E38303E38303530292A2520
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D2A25203530293E3830
            3E38303E38303F3830634A1DA87006B77B05C08308D2992CD79F34D79F34D79F
            34D79F34D79F34D79F34D69B26D39311D08C01CF8A01CE8901CD8801CD8701CB
            850294630A26221D26221D26221D1E3733008080008080008080008080008080
            00808000808026221D26221D26221D533C11A06902B87901C98401CE8802CE89
            01D08D06D59922D79F33D79F34D79F34D79F34D79F34D79F34D69B27D39311D1
            8E06C58403B87C05B57905A5700A5C4825413A33403A32403A32403A3239332B
            2E292326221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D2E292339332C403A32403932
            403932413A335744249A670AB27705B97C05C78504D2900AD49618D79D2ED79F
            34D79F34D79F34D79F34D79F34D79E30D4971DD18F0CCE8901CE8801CD8701C9
            830263471126221D26221D212F2B008080008080008080008080008080008080
            008080008080232A2626221D26221D31291A815507AD7101C38001CE8701CF89
            01D18C03D79B29D89F34D89F34D89F34D89F34D79E2FD59616D39006D18C01D0
            8A01CC8701C07F04B57805B477059E6B0D564529433D34423B34423B33423B33
            3E3830332E2728241F26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D28241F332E273E3830423B33423B33423B33
            433C3452422893650CB07405B47905C17F03CE8801D08B01D28D01D4920AD699
            1FD89F34D89F34D89F34D89F34D89F34D5971CD28E09CF8901CF8801CC8601A2
            6C07342A1A26221D26221D232A26008080008080008080008080008080008080
            00808000808000808026221D26221D26221D593F10A16901BA7A01CC8601D08A
            01D18C01D4920DD89E2ED9A034D89F32D7991CD59209D38E01D28D01D18B01D0
            8A01D08901CA8602BC7C04B37706B377069B6A0E58472B453F36443E36443D35
            443E35443D353B362E312C2526221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D312C253B352E443E35443E35443D35443E35453F36
            54442A92640EAF7406B27706BC7D04CB8602D08901D18A01D18C01D28D01D390
            03D5940DD79B24D9A034D9A034D79C28D38E04D18B01D08A01CF8901CA84016B
            4B1026221D26221D26221D008080008080008080008080008080008080008080
            00808000808000808024262126221D26221D342A19805607AD7201C58101CE89
            01D18B01D28D01D6981FD89D2BD5930FD38F02D28D01D18C01D18B01D08A01D0
            8901CF8901CF8801C88402B97B05B27606B276069B6A0E5F4B29474037474037
            464037463F374640374640373C362F322D2628241F26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D28241F322D263C362F463F37463F37463F374640374740374740375A4829
            94650EAF7406B17606BA7B05C98402CF8801CF8901D08901D08A01D18B01D28C
            01D28E01D39005D69718D89E2ED59413D28C01D18B01D08901CD8801A16B0738
            2D1926221D26221D242621008080008080008080008080008080008080008080
            00808000808000808000808026221D26221D26221D563D119F6901B87901CA85
            01D08A01D18B01D28D04D28E06D28C01D18C01D18B01D08A01D08901CF8901CF
            8801CF8801CF8801CF8801C88402B87A05B17606B17606A16E0C6D52234C4335
            4A433A484139484138484138484139484139413A3337322B2F2A2427231E2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D27231E2F2A2437
            322B413A334841394841394841384841384841384A423A4C4235674E229B690C
            AE7406B17606B97B05C88402CF8801CF8801CF8801CF8801D08901D08901D08A
            01D18B01D18C01D28D02D28E06D18C02D18B01D08A01D08901C9840165471126
            221D26221D26221D008080008080008080008080008080008080008080008080
            00808000808000808000808024262226221D26221D2D261B74500AAA6F01C180
            01CF8801D18B01D18B01D18B01D18B01D18B01D18A01D08A01D08901D08901D0
            8901D08901D08901D08901D08901C98502BA7C05B17606B07606AB7408835E19
            5849304A433A4A433A4A433A4A433A4A433A4A433A4A433A4A433A443D353D37
            3037322B322D262D29232A25202D2923322D2637322B3D3730443D354A433A4A
            433A4A433A4A433A4A433A4A433A4A433A4A433A5648307D5B19A67008AF7506
            B17606BB7C05C98502D08901D08901D08901D08901D08901D08901D08A01D18A
            01D18B01D18B01D18B01D18B01D18B01D18A01D18A01CE880192630A2F271B26
            221D26221D242622008080008080008080008080008080008080008080008080
            00808000808000808000808000808026221D26221D26221D483614936203B275
            01C78201CF8901D18A01D18A01D18A01D08A01D08A01D08901D08901D08901D0
            8901D08901D08901D08901D08901D08901CA8502BE7E04B37706AF7506AE7506
            9B6B0E7055245247364D463C4C453B4C443B4C453B4B443B4B443B4B443B4B44
            3B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B443B4B
            443B4C443B4C443B4C443B4D453C5146356D522297680EAD7406AE7506B37806
            BE7E04CB8602D08901D08901D08901D08901D08901D08901D08901D08901D089
            01D08A01D08A01D18A01D18A01D18A01D08A01CF8801BB7B03523C1426221D26
            221D26221D008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080222B2626221D26221D26221D60440EA16A
            01B97901CA8501D08801D08901D08901D08901D08901D08901D08901D08901D0
            8901D08901D08901D08901D08901D08901D08901CD8702C38103B67905AF7506
            AF7506AD7407986A0F6F55245649334E463B4D463C4D463D4D463C4D463D4D45
            3C4D453C4D463C4D463C4D453C4D453C4D463C4D453C4D453C4D463C4D463D4D
            463D4D463C4E453A5548336C522495670FAB7207AE7506AF7506B77A05C38103
            CD8701D08901D08901D08901D08901D08901D08901D08901D08901D08901D089
            01D08901D08901D08901D08901D08901D08801C9840174500E26221D26221D26
            221D222B26008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808026221D26221D26221D342A197650
            0AA96F01BF7D01CD8601D08901D08901D08901D08901D08901D08901D08901D0
            8901D08901D08901D08901D08901D08901D08901D08901D08901C88402BC7D04
            B27706AE7407AE7407AD74079E6C0E7D5B1E66512B54483551483B4F473C4E47
            3D4F473D4F483E4F483E50483F4F483E4F473E4F473D4F473D4F473C50473B54
            4736634E2A7B591E9D6A0DAC7307AE7407AE7407B37706BD7D04C98502D08901
            D08901D08901D08901D08901D08901D08901D08901D08901D08901D08901D089
            01D08901D08901D08901D08901D08901CD860192620A362C1926221D26221D24
            2722008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080144F4C26221D26221D26221D4535
            158A5C05AF7201C48101CF8801D28A01D28A01D28A01D28A01D28A01D28A01D2
            8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D08901
            C78303BC7D05B47806B07606B07507AE7408AB7209996A11805C1D6E5426634F
            2E5B4C33554A3853483A51483B53493A5549375A4C33624F2D6D53267F5C1D97
            6811A97109AE7408B07507B07606B47806BC7D05C78303D18901D28A01D28A01
            D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
            01D28A01D28A01D28A01D28A01CF8801AC73054D391526221D26221D26221D1E
            3733008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080008080232A2626221D26221D2622
            1D543C119A6502B37501C68201D08901D28A01D28A01D28A01D28A01D28A01D2
            8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
            D28A01D08901C78303BE7E04B67906B47806B07507B07507B07507B07507B176
            07B17607B27707B27807B27807B27707B27707B17607B17607B07507B07507B0
            7507B07507B47806B77A05BE7E04C78303D18901D28A01D28A01D28A01D28A01
            D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
            01D28A01D28A01D28A01D08901C17F0261441126221D26221D26221D232A2600
            8080008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808025241F26221D2622
            1D26221D5F420EA16901B67701C88301D08901D28A01D28A01D28A01D28A01D2
            8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
            D28A01D28A01D28A01D28A01CC8602C58203BD7D04B77A05B47806B37806B277
            06B27807B37907B47A07B47A07B47A08B37807B27707B27706B27806B47806B7
            7A05BE7E04C68303CC8602D28A01D28A01D28A01D28A01D28A01D28A01D28A01
            D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
            01D28A01D28A01D08901C88301704D0E26221D26221D26221D25241F00808000
            8080008080008080008080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000808026221D2622
            1D26221D2C251C67470CA26A01B67701C88301D08901D28A01D28A01D28A01D2
            8A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
            D28A01D28A01D28A01D28A01D28A01D18A01CF8802C98403C38103BF7F04BC7E
            05BA7E05BC8517BD881EBC861BBD881FBA8110BA7D05BB7E05BF7F04C48103C9
            8502CF8802D18A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01
            D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A01D28A
            01D28A01D08901C8830179530C2C261C26221D26221D25231F00808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080008080008080008080222D292622
            1D26221D26221D31281A6C490BA36C01B67701C98301D18901D38A01D38A01D3
            8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D48B01D58D
            01D68F01DB9E29DCA134DCA134DCA134D99717D58E01D48C01D48B01D38A01D3
            8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A
            01D18901C983017D560B33291A26221D26221D26221D1D383500808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080801F33
            2F26221D26221D26221D33291A6C490BA36B01B67701C78201D08801D38A01D3
            8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D48C01D58D
            01D69001DB9D25DCA134DCA134DCA132D99715D68F01D48D01D48B01D38A01D3
            8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D088
            01C782017D560B342A1A26221D26221D26221D1F332F00808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8024282326221D26221D26221D31281A67470CA26A01B37501C58101CF8701D2
            8901D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38B01D48C01D58E
            01D79001DB9D24DCA134DCA134DCA132D99814D68F01D58D01D48B01D38A01D3
            8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D28901CF8701C581
            0178520C32291A26221D26221D26221D20302C00808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808024282326221D26221D26221D2C251C5F420E9B6601AF7201C17E01CC
            8601D18901D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38B01D48C01D58E
            01D79101DB9D24DCA134DCA134DCA132D99814D69001D58D01D48B01D38A01D3
            8A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01D38A01
            D38A01D38A01D38A01D38A01D38A01D38A01D38A01D18901CC8601BD7C016C4B
            0E2C261C26221D26221D26221D20302C00808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808020302C26221D26221D26221D26221D543D118B5D04AB7000BC
            7B00C98300D08800D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00
            D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38B00D48C00D58E
            00D79100DB9D24DCA133DCA133DCA131D99813D69000D58D00D48B00D38A00D3
            8A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00D38A00
            D38A00D38A00D38A00D38A00D38A00D38A00D08800C98300A56D045D43112622
            1D26221D26221D26221D20302C00808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            800080800080800080801F332F26221D26221D26221D26221D463515785109A4
            6C00B57700C48100CE8700D28A00D48B00D48B00D48B00D48B00D48B00D48B00
            D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48C00D58D00D68F
            00D89100DC9E23DDA233DDA233DCA231DA9913D79000D68E00D58C00D48B00D4
            8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00
            D48B00D48B00D48B00D48B00D28A00CE8700C481008B5E094B371526221D2622
            1D26221D26221D1F332F00808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808013504E26221D26221D26221D26221D342A1961
            450E966302AC7100BC7B00C88300D08800D38A00D48B00D48B00D48B00D48B00
            D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D58D00D68E
            00D79100DB9E24DDA233DDA233DCA231DA9914D79000D58E00D58C00D48B00D4
            8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00
            D48B00D48B00D38A00D08800C88300B175026C4C0E352B1926221D26221D2622
            1D25231F1D383500808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80008080008080008080008080008080008080212F2B26221D26221D26221D26
            221D493614765009A36B00B17400BE7D00C98400D08800D38A00D48B00D48B00
            D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D58C00D68E
            00D79000DC9E27DDA233DDA233DDA233DA9915D68F00D58D00D58C00D48B00D4
            8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00
            D38A00D08800C98400BE7D00875B094E391426221D26221D26221D26221D212F
            2B00808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            800080800080800080800080800080800080800080801B3E3A26221D26221D26
            221D26221D2D261B573E11825806A56C00B27400BE7D00C88300CF8800D28A00
            D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D58C00D58D
            00D68F00DA9816DB9D22DB9D21DB9D22D8940BD68E00D58D00D48C00D48B00D4
            8B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D48B00D28A00CF8800
            C88300BE7D009462065D42112E271B26221D26221D26221D26221D232A260080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            800080800080800080800080800080800080800080800080801E373324272226
            221D26221D26221D26221D342A195A4010845806A66C00B17300BD7B00C78200
            CD8600D28900D48A00D58B00D58B00D58B00D58B00D58B00D58B00D58C00D68D
            00D68E00D89104D99309D99309D9930AD79002D68D00D68C00D58C00D58B00D5
            8B00D58B00D58B00D58B00D58B00D58B00D48A00D28900CD8600C78200BD7B00
            936206614410362B1926221D26221D26221D26221D26221D1E37330080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            800080800080800080800080800080800080800080800080800080800080801A
            3F3B26221D26221D26221D26221D26221D31291A543D11795209A26A00AC7100
            B67800BF7E00C88300CD8700D08900D28A00D48B00D58C00D58C00D58C00D68D
            00D68E00D79004D89207D89207D89207D68F02D68D00D58D00D58C00D58C00D5
            8C00D58C00D48B00D28A00D08900CD8700C88300BF7E00B57700855A09594011
            32291A26221D26221D26221D26221D26221D222B260080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            80800080801E373326221D26221D26221D26221D26221D26221D44331563450E
            855906A46C00AC7100B37600BB7B00C27F00C88300CB8500CD8700CF8800D18A
            00D38B00D48C00D58D00D68E00D68E00D58C00D38C00D28A00D18900CF8800CD
            8700CB8500C88300C27F00BB7B00B3760090600669490E46351526221D26221D
            26221D26221D26221D26221D2426220080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            80800080800080800080801E363226221D26221D26221D26221D26221D26221D
            29241C4333155D410F775109926004A56D00AB7100B17400B57700B87900BD7C
            00BF7E00C28000C48100C58200C58200C38100C27F00BF7E00BD7C00B87900B5
            7700B174009C67047D550960440F4534152A241C26221D26221D26221D26221D
            26221D26221D2426210080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080232A2626221D26221D26221D26221D
            26221D26221D26221D26221D2D261B3F3117513B1262450E724E0B8056088C5D
            059764039F6801A36B00A46B00A069019865038F5F05835808744F0B64460E53
            3C124031172D261B26221D26221D26221D26221D26221D26221D26221D212F2B
            232A260080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            80800080800080800080800080800080800080800080801E373324262226221D
            26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D26221D26221D26221D26221D26231E222C27008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080222C2726221D26221D26221D26221D26221D26221D26221D26221D2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
            221D26221D26221D26221D25231F26231E008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080222D2824262223282425252026231E2622
            1D26221D26221D26221D26221D26221D26221D26221D26221D26221D25231F25
            231F222D28008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080}
          HandleImage.Data = {
            86000000424D8600000000000000360000002800000005000000050000000100
            18000000000050000000120B0000120B000000000000000000002E9797B0D8D8
            ECF6F6B0D8D82E979700B2D9D9FFFFFFFFFFFFFFFFFFB2D9D900ECF6F6FFFFFF
            FFFFFFFFFFFFECF6F600B2D9D9FFFFFFFFFFFFFFFFFFB2D9D9002E9797B0D8D8
            ECF6F6B0D8D82E979754}
          Radius = 45
          OnChange = whHeadingChange
          OnMouseUp = whHeadingMouseUp
        end
        object lblStraightLineActualHeading: TLabel
          Left = 150
          Top = 131
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label128: TLabel
          Left = 240
          Top = 153
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object lblStraightLineActualGroundSpeed: TLabel
          Left = 150
          Top = 194
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label126: TLabel
          Left = 240
          Top = 131
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object Label125: TLabel
          Left = 240
          Top = 194
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object Label124: TLabel
          Left = 240
          Top = 173
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object Label123: TLabel
          Left = 13
          Top = 173
          Width = 111
          Height = 13
          Caption = 'Ordered Ground Speed'
        end
        object Label122: TLabel
          Left = 240
          Top = 109
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object Label121: TLabel
          Left = 13
          Top = 131
          Width = 72
          Height = 13
          Caption = 'Actual Heading'
        end
        object lblStraightLineActuaCourse: TLabel
          Left = 150
          Top = 153
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label119: TLabel
          Left = 13
          Top = 109
          Width = 82
          Height = 13
          Caption = 'Ordered Heading'
        end
        object panAltitude: TPanel
          Left = 3
          Top = 209
          Width = 319
          Height = 58
          BevelOuter = bvNone
          TabOrder = 9
          Visible = False
          object Label57: TLabel
            Left = 10
            Top = 6
            Width = 80
            Height = 13
            Caption = 'Ordered Altitude'
          end
          object lblActualAltitude: TLabel
            Left = 147
            Top = 30
            Width = 12
            Height = 13
            Caption = '---'
          end
          object Label63: TLabel
            Left = 237
            Top = 7
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object Label65: TLabel
            Left = 237
            Top = 31
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object StaticText105: TStaticText
            Left = 9
            Top = 26
            Width = 74
            Height = 17
            Caption = 'Actual Altitude'
            TabOrder = 0
          end
          object StaticText107: TStaticText
            Left = 133
            Top = 6
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 1
          end
          object StaticText111: TStaticText
            Left = 133
            Top = 28
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 2
          end
          object edOrderAltitude: TEdit
            Tag = 1
            Left = 147
            Top = 4
            Width = 55
            Height = 19
            BevelInner = bvNone
            BevelOuter = bvNone
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 3
            Text = '0'
            OnKeyPress = edOrderAltitudeKeyPress
          end
        end
        object panDepth: TPanel
          Left = 2
          Top = 209
          Width = 319
          Height = 58
          BevelOuter = bvNone
          TabOrder = 10
          Visible = False
          object lbl1: TLabel
            Left = 10
            Top = 6
            Width = 72
            Height = 13
            Caption = 'Ordered Depth'
          end
          object lbl2: TLabel
            Left = 147
            Top = 30
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbl3: TLabel
            Left = 237
            Top = 7
            Width = 8
            Height = 13
            Caption = 'm'
          end
          object lbl4: TLabel
            Left = 237
            Top = 31
            Width = 8
            Height = 13
            Caption = 'm'
          end
          object txt1: TStaticText
            Left = 9
            Top = 26
            Width = 66
            Height = 17
            Caption = 'Actual Depth'
            TabOrder = 0
          end
          object txt2: TStaticText
            Left = 133
            Top = 6
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 1
          end
          object txt3: TStaticText
            Left = 133
            Top = 28
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 2
          end
          object edt1: TEdit
            Tag = 2
            Left = 148
            Top = 3
            Width = 55
            Height = 19
            BevelInner = bvNone
            BevelOuter = bvNone
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 3
            Text = '0'
            OnKeyPress = edOrderAltitudeKeyPress
          end
        end
        object edtStraightLineOrderedGroundSpeed: TEdit
          Tag = 1
          Left = 150
          Top = 169
          Width = 55
          Height = 19
          BevelInner = bvNone
          BevelOuter = bvNone
          Ctl3D = False
          MaxLength = 9
          ParentCtl3D = False
          TabOrder = 0
          Text = '0'
          OnKeyPress = edtStraightLineOrderedGroundSpeedKeyPress
        end
        object edtStraightLineOrderedHeading: TEdit
          Left = 150
          Top = 105
          Width = 55
          Height = 19
          BevelInner = bvNone
          BevelOuter = bvNone
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 1
          Text = '0'
          OnKeyPress = edtStraightLineOrderedHeadingKeyPress
        end
        object StaticText87: TStaticText
          Left = 136
          Top = 171
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object StaticText86: TStaticText
          Left = 136
          Top = 192
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 3
        end
        object StaticText85: TStaticText
          Left = 136
          Top = 151
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 4
        end
        object StaticText84: TStaticText
          Left = 136
          Top = 129
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 5
        end
        object StaticText83: TStaticText
          Left = 136
          Top = 107
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 6
        end
        object StaticText82: TStaticText
          Left = 13
          Top = 192
          Width = 105
          Height = 17
          Caption = 'Actual Ground Speed'
          TabOrder = 7
        end
        object StaticText81: TStaticText
          Left = 13
          Top = 151
          Width = 71
          Height = 17
          Caption = 'Actual Course'
          TabOrder = 8
        end
      end
    end
    object grbZigZag: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 8
      object Label145: TLabel
        Left = 10
        Top = 26
        Width = 60
        Height = 13
        Caption = 'Base Course'
      end
      object Label146: TLabel
        Left = 10
        Top = 50
        Width = 30
        Height = 13
        Caption = 'Period'
      end
      object Label147: TLabel
        Left = 10
        Top = 74
        Width = 47
        Height = 13
        Caption = 'Amplitude'
      end
      object Label148: TLabel
        Left = 216
        Top = 26
        Width = 48
        Height = 13
        Caption = 'degrees T'
      end
      object Label149: TLabel
        Left = 10
        Top = 98
        Width = 111
        Height = 13
        Caption = 'Ordered Ground Speed'
      end
      object Label197: TLabel
        Left = 216
        Top = 98
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label198: TLabel
        Left = 10
        Top = 123
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label199: TLabel
        Left = 216
        Top = 123
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblZigZagActualGroundSpeed: TLabel
        Left = 136
        Top = 123
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object Label207: TLabel
        Left = 216
        Top = 50
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object Label209: TLabel
        Left = 216
        Top = 74
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object StaticText106: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtZigZagBaseCourse: TEdit
        Tag = 1
        Left = 136
        Top = 22
        Width = 74
        Height = 21
        MaxLength = 5
        TabOrder = 1
        OnKeyPress = edtZigZagBaseCourseKeyPress
      end
      object StaticText108: TStaticText
        Left = 122
        Top = 48
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object edtZigZagPeriod: TEdit
        Tag = 2
        Left = 136
        Top = 46
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 3
        OnKeyPress = edtZigZagBaseCourseKeyPress
      end
      object StaticText109: TStaticText
        Left = 122
        Top = 72
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object edtZigZagAmplitude: TEdit
        Tag = 3
        Left = 136
        Top = 70
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 5
        OnKeyPress = edtZigZagBaseCourseKeyPress
      end
      object StaticText110: TStaticText
        Left = 122
        Top = 96
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 6
      end
      object edtZigZagOrderedGroundSpeed: TEdit
        Tag = 4
        Left = 136
        Top = 94
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 7
        OnKeyPress = edtZigZagBaseCourseKeyPress
      end
      object StaticText137: TStaticText
        Left = 122
        Top = 121
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 8
      end
    end
    object grpCircle: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 9
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 15
        Width = 362
        Height = 412
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object Label3: TLabel
          Left = 13
          Top = 148
          Width = 32
          Height = 13
          Caption = 'Radius'
        end
        object Label4: TLabel
          Left = 13
          Top = 177
          Width = 42
          Height = 13
          Caption = 'Direction'
        end
        object Label5: TLabel
          Left = 219
          Top = 148
          Width = 14
          Height = 13
          Caption = 'nm'
        end
        object Bevel2: TBevel
          Left = 18
          Top = 124
          Width = 298
          Height = 3
        end
        object Label6: TLabel
          Left = 13
          Top = 206
          Width = 111
          Height = 13
          Caption = 'Ordered Ground Speed'
        end
        object Label7: TLabel
          Left = 220
          Top = 206
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object Label8: TLabel
          Left = 13
          Top = 233
          Width = 101
          Height = 13
          Caption = 'Actual Ground Speed'
        end
        object Label9: TLabel
          Left = 220
          Top = 233
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object lblCircleActualGroundSpeed: TLabel
          Left = 140
          Top = 233
          Width = 22
          Height = 13
          Caption = '0.00'
        end
        object lb1: TLabel
          Left = 12
          Top = 24
          Width = 26
          Height = 13
          Caption = 'Mode'
        end
        object btnCircleMode: TSpeedButton
          Left = 217
          Top = 19
          Width = 27
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
          OnClick = btnCircleModeClick
        end
        object btnCircleDirection: TSpeedButton
          Left = 291
          Top = 172
          Width = 27
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
          OnClick = btnCircleDirectionClick
        end
        object pnlPosition: TPanel
          Left = 7
          Top = 41
          Width = 333
          Height = 81
          BevelOuter = bvNone
          TabOrder = 11
          object Label2: TLabel
            Left = 6
            Top = 13
            Width = 37
            Height = 13
            Caption = 'Position'
          end
          object sbCircleOnPositionPosition: TSpeedButton
            Left = 282
            Top = 7
            Width = 27
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A
              FFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC8
              7AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
              C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
            OnClick = sbCircleOnPositionPositionClick
          end
          object StaticText3: TStaticText
            Left = 116
            Top = 10
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 0
          end
          object edtCircleOnPositionPosition: TEdit
            Left = 130
            Top = 8
            Width = 146
            Height = 21
            Enabled = False
            TabOrder = 1
            OnChange = edtCircleOnPositionPositionChange
          end
        end
        object pnlTrack: TPanel
          Left = 6
          Top = 41
          Width = 328
          Height = 85
          BevelOuter = bvNone
          TabOrder = 10
          Visible = False
          object Label14: TLabel
            Left = 6
            Top = 10
            Width = 26
            Height = 13
            Caption = 'Track'
          end
          object sbCircleOnTrackTrack: TSpeedButton
            Left = 212
            Top = 5
            Width = 27
            Height = 22
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
            OnClick = sbCircleOnTrackTrackClick
          end
          object Label15: TLabel
            Left = 6
            Top = 35
            Width = 36
            Height = 13
            Caption = 'Bearing'
          end
          object lblCircleDegree: TLabel
            Left = 212
            Top = 35
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label17: TLabel
            Left = 6
            Top = 60
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label18: TLabel
            Left = 212
            Top = 60
            Width = 14
            Height = 13
            Caption = 'nm'
          end
          object sbCircleOnTrackBearing: TSpeedButton
            Left = 284
            Top = 30
            Width = 27
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
            OnClick = sbCircleOnTrackBearingClick
          end
          object StaticText10: TStaticText
            Left = 117
            Top = 8
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 0
          end
          object edtCircleOnTrackRange: TEdit
            Left = 131
            Top = 56
            Width = 74
            Height = 21
            MaxLength = 11
            TabOrder = 1
            Text = '0.00'
            OnKeyPress = edtCircleOnTrackRangeKeyPress
          end
          object StaticText11: TStaticText
            Left = 117
            Top = 33
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 2
          end
          object edtCircleOnTrackBearing: TEdit
            Left = 131
            Top = 31
            Width = 74
            Height = 21
            MaxLength = 5
            TabOrder = 3
            Text = '000'
            OnKeyPress = edtCircleOnTrackBearingKeyPress
          end
          object StaticText12: TStaticText
            Left = 117
            Top = 58
            Width = 8
            Height = 17
            Caption = ':'
            TabOrder = 4
          end
          object edtCircleOnTrackTrack: TEdit
            Left = 131
            Top = 6
            Width = 74
            Height = 21
            ReadOnly = True
            TabOrder = 5
          end
        end
        object StaticText1: TStaticText
          Left = 123
          Top = 22
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 0
        end
        object edtCircleMode: TEdit
          Left = 137
          Top = 20
          Width = 74
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = 'Position'
        end
        object StaticText2: TStaticText
          Left = 8
          Top = 1
          Width = 37
          Height = 17
          Caption = 'Centre'
          TabOrder = 2
        end
        object StaticText4: TStaticText
          Left = 125
          Top = 146
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 3
        end
        object edtCircleRadius: TEdit
          Left = 139
          Top = 144
          Width = 74
          Height = 21
          MaxLength = 11
          TabOrder = 4
          Text = '1.00'
          OnKeyPress = edtCircleRadiusKeyPress
        end
        object StaticText5: TStaticText
          Left = 125
          Top = 175
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 5
        end
        object edtCircleDirection: TEdit
          Left = 139
          Top = 173
          Width = 146
          Height = 21
          ReadOnly = True
          TabOrder = 6
          Text = 'Clockwise'
        end
        object StaticText6: TStaticText
          Left = 126
          Top = 206
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 7
        end
        object edtCircleOrderedGroundSpeed: TEdit
          Left = 140
          Top = 202
          Width = 74
          Height = 21
          MaxLength = 11
          TabOrder = 8
          Text = '0.00'
          OnKeyPress = edtCircleOrderedGroundSpeedKeyPress
        end
        object StaticText7: TStaticText
          Left = 126
          Top = 231
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 9
        end
      end
    end
    object grbShadow: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 6
      object Label173: TLabel
        Left = 10
        Top = 26
        Width = 79
        Height = 13
        Caption = 'Track to shadow'
      end
      object Label180: TLabel
        Left = 10
        Top = 50
        Width = 85
        Height = 13
        Caption = 'Standoff distance'
      end
      object Label196: TLabel
        Left = 10
        Top = 74
        Width = 111
        Height = 13
        Caption = 'Ordered Ground Speed'
      end
      object Label290: TLabel
        Left = 216
        Top = 74
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object Label298: TLabel
        Left = 10
        Top = 99
        Width = 101
        Height = 13
        Caption = 'Actual Ground Speed'
      end
      object Label299: TLabel
        Left = 216
        Top = 99
        Width = 26
        Height = 13
        Caption = 'knots'
      end
      object lblShadowActualGroundSpeed: TLabel
        Left = 136
        Top = 99
        Width = 22
        Height = 13
        Caption = '14.0'
      end
      object Label301: TLabel
        Left = 216
        Top = 50
        Width = 14
        Height = 13
        Caption = 'nm'
      end
      object sbTrackToshadow: TSpeedButton
        Left = 216
        Top = 21
        Width = 23
        Height = 22
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
        OnClick = sbTrackToshadowClick
      end
      object panShadowDepth: TPanel
        Left = 2
        Top = 116
        Width = 319
        Height = 58
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 8
        Visible = False
        object Label33: TLabel
          Left = 8
          Top = 6
          Width = 72
          Height = 13
          Caption = 'Ordered Depth'
        end
        object lblActShadowDepth: TLabel
          Left = 134
          Top = 33
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label35: TLabel
          Left = 214
          Top = 7
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object Label36: TLabel
          Left = 214
          Top = 34
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object StaticText28: TStaticText
          Left = 8
          Top = 29
          Width = 66
          Height = 17
          Caption = 'Actual Depth'
          TabOrder = 0
        end
        object StaticText29: TStaticText
          Left = 120
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText30: TStaticText
          Left = 120
          Top = 31
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object edtOrdShadowDepth: TEdit
          Tag = 2
          Left = 134
          Top = 3
          Width = 74
          Height = 21
          MaxLength = 9
          TabOrder = 3
          Text = '0'
          OnKeyPress = edtOrdShadowAltitudeKeyPress
        end
      end
      object panShadowAltitude: TPanel
        Left = 3
        Top = 116
        Width = 319
        Height = 58
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 7
        Visible = False
        object Label28: TLabel
          Left = 7
          Top = 6
          Width = 80
          Height = 13
          Caption = 'Ordered Altitude'
        end
        object lblActShadowAltitude: TLabel
          Left = 132
          Top = 33
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label31: TLabel
          Left = 213
          Top = 7
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object Label32: TLabel
          Left = 212
          Top = 34
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object StaticText22: TStaticText
          Left = 7
          Top = 29
          Width = 74
          Height = 17
          Caption = 'Actual Altitude'
          TabOrder = 0
        end
        object StaticText23: TStaticText
          Left = 119
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText25: TStaticText
          Left = 118
          Top = 31
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object edtOrdShadowAltitude: TEdit
          Tag = 1
          Left = 133
          Top = 4
          Width = 74
          Height = 21
          MaxLength = 9
          TabOrder = 3
          Text = '0'
          OnKeyPress = edtOrdShadowAltitudeKeyPress
        end
      end
      object StaticText128: TStaticText
        Left = 122
        Top = 24
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtTrackToShadow: TEdit
        Left = 136
        Top = 22
        Width = 74
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object StaticText143: TStaticText
        Left = 122
        Top = 48
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 2
      end
      object edtStandoffDistanceShadow: TEdit
        Left = 136
        Top = 46
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 3
        OnKeyPress = edtStandoffDistanceShadowKeyPress
      end
      object StaticText144: TStaticText
        Left = 122
        Top = 72
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 4
      end
      object edtShadowOrdeeredGroundSpeed: TEdit
        Left = 136
        Top = 70
        Width = 74
        Height = 21
        MaxLength = 11
        TabOrder = 5
        OnKeyPress = edtShadowOrdeeredGroundSpeedKeyPress
      end
      object StaticText145: TStaticText
        Left = 122
        Top = 97
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 6
      end
    end
    object grpStation: TGroupBox
      Left = 0
      Top = 0
      Width = 366
      Height = 429
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 10
      object Label154: TLabel
        Left = 13
        Top = 32
        Width = 26
        Height = 13
        Caption = 'Mode'
      end
      object Bevel32: TBevel
        Left = 55
        Top = 13
        Width = 290
        Height = 3
      end
      object sbOnTrackAnchorMode: TSpeedButton
        Left = 208
        Top = 29
        Width = 27
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
        OnClick = btnCircleModeClick
      end
      object bvl1: TBevel
        Left = 15
        Top = 155
        Width = 330
        Height = 3
      end
      object pnlStationDepth: TPanel
        Left = 15
        Top = 161
        Width = 272
        Height = 58
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 6
        Visible = False
        object Label43: TLabel
          Left = 10
          Top = 6
          Width = 72
          Height = 13
          Caption = 'Ordered Depth'
        end
        object Label45: TLabel
          Left = 193
          Top = 6
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object Label46: TLabel
          Left = 193
          Top = 31
          Width = 8
          Height = 13
          Caption = 'm'
        end
        object lblStationActualDepth: TLabel
          Left = 125
          Top = 31
          Width = 18
          Height = 13
          Caption = '000'
        end
        object StaticText38: TStaticText
          Left = 10
          Top = 29
          Width = 66
          Height = 17
          Caption = 'Actual Depth'
          TabOrder = 0
        end
        object StaticText39: TStaticText
          Left = 113
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText40: TStaticText
          Left = 113
          Top = 30
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object edtStationOrderedDepth: TEdit
          Tag = 2
          Left = 125
          Top = 4
          Width = 60
          Height = 21
          TabOrder = 3
          Text = '000'
          OnKeyPress = edtStationOrderedAltitudeKeyPress
        end
      end
      object pnlStationAltitude: TPanel
        Left = 16
        Top = 161
        Width = 267
        Height = 58
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 5
        Visible = False
        object Label30: TLabel
          Left = 9
          Top = 6
          Width = 80
          Height = 13
          Caption = 'Ordered Altitude'
        end
        object Label39: TLabel
          Left = 192
          Top = 7
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object Label41: TLabel
          Left = 192
          Top = 32
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object lblStationActualAltitude: TLabel
          Left = 125
          Top = 30
          Width = 18
          Height = 13
          Caption = '000'
        end
        object StaticText32: TStaticText
          Left = 9
          Top = 29
          Width = 74
          Height = 17
          Caption = 'Actual Altitude'
          TabOrder = 0
        end
        object StaticText35: TStaticText
          Left = 112
          Top = 6
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object StaticText37: TStaticText
          Left = 112
          Top = 29
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 2
        end
        object edtStationOrderedAltitude: TEdit
          Tag = 1
          Left = 125
          Top = 4
          Width = 60
          Height = 21
          TabOrder = 3
          Text = '000'
          OnKeyPress = edtStationOrderedAltitudeKeyPress
        end
      end
      object pnlStationPosition: TPanel
        Left = 13
        Top = 57
        Width = 311
        Height = 100
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 3
        object lbl5: TLabel
          Left = 0
          Top = 12
          Width = 37
          Height = 13
          Caption = 'Position'
        end
        object btnStationAnchorPosition: TSpeedButton
          Left = 280
          Top = 10
          Width = 27
          Height = 22
          Glyph.Data = {
            8A050000424D8A05000000000000360400002800000011000000110000000100
            08000000000054010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A60004040400080808000C0C0C0011111100161616001C1C1C00222222002929
            2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
            CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
            00000033330000336600003399000033CC000033FF0000660000006633000066
            6600006699000066CC000066FF00009900000099330000996600009999000099
            CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
            660000FF990000FFCC00330000003300330033006600330099003300CC003300
            FF00333300003333330033336600333399003333CC003333FF00336600003366
            330033666600336699003366CC003366FF003399000033993300339966003399
            99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
            FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
            6600660099006600CC006600FF00663300006633330066336600663399006633
            CC006633FF00666600006666330066666600666699006666CC00669900006699
            330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
            CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
            000099339900990099009900CC009900000099333300990066009933CC009900
            FF00996600009966330099336600996699009966CC009933FF00999933009999
            6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
            CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
            000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
            9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
            FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
            3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
            9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
            6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
            CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
            0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
            9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
            A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
            DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000000000000000
            0000000000000000000000000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000}
          OnClick = btnStationAnchorPositionClick
        end
        object edtStationPosition: TEdit
          Left = 130
          Top = 10
          Width = 146
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object txt4: TStaticText
          Left = 116
          Top = 12
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 1
        end
        object chkStationDrift: TCheckBox
          Left = 0
          Top = 40
          Width = 97
          Height = 17
          Caption = 'Drift with current'
          TabOrder = 2
          OnClick = chkStationDriftClick
        end
      end
      object pnlStationTrack: TPanel
        Left = 25
        Top = 57
        Width = 311
        Height = 100
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 4
        object Label155: TLabel
          Left = 0
          Top = 12
          Width = 26
          Height = 13
          Caption = 'Track'
        end
        object Label156: TLabel
          Left = 0
          Top = 40
          Width = 36
          Height = 13
          Caption = 'Bearing'
        end
        object Label157: TLabel
          Left = 0
          Top = 68
          Width = 31
          Height = 13
          Caption = 'Range'
        end
        object lblStationBearingState: TLabel
          Left = 183
          Top = 39
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object Label159: TLabel
          Left = 183
          Top = 67
          Width = 14
          Height = 13
          Caption = 'nm'
        end
        object sbOnTrackAnchorTrack: TSpeedButton
          Left = 183
          Top = 9
          Width = 27
          Height = 22
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
          OnClick = sbOnTrackAnchorTrackClick
        end
        object btnStationOnTrackBearing: TSpeedButton
          Left = 265
          Top = 36
          Width = 27
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
          OnClick = sbCircleOnTrackBearingClick
        end
        object edtOnTrackAnchorBearing: TEdit
          Left = 117
          Top = 36
          Width = 60
          Height = 21
          MaxLength = 5
          TabOrder = 0
          Text = '000'
          OnKeyPress = edtOnTrackAnchorBearingKeyPress
        end
        object edtOnTrackAnchorRange: TEdit
          Left = 117
          Top = 63
          Width = 60
          Height = 21
          MaxLength = 11
          TabOrder = 1
          Text = '0.00'
          OnKeyPress = edtOnTrackAnchorRangeKeyPress
        end
        object edtOnTrackAnchorTrack: TEdit
          Left = 117
          Top = 9
          Width = 60
          Height = 21
          TabOrder = 2
        end
        object StaticText115: TStaticText
          Left = 103
          Top = 11
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 3
        end
        object StaticText116: TStaticText
          Left = 103
          Top = 67
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 4
        end
        object StaticText117: TStaticText
          Left = 103
          Top = 39
          Width = 8
          Height = 17
          Caption = ':'
          TabOrder = 5
        end
      end
      object StaticText113: TStaticText
        Left = 128
        Top = 32
        Width = 8
        Height = 17
        Caption = ':'
        TabOrder = 0
      end
      object edtOnTrackAnchorMode: TEdit
        Left = 142
        Top = 30
        Width = 60
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Position'
      end
      object StaticText114: TStaticText
        Left = 11
        Top = 7
        Width = 38
        Height = 17
        Caption = 'Anchor'
        TabOrder = 2
      end
    end
  end
  object pmGuidance: TPopupMenu
    Left = 242
    Top = 6
    object mnStraightLine1: TMenuItem
      Caption = 'Straight Line'
      OnClick = mnGuidanceClick
    end
    object mnHelm1: TMenuItem
      Caption = 'Helm'
      OnClick = mnGuidanceClick
    end
    object mnCircle: TMenuItem
      Caption = 'Circle'
      OnClick = mnGuidanceClick
    end
    object mnStation: TMenuItem
      Caption = 'Station'
      OnClick = mnGuidanceClick
    end
    object mnZigzag1: TMenuItem
      Caption = 'Zigzag'
      OnClick = mnZigzag1Click
      object Short1: TMenuItem
        Caption = 'Short'
        OnClick = Short1Click
      end
      object Long1: TMenuItem
        Caption = 'Long'
        OnClick = Long1Click
      end
      object VeryLong1: TMenuItem
        Caption = 'Very Long'
        OnClick = VeryLong1Click
      end
    end
    object mnSinuation1: TMenuItem
      Caption = 'Sinuation'
      OnClick = mnGuidanceClick
    end
    object mnFormation2: TMenuItem
      Caption = 'Formation'
      Enabled = False
      OnClick = mnGuidanceClick
    end
    object mnEvasion1: TMenuItem
      Caption = 'Evasion'
      OnClick = mnGuidanceClick
    end
    object mnWaypoint1: TMenuItem
      Caption = 'Waypoint'
      OnClick = mnGuidanceClick
    end
    object mnOutrun1: TMenuItem
      Caption = 'Outrun'
      OnClick = mnGuidanceClick
    end
    object mnEngagement1: TMenuItem
      Caption = 'Engagement'
      Enabled = False
      OnClick = mnGuidanceClick
    end
    object mnShadow1: TMenuItem
      Caption = 'Shadow'
      OnClick = mnGuidanceClick
    end
    object mnReturntoBase1: TMenuItem
      Caption = 'Return to Base'
      OnClick = mnGuidanceClick
    end
  end
  object pmCircleMode: TPopupMenu
    Left = 328
    Top = 56
    object Position1: TMenuItem
      Caption = 'Position'
      OnClick = Position1Click
    end
    object track1: TMenuItem
      Caption = 'Track'
      OnClick = track1Click
    end
  end
  object pmCircleDirection: TPopupMenu
    Left = 328
    Top = 232
    object Clockwise1: TMenuItem
      Caption = 'Clockwise'
      OnClick = Clockwise1Click
    end
    object Counterclockwise1: TMenuItem
      Caption = 'Counter-clockwise'
      OnClick = Counterclockwise1Click
    end
  end
  object pmCircleBearingDegree: TPopupMenu
    Left = 328
    Top = 128
    object True1: TMenuItem
      Caption = 'True'
      OnClick = True1Click
    end
    object Relative1: TMenuItem
      Caption = 'Relative'
      OnClick = Relative1Click
    end
  end
end
