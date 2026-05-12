unit uRPLibrary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, uSimMgr_Client, Buttons, tttData,
  uGameData_TTT, uDBAsset_Runtime_Platform_Library;

type
  TfrmRPLibrary = class(TForm)
    Bevel1: TBevel;
    Notebook1: TNotebook;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbClass: TLabel;
    edtName: TEdit;
    edtTrackId: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    lbClassLaunch: TLabel;
    lbNameLaunch: TLabel;
    Label8: TLabel;
    btnNext: TButton;
    btnLaunch: TButton;
    btnCancel: TButton;
    lbPosition: TLabel;
    edtPosition: TEdit;
    btnPosition: TSpeedButton;
    pnlTrackID: TPanel;
    pnlSelectPos: TPanel;
    pnlClassSelect: TPanel;
    lvObject: TListView;
    pnlSelectGroup: TPanel;
    Label2: TLabel;
    rgForceDesignation: TRadioGroup;
    lbxGroup: TListBox;
    edtHeading: TEdit;
    edtSpeed: TEdit;
    edtAltitude: TEdit;
    lbHeading: TLabel;
    lbSpeed: TLabel;
    lbAltitude: TLabel;
    tvRuntimePlatform: TTreeView;

    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNextClick(Sender: TObject);
    procedure btnLaunchClick(Sender: TObject);
    procedure btnPositionClick(Sender: TObject);
    procedure rgForceDesignationClick(Sender: TObject);
    procedure lbxGroupClick(Sender: TObject);
    procedure edtTrackIdKeyPress(Sender: TObject; var Key: Char);
    procedure edtTrackIdChange(Sender: TObject);
    procedure edtHeadingKeyPress(Sender: TObject; var Key: Char);
    procedure edtSpeedKeyPress(Sender: TObject; var Key: Char);
    procedure edtAltitudeKeyPress(Sender: TObject; var Key: Char);

    procedure lvObjectCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    FDeployedObject: TObject;
    FMapPositionX: double;
    FMapPositionY: double;
    FGroupID : integer;
    rSend: TRecCmd_LaunchRP;

    FForceList: array [1..5] of TStrings;

    //procedure SetDeployedObject(const Value: TObject);
    procedure SetMapPositionX(const Value: double);
    procedure SetMapPositionY(const Value: double);
    { Private declarations }
  public
    procedure SetUpGroupAndForce;

  public
    { Public declarations }
    property MapPositionX : double read FMapPositionX write SetMapPositionX;
    property MapPositionY : double read FMapPositionY write SetMapPositionY;
  end;

var
  frmRPLibrary: TfrmRPLibrary;

implementation

uses uDBAssetObject, uT3Unit, uDBAsset_Vehicle,
  uBaseCoordSystem, uMapXhandler,
  uDBScenario, uDBCubicles, uT3Vehicle;

{$R *.dfm}

procedure TfrmRPLibrary.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRPLibrary.btnLaunchClick(Sender: TObject);
var
  tempObject : TObject;
  vIndex : integer;
begin
  if trim(edtPosition.Text) = '' then exit;
  if FDeployedObject = nil then exit;

  vIndex := 0;
  tempObject := FDeployedObject;

  if tempObject is TVehicle_Definition then
    vIndex := TVehicle_Definition(tempObject).FData.Vehicle_Index;

  if tempObject is TMine_Definition then
    vIndex := TMine_Definition(tempObject).FData.Mine_Index;

  rSend.RPPlatformID   := vIndex; // ID nya launcher / vehicle def
  rSend.NewPlatformID  := 0;  // digenerate server. client kirim 0
  rSend.RPGroupID      := FGroupID;
  rSend.TrackIdent     := edtTrackId.Text;
  rSend.InstanceName   := edtName.Text;
  rSend.pX := MapPositionX;
  rSend.pY := MapPositionY;

  rSend.PHeading  := StrToFloat(edtHeading.Text);
  rSend.PSpeed    := StrToFloat(edtSpeed.Text);

  if FDeployedObject <> nil then begin

    if FDeployedObject is TMine_Definition then
    begin
      rSend.PAltitude := StrToFloat(edtAltitude.Text);
    end;

    if FDeployedObject is TMissile_Definition then begin
      rSend.PAltitude := StrToFloat(edtAltitude.Text) * C_Feet_To_Meter;
    end;

    if FDeployedObject is TVehicle_Definition then begin
      if TVehicle_Definition(FDeployedObject).FData.Platform_Domain = 0 then //air
      begin
        rSend.PAltitude := StrToFloat(edtAltitude.Text) * C_Feet_To_Meter;
      end
      else
      if  TVehicle_Definition(FDeployedObject).FData.Platform_Domain = 2 then //subsurface
      begin
        rSend.PAltitude := StrToFloat(edtAltitude.Text);
      end;
    end;
  end;

