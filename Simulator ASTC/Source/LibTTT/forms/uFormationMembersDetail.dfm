object frmFormationMembersDetail: TfrmFormationMembersDetail
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Members Properties'
  ClientHeight = 146
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpMembers: TGroupBox
    Left = -1
    Top = 0
    Width = 274
    Height = 134
    TabOrder = 0
    object btnClose: TButton
      Left = 182
      Top = 98
      Width = 80
      Height = 25
      Caption = 'Close'
      TabOrder = 10
      OnClick = btnCloseClick
    end
    object lblAltitude: TStaticText
      Left = 10
      Top = 64
      Width = 108
      Height = 17
      Caption = 'Altitude                     :'
      TabOrder = 2
    end
    object lblRange: TStaticText
      Left = 10
      Top = 40
      Width = 109
      Height = 17
      Caption = 'Range from Leader   :'
      TabOrder = 4
    end
    object lblBearing: TStaticText
      Left = 10
      Top = 17
      Width = 108
      Height = 17
      Caption = 'Bearing from Leader :'
      TabOrder = 5
    end
    object edtAltitude: TEdit
      Left = 122
      Top = 61
      Width = 90
      Height = 21
      TabOrder = 3
      Text = '000'
      OnKeyPress = edtAltitudeKeyPress
    end
    object edtRange: TEdit
      Left = 122
      Top = 37
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '000'
    end
    object edtBearing: TEdit
      Left = 122
      Top = 13
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '000'
    end
    object lbAltitude: TStaticText
      Left = 218
      Top = 64
      Width = 24
      Height = 17
      Caption = 'feet'
      TabOrder = 6
    end
    object lbRange: TStaticText
      Left = 218
      Top = 40
      Width = 18
      Height = 17
      Caption = 'nm'
      TabOrder = 7
    end
    object lblDegrees: TStaticText
      Left = 218
      Top = 17
      Width = 43
      Height = 17
      Caption = 'degrees'
      TabOrder = 8
    end
    object btnAddorRemove: TButton
      Left = 102
      Top = 98
      Width = 80
      Height = 25
      Caption = 'Add Members'
      TabOrder = 9
      OnClick = btnAddorRemoveClick
    end
  end
end
