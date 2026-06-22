object frmGunCIWS: TfrmGunCIWS
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmGunCIWS'
  ClientHeight = 369
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grbGunEngagementCIWS: TGroupBox
    Left = 0
    Top = 0
    Width = 317
    Height = 369
    Align = alClient
    TabOrder = 0
    object ScrollBox8: TScrollBox
      Left = 2
      Top = 15
      Width = 313
      Height = 352
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      object Label468: TLabel
        Left = 3
        Top = 1
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object lblCIWSStatus: TLabel
        Left = 35
        Top = 19
        Width = 43
        Height = 13
        Caption = 'Available'
      end
      object Label474: TLabel
        Left = 108
        Top = 19
        Width = 49
        Height = 13
        Caption = 'Quantity :'
      end
      object lbCIWSQuantity: TLabel
        Left = 164
        Top = 17
        Width = 12
        Height = 13
        Caption = '---'
      end
      object Label477: TLabel
        Left = 3
        Top = 42
        Width = 35
        Height = 13
        Caption = 'Control'
      end
      object Bevel99: TBevel
        Left = 40
        Top = 49
        Width = 190
        Height = 2
      end
      object Label478: TLabel
        Left = 35
        Top = 137
        Width = 55
        Height = 13
        Caption = 'Salvo Size :'
      end
      object Label479: TLabel
        Left = 3
        Top = 157
        Width = 32
        Height = 13
        Caption = 'Target'
      end
      object Bevel100: TBevel
        Left = 40
        Top = 163
        Width = 260
        Height = 3
      end
      object Label480: TLabel
        Left = 3
        Top = 206
        Width = 34
        Height = 13
        Caption = 'Display'
      end
      object Bevel101: TBevel
        Left = 40
        Top = 214
        Width = 260
        Height = 3
      end
      object Label481: TLabel
        Left = 60
        Top = 218
        Width = 31
        Height = 13
        Caption = 'Range'
      end
      object Label482: TLabel
        Left = 174
        Top = 219
        Width = 54
        Height = 13
        Caption = 'Blind Zones'
      end
      object Label483: TLabel
        Left = 35
        Top = 178
        Width = 33
        Height = 13
        Caption = 'Track :'
      end
      object Label488: TLabel
        Left = 61
        Top = 59
        Width = 26
        Height = 13
        Caption = 'Mode'
      end
      object Label489: TLabel
        Left = 165
        Top = 58
        Width = 55
        Height = 13
        Caption = 'Salvo Mode'
      end
      object Bevel103: TBevel
        Left = 40
        Top = 8
        Width = 260
        Height = 3
      end
      object sbCIWSControlModeAuto: TSpeedButton
        Tag = 1
        Left = 32
        Top = 75
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 4
        Down = True
        Caption = 'Automatic'
        OnClick = sbCIWSControlModeAutoClick
      end
      object sbCIWSControlModeManual: TSpeedButton
        Tag = 2
        Left = 32
        Top = 98
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 4
        Caption = 'Manual'
        OnClick = sbCIWSControlModeAutoClick
      end
      object sbCIWSControlSalvoCont: TSpeedButton
        Tag = 3
        Left = 150
        Top = 75
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 3
        Down = True
        Caption = 'Continous'
        OnClick = SalvoMode
      end
      object sbCIWSControlSalvoSalvo: TSpeedButton
        Tag = 4
        Left = 150
        Top = 98
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 3
        Caption = 'Salvo'
        OnClick = SalvoMode
      end
      object sbCIWSControlDisplayRangeShow: TSpeedButton
        Tag = 1
        Left = 33
        Top = 237
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'Show'
        OnClick = btnRangeClick
      end
      object sbCIWSControlDisplayRangeHide: TSpeedButton
        Tag = 2
        Left = 33
        Top = 260
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 1
        Down = True
        Caption = 'Hide'
        OnClick = btnRangeClick
      end
      object sbCIWSControlDisplayBlindZonesShow: TSpeedButton
        Tag = 1
        Left = 159
        Top = 237
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 2
        Caption = 'Show'
        OnClick = btnBlindZone
      end
      object sbCIWSControlDisplayBlindZonesHide: TSpeedButton
        Tag = 2
        Left = 159
        Top = 260
        Width = 83
        Height = 24
        AllowAllUp = True
        GroupIndex = 2
        Down = True
        Caption = 'Hide'
        OnClick = btnBlindZone
      end
      object btnTargetSearch: TSpeedButton
        Tag = 10
        Left = 217
        Top = 173
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
      object editCIWSControlSalvoSize: TEdit
        Left = 161
        Top = 133
        Width = 53
        Height = 21
        MaxLength = 5
        NumbersOnly = True
        TabOrder = 0
        Text = '1'
        OnExit = editCIWSControlSalvoSizeExit
        OnKeyPress = editCIWSControlSalvoSizeKeyPress
      end
      object btnCIWSCease: TButton
        Tag = 2
        Left = 217
        Top = 309
        Width = 81
        Height = 24
        Caption = 'Cease Fire'
        TabOrder = 1
        OnClick = btnCIWSCeaseClick
      end
      object editCIWSTargetTrack: TEdit
        Left = 161
        Top = 174
        Width = 53
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object btnCIWSFire: TButton
        Tag = 1
        Left = 131
        Top = 309
        Width = 81
        Height = 24
        Caption = 'Fire'
        TabOrder = 3
        OnClick = btnCIWSFireClick
      end
    end
  end
end
