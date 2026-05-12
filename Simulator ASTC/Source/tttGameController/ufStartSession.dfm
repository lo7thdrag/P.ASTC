object frmStartSession: TfrmStartSession
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 20
  Caption = 'Start Session'
  ClientHeight = 431
  ClientWidth = 619
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
  PixelsPerInch = 96
  TextHeight = 14
  object lvScenario: TListView
    Left = 0
    Top = 0
    Width = 619
    Height = 370
    Align = alClient
    Columns = <
      item
        Caption = 'Name'
        Width = 300
      end
      item
        Caption = 'Type'
        Width = 120
      end
      item
        Caption = 'Date / Time'
        Width = 150
      end
      item
        Width = 10
      end>
    GridLines = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnChange = lvScenarioChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 619
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnCancel: TButton
      Left = 523
      Top = 23
      Width = 75
      Height = 25
      Align = alCustom
      Anchors = [akRight, akBottom]
      Caption = '&Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOK: TButton
      Left = 442
      Top = 23
      Width = 75
      Height = 25
      Align = alCustom
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
  end
end
