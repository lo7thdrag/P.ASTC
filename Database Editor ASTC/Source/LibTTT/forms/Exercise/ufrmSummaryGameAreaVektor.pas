unit ufrmSummaryGameAreaVektor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, uDBAsset_GameEnvironment, MapXLib_TLB,
  Vcl.Imaging.pngimage;

type
  TfrmSummaryGameAreaVektor = class(TForm)
    pnl1Title: TPanel;
    txtClass: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    GroupBox1: TGroupBox;
    btnImportLandmassData: TButton;
    btnEditLandmassData: TButton;
    grbCentre: TGroupBox;
    lblLatitude: TStaticText;
    lblLongitude: TStaticText;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    grbDimensions: TGroupBox;
    lblMaximum: TStaticText;
    edtMaximum: TEdit;
    lblnm: TStaticText;
    btnSelectGame: TButton;
    cbUseCoastlines: TCheckBox;
    tsOcculting: TTabSheet;
    Memo1: TMemo;
    btnPreprocess: TButton;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;
    pnlSparatorHor1: TPanel;
    Image2: TImage;
    pnlSparatorHor2: TPanel;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxDataClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    //General
    procedure btnSelectGameClick(Sender: TObject);
    procedure btnImportLandmassDataClick(Sender: TObject);
    procedure btnEditLandmassDataClick(Sender: TObject);

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    FSelectedGameArea : TGame_Environment_Definition;

    FMap : TMap;

    function CekInput: Boolean;
    function GetIndexLat(const aPos: Integer): string;
    function GetIndexLong(const aPos: Integer): string;

    procedure UpdateGameAreaData;

    procedure GetLayerData;
    procedure CreateGameAreaDirectory;
    procedure DeleteGameAreaDirectory(const aPath: string);
    procedure GetGridIndex(const aCenterX, aCenterY, aWidth: Double; var aRect: TRect);

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    property SelectedGameArea : TGame_Environment_Definition
      read FSelectedGameArea write FSelectedGameArea;
  end;

var
  frmSummaryGameAreaVektor: TfrmSummaryGameAreaVektor;

implementation

uses
  uDataModuleTTT, ufrmVektorMapGameCenterEditor, ufrmImportLandmassData,
  ufrmLandmassEditor, uBaseCoordSystem, uDBEditSetting, Math;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSummaryGameAreaVektor.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateGameAreaData;

  with FSelectedGameArea.FGameArea do
    btnApply.Enabled := Game_Area_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

procedure TfrmSummaryGameAreaVektor.FormClose(Sender: TObject;var Action: TCloseAction);
begin
Action := cafree;
end;

procedure TfrmSummaryGameAreaVektor.FormCreate(Sender: TObject);
begin
  FMap := TMap.Create(nil);
end;

procedure TfrmSummaryGameAreaVektor.FormDestroy(Sender: TObject);
begin
  FMap.Free;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummaryGameAreaVektor.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmSummaryGameAreaVektor.btnApplyClick(Sender: TObject);
var
  MapDirPath : string;
begin
  with FSelectedGameArea do
  begin
    if not CekInput then
    begin
      isOK := False;
      Exit;
    end;

    ValidationFormatInput;

    {$REGION ' General '}

    FGameArea.Game_Area_Identifier := edtName.Text;

    FGameArea.Detail_Map := 'VektorMap';

    FGameArea.Use_Artificial_Landmass := Ord(cbUseCoastlines.Checked);
    FGameArea.Game_Centre_Lat := dmToLatitude(edtLatitude.Text);
    FGameArea.Game_Centre_Long := dmToLongitude(edtLongitude.Text);
    FGameArea.Game_X_Dimension := StrToFloat(edtMaximum.Text);
    FGameArea.Game_Y_Dimension := StrToFloat(edtMaximum.Text);

    MapDirPath := vAppDBSetting.MapDestPathVECT + '\' + LastName;
    if (FGameArea.Game_Area_Index <> 0) and DirectoryExists(MapDirPath) then
      DeleteGameAreaDirectory(MapDirPath);

    LastName := edtName.Text;

    {$ENDREGION}

    if FGameArea.Game_Area_Index = 0 then
    begin
      if dmTTT.InsertGameAreaDef(FGameArea) then
      begin
        ShowMessage('Data has been saved');
      end;
    end
    else
    begin
      if dmTTT.UpdateGameAreaDef(FGameArea) then
      begin
        ShowMessage('Data has been updated');
      end;
    end;
  end;

  CreateGameAreaDirectory;
  UpdateGameAreaData;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummaryGameAreaVektor.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmSummaryGameAreaVektor.btnSelectGameClick(Sender: TObject);
