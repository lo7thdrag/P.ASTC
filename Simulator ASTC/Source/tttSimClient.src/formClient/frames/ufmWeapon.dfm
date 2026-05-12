inherited fmWeapon: TfmWeapon
  Width = 346
  Height = 450
  ExplicitWidth = 346
  ExplicitHeight = 450
  object PanelWeaponChoices: TPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 22
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object btnWeapon: TSpeedButton
      Tag = 1
      Left = 304
      Top = 0
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
      OnClick = btnWeaponClick
    end
    object edtWeaponName: TEdit
      Left = 6
      Top = 1
      Width = 294
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
  end
  object PanelALL: TPanel
    Left = 0
    Top = 22
    Width = 346
    Height = 428
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object PanelTacticalWeapons: TPanel
      Left = 0
      Top = 0
      Width = 346
      Height = 428
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object grbMines: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 14
        object Label272: TLabel
          Left = 3
          Top = 3
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object lblStatusMines: TLabel
          Left = 22
          Top = 31
          Width = 43
          Height = 13
          Caption = 'Available'
        end
        object Label288: TLabel
          Left = 94
          Top = 31
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object lbMinesQuantity: TLabel
          Left = 150
          Top = 31
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label291: TLabel
          Left = 3
          Top = 60
          Width = 35
          Height = 13
          Caption = 'Control'
        end
        object Bevel58: TBevel
          Left = 40
          Top = 67
          Width = 260
          Height = 3
        end
        object Label292: TLabel
          Left = 22
          Top = 90
          Width = 36
          Height = 13
          Caption = 'Depth :'
        end
        object Bevel61: TBevel
          Left = 40
          Top = 10
          Width = 260
          Height = 3
        end
        object lbl84: TLabel
          Left = 172
          Top = 90
          Width = 33
          Height = 13
          Caption = 'metres'
        end
        object EdtMinesDepth: TEdit
          Left = 99
          Top = 86
          Width = 53
          Height = 21
          TabOrder = 0
          Text = '0'
          OnKeyPress = MineKeyPress
        end
        object btnMinesDeploy: TButton
          Left = 236
          Top = 193
          Width = 80
          Height = 25
          Caption = 'Deploy'
          TabOrder = 1
          OnClick = btnMinesDeployClick
        end
      end
      object grbStraightRunningTorpedos: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 6
        object ScrollBox4: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object btnStraightRunningTorpedosDisplayBlindHide: TSpeedButton
            Tag = 4
            Left = 134
            Top = 247
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnStraightTorpedoOnClick
          end
          object btnStraightRunningTorpedosDisplayBlindShow: TSpeedButton
            Tag = 3
            Left = 134
            Top = 223
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnStraightTorpedoOnClick
          end
          object btnStraightRunningTorpedosDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 24
            Top = 247
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnStraightTorpedoOnClick
          end
          object btnStraightRunningTorpedosDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 24
            Top = 223
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnStraightTorpedoOnClick
          end
          object btnStraightRunningTorpedosTargetTrack: TSpeedButton
            Tag = 5
            Left = 184
            Top = 79
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
            OnClick = btnStraightTorpedoOnClick
          end
          object bvl14: TBevel
            Left = 40
            Top = 64
            Width = 260
            Height = 3
          end
          object bvl15: TBevel
            Left = 40
            Top = 199
            Width = 260
            Height = 3
          end
          object bvl16: TBevel
            Left = 40
            Top = 11
            Width = 260
            Height = 3
          end
          object lbl62: TLabel
            Left = 3
            Top = 3
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object lbl63: TLabel
            Left = 125
            Top = 31
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object lbl64: TLabel
            Left = 3
            Top = 56
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object lbl65: TLabel
            Left = 22
            Top = 84
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object lbl66: TLabel
            Left = 3
            Top = 192
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object lbl67: TLabel
            Left = 47
            Top = 203
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object lbl68: TLabel
            Left = 150
            Top = 203
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbl69: TLabel
            Left = 22
            Top = 104
            Width = 45
            Height = 13
            Caption = 'Identity :'
          end
          object lbl70: TLabel
            Left = 22
            Top = 123
            Width = 41
            Height = 13
            Caption = 'Course :'
          end
          object lbl71: TLabel
            Left = 22
            Top = 141
            Width = 75
            Height = 13
            Caption = 'Ground Speed :'
          end
          object lbl72: TLabel
            Left = 22
            Top = 160
            Width = 36
            Height = 13
            Caption = 'Depth :'
          end
          object lbl73: TLabel
            Left = 184
            Top = 123
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object lbl74: TLabel
            Left = 184
            Top = 141
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object lbl75: TLabel
            Left = 184
            Top = 160
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lblSRQuantity: TLabel
            Left = 181
            Top = 31
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblStatusStraightRunningTorpedos: TLabel
            Left = 22
            Top = 31
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lblStraightRunningTorpedosTargetCourse: TLabel
            Left = 124
            Top = 123
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblStraightRunningTorpedosTargetDepth: TLabel
            Left = 124
            Top = 160
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblStraightRunningTorpedosTargetGround: TLabel
            Left = 124
            Top = 141
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblStraightRunningTorpedosTargetIdentity: TLabel
            Left = 124
            Top = 104
            Width = 12
            Height = 13
            Caption = '---'
          end
          object btnLaunchSR: TButton
            Left = 218
            Top = 303
            Width = 80
            Height = 25
            Caption = 'Launch'
            Enabled = False
            TabOrder = 0
            OnClick = btnStraightTorpedoOnClick
          end
          object EdtSRTargetTrack: TEdit
            Left = 124
            Top = 80
            Width = 53
            Height = 21
            Enabled = False
            TabOrder = 1
          end
        end
      end
      object grbWakeHomingTorpedos: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 7
        object ScrollBox5: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel17: TBevel
            Left = 40
            Top = 11
            Width = 260
            Height = 3
          end
          object Bevel18: TBevel
            Left = 39
            Top = 60
            Width = 260
            Height = 3
          end
          object Bevel5: TBevel
            Left = 42
            Top = 112
            Width = 260
            Height = 3
          end
          object Bevel6: TBevel
            Left = 40
            Top = 258
            Width = 260
            Height = 3
          end
          object btnWakeHomingTargetTrack: TSpeedButton
            Tag = 5
            Left = 185
            Top = 126
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
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object Label23: TLabel
            Left = 3
            Top = 3
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Label25: TLabel
            Left = 126
            Top = 25
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object Label26: TLabel
            Left = 3
            Top = 105
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Label27: TLabel
            Left = 22
            Top = 131
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label28: TLabel
            Left = 3
            Top = 249
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Label29: TLabel
            Left = 43
            Top = 268
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label30: TLabel
            Left = 150
            Top = 268
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object Label31: TLabel
            Left = 22
            Top = 153
            Width = 45
            Height = 13
            Caption = 'Identity :'
          end
          object Label32: TLabel
            Left = 22
            Top = 176
            Width = 78
            Height = 13
            Caption = 'Target Bearing :'
          end
          object Label33: TLabel
            Left = 22
            Top = 198
            Width = 80
            Height = 13
            Caption = 'Launch Bearing :'
          end
          object Label34: TLabel
            Left = 22
            Top = 221
            Width = 74
            Height = 13
            Caption = 'Seeker Range :'
          end
          object Label35: TLabel
            Left = 185
            Top = 176
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label37: TLabel
            Left = 185
            Top = 198
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label46: TLabel
            Left = 185
            Top = 221
            Width = 27
            Height = 13
            Caption = 'yards'
          end
          object Label47: TLabel
            Left = 3
            Top = 52
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label55: TLabel
            Left = 22
            Top = 76
            Width = 55
            Height = 13
            Caption = 'Salvo Size :'
          end
          object lblWakeHomingStatus: TLabel
            Left = 22
            Top = 25
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lblWakeHomingTargetIdentity: TLabel
            Left = 127
            Top = 153
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblWHQuantity: TLabel
            Left = 182
            Top = 25
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbWakeHomingTargetTarget: TLabel
            Left = 127
            Top = 176
            Width = 12
            Height = 13
            Caption = '---'
          end
          object sbWakeHomingDisplayBlindHide: TSpeedButton
            Tag = 4
            Left = 138
            Top = 307
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object sbWakeHomingDisplayBlindShow: TSpeedButton
            Tag = 3
            Left = 138
            Top = 283
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object sbWakeHomingDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 24
            Top = 307
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object sbWakeHomingDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 24
            Top = 283
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object btnLaunchWH: TButton
            Tag = 2
            Left = 227
            Top = 350
            Width = 72
            Height = 25
            Caption = 'Launch'
            Enabled = False
            TabOrder = 0
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object btnTargetSeekerWH: TButton
            Tag = 1
            Left = 227
            Top = 217
            Width = 70
            Height = 25
            Caption = '< Default'
            TabOrder = 1
            OnClick = btnWakeHomingTorpedoOnClick
          end
          object EdtLaunchBearingWH: TEdit
            Tag = 2
            Left = 126
            Top = 194
            Width = 36
            Height = 21
            TabOrder = 2
            OnKeyPress = WakeHomingKeyPress
          end
          object EdtSalvoWH: TEdit
            Tag = 1
            Left = 126
            Top = 73
            Width = 53
            Height = 21
            TabOrder = 3
            Text = '1'
            OnKeyPress = WakeHomingKeyPress
          end
          object EdtSeekerRangeWH: TEdit
            Tag = 3
            Left = 126
            Top = 217
            Width = 36
            Height = 21
            TabOrder = 4
            OnKeyPress = WakeHomingKeyPress
          end
          object EdtWHTargetTrack: TEdit
            Left = 126
            Top = 127
            Width = 53
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 5
          end
        end
      end
      object grbActivePasiveTorpedo: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 16
        object ScrollBox3: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object btnHideRangeAPG: TSpeedButton
            Tag = 2
            Left = 28
            Top = 310
            Width = 80
            Height = 23
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btnShowBlindZoneAPG: TSpeedButton
            Tag = 3
            Left = 146
            Top = 286
            Width = 80
            Height = 23
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btnShowRangeAPG: TSpeedButton
            Tag = 1
            Left = 29
            Top = 285
            Width = 80
            Height = 23
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btnTargetTrackAPG: TSpeedButton
            Tag = 5
            Left = 172
            Top = 68
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
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object bvl1: TBevel
            Left = 40
            Top = 16
            Width = 278
            Height = 3
          end
          object bvl2: TBevel
            Left = 41
            Top = 57
            Width = 278
            Height = 3
          end
          object bvl3: TBevel
            Left = 42
            Top = 100
            Width = 278
            Height = 3
          end
          object bvl4: TBevel
            Left = 45
            Top = 262
            Width = 190
            Height = 2
          end
          object lbl1: TLabel
            Left = 3
            Top = 9
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object lbl12: TLabel
            Left = 23
            Top = 151
            Width = 75
            Height = 13
            Caption = 'Search Radius :'
          end
          object lbl13: TLabel
            Left = 23
            Top = 177
            Width = 72
            Height = 13
            Caption = 'Search Depth :'
          end
          object lbl14: TLabel
            Left = 23
            Top = 203
            Width = 73
            Height = 13
            Caption = 'Safety Ceiling :'
          end
          object lbl15: TLabel
            Left = 23
            Top = 231
            Width = 74
            Height = 13
            Caption = 'Seeker Range :'
          end
          object lbl17: TLabel
            Left = 171
            Top = 151
            Width = 27
            Height = 13
            Caption = 'yards'
          end
          object lbl18: TLabel
            Left = 171
            Top = 177
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lbl19: TLabel
            Left = 171
            Top = 203
            Width = 33
            Height = 13
            Caption = 'meters'
          end
          object lbl20: TLabel
            Left = 171
            Top = 231
            Width = 27
            Height = 13
            Caption = 'yards'
          end
          object lbl21: TLabel
            Left = 50
            Top = 270
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object lbl22: TLabel
            Left = 163
            Top = 270
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbl3: TLabel
            Left = 95
            Top = 28
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object lbl5: TLabel
            Left = 3
            Top = 50
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object lbl6: TLabel
            Left = 26
            Top = 74
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object lbl7: TLabel
            Left = 5
            Top = 93
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object lbl8: TLabel
            Left = 5
            Top = 254
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object lbl9: TLabel
            Left = 25
            Top = 116
            Width = 55
            Height = 13
            Caption = 'Salvo Size :'
          end
          object lblQuantityAPG: TLabel
            Left = 151
            Top = 28
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblStatusAPG: TLabel
            Left = 25
            Top = 28
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object btnHideBlindZoneAPG: TSpeedButton
            Tag = 4
            Left = 146
            Top = 310
            Width = 80
            Height = 23
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btn4: TButton
            Tag = 1
            Left = 234
            Top = 149
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 0
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btn5: TButton
            Tag = 2
            Left = 234
            Top = 175
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 1
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btn6: TButton
            Tag = 3
            Left = 234
            Top = 201
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 2
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btn7: TButton
            Tag = 4
            Left = 234
            Top = 230
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 3
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object btnLaunchAP: TButton
            Tag = 5
            Left = 235
            Top = 346
            Width = 80
            Height = 25
            Caption = 'Launch'
            TabOrder = 4
            OnClick = btnActivePasiveTorpedoOnClick
          end
          object EdtAPTargetTrack: TEdit
            Left = 113
            Top = 68
            Width = 50
            Height = 21
            Enabled = False
            TabOrder = 5
            Text = '---'
          end
          object EdtSafetyCeilingAP: TEdit
            Tag = 4
            Left = 113
            Top = 201
            Width = 50
            Height = 21
            TabOrder = 6
            OnKeyPress = ActivePasiveKeyPress
          end
          object EdtSalvoAP: TEdit
            Tag = 1
            Left = 113
            Top = 112
            Width = 50
            Height = 21
            TabOrder = 7
            OnKeyPress = ActivePasiveKeyPress
          end
          object EdtSearchDepthAP: TEdit
            Tag = 3
            Left = 113
            Top = 175
            Width = 50
            Height = 21
            TabOrder = 8
            OnKeyPress = ActivePasiveKeyPress
          end
          object EdtSearchRadiusAP: TEdit
            Tag = 2
            Left = 114
            Top = 148
            Width = 50
            Height = 21
            TabOrder = 9
            OnKeyPress = ActivePasiveKeyPress
          end
          object EdtSeekerRangeAP: TEdit
            Tag = 5
            Left = 113
            Top = 228
            Width = 50
            Height = 21
            TabOrder = 10
            OnKeyPress = ActivePasiveKeyPress
          end
        end
      end
      object grbAirDroppedVECTAC: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 15
        object ScrollBox13: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel72: TBevel
            Left = 40
            Top = 7
            Width = 260
            Height = 3
          end
          object Bevel75: TBevel
            Left = 80
            Top = 176
            Width = 215
            Height = 3
          end
          object Bevel76: TBevel
            Left = 45
            Top = 312
            Width = 260
            Height = 3
          end
          object btnVectacTargetTrack: TSpeedButton
            Tag = 1
            Left = 185
            Top = 16
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
            OnClick = btnVectacClick
          end
          object btnVectacWeaponCarrierName: TSpeedButton
            Tag = 2
            Left = 297
            Top = 186
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
            OnClick = btnVectacClick
          end
          object btnVectacWeaponName: TSpeedButton
            Tag = 3
            Left = 299
            Top = 321
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
            OnClick = btnVectacClick
          end
          object Label367: TLabel
            Left = 3
            Top = 0
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Label368: TLabel
            Left = 24
            Top = 21
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label369: TLabel
            Left = 3
            Top = 169
            Width = 76
            Height = 13
            Caption = 'Weapon Carrier'
          end
          object Label371: TLabel
            Left = 24
            Top = 191
            Width = 34
            Height = 13
            Caption = 'Name :'
          end
          object Label375: TLabel
            Left = 24
            Top = 216
            Width = 75
            Height = 13
            Caption = 'Ground Speed :'
          end
          object Label376: TLabel
            Left = 24
            Top = 240
            Width = 82
            Height = 13
            Caption = 'Adviced Course :'
          end
          object Label377: TLabel
            Left = 24
            Top = 263
            Width = 91
            Height = 13
            Caption = 'Drop Point Offset :'
          end
          object Label378: TLabel
            Left = 24
            Top = 285
            Width = 57
            Height = 13
            Caption = 'Time to go :'
          end
          object Label379: TLabel
            Left = 3
            Top = 304
            Width = 40
            Height = 13
            Caption = 'Weapon'
          end
          object Label380: TLabel
            Left = 24
            Top = 324
            Width = 34
            Height = 13
            Caption = 'Name :'
          end
          object Label383: TLabel
            Left = 185
            Top = 108
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label384: TLabel
            Left = 185
            Top = 216
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object Label385: TLabel
            Left = 185
            Top = 263
            Width = 14
            Height = 13
            Caption = 'nm'
          end
          object Label386: TLabel
            Left = 24
            Top = 44
            Width = 45
            Height = 13
            Caption = 'Identity :'
          end
          object Label387: TLabel
            Left = 24
            Top = 66
            Width = 83
            Height = 13
            Caption = 'Propulsion Type :'
          end
          object Label388: TLabel
            Left = 24
            Top = 87
            Width = 44
            Height = 13
            Caption = 'Doppler :'
          end
          object Label389: TLabel
            Left = 24
            Top = 108
            Width = 41
            Height = 13
            Caption = 'Course :'
          end
          object Label390: TLabel
            Left = 24
            Top = 128
            Width = 75
            Height = 13
            Caption = 'Ground Speed :'
          end
          object Label391: TLabel
            Left = 24
            Top = 148
            Width = 36
            Height = 13
            Caption = 'Depth :'
          end
          object Label392: TLabel
            Left = 185
            Top = 128
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object Label393: TLabel
            Left = 185
            Top = 149
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object Label394: TLabel
            Left = 185
            Top = 240
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label395: TLabel
            Left = 185
            Top = 285
            Width = 30
            Height = 13
            Caption = 'mm:ss'
          end
          object Label396: TLabel
            Left = 24
            Top = 345
            Width = 62
            Height = 13
            Caption = 'Expiry Time :'
          end
          object Label398: TLabel
            Left = 184
            Top = 345
            Width = 30
            Height = 13
            Caption = 'mm:ss'
          end
          object lbVectacTargetCourse: TLabel
            Left = 125
            Top = 108
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacTargetDepth: TLabel
            Left = 125
            Top = 148
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacTargetDoppler: TLabel
            Left = 125
            Top = 87
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacTargetGround: TLabel
            Left = 125
            Top = 128
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacTargetIdentity: TLabel
            Left = 125
            Top = 44
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacTargetPropulsion: TLabel
            Left = 125
            Top = 66
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacWeaponCarrierAdviced: TLabel
            Left = 125
            Top = 240
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacWeaponCarrierTime: TLabel
            Left = 125
            Top = 285
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbVectacWeaponExpiry: TLabel
            Left = 129
            Top = 345
            Width = 12
            Height = 13
            Caption = '---'
          end
          object btnVectacCancel: TButton
            Tag = 2
            Left = 102
            Top = 377
            Width = 80
            Height = 25
            Caption = 'Cancel'
            TabOrder = 0
            OnClick = btnVectacClick
          end
          object btnVectacConfirm: TButton
            Tag = 3
            Left = 202
            Top = 377
            Width = 120
            Height = 25
            Caption = 'Confirm Weapon Drop'
            TabOrder = 1
            OnClick = btnVectacClick
          end
          object btnVectacPlan: TButton
            Tag = 1
            Left = 11
            Top = 377
            Width = 80
            Height = 25
            Caption = 'Plan'
            TabOrder = 2
            OnClick = btnVectacClick
          end
          object btnVectacWeaponCarrierDrop: TButton
            Left = 242
            Top = 256
            Width = 80
            Height = 25
            Caption = '< Default'
            TabOrder = 3
          end
          object btnVectacWeaponCarrierGround: TButton
            Left = 242
            Top = 210
            Width = 80
            Height = 25
            Caption = '< Default'
            TabOrder = 4
          end
          object editVectacTargetTrack: TEdit
            Left = 125
            Top = 17
            Width = 50
            Height = 21
            Enabled = False
            TabOrder = 5
          end
          object editVectacWeaponCarrierDrop: TEdit
            Tag = 1
            Left = 125
            Top = 259
            Width = 50
            Height = 21
            Enabled = False
            TabOrder = 6
            OnKeyPress = editVectacKeypress
          end
          object editVectacWeaponCarrierGround: TEdit
            Left = 125
            Top = 212
            Width = 50
            Height = 21
            Enabled = False
            TabOrder = 7
            OnKeyPress = editVectacKeypress
          end
          object editVectacWeaponCarrierName: TEdit
            Left = 123
            Top = 186
            Width = 168
            Height = 21
            Enabled = False
            TabOrder = 8
          end
          object editVectacWeaponName: TEdit
            Left = 125
            Top = 320
            Width = 168
            Height = 21
            Enabled = False
            TabOrder = 9
            Text = '(none)'
          end
        end
      end
      object grbAirDroppedTorpedo: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 9
        object ScrollBox8: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object btnAirDropeedBilndZonesHide: TSpeedButton
            Tag = 4
            Left = 136
            Top = 350
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object btnAirDroppesDisplayBilndZonesShow: TSpeedButton
            Tag = 3
            Left = 136
            Top = 327
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object btnAirDroppesDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 24
            Top = 350
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object btnAirDroppesDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 24
            Top = 327
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object btnAirDroppesTargetTrack: TSpeedButton
            Tag = 5
            Left = 173
            Top = 130
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
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object bvl10: TBevel
            Left = 39
            Top = 305
            Width = 240
            Height = 3
          end
          object bvl11: TBevel
            Left = 40
            Top = 6
            Width = 240
            Height = 3
          end
          object bvl12: TBevel
            Left = 41
            Top = 37
            Width = 239
            Height = 3
          end
          object bvl13: TBevel
            Left = 82
            Top = 245
            Width = 198
            Height = 3
          end
          object bvl9: TBevel
            Left = 41
            Top = 125
            Width = 239
            Height = 3
          end
          object lbl38: TLabel
            Left = 3
            Top = -2
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object lbl39: TLabel
            Left = 130
            Top = 16
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object lbl40: TLabel
            Left = 3
            Top = 117
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object lbl41: TLabel
            Left = 22
            Top = 135
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object lbl42: TLabel
            Left = 3
            Top = 296
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object lbl43: TLabel
            Left = 45
            Top = 310
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object lbl44: TLabel
            Left = 148
            Top = 310
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbl45: TLabel
            Left = 22
            Top = 155
            Width = 34
            Height = 13
            Caption = 'Force :'
          end
          object lbl46: TLabel
            Left = 3
            Top = 30
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object lbl47: TLabel
            Left = 22
            Top = 50
            Width = 72
            Height = 13
            Caption = 'Search radius :'
          end
          object lbl48: TLabel
            Left = 22
            Top = 74
            Width = 71
            Height = 13
            Caption = 'Search depth :'
          end
          object lbl49: TLabel
            Left = 22
            Top = 98
            Width = 71
            Height = 13
            Caption = 'Safety ceiling :'
          end
          object lbl50: TLabel
            Left = 181
            Top = 50
            Width = 27
            Height = 13
            Caption = 'yards'
          end
          object lbl51: TLabel
            Left = 181
            Top = 74
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lbl52: TLabel
            Left = 181
            Top = 98
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lbl53: TLabel
            Left = 22
            Top = 174
            Width = 41
            Height = 13
            Caption = 'Course :'
          end
          object lbl54: TLabel
            Left = 22
            Top = 193
            Width = 75
            Height = 13
            Caption = 'Ground Speed :'
          end
          object lbl55: TLabel
            Left = 22
            Top = 213
            Width = 36
            Height = 13
            Caption = 'Depth :'
          end
          object lbl56: TLabel
            Left = 172
            Top = 174
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object lbl57: TLabel
            Left = 172
            Top = 193
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object lbl58: TLabel
            Left = 172
            Top = 213
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lbl59: TLabel
            Left = 3
            Top = 236
            Width = 73
            Height = 13
            Caption = 'Launch Bearing'
          end
          object lbl60: TLabel
            Left = 24
            Top = 279
            Width = 43
            Height = 13
            Caption = 'Bearing :'
          end
          object lbl61: TLabel
            Left = 181
            Top = 279
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object lbl85: TLabel
            Left = 217
            Top = 152
            Width = 69
            Height = 13
            Caption = 'without target'
          end
          object lblADQuantity: TLabel
            Left = 195
            Top = 16
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblAirDproppedTargetCourse: TLabel
            Left = 115
            Top = 174
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblAirDproppedTargetDepth: TLabel
            Left = 115
            Top = 213
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblAirDproppedTargetForce: TLabel
            Left = 115
            Top = 155
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblAirDproppedTargetGroundSpeed: TLabel
            Left = 115
            Top = 193
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblAirDroppedStatus: TLabel
            Left = 22
            Top = 16
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object btnDefaultAirDroppedControlSearchCeiling: TButton
            Tag = 2
            Left = 217
            Top = 92
            Width = 65
            Height = 23
            Caption = '< Default'
            TabOrder = 0
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object btnDefaultAirDroppedSearchDepth: TButton
            Tag = 1
            Left = 217
            Top = 66
            Width = 65
            Height = 23
            Caption = '< Default'
            TabOrder = 1
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object btnLauchAD: TButton
            Tag = 3
            Left = 200
            Top = 381
            Width = 82
            Height = 26
            Caption = 'Drop'
            TabOrder = 2
            OnClick = btnAirDroppedTorpedoOnClick
          end
          object chkAirDroppedLaunchWhithoutTarget: TCheckBox
            Left = 199
            Top = 133
            Width = 81
            Height = 17
            Caption = 'Launch'
            TabOrder = 3
            OnClick = chkAirDroppedLaunchWhithoutTargetClick
          end
          object chkAirDroppedUseLaunchPlatformHeading: TCheckBox
            Left = 24
            Top = 255
            Width = 166
            Height = 17
            Caption = 'Use launch platform heading'
            TabOrder = 4
            OnClick = chkAirDroppedUseLaunchPlatformHeadingClick
          end
          object EdtADTargetTrack: TEdit
            Left = 115
            Top = 131
            Width = 53
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 5
          end
          object EdtLaunchBearingAD: TEdit
            Tag = 4
            Left = 115
            Top = 274
            Width = 60
            Height = 21
            TabOrder = 6
            OnKeyPress = AirDroppedKeyPress
          end
          object EdtSearchCeilingAD: TEdit
            Tag = 3
            Left = 115
            Top = 94
            Width = 60
            Height = 21
            TabOrder = 7
            OnKeyPress = AirDroppedKeyPress
          end
          object EdtSearchDepthAD: TEdit
            Tag = 2
            Left = 115
            Top = 70
            Width = 60
            Height = 21
            TabOrder = 8
            OnKeyPress = AirDroppedKeyPress
          end
          object EdtSearchRadiusAD: TEdit
            Tag = 1
            Left = 115
            Top = 46
            Width = 60
            Height = 21
            TabOrder = 9
            OnKeyPress = AirDroppedKeyPress
          end
        end
      end
      object grbSurfaceToAirMissile: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 10
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Label1: TLabel
            Left = 4
            Top = -2
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Bevel1: TBevel
            Left = 41
            Top = 5
            Width = 260
            Height = 3
          end
          object lblSurfaceToAirStatus: TLabel
            Left = 24
            Top = 17
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object Label2: TLabel
            Left = 127
            Top = 17
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object lbSurfaceToAirStatusQuantity: TLabel
            Left = 183
            Top = 17
            Width = 12
            Height = 13
            Caption = '---'
          end
          object Label3: TLabel
            Left = 3
            Top = 34
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel2: TBevel
            Left = 40
            Top = 41
            Width = 190
            Height = 2
          end
          object Label4: TLabel
            Left = 26
            Top = 54
            Width = 54
            Height = 13
            Caption = 'Salvo size :'
          end
          object Label5: TLabel
            Left = 4
            Top = 71
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Bevel3: TBevel
            Left = 41
            Top = 78
            Width = 260
            Height = 3
          end
          object Label6: TLabel
            Left = 25
            Top = 90
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label7: TLabel
            Left = 25
            Top = 112
            Width = 41
            Height = 13
            Caption = 'Course :'
          end
          object Label8: TLabel
            Left = 25
            Top = 132
            Width = 75
            Height = 13
            Caption = 'Ground Speed :'
          end
          object Label9: TLabel
            Left = 25
            Top = 152
            Width = 44
            Height = 13
            Caption = 'Altitude :'
          end
          object Label10: TLabel
            Left = 25
            Top = 173
            Width = 41
            Height = 13
            Caption = 'Priority :'
          end
          object Label11: TLabel
            Left = 25
            Top = 193
            Width = 38
            Height = 13
            Caption = 'Status :'
          end
          object Label12: TLabel
            Left = 25
            Top = 214
            Width = 65
            Height = 13
            Caption = 'Time to wait :'
          end
          object Label13: TLabel
            Left = 24
            Top = 235
            Width = 88
            Height = 13
            Caption = 'Time to intercept :'
          end
          object Label14: TLabel
            Left = 4
            Top = 257
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Bevel4: TBevel
            Left = 41
            Top = 265
            Width = 260
            Height = 3
          end
          object Label15: TLabel
            Left = 44
            Top = 273
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label16: TLabel
            Left = 151
            Top = 273
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbSurfaceToAirCourse: TLabel
            Left = 127
            Top = 112
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbSurfaceToAirGround: TLabel
            Left = 127
            Top = 131
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbSurfaceToAirAltitude: TLabel
            Left = 127
            Top = 152
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbSurfaceToAirStatus: TLabel
            Left = 127
            Top = 193
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbSurfaceToAirTimeToWait: TLabel
            Left = 127
            Top = 214
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbSurfaceToAirTimeToIntercept: TLabel
            Left = 127
            Top = 235
            Width = 12
            Height = 13
            Caption = '---'
          end
          object Label17: TLabel
            Left = 173
            Top = 112
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label18: TLabel
            Left = 173
            Top = 131
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object Label19: TLabel
            Left = 173
            Top = 152
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object Label20: TLabel
            Left = 173
            Top = 214
            Width = 30
            Height = 13
            Caption = 'mm:ss'
          end
          object Label22: TLabel
            Left = 173
            Top = 235
            Width = 30
            Height = 13
            Caption = 'mm:ss'
          end
          object btnSurfaceToAirTargetTrack: TSpeedButton
            Tag = 5
            Left = 173
            Top = 87
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
            OnClick = btnSurfaceToAirOnClick
          end
          object sbSurfaceToAirDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 24
            Top = 292
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnSurfaceToAirOnClick
          end
          object sbSurfaceToAirDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 24
            Top = 316
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnSurfaceToAirOnClick
          end
          object sbSurfaceToAirDisplayBlindShow: TSpeedButton
            Tag = 3
            Left = 139
            Top = 292
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnSurfaceToAirOnClick
          end
          object sbSurfaceToAirDisplayBlindHide: TSpeedButton
            Tag = 4
            Left = 139
            Top = 316
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnSurfaceToAirOnClick
          end
          object ediSurfaceToAirSalvo: TEdit
            Left = 127
            Top = 50
            Width = 70
            Height = 21
            TabOrder = 0
            OnKeyPress = ediSurfaceToAirSalvoKeyPress
          end
          object editSurfaceToAirTrack: TEdit
            Left = 127
            Top = 87
            Width = 39
            Height = 21
            ReadOnly = True
            TabOrder = 1
          end
          object btSurfaceToAirPlan: TButton
            Tag = 1
            Left = 12
            Top = 372
            Width = 80
            Height = 25
            Caption = 'Plan'
            Enabled = False
            TabOrder = 2
            OnClick = btnSurfaceToAirOnClick
          end
          object btSurfaceToAirLaunch: TButton
            Tag = 3
            Left = 251
            Top = 372
            Width = 80
            Height = 25
            Caption = 'Launch'
            Enabled = False
            TabOrder = 3
            OnClick = btnSurfaceToAirOnClick
          end
          object btSurfaceToAirCancel: TButton
            Tag = 2
            Left = 98
            Top = 372
            Width = 80
            Height = 25
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 4
            OnClick = btnSurfaceToAirOnClick
          end
        end
      end
      object grbHybridMissile: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 5
        object scrlbx1: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          VertScrollBar.Position = 5
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          object btnHybridMissileDisplayBlindZonesHide: TSpeedButton
            Tag = 6
            Left = 187
            Top = 341
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = OnHybridMissileClick
          end
          object btnHybridMissileDisplayBlindZonesShow: TSpeedButton
            Tag = 5
            Left = 187
            Top = 317
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = OnHybridMissileClick
          end
          object lbl87: TLabel
            Left = 198
            Top = 301
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbl88: TLabel
            Left = 45
            Top = 301
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object btnHybridMissileDisplayRangeShow: TSpeedButton
            Tag = 3
            Left = 22
            Top = 317
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = OnHybridMissileClick
          end
          object btnHybridMissileDisplayRangeHide: TSpeedButton
            Tag = 4
            Left = 22
            Top = 341
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = OnHybridMissileClick
          end
          object lbl89: TLabel
            Left = 9
            Top = 285
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object bvl21: TBevel
            Left = 46
            Top = 293
            Width = 190
            Height = 2
          end
          object lbl90: TLabel
            Left = 22
            Top = 255
            Width = 74
            Height = 13
            Caption = 'Seeker Range :'
          end
          object lbl91: TLabel
            Left = 22
            Top = 224
            Width = 77
            Height = 13
            Caption = 'Cruise Altitude :'
          end
          object lbl92: TLabel
            Left = 22
            Top = 194
            Width = 55
            Height = 13
            Caption = 'Salvo Size :'
          end
          object lbl93: TLabel
            Left = 9
            Top = 168
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object bvl22: TBevel
            Left = 50
            Top = 175
            Width = 190
            Height = 2
          end
          object lbl94: TLabel
            Left = 177
            Top = 224
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object lbl95: TLabel
            Left = 177
            Top = 255
            Width = 14
            Height = 13
            Caption = 'nm'
          end
          object lbl96: TLabel
            Left = 179
            Top = 137
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object btnSearchHybridMissileTargetTrack: TSpeedButton
            Left = 179
            Top = 71
            Width = 23
            Height = 22
            Enabled = False
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
          end
          object btnAddHybridMissileTargetAimpoint: TSpeedButton
            Tag = 1
            Left = 247
            Top = 100
            Width = 23
            Height = 22
            Caption = '+'
            OnClick = OnHybridMissileClick
          end
          object bvl23: TBevel
            Left = 46
            Top = 55
            Width = 190
            Height = 2
          end
          object lbl97: TLabel
            Left = 9
            Top = 47
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object lblHybridMissileStatus: TLabel
            Left = 24
            Top = 20
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lbl98: TLabel
            Left = 116
            Top = 20
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object lblHybridMissileQuantity: TLabel
            Left = 172
            Top = 20
            Width = 12
            Height = 13
            Caption = '---'
          end
          object bvl24: TBevel
            Left = 46
            Top = 5
            Width = 190
            Height = 2
          end
          object lbl99: TLabel
            Left = 9
            Top = -2
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object btnHybridMissileLaunch: TButton
            Tag = 7
            Left = 232
            Top = 386
            Width = 80
            Height = 25
            Caption = 'Launch'
            TabOrder = 0
            OnClick = OnHybridMissileClick
          end
          object edtHybridMissileControlSalvoSize: TEdit
            Left = 118
            Top = 192
            Width = 53
            Height = 21
            TabOrder = 1
          end
          object edtHybridMissileControlCruiseAltitude: TEdit
            Left = 118
            Top = 220
            Width = 53
            Height = 21
            TabOrder = 2
          end
          object edtHybridMissileControlSeekerRange: TEdit
            Left = 118
            Top = 251
            Width = 53
            Height = 21
            Enabled = False
            TabOrder = 3
          end
          object btnDefaultHybridMissileControlSeekerRange: TButton
            Left = 235
            Top = 249
            Width = 80
            Height = 25
            Caption = '< Default'
            Enabled = False
            TabOrder = 4
            OnClick = OnHybridMissileClick
          end
          object btnDefaultHybridMissileControlCruiseAltitude: TButton
            Tag = 2
            Left = 235
            Top = 218
            Width = 80
            Height = 25
            Caption = '< Default'
            TabOrder = 5
            OnClick = OnHybridMissileClick
          end
          object edtHybridMissiletargetBearing: TEdit
            Left = 116
            Top = 133
            Width = 57
            Height = 21
            Enabled = False
            TabOrder = 6
          end
          object rbHybridMissileTargetBearing: TRadioButton
            Left = 24
            Top = 135
            Width = 87
            Height = 17
            Caption = 'Bearing :'
            Enabled = False
            TabOrder = 7
          end
          object rbHybridMissileTargetAimpoint: TRadioButton
            Left = 24
            Top = 103
            Width = 113
            Height = 17
            Caption = 'Aimpoint :'
            Checked = True
            TabOrder = 8
            TabStop = True
          end
          object rbHybridMissileTargetTrack: TRadioButton
            Left = 24
            Top = 74
            Width = 113
            Height = 17
            Caption = 'Track :'
            Enabled = False
            TabOrder = 9
          end
          object edtHybridMissiletargetTrack: TEdit
            Left = 118
            Top = 72
            Width = 57
            Height = 21
            Enabled = False
            TabOrder = 10
          end
          object edtHybridMissiletargetAimpoint: TEdit
            Left = 118
            Top = 101
            Width = 125
            Height = 21
            ReadOnly = True
            TabOrder = 11
          end
          object btnBringToHookHybridMissileTargetBearing: TButton
            Left = 235
            Top = 131
            Width = 80
            Height = 25
            Caption = 'Brg to Hook'
            Enabled = False
            TabOrder = 12
          end
        end
      end
      object grbWireGuidedTorpedo: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        ParentBackground = False
        TabOrder = 8
        object ScrollBox10: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel19: TBevel
            Left = 43
            Top = 69
            Width = 260
            Height = 3
          end
          object Bevel20: TBevel
            Left = 43
            Top = 195
            Width = 260
            Height = 3
          end
          object Bevel21: TBevel
            Left = 40
            Top = 11
            Width = 260
            Height = 3
          end
          object btnlWireGuidedTorpedoTargetTrack: TSpeedButton
            Tag = 5
            Left = 179
            Top = 78
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
            OnClick = btnWireGuidedTorpedoOnClick
          end
          object Label84: TLabel
            Left = 3
            Top = 3
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Label85: TLabel
            Left = 117
            Top = 31
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object Label86: TLabel
            Left = 3
            Top = 60
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Label87: TLabel
            Left = 24
            Top = 83
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label88: TLabel
            Left = 3
            Top = 187
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Label89: TLabel
            Left = 46
            Top = 199
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label90: TLabel
            Left = 153
            Top = 199
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object Label91: TLabel
            Left = 24
            Top = 103
            Width = 45
            Height = 13
            Caption = 'Identity :'
          end
          object Label92: TLabel
            Left = 24
            Top = 124
            Width = 41
            Height = 13
            Caption = 'Course :'
          end
          object Label93: TLabel
            Left = 24
            Top = 144
            Width = 75
            Height = 13
            Caption = 'Ground Speed :'
          end
          object Label94: TLabel
            Left = 24
            Top = 165
            Width = 44
            Height = 13
            Caption = 'Altitude :'
          end
          object Label95: TLabel
            Left = 179
            Top = 124
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label96: TLabel
            Left = 179
            Top = 144
            Width = 26
            Height = 13
            Caption = 'knots'
          end
          object Label97: TLabel
            Left = 179
            Top = 165
            Width = 28
            Height = 13
            Caption = 'meter'
          end
          object lblWGQuantity: TLabel
            Left = 173
            Top = 31
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblWireGuidedTorpedoStatus: TLabel
            Left = 24
            Top = 31
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lblWireGuidedTorpedoTargetCourse: TLabel
            Left = 117
            Top = 124
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblWireGuidedTorpedoTargetDepth: TLabel
            Left = 117
            Top = 165
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblWireGuidedTorpedoTargetGround: TLabel
            Left = 117
            Top = 144
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lblWireGuidedTorpedoTargetIdentity: TLabel
            Left = 117
            Top = 103
            Width = 12
            Height = 13
            Caption = '---'
          end
          object sblWireGuidedTorpedodDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 24
            Top = 245
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnWireGuidedTorpedoOnClick
          end
          object sblWireGuidedTorpedoDisplayBlindHide: TSpeedButton
            Tag = 4
            Left = 141
            Top = 245
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnWireGuidedTorpedoOnClick
          end
          object sblWireGuidedTorpedoDisplayBlindShow: TSpeedButton
            Tag = 3
            Left = 141
            Top = 221
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnWireGuidedTorpedoOnClick
          end
          object sblWireGuidedTorpedoDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 24
            Top = 221
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnWireGuidedTorpedoOnClick
          end
          object btnLaunchWG: TButton
            Left = 222
            Top = 294
            Width = 80
            Height = 25
            Caption = 'Launch'
            Enabled = False
            TabOrder = 0
            OnClick = btnWireGuidedTorpedoOnClick
          end
          object EdtWGTargetTrack: TEdit
            Left = 115
            Top = 78
            Width = 53
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object grbBombDepthCharge: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 3
        object bvl17: TBevel
          Left = 40
          Top = 129
          Width = 260
          Height = 3
        end
        object bvl18: TBevel
          Left = 40
          Top = 68
          Width = 260
          Height = 3
        end
        object bvl19: TBevel
          Left = 40
          Top = 200
          Width = 260
          Height = 3
        end
        object bvl20: TBevel
          Left = 40
          Top = 10
          Width = 260
          Height = 3
        end
        object btnBombTarget: TSpeedButton
          Tag = 1
          Left = 172
          Top = 85
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
          OnClick = btnBombOnClick
        end
        object lbl76: TLabel
          Left = 3
          Top = 122
          Width = 35
          Height = 13
          Caption = 'Control'
        end
        object lbl77: TLabel
          Left = 22
          Top = 154
          Width = 55
          Height = 13
          Caption = 'Salvo Size :'
        end
        object lbl78: TLabel
          Left = 3
          Top = 60
          Width = 32
          Height = 13
          Caption = 'Target'
        end
        object lbl79: TLabel
          Left = 3
          Top = 192
          Width = 34
          Height = 13
          Caption = 'Display'
        end
        object lbl80: TLabel
          Left = 38
          Top = 208
          Width = 31
          Height = 13
          Caption = 'Range'
        end
        object lbl81: TLabel
          Left = 22
          Top = 90
          Width = 33
          Height = 13
          Caption = 'Track :'
        end
        object lbl82: TLabel
          Left = 3
          Top = 3
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object lbl83: TLabel
          Left = 94
          Top = 31
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object lblBombQuantity: TLabel
          Left = 150
          Top = 31
          Width = 12
          Height = 13
          Caption = '---'
        end
        object lblBombStatus: TLabel
          Left = 22
          Top = 31
          Width = 43
          Height = 13
          Caption = 'Available'
        end
        object btnBombDisplayRangeHide: TSpeedButton
          Tag = 3
          Left = 22
          Top = 249
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 2
          Down = True
          Caption = 'Hide'
          OnClick = btnBombOnClick
        end
        object btnBombDisplayRangeShow: TSpeedButton
          Tag = 2
          Left = 23
          Top = 225
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 2
          Caption = 'Show'
          OnClick = btnBombOnClick
        end
        object lbl86: TLabel
          Left = 234
          Top = 101
          Width = 69
          Height = 13
          Caption = 'without target'
        end
        object btnBombDrop: TButton
          Tag = 4
          Left = 224
          Top = 286
          Width = 80
          Height = 25
          Caption = 'Drop'
          Enabled = False
          TabOrder = 0
          OnClick = btnBombOnClick
        end
        object EdtBombControlSalvo: TEdit
          Left = 104
          Top = 150
          Width = 62
          Height = 21
          TabOrder = 1
          Text = '1'
          OnKeyPress = BombKeyPress
        end
        object EdtBombTargetTrack: TEdit
          Left = 104
          Top = 86
          Width = 62
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object chkBombDropWhitoutTarget: TCheckBox
          Left = 216
          Top = 82
          Width = 81
          Height = 17
          Caption = 'Drop'
          TabOrder = 3
          OnClick = chkBombDropWhithoutTargetClick
        end
      end
      object grbGunEngagementChaffMode: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 1
        object ScrollBox9: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Label348: TLabel
            Left = 3
            Top = 6
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel97: TBevel
            Left = 40
            Top = 13
            Width = 260
            Height = 3
          end
          object Label364: TLabel
            Left = 50
            Top = 22
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label365: TLabel
            Left = 25
            Top = 121
            Width = 61
            Height = 13
            Caption = 'Chaff Type :'
          end
          object Label366: TLabel
            Left = 25
            Top = 149
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object Label466: TLabel
            Left = 25
            Top = 177
            Width = 75
            Height = 13
            Caption = 'Bloom Position :'
          end
          object Label467: TLabel
            Left = 25
            Top = 206
            Width = 75
            Height = 13
            Caption = 'Bloom Altitude :'
          end
          object lbChaffControlQuantity: TLabel
            Left = 146
            Top = 149
            Width = 12
            Height = 13
            Caption = '---'
          end
          object Label469: TLabel
            Left = 200
            Top = 206
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object Label470: TLabel
            Left = 3
            Top = 233
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Bevel98: TBevel
            Left = 40
            Top = 241
            Width = 260
            Height = 3
          end
          object Label471: TLabel
            Left = 43
            Top = 259
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label472: TLabel
            Left = 158
            Top = 258
            Width = 49
            Height = 13
            Caption = 'Blind Zone'
          end
          object btnChaffType: TSpeedButton
            Left = 227
            Top = 116
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
            OnClick = btnChaffClick
          end
          object btnChaffBloomPosition: TSpeedButton
            Left = 227
            Top = 172
            Width = 23
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
          end
          object sbGunEngagementChaffContolAuto: TSpeedButton
            Tag = 1
            Left = 25
            Top = 39
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Caption = 'Automatic'
            OnClick = btnGunControlClick
          end
          object sbGunEngagementChaffContolManual: TSpeedButton
            Tag = 2
            Left = 25
            Top = 63
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 4
            Caption = 'Manual'
            OnClick = btnGunControlClick
          end
          object sbChaffDisplayShow: TSpeedButton
            Tag = 4
            Left = 25
            Top = 280
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnChaffClick
          end
          object sbChaffDisplayHide: TSpeedButton
            Tag = 5
            Left = 25
            Top = 304
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnChaffClick
          end
          object sbChaffBlindZoneShow: TSpeedButton
            Tag = 6
            Left = 146
            Top = 280
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnChaffClick
          end
          object sbChaffBlindZoneHide: TSpeedButton
            Tag = 7
            Left = 146
            Top = 304
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnChaffClick
          end
          object sbGunEngagementChaffContolChaff: TSpeedButton
            Tag = 3
            Left = 25
            Top = 87
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 4
            Caption = 'Chaff'
            OnClick = btnGunControlClick
          end
          object editChaffControlChaff: TEdit
            Left = 146
            Top = 117
            Width = 75
            Height = 21
            TabOrder = 0
          end
          object editChaffControlBloomPosition: TEdit
            Left = 146
            Top = 173
            Width = 74
            Height = 21
            TabOrder = 1
          end
          object editChaffControlBloomAltitude: TEdit
            Left = 146
            Top = 202
            Width = 47
            Height = 21
            TabOrder = 2
          end
          object btnChaffFire: TButton
            Tag = 1
            Left = 154
            Top = 366
            Width = 80
            Height = 25
            Caption = 'Fire'
            Enabled = False
            TabOrder = 3
            OnClick = btnChaffClick
          end
          object btnChaffCeaseFire: TButton
            Tag = 2
            Left = 251
            Top = 366
            Width = 80
            Height = 25
            Caption = 'Cease Fire'
            TabOrder = 4
            OnClick = btnChaffClick
          end
        end
      end
      object grbGunEngagementCIWS: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 2
      end
      object grbTacticalAcousticTorpedos: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 12
        object Label439: TLabel
          Left = 3
          Top = 3
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object lblTacticalAcousticTorpedosStatus: TLabel
          Left = 24
          Top = 30
          Width = 43
          Height = 13
          Caption = 'Available'
        end
        object Label455: TLabel
          Left = 126
          Top = 30
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object lbTacticalAcousticTorpedosQuantity: TLabel
          Left = 182
          Top = 30
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Label460: TLabel
          Left = 3
          Top = 109
          Width = 32
          Height = 13
          Caption = 'Target'
        end
        object Bevel91: TBevel
          Left = 41
          Top = 117
          Width = 260
          Height = 3
        end
        object Label461: TLabel
          Left = 24
          Top = 131
          Width = 33
          Height = 13
          Caption = 'Track :'
        end
        object Label462: TLabel
          Left = 2
          Top = 212
          Width = 34
          Height = 13
          Caption = 'Display'
        end
        object Bevel92: TBevel
          Left = 39
          Top = 221
          Width = 260
          Height = 3
        end
        object Label463: TLabel
          Left = 48
          Top = 225
          Width = 31
          Height = 13
          Caption = 'Range'
        end
        object Label464: TLabel
          Left = 149
          Top = 225
          Width = 54
          Height = 13
          Caption = 'Blind Zones'
        end
        object Label465: TLabel
          Left = 24
          Top = 161
          Width = 45
          Height = 13
          Caption = 'Identity :'
        end
        object lbTacticalAcousticTorpedosTargetIdentity: TLabel
          Left = 127
          Top = 161
          Width = 12
          Height = 13
          Caption = '---'
        end
        object Bevel93: TBevel
          Left = 40
          Top = 11
          Width = 260
          Height = 3
        end
        object Label459: TLabel
          Left = 3
          Top = 57
          Width = 35
          Height = 13
          Caption = 'Control'
        end
        object Bevel94: TBevel
          Left = 39
          Top = 64
          Width = 260
          Height = 3
        end
        object Label476: TLabel
          Left = 24
          Top = 83
          Width = 55
          Height = 13
          Caption = 'Salvo Size :'
        end
        object btnTacticalAcousticTorpedosTargetTrack: TSpeedButton
          Left = 185
          Top = 126
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
        end
        object sbTacticalAcousticTorpedosDisplayRangeShow: TSpeedButton
          Left = 25
          Top = 245
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 2
          Caption = 'Show'
        end
        object sbTacticalAcousticTorpedosDisplayRangeHide: TSpeedButton
          Left = 25
          Top = 269
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 2
          Down = True
          Caption = 'Hide'
        end
        object sbTacticalAcousticTorpedosDisplayBlindShow: TSpeedButton
          Left = 137
          Top = 245
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'Show'
        end
        object sbTacticalAcousticTorpedosDisplayBlindHide: TSpeedButton
          Left = 137
          Top = 269
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 1
          Down = True
          Caption = 'Hide'
        end
        object editTacticalAcousticTorpedosTargetTrack: TEdit
          Left = 126
          Top = 127
          Width = 53
          Height = 21
          TabOrder = 0
        end
        object btnTacticalAcousticTorpedosLaunch: TButton
          Left = 242
          Top = 326
          Width = 80
          Height = 25
          Caption = 'Launch'
          TabOrder = 1
        end
        object editTacticalAcousticTorpedosSalvo: TEdit
          Left = 125
          Top = 79
          Width = 53
          Height = 21
          TabOrder = 2
        end
      end
      object grbTacticalMissiles: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 4
        object ScrollBox7: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel107: TBevel
            Left = 40
            Top = 4
            Width = 190
            Height = 2
          end
          object Bevel108: TBevel
            Left = 58
            Top = 232
            Width = 175
            Height = 2
          end
          object Bevel59: TBevel
            Left = 40
            Top = 127
            Width = 190
            Height = 2
          end
          object Bevel60: TBevel
            Left = 40
            Top = 39
            Width = 190
            Height = 2
          end
          object Bevel62: TBevel
            Left = 46
            Top = 287
            Width = 190
            Height = 2
          end
          object btnTacticalMissileTargetAimpoint: TSpeedButton
            Left = 245
            Top = 70
            Width = 23
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
            OnClick = btnTacticalMissileTargetAimpointClick
          end
          object btnTacticalMissileTargetTrack: TSpeedButton
            Left = 180
            Top = 45
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
            OnClick = btnTacticalMissileTargetTrackClick
          end
          object Label289: TLabel
            Left = 3
            Top = -3
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Label294: TLabel
            Left = 116
            Top = 13
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object Label295: TLabel
            Left = 3
            Top = 31
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Label296: TLabel
            Left = 3
            Top = 120
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label302: TLabel
            Left = 22
            Top = 141
            Width = 55
            Height = 13
            Caption = 'Salvo Size :'
          end
          object Label303: TLabel
            Left = 178
            Top = 101
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label304: TLabel
            Left = 9
            Top = 279
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Label486: TLabel
            Left = 47
            Top = 294
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label494: TLabel
            Left = 198
            Top = 295
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object Label496: TLabel
            Left = 22
            Top = 169
            Width = 77
            Height = 13
            Caption = 'Cruise Altitude :'
          end
          object Label497: TLabel
            Left = 22
            Top = 197
            Width = 74
            Height = 13
            Caption = 'Seeker Range :'
          end
          object Label498: TLabel
            Left = 182
            Top = 169
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object Label499: TLabel
            Left = 181
            Top = 197
            Width = 14
            Height = 13
            Caption = 'nm'
          end
          object Label500: TLabel
            Left = 3
            Top = 225
            Width = 51
            Height = 13
            Caption = 'Waypoints'
          end
          object lblTacticalMissileStatus: TLabel
            Left = 24
            Top = 13
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lblTacticalMissileStatusQuantity: TLabel
            Left = 172
            Top = 13
            Width = 12
            Height = 13
            Caption = '---'
          end
          object sbTacticalMissileDisplayBlindHide: TSpeedButton
            Left = 187
            Top = 334
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
          end
          object sbTacticalMissileDisplayBlindShow: TSpeedButton
            Left = 187
            Top = 310
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
          end
          object sbTacticalMissileDisplayRangeHide: TSpeedButton
            Left = 24
            Top = 334
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = sbTacticalMissileDisplayRangeHideClick
          end
          object sbTacticalMissileDisplayRangeShow: TSpeedButton
            Left = 24
            Top = 310
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = sbTacticalMissileDisplayRangeShowClick
          end
          object btnTacticalMissileControlCruise: TButton
            Left = 232
            Top = 163
            Width = 80
            Height = 25
            Caption = '< Default'
            TabOrder = 0
          end
          object btnTacticalMissileControlSeeker: TButton
            Left = 232
            Top = 191
            Width = 80
            Height = 25
            Caption = '< Default'
            TabOrder = 1
          end
          object btnTacticalMissileLaunch: TButton
            Left = 240
            Top = 381
            Width = 80
            Height = 25
            Caption = 'Launch'
            Enabled = False
            TabOrder = 2
            OnClick = btnTacticalMissileLaunchClick
          end
          object btnTacticalMissileTargetBearing: TButton
            Left = 234
            Top = 94
            Width = 80
            Height = 25
            Caption = 'Brg to Hook'
            TabOrder = 3
            OnClick = btnTacticalMissileTargetBearingClick
          end
          object btnTacticalMissileWaypointAdd: TButton
            Left = 127
            Top = 247
            Width = 88
            Height = 25
            Caption = 'Add'
            TabOrder = 4
          end
          object btnTacticalMissileWaypointCancel: TButton
            Left = 230
            Top = 247
            Width = 88
            Height = 25
            Caption = 'Cancel'
            TabOrder = 5
          end
          object btnTacticalMissileWaypointEdit: TButton
            Left = 24
            Top = 247
            Width = 88
            Height = 25
            Caption = 'Edit'
            TabOrder = 6
          end
          object editTacticalMissileControlCruise: TEdit
            Left = 114
            Top = 166
            Width = 53
            Height = 21
            TabOrder = 7
          end
          object editTacticalMissileControlSalvo: TEdit
            Left = 114
            Top = 137
            Width = 53
            Height = 21
            TabOrder = 8
          end
          object editTacticalMissileControlSeeker: TEdit
            Left = 114
            Top = 193
            Width = 53
            Height = 21
            TabOrder = 9
          end
          object rdoTacticalMissileTargetAimpoint: TRadioButton
            Tag = 1
            Left = 24
            Top = 72
            Width = 113
            Height = 17
            Caption = 'Aimpoint :'
            TabOrder = 13
            OnMouseDown = rdoTacticalMissileTrackMouseDown
          end
          object rdoTacticalMissileTargetBearing: TRadioButton
            Tag = 2
            Left = 25
            Top = 98
            Width = 113
            Height = 17
            Caption = 'Bearing :'
            TabOrder = 14
            OnMouseDown = rdoTacticalMissileTrackMouseDown
          end
          object rdoTacticalMissileTargetTrack: TRadioButton
            Left = 24
            Top = 47
            Width = 113
            Height = 17
            Caption = 'Track :'
            TabOrder = 15
            OnMouseDown = rdoTacticalMissileTrackMouseDown
          end
          object editTacticalMissileTargetAimpoint: TEdit
            Left = 114
            Top = 70
            Width = 125
            Height = 21
            ReadOnly = True
            TabOrder = 10
          end
          object editTacticalMissileTargetTrack: TEdit
            Left = 114
            Top = 45
            Width = 57
            Height = 21
            ReadOnly = True
            TabOrder = 12
          end
          object editTacticalMissileTargetBearing: TEdit
            Left = 114
            Top = 95
            Width = 57
            Height = 21
            ReadOnly = True
            TabOrder = 11
            OnKeyPress = editTacticalMissileTargetBearingKeyPress
          end
        end
      end
      object grbAcousticTorpedo: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 11
        object ScrollBox2: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object lblAcousticTorpedoStatus: TLabel
            Left = 25
            Top = 19
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lblAcousticTorpedoQuantity: TLabel
            Left = 167
            Top = 19
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbl4: TLabel
            Left = 3
            Top = 3
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object lbl37: TLabel
            Left = 161
            Top = 301
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbl36: TLabel
            Left = 171
            Top = 232
            Width = 27
            Height = 13
            Caption = 'yards'
          end
          object lbl35: TLabel
            Left = 171
            Top = 209
            Width = 33
            Height = 13
            Caption = 'meters'
          end
          object lbl34: TLabel
            Left = 171
            Top = 184
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lbl33: TLabel
            Left = 170
            Top = 161
            Width = 27
            Height = 13
            Caption = 'yards'
          end
          object lbl32: TLabel
            Left = 25
            Top = 261
            Width = 60
            Height = 13
            Caption = 'Gyro Angle :'
          end
          object lbl31: TLabel
            Left = 25
            Top = 237
            Width = 74
            Height = 13
            Caption = 'Seeker Range :'
          end
          object lbl30: TLabel
            Left = 25
            Top = 214
            Width = 73
            Height = 13
            Caption = 'Safety Ceiling :'
          end
          object lbl29: TLabel
            Left = 25
            Top = 190
            Width = 72
            Height = 13
            Caption = 'Search Depth :'
          end
          object lbl28: TLabel
            Left = 25
            Top = 166
            Width = 75
            Height = 13
            Caption = 'Search Radius :'
          end
          object lbl27: TLabel
            Left = 25
            Top = 142
            Width = 75
            Height = 13
            Caption = 'Run-out Mode :'
          end
          object lbl26: TLabel
            Left = 25
            Top = 119
            Width = 62
            Height = 13
            Caption = 'Firing Mode :'
          end
          object lbl25: TLabel
            Left = 25
            Top = 93
            Width = 31
            Height = 13
            Caption = 'Tube :'
          end
          object lbl24: TLabel
            Left = 3
            Top = 285
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object lbl23: TLabel
            Left = 3
            Top = 74
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object lbl2: TLabel
            Left = 48
            Top = 301
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object lbl16: TLabel
            Left = 25
            Top = 57
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object lbl11: TLabel
            Left = 3
            Top = 35
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object lbl10: TLabel
            Left = 111
            Top = 19
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object bvl8: TBevel
            Left = 43
            Top = 293
            Width = 190
            Height = 3
          end
          object bvl7: TBevel
            Left = 41
            Top = 81
            Width = 278
            Height = 3
          end
          object bvl6: TBevel
            Left = 41
            Top = 42
            Width = 279
            Height = 3
          end
          object bvl5: TBevel
            Left = 40
            Top = 10
            Width = 281
            Height = 3
          end
          object btnSearchTarget: TSpeedButton
            Tag = 5
            Left = 143
            Top = 52
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
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnRunOutAT: TSpeedButton
            Left = 171
            Top = 136
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
            OnClick = btnRunOutATClick
          end
          object btnGyroAngleAT: TSpeedButton
            Left = 173
            Top = 256
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
            OnClick = btnGyroAngleATClick
          end
          object btnFiringModeAT: TSpeedButton
            Left = 171
            Top = 113
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
            OnClick = btnFiringModeATClick
          end
          object btnDisplayBlindZonesShow: TSpeedButton
            Tag = 3
            Left = 149
            Top = 315
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnDisplayBlindZonesHide: TSpeedButton
            Tag = 4
            Left = 149
            Top = 338
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnAccousticDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 25
            Top = 315
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnAccousticDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 25
            Top = 338
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnTargetDetails: TButton
            Tag = 7
            Left = 236
            Top = 50
            Width = 80
            Height = 25
            Caption = 'Details...'
            TabOrder = 0
            OnClick = btnAcousticTorpedoOnClick
          end
          object EdtSeekerRangeAT: TEdit
            Tag = 4
            Left = 103
            Top = 233
            Width = 62
            Height = 21
            TabOrder = 1
            OnKeyPress = AcousticKeyPress
          end
          object EdtSearchRadiusAT: TEdit
            Tag = 1
            Left = 103
            Top = 161
            Width = 62
            Height = 21
            TabOrder = 2
            OnKeyPress = AcousticKeyPress
          end
          object EdtSearchDepthAT: TEdit
            Tag = 2
            Left = 103
            Top = 185
            Width = 62
            Height = 21
            TabOrder = 3
            OnKeyPress = AcousticKeyPress
          end
          object EdtSafetyCeilingAT: TEdit
            Tag = 3
            Left = 103
            Top = 209
            Width = 62
            Height = 21
            TabOrder = 4
            OnKeyPress = AcousticKeyPress
          end
          object EdtRunOutAT: TEdit
            Left = 103
            Top = 137
            Width = 62
            Height = 21
            Enabled = False
            TabOrder = 5
          end
          object EdtGyroAngleAT: TEdit
            Left = 103
            Top = 257
            Width = 62
            Height = 21
            Enabled = False
            TabOrder = 6
            OnKeyPress = AngkaKeyPress
          end
          object EdtFiringModeAT: TEdit
            Left = 103
            Top = 113
            Width = 62
            Height = 21
            Enabled = False
            TabOrder = 7
          end
          object EdtATTargetTrack: TEdit
            Left = 85
            Top = 53
            Width = 52
            Height = 21
            Enabled = False
            TabOrder = 8
            Text = '---'
          end
          object btnTube4AT: TButton
            Tag = 14
            Left = 169
            Top = 87
            Width = 24
            Height = 24
            Caption = '4'
            TabOrder = 9
            OnClick = AcousticTubeOnClick
          end
          object btnTube3AT: TButton
            Tag = 13
            Left = 146
            Top = 87
            Width = 24
            Height = 24
            Caption = '3'
            TabOrder = 10
            OnClick = AcousticTubeOnClick
          end
          object btnTube2AT: TButton
            Tag = 12
            Left = 125
            Top = 87
            Width = 24
            Height = 24
            Caption = '2'
            TabOrder = 11
            OnClick = AcousticTubeOnClick
          end
          object btnTube1AT: TButton
            Tag = 11
            Left = 103
            Top = 87
            Width = 24
            Height = 24
            Caption = '1'
            TabOrder = 12
            OnClick = AcousticTubeOnClick
          end
          object btntControlGyroAdvised: TButton
            Tag = 6
            Left = 236
            Top = 257
            Width = 80
            Height = 23
            Caption = '< Advised'
            TabOrder = 13
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnPlanAT: TButton
            Tag = 8
            Left = 16
            Top = 382
            Width = 80
            Height = 27
            Caption = 'Plan'
            TabOrder = 14
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnLaunchAT: TButton
            Tag = 10
            Left = 241
            Top = 382
            Width = 80
            Height = 27
            Caption = 'Launch'
            Enabled = False
            TabOrder = 15
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnControlSeeker: TButton
            Tag = 5
            Left = 236
            Top = 233
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 16
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnControlSearchRadius: TButton
            Tag = 2
            Left = 236
            Top = 161
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 17
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnControlSearchDepth: TButton
            Tag = 3
            Left = 236
            Top = 185
            Width = 80
            Height = 23
            Caption = '< Advised'
            TabOrder = 18
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnControlSafety: TButton
            Tag = 4
            Left = 236
            Top = 209
            Width = 80
            Height = 23
            Caption = '< Default'
            TabOrder = 19
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnControlControlRunAdvised: TButton
            Tag = 1
            Left = 236
            Top = 135
            Width = 80
            Height = 23
            Caption = '< Advised'
            TabOrder = 20
            OnClick = btnAcousticTorpedoOnClick
          end
          object btnCancelAT: TButton
            Tag = 9
            Left = 102
            Top = 382
            Width = 80
            Height = 25
            Caption = 'Cancel'
            TabOrder = 21
            OnClick = btnAcousticTorpedoOnClick
          end
        end
      end
      object grbGunEngagementAutomaticManualMode: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 0
      end
      object grbSurfaceToSurfaceMissile: TGroupBox
        Left = 0
        Top = 0
        Width = 346
        Height = 428
        Align = alClient
        TabOrder = 13
        object ScrollBox6: TScrollBox
          Left = 2
          Top = 15
          Width = 342
          Height = 411
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          OnMouseDown = ScrollBox6MouseDown
          object Label67: TLabel
            Left = 3
            Top = 0
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Bevel29: TBevel
            Left = 40
            Top = 7
            Width = 260
            Height = 3
          end
          object lblSurfaceToSurfaceMissileStatus: TLabel
            Left = 20
            Top = 18
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object Label69: TLabel
            Left = 126
            Top = 19
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object lbSurfaceToSurfaceMissileQuantity: TLabel
            Left = 182
            Top = 19
            Width = 12
            Height = 13
            Caption = '---'
          end
          object Label75: TLabel
            Left = 3
            Top = 37
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Bevel33: TBevel
            Left = 40
            Top = 44
            Width = 260
            Height = 3
          end
          object Label76: TLabel
            Left = 20
            Top = 56
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label77: TLabel
            Left = 3
            Top = 75
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel74: TBevel
            Left = 40
            Top = 82
            Width = 195
            Height = 3
          end
          object Label78: TLabel
            Left = 3
            Top = 299
            Width = 68
            Height = 13
            Caption = 'Display Range'
          end
          object Bevel77: TBevel
            Left = 77
            Top = 306
            Width = 260
            Height = 3
          end
          object Label414: TLabel
            Left = 20
            Top = 142
            Width = 51
            Height = 13
            Caption = 'Launcher :'
          end
          object Label415: TLabel
            Left = 20
            Top = 93
            Width = 62
            Height = 13
            Caption = 'Firing Mode :'
          end
          object Label416: TLabel
            Left = 20
            Top = 117
            Width = 73
            Height = 13
            Caption = 'Engangement :'
          end
          object btnSurfaceToSurfaceMissileFiring: TSpeedButton
            Left = 176
            Top = 88
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
            OnClick = btnSurfaceToSurfaceMissileFiringClick
          end
          object btnSurfaceToSurfaceMissileEngagement: TSpeedButton
            Left = 176
            Top = 112
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
            OnClick = btnSurfaceToSurfaceMissileEngagementClick
          end
          object btnSurfaceToSurfaceMissileTargetTrack: TSpeedButton
            Tag = 3
            Left = 176
            Top = 51
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
            OnClick = btnSurfaceToSurfaceClick
          end
          object sbSurfaceToSurfaceMissileDisplayRangeShow: TSpeedButton
            Tag = 1
            Left = 25
            Top = 316
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = btnSurfaceToSurfaceClick
          end
          object sbSurfaceToSurfaceMissileDisplayRangeHide: TSpeedButton
            Tag = 2
            Left = 25
            Top = 340
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = btnSurfaceToSurfaceClick
          end
          object lblDestruckRange: TLabel
            Left = 20
            Top = 225
            Width = 76
            Height = 13
            Caption = 'Destruck Range'
          end
          object lblCrossOverRange: TLabel
            Left = 20
            Top = 202
            Width = 85
            Height = 13
            Caption = 'CrossOver Range'
          end
          object lblNmCrossOverRange: TLabel
            Left = 159
            Top = 204
            Width = 15
            Height = 13
            Caption = 'Nm'
          end
          object lblNmDestruckRange: TLabel
            Left = 159
            Top = 224
            Width = 15
            Height = 13
            Caption = 'Nm'
          end
          object editSurfaceToSurfaceMissileTargetTrack: TEdit
            Left = 108
            Top = 52
            Width = 51
            Height = 21
            ReadOnly = True
            TabOrder = 0
          end
          object btnSurfaceToSurfacePlan: TButton
            Tag = 1
            Left = 13
            Top = 381
            Width = 80
            Height = 25
            Caption = 'Plan'
            Enabled = False
            TabOrder = 1
            OnClick = btnSurfaceToSurfaceClick
          end
          object btnSurfaceToSurfaceLaunch: TButton
            Tag = 3
            Left = 242
            Top = 378
            Width = 80
            Height = 25
            Caption = 'Launch'
            Enabled = False
            TabOrder = 2
            OnClick = btnSurfaceToSurfaceClick
          end
          object btnSurfaceToSurfaceCancel: TButton
            Tag = 2
            Left = 99
            Top = 378
            Width = 80
            Height = 25
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 3
            OnClick = btnSurfaceToSurfaceClick
          end
          object editSurfaceToSurfaceMissileFiring: TEdit
            Left = 108
            Top = 89
            Width = 52
            Height = 21
            ReadOnly = True
            TabOrder = 4
          end
          object editSurfaceToSurfaceMissileEngangement: TEdit
            Left = 108
            Top = 114
            Width = 52
            Height = 21
            ReadOnly = True
            TabOrder = 5
          end
          object btnSurfaceToSurfaceMissileTargetTrackDetails: TButton
            Left = 237
            Top = 67
            Width = 80
            Height = 25
            Caption = 'Details...'
            TabOrder = 7
            OnClick = btnSurfaceToSurfaceMissileTargetTrackDetailsClick
          end
          object panSurfaceToSurfaceWp: TPanel
            Left = 14
            Top = 240
            Width = 305
            Height = 59
            BevelOuter = bvNone
            TabOrder = 8
            object Bevel16: TBevel
              Left = 60
              Top = 19
              Width = 240
              Height = 3
            end
            object Label54: TLabel
              Left = 3
              Top = 9
              Width = 51
              Height = 13
              Caption = 'Waypoints'
            end
            object btnSurfaceToSurfaceMissileWaypointsEdit: TButton
              Tag = 10
              Left = 4
              Top = 28
              Width = 58
              Height = 25
              Caption = 'Edit'
              TabOrder = 0
              OnClick = btnSurfaceToSurfaceClick
            end
            object btnSurfaceToSurfaceMissileWaypointsAdd: TButton
              Tag = 11
              Left = 62
              Top = 28
              Width = 58
              Height = 25
              Caption = 'Add'
              TabOrder = 1
              OnClick = btnSurfaceToSurfaceClick
            end
            object btnSurfaceToSurfaceMissileWaypointsDelete: TButton
              Tag = 12
              Left = 120
              Top = 28
              Width = 58
              Height = 25
              Caption = 'Delete'
              TabOrder = 2
              OnClick = btnSurfaceToSurfaceClick
            end
            object btnSurfaceToSurfaceMissileWaypointsApply: TButton
              Tag = 13
              Left = 177
              Top = 28
              Width = 58
              Height = 25
              Caption = 'Apply'
              TabOrder = 3
              OnClick = btnSurfaceToSurfaceClick
            end
            object btnSurfaceToSurfaceMissileWaypointsCancel: TButton
              Tag = 14
              Left = 235
              Top = 28
              Width = 58
              Height = 25
              Caption = 'Cancel'
              TabOrder = 4
              OnClick = btnSurfaceToSurfaceClick
            end
          end
          object btnSurfaceToSurfaceMissileLauncherMore: TButton
            Left = 237
            Top = 219
            Width = 80
            Height = 25
            Caption = 'More...'
            TabOrder = 6
            OnClick = btnSurfaceToSurfaceMissileLauncherMoreClick
          end
          object pnlLaunch1: TPanel
            Tag = 1
            Left = 107
            Top = 140
            Width = 23
            Height = 52
            Caption = '1'
            TabOrder = 9
            OnClick = pnlLaunch1Click
            object vbl1: TVrBlinkLed
              Tag = 1
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
            end
          end
          object pnlLaunch2: TPanel
            Tag = 2
            Left = 132
            Top = 140
            Width = 23
            Height = 52
            Caption = '2'
            TabOrder = 10
            OnClick = pnlLaunch1Click
            object vbl2: TVrBlinkLed
              Tag = 2
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
              ExplicitLeft = 14
              ExplicitTop = 6
            end
          end
          object pnlLaunch3: TPanel
            Tag = 3
            Left = 158
            Top = 140
            Width = 23
            Height = 52
            Caption = '3'
            TabOrder = 11
            OnClick = pnlLaunch1Click
            object vbl3: TVrBlinkLed
              Tag = 3
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
            end
          end
          object pnlLaunch4: TPanel
            Tag = 4
            Left = 184
            Top = 140
            Width = 23
            Height = 52
            Caption = '4'
            TabOrder = 12
            OnClick = pnlLaunch1Click
            object vbl4: TVrBlinkLed
              Tag = 4
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
              ExplicitLeft = -24
              ExplicitTop = 18
              ExplicitWidth = 50
            end
          end
          object pnlLaunch5: TPanel
            Tag = 5
            Left = 210
            Top = 140
            Width = 23
            Height = 52
            Caption = '5'
            TabOrder = 13
            OnClick = pnlLaunch1Click
            object vbl5: TVrBlinkLed
              Tag = 5
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
              ExplicitLeft = -24
              ExplicitTop = 18
              ExplicitWidth = 50
            end
          end
          object pnlLaunch6: TPanel
            Tag = 6
            Left = 236
            Top = 140
            Width = 23
            Height = 52
            Caption = '6'
            TabOrder = 14
            OnClick = pnlLaunch1Click
            object vbl6: TVrBlinkLed
              Tag = 6
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
              ExplicitLeft = -24
              ExplicitTop = 18
              ExplicitWidth = 50
            end
          end
          object pnlLaunch7: TPanel
            Tag = 7
            Left = 262
            Top = 140
            Width = 23
            Height = 52
            Caption = '7'
            TabOrder = 15
            OnClick = pnlLaunch1Click
            object vbl7: TVrBlinkLed
              Tag = 7
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
              ExplicitLeft = -24
              ExplicitTop = 18
              ExplicitWidth = 50
            end
          end
          object pnlLaunch8: TPanel
            Tag = 8
            Left = 288
            Top = 140
            Width = 23
            Height = 52
            Caption = '8'
            TabOrder = 16
            OnClick = pnlLaunch1Click
            object vbl8: TVrBlinkLed
              Tag = 8
              Left = 1
              Top = 1
              Width = 21
              Height = 20
              Palette1.Low = clRed
              Palette1.High = clLime
              Palette2.Low = clBlack
              Palette2.High = clAqua
              Palette3.Low = clBlack
              Palette3.High = clYellow
              Palette4.Low = clBlack
              Palette4.High = clLime
              BlinkLedType = ltLargeRect
              Margin = 2
              Spacing = 3
              Align = alTop
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              BlinkSpeed = 250
              ExplicitLeft = -24
              ExplicitTop = 18
              ExplicitWidth = 50
            end
          end
          object edtDestructRange: TEdit
            Left = 108
            Top = 221
            Width = 41
            Height = 21
            TabOrder = 17
            OnKeyPress = edtDestructRangeKeyPress
          end
          object edtCrossOverRange: TEdit
            Left = 108
            Top = 198
            Width = 41
            Height = 21
            TabOrder = 18
            Text = '0'
          end
          object btn1: TButton
            Left = 238
            Top = 102
            Width = 75
            Height = 25
            Caption = 'All Launch'
            TabOrder = 19
            Visible = False
            OnClick = btnAllLaunch
          end
        end
      end
    end
  end
  object pmenuWeapon: TPopupMenu
    Left = 266
    Top = 377
  end
  object pmenuFiring: TPopupMenu
    Left = 252
    Top = 367
    object RBL1: TMenuItem
      Tag = 1
      Caption = 'RBL'
      OnClick = OnMenuFiringClick
    end
    object RBLW1: TMenuItem
      Tag = 2
      Caption = 'RBLW'
      Enabled = False
      OnClick = OnMenuFiringClick
    end
    object BOL1: TMenuItem
      Tag = 3
      Caption = 'BOL'
      OnClick = OnMenuFiringClick
    end
    object BOLW1: TMenuItem
      Tag = 4
      Caption = 'BOLW'
      Enabled = False
      OnClick = OnMenuFiringClick
    end
  end
  object pmenuEngagement: TPopupMenu
    Left = 236
    Top = 360
    object Ripple1: TMenuItem
      Tag = 1
      Caption = 'Ripple'
      OnClick = OnMenuEngageClick
    end
    object STOT1: TMenuItem
      Tag = 2
      Caption = 'STOT'
      OnClick = OnMenuEngageClick
    end
    object DTOT1: TMenuItem
      Tag = 3
      Caption = 'DTOT'
      OnClick = OnMenuEngageClick
    end
  end
  object TimerLaunch: TTimer
    Enabled = False
    Interval = 300
    Left = 296
    Top = 536
  end
  object TimerRipple: TTimer
    Enabled = False
    OnTimer = TimerRippleTimer
    Left = 112
    Top = 360
  end
  object tmrSTOT: TTimer
    Enabled = False
    OnTimer = tmrSTOTTimer
    Left = 56
    Top = 368
  end
  object tmrLaunchSTOT: TTimer
    Enabled = False
    OnTimer = tmrLaunchSTOTTimer
    Left = 24
    Top = 368
  end
  object pmenuWpnCarrier: TPopupMenu
    Left = 208
    Top = 392
  end
  object pmenuWpn: TPopupMenu
    Left = 216
    Top = 392
  end
  object pmTorpedoFiring: TPopupMenu
    Left = 232
    Top = 376
  end
  object pmTorpedoRunOut: TPopupMenu
    Left = 240
    Top = 376
  end
  object pmTorpedoGyroAngle: TPopupMenu
    Left = 208
    Top = 384
  end
  object TmrAPG: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TmrAPGTimer
    Left = 168
    Top = 376
  end
end
