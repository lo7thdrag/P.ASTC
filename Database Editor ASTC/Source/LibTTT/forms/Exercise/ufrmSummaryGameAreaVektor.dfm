object frmSummaryGameAreaVektor: TfrmSummaryGameAreaVektor
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Game Area'
  ClientHeight = 474
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1Title: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 2499101
    ParentBackground = False
    TabOrder = 0
    object txtClass: TLabel
      Left = 10
      Top = 10
      Width = 103
      Height = 14
      Caption = 'Game Area Name :'
    end
    object edtName: TEdit
      Tag = 4
      Left = 10
      Top = 29
      Width = 416
      Height = 24
      AutoSize = False
      TabOrder = 0
      OnChange = edtChange
    end
  end
  object pnl2ControlPage: TPanel
    Left = 0
    Top = 65
    Width = 444
    Height = 366
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = 2499101
    ParentBackground = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 424
      Height = 346
      ActivePage = tsGeneral
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      TabWidth = 75
      object tsGeneral: TTabSheet
        Caption = 'General'
        object GroupBox1: TGroupBox
          Left = 10
          Top = 208
          Width = 388
          Height = 49
          TabOrder = 4
          object btnImportLandmassData: TButton
            Left = 30
            Top = 13
            Width = 148
            Height = 25
            Caption = 'Import Landmass Data...'
            TabOrder = 0
            OnClick = btnImportLandmassDataClick
          end
          object btnEditLandmassData: TButton
            Left = 207
            Top = 13
            Width = 148
            Height = 25
            Caption = 'View Landmass Data...'
            TabOrder = 1
            OnClick = btnEditLandmassDataClick
          end
        end
        object grbCentre: TGroupBox
          Left = 10
          Top = 27
          Width = 191
          Height = 94
          Caption = 'Centre'
          TabOrder = 0
          object lblLatitude: TStaticText
            Left = 8
            Top = 26
            Width = 57
            Height = 18
            Caption = 'Latitude :'
            TabOrder = 0
          end
          object lblLongitude: TStaticText
            Left = 8
            Top = 55
            Width = 67
            Height = 18
            Caption = 'Longitude :'
            TabOrder = 3
          end
          object edtLatitude: TEdit
            Tag = 4
            Left = 72
            Top = 24
            Width = 96
            Height = 22
            TabOrder = 1
            OnChange = edtChange
          end
          object edtLongitude: TEdit
            Tag = 4
            Left = 72
            Top = 53
            Width = 96
            Height = 22
            TabOrder = 2
            OnChange = edtChange
          end
        end
        object grbDimensions: TGroupBox
          Left = 207
          Top = 27
          Width = 191
          Height = 94
          Caption = 'Dimensions'
          TabOrder = 3
          object lblMaximum: TStaticText
            Left = 8
            Top = 26
            Width = 62
            Height = 18
            Caption = 'Maximum :'
            TabOrder = 0
          end
          object edtMaximum: TEdit
            Tag = 2
            Left = 96
            Top = 24
            Width = 57
            Height = 22
            TabOrder = 1
            Text = '0.00'
            OnChange = edtChange
            OnKeyPress = edtNumeralKeyPress
          end
          object lblnm: TStaticText
            Left = 159
            Top = 26
            Width = 21
            Height = 18
            Caption = 'nm'
            TabOrder = 2
          end
        end
        object btnSelectGame: TButton
          Left = 10
          Top = 127
          Width = 388
          Height = 25
          Caption = 'Select Game Centre and Dimensions'
          TabOrder = 1
          OnClick = btnSelectGameClick
        end
        object cbUseCoastlines: TCheckBox
          Left = 10
          Top = 174
          Width = 178
          Height = 17
          Caption = 'Use Coastlines and Features'
          TabOrder = 2
        end
      end
      object tsOcculting: TTabSheet
        Caption = 'Occulting'
        ImageIndex = 1
        object Memo1: TMemo
          Left = 3
          Top = 3
          Width = 403
          Height = 190
          BorderStyle = bsNone
          Color = clCream
          Lines.Strings = (
            
              'Landmass occulting requires preprocessing of the Game Area terra' +
              'in '
            'data. This '
            
              'operation is highly dependent upon the size and complexity of th' +
              'e '
            'Game area, '
            'and may take thirty minutes or more.'
            ''
            'This preprocessing must be performed for a Game Area when it is '
            'created or '
            'whenever any of its parameters are changed.')
          ReadOnly = True
          TabOrder = 0
        end
        object btnPreprocess: TButton
          Left = 148
          Top = 232
          Width = 105
          Height = 25
          Caption = 'Preprocess Now'
          Enabled = False
          TabOrder = 1
        end
      end
    end
  end
  object pnl3Button: TPanel
    Left = 0
    Top = 431
    Width = 444
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 2
    object btnApply: TButton
      Left = 266
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object btnCancel: TButton
      Left = 346
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 186
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOKClick
    end
  end
end
