unit uPlatformDeploymentPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, uDBAsset_Deploy, uDBAssetObject,
  uDBAsset_GameEnvironment, Vcl.Imaging.pngimage;

type
  E_PlatformPickResult = (pprSelect, pprDeploy);

  TfrmPlatformDeploymentPickList = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cbForce: TCheckBox;
    cbClassification: TCheckBox;
    cbHide: TCheckBox;
    cbxForce: TComboBox;
    cbxClassification: TComboBox;
    pnl2ControlPage: TPanel;
    lbPlatforms: TListBox;
    pnl3Button: TPanel;
    btnCancel: TButton;
    btnFilter: TButton;
    btnOK: TButton;
    pnlSparatorHor1: TPanel;
    pnlSparatorHor2: TPanel;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbPlatformsClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbForceClick(Sender: TObject);
    procedure cbxForceChange(Sender: TObject);
    procedure cbClassificationClick(Sender: TObject);
    procedure cbxClassificationChange(Sender: TObject);
    procedure cbHideClick(Sender: TObject);

  private
    FDeploymentIndex : Integer;
    FResourceAllocationIndex : Integer;
    FSelectedEnviArea : TGame_Environment_Definition;
    FSelectedPlatform : TPlatform_Instance;

    FAvailablePlatformList : TList;
    FDeployedPlatformList : TList;

    procedure UpdatePlatformDeploymentList;

  public
    property DeploymentIndex : Integer read FDeploymentIndex write FDeploymentIndex;
    property ResourceAllocationIndex : Integer read FResourceAllocationIndex write FResourceAllocationIndex;
    property SelectedEnviArea : TGame_Environment_Definition read FSelectedEnviArea write FSelectedEnviArea;
    property SelectedPlatform : TPlatform_Instance read FSelectedPlatform write FSelectedPlatform;
  end;

var
  frmPlatformDeploymentPickList: TfrmPlatformDeploymentPickList;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmPlatformDeploymentPickList.FormCreate(Sender: TObject);
begin
  FAvailablePlatformList := TList.Create;
  FDeployedPlatformList := TList.Create;
end;

procedure TfrmPlatformDeploymentPickList.FormShow(Sender: TObject);
var
  i : Integer;
  platInst : TPlatform_Instance;
begin
  {Mengambil Platform Instance yg ada di RA ini}
  dmTTT.GetPlatformInstance(ResourceAllocationIndex, -1, -1, FAvailablePlatformList);

  {Mengambil Platform Instance yg sdh di deploy di Scenario ini}
  dmTTT.GetPlatformActivation(FDeploymentIndex, FDeployedPlatformList);

  for i := 0 to FAvailablePlatformList.Count - 1 do
  begin
    platInst := FAvailablePlatformList.Items[i];

    if platInst.FData.Platform_Type = 1 then
    begin
      dmTTT.GetVehicle_Definition(platInst.FData.Vehicle_Index, platInst.Vehicle);
    end;
  end;

  UpdatePlatformDeploymentList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmPlatformDeploymentPickList.btnOKClick(Sender: TObject);
begin
  if lbPlatforms.ItemIndex = -1 then
  begin
    ShowMessage('Choose item first...');
    Exit;
  end;

  if dmTTT.GetPlatformActivation(FDeploymentIndex,FSelectedPlatform.FData.Platform_Instance_Index, FSelectedPlatform.FActivation) = 0 then
  begin
    with FSelectedPlatform.FActivation do
    begin
      Platform_Event_Index := 0;
      Deployment_Index := FDeploymentIndex;
      Platform_Instance_Index := FSelectedPlatform.FData.Platform_Instance_Index;
      Platform_Activation_Time := 0;
      Init_Guidance_Type := 0;
      Init_Position_Latitude := FSelectedEnviArea.FGameArea.Game_Centre_Lat;
      Init_Position_Longitude := FSelectedEnviArea.FGameArea.Game_Centre_Long;
      Init_Position_Cartesian_X := 0;
      Init_Position_Cartesian_Y := 0;
      Init_Altitude := 0;
      Init_Course := 0;
      Init_Helm_Angle := 0;
      Init_Ground_Speed := 0;
      Init_Vertical_Speed := 2;
      Init_Command_Altitude := 0;
      Init_Command_Course := 0;
      Init_Command_Helm_Angle := 0;
      Init_Command_Ground := 0;
      Init_Command_Vert := 0;
      Deg_of_Rotation := 0;
      Radius_of_Travel := 0;
      Direction_of_Travel := 0;
      Circle_Latitude := 0;
      Circle_Longitude := 0;
      Circle_X := 0;
      Circle_Y := 0;
      Dynamic_Circle_Range_Offset := 0;
      Dynamic_Circle_Angle_Offset := 0;
      Dynamic_Circle_Offset_Mode := 0;
      Period_Distance := 0;
      Amplitude_Distance := 0;
      Zig_Zag_Leg_Type := 0;
      Target_Angle_Offset := 0;
      Target_Angle_Type := 0;
      Target_Range := 0;
      Guidance_Target := 0;
      Pattern_Instance_Index := 0;
      Angular_Offset := 0;
      Anchor_Cartesian_X := 0;
      Anchor_Cartesian_Y := 0;
      Anchor_Latitude := 0;
      Anchor_Longitude := 0;
      Current_Drift := 0;
      Waypoint_Termination := 0;
      Termination_Heading := 0;
      Cond_List_Instance_Index := 0;
      Damage := 0;
    end;

  end;

  ModalResult := mrOk;
