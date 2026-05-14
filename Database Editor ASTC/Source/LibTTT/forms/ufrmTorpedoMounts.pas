unit ufrmTorpedoMounts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, uDBAsset_Weapon, uDBBlind_Zone,
  uBlindZoneView, uDBAsset_Fitted, uDBAssetObject, uDBAsset_Vehicle,
  Vcl.Imaging.pngimage, Vcl.Mask;

type
  TfrmTorpedoMounts = class(TForm)
    pnl1Title: TPanel;
    txtClass: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    General: TTabSheet;
    lblClassName: TStaticText;
    edtClassName: TEdit;
    lblMountExtension: TStaticText;
    cbMountExtension: TComboBox;
    lblBlindZones: TStaticText;
    lblQuantity: TStaticText;
    edtQuantity: TEdit;
    lblReload: TStaticText;
    lblHourReload: TStaticText;
    btnEditLaunchers: TButton;
    pnlBlindZone: TPanel;
    pnl3Button: TPanel;
    btnApply: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    edtReload: TMaskEdit;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //Global
    function GetNumberOfKoma(s : string): Boolean;
    procedure edtNumeralKeyPress(Sender: TObject; var Key: Char);
    procedure edtChange(Sender: TObject);
    procedure ValidationFormatInput();

    procedure cbMountExtensionChange(Sender: TObject);
    procedure pnlBlindZoneClick(Sender: TObject);

    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnEditLaunchersClick(Sender: TObject);
    procedure edtQuantityChange(Sender: TObject);

  private
    FSelectedVehicle : TVehicle_Definition;
    FSelectedTorpedo : TTorpedo_On_Board;

    FBlindZoneView : TBlindZoneView;

    function CekInput: Boolean;
    procedure UpdateTorpedoData;
    procedure DrawBlindZone;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    LastName : string;

    property SelectedVehicle : TVehicle_Definition read FSelectedVehicle write FSelectedVehicle;
    property SelectedTorpedo : TTorpedo_On_Board read FSelectedTorpedo write FSelectedTorpedo;
  end;

var
  frmTorpedoMounts: TfrmTorpedoMounts;

implementation

uses
  uDataModuleTTT, ufrmAvailableVehicle, ufrmSummaryVehicle,
  uMissileLaunchers, ufrmMissileOnBoardPickList, uTorpedoLauncher, uBlindZoneAttachment,
  ufrmTorpedoOnBoardPickList, uLauncherList, tttData;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmTorpedoMounts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FBlindZoneView.Free;
  Action := cafree;
end;

procedure TfrmTorpedoMounts.FormCreate(Sender: TObject);
begin
  FBlindZoneView := TBlindZoneView.Create(Self);

  with FBlindZoneView do
  begin
    Parent := pnlBlindZone;
    Left := 0;
    Top := 0;
    Height := pnlBlindZone.Height;
    Width := pnlBlindZone.Width;
    OnClick := pnlBlindZoneClick;
  end;
end;

procedure TfrmTorpedoMounts.FormShow(Sender: TObject);
begin
  UpdateTorpedoData;

  with FSelectedTorpedo.FData do
    btnApply.Enabled := Fitted_Weap_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmTorpedoMounts.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmTorpedoMounts.btnApplyClick(Sender: TObject);
var
  reloadTime : Integer;
begin
   if not CekInput then
  begin
    isOK := False;
    Exit;
  end;

  ValidationFormatInput;

  with FSelectedTorpedo do
  begin
    LastName := edtName.Text;
    FData.Instance_Identifier := edtName.Text;
    FData.Vehicle_Index := FSelectedVehicle.FData.Vehicle_Index;
    FData.Mount_Type := cbMountExtension.ItemIndex;
    FData.Quantity := StrToInt(edtQuantity.Text);

    TimeToSecond(edtReload.Text, reloadTime);
    FData.Firing_Delay := reloadTime;

    FData.Torpedo_Index := FDef.Torpedo_Index;

    if FData.Fitted_Weap_Index = 0 then
      dmTTT.InsertFittedWeaponOnBoard(2, FData)
    else
      dmTTT.UpdateFittedWeaponOnBoard(2, FData);
  end;

  UpdateTorpedoData;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmTorpedoMounts.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmTorpedoMounts.btnEditLaunchersClick(Sender: TObject);
begin
  fLauncherList := TfLauncherList.Create(Self);
  try
    with fLauncherList do
    begin
      LauncherOwner := loTorpedo;
      SelectedWeapon := FSelectedTorpedo;
      ShowModal;
    end;
  finally
    fLauncherList.Free;
  end;
