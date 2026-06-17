object frmBottom: TfrmBottom
  Left = 0
  Top = 0
  Anchors = [akBottom]
  BorderStyle = bsNone
  ClientHeight = 61
  ClientWidth = 1680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1680
    Height = 61
    Align = alClient
    BevelOuter = bvNone
    Color = 6111773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 1680
      Height = 61
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 32
      ExplicitWidth = 1648
      DesignSize = (
        1680
        61)
      object Label28: TLabel
        Left = 28
        Top = 20
        Width = 120
        Height = 14
        Caption = 'Bearing From Center :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 388
        Top = 20
        Width = 126
        Height = 14
        Caption = 'Distance From Center :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 607
        Top = 20
        Width = 50
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'Position :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 959
        Top = 20
        Width = 29
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'Grid :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lBearingFCenter: TLabel
        Left = 169
        Top = 20
        Width = 4
        Height = 14
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lDistanceFCenter: TLabel
        Left = 529
        Top = 20
        Width = 4
        Height = 14
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lPosLat: TLabel
        Left = 676
        Top = 20
        Width = 4
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '-'
      end
      object lGridLat: TLabel
        Left = 1028
        Top = 20
        Width = 4
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '-'
      end
      object Label32: TLabel
        Left = 210
        Top = 20
        Width = 56
        Height = 14
        Caption = 'degrees T'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 570
        Top = 20
        Width = 17
        Height = 14
        Caption = 'nm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lPosLong: TLabel
        Left = 774
        Top = 20
        Width = 4
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '-'
      end
      object lGridLong: TLabel
        Left = 1126
        Top = 20
        Width = 4
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '-'
      end
    end
  end
end
