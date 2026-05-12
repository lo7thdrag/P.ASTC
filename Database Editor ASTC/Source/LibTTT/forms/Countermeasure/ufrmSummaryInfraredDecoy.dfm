object frmSummaryInfraredDecoy: TfrmSummaryInfraredDecoy
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Infrared Decoy'
  ClientHeight = 402
  ClientWidth = 378
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
    Width = 378
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object lblClass: TLabel
      Left = 10
      Top = 5
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
      Top = 26
      Width = 358
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 378
    Height = 294
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 284
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 358
      Height = 274
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 264
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 224
        object lblMaxIRCrossSection: TLabel
          Left = 15
          Top = 22
          Width = 178
          Height = 14
          Caption = 'Maximum Infrared Cross Section:'
        end
        object lblBloomTime: TLabel
          Left = 15
          Top = 51
          Width = 68
          Height = 14
          Caption = 'Bloom Time:'
        end
        object lbl1: TLabel
          Left = 285
          Top = 51
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblSustainTime: TLabel
          Left = 15
          Top = 78
          Width = 74
          Height = 14
          Caption = 'Sustain Time:'
        end
        object lbl2: TLabel
          Left = 285
          Top = 78
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblDissipationInStillAir: TLabel
          Left = 15
          Top = 105
          Width = 144
          Height = 14
          Caption = 'Dissipation Time in Still Air:'
        end
        object lbl3: TLabel
          Left = 285
          Top = 105
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblDissipationIn100: TLabel
          Left = 15
          Top = 132
          Width = 176
          Height = 14
          Caption = 'Dissipation Time in 100 kt Wind:'
        end
        object lbl4: TLabel
          Left = 285
          Top = 132
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblDesectRate: TLabel
          Left = 15
          Top = 159
          Width = 78
          Height = 14
          Caption = 'Descent Rate:'
        end
        object lbl5: TLabel
          Left = 285
          Top = 159
          Width = 47
          Height = 14
          Caption = 'feet/min'
        end
        object edtMaxIRCrossSection: TEdit
          Left = 216
          Top = 20
          Width = 59
          Height = 22
          TabOrder = 0
          OnClick = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtDescentRate: TEdit
          Tag = 2
          Left = 216
          Top = 155
          Width = 59
          Height = 22
          TabOrder = 1
          Text = '0.00'
          OnClick = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtBloomTime: TMaskEdit
          Left = 216
          Top = 47
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 2
          Text = '  :  :  '
          OnClick = edtChange
        end
        object edtSustainTime: TMaskEdit
          Left = 216
          Top = 74
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 3
          Text = '  :  :  '
          OnClick = edtChange
        end
        object edtDissipationInStillAir: TMaskEdit
          Left = 216
          Top = 101
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 4
          Text = '  :  :  '
          OnClick = edtChange
        end
        object edtDissipationIn100: TMaskEdit
          Left = 216
          Top = 128
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 5
          Text = '  :  :  '
          OnClick = edtChange
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 330
          Height = 214
          Align = alClient
          TabOrder = 0
          OnChange = edtChange
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 359
    Width = 378
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 213
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 293
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 133
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
