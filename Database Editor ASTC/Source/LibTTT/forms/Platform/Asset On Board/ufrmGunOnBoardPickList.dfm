object frmGunOnBoardPickList: TfrmGunOnBoardPickList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Gun On Board'
  ClientHeight = 408
  ClientWidth = 754
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlButton: TPanel
    Left = 0
    Top = 365
    Width = 754
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 383
    ExplicitWidth = 621
    object btnClose: TButton
      Left = 668
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 365
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 621
    ExplicitHeight = 378
    object imgExercise: TImage
      Left = 12
      Top = 8
      Width = 313
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000011C0000
        002108060000000B671427000000097048597300000B1300000B1301009A9C18
        000002284944415478DAEDDDBD6B13711CC7F14F9E6C92B6146C8D266DA08854
        0441045D45275D6BB1E0A09B75D1C507D4FE016AF161D145DD74102AB5AB4E8A
        AB820882280E85DA54632B94B6496A1ECEF4577A0E4208B5F73B2EBC5F4B7EF7
        CDF29DDE5C6EB884B23B071C018005218203C01637380BFB0755EADDABDA96E4
        EAD8EFBD00049EA3F0EF82E2331FD5F57ED24CDCE0CC0CDF552DDEE9F786005A
        4CB8B4A8DEF10BE6EC066776F0BA2A9DDB9419BFA870B958FF86BB1C001BE438
        AAC512CA0DDF5174F1A7D293A366EC0667FAD483FA55587D4FCF2B542EF9BD2E
        80807362717D3B79AF7EA829FBE4AC99FD139CCCB34B8A1417FCDE1540C05513
        5DCA9DB84D7000788FE000B0A671704E3F3283D48B31B5E5BFFABD2B80805B49
        ED52FED81573CE3E3E633E090E004F101C00D6101C00D6101C00D6101C00D610
        1C00D6101C00D6101C00D6101C00D6101C00D634159CEE370F959C7AEBF7AE00
        02AED07F50F38746CC99E000F05453C1E979755F89E90F7EEF0A20E08AD97D9A
        3B72CE9C090E004F35151C1E1A03D80C0D1F1ACF1EBFA14A470FEF3406B029D6
        DF691C5D9A53FAF935332338003C41700058D33038B9A13155DBB7BABFB500E0
        7FAD3E1B8E2CFF526662ED59CEDF3B9CA19BAAB4772B39F54EA15A590E7FF70B
        608342F58238E1980AFD07145D9E577AE2EADA7C3D38F9A397B5B27DC0EF3D01
        B498B61F5F947A79CB9CDDE02CED3EACD28E3D5224EAF77E005A45B5A2F8F74F
        EAF8FCDA5CBAC10100AFFD0170005115015540A60000000049454E44AE426082}
      Stretch = True
    end
    object Label1: TLabel
      Left = 22
      Top = 16
      Width = 107
      Height = 14
      Cursor = crHandPoint
      Caption = 'List of available Gun'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Image1: TImage
      Left = 430
      Top = 8
      Width = 313
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000011C0000
        002108060000000B671427000000097048597300000B1300000B1301009A9C18
        000002284944415478DAEDDDBD6B13711CC7F14F9E6C92B6146C8D266DA08854
        0441045D45275D6BB1E0A09B75D1C507D4FE016AF161D145DD74102AB5AB4E8A
        AB820882280E85DA54632B94B6496A1ECEF4577A0E4208B5F73B2EBC5F4B7EF7
        CDF29DDE5C6EB884B23B071C018005218203C01637380BFB0755EADDABDA96E4
        EAD8EFBD00049EA3F0EF82E2331FD5F57ED24CDCE0CC0CDF552DDEE9F786005A
        4CB8B4A8DEF10BE6EC066776F0BA2A9DDB9419BFA870B958FF86BB1C001BE438
        AAC512CA0DDF5174F1A7D293A366EC0667FAD483FA55587D4FCF2B542EF9BD2E
        80807362717D3B79AF7EA829FBE4AC99FD139CCCB34B8A1417FCDE1540C05513
        5DCA9DB84D7000788FE000B0A671704E3F3283D48B31B5E5BFFABD2B80805B49
        ED52FED81573CE3E3E633E090E004F101C00D6101C00D6101C00D6101C00D610
        1C00D6101C00D6101C00D6101C00D6101C00D634159CEE370F959C7AEBF7AE00
        02AED07F50F38746CC99E000F05453C1E979755F89E90F7EEF0A20E08AD97D9A
        3B72CE9C090E004F35151C1E1A03D80C0D1F1ACF1EBFA14A470FEF3406B029D6
        DF691C5D9A53FAF935332338003C41700058D33038B9A13155DBB7BABFB500E0
        7FAD3E1B8E2CFF526662ED59CEDF3B9CA19BAAB4772B39F54EA15A590E7FF70B
        608342F58238E1980AFD07145D9E577AE2EADA7C3D38F9A397B5B27DC0EF3D01
        B498B61F5F947A79CB9CDDE02CED3EACD28E3D5224EAF77E005A45B5A2F8F74F
        EAF8FCDA5CBAC10100AFFD0170005115015540A60000000049454E44AE426082}
      Stretch = True
    end
    object Label2: TLabel
      Left = 439
      Top = 16
      Width = 114
      Height = 14
      Cursor = crHandPoint
      Caption = 'List of Gun On Board'
      Color = clHighlight
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
      Left = 346
      Top = 144
      Width = 62
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnEdit: TButton
      Left = 668
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnRemove: TButton
      Left = 346
      Top = 175
      Width = 62
      Height = 25
      Caption = 'Remove'
      TabOrder = 2
      OnClick = btnRemoveClick
    end
    object lbAllGunDef: TListBox
      Left = 12
      Top = 44
      Width = 313
      Height = 286
      ItemHeight = 14
      TabOrder = 3
      OnClick = lbAllGunDefClick
      OnDblClick = btnAddClick
    end
    object lbAllGunOnBoard: TListBox
      Left = 430
      Top = 44
      Width = 313
      Height = 286
      ItemHeight = 14
      TabOrder = 4
      OnClick = lbAllGunOnBoardClick
      OnDblClick = btnEditClick
    end
  end
end
