object frmSummaryAcousticDecoy: TfrmSummaryAcousticDecoy
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = ' Acoustic Decoy'
  ClientHeight = 386
  ClientWidth = 466
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 9
      Width = 39
      Height = 16
      Caption = 'Class :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtClass: TEdit
      Tag = 4
      Left = 10
      Top = 30
      Width = 447
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 466
    Height = 278
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 268
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 446
      Height = 258
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 248
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 208
        object grpDecoyNoise: TGroupBox
          Left = 8
          Top = 11
          Width = 423
          Height = 105
          Caption = ' Decoy Noise Contributors   '
          TabOrder = 0
          object lblTrackbar500dB: TLabel
            Left = 343
            Top = 82
            Width = 39
            Height = 14
            Caption = '500 dB'
          end
          object lblTrackbar0dB: TLabel
            Left = 10
            Top = 82
            Width = 25
            Height = 14
            Caption = '0 dB'
          end
          object lblOwnshipAmbientNoiseIntensityIncrease: TLabel
            Left = 11
            Top = 24
            Width = 237
            Height = 14
            Caption = 'Ownship/Ambient Noise Intensity Increase:'
          end
          object edtDecoyNoise: TEdit
            Left = 374
            Top = 54
            Width = 39
            Height = 22
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
            Text = '0'
            OnChange = edtGeneralChange
          end
          object trckbrDecoyNoise: TTrackBar
            Left = 11
            Top = 53
            Width = 357
            Height = 32
            Max = 500
            Frequency = 100
            TabOrder = 1
            OnChange = trckbrGeneralChange
          end
        end
        object grpProbOfHit: TGroupBox
          Left = 8
          Top = 122
          Width = 423
          Height = 85
          Caption = ' Probability of Hit Modifiers   '
          TabOrder = 1
          object btnEdtProbOfHit: TButton
            Left = 112
            Top = 32
            Width = 193
            Height = 33
            Caption = 'Edit...'
            TabOrder = 0
            OnClick = btnEdtProbOfHitClick
          end
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 418
          Height = 198
          Align = alClient
          Lines.Strings = (
            '')
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 343
    Width = 466
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 302
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 382
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 222
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
