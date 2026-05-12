object frmSummaryChaff: TfrmSummaryChaff
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Chaff'
  ClientHeight = 403
  ClientWidth = 613
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
    Width = 613
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 10
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
      Top = 31
      Width = 594
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
    Width = 613
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 70
    ExplicitHeight = 285
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 593
      Height = 275
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 100
      ExplicitHeight = 265
      object tsGeneral: TTabSheet
        Caption = 'General'
        ExplicitHeight = 225
        object lblDissipationTimein100kt: TLabel
          Left = 15
          Top = 105
          Width = 180
          Height = 14
          Caption = 'Dissipation Time in 100 kt Wind :'
        end
        object lbl3: TLabel
          Left = 273
          Top = 107
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblDescentRate: TLabel
          Left = 15
          Top = 132
          Width = 82
          Height = 14
          Caption = 'Descent Rate :'
        end
        object lbl4: TLabel
          Left = 273
          Top = 133
          Width = 47
          Height = 14
          Caption = 'feet/min'
        end
        object lblMaxBloom: TLabel
          Left = 15
          Top = 159
          Width = 133
          Height = 14
          Caption = 'Maximum Bloom Radius :'
        end
        object lbl5: TLabel
          Left = 273
          Top = 160
          Width = 17
          Height = 14
          Caption = 'nm'
        end
        object lblMaxRadarCross: TLabel
          Left = 15
          Top = 24
          Width = 169
          Height = 14
          Caption = 'Maximum Radar Cross Section :'
        end
        object lblBloomTime: TLabel
          Left = 15
          Top = 51
          Width = 72
          Height = 14
          Caption = 'Bloom Time :'
        end
        object lbl1: TLabel
          Left = 273
          Top = 54
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblDissipationTimeinStillAir: TLabel
          Left = 15
          Top = 78
          Width = 148
          Height = 14
          Caption = 'Dissipation Time in Still Air :'
        end
        object lbl2: TLabel
          Left = 273
          Top = 81
          Width = 52
          Height = 14
          Caption = 'hh:mm:ss'
        end
        object lblMaxRadarAttenuation: TLabel
          Left = 15
          Top = 186
          Width = 162
          Height = 14
          Caption = 'Maximum Radar Attenuation :'
        end
        object lbl6: TLabel
          Left = 273
          Top = 186
          Width = 36
          Height = 14
          Caption = 'dB/nm'
        end
        object edtDescentRate: TEdit
          Tag = 2
          Left = 209
          Top = 128
          Width = 59
          Height = 22
          TabOrder = 4
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxBloom: TEdit
          Tag = 2
          Left = 209
          Top = 155
          Width = 59
          Height = 22
          TabOrder = 5
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxRadarCross: TEdit
          Tag = 2
          Left = 209
          Top = 20
          Width = 59
          Height = 22
          TabOrder = 0
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object edtMaxRadarAttenuation: TEdit
          Tag = 2
          Left = 209
          Top = 182
          Width = 59
          Height = 22
          TabOrder = 6
          Text = '0.00'
          OnChange = edtChange
          OnKeyPress = edtNumeralKeyPress
        end
        object cbMaxRadar: TComboBox
          Left = 274
          Top = 19
          Width = 64
          Height = 22
          Style = csDropDownList
          Color = clMenuBar
          ItemIndex = 0
          TabOrder = 7
          Text = 'dB m'#178
          OnChange = ComboBoxDataChange
          Items.Strings = (
            'dB m'#178
            'metres'#178)
        end
        object grbRadarFreq: TGroupBox
          Left = 367
          Top = 20
          Width = 202
          Height = 81
          Caption = ' Radar Frequencies Affected   '
          TabOrder = 8
          object lblLowerLimit: TLabel
            Left = 18
            Top = 25
            Width = 71
            Height = 14
            Caption = 'Lower Limit :'
          end
          object lbl7: TLabel
            Left = 162
            Top = 25
            Width = 21
            Height = 14
            Caption = 'GHz'
          end
          object lblUpperLimit: TLabel
            Left = 18
            Top = 52
            Width = 70
            Height = 14
            Caption = 'Upper Limit :'
          end
          object lbl8: TLabel
            Left = 161
            Top = 52
            Width = 21
            Height = 14
            Caption = 'GHz'
          end
          object edtLowerLimit: TEdit
            Tag = 1
            Left = 97
            Top = 21
            Width = 59
            Height = 22
            TabOrder = 0
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object edtUpperLimit: TEdit
            Tag = 1
            Left = 97
            Top = 49
            Width = 59
            Height = 22
            TabOrder = 1
            Text = '0.0'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
        end
        object edtBloomTime: TMaskEdit
          Left = 209
          Top = 47
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 1
          Text = '  :  :  '
          OnChange = edtChange
        end
        object edtDissipationTimeinStillAir: TMaskEdit
          Left = 209
          Top = 74
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 2
          Text = '  :  :  '
          OnChange = edtChange
        end
        object edtDissipationTimein100kt: TMaskEdit
          Left = 209
          Top = 101
          Width = 59
          Height = 22
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          TabOrder = 3
          Text = '  :  :  '
          OnChange = edtChange
        end
      end
      object tsNotes: TTabSheet
        BorderWidth = 10
        Caption = 'Notes'
        ImageIndex = 1
        object mmoNotes: TMemo
          Left = 0
          Top = 0
          Width = 565
          Height = 215
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
    Top = 360
    Width = 613
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 449
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 529
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 369
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
