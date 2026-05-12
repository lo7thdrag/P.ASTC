inherited fmEMCON: TfmEMCON
  Width = 336
  Height = 412
  ParentFont = False
  ExplicitWidth = 336
  ExplicitHeight = 412
  object PanelEmconChoices: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 97
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object LvEmcon: TListView
      Left = 1
      Top = 1
      Width = 334
      Height = 95
      Align = alClient
      Columns = <
        item
          Caption = 'Name'
          Width = 150
        end
        item
          Caption = 'Status'
        end>
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object PaneALL: TPanel
    Left = 0
    Top = 97
    Width = 336
    Height = 315
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    ExplicitHeight = 417
    object PanelEmcon: TPanel
      Left = 0
      Top = 0
      Width = 336
      Height = 315
      Align = alClient
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 417
      object ScrollBox2: TScrollBox
        Left = 1
        Top = 1
        Width = 334
        Height = 313
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        ExplicitHeight = 344
        object Bevel17: TBevel
          Left = 131
          Top = 12
          Width = 187
          Height = 3
        end
        object Bevel18: TBevel
          Left = 73
          Top = 232
          Width = 80
          Height = 3
        end
        object Label562: TLabel
          Left = 13
          Top = 226
          Width = 54
          Height = 13
          Caption = 'All Systems'
        end
        object sbEmconAllSystemsAllSilent: TSpeedButton
          Left = 26
          Top = 250
          Width = 80
          Height = 25
          HelpContext = 1
          AllowAllUp = True
          GroupIndex = 3
          Caption = 'All Silent'
          OnClick = sbEmconAllClick
        end
        object sbEmconAllSystemsClearAll: TSpeedButton
          Left = 26
          Top = 274
          Width = 80
          Height = 25
          AllowAllUp = True
          GroupIndex = 3
          Down = True
          Caption = 'Clear All'
          OnClick = sbEmconAllClick
        end
        object btnEmconDistributeToGroup: TButton
          Left = 208
          Top = 26
          Width = 110
          Height = 25
          Caption = 'Distribute to Group'
          Enabled = False
          TabOrder = 0
          Visible = False
        end
        object cbEmconAcousticDecoys: TCheckBox
          Left = 13
          Top = 206
          Width = 190
          Height = 17
          Caption = 'Acoustic Decoys'
          TabOrder = 1
        end
        object cbEmconActiveSonar: TCheckBox
          Left = 13
          Top = 189
          Width = 190
          Height = 17
          Caption = 'Active Sonar'
          TabOrder = 2
          OnClick = cbEmconSearchRadarClick
        end
        object cbEmconFireControl: TCheckBox
          Left = 13
          Top = 47
          Width = 190
          Height = 17
          Caption = 'Fire Control Radar'
          TabOrder = 3
          OnClick = cbEmconSearchRadarClick
        end
        object cbEmconHFComm: TCheckBox
          Left = 13
          Top = 110
          Width = 190
          Height = 17
          Caption = 'HF Communications'
          TabOrder = 4
        end
        object cbEmconHFDatalink: TCheckBox
          Left = 13
          Top = 140
          Width = 190
          Height = 17
          Caption = 'HF Datalink'
          TabOrder = 5
          OnClick = cbEmconSearchRadarClick
        end
        object cbEmconIFF: TCheckBox
          Left = 13
          Top = 65
          Width = 190
          Height = 17
          Caption = 'IFF'
          TabOrder = 6
          OnClick = cbEmconSearchRadarClick
        end
        object cbEmconJammingSystems: TCheckBox
          Left = 13
          Top = 80
          Width = 190
          Height = 17
          Caption = 'Jamming Systems'
          TabOrder = 7
        end
        object cbEmconLasers: TCheckBox
          Left = 13
          Top = 95
          Width = 190
          Height = 17
          Caption = 'Lasers'
          TabOrder = 8
        end
        object cbEmconSearchRadar: TCheckBox
          Left = 13
          Top = 30
          Width = 190
          Height = 17
          Caption = 'Search Radar'
          TabOrder = 9
          OnClick = cbEmconSearchRadarClick
        end
        object cbEmconUWT: TCheckBox
          Left = 13
          Top = 173
          Width = 190
          Height = 17
          Caption = 'UWT'
          TabOrder = 10
        end
        object cbEmconVHFUHFComm: TCheckBox
          Left = 13
          Top = 125
          Width = 190
          Height = 17
          Caption = 'VHF/UHF Communications'
          TabOrder = 11
        end
        object cbEmconVHFUHFDatalink: TCheckBox
          Left = 13
          Top = 157
          Width = 190
          Height = 17
          Caption = 'VHF/UHF Datalink'
          TabOrder = 12
          OnClick = cbEmconSearchRadarClick
        end
        object cbxEmcon: TComboBox
          Left = 13
          Top = 6
          Width = 112
          Height = 21
          TabOrder = 13
          Text = 'EMCON inhibit'
        end
        object pnlGroupAirbone: TPanel
          Left = 150
          Top = 210
          Width = 168
          Height = 91
          BevelOuter = bvNone
          TabOrder = 14
          Visible = False
          object Label87: TLabel
            Left = 12
            Top = 16
            Width = 101
            Height = 13
            Caption = 'Group Airbone Radar'
            Enabled = False
          end
          object Bevel22: TBevel
            Left = 119
            Top = 22
            Width = 40
            Height = 3
          end
          object sbEmconGroupAirboneEMCON: TSpeedButton
            Left = 25
            Top = 59
            Width = 80
            Height = 25
            HelpContext = 1
            AllowAllUp = True
            GroupIndex = 2
            Caption = 'EMCON'
            Enabled = False
          end
          object sbEmconGroupAirboneClear: TSpeedButton
            Left = 25
            Top = 35
            Width = 80
            Height = 25
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Caption = 'Clear'
            Enabled = False
          end
        end
      end
    end
  end
end
