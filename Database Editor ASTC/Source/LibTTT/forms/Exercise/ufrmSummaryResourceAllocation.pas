unit ufrmSummaryResourceAllocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, uDBAssetObject,
  uDBAsset_GameEnvironment, Vcl.Imaging.pngimage;

type
  TfrmSummaryResourceAllocation = class(TForm)
    pnl1Title: TPanel;
    txtClass: TLabel;
    edtName: TEdit;
    pnl2ControlPage: TPanel;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    btnBrowseEnvironment: TSpeedButton;
    btnBrowseDefaults: TSpeedButton;
    lblStartTime: TStaticText;
    lblEnvironment: TStaticText;
    edtEnvironment: TEdit;
    lblDefaults: TStaticText;
    edtDefaults: TEdit;
    btnStudentRoleList: TButton;
    dtpDate: TDateTimePicker;
    dtpTime: TDateTimePicker;
    StaticText1: TStaticText;
    edtStudent: TEdit;
    tsPlatforms: TTabSheet;
    grbForcePlatforms: TGroupBox;
    rbRedPlatforms: TRadioButton;
    rbAmberPlatforms: TRadioButton;
    rbBluePlatforms: TRadioButton;
    rbGreenPlatforms: TRadioButton;
    rbNoPlatforms: TRadioButton;
    grbPlatforms: TGroupBox;
    btnVehicle: TButton;
    btnSatellite: TButton;
    tsResources: TTabSheet;
    btnRuntimePlatformLibraries: TButton;
    btnReferencePointsResources: TButton;
    btnOverlaysResources: TButton;
    btnCommunicationResources: TButton;
    pnl3Button: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    btnApply: TButton;

    procedure FormShow(Sender: TObject);

    procedure edtChange(Sender: TObject);
    procedure dtpDateChange(Sender: TObject);
    procedure dtpTimeChange(Sender: TObject);

    procedure btnBrowseEnvironmentClick(Sender: TObject);
    procedure btnBrowseDefaultsClick(Sender: TObject);
    procedure btnStudentRoleListClick(Sender: TObject);
    procedure btnRuntimePlatformLibrariesClick(Sender: TObject);

    procedure RadioButtonClick(Sender: TObject);
    procedure btnVehicleClick(Sender: TObject);
    procedure btnMissileClick(Sender: TObject);
    procedure btnTorpedoClick(Sender: TObject);
    procedure btnSonobuoyClick(Sender: TObject);
    procedure btnMineClick(Sender: TObject);
    procedure btnSatelliteClick(Sender: TObject);
    procedure btnReferencePointsResourcesClick(Sender: TObject);
    procedure btnPredifenedPatternsClick(Sender: TObject);
    procedure btnOverlaysResourcesClick(Sender: TObject);
    procedure btnRadarIntervalListsClick(Sender: TObject);
    procedure btnCommunicationResourcesClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    FSelectedResourceAllocation : TResource_Allocation;

    FStartTime : TDateTime;
    FSelectedEnvironment : TGame_Environment_Definition;
    FSelectedPlatformForce : Integer;
    FSelectedResourceForce : Integer;

    procedure UpdateResourceAllocationData;
    procedure UpdateEnvironmentData;
    procedure UpdateGameDefaultData;
    procedure UpdateStudentRoleData;

    procedure UpdateButtonState;

  public
    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    function CekInput(IdAction : Integer): Boolean;

    property SelectedResourceAllocation : TResource_Allocation read FSelectedResourceAllocation write FSelectedResourceAllocation;
  end;

var
  frmSummaryResourceAllocation: TfrmSummaryResourceAllocation;

implementation

uses
  uDataModuleTTT, uDBGame_Defaults, DateUtils,

  ufrmEnvironmentPickList, ufrmGameDefaultsPickList, ufrmStudentRolePickList,
  ufrmRuntimePlatformLibraryRAPickList,

  ufrmVehicleResourceAllocationPickList, ufrmMissileResourceAllocationPickList,
  ufrmTorpedoResourceAllocationPickList, ufrmSonobuoyResourceAllocationPickList,
  ufrmMineResourceAllocationPickList, ufrmSatelliteResourceAllocationPickList,

  ufrmReferencePointEditor, ufrmPredefinedPatternRAPickList, ufrmOverlayRAPickList,
  ufrmRadarIntervalRAPickList,uChannelComList;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmSummaryResourceAllocation.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateResourceAllocationData;

  with FSelectedResourceAllocation.FData do
    btnApply.Enabled := Resource_Alloc_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmSummaryResourceAllocation.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;