begin
  frmVektorMapGameCenterEditor := TfrmVektorMapGameCenterEditor.Create(Self);
  try
    with frmVektorMapGameCenterEditor do
    begin
      SelectedGameSector := FSelectedGameArea;
      ShowModal;

      if not isCancel then
      begin
        FSelectedGameArea := SelectedGameSector;
        edtLatitude.Text := formatDM_latitude(FSelectedGameArea.FGameArea.Game_Centre_Lat);
        edtLongitude.Text := formatDM_longitude(FSelectedGameArea.FGameArea.Game_Centre_Long);
        edtMaximum.Text := IntToStr(Round(FSelectedGameArea.FGameArea.Game_X_Dimension));
      end
    end;
  finally
    frmVektorMapGameCenterEditor.Free;
  end;
  
  btnApply.Enabled := True;
end;

procedure TfrmSummaryGameAreaVektor.btnEditLandmassDataClick(Sender: TObject);
begin
  frmLandmassEditor := TfrmLandmassEditor.Create(Self);
  try
    with frmLandmassEditor do
    begin
      SelectedGameArea := FSelectedGameArea;
      ShowModal;
    end;
  finally
    frmLandmassEditor.Free;
  end;
end;

procedure TfrmSummaryGameAreaVektor.btnImportLandmassDataClick(Sender: TObject);
begin
  frmImportLandmassData := TfrmImportLandmassData.Create(Self);
  try
    with frmImportLandmassData do
    begin
      SelectedGameArea := FSelectedGameArea;
      ShowModal;
    end;
  finally
    frmImportLandmassData.Free;
  end;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryGameAreaVektor.UpdateGameAreaData;
begin
  with FSelectedGameArea.FGameArea do
  begin
    if Game_Area_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Game_Area_Identifier;

    LastName := edtName.Text;
    edtLatitude.Text := formatDM_latitude(Game_Centre_Lat);
    edtLongitude.Text := formatDM_longitude(Game_Centre_Long);
    edtMaximum.Text := IntToStr(Round(Game_X_Dimension));
    cbUseCoastlines.Checked := Boolean(Use_Artificial_Landmass);
    btnImportLandmassData.Enabled := Game_Area_Index <> 0;
    btnEditLandmassData.Enabled := Game_Area_Index <> 0;
  end;
end;

