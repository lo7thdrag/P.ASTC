inherited fmFireControl: TfmFireControl
  Height = 526
  OnEnter = FrameEnter
  ExplicitHeight = 526
  object PanelFCChoices: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lstAssetsChoices: TListView
      Left = 0
      Top = 0
      Width = 320
      Height = 97
      Align = alTop
      Columns = <
        item
          AutoSize = True
          Caption = 'Name'
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'Status'
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnSelectItem = lstAssetsChoicesSelectItem
    end
  end
  object PaneFCSpace: TPanel
    Left = 0
    Top = 97
    Width = 320
    Height = 12
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
  end
  object PanelALL: TPanel
    Left = 0
    Top = 109
    Width = 320
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    object PanelFC: TPanel
      Left = 0
      Top = 0
      Width = 320
      Height = 417
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object ScrollBox3: TScrollBox
        Left = 0
        Top = 0
        Width = 320
        Height = 417
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object grbFireControl: TGroupBox
          Left = 0
          Top = 0
          Width = 320
          Height = 417
          Align = alClient
          TabOrder = 0
          object Bevel27: TBevel
            Left = 46
            Top = 12
            Width = 253
            Height = 3
          end
          object Bevel52: TBevel
            Left = 46
            Top = 120
            Width = 253
            Height = 3
          end
          object Bevel53: TBevel
            Left = 46
            Top = 284
            Width = 253
            Height = 3
          end
          object btnSearchFireControlAssetsTarget: TSpeedButton
            Left = 102
            Top = 131
            Width = 33
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
            OnClick = btnSearchFireControlAssetsTargetClick
          end
          object Label265: TLabel
            Left = 46
            Top = 21
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label266: TLabel
            Left = 151
            Top = 21
            Width = 97
            Height = 13
            Caption = 'Channels Available :'
          end
          object Label267: TLabel
            Left = 6
            Top = 6
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label268: TLabel
            Left = 6
            Top = 114
            Width = 32
            Height = 13
            Caption = 'Target'
          end
          object Label514: TLabel
            Left = 6
            Top = 278
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Label515: TLabel
            Left = 70
            Top = 288
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label527: TLabel
            Left = 180
            Top = 288
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object lbControlChannel: TLabel
            Left = 254
            Top = 21
            Width = 8
            Height = 13
            Caption = '--'
          end
          object sbFireControlAssetsBlindZonesHide: TSpeedButton
            Tag = 10
            Left = 172
            Top = 329
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = btnFCROnClick
          end
          object sbFireControlAssetsBlindZonesShow: TSpeedButton
            Tag = 9
            Left = 172
            Top = 304
            Width = 80
            Height = 25
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = btnFCROnClick
          end
          object sbFireControlAssetsDisplayHide: TSpeedButton
            Tag = 8
            Left = 50
            Top = 329
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Hide'
            OnClick = btnFCROnClick
          end
          object sbFireControlAssetsDisplayShow: TSpeedButton
            Tag = 7
            Left = 50
            Top = 304
            Width = 80
            Height = 25
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Show'
            OnClick = btnFCROnClick
          end
          object sbFireControlAssetsModeOff: TSpeedButton
            Tag = 3
            Left = 21
            Top = 85
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Off'
            OnClick = btnFCROnClick
          end
          object sbFireControlAssetsModeSearch: TSpeedButton
            Tag = 1
            Left = 21
            Top = 36
            Width = 80
            Height = 25
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Search / Track'
            OnClick = btnFCROnClick
          end
          object sbFireControlAssetsModeTrackOnly: TSpeedButton
            Tag = 2
            Left = 21
            Top = 61
            Width = 80
            Height = 25
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Track Only'
            OnClick = btnFCROnClick
          end
          object btnFireControlAssetsTargetAssign: TButton
            Tag = 4
            Left = 164
            Top = 136
            Width = 80
            Height = 25
            Caption = 'Assign'
            TabOrder = 0
            OnClick = btnFCROnClick
          end
          object btnFireControlAssetsTargetBreak: TButton
            Tag = 5
            Left = 164
            Top = 161
            Width = 80
            Height = 25
            Caption = 'Break'
            TabOrder = 1
            OnClick = btnFCROnClick
          end
          object btnFireControlAssetsTargetBreakAll: TButton
            Tag = 6
            Left = 164
            Top = 186
            Width = 80
            Height = 25
            Caption = 'Break All'
            TabOrder = 2
            OnClick = btnFCROnClick
          end
          object edtFireControlAssetsTarget: TEdit
            Left = 21
            Top = 131
            Width = 75
            Height = 21
            ReadOnly = True
            TabOrder = 3
          end
          object lstFireControlAssetsAssignedTracks: TListView
            Left = 21
            Top = 156
            Width = 114
            Height = 118
            Columns = <
              item
                Caption = 'Assigned Tracks'
                MaxWidth = 200
                MinWidth = 100
                Width = 100
              end>
            TabOrder = 4
            ViewStyle = vsReport
            OnSelectItem = lstFireControlAssetsAssignedTracksSelectItem
          end
        end
      end
    end
  end
end
