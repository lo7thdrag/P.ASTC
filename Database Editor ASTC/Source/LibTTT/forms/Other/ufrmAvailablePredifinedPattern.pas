unit ufrmAvailablePredifinedPattern;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uDBPattern;

type
  TfrmAvailablePredifinedPattern = class(TForm)
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    btnDelete: TImage;
    btnEdit: TImage;
    btnCopy: TImage;
    btnNew: TImage;
    pnlTableList: TPanel;
    lstPredifinedPatterns: TListBox;
    pnlHorizontal: TPanel;
    Image2: TImage;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);

    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);

  private
    FPredifinedPatternList : TList;
    FSelectedPredifinedPattern : TPredefined_Pattern;

     procedure UpdatePredifinedPatternList;
  end;

var
  frmAvailablePredifinedPattern: TfrmAvailablePredifinedPattern;

implementation

uses
  uDataModuleTTT, ufrmPredefinedPatternSummary, ufrmUsage;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmAvailablePredifinedPattern.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmAvailablePredifinedPattern.FormCreate(Sender: TObject);
begin
  FPredifinedPatternList := TList.Create;
end;

procedure TfrmAvailablePredifinedPattern.FormShow(Sender: TObject);
begin
  UpdatePredifinedPatternList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmAvailablePredifinedPattern.btnNewClick(Sender: TObject);
begin
  with frmPredefinedPatternSummary do
  begin
    IdAction := 1;
    SelectedPredefinedPattern := TPredefined_Pattern.Create;
    ShowModal;
  end;

  UpdatePredifinedPatternList;
end;

procedure TfrmAvailablePredifinedPattern.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;
begin
  if lstPredifinedPatterns.ItemIndex = -1 then
  begin
    ShowMessage('Select Predifined Pattern... !');
    Exit;
  end;

  with FSelectedPredifinedPattern do
  begin
    newClassName := FData.Pattern_Identifier + ' - Copy';

    count := dmTTT.GetRuntimePlatformLibraryDef(newClassName);

    if count > 0 then
      newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

    FData.Pattern_Identifier := newClassName;

//    dmTTT.InsertRuntimePlatformLibraryDef(FData);
//    dmTTT.InsertNoteStorage(7, FData.Pattern_Identifier, FNote);
  end;

  UpdatePredifinedPatternList;
end;

procedure TfrmAvailablePredifinedPattern.btnEditClick(Sender: TObject);
begin
  if lstPredifinedPatterns.ItemIndex = -1 then
  begin
    ShowMessage('Select Predifined Pattern... !');
    Exit;
  end;

  with frmPredefinedPatternSummary do
  begin
    IdAction := 2;
//    SelectedPredefinedPattern := TPredefined_Pattern;
    ShowModal;
  end;

  UpdatePredifinedPatternList;
end;

procedure TfrmAvailablePredifinedPattern.btnDeleteClick(Sender: TObject);
var
  warning : Integer;
begin
 with FSelectedPredifinedPattern.FData do
 begin
  if dmTTT.CekPredefinedPattern_byScripted(Pattern_Index) > 0 then
    begin
//       ShowMessage('Cannot delete, because is being used by some scripted point ("unchecked event" pattern type)');
//       Exit;
     if dmTTT.CekPredefinedPattern_byRadar(Pattern_Index) > 0 then
       begin
        ShowMessage('Cannot delete, because is already used by some radar');
        Exit;
        end
       else if dmTTT.CekPredefinedPattern_bySonar(Pattern_Index) > 0 then
       begin
        ShowMessage('Cannot delete, because is already used by some sonar');
        Exit;
        end;
        dmTTT.DeleteScriptedPatternPoint(1, Pattern_Index);
     end
    else if dmTTT.CekPredefinedPattern_byPatternPoint(Pattern_Index) > 0 then
    begin
     dmTTT.DeletePatternPoint(Pattern_Index);
//       ShowMessage('Cannot delete, because is being used by some pattern point ("checked event" pattern type)');
//       Exit;
     end;
      dmTTT.DeletePredefined_Pattern(Pattern_Index);
  end;
end;

procedure TfrmAvailablePredifinedPattern.btnUsageClick(Sender: TObject);
begin
  if lstPredifinedPatterns.ItemIndex = -1 then
  begin
    ShowMessage('Select Predifined Pattern... !');
    Exit;
  end;

  with frmUsage do
  begin
    UId := FSelectedPredifinedPattern.FData.Pattern_Index;
    name_usage := FSelectedPredifinedPattern.FData.Pattern_Identifier;
//    usage_title := 'On Board Vehicle:';
//    UIndex := 1;

    ShowModal;
  end;
end;

procedure TfrmAvailablePredifinedPattern.lbSingleClick(Sender: TObject);
begin
  FSelectedPredifinedPattern := TPredefined_Pattern(lstPredifinedPatterns.Items.Objects[lstPredifinedPatterns.ItemIndex]);
end;

procedure TfrmAvailablePredifinedPattern.UpdatePredifinedPatternList;
var
  i : Integer;
  predifinedpattern : TPredefined_Pattern;
begin
  lstPredifinedPatterns.Items.Clear;

  dmTTT.GetPredefinedPatternDef(FPredifinedPatternList);

  for i := 0 to FPredifinedPatternList.Count - 1 do
  begin
    predifinedpattern := FPredifinedPatternList.Items[i];
    lstPredifinedPatterns.Items.AddObject(predifinedpattern.FData.Pattern_Identifier, predifinedpattern);
  end;
end;

{$ENDREGION}

end.
