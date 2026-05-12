object fSettingCoordinate: TfSettingCoordinate
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Options'
  ClientHeight = 216
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 8
    Top = 8
    Width = 381
    Height = 165
    TabOrder = 0
    object pgc1: TPageControl
      Left = 0
      Top = 0
      Width = 377
      Height = 161
      ActivePage = ts2
      TabOrder = 0
      object ts2: TTabSheet
        Caption = 'Coordinate System'
        ImageIndex = 1
        object pnl1: TPanel
          Left = -4
          Top = 1
          Width = 373
          Height = 136
          TabOrder = 0
          object rbLongLat: TRadioButton
            Tag = 1
            Left = 16
            Top = 10
            Width = 113
            Height = 17
            Caption = 'Latitude / Longitude'
            TabOrder = 0
            OnClick = rbLongLatClick
          end
          object rbCartesianGrid: TRadioButton
            Tag = 2
            Left = 16
            Top = 35
            Width = 113
            Height = 17
            Caption = 'Cartesian Grid'
            TabOrder = 1
            OnClick = rbLongLatClick
          end
          object rbGeoref: TRadioButton
            Tag = 3
            Left = 16
            Top = 62
            Width = 289
            Height = 17
            Caption = 'World Geographyc Reference System (GEOREF)'
            TabOrder = 2
            OnClick = rbLongLatClick
          end
        end
      end
      object ts3: TTabSheet
        Caption = 'Track Simbols'
        ImageIndex = 2
        TabVisible = False
        object lb1: TLabel
          Left = 16
          Top = 38
          Width = 84
          Height = 13
          Caption = 'Force affiliation : '
        end
        object lb2: TLabel
          Left = 16
          Top = 65
          Width = 83
          Height = 13
          Caption = 'Color scheme    : '
        end
        object btnWeapon: TSpeedButton
          Tag = 1
          Left = 233
          Top = 36
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
        end
        object btn1: TSpeedButton
          Tag = 1
          Left = 233
          Top = 64
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
        end
        object chkShowFormation: TCheckBox
          Left = 16
          Top = 10
          Width = 169
          Height = 17
          Caption = 'Show formation leaders'
          TabOrder = 0
        end
        object edtForceAffiliation: TEdit
          Left = 106
          Top = 36
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 1
        end
        object edtColorScheme: TEdit
          Left = 106
          Top = 63
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 2
        end
      end
      object ts4: TTabSheet
        Caption = 'Track Labels'
        ImageIndex = 3
        TabVisible = False
        object rb4: TRadioButton
          Left = 16
          Top = 10
          Width = 113
          Height = 17
          Caption = 'Number'
          TabOrder = 0
        end
        object rbController: TRadioButton
          Left = 32
          Top = 33
          Width = 113
          Height = 17
          Caption = 'Controller'
          TabOrder = 1
        end
        object rbCubicle: TRadioButton
          Left = 32
          Top = 56
          Width = 113
          Height = 17
          Caption = 'Cubicle'
          TabOrder = 2
        end
        object rbIdentifier: TRadioButton
          Left = 16
          Top = 83
          Width = 113
          Height = 17
          Caption = 'Identifier'
          TabOrder = 3
        end
      end
      object ts1: TTabSheet
        Caption = 'Other'
        ImageIndex = 3
        TabVisible = False
        object chk1: TCheckBox
          Left = 16
          Top = 10
          Width = 177
          Height = 17
          Caption = 'Enable weapon filtering'
          TabOrder = 0
        end
      end
    end
  end
  object btnClose: TButton
    Left = 313
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
end
