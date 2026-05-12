object fVehicleSelect: TfVehicleSelect
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Vehicle Selection'
  ClientHeight = 370
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 8
    Top = 371
    Width = 610
    Height = 2
  end
  object lstSelectedVehicle: TListBox
    Left = 361
    Top = 8
    Width = 257
    Height = 326
    ItemHeight = 13
    TabOrder = 6
    OnClick = lstSelectedVehicleClick
    OnDblClick = lstSelectedVehicleDblClick
  end
  object btnAdd: TButton
    Left = 275
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Add ->'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 275
    Top = 175
    Width = 75
    Height = 25
    Caption = '<- Remove'
    TabOrder = 7
    OnClick = btnRemoveClick
  end
  object btnClose: TButton
    Left = 543
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object lstAllVehicle: TListBox
    Left = 8
    Top = 8
    Width = 257
    Height = 326
    ItemHeight = 13
    TabOrder = 1
    OnClick = lstAllVehicleClick
    OnDblClick = lstAllVehicleDblClick
  end
  object btnEdit: TButton
    Left = 170
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Edit...'
    TabOrder = 5
    Visible = False
    OnClick = btnEditClick
  end
  object btnCopy: TButton
    Left = 89
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Copy...'
    TabOrder = 4
    Visible = False
    OnClick = btnCopyClick
  end
  object btnNew: TButton
    Left = 8
    Top = 340
    Width = 75
    Height = 25
    Caption = 'New...'
    TabOrder = 3
    Visible = False
    OnClick = btnNewClick
  end
  object btnEditTrack: TButton
    Left = 463
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Edit...'
    TabOrder = 8
    OnClick = btnEditTrackClick
  end
  object grpFilter: TGroupBox
    Left = 8
    Top = 380
    Width = 330
    Height = 270
    Caption = 'Filter'
    TabOrder = 10
    object lblSensorType: TLabel
      Left = 29
      Top = 95
      Width = 67
      Height = 13
      Caption = 'Sensor Type :'
    end
    object lbl2: TLabel
      Left = 239
      Top = 122
      Width = 43
      Height = 13
      Caption = 'on Board'
    end
    object lbl3: TLabel
      Left = 29
      Top = 168
      Width = 74
      Height = 13
      Caption = 'Weapon Type :'
    end
    object lbl4: TLabel
      Left = 239
      Top = 195
      Width = 43
      Height = 13
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
      Height = 21
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
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 3
      OnChange = cbbFilterTypeChange
      Items.Strings = (
        'Frigate, Guided Missile (FFG)'
        'Destroyer, Guided Missile (DDG)'
        'Cruiser, Guided Missile (CG/CGN)'
        'Aircraft Carrier (CV/CVN)'
        'Patrol Craft (PT/PTG)'
        'Mine Warfare'
        'Auxiliary'
        'Merchant'
        'Utility Vessel'
        'Destroyer (DD)'
        'Frigate (FF)'
        'Amphibious Warfare'
        'Other'
        'Diesel, Attack (SSK)'
        'Nuclear, Attack (SSN)'
        'Nuclear, Guided Missile (SSGN)'
        'Diesel, Guided Missile (SSG)'
        'Nuclear, Ballistic Missile (SSBN)'
        'Fixed Wing, Fighter'
        'Fixed Wing, Strike/Bomber'
        'Fixed Wing, ASW/MP'
        'Rotary Wing, ASW'
        'Rotary Wing, Attack'
        'Fixed Wing, EW'
        'Fixed - Surveillance/AEW'
        'Fixed - Reconnaissance'
        'Rotary Wing - Surveillance/AEW'
        'Rotary Wing - Reconnaissance'
        'Seaplane'
        'Missile'
        'Platoon, Armour'
        'Platoon, Infantry'
        'Battery, Anti-aircraft Artillery'
        'Battery, Surface-to-Air Missile'
        'Battery, Coastal Defence Missile'
        'Battery, Coastal Defence Gun'
        'Airfield'
        'Port'
        'Special Craft'
        'Other'
        ''
        ''
        '')
    end
    object cbbFilterSensorType: TComboBox
      Left = 109
      Top = 92
      Width = 204
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 5
      OnChange = cbbFilterSensorTypeChange
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
      Width = 124
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 9
      OnChange = cbbFilterWeaponTypeChange
      Items.Strings = (
        'Missile'
        'Torpedo'
        'Mine'
        'Gun'
        'Bomb')
    end
    object edtFilterWeaponOnBoard: TEdit
      Left = 109
      Top = 192
      Width = 124
      Height = 21
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
      OnClick = btnWeaponTypeClick
    end
    object edtFilterEmbarkedPlatform: TEdit
      Left = 109
      Top = 241
      Width = 124
      Height = 21
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
      OnClick = btnEmbarkTypeClick
    end
    object edtFilterSensorOnBoard: TEdit
      Left = 109
      Top = 119
      Width = 124
      Height = 21
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
      OnClick = btnSensorTypeClick
    end
  end
  object btnFilter: TButton
    Left = 8
    Top = 340
    Width = 75
    Height = 25
    Caption = '>> Filter'
    TabOrder = 9
    OnClick = btnFilterClick
  end
end
