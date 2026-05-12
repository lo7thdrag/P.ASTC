object CommunicationsChannelsForm: TCommunicationsChannelsForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = ' Channel'
  ClientHeight = 278
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAction: TPanel
    Left = 0
    Top = 237
    Width = 428
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOK: TButton
      Left = 342
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
    object btnApply: TButton
      Left = 261
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 342
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object pnlData: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 237
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 8
      Top = 8
      Width = 409
      Height = 224
      ActivePage = General
      TabOrder = 0
      object General: TTabSheet
        Caption = 'General'
        object lblName: TStaticText
          Left = 3
          Top = 3
          Width = 38
          Height = 17
          Caption = 'Name :'
          TabOrder = 0
        end
        object edtName: TEdit
          Left = 3
          Top = 19
          Width = 390
          Height = 21
          TabOrder = 1
          OnKeyPress = edtNameKeyPress
        end
        object lblChannelNumber: TStaticText
          Left = 3
          Top = 56
          Width = 90
          Height = 17
          Caption = 'Channel Number :'
          TabOrder = 2
        end
        object lblCommunicationBand: TStaticText
          Left = 3
          Top = 83
          Width = 110
          Height = 17
          Caption = 'Communication Band :'
          TabOrder = 3
        end
        object lblChannelFrequency: TStaticText
          Left = 3
          Top = 110
          Width = 104
          Height = 17
          Caption = 'Channel Frequency :'
          TabOrder = 4
        end
        object lblChannelCode: TStaticText
          Left = 3
          Top = 137
          Width = 78
          Height = 17
          Caption = 'Channel Code :'
          TabOrder = 5
        end
        object cbSecureChannel: TCheckBox
          Left = 3
          Top = 168
          Width = 97
          Height = 17
          Caption = 'Secure Channel'
          TabOrder = 6
          OnClick = cbSecureChannelClick
        end
        object edtChannelNumber: TEdit
          Left = 128
          Top = 54
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 7
        end
        object cbxCommunicationBand: TComboBox
          Left = 128
          Top = 81
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 8
          OnChange = cbxCommunicationBandChange
          Items.Strings = (
            'HF'
            'UHF/VHF'
            'SATCOM'
            'UWT'
            'FM')
        end
        object edtChannelFrequency: TEdit
          Left = 128
          Top = 108
          Width = 121
          Height = 21
          TabOrder = 9
          OnKeyPress = EditKeyPress
        end
        object edtChannelCode: TEdit
          Left = 128
          Top = 135
          Width = 121
          Height = 21
          TabOrder = 10
          OnKeyPress = edtChannelCodeKeyPress
        end
        object lblMhz: TStaticText
          Left = 260
          Top = 110
          Width = 24
          Height = 17
          Caption = 'MHz'
          TabOrder = 11
        end
      end
    end
  end
end