end;

procedure TfrmSummaryResourceAllocation.btnApplyClick(Sender: TObject);
begin
  with FSelectedResourceAllocation do
  begin
    if not CekInput(FData.Resource_Alloc_Index)  then
      Exit;

    LastName := edtName.Text;
    FData.Allocation_Identifier := edtName.Text;
    FData.Game_Start_Time := FStartTime;

    if FData.Resource_Alloc_Index = 0 then
      dmTTT.InsertResourceAllocationDef(FData)
    else
      dmTTT.UpdateResourceAllocationDef(FData);
  end;

  UpdateButtonState;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmSummaryResourceAllocation.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSummaryResourceAllocation.btnBrowseEnvironmentClick(Sender: TObject);
begin
  frmEnvironmentPickList := TfrmEnvironmentPickList.Create(Self);
  try
    with frmEnvironmentPickList do
    begin
      PickedEnvironmentId := FSelectedResourceAllocation.FData.Game_Enviro_Index;
      ShowModal;
      FSelectedResourceAllocation.FData.Game_Enviro_Index := PickedEnvironmentId;
    end;
  finally
    frmEnvironmentPickList.Free;
  end;

  UpdateEnvironmentData;;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnBrowseDefaultsClick(Sender: TObject);
begin
  frmGameDefaultsPickList := TfrmGameDefaultsPickList.Create(Self);
  try
    with frmGameDefaultsPickList do
    begin
      PickedGameDefaultId := FSelectedResourceAllocation.FData.Defaults_Index;
      ShowModal;
      FSelectedResourceAllocation.FData.Defaults_Index := PickedGameDefaultId;
    end;
  finally
    frmGameDefaultsPickList.Free;
  end;
  
  UpdateGameDefaultData;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnStudentRoleListClick(Sender: TObject);
begin
  frmStudentRolePickList := TfrmStudentRolePickList.Create(Self);
  try
    with frmStudentRolePickList do
    begin
      PickedStudenRoleId := FSelectedResourceAllocation.FData.Role_List_Index;
      ShowModal;
      FSelectedResourceAllocation.FData.Role_List_Index := PickedStudenRoleId;
    end;
  finally
    frmStudentRolePickList.Free;
  end;

  UpdateStudentRoleData;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnVehicleClick(Sender: TObject);
begin
  frmVehicleResourceAllocationPickList := TfrmVehicleResourceAllocationPickList.Create(Self);
  try
    with frmVehicleResourceAllocationPickList do
    begin
      ResourceAllocation := FSelectedResourceAllocation;
      SelectedForce := FSelectedPlatformForce;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmVehicleResourceAllocationPickList.Free;
  end;
  
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnSatelliteClick(Sender: TObject);
begin
  frmSatelliteResourceAllocationPickList := TfrmSatelliteResourceAllocationPickList.Create(Self);
  try
    with frmSatelliteResourceAllocationPickList do
    begin
      ResourceAllocation := FSelectedResourceAllocation;
      SelectedForce := FSelectedPlatformForce;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmSatelliteResourceAllocationPickList.Free;
  end;
  
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnRuntimePlatformLibrariesClick(Sender: TObject);
begin
  frmRuntimePlatformLibraryRAPickList := TfrmRuntimePlatformLibraryRAPickList.Create(Self);
  try
    with frmRuntimePlatformLibraryRAPickList do
    begin
      SelectedResourceAlloc := FSelectedResourceAllocation;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmRuntimePlatformLibraryRAPickList.Free;
  end;
  

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnOverlaysResourcesClick(Sender: TObject);
begin
  frmOverlayRAPickList := TfrmOverlayRAPickList.Create(Self);
  try
    with frmOverlayRAPickList do
    begin
      SelectedResourceAlloc := FSelectedResourceAllocation;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmOverlayRAPickList.Free;
  end;
  
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnReferencePointsResourcesClick(Sender: TObject);
begin
  frmReferencePointEditor := TfrmReferencePointEditor.Create(Self);
  try
    with frmReferencePointEditor do
    begin
      ResourceAllocation := FSelectedResourceAllocation;
      Environment := FSelectedEnvironment;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    frmReferencePointEditor.Free;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnCommunicationResourcesClick(Sender: TObject);
