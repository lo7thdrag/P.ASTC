unit ufrmPredefinedPatternRAPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uDBAssetObject, uDBPattern, newClassASTT,
  Vcl.Imaging.pngimage;

type
  TfrmPredefinedPatternRAPickList = class(TForm)
    btnFilter: TButton;
    pnlMain: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    lstPredefinedAvailable: TListBox;
    lstPredefinedSelect: TListBox;
    btnClose: TButton;
    edtSearch: TEdit;
    lbl1: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstPredefinedAvailableClick(Sender: TObject);
    procedure lstPredefinedSelectClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);



  private
    FResourceAllocation : TResource_Allocation;

    FPrePatternList : TList;
    FSelectedPrePatternList : TList;
    FSelectedPrePattern : TPredefined_Pattern;
    FSelectedPrePatternMapping : TResource_Pattern_Mapping;

    procedure UpdatePrePatternList;
  public
    property ResourceAllocation : TResource_Allocation
      read FResourceAllocation write FResourceAllocation;
  end;

var
  frmPredefinedPatternRAPickList: TfrmPredefinedPatternRAPickList;

implementation

uses
  uDataModuleTTT, ufrmPredefinedPatternSummary, uSimContainers;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmPredefinedPatternRAPickList.FormCreate(Sender: TObject);
begin
  FPrePatternList := TList.Create;
  FSelectedPrePatternList := TList.Create;
end;

procedure TfrmPredefinedPatternRAPickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FPrePatternList);
  FreeItemsAndFreeList(FSelectedPrePatternList);
end;

procedure TfrmPredefinedPatternRAPickList.FormShow(Sender: TObject);
begin
  UpdatePrePatternList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmPredefinedPatternRAPickList.btnAddClick(Sender: TObject);
var
  resPattern : TResource_Pattern_Mapping;
begin
  if lstPredefinedAvailable.ItemIndex = -1 then
    Exit;

  resPattern := TResource_Pattern_Mapping.Create;

  with resPattern do
  begin
    FData.Resource_Alloc_Index := FResourceAllocation.FData.
      Resource_Alloc_Index;
    FData.Pattern_Index := FSelectedPrePattern.FData.Pattern_Index;

    dmTTT.InsertPredefinedPattern(FData);
  end;

  resPattern.Free;

  UpdatePrePatternList;
end;

procedure TfrmPredefinedPatternRAPickList.btnRemoveClick(Sender: TObject);
begin
  if lstPredefinedSelect.ItemIndex = -1 then
    Exit;

  with FSelectedPrePatternMapping.FData do
    dmTTT.DeletePredefinedPattern(2, Pattern_Instance_Index);

  UpdatePrePatternList;
end;

procedure TfrmPredefinedPatternRAPickList.edtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    UpdatePrePatternList;
  end;

end;

procedure TfrmPredefinedPatternRAPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPredefinedPatternRAPickList.lstPredefinedAvailableClick(Sender: TObject);
begin
  if lstPredefinedAvailable.ItemIndex = -1 then
    Exit;
  FSelectedPrePattern := TPredefined_Pattern(lstPredefinedAvailable.Items.Objects[lstPredefinedAvailable.ItemIndex])
end;

procedure TfrmPredefinedPatternRAPickList.lstPredefinedSelectClick(Sender: TObject);
begin
  if lstPredefinedSelect.ItemIndex = -1 then
    Exit;

  FSelectedPrePatternMapping := TResource_Pattern_Mapping(lstPredefinedSelect.Items.Objects[lstPredefinedSelect.ItemIndex]);
end;

procedure TfrmPredefinedPatternRAPickList.UpdatePrePatternList;
var
  i, j : Integer;
  pattern : TPredefined_Pattern;
  resPattern : TResource_Pattern_Mapping;
  found : Boolean;
begin
  lstPredefinedAvailable.Items.Clear;
  lstPredefinedSelect.Items.Clear;

//  dmTTT.GetFilterPredefiDef(FAllESMDefList, edtSearch.Text);
  dmTTT.GetPredefinedPatternDef(FPrePatternList);
  dmTTT.GetPredefinedPattern(FResourceAllocation.FData.Resource_Alloc_Index,
    FSelectedPrePatternList);

  for i := 0 to FPrePatternList.Count - 1 do
  begin
    pattern := FPrePatternList.Items[i];

    found := False;
    for j := 0 to FSelectedPrePatternList.Count - 1 do
    begin
      resPattern := FSelectedPrePatternList.Items[j];

      if resPattern.FData.Pattern_Index = pattern.FData.Pattern_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lstPredefinedSelect.Items.AddObject(pattern.FData.Pattern_Identifier,
        resPattern)
    else
      lstPredefinedAvailable.Items.AddObject(pattern.FData.Pattern_Identifier,
        pattern);
  end;
end;

{$ENDREGION}

end.
