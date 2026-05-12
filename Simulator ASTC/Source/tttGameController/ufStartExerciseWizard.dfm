object frmStartExerciseWizard: TfrmStartExerciseWizard
  Left = 0
  Top = 0
  BorderWidth = 5
  Caption = 'Exercise Start Wizard'
  ClientHeight = 611
  ClientWidth = 782
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel1: TBevel
    Left = 0
    Top = 57
    Width = 782
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object pnlCubicleMapping: TPanel
    Left = 0
    Top = 59
    Width = 782
    Height = 552
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Label4: TLabel
      Left = 407
      Top = 16
      Width = 342
      Height = 89
      AutoSize = False
      Caption = 
        'This screen will allow you to map cubicle groups to cubicles,'#13#10'r' +
        'eserve cubicles for Cubicle Groups, and assign briefing'#13#10'rooms t' +
        'o Cubicle Groups that have been assigned to '#13#10'cubicles.'
      WordWrap = True
    end
    object Label5: TLabel
      Left = 407
      Top = 120
      Width = 342
      Height = 41
      AutoSize = False
      Caption = 
        'Right Click on the Cubicle Group to assign or clear cubicle'#13#10'or ' +
        'a Controller Station'
    end
    object Label6: TLabel
      Left = 407
      Top = 181
      Width = 342
      Height = 53
      AutoSize = False
      Caption = 
        'Right Click on '#39'Reserved Cubicles'#39' and select the cubicle(s)'#13#10'yo' +
        'u would like to reserve from the list of available cubicles.'
    end
    object Label7: TLabel
      Left = 407
      Top = 253
      Width = 342
      Height = 44
      AutoSize = False
      Caption = 
        'Right Click on '#39'Reserved Cubicles'#39' and select the cubicle(s)'#13#10'yo' +
        'u would like to reserve from the list of available cubicles.'
    end
    object Label8: TLabel
      Left = 407
      Top = 316
      Width = 342
      Height = 45
      AutoSize = False
      Caption = 
        'Click '#39'&Map unassigned Cubicle Groups to Controllers'#39' to map '#13#10'a' +
        'll the unassigned Cubible Groups to Controllers'#13#10
    end
    object Label9: TLabel
      Left = 407
      Top = 383
      Width = 330
      Height = 42
      AutoSize = False
      Caption = 
        #39'&Clear All configurations'#39'  will unassign all Cubicle Groups.'#13#10 +
        #13#10
    end
    object Panel4: TPanel
      Left = 0
      Top = 495
      Width = 782
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        782
        57)
      object Bevel4: TBevel
        Left = 0
        Top = 0
        Width = 782
        Height = 2
        Align = alTop
      end
      object btnMapping_Finish: TButton
        Left = 563
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '&Finish'
        TabOrder = 0
        OnClick = btnMapping_FinishClick
      end
      object btnMapping_Cancel: TButton
        Left = 687
        Top = 17
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Cancel'
        TabOrder = 1
        OnClick = btnExcName_CancelClick
      end
      object btnMapping_Back: TButton
        Left = 482
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '< &Back'
        TabOrder = 2
        OnClick = btnMapping_BackClick
      end
    end
    object tvMapping: TTreeView
      Left = 24
      Top = 16
      Width = 345
      Height = 377
      Align = alCustom
      Anchors = [akLeft, akTop, akBottom]
      Indent = 19
      PopupMenu = pmAssignt
      TabOrder = 1
      OnChange = tvMappingChange
      OnContextPopup = tvMappingContextPopup
    end
    object btnMapToControllers: TButton
      Left = 45
      Top = 417
      Width = 123
      Height = 60
      Align = alCustom
      Anchors = [akLeft, akBottom]
      Caption = '&Map unassigned Cubicle Groups to Controllers'
      TabOrder = 2
      WordWrap = True
      OnClick = btnMapToControllersClick
    end
    object btnClearAllConfig: TButton
      Left = 206
      Top = 417
      Width = 124
      Height = 60
      Align = alCustom
      Anchors = [akLeft, akBottom]
      Caption = '&Clear All configurations'
      TabOrder = 3
      WordWrap = True
      OnClick = btnClearAllConfigClick
    end
  end
  object pnlDevPreplay: TPanel
    Left = 0
    Top = 59
    Width = 782
    Height = 552
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    OnClick = pnlDevPreplayClick
    object Panel6: TPanel
      Left = 0
      Top = 495
      Width = 782
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        782
        57)
      object Bevel5: TBevel
        Left = 0
        Top = 0
        Width = 782
        Height = 2
        Align = alTop
      end
      object Button1: TButton
        Left = 683
        Top = 17
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Cancel'
        TabOrder = 0
        OnClick = btnExcName_CancelClick
      end
      object btnDevPreplay: TButton
        Left = 560
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '&Next >'
        TabOrder = 1
        OnClick = btnDevPreplayClick
      end
    end
    object pnlTopDev: TPanel
      Left = 0
      Top = 0
      Width = 782
      Height = 41
      Align = alTop
      TabOrder = 1
      object lblHeader: TLabel
        Left = 40
        Top = 15
        Width = 161
        Height = 19
        Caption = 'Developer Preplay :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlButtomDev: TPanel
      Left = 0
      Top = 41
      Width = 782
      Height = 454
      Align = alClient
      Caption = 'pnlButtomDev'
      TabOrder = 2
      object lvConsole: TListView
        Left = 1
        Top = 1
        Width = 780
        Height = 452
        Align = alClient
        Columns = <
          item
            Caption = 'IP Address'
            Width = 200
          end
          item
            Caption = 'Console Name'
            Width = 325
          end
          item
            Caption = 'Status'
            Width = 250
          end>
        GridLines = True
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
  end
  object pnlRecordOption: TPanel
    Left = 0
    Top = 59
    Width = 782
    Height = 552
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label3: TLabel
      Left = 24
      Top = 16
      Width = 216
      Height = 14
      Caption = 'Would you like to record this exercise ?'
    end
    object rbtnRecordYes: TRadioButton
      Left = 24
      Top = 35
      Width = 74
      Height = 17
      Caption = 'Yes'
      TabOrder = 0
      OnClick = rbtnRecordYesClick
    end
    object rbtnRecordNo: TRadioButton
      Left = 24
      Top = 58
      Width = 74
      Height = 17
      Caption = 'No'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbtnRecordNoClick
    end
    object gbAudioOption: TGroupBox
      Left = 24
      Top = 81
      Width = 738
      Height = 396
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Audio Track Settings'
      TabOrder = 2
      Visible = False
      DesignSize = (
        738
        396)
      object btnAddAudio: TButton
        Left = 16
        Top = 339
        Width = 104
        Height = 45
        Anchors = [akLeft, akBottom]
        Caption = '&Add Audio  Track Pair'
        TabOrder = 0
        WordWrap = True
        OnClick = btnAddAudioClick
      end
      object btnRemoveAudio: TButton
        Left = 136
        Top = 339
        Width = 104
        Height = 45
        Anchors = [akLeft, akBottom]
        Caption = '&Remove Audio Track Pair'
        TabOrder = 1
        WordWrap = True
        OnClick = btnRemoveAudioClick
      end
      object btnClearAudio: TButton
        Left = 592
        Top = 336
        Width = 133
        Height = 45
        Anchors = [akRight, akBottom]
        Caption = '&Clear Audio Track Reservation'
        TabOrder = 2
        WordWrap = True
        OnClick = btnClearAudioClick
      end
      object tvAudioOption: TTreeView
        Left = 16
        Top = 20
        Width = 709
        Height = 310
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Indent = 19
        TabOrder = 3
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 495
      Width = 782
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        782
        57)
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 782
        Height = 2
        Align = alTop
      end
      object btnAudio_Next: TButton
        Left = 564
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '&Next >'
        TabOrder = 0
        OnClick = btnAudio_NextClick
      end
      object btnAudio_Cancel: TButton
        Left = 687
        Top = 17
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Cancel'
        TabOrder = 1
        OnClick = btnExcName_CancelClick
      end
      object btnAudio_Back: TButton
        Left = 483
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '< &Back'
        TabOrder = 2
        OnClick = btnAudio_BackClick
      end
    end
  end
  object pnlExerciseName: TPanel
    Left = 0
    Top = 59
    Width = 782
    Height = 552
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 139
      Top = 153
      Width = 347
      Height = 56
      Caption = 
        'Type a name for your exercise. '#13#10'The name can contain up to 60 c' +
        'haracters ( including space ), '#13#10'but cannot contain any of the f' +
        'ollowing characters: '#13#10'\/ . " : * ? < > | .'
    end
    object Label2: TLabel
      Left = 139
      Top = 243
      Width = 31
      Height = 14
      Caption = 'Name'
    end
    object edExerciseName: TEdit
      Left = 192
      Top = 240
      Width = 443
      Height = 22
      MaxLength = 60
      TabOrder = 0
      Text = 'Exercise Name'
    end
    object Panel2: TPanel
      Left = 0
      Top = 495
      Width = 782
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        782
        57)
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 782
        Height = 2
        Align = alTop
      end
      object btnExcName_Cancel: TButton
        Left = 683
        Top = 17
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Cancel'
        TabOrder = 0
        OnClick = btnExcName_CancelClick
      end
      object btnExcName_Next: TButton
        Left = 560
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '&Next >'
        TabOrder = 1
        OnClick = btnExcName_NextClick
      end
      object btnExcName_Back: TButton
        Left = 483
        Top = 17
        Width = 75
        Height = 25
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = '< &Back'
        TabOrder = 2
        OnClick = btnExcName_BackClick
      end
    end
  end
  object pmAssignt: TPopupMenu
    Left = 200
    Top = 120
    object mnAssign1: TMenuItem
      Caption = 'Assign'
    end
    object Clear1: TMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
  end
end