begin
  fChannelComList := TfChannelComList.Create(Self);
  try
    with fChannelComList do
    begin
      SelectedResourceAlloc := FSelectedResourceAllocation;
      ShowModal;

      btnCancel.Enabled := not isNoCancel;
    end;
  finally
    fChannelComList.Free;
  end;

  btnApply.Enabled := True;
end;

function TfrmSummaryResourceAllocation.CekInput(IdAction: Integer): Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  if edtName.Text = '' then
  begin
    ShowMessage('Incomplete data input');
    Exit;
  end;

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

  if (dmTTT.GetResourceAllocationDefCount(edtName.Text) > 0) and (IdAction = 0) then
  begin
    ShowMessage('Please use another name');
    Exit;
  end;

  if (IdAction <> 0) and (LastName <> edtName.Text)then
  begin
    if (dmTTT.GetResourceAllocationDefCount(edtName.Text) > 0) then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  if FSelectedResourceAllocation.FData.Game_Enviro_Index = 0 then
  begin
    ShowMessage('Select Environment for this Resource Allocation.');
    Exit;
  end;

  if FSelectedResourceAllocation.FData.Defaults_Index = 0 then
  begin
    ShowMessage('Select Defaults for this Resource Allocation.');
    Exit;
  end;

  if FSelectedResourceAllocation.FData.Role_List_Index = 0 then
  begin
    ShowMessage('Select Student Role for this Resource Allocation.');
    Exit;
  end;

  Result := True;
end;

procedure TfrmSummaryResourceAllocation.dtpDateChange(Sender: TObject);
begin
  FStartTime := EncodeDateTime(YearOf(dtpDate.Date), MonthOf(dtpDate.Date),
    DayOf(dtpDate.DateTime), HourOf(dtpTime.Time), MinuteOf(dtpTime.Time),
    SecondOf(dtpTime.Time), 0);

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.dtpTimeChange(Sender: TObject);
begin
  FStartTime := EncodeDateTime(YearOf(dtpDate.Date), MonthOf(dtpDate.Date),
    DayOf(dtpDate.DateTime), HourOf(dtpTime.Time), MinuteOf(dtpTime.Time),
    SecondOf(dtpTime.Time), 0);

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.RadioButtonClick(Sender: TObject);
begin
  case TRadioButton(Sender).Tag of
    1, 2, 3, 4, 5: FSelectedPlatformForce := TRadioButton(Sender).Tag;
    6, 7, 8, 9, 10: FSelectedResourceForce := TRadioButton(Sender).Tag - 5;
  end;
end;

procedure TfrmSummaryResourceAllocation.UpdateButtonState;
begin
  with FSelectedResourceAllocation.FData do
  begin
    btnRuntimePlatformLibraries.Enabled := Resource_Alloc_Index <> 0;

    btnVehicle.Enabled := Resource_Alloc_Index <> 0;
    btnSatellite.Enabled := Resource_Alloc_Index <> 0;

    btnReferencePointsResources.Enabled := Resource_Alloc_Index <> 0;
    btnOverlaysResources.Enabled := Resource_Alloc_Index <> 0;
    btnCommunicationResources.Enabled := Resource_Alloc_Index <> 0;
  end;
end;

