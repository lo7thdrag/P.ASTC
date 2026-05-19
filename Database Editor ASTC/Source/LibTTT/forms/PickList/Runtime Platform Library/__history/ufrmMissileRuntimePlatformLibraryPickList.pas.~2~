unit ufrmMissileRuntimePlatformLibraryPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Weapon, uDBAsset_Runtime_Platform_Library;

type
  TfrmMissileRuntimePlatformLibraryPickList = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllMissileDef: TListBox;
    lbAllMissileOnRPL: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllMissileDefClick(Sender: TObject);
    procedure lbAllMissileOnRPLClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FAllMissileDefList : TList;
    FAllMissileOnRPList : TList;

    FSelectedMissile : TMissile_On_Board;
    FSelectedPlatformLibrary : TPlatform_Library_Entry;
    FRuntimePlatformLibrary: TRuntime_Platform_Library;

    procedure UpdateMissileList;

  public
    isNoCancel : Boolean;
    property RuntimePlatformLibrary : TRuntime_Platform_Library read FRuntimePlatformLibrary write FRuntimePlatformLibrary;

  end;

var
  frmMissileRuntimePlatformLibraryPickList: TfrmMissileRuntimePlatformLibraryPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmMissileRuntimePlatformLibraryPickList.FormCreate(Sender: TObject);
begin
  FAllMissileDefList := TList.Create;
  FAllMissileOnRPList := TList.Create;
end;

procedure TfrmMissileRuntimePlatformLibraryPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateMissileList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmMissileRuntimePlatformLibraryPickList.btnAddClick(Sender: TObject);
var
  PlatformLibrary : TPlatform_Library_Entry;

begin
  if lbAllMissileDef.ItemIndex = -1 then
    Exit;

  PlatformLibrary := TPlatform_Library_Entry.Create;

  with PlatformLibrary.FData do
  begin
    Library_Index := FRuntimePlatformLibrary.FData.Platform_Library_Index;
    Platform_Type := 2;
    Missile_Index := FSelectedMissile.FDef.Missile_Index;
  end;

  if dmTTT.InsertPlatformLibraryEntry(PlatformLibrary.FData)then
    isNoCancel := True;

  PlatformLibrary.Free;

  UpdateMissileList;
end;

procedure TfrmMissileRuntimePlatformLibraryPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllMissileOnRPL.ItemIndex = -1 then
    Exit;

  if dmTTT.DeletePlatformLibraryEntry(2, FSelectedPlatformLibrary.FData.Library_Entry_Index)then
    isNoCancel := True;;

  UpdateMissileList;
end;

procedure TfrmMissileRuntimePlatformLibraryPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMissileRuntimePlatformLibraryPickList.lbAllMissileDefClick(Sender: TObject);
begin
  if lbAllMissileDef.ItemIndex = -1 then
    Exit;

  FSelectedMissile := TMissile_On_Board(lbAllMissileDef.Items.Objects[lbAllMissileDef.ItemIndex]);
end;

procedure TfrmMissileRuntimePlatformLibraryPickList.lbAllMissileOnRPLClick( Sender: TObject);
begin
  if lbAllMissileOnRPL.ItemIndex = -1 then
    Exit;

  FSelectedPlatformLibrary := TPlatform_Library_Entry(lbAllMissileOnRPL.Items.Objects[lbAllMissileOnRPL.ItemIndex]);
end;

procedure TfrmMissileRuntimePlatformLibraryPickList.UpdateMissileList;
var
  i, j : Integer;
  Missile : TMissile_On_Board;
  PlatformLibrary : TPlatform_Library_Entry;
  found : Boolean;
begin
  lbAllMissileDef.Items.Clear;
  lbAllMissileOnRPL.Items.Clear;

  dmTTT.GetAllMissileDef(FAllMissileDefList);
  dmTTT.GetAllMissilePlatformLibraryEntry(FRuntimePlatformLibrary.FData.Platform_Library_Index,FAllMissileOnRPList);

  for i := 0 to FAllMissileDefList.Count - 1 do
  begin
    Missile := FAllMissileDefList.Items[i];

    found := False;
    for j := 0 to FAllMissileOnRPList.Count - 1 do
    begin
      PlatformLibrary := FAllMissileOnRPList.Items[j];

      if PlatformLibrary.FData.Missile_Index = Missile.FDef.Missile_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllMissileOnRPL.Items.AddObject(Missile.FDef.Class_Identifier, PlatformLibrary)
    else
      lbAllMissileDef.Items.AddObject(Missile.FDef.Class_Identifier, Missile);
  end;
end;

{$ENDREGION}

end.