end;

procedure TfrmTorpedoMounts.cbMountExtensionChange(Sender: TObject);
begin
  edtName.Text := FSelectedTorpedo.FDef.Class_Identifier + ' ' +
    cbMountExtension.Text;

  btnApply.Enabled := True;
end;

function TfrmTorpedoMounts.CekInput: Boolean;
begin
  Result := False;

  {Jika Mount Name sudah ada}
  if dmTTT.GetFittedWeaponOnBoardCount(FSelectedVehicle.FData.Vehicle_Index, edtName.Text) then
  begin
    {Jika inputan baru}
    if FSelectedTorpedo.FData.Fitted_Weap_Index = 0 then
    begin
      ShowMessage('Duplicate torpedo mount!' + Char(13) + 'Choose different name to continue.');
      Exit;
    end
    else if LastName <> edtName.Text then {dicopy}
    begin
      ShowMessage('Please use another class name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmTorpedoMounts.DrawBlindZone;
var
  i : Integer;
  blindZone : TBlind_Zone;
  zs : TZoneSector;
begin
  FBlindZoneView.ClearZone;

  with FSelectedTorpedo do
  begin
    dmTTT.GetBlindZone(Ord(bzcWeapon), FData.Fitted_Weap_Index,
      FBlind);

    blindZone := TBlind_Zone.Create;
    FBZone_1 := blindZone.FData;
    FBZone_2 := blindZone.FData;
    blindZone.Free;

    for i := 0 to FBlind.Count - 1 do
    begin
      blindZone := FBlind.Items[i];

      case blindZone.FData.BlindZone_Number of
        1: FBZone_1 := blindZone.FData;
        2: FBZone_2 := blindZone.FData;
      end;
    end;

    if (FBZone_1.BlindZone_Number <> 0) and
      (FBZone_1.Start_Angle <> FBZone_1.End_Angle) then
    begin
      zs := FBlindZoneView.AddZone;
      zs.StartAngle := FBZone_1.Start_Angle;
      zs.EndAngle := FBZone_1.End_Angle;
    end;

    if (FBZone_2.BlindZone_Number <> 0) and
      (FBZone_2.Start_Angle <> FBZone_2.End_Angle) then
    begin
      zs := FBlindZoneView.AddZone;
      zs.StartAngle := FBZone_2.Start_Angle;
      zs.EndAngle := FBZone_2.End_Angle;
    end;
  end;

  FBlindZoneView.Repaint;
end;

procedure TfrmTorpedoMounts.pnlBlindZoneClick(Sender: TObject);
begin
  if FSelectedTorpedo.FData.Fitted_Weap_Index = 0 then
  begin
    ShowMessage('This data is not stored yet');
    Exit;
  end;

  BlindZonesAttachmentForm := TBlindZonesAttachmentForm.Create(Self);
  try
    with BlindZonesAttachmentForm do
    begin
      OnBoardType := bzcWeapon;
      OnBoardOwner := FSelectedTorpedo;
      ShowModal;
      DrawBlindZone;
    end;

    btnApply.Enabled := BlindZonesAttachmentForm.AfterClose;
    btnCancel.Enabled := not BlindZonesAttachmentForm.AfterClose;

  finally
    BlindZonesAttachmentForm.Free;
  end;

end;

procedure TfrmTorpedoMounts.UpdateTorpedoData;
var
  timeStr : string;
begin
  with FSelectedTorpedo do
  begin
    cbMountExtension.ItemIndex := FData.Mount_Type;

    if FData.Fitted_Weap_Index = 0 then
      edtName.Text := FDef.Class_Identifier + ' ' + cbMountExtension.Text
    else
      edtName.Text := FData.Instance_Identifier;

    LastName := edtName.Text;
    edtClassName.Text := FDef.Class_Identifier;

    DrawBlindZone;

    edtQuantity.Text := IntToStr(FData.Quantity);
    SecondToTime(Round(FData.Firing_Delay), timeStr);
    edtReload.Text := timeStr;

    btnEditLaunchers.Enabled := FData.Fitted_Weap_Index <> 0;
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

function TfrmTorpedoMounts.GetNumberOfKoma(s: string): Boolean;
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

procedure TfrmTorpedoMounts.edtNumeralKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmTorpedoMounts.edtQuantityChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmTorpedoMounts.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmTorpedoMounts.ValidationFormatInput;
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
