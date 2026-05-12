object frmRadarOnBoardPickList: TfrmRadarOnBoardPickList
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = '   Radar On Board'
  ClientHeight = 426
  ClientWidth = 621
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl3Button: TPanel
    Left = 0
    Top = 383
    Width = 621
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object btnClose: TButton
      Left = 528
      Top = 8
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
    Width = 621
    Height = 378
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
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
      Width = 132
      Height = 16
      Cursor = crHandPoint
      Caption = 'List of available Radars'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 355
      Top = 16
      Width = 135
      Height = 16
      Cursor = crHandPoint
      Caption = 'List of Radars On Board'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
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
      OnClick = btnEditClick
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
    object lbAllRadarDef: TListBox
      Left = 8
      Top = 43
      Width = 257
      Height = 286
      ItemHeight = 14
      TabOrder = 3
      OnClick = lbAllRadarDefClick
      OnDblClick = btnAddClick
    end
    object lbAllRadarOnBoard: TListBox
      Left = 347
      Top = 43
      Width = 257
      Height = 286
      ItemHeight = 14
      TabOrder = 4
      OnClick = lbAllRadarOnBoardClick
      OnDblClick = btnEditClick
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
    TabOrder = 2
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
