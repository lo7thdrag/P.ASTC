object frmToteDisplay: TfrmToteDisplay
  Left = 1514
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsToolWindow
  Caption = 'Tote Display'
  ClientHeight = 3519
  ClientWidth = 1320
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTooop: TPanel
    Left = 0
    Top = 0
    Width = 1320
    Height = 2
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 3519
    Width = 1320
    Height = 0
    Panels = <>
  end
  object pnlGroupBox: TPanel
    Left = 813
    Top = 2
    Width = 507
    Height = 3517
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 345
    ExplicitWidth = 975
    object gbAudioRecordTracks: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 11
      ExplicitWidth = 975
      object Panel14: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl14Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel14: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel14: TLabel
            Left = 371
            Top = 4
            Width = 286
            Height = 27
            Caption = 'AUDIO RECORD TRACKS'
          end
        end
        object pnl14Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel41: TPanel
        Left = 460
        Top = 82
        Width = 90
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object Button32: TButton
          Left = 9
          Top = 192
          Width = 75
          Height = 25
          Caption = 'Add >'
          TabOrder = 0
          OnClick = Button32Click
        end
        object Button33: TButton
          Left = 9
          Top = 224
          Width = 75
          Height = 25
          Caption = '< Remove'
          TabOrder = 1
          OnClick = Button33Click
        end
        object Button34: TButton
          Left = 9
          Top = 662
          Width = 75
          Height = 25
          Caption = '< Remove'
          TabOrder = 2
        end
        object Button35: TButton
          Left = 9
          Top = 630
          Width = 75
          Height = 25
          Caption = 'Add >'
          TabOrder = 3
        end
      end
      object Panel42: TPanel
        Left = 550
        Top = 82
        Width = 419
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 3
        object Panel69: TPanel
          Left = 4
          Top = 4
          Width = 411
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label149: TLabel
            Left = 6
            Top = 6
            Width = 95
            Height = 13
            Caption = 'Audio record track :'
          end
          object Edit7: TEdit
            Left = 128
            Top = 5
            Width = 290
            Height = 21
            TabOrder = 0
          end
        end
        object Panel70: TPanel
          Left = 4
          Top = 36
          Width = 411
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label151: TLabel
            Left = 6
            Top = 11
            Width = 89
            Height = 13
            Caption = 'External channels:'
          end
        end
        object Panel71: TPanel
          Left = 4
          Top = 60
          Width = 411
          Height = 362
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 2
          object sgExChannel: TStringGrid
            Left = 10
            Top = 10
            Width = 391
            Height = 342
            Align = alClient
            ColCount = 4
            DrawingStyle = gdsGradient
            FixedCols = 0
            TabOrder = 0
            ColWidths = (
              69
              179
              104
              64)
          end
          object lvRecordOut: TListView
            Left = 10
            Top = 10
            Width = 391
            Height = 342
            Align = alClient
            Columns = <
              item
                Caption = 'Channel'
                MaxWidth = 205
                Width = 70
              end
              item
                Caption = 'Channel Name'
                MaxWidth = 205
                Width = 157
              end
              item
                Caption = 'Channel Code'
                Width = 80
              end>
            MultiSelect = True
            RowSelect = True
            SortType = stBoth
            TabOrder = 1
            ViewStyle = vsReport
            OnCompare = lvRecordOutCompare
          end
        end
        object Panel72: TPanel
          Left = 4
          Top = 422
          Width = 411
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Label152: TLabel
            Left = 6
            Top = 16
            Width = 87
            Height = 13
            Caption = 'Internal channels:'
          end
        end
        object Panel73: TPanel
          Left = 4
          Top = 450
          Width = 411
          Height = 2980
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 4
          object sgInChannel: TStringGrid
            Left = 10
            Top = 10
            Width = 391
            Height = 2960
            Align = alClient
            ColCount = 3
            DrawingStyle = gdsGradient
            FixedCols = 0
            TabOrder = 0
            ColWidths = (
              108
              72
              129)
          end
        end
      end
      object Panel40: TPanel
        Left = 1
        Top = 82
        Width = 459
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Panel65: TPanel
          Left = 4
          Top = 4
          Width = 451
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label150: TLabel
            Left = 16
            Top = 6
            Width = 92
            Height = 13
            Caption = 'Available channels:'
          end
        end
        object Panel66: TPanel
          Left = 4
          Top = 27
          Width = 451
          Height = 3403
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 6
          TabOrder = 1
          object PageControl2: TPageControl
            Left = 6
            Top = 6
            Width = 439
            Height = 3391
            ActivePage = TabSheet6
            Align = alClient
            TabOrder = 0
            object TabSheet6: TTabSheet
              Caption = 'External'
              object Panel67: TPanel
                Left = 0
                Top = 0
                Width = 431
                Height = 3363
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 10
                TabOrder = 0
                object sgAvailableExChannel: TStringGrid
                  Left = 10
                  Top = 10
                  Width = 411
                  Height = 3343
                  Align = alClient
                  ColCount = 3
                  DrawingStyle = gdsGradient
                  FixedCols = 0
                  TabOrder = 0
                  ColWidths = (
                    81
                    161
                    124)
                end
                object lvRecordIn: TListView
                  Left = 10
                  Top = 10
                  Width = 411
                  Height = 3343
                  Align = alClient
                  Columns = <
                    item
                      Caption = 'Channel'
                      MaxWidth = 205
                      Width = 70
                    end
                    item
                      Caption = 'Channel Name'
                      MaxWidth = 205
                      Width = 157
                    end
                    item
                      Caption = 'Channel Code'
                      Width = 80
                    end>
                  MultiSelect = True
                  RowSelect = True
                  SortType = stBoth
                  TabOrder = 1
                  ViewStyle = vsReport
                  OnCompare = lvRecordInCompare
                end
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'Internal'
              ImageIndex = 1
              object Panel68: TPanel
                Left = 0
                Top = 0
                Width = 431
                Height = 3363
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 10
                TabOrder = 0
                object sgAvailableInChannel: TStringGrid
                  Left = 10
                  Top = 10
                  Width = 411
                  Height = 3343
                  Align = alClient
                  ColCount = 3
                  DrawingStyle = gdsGradient
                  FixedCols = 0
                  TabOrder = 0
                  ColWidths = (
                    166
                    156
                    64)
                end
              end
            end
          end
        end
      end
    end
    object gbCommunicationsChannelDefinition: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 7
      ExplicitWidth = 975
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl9Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel9: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel9: TLabel
            Left = 371
            Top = 4
            Width = 474
            Height = 27
            Caption = 'COMMUNICATIONS CHANNEL DEFINITION'
          end
        end
        object pnl9Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel24: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object sgCommChannelDef: TStringGrid
          Left = 4
          Top = 4
          Width = 497
          Height = 3426
          Align = alClient
          ColCount = 7
          DrawingStyle = gdsGradient
          FixedCols = 0
          RowCount = 100
          TabOrder = 0
          OnClick = sgCommChannelDefClick
          OnDrawCell = sgCommChannelDefDrawCell
          OnKeyPress = sgCommChannelDefKeyPress
          OnSelectCell = sgCommChannelDefSelectCell
          ExplicitWidth = 965
          ColWidths = (
            116
            98
            141
            82
            94
            90
            360)
        end
        object cbbBand: TComboBox
          Left = 544
          Top = 400
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'HF'
          Visible = False
          OnChange = cbbBandChange
          Items.Strings = (
            'HF'
            'VHF/UHF'
            'SATCOM'
            'UWT'
            'FM')
        end
      end
    end
    object gbCommunicationsInterference: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 9
      ExplicitWidth = 975
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl11Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel11: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel11: TLabel
            Left = 371
            Top = 4
            Width = 407
            Height = 27
            Caption = 'COMMUNICATIONS INTERFERENCE'
          end
        end
        object pnl11Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel32: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object PageControl1: TPageControl
          Left = 4
          Top = 4
          Width = 497
          Height = 3426
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 965
          object TabSheet4: TTabSheet
            Caption = 'Injection'
            ExplicitWidth = 957
            object Panel53: TPanel
              Left = 0
              Top = 0
              Width = 489
              Height = 3398
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 10
              TabOrder = 0
              ExplicitWidth = 957
              object sgComInInjection: TStringGrid
                Left = 10
                Top = 10
                Width = 469
                Height = 3378
                Align = alClient
                ColCount = 4
                DrawingStyle = gdsGradient
                FixedCols = 0
                RowCount = 99
                TabOrder = 0
                OnSelectCell = sgComInInjectionSelectCell
                ExplicitWidth = 937
                ColWidths = (
                  120
                  202
                  120
                  235)
              end
              object cbbJam: TComboBox
                Left = 127
                Top = 119
                Width = 145
                Height = 21
                ItemIndex = 0
                TabOrder = 1
                Text = 'Clear'
                Visible = False
                OnChange = cbbJamChange
                Items.Strings = (
                  'Clear'
                  'Jamming'
                  'Noise'
                  'MHTones')
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Volume'
            ImageIndex = 1
            ExplicitWidth = 957
            object Label133: TLabel
              Left = 12
              Top = 17
              Width = 67
              Height = 13
              Caption = 'Sound effects'
            end
            object Bevel11: TBevel
              Left = 96
              Top = 23
              Width = 333
              Height = 5
            end
            object Label134: TLabel
              Left = 16
              Top = 44
              Width = 44
              Height = 13
              Caption = 'Maximum'
            end
            object Label135: TLabel
              Left = 20
              Top = 488
              Width = 40
              Height = 13
              Caption = 'Minimum'
            end
            object Label136: TLabel
              Left = 390
              Top = 487
              Width = 40
              Height = 13
              Caption = 'Minimum'
            end
            object Label137: TLabel
              Left = 392
              Top = 47
              Width = 44
              Height = 13
              Caption = 'Maximum'
            end
            object Label138: TLabel
              Left = 65
              Top = 514
              Width = 26
              Height = 13
              Caption = 'Noise'
            end
            object Label139: TLabel
              Left = 199
              Top = 514
              Width = 41
              Height = 13
              Caption = 'Jamming'
            end
            object Label140: TLabel
              Left = 345
              Top = 514
              Width = 51
              Height = 13
              Caption = 'MHS tones'
            end
            object tbNoise: TTrackBar
              Left = 67
              Top = 46
              Width = 60
              Height = 462
              Orientation = trVertical
              TabOrder = 0
              TickMarks = tmTopLeft
            end
            object tbJamming: TTrackBar
              Left = 200
              Top = 46
              Width = 60
              Height = 462
              Orientation = trVertical
              TabOrder = 1
              TickMarks = tmTopLeft
            end
            object tbMHStones: TTrackBar
              Left = 347
              Top = 46
              Width = 39
              Height = 462
              Orientation = trVertical
              TabOrder = 2
              TickMarks = tmTopLeft
            end
            object btnNoiseCg: TButton
              Left = 54
              Top = 538
              Width = 75
              Height = 25
              Caption = 'Change'
              TabOrder = 3
            end
            object btnJamCg: TButton
              Left = 185
              Top = 538
              Width = 75
              Height = 25
              Caption = 'Change'
              TabOrder = 4
            end
            object btnMHTCg: TButton
              Left = 328
              Top = 539
              Width = 75
              Height = 25
              Caption = 'Change'
              TabOrder = 5
            end
          end
        end
      end
    end
    object gbCubicleGroups: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 12
      ExplicitWidth = 975
      object Panel15: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl15Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel15: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel15: TLabel
            Left = 371
            Top = 4
            Width = 213
            Height = 27
            Caption = 'CUBICLE GROUPS'
          end
        end
        object pnl15Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel38: TPanel
        Left = 1
        Top = 82
        Width = 425
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Panel64: TPanel
          Left = 4
          Top = 4
          Width = 417
          Height = 551
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 8
          TabOrder = 0
          object lvCubicle: TListView
            Left = 16
            Top = 2
            Width = 385
            Height = 375
            Columns = <
              item
                Caption = 'Name'
              end
              item
                Caption = 'Number'
              end
              item
                Caption = 'ID'
              end
              item
                Caption = 'Cubicle Name'
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
      end
      object Panel39: TPanel
        Left = 426
        Top = 82
        Width = 597
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object PageControl3: TPageControl
          Left = 4
          Top = 4
          Width = 589
          Height = 3426
          ActivePage = TabSheet8
          Align = alClient
          TabOrder = 0
          object TabSheet8: TTabSheet
            Caption = 'Platform'
            object Panel63: TPanel
              Left = 0
              Top = 0
              Width = 581
              Height = 3398
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 15
              TabOrder = 0
              object tvCubicleGroups: TTreeView
                Left = 15
                Top = 15
                Width = 551
                Height = 3368
                Align = alClient
                Indent = 19
                ReadOnly = True
                TabOrder = 0
                OnMouseDown = tvCubicleGroupsMouseDown
                Items.NodeData = {
                  03010000003A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
                  0000000000010E630075006200690063006C0065002000670072006F00750070
                  007300}
              end
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Responsibility'
            ImageIndex = 1
            object Label157: TLabel
              Left = 9
              Top = 13
              Width = 52
              Height = 13
              Caption = 'Controllers'
            end
            object sgResponsibilityControllers: TStringGrid
              Left = 9
              Top = 32
              Width = 558
              Height = 448
              ColCount = 10
              FixedCols = 0
              TabOrder = 0
              ColWidths = (
                144
                36
                30
                28
                24
                25
                27
                64
                64
                64)
            end
            object Button36: TButton
              Left = 414
              Top = 486
              Width = 75
              Height = 25
              Caption = 'Assume All'
              TabOrder = 1
            end
            object Button37: TButton
              Left = 495
              Top = 486
              Width = 75
              Height = 25
              Caption = 'Revoke All'
              TabOrder = 2
            end
          end
        end
      end
    end
    object gbDatalinkControl: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 10
      ExplicitWidth = 975
      object Panel12: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl12Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel12: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel12: TLabel
            Left = 371
            Top = 4
            Width = 232
            Height = 27
            Caption = 'DATALINK CONTROL'
          end
        end
        object pnl12Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel29: TPanel
        Left = 1
        Top = 82
        Width = 434
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Panel94: TPanel
          Left = 4
          Top = 110
          Width = 426
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 20
          TabOrder = 1
          object Label142: TLabel
            Left = 11
            Top = 10
            Width = 62
            Height = 13
            Caption = 'Eligible units:'
          end
        end
        object Panel93: TPanel
          Left = 4
          Top = 4
          Width = 426
          Height = 106
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 20
          TabOrder = 0
          object Label141: TLabel
            Left = 11
            Top = 6
            Width = 38
            Height = 13
            Caption = 'Datalink'
          end
          object Label144: TLabel
            Left = 11
            Top = 38
            Width = 31
            Height = 13
            Caption = 'Force:'
          end
          object Label148: TLabel
            Left = 11
            Top = 69
            Width = 28
            Height = 13
            Caption = 'Band:'
          end
          object edtDatalink: TEdit
            Left = 66
            Top = 2
            Width = 179
            Height = 21
            TabOrder = 0
          end
          object edtDLForce: TEdit
            Left = 66
            Top = 34
            Width = 99
            Height = 21
            TabOrder = 1
          end
          object edtDLBand: TEdit
            Left = 66
            Top = 65
            Width = 99
            Height = 21
            TabOrder = 2
          end
          object btnDatalink: TBitBtn
            Left = 251
            Top = 1
            Width = 25
            Height = 23
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
            TabOrder = 3
            OnMouseDown = btnDatalinkMouseDown
          end
          object btnDatalinkForce: TBitBtn
            Left = 171
            Top = 33
            Width = 25
            Height = 23
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
            TabOrder = 4
            OnMouseDown = btnDatalinkForceMouseDown
          end
          object btnDatalinkBand: TBitBtn
            Left = 171
            Top = 64
            Width = 25
            Height = 23
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
            TabOrder = 5
            OnMouseDown = btnDatalinkBandMouseDown
          end
        end
        object Panel95: TPanel
          Left = 4
          Top = 3390
          Width = 426
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
        end
        object lvEligibleUnits: TListView
          Left = 4
          Top = 141
          Width = 426
          Height = 3249
          Align = alClient
          Columns = <
            item
              AutoSize = True
              Caption = 'Name'
              MaxWidth = 200
              MinWidth = 200
            end>
          MultiSelect = True
          RowSelect = True
          StateImages = ILDataLink
          TabOrder = 3
          ViewStyle = vsReport
        end
      end
      object Panel31: TPanel
        Left = 525
        Top = 82
        Width = 13
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 3
        ExplicitWidth = 449
        object Panel96: TPanel
          Left = 4
          Top = 3390
          Width = 5
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 30
          TabOrder = 0
          ExplicitWidth = 441
          DesignSize = (
            5
            40)
          object btnStopDataLink: TSpeedButton
            Left = -52
            Top = 6
            Width = 25
            Height = 24
            Anchors = [akTop, akRight, akBottom]
            Enabled = False
            Glyph.Data = {
              D6050000424DD605000000000000360000002800000017000000140000000100
              180000000000A005000000000000000000000000000000000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C1C1C1B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200000000
              0000000000000000000000000000000000000000000000000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B200000000000000000000000000000000000000000000000000000000
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B20000000000000000000000000000000000000000
              00000000000000000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000000000000000000000
              000000000000000000000000000000000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200000000
              0000000000000000000000000000000000000000000000000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B200000000000000000000000000000000000000000000000000000000
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B20000000000000000000000000000000000000000
              00000000000000000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000000000000000000000
              000000000000000000000000000000000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200000000
              0000000000000000000000000000000000000000000000000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B200
              0000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
              B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2000000}
            OnClick = btnStopDataLinkClick
            ExplicitLeft = 386
          end
          object btnPlayDataLink: TSpeedButton
            Left = -20
            Top = 6
            Width = 25
            Height = 24
            Anchors = [akTop, akRight, akBottom]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B0000000000000000000026221D26221D
              26221D26221D26221D27231E26221D26221D26221D26221D26221D26221D2622
              1D26221D26221D26221D26221D26221D26221D26221D27231E17130D25211B27
              231E26221D26221D26221D26221D26221D26221D26221D26221D26221D26221D
              26221D25211C2A2520312D290C080427231D27231E26221D26221D26221D2622
              1D26221D26221D26221D26221D26221D26221D25211B0B0907BEBCBB77767500
              000029241E27231E26221D26221D26221D26221D26221D26221D26221D26221D
              26221D25211C000000BBBAB9FFFFFF514F4E00000029241E27231E26221D2622
              1D26221D26221D26221D26221D26221D26221D25211C000000A3A2A1FFFFFFFF
              FFFF504F4F00000029241E27231E26221D26221D26221D26221D26221D26221D
              26221D25211C000000A7A6A5FFFFFFFFFFFFFFFFFF504F4E0000002A26202723
              1D26221D26221D26221D26221D26221D26221D25211C000000A8A6A5FFFFFFFF
              FFFFFFFFFFFFFFFF74737307050326221D26221D26221D26221D26221D26221D
              26221D25211C000000A8A6A5FFFFFFFFFFFFFFFFFFFFFFFF72706F0805042622
              1D26221D26221D26221D26221D26221D26221D25211C000000A8A6A5FFFFFFFF
              FFFFFFFFFF4C4B4A0000002B262027231D26221D26221D26221D26221D26221D
              26221D25211C000000A4A2A2FFFFFFFFFFFF4C4B4A0000002A251F27231E2622
              1D26221D26221D26221D26221D26221D26221D25221C000000BEBCBCFFFFFF4D
              4B4A00000029251F27231E26221D26221D26221D26221D26221D26221D26221D
              26221D25201B0C0A08BEBDBC73717100000029251F27231E26221D26221D2622
              1D26221D26221D26221D26221D26221D26221D25201C2A2520302C280C080327
              231D27231E26221D26221D26221D26221D26221D26221D26221D26221D26221D
              26221D26221D27231E17130D25211C27231E26221D26221D26221D26221D2622
              1D26221D26221D26221D26221D26221D26221D26221D26221D27231E26221D26
              221D26221D26221D26221D26221D26221D26221D26221D26221D}
            OnClick = btnPlayDataLinkClick
            ExplicitLeft = 418
          end
          object Button31: TButton
            Left = 0
            Top = 6
            Width = 85
            Height = 25
            Caption = 'Designate NCS'
            TabOrder = 0
            OnClick = Button31Click
          end
        end
        object Panel97: TPanel
          Left = 4
          Top = 4
          Width = 5
          Height = 137
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 441
          object Label143: TLabel
            Left = 11
            Top = 114
            Width = 89
            Height = 13
            Caption = 'Participating units:'
          end
        end
        object lvParticipatingUnits: TListView
          Left = 4
          Top = 141
          Width = 5
          Height = 3249
          Align = alClient
          Anchors = [akLeft, akTop, akBottom]
          Columns = <
            item
              Caption = 'PU Number'
              MaxWidth = 100
              MinWidth = 50
              Width = 76
            end
            item
              AutoSize = True
              Caption = 'Name'
              MaxWidth = 200
              MinWidth = 200
              WidthType = (
                -200)
            end
            item
              Caption = 'Status'
              MaxWidth = 200
              MinWidth = 100
              Width = 125
            end>
          MultiSelect = True
          RowSelect = True
          StateImages = ILDataLink
          TabOrder = 2
          ViewStyle = vsReport
          ExplicitWidth = 441
        end
      end
      object Panel30: TPanel
        Left = 435
        Top = 82
        Width = 90
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object Button27: TButton
          Left = 6
          Top = 299
          Width = 75
          Height = 25
          Caption = 'Add >'
          TabOrder = 0
          OnClick = Button27Click
        end
        object Button28: TButton
          Left = 6
          Top = 331
          Width = 75
          Height = 25
          Caption = '< Remove'
          TabOrder = 1
          OnClick = Button28Click
        end
      end
    end
    object gbDataLinkStatus: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 18
      ExplicitWidth = 975
      object pnlDS2: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnlDS2Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanelDS2: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblimgPanelDS2: TLabel
            Left = 371
            Top = 4
            Width = 204
            Height = 27
            Caption = 'DATALINK STATUS'
          end
        end
        object pnlDS2Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object pnlDS8: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object pnlDS9: TPanel
          Left = 4
          Top = 3390
          Width = 497
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 30
          TabOrder = 0
          ExplicitWidth = 965
        end
        object lvDS2: TListView
          Left = 4
          Top = 104
          Width = 497
          Height = 3286
          Align = alClient
          Anchors = [akLeft, akTop, akBottom]
          Columns = <
            item
              Caption = 'PU Number'
              MaxWidth = 100
              MinWidth = 50
              Width = 76
            end
            item
              Caption = 'Name'
              MaxWidth = 200
              MinWidth = 200
              Width = 200
            end
            item
              Caption = 'Status'
              MaxWidth = 200
              MinWidth = 100
              Width = 125
            end>
          MultiSelect = True
          RowSelect = True
          StateImages = ILDataLink
          TabOrder = 2
          ViewStyle = vsReport
          ExplicitWidth = 965
        end
        object pnlDS10: TPanel
          Left = 4
          Top = 4
          Width = 497
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 965
          object lblDS5: TLabel
            Left = 5
            Top = 79
            Width = 89
            Height = 13
            Caption = 'Participating units:'
          end
          object lblDSStatus: TLabel
            Left = 12
            Top = 20
            Width = 35
            Height = 13
            Caption = 'Status:'
          end
          object lbDSBand: TLabel
            Left = 12
            Top = 44
            Width = 28
            Height = 13
            Caption = 'Band:'
          end
          object lbDSStatusValue: TLabel
            Left = 66
            Top = 20
            Width = 12
            Height = 13
            Caption = '---'
          end
          object lbDSBandValue: TLabel
            Left = 66
            Top = 44
            Width = 12
            Height = 13
            Caption = '---'
          end
        end
      end
    end
    object gbEmitterStatus: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 17
      ExplicitWidth = 975
      object Panel98: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl98Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel98: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel98: TLabel
            Left = 371
            Top = 4
            Width = 197
            Height = 27
            Caption = 'EMITTER STATUS'
          end
        end
        object pnl98Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel99: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object sgEmitters: TStringGrid
          Left = 4
          Top = 130
          Width = 497
          Height = 3300
          Align = alClient
          ColCount = 7
          DrawingStyle = gdsGradient
          FixedCols = 0
          RowCount = 100
          TabOrder = 0
          ExplicitWidth = 965
          ColWidths = (
            116
            98
            103
            116
            112
            135
            360)
        end
        object Panel100: TPanel
          Left = 4
          Top = 4
          Width = 497
          Height = 126
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 965
          object Label9: TLabel
            Left = 10
            Top = 14
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label10: TLabel
            Left = 11
            Top = 37
            Width = 34
            Height = 13
            Caption = 'Name :'
          end
          object Label11: TLabel
            Left = 11
            Top = 60
            Width = 43
            Height = 13
            Caption = 'Bearing :'
          end
          object lbTrack: TLabel
            Left = 66
            Top = 15
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object lbName: TLabel
            Left = 66
            Top = 37
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object lbBearing: TLabel
            Left = 66
            Top = 60
            Width = 33
            Height = 13
            Caption = 'Track :'
          end
          object Label15: TLabel
            Left = 126
            Top = 60
            Width = 48
            Height = 13
            Caption = 'degrees T'
          end
          object Label16: TLabel
            Left = 1
            Top = 112
            Width = 495
            Height = 13
            Align = alBottom
            Anchors = [akRight, akBottom]
            Caption = 'Emitters :'
            ExplicitWidth = 46
          end
        end
      end
    end
    object gbEnvironmentControl: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 13
      ExplicitWidth = 975
      object Panel16: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl16Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel16: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel16: TLabel
            Left = 371
            Top = 4
            Width = 296
            Height = 27
            Caption = 'ENVIRONMENT CONTROL'
          end
        end
        object pnl16Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel23: TPanel
        Left = 343
        Top = 82
        Width = 163
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        ExplicitWidth = 631
        object Panel55: TPanel
          Left = 4
          Top = 4
          Width = 155
          Height = 770
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 623
          object Panel56: TPanel
            Left = 0
            Top = 730
            Width = 155
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 623
            object Button40: TButton
              Left = 360
              Top = 10
              Width = 93
              Height = 28
              Caption = 'Apply'
              TabOrder = 0
              OnClick = Button40Click
            end
            object Button41: TButton
              Left = 459
              Top = 10
              Width = 93
              Height = 28
              Caption = 'Cancel'
              TabOrder = 1
            end
          end
          object Panel92: TPanel
            Left = 0
            Top = 0
            Width = 155
            Height = 730
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 623
            object pcEnvironmentControl: TPageControl
              Left = 0
              Top = 0
              Width = 551
              Height = 730
              ActivePage = tsAboveWater
              Align = alLeft
              TabOrder = 0
              object tsAboveWater: TTabSheet
                Caption = 'Above Water'
                object GroupBox6: TGroupBox
                  Left = 10
                  Top = 130
                  Width = 526
                  Height = 222
                  Caption = 'Visibility factors'
                  TabOrder = 0
                  object Label167: TLabel
                    Left = 16
                    Top = 20
                    Width = 73
                    Height = 13
                    Caption = 'Daytime visual:'
                  end
                  object Label168: TLabel
                    Left = 14
                    Top = 93
                    Width = 84
                    Height = 13
                    Caption = 'Daytime infrared:'
                  end
                  object Label169: TLabel
                    Left = 14
                    Top = 130
                    Width = 88
                    Height = 13
                    Caption = 'Nighttme infrared:'
                  end
                  object Label170: TLabel
                    Left = 14
                    Top = 56
                    Width = 75
                    Height = 13
                    Caption = 'Nightime visual:'
                  end
                  object Label171: TLabel
                    Left = 14
                    Top = 162
                    Width = 39
                    Height = 13
                    Caption = 'Sunrise:'
                  end
                  object lblEnviCtrlSunrise: TLabel
                    Left = 108
                    Top = 162
                    Width = 44
                    Height = 13
                    Caption = '00:00:00'
                  end
                  object Label173: TLabel
                    Left = 14
                    Top = 184
                    Width = 37
                    Height = 13
                    Caption = 'Sunset:'
                  end
                  object lblEnviCtrlSunset: TLabel
                    Left = 108
                    Top = 184
                    Width = 44
                    Height = 13
                    Caption = '00:00:00'
                  end
                  object Label175: TLabel
                    Left = 14
                    Top = 206
                    Width = 84
                    Height = 13
                    Caption = 'Period of twilight:'
                  end
                  object lblEnviCtrlPeriodTwilight: TLabel
                    Left = 108
                    Top = 206
                    Width = 44
                    Height = 13
                    Caption = '00:00:00'
                  end
                  object edtDayVis: TEdit
                    Left = 433
                    Top = 20
                    Width = 73
                    Height = 21
                    TabOrder = 0
                    OnKeyPress = edtDayVisKeyPress
                  end
                  object edtNightVis: TEdit
                    Left = 433
                    Top = 56
                    Width = 73
                    Height = 21
                    TabOrder = 1
                    OnKeyPress = edtNightVisKeyPress
                  end
                  object trbDaytimeVisual: TTrackBar
                    Left = 104
                    Top = 18
                    Width = 313
                    Height = 34
                    LineSize = 5
                    Max = 100
                    PageSize = 5
                    Frequency = 20
                    TabOrder = 2
                    OnChange = trbDaytimeVisualChange
                  end
                  object trbNighttimeVisual: TTrackBar
                    Left = 106
                    Top = 55
                    Width = 313
                    Height = 34
                    LineSize = 5
                    Max = 100
                    PageSize = 5
                    Frequency = 20
                    TabOrder = 3
                    OnChange = trbNighttimeVisualChange
                  end
                  object trbDaytimeInfra: TTrackBar
                    Left = 104
                    Top = 88
                    Width = 313
                    Height = 34
                    LineSize = 5
                    Max = 100
                    PageSize = 5
                    Frequency = 20
                    TabOrder = 4
                    OnChange = trbDaytimeInfraChange
                  end
                  object trbNighttimeInfra: TTrackBar
                    Left = 108
                    Top = 124
                    Width = 313
                    Height = 34
                    LineSize = 5
                    Max = 100
                    PageSize = 5
                    Frequency = 20
                    TabOrder = 5
                    OnChange = trbNighttimeInfraChange
                  end
                  object edtNightInfra: TEdit
                    Left = 433
                    Top = 129
                    Width = 73
                    Height = 21
                    TabOrder = 6
                  end
                  object edtDayInfra: TEdit
                    Left = 433
                    Top = 92
                    Width = 73
                    Height = 21
                    TabOrder = 7
                  end
                end
                object GroupBox7: TGroupBox
                  Left = 10
                  Top = 370
                  Width = 526
                  Height = 193
                  Caption = 'Attenuation factors'
                  TabOrder = 1
                  object Label177: TLabel
                    Left = 14
                    Top = 16
                    Width = 48
                    Height = 13
                    Caption = 'Rain rate:'
                  end
                  object Label178: TLabel
                    Left = 12
                    Top = 93
                    Width = 100
                    Height = 13
                    Caption = 'Barometric pressure:'
                  end
                  object Label179: TLabel
                    Left = 12
                    Top = 121
                    Width = 80
                    Height = 13
                    Caption = 'Air temperature:'
                  end
                  object Label180: TLabel
                    Left = 12
                    Top = 57
                    Width = 93
                    Height = 13
                    Caption = 'Cloud attenuation :'
                  end
                  object Label181: TLabel
                    Left = 12
                    Top = 150
                    Width = 90
                    Height = 13
                    Caption = 'Cloud base height:'
                  end
                  object Label182: TLabel
                    Left = 195
                    Top = 97
                    Width = 35
                    Height = 13
                    Caption = 'milibars'
                  end
                  object Label183: TLabel
                    Left = 197
                    Top = 123
                    Width = 7
                    Height = 13
                    Caption = 'C'
                  end
                  object Label184: TLabel
                    Left = 195
                    Top = 150
                    Width = 20
                    Height = 13
                    Caption = 'feet'
                  end
                  object edtAttenRainRate: TEdit
                    Left = 431
                    Top = 17
                    Width = 73
                    Height = 21
                    TabOrder = 0
                  end
                  object edtAttenCloud: TEdit
                    Left = 429
                    Top = 57
                    Width = 73
                    Height = 21
                    TabOrder = 1
                  end
                  object trbAttenRainRate: TTrackBar
                    Left = 102
                    Top = 14
                    Width = 313
                    Height = 34
                    LineSize = 2
                    Max = 5
                    PageSize = 1
                    TabOrder = 2
                    OnChange = trbAttenRainRateChange
                  end
                  object trbAttenCloud: TTrackBar
                    Left = 102
                    Top = 57
                    Width = 313
                    Height = 34
                    LineSize = 2
                    Max = 5
                    PageSize = 1
                    TabOrder = 3
                    OnChange = trbAttenCloudChange
                  end
                  object edtAirTemp: TEdit
                    Left = 116
                    Top = 118
                    Width = 73
                    Height = 21
                    TabOrder = 4
                  end
                  object edtBarometricPressure: TEdit
                    Left = 116
                    Top = 91
                    Width = 73
                    Height = 21
                    TabOrder = 5
                  end
                  object edtCloudBaseHeight: TEdit
                    Left = 116
                    Top = 145
                    Width = 73
                    Height = 21
                    TabOrder = 6
                  end
                end
                object GroupBox8: TGroupBox
                  Left = 10
                  Top = 580
                  Width = 526
                  Height = 92
                  Caption = 'Athmospheric sub/super refraction modifier'
                  TabOrder = 2
                  object Label185: TLabel
                    Left = 21
                    Top = 53
                    Width = 17
                    Height = 13
                    Caption = '1%'
                  end
                  object Label186: TLabel
                    Left = 203
                    Top = 49
                    Width = 29
                    Height = 13
                    Caption = '100%'
                  end
                  object Label187: TLabel
                    Left = 61
                    Top = 64
                    Width = 69
                    Height = 13
                    Caption = 'Sub-refraction'
                  end
                  object Label189: TLabel
                    Left = 187
                    Top = 64
                    Width = 63
                    Height = 13
                    Caption = 'No refraction'
                  end
                  object Label190: TLabel
                    Left = 378
                    Top = 48
                    Width = 29
                    Height = 13
                    Caption = '200%'
                  end
                  object Label192: TLabel
                    Left = 285
                    Top = 64
                    Width = 79
                    Height = 13
                    Caption = 'Super-refraction'
                  end
                  object edtAtmRefract: TEdit
                    Left = 422
                    Top = 17
                    Width = 73
                    Height = 21
                    TabOrder = 0
                  end
                  object trbAtmRefract: TTrackBar
                    Left = 16
                    Top = 14
                    Width = 390
                    Height = 34
                    LineSize = 2
                    Max = 200
                    PageSize = 5
                    Frequency = 20
                    TabOrder = 1
                    OnChange = trbAtmRefractChange
                  end
                end
                object GroupBox5: TGroupBox
                  Left = 10
                  Top = 6
                  Width = 279
                  Height = 105
                  Caption = 'Wind'
                  TabOrder = 3
                  object Label163: TLabel
                    Left = 101
                    Top = 31
                    Width = 46
                    Height = 13
                    Caption = 'Direction:'
                  end
                  object Label164: TLabel
                    Left = 231
                    Top = 31
                    Width = 39
                    Height = 13
                    Caption = 'degrees'
                  end
                  object Label165: TLabel
                    Left = 228
                    Top = 61
                    Width = 17
                    Height = 13
                    Caption = 'm/s'
                  end
                  object Label166: TLabel
                    Left = 101
                    Top = 61
                    Width = 34
                    Height = 13
                    Caption = 'Speed:'
                  end
                  object edtWindDir: TEdit
                    Left = 152
                    Top = 27
                    Width = 73
                    Height = 21
                    TabOrder = 0
                    OnKeyPress = edtWindDirKeyPress
                  end
                  object edtWindSpeed: TEdit
                    Left = 152
                    Top = 57
                    Width = 73
                    Height = 21
                    TabOrder = 1
                    OnKeyPress = edtWindSpeedKeyPress
                  end
                  object pnWheelAbove: TPanel
                    Left = 13
                    Top = 18
                    Width = 73
                    Height = 73
                    Color = clMedGray
                    ParentBackground = False
                    TabOrder = 2
                  end
                end
              end
              object tsSurface: TTabSheet
                Caption = 'Surface and Subsurface'
                ImageIndex = 1
                object Label194: TLabel
                  Left = 308
                  Top = 12
                  Width = 67
                  Height = 13
                  Caption = 'Shipping rate:'
                end
                object Label195: TLabel
                  Left = 308
                  Top = 62
                  Width = 112
                  Height = 13
                  Caption = 'Depth of thermal layer:'
                end
                object Label188: TLabel
                  Left = 387
                  Top = 81
                  Width = 33
                  Height = 13
                  Caption = 'metres'
                end
                object Label212: TLabel
                  Left = 13
                  Top = 378
                  Width = 50
                  Height = 13
                  Caption = 'Sea state:'
                end
                object Label213: TLabel
                  Left = 130
                  Top = 399
                  Width = 16
                  Height = 13
                  Caption = 'Still'
                end
                object Label214: TLabel
                  Left = 413
                  Top = 399
                  Width = 31
                  Height = 13
                  Caption = 'Heavy'
                end
                object Label215: TLabel
                  Left = 416
                  Top = 463
                  Width = 6
                  Height = 13
                  Caption = '9'
                end
                object Label216: TLabel
                  Left = 136
                  Top = 461
                  Width = 6
                  Height = 13
                  Caption = '1'
                end
                object Label217: TLabel
                  Left = 13
                  Top = 439
                  Width = 108
                  Height = 13
                  Caption = 'Botom loss coefficient:'
                end
                object Label218: TLabel
                  Left = 248
                  Top = 541
                  Width = 15
                  Height = 13
                  Caption = 'dB '
                end
                object Label219: TLabel
                  Left = 14
                  Top = 546
                  Width = 147
                  Height = 13
                  Caption = 'Shadow zone transmission loss'
                end
                object Label220: TLabel
                  Left = 248
                  Top = 517
                  Width = 33
                  Height = 13
                  Caption = 'metres'
                end
                object Label221: TLabel
                  Left = 14
                  Top = 519
                  Width = 108
                  Height = 13
                  Caption = 'Average ocean depth:'
                end
                object Label222: TLabel
                  Left = 247
                  Top = 489
                  Width = 7
                  Height = 13
                  Caption = 'C'
                end
                object Label223: TLabel
                  Left = 14
                  Top = 491
                  Width = 104
                  Height = 13
                  Caption = 'Surface temperature:'
                end
                object GroupBox11: TGroupBox
                  Left = 12
                  Top = 12
                  Width = 277
                  Height = 105
                  Caption = 'Ocean current'
                  TabOrder = 0
                  object Label158: TLabel
                    Left = 99
                    Top = 30
                    Width = 46
                    Height = 13
                    Caption = 'Direction:'
                  end
                  object Label191: TLabel
                    Left = 229
                    Top = 58
                    Width = 26
                    Height = 13
                    Caption = 'knots'
                  end
                  object Label193: TLabel
                    Left = 99
                    Top = 60
                    Width = 34
                    Height = 13
                    Caption = 'Speed:'
                  end
                  object Label196: TLabel
                    Left = 229
                    Top = 30
                    Width = 39
                    Height = 13
                    Caption = 'degrees'
                  end
                  object edtOceanCurrentDirection: TEdit
                    Left = 150
                    Top = 26
                    Width = 73
                    Height = 21
                    TabOrder = 0
                    OnKeyPress = edtOceanCurrentDirectionKeyPress
                  end
                  object edtOceanCurrentSpeed: TEdit
                    Left = 150
                    Top = 56
                    Width = 73
                    Height = 21
                    TabOrder = 1
                    OnKeyPress = edtOceanCurrentSpeedKeyPress
                  end
                  object pnlWheelSurface: TPanel
                    Left = 9
                    Top = 17
                    Width = 73
                    Height = 73
                    Color = clMedGray
                    ParentBackground = False
                    TabOrder = 2
                  end
                end
                object cbxShippingRate: TComboBox
                  Left = 308
                  Top = 31
                  Width = 145
                  Height = 21
                  TabOrder = 1
                  Text = 'Medium'
                  Items.Strings = (
                    'Distant'
                    'Low'
                    'Medium'
                    'High')
                end
                object edtDepthTermalLayer: TEdit
                  Left = 308
                  Top = 81
                  Width = 73
                  Height = 21
                  TabOrder = 2
                end
                object GroupBox12: TGroupBox
                  Left = 272
                  Top = 128
                  Width = 254
                  Height = 105
                  Caption = 'Speed of sound'
                  TabOrder = 3
                  object Label197: TLabel
                    Left = 15
                    Top = 21
                    Width = 41
                    Height = 13
                    Caption = 'Surface:'
                  end
                  object Label198: TLabel
                    Left = 141
                    Top = 21
                    Width = 17
                    Height = 13
                    Caption = 'm/s'
                  end
                  object Label199: TLabel
                    Left = 15
                    Top = 49
                    Width = 31
                    Height = 13
                    Caption = 'Layer:'
                  end
                  object Label200: TLabel
                    Left = 15
                    Top = 76
                    Width = 38
                    Height = 13
                    Caption = 'Bottom:'
                  end
                  object Label201: TLabel
                    Left = 142
                    Top = 49
                    Width = 17
                    Height = 13
                    Caption = 'm/s'
                  end
                  object Label202: TLabel
                    Left = 142
                    Top = 73
                    Width = 17
                    Height = 13
                    Caption = 'm/s'
                  end
                  object edtSpeedOfSoundSurface: TEdit
                    Left = 63
                    Top = 19
                    Width = 73
                    Height = 21
                    TabOrder = 0
                  end
                  object edtSpeedOfSoundlayer: TEdit
                    Left = 63
                    Top = 46
                    Width = 73
                    Height = 21
                    TabOrder = 1
                  end
                  object edtSpeedOfSoundBottom: TEdit
                    Left = 63
                    Top = 73
                    Width = 73
                    Height = 21
                    TabOrder = 2
                  end
                end
                object GroupBox2: TGroupBox
                  Left = 12
                  Top = 129
                  Width = 254
                  Height = 105
                  Caption = 'Sound velocity profile'
                  TabOrder = 4
                  object Label203: TLabel
                    Left = 103
                    Top = 68
                    Width = 37
                    Height = 13
                    Caption = 'Positive'
                  end
                  object SpeedButton25: TSpeedButton
                    Left = 89
                    Top = 23
                    Width = 35
                    Height = 35
                    Caption = '/'
                  end
                  object SpeedButton24: TSpeedButton
                    Left = 42
                    Top = 25
                    Width = 35
                    Height = 35
                    Caption = '\'
                  end
                  object SpeedButton26: TSpeedButton
                    Left = 134
                    Top = 25
                    Width = 35
                    Height = 35
                    Caption = '>'
                  end
                  object SpeedButton27: TSpeedButton
                    Left = 178
                    Top = 25
                    Width = 35
                    Height = 35
                    Caption = '<'
                  end
                end
                object GroupBox13: TGroupBox
                  Left = 12
                  Top = 251
                  Width = 254
                  Height = 101
                  Caption = 'Surface Ducting'
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 5
                  object Label204: TLabel
                    Left = 154
                    Top = 76
                    Width = 33
                    Height = 13
                    Caption = 'metres'
                  end
                  object Label205: TLabel
                    Left = 15
                    Top = 72
                    Width = 54
                    Height = 13
                    Caption = 'Lower limit:'
                  end
                  object Label206: TLabel
                    Left = 154
                    Top = 44
                    Width = 33
                    Height = 13
                    Caption = 'metres'
                  end
                  object Label207: TLabel
                    Left = 15
                    Top = 44
                    Width = 54
                    Height = 13
                    Caption = 'Upper limit:'
                  end
                  object edtSurfaceDuctLow: TEdit
                    Left = 75
                    Top = 67
                    Width = 73
                    Height = 21
                    TabOrder = 0
                  end
                  object edtSurfaceDuctUp: TEdit
                    Left = 75
                    Top = 42
                    Width = 73
                    Height = 21
                    TabOrder = 1
                  end
                end
                object GroupBox14: TGroupBox
                  Left = 272
                  Top = 251
                  Width = 254
                  Height = 100
                  Caption = 'Sub Surface Ducting'
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 6
                  object Label208: TLabel
                    Left = 152
                    Top = 77
                    Width = 33
                    Height = 13
                    Caption = 'metres'
                  end
                  object Label209: TLabel
                    Left = 13
                    Top = 73
                    Width = 54
                    Height = 13
                    Caption = 'Lower limit:'
                  end
                  object Label210: TLabel
                    Left = 152
                    Top = 45
                    Width = 33
                    Height = 13
                    Caption = 'metres'
                  end
                  object Label211: TLabel
                    Left = 13
                    Top = 45
                    Width = 54
                    Height = 13
                    Caption = 'Upper limit:'
                  end
                  object edtSubSurfaceDuctLow: TEdit
                    Left = 73
                    Top = 68
                    Width = 73
                    Height = 21
                    TabOrder = 0
                  end
                  object edtSubSurfaceDuctUp: TEdit
                    Left = 73
                    Top = 43
                    Width = 73
                    Height = 21
                    TabOrder = 1
                  end
                end
                object trbSeaState: TTrackBar
                  Left = 127
                  Top = 369
                  Width = 305
                  Height = 28
                  TabOrder = 7
                  OnChange = trbSeaStateChange
                end
                object edtSeaState: TEdit
                  Left = 438
                  Top = 372
                  Width = 73
                  Height = 21
                  TabOrder = 8
                end
                object edtBottomLost: TEdit
                  Left = 438
                  Top = 427
                  Width = 73
                  Height = 21
                  TabOrder = 9
                end
                object trbBottomLost: TTrackBar
                  Left = 127
                  Top = 430
                  Width = 305
                  Height = 27
                  TabOrder = 10
                  OnChange = trbBottomLostChange
                end
                object edtShadowZone: TEdit
                  Left = 169
                  Top = 541
                  Width = 73
                  Height = 21
                  TabOrder = 11
                end
                object edtAvgOceanDepth: TEdit
                  Left = 169
                  Top = 514
                  Width = 73
                  Height = 21
                  TabOrder = 12
                end
                object edtSurfaceTemperatur: TEdit
                  Left = 168
                  Top = 487
                  Width = 73
                  Height = 21
                  TabOrder = 13
                end
                object cbxConvergenceZone: TCheckBox
                  Left = 15
                  Top = 582
                  Width = 159
                  Height = 17
                  Caption = 'Convergence zones'
                  TabOrder = 14
                end
              end
              object tsBoundary: TTabSheet
                Caption = 'Boundaries'
                ImageIndex = 2
                object GroupBox9: TGroupBox
                  Left = 10
                  Top = 3
                  Width = 519
                  Height = 83
                  Caption = 'Top-left'
                  TabOrder = 0
                end
                object GroupBox10: TGroupBox
                  Left = 10
                  Top = 97
                  Width = 519
                  Height = 67
                  Caption = 'Bottom-right'
                  TabOrder = 1
                end
              end
            end
          end
        end
      end
      object Panel22: TPanel
        Left = 1
        Top = 82
        Width = 342
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Panel54: TPanel
          Left = 4
          Top = 4
          Width = 334
          Height = 355
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 0
          object lvEnviroArea: TListView
            Left = 10
            Top = 10
            Width = 314
            Height = 335
            Align = alClient
            Columns = <
              item
                Caption = 'Name'
                Width = 200
              end>
            TabOrder = 0
            ViewStyle = vsReport
            OnSelectItem = lvEnviroAreaSelectItem
          end
        end
      end
    end
    object gbEnvironmentStatus: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 975
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl3Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel3: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel3: TLabel
            Left = 371
            Top = 4
            Width = 268
            Height = 27
            Caption = 'ENVIRONMENT STATUS'
          end
        end
        object pnl3Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel21: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object Label81: TLabel
          Left = 11
          Top = 14
          Width = 64
          Height = 13
          Caption = 'Above Water'
        end
        object Bevel1: TBevel
          Left = 11
          Top = 28
          Width = 750
          Height = 3
        end
        object Label82: TLabel
          Left = 26
          Top = 37
          Width = 47
          Height = 13
          Caption = 'Wind true'
        end
        object Bevel2: TBevel
          Left = 77
          Top = 42
          Width = 236
          Height = 3
        end
        object Label83: TLabel
          Left = 43
          Top = 60
          Width = 34
          Height = 13
          Caption = 'Speed:'
        end
        object Label84: TLabel
          Left = 43
          Top = 79
          Width = 46
          Height = 13
          Caption = 'Direction:'
        end
        object Bevel3: TBevel
          Left = 440
          Top = 40
          Width = 207
          Height = 3
        end
        object Label85: TLabel
          Left = 360
          Top = 35
          Width = 63
          Height = 13
          Caption = 'Wind relative'
        end
        object lblSpeedWIndTrue: TLabel
          Left = 104
          Top = 63
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object lblDirectionWindTrue: TLabel
          Left = 104
          Top = 79
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object lblWindRelativeDirection: TLabel
          Left = 451
          Top = 79
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label87: TLabel
          Left = 390
          Top = 79
          Width = 46
          Height = 13
          Caption = 'Direction:'
        end
        object lblWindRelativeSpeed: TLabel
          Left = 451
          Top = 63
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label89: TLabel
          Left = 390
          Top = 60
          Width = 34
          Height = 13
          Caption = 'Speed:'
        end
        object Label90: TLabel
          Left = 510
          Top = 79
          Width = 39
          Height = 13
          Caption = 'degrees'
        end
        object Label91: TLabel
          Left = 510
          Top = 60
          Width = 17
          Height = 13
          Caption = 'm/s'
        end
        object Label92: TLabel
          Left = 390
          Top = 199
          Width = 84
          Height = 13
          Caption = 'Infrared visibility:'
        end
        object lblVisibilityFactorsElectroOptical: TLabel
          Left = 515
          Top = 180
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label94: TLabel
          Left = 390
          Top = 180
          Width = 112
          Height = 13
          Caption = 'Electro-optical visibility:'
        end
        object lblAttenuationFactorsCloud: TLabel
          Left = 147
          Top = 180
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label96: TLabel
          Left = 43
          Top = 180
          Width = 90
          Height = 13
          Caption = 'Cloud base height:'
        end
        object Label97: TLabel
          Left = 189
          Top = 180
          Width = 20
          Height = 13
          Caption = 'feet'
        end
        object lblVisibilityactorsTime: TLabel
          Left = 517
          Top = 161
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label99: TLabel
          Left = 390
          Top = 161
          Width = 60
          Height = 13
          Caption = 'Time of day:'
        end
        object lblAttenuationFactorsRain: TLabel
          Left = 147
          Top = 161
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label101: TLabel
          Left = 43
          Top = 161
          Width = 48
          Height = 13
          Caption = 'Rain rate:'
        end
        object Bevel4: TBevel
          Left = 440
          Top = 141
          Width = 207
          Height = 3
        end
        object Label102: TLabel
          Left = 360
          Top = 136
          Width = 76
          Height = 13
          Caption = 'Visiibility factors'
        end
        object Bevel5: TBevel
          Left = 126
          Top = 143
          Width = 187
          Height = 3
        end
        object Label103: TLabel
          Left = 26
          Top = 138
          Width = 94
          Height = 13
          Caption = 'Attenuation factors'
        end
        object lblVisibilityFactorsnfrared: TLabel
          Left = 515
          Top = 202
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label105: TLabel
          Left = 183
          Top = 277
          Width = 24
          Height = 13
          Caption = 'mBar'
        end
        object lblOtherBarometric: TLabel
          Left = 141
          Top = 277
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label107: TLabel
          Left = 37
          Top = 277
          Width = 100
          Height = 13
          Caption = 'Barometric pressure:'
        end
        object lblOtherAirTemp: TLabel
          Left = 141
          Top = 258
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label109: TLabel
          Left = 37
          Top = 258
          Width = 80
          Height = 13
          Caption = 'Air temperature:'
        end
        object Bevel6: TBevel
          Left = 61
          Top = 244
          Width = 246
          Height = 3
        end
        object Label111: TLabel
          Left = 183
          Top = 257
          Width = 7
          Height = 13
          Caption = 'C'
        end
        object Label86: TLabel
          Left = 18
          Top = 336
          Width = 115
          Height = 13
          Caption = 'Surface and Subsurface'
        end
        object Bevel7: TBevel
          Left = 18
          Top = 350
          Width = 750
          Height = 3
        end
        object lblSoundVelocityAverageBottom: TLabel
          Left = 515
          Top = 428
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object lblSoundVelocityLayer: TLabel
          Left = 515
          Top = 406
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object lblSoundVelocityProfile: TLabel
          Left = 515
          Top = 387
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label98: TLabel
          Left = 390
          Top = 425
          Width = 113
          Height = 13
          Caption = 'Average bottom depth:'
        end
        object Label100: TLabel
          Left = 390
          Top = 406
          Width = 62
          Height = 13
          Caption = 'Layer depth:'
        end
        object Label104: TLabel
          Left = 390
          Top = 387
          Width = 34
          Height = 13
          Caption = 'Profile:'
        end
        object Label106: TLabel
          Left = 189
          Top = 387
          Width = 26
          Height = 13
          Caption = 'knots'
        end
        object lblOceanCurrentDirection: TLabel
          Left = 147
          Top = 406
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label112: TLabel
          Left = 43
          Top = 406
          Width = 46
          Height = 13
          Caption = 'Direction:'
        end
        object lblOceanCurrentSpeed: TLabel
          Left = 147
          Top = 387
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label114: TLabel
          Left = 43
          Top = 387
          Width = 34
          Height = 13
          Caption = 'Speed:'
        end
        object Bevel8: TBevel
          Left = 440
          Top = 367
          Width = 207
          Height = 3
        end
        object Label115: TLabel
          Left = 360
          Top = 362
          Width = 70
          Height = 13
          Caption = 'Sound velocity'
        end
        object Bevel9: TBevel
          Left = 126
          Top = 369
          Width = 187
          Height = 3
        end
        object Label116: TLabel
          Left = 26
          Top = 364
          Width = 69
          Height = 13
          Caption = 'Ocean current'
        end
        object Label117: TLabel
          Left = 189
          Top = 406
          Width = 48
          Height = 13
          Caption = 'degrees T'
        end
        object Label118: TLabel
          Left = 558
          Top = 425
          Width = 33
          Height = 13
          Caption = 'metres'
        end
        object Label119: TLabel
          Left = 558
          Top = 406
          Width = 33
          Height = 13
          Caption = 'metres'
        end
        object lblSurfaceTemp: TLabel
          Left = 149
          Top = 507
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label95: TLabel
          Left = 43
          Top = 507
          Width = 104
          Height = 13
          Caption = 'Surface temperature:'
        end
        object Label108: TLabel
          Left = 189
          Top = 507
          Width = 7
          Height = 13
          Caption = 'C'
        end
        object lblSeaState: TLabel
          Left = 149
          Top = 488
          Width = 20
          Height = 13
          Caption = '-----'
        end
        object Label120: TLabel
          Left = 43
          Top = 488
          Width = 50
          Height = 13
          Caption = 'Sea state:'
        end
        object Bevel10: TBevel
          Left = 61
          Top = 474
          Width = 246
          Height = 3
        end
        object Label110: TLabel
          Left = 26
          Top = 239
          Width = 28
          Height = 13
          Caption = 'Other'
        end
        object Label121: TLabel
          Left = 26
          Top = 469
          Width = 28
          Height = 13
          Caption = 'Other'
        end
      end
    end
    object gbMergedTracksStatus: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 16
      ExplicitWidth = 975
      object Panel46: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl46Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel46: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel46: TLabel
            Left = 371
            Top = 4
            Width = 285
            Height = 27
            Caption = 'MERGED TRACK STATUS'
          end
        end
        object pnl46Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel47: TPanel
        Left = 1
        Top = 82
        Width = 438
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Panel48: TPanel
          Left = 4
          Top = 27
          Width = 430
          Height = 3403
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          Caption = 'Panel57'
          TabOrder = 0
          object lvMergedTrack: TListView
            Left = 10
            Top = 10
            Width = 410
            Height = 3383
            Align = alClient
            Columns = <
              item
                Caption = 'Track'
                MaxWidth = 75
                MinWidth = 75
                Width = 75
              end
              item
                Caption = 'Domain'
                MaxWidth = 160
                MinWidth = 160
                Width = 160
              end
              item
                Caption = 'Identity'
                MaxWidth = 160
                MinWidth = 160
                Width = 160
              end>
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object Panel50: TPanel
          Left = 4
          Top = 4
          Width = 430
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            Left = 13
            Top = 6
            Width = 74
            Height = 13
            Caption = 'Merged Tracks:'
          end
        end
      end
      object Panel51: TPanel
        Left = 439
        Top = 82
        Width = 90
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object btAdd: TButton
          Left = 6
          Top = 124
          Width = 75
          Height = 25
          Caption = 'Add >'
          TabOrder = 0
        end
        object btRemove: TButton
          Left = 6
          Top = 156
          Width = 75
          Height = 25
          Caption = '< Remove'
          TabOrder = 1
        end
      end
      object Panel52: TPanel
        Left = 529
        Top = 82
        Width = 440
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 3
        object Panel86: TPanel
          Left = 4
          Top = 4
          Width = 432
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label4: TLabel
            Left = 10
            Top = 8
            Width = 127
            Height = 13
            Caption = 'Merged Track Component:'
          end
        end
        object Panel88: TPanel
          Left = 4
          Top = 32
          Width = 432
          Height = 544
          Align = alTop
          Anchors = [akTop]
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 1
          object lvMergedTrackComponent: TListView
            Left = 10
            Top = 10
            Width = 412
            Height = 524
            Align = alClient
            Columns = <
              item
                Caption = 'Track'
                MaxWidth = 75
                MinWidth = 75
                Width = 75
              end
              item
                Caption = 'Type'
                MaxWidth = 140
                MinWidth = 140
                Width = 140
              end
              item
                Caption = 'Range [nm]'
                MaxWidth = 75
                MinWidth = 75
                Width = 75
              end
              item
                Caption = 'Bearing [degrees T]'
                MaxWidth = 125
                MinWidth = 125
                Width = 125
              end>
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object Panel91: TPanel
          Left = 4
          Top = 576
          Width = 432
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 2
          object Button1: TButton
            Left = 312
            Top = 0
            Width = 105
            Height = 25
            Caption = 'Split'
            TabOrder = 0
          end
        end
      end
    end
    object gbMessageHandlingSystem: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 6
      ExplicitWidth = 975
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl8Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel8: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel8: TLabel
            Left = 371
            Top = 4
            Width = 349
            Height = 27
            Caption = 'MESSAGE HANDLING SYSTEM'
          end
        end
        object pnl8Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel25: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object pcReceived: TPageControl
          Left = 5
          Top = 5
          Width = 495
          Height = 3072
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 963
          object TabSheet1: TTabSheet
            Caption = 'Received'
            ExplicitWidth = 955
            object Panel74: TPanel
              Left = 0
              Top = 0
              Width = 487
              Height = 3044
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 10
              TabOrder = 0
              ExplicitWidth = 955
              object lvReceive: TListView
                Left = 10
                Top = 10
                Width = 467
                Height = 3024
                Align = alClient
                Columns = <
                  item
                    Caption = 'From'
                    Width = 200
                  end
                  item
                    Caption = 'Message'
                    Width = 200
                  end
                  item
                    Caption = 'Subject'
                    Width = 200
                  end
                  item
                    Caption = 'Priority'
                    Width = 100
                  end>
                RowSelect = True
                TabOrder = 0
                ViewStyle = vsReport
                OnClick = lvReceiveClick
                ExplicitWidth = 935
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Sent'
            ImageIndex = 1
            ExplicitWidth = 955
            object Panel78: TPanel
              Left = 0
              Top = 0
              Width = 487
              Height = 3044
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 10
              TabOrder = 0
              ExplicitWidth = 955
              object lvSent: TListView
                Left = 10
                Top = 10
                Width = 467
                Height = 3024
                Align = alClient
                Columns = <
                  item
                    Caption = 'To'
                    Width = 200
                  end
                  item
                    Caption = 'Message'
                    Width = 200
                  end
                  item
                    Caption = 'Subject'
                    Width = 200
                  end
                  item
                    Caption = 'Priority'
                    Width = 100
                  end>
                RowSelect = True
                TabOrder = 0
                ViewStyle = vsReport
                OnClick = lvSentClick
                ExplicitWidth = 935
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Draft'
            ImageIndex = 2
            ExplicitWidth = 955
            object Panel82: TPanel
              Left = 0
              Top = 0
              Width = 487
              Height = 3044
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 10
              TabOrder = 0
              ExplicitWidth = 955
              object lvDraft: TListView
                Left = 10
                Top = 10
                Width = 467
                Height = 3024
                Align = alClient
                Columns = <
                  item
                    Caption = 'To'
                    Width = 200
                  end
                  item
                    Caption = 'Message'
                    Width = 200
                  end
                  item
                    Caption = 'Subject'
                    Width = 200
                  end
                  item
                    Caption = 'Priority'
                    Width = 100
                  end>
                RowSelect = True
                TabOrder = 0
                ViewStyle = vsReport
                OnClick = lvDraftClick
                ExplicitWidth = 935
              end
            end
          end
        end
        object Panel20: TPanel
          Left = 5
          Top = 3077
          Width = 495
          Height = 352
          Align = alBottom
          TabOrder = 1
          ExplicitWidth = 963
          object Panel49: TPanel
            Left = 1
            Top = 296
            Width = 493
            Height = 55
            Align = alBottom
            TabOrder = 0
            ExplicitWidth = 961
            object btnNew: TButton
              Left = 6
              Top = 14
              Width = 57
              Height = 25
              Caption = 'New'
              TabOrder = 0
              OnClick = btnNewClick
            end
            object btnRemove: TButton
              Left = 393
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Remove'
              TabOrder = 1
              OnClick = btnRemoveClick
            end
            object btnReply: TButton
              Left = 231
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Reply'
              TabOrder = 2
              OnClick = btnReplyClick
            end
            object btnForward: TButton
              Left = 312
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Forward'
              TabOrder = 3
              OnClick = btnForwardClick
            end
            object btnSend: TButton
              Left = 150
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Send'
              TabOrder = 4
              OnClick = btnSendClick
            end
            object btnEdit: TButton
              Left = 69
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Edit'
              TabOrder = 5
              OnClick = btnEditClick
            end
            object btnPrint: TButton
              Left = 472
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Print'
              TabOrder = 6
              OnClick = btnPrintClick
            end
          end
          object Panel75: TPanel
            Left = 1
            Top = 1
            Width = 493
            Height = 295
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 961
            object mmoMessage: TMemo
              Left = 1
              Top = 1
              Width = 491
              Height = 293
              Align = alClient
              Lines.Strings = (
                '')
              TabOrder = 0
              ExplicitWidth = 959
            end
          end
        end
      end
    end
    object gbPlatformRemovalSummary: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 3
      ExplicitWidth = 975
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl6Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel6: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel6: TLabel
            Left = 371
            Top = 4
            Width = 370
            Height = 27
            Caption = 'PLATFORM REMOVAL SUMMARY'
          end
        end
        object pnl6Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel28: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 1110
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object Panel90: TPanel
          Left = 4
          Top = 4
          Width = 497
          Height = 649
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 0
          ExplicitWidth = 965
          object lvPlatformRemovalSum: TListView
            Left = 10
            Top = 10
            Width = 477
            Height = 629
            Align = alClient
            Columns = <
              item
                Caption = 'Date/Time'
                Width = 150
              end
              item
                Caption = 'Name'
                Width = 250
              end
              item
                Caption = 'Reason'
                Width = 300
              end>
            RowSelect = True
            StateImages = ImageList1
            TabOrder = 0
            ViewStyle = vsReport
            ExplicitWidth = 945
          end
        end
      end
    end
    object gbSensorOverride: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 14
      ExplicitWidth = 975
      object Panel17: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl17Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel17: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel17: TLabel
            Left = 371
            Top = 4
            Width = 427
            Height = 27
            Caption = 'SENSOR OVERRIDE / ERROR TERMS'
          end
        end
        object pnl17Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel33: TPanel
        Left = 1
        Top = 82
        Width = 613
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object lvSensorOverride: TListView
          Left = 4
          Top = 4
          Width = 605
          Height = 3426
          Align = alClient
          Columns = <
            item
              Caption = ' '
              Width = 30
            end
            item
              Caption = 'Class'
              Width = 100
            end
            item
              Caption = 'Name'
              Width = 100
            end
            item
              Caption = 'Track'
            end
            item
              AutoSize = True
              Caption = 'Force'
            end>
          HideSelection = False
          RowSelect = True
          StateImages = ImageList1
          TabOrder = 0
          ViewStyle = vsReport
          OnSelectItem = lvSensorOverrideSelectItem
        end
      end
      object Panel18: TPanel
        Left = 614
        Top = 82
        Width = 163
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        ExplicitWidth = 360
        object Panel19: TPanel
          Left = 4
          Top = 4
          Width = 155
          Height = 3426
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 352
          DesignSize = (
            155
            3426)
          object Bevel12: TBevel
            Left = 108
            Top = 30
            Width = 43
            Height = 7
            Anchors = [akLeft, akTop, akRight]
            Shape = bsBottomLine
            ExplicitWidth = 240
          end
          object Bevel13: TBevel
            Left = 83
            Top = 167
            Width = 68
            Height = 7
            Anchors = [akLeft, akTop, akRight]
            Shape = bsBottomLine
            ExplicitWidth = 265
          end
          object Label224: TLabel
            Left = 18
            Top = 28
            Width = 84
            Height = 13
            Caption = 'Selected Platform'
          end
          object Label225: TLabel
            Left = 18
            Top = 60
            Width = 83
            Height = 13
            Caption = 'Detection status:'
          end
          object Label226: TLabel
            Left = 18
            Top = 165
            Width = 59
            Height = 13
            Caption = 'All platforms'
          end
          object SpeedButton28: TSpeedButton
            Left = 318
            Top = 55
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
            PopupMenu = pmDetectionStatus
            OnClick = SpeedButton28Click
          end
          object btnInhibitAllESM: TButton
            Left = 56
            Top = 203
            Width = 243
            Height = 33
            Caption = 'Inhibit All ESM Bearing Errors'
            TabOrder = 0
          end
          object btnInhibitSonar: TButton
            Left = 56
            Top = 242
            Width = 243
            Height = 33
            Caption = 'Inhibit All Sonar Bearing Errors'
            TabOrder = 1
          end
          object btnSelectControlledPlatform: TButton
            Left = 18
            Top = 381
            Width = 213
            Height = 33
            Caption = 'Select Controlled Platform'
            TabOrder = 2
          end
          object btnSelectHookedPlatform: TButton
            Left = 18
            Top = 336
            Width = 213
            Height = 33
            Caption = 'Select Hooked Platform'
            TabOrder = 3
          end
          object cbInhibitESMbearing: TCheckBox
            Left = 18
            Top = 99
            Width = 253
            Height = 17
            Caption = 'Inhibit ESM bearing errors'
            TabOrder = 4
          end
          object cbInhibitSonarBearing: TCheckBox
            Left = 18
            Top = 125
            Width = 202
            Height = 17
            Caption = 'Inhibit sonar bearing errors'
            Color = clBtnFace
            ParentColor = False
            TabOrder = 5
          end
          object edtDetectionStatus: TEdit
            Left = 107
            Top = 56
            Width = 205
            Height = 21
            ReadOnly = True
            TabOrder = 6
          end
        end
      end
    end
    object gbSettings: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 15
      ExplicitWidth = 975
      object Panel44: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 973
        object Panel45: TPanel
          Left = 4
          Top = 3271
          Width = 497
          Height = 159
          Align = alBottom
          BorderStyle = bsSingle
          TabOrder = 0
          ExplicitWidth = 965
          object btnSetXML: TButton
            Left = 786
            Top = 15
            Width = 75
            Height = 25
            Caption = 'Collapse All'
            TabOrder = 2
            OnClick = btnSetXMLClick
          end
          object btnGetXML: TButton
            Left = 867
            Top = 15
            Width = 75
            Height = 25
            Caption = 'Expand All'
            TabOrder = 3
            OnClick = btnGetXMLClick
          end
          object gbPercentage: TGroupBox
            Left = 10
            Top = 12
            Width = 758
            Height = 109
            Caption = 'Percentage'
            TabOrder = 4
            object btSetPercentage: TButton
              Left = 150
              Top = 22
              Width = 75
              Height = 25
              Caption = 'Apply'
              TabOrder = 0
              OnClick = btSetPercentageClick
            end
            object edtPercentage: TEdit
              Left = 14
              Top = 24
              Width = 121
              Height = 21
              TabOrder = 1
            end
          end
          object gbProbability: TGroupBox
            Left = 10
            Top = 12
            Width = 759
            Height = 111
            Caption = 'Change Guidance Command'
            TabOrder = 7
            object rbNormal: TRadioButton
              Left = 31
              Top = 24
              Width = 113
              Height = 17
              Caption = 'Normal'
              TabOrder = 0
              OnClick = rbNormalClick
            end
            object rbAlways: TRadioButton
              Left = 31
              Top = 47
              Width = 113
              Height = 17
              Caption = 'Always kill if hit'
              TabOrder = 1
              OnClick = rbAlwaysClick
            end
            object rbNever: TRadioButton
              Left = 31
              Top = 70
              Width = 113
              Height = 17
              Caption = 'Never kill if hit'
              TabOrder = 2
              OnClick = rbNeverClick
            end
          end
          object gbSetEnDis: TGroupBox
            Left = 10
            Top = 12
            Width = 759
            Height = 109
            Caption = 'Enable'
            TabOrder = 0
            object cbSetEnDis: TCheckBox
              Left = 23
              Top = 26
              Width = 97
              Height = 17
              Caption = 'Enable'
              TabOrder = 0
              OnClick = cbSetEnDisClick
            end
          end
          object gbSetTime: TGroupBox
            Left = 10
            Top = 12
            Width = 759
            Height = 109
            Caption = 'Time'
            TabOrder = 1
            object btSetTimeApply: TButton
              Left = 147
              Top = 23
              Width = 75
              Height = 25
              Caption = 'Apply'
              TabOrder = 0
              OnClick = btSetTimeApplyClick
            end
            object edtSetTime: TMaskEdit
              Left = 21
              Top = 25
              Width = 116
              Height = 21
              Alignment = taCenter
              EditMask = '00:00:00;1;_'
              MaxLength = 8
              TabOrder = 1
              Text = '00:00:00'
            end
          end
          object gbGuidanceCommand: TGroupBox
            Left = 10
            Top = 12
            Width = 759
            Height = 109
            Caption = 'Change Guidance Command'
            TabOrder = 6
            object rbRealistic: TRadioButton
              Left = 31
              Top = 24
              Width = 113
              Height = 17
              Caption = 'Realistic'
              TabOrder = 0
              OnClick = rbRealisticClick
            end
            object rbDirect: TRadioButton
              Left = 31
              Top = 47
              Width = 113
              Height = 17
              Caption = 'Direct'
              TabOrder = 1
              OnClick = rbDirectClick
            end
          end
          object gbDistance: TGroupBox
            Left = 10
            Top = 12
            Width = 759
            Height = 109
            Caption = 'Distance'
            TabOrder = 5
            object edtDistance: TEdit
              Left = 14
              Top = 26
              Width = 121
              Height = 21
              TabOrder = 0
            end
            object btSetDistanceApply: TButton
              Left = 150
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Apply'
              TabOrder = 1
              OnClick = btSetDistanceApplyClick
            end
          end
        end
        object tvSettings: TTreeView
          Left = 4
          Top = 4
          Width = 497
          Height = 3267
          Align = alClient
          AutoExpand = True
          Indent = 19
          TabOrder = 1
          OnClick = tvSettingsClick
          Items.NodeData = {
            0301000000380000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0007000000010D470061006D0065002000530065007400740069006E00670073
            002E0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000060000
            00010845006E00740069007400690065007300900000000000000001000000FF
            FFFFFFFFFFFFFF00000000000000000000000001394100750074006F006D0061
            0074006900630061006C006C0079002000720065006D006F0076006500200070
            006C006100740066006F0072006D0020006C0065006100760069006E00670020
            00670061006D0065002000610072006500610020005B00440069007300610062
            006C0065005D00560000000000000002000000FFFFFFFFFFFFFFFF0000000000
            00000000000000011C500072006F0062006100620069006C0069007400790020
            006F00660020006B0069006C006C0020005B004E006F0072006D0061006C005D
            00720000000000000003000000FFFFFFFFFFFFFFFF0000000000000000000000
            00012A5200650070006F00720074002000610069007200200062007500620062
            006C0065002000720065006D006F00760061006C0020006500760065006E0074
            00730020005B00440069007300610062006C0065005D00680000000000000004
            000000FFFFFFFFFFFFFFFF00000000000000000000000001255200650070006F
            00720074002000630068006100660066002000720065006D006F00760061006C
            0020006500760065006E007400730020005B00440069007300610062006C0065
            005D006E0000000000000005000000FFFFFFFFFFFFFFFF000000000000000000
            00000001285200650070006F0072007400200073006F006E006F00620075006F
            0079002000720065006D006F00760061006C0020006500760065006E00740073
            0020005B00440069007300610062006C0065005D006C00000000000000060000
            00FFFFFFFFFFFFFFFF0000000000000000000000000127540069006D00650020
            0074006F002000720065006D006F007600650020007300750072006600610063
            006500200077007200650063006B0020005B00300030003A00300030003A0030
            0030005D002E0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            00060000000108470075006900640061006E0063006500700000000000000007
            000000FFFFFFFFFFFFFFFF000000000000000000000000012941006900720063
            007200610066007400200063006F006C006C006900730069006F006E00200077
            0069007400680020007400650072007200610069006E0020005B004400690073
            00610062006C0065005D00580000000000000008000000FFFFFFFFFFFFFFFF00
            0000000000000000000000011D43006F006100730074006C0069006E00650020
            0063006F006C006C006900730069006F006E00730020005B0045006E00610062
            006C0065005D00340000000000000000000000FFFFFFFFFFFFFFFF0000000000
            00000002000000010B43006F006E00740072006F006C006C0065007200730058
            0000000000000009000000FFFFFFFFFFFFFFFF00000000000000000000000001
            1D470075006900640061006E0063006500200063006F006D006D0061006E0064
            00730020005B005200650061006C00690073007400690063005D006200000000
            0000000A000000FFFFFFFFFFFFFFFF0000000000000000000000000122530069
            006D0070006C00690066006900650064002000730065006E0073006F00720020
            0063006800650063006B00730020005B00440069007300610062006C0065005D
            00400000000000000000000000FFFFFFFFFFFFFFFF0000000000000000020000
            0001114C00610075006E006300680069006E0067002F004C0061006E00640069
            006E0067007E000000000000000B000000FFFFFFFFFFFFFFFF00000000000000
            00000000000130530074007500640065006E0074002000630061006E0020006C
            00610075006E00630068002000660069007800650064002000770069006E0067
            0020006100690072006300720061006600740020005B00440069007300610062
            006C0065005D0072000000000000000C000000FFFFFFFFFFFFFFFF0000000000
            00000000000000012A530074007500640065006E00740020004C00610075006E
            00630068002F004C0061006E0064002000720065007300740072006900630074
            0069006F006E00730020005B00440069007300610062006C0065005D006A0000
            00000000000D000000FFFFFFFFFFFFFFFF000000000000000000000000012654
            006900640061006C002000730074007200650061006D00200065006600660065
            0063007400730020006F006E002000730068006900700020005B004400690073
            00610062006C0065005D0062000000000000000E000000FFFFFFFFFFFFFFFF00
            00000000000000000000000122570069006E0064002000650066006600650063
            007400730020006F006E0020006100690072006300720061006600740020005B
            00440069007300610062006C0065005D00300000000000000000000000FFFFFF
            FFFFFFFFFF000000000000000002000000010949006E00740065007200660061
            0063006500480000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0002000000011543006F006E00740072006F006C006C006500720020004D006F
            006E00690074006F00720069006E00670066000000000000000F000000FFFFFF
            FFFFFFFFFF00000000000000000000000001245200650063006F00720064002F
            007200650070006C0061007900200069006E0074006500720066006500720065
            006E006300650020005B00440069007300610062006C0065005D004C00000000
            00000010000000FFFFFFFFFFFFFFFF000000000000000000000000011753006F
            0075006E0064002000650066006600650063007400730020005B004400690073
            00610062006C0065005D004A0000000000000000000000FFFFFFFFFFFFFFFF00
            0000000000000001000000011649006E0074006500720066006500720065006E
            006300650020005200650063006F007200640069006E0067004C000000000000
            0011000000FFFFFFFFFFFFFFFF000000000000000000000000011753006F0075
            006E0064002000650066006600650063007400730020005B0044006900730061
            0062006C0065005D002C0000000000000000000000FFFFFFFFFFFFFFFF000000
            0000000000050000000107530065006E0073006F00720073007A000000000000
            0012000000FFFFFFFFFFFFFFFF000000000000000000000000012E4100750074
            006F006D0061007400690063002000730065006E0073006F0072002000690064
            0065006E00740069007400790020006100730073006500730065006D0065006E
            00740020005B00440069007300610062006C0065005D00660000000000000013
            000000FFFFFFFFFFFFFFFF000000000000000000000000012443006800610066
            006600200061007400740065006E0075006100740069006F006E0020006F006E
            0020007200610064006100720020005B00440069007300610062006C0065005D
            004C0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000060000
            000117440061007400610020006C0069006E006B002000730065006E0073006F
            00720020006D006F00640065006C007300820000000000000014000000FFFFFF
            FFFFFFFFFF00000000000000000000000001324100750074006F006D00610074
            0069006300200073006F006E0061007200200074006100720067006500740020
            0064006F006D00610069006E002000610073007300690067006E006D0065006E
            00740020005B00440069007300610062006C0065005D00320000000000000000
            000000FFFFFFFFFFFFFFFF000000000000000005000000010A44006100740061
            006C0069006E006B0020003100360000000000000015000000FFFFFFFFFFFFFF
            FF000000000000000000000000010C45004F0020005B00440069007300610062
            006C0065005D00380000000000000016000000FFFFFFFFFFFFFFFF0000000000
            00000000000000010D450053004D0020005B00440069007300610062006C0065
            005D00380000000000000017000000FFFFFFFFFFFFFFFF000000000000000000
            000000010D49004600460020005B00440069007300610062006C0065005D003C
            0000000000000018000000FFFFFFFFFFFFFFFF00000000000000000000000001
            0F5200610064006100720020005B00440069007300610062006C0065005D003C
            0000000000000019000000FFFFFFFFFFFFFFFF00000000000000000000000001
            0F53006F006E006100720020005B00440069007300610062006C0065005D0032
            0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000500000001
            0A44006100740061006C0069006E006B002000320036000000000000001A0000
            00FFFFFFFFFFFFFFFF000000000000000000000000010C45004F0020005B0044
            0069007300610062006C0065005D0038000000000000001B000000FFFFFFFFFF
            FFFFFF000000000000000000000000010D450053004D0020005B004400690073
            00610062006C0065005D0038000000000000001C000000FFFFFFFFFFFFFFFF00
            0000000000000000000000010D49004600460020005B00440069007300610062
            006C0065005D003C000000000000001D000000FFFFFFFFFFFFFFFF0000000000
            00000000000000010F5200610064006100720020005B00440069007300610062
            006C0065005D003C000000000000001E000000FFFFFFFFFFFFFFFF0000000000
            00000000000000010F53006F006E006100720020005B00440069007300610062
            006C0065005D00320000000000000000000000FFFFFFFFFFFFFFFF0000000000
            00000005000000010A44006100740061006C0069006E006B0020003300360000
            00000000001F000000FFFFFFFFFFFFFFFF000000000000000000000000010C45
            004F0020005B00440069007300610062006C0065005D00380000000000000020
            000000FFFFFFFFFFFFFFFF000000000000000000000000010D450053004D0020
            005B00440069007300610062006C0065005D00380000000000000021000000FF
            FFFFFFFFFFFFFF000000000000000000000000010D49004600460020005B0044
            0069007300610062006C0065005D003C0000000000000022000000FFFFFFFFFF
            FFFFFF000000000000000000000000010F5200610064006100720020005B0044
            0069007300610062006C0065005D003C0000000000000023000000FFFFFFFFFF
            FFFFFF000000000000000000000000010F53006F006E006100720020005B0044
            0069007300610062006C0065005D00460000000000000024000000FFFFFFFFFF
            FFFFFF00000000000000000000000001144900460046002000660069006C0074
            006500720020005B00440069007300610062006C0065005D006E000000000000
            0025000000FFFFFFFFFFFFFFFF00000000000000000000000001285600690073
            00750061006C0020007600690073006900620069006C00690074007900200064
            006500740065006300740069006F006E00200066006100630074006F00720020
            005B003900300025005D00540000000000000026000000FFFFFFFFFFFFFFFF00
            0000000000000000000000011B4C0061006E0064006D0061007300730020006F
            006300630075006C00740069006E00670020005B0045006E00610062006C0065
            005D00640000000000000027000000FFFFFFFFFFFFFFFF000000000000000000
            0000000123500072006F0063006500730073002000730065006E0073006F0072
            002000620069006E00640020007A006F006E006500730020005B004400690073
            00610062006C0065005D00380000000000000000000000FFFFFFFFFFFFFFFF00
            0000000000000001000000010D540065007800740020004D0065007300730061
            00670065007300440000000000000000000000FFFFFFFFFFFFFFFF0000000000
            0000000400000001135400720061006E0073006D0069007300730069006F006E
            002000640065006C006100790073003E0000000000000028000000FFFFFFFFFF
            FFFFFF000000000000000000000000011046004C0041005300480020005B0030
            0030003A00300030003A00300032005D003E0000000000000029000000FFFFFF
            FFFFFFFFFF000000000000000000000000011049004D004D004500440020005B
            00300030003A00300030003A00300033005D0044000000000000002A000000FF
            FFFFFFFFFFFFFF00000000000000000000000001135000520049004F00520049
            005400590020005B00300030003A00300030003A00300034005D004200000000
            0000002B000000FFFFFFFFFFFFFFFF000000000000000000000000011252004F
            005500540049004E00450020005B00300030003A00300030003A00300035005D
            002A0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000030000
            00010654007200610063006B007300A0000000000000002C000000FFFFFFFFFF
            FFFFFF00000000000000000000000001414300750062006900630061006C0020
            00670072006F0075007000200063006C00750074007400650072002000720065
            00640075006300740069006F006E0020006D0069006E0069006D0075006D0020
            0064006900730070006C006100790020007300630061006C00650020005B0031
            00350030002E003000300020006E006D005D00560000000000000000000000FF
            FFFFFFFFFFFFFF000000000000000005000000011C540069006D006500200074
            006F00200064006900730070006C006100790020006C006F0073007400200063
            006F006E00740061006300740054000000000000002D000000FFFFFFFFFFFFFF
            FF000000000000000000000000011B410063006F007500730074006900630020
            00620065006100720069006E00670020005B00300030003A00300030003A0033
            0030005D003A000000000000002E000000FFFFFFFFFFFFFFFF00000000000000
            0000000000010E41006900720020005B00300030003A00300030003A00330030
            005D004A000000000000002F000000FFFFFFFFFFFFFFFF000000000000000000
            0000000116450053004D002000620065006100720069006E00670020005B0030
            0030003A00300030003A00330030005D00480000000000000030000000FFFFFF
            FFFFFFFFFF000000000000000000000000011553007500620073007500720066
            0061006300650020005B00300030003A00300030003A00330030005D004C0000
            000000000031000000FFFFFFFFFFFFFFFF000000000000000000000000011753
            007500720066006100630065002F004C0061006E00640020005B00300030003A
            00300030003A00330030005D00420000000000000000000000FFFFFFFFFFFFFF
            FF0000000000000000050000000112540069006D006500200074006F00200064
            0072006F007000200074007200610063006B00540000000000000032000000FF
            FFFFFFFFFFFFFF000000000000000000000000011B410063006F007500730074
            00690063002000620065006100720069006E00670020005B00300030003A0030
            0031003A00300030005D003A0000000000000033000000FFFFFFFFFFFFFFFF00
            0000000000000000000000010E41006900720020005B00300030003A00300031
            003A00300030005D004A0000000000000034000000FFFFFFFFFFFFFFFF000000
            0000000000000000000116450053004D002000620065006100720069006E0067
            0020005B00300030003A00300031003A00300030005D00480000000000000035
            000000FFFFFFFFFFFFFFFF000000000000000000000000011553007500620073
            0075007200660061006300650020005B00300030003A00300031003A00300030
            005D00420000000000000036000000FFFFFFFFFFFFFFFF000000000000000000
            0000000112530075007200660061006300650020005B00300030003A00300031
            003A00300030005D002A0000000000000000000000FFFFFFFFFFFFFFFF000000
            000000000002000000010657006500610070006F006E003E0000000000000000
            000000FFFFFFFFFFFFFFFF0000000000000000030000000110500072006F0063
            00650064007500720061006C0020006D006F006400650020006A000000000000
            0037000000FFFFFFFFFFFFFFFF0000000000000000000000000126410063006F
            0075007300740069006300200074006F0072007000650064006F002000640065
            0063006F00790020007300650074007500700020005B00440069007300610062
            006C0065005D00760000000000000038000000FFFFFFFFFFFFFFFF0000000000
            00000000000000012C41006E00740069002D0073007500620073007500720066
            0061006300650020007700610072006600610072006500200065006E00670061
            00670065006D0065006E00740020005B00440069007300610062006C0065005D
            00700000000000000039000000FFFFFFFFFFFFFFFF0000000000000000000000
            00012941006E00740069002D0073007500720066006100630065002000770061
            0072006600610072006500200065006E0067006100670065006D0065006E0074
            0020005B00440069007300610062006C0065005D0064000000000000003A0000
            00FFFFFFFFFFFFFFFF0000000000000000000000000123500072006F00630065
            0073007300200077006500610070006F006E00200062006C0069006E00640020
            007A006F006E006500730020005B0045006E00610062006C0065005D00}
          ExplicitWidth = 965
        end
      end
      object Panel43: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl43Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel43: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel43: TLabel
            Left = 371
            Top = 4
            Width = 118
            Height = 27
            Caption = 'SETTINGS'
          end
        end
        object pnl43Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
    end
    object gbWeaponEngagementsSUmmary: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 2
      ExplicitWidth = 975
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl5Title: TPanel
          Left = 1
          Top = 41
          Width = 503
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 971
          object imgPanel5: TImage
            Left = 0
            Top = 0
            Width = 503
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel5: TLabel
            Left = 371
            Top = 4
            Width = 430
            Height = 27
            Caption = ' WEAPON ENGAGEMENTS SUMMARY'
          end
        end
        object pnl5top: TPanel
          Left = 1
          Top = 1
          Width = 503
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 971
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object lvWeaponEngagement: TListView
          Left = 4
          Top = 4
          Width = 497
          Height = 3426
          Align = alClient
          Columns = <
            item
              Caption = 'Time'
              Width = 150
            end
            item
              Caption = 'Launching Platform'
              Width = 150
            end
            item
              Caption = 'Weapon Class'
              Width = 100
            end
            item
              Caption = 'Target Platform'
              Width = 80
            end
            item
              Caption = 'Engagement '
            end>
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          ExplicitWidth = 965
        end
      end
    end
    object gbCommunicationsChannelMapping: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 8
      ExplicitWidth = 975
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl10Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel10: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel10: TLabel
            Left = 371
            Top = 4
            Width = 449
            Height = 27
            Caption = 'COMMUNICATIONS CHANNEL MAPPING'
          end
        end
        object pnl10Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel35: TPanel
        Left = 1
        Top = 82
        Width = 472
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Panel57: TPanel
          Left = 4
          Top = 60
          Width = 464
          Height = 3370
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          Caption = 'Panel57'
          TabOrder = 0
          object sgAvailableChannel: TStringGrid
            AlignWithMargins = True
            Left = 13
            Top = 13
            Width = 438
            Height = 3344
            Align = alClient
            ColCount = 3
            DrawingStyle = gdsGradient
            FixedCols = 0
            TabOrder = 0
            ColWidths = (
              108
              72
              129)
          end
          object LbIn: TListBox
            Left = 10
            Top = 10
            Width = 444
            Height = 3350
            Align = alClient
            ItemHeight = 13
            MultiSelect = True
            TabOrder = 2
          end
          object LbRoomIn: TListBox
            Left = 10
            Top = 10
            Width = 444
            Height = 3350
            Align = alClient
            ItemHeight = 13
            MultiSelect = True
            TabOrder = 3
          end
          object lvIn: TListView
            Left = 10
            Top = 10
            Width = 444
            Height = 3350
            Align = alClient
            Columns = <
              item
                Caption = 'Channel'
                MaxWidth = 205
                Width = 70
              end
              item
                Caption = 'Channel Name'
                MaxWidth = 205
                Width = 157
              end
              item
                Caption = 'Channel Code'
                Width = 80
              end>
            MultiSelect = True
            RowSelect = True
            SortType = stBoth
            TabOrder = 1
            ViewStyle = vsReport
            OnCompare = lvInCompare
          end
        end
        object Panel58: TPanel
          Left = 4
          Top = 4
          Width = 464
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label129: TLabel
            Left = 6
            Top = 11
            Width = 33
            Height = 13
            Caption = 'Group:'
          end
          object SpeedButton13: TSpeedButton
            Left = 230
            Top = 8
            Width = 25
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
            OnClick = SpeedButton13Click
          end
          object edtGroupName: TEdit
            Left = 45
            Top = 9
            Width = 179
            Height = 21
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel59: TPanel
          Left = 4
          Top = 37
          Width = 464
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label130: TLabel
            Left = 6
            Top = 6
            Width = 95
            Height = 13
            Caption = 'Available platforms:'
          end
        end
        object Panel34: TPanel
          Left = 4
          Top = 60
          Width = 464
          Height = 3370
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          Caption = 'Panel34'
          TabOrder = 3
          object lvPlatformsGroup: TListView
            Left = 10
            Top = 10
            Width = 444
            Height = 3350
            Align = alClient
            Columns = <
              item
                Caption = 'Platform Name'
                MaxWidth = 315
                Width = 314
              end>
            MultiSelect = True
            RowSelect = True
            SortType = stBoth
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
      end
      object Panel36: TPanel
        Left = 473
        Top = 82
        Width = 90
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        Visible = False
        object Button25: TButton
          Left = 6
          Top = 124
          Width = 75
          Height = 25
          Caption = 'Add >'
          TabOrder = 0
          OnClick = Button25Click
        end
        object Button26: TButton
          Left = 6
          Top = 156
          Width = 75
          Height = 25
          Caption = '< Remove'
          TabOrder = 1
          OnClick = Button26Click
        end
      end
      object Panel37: TPanel
        Left = 563
        Top = 82
        Width = 406
        Height = 3434
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 3
        object Panel60: TPanel
          Left = 4
          Top = 4
          Width = 398
          Height = 58
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label131: TLabel
            Left = 6
            Top = 38
            Width = 133
            Height = 13
            Caption = 'Available Mapped channels:'
          end
        end
        object Panel62: TPanel
          Left = 4
          Top = 85
          Width = 398
          Height = 3345
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 1
          object sgMappedChannel: TStringGrid
            Left = 10
            Top = 10
            Width = 378
            Height = 3325
            Align = alClient
            ColCount = 4
            DrawingStyle = gdsGradient
            FixedCols = 0
            TabOrder = 0
            ColWidths = (
              69
              94
              64
              64)
          end
          object LbOut: TListBox
            Left = 10
            Top = 10
            Width = 378
            Height = 3325
            Align = alClient
            ItemHeight = 13
            MultiSelect = True
            TabOrder = 2
          end
          object LbRoomOut: TListBox
            Left = 10
            Top = 10
            Width = 378
            Height = 3325
            Align = alClient
            ItemHeight = 13
            MultiSelect = True
            TabOrder = 3
          end
          object lvOut: TListView
            Left = 10
            Top = 10
            Width = 378
            Height = 3325
            Align = alClient
            Columns = <
              item
                Caption = 'Channel'
                Width = 70
              end
              item
                Caption = 'Channel Name'
                Width = 200
              end
              item
                Caption = 'Channel Code'
                Width = 80
              end>
            MultiSelect = True
            RowSelect = True
            SortType = stBoth
            TabOrder = 1
            ViewStyle = vsReport
            OnCompare = lvOutCompare
          end
        end
        object Panel61: TPanel
          Left = 4
          Top = 62
          Width = 398
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 2
          Visible = False
          object Label132: TLabel
            Left = 14
            Top = 6
            Width = 50
            Height = 13
            Caption = 'Copy from'
          end
          object SpeedButton14: TSpeedButton
            Left = 70
            Top = 1
            Width = 23
            Height = 22
            OnClick = SpeedButton14Click
          end
          object SpeedButton29: TSpeedButton
            Left = 99
            Top = 1
            Width = 23
            Height = 22
          end
          object SpeedButton17: TSpeedButton
            Left = 420
            Top = 1
            Width = 23
            Height = 22
          end
          object BitBtn1: TBitBtn
            Left = 557
            Top = 25
            Width = 25
            Height = 25
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 526
            Top = 25
            Width = 25
            Height = 25
            TabOrder = 1
          end
        end
      end
    end
    object gbSurfaceToAir: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 4
      ExplicitWidth = 975
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl4Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel4: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel4: TLabel
            Left = 371
            Top = 4
            Width = 489
            Height = 27
            Caption = 'SURFACE-TO-AIR MISSILE ENGAGEMENTS'
          end
        end
        object pnl4Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel27: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object Panel89: TPanel
          Left = 4
          Top = 2954
          Width = 497
          Height = 476
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 965
          DesignSize = (
            497
            476)
          object btAbort: TButton
            Left = 362
            Top = 0
            Width = 140
            Height = 50
            Anchors = [akTop, akRight]
            Caption = 'Abort'
            TabOrder = 0
            ExplicitLeft = 830
          end
        end
        object sgSurfacetoAir: TStringGrid
          Left = 4
          Top = 4
          Width = 497
          Height = 2950
          Align = alClient
          ColCount = 8
          DefaultColWidth = 150
          DrawingStyle = gdsGradient
          FixedCols = 0
          RowCount = 20
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          TabOrder = 1
          ExplicitWidth = 965
        end
      end
    end
    object gbSurfaceToSurface: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      TabOrder = 5
      ExplicitWidth = 975
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 973
        object pnl7Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 963
          object imgPanel7: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
          object lblImgPanel7: TLabel
            Left = 371
            Top = 4
            Width = 563
            Height = 27
            Caption = 'SURFACE-TO-SURFACE MISSILE ENGAGEMENTS'
          end
        end
        object pnl7Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 963
        end
      end
      object Panel26: TPanel
        Left = 1
        Top = 82
        Width = 505
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        ExplicitWidth = 973
        object Panel87: TPanel
          Left = 4
          Top = 2954
          Width = 497
          Height = 476
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 965
          DesignSize = (
            497
            476)
          object btnAbortSurfaceToSurface: TButton
            AlignWithMargins = True
            Left = 362
            Top = 1
            Width = 140
            Height = 50
            Margins.Right = 10
            Anchors = [akTop, akRight]
            Caption = 'Abort'
            Enabled = False
            TabOrder = 0
            OnClick = btnAbortSurfaceToSurfaceClick
            ExplicitLeft = 830
          end
          object btnLaunch: TButton
            Left = 684
            Top = 2
            Width = 137
            Height = 49
            Caption = 'Launch'
            Enabled = False
            TabOrder = 1
            OnClick = btnLaunchClick
          end
        end
        object sgSurfacetoSurface: TStringGrid
          Left = 4
          Top = 4
          Width = 497
          Height = 2950
          Align = alClient
          ColCount = 8
          DefaultColWidth = 150
          DrawingStyle = gdsGradient
          FixedCols = 0
          RowCount = 20
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          TabOrder = 1
          OnSelectCell = sgSurfacetoSurfaceSelectCell
          ExplicitWidth = 965
        end
      end
    end
    object gbPlatformStatus: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 3517
      Align = alClient
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 975
      object pnlPlatformLeft: TPanel
        Left = 1
        Top = 82
        Width = 202
        Height = 3434
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        ExplicitWidth = 670
        object pnlPlatforms: TPanel
          Left = 4
          Top = 4
          Width = 194
          Height = 1137
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 4
          DockSite = True
          TabOrder = 0
          ExplicitWidth = 662
          object Label75: TLabel
            Left = 4
            Top = 4
            Width = 186
            Height = 20
            Align = alTop
            AutoSize = False
            Caption = '            Platforms :'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 42495
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            StyleElements = [seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 658
          end
          object Image1: TImage
            Left = 5
            Top = 8
            Width = 30
            Height = 8
          end
          object lvPlatforms: TListView
            Left = 4
            Top = 24
            Width = 135
            Height = 1029
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Columns = <
              item
                Caption = 'Class'
                Width = 150
              end
              item
                Caption = 'Name'
                Width = 150
              end
              item
                Caption = 'Track'
                Width = 100
              end
              item
                Caption = 'Force'
                Width = 80
              end
              item
              end>
            HideSelection = False
            HotTrack = True
            ReadOnly = True
            RowSelect = True
            PopupMenu = pmPlatformLV
            StateImages = ImageList1
            TabOrder = 0
            ViewStyle = vsReport
            OnMouseDown = lvPlatformsMouseDown
            OnSelectItem = lvPlatformsSelectItem
            ExplicitWidth = 603
          end
          object Panel13: TPanel
            Left = 4
            Top = 1053
            Width = 186
            Height = 80
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 654
            object imgbtSelectHookedPaltform: TImage
              Left = 79
              Top = 12
              Width = 156
              Height = 57
              Picture.Data = {
                07544269746D61706A680000424D6A6800000000000036000000280000009C00
                000039000000010018000000000034680000120B0000120B0000000000000000
                00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D74747474747474747474747474747474
                74747474747474747474747474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                7474747474747474747474747474747474747474747474740D0D0D0D0D0D0D0D
                0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D747474
                0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D
                7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D
                0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D3333337474740D0D0D1919196565657474747474745A5A5A6060603B3B3B
                0D0D0D0D0D0D6565657474745454540D0D0D6060604848480D0D0D0D0D0D0D0D
                0D4848486F6F6F7474747474744848480D0D0D0D0D0D4242426060600D0D0D0D
                0D0D0D0D0D5454544848480D0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D
                4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848
                485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3333337474740D0D0D48
                48486565651919190D0D0D4848487474743333330D0D0D2C2C2C6F6F6F191919
                0D0D0D0D0D0D6060604848480D0D0D0D0D0D3B3B3B6F6F6F3333330D0D0D3333
                336F6F6F4242420D0D0D4242426060600D0D0D0D0D0D0D0D0D5454544848480D
                0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D4848485454540D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D3333337474740D0D0D4242426A6A6A2C2C2C0D0D0D0D
                0D0D6A6A6A3333330D0D0D3333336A6A6A0D0D0D0D0D0D0D0D0D606060484848
                0D0D0D0D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D4848486060600D0D0D4242
                426060600D0D0D0D0D0D0D0D0D5454544848480D0D0D0D0D0D0D0D0D74747423
                23230D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3333
                337474740D0D0D0D0D0D4848486F6F6F7474747474747474743333330D0D0D33
                33336A6A6A0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D656565424242
                0D0D0D0D0D0D0D0D0D3333336A6A6A0D0D0D4242426060600D0D0D0D0D0D0D0D
                0D5454544848480D0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D48484854
                54540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D484848747474
                7474747474747474746060602C2C2C0D0D0D3333337474740D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D6A6A6A3333330D0D0D3333336A6A6A0D0D0D0D0D0D0D
                0D0D6060604848480D0D0D0D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D484848
                6060600D0D0D4242426565650D0D0D0D0D0D0D0D0D5454544E4E4E0D0D0D0D0D
                0D1919197474742C2C2C0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D4E4E4E
                6F6F6F1919193333337474740D0D0D1919197474743333330D0D0D2C2C2C7474
                741919190D0D0D3333336A6A6A0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D
                0D0D3B3B3B6F6F6F3333330D0D0D3333336F6F6F4242420D0D0D424242747474
                4242420D0D0D0D0D0D5454546F6F6F3333330D0D0D4848486A6A6A6565651919
                191919196565654848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D6565653B3B3B333333747474
                0D0D0D0D0D0D4242427474747474747474744848480D0D0D5454547474747474
                747474744848487474747474747474747474742323230D0D0D4848486F6F6F74
                74747474744848480D0D0D0D0D0D4848486060606565657474742323235A5A5A
                4848486565657474746F6F6F3333334242427474747474746565651919190D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D
                0D0D0D0D0D0D0D0D6565653B3B3B3333337474740D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3333336A6A6A0D0D0D0D0D0D0D0D0D6060
                604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D4E4E4E6F6F6F19
                19193333337474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D2323236565650D0D0D0D0D0D0D0D0D5A5A5A4848480D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848
                487474747474747474747474746565652C2C2C0D0D0D3333337474740D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D3B3B3B7474747474742323230D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D1919195A5A5A7474747474747474745A5A5A2323230D0D0D0D0D0D
                4848486F6F6F7474747474745454540D0D0D0D0D0D6060604848480D0D0D0D0D
                0D4848486F6F6F7474747474745454540D0D0D0D0D0D19191960606074747474
                74746565651919190D0D0D0D0D0D4E4E4E7474746A6A6A0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D2323237474740D0D
                0D0D0D0D0D0D0D5454547474747474746A6A6A3333330D0D0D0D0D0D0D0D0D54
                54547474747474746A6A6A3333330D0D0D0D0D0D6060604848480D0D0D0D0D0D
                6060606060601919192323236060607474747474746565653333330D0D0D0D0D
                0D4242426F6F6F7474746A6A6A4848486A6A6A0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D54545465656519
                19190D0D0D2323236565656060600D0D0D3333336A6A6A2C2C2C0D0D0D191919
                6565654848480D0D0D6060604848480D0D0D3333336A6A6A2C2C2C0D0D0D1919
                196565654848480D0D0D5454546565651919191919196565654E4E4E0D0D0D0D
                0D0D6F6F6F3333330D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D484848545454
                0D0D0D0D0D0D0D0D0D0D0D0D2323237474740D0D0D0D0D0D4E4E4E6565652323
                230D0D0D4848487474742323230D0D0D4E4E4E6565652323230D0D0D48484874
                74742323230D0D0D6060604848480D0D0D6060606060600D0D0D0D0D0D606060
                5454540D0D0D0D0D0D4242426F6F6F1919192323237474744242420D0D0D3333
                336F6F6F6565650D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D6F6F6F2C2C2C0D0D0D0D0D0D0D0D0D23232374
                74740D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D606060
                4848480D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6F6F
                6F2C2C2C0D0D0D0D0D0D3B3B3B6A6A6A0D0D0D0D0D0D7474742323230D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D
                2323237474740D0D0D0D0D0D6F6F6F2C2C2C0D0D0D0D0D0D0D0D0D5A5A5A4848
                480D0D0D6F6F6F2C2C2C0D0D0D0D0D0D0D0D0D5A5A5A4848480D0D0D60606048
                48485454546060600D0D0D0D0D0D2C2C2C6F6F6F0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D4848485A5A5A0D0D0D0D0D0D0D0D0D4848486060600D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3B3B3B6060600D0D0D60606074747474
                74747474747474747474746060600D0D0D6060604848480D0D0D606060747474
                7474747474747474747474746060600D0D0D7474742323230D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D2323237474740D0D0D191919
                7474742323230D0D0D0D0D0D0D0D0D4848485454541919197474742323230D0D
                0D0D0D0D0D0D0D4848485454540D0D0D6060606F6F6F6565651919190D0D0D0D
                0D0D3333337474747474747474747474747474747474743333334E4E4E484848
                0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848
                486060605A5A5A2323230D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D48484854
                54540D0D0D6060604848480D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D484848
                5454540D0D0D6F6F6F2C2C2C0D0D0D0D0D0D3B3B3B6A6A6A0D0D0D0D0D0D7474
                742323230D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D
                0D0D0D0D0D0D0D0D2323237474740D0D0D0D0D0D6F6F6F2C2C2C0D0D0D0D0D0D
                0D0D0D5A5A5A4848480D0D0D6F6F6F2C2C2C0D0D0D0D0D0D0D0D0D5A5A5A4848
                480D0D0D6060606565656565652323230D0D0D0D0D0D2C2C2C6F6F6F1919190D
                0D0D0D0D0D0D0D0D6F6F6F2323234848485A5A5A0D0D0D0D0D0D0D0D0D484848
                6060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D5454546565654848480D0D0D0D0D0D0D0D0D0D0D
                0D3333336F6F6F3333330D0D0D2C2C2C6A6A6A3333330D0D0D6060604848480D
                0D0D3333336F6F6F3333330D0D0D2C2C2C6A6A6A3333330D0D0D545454656565
                1919191919196565655454540D0D0D0D0D0D7474742323230D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D48484874747474747474747474747474747474747474
                74740D0D0D0D0D0D4E4E4E6565652323230D0D0D4848487474742323230D0D0D
                4E4E4E6565652323230D0D0D4848487474742323230D0D0D6060604848483333
                336F6F6F2C2C2C0D0D0D0D0D0D6060606060600D0D0D0D0D0D5454546060600D
                0D0D2323237474744242420D0D0D3333336F6F6F6060600D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D545454
                4E4E4E0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4242426F6F6F7474
                747474744848480D0D0D0D0D0D6060604848480D0D0D0D0D0D4242426F6F6F74
                74747474744848480D0D0D0D0D0D191919606060747474747474656565191919
                4242427474747474747474746060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848
                485454540D0D0D0D0D0D0D0D0D0D0D0D2323237474740D0D0D0D0D0D0D0D0D54
                54547474747474746A6A6A3333330D0D0D0D0D0D0D0D0D545454747474747474
                6A6A6A3333330D0D0D0D0D0D6060604848480D0D0D2C2C2C6F6F6F4848480D0D
                0D1919196060607474747474746565652323230D0D0D0D0D0D4242426F6F6F74
                74746A6A6A4E4E4E6060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6565654242420D0D0D0D0D0D0D0D0D
                3B3B3B6565650D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D6060604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D747474232323
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D
                0D0D0D0D2323237474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                6060604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4242426060600D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D4848486A6A6A2C2C2C0D0D0D2323236A6A6A4848480D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D6565652323230D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D2323237474740D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D54545474
                74747474747474744E4E4E0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D484848545454
                0D0D0D0D0D0D0D0D0D0D0D0D2323237474740D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D
                0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D
                0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D747474
                0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D
                7474747474747474747474747474747474747474747474747474747474740D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D74747474747474747474747474747474
                74747474747474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
              Stretch = True
              OnClick = btSelectHookedPlatformClick
              OnMouseEnter = imgbtSelectHookedPaltformMouseEnter
              OnMouseLeave = imgbtSelectHookedPaltformMouseLeave
            end
            object imgbtHookSelectedPlatform: TImage
              Left = 255
              Top = 12
              Width = 156
              Height = 57
              Picture.Data = {
                07544269746D61706A680000424D6A6800000000000036000000280000009C00
                000039000000010018000000000034680000120B0000120B0000000000000000
                00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D74747474747474747474747474747474
                74747474747474747474747474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                7474747474747474747474747474747474747474747474740D0D0D0D0D0D0D0D
                0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D747474
                0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D
                7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D
                0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D3333337474740D0D0D1919196565657474747474745A5A5A6060603B3B3B
                0D0D0D0D0D0D6565657474745454540D0D0D6060604848480D0D0D0D0D0D0D0D
                0D4848486F6F6F7474747474744848480D0D0D0D0D0D4242426060600D0D0D0D
                0D0D0D0D0D5454544848480D0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D
                4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848
                485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3333337474740D0D0D48
                48486565651919190D0D0D4848487474743333330D0D0D2C2C2C6F6F6F191919
                0D0D0D0D0D0D6060604848480D0D0D0D0D0D3B3B3B6F6F6F3333330D0D0D3333
                336F6F6F4242420D0D0D4242426060600D0D0D0D0D0D0D0D0D5454544848480D
                0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D4848485454540D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D3333337474740D0D0D4242426A6A6A2C2C2C0D0D0D0D
                0D0D6A6A6A3333330D0D0D3333336A6A6A0D0D0D0D0D0D0D0D0D606060484848
                0D0D0D0D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D4848486060600D0D0D4242
                426060600D0D0D0D0D0D0D0D0D5454544848480D0D0D0D0D0D0D0D0D74747423
                23230D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3333
                337474740D0D0D0D0D0D4848486F6F6F7474747474747474743333330D0D0D33
                33336A6A6A0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D656565424242
                0D0D0D0D0D0D0D0D0D3333336A6A6A0D0D0D4242426060600D0D0D0D0D0D0D0D
                0D5454544848480D0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D48484854
                54540D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D484848747474
                7474747474747474746060602C2C2C0D0D0D3333337474740D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D6A6A6A3333330D0D0D3333336A6A6A0D0D0D0D0D0D0D
                0D0D6060604848480D0D0D0D0D0D5A5A5A4848480D0D0D0D0D0D0D0D0D484848
                6060600D0D0D4242426565650D0D0D0D0D0D0D0D0D5454544E4E4E0D0D0D0D0D
                0D1919197474742C2C2C0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D4E4E4E
                6F6F6F1919193333337474740D0D0D1919197474743333330D0D0D2C2C2C7474
                741919190D0D0D3333336A6A6A0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D
                0D0D3B3B3B6F6F6F3333330D0D0D3333336F6F6F4242420D0D0D424242747474
                4242420D0D0D0D0D0D5454546F6F6F3333330D0D0D4848486A6A6A6565651919
                191919196565654848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D4848485454540D0D0D0D0D0D0D0D0D0D0D0D6565653B3B3B333333747474
                0D0D0D0D0D0D4242427474747474747474744848480D0D0D5454547474747474
                747474744848487474747474747474747474742323230D0D0D4848486F6F6F74
                74747474744848480D0D0D0D0D0D4848486060606565657474742323235A5A5A
                4848486565657474746F6F6F3333334242427474747474746565651919190D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D
                0D0D0D0D0D0D0D0D6565653B3B3B3333337474740D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D3333336A6A6A0D0D0D0D0D0D0D0D0D6060
                604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D4848485454540D0D0D0D0D0D0D0D0D4E4E4E6F6F6F19
                19193333337474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D2323236565650D0D0D0D0D0D0D0D0D5A5A5A4848480D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4848
                487474747474747474747474746565652C2C2C0D0D0D3333337474740D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D3B3B3B7474747474742323230D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D6060604242420D0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D
                0D0D0D2323236060607474747474746565652323230D0D0D0D0D0D2323236060
                607474747474746565652323230D0D0D0D0D0D6060604848480D0D0D0D0D0D60
                60606060601919190D0D0D0D0D0D0D0D0D0D0D0D2C2C2C656565747474747474
                7474744E4E4E0D0D0D0D0D0D0D0D0D4848486F6F6F7474747474745454540D0D
                0D0D0D0D6060604848480D0D0D0D0D0D4848486F6F6F7474747474745454540D
                0D0D0D0D0D1919196060607474747474746565651919190D0D0D0D0D0D4E4E4E
                7474746A6A6A0D0D0D2323236060607474747474746565653333330D0D0D0D0D
                0D4242426F6F6F7474746A6A6A4848486A6A6A0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604242420D
                0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D6565656060600D0D0D
                0D0D0D6060606A6A6A0D0D0D0D0D0D6565656060600D0D0D0D0D0D6060606A6A
                6A0D0D0D0D0D0D6060604848480D0D0D6060606060600D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D6A6A6A5454540D0D0D0D0D0D3333336A6A6A4848480D0D0D
                3333336A6A6A2C2C2C0D0D0D1919196565654848480D0D0D6060604848480D0D
                0D3333336A6A6A2C2C2C0D0D0D1919196565654848480D0D0D54545465656519
                19191919196565654E4E4E0D0D0D0D0D0D6F6F6F3333330D0D0D0D0D0D606060
                5454540D0D0D0D0D0D4242426F6F6F1919192323237474744242420D0D0D3333
                336F6F6F6565650D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D6060604242420D0D0D0D0D0D0D0D0D0D0D0D42
                42426060600D0D0D2C2C2C6F6F6F0D0D0D0D0D0D0D0D0D0D0D0D6F6F6F333333
                2C2C2C6F6F6F0D0D0D0D0D0D0D0D0D0D0D0D6F6F6F3333330D0D0D6060604848
                485454546060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D2C2C2C6F6F6F0D
                0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D5A5A5A4848480D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D6060604848480D0D0D5A5A5A4848480D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D6F6F6F2C2C2C0D0D0D0D0D0D3B3B3B6A6A6A0D
                0D0D0D0D0D7474742323230D0D0D2C2C2C6F6F6F0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D4848485A5A5A0D0D0D0D0D0D0D0D0D4848486060600D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D6060604242420D0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D3B3B3B6A
                6A6A0D0D0D0D0D0D0D0D0D0D0D0D6060604242423B3B3B6A6A6A0D0D0D0D0D0D
                0D0D0D0D0D0D6060604242420D0D0D6060606F6F6F6565651919190D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4E
                4E4E4848480D0D0D6060607474747474747474747474747474746060600D0D0D
                6060604848480D0D0D6060607474747474747474747474747474746060600D0D
                0D7474742323230D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474742323230D
                0D0D3333337474747474747474747474747474747474743333334E4E4E484848
                0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604242420D0D0D0D0D
                0D0D0D0D0D0D0D4242426060600D0D0D2C2C2C6F6F6F0D0D0D0D0D0D0D0D0D0D
                0D0D6F6F6F3333332C2C2C6F6F6F0D0D0D0D0D0D0D0D0D0D0D0D6F6F6F333333
                0D0D0D6060606565656565652323230D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D1919195454546565654E4E4E0D0D0D0D0D0D5A5A5A48
                48480D0D0D0D0D0D0D0D0D4848485454540D0D0D6060604848480D0D0D5A5A5A
                4848480D0D0D0D0D0D0D0D0D4848485454540D0D0D6F6F6F2C2C2C0D0D0D0D0D
                0D3B3B3B6A6A6A0D0D0D0D0D0D7474742323230D0D0D2C2C2C6F6F6F1919190D
                0D0D0D0D0D0D0D0D6F6F6F2323234848485A5A5A0D0D0D0D0D0D0D0D0D484848
                6060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D6060607474747474747474747474747474747474746060
                600D0D0D0D0D0D6565656060600D0D0D0D0D0D6060606A6A6A0D0D0D0D0D0D65
                65656060600D0D0D0D0D0D6060606A6A6A0D0D0D0D0D0D606060484848333333
                6F6F6F2C2C2C0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D2323236060605A5A
                5A3333330D0D0D0D0D0D0D0D0D0D0D0D3333336F6F6F3333330D0D0D2C2C2C6A
                6A6A3333330D0D0D6060604848480D0D0D3333336F6F6F3333330D0D0D2C2C2C
                6A6A6A3333330D0D0D5454546565651919191919196565655454540D0D0D0D0D
                0D7474742323230D0D0D0D0D0D6060606060600D0D0D0D0D0D5454546060600D
                0D0D2323237474744242420D0D0D3333336F6F6F6060600D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D606060
                4242420D0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D2323236060
                607474747474746565652323230D0D0D0D0D0D23232360606074747474747465
                65652323230D0D0D0D0D0D6060604848480D0D0D2C2C2C6F6F6F4848480D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D6A6A6A3B3B3B0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D4242426F6F6F7474747474744848480D0D0D0D0D0D60606048
                48480D0D0D0D0D0D4242426F6F6F7474747474744848480D0D0D0D0D0D191919
                6060607474747474746565651919194242427474747474747474746060600D0D
                0D1919196060607474747474746565652323230D0D0D0D0D0D4242426F6F6F74
                74746A6A6A4E4E4E6060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604242420D0D0D0D0D0D0D0D0D
                0D0D0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D60
                60604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D191919
                7474742323230D0D0D0D0D0D0D0D0D4E4E4E4E4E4E0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D7474742323230D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D4242426060600D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D6060604242420D0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060606565651919190D0D0D
                3333337474743333330D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D6060604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D656565
                2323230D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604242420D
                0D0D0D0D0D0D0D0D0D0D0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D6060604848480D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D2323236060607474747474746F6F6F4242420D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D6060604848480D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D4242426060600D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D
                0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D
                0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D747474
                0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D7474740D0D0D0D0D0D0D0D0D0D0D0D
                7474747474747474747474747474747474747474747474747474747474740D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D74747474747474747474747474747474
                74747474747474740D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
              Stretch = True
              OnClick = btHookSelectedPlatformClick
              OnMouseEnter = imgbtHookSelectedPlatformMouseEnter
              OnMouseLeave = imgbtHookSelectedPlatformMouseLeave
            end
            object imgPanel13: TImage
              Left = 0
              Top = 0
              Width = 186
              Height = 80
              Align = alClient
              Stretch = True
              ExplicitWidth = 30
            end
            object btSelectHookedPlatform: TButton
              Left = 356
              Top = 28
              Width = 123
              Height = 34
              Caption = 'Select Hooked Platform'
              TabOrder = 0
              Visible = False
              OnClick = btSelectHookedPlatformClick
            end
            object btHookSelectedPlatform: TButton
              Left = 479
              Top = 28
              Width = 131
              Height = 34
              Caption = 'Hook Selected Platform'
              TabOrder = 1
              Visible = False
              OnClick = btHookSelectedPlatformClick
            end
          end
          object pnlPlatformR: TPanel
            Left = 139
            Top = 24
            Width = 51
            Height = 1029
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 607
          end
        end
        object pnlPlatEmbarked: TPanel
          Left = 4
          Top = 1141
          Width = 194
          Height = 2289
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 1
          ExplicitWidth = 662
          object Label79: TLabel
            Left = 4
            Top = 4
            Width = 186
            Height = 19
            Align = alClient
            AutoSize = False
            Caption = '            Embarked platforms:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 42495
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            StyleElements = [seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 658
            ExplicitHeight = 23
          end
          object Image2: TImage
            Left = 5
            Top = 8
            Width = 30
            Height = 8
          end
          object tvEmbarkedPlatforms: TTreeView
            Left = 4
            Top = 17
            Width = 186
            Height = 2241
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            DoubleBuffered = True
            Images = ImageList2
            Indent = 19
            ParentDoubleBuffered = False
            ReadOnly = True
            StateImages = ImageList2
            TabOrder = 0
            OnEdited = tvEmbarkedPlatformsEdited
            OnMouseDown = tvEmbarkedPlatformsMouseDown
            ExplicitWidth = 654
          end
          object edtEmbarkQuantity: TEdit
            Left = 4
            Top = -4
            Width = 186
            Height = 21
            Align = alBottom
            Color = clSilver
            TabOrder = 1
            Visible = False
            OnKeyPress = edtEmbarkQuantityKeyPress
            ExplicitWidth = 654
          end
          object pnlEmbarkedBottom: TPanel
            Left = 4
            Top = 2258
            Width = 186
            Height = 27
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitWidth = 654
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 81
        Align = alTop
        BorderWidth = 4
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 973
        object pnl2Top: TPanel
          Left = 5
          Top = 5
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 963
        end
        object pnl2Title: TPanel
          Left = 5
          Top = 45
          Width = 495
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Caption = ' Platform Status'
          Color = clBtnShadow
          ParentBackground = False
          TabOrder = 1
          ExplicitWidth = 963
          object lblImgPanel2: TLabel
            Left = 371
            Top = 4
            Width = 221
            Height = 27
            Caption = 'PLATFORM STATUS'
          end
          object imgPanel2: TImage
            Left = 0
            Top = 0
            Width = 495
            Height = 40
            Align = alClient
            Stretch = True
            ExplicitWidth = 963
            ExplicitHeight = 35
          end
        end
      end
      object pnlPlatformRight: TPanel
        Left = 203
        Top = 82
        Width = 303
        Height = 3434
        Align = alRight
        BevelOuter = bvNone
        BorderWidth = 4
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = 671
        object pnlPlatCounterMeasure: TPanel
          Left = 4
          Top = 2855
          Width = 295
          Height = 300
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 2
          object Label78: TLabel
            Left = 4
            Top = 4
            Width = 287
            Height = 20
            Align = alTop
            AutoSize = False
            Caption = '            Countermeasures:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 42495
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            StyleElements = [seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 291
          end
          object Image4: TImage
            Left = 5
            Top = 8
            Width = 30
            Height = 8
          end
          object tvCountermeasures: TTreeView
            Left = 4
            Top = 24
            Width = 287
            Height = 272
            Align = alClient
            Images = ilCountermeasure
            Indent = 19
            TabOrder = 0
            OnMouseDown = tvCountermeasuresMouseDown
          end
        end
        object pnlPlatSystemState: TPanel
          Left = 4
          Top = 3155
          Width = 295
          Height = 275
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 3
          object Label80: TLabel
            Left = 4
            Top = 4
            Width = 287
            Height = 20
            Align = alTop
            AutoSize = False
            Caption = '            System State:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 42495
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            StyleElements = [seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 291
          end
          object Image5: TImage
            Left = 5
            Top = 8
            Width = 30
            Height = 8
          end
          object lvSystemState: TListView
            Left = 4
            Top = 24
            Width = 287
            Height = 199
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            Columns = <
              item
                Caption = 'Name'
                Width = 196
              end
              item
                Caption = 'Status'
                Width = 131
              end>
            Items.ItemData = {
              05C30100000700000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF000000
              000E4F0076006500720061006C006C002000440061006D006100670065000230
              0025000000000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF0000000004
              480065006C006D000B4F007000650072006100740069006F006E0061006C0000
              00000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF000000000A50007200
              6F00700075006C00730069006F006E00033200390025000000000000000000FF
              FFFFFFFFFFFFFF01000000FFFFFFFF0000000005530070006500650064000431
              003000300025000000000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF00
              0000000E4600750065006C002000520065006D00610069006E0069006E006700
              0431003000300025000000000000000000FFFFFFFFFFFFFFFF01000000FFFFFF
              FF000000000C4600750065006C0020004C00650061006B00610067006500024E
              006F000000000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF000000000E
              43006F006D006D0075006E00690063006100740069006F006E0073000B4F0070
              00650072006100740069006F006E0061006C0000000000FFFFFFFFFFFFFFFFFF
              FFFFFFFFFF}
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnMouseDown = lvSystemStateMouseDown
          end
          object edtState: TEdit
            Left = 4
            Top = 223
            Width = 287
            Height = 21
            Align = alBottom
            TabOrder = 1
            Visible = False
            OnKeyPress = edtStateKeyPress
          end
          object pnlpnlPlatSystemStateBottom: TPanel
            Left = 4
            Top = 244
            Width = 287
            Height = 27
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
        object pnlPlatSensor: TPanel
          Left = 4
          Top = 4
          Width = 295
          Height = 2509
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 0
          object Label76: TLabel
            Left = 4
            Top = 4
            Width = 287
            Height = 20
            Align = alTop
            AutoSize = False
            Caption = '            Sensors:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 42495
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            StyleElements = [seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 291
          end
          object Image3: TImage
            Left = 5
            Top = 8
            Width = 30
            Height = 8
          end
          object lvSensors: TListView
            Left = 4
            Top = 24
            Width = 287
            Height = 2481
            Align = alClient
            Columns = <
              item
                Caption = 'Name'
              end
              item
                Caption = 'Status'
              end>
            RowSelect = True
            StateImages = ilSensor
            TabOrder = 0
            ViewStyle = vsReport
            OnMouseDown = lvSensorsMouseDown
          end
        end
        object pnlPlatWeapon: TPanel
          Left = 4
          Top = 2513
          Width = 295
          Height = 342
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 1
          object Label77: TLabel
            Left = 4
            Top = 4
            Width = 287
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = '            Weapons:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 42495
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            StyleElements = [seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 291
          end
          object Image6: TImage
            Left = 5
            Top = 8
            Width = 30
            Height = 8
          end
          object edtWeaponQuantity: TEdit
            Left = 4
            Top = 290
            Width = 287
            Height = 21
            Align = alBottom
            Color = clSilver
            TabOrder = 1
            Visible = False
            OnKeyPress = edtWeaponQuantityKeyPress
          end
          object tvWeapons: TTreeView
            Left = 4
            Top = 26
            Width = 287
            Height = 264
            Align = alClient
            Images = ilWeapon
            Indent = 19
            StateImages = ilWeapon
            TabOrder = 0
            OnEdited = tvWeaponsEdited
            OnKeyPress = tvWeaponsKeyPress
            OnMouseDown = tvWeaponsMouseDown
          end
          object pnlPlatWeaponBottom: TPanel
            Left = 4
            Top = 311
            Width = 287
            Height = 27
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
          end
        end
      end
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 2
    Width = 813
    Height = 3517
    Align = alLeft
    TabOrder = 3
    object CategoryPanelGroup1: TCategoryPanelGroup
      Left = 313
      Top = 1
      Width = 345
      Height = 3427
      VertScrollBar.Tracking = True
      VertScrollBar.Visible = False
      BevelInner = bvNone
      BevelOuter = bvNone
      Enabled = False
      Color = clBtnShadow
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
      Visible = False
      ExplicitTop = 82
      ExplicitHeight = 3346
      object CategoryPanelManagementOp: TCategoryPanel
        Top = 749
        Height = 220
        Caption = 'Management'
        Color = clGray
        TabOrder = 0
        object Label153: TLabel
          Left = 34
          Top = 9
          Width = 71
          Height = 13
          Caption = 'Cubicle Groups'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCubicleGroupsClick
        end
        object btnCubicleGroups: TSpeedButton
          Left = 5
          Top = 6
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            16080000424D16080000000000003600000028000000180000001C0000000100
            180000000000E00700000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC00000000000000000000000000000099A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFFFF00FFFF00FFFF00FFFF000000
            0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFFFF00FFFF00
            FFFF00FFFF0000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACC0C0C0C0C0C0C0
            C0C0FFFF00FFFF00FFFF00FFFF0000000099A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            ACC0C0C099A8AC99A8ACFFFF00FFFF00FFFF00FFFF0000000099A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8ACC0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8ACC0C0C099A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC00000000000000000000000000000000000099A8AC99A8ACC0C0C099A8AC99
            A8AC00000000000000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8ACFF0000FF0000FF0000FF0000FF000000000099A8AC99A8
            ACC0C0C099A8AC99A8ACFF00FFFF00FFFF00FFFF00FF00000099A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF0000FF0000FF0000FF0000FF0000
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF00FFFF00FFFF00FFFF00FF0000
            0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF0000FF0000FF
            0000FF0000FF000000000099A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FF
            FF00FFFF00FF00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            ACFF0000FF0000FF0000FF0000FF000000000099A8AC99A8AC99A8AC99A8AC99
            A8ACFF00FFFF00FFFF00FFFF00FF00000099A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8ACFF0000FF0000FF0000FF0000FF000000000099A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC}
          Transparent = False
          OnClick = btnCubicleGroupsClick
        end
        object Label1: TLabel
          Left = 34
          Top = 38
          Width = 98
          Height = 13
          Caption = 'Environment Control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnEnviroControlClick
        end
        object btnEnviroControl: TSpeedButton
          Left = 5
          Top = 36
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            16080000424D16080000000000003600000028000000180000001C0000000100
            180000000000E00700000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            00000099A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099
            A8AC99A8AC99A8AC99A8ACFFFF0099A8AC99A8ACFFFF00FFFFFFFFFF0099A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8ACFFFF0099A8AC99A8ACC0C0C0FFFFFF99A8AC99A8AC99A8ACC0
            C0C0FFFFFF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8ACC0C0C0FFFFFF99A8AC99A8AC99A8AC000000FFFF
            0099A8AC99A8AC99A8AC000000FFFF0099A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC000000FFFF0099A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC000000FFFF0099A8AC99A8AC99A8AC000000
            FFFF0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC000000FFFF0099A8AC99A8ACC0C0C0C0C0C099A8AC99
            A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8
            AC00000000000099A8AC99A8ACFFFFFF00000099A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC000000
            99A8AC000000000000000000000000000000000000C0C0C0C0C0C099A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC000000000000000000C0C0C0000000000000FFFFFF000000000000C0C0C0
            000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC000000000000000000C0C0C0000000000000C0C0C0FFFFFFFF
            FFFFC0C0C0000000FFFFFFC0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC000000FFFFFFC0C0C0C0C0C0000000C0C0
            C0C0C0C0000000000000FFFFFF000000C0C0C099A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACC0C0C0C0C0C0
            000000C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C099A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8ACFFFFFFFFFFFFFFFFFFFFFFFFC0C0C099A8AC99A8ACFFFFFFC0C0C0
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC}
          Transparent = False
          OnClick = btnEnviroControlClick
        end
        object Label155: TLabel
          Left = 34
          Top = 68
          Width = 138
          Height = 13
          Caption = 'Sensor Override/Error Terms'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          OnClick = btnSensorOverrideClick
        end
        object btnSensorOverride: TSpeedButton
          Left = 5
          Top = 65
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            5E080000424D5E080000000000003600000028000000180000001D0000000100
            180000000000280800000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            00000000000000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC00000000000000000099A8AC00000099A8AC00000000000000000099A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC00000000000000000099A8AC00000099A8AC00000099A8AC00000099
            A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC00000099A8AC00000099A8AC00000099A8AC0000
            0099A8AC00000099A8AC00000099A8AC00000099A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC000000000000000000000000
            00000000000000000000000000000000000000000000000000000099A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099
            A8AC00000099A8AC00000099A8AC00000099A8AC00000099A8AC00000099A8AC
            00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC00000000000000000099A8AC00000099A8AC00000099A8AC00000099
            A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000000000000000099A8AC0000
            0099A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            00000000000000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC}
          Transparent = False
          Visible = False
          OnClick = btnSensorOverrideClick
        end
        object Label156: TLabel
          Left = 34
          Top = 101
          Width = 39
          Height = 13
          Caption = 'Settings'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          OnClick = Label156Click
        end
        object btnSetting: TSpeedButton
          Left = 5
          Top = 95
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            180000000000780600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00
            000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00
            000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8ACC0C0C0C0C0C0C0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8
            AC99A8AC99A8ACC0C0C099A8ACC0C0C099A8AC99A8AC99A8AC99A8AC99A8AC00
            000099A8AC99A8AC99A8AC99A8AC99A8AC000000000000000000000000000000
            C0C0C0C0C0C099A8ACC0C0C0000000C0C0C000000000000099A8AC99A8AC99A8
            AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC00000000000000
            0000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0C0000000000000
            99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8
            AC00000099A8AC00000000000000000000000000000000000000000000000000
            000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC
            99A8AC99A8AC99A8AC0000000000000000000000000000000000000000000000
            0000000000000000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC00
            000099A8AC99A8AC99A8AC99A8AC99A8AC000000000000000000000000000000
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000000
            000000000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00
            000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00
            000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC000000}
          Transparent = False
          Visible = False
          OnClick = Label156Click
        end
      end
      object CategoryPanelCommCub: TCategoryPanel
        Top = 617
        Height = 132
        Caption = 'Communication'
        Color = clGray
        TabOrder = 1
        ExplicitTop = 613
        object Label14: TLabel
          Left = 35
          Top = 45
          Width = 162
          Height = 13
          Caption = 'Communications Channel Mapping'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = Label14Click
        end
        object SpeedButton8: TSpeedButton
          Left = 6
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360000002800000015000000180000000100
            180000000000000600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000C0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC99A8
            AC000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC0000
            00000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000000000000000099A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = Label14Click
        end
        object Label18: TLabel
          Left = 35
          Top = 14
          Width = 124
          Height = 13
          Caption = 'Message Handling System'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnMessageHandlingClick
        end
        object SpeedButton10: TSpeedButton
          Left = 6
          Top = 8
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            86070000424D86070000000000003600000028000000180000001A0000000100
            1800000000005007000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000800000FF0000FF0000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000800000FF0000FF00
            00808000FF0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000
            80800099A8ACFF0000808000808000FF0000C0C0C0800000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
            0000000000000000000000000000000000FF0000808000FFFF00800000800000
            000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FF
            FF00FFFF00800000FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
            FF00FFFFFF0000FFFF00FFFF0080000000FFFF000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000800000FFFFFF000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFFFFFFF
            00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0FFFFFF80000080000080000080000080000000FFFFFFFF
            FF00FFFFFFFFFF00FFFF0000FF00008000FFFF000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFF0000FF0000FF0000800000
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFF000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFF0000FF
            0000808000800000FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
            00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0FF0000FF0000808000808000800000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0FF0000C0C0C0FF0000808000FFFF0080000099A8
            AC808000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000
            FFFF00FFFF00800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0808000FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnMessageHandlingClick
        end
        object btnDataLinkStatus: TSpeedButton
          Left = 5
          Top = 71
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            B6060000424DB6060000000000003600000028000000150000001A0000000100
            180000000000800600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00FFFF00FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8
            AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC00FFFF00000000000000FFFF99A8AC99A8AC99A8
            AC00FFFF00000000000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00000000FFFF00000000FFFF99A8AC99A8AC00FF
            FF00000000FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            00FFFF00FFFF00FFFF00000000FFFF00FFFF00000000FFFF99A8AC00FFFF0000
            0000FFFF00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            00000000000000000000FFFF99A8AC00FFFF00000000FFFF00FFFF00000000FF
            FF99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            00FFFF00FFFF00FFFF99A8AC99A8AC00FFFF00000000FFFF00000000FFFF99A8
            AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF00000000000000FFFF99A8AC99A8
            AC99A8AC00FFFF00000000FFFF00FFFF99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8
            AC99A8AC00FFFF00000000000000000099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF99A8AC99A8AC99A8AC99A8
            AC99A8AC00FFFF00000000FFFF00FFFF99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00FFFF99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnDataLinkStatusClick
        end
        object Label19: TLabel
          Left = 34
          Top = 76
          Width = 72
          Height = 13
          Caption = 'Datalink Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnDatalinkControlClick
        end
      end
      object CategoryPanelCommOp: TCategoryPanel
        Top = 488
        Height = 129
        Caption = 'Communication'
        Color = clGray
        TabOrder = 2
        object Label123: TLabel
          Left = 35
          Top = 96
          Width = 141
          Height = 13
          Caption = 'Communications Interference'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          OnClick = btnCommInterfeceneClick
        end
        object btnCommInterfecene: TSpeedButton
          Left = 6
          Top = 94
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360000002800000015000000180000000100
            180000000000000600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000C0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC99A8
            AC000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC0000
            00000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000000000000000099A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          Visible = False
          OnClick = btnCommInterfeceneClick
        end
        object Label124: TLabel
          Left = 35
          Top = 126
          Width = 162
          Height = 13
          Caption = 'Communications Channel Mapping'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          OnClick = btnCommMappingClick
        end
        object btnCommMapping: TSpeedButton
          Left = 6
          Top = 123
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360000002800000015000000180000000100
            180000000000000600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000C0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC99A8
            AC000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC0000
            00000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000000000000000099A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          Visible = False
          OnClick = btnCommMappingClick
        end
        object btnCommDefinition: TSpeedButton
          Left = 6
          Top = 36
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360000002800000015000000180000000100
            180000000000000600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8ACC0C0C0C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000C0C0C0C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC000000000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC00000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC99A8AC99A8
            AC000000000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC000000000000C0C0C099A8AC99A8AC0000
            00000000C0C0C099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00000000000000000099A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnCommDefinitionClick
        end
        object Label126: TLabel
          Left = 35
          Top = 14
          Width = 124
          Height = 13
          Caption = 'Message Handling System'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnMessageHandlingClick
        end
        object btnMessageHandling: TSpeedButton
          Left = 6
          Top = 8
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            86070000424D86070000000000003600000028000000180000001A0000000100
            1800000000005007000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000800000FF0000FF0000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000800000FF0000FF00
            00808000FF0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000
            80800099A8ACFF0000808000808000FF0000C0C0C0800000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
            0000000000000000000000000000000000FF0000808000FFFF00800000800000
            000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FF
            FF00FFFF00800000FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
            FF00FFFFFF0000FFFF00FFFF0080000000FFFF000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000800000FFFFFF000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFFFFFFF
            00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0FFFFFF80000080000080000080000080000000FFFFFFFF
            FF00FFFFFFFFFF00FFFF0000FF00008000FFFF000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFF0000FF0000FF0000800000
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFF000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFF0000FF
            0000808000800000FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
            00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0FF0000FF0000808000808000800000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0FF0000C0C0C0FF0000808000FFFF0080000099A8
            AC808000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000
            FFFF00FFFF00800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0808000FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnMessageHandlingClick
        end
        object btnDatalinkControl: TSpeedButton
          Left = 6
          Top = 64
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            B6060000424DB6060000000000003600000028000000150000001A0000000100
            180000000000800600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00FFFF00FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8
            AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC00FFFF00000000000000FFFF99A8AC99A8AC99A8
            AC00FFFF00000000000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00000000FFFF00000000FFFF99A8AC99A8AC00FF
            FF00000000FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            00FFFF00FFFF00FFFF00000000FFFF00FFFF00000000FFFF99A8AC00FFFF0000
            0000FFFF00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            00000000000000000000FFFF99A8AC00FFFF00000000FFFF00FFFF00000000FF
            FF99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            00FFFF00FFFF00FFFF99A8AC99A8AC00FFFF00000000FFFF00000000FFFF99A8
            AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF00000000000000FFFF99A8AC99A8
            AC99A8AC00FFFF00000000FFFF00FFFF99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF00000000FFFF99A8AC99A8AC99A8
            AC99A8AC00FFFF00000000000000000099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00FFFF99A8AC99A8AC99A8AC99A8
            AC99A8AC00FFFF00000000FFFF00FFFF99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00FFFF99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnDatalinkControlClick
        end
        object Label127: TLabel
          Left = 35
          Top = 67
          Width = 76
          Height = 13
          Caption = 'Datalink Control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnDatalinkControlClick
        end
        object btnAudioRecord: TSpeedButton
          Left = 6
          Top = 153
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            56070000424D5607000000000000360000002800000019000000180000000100
            180000000000200700000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC000000000000000000000000
            00000000000000000000000000000000000000000000000000000099A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC000000
            C0C0C0C0C0C0C0C0C0FFFFFF99A8AC99A8AC99A8AC99A8AC99A8AC000000C0C0
            C0C0C0C0C0C0C000000099A8AC99A8AC99A8AC99A8ACFFFFFF0099A8AC99A8AC
            99A8AC99A8AC99A8AC000000FFFFFFC0C0C0C0C0C0C0C0C0FFFFFF99A8AC99A8
            AC99A8AC000000C0C0C0C0C0C0C0C0C0C0C0C000000099A8AC99A8AC99A8AC99
            A8ACFFFFFF0099A8AC99A8AC99A8AC99A8AC99A8AC000000FFFFFF99A8ACFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000
            000099A8AC99A8AC99A8AC99A8ACFFFFFF0099A8AC99A8AC99A8AC99A8AC99A8
            AC000000FFFFFF99A8ACC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0FFFFFFC0C0C000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8
            AC99A8AC99A8AC99A8AC99A8AC000000FFFFFF99A8ACC0C0C0000000000000C0
            C0C0C0C0C0C0C0C0000000000000C0C0C0FFFFFFC0C0C000000099A8AC99A8AC
            99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC000000FFFFFF99
            A8ACC0C0C0000000000000C0C0C0C0C0C0C0C0C0000000000000C0C0C0FFFFFF
            C0C0C000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99
            A8AC99A8AC000000FFFFFF99A8ACC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0FFFFFFC0C0C000000099A8AC99A8AC99A8AC99A8AC99A8
            AC0099A8AC99A8AC99A8AC99A8AC99A8AC000000FFFFFF99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACC0C0C000000099A8
            AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC000000
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF00000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC0000000000000000000000000000000000000000
            0000000000000000000000000000000000000099A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99
            A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC99A8AC99A8AC99A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          Visible = False
          OnClick = btnAudioRecordClick
        end
        object Label128: TLabel
          Left = 35
          Top = 157
          Width = 98
          Height = 13
          Caption = 'Audio Record Tracks'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          OnClick = btnAudioRecordClick
        end
        object Label125: TLabel
          Left = 35
          Top = 40
          Width = 167
          Height = 13
          Caption = 'Communications Channel Definition'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCommDefinitionClick
        end
      end
      object CategoryPanelWeaponCub: TCategoryPanel
        Top = 395
        Height = 93
        Caption = 'Weapons'
        Color = clGray
        TabOrder = 3
        object Label8: TLabel
          Left = 33
          Top = 14
          Width = 169
          Height = 13
          Caption = 'Surface-to-Air Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToAirClick
        end
        object SpeedButton5: TSpeedButton
          Left = 4
          Top = 8
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000015000000190000000100
            180000000000400600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF00FFFF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF0000
            0099A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnSurfaceToAirClick
        end
        object Label12: TLabel
          Left = 33
          Top = 39
          Width = 193
          Height = 13
          Caption = 'Surface-to-Surface Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToSurfaceClick
        end
        object SpeedButton6: TSpeedButton
          Left = 4
          Top = 33
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000015000000190000000100
            180000000000400600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF00FFFF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF0000
            0099A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnSurfaceToSurfaceClick
        end
      end
      object CategoryPanelWeaponOp: TCategoryPanel
        Top = 302
        Height = 93
        Caption = 'Weapons'
        Color = clGray
        TabOrder = 4
        object Label88: TLabel
          Left = 33
          Top = 14
          Width = 169
          Height = 13
          Caption = 'Surface-to-Air Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToAirClick
        end
        object btnSurfaceToAir: TSpeedButton
          Left = 4
          Top = 8
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000015000000190000000100
            180000000000400600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF00FFFF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF0000
            0099A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnSurfaceToAirClick
        end
        object Label122: TLabel
          Left = 33
          Top = 39
          Width = 193
          Height = 13
          Caption = 'Surface-to-Surface Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToSurfaceClick
        end
        object btnSurfaceToSurface: TSpeedButton
          Left = 4
          Top = 33
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000015000000190000000100
            180000000000400600000000000000000000000000000000000099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF00FFFF0000FF0000FF99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC0000FF0000FF0000FF0000FF00FFFF0000FF0000
            FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000FF0000FF00FFFF00FFFF0000
            0099A8AC99A8AC00000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000
            0000000000000000000099A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0000000000
            0000000000000000000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC00000000000099A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC00000099A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC0099A8AC99A8AC
            99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
            AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
          Transparent = False
          OnClick = btnSurfaceToSurfaceClick
        end
      end
      object CategoryPanelStatusCub: TCategoryPanel
        Top = 151
        Height = 151
        Caption = 'Status'
        Color = clGray
        TabOrder = 5
        object SpeedButton1: TSpeedButton
          Left = 6
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            1800000000007404000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0
            C0C0C0C0C0C0C0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0
            C0C0C0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            000000000000000000000000000000000000000000000000000000C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000
            0000000000000000000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000000000C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnPlatformStatusClick
        end
        object SpeedButton2: TSpeedButton
          Left = 6
          Top = 36
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            22050000424D2205000000000000360000002800000014000000150000000100
            180000000000EC04000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0
            C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0FFFF00C0C0C0C0C0C0
            FFFF00FFFFFFFFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0FFFF00C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0
            C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0000000FFFF00C0C0C0C0C0C0C0C0C00000
            00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
            0000FFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000FFFF00C0C0C0C0C0C0C0C0C0000000FFFF00C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF00
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000C0C0C0C0C0C0FFFFFF000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C00000000000
            00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0000000000000
            FFFFFF000000000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000000000000000C0C0C0000000000000C0C0C0FFFFFFFF
            FFFFC0C0C0000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0000000FFFFFFC0C0C0C0C0C0000000C0C0C0C0C0C0000000000000FFFF
            FF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0FFFFFFC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnEnviroStatusClick
        end
        object btEmitterStatus: TSpeedButton
          Left = 6
          Top = 64
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            D6050000424DD605000000000000360000002800000014000000180000000100
            180000000000A005000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0
            000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0000000C0C0C0C0C0C0C0C0C000
            0000C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00C0C0C0C0C0C0000000000000C0C0C0000000000000C0C0C0C0C0C0000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
            C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
            00000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0
            000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C000
            0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btEmitterStatusClick
        end
        object btnMergedTrack: TSpeedButton
          Left = 6
          Top = 92
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            9A050000424D9A05000000000000360000002800000014000000170000000100
            1800000000006405000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0000000
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0000000000000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000
            C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnMergedTrackClick
        end
        object Label2: TLabel
          Left = 35
          Top = 14
          Width = 74
          Height = 13
          Caption = 'Platform Status'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnPlatformStatusClick
        end
        object Label5: TLabel
          Left = 35
          Top = 40
          Width = 94
          Height = 13
          Caption = 'Environment Status'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnEnviroStatusClick
        end
        object Label6: TLabel
          Left = 35
          Top = 67
          Width = 68
          Height = 13
          Caption = 'Emitter Status'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btEmitterStatusClick
        end
        object Label7: TLabel
          Left = 35
          Top = 96
          Width = 65
          Height = 13
          Caption = 'Merged Track'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnMergedTrackClick
        end
      end
      object CategoryPanelStatusOp: TCategoryPanel
        Top = 0
        Height = 151
        Caption = 'Status'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object btnPlatformStatus: TSpeedButton
          Left = 6
          Top = 8
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            1800000000007404000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0
            C0C0C0C0C0C0C0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0
            C0C0C0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            000000000000000000000000000000000000000000000000000000C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000
            0000000000000000000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000000000C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnPlatformStatusClick
        end
        object btnEnviroStatus: TSpeedButton
          Left = 6
          Top = 36
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            22050000424D2205000000000000360000002800000014000000150000000100
            180000000000EC04000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0
            C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0FFFF00C0C0C0C0C0C0
            FFFF00FFFFFFFFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0FFFF00C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0
            C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0000000FFFF00C0C0C0C0C0C0C0C0C00000
            00FFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
            0000FFFF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000FFFF00C0C0C0C0C0C0C0C0C0000000FFFF00C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF00
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000C0C0C0C0C0C0FFFFFF000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C00000000000
            00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0000000000000
            FFFFFF000000000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000000000000000C0C0C0000000000000C0C0C0FFFFFFFF
            FFFFC0C0C0000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0000000FFFFFFC0C0C0C0C0C0000000C0C0C0C0C0C0000000000000FFFF
            FF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0FFFFFFC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnEnviroStatusClick
        end
        object btnWeaponEngagement: TSpeedButton
          Left = 6
          Top = 64
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            D6050000424DD605000000000000360000002800000014000000180000000100
            180000000000A005000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0
            000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0000000C0C0C0C0C0C0C0C0C000
            0000C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00C0C0C0C0C0C0000000000000C0C0C0000000000000C0C0C0C0C0C0000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
            C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
            00000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0
            000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C000
            0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnWeaponEngagementClick
        end
        object btnPlatformRemoval: TSpeedButton
          Left = 6
          Top = 91
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            9A050000424D9A05000000000000360000002800000014000000170000000100
            1800000000006405000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0000000
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0000000000000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000
            C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0
            C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          Transparent = False
          OnClick = btnPlatformRemovalClick
        end
        object Label71: TLabel
          Left = 35
          Top = 14
          Width = 74
          Height = 13
          Caption = 'Platform Status'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnPlatformStatusClick
        end
        object Label72: TLabel
          Left = 35
          Top = 40
          Width = 94
          Height = 13
          Caption = 'Environment Status'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnEnviroStatusClick
        end
        object Label73: TLabel
          Left = 35
          Top = 67
          Width = 155
          Height = 13
          Caption = 'Weapon Engagements Summary'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnWeaponEngagementClick
        end
        object Label74: TLabel
          Left = 35
          Top = 96
          Width = 131
          Height = 13
          Caption = 'Platform Removal Summary'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = btnPlatformRemovalClick
        end
      end
    end
    object pnlLBottom: TPanel
      Left = 1
      Top = 3428
      Width = 811
      Height = 88
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnlLTop'
      TabOrder = 1
      ExplicitWidth = 343
    end
    object pnlLFill: TPanel
      Left = 658
      Top = 1
      Width = 154
      Height = 3427
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlLTop'
      TabOrder = 2
      Visible = False
      ExplicitTop = 82
      ExplicitWidth = 343
      ExplicitHeight = 3346
      object imgLFill: TImage
        Left = 0
        Top = 0
        Width = 154
        Height = 3427
        Align = alClient
        Stretch = True
        ExplicitLeft = 104
        ExplicitTop = 24
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlGroup: TPanel
      Left = 1
      Top = 1
      Width = 312
      Height = 3427
      Align = alLeft
      BevelOuter = bvNone
      Color = 855309
      ParentBackground = False
      TabOrder = 3
      StyleElements = [seFont, seBorder]
      ExplicitTop = 82
      ExplicitHeight = 3346
      object pnlStatusOp: TPanel
        Left = 0
        Top = 0
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 0
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlStatusOpClick
        object imgStatusOP: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitTop = 8
          ExplicitWidth = 241
        end
        object lblStatusOp: TLabel
          Left = 16
          Top = 8
          Width = 41
          Height = 18
          Cursor = crHandPoint
          Caption = 'Status'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlStatusOpClick
        end
      end
      object pnlStatusOpBody: TPanel
        Left = 0
        Top = 33
        Width = 312
        Height = 138
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 1
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblPlatformStatus: TLabel
          Left = 47
          Top = 14
          Width = 88
          Height = 16
          Cursor = crHandPoint
          Caption = 'Platform Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnPlatformStatusClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblEnvironmentStatus: TLabel
          Left = 47
          Top = 43
          Width = 111
          Height = 16
          Cursor = crHandPoint
          Caption = 'Environment Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnEnviroStatusClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblWeaponEngage: TLabel
          Left = 47
          Top = 71
          Width = 187
          Height = 16
          Cursor = crHandPoint
          Caption = 'Weapon Engagements Summary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnWeaponEngagementClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblPlatformRemovals: TLabel
          Left = 47
          Top = 100
          Width = 160
          Height = 16
          Cursor = crHandPoint
          Caption = 'Platform Removal Summary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnPlatformRemovalClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnPlatfrmStatus: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D2B241B2B241B
            2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B24
            1B2B241B2B241B2B241BFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnPlatformStatusClick
        end
        object btnEnvironStatus: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AEFBC73FFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0DEFBC730D
            0D0D0D0D0D0D0D0D0D0D0DEFBC730D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            EFBC730D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0DEFBC
            73FFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87AEFBC73FFC87AFFC87A0D0D
            0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87AFF
            C87A0D0D0DEFBC73EFBC730D0D0DFFC87AEFBC730D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AEFBC730D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AFFC87AEFBC73FFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D
            0D0DEFBC73EFBC73EFBC73EFBC730D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DEFBC73EFBC73EFBC73EFBC730D0D0D0D0D0D0D0D0DEFBC730D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnEnviroStatusClick
        end
        object btnWeaponEngage: TSpeedButton
          Left = 16
          Top = 68
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87A0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87A0D0D0DFFC87A0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AFF
            C87A0D0D0DFFC87AFFC87A0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            FFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D
            0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFF
            C87A0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnWeaponEngagementClick
        end
        object btnPlatfomRemovals: TSpeedButton
          Left = 16
          Top = 97
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0DFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0DFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnPlatformRemovalClick
        end
      end
      object pnlStatusCub: TPanel
        Left = 0
        Top = 171
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 2
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlStatusCubClick
        object imgStatucCub: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitLeft = 6
          ExplicitTop = 6
          ExplicitWidth = 241
        end
        object lblStatusCub: TLabel
          Left = 16
          Top = 8
          Width = 41
          Height = 18
          Cursor = crHandPoint
          Caption = 'Status'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlStatusCubClick
        end
      end
      object pnlStatusCubBody: TPanel
        Left = 0
        Top = 204
        Width = 312
        Height = 138
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 3
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblPlatformStatusCub: TLabel
          Left = 47
          Top = 14
          Width = 88
          Height = 16
          Cursor = crHandPoint
          Caption = 'Platform Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnPlatformStatusClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblEnvironmentStatusCub: TLabel
          Left = 47
          Top = 43
          Width = 111
          Height = 16
          Cursor = crHandPoint
          Caption = 'Environment Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnEnviroStatusClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblEmitterStatusCub: TLabel
          Left = 47
          Top = 71
          Width = 81
          Height = 16
          Cursor = crHandPoint
          Caption = 'Emitter Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btEmitterStatusClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblMergedTrackCub: TLabel
          Left = 47
          Top = 100
          Width = 79
          Height = 16
          Cursor = crHandPoint
          Caption = 'Merged Track'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnMergedTrackClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnPlatformStatusCub: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D2B241B2B241B
            2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B241B2B24
            1B2B241B2B241B2B241BFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnPlatformStatusClick
        end
        object btnEnvironmentStatusCub: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AEFBC73FFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0DEFBC730D
            0D0D0D0D0D0D0D0D0D0D0DEFBC730D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            EFBC730D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0DEFBC
            73FFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87AEFBC73FFC87AFFC87A0D0D
            0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87AFF
            C87A0D0D0DEFBC73EFBC730D0D0DFFC87AEFBC730D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AEFBC730D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AFFC87AEFBC73FFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D
            0D0DEFBC73EFBC73EFBC73EFBC730D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DEFBC73EFBC73EFBC73EFBC730D0D0D0D0D0D0D0D0DEFBC730D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnEnviroStatusClick
        end
        object btnEmitterStatusCub: TSpeedButton
          Left = 16
          Top = 68
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87A0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87A0D0D0DFFC87A0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AFF
            C87A0D0D0DFFC87AFFC87A0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            FFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D
            0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFF
            C87A0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btEmitterStatusClick
        end
        object btnMergedTrackCub: TSpeedButton
          Left = 16
          Top = 97
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0DFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0DFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnPlatformRemovalClick
        end
      end
      object pnlWeaponsOp: TPanel
        Left = 0
        Top = 342
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 4
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlWeaponsOpClick
        object imgWeaponsOp: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitTop = 15
        end
        object lblWeaponsOp: TLabel
          Left = 16
          Top = 8
          Width = 61
          Height = 18
          Cursor = crHandPoint
          Caption = 'Weapons'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlWeaponsOpClick
        end
      end
      object pnlWeaponsOpBody: TPanel
        Left = 0
        Top = 375
        Width = 312
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 5
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblSAMissileEngage: TLabel
          Left = 47
          Top = 14
          Width = 204
          Height = 16
          Cursor = crHandPoint
          Caption = 'Surface-to-Air Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToAirClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblSSMissileEngage: TLabel
          Left = 47
          Top = 43
          Width = 232
          Height = 16
          Cursor = crHandPoint
          Caption = 'Surface-to-Surface Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToSurfaceClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnSurfaceToAirOp: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFF
            C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            FFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0DFF
            C87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D31291D
            FFC87AFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D2B
            241BFFC87A31291D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnSurfaceToAirClick
        end
        object btnSurfaceToSurfaceOp: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFF
            C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            FFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0DFF
            C87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D31291D
            FFC87AFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D2B
            241BFFC87A31291D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnSurfaceToSurfaceClick
        end
      end
      object pnlWeaponsCub: TPanel
        Left = 0
        Top = 445
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 6
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlWeaponsCubClick
        object imgWeaponsCub: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitTop = 15
        end
        object lblWeaponsCub: TLabel
          Left = 16
          Top = 8
          Width = 61
          Height = 18
          Cursor = crHandPoint
          Caption = 'Weapons'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlWeaponsCubClick
        end
      end
      object pnlWeaponsCubBody: TPanel
        Left = 0
        Top = 478
        Width = 312
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 7
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblSAMissileEngageCub: TLabel
          Left = 47
          Top = 14
          Width = 204
          Height = 16
          Cursor = crHandPoint
          Caption = 'Surface-to-Air Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToAirClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblSSMissileEngageCub: TLabel
          Left = 47
          Top = 43
          Width = 232
          Height = 16
          Cursor = crHandPoint
          Caption = 'Surface-to-Surface Missile Engagements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSurfaceToSurfaceClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnSurfaceToAirCub: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFF
            C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            FFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0DFF
            C87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D31291D
            FFC87AFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D2B
            241BFFC87A31291D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnSurfaceToAirClick
        end
        object btnSurfaceToSurfaceCub: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFF
            C87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            FFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0DFF
            C87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D31291D
            FFC87AFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87A31291D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D2B
            241BFFC87A31291D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0DFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnSurfaceToSurfaceClick
        end
      end
      object pnlCommOP: TPanel
        Left = 0
        Top = 548
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 8
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlCommOPClick
        object imgCommOp: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitTop = 15
        end
        object lblCommOp: TLabel
          Left = 16
          Top = 8
          Width = 99
          Height = 18
          Cursor = crHandPoint
          Caption = 'Communication'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlCommOPClick
        end
      end
      object pnlCommOpBody: TPanel
        Left = 0
        Top = 581
        Width = 312
        Height = 165
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 9
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblMessageHandlingOp: TLabel
          Left = 47
          Top = 14
          Width = 149
          Height = 16
          Cursor = crHandPoint
          Caption = 'Message Handling System'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnMessageHandlingClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblCommDefinitionOp: TLabel
          Left = 47
          Top = 43
          Width = 201
          Height = 16
          Cursor = crHandPoint
          Caption = 'Communications Channel Definition'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCommDefinitionClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblDataLinkControlOp: TLabel
          Left = 47
          Top = 130
          Width = 90
          Height = 16
          Cursor = crHandPoint
          Caption = 'Datalink Control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnDatalinkControlClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnMessageHandlingOP: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0DFF0000800000FF0000FF00000D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF0000800000FF
            0000FF0000808000FF00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D800000808000323637FF0000808000808000FF00000D0D
            0D8000000D0D0D0D0D0D0D0D0D00000000000000000000000000000000000000
            0000000000FF0000808000FFFF008000008000000000000000000D0D0DEFEFEF
            EFEFEF00FFFFEFEFEFEFEFEF00FFFFEFEFEFEFEFEFEFEFEFFF0000FFFF00FFFF
            00800000EFEFEF0000000D0D0DEFEFEFEFEFEFEFEFEFEFEFEF00FFFFEFEFEF00
            FFFFEFEFEF00FFFFFF0000FFFF00FFFF0080000000FFFF0000000D0D0DEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFF0000FF0000FF0000FF00
            00800000EFEFEF0000000D0D0DEFEFEFEFEFEFEFEFEFEFEFEF00FFFFEFEFEF00
            FFFFEFEFEF00FFFFEFEFEF00FFFFEFEFEFEFEFEF00FFFF0000000D0D0DEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF00FFFFEFEFEFEFEFEF00FF
            FFEFEFEFEFEFEF0000000D0D0DEFEFEF80000080000080000080000080000000
            FFFFEFEFEF00FFFFEFEFEF00FFFF0000FF00008000FFFF0000000D0D0DEFEFEF
            FF0000FF0000FF0000800000EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF0000
            FF0000FFEFEFEF0000000D0D0DEFEFEFFF0000FF0000808000800000EFEFEF00
            FFFFEFEFEFEFEFEF00FFFFEFEFEF00FFFFEFEFEF00FFFF0000000D0D0D0D0D0D
            FF0000FF00008080008080008000000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0000000D0D0D0D0D0DFF00000D0D0DFF0000808000FFFF0080
            00003236378080008000000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFF0000FFFF00FFFF008000008000000D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D808000FF
            FF00FFFF00FFFF000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnMessageHandlingClick
        end
        object btnCommDefinitionOp: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnCommDefinitionClick
        end
        object btnDataLinkControlOp: TSpeedButton
          Left = 16
          Top = 127
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D00FFFF00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFF0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A00FFFF0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D00FFFFFFC87A00FFFF0D0D0D0D0D0D0D0D0D0D0D0D00FF
            FFFFC87A00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87A00
            FFFF0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87A00FFFF0D0D0D0D0D0D0D0D0D
            0D0D0D00FFFFFFC87A00FFFFFFC87A00FFFF0D0D0D0D0D0D00FFFFFFC87A00FF
            FFFFC87A00FFFF0D0D0D00FFFF00FFFF00FFFFFFC87A00FFFF00FFFFFFC87A00
            FFFF0D0D0D00FFFFFFC87A00FFFF00FFFFFFC87A00FFFF0D0D0DFFC87AFFC87A
            FFC87A00FFFF0D0D0D00FFFFFFC87A00FFFF00FFFFFFC87A00FFFF0D0D0D00FF
            FFFFC87A00FFFF0D0D0D00FFFF00FFFF00FFFF0D0D0D0D0D0D00FFFFFFC87A00
            FFFFFFC87A00FFFF0D0D0D0D0D0D00FFFFFFC87A00FFFF0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87A00FFFF0D0D0D0D0D0D0D0D0D00FF
            FFFFC87A00FFFF00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFFFFC87A00
            FFFF0D0D0D0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87AFFC87A0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FF
            FFFFC87A00FFFF00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFF0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnDatalinkControlClick
        end
        object btnCommMappingOp: TSpeedButton
          Left = 16
          Top = 69
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnCommMappingClick
        end
        object lblCommMappingOp: TLabel
          Left = 47
          Top = 72
          Width = 196
          Height = 16
          Cursor = crHandPoint
          Caption = 'Communications Channel Mapping'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCommMappingClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnCommInterferenceOp: TSpeedButton
          Left = 16
          Top = 98
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnCommInterfeceneClick
        end
        object lblCommInterferenceOp: TLabel
          Left = 47
          Top = 101
          Width = 168
          Height = 16
          Caption = 'Communications Interference'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCommInterfeceneClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
      end
      object pnlCommCub: TPanel
        Left = 0
        Top = 746
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 10
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlCommCubClick
        object imgCommCub: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitTop = 15
        end
        object lblCommCub: TLabel
          Left = 16
          Top = 8
          Width = 99
          Height = 18
          Cursor = crHandPoint
          Caption = 'Communication'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlCommCubClick
        end
      end
      object pnlCommCubBody: TPanel
        Left = 0
        Top = 779
        Width = 312
        Height = 105
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 11
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblMessageHandlingCub: TLabel
          Left = 47
          Top = 14
          Width = 149
          Height = 16
          Cursor = crHandPoint
          Caption = 'Message Handling System'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnMessageHandlingClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblCommMappingCub: TLabel
          Left = 47
          Top = 43
          Width = 196
          Height = 16
          Cursor = crHandPoint
          Caption = 'Communications Channel Mapping'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = Label14Click
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblDataLinkStatusCub: TLabel
          Left = 47
          Top = 72
          Width = 85
          Height = 16
          Cursor = crHandPoint
          Caption = 'Datalink Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnDatalinkControlClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnMessageHandlingCub: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0DFF0000800000FF0000FF00000D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF0000800000FF
            0000FF0000808000FF00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D800000808000323637FF0000808000808000FF00000D0D
            0D8000000D0D0D0D0D0D0D0D0D00000000000000000000000000000000000000
            0000000000FF0000808000FFFF008000008000000000000000000D0D0DEFEFEF
            EFEFEF00FFFFEFEFEFEFEFEF00FFFFEFEFEFEFEFEFEFEFEFFF0000FFFF00FFFF
            00800000EFEFEF0000000D0D0DEFEFEFEFEFEFEFEFEFEFEFEF00FFFFEFEFEF00
            FFFFEFEFEF00FFFFFF0000FFFF00FFFF0080000000FFFF0000000D0D0DEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFF0000FF0000FF0000FF00
            00800000EFEFEF0000000D0D0DEFEFEFEFEFEFEFEFEFEFEFEF00FFFFEFEFEF00
            FFFFEFEFEF00FFFFEFEFEF00FFFFEFEFEFEFEFEF00FFFF0000000D0D0DEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF00FFFFEFEFEFEFEFEF00FF
            FFEFEFEFEFEFEF0000000D0D0DEFEFEF80000080000080000080000080000000
            FFFFEFEFEF00FFFFEFEFEF00FFFF0000FF00008000FFFF0000000D0D0DEFEFEF
            FF0000FF0000FF0000800000EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF0000
            FF0000FFEFEFEF0000000D0D0DEFEFEFFF0000FF0000808000800000EFEFEF00
            FFFFEFEFEFEFEFEF00FFFFEFEFEF00FFFFEFEFEF00FFFF0000000D0D0D0D0D0D
            FF0000FF00008080008080008000000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0000000D0D0D0D0D0DFF00000D0D0DFF0000808000FFFF0080
            00003236378080008000000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0DFF0000FFFF00FFFF008000008000000D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D808000FF
            FF00FFFF00FFFF000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnMessageHandlingClick
        end
        object btnCommMappingCub: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D
            0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = Label14Click
        end
        object btnDataLinkStatusCub: TSpeedButton
          Left = 16
          Top = 69
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D00FFFF00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFF0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A00FFFF0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D00FFFFFFC87A00FFFF0D0D0D0D0D0D0D0D0D0D0D0D00FF
            FFFFC87A00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87A00
            FFFF0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87A00FFFF0D0D0D0D0D0D0D0D0D
            0D0D0D00FFFFFFC87A00FFFFFFC87A00FFFF0D0D0D0D0D0D00FFFFFFC87A00FF
            FFFFC87A00FFFF0D0D0D00FFFF00FFFF00FFFFFFC87A00FFFF00FFFFFFC87A00
            FFFF0D0D0D00FFFFFFC87A00FFFF00FFFFFFC87A00FFFF0D0D0DFFC87AFFC87A
            FFC87A00FFFF0D0D0D00FFFFFFC87A00FFFF00FFFFFFC87A00FFFF0D0D0D00FF
            FFFFC87A00FFFF0D0D0D00FFFF00FFFF00FFFF0D0D0D0D0D0D00FFFFFFC87A00
            FFFFFFC87A00FFFF0D0D0D0D0D0D00FFFFFFC87A00FFFF0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87A00FFFF0D0D0D0D0D0D0D0D0D00FF
            FFFFC87A00FFFF00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFFFFC87A00
            FFFF0D0D0D0D0D0D0D0D0D0D0D0D00FFFFFFC87AFFC87AFFC87A0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FF
            FFFFC87A00FFFF00FFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00FFFF0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnDatalinkControlClick
        end
      end
      object pnlManagementOp: TPanel
        Left = 0
        Top = 884
        Width = 312
        Height = 33
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 12
        Visible = False
        StyleElements = [seFont, seBorder]
        OnClick = pnlManagementOpClick
        object imgManagementOp: TImage
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000030E0000
            01330802000000175BC340000000097048597300000B1300000B1301009A9C18
            00000DCB4944415478DAEDDD5994DE757DC7710268A242C1AA500F543885168B
            152A1CD7BA50AC588A1B21DB649FECFB420281480224989040C8365926339999
            642633938404374ADD28EE560FB460A5D24A0F58A805A562C14A5842CFF3FC72
            FA7BCECCFF77FDFB5DBC5E37CFF7F273F9BEF83FFFFF90FFFCE533C7D59DF2FA
            61C70100D060C8FFA7D2C9C35E9B7B0C0040119E7BE1C570C4543A69E86B72AF
            020028C2F3475E0A474CA537BCF684DCAB00008AF0DB175F09474CA561271C9F
            7B150040115E78E56838622A0D3DFED5DCAB00008A70E4E8907048250080812A
            52E9C4578FE65E0500508497871C7B3029A6D209475FCABD0A00A008AF1C7FEC
            CD00319586BCFC62EE5500004578F5C463EF9B8CA974DC4B4772AF020028C36B
            8686DF984A478FFC2EF7280080221C3FF475E188A9F4CA0BFF9B7B150040114E
            18F6FA70C4547AF977CFE75E05005084135F775238622A1D79FE7F72AF020028
            C2D0937E2F1C0DA9F4DC6F72AF020028C2D0934F09474CA5179E7B36F72A0080
            220C3BF9D470C454FAEDB3BFCEBD0A00A0086F38F58DE188A9F4FCAF7F957B15
            0040114E7AE39BC31153E9B9677E997B150040114E7ED35BC21153E937BF7A3A
            F72A0080229CF2E6D3C21153E9D9A79FCABD0A00A008A79E767A38622AFDF753
            BFC8BD0A00A008BF7FFA5BC31153E999FF7A32F72A008022BCE90FCE08474CA5
            A79FFC8FDCAB00008A70DA197F188E86547AE2E7B957010014E1B433DF168E98
            4A4F3DF178EE5500004538FDCCB3C21153E9178F3F967B15004011DE7AD6D9E1
            88A9F4E4638FE65E0500508433CE3E271C31959EF8F79FE55E0500508433FFE8
            DC70C454FAF9A3520900A0E66DE70C4AA5C7FFED91DCAB00008A70D61F9F178E
            984A8FFDEB4F73AF020028C2D97FF2F670C4547AF4918773AF020028C239E79D
            1F8E984A3FFB979FE45E0500508473FFF41DE16848A5877F9C7B15004011CE3D
            FF9DE188A9F4C83F3F947B15004011CEFBB30BC21153E9A70F3D987B15004011
            DE7EC185E188A9F4F0830FE45E05005084F32FBC281C31957EF24FF7E75E0500
            508477FCF9C5E188A9F4E307A4120040CD3B2F1A944A0FDDFFA3DCAB00008A70
            C1C5EF0E474CA5077FF483DCAB00008A70E1BBDF178E984AFFF8C3EFE75E0500
            508477BDE7FDE188A9F4C00FA4120040CD45EF1B944AF77FFF3BB957010014E1
            E2F77F301C31957EF8BD6FE75E05005084F77CE043E188A9F40FDFF966EE5500
            004578EF073F128E8654FAD67DB957010014E1BD1FBE241C3195BEF7CD7B73AF
            020028C2073E726938622A7DF7BE6FE45E05005084BFB8E4A3E188A9F4ED7BBF
            9E7B150040113E74E95F8523A6D2B7BEF1D5DCAB00008AF0E18F5E168E984AF7
            7DED2BB957010014E1928F7D3C1C3195FEFE2BF7E45E05005084BFFCF8E5E188
            A974EFDFDD9D7B150040112EFDEB2BC21153E96BF77C39F72A0080227CECF24F
            8423A6D257EFFE52EE55000045B8EC8A4F86A32195BEFC85DCAB00008A70D927
            3E1D8E984AF77CF1AEDCAB00008A70F9A7AE0C474CA5BFFDC2E1DCAB00008AF0
            379F1E1E8E984A771F3E947B15004011AE187E5538622A7DE9F0C1DCAB00008A
            F0C9E123C31153E98B870EE45E050050844F5D352A1C31953E7FA03FF72A0080
            227C66D49870C454BA6B7F5FEE55000045B872745338622ADDD9DF937B150040
            11468C191F8E8654EA954A00003523C60E4AA583FBBA73AF020028C2C87113C2
            1153A9BFBB2BF72A0080228C9930391C3195FAF676E65E05005084A689CDE188
            A9D4DBD9917B15004011C6364F09474CA59ECEF6DCAB00008A30BE795A38622A
            7577B4E55E050050840953A68723A6D2DEB6D6DCAB00008A3071FACC70C454EA
            DCB533F72A00802234CF98158E984A1DADDB72AF020028C2949973C3D1904A3B
            A4120040CD94D98352A96D7B4BEE55000045983E675E38622AED6AD99C7B1500
            401166CC5B188E984A3BB76CCABD0A00A008B3162C0A474CA51D9B37E65E0500
            5084D90B1787A3219536DD917B15004011662FBA3A1C31955A366EC8BD0A00A0
            08F3162F09474CA5AD77DC967B15004011E65F7D4D38622A6DD9B02EF72A0080
            222C58B22C1C319536AFBF35F72A0080222CBCF6BA70C454DA24950000EA160D
            4EA58DEBD6E45E05005084C5CB968723A6D286B5B7E45E0500508425D7DF108E
            984AB74B250080BAA515A9B46675EE5500004558BA7C4538622AAD5B7D73EE55
            00004558B6E2C670C454BA75F54DB957010014E1BA15378523A6D2DA552B73AF
            020028C2F52B578523A6D29A9B56E45E05005084E5371D7B863BA6D2E76E944A
            0000359FBD79502ADDB2F2B3B957010014E186559F0B474CA5552B96E75E0500
            508495AB8F7DC524A6D2CD375C9F7B150040116EBC656D381A5269F975B95701
            0014E1C635B78623A6D2CAEB97E55E05005084556BD785A33195AECDBD0A00A0
            08ABD6AE0F474CA515D72EC9BD0A00A008ABD76F08474CA5E5D7482500809A35
            B74925008084AA545ABA28F72A008022ACB97D5338622A2D5BBC30F72A008022
            ACDBB8391C3195AE954A000075EB2B5269D1BCDCAB00008AB07E534B38622A2D
            5D209500006A6EDF322895962C989B7B15004011366CD9168E86549A373BF72A
            0080226C68D9118E984A8BE6CCCABD0A00A0089BB6EF0C474CA585520900A06E
            73552ACDCCBD0A00A0089BB7B78623A6D2FC99D373AF020028C2D6D6B670C454
            9A37735AEE5500004568696D0F474CA5B933A6E65E050050846DBB768723A6D2
            9C695372AF020028C2F6F68E70C4549A3DAD39F72A008022EC68EF0C474CA559
            5327E75E050050849DBBBBC211536966F3A4DCAB00008AD0DAB9271C3195A64F
            9E907B15004011DABABAC3D1904A93C6E75E05005084B63D3DE188A9346DA254
            0200A869DF3B2895A64E189B7B150040117677F78623A652F3F8A6DCAB00008A
            D0D9D3178E984A93C78DC9BD0A00A0085DFBFAC3D1904A6347E75E05005084AE
            DEFDE188A934A96954EE55000045D8D377201C3195268C1E997B15004011BAF7
            1F0C474CA5F1A3AFCABD0A00A0083DFB0F8523A6D2B851520900A066DF8141A9
            347684540200A8E9BD73502A358DB832F72A008022F4DD795738622A8D19FE99
            DCAB00008AD07FF8F3E1904A00000355A5D255520900A0A6FFD0A0546A924A00
            00757D55A9E4B16E00809ABE43831EEBF60F380080A0E21F7063A51200405D6F
            452A8D1C9E7B150040117A0F1E0E8754020018A82295C68DF4611300809A7D07
            7D2E170020A1E273B952090020A848A5F1A346E45E050050849E037786A32195
            464B2500809A9EFD52090020A12295268C1E997B15004011BAF71F0C47432A8D
            914A000035DDFD52090020A12295268E19957B15004011F6F61F0847432A3549
            2500809ABD7D52090020A1229526358DCEBD0A00A0087BFAF687432A01000C54
            954A63A5120040CD9EDE41A93479EC98DCAB00008AD0D5DB1F8E86541A279500
            006ABAF655A45253EE55000045E8DAD7178E984ACD520900A0AEB32295C64B25
            00809ACE9E8A541A9B7B150040113A7B7AC31153698A540200A8EBA848A50952
            0900A0A6A3BB2295C6E55E050050848EEE7DE188A934552A0100D4EDAE48A589
            520900A066F7DE8A541A9F7B1500401176EFED09474CA569520900A0AEBD2295
            26492500809AF63D15A93421F72A008022B4EFE90E474CA5E9520900A0AEAD22
            95264B2500809AB6AE8A549A987B15004011DABAF68623A6D20CA9040050B7AB
            22959AA5120040CDAECE8A549A947B150040117675EE09474CA599520900A0AE
            B52295A6482500809AD68E8A549A9C7B150040115A3BBAC211536996540200A8
            DB59914A5327E75E050050849DBBBBC2D1984ACDB95701001461E7EECE70C454
            9A2D950000EA7654A4D234A9040050B3A3BD2295A6E45E050050841DED1DE188
            A934472A0100D46DAF48A5E9520900A0667B5B452A4DCDBD0A00A008DBDB7687
            23A6D25CA9040050B7AD2295664CCBBD0A00A008DB76B587432A01000C54914A
            F3A41200405D4B452ACD9C9E7B150040115A5ADBC22195000006AA48A5F95209
            00A06E6B452ACD9A917B15004011B6EEDC150EA904003050452A2D904A000075
            5B2A5269F6CCDCAB00008AB065476B38A41200C04015A9B4502A0100D46DAE48
            A539B372AF020028C2E6ED3BC32195000006AA48A545520900A06E53452ACD9D
            9D7B15004011366DDB110EA90400309054020048AA48A5C5F3E6E45E05005084
            8D2DDBC32195000006AA48A5ABA5120040DD1D15A9347F6EEE55000045B863EB
            B6704825008081A412004052452A2D59302FF72A0080226CD8D2120EA9040030
            9054020048AA48A5A50BE7E75E05005084DB376F0D8754020018482A01002455
            A4D2358B16E45E05005084DB366D098754020018482A0100244925008024A904
            00902495000092A41200409254020048924A00004952090020492A0100244925
            008024A90400902495000092A41200409254020048924A00004952090020492A
            0100244925008024A90400902495000092A41200409254020048924A00004952
            090020492A0100244925008024A90400902495000092A4120040925402004892
            4A00004952090020492A0100244925008024A90400902495000092A412004092
            54020048924A00004952090020492A0100244925008024A90400902495000092
            A41200409254020048924A00004952090020492A0100244925008024A9040090
            2495000092A41200409254020048924A00004952090020492A01002449250080
            24A90400902495000092A41200409254020048924A00004952090020492A0100
            244925008024A90400902495000092A41200409254020048924A000049520900
            20A92295000018402A0100244925008024A90400902495000092A41200409254
            020048924A00004952090020E9FF00FF6FC5891103CEE00000000049454E44AE
            426082}
          Stretch = True
          Visible = False
          ExplicitTop = 15
        end
        object lblManagementOp: TLabel
          Left = 16
          Top = 8
          Width = 86
          Height = 18
          Cursor = crHandPoint
          Caption = 'Management'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = pnlManagementOpClick
        end
      end
      object pnlManagementOpBody: TPanel
        Left = 0
        Top = 917
        Width = 312
        Height = 140
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 855309
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 13
        Visible = False
        StyleElements = [seFont, seBorder]
        object lblCubicleGroupsOp: TLabel
          Left = 47
          Top = 14
          Width = 85
          Height = 16
          Cursor = crHandPoint
          Caption = 'Cubicle Groups'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCubicleGroupsClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object lblEnviroControlOp: TLabel
          Left = 47
          Top = 43
          Width = 116
          Height = 16
          Cursor = crHandPoint
          Caption = 'Environment Control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnEnviroControlClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnCubicleGroupsOp: TSpeedButton
          Left = 16
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D9696969696
            969696969696960D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0DFFFF00FFFF00FFFF009696960D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFFFFFFFFFFFFFFFFFFFFF00FFFF
            00FFFF009696960D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0DFFFFFF0D0D0D0D0D0DFFFF00FFFF00FFFF009696960D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFFFFF0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0C0C0C0C0C0C0C0C0C0C0C0C0D0D0D0D
            0D0DFFFFFF0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            9696969696969696969696969696960D0D0DFFFFFF0D0D0D0D0D0D9696969696
            969696969696960D0D0D0D0D0D0D0D0DFF0000FF0000FF0000FF00009696960D
            0D0DFFFFFF0D0D0D0D0D0DFF00FFFF00FFFF00FF9696960D0D0D0D0D0D0D0D0D
            FF0000FF0000FF0000FC0000969696FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00
            FFFF00FF9696960D0D0D0D0D0D0D0D0DFF0000FF0000FF0000FE00009696960D
            0D0D0D0D0D0D0D0D0D0D0DFF00FFFF00FFFF00FF9696960D0D0D0D0D0D0D0D0D
            FF0000FF0000FF0000FF00009696960D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnCubicleGroupsClick
        end
        object btnEnviroControlOp: TSpeedButton
          Left = 16
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D
            0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A
            0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AEFBC73FFC87A0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0DEFBC730D
            0D0D0D0D0D0D0D0D0D0D0DEFBC730D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            EFBC730D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC8
            7AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87A0D0D0D0D0D0DEFBC
            73FFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87AFFC87AEFBC73FFC87AFFC87A0D0D
            0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87AFF
            C87A0D0D0DEFBC73EFBC730D0D0DFFC87AEFBC730D0D0D0D0D0D0D0D0D0D0D0D
            FFC87AEFBC730D0D0D0D0D0DFFC87A0D0D0D0D0D0DFFC87AFFC87AEFBC73FFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D
            0D0DEFBC73EFBC73EFBC73EFBC730D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DEFBC73EFBC73EFBC73EFBC730D0D0D0D0D0D0D0D0DEFBC730D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnEnviroControlClick
        end
        object btnSensorOverrideOp: TSpeedButton
          Left = 16
          Top = 69
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFF
            C87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87A0D0D0DFFC87AFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87A0D
            0D0DFFC87A0D0D0DFFC87A0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87A0D0D0DFFC87A0D0D0DFFC87A0D0D0DFFC87A0D0D0DFFC87A0D0D0DFFC8
            7A0D0D0DFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87A0D0D0DFFC87A0D0D0DFFC87A0D0D0DFFC87A0D0D0DFFC87A0D0D0DFFC8
            7A0D0D0DFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87A0D
            0D0DFFC87A0D0D0DFFC87A0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0DFFC87AFFC87AFFC87A0D0D0DFFC87A0D0D0DFFC87AFFC87AFFC8
            7A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFF
            C87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = btnSensorOverrideClick
        end
        object lblSensorOverrideOp: TLabel
          Left = 47
          Top = 72
          Width = 168
          Height = 16
          Caption = 'Sensor Override/Error Terms'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSensorOverrideClick
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
        object btnSettingOp: TSpeedButton
          Left = 16
          Top = 98
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87A0D0D
            0DFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87A0D0D0DFFC87AFFC87AFFC87AFF
            C87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D
            FFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC87AFFC8
            7AFFC87AFFC87A0D0D0D0D0D0D0D0D0DFFC87AFFC87AFFC87AFFC87AFFC87A0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0DFFC87AFFC87AFFC87A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          Transparent = False
          OnClick = Label156Click
        end
        object lblSettingOp: TLabel
          Left = 47
          Top = 101
          Width = 46
          Height = 16
          Caption = 'Settings'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = Label156Click
          OnMouseEnter = lblGroupSelectionMouseEnter
          OnMouseLeave = lblGroupSelectionMouseLeave
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 184
    Top = 8
    object View1: TMenuItem
      Caption = 'View'
      object Display1: TMenuItem
        Caption = 'Display'
        object Tactical1: TMenuItem
          Caption = 'Tactical'
          OnClick = Tactical1Click
        end
        object Tote1: TMenuItem
          Caption = 'Tote'
        end
      end
      object FullScreen1: TMenuItem
        Caption = 'Full Screen'
        Visible = False
      end
      object Scale1: TMenuItem
        Caption = 'Scale'
        Visible = False
        object Increase1: TMenuItem
          Caption = 'Increase'
        end
        object Decrease1: TMenuItem
          Caption = 'Decrease'
        end
        object Zoom1: TMenuItem
          Caption = 'Zoom...'
        end
      end
      object Centre1: TMenuItem
        Caption = 'Centre'
        Visible = False
        object Settings2: TMenuItem
          Caption = 'Settings...'
        end
        object OnHookedTrack2: TMenuItem
          Caption = 'On Hooked Track'
        end
        object OnGameCentre1: TMenuItem
          Caption = 'On Game Centre'
        end
        object Pan1: TMenuItem
          Caption = 'Pan'
        end
      end
      object RangeRings1: TMenuItem
        Caption = 'Range Rings'
        Visible = False
        object Settings1: TMenuItem
          Caption = 'Settings'
        end
        object OnHookedTrack1: TMenuItem
          Caption = 'On Hooked Track'
        end
      end
      object Filters1: TMenuItem
        Caption = 'Filters...'
        Visible = False
      end
      object Overrides1: TMenuItem
        Caption = 'Overrides...'
        Visible = False
      end
      object History1: TMenuItem
        Caption = 'History...'
        Visible = False
      end
    end
    object Hook1: TMenuItem
      Caption = 'Hook'
      Visible = False
      object Next1: TMenuItem
        Caption = 'Next'
      end
      object Previous1: TMenuItem
        Caption = 'Previous'
      end
      object rackTable1: TMenuItem
        Caption = 'Track Table'
        object Add1: TMenuItem
          Caption = 'Add'
        end
        object Remove1: TMenuItem
          Caption = 'Remove'
        end
      end
      object AssumeControl1: TMenuItem
        Caption = 'Assume Control'
        object HookedTrack1: TMenuItem
          Caption = 'Hooked Track'
        end
        object CommandPlatform1: TMenuItem
          Caption = 'Command Platform'
        end
      end
    end
    object rack1: TMenuItem
      Caption = 'Track'
      Visible = False
      object Characteristics1: TMenuItem
        Caption = 'Characteristics'
        object Domain1: TMenuItem
          Caption = 'Domain'
          object A1: TMenuItem
            Caption = 'Air'
            Checked = True
          end
          object Surface1: TMenuItem
            Caption = 'Surface'
          end
          object Subsurface1: TMenuItem
            Caption = 'Subsurface'
          end
          object Land1: TMenuItem
            Caption = 'Land'
          end
          object General1: TMenuItem
            Caption = 'General'
          end
        end
        object IDentity1: TMenuItem
          Caption = 'Identity'
        end
        object PlatformType1: TMenuItem
          Caption = 'Platform Type'
        end
        object Propulsion1: TMenuItem
          Caption = 'Propulsion Type '
        end
        object Edit1: TMenuItem
          Caption = 'Edit'
        end
      end
      object MErge1: TMenuItem
        Caption = 'Merge'
      end
      object Split1: TMenuItem
        Caption = 'Split'
      end
      object Datalink1: TMenuItem
        Caption = 'Datalink'
        object o1: TMenuItem
          Caption = 'To'
        end
        object From1: TMenuItem
          Caption = 'From'
        end
      end
      object Number1: TMenuItem
        Caption = 'Number'
        object Automatic1: TMenuItem
          Caption = 'Automatic'
        end
        object Manual1: TMenuItem
          Caption = 'Manual...'
        end
      end
      object History2: TMenuItem
        Caption = 'History'
      end
      object InitiateTMA1: TMenuItem
        Caption = 'Initiate TMA'
      end
      object Sonobuoys1: TMenuItem
        Caption = 'Sonobuoys'
        object OperatingMode1: TMenuItem
          Caption = 'Operating Mode'
        end
        object Depth1: TMenuItem
          Caption = 'Depth'
        end
        object Monitor1: TMenuItem
          Caption = 'Monitor'
        end
        object Destroy1: TMenuItem
          Caption = 'Destroy'
        end
      end
      object Break1: TMenuItem
        Caption = 'Break All Fire Control Asset Assignments'
      end
      object RangeControlandBlindZone1: TMenuItem
        Caption = 'Range Circle and Blind Zones'
        object ClearforHookedTracks1: TMenuItem
          Caption = 'Clear for Hooked Tracks'
        end
        object ClearforAllTracks1: TMenuItem
          Caption = 'Clear for All Tracks'
        end
      end
      object Remove2: TMenuItem
        Caption = 'Remove'
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      Visible = False
      object Cursor1: TMenuItem
        Caption = 'Cursor'
        object Anchor1: TMenuItem
          Caption = 'Anchor'
        end
        object Origin1: TMenuItem
          Caption = 'Origin...'
        end
        object Select1: TMenuItem
          Caption = 'Select...'
        end
        object SendEndPointExactly1: TMenuItem
          Caption = 'Send End Point Exactly...'
        end
      end
      object Overlays1: TMenuItem
        Caption = 'Overlays...'
      end
      object Formation1: TMenuItem
        Caption = 'Formation...'
      end
      object argetIntercept1: TMenuItem
        Caption = 'Target Intercept...'
      end
      object argetPriorityA1: TMenuItem
        Caption = 'Target Priority Assessment...'
      end
      object Opotions1: TMenuItem
        Caption = 'Opotions...'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      Visible = False
      object Contents1: TMenuItem
        Caption = 'Contents'
      end
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
  object pmSensor: TPopupMenu
    AutoLineReduction = maManual
    MenuAnimation = [maTopToBottom]
    OnChange = pmSensorChange
    Left = 1048
    Top = 8
    object damage1: TMenuItem
      Caption = 'Damage'
      OnClick = damage1Click
    end
    object fixed1: TMenuItem
      Caption = 'Repair'
      OnClick = fixed1Click
    end
  end
  object pmWeapon: TPopupMenu
    OnChange = pmWeaponChange
    Left = 920
    Top = 8
    object dam1: TMenuItem
      Caption = 'Damage'
      OnClick = dam1Click
    end
    object Repair1: TMenuItem
      Caption = 'Repair'
      OnClick = Repair1Click
    end
    object SetAvailableQuantity2: TMenuItem
      Caption = 'Set Available Quantity'
      OnClick = SetAvailableQuantity2Click
    end
  end
  object pmCountermeasure: TPopupMenu
    OnChange = pmCountermeasureChange
    Left = 984
    Top = 8
    object Damage2: TMenuItem
      Caption = 'Damage'
      OnClick = Damage2Click
    end
    object Repair2: TMenuItem
      Caption = 'Repair'
      OnClick = Repair2Click
    end
    object SetAvailableQuantity1: TMenuItem
      Caption = 'Set Available Quantity'
      OnClick = SetAvailableQuantity1Click
    end
  end
  object pmState: TPopupMenu
    OnChange = pmStateChange
    Left = 1216
    Top = 8
  end
  object pmEmbarked: TPopupMenu
    AutoLineReduction = maManual
    OnChange = pmEmbarkedChange
    Left = 1160
    Top = 8
    object Setquantity1: TMenuItem
      Caption = 'Set quantity'
      OnClick = Setquantity1Click
    end
    object Setreadyingtime1: TMenuItem
      Tag = 1
      Caption = 'Set readying time'
      OnClick = Setreadyingtime1Click
    end
  end
  object ImageList1: TImageList
    ShareImages = True
    Left = 576
    Top = 8
    Bitmap = {
      494C010108000A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0015131000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A0000000000FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A00FFC87A000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A0000000000FFC87A00FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000800080008000FFFF800080008000FFFF
      800080008000FFFF800080008000FFFF800080008000C0078000800080008001
      81C081C081C0FC0181C081C081C0FF3F81C081C081C0FF7F800080008000FF7F
      800080008000FFFF800080008000FFFF800080008000FFFF800080008000FFFF
      800080008000FFFFFFFFFFFFFFFFFFFFC001800080008000A002800080008000
      9004800080008000880880008000800084108000800080008220800080008000
      814081C081C081C0808081C081C081C0814081C081C081C08220800080008000
      841080008000800088088000800080009004800080008000A002800080008000
      C001800080008000FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ilSensor: TImageList
    Left = 632
    Top = 8
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A0000000000000000000000
      000000000000FFC87A00FFC87A0000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000FFC87A00FFC87A000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000FFC87A00000000000000000000000000FFC8
      7A00FFC87A0000000000000000000000000000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A000000000000000000000000000000000000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A0000000000FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A0000000000FFC87A0000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A0000000000FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A0000000000FFC87A000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A0000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A000000000000000000FFC8
      7A0000000000FFC87A0000000000000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000000000000000000000000000FFC87A0000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      000000000000FFC87A000000000000000000FFC87A000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A0000000000000000000000000000000000FFC87A000000000000000000FFC8
      7A0000000000FFC87A0000000000000000000000000000000000000000000000
      00000000000000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A0000000000000000000000000000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC8
      7A00FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A00FFC87A00FFC87A000000000000000000FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A000000
      0000FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A0000000000FFC87A000000000000000000FFC87A00000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A000000000000000000FFC87A00000000000000000000000000000000000000
      00000000000000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000FFC87A000000
      0000FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A0000000000FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      000000000000FFC87A000000000000000000FFC87A000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC8
      7A00FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A00FFC87A00FFC87A0000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000FFC87A000000
      0000FFC87A00000000000000000000000000FFC87A000000000000000000FFC8
      7A0000000000000000000000000000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000BC797FFE00000000
      9EF37FFE00000000CEE7BFFD00000000E00FBFFD00000000E28FFFFF00000000
      8823FFFF00000000A82BDFFB000000008003DFFB00000000A82BE00700000000
      8283E00700000000F29FFFFF00000000E00FFFFF00000000CFE7FFFF00000000
      9FF3FFFF00000000FFFFFFFF00000000FFFFFFFFFFFFBF7EFF07FE3FFF7FDF7D
      FE23FE3FF81FEF7BF831FF7FF76BF777F038FF7FAF77FB6FC318FC1FCF6BFD5F
      819CF147B41DFE3F999CC551B83DFF7F999CD555BC1DFE3F819CC001B82DFD5F
      C318D555D773FB6FF038C551EF75F777F831F147D76FEF7BFE23FC1FF81FDF7D
      FF07FFFFFF7FBF7EFFFFFFFFFFFF7F7F00000000000000000000000000000000
      000000000000}
  end
  object ilWeapon: TImageList
    Left = 688
    Top = 8
    Bitmap = {
      494C010105000700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000000000000000FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A000000000000000000FFC87A0000000000FFC87A00000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A00000000000000000000000000000000000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A000000000000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000000000000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00000000000000000000000000FFC87A000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000FFC87A00FFC87A0000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A00FFC87A0000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A000000000000000000FFC87A000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000FFC87A000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00000000000000000000000000FFC87A000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A0000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F067000000000000E07B000000000000
      C07D000000000000807E000000000000807E000000000000007F000000000000
      007F00000000000000000000000000007F000000000000007F00000000000000
      BF00000000000000BF00000000000000DF01000000000000EF03000000000000
      F307000000000000FC1F000000000000FFFFF5D7F9CFF3FFFFFFF6B7F7F7F3FF
      FFFFF777EFFBF9FFFFFFFBEFEFFBF9FFE01FFDDFDFFDF8FFDFEEFDDFDFFD9CFF
      BFF5FDDFDFFD867F7FFBFDDFEFFBC27FBFF5FDDFEFFBF36FDFEEFDDFE7F3FE07
      E01FFDDFC9C9FF0FFFFFFDDF9C1CFF07FFFFFDDFBF7EFE07FFFFFDDFFF7FFFE3
      FFFFFEBFFF7FFFF9FFFFFF7FFF7FFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 848
    Top = 8
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      00000000000000000000FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A00FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A0000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC8
      7A00FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A000000
      0000FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A000000000000000000FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000FFC87A000000
      0000FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A000000000000000000FFC87A00FFC87A00FFC87A000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A000000000000000000FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      000000000000FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000FFC87A00FFC87A0000000000000000000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A000000000000000000000000000000000000000000FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A000000000000000000FFC8
      7A0000000000FFC87A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A0000000000000000000000000000000000FFC87A0000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0015131000000000000000000000000000FFC87A00FFC8
      7A0000000000000000000000000000000000FFC87A000000000000000000FFC8
      7A0000000000FFC87A0000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A0000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000FFC87A00FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A00FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      0000FFC87A00FFC87A000000000000000000FFC87A000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A000000000000000000FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000FFC87A000000
      0000FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000FFC87A00FFC8
      7A00FFC87A0000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      0000FFC87A00000000000000000000000000FFC87A000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFF07DE3C0000
      0001FE23CF7900003FF9F831E77300000001F038F0070000FFFFC318F1470000
      FFF9819CC4110000E731999CD4150000CE31999CC00100008C21819CD4150000
      0001C318C14100008C21F038F94F0000CE71F831F0070000E739FE23E7F30000
      FFFFFF07CFF90000FFFFFFFFFFFF0000FFFFFFFFFFFFF3FFFFFFFF7FFE3FF3FF
      FFFFF81FFE3FF9FFFFFFF76BFF7FF9FFC007AF77FF7FF8FF8001CF6BFC1F9CFF
      FC01B41DF147867FFF3FB83DC551C27FFF7FBC1DD555F36FFF7FB82DC001FE07
      FFFFD773D555FF0FFFFFEF75C551FF07FFFFD76FF147FE07FFFFF81FFC1FFFE3
      FFFFFF7FFFFFFFF9FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ilCountermeasure: TImageList
    Left = 768
    Top = 8
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      00000000000000000000FFC87A00FFC87A00FFC87A0000000000000000000000
      000000000000FFC87A00FFC87A0000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000FFC87A00FFC87A000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000FFC87A00000000000000000000000000FFC8
      7A00FFC87A0000000000000000000000000000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A000000000000000000000000000000000000000000FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A0000000000FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A0000000000FFC87A0000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A0000000000FFC8
      7A0000000000FFC87A00FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A0000000000FFC87A000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000FFC87A0000000000FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A0000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC87A00FFC87A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A0000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000FFC87A000000000000000000FFC87A00FFC87A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A0000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A000000000000000000FFC87A0000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A000000000000000000FFC87A0000000000FFC8
      7A000000000000000000FFC87A00000000000000000000000000000000000000
      000000000000FFC87A000000000000000000FFC87A000000000000000000FFC8
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A00FFC87A00000000000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      00000000000000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A000000000000000000FFC87A0000000000FFC8
      7A000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      000000000000000000000000000000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A0000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A000000000000000000FFC87A0000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A000000000000000000FFC87A0000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A0000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A00FFC87A00000000000000
      00000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A000000000000000000FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A000000000000000000FFC87A0000000000FFC8
      7A000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A0000000000FFC87A0000000000FFC87A000000
      000000000000000000000000000000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A0000000000FFC87A0000000000000000000000
      0000FFC87A00FFC87A00000000000000000000000000FFC87A00FFC87A000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC87A000000000000000000FFC87A000000000000000000FFC8
      7A000000000000000000000000000000000000000000FFC87A00FFC87A00FFC8
      7A000000000000000000FFC87A00FFC87A00FFC87A00FFC87A0000000000FFC8
      7A00FFC87A00FFC87A00FFC87A000000000000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A000000000000000000FFC87A0000000000FFC8
      7A000000000000000000FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000000000000000
      0000FFC87A00000000000000000000000000FFC87A0000000000000000000000
      0000FFC87A000000000000000000000000000000000000000000FFC87A00FFC8
      7A00000000000000000000000000FFC87A00FFC87A0000000000000000000000
      0000FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A000000
      0000FFC87A000000000000000000FFC87A0000000000FFC87A00000000000000
      0000FFC87A0000000000FFC87A0000000000FFC87A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFC87A0000000000000000000000000000000000FFC8
      7A0000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000FFC87A000000000000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A0000000000000000000000000000000000FFC8
      7A00FFC87A00000000000000000000000000FFC87A00FFC87A00000000000000
      000000000000FFC87A00FFC87A0000000000FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00000000000000000000000000FFC87A000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      00000000000000000000FFC87A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFC87A00000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000000000000000000000000000FFC87A0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000BC797FFE00000000
      9EF37FFE00000000CEE7BFFD00000000E00FBFFD00000000E28FFFFF00000000
      8823FFFF00000000A82BDFFB000000008003DFFB00000000A82BE00700000000
      8283E00700000000F29FFFFF00000000E00FFFFF00000000CFE7FFFF00000000
      9FF3FFFF00000000FFFFFFFF00000000FFFFFFFFFFFFBF7EFFFFFFFFFFFFDF7D
      00010001E739EF7B3FF97FFDD6B5F77700010001B5ADFB6FFFFFFFFF739DFD5F
      FFF9FFFFB5ADFE3FE731E739D6B5FF7FCE31D6B5E739FE3F8C21B5ADFFFFFD5F
      0001739DFFFFFB6F8C21B5AD0001F777CE71D6B57FFDEF7BE739E7390001DF7D
      FFFFFFFFFFFFBF7EFFFFFFFFFFFF7F7F00000000000000000000000000000000
      000000000000}
  end
  object pmDetectionStatus: TPopupMenu
    Left = 1104
    Top = 8
    object Normal1: TMenuItem
      Caption = 'Normal'
      OnClick = DetectabilityClick
    end
    object AlwaysDetected1: TMenuItem
      Tag = 3
      Caption = 'Always Detected'
      OnClick = DetectabilityClick
    end
    object Detectedbypassivesensoronly1: TMenuItem
      Tag = 2
      Caption = 'Detected by passive sensor only'
      OnClick = DetectabilityClick
    end
    object NeverDetected1: TMenuItem
      Tag = 1
      Caption = 'Never Detected'
      OnClick = DetectabilityClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 328
  end
  object pmCubicleGroup: TPopupMenu
    Left = 1088
    Top = 56
  end
  object pmDLForce: TPopupMenu
    Left = 736
    Top = 56
    object ForceRed1: TMenuItem
      Tag = 1
      Caption = 'Force Red'
      OnClick = ForceRed1Click
    end
    object ForceYellow1: TMenuItem
      Tag = 2
      Caption = 'Force Yellow'
      OnClick = ForceRed1Click
    end
    object ForceBlue1: TMenuItem
      Tag = 3
      Caption = 'Force Blue'
      OnClick = ForceRed1Click
    end
    object ForceGreen1: TMenuItem
      Tag = 4
      Caption = 'Force Green'
      OnClick = ForceRed1Click
    end
    object NoForce1: TMenuItem
      Tag = 5
      Caption = 'No Force'
      OnClick = ForceRed1Click
    end
    object ForceBlack1: TMenuItem
      Tag = 6
      Caption = 'Force Black'
      OnClick = ForceRed1Click
    end
  end
  object pmDLBand: TPopupMenu
    Left = 776
    Top = 56
    object HF1: TMenuItem
      Tag = 1
      Caption = 'HF'
      OnClick = HF1Click
    end
    object UHFVHF1: TMenuItem
      Tag = 2
      Caption = 'UHF/VHF'
      OnClick = HF1Click
    end
  end
  object pmPlatformLV: TPopupMenu
    Left = 848
    Top = 56
    object Repair3: TMenuItem
      Caption = 'Repair'
      OnClick = Repair3Click
    end
    object RepairAll1: TMenuItem
      Caption = 'Repair All'
      OnClick = RepairAll1Click
    end
  end
  object TimerEngage: TTimer
    Enabled = False
    OnTimer = TimerEngageTimer
    Left = 856
    Top = 624
  end
  object TimerLaunch: TTimer
    Enabled = False
    OnTimer = TimerLaunchTimer
    Left = 920
    Top = 624
  end
  object ILDataLink: TImageList
    Left = 624
    Top = 96
    Bitmap = {
      494C010104000600040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7C27700FBC57800FBC5
      7800FBC57800FBC57800FBC57800FBC57800FBC57800FBC57800FBC57800FBC5
      7800FBC57800FBC57800F7C27700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000FFC87A0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      00000000000000000000FFC87A00FFC87A00000000000000000000000000FFC8
      7A00FFC87A0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      000000000000FFC87A0000000000FFC87A000000000000000000FFC87A000000
      0000FFC87A0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC5780000000000000000000000000000000000FFC8
      7A00FFC87A000000000000000000FFC87A0000000000FFC87A00000000000000
      0000FFC87A0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000FFC87A00FFC87A0000000000000000000000
      0000FFC87A0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000FFC87A000000000000000000000000000000
      0000FFC87A0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000FBC57800FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00FBC57800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FFC87A00FFC8
      7A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC87A00FFC8
      7A00FFC87A00FFC87A00000000000000000000000000F7C27700FBC57800FBC5
      7800FBC57800FBC57800FBC57800FBC57800FBC57800FBC57800FBC57800FBC5
      7800FBC57800FBC57800F7C27700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF8001FFFFFFFFFFFF
      8001FFFFFFFFFFFF8001FFFFC003C0038001FFFFC003C0038001FEF7C003C003
      83C1FCE7C003C00383C1FAD7C003C00383C1E6B7C003C00383C1FE77C003C003
      8001FEF7C003C0038001FFFFC003C0038001FFFFC003C0038001FFFFC003C003
      8001FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmDataLink: TPopupMenu
    Left = 664
    Top = 96
    object DataLink11: TMenuItem
      Tag = 1
      Caption = 'Datalink 1'
      OnClick = DataLink11Click
    end
    object DataLink21: TMenuItem
      Tag = 2
      Caption = 'Datalink 2'
      OnClick = DataLink11Click
    end
    object Datalink31: TMenuItem
      Tag = 3
      Caption = 'Datalink 3'
      OnClick = DataLink11Click
    end
  end
end
