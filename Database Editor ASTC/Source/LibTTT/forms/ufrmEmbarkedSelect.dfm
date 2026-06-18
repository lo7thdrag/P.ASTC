object frmEmbarkedSelect: TfrmEmbarkedSelect
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Vehicle'
  ClientHeight = 639
  ClientWidth = 754
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object shp1: TShape
    Left = 8
    Top = 374
    Width = 610
    Height = 2
  end
  object grpFilter: TGroupBox
    Left = 0
    Top = 156
    Width = 329
    Height = 270
    Caption = 'Filter'
    TabOrder = 0
    object lblSensorType: TLabel
      Left = 29
      Top = 95
      Width = 77
      Height = 14
      Caption = 'Sensor Type :'
    end
    object lbl1: TLabel
      Left = 239
      Top = 122
      Width = 49
      Height = 14
      Caption = 'on Board'
    end
    object lblWeaponType: TLabel
      Left = 29
      Top = 168
      Width = 86
      Height = 14
      Caption = 'Weapon Type :'
    end
    object lbl2: TLabel
      Left = 239
      Top = 195
      Width = 49
      Height = 14
      Caption = 'on Board'
    end
    object chkDomain: TCheckBox
      Left = 11
      Top = 18
      Width = 78
      Height = 17
      Caption = 'Domain'
      TabOrder = 0
      OnClick = chkDomainClick
    end
    object cbbFilterDomain: TComboBox
      Left = 109
      Top = 16
      Width = 204
      Height = 22
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 1
      Text = 'Air'
      OnChange = cbbFilterDomainChange
      Items.Strings = (
        'Air'
        'Surface'
        'Subsurface'
        'Land'
        'Amphibious')
    end
    object chkType: TCheckBox
      Left = 11
      Top = 45
      Width = 78
      Height = 17
      Caption = 'Type'
      TabOrder = 2
      OnClick = chkTypeClick
    end
    object chkSensor: TCheckBox
      Left = 11
      Top = 72
      Width = 126
      Height = 17
      Caption = 'Sensor Complement'
      TabOrder = 4
      OnClick = chkSensorClick
    end
    object chkWeapon: TCheckBox
      Left = 11
      Top = 148
      Width = 142
      Height = 14
      Caption = 'Weapon Complement'
      TabOrder = 8
      OnClick = chkWeaponClick
    end
    object chkEmbarked: TCheckBox
      Left = 11
      Top = 221
      Width = 149
      Height = 17
      Caption = 'Embarked Platform Class'
      TabOrder = 12
      OnClick = chkEmbarkedClick
    end
    object cbbFilterType: TComboBox
      Left = 109
      Top = 43
      Width = 204
      Height = 22
      Style = csDropDownList
      Enabled = False
      TabOrder = 3
      OnChange = cbbFilterTypeChange
    end
    object cbbFilterSensorType: TComboBox
      Left = 109
      Top = 92
      Width = 204
      Height = 22
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 5
      Text = 'Electro-Optical Detector'
      Items.Strings = (
        'Electro-Optical Detector'
        'Electronic Support Measures'
        'IFF Detector'
        'Magnetic Anomaly Detector'
        'Radar'
        'Sonar'
        'Sonobuoy'
        'Visual Detector')
    end
    object cbbFilterWeaponType: TComboBox
      Left = 109
      Top = 165
      Width = 204
      Height = 22
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 9
      Text = 'Mine'
      Items.Strings = (
        'Mine'
        'Missile'
        'Torpedo')
    end
    object edtFilterWeaponOnBoard: TEdit
      Left = 109
      Top = 192
      Width = 124
      Height = 22
      Enabled = False
      TabOrder = 10
    end
    object btnWeaponType: TButton
      Left = 288
      Top = 190
      Width = 25
      Height = 25
      Caption = '...'
      Enabled = False
      TabOrder = 11
    end
    object edtFilterEmbarkedPlatform: TEdit
      Left = 109
      Top = 241
      Width = 124
      Height = 22
      Enabled = False
      TabOrder = 13
    end
    object btnEmbarkType: TButton
      Left = 288
      Top = 239
      Width = 25
      Height = 25
      Caption = '...'
      Enabled = False
      TabOrder = 14
    end
    object edtFilterSensorOnBoard: TEdit
      Left = 109
      Top = 119
      Width = 124
      Height = 22
      Enabled = False
      TabOrder = 6
    end
    object btnSensorType: TButton
      Left = 288
      Top = 117
      Width = 25
      Height = 25
      Caption = '...'
      Enabled = False
      TabOrder = 7
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 639
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 544
      Width = 62
      Height = 21
      Caption = 'Search :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Deusex'
      Font.Style = []
      ParentFont = False
    end
    object btnAdd: TButton
      Left = 337
      Top = 263
      Width = 80
      Height = 30
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnEditMount: TButton
      Left = 430
      Top = 542
      Width = 313
      Height = 25
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnEditTrackClick
    end
    object btnRemove: TButton
      Left = 337
      Top = 303
      Width = 80
      Height = 30
      Caption = 'Remove'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnRemoveClick
    end
    object lstSelectedVehicle: TListBox
      Left = 430
      Top = 62
      Width = 313
      Height = 474
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = lstSelectedVehicleClick
      OnDblClick = lstSelectedVehicleDblClick
    end
    object lstAllVehicle: TListBox
      Left = 12
      Top = 62
      Width = 313
      Height = 474
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = lstAllVehicleClick
      OnDblClick = lstAllVehicleDblClick
    end
    object btnFilter: TButton
      Left = 12
      Top = 599
      Width = 80
      Height = 30
      Caption = 'Filter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = btnFilterClick
    end
    object btnClose: TButton
      Left = 663
      Top = 599
      Width = 80
      Height = 30
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnCloseClick
    end
    object edtSearch: TEdit
      Left = 78
      Top = 542
      Width = 247
      Height = 25
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edtSearchKeyPress
    end
    object pnl1: TPanel
      Left = 430
      Top = 16
      Width = 313
      Height = 41
      BevelOuter = bvNone
      BorderWidth = 3
      Color = clAqua
      ParentBackground = False
      TabOrder = 8
      object pnl2: TPanel
        Left = 3
        Top = 3
        Width = 307
        Height = 35
        Align = alClient
        BevelOuter = bvNone
        Caption = 'List of Vehicle On Board'
        Color = 2499101
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Deusex'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnl3: TPanel
      Left = 12
      Top = 16
      Width = 313
      Height = 41
      BevelOuter = bvNone
      BorderWidth = 3
      Color = clAqua
      ParentBackground = False
      TabOrder = 9
      object pnl4: TPanel
        Left = 3
        Top = 3
        Width = 307
        Height = 35
        Align = alClient
        BevelOuter = bvNone
        Caption = 'List of available Vehicle'
        Color = 2499101
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Deusex'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnl5: TPanel
      Left = -6
      Top = 586
      Width = 760
      Height = 5
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 10
    end
  end
end
