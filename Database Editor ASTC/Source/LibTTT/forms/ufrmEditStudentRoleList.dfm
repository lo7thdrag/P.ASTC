object frmEditStudentRoleList: TfrmEditStudentRoleList
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = '   Student Role List'
  ClientHeight = 406
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMainBackground: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 406
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentBackground = False
    TabOrder = 0
    object pnl2ControlPage: TPanel
      Left = 5
      Top = 5
      Width = 295
      Height = 353
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      Color = 2499101
      ParentBackground = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 8
        Top = 8
        Width = 74
        Height = 13
        Caption = 'Student Roles :'
      end
      object btnAdd: TButton
        Left = 207
        Top = 21
        Width = 75
        Height = 25
        Caption = 'Add'
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnRemove: TButton
        Left = 207
        Top = 52
        Width = 75
        Height = 25
        Caption = 'Remove'
        TabOrder = 1
        OnClick = btnRemoveClick
      end
      object edtStudent: TEdit
        Left = 6
        Top = 23
        Width = 195
        Height = 21
        TabOrder = 2
        OnKeyPress = edtStudentKeyPress
      end
      object lbStudent: TListBox
        Left = 6
        Top = 50
        Width = 195
        Height = 280
        ItemHeight = 13
        TabOrder = 3
        OnClick = lbStudentClick
      end
    end
    object pnl3Button: TPanel
      Left = 5
      Top = 358
      Width = 295
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 2499101
      ParentBackground = False
      TabOrder = 1
      object btnApply: TButton
        Left = 135
        Top = 0
        Width = 71
        Height = 25
        Caption = 'Apply'
        TabOrder = 0
        OnClick = btnApplyClick
      end
      object Button2: TButton
        Left = 58
        Top = 0
        Width = 71
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = btnOKClick
      end
      object Button3: TButton
        Left = 211
        Top = 0
        Width = 71
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
end
