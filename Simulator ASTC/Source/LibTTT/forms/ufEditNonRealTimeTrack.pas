unit ufEditNonRealTimeTrack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, StdCtrls, ComCtrls, ExtCtrls, uT3Vehicle, uT3Unit,
  uSimObjects, uGameData_TTT, System.ImageList, Vcl.Themes, Vcl.Mask;

type
{$REGION 'customize edit style'}
  {customize edit style}
  TEdit = Class (Vcl.StdCtrls.TEdit);
  TMemo = Class (Vcl.StdCtrls.TMemo);
  TButtonedEdit = Class (Vcl.ExtCtrls.TButtonedEdit);
  TLabeledEdit = Class (Vcl.ExtCtrls.TLabeledEdit);

  TEditStyleHookColor = class(TEditStyleHook)
  private
    procedure WMPaint(var msg: TWMPaint); message WM_PAINT;
    procedure UpdateColors;
  protected
    procedure WndProc(var Message: TMessage); override;
  public
    constructor Create(AControl:TWinControl); override;
  end;

  TMemoStyleHookColor = class(TMemoStyleHook)
  private
    procedure WMPaint(var msg: TWMPaint); message WM_PAINT;
    procedure UpdateColors;
  protected
    procedure WndProc(var Message: TMessage); override;
  public
    constructor Create(AControl: TWinControl); override;
  end;
  {end customize edit style}
{$ENDREGION}

  TfrmEditNonRealTimeTrack = class(TForm)
    Lbltrack: TLabel;
    lbltrack1: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    edtnameTrack: TEdit;
    edtTypeEditNonRealTimeTrack: TEdit;
    PageControl1: TPageControl;
    tsTrack: TTabSheet;
    tsDetails: TTabSheet;
    btnType: TButton;
    ImageList1: TImageList;
    btnclose: TButton;
    PmenuType: TPopupMenu;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtDomain: TEdit;
    Label6: TLabel;
    edtIdentity: TEdit;
    edtforce: TEdit;
    edtposition: TEdit;
    btnDomain: TButton;
    btnforce: TButton;
    btnPosition: TButton;
    lbAltitude: TLabel;
    edtAltitude: TEdit;
    Label8: TLabel;
    edtCourse: TEdit;
    lbCourse: TLabel;
    Label10: TLabel;
    lbGroundSpeed: TLabel;
    edtGroundSpeed: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtClass: TEdit;
    edtPlatformType: TEdit;
    edtPropulsionType: TEdit;
    edtLastUpdated: TEdit;
    edtTrackIden: TEdit;
    btnPlatformType: TButton;
    btnpropulsiontype: TButton;
    btnLastUpdated: TButton;
    NonRealTime1: TMenuItem;
    NonRealTimeBearingTrack1: TMenuItem;
    NonRealTime2: TMenuItem;
    SpecialPoint1: TMenuItem;
    pmDomain: TPopupMenu;
    Air1: TMenuItem;
    Surface1: TMenuItem;
    Subsurface1: TMenuItem;
    Land1: TMenuItem;
    General1: TMenuItem;
    pmIdentity: TPopupMenu;
    Pending1: TMenuItem;
    Unknown1: TMenuItem;
    AssumedFriend1: TMenuItem;
    Friend1: TMenuItem;
    Neutral1: TMenuItem;
    Suspect1: TMenuItem;
    Hostile1: TMenuItem;
    pmforce: TPopupMenu;
    ForceRed1: TMenuItem;
    ForceBlue1: TMenuItem;
    ForceGreen1: TMenuItem;
    ForceAmber1: TMenuItem;
    NoForce1: TMenuItem;
    pmPlatformType: TPopupMenu;
    pmPropulsionType: TPopupMenu;
    btnIdentityTrack: TButton;
    Acoustic1: TMenuItem;
    Unknown2: TMenuItem;
    Convensional1: TMenuItem;
    Nuclear1: TMenuItem;
    grpNonRealPoint: TGroupBox;
    grpRealTime: TGroupBox;
    grpNonRealBearing: TGroupBox;
    grpNonRealSpecial: TGroupBox;
    grpNonRealAOP: TGroupBox;
    grpESM: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtNameRT: TEdit;
    edtClassTrack: TEdit;
    edtTypeTrack: TEdit;
    edtDomainTrack: TEdit;
    edtIdentityTrack: TEdit;
    edtPropulsionTypeTrack: TEdit;
    btnBTtype: TButton;
    btnBTpropulsiontype: TButton;
    pmpumtype: TPopupMenu;
    mnAircraftCarrier: TMenuItem;
    mnAmphibiousWarfare: TMenuItem;
    mnAuxiliary: TMenuItem;
    mnChaff: TMenuItem;
    mnCruiserGuidedMissile: TMenuItem;
    mnDestroyer: TMenuItem;
    mnDestroyerGuidedMissle: TMenuItem;
    mnFrigate: TMenuItem;
    mnFrigateGuidedMissle: TMenuItem;
    mnInfraredDecoy: TMenuItem;
    mnJammerDecoy: TMenuItem;
    mnMerchant: TMenuItem;
    mnMineWar: TMenuItem;
    mnPatrolCraff: TMenuItem;
    mnUtility: TMenuItem;
    mnOther: TMenuItem;
    j: TPopupMenu;
    mnAir: TMenuItem;
    mnSurface: TMenuItem;
    mnSubsurface: TMenuItem;
    mnLand: TMenuItem;
    mnGeneral: TMenuItem;
    pmpumidentity: TPopupMenu;
    mnPending: TMenuItem;
    mnUnknown: TMenuItem;
    mnAssumedFriend: TMenuItem;
    mnFriend: TMenuItem;
    mnNeutral: TMenuItem;
    mnSuspent: TMenuItem;
    mnHostile: TMenuItem;
    lbl7: TLabel;
    edtNRBBearing: TEdit;
    btnBearingDomain: TButton;
    btnBearingIdentity: TButton;
    lbl8: TLabel;
    lbl9: TLabel;
    edtNRBForce: TEdit;
    btn3: TButton;
    edtNRBPosition: TEdit;
    btn4: TButton;
    lbl10: TLabel;
    lbl11: TLabel;
    edtNRBIdentity: TEdit;
    edtNRBDomain: TEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    edtAOPDomain: TEdit;
    btn1: TButton;
    edtAOPIdentity: TEdit;
    btn2: TButton;
    lbl14: TLabel;
    lbl15: TLabel;
    edtAOPForce: TEdit;
    btn5: TButton;
    btn6: TButton;
    edtAOPCenter: TEdit;
    lbl16: TLabel;
    lbl17: TLabel;
    edtAOPGroundSpeed: TEdit;
    lbl18: TLabel;
    lbl19: TLabel;
    edtNRSDomain: TEdit;
    btn7: TButton;
    edtNRSSymbolType: TEdit;
    btn8: TButton;
    lbl20: TLabel;
    lbl21: TLabel;
    edtNRSForce: TEdit;
    btn9: TButton;
    btn10: TButton;
    edtNRSPosition: TEdit;
    lbl22: TLabel;
    lbl23: TLabel;
    edtNRSAltitude: TEdit;
    lbl24: TLabel;
    btn11: TButton;
    edtESMForce: TEdit;
    lbl25: TLabel;
    lbl26: TLabel;
    edtESMIdentity: TEdit;
    btn12: TButton;
    btn13: TButton;
    edtESMDomain: TEdit;
    lbl27: TLabel;
    edtESMOrigin: TEdit;
    btn14: TButton;
    lbl28: TLabel;
    btnDomainRT: TButton;
    btnIdentityRT: TButton;
    btnPropReal: TButton;
    pmGeneralSpecial: TPopupMenu;
    pmAirSpecial: TPopupMenu;
    pmASW: TPopupMenu;
    ASWGeneral1: TMenuItem;
    BriefContact1: TMenuItem;
    Datum1: TMenuItem;
    Kingpin1: TMenuItem;
    Riser1: TMenuItem;
    SearchCenter1: TMenuItem;
    Sinker1: TMenuItem;
    WeaponEntryPoint1: TMenuItem;
    Wreck1: TMenuItem;
    AirGeneral1: TMenuItem;
    AirborneEarlyWarning1: TMenuItem;
    Bullseye1: TMenuItem;
    CombatAirPatrol1: TMenuItem;
    DitchedAirCraft1: TMenuItem;
    Gate1: TMenuItem;
    General2: TMenuItem;
    Bouy1: TMenuItem;
    DatalinkReferencePoint1: TMenuItem;
    DistressedVessel1: TMenuItem;
    ESMECMFix1: TMenuItem;
    GroundZero1: TMenuItem;
    ManInZero1: TMenuItem;
    MaritimeHeadquarter1: TMenuItem;
    MineHazard1: TMenuItem;
    NavigationHazart1: TMenuItem;
    OilRig1: TMenuItem;
    Station1: TMenuItem;
    acticalGridOrigin1: TMenuItem;
    edtTrackNumber: TEdit;
    procedure btnTypeClick(Sender: TObject);
    procedure btnDomainClick(Sender: TObject);
    procedure btnforceClick(Sender: TObject);
    procedure btnIdentityTrackClick(Sender: TObject);
    procedure btnPlatformTypeClick(Sender: TObject);
    procedure btnpropulsiontypeClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ForceRed1Click(Sender: TObject);
    procedure ForceBlue1Click(Sender: TObject);
    procedure ForceGreen1Click(Sender: TObject);
    procedure ForceAmber1Click(Sender: TObject);
    procedure NoForce1Click(Sender: TObject);
    procedure Pending1Click(Sender: TObject);
    procedure Unknown1Click(Sender: TObject);
    procedure AssumedFriend1Click(Sender: TObject);
    procedure Friend1Click(Sender: TObject);
    procedure Neutral1Click(Sender: TObject);
    procedure Suspect1Click(Sender: TObject);
    procedure Hostile1Click(Sender: TObject);
    procedure NonRealTime1Click(Sender: TObject);
    procedure NonRealTimeBearingTrack1Click(Sender: TObject);
    procedure NonRealTime2Click(Sender: TObject);
    procedure SpecialPoint1Click(Sender: TObject);
    procedure Air1Click(Sender: TObject);
    procedure Surface1Click(Sender: TObject);
    procedure Subsurface1Click(Sender: TObject);
    procedure Land1Click(Sender: TObject);
    procedure General1Click(Sender: TObject);
    procedure edtGroundSpeedKeyPress(Sender: TObject; var Key: Char);
    procedure edtCourseKeyPress(Sender: TObject; var Key: Char);
    procedure edtAltitudeKeyPress(Sender: TObject; var Key: Char);
    procedure btnPositionClick(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure ASWGeneral1Click(Sender: TObject);
    procedure mnAirClick(Sender: TObject);
    procedure mnPendingClick(Sender: TObject);
    procedure edtTrackNumberKeyPress(Sender: TObject; var Key: Char);
    procedure edtnameTrackKeyPress(Sender: TObject; var Key: Char);
    procedure btn15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnLastUpdatedClick(Sender: TObject);
    procedure edtAOPCenterKeyPress(Sender: TObject; var Key: Char);
    procedure edtLastUpdatedKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
    FMapPositionX: double;
    FMapPositionY: double;

    identity : integer;
    domain : Integer;
    force : Integer;
    sym   : string;

    procedure SetMapPositionX(const Value: double);
    procedure SetMapPositionY(const Value: double);
    procedure setESMProperty;
  public
    { Public declarations }
    Data : TSimObject;
    rec : TRecCmd_NRP_SET_PROPERTY;
    recVehicle: TRecCmd_Platform_SET_PROPERTY;    //test mk
    recESM : TRecCmd_ESM_SET_PROPERTY;

    procedure SetDomainText(value : String);
    procedure SetIdentityText(value : String);
    procedure SetForceText(value : String);

    procedure SetRecord;

    property MapPositionX : double read FMapPositionX write SetMapPositionX;
    property MapPositionY : double read FMapPositionY write SetMapPositionY;

    procedure UpdateTrackDetailInfo(obj : TSimObject);
    procedure UpdateTrackInfo(obj : TSimObject);
    procedure UpdateViewBtn(obj : TSimObject);

    procedure HideAltitude;
    procedure ShowAltitude;
  end;

var
  frmEditNonRealTimeTrack: TfrmEditNonRealTimeTrack;

implementation

uses
  tttData, uMapXHandler,
  uSimMgr_Client, uBaseCoordSystem, uT3DetectedTrack, ufTacticalDisplay,
  StrUtils, Vcl.Styles;

{$R *.dfm}

{$REGION 'customize edit style'}
{customize edit style}
type
  TWinControlH = class(TWinControl);
{end customize edit style}
{$ENDREGION}

function FoundIndexOfString(str, findstr: string):Integer;
var
  i : Integer;
  S : string;
begin
  for i := 0 to Length(str) - 1 do
  begin
    S := str[i];

    if S = findstr then
    begin
      Result := i;
      Break;
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.Air1Click(Sender: TObject);
begin
  SetDomainText(vhdsAir);
  domain := vhdAir;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKDOMAIN;
    rec.domain := vhdAir;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.AssumedFriend1Click(Sender: TObject);
begin
  SetIdentityText(pfAssumedFriend);
  identity := piAssumedFriend;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piAssumedFriend;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.ASWGeneral1Click(Sender: TObject);
begin
  edtNRSSymbolType.Text := TMenuItem(Sender).Hint;
  sym := TMenuItem(Sender).Hint;

  SetRecord;
  rec.symbol := sym;
  rec.OrderID := NRP_ID_SYMBOLTYPE;
  //TT3NonRealVehicle(Data).SymbolType := sym;

  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.btn15Click(Sender: TObject);
begin
  grpNonRealPoint.BringToFront;
end;

procedure TfrmEditNonRealTimeTrack.btn8Click(Sender: TObject);
var
  p: Tpoint;
begin
  GetCursorPos(p);
  case TT3NonRealVehicle(Data).TrackDomain of
    vhdAir : pmAirSpecial.Popup(p.X, p.Y);
    vhdGeneral : pmGeneralSpecial.Popup(p.X, p.Y);

  else
    pmASW.Popup(p.X, p.Y);
  end;
end;

procedure TfrmEditNonRealTimeTrack.btncloseClick(Sender: TObject);
var
//  recVehicle: TRecCmd_Platform_SET_PROPERTY;
//  recESM : TRecCmd_ESM_SET_PROPERTY;
  NRPGroupID : Integer;
begin
  if simMgrClient.ISInstructor then
    NRPGroupID := 0
  else
    NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;

  {sync domain, identity, platformtype}
  if (Data is TT3NonRealVehicle ) then
  begin
    rec.PlatfomID := TT3NonRealVehicle(Data).InstanceIndex;
    rec.domain := Self.domain;
    rec.identity := Self.identity;
    rec.TypeNRP := TT3NonRealVehicle(Data).NRPType;
    rec.platformType := TT3NonRealVehicle(Data).PlatformType;
    rec.Force := Self.force;
    rec.symbol := sym;

    rec.OrderID := NRP_ID_ALL;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);

    simMgrClient.netSend_CmdPlatform_Move(TT3Unit(Data).InstanceIndex,
        CORD_ID_REPOS, TT3PlatformInstance(data).getPositionX, TT3PlatformInstance(data).getPositionY, NRPGroupID);
  end
  else if (Data is TT3Vehicle) then
  begin
  end
  else if (Data is TT3ESMTrack) then
  begin
  end;

  close;
