object frmSurfaceSurfaceMissileControl: TfrmSurfaceSurfaceMissileControl
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmSurfaceSurfaceMissileControl'
  ClientHeight = 368
  ClientWidth = 384
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 62
    Height = 13
    Caption = 'More Control'
  end
  object bvl1: TBevel
    Left = 77
    Top = 22
    Width = 284
    Height = 3
  end
  object lbl2: TLabel
    Left = 24
    Top = 45
    Width = 70
    Height = 13
    Caption = 'Cruise Altitude'
  end
  object lbl3: TLabel
    Left = 24
    Top = 71
    Width = 67
    Height = 13
    Caption = 'Seeker Range'
  end
  object lbl4: TLabel
    Left = 24
    Top = 95
    Width = 77
    Height = 13
    Caption = 'Pre-Search Skim'
  end
  object lbl5: TLabel
    Left = 24
    Top = 120
    Width = 60
    Height = 13
    Caption = 'Attack Mode'
  end
  object lbl6: TLabel
    Left = 24
    Top = 144
    Width = 138
    Height = 13
    Caption = 'High Altitude Flyout Distance'
  end
  object lbl7: TLabel
    Left = 8
    Top = 182
    Width = 95
    Height = 13
    Caption = 'Target Environment'
  end
  object bvl2: TBevel
    Left = 109
    Top = 188
    Width = 255
    Height = 3
  end
  object btnPreSearch: TSpeedButton
    Tag = 1
    Left = 312
    Top = 93
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
  object btnAttackMode: TSpeedButton
    Tag = 1
    Left = 312
    Top = 119
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
    OnClick = btnAttackModeClick
  end
  object lbl8: TLabel
    Left = 24
    Top = 213
    Width = 57
    Height = 13
    Caption = 'Wind Speed'
  end
  object lbl9: TLabel
    Left = 24
    Top = 236
    Width = 69
    Height = 13
    Caption = 'Wind Direction'
  end
  object lbl10: TLabel
    Left = 24
    Top = 259
    Width = 62
    Height = 13
    Caption = 'Temperature'
  end
  object lbl11: TLabel
    Left = 314
    Top = 47
    Width = 22
    Height = 13
    Caption = 'Feet'
  end
  object lbl12: TLabel
    Left = 314
    Top = 71
    Width = 15
    Height = 13
    Caption = 'Nm'
  end
  object lbl13: TLabel
    Left = 314
    Top = 148
    Width = 15
    Height = 13
    Caption = 'Nm'
  end
  object lbl14: TLabel
    Left = 312
    Top = 211
    Width = 17
    Height = 13
    Caption = 'm/s'
  end
  object lbl15: TLabel
    Left = 312
    Top = 235
    Width = 49
    Height = 13
    Caption = 'Degrees T'
  end
  object lbl16: TLabel
    Left = 312
    Top = 259
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object bvl3: TBevel
    Left = 8
    Top = 299
    Width = 356
    Height = 3
  end
  object edtCruiseAltitude: TEdit
    Left = 185
    Top = 44
    Width = 121
    Height = 21
    Color = clBtnFace
    TabOrder = 0
    OnKeyPress = edtCruiseAltitudeKeyPress
  end
  object edtSeekerRange: TEdit
    Left = 185
    Top = 68
    Width = 121
    Height = 21
    Color = clBtnFace
    TabOrder = 1
    OnKeyPress = edtSeekerRangeKeyPress
  end
  object edtPreSearchSkim: TEdit
    Left = 185
    Top = 93
    Width = 121
    Height = 21
    Color = clBtnFace
    Enabled = False
    TabOrder = 2
    Text = 'Yes'
  end
  object edtAttackMode: TEdit
    Left = 185
    Top = 119
    Width = 121
    Height = 21
    Color = clBtnFace
    Enabled = False
    TabOrder = 3
    Text = 'Pop Up'
  end
  object edtHighFlyout: TEdit
    Left = 185
    Top = 144
    Width = 121
    Height = 21
    Color = clBtnFace
    TabOrder = 4
    OnKeyPress = edtHighFlyoutKeyPress
  end
  object edtWindSpeed: TEdit
    Left = 185
    Top = 208
    Width = 121
    Height = 21
    Color = clBtnFace
    TabOrder = 5
  end
  object edtWindDirection: TEdit
    Left = 185
    Top = 232
    Width = 121
    Height = 21
    Color = clBtnFace
    TabOrder = 6
  end
  object edtTemperature: TEdit
    Left = 185
    Top = 256
    Width = 121
    Height = 21
    Color = clBtnFace
    TabOrder = 7
  end
  object btnClose: TButton
    Left = 290
    Top = 316
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 8
    OnClick = btnCloseClick
  end
  object pmPopUpMode: TPopupMenu
    Left = 224
    Top = 296
    object PopUp1: TMenuItem
      Tag = 1
      Caption = 'Pop Up Mode'
      OnClick = PopUp1Click
    end
    object SeaSkim1: TMenuItem
      Tag = 2
      Caption = 'Sea Skim Mode'
      OnClick = PopUp1Click
    end
  end
end
