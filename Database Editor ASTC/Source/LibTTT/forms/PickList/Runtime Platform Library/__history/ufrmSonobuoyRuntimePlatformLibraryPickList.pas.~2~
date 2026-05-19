unit ufrmSonobuoyRuntimePlatformLibraryPickList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uDBAssetObject, uDBAsset_Sonobuoy, uDBAsset_Runtime_Platform_Library;
type
  TfrmSonobuoyRuntimePlatformLibraryPickList = class(TForm)
    pnl3Button: TPanel;
    btnClose: TButton;
    pnlMain: TPanel;
    Image1: TImage;
    imgExercise: TImage;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    lbAllSonobuoyDef: TListBox;
    lbAllSonobuoyOnRPL: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllSonobuoyDefClick(Sender: TObject);
    procedure lbAllSonobuoyOnRPLClick(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FAllSonobuoyDefList : TList;
    FAllSonobuoyOnRPList : TList;

    FSelectedSonobuoy : TSonobuoy_On_Board;
    FSelectedPlatformLibrary : TPlatform_Library_Entry;
    FRuntimePlatformLibrary: TRuntime_Platform_Library;

    procedure UpdateSonobuoyList;

  public
    isNoCancel : Boolean;
    property RuntimePlatformLibrary : TRuntime_Platform_Library read FRuntimePlatformLibrary write FRuntimePlatformLibrary;

  end;

var
  frmSonobuoyRuntimePlatformLibraryPickList: TfrmSonobuoyRuntimePlatformLibraryPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.FormCreate(Sender: TObject);
begin
  FAllSonobuoyDefList := TList.Create;
  FAllSonobuoyOnRPList := TList.Create;
end;

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.FormShow(Sender: TObject);
begin
  isNoCancel := False;
  UpdateSonobuoyList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.btnAddClick(Sender: TObject);
var
  PlatformLibrary : TPlatform_Library_Entry;

begin
  if lbAllSonobuoyDef.ItemIndex = -1 then
    Exit;

  PlatformLibrary := TPlatform_Library_Entry.Create;

  with PlatformLibrary.FData do
  begin
    Library_Index := FRuntimePlatformLibrary.FData.Platform_Library_Index;
    Platform_Type := 7;
    Sonobuoy_Index:= FSelectedSonobuoy.FDef.Sonobuoy_Index;
  end;

  if dmTTT.InsertPlatformLibraryEntry(PlatformLibrary.FData)then
    isNoCancel := True;

  PlatformLibrary.Free;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.btnRemoveClick(Sender: TObject);
begin
 if lbAllSonobuoyOnRPL.ItemIndex = -1 then
    Exit;

 if dmTTT.DeletePlatformLibraryEntry(2, FSelectedPlatformLibrary.FData.Library_Entry_Index)then
    isNoCancel := True;;

  UpdateSonobuoyList;
end;

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.lbAllSonobuoyDefClick(Sender: TObject);
begin
  if lbAllSonobuoyDef.ItemIndex = -1 then
    Exit;

  FSelectedSonobuoy := TSonobuoy_On_Board(lbAllSonobuoyDef.Items.Objects[lbAllSonobuoyDef.ItemIndex]);
end;

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.lbAllSonobuoyOnRPLClick(Sender: TObject);
begin
  if lbAllSonobuoyOnRPL.ItemIndex = -1 then
    Exit;

  FSelectedPlatformLibrary := TPlatform_Library_Entry(lbAllSonobuoyOnRPL.Items.Objects[lbAllSonobuoyOnRPL.ItemIndex]);
end;

procedure TfrmSonobuoyRuntimePlatformLibraryPickList.UpdateSonobuoyList;
var
  i, j : Integer;
  Sonobuoy : TSonobuoy_On_Board;
  PlatformLibrary : TPlatform_Library_Entry;
  found : Boolean;
begin
  lbAllSonobuoyDef.Items.Clear;
  lbAllSonobuoyOnRPL.Items.Clear;

  dmTTT.GetAllSonobuoyDef(FAllSonobuoyDefList);
  dmTTT.GetAllSonobuoyPlatformLibraryEntry(FRuntimePlatformLibrary.FData.Platform_Library_Index,FAllSonobuoyOnRPList);

  for i := 0 to FAllSonobuoyDefList.Count - 1 do
  begin
    Sonobuoy := FAllSonobuoyDefList.Items[i];

    found := False;
    for j := 0 to FAllSonobuoyOnRPList.Count - 1 do
    begin
      PlatformLibrary := FAllSonobuoyOnRPList.Items[j];

      if PlatformLibrary.FData.Sonobuoy_Index = Sonobuoy.FDef.Sonobuoy_Index then
      begin
        found := True;
        Break;
      end;
    end;

    if found then
      lbAllSonobuoyOnRPL.Items.AddObject(Sonobuoy.FDef.Class_Identifier, PlatformLibrary)
    else
      lbAllSonobuoyDef.Items.AddObject(Sonobuoy.FDef.Class_Identifier,Sonobuoy);
  end;
end;

 {$ENDREGION}

end.
