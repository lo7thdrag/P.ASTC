unit ufrmMineRuntimePlatformLibraryPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uDBAsset_Weapon, uDBAsset_Runtime_Platform_Library;

type
  TfrmMineRuntimePlatformLibraryPickList = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllMineDef: TListBox;
    lbAllMineOnRPL: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllMineDefClick(Sender: TObject);
    procedure lbAllMineOnRPLClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

   private
    FAllMineDefList : TList;
    FAllMineOnRPLList : TList;

    FSelectedMine : TMine_On_Board;
    FSelectedPlatformLibrary : TPlatform_Library_Entry;
    FRuntimePlatformLibrary: TRuntime_Platform_Library;

    procedure UpdateMineList;

  public
    isNoCancel : Boolean;
    property RuntimePlatformLibrary : TRuntime_Platform_Library read FRuntimePlatformLibrary write FRuntimePlatformLibrary;

  end;

var
  frmMineRuntimePlatformLibraryPickList: TfrmMineRuntimePlatformLibraryPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{ TfrmMineRuntimePlatformLibraryPickList }

{$REGION ' Form Handle '}

procedure TfrmMineRuntimePlatformLibraryPickList.FormCreate(Sender: TObject);
begin
  FAllMineDefList := TList.Create;
  FAllMineOnRPLList := TList.Create;
end;

procedure TfrmMineRuntimePlatformLibraryPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateMineList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmMineRuntimePlatformLibraryPickList.btnAddClick(Sender: TObject);
var
  PlatformLibrary : TPlatform_Library_Entry;

begin
  if lbAllMineDef.ItemIndex = -1 then
    Exit;

  PlatformLibrary := TPlatform_Library_Entry.Create;

  with PlatformLibrary.FData do
  begin
    Library_Index := FRuntimePlatformLibrary.FData.Platform_Library_Index;
    Platform_Type := 4;
    Mine_Index := FSelectedMine.FMine_Def.Mine_Index;
  end;

  if dmTTT.InsertPlatformLibraryEntry(PlatformLibrary.FData)then
    isNoCancel := True;

  PlatformLibrary.Free;

  UpdateMineList;
end;

procedure TfrmMineRuntimePlatformLibraryPickList.btnRemoveClick(Sender: TObject);
begin
  if lbAllMineOnRPL.ItemIndex = -1 then
    Exit;

  if dmTTT.DeletePlatformLibraryEntry(2, FSelectedPlatformLibrary.FData.Library_Entry_Index)then
    isNoCancel := True;;

  UpdateMineList;
end;

procedure TfrmMineRuntimePlatformLibraryPickList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMineRuntimePlatformLibraryPickList.lbAllMineDefClick(Sender: TObject);
begin
  if lbAllMineDef.ItemIndex = -1 then
    Exit;

  FSelectedMine := TMine_On_Board(lbAllMineDef.Items.Objects[lbAllMineDef.ItemIndex]);
end;

procedure TfrmMineRuntimePlatformLibraryPickList.lbAllMineOnRPLClick(Sender: TObject);
begin
  if lbAllMineOnRPL.ItemIndex = -1 then
    Exit;

  FSelectedPlatformLibrary := TPlatform_Library_Entry(lbAllMineOnRPL.Items.Objects[lbAllMineOnRPL.ItemIndex]);
end;

procedure TfrmMineRuntimePlatformLibraryPickList.UpdateMineList;
var
  i, j : Integer;
  Mine : TMine_On_Board;
  PlatformLibrary : TPlatform_Library_Entry;
  found : Boolean;
begin
  lbAllMineDef.Items.Clear;
  lbAllMineOnRPL.Items.Clear;

  dmTTT.GetAllMineDef(FAllMineDefList);
  dmTTT.GetAllMinePlatformLibraryEntry(FRuntimePlatformLibrary.FData.Platform_Library_Index,FAllMineOnRPLList);

  for i := 0 to FAllMineDefList.Count - 1 do
  begin
    Mine := FAllMineDefList.Items[i];

    found := False;
    for j := 0 to FAllMineOnRPLList.Count - 1 do
    begin
      PlatformLibrary := FAllMineOnRPLList.Items[j];

      if PlatformLibrary.FData.Mine_Index = Mine.FMine_Def.Mine_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllMineOnRPL.Items.AddObject(Mine.FMine_Def.Mine_Identifier, PlatformLibrary)
    else
      lbAllMineDef.Items.AddObject(Mine.FMine_Def.Mine_Identifier, Mine);
  end;
end;

 {$ENDREGION}

end.