end;

procedure TfrmPlatformDeploymentPickList.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPlatformDeploymentPickList.lbPlatformsClick(Sender: TObject);
begin
  if lbPlatforms.ItemIndex = -1 then
    Exit;

  FSelectedPlatform := TPlatform_Instance(lbPlatforms.Items.Objects[lbPlatforms.ItemIndex]);
end;

procedure TfrmPlatformDeploymentPickList.cbClassificationClick(Sender: TObject);
begin
  cbxClassification.Enabled := cbClassification.Checked;
  UpdatePlatformDeploymentList;
end;

procedure TfrmPlatformDeploymentPickList.cbForceClick(Sender: TObject);
begin
  cbxForce.Enabled := cbForce.Checked;
  UpdatePlatformDeploymentList;
end;

procedure TfrmPlatformDeploymentPickList.cbHideClick(Sender: TObject);
begin
  UpdatePlatformDeploymentList;
end;

procedure TfrmPlatformDeploymentPickList.cbxClassificationChange(Sender: TObject);
begin
  UpdatePlatformDeploymentList;
end;

procedure TfrmPlatformDeploymentPickList.cbxForceChange(Sender: TObject);
begin
  UpdatePlatformDeploymentList;
end;

procedure TfrmPlatformDeploymentPickList.btnFilterClick(Sender: TObject);
begin
  if btnFilter.Caption = 'Filter >>' then
  begin
    btnFilter.Caption := '<< Filter';
    frmPlatformDeploymentPickList.Height := 600;
  end
  else if btnFilter.Caption = '<< Filter' then
  begin
    btnFilter.Caption := 'Filter >>';
    frmPlatformDeploymentPickList.Height := 484;

    cbForce.Checked := False;
    cbClassification.Checked := False;
    cbHide.Checked := False;
    UpdatePlatformDeploymentList;
  end;
end;

procedure TfrmPlatformDeploymentPickList.UpdatePlatformDeploymentList;
var
  i, j : Integer;
  avaPlatInst, depPlatInst : TPlatform_Instance;
  found : Boolean;
begin
  lbPlatforms.Items.Clear;

  for i := 0 to FAvailablePlatformList.Count - 1 do
  begin
    avaPlatInst := FAvailablePlatformList.Items[i];

    if cbForce.Checked and not (cbxForce.ItemIndex + 1 = avaPlatInst.FData.Force_Designation) then
      Continue;

    if cbClassification.Checked and not (cbxClassification.ItemIndex = avaPlatInst.Vehicle.FData.Platform_Domain) then
      Continue;

    if cbHide.Checked then
    begin
      found := False;
      for j := 0 to FDeployedPlatformList.Count - 1 do
      begin
        depPlatInst := FDeployedPlatformList.Items[j];

        if depPlatInst.FData.Platform_Instance_Index = avaPlatInst.FData.Platform_Instance_Index then
        begin
          found := True;
          Break;
        end;
      end;

      if found then
        Continue;
    end;

    lbPlatforms.Items.AddObject(avaPlatInst.FData.Instance_Name, avaPlatInst);
  end;
end;

{$ENDREGION}

end.
