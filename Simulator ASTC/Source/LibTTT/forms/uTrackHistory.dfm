object fTrackHistory: TfTrackHistory
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Track History'
  ClientHeight = 538
  ClientWidth = 419
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 16
    Width = 393
    Height = 474
    ActivePage = tsGeneral
    TabOrder = 0
    OnChange = PageControl1Change
    object tsAll: TTabSheet
      Caption = 'All'
      object btShowALll: TButton
        Left = 8
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Show All'
        TabOrder = 0
        OnClick = btShowAllClick
      end
      object btHideAll: TButton
        Left = 89
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Hide All'
        TabOrder = 1
        OnClick = btHideAllClick
      end
      object btClearSelected: TButton
        Left = 208
        Top = 408
        Width = 83
        Height = 25
        Caption = 'Clear Selected'
        TabOrder = 2
        Visible = False
        OnClick = btClearSelectedClick
      end
      object btClearAll: TButton
        Left = 297
        Top = 408
        Width = 75
        Height = 25
        Caption = 'Clear All'
        TabOrder = 3
        Visible = False
        OnClick = btClearAllClick
      end
      object lvAll: TListView
        Left = 8
        Top = 16
        Width = 364
        Height = 377
        Checkboxes = True
        Columns = <
          item
            Caption = 'Track'
            Width = 150
          end
          item
            Caption = 'Name'
            Width = 210
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnItemChecked = lvAllItemChecked
      end
    end
    object tsAir: TTabSheet
      Caption = 'Air'
      ImageIndex = 1
      object btClearAllAir: TButton
        Left = 297
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Clear All'
        TabOrder = 0
        Visible = False
        OnClick = btClearAllClick
      end
      object btClearSelectedAir: TButton
        Left = 208
        Top = 409
        Width = 83
        Height = 25
        Caption = 'Clear Selected'
        TabOrder = 1
        Visible = False
        OnClick = btClearSelectedClick
      end
      object btHideAllAir: TButton
        Left = 89
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Hide All'
        TabOrder = 2
        OnClick = btHideAllClick
      end
      object btShowAll: TButton
        Left = 8
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Show All'
        TabOrder = 3
        OnClick = btShowAllClick
      end
      object lvAir: TListView
        Left = 8
        Top = 16
        Width = 364
        Height = 377
        Checkboxes = True
        Columns = <
          item
            Caption = 'Track'
            Width = 150
          end
          item
            Caption = 'Name'
            Width = 210
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnItemChecked = lvAllItemChecked
      end
    end
    object tsSurface: TTabSheet
      Caption = 'Surface'
      ImageIndex = 2
      object btClearAllSurface: TButton
        Left = 297
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Clear All'
        TabOrder = 0
        Visible = False
        OnClick = btClearAllClick
      end
      object btClearSelectedSurface: TButton
        Left = 208
        Top = 409
        Width = 83
        Height = 25
        Caption = 'Clear Selected'
        TabOrder = 1
        Visible = False
        OnClick = btClearSelectedClick
      end
      object btHideALlSurface: TButton
        Left = 89
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Hide All'
        TabOrder = 2
        OnClick = btHideAllClick
      end
      object btShowALlSurface: TButton
        Left = 8
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Show All'
        TabOrder = 3
        OnClick = btShowAllClick
      end
      object lvSurface: TListView
        Left = 8
        Top = 16
        Width = 364
        Height = 377
        Checkboxes = True
        Columns = <
          item
            Caption = 'Track'
            Width = 150
          end
          item
            Caption = 'Name'
            Width = 210
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnItemChecked = lvAllItemChecked
      end
    end
    object tsSubsurface: TTabSheet
      Caption = 'Subsurface'
      ImageIndex = 3
      object btClearAllSubsurface: TButton
        Left = 297
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Clear All'
        TabOrder = 0
        Visible = False
        OnClick = btClearAllClick
      end
      object btClearSelectedSubsurface: TButton
        Left = 208
        Top = 409
        Width = 83
        Height = 25
        Caption = 'Clear Selected'
        TabOrder = 1
        Visible = False
        OnClick = btClearSelectedClick
      end
      object btHideAllSubsurface: TButton
        Left = 89
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Hide All'
        TabOrder = 2
        OnClick = btHideAllClick
      end
      object btShowAllSubsurface: TButton
        Left = 8
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Show All'
        TabOrder = 3
        OnClick = btShowAllClick
      end
      object lvSubsurface: TListView
        Left = 8
        Top = 16
        Width = 364
        Height = 377
        Checkboxes = True
        Columns = <
          item
            Caption = 'Track'
            Width = 150
          end
          item
            Caption = 'Name'
            Width = 210
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnItemChecked = lvAllItemChecked
      end
    end
    object tsLand: TTabSheet
      Caption = 'Land'
      ImageIndex = 4
      object btClearAllLand: TButton
        Left = 297
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Clear All'
        TabOrder = 0
        Visible = False
        OnClick = btClearAllClick
      end
      object btClearSelectedLand: TButton
        Left = 208
        Top = 409
        Width = 83
        Height = 25
        Caption = 'Clear Selected'
        TabOrder = 1
        Visible = False
        OnClick = btClearSelectedClick
      end
      object btHideAllLand: TButton
        Left = 89
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Hide All'
        TabOrder = 2
        OnClick = btHideAllClick
      end
      object btShowAllLand: TButton
        Left = 8
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Show All'
        TabOrder = 3
        OnClick = btShowAllClick
      end
      object lvLand: TListView
        Left = 8
        Top = 16
        Width = 364
        Height = 377
        Checkboxes = True
        Columns = <
          item
            Caption = 'Track'
            Width = 150
          end
          item
            Caption = 'Name'
            Width = 210
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnItemChecked = lvAllItemChecked
      end
    end
    object tsGeneral: TTabSheet
      Caption = 'General'
      ImageIndex = 5
      object btClearAllGeneral: TButton
        Left = 297
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Clear All'
        TabOrder = 0
        Visible = False
        OnClick = btClearAllClick
      end
      object btClearSelectedGeneral: TButton
        Left = 208
        Top = 409
        Width = 83
        Height = 25
        Caption = 'Clear Selected'
        TabOrder = 1
        Visible = False
        OnClick = btClearSelectedClick
      end
      object btHideAllGeneral: TButton
        Left = 89
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Hide All'
        TabOrder = 2
        OnClick = btHideAllClick
      end
      object btShowAllGeneral: TButton
        Left = 8
        Top = 409
        Width = 75
        Height = 25
        Caption = 'Show All'
        TabOrder = 3
        OnClick = btShowAllClick
      end
      object lvGeneral: TListView
        Left = 8
        Top = 16
        Width = 364
        Height = 377
        Checkboxes = True
        Columns = <
          item
            Caption = 'Track'
            Width = 150
          end
          item
            Caption = 'Name'
            Width = 210
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 4
        ViewStyle = vsReport
        OnItemChecked = lvAllItemChecked
      end
    end
  end
  object btClose: TButton
    Left = 312
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btCloseClick
  end
  object chk1: TCheckBox
    Left = 20
    Top = 500
    Width = 156
    Height = 17
    Caption = 'Show history for new tracks'
    TabOrder = 2
  end
end
