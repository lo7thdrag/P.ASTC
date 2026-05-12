object frmCubicleGroupAllocation: TfrmCubicleGroupAllocation
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Group in TestScenario'
  ClientHeight = 589
  ClientWidth = 457
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
  object pnlSparatorHor1: TPanel
    Left = 0
    Top = 65
    Width = 457
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 457
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
      ExplicitTop = 11
      ExplicitHeight = 1
    end
  end
  object pnlSparatorHor2: TPanel
    Left = 0
    Top = 541
    Width = 457
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 504
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 457
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
      ExplicitTop = 6
    end
  end
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 447
    object lblName: TLabel
      Left = 10
      Top = 8
      Width = 39
      Height = 14
      Caption = 'Name :'
    end
    object edtName: TEdit
      Left = 10
      Top = 29
      Width = 426
      Height = 22
      TabOrder = 0
      OnKeyPress = edtNameKeyPress
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 70
    Width = 457
    Height = 471
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 5
    ExplicitTop = 75
    ExplicitWidth = 447
    ExplicitHeight = 461
    object btnBrowse: TSpeedButton
      Left = 307
      Top = 107
      Width = 23
      Height = 22
      Caption = '...'
      Visible = False
    end
    object lblZuluZulu: TLabel
      Left = 10
      Top = 87
      Width = 50
      Height = 14
      Caption = 'Zulu-Zulu'
      Visible = False
    end
    object edtZuluZulu: TEdit
      Left = 10
      Top = 107
      Width = 291
      Height = 22
      ReadOnly = True
      TabOrder = 0
      Visible = False
    end
    object grbExternalComm: TGroupBox
      Left = 10
      Top = 263
      Width = 426
      Height = 183
      Caption = 'External Communication Channels'
      TabOrder = 1
      object btnAddExternalComm: TButton
        Left = 339
        Top = 24
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Add...'
        TabOrder = 0
        OnClick = btnAddExternalCommClick
      end
      object btnRemoveExternalComm: TButton
        Left = 339
        Top = 63
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Remove'
        Enabled = False
        TabOrder = 1
        OnClick = btnRemoveExternalCommClick
      end
      object btnMoveUpExternalComm: TButton
        Left = 339
        Top = 104
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Move Up'
        Enabled = False
        TabOrder = 2
        OnClick = btnMoveUpExternalCommClick
      end
      object btnMoveDownExternalComm: TButton
        Left = 339
        Top = 144
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Move Down'
        Enabled = False
        TabOrder = 3
        OnClick = btnMoveDownExternalCommClick
      end
      object lstExternallComm: TListView
        Left = 12
        Top = 24
        Width = 308
        Height = 145
        Columns = <
          item
            Caption = 'Channel'
            MaxWidth = 136
            Width = 70
          end
          item
            Alignment = taCenter
            Caption = 'Channel Number'
            MaxWidth = 136
            Width = 110
          end
          item
            Alignment = taCenter
            Caption = 'Channel Name'
            MaxWidth = 136
            Width = 124
          end>
        ColumnClick = False
        GridLines = True
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnClick = lstExternallCommClick
      end
    end
    object grbMembers: TGroupBox
      Left = 10
      Top = 74
      Width = 426
      Height = 183
      Caption = 'Members   '
      TabOrder = 2
      object btnAddMembers: TButton
        Left = 339
        Top = 24
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Add...'
        TabOrder = 0
        OnClick = btnAddMembersClick
      end
      object btnRemoveMembers: TButton
        Left = 339
        Top = 64
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Remove'
        Enabled = False
        TabOrder = 1
        OnClick = btnRemoveMembersClick
      end
      object btnMoveUpMembers: TButton
        Left = 339
        Top = 104
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Move Up'
        Enabled = False
        TabOrder = 2
        OnClick = btnMoveUpMembersClick
      end
      object btnMoveDownMembers: TButton
        Left = 339
        Top = 144
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Move Down'
        Enabled = False
        TabOrder = 3
        OnClick = btnMoveDownMembersClick
      end
      object lstMembers: TListView
        Left = 12
        Top = 24
        Width = 308
        Height = 145
        Columns = <
          item
            Caption = 'Command Priority'
            MaxWidth = 205
            Width = 125
          end
          item
            Alignment = taCenter
            Caption = 'Member Name'
            MaxWidth = 205
            Width = 180
          end>
        ColumnClick = False
        GridLines = True
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnClick = lstMembersClick
      end
    end
    object grbTrackBlockRange: TGroupBox
      Left = 10
      Top = 8
      Width = 271
      Height = 60
      Caption = 'Track Block Range   '
      TabOrder = 3
      object lblStart: TLabel
        Left = 14
        Top = 29
        Width = 35
        Height = 14
        Caption = 'Start :'
      end
      object lblEnd: TLabel
        Left = 150
        Top = 29
        Width = 29
        Height = 14
        Caption = 'End :'
      end
      object edtStart: TEdit
        Left = 69
        Top = 25
        Width = 49
        Height = 22
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtEnd: TEdit
        Left = 198
        Top = 25
        Width = 57
        Height = 22
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 293
      Top = 6
      Width = 143
      Height = 60
      Caption = 'Force   '
      TabOrder = 4
      object lblForce: TLabel
        Left = 21
        Top = 31
        Width = 38
        Height = 14
        Caption = 'Force :'
      end
      object edtForce: TEdit
        Left = 73
        Top = 27
        Width = 47
        Height = 22
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 546
    Width = 457
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 5
    ExplicitTop = 541
    ExplicitWidth = 447
    object btnApply: TButton
      Left = 280
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnOK: TButton
      Left = 199
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 361
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
