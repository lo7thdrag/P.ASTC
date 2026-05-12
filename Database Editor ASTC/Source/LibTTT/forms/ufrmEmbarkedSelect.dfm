object frmEmbarkedSelect: TfrmEmbarkedSelect
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Vehicle'
  ClientHeight = 426
  ClientWidth = 621
  Color = clBtnShadow
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
  object pnl3Button: TPanel
    Left = 0
    Top = 383
    Width = 621
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    object btnClose: TButton
      Left = 528
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnFilter: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Filter'
      TabOrder = 1
      Visible = False
      OnClick = btnFilterClick
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 378
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    object Image1: TImage
      Left = 347
      Top = 8
      Width = 256
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000011C0000
        002108060000000B671427000000097048597300000B1300000B1301009A9C18
        0000007D4944415478DAEDD4310100301003A1BC7FD1AD8B9B4004B7ED0D2070
        130E10110E90110E90110E90110E90110E90110E90110E90110E90110E90110E
        90110E90110E90110E90110E90110E90110E90110E90110E90110E90110E9011
        0E90110E90110E90110E90110E90110E90110E90110E90110E90110E90110E90
        F942192101172027D80000000049454E44AE426082}
      Stretch = True
    end
    object imgExercise: TImage
      Left = 8
      Top = 8
      Width = 257
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000011C0000
        002108060000000B671427000000097048597300000B1300000B1301009A9C18
        0000007D4944415478DAEDD4310100301003A1BC7FD1AD8B9B4004B7ED0D2070
        130E10110E90110E90110E90110E90110E90110E90110E90110E90110E90110E
        90110E90110E90110E90110E90110E90110E90110E90110E90110E90110E9011
        0E90110E90110E90110E90110E90110E90110E90110E90110E90110E90110E90
        F942192101172027D80000000049454E44AE426082}
      Stretch = True
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 124
      Height = 14
      Cursor = crHandPoint
      Caption = 'List of available Vehicle'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 355
      Top = 16
      Width = 131
      Height = 14
      Cursor = crHandPoint
      Caption = 'List of Vehicle On Board'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnAdd: TButton
      Left = 275
      Top = 144
      Width = 62
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnEditMount: TButton
      Left = 528
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
      OnClick = btnEditTrackClick
    end
    object btnRemove: TButton
      Left = 275
      Top = 175
      Width = 62
      Height = 25
      Caption = 'Remove'
      TabOrder = 2
      OnClick = btnRemoveClick
    end
    object lstSelectedVehicle: TListBox
      Left = 347
      Top = 41
      Width = 257
      Height = 286
      ItemHeight = 14
      TabOrder = 3
      OnClick = lstSelectedVehicleClick
      OnDblClick = lstSelectedVehicleDblClick
    end
    object lstAllVehicle: TListBox
      Left = 8
      Top = 41
      Width = 257
      Height = 286
      ItemHeight = 14
      TabOrder = 4
      OnClick = lstAllVehicleClick
      OnDblClick = lstAllVehicleDblClick
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 378
    Width = 621
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 621
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
