object Ruler: TRuler
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Ruler'
  ClientHeight = 420
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc_Ruler: TPageControl
    Left = 8
    Top = 8
    Width = 281
    Height = 369
    ActivePage = ts_Position
    TabOrder = 0
    object ts_Position: TTabSheet
      Caption = 'Position'
      ExplicitWidth = 353
      object pnl_Position: TPanel
        Left = 8
        Top = 8
        Width = 257
        Height = 321
        TabOrder = 0
        object lbl_PRange: TLabel
          Left = 16
          Top = 21
          Width = 50
          Height = 16
          Caption = 'Range     :'
        end
        object lbl_PBearing: TLabel
          Left = 16
          Top = 43
          Width = 49
          Height = 13
          Caption = 'Bearing   :'
        end
        object lbl_PStartValueOfRange: TLabel
          Left = 88
          Top = 21
          Width = 6
          Height = 16
          Caption = '0'
        end
        object lbl_PStartValueOfBearing: TLabel
          Left = 88
          Top = 43
          Width = 6
          Height = 13
          Caption = '0'
        end
        object lbl_UnitBearing: TLabel
          Left = 139
          Top = 43
          Width = 49
          Height = 13
          Caption = 'Degrees T'
        end
        object lbl_PUnit: TLabel
          Left = 160
          Top = 24
          Width = 3
          Height = 13
        end
        object lbl_PosUnit: TLabel
          Left = 139
          Top = 21
          Width = 15
          Height = 16
          Caption = 'Nm'
        end
        object grp_PStart: TGroupBox
          Left = 16
          Top = 65
          Width = 225
          Height = 97
          Caption = 'Start'
          TabOrder = 0
          object lbl_PStartLat: TLabel
            Left = 15
            Top = 24
            Width = 15
            Height = 13
            Caption = 'Lat'
          end
          object lbl_PStartLong: TLabel
            Left = 15
            Top = 56
            Width = 23
            Height = 13
            Caption = 'Long'
          end
          object btn_PStart: TSpeedButton
            Tag = 1
            Left = 178
            Top = 32
            Width = 33
            Height = 33
            GroupIndex = 2
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
              4D505160636447494B4B4E504548485458584CB1224CB1224CB1228B91934042
              434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
              00000000000000000000000606064CB1224CB1224CB122585B5E000000000000
              000000000000000000000000010101232323222222060607585B5C5E62634548
              4A4A4D504447485457584CB1224CB1224CB1228C91953E4143494B4E484B4D4D
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
            OnClick = btn_PStartClick
          end
          object edt_PStartValueOfLat: TEdit
            Left = 55
            Top = 24
            Width = 117
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = '0'
          end
          object edt_PStartValueOfLong: TEdit
            Left = 55
            Top = 51
            Width = 117
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = '0'
          end
        end
        object grp_PEnd: TGroupBox
          Left = 16
          Top = 168
          Width = 225
          Height = 97
          Caption = 'End'
          TabOrder = 1
          object lbl_PEndLat: TLabel
            Left = 15
            Top = 24
            Width = 15
            Height = 13
            Caption = 'Lat'
          end
          object lbl_PEndLong: TLabel
            Left = 15
            Top = 56
            Width = 23
            Height = 13
            Caption = 'Long'
          end
          object btn_PEnd: TSpeedButton
            Tag = 2
            Left = 178
            Top = 31
            Width = 33
            Height = 33
            GroupIndex = 2
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
              4D505160636447494B4B4E50454848545858241CED241CED241CED8B91934042
              434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
              0000000000000000000000060606241CED241CED241CED585B5E000000000000
              000000000000000000000000010101232323222222060607585B5C5E62634548
              4A4A4D50444748545758241CED241CED241CED8C91953E4143494B4E484B4D4D
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
            OnClick = btn_PEndClick
          end
          object edt_PEndValueOfLat: TEdit
            Left = 54
            Top = 24
            Width = 118
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = '0'
          end
          object edt_PEndValueOfLong: TEdit
            Left = 55
            Top = 51
            Width = 117
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = '0'
          end
        end
      end
    end
    object ts_Range: TTabSheet
      Caption = 'Range'
      ImageIndex = 1
      ExplicitWidth = 309
      object pnl_Range: TPanel
        Left = 7
        Top = 8
        Width = 282
        Height = 305
        TabOrder = 0
        object lbl_RRange: TLabel
          Left = 23
          Top = 21
          Width = 44
          Height = 13
          Caption = 'Range   :'
        end
        object lbl_RBearing: TLabel
          Left = 24
          Top = 47
          Width = 43
          Height = 13
          Caption = 'Bearing :'
        end
        object lbl_Degrees: TLabel
          Left = 161
          Top = 48
          Width = 48
          Height = 13
          Caption = 'Degress T'
        end
        object lbl_Unit: TLabel
          Left = 161
          Top = 22
          Width = 15
          Height = 13
          Caption = 'Nm'
        end
        object btn_RStart: TSpeedButton
          Tag = 1
          Left = 218
          Top = 28
          Width = 33
          Height = 33
          GroupIndex = 2
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
            4D505160636447494B4B4E504548485458584CB1224CB1224CB1228B91934042
            434A4D4E494C4D4D5151686D6E2C2D2E00000022222224242400000000000000
            00000000000000000000000606064CB1224CB1224CB122585B5E000000000000
            000000000000000000000000010101232323222222060607585B5C5E62634548
            4A4A4D504447485457584CB1224CB1224CB1228C91953E4143494B4E484B4D4D
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
          OnClick = btn_RStartClick
        end
        object edt_RValueofRange: TEdit
          Left = 74
          Top = 19
          Width = 81
          Height = 21
          TabOrder = 0
          Text = '0'
          OnKeyPress = edt_RValueofRangeKeyPress
        end
        object edt_RValueOfBearing: TEdit
          Left = 74
          Top = 46
          Width = 81
          Height = 21
          TabOrder = 1
          Text = '0'
          OnKeyPress = edt_RValueOfBearingKeyPress
        end
        object grp_RStart: TGroupBox
          Left = 23
          Top = 72
          Width = 234
          Height = 89
          Caption = 'Start'
          TabOrder = 2
          object lbl_RStartLat: TLabel
            Left = 16
            Top = 24
            Width = 15
            Height = 13
            Caption = 'Lat'
          end
          object lbl_RStartLong: TLabel
            Left = 16
            Top = 56
            Width = 23
            Height = 13
            Caption = 'Long'
          end
          object edt_RStartValueOfLat: TEdit
            Left = 51
            Top = 24
            Width = 145
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = '0'
          end
          object edt_RStartValueOfLong: TEdit
            Left = 51
            Top = 51
            Width = 145
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = '0'
          end
        end
        object grp_REnd: TGroupBox
          Left = 23
          Top = 167
          Width = 234
          Height = 89
          Caption = 'End'
          TabOrder = 3
          object lbl_REndLat: TLabel
            Left = 16
            Top = 24
            Width = 15
            Height = 13
            Caption = 'Lat'
          end
          object lbl_REndLong: TLabel
            Left = 16
            Top = 59
            Width = 23
            Height = 13
            Caption = 'Long'
          end
          object edt_REndValueOfLat: TEdit
            Left = 51
            Top = 24
            Width = 145
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = '0'
          end
          object edt_REndValueOfLong: TEdit
            Left = 51
            Top = 51
            Width = 145
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = '0'
          end
        end
      end
    end
  end
  object cbb_Unit: TComboBox
    Left = 144
    Top = 386
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Nm'
    OnChange = cbb_UnitChange
    Items.Strings = (
      'Nm'
      'Km'
      'Yard')
  end
end
