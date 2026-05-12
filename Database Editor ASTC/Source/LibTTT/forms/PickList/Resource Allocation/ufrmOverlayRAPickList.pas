unit ufrmOverlayRAPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uDBAsset_GameEnvironment,
  newClassASTT,  uDBAssetObject, Vcl.Imaging.pngimage;

type
  TfrmOverlayRAPickList = class(TForm)
    btnFilter: TButton;
    pnlButton: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    imgExercise: TImage;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbOverlayAvailable: TListBox;
    lbOverlaySelect: TListBox;
    pnlSparatorHor2: TPanel;
    Image2: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbOverlayAvailableClick(Sender: TObject);
    procedure lbOverlaySelectClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FSelectedResourceAlloc : TResource_Allocation;

    FAllOverlayDefList : TList;
    FAllOverlayOnRAList : TList;

    FOverlayDef : TOverlay_Definition;
    FSelectedOverlayMapping : TResource_Overlay_Mapping;

  public
    isNoCancel : Boolean;

    procedure UpdateOverlayList;
    property SelectedResourceAlloc : TResource_Allocation read FSelectedResourceAlloc write FSelectedResourceAlloc;
  end;

var
  frmOverlayRAPickList: TfrmOverlayRAPickList;

implementation

uses
  uDataModuleTTT, ufrmOverlaySummary;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmOverlayRAPickList.FormCreate(Sender: TObject);
begin
  FAllOverlayDefList := TList.Create;
  FAllOverlayOnRAList := TList.Create;
end;

procedure TfrmOverlayRAPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateOverlayList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmOverlayRAPickList.btnAddClick(Sender: TObject);
var
  OverlayMapping : TResource_Overlay_Mapping;
begin
  if lbOverlayAvailable.ItemIndex = -1 then
    Exit;

  OverlayMapping := TResource_Overlay_Mapping.Create;

  with OverlayMapping.FData do
  begin
    Resource_Alloc_Index := FSelectedResourceAlloc.FData.Resource_Alloc_Index;
    Overlay_Index := FOverlayDef.FData.Overlay_Index;
  end;

  if dmTTT.InsertResourceOverlayMapping(OverlayMapping.FData)then
    isNoCancel := True;

  OverlayMapping.Free;

  UpdateOverlayList;
end;

procedure TfrmOverlayRAPickList.btnRemoveClick(Sender: TObject);
begin
  if lbOverlaySelect.ItemIndex = -1 then
    Exit;

  with FSelectedOverlayMapping.FData do
  begin
    if dmTTT.DeleteResourceOverlayMapping(2, Overlay_Instance_Index) then
      isNoCancel := True;
  end;

  UpdateOverlayList;
end;

procedure TfrmOverlayRAPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOverlayRAPickList.lbOverlayAvailableClick(Sender: TObject);
begin
  if lbOverlayAvailable.ItemIndex = -1 then
    Exit;

  FOverlayDef := TOverlay_Definition(lbOverlayAvailable.Items.Objects[lbOverlayAvailable.ItemIndex]);
end;

procedure TfrmOverlayRAPickList.lbOverlaySelectClick(Sender: TObject);
begin
  if lbOverlaySelect.ItemIndex = -1 then
    Exit;

  FSelectedOverlayMapping := TResource_Overlay_Mapping(lbOverlaySelect.Items.Objects[lbOverlaySelect.ItemIndex]);
end;

procedure TfrmOverlayRAPickList.UpdateOverlayList;
var
  i, j : Integer;
  overlay : TOverlay_Definition;
  OverlayMaping : TResource_Overlay_Mapping;
  found : Boolean;

begin
  lbOverlayAvailable.Items.Clear;
  lbOverlaySelect.Items.Clear;

  dmTTT.GetAllOverlayDef(FAllOverlayDefList);
  dmTTT.GetResourceOverlayMapping(FSelectedResourceAlloc.FData.Resource_Alloc_Index, FAllOverlayOnRAList);

  for i := 0 to FAllOverlayDefList.Count - 1 do
  begin
    overlay := FAllOverlayDefList.Items[i];
    found := False;

    for j := 0 to FAllOverlayOnRAList.Count - 1 do
    begin
      OverlayMaping := FAllOverlayOnRAList.Items[j];

      if overlay.FData.Overlay_Index = OverlayMaping.FData.Overlay_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbOverlaySelect.Items.AddObject(overlay.FData.Overlay_Identifier, overlay)
    else
      lbOverlayAvailable.Items.AddObject(overlay.FData.Overlay_Identifier, overlay);

  end;
end;

{$ENDREGION}

end.
