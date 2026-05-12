inherited fmCounterMeasure: TfmCounterMeasure
  Width = 328
  Height = 526
  ExplicitWidth = 328
  ExplicitHeight = 526
  object PanelALL: TPanel
    Left = 0
    Top = 114
    Width = 328
    Height = 412
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object PanelCounterMeasure: TPanel
      Left = 0
      Top = 0
      Width = 328
      Height = 412
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object grbAcousticDecoy: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 3
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 15
          Width = 324
          Height = 395
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Label1: TLabel
            Left = 3
            Top = -3
            Width = 57
            Height = 13
            Caption = 'Deployment'
          end
          object Bevel1: TBevel
            Left = 65
            Top = 4
            Width = 240
            Height = 3
          end
          object Label2: TLabel
            Left = 20
            Top = 163
            Width = 33
            Height = 13
            Caption = 'Mode :'
          end
          object Label3: TLabel
            Left = 92
            Top = 187
            Width = 3
            Height = 13
          end
          object Label4: TLabel
            Left = 43
            Top = 15
            Width = 30
            Height = 13
            Caption = 'Action'
          end
          object Label5: TLabel
            Left = 3
            Top = 78
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel2: TBevel
            Left = 43
            Top = 85
            Width = 260
            Height = 3
          end
          object Label6: TLabel
            Left = 35
            Top = 93
            Width = 48
            Height = 13
            Caption = 'Activation'
          end
          object Label7: TLabel
            Left = 145
            Top = 93
            Width = 55
            Height = 13
            Caption = 'Cycle Timer'
          end
          object Label8: TLabel
            Left = 20
            Top = 185
            Width = 68
            Height = 13
            Caption = 'Filter Setting :'
          end
          object Label9: TLabel
            Left = 92
            Top = 211
            Width = 3
            Height = 13
          end
          object btnComboAcousticDecoyMode: TSpeedButton
            Tag = 7
            Left = 278
            Top = 158
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
            OnClick = btnECMAcousticDecoyOnClick
          end
          object btnComboAcousticDecoyFilter: TSpeedButton
            Tag = 8
            Left = 278
            Top = 180
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
            OnClick = btnECMAcousticDecoyOnClick
          end
          object sbAcousticDecoyActionDeploy: TSpeedButton
            Tag = 1
            Left = 20
            Top = 28
            Width = 80
            Height = 24
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Deploy'
            Enabled = False
            OnClick = btnECMAcousticDecoyOnClick
          end
          object sbAcousticDecoyActionStow: TSpeedButton
            Tag = 2
            Left = 20
            Top = 50
            Width = 80
            Height = 24
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Stow'
            Enabled = False
            OnClick = btnECMAcousticDecoyOnClick
          end
          object sbAcousticDecoyActivationOn: TSpeedButton
            Tag = 3
            Left = 21
            Top = 107
            Width = 79
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'On'
            Enabled = False
            OnClick = btnECMAcousticDecoyOnClick
          end
          object sbAcousticDecoyActivationOff: TSpeedButton
            Tag = 4
            Left = 21
            Top = 128
            Width = 79
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Off'
            Enabled = False
            OnClick = btnECMAcousticDecoyOnClick
          end
          object sbAcousticDecoyCycleTimerOn: TSpeedButton
            Tag = 5
            Left = 133
            Top = 107
            Width = 79
            Height = 22
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'On'
            Enabled = False
            OnClick = btnECMAcousticDecoyOnClick
          end
          object sbAcousticDecoyCycleTimerOff: TSpeedButton
            Tag = 6
            Left = 133
            Top = 128
            Width = 79
            Height = 22
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Off'
            Enabled = False
            OnClick = btnECMAcousticDecoyOnClick
          end
          object edtAcousticDecoyMode: TEdit
            Left = 101
            Top = 159
            Width = 171
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = 'Pulsed noise'
          end
          object edtAcousticDecoyFilter: TEdit
            Left = 101
            Top = 181
            Width = 171
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = '2'
          end
        end
      end
      object grbAirborneChaff: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 0
        object Label510: TLabel
          Left = 7
          Top = 5
          Width = 57
          Height = 13
          Caption = 'Deployment'
        end
        object Label511: TLabel
          Left = 18
          Top = 56
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object Label516: TLabel
          Left = 18
          Top = 33
          Width = 31
          Height = 13
          Caption = 'Type :'
        end
        object Bevel110: TBevel
          Left = 67
          Top = 12
          Width = 240
          Height = 3
        end
        object lbChaffAirboneQuantity: TLabel
          Left = 97
          Top = 56
          Width = 12
          Height = 13
          Caption = '---'
        end
        object btnAirboneChaffType: TSpeedButton
          Left = 284
          Top = 28
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
          OnClick = btnAirboneChaffTypeClick
        end
        object editChaffAirboneType: TEdit
          Left = 97
          Top = 29
          Width = 175
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = 'Barrier'
        end
        object btnChaffAirboneDeploy: TButton
          Left = 18
          Top = 100
          Width = 80
          Height = 25
          Caption = 'Deploy'
          TabOrder = 1
          OnClick = btnChaffAirboneDeployClick
        end
      end
      object grbFloatingDecoy: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 4
        object Label502: TLabel
          Left = 3
          Top = 3
          Width = 57
          Height = 13
          Caption = 'Deployment'
        end
        object Bevel114: TBevel
          Left = 65
          Top = 10
          Width = 240
          Height = 3
        end
        object Label550: TLabel
          Left = 22
          Top = 22
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object lbFloatingDecoyQuantity: TLabel
          Left = 84
          Top = 22
          Width = 8
          Height = 13
          Caption = '--'
        end
        object btnFloatingDecoyDeploy: TButton
          Left = 226
          Top = 19
          Width = 80
          Height = 25
          Caption = 'Deploy'
          TabOrder = 0
          OnClick = btnFloatingDecoyDeployClick
        end
      end
      object grbOnBoardSelfDefenseJammer: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 1
        object ScrollBox5: TScrollBox
          Left = 2
          Top = 15
          Width = 324
          Height = 395
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel112: TBevel
            Left = 41
            Top = 10
            Width = 260
            Height = 3
          end
          object Label542: TLabel
            Left = 3
            Top = 3
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label543: TLabel
            Left = 155
            Top = 21
            Width = 46
            Height = 13
            Caption = 'Targeting'
          end
          object Label544: TLabel
            Left = 52
            Top = 21
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object sbOnBoardSelfDefenseJammerControlModeAuto: TSpeedButton
            Tag = 1
            Left = 28
            Top = 35
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Automatic'
            OnClick = sbOnBoardSelfDefenseJammerControlModeAutoClick
          end
          object sbOnBoardSelfDefenseJammerControlModeManual: TSpeedButton
            Tag = 2
            Left = 28
            Top = 58
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Manual'
            OnClick = sbOnBoardSelfDefenseJammerControlModeAutoClick
          end
          object sbOnBoardSelfDefenseJammerControlModeOff: TSpeedButton
            Tag = 3
            Left = 28
            Top = 81
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Off'
            OnClick = sbOnBoardSelfDefenseJammerControlModeAutoClick
          end
          object sbOnBoardSelfDefenseJammerControlTargetingSpot: TSpeedButton
            Tag = 4
            Left = 140
            Top = 35
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Spot'
            OnClick = sbOnBoardSelfDefenseJammerControlModeAutoClick
          end
          object sbOnBoardSelfDefenseJammerControlTargetingTrack: TSpeedButton
            Tag = 5
            Left = 140
            Top = 58
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Track'
            OnClick = sbOnBoardSelfDefenseJammerControlModeAutoClick
          end
          object grbManualSpot: TGroupBox
            Left = 18
            Top = 113
            Width = 283
            Height = 63
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            Visible = False
            object Label547: TLabel
              Left = 13
              Top = 14
              Width = 70
              Height = 13
              Caption = 'Bearing          :'
            end
            object Label546: TLabel
              Left = 13
              Top = 37
              Width = 69
              Height = 13
              Caption = 'Spot Number :'
            end
            object Label549: TLabel
              Left = 157
              Top = 12
              Width = 48
              Height = 13
              Caption = 'degrees T'
            end
            object edtOnBoardSelfDefenseJammerSpotNumber: TEdit
              Tag = 2
              Left = 88
              Top = 34
              Width = 63
              Height = 21
              Enabled = False
              TabOrder = 0
              Text = '0'
              OnKeyPress = edtOnBoardSelfDefenseText
            end
            object edtOnBoardSelfDefenseJammerBearing: TEdit
              Tag = 1
              Left = 88
              Top = 10
              Width = 63
              Height = 21
              Enabled = False
              TabOrder = 1
              Text = '000'
              OnKeyPress = edtOnBoardSelfDefenseText
            end
          end
          object grbManualTrack: TGroupBox
            Left = 18
            Top = 114
            Width = 283
            Height = 62
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            Visible = False
            object Label24: TLabel
              Left = 13
              Top = 15
              Width = 60
              Height = 13
              Caption = 'Track          :'
            end
            object btnSDJammerTarget: TSpeedButton
              Left = 159
              Top = 12
              Width = 24
              Height = 21
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
              OnClick = btnSDJammerTargetClick
            end
            object edtSDJammerTarget: TEdit
              Left = 79
              Top = 12
              Width = 75
              Height = 21
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
      object grbRadarNoiseJammer: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 7
        object ScrollBox3: TScrollBox
          Left = 2
          Top = 15
          Width = 324
          Height = 395
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel117: TBevel
            Left = 44
            Top = 6
            Width = 250
            Height = 3
          end
          object btnComboRadarJammingControlMode: TSpeedButton
            Tag = 3
            Left = 279
            Top = 94
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
            Visible = False
            OnClick = btnRadarNoiseJammerOnClick
          end
          object Label532: TLabel
            Left = 25
            Top = 100
            Width = 33
            Height = 13
            Caption = 'Mode :'
          end
          object Label557: TLabel
            Left = 3
            Top = -3
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label558: TLabel
            Left = 24
            Top = 14
            Width = 48
            Height = 13
            Caption = 'Activation'
          end
          object sbRadarJammingControlActivationOff: TSpeedButton
            Tag = 2
            Left = 11
            Top = 51
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Off'
            OnClick = btnRadarNoiseJammerOnClick
          end
          object sbRadarJammingControlActivationOn: TSpeedButton
            Tag = 1
            Left = 11
            Top = 28
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'On'
            OnClick = btnRadarNoiseJammerOnClick
          end
          object cbRadarJammingControlMode: TComboBox
            Left = 64
            Top = 96
            Width = 208
            Height = 21
            ItemIndex = 0
            TabOrder = 0
            Text = 'Barrage'
            OnChange = cbRadarJammingControlModeChange
            Items.Strings = (
              'Barrage'
              'Spot Jamming - Frequency'
              'Spot Jamming - Spot Number'
              'Spot Jamming - Selected Track')
          end
          object PanelRadarJammingMode: TPanel
            Left = 11
            Top = 125
            Width = 290
            Height = 106
            BevelOuter = bvNone
            TabOrder = 1
            object gbRadarJammingBarrageMode: TGroupBox
              Left = 0
              Top = 0
              Width = 290
              Height = 106
              Align = alClient
              TabOrder = 2
              object Label531: TLabel
                Left = 13
                Top = 9
                Width = 43
                Height = 13
                Caption = 'Bearing :'
              end
              object Label533: TLabel
                Left = 184
                Top = 9
                Width = 48
                Height = 13
                Caption = 'degrees T'
              end
              object Label534: TLabel
                Left = 184
                Top = 31
                Width = 19
                Height = 13
                Caption = 'Mhz'
              end
              object Label536: TLabel
                Left = 13
                Top = 31
                Width = 94
                Height = 13
                Caption = 'Center Frequency :'
              end
              object Label537: TLabel
                Left = 13
                Top = 53
                Width = 57
                Height = 13
                Caption = 'Bandwidth :'
              end
              object Label538: TLabel
                Left = 184
                Top = 53
                Width = 19
                Height = 13
                Caption = 'Mhz'
              end
              object editRadarJammingBarrageCenter: TEdit
                Tag = 2
                Left = 126
                Top = 27
                Width = 53
                Height = 21
                TabOrder = 0
                Text = '---'
                OnKeyPress = editRadarJammingBarrageBearingKeyPress
              end
              object editRadarJammingBarrageBearing: TEdit
                Tag = 1
                Left = 126
                Top = 5
                Width = 53
                Height = 21
                TabOrder = 1
                Text = '000'
                OnKeyPress = editRadarJammingBarrageBearingKeyPress
              end
              object editRadarJammingBarrageBandwidth: TEdit
                Tag = 3
                Left = 126
                Top = 49
                Width = 53
                Height = 21
                TabOrder = 2
                Text = '---'
                OnKeyPress = editRadarJammingBarrageBearingKeyPress
              end
            end
            object gbRadarJammingSpotNumberMode: TGroupBox
              Left = 0
              Top = 0
              Width = 290
              Height = 106
              TabOrder = 1
              object Label519: TLabel
                Left = 14
                Top = 31
                Width = 43
                Height = 13
                Caption = 'Bearing :'
              end
              object Label521: TLabel
                Left = 184
                Top = 31
                Width = 48
                Height = 13
                Caption = 'degrees T'
              end
              object Label522: TLabel
                Left = 184
                Top = 53
                Width = 19
                Height = 13
                Caption = 'Mhz'
              end
              object Label523: TLabel
                Left = 14
                Top = 53
                Width = 94
                Height = 13
                Caption = 'Center Frequency :'
              end
              object Label524: TLabel
                Left = 14
                Top = 75
                Width = 57
                Height = 13
                Caption = 'Bandwidth :'
              end
              object Label525: TLabel
                Left = 184
                Top = 75
                Width = 19
                Height = 13
                Caption = 'Mhz'
              end
              object Label517: TLabel
                Left = 14
                Top = 9
                Width = 69
                Height = 13
                Caption = 'Spot Number :'
              end
              object editRadarJammingSpotNumberCenter: TEdit
                Tag = 3
                Left = 126
                Top = 49
                Width = 53
                Height = 21
                TabOrder = 0
                Text = '10.0'
              end
              object editRadarJammingSpotNumberBearing: TEdit
                Tag = 2
                Left = 126
                Top = 27
                Width = 53
                Height = 21
                TabOrder = 1
                Text = '000'
                OnKeyPress = editRadarJammingSpotNumberSpotKeyPress
              end
              object editRadarJammingSpotNumberBandwidth: TEdit
                Tag = 4
                Left = 126
                Top = 71
                Width = 53
                Height = 21
                TabOrder = 2
                Text = '2.0'
              end
              object editRadarJammingSpotNumberSpot: TEdit
                Tag = 1
                Left = 126
                Top = 5
                Width = 53
                Height = 21
                TabOrder = 3
                Text = '---'
                OnKeyPress = editRadarJammingSpotNumberSpotKeyPress
              end
            end
            object gbRadarJammingSelectedTrackMode: TGroupBox
              Left = 0
              Top = 0
              Width = 290
              Height = 106
              Align = alClient
              TabOrder = 0
              object Label518: TLabel
                Left = 14
                Top = 31
                Width = 43
                Height = 13
                Caption = 'Bearing :'
              end
              object Label528: TLabel
                Left = 184
                Top = 31
                Width = 48
                Height = 13
                Caption = 'degrees T'
              end
              object Label530: TLabel
                Left = 184
                Top = 53
                Width = 19
                Height = 13
                Caption = 'Mhz'
              end
              object Label535: TLabel
                Left = 14
                Top = 53
                Width = 94
                Height = 13
                Caption = 'Center Frequency :'
              end
              object Label539: TLabel
                Left = 14
                Top = 75
                Width = 57
                Height = 13
                Caption = 'Bandwidth :'
              end
              object Label540: TLabel
                Left = 184
                Top = 75
                Width = 19
                Height = 13
                Caption = 'Mhz'
              end
              object Label541: TLabel
                Left = 14
                Top = 8
                Width = 33
                Height = 13
                Caption = 'Track :'
              end
              object btnRadarJammingModeSelectedTrackTrack: TSpeedButton
                Left = 184
                Top = 4
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
                OnClick = btnRadarJammingModeSelectedTrackTrackClick
              end
              object editRadarJammingModeSelectedTrackCenterFreq: TEdit
                Left = 126
                Top = 49
                Width = 53
                Height = 21
                TabOrder = 0
                Text = '10.0'
              end
              object editRadarJammingModeSelectedTrackBearing: TEdit
                Left = 126
                Top = 27
                Width = 53
                Height = 21
                TabOrder = 1
                Text = '000'
              end
              object editRadarJammingModeSelectedTrackBandwidth: TEdit
                Left = 126
                Top = 71
                Width = 53
                Height = 21
                TabOrder = 2
                Text = '2.0'
              end
              object editRadarJammingSelectedTrackModeTrack: TEdit
                Left = 126
                Top = 5
                Width = 53
                Height = 21
                Enabled = False
                TabOrder = 3
                Text = '1022'
              end
            end
          end
        end
      end
      object grpAirBubble: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 6
        object lblDeploy: TLabel
          Left = 7
          Top = 5
          Width = 57
          Height = 13
          Caption = 'Deployment'
        end
        object lblQuant: TLabel
          Left = 18
          Top = 56
          Width = 49
          Height = 13
          Caption = 'Quantity :'
        end
        object lblType: TLabel
          Left = 18
          Top = 33
          Width = 31
          Height = 13
          Caption = 'Type :'
        end
        object bvl1: TBevel
          Left = 67
          Top = 12
          Width = 240
          Height = 3
        end
        object lblBubblelQuantity: TLabel
          Left = 97
          Top = 56
          Width = 12
          Height = 13
          Caption = '---'
        end
        object btnType: TSpeedButton
          Left = 284
          Top = 28
          Width = 23
          Height = 22
          Enabled = False
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
          Visible = False
          OnClick = btnAirboneChaffTypeClick
        end
        object edtBubble: TEdit
          Left = 97
          Top = 29
          Width = 175
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = 'Air Bubble'
        end
        object btnAirBubbleDeploy: TButton
          Left = 18
          Top = 100
          Width = 80
          Height = 25
          Caption = 'Deploy'
          TabOrder = 1
          OnClick = btnAirBubbleDeployClick
        end
      end
      object grbTowedJammerDecoy: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 2
        object ScrollBox4: TScrollBox
          Left = 2
          Top = 15
          Width = 324
          Height = 395
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel109: TBevel
            Left = 212
            Top = 203
            Width = 90
            Height = 2
          end
          object Bevel111: TBevel
            Left = 44
            Top = 7
            Width = 260
            Height = 3
          end
          object Bevel118: TBevel
            Left = 63
            Top = 168
            Width = 241
            Height = 3
          end
          object Label501: TLabel
            Left = 3
            Top = 0
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label503: TLabel
            Left = 45
            Top = 18
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label504: TLabel
            Left = 18
            Top = 132
            Width = 69
            Height = 13
            Caption = 'Spot Number :'
          end
          object Label505: TLabel
            Left = 150
            Top = 18
            Width = 46
            Height = 13
            Caption = 'Targeting'
          end
          object Label506: TLabel
            Left = 18
            Top = 111
            Width = 43
            Height = 13
            Caption = 'Bearing :'
          end
          object Label507: TLabel
            Left = 189
            Top = 113
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label508: TLabel
            Left = 41
            Top = 180
            Width = 30
            Height = 13
            Caption = 'Action'
          end
          object Label509: TLabel
            Left = 130
            Top = 180
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object Label512: TLabel
            Left = 130
            Top = 197
            Width = 56
            Height = 13
            Caption = 'Tow Length'
          end
          object Label559: TLabel
            Left = 3
            Top = 161
            Width = 57
            Height = 13
            Caption = 'Deployment'
          end
          object Label560: TLabel
            Left = 130
            Top = 215
            Width = 47
            Height = 13
            Caption = 'Ordered :'
          end
          object Label561: TLabel
            Left = 130
            Top = 233
            Width = 37
            Height = 13
            Caption = 'Actual :'
          end
          object Label563: TLabel
            Left = 260
            Top = 233
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object Label564: TLabel
            Left = 260
            Top = 215
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object lblTowedJammerDecoyActual: TLabel
            Left = 212
            Top = 233
            Width = 8
            Height = 13
            Caption = '--'
          end
          object lblTowedJammerDecoyQuantity: TLabel
            Left = 212
            Top = 180
            Width = 6
            Height = 13
            Caption = '1'
          end
          object sbTowedJammerDecoyActionDeploy: TSpeedButton
            Left = 18
            Top = 195
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Deploy'
            Enabled = False
          end
          object sbTowedJammerDecoyActionStow: TSpeedButton
            Left = 18
            Top = 218
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Stow'
            Enabled = False
          end
          object sbTowedJammerDecoyModeAuto: TSpeedButton
            Left = 18
            Top = 32
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Automatic'
            Enabled = False
          end
          object sbTowedJammerDecoyModeManual: TSpeedButton
            Left = 18
            Top = 55
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Manual'
            Enabled = False
          end
          object sbTowedJammerDecoyModeOff: TSpeedButton
            Left = 18
            Top = 78
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Off'
            Enabled = False
          end
          object sbTowedJammerDecoyTargetingSpot: TSpeedButton
            Left = 130
            Top = 32
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Spot'
            Enabled = False
          end
          object sbTowedJammerDecoyTargetingTrack: TSpeedButton
            Left = 130
            Top = 55
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Track'
            Enabled = False
          end
          object editTowedJammerDecoyOrdered: TEdit
            Left = 212
            Top = 211
            Width = 40
            Height = 21
            Enabled = False
            TabOrder = 0
          end
          object edtTowedJammerDecoyBearing: TEdit
            Left = 93
            Top = 111
            Width = 88
            Height = 21
            Enabled = False
            TabOrder = 1
            Text = '000'
          end
          object edtTowedJammerDecoySpotNumb: TEdit
            Left = 93
            Top = 133
            Width = 88
            Height = 21
            Enabled = False
            TabOrder = 2
            Text = '---'
          end
        end
      end
      object grbSurfaceChaffDeployment: TGroupBox
        Left = 0
        Top = 0
        Width = 328
        Height = 412
        Align = alClient
        TabOrder = 5
        object ScrollBox2: TScrollBox
          Left = 2
          Top = 15
          Width = 324
          Height = 395
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel3: TBevel
            Left = 72
            Top = 7
            Width = 231
            Height = 3
          end
          object Label10: TLabel
            Left = 7
            Top = 0
            Width = 51
            Height = 13
            Caption = 'Distraction'
          end
          object Label11: TLabel
            Left = 14
            Top = 17
            Width = 44
            Height = 13
            Caption = 'Launcher'
          end
          object Label12: TLabel
            Left = 14
            Top = 45
            Width = 36
            Height = 13
            Caption = 'Bearing'
          end
          object Label13: TLabel
            Left = 14
            Top = 95
            Width = 54
            Height = 13
            Caption = 'Chaff Type'
          end
          object Label14: TLabel
            Left = 14
            Top = 119
            Width = 42
            Height = 13
            Caption = 'Quantity'
          end
          object Label15: TLabel
            Left = 14
            Top = 147
            Width = 62
            Height = 13
            Caption = 'Bloom Range'
          end
          object Label16: TLabel
            Left = 14
            Top = 173
            Width = 68
            Height = 13
            Caption = 'Bloom Altitude'
          end
          object Label17: TLabel
            Left = 14
            Top = 199
            Width = 48
            Height = 13
            Caption = 'Salvo Size'
          end
          object Label18: TLabel
            Left = 14
            Top = 225
            Width = 27
            Height = 13
            Caption = 'Delay'
          end
          object lblSurfaceChaffQuantity: TLabel
            Left = 103
            Top = 119
            Width = 12
            Height = 13
            Caption = '---'
          end
          object btnSurfaceChaffLauncher: TSpeedButton
            Tag = 1
            Left = 270
            Top = 14
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
            OnClick = btnSurfaceChaffOnClick
          end
          object btnSurfaceChaffType: TSpeedButton
            Tag = 2
            Left = 270
            Top = 92
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
            OnClick = btnSurfaceChaffOnClick
          end
          object btnSurfaceChaffCopy: TSpeedButton
            Tag = 3
            Left = 14
            Top = 260
            Width = 122
            Height = 22
            Caption = 'Copy to All Launchers'
            OnClick = btnSurfaceChaffOnClick
          end
          object btnSurfaceChaffLaunch: TSpeedButton
            Tag = 4
            Left = 185
            Top = 260
            Width = 122
            Height = 22
            Caption = 'Launch Distraction'
            OnClick = btnSurfaceChaffOnClick
          end
          object btnSurfaceChaffAbort: TSpeedButton
            Tag = 5
            Left = 185
            Top = 287
            Width = 122
            Height = 22
            Caption = 'Abort Salvo'
            OnClick = btnSurfaceChaffOnClick
          end
          object Label19: TLabel
            Left = 7
            Top = 318
            Width = 47
            Height = 13
            Caption = 'Seduction'
          end
          object Bevel4: TBevel
            Left = 72
            Top = 325
            Width = 231
            Height = 3
          end
          object Label20: TLabel
            Left = 188
            Top = 147
            Width = 14
            Height = 13
            Caption = 'nm'
          end
          object Label21: TLabel
            Left = 188
            Top = 173
            Width = 20
            Height = 13
            Caption = 'feet'
          end
          object Label22: TLabel
            Left = 188
            Top = 225
            Width = 39
            Height = 13
            Caption = 'seconds'
          end
          object Label23: TLabel
            Left = 188
            Top = 43
            Width = 49
            Height = 13
            Caption = 'degrees R'
          end
          object edtSurfaceChaffLauncher: TEdit
            Left = 103
            Top = 15
            Width = 160
            Height = 21
            ReadOnly = True
            TabOrder = 0
          end
          object edtSurfaceChaffBearing: TEdit
            Tag = 1
            Left = 103
            Top = 41
            Width = 75
            Height = 21
            TabOrder = 1
            OnKeyPress = OnSurfaceChaffKeyPress
          end
          object edtSurfaceChaffType: TEdit
            Left = 103
            Top = 93
            Width = 160
            Height = 21
            ReadOnly = True
            TabOrder = 2
          end
          object edtSurfaceChaffBloomRange: TEdit
            Tag = 2
            Left = 103
            Top = 145
            Width = 75
            Height = 21
            TabOrder = 3
            OnKeyPress = OnSurfaceChaffKeyPress
          end
          object edtSurfaceChaffBloomAltitude: TEdit
            Tag = 3
            Left = 103
            Top = 171
            Width = 75
            Height = 21
            TabOrder = 4
            OnKeyPress = OnSurfaceChaffKeyPress
          end
          object edtSurfaceChaffSalvoSize: TEdit
            Tag = 4
            Left = 103
            Top = 197
            Width = 75
            Height = 21
            TabOrder = 5
            OnKeyPress = OnSurfaceChaffKeyPress
          end
          object edtSurfaceChaffDelay: TEdit
            Tag = 5
            Left = 103
            Top = 223
            Width = 75
            Height = 21
            TabOrder = 6
            OnKeyPress = OnSurfaceChaffKeyPress
          end
          object ckSurfaceChaffEnabled: TCheckBox
            Left = 14
            Top = 63
            Width = 97
            Height = 17
            Caption = 'Enabled'
            TabOrder = 7
            OnClick = ckSurfaceChaffEnabledClick
          end
          object ckSurfaceChaffSeductionEnabled: TCheckBox
            Left = 14
            Top = 337
            Width = 97
            Height = 17
            Caption = 'Enabled'
            TabOrder = 8
          end
        end
      end
    end
  end
  object PanelCounterMeasureSpace: TPanel
    Left = 0
    Top = 100
    Width = 328
    Height = 14
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
  end
  object PanelCounterMeasureChoice: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    object lvECM: TListView
      Left = 0
      Top = 0
      Width = 328
      Height = 100
      Align = alClient
      Columns = <
        item
          Caption = 'Name'
          Width = 243
        end
        item
          Caption = 'Status'
          Width = 80
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnSelectItem = lvECMSelectItem
    end
  end
  object pmChaffType: TPopupMenu
    Left = 248
    Top = 464
  end
  object pmChaffLauncher: TPopupMenu
    Left = 284
    Top = 472
  end
  object pmNoiseJammerMode: TPopupMenu
    Left = 242
    Top = 174
    object mniJammBarrage: TMenuItem
      Caption = 'Barrage'
    end
    object mniJammFreq: TMenuItem
      Caption = 'Spot Jamming - Frequency'
    end
    object mniJammSpotNumber: TMenuItem
      Caption = 'Spot Jamming - Spot Number'
    end
    object mniJammSelectedTrack: TMenuItem
      Caption = 'Spot Jamming - Selected Track'
    end
  end
end
