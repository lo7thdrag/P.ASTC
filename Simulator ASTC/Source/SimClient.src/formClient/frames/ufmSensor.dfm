inherited fmSensor: TfmSensor
  Width = 323
  Height = 442
  ExplicitWidth = 323
  ExplicitHeight = 442
  object PanelSpace: TPanel
    Left = 0
    Top = 115
    Width = 323
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
  end
  object PanelSensorChoices: TPanel
    Left = 0
    Top = 0
    Width = 323
    Height = 115
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object lstSensor: TListView
      Left = 1
      Top = 1
      Width = 321
      Height = 113
      Align = alClient
      Color = clMenu
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
      GridLines = True
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnSelectItem = lstSensorSelectItem
    end
  end
  object PanelALL: TPanel
    Left = 0
    Top = 120
    Width = 323
    Height = 322
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    object PanelSensorControl: TPanel
      Left = 0
      Top = 0
      Width = 323
      Height = 322
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 3
      ParentBackground = False
      TabOrder = 0
      object grbIFFTransponderControl: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 8
        object ScrollBox6: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel8: TBevel
            Left = 43
            Top = 10
            Width = 260
            Height = 3
          end
          object Bevel9: TBevel
            Left = 105
            Top = 104
            Width = 200
            Height = 3
          end
          object Label14: TLabel
            Left = 3
            Top = 3
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label15: TLabel
            Left = 35
            Top = 22
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label16: TLabel
            Left = 3
            Top = 96
            Width = 101
            Height = 13
            Caption = 'Mode/Code Selection'
          end
          object sbIFFTransponderControlModeOff: TSpeedButton
            Left = 14
            Top = 60
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Off'
          end
          object sbIFFTransponderControlModeOn: TSpeedButton
            Left = 14
            Top = 41
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'On'
          end
          object cbIFFTransponderControlMode1: TCheckBox
            Left = 14
            Top = 122
            Width = 57
            Height = 17
            Caption = 'Mode 1 :'
            TabOrder = 0
            OnClick = OnIFFCheckedClick
          end
          object cbIFFTransponderControlMode2: TCheckBox
            Left = 14
            Top = 153
            Width = 57
            Height = 17
            Caption = 'Mode 2 :'
            TabOrder = 1
            OnClick = OnIFFCheckedClick
          end
          object cbIFFTransponderControlMode3: TCheckBox
            Left = 14
            Top = 184
            Width = 57
            Height = 17
            Caption = 'Mode 3 :'
            TabOrder = 2
            OnClick = OnIFFCheckedClick
          end
          object cbIFFTransponderControlMode3C: TCheckBox
            Left = 14
            Top = 215
            Width = 57
            Height = 17
            Caption = 'Mode 3C :'
            TabOrder = 3
            OnClick = OnIFFCheckedClick
          end
          object cbIFFTransponderControlMode4: TCheckBox
            Left = 14
            Top = 246
            Width = 57
            Height = 17
            Caption = 'Mode 4 :'
            TabOrder = 4
            OnClick = OnIFFCheckedClick
          end
          object edtIFFTransponderControlMode1: TEdit
            Tag = 1
            Left = 87
            Top = 120
            Width = 27
            Height = 21
            MaxLength = 2
            TabOrder = 5
            Text = '00'
            OnKeyPress = edtTransponderOnKeyPressed
          end
          object edtIFFTransponderControlMode2: TEdit
            Tag = 2
            Left = 88
            Top = 151
            Width = 85
            Height = 21
            MaxLength = 4
            TabOrder = 6
            Text = '0000'
            OnKeyPress = edtTransponderOnKeyPressed
          end
          object edtIFFTransponderControlMode3: TEdit
            Tag = 3
            Left = 88
            Top = 182
            Width = 85
            Height = 21
            MaxLength = 4
            TabOrder = 7
            Text = '0000'
            OnKeyPress = edtTransponderOnKeyPressed
          end
        end
      end
      object grbElectroOpticalSensor: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 4
        object btnElectroOpticalSensorExecuteSingleScan: TButton
          Left = 145
          Top = 367
          Width = 153
          Height = 25
          Caption = 'Execute Single Scan'
          TabOrder = 0
        end
        object ScrollBox3: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 1
          object Label1: TLabel
            Left = 3
            Top = 3
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel1: TBevel
            Left = 43
            Top = 10
            Width = 260
            Height = 3
          end
          object Label2: TLabel
            Left = 21
            Top = 21
            Width = 46
            Height = 13
            Caption = 'Periscope'
          end
          object Label3: TLabel
            Left = 3
            Top = 90
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Bevel2: TBevel
            Left = 45
            Top = 97
            Width = 260
            Height = 3
          end
          object Label4: TLabel
            Left = 153
            Top = 115
            Width = 57
            Height = 13
            Caption = 'Blind Zones '
          end
          object Label5: TLabel
            Left = 56
            Top = 115
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object sbElectroOpticalSensorDisplayRangeShow: TSpeedButton
            Left = 38
            Top = 134
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = sbElectroOpticalSensorOnClick
          end
          object sbElectroOpticalSensorDisplayRangeHide: TSpeedButton
            Left = 38
            Top = 155
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = sbElectroOpticalSensorOnClick
          end
          object sbElectroOpticalSensorBlindZoneShow: TSpeedButton
            Left = 142
            Top = 134
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = sbElectroOpticalSensorOnClick
          end
          object sbElectroOpticalSensorBlindZoneHide: TSpeedButton
            Left = 142
            Top = 155
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = sbElectroOpticalSensorOnClick
          end
          object sbElectroOpticalSensorControlModeOn: TSpeedButton
            Left = 7
            Top = 38
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Up'
            OnClick = sbElectroOpticalSensorOnClick
          end
          object sbElectroOpticalSensorControlModeOff: TSpeedButton
            Left = 7
            Top = 59
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Down'
            OnClick = sbElectroOpticalSensorOnClick
          end
        end
      end
      object grbESMSensorControl: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 2
        object ScrollBox4: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Label6: TLabel
            Left = 3
            Top = 3
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel3: TBevel
            Left = 43
            Top = 10
            Width = 232
            Height = 3
          end
          object Label7: TLabel
            Left = 35
            Top = 22
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label8: TLabel
            Left = 3
            Top = 90
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Bevel4: TBevel
            Left = 45
            Top = 97
            Width = 232
            Height = 3
          end
          object Label9: TLabel
            Left = 25
            Top = 115
            Width = 57
            Height = 13
            Caption = 'Blind Zones '
          end
          object sbESMSensorControlModeOn: TSpeedButton
            Tag = 1
            Left = 14
            Top = 40
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'On'
            OnClick = sbESMSensorControlModeClick
          end
          object sbESMSensorControlModeOff: TSpeedButton
            Tag = 2
            Left = 14
            Top = 60
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Off'
            OnClick = sbESMSensorControlModeClick
          end
          object sbESMSensorDisplayBlindZoneShow: TSpeedButton
            Tag = 3
            Left = 14
            Top = 129
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Show'
            OnClick = sbESMSensorControlModeClick
          end
          object sbESMSensorDisplayBlindZoneHide: TSpeedButton
            Tag = 4
            Left = 14
            Top = 149
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Hide'
            OnClick = sbESMSensorControlModeClick
          end
        end
      end
      object grbSonobuoyControl: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 5
        object ScrollBox7: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel10: TBevel
            Left = 43
            Top = 10
            Width = 260
            Height = 3
          end
          object Bevel11: TBevel
            Left = 45
            Top = 56
            Width = 260
            Height = 3
          end
          object Bevel12: TBevel
            Left = 41
            Top = 169
            Width = 260
            Height = 3
          end
          object btnSonobuoyControlCombo: TSpeedButton
            Left = 280
            Top = 67
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
            OnClick = btnSonobuoyControlComboClick
          end
          object Label17: TLabel
            Left = 3
            Top = 3
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Label18: TLabel
            Left = 3
            Top = 49
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label19: TLabel
            Left = 35
            Top = 72
            Width = 33
            Height = 13
            Caption = 'Mode :'
          end
          object Label20: TLabel
            Left = 107
            Top = 22
            Width = 49
            Height = 13
            Caption = 'Quantity :'
          end
          object Label21: TLabel
            Left = 35
            Top = 103
            Width = 36
            Height = 13
            Caption = 'Depth :'
          end
          object Label22: TLabel
            Left = 159
            Top = 103
            Width = 33
            Height = 13
            Caption = 'metres'
          end
          object Label23: TLabel
            Left = 3
            Top = 161
            Width = 36
            Height = 13
            Caption = 'Monitor'
          end
          object Label24: TLabel
            Left = 35
            Top = 186
            Width = 128
            Height = 13
            Caption = 'Platform Monitor Capacity:'
          end
          object Label25: TLabel
            Left = 35
            Top = 215
            Width = 105
            Height = 13
            Caption = 'Currently Monitoring :'
          end
          object Label26: TLabel
            Left = 208
            Top = 186
            Width = 54
            Height = 13
            Caption = 'sonobuy(s)'
          end
          object Label27: TLabel
            Left = 208
            Top = 215
            Width = 54
            Height = 13
            Caption = 'sonobuy(s)'
          end
          object lblSonobuoyMonitorCurrently: TLabel
            Left = 190
            Top = 215
            Width = 6
            Height = 13
            Caption = '0'
          end
          object lblSonobuoyMonitorPlatform: TLabel
            Left = 188
            Top = 186
            Width = 12
            Height = 13
            Caption = '50'
          end
          object lblStatusSonobuoy: TLabel
            Left = 35
            Top = 22
            Width = 43
            Height = 13
            Caption = 'Available'
          end
          object lbStatusQuantity: TLabel
            Left = 162
            Top = 22
            Width = 18
            Height = 13
            Caption = '100'
          end
          object btnSonobuoyControlDeploy: TButton
            Left = 228
            Top = 134
            Width = 75
            Height = 25
            Caption = 'Deploy'
            TabOrder = 0
            OnClick = btnSonobuoyControlDeployClick
          end
          object editControlDepth: TEdit
            Left = 80
            Top = 99
            Width = 73
            Height = 21
            TabOrder = 1
            Text = '1'
          end
          object editControlMode: TEdit
            Left = 80
            Top = 68
            Width = 194
            Height = 21
            TabOrder = 2
            Text = 'Passive'
          end
        end
      end
      object grbAnomalyDetectorSensor: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 3
        object Label225: TLabel
          Left = 3
          Top = 3
          Width = 35
          Height = 13
          Caption = 'Control'
        end
        object Bevel47: TBevel
          Left = 43
          Top = 10
          Width = 260
          Height = 3
        end
        object Label230: TLabel
          Left = 35
          Top = 22
          Width = 26
          Height = 13
          Caption = 'Mode'
        end
        object sbAnomalyDetectorControlModeOn: TSpeedButton
          Left = 14
          Top = 38
          Width = 76
          Height = 22
          HelpContext = 1
          AllowAllUp = True
          GroupIndex = 3
          Caption = 'On'
          OnClick = sbAnomalyDetectorOnClick
        end
        object sbAnomalyDetectorControlModeOff: TSpeedButton
          Left = 14
          Top = 59
          Width = 76
          Height = 22
          AllowAllUp = True
          GroupIndex = 3
          Down = True
          Caption = 'Off'
          OnClick = sbAnomalyDetectorOnClick
        end
      end
      object grbVisualDetectorSensor: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 6
        object Label257: TLabel
          Left = 5
          Top = 3
          Width = 34
          Height = 13
          Caption = 'Display'
        end
        object Bevel51: TBevel
          Left = 43
          Top = 10
          Width = 260
          Height = 3
        end
        object Label258: TLabel
          Left = 145
          Top = 28
          Width = 57
          Height = 13
          Caption = 'Blind Zones '
        end
        object Label259: TLabel
          Left = 51
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Range'
        end
        object sbVisualDetectorDisplayRangeShow: TSpeedButton
          Tag = 1
          Left = 30
          Top = 44
          Width = 76
          Height = 22
          HelpContext = 1
          AllowAllUp = True
          GroupIndex = 2
          Caption = 'Show'
          OnClick = sbVisualSensorClick
        end
        object sbVisualDetectorDisplayRangeHide: TSpeedButton
          Tag = 2
          Left = 30
          Top = 64
          Width = 76
          Height = 22
          AllowAllUp = True
          GroupIndex = 2
          Down = True
          Caption = 'Hide'
          OnClick = sbVisualSensorClick
        end
        object sbVisualDetectorDisplayBlindZonesShow: TSpeedButton
          Tag = 3
          Left = 132
          Top = 44
          Width = 76
          Height = 22
          HelpContext = 1
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'Show'
          OnClick = sbVisualSensorClick
        end
        object sbVisualDetectorDisplayBlindZonesHide: TSpeedButton
          Tag = 4
          Left = 132
          Top = 64
          Width = 76
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Down = True
          Caption = 'Hide'
          OnClick = sbVisualSensorClick
        end
      end
      object grbSearchRadarControl: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 0
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Label189: TLabel
            Left = 3
            Top = 0
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Bevel28: TBevel
            Left = 43
            Top = 7
            Width = 190
            Height = 3
          end
          object Label193: TLabel
            Left = 44
            Top = 18
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label194: TLabel
            Left = 243
            Top = 18
            Width = 28
            Height = 13
            Caption = 'ECCM'
          end
          object Label261: TLabel
            Left = 3
            Top = 192
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Bevel31: TBevel
            Left = 51
            Top = 199
            Width = 192
            Height = 3
          end
          object Label262: TLabel
            Left = 43
            Top = 208
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label263: TLabel
            Left = 132
            Top = 208
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object Label264: TLabel
            Left = 225
            Top = 208
            Width = 57
            Height = 13
            Caption = 'Scan Sector'
            Visible = False
          end
          object btnControlComboInterval: TSpeedButton
            Left = 270
            Top = 96
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
          end
          object sbControlEccmOn: TSpeedButton
            Tag = 12
            Left = 220
            Top = 34
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'On'
            Enabled = False
            OnClick = sbSearchRadarClick
          end
          object sbControlEccmOff: TSpeedButton
            Tag = 13
            Left = 220
            Top = 54
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Off'
            Enabled = False
            OnClick = sbSearchRadarClick
          end
          object sbRangeShow: TSpeedButton
            Tag = 1
            Left = 22
            Top = 223
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 4
            Caption = 'Show'
            OnClick = sbSearchRadarClick
          end
          object sbRangeHide: TSpeedButton
            Tag = 2
            Left = 22
            Top = 243
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Caption = 'Hide'
            OnClick = sbSearchRadarClick
          end
          object sbBlindShow: TSpeedButton
            Tag = 3
            Left = 120
            Top = 223
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 5
            Caption = 'Show'
            OnClick = sbSearchRadarClick
          end
          object sbBlindHide: TSpeedButton
            Tag = 4
            Left = 120
            Top = 243
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 5
            Down = True
            Caption = 'Hide'
            OnClick = sbSearchRadarClick
          end
          object sbScanShow: TSpeedButton
            Tag = 5
            Left = 215
            Top = 223
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 6
            Caption = 'Show'
            Visible = False
            OnClick = sbSearchRadarClick
          end
          object sbScanHide: TSpeedButton
            Tag = 6
            Left = 215
            Top = 243
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 6
            Down = True
            Caption = 'Hide'
            Visible = False
            OnClick = sbSearchRadarClick
          end
          object pnlScanSector: TPanel
            Left = 3
            Top = 120
            Width = 290
            Height = 79
            BevelOuter = bvNone
            TabOrder = 6
            Visible = False
            object Bevel30: TBevel
              Left = 76
              Top = 6
              Width = 175
              Height = 3
            end
            object Label200: TLabel
              Left = 3
              Top = -1
              Width = 57
              Height = 13
              Caption = 'Scan Sector'
            end
            object Label201: TLabel
              Left = 44
              Top = 13
              Width = 26
              Height = 13
              Caption = 'Mode'
            end
            object sbScanModePartial: TSpeedButton
              Tag = 8
              Left = 20
              Top = 27
              Width = 76
              Height = 22
              AllowAllUp = True
              GroupIndex = 1
              Caption = 'Partial'
              Enabled = False
              OnClick = sbSearchRadarClick
            end
            object sbScanModeFull: TSpeedButton
              Tag = 7
              Left = 20
              Top = 47
              Width = 76
              Height = 22
              HelpContext = 1
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Caption = 'Full'
              Enabled = False
              OnClick = sbSearchRadarClick
            end
            object Label202: TLabel
              Left = 136
              Top = 27
              Width = 31
              Height = 13
              Caption = 'Start :'
            end
            object Label203: TLabel
              Left = 136
              Top = 55
              Width = 25
              Height = 13
              Caption = 'End :'
            end
            object Label205: TLabel
              Left = 211
              Top = 33
              Width = 48
              Height = 13
              Caption = 'degrees T'
            end
            object Label204: TLabel
              Left = 211
              Top = 55
              Width = 48
              Height = 13
              Caption = 'degrees T'
            end
            object btnComboScanStrart: TSpeedButton
              Left = 267
              Top = 26
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
            end
            object editScanStart: TEdit
              Left = 175
              Top = 27
              Width = 30
              Height = 21
              Enabled = False
              TabOrder = 0
              Text = '000'
            end
            object editScanEnd: TEdit
              Left = 175
              Top = 50
              Width = 30
              Height = 21
              Enabled = False
              TabOrder = 1
              Text = '000'
            end
          end
          object pnlControlRadar: TPanel
            Left = 14
            Top = 29
            Width = 93
            Height = 68
            BevelOuter = bvNone
            TabOrder = 4
            object btnControlModeOff2: TSpeedButton
              Tag = 11
              Left = 1
              Top = 22
              Width = 81
              Height = 23
              AllowAllUp = True
              GroupIndex = 7
              Down = True
              Caption = 'Off'
              OnClick = sbSearchRadarClick
            end
            object btnControlModeOn: TSpeedButton
              Tag = 9
              Left = 1
              Top = 2
              Width = 81
              Height = 22
              AllowAllUp = True
              GroupIndex = 7
              Caption = 'On'
              OnClick = sbSearchRadarClick
            end
          end
          object pnlControlModeRadar2: TPanel
            Left = 14
            Top = 32
            Width = 90
            Height = 65
            BevelOuter = bvNone
            TabOrder = 5
            object sbControlModeSearch: TSpeedButton
              Tag = 9
              Left = 8
              Top = -1
              Width = 74
              Height = 22
              HelpContext = 1
              AllowAllUp = True
              GroupIndex = 7
              Caption = 'Search / Track'
              OnClick = sbSearchRadarClick
            end
            object sbControlModeTrack: TSpeedButton
              Tag = 10
              Left = 8
              Top = 19
              Width = 74
              Height = 22
              AllowAllUp = True
              GroupIndex = 7
              Caption = 'Track'
              OnClick = sbSearchRadarClick
            end
            object sbControlModeOff: TSpeedButton
              Tag = 11
              Left = 8
              Top = 39
              Width = 74
              Height = 22
              AllowAllUp = True
              GroupIndex = 7
              Down = True
              Caption = 'Off'
              OnClick = sbSearchRadarClick
            end
          end
          object cbActivationInterval: TCheckBox
            Left = 24
            Top = 98
            Width = 106
            Height = 17
            Caption = 'Activation Interval'
            Enabled = False
            TabOrder = 0
          end
          object editComboInterval: TEdit
            Left = 136
            Top = 96
            Width = 128
            Height = 21
            Enabled = False
            TabOrder = 1
            Text = 'None'
          end
          object btShowRangeAltitude: TButton
            Left = 22
            Top = 276
            Width = 117
            Height = 20
            Caption = 'Show Range Altitude..'
            Enabled = False
            TabOrder = 2
          end
          object btExecuteSingleScan: TButton
            Left = 185
            Top = 277
            Width = 106
            Height = 20
            Caption = 'Execute Single Scan'
            Enabled = False
            TabOrder = 3
          end
        end
      end
      object grbIFFInterrogatorControl: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 7
        object ScrollBox5: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel5: TBevel
            Left = 43
            Top = 5
            Width = 260
            Height = 3
          end
          object Bevel6: TBevel
            Left = 105
            Top = 139
            Width = 200
            Height = 3
          end
          object Bevel7: TBevel
            Left = 35
            Top = 88
            Width = 265
            Height = 3
          end
          object btnIFFInterrogatorTrackSearch: TSpeedButton
            Left = 96
            Top = 100
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
            OnClick = btnIFFInterrogatorTrackSearchClick
          end
          object Label10: TLabel
            Left = 3
            Top = -2
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label11: TLabel
            Left = 35
            Top = 17
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label12: TLabel
            Left = 3
            Top = 131
            Width = 101
            Height = 13
            Caption = 'Mode/Code Selection'
          end
          object Label13: TLabel
            Left = 3
            Top = 80
            Width = 26
            Height = 13
            Caption = 'Track'
          end
          object sbIFFInterrogatorControlModeOff: TSpeedButton
            Left = 12
            Top = 55
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Off'
            OnClick = btnIFFOnClick
          end
          object sbIFFInterrogatorControlModeOn: TSpeedButton
            Left = 12
            Top = 35
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'On'
            OnClick = btnIFFOnClick
          end
          object btnManual: TSpeedButton
            Left = 124
            Top = 52
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Manual'
            OnClick = btnIFFOnClick
          end
          object btnAutomatic: TSpeedButton
            Left = 124
            Top = 31
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Continuous'
            OnClick = btnIFFOnClick
          end
          object lblInterrogation: TLabel
            Left = 130
            Top = 16
            Width = 64
            Height = 13
            Caption = 'Interrogation'
          end
          object cbbtnIFFInterrogatorMode1: TCheckBox
            Left = 14
            Top = 157
            Width = 57
            Height = 17
            Caption = 'Mode 1 :'
            TabOrder = 0
            OnClick = OnIFFCheckedClick
          end
          object cbbtnIFFInterrogatorMode2: TCheckBox
            Left = 14
            Top = 184
            Width = 57
            Height = 17
            Caption = 'Mode 2 :'
            TabOrder = 1
            OnClick = OnIFFCheckedClick
          end
          object cbbtnIFFInterrogatorMode3: TCheckBox
            Left = 14
            Top = 211
            Width = 57
            Height = 17
            Caption = 'Mode 3 :'
            TabOrder = 2
            OnClick = OnIFFCheckedClick
          end
          object cbbtnIFFInterrogatorMode3C: TCheckBox
            Left = 14
            Top = 236
            Width = 57
            Height = 17
            Caption = 'Mode 3C :'
            TabOrder = 3
            OnClick = OnIFFCheckedClick
          end
          object cbbtnIFFInterrogatorMode4: TCheckBox
            Left = 14
            Top = 261
            Width = 57
            Height = 17
            Caption = 'Mode 4 :'
            TabOrder = 4
            OnClick = OnIFFCheckedClick
          end
          object editbtnIFFInterrogatorTrack: TEdit
            Left = 14
            Top = 101
            Width = 73
            Height = 21
            ReadOnly = True
            TabOrder = 5
          end
          object edtIFFInterrogatorMode1: TEdit
            Tag = 1
            Left = 87
            Top = 155
            Width = 27
            Height = 21
            MaxLength = 2
            TabOrder = 6
            Text = '00'
            OnKeyPress = edtInterrogatorOnKeyPress
          end
          object edtIFFInterrogatorMode2: TEdit
            Tag = 2
            Left = 88
            Top = 182
            Width = 85
            Height = 21
            MaxLength = 4
            TabOrder = 7
            Text = '0000'
            OnKeyPress = edtInterrogatorOnKeyPress
          end
          object edtIFFInterrogatorMode3: TEdit
            Tag = 3
            Left = 80
            Top = 209
            Width = 85
            Height = 21
            MaxLength = 4
            TabOrder = 8
            Text = '0000'
            OnKeyPress = edtInterrogatorOnKeyPress
          end
        end
      end
      object grbSonarControl: TGroupBox
        Left = 3
        Top = 3
        Width = 317
        Height = 316
        Align = alClient
        TabOrder = 1
        object ScrollBox2: TScrollBox
          Left = 2
          Top = 15
          Width = 313
          Height = 299
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Bevel37: TBevel
            Left = 44
            Top = 4
            Width = 262
            Height = 3
          end
          object Bevel43: TBevel
            Left = 45
            Top = 220
            Width = 265
            Height = 3
          end
          object Label213: TLabel
            Left = 3
            Top = -2
            Width = 35
            Height = 13
            Caption = 'Control'
          end
          object Label214: TLabel
            Left = 43
            Top = 10
            Width = 26
            Height = 13
            Caption = 'Mode'
          end
          object Label237: TLabel
            Left = 3
            Top = 212
            Width = 34
            Height = 13
            Caption = 'Display'
          end
          object Label238: TLabel
            Left = 43
            Top = 231
            Width = 31
            Height = 13
            Caption = 'Range'
          end
          object Label239: TLabel
            Left = 145
            Top = 231
            Width = 54
            Height = 13
            Caption = 'Blind Zones'
          end
          object sbDisplayBlindHide: TSpeedButton
            Tag = 8
            Left = 133
            Top = 267
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Caption = 'Hide'
            OnClick = sbSonarClick
          end
          object sbDisplayBlindShow: TSpeedButton
            Tag = 9
            Left = 133
            Top = 246
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 4
            Caption = 'Show'
            OnClick = sbSonarClick
          end
          object sbDisplayRangeHide: TSpeedButton
            Tag = 6
            Left = 26
            Top = 267
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Hide'
            OnClick = sbSonarClick
          end
          object sbDisplayRangeShow: TSpeedButton
            Tag = 7
            Left = 26
            Top = 246
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'Show'
            OnClick = sbSonarClick
          end
          object sbSonarControlModeActive: TSpeedButton
            Tag = 1
            Left = 22
            Top = 28
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Active'
            OnClick = sbSonarClick
          end
          object sbSonarControlModeOff: TSpeedButton
            Tag = 3
            Left = 22
            Top = 67
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 1
            Down = True
            Caption = 'Off'
            OnClick = sbSonarClick
          end
          object sbSonarControlModePassive: TSpeedButton
            Tag = 2
            Left = 22
            Top = 48
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 1
            Caption = 'Passive'
            OnClick = sbSonarClick
          end
          object lblRangeTIOW: TLabel
            Left = 138
            Top = 10
            Width = 64
            Height = 13
            Caption = 'Range (kyds)'
            Visible = False
          end
          object btnRange1: TSpeedButton
            Tag = 10
            Left = 132
            Top = 28
            Width = 76
            Height = 22
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Caption = 'Short'
            Visible = False
            OnClick = sbSonarClick
          end
          object btnRAnge2: TSpeedButton
            Tag = 11
            Left = 132
            Top = 48
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Medium'
            Visible = False
            OnClick = sbSonarClick
          end
          object btnRange3: TSpeedButton
            Tag = 12
            Left = 132
            Top = 67
            Width = 76
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Caption = 'Long'
            Visible = False
            OnClick = sbSonarClick
          end
          object pnlDeployment: TPanel
            Left = -1
            Top = 89
            Width = 311
            Height = 126
            BevelOuter = bvNone
            TabOrder = 0
            object Bevel39: TBevel
              Left = 65
              Top = 11
              Width = 245
              Height = 3
            end
            object Bevel41: TBevel
              Left = 202
              Top = 26
              Width = 105
              Height = 3
            end
            object Bevel42: TBevel
              Left = 170
              Top = 95
              Width = 140
              Height = 3
            end
            object Label215: TLabel
              Left = 43
              Top = 22
              Width = 30
              Height = 13
              Caption = 'Action'
            end
            object Label216: TLabel
              Left = 3
              Top = 3
              Width = 57
              Height = 13
              Caption = 'Deployment'
            end
            object Label221: TLabel
              Left = 132
              Top = 43
              Width = 47
              Height = 13
              Caption = 'Ordered :'
            end
            object Label222: TLabel
              Left = 132
              Top = 66
              Width = 37
              Height = 13
              Caption = 'Actual :'
            end
            object Label223: TLabel
              Left = 250
              Top = 43
              Width = 33
              Height = 13
              Caption = 'metres'
            end
            object Label224: TLabel
              Left = 250
              Top = 66
              Width = 33
              Height = 13
              Caption = 'metres'
            end
            object Label226: TLabel
              Left = 22
              Top = 92
              Width = 41
              Height = 13
              Caption = 'Status : '
            end
            object Label228: TLabel
              Left = 132
              Top = 109
              Width = 41
              Height = 13
              Caption = 'Settled :'
            end
            object Label229: TLabel
              Left = 132
              Top = 129
              Width = 37
              Height = 13
              Caption = 'Actual :'
            end
            object Label232: TLabel
              Left = 250
              Top = 109
              Width = 33
              Height = 13
              Caption = 'metres'
            end
            object Label233: TLabel
              Left = 250
              Top = 129
              Width = 33
              Height = 13
              Caption = 'metres'
            end
            object Label234: TLabel
              Left = 132
              Top = 149
              Width = 60
              Height = 13
              Caption = 'Tow Speed :'
            end
            object Label236: TLabel
              Left = 250
              Top = 149
              Width = 26
              Height = 13
              Caption = 'knots'
            end
            object LabelCablePayout: TLabel
              Left = 132
              Top = 19
              Width = 64
              Height = 13
              Caption = 'Cable Payout'
            end
            object LabelDepth: TLabel
              Left = 132
              Top = 89
              Width = 29
              Height = 13
              Caption = 'Depth'
            end
            object lbCableActual: TLabel
              Left = 187
              Top = 66
              Width = 12
              Height = 13
              Caption = '---'
            end
            object lbDepthActual: TLabel
              Left = 212
              Top = 129
              Width = 12
              Height = 13
              Caption = '---'
            end
            object lbDepthSettled: TLabel
              Left = 212
              Top = 109
              Width = 12
              Height = 13
              Caption = '---'
            end
            object lbDepthTow: TLabel
              Left = 212
              Top = 129
              Width = 12
              Height = 13
              Caption = '---'
            end
            object lblStatusDeployment: TLabel
              Left = 62
              Top = 92
              Width = 45
              Height = 13
              Caption = 'Deployed'
            end
            object sbDeploymentActiondeploy: TSpeedButton
              Tag = 4
              Left = 22
              Top = 41
              Width = 76
              Height = 22
              HelpContext = 1
              AllowAllUp = True
              Caption = 'Deploy'
              OnClick = sbSonarClick
            end
            object sbDeploymentActionShow: TSpeedButton
              Tag = 5
              Left = 22
              Top = 61
              Width = 76
              Height = 22
              AllowAllUp = True
              Caption = 'Stow'
              OnClick = sbSonarClick
            end
            object editCableOrdered: TEdit
              Left = 187
              Top = 39
              Width = 41
              Height = 21
              TabOrder = 0
              Text = '000'
            end
          end
        end
      end
    end
  end
  object pmModeSonobuoy: TPopupMenu
    Left = 272
    Top = 152
  end
end
