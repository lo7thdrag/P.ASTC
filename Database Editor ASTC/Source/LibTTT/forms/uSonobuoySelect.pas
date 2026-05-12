unit uSonobuoySelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, uDBAsset_Sonobuoy, uDBAssetObject,
  uDBAsset_Runtime_Platform_Library;

type
  E_SonobuoySelectionCaller = (sscResourceAllocation,
    sscRuntimePlatformLibrary);

  TfSonobuoySelect = class(TForm)
    lbAllSonobuoy: TListBox;
    lbSonobuoySel: TListBox;
    btnAdd: TButton;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnEditMount: TButton;
    shp1: TShape;
    btnFilter: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllSonobuoyClick(Sender: TObject);
    procedure lbAllSonobuoyDblClick(Sender: TObject);
    procedure lbSonobuoySelClick(Sender: TObject);
    procedure lbSonobuoySelDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditMountClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FSonobuoySelectionCaller : E_SonobuoySelectionCaller;
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedForce : Integer;
    FSelectedRPL : TRuntime_Platform_Library;

    FSonobuoyList : TList;
    FSelectedSonobuoyList : TList;
    FSelectedSonobuoy : TSonobuoy_On_Board;
    FSelectedPlatInst : TPlatform_Instance;
    FSelectedPlatLib : TPlatform_Library_Entry;

    procedure UpdateSonobuoyListResAlloc;
    procedure UpdateSonobuoyListRuntimePlatLib;
  public
    property SonobuoySelectionCaller : E_SonobuoySelectionCaller
      read FSonobuoySelectionCaller write FSonobuoySelectionCaller;
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
    property SelectedRPL : TRuntime_Platform_Library read FSelectedRPL
      write FSelectedRPL;
  end;

var
  fSonobuoySelect : TfSonobuoySelect;

implementation

uses
  uDataModuleTTT, ufrmSummarySonobuoy;

{$R *.dfm}

procedure TfSonobuoySelect.lbAllSonobuoyClick(Sender: TObject);
begin
  FSelectedSonobuoy := TSonobuoy_On_Board(
    lbAllSonobuoy.Items.Objects[lbAllSonobuoy.ItemIndex]);
end;

procedure TfSonobuoySelect.lbAllSonobuoyDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfSonobuoySelect.lbSonobuoySelClick(Sender: TObject);
begin
  case FSonobuoySelectionCaller of
    sscResourceAllocation:
    begin
      FSelectedPlatInst := TPlatform_Instance(
        lbSonobuoySel.Items.Objects[lbSonobuoySel.ItemIndex]);
    end;
    sscRuntimePlatformLibrary:
    begin
      FSelectedPlatLib := TPlatform_Library_Entry(
        lbSonobuoySel.Items.Objects[lbSonobuoySel.ItemIndex]);
    end;
  end;
end;

procedure TfSonobuoySelect.lbSonobuoySelDblClick(Sender: TObject);
begin
  btnRemove.Click;
end;

procedure TfSonobuoySelect.UpdateSonobuoyListResAlloc;
var
  i, j : Integer;
  sonobuoy : TSonobuoy_On_Board;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllSonobuoy.Items.Clear;
  lbSonobuoySel.Items.Clear;

  dmTTT.GetAllSonobuoyDef(FSonobuoyList);
  dmTTT.GetPlatformInstance(FSelectedResourceAlloc.FData.Resource_Alloc_Index,
    4, FSelectedForce, FSelectedSonobuoyList);

  for i := 0 to FSonobuoyList.Count - 1 do
  begin
    sonobuoy := FSonobuoyList.Items[i];
    found := False;
    for j := 0 to FSelectedSonobuoyList.Count - 1 do
    begin
      platInst := FSelectedSonobuoyList.Items[j];
      if platInst.FData.Sonobuoy_Index = sonobuoy.FDef.Sonobuoy_Index then
      begin
        found := True;
        Break;
      end;
    end;
    if found then
      lbSonobuoySel.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllSonobuoy.Items.AddObject(sonobuoy.FDef.Class_Identifier, sonobuoy);
  end;
end;

procedure TfSonobuoySelect.UpdateSonobuoyListRuntimePlatLib;
var
  i, j : Integer;
  avaSonobuoy : TSonobuoy_On_Board;
  selSonobuoy : TPlatform_Library_Entry;
  found : Boolean;
