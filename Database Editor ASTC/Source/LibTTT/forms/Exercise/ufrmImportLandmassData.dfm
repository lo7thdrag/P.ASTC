object frmImportLandmassData: TfrmImportLandmassData
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Geography Import'
  ClientHeight = 634
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl3Button: TPanel
    Left = 0
    Top = 591
    Width = 555
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 586
    ExplicitWidth = 545
    object btnClose: TButton
      Left = 462
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object pnlFilter: TPanel
    Left = 0
    Top = 90
    Width = 555
    Height = 496
    Align = alClient
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 95
    ExplicitWidth = 545
    ExplicitHeight = 486
    object grbImportFilters: TGroupBox
      Left = 13
      Top = 6
      Width = 529
      Height = 443
      Caption = 'Import Filters  '
      TabOrder = 0
      object cbCoastline: TCheckBox
        Left = 11
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Coastline'
        TabOrder = 0
        OnClick = LayerDataChange
      end
      object grbDepthContours: TGroupBox
        Left = 12
        Top = 54
        Width = 505
        Height = 112
        TabOrder = 1
        object cb10mDepthCountours: TCheckBox
          Left = 24
          Top = 16
          Width = 74
          Height = 17
          Caption = '0 - 10m'
          Enabled = False
          TabOrder = 0
        end
        object cb20mDepthCountours: TCheckBox
          Left = 24
          Top = 38
          Width = 74
          Height = 17
          Caption = '11 - 20m'
          Enabled = False
          TabOrder = 1
        end
        object cb40mDepthCountours: TCheckBox
          Left = 24
          Top = 60
          Width = 74
          Height = 17
          Caption = '21 - 40m'
          Enabled = False
          TabOrder = 2
        end
        object cb60mDepthCountours: TCheckBox
          Left = 24
          Top = 82
          Width = 74
          Height = 17
          Caption = '41 - 60m'
          Enabled = False
          TabOrder = 3
        end
        object cb80mDepthCountours: TCheckBox
          Left = 106
          Top = 16
          Width = 85
          Height = 17
          Caption = '61 - 80m'
          Enabled = False
          TabOrder = 4
        end
        object cb100mDepthCountours: TCheckBox
          Left = 106
          Top = 39
          Width = 85
          Height = 17
          Caption = '81 - 100m'
          Enabled = False
          TabOrder = 5
        end
        object cb120mDepthCountours: TCheckBox
          Left = 106
          Top = 60
          Width = 85
          Height = 17
          Caption = '101 - 120m'
          Enabled = False
          TabOrder = 6
        end
        object cb140mDepthCountours: TCheckBox
          Left = 106
          Top = 82
          Width = 89
          Height = 17
          Caption = '121 - 140m'
          Enabled = False
          TabOrder = 7
        end
        object cb160mDepthCountours: TCheckBox
          Left = 203
          Top = 16
          Width = 85
          Height = 17
          Caption = '141 - 160m'
          Enabled = False
          TabOrder = 8
        end
        object cb180mDepthCountours: TCheckBox
          Left = 203
          Top = 39
          Width = 85
          Height = 17
          Caption = '161 - 180m'
          Enabled = False
          TabOrder = 9
        end
        object cb200mDepthCountours: TCheckBox
          Left = 203
          Top = 60
          Width = 85
          Height = 17
          Caption = '181 - 200m'
          Enabled = False
          TabOrder = 10
        end
        object cb300mDepthCountours: TCheckBox
          Left = 203
          Top = 82
          Width = 88
          Height = 17
          Caption = '201 - 300m'
          Enabled = False
          TabOrder = 11
        end
        object cb400mDepthCountours: TCheckBox
          Left = 299
          Top = 16
          Width = 94
          Height = 17
          Caption = '301 - 400m'
          Enabled = False
          TabOrder = 12
        end
        object cb500mDepthCountours: TCheckBox
          Left = 299
          Top = 39
          Width = 94
          Height = 17
          Caption = '401 - 500m'
          Enabled = False
          TabOrder = 13
        end
        object cb700mDepthCountours: TCheckBox
          Left = 299
          Top = 60
          Width = 94
          Height = 17
          Caption = '501 - 700m'
          Enabled = False
          TabOrder = 14
        end
        object cb1000mDepthCountours: TCheckBox
          Left = 299
          Top = 82
          Width = 94
          Height = 17
          Caption = '701 - 1000m'
          Enabled = False
          TabOrder = 15
        end
        object cbBelow1000mDepthCountours: TCheckBox
          Left = 401
          Top = 16
          Width = 101
          Height = 17
          Caption = 'below 1000m'
          Enabled = False
          TabOrder = 16
        end
      end
      object grbElevationContours: TGroupBox
        Left = 11
        Top = 181
        Width = 505
        Height = 92
        TabOrder = 2
        object cb100ftElevationContours: TCheckBox
          Left = 32
          Top = 16
          Width = 87
          Height = 17
          Caption = '1 - 100ft'
          Enabled = False
          TabOrder = 0
        end
        object cb200ftElevationContours: TCheckBox
          Left = 32
          Top = 39
          Width = 87
          Height = 17
          Caption = '101 - 200ft'
          Enabled = False
          TabOrder = 1
        end
        object cb500ftElevationContours: TCheckBox
          Left = 32
          Top = 62
          Width = 87
          Height = 17
          Caption = '201 - 500ft'
          Enabled = False
          TabOrder = 2
        end
        object cb1000ftElevationContours: TCheckBox
          Left = 134
          Top = 16
          Width = 100
          Height = 17
          Caption = '501 - 1000ft'
          Enabled = False
          TabOrder = 3
        end
        object cb1500ftElevationContours: TCheckBox
          Left = 134
          Top = 39
          Width = 100
          Height = 17
          Caption = '1001 - 1500ft'
          Enabled = False
          TabOrder = 4
        end
        object cb2000ftElevationContours: TCheckBox
          Left = 134
          Top = 62
          Width = 100
          Height = 17
          Caption = '1501 - 2000ft'
          Enabled = False
          TabOrder = 5
        end
        object cb3000ftElevationContours: TCheckBox
          Left = 249
          Top = 16
          Width = 99
          Height = 17
          Caption = '2001 - 3000ft'
          Enabled = False
          TabOrder = 6
        end
        object cb5000ftElevationContours: TCheckBox
          Left = 249
          Top = 39
          Width = 99
          Height = 17
          Caption = '3001 - 5000ft'
          Enabled = False
          TabOrder = 7
        end
        object cb7000ftElevationContours: TCheckBox
          Left = 249
          Top = 62
          Width = 99
          Height = 17
          Caption = '5001 - 7000ft'
          Enabled = False
          TabOrder = 8
        end
        object cb10000ftElevationContours: TCheckBox
          Left = 363
          Top = 16
          Width = 109
          Height = 17
          Caption = '7001 - 10000ft'
          Enabled = False
          TabOrder = 9
        end
        object cbAbove10000ftElevationContours: TCheckBox
          Left = 363
          Top = 39
          Width = 109
          Height = 17
          Caption = 'above 10000ft '
          Enabled = False
          TabOrder = 10
        end
      end
      object grbPopulatedPlaces: TGroupBox
        Left = 10
        Top = 288
        Width = 250
        Height = 42
        TabOrder = 3
        object cbPointsPopulatedPlaces: TCheckBox
          Left = 48
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Points'
          Enabled = False
          TabOrder = 0
          OnClick = LayerDataChange
        end
        object cbAreasPopulatedPlaces: TCheckBox
          Left = 136
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Areas'
          Enabled = False
          TabOrder = 1
          OnClick = LayerDataChange
        end
      end
      object grbAirports: TGroupBox
        Left = 266
        Top = 288
        Width = 250
        Height = 42
        TabOrder = 4
        object cbMilitaryAirports: TCheckBox
          Left = 12
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Military'
          Enabled = False
          TabOrder = 0
          OnClick = LayerDataChange
        end
        object cbCivilianAirports: TCheckBox
          Left = 97
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Civilian'
          Enabled = False
          TabOrder = 1
          OnClick = LayerDataChange
        end
        object cbOtherAirports: TCheckBox
          Left = 182
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Other'
          Enabled = False
          TabOrder = 2
          OnClick = LayerDataChange
        end
      end
      object grbRailroads: TGroupBox
        Left = 11
        Top = 345
        Width = 250
        Height = 42
        TabOrder = 5
        object cbPrimaryRailroads: TCheckBox
          Left = 42
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Primary'
          Enabled = False
          TabOrder = 0
          OnClick = LayerDataChange
        end
        object cbSecondaryRailroads: TCheckBox
          Left = 130
          Top = 14
          Width = 77
          Height = 17
          Caption = 'Secondary'
          Enabled = False
          TabOrder = 1
          OnClick = LayerDataChange
        end
      end
      object grbRoads: TGroupBox
        Left = 267
        Top = 345
        Width = 250
        Height = 42
        TabOrder = 6
        object cbPrimaryRoads: TCheckBox
          Left = 41
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Primary'
          Enabled = False
          TabOrder = 0
          OnClick = LayerDataChange
        end
        object cbSecondaryRoads: TCheckBox
          Left = 129
          Top = 14
          Width = 79
          Height = 17
          Caption = 'Secondary'
          Enabled = False
          TabOrder = 1
          OnClick = LayerDataChange
        end
      end
      object cbPoliticalBoundaries: TCheckBox
        Left = 15
        Top = 408
        Width = 118
        Height = 17
        Caption = 'Political Boundaries'
        TabOrder = 7
        OnClick = LayerDataChange
      end
      object cbWrecks: TCheckBox
        Left = 453
        Top = 408
        Width = 64
        Height = 17
        Caption = 'Wrecks'
        TabOrder = 8
        OnClick = LayerDataChange
      end
      object cbPipelines: TCheckBox
        Left = 193
        Top = 408
        Width = 69
        Height = 17
        Caption = 'Pipelines'
        TabOrder = 9
        OnClick = LayerDataChange
      end
      object cbPlatforms: TCheckBox
        Left = 321
        Top = 408
        Width = 72
        Height = 17
        Caption = 'Platforms'
        TabOrder = 10
        OnClick = LayerDataChange
      end
      object grbScaleFactor: TGroupBox
        Left = 11
        Top = 476
        Width = 505
        Height = 65
        Caption = 'Scale Factor'
        TabOrder = 11
        Visible = False
        object trckbrScaleFactor: TTrackBar
          Left = 3
          Top = 17
          Width = 399
          Height = 45
          Min = 1
          Position = 1
          TabOrder = 0
          OnChange = trckbrScaleFactorChange
        end
        object edtScaleFactor: TEdit
          Left = 408
          Top = 16
          Width = 46
          Height = 22
          TabOrder = 1
          Text = '1 : 1'
        end
        object lbl1ScaleFactor: TStaticText
          Left = 16
          Top = 45
          Width = 11
          Height = 18
          Caption = '1'
          TabOrder = 2
        end
        object lbl10ScaleFactor: TStaticText
          Left = 386
          Top = 45
          Width = 18
          Height = 18
          Caption = '10'
          TabOrder = 3
        end
      end
      object cbDepthContours: TCheckBox
        Left = 19
        Top = 46
        Width = 114
        Height = 17
        Caption = 'Depth Contours'
        TabOrder = 12
        OnClick = cbDepthContoursClick
      end
      object cbElevationContours: TCheckBox
        Left = 19
        Top = 172
        Width = 125
        Height = 17
        Caption = 'Elevation Contours'
        TabOrder = 13
        OnClick = cbElevationContoursClick
      end
      object cbPopulatedPlaces: TCheckBox
        Left = 19
        Top = 279
        Width = 114
        Height = 17
        Caption = 'Populated Places'
        TabOrder = 14
        OnClick = cbPopulatedPlacesClick
      end
      object cbAirports: TCheckBox
        Left = 276
        Top = 279
        Width = 67
        Height = 17
        Caption = 'Airports'
        TabOrder = 15
        OnClick = cbAirportsClick
      end
      object cbRailroads: TCheckBox
        Left = 19
        Top = 337
        Width = 70
        Height = 17
        Caption = 'Railroads'
        TabOrder = 16
        OnClick = cbRailroadsClick
      end
      object cbRoads: TCheckBox
        Left = 275
        Top = 337
        Width = 57
        Height = 17
        Caption = 'Roads'
        TabOrder = 17
        OnClick = cbRoadsClick
      end
    end
    object ProgressBar1: TProgressBar
      Left = 86
      Top = 459
      Width = 456
      Height = 17
      BarColor = clBlue
      TabOrder = 1
      Visible = False
    end
    object btnImport: TButton
      Left = 13
      Top = 455
      Width = 67
      Height = 25
      Caption = 'Import'
      TabOrder = 2
      OnClick = btnImportClick
    end
  end
  object pnlSource: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 85
    Align = alTop
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = -1
    object grbImportSource: TGroupBox
      Left = 13
      Top = 15
      Width = 529
      Height = 63
      Caption = 'Import Source  '
      TabOrder = 0
      object grbLibrary: TGroupBox
        Left = 205
        Top = 12
        Width = 311
        Height = 44
        Caption = 'Library  '
        TabOrder = 0
        object edtLibrary: TEdit
          Left = 3
          Top = 17
          Width = 215
          Height = 22
          ReadOnly = True
          TabOrder = 0
        end
        object btnBrowse: TButton
          Left = 224
          Top = 15
          Width = 75
          Height = 25
          Caption = 'Browse ...'
          TabOrder = 1
          OnClick = btnBrowseClick
        end
      end
      object cbbImportSource: TComboBox
        Left = 11
        Top = 29
        Width = 177
        Height = 22
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Vector SmartMap Level 0'
        OnChange = cbbImportSourceChange
        Items.Strings = (
          'Vector SmartMap Level 0')
      end
    end
  end
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 85
    Width = 555
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 5
    ExplicitTop = 90
    ExplicitWidth = 545
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 555
      Height = 5
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitWidth = 8
      ExplicitHeight = 637
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 586
    Width = 555
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 5
    ExplicitTop = 581
    ExplicitWidth = 545
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 555
      Height = 5
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitWidth = 8
      ExplicitHeight = 637
    end
  end
end
