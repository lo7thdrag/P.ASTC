unit ufrmRadarIntervalRAPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, newClassASTT,
  Vcl.Imaging.pngimage;

type
  TfrmRadarIntervalRAPickList = class(TForm)
    btnFilter: TButton;
    pnlMain: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    lstIntervalAvailable: TListBox;
    lstIntervalSelect: TListBox;
    btnClose: TButton;
    edtSearch: TEdit;
    lbl1: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    imgBackground: TImage;
    pnlMainBackground: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstIntervalAvailableClick(Sender: TObject);
    procedure lstIntervalSelectClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);

  private
    FSelectedResourceAlloc : TResource_Allocation;

    FRadarIntervalList : TList;
    FSelectedRadarIntervalList : TList;
    FSelectedRadarInterval : TRadar_Interval_List;
    FSelectedRadarIntervalMapping : TResource_Interval_List_Mapping;

    procedure UpdateRadarIntervalList;
  public
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
  end;

var
  frmRadarIntervalRAPickList: TfrmRadarIntervalRAPickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryRadarInterval, uSimContainers;

{$R *.dfm}

procedure EnableComposited(WinControl:TWinControl);
var
  i:Integer;
  NewExStyle:DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for I := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

{$REGION ' Form Handle '}

procedure TfrmRadarIntervalRAPickList.FormCreate(Sender: TObject);
begin
  FRadarIntervalList          := TList.Create;
  FSelectedRadarIntervalList  := TList.Create;

  EnableComposited(pnlMainBackground);
end;

procedure TfrmRadarIntervalRAPickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(FRadarIntervalList);
  FreeItemsAndFreeList(FSelectedRadarIntervalList);
end;

procedure TfrmRadarIntervalRAPickList.FormShow(Sender: TObject);
begin
  UpdateRadarIntervalList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmRadarIntervalRAPickList.btnAddClick(Sender: TObject);
var
  resInterval : TResource_Interval_List_Mapping;
begin
  if lstIntervalAvailable.ItemIndex = -1 then
    Exit;

  resInterval := TResource_Interval_List_Mapping.Create;

  with resInterval do
  begin
    FData.Resource_Alloc_Index := FSelectedResourceAlloc.
      FData.Resource_Alloc_Index;
    FData.Interval_List_Index := FSelectedRadarInterval.
      FData.Interval_List_Index;

    dmTTT.InsertRadarInterval(FData);
  end;

  resInterval.Free;

  UpdateRadarIntervalList;
end;

procedure TfrmRadarIntervalRAPickList.btnRemoveClick(Sender: TObject);
begin
  if lstIntervalSelect.ItemIndex = -1 then
    Exit;

  with FSelectedRadarIntervalMapping.FData do
    dmTTT.DeleteRadarInterval(2, Interval_List_Index);

  UpdateRadarIntervalList;
end;

procedure TfrmRadarIntervalRAPickList.edtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    UpdateRadarIntervalList;
  end;
end;

procedure TfrmRadarIntervalRAPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRadarIntervalRAPickList.lstIntervalAvailableClick(Sender: TObject);
begin
  if lstIntervalAvailable.ItemIndex = -1 then
    Exit;
  FSelectedRadarInterval := TRadar_Interval_List(lstIntervalAvailable.Items.Objects[lstIntervalAvailable.ItemIndex]);
end;

procedure TfrmRadarIntervalRAPickList.lstIntervalSelectClick(Sender: TObject);
begin
  if lstIntervalSelect.ItemIndex = -1 then
    Exit;
  FSelectedRadarIntervalMapping := TResource_Interval_List_Mapping(lstIntervalSelect.Items.Objects[lstIntervalSelect.ItemIndex]);
end;

procedure TfrmRadarIntervalRAPickList.UpdateRadarIntervalList;
var
  i, j : Integer;
  interval : TRadar_Interval_List;
  resInterval : TResource_Interval_List_Mapping;
  found : Boolean;
begin
  lstIntervalAvailable.Items.Clear;
  lstIntervalSelect.Items.Clear;

  dmTTT.GetFilterRadarDef(FRadarIntervalList, edtSearch.Text);
  dmTTT.GetRadarInterval(FSelectedResourceAlloc.FData.Resource_Alloc_Index, FSelectedRadarIntervalList);

  for i := 0 to FRadarIntervalList.Count - 1 do
  begin
    interval := FRadarIntervalList.Items[i];

    found := False;
    for j := 0 to FSelectedRadarIntervalList.Count - 1 do
    begin
      resInterval := FSelectedRadarIntervalList.Items[j];

      if resInterval.FData.Interval_List_Index =
        interval.FData.Interval_List_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lstIntervalSelect.Items.AddObject(interval.FData.Interval_List_Identifier,
        resInterval)
    else
      lstIntervalAvailable.Items.AddObject(
        interval.FData.Interval_List_Identifier, interval);
  end;
end;

{$ENDREGION}

end.