function TfrmSummaryGameAreaVektor.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  {Jika inputan class name kosong}
  if (edtName.Text = '')then
  begin
    ShowMessage('Please insert Game area name');
    Exit;
  end;

  {Jika berisi spasi semua}
  if Copy(edtName.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtName.Text);
    numSpace := 0;

    for i := 1 to chkSpace do
    begin
      if edtName.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;
    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetGame_Area_Def_By_Identifier(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedGameArea.FGameArea.Game_Area_Index = 0 then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end
    else if LastName <> edtName.Text then
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  if StrToFloat(edtMaximum.Text) = 0 then
  begin
    ShowMessage('Invalid map dimension');
    Exit;
  end;

  if not LatValidation(edtLatitude.Text) then
  begin
    ShowMessage('Invalid format Latitude');
    Exit;
  end;

  if not LongValidation(edtLongitude.Text) then
  begin
    ShowMessage('Invalid format Latitude');
    Exit;
  end;

  Result := True;
end;

{$ENDREGION}

{$REGION ' Map Handle '}

procedure TfrmSummaryGameAreaVektor.CreateGameAreaDirectory;
var
  path : string;
begin
  with FSelectedGameArea.FGameArea do
    path := vAppDBSetting.MapDestPathVECT + '\' + Game_Area_Identifier;

  CreateDir(path);
  CreateDir(path + '\Cells');
  CreateDir(path + '\Cells\oceansea');

  GetLayerData;
end;

procedure TfrmSummaryGameAreaVektor.DeleteGameAreaDirectory(const aPath: string);
var
  F : TSearchRec;
begin
  if FindFirst(aPath + '\*', faAnyFile, F) = 0 then
  begin
    try
      repeat
        if (F.Attr and faDirectory <> 0) then
        begin
          if (F.Name <> '.') and (F.Name <> '..') then
            DeleteGameAreaDirectory(aPath + '\' + F.Name);
        end
        else
          DeleteFile(aPath + '\' + F.Name);
      until FindNext(F) <> 0;
      RemoveDir(aPath);
    finally
      FindClose(F);
    end;
  end;
end;

procedure TfrmSummaryGameAreaVektor.GetGridIndex(const aCenterX, aCenterY, aWidth: Double; var aRect: TRect);
var
  i : Integer;
  halfWidth : Double;
begin
  halfWidth := 0.5 * aWidth;

  i := Floor((aCenterX - halfWidth + 180.0) / 10.0) + 1;
  aRect.Left := EnsureRange(i, 1, 36);

  i := Ceil((aCenterX + halfWidth + 180.0) / 10.0);
  aRect.Right := EnsureRange(i, 1, 36);

  i := Floor((90.0 - (aCenterY + halfWidth)) / 10.0);
  aRect.Top := EnsureRange(i, 0, 17);

  i := Floor((90.0 - (aCenterY - halfWidth)) / 10.0);
  aRect.Bottom := EnsureRange(i, 0, 17);
end;

function TfrmSummaryGameAreaVektor.GetIndexLat(const aPos: Integer): string;
begin
  EnsureRange(aPos, 0, 17);
  Result := Char(Ord('A') + aPos);
end;

function TfrmSummaryGameAreaVektor.GetIndexLong(const aPos: Integer): string;
var
  i : Integer;
begin
  i := EnsureRange(aPos, 1, 36);
  Result := Format('%2d', [i]);
end;

procedure TfrmSummaryGameAreaVektor.GetLayerData;
var
  rect : TRect;
  pathSource, pathDest, fileName, fileSource, fileDest : string;
  i, j : Integer;
begin
  with FSelectedGameArea.FGameArea do
  begin
    GetGridIndex(Game_Centre_Long, Game_Centre_Lat, (Game_X_Dimension / 60.0),
      rect);

    pathSource := vAppDBSetting.MapSourcePathVECT + '\cells\';
    pathDest := vAppDBSetting.MapDestPathVECT + '\' + Game_Area_Identifier + '\cells\';

    FMap.Layers.RemoveAll;

    for i := rect.Top to rect.Bottom do
    begin
      for j := rect.Left to rect.Right do
      begin
        fileName := 'oceansea_' + GetIndexLat(i) + '_' + GetIndexLong(j);

        fileSource := pathSource + 'oceansea\' + fileName;
        fileDest := pathDest + 'oceansea\' + filename;

        if not FileExists(fileSource + '.tab') then
          Continue;

        CopyFile(PChar(fileSource + '.tab'), PChar(fileDest + '.tab'), False);
        CopyFile(PChar(fileSource + '.id'), PChar(fileDest + '.id'), False);
        CopyFile(PChar(fileSource + '.dat'), PChar(fileDest + '.dat'), False);
        CopyFile(PChar(fileSource + '.map'), PChar(fileDest + '.map'), False);

        FMap.Layers.Add(fileDest + '.tab', 1);
      end;
    end;

    FMap.SaveMapAsGeoset('result', vAppDBSetting.MapDestPathVECT + '\' +
      Game_Area_Identifier + '\' + Game_Area_Identifier + '.gst');
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmSummaryGameAreaVektor.GetNumberOfKoma(s: string): Boolean;
var
  a, i : Integer;
begin
  Result := False;
  a := 0;

  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
      a := a + 1;
  end;

  if a > 0 then
    Result := True;
end;

procedure TfrmSummaryGameAreaVektor.edtNumeralKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetNumberOfKoma(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if Key = #13 then
  begin
    if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    value := StrToFloat(TEdit(Sender).Text);

    case TEdit(Sender).Tag of
      0: TEdit(Sender).Text := FormatFloat('0', value);
      1: TEdit(Sender).Text := FormatFloat('0.0', value);
      2: TEdit(Sender).Text := FormatFloat('0.00', value);
      3: TEdit(Sender).Text := FormatFloat('0.000', value);
    end;

    btnApply.Enabled := True;
  end;
end;

procedure TfrmSummaryGameAreaVektor.CheckBoxDataClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummaryGameAreaVektor.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmSummaryGameAreaVektor.ValidationFormatInput;
var
  i: Integer;
  value : Double;

begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TEdit then
    begin
      if TEdit(Components[i]).Tag = 4 then
        continue;

      if TEdit(Components[i]).Text = '' then
        TEdit(Components[i]).Text := '0';

      value := StrToFloat(TEdit(Components[i]).Text);

      case TEdit(Components[i]).Tag of
        0: TEdit(Components[i]).Text := FormatFloat('0', value);
        1: TEdit(Components[i]).Text := FormatFloat('0.0', value);
        2: TEdit(Components[i]).Text := FormatFloat('0.00', value);
        3: TEdit(Components[i]).Text := FormatFloat('0.000', value);
      end;
    end;
  end;
end;

{$ENDREGION}

end.