end;

procedure TfrmEditNonRealTimeTrack.btnDomainClick(Sender: TObject);
var
  p: Tpoint;
begin
  GetCursorPos(p);
  pmDomain.Popup(p.X, p.Y);
end;

procedure TfrmEditNonRealTimeTrack.btnforceClick(Sender: TObject);
var
  p: Tpoint;
begin
  GetCursorPos(p);
  pmforce.Popup(p.X, p.Y);

end;

procedure TfrmEditNonRealTimeTrack.btnIdentityTrackClick(Sender: TObject);
var
 p: Tpoint;
begin
  GetCursorPos(p);
  pmIdentity.Popup(p.X,p.Y);
end;

procedure TfrmEditNonRealTimeTrack.btnLastUpdatedClick(Sender: TObject);
var
  v: TT3NonRealVehicle;
  aRec : TRecCmd_LastUpdatePlatform;
  DateStr : string;
  MySettings: TFormatSettings;
begin
  MySettings := GetFormatSettings;

  DateStr := DateTimeToStr(simMgrClient.GameTIME, MySettings);
  edtLastUpdated.Text := DateStr;
  if Assigned(Data) and (Data is TT3NonRealVehicle) then
  begin
    v := data as TT3NonRealVehicle;

    aRec.PlatfomID := v.InstanceIndex;
    aRec.UpdateTime := DateStr;
    SimMgrClient.netSend_CmdLastUpdatePlatform(aRec);
  end;
end;

procedure TfrmEditNonRealTimeTrack.btnPlatformTypeClick(Sender: TObject);
var
  p: Tpoint;
