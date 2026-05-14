unit ufrmRuntimePlatformLibraryRAPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uDBAsset_Runtime_Platform_Library,
  newClassASTT, uDBAssetObject, Vcl.Imaging.pngimage;

type
  TfrmRuntimePlatformLibraryRAPickList = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbPlatformLibraryAvailable: TListBox;
    lbPlatformLibrarySelected: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbPlatformLibraryAvailableClick(Sender: TObject);
    procedure lbPlatformLibrarySelectedClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FSelectedResourceAlloc : TResource_Allocation;

    FAllRPLDefList : TList;
    FAllRPLOnRAList : TList;

    FRPLDef : TRuntime_Platform_Library;
    FSelectedRPLMapping : TResource_Library_Mapping;

  public
    isNoCancel : Boolean;

    procedure UpdateRPLList;
    property SelectedResourceAlloc : TResource_Allocation read FSelectedResourceAlloc write FSelectedResourceAlloc;
  end;

var
  frmRuntimePlatformLibraryRAPickList: TfrmRuntimePlatformLibraryRAPickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryResourceAllocation, ufrmRuntimePlatformLibrarySummary, ufrmUsage;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmRuntimePlatformLibraryRAPickList.FormCreate(Sender: TObject);
begin
  FAllRPLDefList := TList.Create;
  FAllRPLOnRAList := TList.Create;
end;

procedure TfrmRuntimePlatformLibraryRAPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateRPLList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmRuntimePlatformLibraryRAPickList.btnAddClick(Sender: TObject);
var
  RPLMapping : TResource_Library_Mapping;
begin
  if lbPlatformLibraryAvailable.ItemIndex = -1 then
    Exit;

  RPLMapping := TResource_Library_Mapping.Create;

  with RPLMapping.FData do
  begin
    Resource_Alloc_Index := FSelectedResourceAlloc.FData.Resource_Alloc_Index;
    Library_Index := FRPLDef.FData.Platform_Library_Index;
  end;

  if dmTTT.InsertResourceLibraryMapping(RPLMapping.FData)then
    isNoCancel := True;

  RPLMapping.Free;

  UpdateRPLList;
end;

procedure TfrmRuntimePlatformLibraryRAPickList.btnRemoveClick(Sender: TObject);
begin
  if lbPlatformLibrarySelected.ItemIndex = -1 then
    Exit;

  with FSelectedRPLMapping.FData do
  begin
    if dmTTT.DeleteResourceLibraryMapping(Resource_Alloc_Index, Library_Index) then
      isNoCancel := True;
  end;

  UpdateRPLList;
end;

procedure TfrmRuntimePlatformLibraryRAPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRuntimePlatformLibraryRAPickList.lbPlatformLibraryAvailableClick(Sender: TObject);
begin
 if lbPlatformLibraryAvailable.ItemIndex = -1 then
    Exit;

  FRPLDef := TRuntime_Platform_Library(lbPlatformLibraryAvailable.Items.Objects[lbPlatformLibraryAvailable.ItemIndex]);
end;

procedure TfrmRuntimePlatformLibraryRAPickList.lbPlatformLibrarySelectedClick(Sender: TObject);
begin
 if lbPlatformLibrarySelected.ItemIndex = -1 then
    Exit;

  FSelectedRPLMapping := TResource_Library_Mapping(lbPlatformLibrarySelected.Items.Objects[lbPlatformLibrarySelected.ItemIndex]);
end;

procedure TfrmRuntimePlatformLibraryRAPickList.UpdateRPLList;
var
  i, j : Integer;
  RPL : TRuntime_Platform_Library;
  RPLMapping : TResource_Library_Mapping;
  found : Boolean;
begin
  lbPlatformLibraryAvailable.Items.Clear;
  lbPlatformLibrarySelected.Items.Clear;

  dmTTT.GetAllRuntimePlatformLibraryDef(FAllRPLDefList);
  dmTTT.GetResourceLibraryMapping(FSelectedResourceAlloc.FData.Resource_Alloc_Index, FAllRPLOnRAList);

  for i := 0 to FAllRPLDefList.Count - 1 do
  begin
    RPL := FAllRPLDefList.Items[i];

    found := False;
    for j := 0 to FAllRPLOnRAList.Count - 1 do
    begin
      RPLMapping := FAllRPLOnRAList.Items[j];

      if RPLMapping.FData.Library_Index = RPL.FData.Platform_Library_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbPlatformLibrarySelected.Items.AddObject(RPL.FData.Library_Name,RPLMapping)
    else
      lbPlatformLibraryAvailable.Items.AddObject(RPL.FData.Library_Name,RPL);
  end;
end;

 {$ENDREGION}

end.
