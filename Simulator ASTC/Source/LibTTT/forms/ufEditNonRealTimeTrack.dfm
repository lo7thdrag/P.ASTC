object frmEditNonRealTimeTrack: TfrmEditNonRealTimeTrack
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Edit Non Real Time Track'
  ClientHeight = 475
  ClientWidth = 392
  Color = clBtnFace
  TransparentColor = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Lbltrack: TLabel
    Left = 24
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Track :'
  end
  object lbltrack1: TLabel
    Left = 75
    Top = 8
    Width = 24
    Height = 13
    Caption = '2014'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 27
    Width = 374
    Height = 2
  end
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Name : '
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Type :'
  end
  object edtnameTrack: TEdit
    Left = 61
    Top = 53
    Width = 304
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = edtnameTrackKeyPress
  end
  object edtTypeEditNonRealTimeTrack: TEdit
    Left = 61
    Top = 85
    Width = 272
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 132
    Width = 377
    Height = 289
    ActivePage = tsTrack
    TabOrder = 2
    object tsTrack: TTabSheet
      Caption = 'Track'
      object grpESM: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 261
        Align = alClient
        TabOrder = 5
        object lbl25: TLabel
          Left = 12
          Top = 104
          Width = 34
          Height = 13
          Caption = 'Force :'
        end
        object lbl26: TLabel
          Left = 12
          Top = 72
          Width = 45
          Height = 13
          Caption = 'Identity :'
        end
        object lbl27: TLabel
          Left = 12
          Top = 40
          Width = 42
          Height = 13
          Caption = 'Domain :'
        end
        object lbl28: TLabel
          Left = 12
          Top = 136
          Width = 35
          Height = 13
          Caption = 'Origin :'
          Visible = False
        end
        object btn11: TButton
          Left = 255
          Top = 99
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 0
          OnClick = btnforceClick
        end
        object edtESMForce: TEdit
          Left = 96
          Top = 102
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtESMIdentity: TEdit
          Left = 96
          Top = 69
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object btn12: TButton
          Left = 255
          Top = 67
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 3
          OnClick = btnIdentityTrackClick
        end
        object btn13: TButton
          Left = 255
          Top = 35
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 4
          OnClick = btnDomainClick
        end
        object edtESMDomain: TEdit
          Left = 96
          Top = 37
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtESMOrigin: TEdit
          Left = 96
          Top = 133
          Width = 185
          Height = 21
          Enabled = False
          TabOrder = 6
          Visible = False
        end
        object btn14: TButton
          Left = 286
          Top = 131
          Width = 24
          Height = 25
          ImageIndex = 6
          Images = ImageList1
          TabOrder = 7
          Visible = False
          OnClick = btnPositionClick
        end
      end
      object grpNonRealSpecial: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 261
        Align = alClient
        TabOrder = 3
        object lbl19: TLabel
          Left = 12
          Top = 40
          Width = 42
          Height = 13
          Caption = 'Domain :'
        end
        object lbl20: TLabel
          Left = 12
          Top = 72
          Width = 68
          Height = 13
          Caption = 'Symbol Type :'
        end
        object lbl21: TLabel
          Left = 12
          Top = 104
          Width = 34
          Height = 13
          Caption = 'Force :'
          Visible = False
        end
        object lbl22: TLabel
          Left = 12
          Top = 136
          Width = 44
          Height = 13
          Caption = 'Position :'
        end
        object lbl23: TLabel
          Left = 12
          Top = 225
          Width = 44
          Height = 13
          Caption = 'Altitude :'
        end
        object lbl24: TLabel
          Left = 172
          Top = 226
          Width = 25
          Height = 13
          Caption = 'feets'
        end
        object edtNRSDomain: TEdit
          Left = 96
          Top = 37
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object btn7: TButton
          Left = 255
          Top = 36
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 1
          OnClick = btnDomainClick
        end
        object edtNRSSymbolType: TEdit
          Left = 96
          Top = 69
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object btn8: TButton
          Left = 255
          Top = 67
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 3
          OnClick = btn8Click
        end
        object edtNRSForce: TEdit
          Left = 96
          Top = 101
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
          Visible = False
        end
        object btn9: TButton
          Left = 255
          Top = 99
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 5
          Visible = False
          OnClick = btnforceClick
        end
        object btn10: TButton
          Left = 286
          Top = 131
          Width = 26
          Height = 25
          ImageIndex = 6
          Images = ImageList1
          TabOrder = 6
          OnClick = btnPositionClick
        end
        object edtNRSPosition: TEdit
          Tag = 3
          Left = 96
          Top = 133
          Width = 185
          Height = 21
          Enabled = False
          TabOrder = 7
          OnKeyPress = edtAOPCenterKeyPress
        end
        object edtNRSAltitude: TEdit
          Left = 96
          Top = 222
          Width = 65
          Height = 21
          TabOrder = 8
          Text = '000'
          OnKeyPress = edtAltitudeKeyPress
        end
      end
      object grpNonRealPoint: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 261
        Align = alClient
        TabOrder = 0
        object Label6: TLabel
          Left = 12
          Top = 136
          Width = 44
          Height = 13
          Caption = 'Position :'
        end
        object lbAltitude: TLabel
          Left = 13
          Top = 229
          Width = 44
          Height = 13
          Caption = 'Altitude :'
        end
        object Label5: TLabel
          Left = 12
          Top = 104
          Width = 34
          Height = 13
          Caption = 'Force :'
          Visible = False
        end
        object Label3: TLabel
          Left = 12
          Top = 40
          Width = 42
          Height = 13
          Caption = 'Domain :'
        end
        object Label4: TLabel
          Left = 12
          Top = 72
          Width = 45
          Height = 13
          Caption = 'Identity :'
        end
        object lbGroundSpeed: TLabel
          Left = 12
          Top = 197
          Width = 75
          Height = 13
          Caption = 'Ground Speed :'
        end
        object Label12: TLabel
          Left = 167
          Top = 197
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object Label10: TLabel
          Left = 167
          Top = 158
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object Label8: TLabel
          Left = 167
          Top = 229
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object lbCourse: TLabel
          Left = 12
          Top = 166
          Width = 41
          Height = 13
          Caption = 'Course :'
        end
        object btnDomain: TButton
          Left = 255
          Top = 35
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 0
          OnClick = btnDomainClick
        end
        object btnforce: TButton
          Left = 255
          Top = 99
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 1
          Visible = False
          OnClick = btnforceClick
        end
        object edtIdentity: TEdit
          Left = 96
          Top = 69
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtforce: TEdit
          Left = 96
          Top = 104
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
          Visible = False
        end
        object edtGroundSpeed: TEdit
          Left = 96
          Top = 194
          Width = 65
          Height = 21
          TabOrder = 5
          Text = '0.0'
          OnKeyPress = edtGroundSpeedKeyPress
        end
        object btnIdentityTrack: TButton
          Left = 255
          Top = 67
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 6
          OnClick = btnIdentityTrackClick
        end
        object edtCourse: TEdit
          Left = 96
          Top = 163
          Width = 65
          Height = 21
          TabOrder = 7
          Text = '000'
          OnKeyPress = edtCourseKeyPress
        end
        object btnPosition: TButton
          Left = 286
          Top = 131
          Width = 26
          Height = 25
          ImageIndex = 6
          Images = ImageList1
          TabOrder = 8
          OnClick = btnPositionClick
        end
        object edtAltitude: TEdit
          Left = 96
          Top = 226
          Width = 65
          Height = 21
          TabOrder = 9
          Text = '0'
          OnKeyPress = edtAltitudeKeyPress
        end
        object edtDomain: TEdit
          Left = 96
          Top = 37
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 10
        end
        object edtposition: TEdit
          Tag = 2
          Left = 95
          Top = 131
          Width = 185
          Height = 21
          Enabled = False
          TabOrder = 2
          OnKeyPress = edtAOPCenterKeyPress
        end
      end
      object grpNonRealAOP: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 261
        Align = alClient
        TabOrder = 4
        object lbl13: TLabel
          Left = 12
          Top = 40
          Width = 42
          Height = 13
          Caption = 'Domain :'
        end
        object lbl14: TLabel
          Left = 12
          Top = 72
          Width = 45
          Height = 13
          Caption = 'Identity :'
        end
        object lbl15: TLabel
          Left = 12
          Top = 104
          Width = 34
          Height = 13
          Caption = 'Force :'
          Visible = False
        end
        object lbl16: TLabel
          Left = 12
          Top = 136
          Width = 40
          Height = 13
          Caption = 'Center :'
        end
        object lbl17: TLabel
          Left = 12
          Top = 225
          Width = 75
          Height = 13
          Caption = 'Ground Speed :'
        end
        object lbl18: TLabel
          Left = 172
          Top = 226
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object edtAOPDomain: TEdit
          Left = 96
          Top = 37
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object btn1: TButton
          Left = 255
          Top = 35
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 1
          OnClick = btnDomainClick
        end
        object edtAOPIdentity: TEdit
          Left = 96
          Top = 69
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object btn2: TButton
          Left = 255
          Top = 67
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 3
          OnClick = btnIdentityTrackClick
        end
        object edtAOPForce: TEdit
          Left = 96
          Top = 101
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
          Visible = False
        end
        object btn5: TButton
          Left = 255
          Top = 99
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 5
          Visible = False
          OnClick = btnforceClick
        end
        object btn6: TButton
          Left = 286
          Top = 131
          Width = 26
          Height = 25
          ImageIndex = 6
          Images = ImageList1
          TabOrder = 6
          OnClick = btnPositionClick
        end
        object edtAOPCenter: TEdit
          Left = 96
          Top = 133
          Width = 185
          Height = 21
          Enabled = False
          TabOrder = 7
          OnKeyPress = edtAOPCenterKeyPress
        end
        object edtAOPGroundSpeed: TEdit
          Left = 96
          Top = 222
          Width = 65
          Height = 21
          TabOrder = 8
          Text = '000'
          OnKeyPress = edtGroundSpeedKeyPress
        end
      end
      object grpNonRealBearing: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 261
        Align = alClient
        TabOrder = 2
        object lbl7: TLabel
          Left = 12
          Top = 40
          Width = 42
          Height = 13
          Caption = 'Domain :'
        end
        object lbl8: TLabel
          Left = 12
          Top = 72
          Width = 45
          Height = 13
          Caption = 'Identity :'
        end
        object lbl9: TLabel
          Left = 12
          Top = 104
          Width = 34
          Height = 13
          Caption = 'Force :'
          Visible = False
        end
        object lbl10: TLabel
          Left = 12
          Top = 136
          Width = 35
          Height = 13
          Caption = 'Origin :'
        end
        object lbl11: TLabel
          Left = 12
          Top = 227
          Width = 43
          Height = 13
          Caption = 'Bearing :'
        end
        object lbl12: TLabel
          Left = 172
          Top = 228
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object edtNRBBearing: TEdit
          Left = 96
          Top = 222
          Width = 65
          Height = 21
          TabOrder = 0
          Text = '000'
          OnKeyPress = edtCourseKeyPress
        end
        object btnBearingDomain: TButton
          Left = 255
          Top = 35
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 1
          OnClick = btnDomainClick
        end
        object btnBearingIdentity: TButton
          Left = 255
          Top = 67
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 2
          OnClick = btnIdentityTrackClick
        end
        object edtNRBForce: TEdit
          Left = 96
          Top = 101
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
        end
        object btn3: TButton
          Left = 255
          Top = 99
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 4
          Visible = False
          OnClick = btnforceClick
        end
        object edtNRBPosition: TEdit
          Tag = 1
          Left = 96
          Top = 133
          Width = 185
          Height = 21
          Enabled = False
          TabOrder = 5
          OnKeyPress = edtAOPCenterKeyPress
        end
        object btn4: TButton
          Left = 286
          Top = 131
          Width = 26
          Height = 25
          ImageIndex = 6
          Images = ImageList1
          TabOrder = 6
          OnClick = btnPositionClick
        end
        object edtNRBIdentity: TEdit
          Left = 96
          Top = 69
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
        object edtNRBDomain: TEdit
          Left = 96
          Top = 37
          Width = 153
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 8
        end
      end
      object grpRealTime: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 261
        Align = alClient
        TabOrder = 1
        object lbl1: TLabel
          Left = 15
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Name '
        end
        object lbl2: TLabel
          Left = 15
          Top = 59
          Width = 25
          Height = 13
          Caption = 'Class'
        end
        object lbl3: TLabel
          Left = 16
          Top = 89
          Width = 24
          Height = 13
          Caption = 'Type'
        end
        object lbl4: TLabel
          Left = 16
          Top = 116
          Width = 35
          Height = 13
          Caption = 'Domain'
        end
        object lbl5: TLabel
          Left = 16
          Top = 143
          Width = 38
          Height = 13
          Caption = 'Identity'
        end
        object lbl6: TLabel
          Left = 13
          Top = 170
          Width = 76
          Height = 13
          Caption = 'Propulsion Type'
        end
        object edtNameRT: TEdit
          Left = 95
          Top = 32
          Width = 231
          Height = 21
          Color = clScrollBar
          Enabled = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
        object edtClassTrack: TEdit
          Left = 95
          Top = 59
          Width = 232
          Height = 21
          Color = clScrollBar
          Enabled = False
          TabOrder = 1
        end
        object edtTypeTrack: TEdit
          Left = 95
          Top = 86
          Width = 233
          Height = 21
          TabOrder = 2
        end
        object edtDomainTrack: TEdit
          Left = 95
          Top = 113
          Width = 105
          Height = 21
          ReadOnly = True
          TabOrder = 3
        end
        object edtIdentityTrack: TEdit
          Left = 95
          Top = 140
          Width = 105
          Height = 21
          ReadOnly = True
          TabOrder = 4
        end
        object edtPropulsionTypeTrack: TEdit
          Left = 95
          Top = 167
          Width = 105
          Height = 21
          ReadOnly = True
          TabOrder = 5
          Text = '--'
        end
        object btnBTtype: TButton
          Left = 334
          Top = 86
          Width = 23
          Height = 22
          ImageIndex = 0
          Images = ImageList1
          TabOrder = 6
        end
        object btnBTpropulsiontype: TButton
          Left = 278
          Top = 165
          Width = 26
          Height = 25
          ImageIndex = 0
          Images = ImageList1
          TabOrder = 7
          Visible = False
        end
        object btnDomainRT: TButton
          Left = 206
          Top = 111
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 8
          OnClick = btnDomainClick
        end
        object btnIdentityRT: TButton
          Left = 206
          Top = 138
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 9
          OnClick = btnIdentityTrackClick
        end
        object btnPropReal: TButton
          Left = 206
          Top = 165
          Width = 26
          Height = 25
          ImageIndex = 20
          Images = ImageList1
          TabOrder = 10
          OnClick = btnpropulsiontypeClick
        end
      end
    end
    object tsDetails: TTabSheet
      Caption = 'Detail'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label13: TLabel
        Left = 16
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Class :'
      end
      object Label14: TLabel
        Left = 16
        Top = 80
        Width = 74
        Height = 13
        Caption = 'Platform Type :'
      end
      object Label15: TLabel
        Left = 16
        Top = 125
        Width = 83
        Height = 13
        Caption = 'Propulsion Type :'
      end
      object Label16: TLabel
        Left = 16
        Top = 173
        Width = 71
        Height = 13
        Caption = 'Last Updated :'
      end
      object Label17: TLabel
        Left = 16
        Top = 216
        Width = 80
        Height = 13
        Caption = 'Track Identifier :'
      end
      object edtClass: TEdit
        Left = 120
        Top = 37
        Width = 190
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object edtPlatformType: TEdit
        Left = 120
        Top = 77
        Width = 161
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtPropulsionType: TEdit
        Left = 120
        Top = 122
        Width = 121
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtLastUpdated: TEdit
        Left = 120
        Top = 167
        Width = 161
        Height = 21
        TabOrder = 3
        OnKeyPress = edtLastUpdatedKeyPress
      end
      object edtTrackIden: TEdit
        Left = 120
        Top = 208
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object btnPlatformType: TButton
        Left = 284
        Top = 75
        Width = 26
        Height = 25
        ImageIndex = 20
        Images = ImageList1
        TabOrder = 5
        OnClick = btnPlatformTypeClick
      end
      object btnpropulsiontype: TButton
        Left = 247
        Top = 120
        Width = 26
        Height = 25
        ImageIndex = 20
        Images = ImageList1
        TabOrder = 6
        OnClick = btnpropulsiontypeClick
      end
      object btnLastUpdated: TButton
        Left = 284
        Top = 165
        Width = 26
        Height = 25
        Images = ImageList1
        TabOrder = 7
        OnClick = btnLastUpdatedClick
      end
    end
  end
  object btnType: TButton
    Left = 339
    Top = 83
    Width = 26
    Height = 25
    ImageIndex = 20
    Images = ImageList1
    TabOrder = 3
    OnClick = btnTypeClick
  end
  object btnclose: TButton
    Left = 295
    Top = 427
    Width = 87
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    OnClick = btncloseClick
  end
  object edtTrackNumber: TEdit
    Left = 63
    Top = 4
    Width = 75
    Height = 21
    TabOrder = 5
    Visible = False
    OnKeyPress = edtTrackNumberKeyPress
  end
  object ImageList1: TImageList
    Left = 848
    Top = 56
    Bitmap = {
      494C010120005400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0024201A002B2722002D2924001F1B150025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0027231E00201B160025211C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00211D180016110B00100B0500100B050018140E0024201A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E0018140E0000000000A7A7A800A7A7A8000E0A0400110C06002824
      1F0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00231F
      190018130E0027231E00FFFFFF00FFFFFF00FFFFFF0028241F0024201B001E19
      140029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0027231F001A16100024201B001B16110027231E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F00231F19001D1914004C4A47007776740075747200413E3A0015100B00FFFF
      FF0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1B
      15000F0A0400A6A7A700BBBCBE009898980099999800BABBBC00B9BABB003A37
      33000E0A0300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221E19006F6D
      6C00B6B7B8000A06000024201B00FFFFFF0028241F00120E0800676563007F7F
      7E001A161100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1B
      1500090400007A797800A6A6A700524F4C00A4A5A5000B060000211E1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001612
      0C008585850065646100282420000F0A0500100B0500332F2B007B7B79006463
      61000D09020027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130E
      090063615F00B1B2B300AAAAAB009D9D9D00999999008B8A8A00ABABAC00A7A8
      A80034312C0028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C17009090
      8F00C3C4C6004B4946000D08020028241F001E1A15007B7A790058565200A6A7
      A7002C282300FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F00201C17001F1B
      16006A6866008E8E8D00413E3A00000000003A3733006C6A6800080300002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00211C18008A8A
      8A00A8A9AA00090400000E09030018130E0017120C000E0902000A040000B9BB
      BC0064636100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C16008E8D
      8D00BDBEBF002A2722000300000088888600ACACAD00120E08000A050000908F
      8F00C2C4C5000F0B050027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130E
      08002A252100BCBDBF00A4A4A500040000007B7A790029252100929291000D08
      010027241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF0016120C0076757300524F
      4C00140F0900110C070053514D0096969500221E18002C282300ABABAC000D09
      03001E191400FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1813002A2722005250
      4C000B06000062605E00A3A4A5003D3A3500413E3A00A3A4A40045423F000904
      00007B7A7A0015100B0024201A00FFFFFF00FFFFFF0027231E00100C0600BCBD
      BE009D9D9D000D08020025211B008A8A8900AAAAAB001A1610002A262200302C
      2800BABCBD00221D1800201C1600FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      20000F0A0400A0A0A000BDBEBF0085848300514F4B008E8E8D003C3935002724
      1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1913008E8E8E000000
      0000090400007D7D7B00B5B6B700B2B2B30091919000000000002B2723007978
      7700130F0900FFFFFF00FFFFFF00FFFFFF00FFFFFF00100C0600666462001813
      0E000F0A0400A7A8A900211E1B0044423E0036322E004C494700A3A4A4000E09
      0300332F2B00403D3A0018140E00FFFFFF00FFFFFF00201C1700241F1A007270
      6E003B373300231F1A00201C17008A8A8900AAAAAB001A1610001F1B15005856
      530045423F0059575400100C0600FFFFFF00FFFFFF0027231E00FFFFFF001B17
      11001A151000070200008383820018140F00AAAAAB0000000000221E1900201C
      170034302C00140F0A00231F1900FFFFFF00FFFFFF001D1813007B7A79007170
      6E00B5B6B800999999009B9B9B009B9B9B009999990090908F0025211C006C6A
      69008281800025211C00FFFFFF00FFFFFF00FFFFFF001A1610008A8A89000D09
      02002D2A25001B171100615F5C00070300001F1B160036332F00413E3A001712
      0C00100B050075747200100C0500FFFFFF00FFFFFF0024201B00292521001F1B
      15000F0B040028241F00231F18008A8A8900AAAAAB001A16100028241F00130E
      0800030000004B4845001A161000FFFFFF00FFFFFF00FFFFFF0025211C002F2B
      270036322E00656360004C494600ACACAD00BBBCBD0063615F000C0802000B06
      01005C5A570054514F00120E0700FFFFFF00FFFFFF0017120D0087868500ABAB
      AC009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B2B3B4009D9D9D006A69
      66006D6C6900FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1711008A8A89000E09
      03002E2B260018140E006E6D6A00000000000702000045423E003C3834001813
      0E000F0A050077757400100C0600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00221E18008A8A8900AAAAAB001A161000FFFFFF00FFFF
      FF00FFFFFF0025211C00FFFFFF00FFFFFF00FFFFFF001C1813002D2924009190
      900063615F00ADADAE0080807E00000000002A262200BABBBC00A6A7A7007D7C
      7A00A5A6A600ADADAE006E6C6A00FFFFFF00FFFFFF0027231E0007020000B6B8
      B900A3A3A4009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B0098989800AEAF
      B000322F2A0029252000FFFFFF00FFFFFF00FFFFFF00100B050072706F00120D
      0800100B050099999A00000000006D6C6B00605F5D00221E1B00A3A4A5000E09
      030028241F004C49460016110B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0024201B0087878600ADADAE001B171100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1813002D2924005350
      4E0000000000C4C6C700585653002B272100110D07007D7C7A00ABACAD00B7B8
      B90049464300A8A8A9002A262200FFFFFF00FFFFFF0027231E00231F1A005957
      5400B4B5B6009A9999009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00A4A4
      A4009D9D9D0019140F00FFFFFF00FFFFFF00FFFFFF0019140F00393632003D3A
      36000D080200807F7F009999990019150F001C171200A7A8A80062605E000904
      0000656362001D191400211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00231F19001F1B16005E5C5A00403D390036322E001D181300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E0025211C00140F
      090059555100CCCDCF0083818000110D070007020000A7A7A800807F7D000000
      0000575551002D2924001A161000FFFFFF00FFFFFF00FFFFFF00FFFFFF00201B
      16000D080100B8B9BA009D9D9D009B9B9B009B9B9B00A1A1A100B4B6B7006968
      66002A26220027241F00FFFFFF00FFFFFF00FFFFFF0027231E001B171100A7A7
      A800888888000D080100100B05002E2B26002D2925000F0A04000B060000A8A9
      AA0086858500231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001D1913003C3834000C0701000000000063615F00120D0800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A16
      100068676500777675004B4945005C5A5700605E5C008F8F8E0016110B009595
      9500C2C3C50015100B0025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F001D18130076757300B4B5B500999999009F9F9F00A9A9AA006C6A68000D08
      020018130D0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282520002926
      2100A6A7A8003D3A3600120D08000E0903000D08020018140E0052504D008A8A
      8A0016120C0028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0027231E001D1913006B6A67007A79780016120C0028241F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0025211C0025211C0027231E00100C0600413E3A006C6A680075747200120D
      0700120D070028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0017130D00211D1800888786003C393400130F0900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      20001B1711003936330072716F008A8A89008A898900666562002A272200211D
      170028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0029252000110C06000E0A040029252000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0026231E0016120C00100B05000E0903002521
      1B0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00292520001B1712001C171200130E080027231E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E0019140F00100B05001B1711001A161000110C06001D1813002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00201B160015110B0015110B001E1A140025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002925200019140F004F4C
      49001F1B160027231E0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027241F00201C160027231F00FFFFFF00FFFFFF00FFFFFF0024201B002F2B
      2700322E290015110B0029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0025211C002420
      1B0024201B0024201B0024201B0024201B0024201B0024201B0024201B002420
      1B0024201B0025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F00201C1600201C17003B38340054524F0054514F003F3D390025211C001D18
      130027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A16100033302B00B9BA
      BB008C8B8B00130F0900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F00201C17002A26210025211C00FFFFFF00FFFFFF001F1B150025211C00B1B2
      B300B1B2B300312D29001C181300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A161000514F4C007473
      72007473720072716F007978770087868600858585007C7C7B0072716F007473
      720074737200605E5C00201C1700FFFFFF00FFFFFF00FFFFFF0025211C004C4A
      47006D6C6B0033302C001E1A140015100A0015100B001B1711002F2B26006967
      66005A585500201C160027231E00FFFFFF00FFFFFF0015100A0044413D00B4B4
      B6009A9A9A00A5A5A500322E2A0028241F00FFFFFF00FFFFFF00FFFFFF000904
      000046433F006D6B69000F0A0400FFFFFF00FFFFFF0027231E00FFFFFF00100B
      0500000000009D9D9E001F1A1500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0015100B0083828200AEAF
      B000AEAFB000BCBDBE00BBBCBD005B59560058555300B3B4B500C0C1C300AEAF
      B000AEAFB0009E9E9E00FFFFFF00FFFFFF00FFFFFF0027231E0015100A007271
      7000221E1900211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00231F1A001915
      0F006564620018140E00FFFFFF00FFFFFF00FFFFFF0027231E0018130E008180
      7F00B0B1B200ABABAC00A7A7A7000C07010028241F00FFFFFF0028241F001B17
      1100ACACAD0025211C001C181200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000F0B0500959494000F0A040027231E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018130E00777675009B9B
      9B009D9D9D0046433E00000000009191910095959500000000002B272200A2A2
      A2009B9B9B008E8E8D0027231E00FFFFFF00FFFFFF0015100B00585653000F0A
      040027241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E0016110B0063625F0015100B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00231E
      190008030000A0A1A100ADADAE00A6A7A70033302B000D080100423F3B00BBBC
      BD0034312C0026211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00221E180081808000C3C5C7000B060000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018130E00777675009B9B
      9B00ABABAC00060100003E3B3800B1B1B200ACACAD005A58560000000000B0B1
      B2009B9B9B008E8E8D0027231E00FFFFFF00FFFFFF0018130E00504E4B000F0A
      040028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F00100A04005F5E5C0015110B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027241F00211C17008C8B8A00B2B3B4009F9F9F0048454100C5C7C8002F2B
      26000A05000027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00282420000E090400858583003F3C38000804000027231E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018130E00777675009B9B
      9B00B0B1B200000000006C6B68009A9A9900999998008585840000000000B1B2
      B3009B9B9B008E8E8D0027231E00FFFFFF00FFFFFF0027231F0018140E007473
      73004D4B4700140F09001D18130024201B0024201B001E1A150015100A00413F
      3B007676750015110B0028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002A2621001A1611005E5C5900AFB0B100B0B0B20036322E002B27
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028241F001B1611007F7D7C00D1D3D5000A050000201C1600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018130E00777675009B9B
      9B00A6A6A60016110C001D191500BABBBD00B9BABB0035322F0003000000AEAF
      B0009D9D9D008E8E8D0027231E00FFFFFF00FFFFFF00FFFFFF00282520002B27
      220063626000504E4B003F3C38001D1813001C1712003C3935004D4B48006665
      630036332F0027241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001F1B16000D0902008D8D8C00A7A8A900B5B5B700807F7E00140F
      090029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0028241F00100B050065636100696865000A0400002824
      1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018130E007D7C7B00A0A0
      A0009F9F9F00B1B1B2006F6D6B000000000000000000605F5C00B0B1B2002D29
      250034312C008C8C8C00312E2A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E0016120C0019150F008C8C8B00919090001B17110016110B00FFFF
      FF0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002825
      2000100B05007C7B7A00B5B5B600B2B2B300524F4C000E0903006B6A67009999
      990018130D0029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0027231E00231F190056545000CCCECF00110C
      0600140F090029252000FFFFFF00FFFFFF00FFFFFF0016110C0075747300A1A2
      A200A1A1A200A3A4A400B0B1B2007877760075747300B2B2B300AAAAAB005553
      510059575500868686002A252100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028241F0017120C00777675007C7B7A0016110B0027231E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F000803
      000028241F00B7B8B900A5A6A600504D4A00090400001E1A15000B060000CBCC
      CE00A2A3A30015110B0028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E000904000053514E00ABAC
      AD007D7C7A001E1A1400FFFFFF00FFFFFF00FFFFFF0028241F001E1A15001712
      0D0017120D003A373300B6B8B900AEAFB000AEAFB000C0C1C3004E4B49001712
      0D0017120D001C17120027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018140E0055545200A9A9AA00A7A7A8005A58560018140E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0019140E0035322D00B5B6
      B700A4A4A500B3B4B500504D4A00231F1A0027231E00FFFFFF0027231E000000
      00004E4B480064625F000E090200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E0027231E000000
      0000777675001A15100024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C17004C4A4600585654005856540053504E0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0026211D000B060000B8B8BA00BABBBC000B06000025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0014100A00878786009898
      9800A6A6A700514E4B000904000027231E00FFFFFF00FFFFFF00FFFFFF00221E
      1800120E0800B4B5B60023201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00120E
      08007E7E7D0019140F0024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0027231E001C1812001B17120027231F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D19130027231E008685
      84003B383300231F1A0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0029252100100B050025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00211D
      180036332F00211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00231F1900231F1900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00292621001D1913001511
      0B0016120C0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002925
      20001B17110029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000201C160026221C0027231D000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0025211C002622
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF0025211C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0024201B00292520002C28
      23002C2823002A26210024201B00FFFFFF00FFFFFF0024201B002A2621002B28
      23002B28230027231E00231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000002521
      1C002925200025211D0016110B0028241F0026221E0000000000000000000000
      000000000000000000000000000000000000FFFFFF0027231E0025211C00231F
      190027231F00FFFFFF00FFFFFF00292520001B16110028252000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F008A8989009594
      9400959494009C9C9C003D3A3700FFFFFF00FFFFFF0044413D009F9FA0009494
      94009494940086858500FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E001611
      0B000E0903001E1A150029262100FFFFFF00FFFFFF002A2621001D1913000F0A
      040015100B0027231E00FFFFFF00FFFFFF000000000000000000000000002521
      1C0016110B00767674004E4C4900060100002926200026221E00000000000000
      000000000000000000000000000000000000FFFFFF0018140E003A373400615F
      5C000A06000027231F00FFFFFF0018140E0091909000110C06001A151000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002B272300949493009B9B
      9B009B9B9B00A7A8A80046433F00FFFFFF00FFFFFF004E4B4800ABABAC009B9B
      9B009B9B9B00949393002B272300FFFFFF00FFFFFF00FFFFFF00231F1A008382
      8200C7C9CA00646361000D070200FFFFFF00FFFFFF000E0903006E6D6C00C6C8
      CA0085858500231F1A00FFFFFF00FFFFFF000000000000000000000000000000
      00000C0701007A797700C8CACC0035312E00070200002926200026221E000000
      000000000000000000000000000000000000FFFFFF001A161000312E2A00BCBD
      BE0058565400211D180027231E0017130D007978770078787700110C07002825
      2000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002B272300949493009B9B
      9B009B9B9B00A7A8A80046433F00FFFFFF00FFFFFF004E4B4800ABABAC009B9B
      9B009B9B9B00949393002B272300FFFFFF00FFFFFF00FFFFFF0027231E004542
      3F00ACADAE008B8A8A00100A0500110D0700110D070018140F0095949500ADAE
      AF004744410027231E00FFFFFF00FFFFFF000000000000000000000000000000
      0000100B050066646200C0C2C300B3B3B40035322E0007020000292520002622
      1E0000000000000000000000000000000000FFFFFF001A16100034312D00A1A1
      A100A3A3A400585653000A06000019151000787776009D9D9D00B7B8B900110C
      06001A151000FFFFFF00FFFFFF00FFFFFF00FFFFFF002C292400969596009B9B
      9B009B9B9B00A7A8A800423F3B0027231E0027231E004B484500ACABAD009B9B
      9B009B9B9B00959494002A272200FFFFFF00FFFFFF00FFFFFF00FFFFFF000E09
      0300666463009B9B9B00ACADAE00B4B5B600B4B5B600ABACAC009A9A9A006867
      66000E0A0400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000100B05006B6A6700ADADAD00AAAAAB00B3B4B50034312E00090400002A26
      210000000000000000000000000000000000FFFFFF001A15100034312D00A3A3
      A30099999900B4B5B60058565400140F0A00797977009A9A9A009D9D9D007978
      7700110C070028252000FFFFFF00FFFFFF00FFFFFF001D191300838281009B9B
      9B009B9B9B00A8A9A9003F3C380024201B0025201B0046434000ACACAD009B9B
      9B009B9B9B007B79780018140E00FFFFFF00FFFFFF00FFFFFF00FFFFFF001410
      0A003D3A37009F9F9F0099999900A0A0A1009FA0A000999999009E9E9E00403D
      3900130F0900FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000100B05006B6A6700B1B2B20096969600A7A7A700BABBBC004C4A46001410
      0A0000000000000000000000000000000000FFFFFF001A150F0035322E00A2A3
      A3009B9B9B0099999900A1A1A200595755006A6866009B9B9B009B9B9B009C9C
      9C00B8B9BA00211D1700201C1700FFFFFF00FFFFFF00110C06004C4A46009C9C
      9C009B9B9B0099999900B7B8B9006B69670067656300B7B9BA00999999009B9B
      9B009D9D9E00423F3C00140F0900FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E000E090300B3B4B600B1B2B3000000000002000000B2B3B300B4B4B5000E09
      030027231E00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000100B05006A6A6800B0B2B20096969600A7A8A800B8B9BA004B4845001510
      0B0000000000000000000000000000000000FFFFFF001A150F0035322E00A2A2
      A3009B9B9B0099999900A2A2A300565452006A6967009B9B9B009B9B9B009C9C
      9C00B7B8B900211D1800211C1700FFFFFF00FFFFFF001915100033302B00A1A1
      A2009B9B9B009B9B9B00A6A6A7009A99990094949300A7A8A8009B9B9B009B9B
      9B00A4A4A5002B2823001D181300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0016120C00A3A3A400B0B1B20016120C001C181300ADAEAE00A5A5A6001511
      0B00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000100C05006B6A6800ACADAE00ABABAB00B2B2B300322F2B00090400002A26
      210000000000000000000000000000000000FFFFFF0019150F0036322F00A2A2
      A20099999900B3B4B50054524F0015110B007A7A79009A9A9A009D9D9D007574
      7300100B050028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00110C0700B2B2
      B4009B9B9B009B9B9B00A7A7A8008988870084838200A8A9A9009B9B9B009B9B
      9B00B2B3B4000F0B040026221E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E0059575400B2B3B400494743004F4D4A00B2B3B4005B5957002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000100C060067666400C1C2C300B1B1B300332F2C00070200002A2621000000
      000000000000000000000000000000000000FFFFFF0019150F0036332F00A0A0
      A000A4A5A500545250000A0600001A1610007A7978009D9D9D00B7B7B900100B
      06001B161000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00100B0500AFB0
      B0009B9B9B009B9B9B00A7A7A8008988870084838200A8A9A9009B9B9B009C9C
      9D00ABACAC00120D0700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00312D29009E9E9F008685850087868600A0A0A000332F2B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000C0702007C7B7A00C7C9CA00322F2B00070200002A262100000000000000
      000000000000000000000000000000000000FFFFFF0019150F0034312D00BABB
      BC0054524F00231E190027231E0018140F007C7C7A0075747300100B05002824
      1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221E19006564
      610072716F0063615F006967650063615F00605E5B006A69670063625F007675
      7300605E5B0024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000F0A0400504E4B009D9D9D009D9D9D0054514F000E090300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000002521
      1C0016110C00787775004C494600060200002A26210000000000000000000000
      000000000000000000000000000000000000FFFFFF0017120D003F3C39005B59
      57000B06000027231E00FFFFFF001A15100093949400100B06001B161100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F000904
      000025201B0072716F007C7B7A0006010000070200007D7C7B00747371001C18
      13000D08020027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001C18120028241F00B7B8BA00B6B7B9002A2722001B161100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000002521
      1C002925200025211C0016110C00292520000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0027231E0025211C00231F
      1A0027231E00FFFFFF00FFFFFF00282520001A16100028241F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001814
      0E003A37330096959500A3A3A400130E0800120E0800A4A4A50098989800312D
      29001C171200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0027231E0027231E00100B0500100B050027231E0027231E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000201C160000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0026221E0025211C002623
      1E00FFFFFF00FFFFFF00FFFFFF0026221C0025211C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002A2621002A26210025211D0026211C002A2621002A262100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0029252000120D
      07003F3C38005D5B5900413E3A0018140E0029252000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0029252000120D
      07003F3C38005D5B5900413E3A0018140E0029252000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E0017120D00110D07002824200028242000110D070017120D002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0029252000120E08008282
      820085858500706F6D0084848400302C2800110D0700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0029252000120E08008282
      820085858500706F6D0084848400302C2800110D0700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0024201B003E3B380047444100221E1900221E1900474441003E3B38002420
      1B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0028241F00302C270046433F0025211C00FFFFFF002521
      1C00211D1700201B160028241F00FFFFFF00FFFFFF0015110B00898888000100
      0000201C160027231E00211D180062605E008C8C8C0025201B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0015110B00898888000100
      0000201C160027231E00211D180062605E008C8C8C0025201B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140093939300BEBFC000140F0A00140F0A00BEBFC000939393001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000F0B05009E9E9D00A2A2A3001F1B160027231E000600
      0000514E4B0035322D001B171200FFFFFF00FFFFFF004744410082818100221E
      190026231E00FFFFFF00FFFFFF0015100A0080807F0018130E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004744410082818100221E
      190026231E00FFFFFF00FFFFFF0015100A0080807F0018130E0028241F001410
      0A00201C1700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      20001C18120052504D00BFC1C20086868500979796001A16100008020000BEBF
      C000B2B3B4004D4A4700130E0800FFFFFF00FFFFFF005A5856005E5C59002723
      1E00FFFFFF00FFFFFF00FFFFFF00100C06005D5B5900100B050024201B002420
      1B0024201B0024201B00FFFFFF00FFFFFF00FFFFFF005A5856005E5C59002723
      1E00FFFFFF00FFFFFF00FFFFFF00100C06005D5B5900100B0500110D0700C1C2
      C4005957540024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028242000211D18000A06
      0000140F0900CCCED0008989880069686600AAAAAB0007020000565350008787
      8500565350004A474300130E0800FFFFFF00FFFFFF0052504D0077767500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000F0A0400767574000904000016110B001713
      0D0017130D0016110B00221E1900FFFFFF00FFFFFF0052504D0077767500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000F0A0400767574000904000000000000C7C9
      CB0054514E0016110B00221E1900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00100B050059565300C6C7
      C900B1B1B2000C0701001D19130072716F00A8A8A900C1C2C400838381000904
      00003936320065636100110C0600FFFFFF00FFFFFF00110C06004C4946003D3A
      36000A050000130F09000B060000A2A2A30048464300A3A3A400BABCBD00B0B1
      B200B7B8B900C3C4C60048454200FFFFFF00FFFFFF00110C06004C4946003D3A
      36000A050000130F09000B060000A2A2A30048464300A3A3A400BDBEC0009494
      9400AAABAC00C3C4C60048454200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221D18002E2A25005654
      5100312E2900231F1A00FFFFFF0075747200B9B9BA007D7C7B00140F09001B16
      10003735300062605E00110C0600FFFFFF00FFFFFF0027231E000F0A0400999A
      9A006563620057555200727170004D4B480007020000332F2B0034322D003633
      2F00403D39003F3C380029262100FFFFFF00FFFFFF0027231E000F0A0400999A
      9A006563620057555200727170004D4B480007020000332F2B0024201B00B7B8
      B900686664003F3C380029262100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C
      1600565451001D181300FFFFFF002E2B260046433F001E19140028241F001C18
      1200302D28005B585600130E0900FFFFFF00FFFFFF00FFFFFF00FFFFFF000905
      00007B7B7A00000000000500000090908F007877760025211C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000905
      00007B7B7A00000000000500000090908F007877760025211C001E1A15006765
      63003B373300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E0027231E000B06
      0000AFB0B1000000000017130D001F1B1600130F090027241F00FFFFFF002723
      1E00221E190028241F0025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130F
      09007F7F7E00010000000D090300D3D5D7007573720025211C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130F
      09007F7F7E00010000000D090300D3D5D7007573720025211C00292520000B06
      00001D191300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1B1600211D1800C2C4
      C5009A9A9A00C9CACC007978760024201B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130F
      09007675740096959400A1A0A10063615F008887860025211C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130F
      09007675740096959400A1A0A10063615F008887860025211C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001E1A140090909000B9BABB0015100B0015100B00B9BABB00909090001E1A
      1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221E19003936
      31009E9E9F002C28230028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00110D
      070071706F00838281000C0701007A7877008685840025211C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00110D
      070071706F00838281000C0701007A7877008685840025211C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001D1913009A9A9A00C7C8C900130E0900130E0900C7C8C9009A9A9A001D19
      1300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C
      16007F7E7D0018130E0025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002521
      1C0026221E001E1A14002824200046433F004C494600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002521
      1C0026221E001E1A14002824200046433F004C494600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002925200029252100FFFFFF00FFFFFF002925210029252000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002420
      1B001D191300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E00221D180027231E00FFFFFF0018140E0016110B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E00221D180027231E00FFFFFF0018140E0016110B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E001F1B15001C18120027231E0027231E001C1812001F1B15002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002420
      1B0024201A0024201B0024201B0024201B0024201B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001B16100044403D006C6B69006B6967006B6967006F6E6C002723
      1E0019150F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0026221E0025211C001D1813001D18130024201B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00292520001511
      0B0019150F0019140F0019140F0019140F0019150F001A16100028241F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E001F1A1500A8A9A9009D9D9D00A1A1A200A1A1A2009D9D9D008B8B
      8A000D08020028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E00130F090015100B003F3C3800413E3A001D181300100B05002824
      1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221E19001A161000BEBF
      C100AEAFB000ADAEAF00ADAEAF00ADAEAF00ADAEAF009F9F9F00312D2900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F000F0A0400C1C2C30061605D001E1A14001F1B15001F1B15001F1B16004946
      4300BEC0C10015100A0025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0028241F002F2C270046433F0026211C00FFFFFF002621
      1C00211D1700201B160028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF001712
      0C00221E19007E7D7C00413E3A00211D18001D19130035322E006A6866003D3B
      37000F0A0400FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1813002E2B2600A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00BABBBC006B696700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001510
      0A0027231E0080807F000F0A040027231E00FFFFFF00FFFFFF0027231E00100C
      06008A8A890018130E0024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0026231E000F0B05009D9D9E00A2A2A2001F1B160027231E000600
      0000514E4B0035312D001C171100FFFFFF00FFFFFF00FFFFFF0027231E00211D
      180081807F00332F2B005C5A580085848300858483006A6866003C3834008585
      84003835310028241F00FFFFFF00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B20062605E00322E
      2A00211C1700FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00221E19007D7C
      7B00B8B9BB000D07010017120D0028241F00FFFFFF00FFFFFF00FFFFFF001713
      0D008584830019140F0024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      20001C181200524F4C00BFC0C20086858400979696001A16100008030000BDBF
      C000B2B3B4004C4A4500130E0900FFFFFF00FFFFFF00FFFFFF001A150F009A9A
      9A00A1A1A100201B16000B06000044413D004B484400080300000A050000A3A4
      A400B6B7B800120E080025211D00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B2005F5D5A009493
      93005C59570028241F00FFFFFF00FFFFFF00FFFFFF0027231E000E090300C3C5
      C6004C4A47002C282300615F5D00201B1600FFFFFF0025211C00FFFFFF00130F
      09008786850019140F0024201B00FFFFFF00FFFFFF0028242000211D18000A06
      0000140F0900CCCED0008989880069686500AAAAAB0006020000555350008787
      85005553500049464300130E0900FFFFFF00FFFFFF00FFFFFF000E0A0400BEBF
      C100585552004F4C490016120C001B16110019150F00241F1A00474541005453
      52008E8F8E0019150F00231F1A00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B2005F5D5A007F7E
      7D00BEBFC1002D2925001B171100FFFFFF00FFFFFF000D090200747371001712
      0D002B272200B4B5B6009B9A9A00514F4B002D292400514F4C00221D18003330
      2C007977760019140F0024201B00FFFFFF00FFFFFF00100B050059565300C5C7
      C900B0B1B2000C0701001D19130072717000A8A8A900C1C3C400838381000904
      00003936320065636100110C0600FFFFFF00FFFFFF0024201B00201C17003935
      3100070200001F1B150028242000130F0900393631005C5C5B00444341008786
      8600AAAAAA003E3B370017120C00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B2005F5D5A00807F
      7E00B6B7B8003B38340017120C00FFFFFF00FFFFFF00120E07004C494500A2A2
      A200B8B9BB0046433F00A0A0A10084838200332F2A007D7C7B0019140F00302C
      28007A79780019140F0024201B00FFFFFF00FFFFFF00221D18002E2A25005653
      5000312D2900231F1A00FFFFFF0075747200B9B9BA007D7B7A00130F09001B16
      11003735310062605E00110C0600FFFFFF00FFFFFF0024201B001D1913009999
      98006C6A6900221E1900FFFFFF002824200056545100A3A3A300787776005958
      570061605F00504E4A00120D0700FFFFFF00FFFFFF001D1914002C282300A5A5
      A500A8A9A90044413D0053504E004D4A47008F8F8E00B0B1B200605E5B008584
      84006765630024201B0027231E00FFFFFF00FFFFFF0029252000221E18000F0B
      0500110C06004F4C4A00A7A8A80076747300312D280071706E001B1611001C17
      13007372700019140F0024201B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF002E2B260045433F001E19140028241F001C18
      1200302D28005B585500130E0900FFFFFF00FFFFFF0025211C00130E09005B59
      56000000000028241F002A262100130E0800514E4B005C5A570098989800AAAA
      AA00AEAFAF001D191400231F1900FFFFFF00FFFFFF001C1813002C292400A7A7
      A700A9AAAA0035322E0047444100403D39008D8D8D00B8B9BA006D6B6900FFFF
      FF001A16100027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4A4700A7A8A80076747300312D280072716F0017120C005D5B
      58009999990016110C0024201B00FFFFFF00FFFFFF0027231E0027231E000F0A
      0400110D07000E0903001A1510001F1B1600130F090027241F00FFFFFF002723
      1E00231E190027231F0025211C00FFFFFF00FFFFFF00FFFFFF00130E0800A8A8
      A900110C06008A89890028252000221E19000C07010080807F0065646100A6A7
      A700A0A0A00016110B0027231E00FFFFFF00FFFFFF0027231E001F1A15006E6C
      6A009B9B9B00ADADAE00A6A7A7009C9C9C008B8B8A0054524F000E090300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0054524F00B7B8B90073716F002E2A25005D5A580025211B006260
      5E000F0A040029252000FFFFFF00FFFFFF00FFFFFF001F1B1600211D1800C2C4
      C500B2B3B400C6C7C9007877750024201B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001E1A
      1400ACADAE0018140E000C0701005C5A580069686500000000005D5B5800A0A0
      A100C0C1C300100A0400FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001A16
      1000FFFFFF006C6B6900A4A4A40033302B001E1A15001C18120024201A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00312D2800969696009B9C9C001C1712007B7A7900807F7E001F1B
      160016110B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221E19003A37
      3300373430003936310029252100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001914
      0E001A1510009898980071706D008C8B8B009C9C9C005F5D5A0082828100403E
      39007776750018130E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0024201B001C18120027231E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028241F001C17120068666500C9CBCC0078777500201C1700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E001A1610000F0B05001E1914001D181300110D070015100B002824
      1F00231F1A0026221E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0027231E00312D2800878786001F1B1600110C07002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0024201A0024201B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0024201B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002420
      1B0024201A0024201B0024201B0024201B0024201B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001A16
      100029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001510
      0B0019150F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00292520001511
      0B0019150F0019140F0019140F0019140F0019150F001B17110028242000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0025211C0014100A00A8A8
      A9001D19130046434000312D2900FFFFFF001F1B1600423F3C0003000000B5B6
      B7004F4C4900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00231F190018150F00BDBE
      C000AFB0B100ADAEAF00ADAEAF00ADAEAF00AEAEAF00979797002B282300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0024201B007F7E
      7C0090908F008483820037342F00231F1A00130F090075747200201D1A005856
      53000A050000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1813002D2A2500A6A6
      A6009A9A9A009B9B9B009B9B9B009B9B9B009B9B9B00BABCBD0069676500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C17006D6B
      6900888887007D7D7B004C49460055535000696865009E9E9E00BDBEBF00615F
      5C001B171200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A26
      21001C181300120E080014100A00221D18002925200016120C005A585500140F
      0A0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E0015100B00676563001915100028241F00231F1A00140F0900120E08001C18
      13002A262100FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B20063615E002925
      200014100A003F3C3800201B1600FFFFFF00FFFFFF00FFFFFF00231F1A004D4B
      47005A5855007B7A79007C7B7A007D7C7B006D6B69005B59560054514E004441
      3D00201C1700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D19
      13003C383400615F5D0071706E003A3733001B161100120E07005B5956002420
      1B00201C1600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002521
      1C00110D07007C7C7A000F0A04001D19130033302C007473710062605E003C38
      34001D191300FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B20063615E00120D
      070025211C0077767400100A0500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001B1611005A585600727270000000000066646200565350001A161100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00120D
      0800514F4C00ACACAE009E9E9E00110C06002A26210027231E000F0A04007674
      7200100B0500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001410
      0A005754510019140F0024201B002925200015110B0096969500AFB0B100524F
      4D00120D0800FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B20062615E006C6B
      6800C2C3C50071706E0016110B00FFFFFF00FFFFFF00FFFFFF00FFFFFF002521
      1C001B1712006C6B69005E5C590053514E0063615F00656361000C0700002521
      1C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130D
      080049474400A6A6A6009B9A9A000F0A04000F0B0500231F1A00080300007977
      76000F0B0500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130F
      090059575400130E0800201C1700110C06000D08020096969600A7A7A7004A47
      4400130E0800FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1914002B272200A5A5
      A5009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00B0B1B20063615E002D28
      2400979797007C7B7A001A151000FFFFFF00FFFFFF00FFFFFF00201C17007675
      74008685840068666400595754005654520071706F0076757400979796006563
      61001B161100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1B
      150037332F001E1A14000C070200706F6D009595950088888700A3A4A4001915
      0F00231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0015110B00A3A3A4008B8A8A0097969600777675000D0802001B1712003835
      30001F1B1500FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1914002C282300A5A4
      A500A7A8A800504E4D009A9A9A0054524F0091909000B0B1B20064625F002723
      1E000D080200747270001B161100FFFFFF00FFFFFF00FFFFFF00231F1A003633
      2E007877750080807F000C070100383531000F0B0400A5A6A600B6B6B8003330
      2B00231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F00221E1900231F1A00292621000F0A04001D191300504E4B004D4B47001F1B
      160028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E0025211C00413E3B0056545100211C17000F0A04002925200024201B00221E
      190028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1913002B272300A9A9
      A900AAAAAB0000000000514F4D0027231E00A4A4A500B9B9BB006C6A68002723
      1E00FFFFFF001C17120027231E00FFFFFF00FFFFFF00FFFFFF001B161100B2B2
      B30054524F006F6E6C0037342F00FFFFFF0018130E0063615F00000000009E9E
      9F00211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00211C17006463
      61009B9B9B00C1C3C4007C7B7900ACACAD008A8988004C4A47000D080200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0025211C0017120D00706F
      6D000C070100231F1A0028241F00FFFFFF00FFFFFF00231F1A001D1914008C8B
      8B0063625F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001A15
      100025211C006B696700B6B7B800302D28001F1A15001C18120025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00231F
      1A0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221D
      1800211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0024201B001C18120027231E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0029252000201B1600201C160029252000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00211D180016110B00100B0500100B050018140E0024201A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231F00120E
      0800201C1700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002521
      1C00120E080029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001A16
      100029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001510
      0B0019150F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028241F001B171100858583008B8B8A0019140E0028241F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F00231F19001D1914004C4A47007776740075747200413E3A0015100B00FFFF
      FF0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00211D18009594
      940089898800FFFFFF003F3D390025211C00FFFFFF003C39360035322D006360
      5E00AEAEAF001B171100FFFFFF00FFFFFF00FFFFFF0025211C0014100A00A8A8
      A9001D191300403D3A002E2A2600FFFFFF00211C17003D3B370004000000B5B6
      B7004F4C4900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0014100A00615F5D009E9E9E009B9B9B0067656400100B0500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F001612
      0C008585850065646100282420000F0A0500100B0500332F2B007B7B79006463
      61000D09020027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E001A16
      10009F9F9F003E3A37007E7D7C0025211C00FFFFFF00706F6E0059575400B1B1
      B20035312D0029252000FFFFFF00FFFFFF00FFFFFF00FFFFFF0024201B007F7E
      7C0090908F007D7C7B00322F2B00211C170017120C006F6E6C00221E1C005856
      53000A050000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00413E3A00BBBCBD009C9C9C0099999900CDCED0005B5956002521
      1C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00211C18008A8A
      8A00A8A9AA00090400000E09030018130E0017120C000E0902000A040000B9BB
      BC0064636100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D39
      350076757300DBDDE00055524F005D5A58005B59560034312D00CACBCE007D7C
      7A00504E4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C17006D6B
      6900888786008C8C8B000A05000086858400201C1600AFB0B100BBBBBD00615F
      5C001B171200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E000D08
      0200474440001B1712000F0A04007E7D7C00A5A5A500030000000F0A04005B58
      5600100B050028241F00FFFFFF00FFFFFF00FFFFFF001D1813002A2722005250
      4C000B06000062605E00A3A4A5003D3A3500413E3A00A3A4A40045423F000904
      00007B7A7A0015100B0024201A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00302C
      2800555350004E4B48005A5755005C5A57005956530062615E00484541005A59
      56003A363200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00231F1A004D4B
      470059575500413E3A0005000000A5A5A50023201B004E4B48005E5C59004441
      3D00201C1700FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F00211C17004A47
      4400C0C1C3000E09030019151000807F7E00A5A5A50015110B0004000000CDCF
      D1006765630019140F0029252000FFFFFF00FFFFFF00100C0600666462001813
      0E000F0A0400A7A8A900211E1B0044423E0036322E004C494700A3A4A4000E09
      0300332F2B00403D3A0018140E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004C49460055535100B1B1B200AAABAC005A58560058565300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001F1A15008B8B8A00A0A0A0009A9A9A00989898004C494500140F0900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0015110B006D6B6900A1A1
      A20097979700A6A6A700A4A4A4009D9D9D009A9A9A00A5A5A500A5A5A6009999
      99009B9C9C008C8C8B00201C1700FFFFFF00FFFFFF001A1610008A8A89000D09
      02002D2A25001B171100615F5C00070300001F1B160036332F00413E3A001712
      0C00100B050075747200100C0500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0025211C003E3A3600656361008E8D8D00A6A6A7005D5B5A00555350002420
      1B0026211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002521
      1C00201C170046433F00474541009898980052504D002E2A250019140F002521
      1C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0016110B0068666400A3A3
      A4009D9D9E007E7C7B0082818000969695009D9D9D0081807F007F7E7C009C9C
      9C009E9E9E0086858400201C1700FFFFFF00FFFFFF001B1711008A8A89000E09
      03002E2B260018140E006E6D6A00000000000702000045423E003C3834001813
      0E000F0A050077757400100C0600FFFFFF00FFFFFF00FFFFFF00FFFFFF003B37
      3300838382009A9A9A005C5A58005F5D5B0052504D00565350008B8A89008A8A
      8900504D4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C17007675
      740085848300737270000E0903007F7E7D00231E19008A898800959494006563
      61001B161100FFFFFF00FFFFFF00FFFFFF00FFFFFF0028241F00221E1900423F
      3B00BABBBC000E080200221E180082818000A4A4A40019150F000F0A0500BBBC
      BD00615F5D001B17110029252000FFFFFF00FFFFFF00100B050072706F00120D
      0800100B050099999A00000000006D6C6B00605F5D00221E1B00A3A4A5000E09
      030028241F004C49460016110B00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2A
      26003D3A3600CDCFD2005856530044423E004C4946003A373300BEBFC1004D4A
      4600322E2A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00231F1A003633
      2E0078777500807F7E001D1914001E1A15001A161000A0A0A000B7B8B9003330
      2B00231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00100B
      0500383530001A1510000D0802007D7C7B00A6A6A6000D0902001B171100413E
      3A0015100A0028241F00FFFFFF00FFFFFF00FFFFFF0019140F00393632003D3A
      36000D080200807F7F009999990019150F001C171200A7A8A80062605E000904
      0000656362001D191400211D1800FFFFFF00FFFFFF00FFFFFF0025211C005957
      5400B3B4B5002A2722006765640025211C00FFFFFF005C5B590048454200A3A3
      A3007E7D7C0023201A00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B161100B2B2
      B30055524F0067666400322F2A00FFFFFF001A1610005D5B5900000000009E9E
      9F00211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039363100BABBBC009D9D9D0097979700C0C1C20047454100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E001B171100A7A7
      A800888888000D080100100B05002E2B26002D2925000F0A04000B060000A8A9
      AA0086858500231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C16009392
      92004D4A4700231F1A00211D1800FFFFFF00FFFFFF00221F1900221E19002B27
      22009797970018140E00FFFFFF00FFFFFF00FFFFFF0025211C0017120D00706F
      6D000C080100201C170027231E00FFFFFF0027231E00211D18001D1914008C8B
      8B0063625F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00100B0500423F3B00A3A3A400A1A1A1004A4744000D080200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282520002926
      2100A6A7A8003D3A3600120D08000E0903000D08020018140E0052504D008A8A
      8A0016120C0028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201C
      170025211C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002723
      1E00201C170027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027231E00231F
      1A0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00221D
      1800211D1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0027231E00221E1900676563006C6B6900211C170027231E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      20001B1711003936330072716F008A8A89008A898900666562002A272200211D
      170028241F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0028241F0016110B0015100A0028241F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0027231E0019140F00100B05001B1711001A161000110C06001D1813002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000211D1700120D0700140F
      0900140F0A00140F0A00140F0A00140F0A00140F0A00140F0A00140F0A00140F
      0A00140F0900130E0800231F1A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00231F1A002A2621003F3C38004744
      410046433F0046423F004643400044413D0045423E0046433F0046423F004744
      400047433F003C38340027231F00231F1A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00292520002926210027231E0028241F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0024201B0026221C004744400048454200221E190025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027241F00211C1700615F
      5D0036332F0029252000FFFFFF00FFFFFF000F0A0400514F4B00BDBEC0009D9D
      9D009D9C9D00A1A1A200979696008686850092919100A0A0A0009E9E9E009D9C
      9D00A1A2A300B5B6B7003C383400130E0800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002925200016120C009A9A9B00858483001D18120028241F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001F1B150024201B00B5B5B700BCBDBE0016120C0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00211D17000A040000ADAE
      AF008584830015110C0029252000FFFFFF000F0A0400605E5B00989899001510
      0B0025211C0019150F001F1B15008C8B8B0045423F000B060300000000001E1A
      150024201D00A1A1A20047434000140E0900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0028241F00100B06007B7A79009A9A99009E9E9E00636260000B0600002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0026211C0015100A001C18120018130D006C6B69008F8F8E008180
      7E00BDBEBF00312E29001A151000FFFFFF00100B05005F5D5A00939393000F09
      040018130D00120E080088878500C7C8CA00AAABAC003B3835000D0902001712
      0C001F1B16009C9C9D0047444000140F0A00FFFFFF00FFFFFF00FFFFFF002824
      1F001F1A150072706F00B8B9BA009A9A9A009A9A9A00B6B7B8005A575400231F
      1A0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00282420000F0A04004D4A470088878600807F7E00959595003C393500BFBF
      C100AAAAAB00120D080028241F00FFFFFF00100B05005E5C5900969696001813
      0D000F0A04002A2520003D3C3B0098989800777676002F2C2A00211C16000C07
      01001F1B1700A0A0A10046433F00140F0A00FFFFFF00FFFFFF00FFFFFF001A15
      10006E6D6C00B2B2B300AAABAC009999990098989800ABACAD00B7B8B9005856
      540018130E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000F0A04009FA0A0001E1A150036322E003835310025211C00929292005654
      51000C08010027231E00FFFFFF00FFFFFF00100B05005F5D5A00959595000000
      000045433F00201C16000000000055525000322E2B0000000000373331007270
      6E00130F09009A999A0047434000140F0A00FFFFFF00FFFFFF00FFFFFF002A26
      22005C5B59004A4845004E4C4900A3A4A400A7A8A800464440004C4A47005654
      5100231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001410
      0A004D4A47001E1A140000000000A2A3A300ADAEAF0000000000292521003330
      2B0016110B00FFFFFF00FFFFFF00FFFFFF00100B05005C5A57008A898A004B49
      4900AFAFAF00656362002E2B26000E090300100C06004B4844008E8E8E00C6C8
      C9007F7F7E008887870044413D00140F0A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C18
      1200878785002A262100ABACAD009C9C9C009B9B9B00B2B2B3002E2A25008382
      810016120C00FFFFFF00FFFFFF00FFFFFF00100B050058565300888787009696
      9500C1C2C3009191910046433F000B0600000E0903003F3C380086858500B5B6
      B7005B5957008E8E8D0045423D00140F0A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C18
      13008786860027231E00929292009A9A9A009B9B9C0097979700292520008382
      810016120C00FFFFFF00FFFFFF00FFFFFF00100B05005F5D5A0089898900201D
      1B008C8C8B0026221E000300000037332F00403D390000000000312D29004F4C
      4A00090400009E9E9F0047444000140F0A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A26
      22005C5B59004A4845004E4C4900A3A4A400A7A8A800464440004C4A47005654
      5100231F1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001410
      0A004E4B49001D1A14000702000098989800A2A2A200000000002E2A25003C39
      350019140F00FFFFFF00FFFFFF00FFFFFF00100B05005E5C5900999999000701
      00001A1510002B2621001F1C1A007877760085848400231F1D0024201B000C07
      000026231E009E9E9F0046433F00140F0A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A15
      10006E6D6C00B2B2B300AAABAC009999990098989800ABACAD00B7B8B9005856
      540018130E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002621
      1C000F0A05009E9E9E001D19140025211C00FFFFFF0027231E00A7A8A9000D09
      030027231E00FFFFFF00FFFFFF00FFFFFF00100B05005E5C5900949494001510
      0A001B1711000F0A030059565200B6B7B800C1C2C30078767400120D07001A16
      1000231F1B009D9D9E0046433F00140F0A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002824
      1F001F1A150072706F00B8B9BA009A9A9A009A9A9A00B6B7B8005A575400231F
      1A0027231E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0028252000100B0500504D4A00878686008887860046433F000E0903002824
      1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00100B0500605E5C00939293000400
      000014100A00140F0A00010000006261600089898900110E0C000D0801000F0A
      050015100B009C9C9D0048444100140F0900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00201C160024201B00A8A8A900AEAFAF0018130D0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0028241F00100B06007B7A79009A9A99009E9E9E00636260000B0600002723
      1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0025211C0014100A001C1813001B17120016110C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D08020056555100C5C6C8009292
      9400949494009797970092929300898A8900888887008C8C8D00999999009393
      930099999800BEBFC0003F3B3800120D0700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001F1B150024201B00B5B5B700BCBDBE0016120C0024201B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002925200016120C009A9A9B00858483001D18120028241F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00201B16002F2C270056555200605F
      5B005E5C5A005E5C59005F5D5A005A59560059575400605E5B005E5C59005F5D
      5A00605E5B00514F4B002A262100211C1800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0024201B0026221C004744400048454200221E190025211C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00292520002926210027231E0028241F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A262100201B16000D080200100B
      0500100B0500100B0500100B0500100B0500100B0500100B0500100B0500100B
      05000F0B05000F0A0400231F1A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000F8FF000000000000
      E07F000000000000E03F000000000000F01F000000000000F00F000000000000
      F00F000000000000F00F000000000000F00F000000000000F00F000000000000
      F01F000000000000F03F000000000000E07F000000000000E0FF000000000000
      FBFF000000000000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080010000000000000000000000000000
      0000000000000000002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000000000000000000000000000000000
      000000000000}
  end
  object PmenuType: TPopupMenu
    Left = 288
    Top = 112
    object NonRealTime1: TMenuItem
      Caption = 'Non Real Time Point Track'
      OnClick = NonRealTime1Click
    end
    object NonRealTimeBearingTrack1: TMenuItem
      Caption = 'Non Real Time Bearing Track'
      OnClick = NonRealTimeBearingTrack1Click
    end
    object NonRealTime2: TMenuItem
      Caption = 'Non Real Time Area of Probability'
      OnClick = NonRealTime2Click
    end
    object SpecialPoint1: TMenuItem
      Caption = 'Special Point'
      OnClick = SpecialPoint1Click
    end
  end
  object pmDomain: TPopupMenu
    Left = 344
    Top = 112
    object Air1: TMenuItem
      Caption = '&Air'
      OnClick = Air1Click
    end
    object Surface1: TMenuItem
      Caption = '&Surface'
      OnClick = Surface1Click
    end
    object Subsurface1: TMenuItem
      Caption = 'S&ubsurface'
      OnClick = Subsurface1Click
    end
    object Land1: TMenuItem
      Caption = '&Land'
      OnClick = Land1Click
    end
    object General1: TMenuItem
      Caption = '&General'
      OnClick = General1Click
    end
  end
  object pmIdentity: TPopupMenu
    Left = 328
    Top = 168
    object Pending1: TMenuItem
      Caption = '&Pending'
      OnClick = Pending1Click
    end
    object Unknown1: TMenuItem
      Caption = '&Unknown'
      OnClick = Unknown1Click
    end
    object AssumedFriend1: TMenuItem
      Caption = '&Assumed Friend'
      OnClick = AssumedFriend1Click
    end
    object Friend1: TMenuItem
      Caption = '&Friend'
      OnClick = Friend1Click
    end
    object Neutral1: TMenuItem
      Caption = '&Neutral'
      OnClick = Neutral1Click
    end
    object Suspect1: TMenuItem
      Caption = '&Suspect'
      OnClick = Suspect1Click
    end
    object Hostile1: TMenuItem
      Caption = '&Hostile'
      OnClick = Hostile1Click
    end
  end
  object pmforce: TPopupMenu
    Left = 192
    Top = 112
    object ForceRed1: TMenuItem
      Caption = 'Force &Red'
      OnClick = ForceRed1Click
    end
    object ForceBlue1: TMenuItem
      Tag = 1
      Caption = 'Force &Blue'
      OnClick = ForceBlue1Click
    end
    object ForceGreen1: TMenuItem
      Tag = 2
      Caption = 'Force &Green'
      OnClick = ForceGreen1Click
    end
    object ForceAmber1: TMenuItem
      Tag = 3
      Caption = 'Force &Amber'
      OnClick = ForceAmber1Click
    end
    object NoForce1: TMenuItem
      Tag = 4
      Caption = 'No Force'
      OnClick = NoForce1Click
    end
  end
  object pmPlatformType: TPopupMenu
    Left = 320
    Top = 232
    object Acoustic1: TMenuItem
      Caption = 'Acoustic Decoy'
    end
  end
  object pmPropulsionType: TPopupMenu
    Left = 232
    Top = 400
    object Unknown2: TMenuItem
      Caption = 'Unknown'
    end
    object Convensional1: TMenuItem
      Caption = 'Convensional'
    end
    object Nuclear1: TMenuItem
      Caption = 'Nuclear'
    end
  end
  object pmpumtype: TPopupMenu
    Left = 320
    Top = 288
    object mnAircraftCarrier: TMenuItem
      Caption = 'Aircraft Carrier (CV/CVN)'
      RadioItem = True
    end
    object mnAmphibiousWarfare: TMenuItem
      Caption = 'Amphibious Warfare'
      RadioItem = True
    end
    object mnAuxiliary: TMenuItem
      Caption = 'Auxiliary'
      RadioItem = True
    end
    object mnChaff: TMenuItem
      Caption = 'Chaff'
      RadioItem = True
    end
    object mnCruiserGuidedMissile: TMenuItem
      Caption = 'Cruiser, Guided Missile (CG/CGN)'
      RadioItem = True
    end
    object mnDestroyer: TMenuItem
      Caption = 'Destroyer'
      RadioItem = True
    end
    object mnDestroyerGuidedMissle: TMenuItem
      Caption = 'Destroyer, Guided Missle (DOG)'
      RadioItem = True
    end
    object mnFrigate: TMenuItem
      Caption = 'Frigate (FF)'
      RadioItem = True
    end
    object mnFrigateGuidedMissle: TMenuItem
      Caption = 'Frigate, Guided Missle (FFG)'
      RadioItem = True
    end
    object mnInfraredDecoy: TMenuItem
      Caption = 'Infrared Decoy'
      RadioItem = True
    end
    object mnJammerDecoy: TMenuItem
      Caption = 'Jammer Decoy'
      RadioItem = True
    end
    object mnMerchant: TMenuItem
      Caption = 'Merchant'
      RadioItem = True
    end
    object mnMineWar: TMenuItem
      Caption = 'Mine Warfare'
    end
    object mnPatrolCraff: TMenuItem
      Caption = 'Patrol Craft (PT/PTG)'
    end
    object mnUtility: TMenuItem
      Caption = 'Utility Vessel'
    end
    object mnOther: TMenuItem
      Caption = 'Other'
    end
  end
  object j: TPopupMenu
    Left = 248
    Top = 144
    object mnAir: TMenuItem
      Caption = '&Air'
      OnClick = mnAirClick
    end
    object mnSurface: TMenuItem
      Tag = 1
      Caption = '&Surface'
      OnClick = mnAirClick
    end
    object mnSubsurface: TMenuItem
      Tag = 2
      Caption = 'S&ubsurface'
      OnClick = mnAirClick
    end
    object mnLand: TMenuItem
      Tag = 3
      Caption = '&Land'
      OnClick = mnAirClick
    end
    object mnGeneral: TMenuItem
      Tag = 4
      Caption = '&General'
      OnClick = mnAirClick
    end
  end
  object pmpumidentity: TPopupMenu
    Left = 200
    Top = 400
    object mnPending: TMenuItem
      Caption = '&Pending'
      OnClick = mnPendingClick
    end
    object mnUnknown: TMenuItem
      Tag = 1
      Caption = '&Unknown'
      OnClick = mnPendingClick
    end
    object mnAssumedFriend: TMenuItem
      Tag = 2
      Caption = '&Assumed Friend'
      OnClick = mnPendingClick
    end
    object mnFriend: TMenuItem
      Tag = 3
      Caption = '&Friend'
      OnClick = mnPendingClick
    end
    object mnNeutral: TMenuItem
      Tag = 4
      Caption = '&Neutral'
      OnClick = mnPendingClick
    end
    object mnSuspent: TMenuItem
      Tag = 5
      Caption = '&Suspect'
      OnClick = mnPendingClick
    end
    object mnHostile: TMenuItem
      Tag = 6
      Caption = '&Hostile'
      OnClick = mnPendingClick
    end
  end
  object pmGeneralSpecial: TPopupMenu
    Left = 160
    Top = 400
    object General2: TMenuItem
      Caption = '&General'
      Hint = 'General'
      OnClick = ASWGeneral1Click
    end
    object Bouy1: TMenuItem
      Caption = '&Buoy'
      Hint = 'Sonobuoy'
      OnClick = ASWGeneral1Click
    end
    object DatalinkReferencePoint1: TMenuItem
      Caption = '&Datalink Reference Point'
      Hint = 'DataLinkReferencePoint'
      OnClick = ASWGeneral1Click
    end
    object DistressedVessel1: TMenuItem
      Caption = 'Distressed &Vessel'
      Hint = 'DistressedVessel'
      OnClick = ASWGeneral1Click
    end
    object ESMECMFix1: TMenuItem
      Caption = '&ESM/ECM Fix'
      Hint = 'EsmEcmFix'
      OnClick = ASWGeneral1Click
    end
    object GroundZero1: TMenuItem
      Caption = '&Ground Zero'
      Hint = 'GroundZero'
      OnClick = ASWGeneral1Click
    end
    object ManInZero1: TMenuItem
      Caption = 'Man In &Water'
      Hint = 'ManInWater'
      OnClick = ASWGeneral1Click
    end
    object MaritimeHeadquarter1: TMenuItem
      Caption = 'Maritime Head&quarter'
      Hint = 'MaritimeHeadquarters'
      OnClick = ASWGeneral1Click
    end
    object MineHazard1: TMenuItem
      Caption = '&Mine Hazard'
      Hint = 'Mine'
      OnClick = ASWGeneral1Click
    end
    object NavigationHazart1: TMenuItem
      Caption = '&Navigation Hazard'
      Hint = 'NavigationHazard'
      OnClick = ASWGeneral1Click
    end
    object OilRig1: TMenuItem
      Caption = '&Oil Rig'
      Hint = 'OilRig'
      OnClick = ASWGeneral1Click
    end
    object Station1: TMenuItem
      Caption = '&Station'
      Hint = 'Station'
      OnClick = ASWGeneral1Click
    end
    object acticalGridOrigin1: TMenuItem
      Caption = '&Tactical Grid Origin'
      Hint = 'TacticalGridorigin'
      OnClick = ASWGeneral1Click
    end
  end
  object pmAirSpecial: TPopupMenu
    Left = 128
    Top = 400
    object AirGeneral1: TMenuItem
      Caption = '&Air General'
      Hint = 'Air'
      OnClick = ASWGeneral1Click
    end
    object AirborneEarlyWarning1: TMenuItem
      Caption = 'Airborne Early &Warning'
      Hint = 'AirborneEarlyWarning'
      OnClick = ASWGeneral1Click
    end
    object Bullseye1: TMenuItem
      Caption = '&Bullseye'
      Hint = 'Bullseye'
      OnClick = ASWGeneral1Click
    end
    object CombatAirPatrol1: TMenuItem
      Caption = '&Combat Air Patrol'
      Hint = 'CombatAirPatrol'
      OnClick = ASWGeneral1Click
    end
    object DitchedAirCraft1: TMenuItem
      Caption = '&Ditched Air Craft'
      Hint = 'DitchedAirCraft'
      OnClick = ASWGeneral1Click
    end
    object Gate1: TMenuItem
      Caption = '&Gate'
      Hint = 'Gate'
      OnClick = ASWGeneral1Click
    end
  end
  object pmASW: TPopupMenu
    Left = 88
    Top = 400
    object ASWGeneral1: TMenuItem
      Caption = 'ASW General'
      Hint = 'AswGeneral'
      OnClick = ASWGeneral1Click
    end
    object BriefContact1: TMenuItem
      Caption = 'Brief Contact'
      Hint = 'BriefContact'
      OnClick = ASWGeneral1Click
    end
    object Datum1: TMenuItem
      Caption = 'Datum'
      Hint = 'Datum'
      OnClick = ASWGeneral1Click
    end
    object Kingpin1: TMenuItem
      Caption = 'Kingpin'
      Hint = 'Kingpin'
      OnClick = ASWGeneral1Click
    end
    object Riser1: TMenuItem
      Caption = 'Riser'
      Hint = 'Riser'
      OnClick = ASWGeneral1Click
    end
    object SearchCenter1: TMenuItem
      Caption = 'Search Center'
      Hint = 'SearchCenter'
      OnClick = ASWGeneral1Click
    end
    object Sinker1: TMenuItem
      Caption = 'Sinker'
      Hint = 'Sinker'
      OnClick = ASWGeneral1Click
    end
    object WeaponEntryPoint1: TMenuItem
      Caption = 'Weapon Entry Point'
      Hint = 'WeaponEntryPoint'
      OnClick = ASWGeneral1Click
    end
    object Wreck1: TMenuItem
      Caption = 'Wreck'
      Hint = 'Wreck'
      OnClick = ASWGeneral1Click
    end
  end
end
