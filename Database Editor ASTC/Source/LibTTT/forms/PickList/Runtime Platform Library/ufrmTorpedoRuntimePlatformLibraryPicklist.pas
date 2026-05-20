unit ufrmTorpedoRuntimePlatformLibraryPicklist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Weapon, uDBAsset_Runtime_Platform_Library;

type
  TfrmTorpedoRuntimePlatformLibraryPicklist = class(TForm)
    pnlMain: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllTorprdoDef: TListBox;
    lbAllTorpedoOnRPL: TListBox;
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

    procedure lbAllTorpedoDefClick(Sender: TObject);
    procedure lbAllTorpedoOnRPLClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);

 private
    FAllTorpedoDefList : TList;
    FAllTorpedoOnRPList : TList;

    FSelectedTorpedo : TTorpedo_On_Board;
    FSelectedPlatformLibrary : TPlatform_Library_Entry;
    FRuntimePlatformLibrary: TRuntime_Platform_Library;

    procedure UpdateTorpedoList;

  public
    isNoCancel : Boolean;
    property RuntimePlatformLibrary : TRuntime_Platform_Library read FRuntimePlatformLibrary write FRuntimePlatformLibrary;
  end;

var
  frmTorpedoRuntimePlatformLibraryPicklist: TfrmTorpedoRuntimePlatformLibraryPicklist;

implementation

uses
  uDataModuleTTT, uSimContainers;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.FormCreate(Sender: TObject);
begin
  FAllTorpedoDefList := TList.Create;
  FAllTorpedoOnRPList := TList.Create;
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.FormDestroy(
  Sender: TObject);
begin
  FreeItemsAndFreeList(FAllTorpedoDefList);
  FreeItemsAndFreeList(FAllTorpedoOnRPList);
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateTorpedoList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.btnAddClick(Sender: TObject);
var
  PlatformLibrary : TPlatform_Library_Entry;

begin
  if lbAllTorprdoDef.ItemIndex = -1 then
    Exit;

  PlatformLibrary := TPlatform_Library_Entry.Create;

  with PlatformLibrary.FData do
  begin
    Library_Index := FRuntimePlatformLibrary.FData.Platform_Library_Index;
    Platform_Type := 3;
    Torpedo_Index:= FSelectedTorpedo.FDef.Torpedo_Index;
  end;

  if dmTTT.InsertPlatformLibraryEntry(PlatformLibrary.FData)then
    isNoCancel := True;

  PlatformLibrary.Free;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.btnRemoveClick(Sender: TObject);
begin
  if lbAllTorpedoOnRPL.ItemIndex = -1 then
    Exit;

  if dmTTT.DeletePlatformLibraryEntry(2, FSelectedPlatformLibrary.FData.Library_Entry_Index)then
    isNoCancel := True;;

  UpdateTorpedoList;
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.edtSearchKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    UpdateTorpedoList;
  end;
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.lbAllTorpedoDefClick(Sender: TObject);
begin
  if lbAllTorprdoDef.ItemIndex = -1 then
    Exit;

  FSelectedTorpedo := TTorpedo_On_Board(lbAllTorprdoDef.Items.Objects[lbAllTorprdoDef.ItemIndex]);
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.lbAllTorpedoOnRPLClick(Sender: TObject);
begin
  if lbAllTorpedoOnRPL.ItemIndex = -1 then
    Exit;

  FSelectedPlatformLibrary := TPlatform_Library_Entry(lbAllTorpedoOnRPL.Items.Objects[lbAllTorpedoOnRPL.ItemIndex]);
end;

procedure TfrmTorpedoRuntimePlatformLibraryPicklist.UpdateTorpedoList;
var
  i, j : Integer;
  Torpedo : TTorpedo_On_Board;
  PlatformLibrary : TPlatform_Library_Entry;
  found : Boolean;
begin
  lbAllTorprdoDef.Items.Clear;
  lbAllTorpedoOnRPL.Items.Clear;

  dmTTT.GetFilterTorpedoDef(FAllTorpedoDefList, edtSearch.Text);
  dmTTT.GetAllTorpedoPlatformLibraryEntry(FRuntimePlatformLibrary.FData.Platform_Library_Index,FAllTorpedoOnRPList);

  for i := 0 to FAllTorpedoDefList.Count - 1 do
  begin
    Torpedo := FAllTorpedoDefList.Items[i];

    found := False;
    for j := 0 to FAllTorpedoOnRPList.Count - 1 do
    begin
      PlatformLibrary := FAllTorpedoOnRPList.Items[j];

      if PlatformLibrary.FData.Torpedo_Index = Torpedo.FDef.Torpedo_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllTorpedoOnRPL.Items.AddObject(Torpedo.FDef.Class_Identifier, PlatformLibrary)
    else
      lbAllTorprdoDef.Items.AddObject(Torpedo.FDef.Class_Identifier, Torpedo);
  end;
end;

{$ENDREGION}

end.