begin
  GetCursorPos (p);
  pmPlatformType.Popup(p.X, p.Y);
end;

procedure TfrmEditNonRealTimeTrack.btnpropulsiontypeClick(Sender: TObject);
var
 p: Tpoint;
begin
 GetCursorPos(p);
 pmPropulsionType.Popup(p.X, p.Y);
end;

procedure TfrmEditNonRealTimeTrack.btnTypeClick(Sender: TObject);
var
  p: Tpoint;
begin
  if not (Data is TT3NonRealVehicle) then
    Exit;

  GetCursorPos(p);
  PmenuType.Popup(p.X, p.Y);
end;

procedure TfrmEditNonRealTimeTrack.Button1Click(Sender: TObject);
begin
  grpRealTime.BringToFront;
end;

procedure TfrmEditNonRealTimeTrack.Button2Click(Sender: TObject);
begin
  grpNonRealBearing.BringToFront;
end;

procedure TfrmEditNonRealTimeTrack.Button3Click(Sender: TObject);
begin
   grpNonRealSpecial.BringToFront;
end;

procedure TfrmEditNonRealTimeTrack.Button4Click(Sender: TObject);
begin
   grpNonRealAOP.BringToFront;
end;

procedure TfrmEditNonRealTimeTrack.Button5Click(Sender: TObject);
begin
  grpESM.BringToFront;
end;

procedure TfrmEditNonRealTimeTrack.btnPositionClick(Sender: TObject);
begin
  VSimMap.FMap.CurrentTool := mtDeployPosition;
end;

procedure TfrmEditNonRealTimeTrack.edtAltitudeKeyPress(Sender: TObject;
      var Key: Char);
var
  ValKey : set of AnsiChar;
  Altitude: double;
  v : TT3NonRealVehicle;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    TryStrToFloat(TEdit(Sender).Text, Altitude);
    if Assigned(Data) and (Data is TT3NonRealVehicle) then
    begin
        v := Data as TT3NonRealVehicle;
        if v.TrackDomain = vhdAir then
        begin
          Altitude := ((Altitude * Altitude) / (Altitude * C_Meter_To_Feet));
          v.OrderedAltitude := Altitude;
        end;

        SimMgrClient.netSend_CmdPlatform(v.InstanceIndex,
          CORD_ID_MOVE, CORD_TYPE_ALTITUDE, Altitude);
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.edtAOPCenterKeyPress(Sender: TObject;
  var Key: Char);
var
  ValKey : set of AnsiChar;
  Indeks : Integer;
  PosX, PosY, Text : string;
  PosX1, PosY1 : Double;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
//    Text :=
    case TEdit(Sender).Tag of
      0 : // AOP
        begin
          Indeks := FoundIndexOfString(edtAOPCenter.Text, ';');

          PosX := LeftStr(edtAOPCenter.Text, Indeks - 1);
          PosY := MidStr(edtAOPCenter.Text, Indeks + 2, Length(edtAOPCenter.Text));

          rec.PosX := dmToLongitude(PosX);
          rec.PosY := dmToLatitude(PosY);
        end;
      1 : //Bearing
        begin
          Indeks := FoundIndexOfString(edtNRBPosition.Text, ';');

          PosX := LeftStr(edtNRBPosition.Text, Indeks - 1);
          PosY := RightStr(edtNRBPosition.Text, Indeks + 2);

          rec.PosX := dmToLongitude(PosX);
          rec.PosY := dmToLatitude(PosY);
        end;
      2 : //Point
        begin
          Indeks := FoundIndexOfString(edtposition.Text, ';');

          PosX := LeftStr(edtposition.Text, Indeks - 1);
          PosY := MidStr(edtposition.Text, Indeks + 1, Length(edtposition.Text));

          rec.PosX := dmToLongitude(PosX);
          rec.PosY := dmToLatitude(PosY);
        end;
      3 : //Special point
        begin
          Indeks := FoundIndexOfString(edtNRSPosition.Text, ';');

          PosX := LeftStr(edtNRSPosition.Text, Indeks - 1);
          PosY := RightStr(edtNRSPosition.Text, Indeks + 2);

          rec.PosX := dmToLongitude(PosX);
          rec.PosY := dmToLatitude(PosY);
        end;
    end;

    rec.OrderID := NRP_ID_POSITION;
//    rec.domain := vhdAir;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end;
end;

procedure TfrmEditNonRealTimeTrack.edtCourseKeyPress(Sender: TObject;
      var Key: Char);
var
  ValKey : set of AnsiChar;
  heading: double;
  v: TT3NonRealVehicle;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    TryStrToFloat(TEdit(Sender).Text, heading);
    if Assigned(Data) and (Data is TT3NonRealVehicle) then
    begin
        v := data as TT3NonRealVehicle;
        v.OrderedHeading := heading;

        if v.NRPType = nrpBearing then
        begin
          SimMgrClient.netSend_CmdPlatform(v.InstanceIndex,
            CORD_ID_MOVE, CORD_TYPE_COURSE, heading);
          Exit;
        end;

        SimMgrClient.netSend_CmdPlatform(v.InstanceIndex,
           CORD_ID_MOVE, CORD_TYPE_COURSE, heading);
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.edtGroundSpeedKeyPress(Sender: TObject;
      var Key: Char);
var
  ValKey : set of AnsiChar;
  Speed: double;
  v : TT3NonRealVehicle;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    TryStrToFloat(TEdit(Sender).Text, Speed);
    if Assigned(Data) and (Data is TT3NonRealVehicle) then begin
        v := Data as TT3NonRealVehicle;

        if v.TrackDomain = vhdLand then
        Exit;

        v.OrderedSpeed := Speed;

        SimMgrClient.netSend_CmdPlatform(v.InstanceIndex,
          CORD_ID_MOVE, CORD_TYPE_SPEED, Speed);
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.edtLastUpdatedKeyPress(Sender: TObject;
  var Key: Char);
var
  ValKey : set of AnsiChar;
  aRec : TRecCmd_LastUpdatePlatform;
  v: TT3NonRealVehicle;
  MySettings: TFormatSettings;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    if Assigned(Data) and (Data is TT3NonRealVehicle) then
    begin
      v := data as TT3NonRealVehicle;

      aRec.PlatfomID := v.InstanceIndex;
      aRec.UpdateTime := edtLastUpdated.Text;
      SimMgrClient.netSend_CmdLastUpdatePlatform(aRec);
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.edtnameTrackKeyPress(Sender: TObject;
  var Key: Char);
var
  value : string;
  rec : TRecCmd_Platform_CHANGE_TRACKNUMBER;
begin
  if Key = #13 then
  begin
    value := TEdit(Sender).Text;

    if data is TT3NonRealVehicle then
    begin
      rec.PlatfomID := TT3NonRealVehicle(Data).InstanceIndex;
      rec.TrackID   := TT3NonRealVehicle(Data).TrackNumber;
      rec.newTrackNumber := 0;
      rec.oldESMNumber := '';
      rec.newESMNumber := '';
      rec.newName := value;

      simMgrClient.netSend_CmdTrack_CHANGE_TRACKNUMBER(rec);
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.edtTrackNumberKeyPress(Sender: TObject;
      var Key: Char);
var
  ValKey : set of AnsiChar;
  rec: TRecCmd_Platform_CHANGE_TRACKNUMBER;
  value : Integer;
  detected : TT3DetectedTrack;
