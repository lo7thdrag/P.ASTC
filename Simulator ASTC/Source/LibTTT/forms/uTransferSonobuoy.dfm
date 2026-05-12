object fTransferSonobuoy: TfTransferSonobuoy
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Transfer Sonobuoy(s)'
  ClientHeight = 271
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 281
    TabOrder = 0
    object lb1: TLabel
      Left = 24
      Top = 25
      Width = 56
      Height = 13
      Caption = 'Sonobuoy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bvl7: TBevel
      Left = 117
      Top = 128
      Width = 259
      Height = 3
    end
    object Label1: TLabel
      Left = 24
      Top = 118
      Width = 87
      Height = 13
      Caption = 'Monitoring Unit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 86
      Top = 32
      Width = 290
      Height = 3
    end
    object Label2: TLabel
      Left = 39
      Top = 173
      Width = 43
      Height = 13
      Caption = 'New      :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 39
      Top = 146
      Width = 44
      Height = 13
      Caption = 'Current :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbParentCurrent: TLabel
      Left = 101
      Top = 146
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnSonobuoyControlCombo: TSpeedButton
      Left = 301
      Top = 169
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B0000000000000000000026221D26221D
        26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D2622
        1D26221D26221D26221D26221D26221D26221D26221D26221D201C1626221C27
        231D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
        26221D25211C29252025211D16110B28241F26221E26221D26221D26221D2622
        1D26221D26221D26221D26221D26221D26221D25211C16110B7676744E4C4906
        010029262026221E26221D26221D26221D26221D26221D26221D26221D26221D
        26221D26221D0C07017A7977C8CACC35312E07020029262026221E26221D2622
        1D26221D26221D26221D26221D26221D26221D26221D100B05666462C0C2C3B3
        B3B435322E07020029252026221E26221D26221D26221D26221D26221D26221D
        26221D26221D100B056B6A67ADADADAAAAABB3B4B534312E0904002A26212622
        1D26221D26221D26221D26221D26221D26221D26221D100B056B6A67B1B2B296
        9696A7A7A7BABBBC4C4A4614100A26221D26221D26221D26221D26221D26221D
        26221D26221D100B056A6A68B0B2B2969696A7A8A8B8B9BA4B484515100B2622
        1D26221D26221D26221D26221D26221D26221D26221D100C056B6A68ACADAEAB
        ABABB2B2B3322F2B0904002A262126221D26221D26221D26221D26221D26221D
        26221D26221D100C06676664C1C2C3B1B1B3332F2C0702002A262126221D2622
        1D26221D26221D26221D26221D26221D26221D26221D0C07027C7B7AC7C9CA32
        2F2B0702002A262126221D26221D26221D26221D26221D26221D26221D26221D
        26221D25211C16110C7877754C49460602002A262126221D26221D26221D2622
        1D26221D26221D26221D26221D26221D26221D25211C29252025211C16110C29
        252026221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
        26221D26221D26221D201C1626221D26221D26221D26221D26221D26221D2622
        1D26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D26
        221D26221D26221D26221D26221D26221D26221D26221D26221D}
      OnClick = btnSonobuoyControlComboClick
    end
    object Label4: TLabel
      Left = 144
      Top = 50
      Width = 33
      Height = 13
      Caption = 'Track :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbTransferTrack: TLabel
      Left = 206
      Top = 50
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 24
      Top = 216
      Width = 352
      Height = 3
    end
    object lbIdTransfer: TLabel
      Left = 206
      Top = 69
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 99
      Top = 197
      Width = 12
      Height = 13
      Caption = '---'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnCancel: TButton
      Left = 301
      Top = 234
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOk: TButton
      Left = 220
      Top = 234
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOkClick
    end
    object edtNewParent: TEdit
      Left = 101
      Top = 170
      Width = 194
      Height = 21
      TabOrder = 2
      Text = '---'
    end
    object RadioButton1: TRadioButton
      Left = 39
      Top = 50
      Width = 113
      Height = 17
      Caption = 'One'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = RadioClick
    end
    object RadioButton2: TRadioButton
      Left = 39
      Top = 73
      Width = 113
      Height = 17
      Caption = 'All'
      TabOrder = 4
      OnClick = RadioClick
    end
  end
  object pmNewParent: TPopupMenu
    Left = 336
    Top = 168
  end
end