begin
  lbAllSonobuoy.Items.Clear;
  lbSonobuoySel.Items.Clear;

  dmTTT.GetAllSonobuoyDef(FSonobuoyList);
  dmTTT.GetAllSonobuoyPlatformLibraryEntry(FSelectedRPL.FData.Platform_Library_Index,
    FSelectedSonobuoyList);

  for i := 0 to FSonobuoyList.Count - 1 do
  begin
    avaSonobuoy := FSonobuoyList.Items[i];

    found := False;
    for j := 0 to FSelectedSonobuoyList.Count - 1 do
    begin
      selSonobuoy := FSelectedSonobuoyList.Items[j];

      if selSonobuoy.FData.Sonobuoy_Index = avaSonobuoy.FDef.Sonobuoy_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbSonobuoySel.Items.AddObject(avaSonobuoy.FDef.Class_Identifier,
        selSonobuoy)
    else
      lbAllSonobuoy.Items.AddObject(avaSonobuoy.FDef.Class_Identifier,
        avaSonobuoy);
  end;
end;

procedure TfSonobuoySelect.btnAddClick(Sender: TObject);
var
  platInst : TPlatform_Instance;
  platLib : TPlatform_Library_Entry;
begin
  if lbAllSonobuoy.ItemIndex = -1 then
    Exit;

  case FSonobuoySelectionCaller of
    sscResourceAllocation:
    begin
      platInst := TPlatform_Instance.Create;

      with platInst do
      begin
        FData.Resource_Alloc_Index := FSelectedResourceAlloc.FData.
          Resource_Alloc_Index;
        FData.Platform_Type := 4;
        FData.Sonobuoy_Index := FSelectedSonobuoy.FDef.Sonobuoy_Index;
        FData.Instance_Name := FSelectedSonobuoy.FDef.Class_Identifier;
        FData.Force_Designation := FSelectedForce;
        FData.Track_ID := 'Son';

        if dmTTT.Check_PlatformInstance(FData.Instance_Name) then
        begin
          ShowMessage('Sonobuoy''s name already exist, try another name');
          Exit;
        end;
        dmTTT.InsertPlatformInstance(FData);
      end;

      platInst.Free;

      UpdateSonobuoyListResAlloc;
    end;
    sscRuntimePlatformLibrary:
    begin
      platLib := TPlatform_Library_Entry.Create;

      with platLib do
      begin
        FData.Library_Index := FSelectedRPL.FData.Platform_Library_Index;
        FData.Platform_Type := 7;
        FData.Sonobuoy_Index := FSelectedSonobuoy.FDef.Sonobuoy_Index;

        dmTTT.InsertPlatformLibraryEntry(FData);
      end;

      platLib.Free;

      UpdateSonobuoyListRuntimePlatLib;
    end;
  end;
end;

procedure TfSonobuoySelect.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfSonobuoySelect.btnCopyClick(Sender: TObject);
begin
  if lbAllSonobuoy.ItemIndex = -1 then
    Exit;
end;

procedure TfSonobuoySelect.btnEditClick(Sender: TObject);
begin
  if lbAllSonobuoy.ItemIndex = -1 then
    Exit;

  with frmSummarySonobuoy do
  begin
    SelectedSonobuoy := FSelectedSonobuoy;
    ShowModal;
  end;

  case FSonobuoySelectionCaller of
    sscResourceAllocation: UpdateSonobuoyListResAlloc;
    sscRuntimePlatformLibrary: UpdateSonobuoyListRuntimePlatLib;
  end;
end;

procedure TfSonobuoySelect.btnEditMountClick(Sender: TObject);
begin
  if lbSonobuoySel.ItemIndex = -1 then
    Exit;
end;

procedure TfSonobuoySelect.btnNewClick(Sender: TObject);
begin
  with frmSummarySonobuoy do
  begin
    SelectedSonobuoy := TSonobuoy_On_Board.Create;
    ShowModal;
  end;

  case FSonobuoySelectionCaller of
    sscResourceAllocation: UpdateSonobuoyListResAlloc;
    sscRuntimePlatformLibrary: UpdateSonobuoyListRuntimePlatLib;
  end;
end;

procedure TfSonobuoySelect.btnRemoveClick(Sender: TObject);
begin
  if lbSonobuoySel.ItemIndex = -1 then
    Exit;

  case FSonobuoySelectionCaller of
    sscResourceAllocation:
    begin
      with FSelectedPlatInst.FData do
        dmTTT.DeletePlatformInstance(2, Platform_Instance_Index);

      UpdateSonobuoyListResAlloc;
    end;
    sscRuntimePlatformLibrary:
    begin
      with FSelectedPlatLib.FData do
        dmTTT.DeletePlatformLibraryEntry(2, Library_Entry_Index);

      UpdateSonobuoyListRuntimePlatLib;
    end;
  end;
end;

procedure TfSonobuoySelect.FormShow(Sender: TObject);
begin
  case FSonobuoySelectionCaller of
    sscResourceAllocation: UpdateSonobuoyListResAlloc;
    sscRuntimePlatformLibrary: UpdateSonobuoyListRuntimePlatLib;
  end;
end;

procedure TfSonobuoySelect.FormCreate(Sender: TObject);
begin
  FSonobuoyList := TList.Create;
  FSelectedSonobuoyList := TList.Create;
end;

end.