begin
  ValKey := [#48 .. #57, #8, #13, #46];
  if not(CharInSet(Key, ValKey)) then
    Key := #0;

  if Key = #13 then
  begin
    TryStrToInt(TEdit(Sender).Text, value);
    if Assigned(Data) then
    begin
      if Data is TT3DetectedTrack then
      begin
        rec.PlatfomID := TT3DetectedTrack(Data).TrackObject.InstanceIndex;
        rec.TrackID   := TT3DetectedTrack(Data).TrackNumber;
        rec.newTrackNumber := value;
        rec.oldESMNumber := '';
        rec.newESMNumber := '';

        //ShowMessage('new track ' + IntToStr(rec.newTrackNumber) + 'text' + edtNewTrackNumber.Text);
        simMgrClient.netSend_CmdTrack_CHANGE_TRACKNUMBER(rec);
      end
      else if data is TT3ESMTrack then
      begin
        detected := TT3ESMTrack(Data).Parent as TT3DetectedTrack;
        rec.PlatfomID := detected.TrackObject.InstanceIndex;
        rec.TrackID   := detected.TrackNumber;
        rec.newTrackNumber := -1;

        //set ESM ol dan new
        rec.oldESMNumber := TT3ESMTrack(Data).TrackNumber;
        rec.newESMNumber := IntToStr(value);

        //ShowMessage('new track ' + IntToStr(rec.newTrackNumber) + 'text' + edtNewTrackNumber.Text);
        simMgrClient.netSend_CmdTrack_CHANGE_TRACKNUMBER(rec);
      end
      else if data is TT3NonRealVehicle then
      begin
        rec.PlatfomID := TT3NonRealVehicle(Data).InstanceIndex;
        rec.TrackID   := TT3NonRealVehicle(Data).TrackNumber;
        rec.newTrackNumber := value;
        rec.oldESMNumber := '';
        rec.newESMNumber := '';

        //ShowMessage('new track ' + IntToStr(rec.newTrackNumber) + 'text' + edtNewTrackNumber.Text);
        simMgrClient.netSend_CmdTrack_CHANGE_TRACKNUMBER(rec);
      end;
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.ForceAmber1Click(Sender: TObject);
begin
  SetForceText('Force Amber');
  TT3PlatformInstance(Data).Force_Designation := TMenuItem(Sender).Tag;
  SetRecord;
  rec.OrderID := NRP_ID_FORCE;
  rec.Force := TMenuItem(Sender).Tag;
  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.ForceBlue1Click(Sender: TObject);
begin
  SetForceText('Force Blue');
  TT3PlatformInstance(Data).Force_Designation := TMenuItem(Sender).Tag;
  SetRecord;
  rec.OrderID := NRP_ID_FORCE;
  rec.Force := TMenuItem(Sender).Tag;
  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.ForceGreen1Click(Sender: TObject);
begin
  SetForceText('Force Green');
  TT3PlatformInstance(Data).Force_Designation := TMenuItem(Sender).Tag;
  SetRecord;
  rec.OrderID := NRP_ID_FORCE;
  rec.Force := TMenuItem(Sender).Tag;
  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.ForceRed1Click(Sender: TObject);
begin
  SetForceText('Force Red');
  TT3PlatformInstance(Data).Force_Designation := TMenuItem(Sender).Tag;
  SetRecord;
  rec.OrderID := NRP_ID_FORCE;
  rec.Force := TMenuItem(Sender).Tag;

  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfrmEditNonRealTimeTrack.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfrmEditNonRealTimeTrack.FormShow(Sender: TObject);
begin
  edtnameTrack.Enabled := False;
  if (Data is TT3DetectedTrack) or (Data is TT3ESMTrack) or (Data is TT3NonRealVehicle) then
  begin
    edtTrackNumber.Visible := True;
    if Data is TT3DetectedTrack then
      edtTrackNumber.Text := FormatTrackNumber(TT3DetectedTrack(Data).TrackNumber)
    else if data is TT3ESMTrack then
      edtTrackNumber.Text := TT3ESMTrack(Data).TrackNumber
    else if Data is TT3NonRealVehicle then
    begin
      edtTrackNumber.Text := FormatTrackNumber(TT3NonRealVehicle(Data).TrackNumber);
      edtnameTrack.Enabled := true;
    end;
  end
  else
  begin
    edtTrackNumber.Visible := False;
  end;

  UpdateTrackInfo(Data);
  UpdateTrackDetailInfo(Data);
  UpdateViewBtn(Data);
end;

procedure TfrmEditNonRealTimeTrack.Friend1Click(Sender: TObject);
begin
  SetIdentityText(pfFriend);
  identity := piFriend;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piFriend;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.General1Click(Sender: TObject);
begin
  SetDomainText(vhdsGeneral);
  domain := vhdGeneral;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKDOMAIN;
    rec.domain := vhdGeneral;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.Hostile1Click(Sender: TObject);
begin
  SetIdentityText(pfHostile);
  identity := piHostile;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piHostile;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.Land1Click(Sender: TObject);
begin
  SetDomainText(vhdsLand);
  domain := vhdLand;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKDOMAIN;
    rec.domain := vhdLand;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.mnAirClick(Sender: TObject);
var
  dmn : Integer;
begin
  //untuk Detected track
  dmn := -1;

  case TMenuItem(Sender).Tag of
    vhdAir :
    begin
      dmn := vhdAir;
    end;
    vhdSurface :
    begin
      dmn := vhdSurface;
    end;
    vhdSubsurface :
    begin
      dmn := vhdSubsurface;
    end;
    vhdLand :
    begin
      dmn := vhdLand;
    end;
    vhdGeneral :
    begin
      dmn := vhdGeneral;
    end;

    vhdWreck : ;
    vhdAmphibious : ;
  end;

  if dmn <> -1 then
    frmTacticalDisplay.UpdatePlatformProperties(Data, dmn, -1, -1);
end;

procedure TfrmEditNonRealTimeTrack.mnPendingClick(Sender: TObject);
var
  id : Integer;
begin
  //Unutk detected Track
  id := -1;

  case TMenuItem(Sender).Tag of
    piPending :
    begin
      id := piPending;
    end;
    piUnknown :
    begin
      id := piUnknown;
    end;
    piAssumedFriend :
    begin
      id := piAssumedFriend;
    end;
    piFriend :
    begin
      id := piFriend;
    end;
    piNeutral :
    begin
      id := piNeutral;
    end;
    piSuspect :
    begin
      id := piSuspect;
    end;
    piHostile :
    begin
      id := piHostile;
    end;
  end;

  if id <> -1 then
    frmTacticalDisplay.UpdatePlatformProperties(Data, -1, id, -1);
end;

procedure TfrmEditNonRealTimeTrack.Neutral1Click(Sender: TObject);
begin
  SetIdentityText(pfNeutral);
  identity := piNeutral;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piNeutral;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.NoForce1Click(Sender: TObject);
begin
  SetForceText('No Force');
  TT3PlatformInstance(Data).Force_Designation := TMenuItem(Sender).Tag;
  SetRecord;
  rec.OrderID := NRP_ID_FORCE;
  rec.Force := TMenuItem(Sender).Tag;
  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.NonRealTime1Click(Sender: TObject);
begin
  edtTypeEditNonRealTimeTrack.Text := nrpsPoint;
  SetRecord;

  rec.TypeNRP := nrpPoint;
  rec.OrderID := NRP_ID_TYPE;

  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.NonRealTime2Click(Sender: TObject);
begin
  edtTypeEditNonRealTimeTrack.Text := nrpsArea;
  SetRecord;

  rec.TypeNRP := nrpArea;
  rec.OrderID := NRP_ID_TYPE;

  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.NonRealTimeBearingTrack1Click(
  Sender: TObject);
begin
  edtTypeEditNonRealTimeTrack.Text := nrpsBearing;
  SetRecord;

  rec.TypeNRP := nrpBearing;
  rec.OrderID := NRP_ID_TYPE;

  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.Pending1Click(Sender: TObject);
begin
  SetIdentityText(pfPending);
  identity := piPending;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piPending;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.SpecialPoint1Click(Sender: TObject);
begin
  edtTypeEditNonRealTimeTrack.Text := nrpsSpecial;
  SetRecord;

  rec.TypeNRP := nrpSpecial;
  rec.OrderID := NRP_ID_TYPE;

  simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
end;

procedure TfrmEditNonRealTimeTrack.Subsurface1Click(Sender: TObject);
begin
  SetDomainText(vhdsSubsurface);
  domain := vhdSubsurface;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKDOMAIN;
    rec.domain := vhdSubsurface;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.Surface1Click(Sender: TObject);
begin
  SetDomainText(vhdsSurface);
  domain := vhdSurface;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKDOMAIN;
    rec.domain := vhdSurface;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := -1;
    recVehicle.domain := domain;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.Suspect1Click(Sender: TObject);
begin
  SetIdentityText(pfSuspect);
  identity := piSuspect;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piSuspect;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.Unknown1Click(Sender: TObject);
begin
  SetIdentityText(pfUnknown);
  identity := piUnknown;

  SetRecord;

  if (Data is TT3NonRealVehicle) then
  begin
    rec.OrderID := NRP_ID_TRACKIDENT;
    rec.identity := piUnknown;
    simMgrClient.netSend_CmdNRP_CHANGE_PROPERTY(rec);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.identity := identity;
    recVehicle.domain := -1;
    recVehicle.platformType := -1;

    simMgrClient.netSend_CmdPlatform_CHANGE_PROPERTY(recVehicle);
  end
  else if (Data is TT3ESMTrack) then
  begin
    simMgrClient.netSend_CmdESM_CHANGE_PROPERTY(recESM);
  end;
end;

procedure TfrmEditNonRealTimeTrack.SetMapPositionX(const Value: double);
begin
  FMapPositionX := Value;
  edtPosition.Text := formatDM_longitude(FMapPositionX) + '  '
  + formatDM_latitude(FMapPositionY);
end;

procedure TfrmEditNonRealTimeTrack.SetMapPositionY(const Value: double);
begin
  FMapPositionY := Value;
  edtPosition.Text := formatDM_longitude(FMapPositionX) + '  '
  + formatDM_latitude(FMapPositionY);
end;

procedure TfrmEditNonRealTimeTrack.setESMProperty;
begin
  recESM.PlatfomID := TT3DetectedTrack(Data.Parent).TrackObject.InstanceIndex;
  recESM.Tracknumber := TT3ESMTrack(Data).TrackNumber;
  recESM.GrpID := simMgrClient.FMyCubGroup.FData.Group_Index;
  recESM.domain := domain;
  recESM.identity := identity;
end;

procedure TfrmEditNonRealTimeTrack.SetDomainText(value : String);
begin
  edtDomain.Text := value;
  edtNRBDomain.Text := value;
  edtAOPDomain.Text := value;
  edtNRSDomain.Text := value;
  edtDomainTrack.Text := value;
  edtESMDomain.Text := value;
end;

procedure TfrmEditNonRealTimeTrack.SetIdentityText(value : String);
begin
  edtIdentity.Text := value;
  edtNRBIdentity.Text := value;
  edtAOPIdentity.Text := value;
  edtIdentityTrack.Text := value;
  edtESMIdentity.Text := value;
end;

procedure TfrmEditNonRealTimeTrack.SetForceText(value : String);
begin
  edtforce.Text := value;
  edtNRBForce.Text := value;
  edtAOPForce.Text := value;
  edtNRSForce.Text := value;

  edtESMForce.Text := value;
end;

procedure TfrmEditNonRealTimeTrack.SetRecord;
var
   NRPGroupID : Integer;
begin
  if simMgrClient.ISInstructor then
    NRPGroupID := 0
  else
    NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;

  if (Data is TT3NonRealVehicle ) then
  begin
    rec.PlatfomID := TT3NonRealVehicle(Data).InstanceIndex;
    rec.domain := Self.domain;
    rec.identity := Self.identity;
    rec.TypeNRP := TT3NonRealVehicle(Data).NRPType;
    rec.platformType := TT3NonRealVehicle(Data).PlatformType;
    rec.Force  := Self.force;
    rec.symbol := sym;

    simMgrClient.netSend_CmdPlatform_Move(TT3Unit(Data).InstanceIndex,
        CORD_ID_REPOS, MapPositionX, MapPositionY, NRPGroupID);
  end
  else if (Data is TT3Vehicle) then
  begin
    recVehicle.PlatfomID := TT3Vehicle(Data).InstanceIndex;

    if simMgrClient.ISInstructor then
      recVehicle.GrpID := 0
    else
      recVehicle.GrpID := simMgrClient.FMyCubGroup.FData.Group_Index;
  end
  else if (Data is TT3ESMTrack) then    //sementara gni dlu y
  begin
    setESMProperty;
  end
  else if (Data is TT3DetectedTrack) then
  begin
    recVehicle.PlatfomID := TT3DetectedTrack(Data).TrackObject.InstanceIndex;

    if simMgrClient.ISInstructor then
      recVehicle.GrpID := 0
    else
      recVehicle.GrpID := simMgrClient.FMyCubGroup.FData.Group_Index;
  end;
end;

procedure TfrmEditNonRealTimeTrack.UpdateTrackDetailInfo(obj : TSimObject);
var
  objRealTime : TT3Vehicle;
  objNRP : TT3NonRealVehicle;
  objESM : TT3ESMTrack;
  objDetectedTrack : TT3DetectedTrack;
  pType : string;
begin
  {group box}
  if obj is TT3NonRealVehicle then
  begin
    objNRP := obj as TT3NonRealVehicle;

    //set data to groupbox non Real
    identity := objNRP.TrackIdent;
    domain := objNRP.TrackDomain;
    force := objNRP.Force_Designation;

    case identity of
      piPending       : edtIdentity.Text := pfPending;
      piUnknown       : edtIdentity.Text := pfUnknown;
      piAssumedFriend : edtIdentity.Text := pfAssumedFriend;
      piFriend        : edtIdentity.Text := pfFriend;
      piNeutral       : edtIdentity.Text := pfNeutral;
      piSuspect       : edtIdentity.Text := pfSuspect;
      piHostile       : edtIdentity.Text := pfHostile;
    else
      edtIdentity.Text := pfPending;
    end;

    case domain of
      vhdAir          : edtDomain.Text := vhdsAir;
      vhdSurface      : edtDomain.Text := vhdsSurface;
      vhdSubsurface   : edtDomain.Text := vhdsSubsurface;
      vhdLand         : edtDomain.Text := vhdsLand;
      vhdGeneral      : edtDomain.Text := vhdsGeneral;
      vhdWreck        : edtDomain.Text := vhdsWreck;
    else
      edtDomain.Text := vhdsAir;
    end;

    case TT3PlatformInstance(obj).Force_Designation of
      0 : SetForceText('Red');
      1 : SetForceText('Blue');
      2 : SetForceText('Green');
      3 : SetForceText('Amber');
      4 : SetForceText('No Force');
    else
      SetForceText('None');
    end;

    edtLastUpdated.Text := objNRP.LastUpdate;

    case objNRP.NRPType of
      nrpPoint :
      begin
        edtCourse.Text := FloatToStr(objNRP.Heading);//.Course);
        edtGroundSpeed.Text := FloatToStr(objNRP.Speed);
        edtposition.Text := formatDM_longitude(objNRP.getPositionX) + ';'
          + formatDM_latitude(objNRP.getPositionY);

        if objNRP.PlatformDomain = vhdAir then
        begin
          Label8.Caption := 'feet';
          edtAltitude.Text := intToStr(round(objNRP.Altitude * C_Meter_To_Feet));
        end
        else
        begin
          Label8.Caption := 'meter';
        end;

        grpNonRealPoint.BringToFront;
      end;
      nrpBearing :
      begin
        case identity of
          piPending       : edtNRBIdentity.Text := pfPending;
          piUnknown       : edtNRBIdentity.Text := pfUnknown;
          piAssumedFriend : edtNRBIdentity.Text := pfAssumedFriend;
          piFriend        : edtNRBIdentity.Text := pfFriend;
          piNeutral       : edtNRBIdentity.Text := pfNeutral;
          piSuspect       : edtNRBIdentity.Text := pfSuspect;
          piHostile       : edtNRBIdentity.Text := pfHostile;
        else
          edtNRBIdentity.Text := pfPending;
        end;

        case domain of
          vhdAir          : edtNRBDomain.Text := vhdsAir;
          vhdSurface      : edtNRBDomain.Text := vhdsSurface;
          vhdSubsurface   : edtNRBDomain.Text := vhdsSubsurface;
          vhdLand         : edtNRBDomain.Text := vhdsLand;
          vhdGeneral      : edtNRBDomain.Text := vhdsGeneral;
          vhdWreck        : edtNRBDomain.Text := vhdsWreck;
        else
          edtNRBDomain.Text := vhdsAir;
        end;

        case TT3PlatformInstance(objNRP).Force_Designation of
          0 : SetForceText('Red');
          1 : SetForceText('Blue');
          2 : SetForceText('Green');
          3 : SetForceText('Amber');
          4 : SetForceText('No Force');
        else
          SetForceText('None');
        end;

        edtNRBBearing.Text := FloatToStr(objNRP.LineVisual.Bearing);
        edtNRBPosition.Text := formatDM_longitude(objNRP.getPositionX) + ';'
          + formatDM_latitude(objNRP.getPositionY);

        grpNonRealBearing.BringToFront;
      end;
      nrpArea :
      begin
        case identity of
          piPending       : edtAOPIdentity.Text := pfPending;
          piUnknown       : edtAOPIdentity.Text := pfUnknown;
          piAssumedFriend : edtAOPIdentity.Text := pfAssumedFriend;
          piFriend        : edtAOPIdentity.Text := pfFriend;
          piNeutral       : edtAOPIdentity.Text := pfNeutral;
          piSuspect       : edtAOPIdentity.Text := pfSuspect;
          piHostile       : edtAOPIdentity.Text := pfHostile;
        else
          edtAOPIdentity.Text := pfPending;
        end;

        case domain of
          vhdAir          : edtAOPDomain.Text := vhdsAir;
          vhdSurface      : edtAOPDomain.Text := vhdsSurface;
          vhdSubsurface   : edtAOPDomain.Text := vhdsSubsurface;
          vhdLand         : edtAOPDomain.Text := vhdsLand;
          vhdGeneral      : edtAOPDomain.Text := vhdsGeneral;
          vhdWreck        : edtAOPDomain.Text := vhdsWreck;
        else
          edtAOPDomain.Text := vhdsAir;
        end;

        case TT3PlatformInstance(objNRP).Force_Designation of
          0 : SetForceText('Red');
          1 : SetForceText('Blue');
          2 : SetForceText('Green');
          3 : SetForceText('Amber');
          4 : SetForceText('No Force');

        else
          SetForceText('None');
        end;

        edtAOPGroundSpeed.Text := FloatToStr(objNRP.OrderedSpeed);
        edtAOPCenter.Text := formatDM_longitude(objNRP.getPositionX) + ';'
          + formatDM_latitude(objNRP.getPositionY);
        grpNonRealAOP.BringToFront;
      end;
      nrpSpecial :
      begin
        case domain of
          vhdAir          : edtNRSDomain.Text := vhdsAir;
          vhdSurface      : edtNRSDomain.Text := vhdsSurface;
          vhdSubsurface   : edtNRSDomain.Text := vhdsSubsurface;
          vhdLand         : edtNRSDomain.Text := vhdsLand;
          vhdGeneral      : edtNRSDomain.Text := vhdsGeneral;
          vhdWreck        : edtNRSDomain.Text := vhdsWreck;
        else
          edtDomain.Text := vhdsAir;
        end;

        case TT3PlatformInstance(objNRP).Force_Designation of
          0 : SetForceText('Red');
          1 : SetForceText('Blue');
          2 : SetForceText('Green');
          3 : SetForceText('Amber');
          4 : SetForceText('No Force');
        else
          SetForceText('None');
        end;

        edtNRSSymbolType.Text := TT3NonRealVehicle(objNRP).SymbolType;
        edtNRSPosition.Text := formatDM_longitude(objNRP.getPositionX) + ';'
          + formatDM_latitude(objNRP.getPositionY);
        edtNRSAltitude.Text := FloatToStr(objNRP.Altitude);

        grpNonRealSpecial.BringToFront;
      end;
    end;
  end
  else if obj is TT3Vehicle then
  begin
    objRealTime := obj as TT3Vehicle;

    //set data to groupbox non Real
    identity := objRealTime.TrackIdent;
    domain := objRealTime.TrackDomain;
    force := objRealTime.Force_Designation;

    edtNameRT.Text := objRealTime.InstanceName;
    edtClassTrack.Text := objRealTime.InstanceClass;

    edtnameTrack.Text := objRealTime.InstanceName;
    edtTypeEditNonRealTimeTrack.Text := 'Real Time Track ' + objRealTime.InstanceClass;

    case objRealTime.PlatformType of
      vhtAirCarrier     : ptype := vhtsAirCarrier;
      vhtAmphibious     : ptype := vhtsAmphibious;
      vhtAuxiliary      : ptype := vhtsAuxiliary;
      //vhtchaff
      vhtCruiseGuided   : ptype := vhtsCruiseGuided;
      vhtDestroyer      : ptype := vhtsDestroyer;
      vhtDestroGuided   : ptype := vhtsDestroGuided;
      vhtFrigate        : ptype := vhtsFrigate;
      vhtFrigatGuided   : ptype := vhtsFrigatGuided;
      //vhtInfraredDecoy
      //vhtJammerDecoy
      vhtMerchant       : ptype := vhtsMerchant;
      //vhtMainWarefare
      vhtPatrolCraft    : ptype := vhtsMerchant;
      vhtUtilityVess    : ptype := vhtsUtilityVess;
      vhtOther          : ptype := vhtsOther;
    else
      ptype := vhtsOther;
    end;
    edtTypeTrack.Text := pType;

    case identity of
      piPending       : edtIdentity.Text := pfPending;
      piUnknown       : edtIdentity.Text := pfUnknown;
      piAssumedFriend : edtIdentity.Text := pfAssumedFriend;
      piFriend        : edtIdentity.Text := pfFriend;
      piNeutral       : edtIdentity.Text := pfNeutral;
      piSuspect       : edtIdentity.Text := pfSuspect;
      piHostile       : edtIdentity.Text := pfHostile;
    else
      edtIdentityTrack.Text := pfPending;
    end;

    case domain of
      vhdAir          : edtDomain.Text := vhdsAir;
      vhdSurface      : edtDomain.Text := vhdsSurface;
      vhdSubsurface   : edtDomain.Text := vhdsSubsurface;
      vhdLand         : edtDomain.Text := vhdsLand;
      vhdGeneral      : edtDomain.Text := vhdsGeneral;
      vhdWreck        : edtDomain.Text := vhdsWreck;
    else
      edtDomainTrack.Text := vhdsAir;
    end;

    case TT3PlatformInstance(Data).Force_Designation of
      0 : SetForceText('Red');
      1 : SetForceText('Blue');
      2 : SetForceText('Green');
      3 : SetForceText('Amber');
      4 : SetForceText('No Force');
    else
      SetForceText('None');
    end;

    grpRealTime.BringToFront;
  end
  else if obj is TT3DetectedTrack then
  begin
    objDetectedTrack := obj as TT3DetectedTrack;

    identity := objDetectedTrack.TrackIdent;
    domain := objDetectedTrack.TrackDomain;
    force := TT3PlatformInstance(objDetectedTrack.TrackObject).Force_Designation;

    edtnameTrack.Text := '---';       //mk
    edtTypeEditNonRealTimeTrack.Text := 'Detected Track';
    edtNameRT.Text := '---';
    edtClassTrack.Text := '---';
    edtTypeTrack.Text := '---';

    case identity of
      piPending       : edtIdentity.Text := pfPending;
      piUnknown       : edtIdentity.Text := pfUnknown;
      piAssumedFriend : edtIdentity.Text := pfAssumedFriend;
      piFriend        : edtIdentity.Text := pfFriend;
      piNeutral       : edtIdentity.Text := pfNeutral;
      piSuspect       : edtIdentity.Text := pfSuspect;
      piHostile       : edtIdentity.Text := pfHostile;
    else
      edtIdentity.Text := pfPending;
    end;

    case domain of
      vhdAir          : edtDomain.Text := vhdsAir;
      vhdSurface      : edtDomain.Text := vhdsSurface;
      vhdSubsurface   : edtDomain.Text := vhdsSubsurface;
      vhdLand         : edtDomain.Text := vhdsLand;
      vhdGeneral      : edtDomain.Text := vhdsGeneral;
      vhdWreck        : edtDomain.Text := vhdsWreck;
    else
      edtDomain.Text := vhdsAir;
    end;

    case force of
      0 : SetForceText('Red');
      1 : SetForceText('Blue');
      2 : SetForceText('Green');
      3 : SetForceText('Amber');
      4 : SetForceText('No Force');
    else
      SetForceText('None');
    end;

    grpRealTime.BringToFront;
  end
  else if obj is TT3ESMTrack then
  begin
    objESM := obj as TT3ESMTrack;

    identity := objESM.TrackIdent;
    domain := objESM.TrackDomain;

    edtnameTrack.Text := objESM.TrackNumber;
    edtTypeEditNonRealTimeTrack.Text := 'ESM Track';
    edtNameRT.Text := '---';
    edtClassTrack.Text := '---';
    edtTypeTrack.Text := '---';

    case identity of
      piPending       : edtESMIdentity.Text := pfPending;
      piUnknown       : edtESMIdentity.Text := pfUnknown;
      piAssumedFriend : edtESMIdentity.Text := pfAssumedFriend;
      piFriend        : edtESMIdentity.Text := pfFriend;
      piNeutral       : edtESMIdentity.Text := pfNeutral;
      piSuspect       : edtESMIdentity.Text := pfSuspect;
      piHostile       : edtESMIdentity.Text := pfHostile;
    else
      edtESMIdentity.Text := pfPending;
    end;

    case domain of
      vhdAir          : edtESMDomain.Text := vhdsAir;
      vhdSurface      : edtESMDomain.Text := vhdsSurface;
      vhdSubsurface   : edtESMDomain.Text := vhdsSubsurface;
      vhdLand         : edtESMDomain.Text := vhdsLand;
      vhdGeneral      : edtESMDomain.Text := vhdsGeneral;
      vhdWreck        : edtESMDomain.Text := vhdsWreck;
    else
      edtESMDomain.Text := vhdsAir;
    end;

    case force of
      0 : SetForceText('Red');
      1 : SetForceText('Blue');
      2 : SetForceText('Green');
      3 : SetForceText('Amber');
      4 : SetForceText('No Force');
    else
      SetForceText('None');
    end;

    grpESM.BringToFront;
  end;
end;

procedure TfrmEditNonRealTimeTrack.UpdateTrackInfo(obj : TSimObject);
var
  ptype, domainStr, IdentityStr, nrpType : string;
begin
  if Assigned(Data) then
  begin
    if Data is TT3DetectedTrack then
      Self.Caption := 'Edit Detected Track'
    else if Data is TT3ESMTrack then
      Self.Caption := 'Edit ESM Track'
    else if (Data is TT3NonRealVehicle) then
      Self.Caption := 'Edit Non Real Time Track'
    else if (Data is TT3Vehicle) then
      Self.Caption := 'Edit Real Time Track';

    if Data is TT3PlatformInstance then
    begin
      edtnameTrack.Text := TT3PlatformInstance(Data).InstanceName;
      lbltrack1.Caption := TT3PlatformInstance(Data).TrackLabel;

      case TT3PlatformInstance(Data).PlatformType of
        vhtAirCarrier     : ptype := vhtsAirCarrier;
        vhtAmphibious     : ptype := vhtsAmphibious;
        vhtAuxiliary      : ptype := vhtsAuxiliary;
        //vhtchaff
        vhtCruiseGuided   : ptype := vhtsCruiseGuided;
        vhtDestroyer      : ptype := vhtsDestroyer;
        vhtDestroGuided   : ptype := vhtsDestroGuided;
        vhtFrigate        : ptype := vhtsFrigate;
        vhtFrigatGuided   : ptype := vhtsFrigatGuided;
        //vhtInfraredDecoy
        //vhtJammerDecoy
        vhtMerchant       : ptype := vhtsMerchant;
        //vhtMainWarefare
        vhtPatrolCraft    : ptype := vhtsMerchant;
        vhtUtilityVess    : ptype := vhtsUtilityVess;
        vhtOther          : ptype := vhtsOther;
      else
        ptype := vhtsOther;
      end;
      edtPlatformType.Text := ptype;
      edtClass.Text := TT3PlatformInstance(Data).InstanceClass;
      edtTrackIden.Text := TT3PlatformInstance(Data).Track_ID;
      identity := TT3PlatformInstance(Data).TrackIdent;

      if Data is TT3NonRealVehicle then
         domain := TT3PlatformInstance(Data).TrackDomain
      else if Data is TT3Vehicle then
      begin
         domain := TT3PlatformInstance(Data).PlatformDomain;
      end;
    end
    else if Data is TT3DetectedTrack then
    begin
      edtPlatformType.Text := ptype;
      edtTrackIden.Text := TT3DetectedTrack(Data).TrackID;
      domain := TT3DetectedTrack(Data).TrackDomain;
      identity := TT3DetectedTrack(Data).TrackIdent;
    end
    else if Data is TT3ESMTrack then
    begin
      edtPlatformType.Text := 'ESM Track';
      edtTrackIden.Text := TT3ESMTrack(Data).TrackNumber;
      domain := TT3ESMTrack(Data).TrackDomain;
      identity := TT3ESMTrack(Data).TrackIdent;
    end;
    HideAltitude;

    case domain of
      vhdAir:
        begin
          domainStr := vhdsAir;
          ShowAltitude;
        end;
      vhdSurface:
        domainStr := vhdsSurface;
      vhdSubsurface:
      begin
        domainStr := vhdsSubsurface;
        ShowAltitude;
      end;
      vhdLand:
        domainStr := vhdsLand;
      vhdGeneral:
        domainStr := vhdsGeneral;
    end;
    edtDomain.Text := domainStr;
    edtDomainTrack.Text := domainStr;

    case identity of
      piPending:
        IdentityStr := 'Pending';
      piUnknown:
        IdentityStr := 'Unknown';
      piAssumedFriend:
        IdentityStr := 'Assumedfriend';
      piFriend:
        IdentityStr := 'Friend';
      piNeutral:
        IdentityStr := 'Neutral';
      piSuspect:
        IdentityStr := 'Suspect';
      piHostile:
        IdentityStr := 'Hostile';
    end;

    edtIdentity.Text := IdentityStr;
    edtIdentityTrack.Text := IdentityStr;

    if data is TT3PlatformInstance then
    begin
      lbCourse.Caption := 'Course :';
      lbGroundSpeed.Caption := 'Ground Speed :';

      if TT3PlatformInstance(Data).TrackDomain = vhdSubsurface then
        lbAltitude.Caption := 'Depth :'
      else
        lbAltitude.Caption := 'Altitude :';

      case TT3PlatformInstance(Data).Force_Designation of
        0 : SetForceText('Red');
        1 : SetForceText('Blue');
        2 : SetForceText('Green');
        3 : SetForceText('Amber');
        4 : SetForceText('No Force');
      else
        SetForceText('None');
      end;

      if (Data is TT3NonRealVehicle) then
      begin
        btnType.Enabled := false;
        btnDomain.Enabled := true;
        btnforce.Enabled := true;
        btnPlatformType.Enabled := true;
        btnPosition.Enabled := true;
        btnpropulsiontype.Enabled := true;
        btnType.Enabled := True;

        case TT3NonRealVehicle(Data).NRPType of
          nrpPoint : nrpType := nrpsPoint;
          nrpBearing : nrpType := nrpsBearing;
          nrpArea : nrpType := nrpsArea;
          nrpSpecial : nrpType := nrpsSpecial;
        end;
        edtTypeEditNonRealTimeTrack.Text := nrpType;
      end
      else if (Data is TT3Vehicle) then
      begin
        nrpType := '';
        btnType.Enabled := false;
        btnDomain.Enabled := false;
        btnforce.Enabled := false;
        btnPlatformType.Enabled := false;
        btnPosition.Enabled := false;
        btnpropulsiontype.Enabled := false;
      end;
      edtCourse.Text := FloatToStr(TT3PlatformInstance(Data).Course);
      edtGroundSpeed.Enabled := true;
      edtAltitude.Enabled := true;

      if Data is TT3NonRealVehicle then
      begin
        if TT3NonRealVehicle(Data).NRPType = nrpBearing then
        begin
          edtCourse.Text := FloatToStr(TT3NonRealVehicle(Data).LineVisual.Bearing);
          edtGroundSpeed.Enabled := false;
          edtAltitude.Enabled := False;
        end;

        //untuk nonrealtime
        edtAOPGroundSpeed.Text := FloatToStr(TT3NonRealVehicle(Data).OrderedSpeed);
        edtNRSAltitude.Text := FloatToStr(TT3PlatformInstance(Data).Altitude);
      end;

      edtGroundSpeed.Text := FloatToStr(TT3PlatformInstance(Data).Speed);
      edtAltitude.Text := FloatToStr(TT3PlatformInstance(Data).Altitude);
    end
    else if Data is TT3DetectedTrack then
    begin
      lbCourse.Caption := 'Course :';
      lbGroundSpeed.Caption := 'Ground Speed :';

      if TT3DetectedTrack(Data).TrackDomain = vhdSubsurface then
        lbAltitude.Caption := 'Depth :'
      else
        lbAltitude.Caption := 'Altitude :';

      edtGroundSpeed.Enabled := true;
      edtAltitude.Enabled := true;
      edtCourse.Text := FloatToStr(TT3PlatformInstance(TT3DetectedTrack(Data).TrackObject).Course);
      edtGroundSpeed.Text := FloatToStr(TT3PlatformInstance(TT3DetectedTrack(Data).TrackObject).Speed);
      edtAltitude.Text := FloatToStr(TT3PlatformInstance(TT3DetectedTrack(Data).TrackObject).Altitude);
    end
    else if Data is TT3ESMTrack then
    begin
      lbCourse.Caption := 'Course :';
      lbGroundSpeed.Caption := 'Ground Speed :';
      if TT3ESMTrack(Data).TrackDomain = vhdSubsurface then
        lbAltitude.Caption := 'Depth :'
      else
        lbAltitude.Caption := 'Altitude :';

      edtCourse.Enabled := false;
      edtGroundSpeed.Enabled := false;
      edtAltitude.Enabled := False;
      edtCourse.Text := FloatToStr(TT3ESMTrack(Data).Bearing);
      edtGroundSpeed.Text := FloatToStr(TT3ESMTrack(Data).Range);
      edtAltitude.Text := '-'
    end;

    MapPositionX := Data.getPositionX;
    MapPositionY := Data.getPositionY;

    edtposition.Text := formatDM_longitude(MapPositionX) + '  '
    + formatDM_latitude(FMapPositionY);
  end;
end;

procedure TfrmEditNonRealTimeTrack.UpdateViewBtn(obj: TSimObject);
begin
  if simMgrClient.ISInstructor then
  begin
    if obj is TT3NonRealVehicle then
    begin
      btnDomainRT.Enabled := true;
      btnIdentityRT.Enabled := true;
      btnPropReal.Enabled := true;
    end else
    begin
      btnDomainRT.Enabled := false;
      btnIdentityRT.Enabled := false;
      btnPropReal.Enabled := false;
    end;
  end
  else
  begin
    if obj is TT3PlatformInstance then
    begin
      if obj is TT3NonRealVehicle then
      begin
        btnDomainRT.Enabled := true;
        btnIdentityRT.Enabled := true;
        btnPropReal.Enabled := true;
      end else
      begin
        btnDomainRT.Enabled := false;
        btnIdentityRT.Enabled := false;
        btnPropReal.Enabled := false;
      end;
    end
    else if obj is TT3DetectedTrack then
    begin
      btnDomainRT.Enabled := false;
      btnIdentityRT.Enabled := true;
      btnPropReal.Enabled := false;
    end
    else if obj is TT3ESMTrack then
    begin
      btnDomainRT.Enabled := true;
      btnIdentityRT.Enabled := true;
      btnPropReal.Enabled := true;
    end else
    begin
      btnDomainRT.Enabled := false;
      btnIdentityRT.Enabled := false;
      btnPropReal.Enabled := false;
    end;
  end;
end;

procedure TfrmEditNonRealTimeTrack.HideAltitude;
begin
  edtAltitude.Visible := False;
  lbAltitude.Visible := False;
  Label8.Visible := False;

  edtNRSAltitude.Visible := false;
  lbl23.Visible := false;
  lbl24.Visible := false;
end;

procedure TfrmEditNonRealTimeTrack.ShowAltitude;
begin
  edtAltitude.Visible := True;
  lbAltitude.Visible := True;
  Label8.Visible := True;

  edtNRSAltitude.Visible := True;
  lbl23.Visible := True;
  lbl24.Visible := True;
end;


{$REGION 'start customize edit style'}
{start customize edit style}
{ TEditStyleHookColor }

constructor TEditStyleHookColor.Create(AControl: TWinControl);
begin
  inherited;
//  FDisabledColor := clWindow;
//  FDisabledTextColor := clGrayText;
  //call the UpdateColors method to use the custom colors
  UpdateColors;
end;

//Here you set the colors of the style hook
procedure TEditStyleHookColor.UpdateColors;
var
  LStyle: TCustomStyleServices;
begin
  LStyle := StyleServices;
  if Control.Enabled then
  begin
//    Brush.Color := TWinControlH(Control).Color; //use the Control color
    FontColor   := LStyle.GetStyleFontColor(sfEditBoxTextNormal);//TWinControlH(Control).Font.Color; //use the Control font color
  end
  else
  begin
    //if the control is disabled use the colors of the style
//    LStyle := StyleServices;
//    Brush.Color := LStyle.GetStyleColor(scEditDisabled);
    FontColor   := LStyle.GetStyleFontColor(sfEditBoxTextDisabled);
  end;
end;

procedure TEditStyleHookColor.WMPaint(var msg: TWMPaint);
var
  Canvas : TCanvas;
  Ps : TPaintStruct;
  CallEndPaint : Boolean;
  LStyle: TCustomStyleServices;
begin
  if Control.Enabled then
    inherited
  else
  begin
    CallEndPaint := False;
    Canvas := TCanvas.Create;
    try
      if msg.DC <> 0 then
      begin
        Canvas.Handle := msg.DC;
        ps.fErase := True;
      end
      else
      begin
        BeginPaint(Handle, ps);
        CallEndPaint := True;
        Canvas.Handle := Ps.hdc;
      end;
//      if Ps.fErase then
//        Perform(WM_ERASEBKGND, Canvas.Handle, 0);
      SaveDC(Canvas.Handle);
      try
        Canvas.Brush.Style := bsClear;
//        Canvas.Font := Font;
        LStyle := StyleServices;

        Canvas.Font.Color := LStyle.GetStyleFontColor(sfEditBoxTextDisabled);
        Canvas.TextOut(1,1, text);
      finally
         RestoreDC(Canvas.Handle, -1);
      end;
    finally
      if CallEndPaint then
        EndPaint(Handle, ps);
      Canvas.Free;
    end;
  end;
end;

//Handle the messages of the control
procedure TEditStyleHookColor.WndProc(var Message: TMessage);
begin
//  inherited;
  case Message.Msg of
    CN_CTLCOLORMSGBOX..CN_CTLCOLORSTATIC:
      begin
        //Get the colors
        UpdateColors;
        SetTextColor(Message.WParam, ColorToRGB(FontColor));
        SetBkColor(Message.WParam, ColorToRGB(Brush.Color));
        Message.Result := LRESULT(Brush.Handle);
        Handled := True;
      end;
    CM_ENABLEDCHANGED:
      begin
        //Get the colors
        UpdateColors;
        Handled := False;
      end;
  else
    inherited WndProc(Message);
  end;
end;

{ TMemoStyleHookColor }

constructor TMemoStyleHookColor.Create(AControl: TWinControl);
begin
  inherited;
  //call the UpdateColors method to use the custom colors
  UpdateColors;
end;

//Set the colors to be used by the Style hook
procedure TMemoStyleHookColor.UpdateColors;
var
  LStyle: TCustomStyleServices;
begin
  LStyle := StyleServices;
  if Control.Enabled then
  begin
//    Brush.Color := TWinControlH(Control).Color;
//    FontColor   := TWinControlH(Control).Font.Color;

//    Brush.Color := LStyle.GetStyleColor(scEdit);
    FontColor   := LStyle.GetStyleFontColor(sfEditBoxTextNormal);
  end
  else
  begin
    //if the control is disabled use the current style colors
//    LStyle := StyleServices;
//    Brush.Color := LStyle.GetStyleColor(scEdit);
    FontColor   := LStyle.GetStyleFontColor(sfEditBoxTextDisabled);
//    FontColor   := TWinControlH(Control).Font.Color;
  end;
end;

//handle the messages
procedure TMemoStyleHookColor.WMPaint(var msg: TWMPaint);
var
  Canvas : TCanvas;
  Ps : TPaintStruct;
  CallEndPaint : Boolean;
  LStyle: TCustomStyleServices;
begin
  if Control.Enabled then
    inherited
  else
  begin
    CallEndPaint := False;
    Canvas := TCanvas.Create;
    try
      if msg.DC <> 0 then
      begin
        Canvas.Handle := msg.DC;
        ps.fErase := True;
      end
      else
      begin
        BeginPaint(Handle, ps);
        CallEndPaint := True;
        Canvas.Handle := Ps.hdc;
      end;
//      if Ps.fErase then
//        Perform(WM_ERASEBKGND, Canvas.Handle, 0);
      SaveDC(Canvas.Handle);
      try
        Canvas.Brush.Style := bsClear;
//        Canvas.Font := Font;
        LStyle := StyleServices;

        Canvas.Font.Color := LStyle.GetStyleFontColor(sfEditBoxTextDisabled);
        Canvas.TextOut(4,1, text);
      finally
         RestoreDC(Canvas.Handle, -1);
      end;
    finally
      if CallEndPaint then
        EndPaint(Handle, ps);
      Canvas.Free;
    end;
  end;
end;

procedure TMemoStyleHookColor.WndProc(var Message: TMessage);
begin
//  inherited;
  case Message.Msg of
    CN_CTLCOLORMSGBOX..CN_CTLCOLORSTATIC:
      begin
        //get the colors
        UpdateColors;
        SetTextColor(Message.WParam, ColorToRGB(FontColor));
        SetBkColor(Message.WParam, ColorToRGB(Brush.Color));
        Message.Result := LResult(Brush.Handle);
        Handled := True;
      end;
    CM_COLORCHANGED,
    CM_ENABLEDCHANGED:
      begin
        //get the colors
        UpdateColors;
        Handled := False;
      end;
  else
    inherited WndProc(Message);
  end;
end;

initialization
 TStyleManager.Engine.RegisterStyleHook(TEdit, TEditStyleHookColor);
 TStyleManager.Engine.RegisterStyleHook(TButtonedEdit, TEditStyleHookColor);

 TStyleManager.Engine.RegisterStyleHook(TMemo, TMemoStyleHookColor);
 TStyleManager.Engine.RegisterStyleHook(TMaskEdit, TEditStyleHookColor);
 TStyleManager.Engine.RegisterStyleHook(TLabeledEdit, TEditStyleHookColor);
{end customize edit style}
{$ENDREGION}

end.