//  rSend.PAltitude := StrToFloat(edtAltitude.Text);

  case rgForceDesignation.ItemIndex of
    0 : rSend.ForceDesignation  := 1;   //mk Force Designation 27042012
    1 : rSend.ForceDesignation  := 2;   //mk Force Designation 27042012
    2 : rSend.ForceDesignation  := 3;   //mk Force Designation 27042012
    3 : rSend.ForceDesignation  := 4;   //mk Force Designation 27042012
    4 : rSend.ForceDesignation  := 5;   //mk Force Designation 27042012
  end;

  simMgrClient.netSend_CmdLaunchRP(rSend);

  Close;
end;

procedure TfrmRPLibrary.btnNextClick(Sender: TObject);
var
  s: string;
  node : TTreeNode;
begin
//  if lvObject.ItemIndex < 0 then   //diganti ke treeview
//    exit;

  if not Assigned(tvRuntimePlatform.Selected) then
  Exit;

  node := tvRuntimePlatform.Selected.Parent;

  FDeployedObject := tvRuntimePlatform.Selected.Data;//lvObject.Items[lvObject.ItemIndex].Data;
  if FDeployedObject = nil then
    exit;

  case Notebook1.PageIndex of
    0 : begin
      Notebook1.PageIndex := 1;

      if FDeployedObject is TVehicle_Definition then begin
        s := TVehicle_Definition(FDeployedObject).FData.Vehicle_Identifier;
        lbClass.Caption := s;
        edtName.Text    := s;
      end else
      if FDeployedObject is TMissile_Definition then begin
        s := TMissile_Definition(FDeployedObject).FData.Class_Identifier;
        lbClass.Caption := s;
        edtName.Text    := s;
      end else
      if FDeployedObject is TTorpedo_Definition then begin
        s := TTorpedo_Definition(FDeployedObject).FData.Class_Identifier;
        lbClass.Caption := s;
        edtName.Text    := s;
      end else
      if FDeployedObject is TMine_Definition then begin
        s := TMine_Definition(FDeployedObject).FData.Mine_Identifier;
        lbClass.Caption := s;
        edtName.Text    := s;
      end else
      {if FDeployedObject.ClassType = TSonobuoy_On_Board then begin
        lbClass.Caption := TSonobuoy_On_Board(FDeployedObject).FDef.Class_Identifier;
        edtName.Text := TSonobuoy_On_Board(FDeployedObject).FDef.Class_Identifier;
      end; }

      btnLaunch.Enabled := false;
      btnNext.Enabled := false;  //
    end;
    1 :  begin
      if (Length(Trim(edtName.Text)) > 0) and (Length(Trim(edtTrackId.Text)) > 0) then
      begin
        Notebook1.PageIndex := 2;
        if FDeployedObject <> nil then begin

          if FDeployedObject is TMine_Definition then
          begin
           lbAltitude.Enabled := True;
           edtAltitude.Enabled := True;
           edtAltitude.Text := '0';
           lbAltitude.Caption := 'Depth :'
          end;

          if FDeployedObject is TMissile_Definition then begin
            lbAltitude.Enabled := True;
            edtAltitude.Enabled := True;
            lbAltitude.Caption := 'Altitude :'
          end;

          if FDeployedObject is TVehicle_Definition then begin
            if TVehicle_Definition(FDeployedObject).FData.Platform_Domain = 0 then
            begin
              lbAltitude.Enabled := True;
              edtAltitude.Enabled := True;
             // edtSpeed.Text := FloatToStr(TVehicle_Definition(FDeployedObject).FMotion.FData.Min_Ground_Speed);
              lbAltitude.Caption := 'Altitude :'
            end
            else
            if  TVehicle_Definition(FDeployedObject).FData.Platform_Domain = 2 then
            begin
               lbAltitude.Enabled := True;
               edtAltitude.Enabled := True;
               edtAltitude.Text := '0';
               lbAltitude.Caption := 'Depth :'
            end
            else
            begin
               lbAltitude.Enabled := False;
               edtAltitude.Enabled := False;
               edtAltitude.Text := '0';
            end;

            lbClassLaunch.Caption := lbClass.Caption;
            lbNameLaunch.Caption  := edtName.Text;
          end;
        end;

        btnLaunch.Enabled := false;
        btnNext.Enabled   := true;
      end
      else
      begin
        MessageDlg('Name or ID Track is empty!', mtWarning, [mbOK], 0);
      end;
    end;
    2: begin
      if FDeployedObject is TVehicle_Definition then begin
        if TVehicle_Definition(FDeployedObject).FData.Platform_Domain = 0 then
        begin
          if edtAltitude.Text = '0' then
          begin
            MessageDlg('Air Platform Must Have Altitude More Than 0 Meter', mtWarning, [mbOK], 0);
            Exit;
          end;
        end;
      end;

      if (Length(Trim(edtPosition.Text)) > 0) then
      begin
        Notebook1.PageIndex := 3;
        btnLaunch.Enabled := false;
        btnNext.Enabled   := false;
      end
      else
      begin
        MessageDlg('Value of Deploy Positions is empty!', mtWarning, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TfrmRPLibrary.btnPositionClick(Sender: TObject);
begin
  VSimMap.FMap.CurrentTool := mtDeployPosition;
end;

procedure TfrmRPLibrary.edtAltitudeKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;
end;

procedure TfrmRPLibrary.edtHeadingKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;
end;

procedure TfrmRPLibrary.edtSpeedKeyPress(Sender: TObject; var Key: Char);
var
  ValKey : set of AnsiChar;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;
end;

procedure TfrmRPLibrary.edtTrackIdChange(Sender: TObject);
begin
  if (Length(edtTrackId.Text) > 0) then      //
    btnNext.Enabled := True
  else
    btnNext.Enabled := False;
end;

procedure TfrmRPLibrary.edtTrackIdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (Length(edtTrackId.Text) > 0) then      //
      btnNext.Enabled := True
    else
      btnNext.Enabled := False;
  end
  else
    btnNext.Enabled := False;
end;

procedure TfrmRPLibrary.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfrmRPLibrary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmRPLibrary := nil;
  Action := caFree;
end;

procedure TfrmRPLibrary.FormCreate(Sender: TObject);
var
  i,j : integer;
  aObject : TObject;

  tn, tnItem : TTreeNode;
  recLBN     : TRuntime_Platform_Library;
  recPLE     : TPlatform_Library_Entry;
  Pi : TPlatform_Instance;
begin
//  lvObject.Items.Clear;

  for i := 0 to simMgrClient.Scenario.RuntimePlatformLibrary.Count - 1 do
  begin
    recLBN := simMgrClient.Scenario.RuntimePlatformLibrary.Items[i];

    tn := TTreeNode.Create(tvRuntimePlatform.Items);
    tn := tvRuntimePlatform.Items.Add(tn, recLBN.FData.Library_Name);

    for j := 0 to recLBN.FPlatform_Library_Entry.Count - 1 do begin
      recPLE := recLBN.FPlatform_Library_Entry.Items[j];

      with recPLE.FData do
      begin
        aObject := nil;

        if Vehicle_Index <> 0 then
        begin
          //dmTTT.GetVehicle_Definition(Vehicle_Index, TVehicle_Definition(aObject));
          Pi := simMgrClient.Scenario.GetPiRuntimePlatform(Vehicle_Index);
          tnItem := tvRuntimePlatform.Items.AddChildObject(tn,
            Pi.Vehicle.FData.Vehicle_Identifier, TVehicle_Definition(Pi.Vehicle));
        end;

        if Missile_Index <> 0 then
        begin
          //dmTTT.getMissile_Def(TMissile_Definition(aObject), Missile_Index);
          Pi := simMgrClient.Scenario.GetPiRuntimePlatform(Missile_Index);
          tnItem := tvRuntimePlatform.Items.AddChildObject(tn,
            Pi.Missile.FData.Class_Identifier, TMissile_Definition(Pi.Missile));
        end;

        if Torpedo_Index <> 0 then
        begin
          //dmTTT.getTorpedo_Def(TTorpedo_Definition(aObject), Torpedo_Index);
          Pi := simMgrClient.Scenario.GetPiRuntimePlatform(Torpedo_Index);
          tnItem := tvRuntimePlatform.Items.AddChildObject(tn,
            Pi.Torpedo.FData.Class_Identifier, TTorpedo_Definition(Pi.Torpedo));
        end;

        if Mine_Index <> 0 then
        begin
          //dmTTT.getMine_def(TMine_Definition(aObject), Mine_Index);
          Pi := simMgrClient.Scenario.GetPiRuntimePlatform(Mine_Index);
          tnItem := tvRuntimePlatform.Items.AddChildObject(tn,
            Pi.Mine.FData.Mine_Identifier, TMine_Definition(Pi.Mine));
        end;
      end;
    end;
  end;
//  for i := 0 to simMgrClient.Scenario.RuntimePlatformLibrary.Count - 1 do begin         // diganti prosesnya
//    aObject := simMgrClient.Scenario.RuntimePlatformLibrary[i];
//
//    if aObject is TVehicle_Definition then
//      with TVehicle_Definition(aObject) do
//        lvObject.AddItem(FData.Vehicle_Identifier,aObject);
//
//    if aObject is TMissile_Definition then
//      with TMissile_Definition(aObject) do
//        lvObject.AddItem(FData.Class_Identifier,aObject);
//
//    if aObject is TTorpedo_Definition then
//      with TTorpedo_Definition(aObject) do
//        lvObject.AddItem(FData.Class_Identifier,aObject);
//
//    if aObject is TMine_Definition then
//      with TMine_Definition(aObject) do
//        lvObject.AddItem(FData.Mine_Identifier,aObject);
//
//    {if aObject.ClassType = TSonobuoy_On_Board then
//      with TSonobuoy_On_Board(aObject) do
//        lvObject.AddItem(FDef.Class_Identifier,aObject);}
//  end;
//
//  lvObject.AlphaSort;

  for i := 1 to 5 do begin
    FForceList[i] := TStringList.Create;
  end;

  FGroupID := 0;
  Notebook1.PageIndex := 0;
  btnLaunch.Enabled   := false;
  btnNext.Enabled     := true;
end;

procedure TfrmRPLibrary.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfrmRPLibrary.lbxGroupClick(Sender: TObject);
var g: T3CubicleGroup;
begin
  btnLaunch.Enabled := lbxGroup.ItemIndex >= 0;

  if lbxGroup.ItemIndex < 0 then
    exit;

  g := lbxGroup.Items.Objects[lbxGroup.ItemIndex] as T3CubicleGroup;
  if Assigned(g) then
    FGroupID := g.FData.Group_Index
  else
    FGroupID := 0;
end;

procedure TfrmRPLibrary.lvObjectCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
begin
  Compare := CompareText(Item1.Caption, Item2.Caption);
end;

procedure TfrmRPLibrary.rgForceDesignationClick(Sender: TObject);
var i, j: integer;
begin
  lbxGroup.Items.Clear;

  i := rgForceDesignation.ItemIndex + 1;
  if (i > 0) and (i < 6) then begin
    for j := 0 to FForceList[i].Count - 1 do
      lbxGroup.Items.AddObject(FForceList[i][j],FForceList[i].Objects[j]);

    //lbxGroup.Items.Add('Controler');
  end;

  if lbxGroup.Count > 0 then begin
    btnLaunch.Enabled := true;
    lbxGroup.ItemIndex := 0;
    lbxGroupClick(lbxGroup);
  end
  else begin
    btnLaunch.Enabled := false;
  end;

end;

//procedure TfrmRPLibrary.SetDeployedObject(const Value: TObject);
//begin
//  FDeployedObject := Value;
//end;

procedure TfrmRPLibrary.SetMapPositionX(const Value: double);
begin
  FMapPositionX := Value;
  edtPosition.Text := formatDM_longitude(FMapPositionX) + '  '
  + formatDM_latitude(FMapPositionY);
end;

procedure TfrmRPLibrary.SetMapPositionY(const Value: double);
begin
  FMapPositionY := Value;
  edtPosition.Text := formatDM_longitude(FMapPositionX) + '  '
  + formatDM_latitude(FMapPositionY);
end;

procedure TfrmRPLibrary.SetUpGroupAndForce;
var i, f: integer;
    grp: T3CubicleGroup;
begin
  for i := 1 to 5 do begin
    FForceList[i].Clear;
  end;

  if not Assigned (VScenario) then
    exit;

  for i := 0 to VScenario.CubiclesGroupsList.Count - 1 do
  begin
    grp := VScenario.CubiclesGroupsList.Items[i] as T3CubicleGroup;
    if grp = nil then
      continue;

    f := grp.FData.Force_Designation;
    if (f < 1) or (f > 5 ) then
      f := 5;

    FForceList[f].AddObject(grp.FData.Group_Identifier, grp);
    //FForceList[f].AddObject('Controler',);
  end;

  rgForceDesignation.ItemIndex := 0;
end;

end.