procedure TfrmSummaryResourceAllocation.UpdateResourceAllocationData;
begin
  with FSelectedResourceAllocation.FData do
  begin
    if Resource_Alloc_Index = 0 then
    begin
      edtName.Text := '(Unnamed)';
      FStartTime := Now;
    end
    else
    begin
      edtName.Text := Allocation_Identifier;
      FStartTime := FloatToDateTime(Game_Start_Time);
    end;

    {$REGION ' General '}
    LastName := edtName.Text;

    dtpDate.Date := FStartTime;
    dtpTime.Time := FStartTime;

    UpdateEnvironmentData;
    UpdateGameDefaultData;
    UpdateStudentRoleData;

    {$ENDREGION}

    UpdateButtonState;
    rbRedPlatforms.Checked := True;
    RadioButtonClick(rbRedPlatforms);

  end;
end;

procedure TfrmSummaryResourceAllocation.UpdateEnvironmentData;
begin
  with FSelectedResourceAllocation.FData do
  begin
    dmTTT.GetEnvironmentDef(Game_Enviro_Index, FSelectedEnvironment);


    if Assigned(FSelectedEnvironment) then
    begin
      dmTTT.GetGameAreaDef(FSelectedEnvironment.FData.Game_Area_Index, FSelectedEnvironment.FGameArea);
      edtEnvironment.Text := FSelectedEnvironment.FData.Game_Enviro_Identifier;
    end
    else
      edtEnvironment.Text := '(None)';
  end;
end;

procedure TfrmSummaryResourceAllocation.UpdateGameDefaultData;
var
  GameDefault : TGame_Defaults;
begin
  with FSelectedResourceAllocation.FData do
  begin
    dmTTT.GetGameDefault(Defaults_Index, GameDefault);

    if Assigned(GameDefault) then
      edtDefaults.Text := GameDefault.FData.Defaults_Identifier
    else
      edtEnvironment.Text := '(None)';
  end;
end;

procedure TfrmSummaryResourceAllocation.UpdateStudentRoleData;
var
  StudentRole : TStudent_Role_List;
begin
  with FSelectedResourceAllocation.FData do
  begin
    dmTTT.CekStudent_Role_List(Role_List_Index, StudentRole);

    if Assigned(StudentRole) then
      edtStudent.Text := StudentRole.FData.Role_List_Identifier
    else
      edtStudent.Text := '(None)';
  end;
end;

{$ENDREGION}

{$REGION ' Filter Input '}

procedure TfrmSummaryResourceAllocation.edtChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

{$ENDREGION}

{$REGION ' Tidak Difungsikan '}

procedure TfrmSummaryResourceAllocation.btnMissileClick(Sender: TObject);
begin
  with frmMissileResourceAllocationPickList do
  begin
    ResourceAllocation := FSelectedResourceAllocation;
    SelectedForce := FSelectedPlatformForce;
    ShowModal;

    btnCancel.Enabled := not isNoCancel;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnTorpedoClick(Sender: TObject);
begin
  with frmTorpedoResourceAllocationPickList do
  begin
    ResourceAllocation := FSelectedResourceAllocation;
    SelectedForce := FSelectedPlatformForce;
    ShowModal;

    btnCancel.Enabled := not isNoCancel;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnMineClick(Sender: TObject);
begin
  with frmMineResourceAllocationPickList do
  begin
    ResourceAllocation := FSelectedResourceAllocation;
    SelectedForce := FSelectedPlatformForce;
    ShowModal;

    btnCancel.Enabled := not isNoCancel;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnSonobuoyClick(Sender: TObject);
begin
  with frmSonobuoyResourceAllocationPickList do
  begin
    ResourceAllocation := FSelectedResourceAllocation;
    SelectedForce := FSelectedPlatformForce;
    ShowModal;

    btnCancel.Enabled := not isNoCancel;
  end;

  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnPredifenedPatternsClick(Sender: TObject);
begin
  with frmPredefinedPatternRAPickList do
  begin
    ResourceAllocation := FSelectedResourceAllocation;
    ShowModal;
  end;
  btnApply.Enabled := True;
end;

procedure TfrmSummaryResourceAllocation.btnRadarIntervalListsClick(Sender: TObject);
begin
  with frmRadarIntervalRAPickList do
  begin
    SelectedResourceAlloc := FSelectedResourceAllocation;
    ShowModal;
  end;
  btnApply.Enabled := True;
end;
{$ENDREGION}

end.
