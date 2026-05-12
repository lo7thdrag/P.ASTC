unit uOverlayEditForm;

interface

uses
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, uCoordConvertor, MapXLib_TLB,
  uMainOverlay,  uFormula, tttData, uDataTypes,uT3Unit,
  uLine, uArc, uTable, uRect, uPolygon, uCircle, uEllipse, uSector, uText,
  ComCtrls, Windows, uT3Vehicle, ufTacticalDisplay, uOverlayEditorStatic, uGameData_TTT;

type
  TfmOverlayEdit = class(TForm)
    pnlOverlayEditForm: TPanel;
    grpOption: TGroupBox;
    grpSector: TGroupBox;
    lblSectorCenter: TLabel;
    lblSectorInner: TLabel;
    lblSectorOuter: TLabel;
    lblSectorStartAngle: TLabel;
    lblSectorEndAngle: TLabel;
    edtSectorPosLat: TEdit;
    edtSectorInner: TEdit;
    edtSectorOuter: TEdit;
    edtSectorStartAngle: TEdit;
    edtSectorEndAngle: TEdit;
    btnText: TSpeedButton;
    btnLine: TSpeedButton;
    lbl2: TLabel;
    lbl3: TLabel;
    btnRectangle: TSpeedButton;
    btnCircle: TSpeedButton;
    btnArc: TSpeedButton;
    btnSector: TSpeedButton;
    btnGrid: TSpeedButton;
    btnPolygon: TSpeedButton;
    btnSelect: TSpeedButton;
    btnApply: TButton;
    btnDelete: TButton;
    btnCancel: TButton;
    btnClose: TButton;
    lbl4: TLabel;
    lbl5: TLabel;
    bvlRadii: TBevel;
    bvlAngle: TBevel;
    btnEllipse: TSpeedButton;
    clrbxColor: TColorBox;
    lblColour: TLabel;
    grpText: TGroupBox;
    lblTextPosition: TLabel;
    lblTextField: TLabel;
    lblTextSize: TLabel;
    edtTextPosLat: TEdit;
    edtTextField: TEdit;
    edtSectorPosLong: TEdit;
    edtTextPosLong: TEdit;
    grpLine: TGroupBox;
    Label2: TLabel;
    edtLineStartPosLat: TEdit;
    edtLineStartPosLong: TEdit;
    Label7: TLabel;
    edtLineEndPosLat: TEdit;
    edtLineEndPosLong: TEdit;
    grpRectangle: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    edtRectStartPosLat: TEdit;
    edtRectStartPosLong: TEdit;
    edtRectEndPosLat: TEdit;
    edtRectEndPosLong: TEdit;
    grpCircleDynamic: TGroupBox;
    Label19: TLabel;
    edtCircleRange: TEdit;
    edtCircleBearing: TEdit;
    edtCircleRadiusD: TEdit;
    lblCentre: TLabel;
    lbl1: TLabel;
    grpEllipse: TGroupBox;
    Label14: TLabel;
    lblHorizontal: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edtEllipsePosLat: TEdit;
    edtEllipsePosLong: TEdit;
    edtHorizontal: TEdit;
    lblVertical: TLabel;
    edtVertical: TEdit;
    lbl6: TLabel;
    grpArc: TGroupBox;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtArcPosLat: TEdit;
    edtArcPosLong: TEdit;
    edtArcRadius: TEdit;
    edtArcStartAngle: TEdit;
    edtArcEndAngle: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    grpGrid: TGroupBox;
    Label29: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtTablePosLat: TEdit;
    edtTablePosLong: TEdit;
    edtTableHeight: TEdit;
    edtTableWidth: TEdit;
    edtTableColumn: TEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    edtTableRow: TEdit;
    grpNormal: TGroupBox;
    cbbTextSize: TComboBox;
    bvl1: TBevel;
    lbl11: TLabel;
    lbl12: TLabel;
    bvl2: TBevel;
    lbl13: TLabel;
    bvl3: TBevel;
    lbl14: TLabel;
    edtTableRotationAngle: TEdit;
    lbl15: TLabel;
    grpPolygon: TGroupBox;
    Label1: TLabel;
    edtPolyPosLat: TEdit;
    edtPolyPosLong: TEdit;
    lvPolyVertex: TListView;
    btnAddPoint: TButton;
    btnDeletePoint: TButton;
    grpOptionDynamic: TGroupBox;
    btnTextDynamic: TSpeedButton;
    btnLineDynamic: TSpeedButton;
    btnRectangleDynamic: TSpeedButton;
    btnCircleDynamic: TSpeedButton;
    btnArcDynamic: TSpeedButton;
    btnSectorDynamic: TSpeedButton;
    btnGridDynamic: TSpeedButton;
    btnPolygonDynamic: TSpeedButton;
    btnSelectDynamic: TSpeedButton;
    btnEllipseDynamic: TSpeedButton;
    grpTextDynamic: TGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    edtTextRange: TEdit;
    edtTextFieldD: TEdit;
    edtTextBearing: TEdit;
    cbbTextSizeD: TComboBox;
    grpLineDynamic: TGroupBox;
    lbl20: TLabel;
    lbl21: TLabel;
    edtLineStartRange: TEdit;
    edtLineStartBearing: TEdit;
    edtLineEndRange: TEdit;
    edtLineEndBearing: TEdit;
    grpRectangleDynamic: TGroupBox;
    lbl26: TLabel;
    lbl27: TLabel;
    edtRecStartRange: TEdit;
    edtRecStartBearing: TEdit;
    edtRecEndRange: TEdit;
    edtRecEndBearing: TEdit;
    grpCircle: TGroupBox;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    edtCirclePosLat: TEdit;
    edtCirclePosLong: TEdit;
    edtCircleRadius: TEdit;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    grpArcDynamic: TGroupBox;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    edtArcRange: TEdit;
    edtArcBearing: TEdit;
    edtArcRadiusD: TEdit;
    edtArcStartAngleD: TEdit;
    edtArcEndAngleD: TEdit;
    grpEllipseDynamic: TGroupBox;
    lbl47: TLabel;
    lbl48: TLabel;
    lbl49: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    bvl4: TBevel;
    edtEllipseRange: TEdit;
    edtEllipseBearing: TEdit;
    edtEllipseHorizontalD: TEdit;
    edtEllipseVerticalD: TEdit;
    grpGridDynamic: TGroupBox;
    lbl53: TLabel;
    lbl54: TLabel;
    lbl55: TLabel;
    lbl56: TLabel;
    lbl57: TLabel;
    lbl58: TLabel;
    lbl59: TLabel;
    bvl5: TBevel;
    lbl60: TLabel;
    bvl6: TBevel;
    lbl61: TLabel;
    lbl62: TLabel;
    edtTableRange: TEdit;
    edtTableBearing: TEdit;
    edtTableHeightD: TEdit;
    edtTableWidthD: TEdit;
    edtTableColumnD: TEdit;
    edtTableRowD: TEdit;
    edtRotationAngleD: TEdit;
    grpPolygonDynamic: TGroupBox;
    edtPolRange: TEdit;
    edtPolBearing: TEdit;
    lvPolyVertexD: TListView;
    btnAddPointD: TButton;
    btnDeletePointD: TButton;
    grpSectorDynamic: TGroupBox;
    lbl64: TLabel;
    lbl65: TLabel;
    lbl66: TLabel;
    lbl67: TLabel;
    lbl68: TLabel;
    lbl69: TLabel;
    lbl70: TLabel;
    lbl71: TLabel;
    lbl72: TLabel;
    bvl7: TBevel;
    bvl8: TBevel;
    lbl73: TLabel;
    lbl74: TLabel;
    edtSectorRange: TEdit;
    edtSectorInnerD: TEdit;
    edtSectorOuterD: TEdit;
    edtSectorStartAngleD: TEdit;
    edtSectorEndAngleD: TEdit;
    edtSectorBearing: TEdit;
    lbl75: TLabel;
    lbl76: TLabel;
    lbl77: TLabel;
    lbl78: TLabel;
    lbl79: TLabel;
    lbl80: TLabel;
    lbl81: TLabel;
    lbl82: TLabel;
    lbl83: TLabel;
    lbl22: TLabel;
    lbl84: TLabel;
    lbl85: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl86: TLabel;
    lbl87: TLabel;
    lbl88: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl63: TLabel;
    lbl89: TLabel;
    lbl90: TLabel;
    lbl91: TLabel;
    lbl92: TLabel;
    lbl93: TLabel;
    Track: TEdit;
    BearingOff: TEdit;
    RangeOff: TEdit;
    Angle: TEdit;
    Bearing: TEdit;
    SpeedButton: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    NoTrack: TEdit;
    NmTemplate: TEdit;
    btnEditPointD: TButton;
    EdtVertex: TEdit;
    pnlColourOptions: TPanel;
    procedure btnLineClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnTextClick(Sender: TObject);
    procedure btnRectangleClick(Sender: TObject);
    procedure btnCircleClick(Sender: TObject);
    procedure btnEllipseClick(Sender: TObject);
    procedure btnArcClick(Sender: TObject);
    procedure btnSectorClick(Sender: TObject);
    procedure btnGridClick(Sender: TObject);
    procedure btnPolygonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnAddPointClick(Sender: TObject);
    procedure btnAddPointDClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeletePointDClick(Sender: TObject);
    procedure lvPolyVertexDClick(Sender: TObject);
    procedure btnSelectDynamicClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure SpeedButtonClick(Sender: TObject);
    procedure btnDeletePointClick(Sender: TObject);
    procedure btnEditPointDClick(Sender: TObject);
  private
    { Private declarations }

    long, lat     : Double;
    ODel          : Boolean;
    OSave         : Boolean;
    ODynamic      : Boolean;
    TagTombol     : Integer;
    Nolist        : integer;
    OCancel       : Integer;
    LongX, LongY  : string;
    FMapPositionX : double;
    FMapPositionY : double;
    mapVertex     : Array of TMapPt;
    indexVertex, setlengthVertex : Integer;
    OBuffer       : TRecCmd_OverlayDynamicShape;

    procedure GbrText;
    procedure GbrLine;
    procedure GbrRectangle;
    procedure GbrCircle;
    procedure GbrEllipse;
    procedure GbrArc;
    procedure GbrSector;
    procedure GbrTable;
    procedure GbrPolygon;

    procedure applyText;
    procedure applyLine;
    procedure applyRect;
    procedure applyCircle;
    procedure applyEllipse;
    procedure applyArc;
    procedure applySector;
    procedure applyTable;
    procedure applyPolygon;

    procedure CencelEdit;
    procedure CencelDraw;

  public
    { Public declarations }
    FFormula    : TFormula;
    FisOverlay  : Boolean;
    nameOverlay : string;
    NameTamplet : string;
    indexSelected : Integer;

    drawLine, drawArc, drawPolygon, drawTable, drawRect,
    drawCircle, drawEllipse, drawSector, drawTextEdit   : Boolean;

    //drawOverlay : TDrawOverlay;
    OLine        : TOLine;
    OArc         : TOArc;
    OTable       : TOTable;
    ORectangle   : TORectangle;
    OPolygon     : TOPolygon;
    OCircle      : TOCircle;
    OEllipse     : TOEllipse;
    OSector      : TOSector;
    OText        : TOText;
    procedure SetMapPositionX(const Value: double);
    procedure SetMapPositionY(const Value: double);
    procedure setIsOverlay(const Value: boolean);
    procedure actifButton(value : byte);
    procedure isiEditText;
    procedure hit (pos : TPoint);
    property  MapPositionX : double read FMapPositionX write SetMapPositionX;
    property  MapPositionY : double read FMapPositionY write SetMapPositionY;

    //bebe
    procedure enableApplyButton(val: Boolean);
  published
    property isOverlay : Boolean read FisOverlay write setIsOverlay;
  end;

var
  fmOverlayEdit: TfmOverlayEdit;

implementation

{$R *.dfm}

uses  uFormUtil, uDrawOverlay, uMapXhandler, uBaseCoordSystem, uSimMgr_Client, uLibSettingTTT, uDynamicOverlay;

procedure TfmOverlayEdit.setIsOverlay(const Value: boolean);
begin
    FisOverlay := Value;
end;

procedure TfmOverlayEdit.SetMapPositionX(const Value: double);
begin
  FMapPositionX := Value;
  LongX         := formatDM_longitude(FMapPositionX);
  isiEditText
end;

procedure TfmOverlayEdit.SetMapPositionY(const Value: double);
begin
  FMapPositionY := Value;
  LongY         := formatDM_latitude(FMapPositionY);
  isiEditText
end;


procedure TfmOverlayEdit.SpeedButtonClick(Sender: TObject);
begin
  if Assigned(Sender)then
  begin
    if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 0) then
      TagTombol := 0
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 1) then
      TagTombol := 1
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 2) then
      TagTombol := 2
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 3) then
      TagTombol := 3
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 4) then
      TagTombol := 4
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 5) then
      TagTombol := 5
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 6) then
      TagTombol := 6
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 7) then
      TagTombol := 7
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 8) then
      TagTombol := 8
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 9) then
      TagTombol := 9
    else if (Sender is TSpeedButton) and (TSpeedButton(Sender).Tag = 10) then
      TagTombol := 10;

    frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtAddOverlay;
  end;
end;

procedure TfmOverlayEdit.isiEditText;
begin
  if TagTombol = 0 then
  begin
    edtTextPosLat.Text  := LongY;
    edtTextPosLong.Text := LongX;
  end
  else if TagTombol = 1 then
  begin
    edtLineStartPosLat.Text  := LongY;
    edtLineStartPosLong.Text := LongX;
  end
  else if TagTombol = 2 then
  begin
    edtLineEndPosLat.Text  := LongY;
    edtLineEndPosLong.Text := LongX;
  end
  else if TagTombol = 3 then
  begin
    edtRectStartPosLat.Text  := LongY;
    edtRectStartPosLong.Text := LongX;
  end
  else if TagTombol = 4 then
  begin
    edtRectEndPosLat.Text  := LongY;
    edtRectEndPosLong.Text := LongX;
  end
  else if TagTombol = 5 then
  begin
    edtCirclePosLat.Text  := LongY;
    edtCirclePosLong.Text := LongX;
  end
  else if TagTombol = 6 then
  begin
    edtEllipsePosLat.Text  := LongY;
    edtEllipsePosLong.Text := LongX;
  end
  else if TagTombol = 7 then
  begin
    edtArcPosLat.Text  := LongY;
    edtArcPosLong.Text := LongX;
  end
  else if TagTombol = 8 then
  begin
    edtSectorPosLat.Text  := LongY;
    edtSectorPosLong.Text := LongX;
  end
  else if TagTombol = 9 then
  begin
    edtTablePosLat.Text  := LongY;
    edtTablePosLong.Text := LongX;
  end
  else if TagTombol = 10 then
  begin
    edtPolyPosLat.Text  := LongY;
    edtPolyPosLong.Text := LongX;
  end
end;

procedure TfmOverlayEdit.FormShow(Sender: TObject);
begin
  fOverlayEditorStatic.Enabled;
  AlignFormToMonitor(0, apLeftTop, 0, 450, TForm(self));

  long := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Long;
  lat  := simMgrClient.GameEnvironment.FGameArea.Game_Centre_Lat;
end;

procedure TfmOverlayEdit.actifButton(value : byte);
begin
  if value = 0 then
  begin
    btnApply.Enabled := True;
    btnCancel.Enabled:= True;
    btnDelete.Enabled:= True;
  end
  else if value = 1 then
  begin
    btnApply.Enabled := True;
    btnCancel.Enabled:= True;
    btnDelete.Enabled:= False;
  end
  else
  begin
    btnApply.Enabled := False;
    btnCancel.Enabled:= False;
    btnDelete.Enabled:= False;
  end
end;

procedure TfmOverlayEdit.btnApplyClick(Sender: TObject);
begin
    // Jika apply awal
    if drawTextEdit      then GbrText
    else if drawLine     then GbrLine
    else if drawRect     then GbrRectangle
    else if drawCircle   then GbrCircle
    else if drawEllipse  then GbrEllipse
    else if drawArc      then GbrArc
    else if drawSector   then GbrSector
    else if drawTable    then GbrTable
    else if drawPolygon  then GbrPolygon;

    // Jika apply edit
    if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOText            then applyText
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOLine       then applyLine
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TORectangle  then applyRect
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOCircle     then applyCircle
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOEllipse    then applyEllipse
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOArc        then applyArc
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOSector     then applySector
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOTable      then applyTable
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOPolygon    then applyPolygon;

    btnClose.Caption := 'OK';
    {OSave sbg penanda bahwa objek siap d simpan, jk d ok objak d simpan. jk d cancel objek tdk jd d simpan}
    simMgrClient.DrawOverlayTemplate.RecordToFileStream(vMapSetting.OverlayPath + nameOverlay + '.dat');
    grpNormal.BringToFront;
    enableApplyButton(False);
    OSave := True;
end;

procedure TfmOverlayEdit.enableApplyButton(val: Boolean);
begin
  pnlColourOptions.Visible  := val;
  btnApply.Enabled  := val;
end;

procedure TfmOverlayEdit.btnDeleteClick(Sender: TObject);
var
  rec   : TRecCmd_DeleteOverlay;
begin
  if ODynamic then
  begin
    if simMgrClient.ISInstructor then
      rec.NRPGroupID := 0
    else
      rec.NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;

    {cek apakah cubicle ato controler, jk cubicle tidak bs edit}
    if (rec.NRPGroupID) <> (StrToInt(fOverlayEditorStatic.lvTemplates.Selected.SubItems.Strings[1]))then
      Exit;

    rec.SenderID  := StrToInt(Track.Text);
    rec.idx       := Nolist;
    rec.IdDelete  := 2;
    simMgrClient.netSend_CmdDeleteOverlay(rec);
  end
  else
  begin
    if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOText            then
    begin
       OText := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOText;
       simMgrClient.DrawOverlayTemplate.RemoveText(OText);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOLine       then
    begin
       OLine := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOLine;
       simMgrClient.DrawOverlayTemplate.RemoveLine(OLine);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TORectangle  then
    begin
       ORectangle := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TORectangle;
       simMgrClient.DrawOverlayTemplate.RemoveRect(ORectangle);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOCircle     then
    begin
       OCircle := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOCircle;
       simMgrClient.DrawOverlayTemplate.RemoveCircle(OCircle);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOEllipse    then
    begin
       OEllipse := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOEllipse;
       simMgrClient.DrawOverlayTemplate.RemoveEllipse(OEllipse);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOArc        then
    begin
       OArc := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOArc;
       simMgrClient.DrawOverlayTemplate.RemoveArc(OArc);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOSector     then
    begin
       OSector := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOSector;
       simMgrClient.DrawOverlayTemplate.RemoveSector(OSector);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOTable      then
    begin
       OTable := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOTable;
       simMgrClient.DrawOverlayTemplate.RemoveTable(OTable);
    end
    else if simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel is TOPolygon    then
    begin
       OPolygon := simMgrClient.DrawOverlayTemplate.FSelectedDrawTodel as TOPolygon;
       simMgrClient.DrawOverlayTemplate.RemovePolygon(OPolygon);
    end;
    {ODel sbg penanda bahwa objek siap d delete, jk d ok objek d delete. jk d cancel objek tdk jd d delete}
    ODel := True;
    simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
  end;

  btnClose.Caption := 'OK';
  grpNormal.BringToFront;
  enableApplyButton(False);
end;

procedure TfmOverlayEdit.btnCancelClick(Sender: TObject);
begin
  fOverlayEditorStatic.showOverlay;
  {Tombol cancel untuk form dynamic}
  if ODynamic then
  begin
    if Nolist < 0 then
      {Cancel pada saat membuat pertama kali}
      CencelDraw
    else
      {Cancel pada saat edit objek}
      CencelEdit;
  end;
  Close
end;

procedure TfmOverlayEdit.btnCloseClick(Sender: TObject);
begin
  {Jk keluar dan melakukan penyimpanan(overlay static)}
  if OSave and not(ODynamic)then
  begin
    simMgrClient.DrawOverlayTemplate.RecordToFileStream(vMapSetting.OverlayPath + nameOverlay + '.dat');
    OSave := False;
  end;
  {Jk keluar dan melakukan penghapusan(overlay static)}
  if ODel then
  begin
    simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
    ODel := False;
  end;
  {tampilkan smua overlay yg ada}
  fOverlayEditorStatic.showOverlay;
  if (btnClose.Caption = 'Close') and (ODynamic)then
    if Nolist <> -1 then
      CencelEdit;

  btnClose.Caption := 'Close';
  Close;
end;

procedure TfmOverlayEdit.btnSelectClick(Sender: TObject);
begin
    drawLine          := false;
    drawArc           := false;
    drawTable         := false;
    drawRect          := false;
    drawPolygon       := false;
    drawCircle        := false;
    drawEllipse       := false;
    drawSector        := false;
    drawTextEdit      := false;

    grpNormal.BringToFront;
    enableApplyButton(False);

    frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtEditOverlayStatic;
    actifButton(2);
end;

procedure TfmOverlayEdit.btnSelectDynamicClick(Sender: TObject);
begin
    grpNormal.BringToFront;
    enableApplyButton(False);
    frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtEditOverlayDynamic;
    actifButton(2);
end;

procedure TfmOverlayEdit.CencelDraw;
begin
  if OCancel  = 1 then      //line
  begin
    Nolist := -2;
    GbrLine;
  end
  else if OCancel  = 2 then //arc
  begin
    Nolist := -2;
    GbrArc
  end
  else if OCancel  = 3 then //table
  begin
    Nolist := -2;
    GbrTable;
  end
  else if OCancel  = 4 then //rectangle
  begin
    Nolist := -2;
    GbrRectangle;
  end
  else if OCancel  = 5 then //Polygon
  begin
    Nolist := -2;
    GbrPolygon;
  end
  else if OCancel  = 6 then //circle
  begin
    Nolist := -2;
    GbrCircle
  end
  else if OCancel  = 7 then //ellipse
  begin
    Nolist := -2;
    GbrEllipse;
  end
  else if OCancel  = 8 then //sector
  begin
    Nolist := -2;
    GbrSector;
  end
  else if OCancel  = 9 then //text
  begin
    Nolist := -2;
    GbrText;
  end;
end;

procedure TfmOverlayEdit.CencelEdit;
var
  li  : TListItem;
  a   : Integer;
begin
  if OBuffer.ShapeID  = 1 then      //line
  begin
    edtLineStartRange.Text   := FloatToStr(OBuffer.Range1);
    edtLineStartBearing.Text := FloatToStr(OBuffer.Bearing1);
    edtLineEndRange.Text     := FloatToStr(OBuffer.Range2);
    edtLineEndBearing.Text   := FloatToStr(OBuffer.Bearing2);
    clrbxColor.Selected      := OBuffer.color;
    GbrLine;
  end
  else if OBuffer.ShapeID  = 2 then //arc
  begin
    edtArcRange.Text        := FloatToStr(OBuffer.Range1);
    edtArcBearing.Text      := FloatToStr(OBuffer.Bearing1);
    edtArcRadiusD.Text      := FloatToStr(OBuffer.Radius1);
    edtArcStartAngleD.Text  := FloatToStr(OBuffer.StartAngle);
    edtArcEndAngleD.Text    := FloatToStr(OBuffer.EndAngle);
    clrbxColor.Selected     := OBuffer.color;
    GbrArc
  end
  else if OBuffer.ShapeID  = 3 then //table
  begin
    edtTableRange.Text        := FloatToStr(OBuffer.Range1);
    edtTableBearing.Text      := FloatToStr(OBuffer.Bearing1);
    edtTableColumnD.Text      := FloatToStr(OBuffer.Kolom);
    edtTableRowD.Text         := FloatToStr(OBuffer.Baris);
    edtTableHeightD.Text      := FloatToStr(OBuffer.Radius1);
    edtTableWidthD.Text       := FloatToStr(OBuffer.Radius2);
    edtRotationAngleD.Text    := FloatToStr(OBuffer.Rotasi);
    clrbxColor.Selected       := OBuffer.color;
    GbrTable;
  end
  else if OBuffer.ShapeID  = 4 then //rectangle
  begin
    edtRecStartRange.Text   := FloatToStr(OBuffer.Range1);
    edtRecStartBearing.Text := FloatToStr(OBuffer.Bearing1);
    edtRecEndRange.Text     := FloatToStr(OBuffer.Range2);
    edtRecEndBearing.Text   := FloatToStr(OBuffer.Bearing2);
    clrbxColor.Selected     := OBuffer.color;
    GbrRectangle;
  end
  else if OBuffer.ShapeID  = 5 then //Polygon
  begin
    lvPolyVertexD.Clear;
    for a := 0 to OBuffer.Baris - 1 do
    begin
      li          := lvPolyVertexD.Items.Add;
      li.Caption  := FloatToStr(OBuffer.Vertex[a,0]);
      li.SubItems.Add(FloatToStr(OBuffer.Vertex[a,1]));
      li.SubItems.Add(FloatToStr(OBuffer.Vertex[a,2]));
    end;
    clrbxColor.Selected      := OBuffer.color;
    GbrPolygon;
  end
  else if OBuffer.ShapeID  = 6 then //circle
  begin
    edtCircleRange.Text   := FloatToStr(OBuffer.Range1);
    edtCircleBearing.Text := FloatToStr(OBuffer.Bearing1);
    edtCircleRadiusD.Text := FloatToStr(OBuffer.Radius1);
    clrbxColor.Selected   := OBuffer.color;
    GbrCircle
  end
  else if OBuffer.ShapeID  = 7 then //ellipse
  begin
    edtEllipseRange.Text        := FloatToStr(OBuffer.Range1);
    edtEllipseBearing.Text      := FloatToStr(OBuffer.Bearing1);
    edtEllipseHorizontalD.Text  := FloatToStr(OBuffer.Radius1);
    edtEllipseVerticalD.Text    := FloatToStr(OBuffer.Radius2);
    clrbxColor.Selected         := OBuffer.color;
    GbrEllipse;
  end
  else if OBuffer.ShapeID  = 8 then //sector
  begin
    edtSectorRange.Text       := FloatToStr(OBuffer.Range1);
    edtSectorBearing.Text     := FloatToStr(OBuffer.Bearing1);
    edtSectorInnerD.Text      := FloatToStr(OBuffer.Radius1);
    edtSectorOuterD.Text      := FloatToStr(OBuffer.Radius2);
    edtSectorStartAngleD.Text := FloatToStr(OBuffer.StartAngle);
    edtSectorEndAngleD.Text   := FloatToStr(OBuffer.EndAngle);
    clrbxColor.Selected       := OBuffer.color;
    GbrSector;
  end
  else if OBuffer.ShapeID  = 9 then //text
  begin
    edtTextRange.Text     := FloatToStr(OBuffer.Range1);
    edtTextBearing.Text   := FloatToStr(OBuffer.Bearing1);
    edtTextFieldD.Text    := OBuffer.Words;
    clrbxColor.Selected   := OBuffer.color;
    if OBuffer.Size = 10 then cbbTextSizeD.Text := 'Small';
    if OBuffer.Size = 15 then cbbTextSizeD.Text := 'Medium';
    if OBuffer.Size = 20 then cbbTextSizeD.Text := 'Large';
    GbrText;
  end;
end;

procedure TfmOverlayEdit.btnTextClick(Sender: TObject);
begin
    drawTextEdit   := true;
    drawLine       := false;
    drawArc        := false;
    drawTable      := false;
    drawRect       := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawSector     := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtTextRange.Text    := RangeOff.Text;
      edtTextBearing.Text  := BearingOff.Text;
      edtTextFieldD.Text   := 'Default';

      grpTextDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtTextPosLong.Text := formatDM_longitude(long);
      edtTextPosLat.Text  := formatDM_latitude(lat);
      edtTextField.Text   := 'Default';

      grpText.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnLineClick(Sender: TObject);
begin
    drawLine       := true;
    drawArc        := false;
    drawTable      := false;
    drawRect       := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtLineStartRange.Text   := RangeOff.Text;
      edtLineStartBearing.Text := BearingOff.text;
      edtLineEndRange.Text     := '000';
      edtLineEndBearing.Text   := '000';

      grpLineDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtLineStartPosLong.Text := formatDM_longitude(long);
      edtLineStartPosLat.Text  := formatDM_latitude(lat);
      edtLineEndPosLong.Text   := formatDM_longitude(long);
      edtLineEndPosLat.Text    := formatDM_latitude(lat);

      grpLine.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;

end;

procedure TfmOverlayEdit.btnRectangleClick(Sender: TObject);
begin
    drawRect       := true;
    drawLine       := false;
    drawArc        := false;
    drawTable      := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtRecStartRange.Text    := RangeOff.Text;
      edtRecStartBearing.Text  := BearingOff.Text;
      edtRecEndRange.Text      := '000';
      edtRecEndBearing.Text    := '000';

      grpRectangleDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtRectStartPosLong.Text := formatDM_longitude(long);
      edtRectStartPosLat.Text  := formatDM_latitude(lat);
      edtRectEndPosLong.Text   := formatDM_longitude(long);
      edtRectEndPosLat.Text    := formatDM_latitude(lat);

      grpRectangle.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnCircleClick(Sender: TObject);
begin
    drawCircle     := true;
    drawLine       := false;
    drawArc        := false;
    drawTable      := false;
    drawRect       := false;
    drawPolygon    := false;
    drawEllipse    := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtCircleRange.Text    := RangeOff.Text;
      edtCircleBearing.Text  := BearingOff.Text;
      edtCircleRadiusD.Text  := '000';

      grpCircleDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtCirclePosLong.Text := formatDM_longitude(long);
      edtCirclePosLat.Text  := formatDM_latitude(lat);
      edtCircleRadius.Text  := '000';

      grpCircle.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnEditPointDClick(Sender: TObject);
begin
  if lvPolyVertexD.ItemIndex <> -1 then
  begin
    lvPolyVertexD.Selected.SubItems.Strings[0] := edtPolRange.Text;
    lvPolyVertexD.Selected.SubItems.Strings[1] := edtPolBearing.Text;
  end;
end;

procedure TfmOverlayEdit.btnEllipseClick(Sender: TObject);
begin
    drawEllipse    := true;
    drawLine       := false;
    drawArc        := false;
    drawTable      := false;
    drawRect       := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtEllipseRange.Text            := RangeOff.Text;
      edtEllipseBearing.Text          := BearingOff.Text;
      edtEllipseHorizontalD.Text      := '000';
      edtEllipseVerticalD.Text        := '000';

      grpEllipseDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtEllipsePosLong.Text  := formatDM_longitude(long);
      edtEllipsePosLat.Text   := formatDM_latitude(lat);
      edtHorizontal.Text      := '000';
      edtVertical.Text        := '000';

      grpEllipse.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnArcClick(Sender: TObject);
begin
    drawArc        := true;
    drawLine       := false;
    drawTable      := false;
    drawRect       := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtArcRange.Text       := RangeOff.Text;
      edtArcBearing.Text     := BearingOff.Text;
      edtArcRadiusD.Text     := '000';
      edtArcStartAngleD.Text := '000';
      edtArcEndAngleD.Text   := '000';

      grpArcDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtArcPosLong.Text    := formatDM_longitude(long);
      edtArcPosLat.Text     := formatDM_latitude(lat);
      edtArcRadius.Text     := '000';
      edtArcStartAngle.Text := '000';
      edtArcEndAngle.Text   := '000';

      grpArc.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnSectorClick(Sender: TObject);
begin
    drawSector     := true;
    drawLine       := false;
    drawArc        := false;
    drawTable      := false;
    drawRect       := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtSectorRange.Text       := RangeOff.Text;
      edtSectorBearing.Text     := BearingOff.Text;
      edtSectorInnerD.Text      := '000';
      edtSectorOuterD.Text      := '000';
      edtSectorStartAngleD.Text := '000';
      edtSectorEndAngleD.Text   := '000';

      grpSectorDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtSectorPosLong.Text    := formatDM_longitude(long);
      edtSectorPosLat.Text     := formatDM_latitude(lat);
      edtSectorInner.Text      := '000';
      edtSectorOuter.Text      := '000';
      edtSectorStartAngle.Text := '000';
      edtSectorEndAngle.Text   := '000';

      grpSector.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnGridClick(Sender: TObject);
begin
    drawTable      := true;
    drawLine       := false;
    drawArc        := false;
    drawRect       := false;
    drawPolygon    := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtTableRange.Text      := RangeOff.Text;
      edtTableBearing.Text    := BearingOff.Text;
      edtTableHeightD.Text    := '000';
      edtTableWidthD.Text     := '000';
      edtTableColumnD.Text    := '0';
      edtTableRowD.Text       := '0';
      edtRotationAngleD.Text  := Angle.Text;

      grpGridDynamic.BringToFront;
      enableApplyButton(True);
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtTablePosLong.Text       := formatDM_longitude(long);
      edtTablePosLat.Text        := formatDM_latitude(lat);
      edtTableHeight.Text        := '000';
      edtTableWidth.Text         := '000';
      edtTableColumn.Text        := '0';
      edtTableRow.Text           := '0';
      edtTableRotationAngle.Text := '0';

      grpGrid.BringToFront;
      enableApplyButton(True);
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnPolygonClick(Sender: TObject);
begin
    drawPolygon    := true;
    drawLine       := false;
    drawArc        := false;
    drawTable      := false;
    drawRect       := false;
    drawCircle     := false;
    drawEllipse    := false;
    drawSector     := false;
    drawTextEdit   := false;
    actifButton(1);

    if (TSpeedButton(Sender).Tag = 1) then
    begin
      edtPolRange.Text    := '000';
      edtPolBearing.Text  := '000';
      indexVertex         := 0;

      grpPolygonDynamic.BringToFront;
      enableApplyButton(True);
      lvPolyVertexD.Clear;
      btnEditPointD.Visible := False;
      ODynamic := True;
      Nolist   := -1;
    end
    else
    begin
      edtPolyPosLong.Text := formatDM_longitude(long);
      edtPolyPosLat.Text  := formatDM_latitude(lat);
      indexVertex         := 0;

      grpPolygon.BringToFront;
      enableApplyButton(True);
      lvPolyVertex.Clear;
      ODynamic := False;
    end;
end;

procedure TfmOverlayEdit.btnAddPointClick(Sender: TObject);
var
  li : TListItem;
  tempPos : TMapPt;
begin
  tempPos.Longitude := dmToLongitude(edtPolyPosLong.Text);
  tempPos.Latitude  := dmToLatitude(edtPolyPosLat.Text);
  li                := lvPolyVertex.Items.Add;
  li.Caption        := IntToStr(lvPolyVertex.Items.Count);
  li.SubItems.Add(edtPolyPosLat.Text);
  li.SubItems.Add(edtPolyPosLong.Text);

  setlengthVertex := indexVertex+1;
  SetLength(mapVertex, setlengthVertex);
  mapVertex[indexVertex].Longitude := tempPos.Longitude;
  mapVertex[indexVertex].Latitude := tempPos.Latitude;
  inc(indexVertex);
end;

procedure TfmOverlayEdit.btnAddPointDClick(Sender: TObject);
var
  li    : TListItem;
  last  : Integer;
begin
  if (lvPolyVertexD.Items.Count <> 0) then begin
    if (lvPolyVertexD.Items.Count < 10) then
    begin
      last  := lvPolyVertexD.Items.Count;
      last  := StrToInt(lvPolyVertexD.Items[last-1].Caption);
    end
    else
    begin
      ShowMessage('Maksimal Titik 10');
      Exit;
    end;
  end
  else begin
    last := 0;
  end;

  li          := lvPolyVertexD.Items.Add;
  li.Caption  := IntToStr(last+1);
  li.SubItems.Add(edtPolRange.Text);
  li.SubItems.Add(edtPolBearing.Text);
  inc(indexVertex);
end;

procedure TfmOverlayEdit.btnDeletePointDClick(Sender: TObject);
begin
  if lvPolyVertexD.ItemIndex <> -1 then
  begin
    lvPolyVertexD.Selected.Delete;
    if lvPolyVertexD.Items.Count = 0 then
    begin
        btnDeletePointD.Enabled := False;
        btnEditPointD.Enabled   := False;
    end;
  end;
end;

procedure TfmOverlayEdit.lvPolyVertexDClick(Sender: TObject);
begin
  if lvPolyVertexD.ItemIndex <> -1 then
  begin
    btnDeletePointD.Enabled := true;
    btnEditPointD.Enabled   := True;
    EdtVertex.Text          := lvPolyVertexD.Selected.Caption;
    edtPolRange.Text        := lvPolyVertexD.Selected.SubItems.Strings[0];
    edtPolBearing.Text      := lvPolyVertexD.Selected.SubItems.Strings[1];
  end
  else
  begin
    btnDeletePointD.Enabled := False;
    btnEditPointD.Enabled   := False;
  end;

end;

procedure TfmOverlayEdit.btnDeletePointClick(Sender: TObject);
begin
if lvPolyVertex.ItemIndex <> -1 then
  begin
    lvPolyVertex.Selected.Delete;
    if lvPolyVertex.Items.Count = 0 then
        btnDeletePoint.Enabled := False
  end;
end;

procedure TfmOverlayEdit.GbrText;
var
  Size              : Integer;
  DSize             : Byte;
  recordDynamic     : TRecCmd_OverlayDynamicShape;
begin

  if ODynamic then
  begin
    if simMgrClient.ISInstructor then
      recordDynamic.Cubicle := 0
    else
      recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

    if      cbbTextSizeD.Text = 'Small'  then DSize := 10
    else if cbbTextSizeD.Text = 'Medium' then DSize := 15
    else if cbbTextSizeD.Text = 'Large'  then DSize := 20
    else    DSize := 10;

    recordDynamic.ShapeID   := 9;
    recordDynamic.TemplateName:= nameOverlay;
    recordDynamic.NoTrack   := StrToInt(NoTrack.Text);
    recordDynamic.SenderID  := StrToInt(Track.Text);
    recordDynamic.Bearing   := Bearing.Text;
    recordDynamic.Color     := clrbxColor.Selected;
    recordDynamic.Rotasi    := StrToInt(Angle.Text);
    recordDynamic.Size      := DSize;
    recordDynamic.Words      := edtTextFieldD.Text;
    recordDynamic.Bearing1  := StrToInt(edtTextBearing.Text);
    recordDynamic.Range1    := StrToFloat(edtTextRange.Text);
    recordDynamic.NoList    := Nolist;
    simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
    OCancel                 := 9;
    drawTextEdit            := false;
  end
  else
  begin

    if      cbbTextSize.Text = 'Small'   then Size := 10
    else if cbbTextSize.Text = 'Medium'  then Size := 15
    else if cbbTextSize.Text = 'Large'   then Size := 20
    else    Size := 10;

    OText                           := TOText.Create;
    OText.startMap.Longitude        := dmToLongitude(edtTextPosLong.Text);
    OText.startMap.Latitude         := dmToLatitude(edtTextPosLat.Text);
    OText.words                     := edtTextField.Text;
    OText.size                      := Size;
    OText.color                     := clrbxColor.Selected;
    OText.isSelected                := False;
    simMgrClient.DrawOverlayTemplate.AddText(OText);
  end;
end;

procedure TfmOverlayEdit.GbrLine;
var
  recordDynamic     : TRecCmd_OverlayDynamicShape;
begin

  if ODynamic then
  begin
    if simMgrClient.ISInstructor then
      recordDynamic.Cubicle := 0
    else
      recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

    recordDynamic.ShapeID   := 1;
    recordDynamic.TemplateName:= nameOverlay;
    recordDynamic.NoTrack   := StrToInt(NoTrack.Text);
    recordDynamic.SenderID  := StrToInt(Track.Text);
    recordDynamic.Bearing   := Bearing.Text;
    recordDynamic.Color     := clrbxColor.Selected;
    recordDynamic.Rotasi    := StrToInt(Angle.Text);
    recordDynamic.Range1    := StrToFloat(edtLineStartRange.Text);
    recordDynamic.Range2    := StrToFloat(edtLineEndRange.Text);
    recordDynamic.Bearing1  := StrToFloat(edtLineStartBearing.Text);
    recordDynamic.Bearing2  := StrToFloat(edtLineEndBearing.Text);
    recordDynamic.NoList    := Nolist;
    simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
    OCancel                 := 1;
    drawLine                := False;
  end
  else
  begin
    OLine                         := TOLine.Create;
    OLine.startMap.Longitude      := dmToLongitude(edtLineStartPosLong.Text);
    OLine.startMap.Latitude       := dmToLatitude(edtLineStartPosLat.Text);
    OLine.endMap.Longitude        := dmToLongitude(edtLineEndPosLong.Text);
    OLine.endMap.Latitude         := dmToLatitude(edtLineEndPosLat.Text);
    OLine.color                   := clrbxColor.Selected;
    OLine.isSelected              := False;
    simMgrClient.DrawOverlayTemplate.AddLine(OLine);
  end;
end;

procedure TfmOverlayEdit.GbrRectangle;
var
  recordDynamic     : TRecCmd_OverlayDynamicShape;
begin

  if ODynamic then
  begin
    if simMgrClient.ISInstructor then
      recordDynamic.Cubicle := 0
    else
      recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;
    recordDynamic.ShapeID   := 4;
    recordDynamic.TemplateName:= nameOverlay;
    recordDynamic.NoTrack   := StrToInt(NoTrack.Text);
    recordDynamic.SenderID  := StrToInt(Track.Text);
    recordDynamic.Bearing   := Bearing.Text;
    recordDynamic.Color     := clrbxColor.Selected;
    recordDynamic.Rotasi    := StrToInt(Angle.Text);
    recordDynamic.Range1    := StrToFloat(edtRecStartRange.Text);
    recordDynamic.Range2    := StrToFloat(edtRecEndRange.Text);
    recordDynamic.Bearing1  := StrToFloat(edtRecStartBearing.Text);
    recordDynamic.Bearing2  := StrToFloat(edtRecEndBearing.Text);
    recordDynamic.NoList    := Nolist;
    simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
    OCancel                 := 4;
    drawRect                := False

  end
  else
  begin
    ORectangle                         := TORectangle.Create;
    ORectangle.startMap.Longitude      := dmToLongitude(edtRectStartPosLong.Text);
    ORectangle.startMap.Latitude       := dmToLatitude(edtRectStartPosLat.Text);
    ORectangle.endMap.Longitude        := dmToLongitude(edtRectEndPosLong.Text);
    ORectangle.endMap.Latitude         := dmToLatitude(edtRectEndPosLat.Text);
    ORectangle.color                   := clrbxColor.Selected;
    ORectangle.isSelected              := False;
    simMgrClient.DrawOverlayTemplate.AddRect(ORectangle);
  end;

end;

procedure TfmOverlayEdit.GbrCircle;
var
  recordDynamic   : TRecCmd_OverlayDynamicShape;
  r               : Integer;
begin

  if ODynamic then
  begin
    if simMgrClient.ISInstructor then
      recordDynamic.Cubicle := 0
    else
      recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;
    recordDynamic.ShapeID   := 6;
    recordDynamic.TemplateName:= nameOverlay;
    recordDynamic.NoTrack   := StrToInt(NoTrack.Text);
    recordDynamic.SenderID  := StrToInt(Track.Text);
    recordDynamic.Bearing   := Bearing.Text;
    recordDynamic.Color     := clrbxColor.Selected;
    recordDynamic.Rotasi    := StrToInt(Angle.Text);
    recordDynamic.Range1    := StrToFloat(edtCircleRange.Text);
    recordDynamic.Bearing1  := StrToFloat(edtCircleBearing.Text);
    recordDynamic.Radius1   := StrToFloat(edtCircleRadiusD.Text);
    recordDynamic.NoList    := Nolist;
    simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
    OCancel                 := 6;
    drawCircle              := false;
  end
  else
  begin
    OCircle                            := TOCircle.Create;
    r                                  := StrToInt(edtCircleRadius.Text);
    OCircle.startMap.Longitude         := dmToLongitude(edtCirclePosLong.Text);
    OCircle.startMap.Latitude          := dmToLatitude(edtCirclePosLat.Text);
    OCircle.endMap.Longitude           := OCircle.startMap.Longitude + ( r / 60);
    OCircle.endMap.Latitude            := OCircle.startMap.Latitude  + ( r / 60);
    OCircle.radian                     := r;
    OCircle.color                      := clrbxColor.Selected;
    OCircle.isSelected                 := False;
    simMgrClient.DrawOverlayTemplate.AddCircle(OCircle);
  end;
end;

procedure TfmOverlayEdit.GbrEllipse;
var
  vert, hori      : Integer;
  recordDynamic   : TRecCmd_OverlayDynamicShape;

begin
  if ODynamic then
  begin
    if simMgrClient.ISInstructor then
      recordDynamic.Cubicle := 0
    else
      recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;
    recordDynamic.ShapeID   := 7;
    recordDynamic.TemplateName:= nameOverlay;
    recordDynamic.NoTrack   := StrToInt(NoTrack.Text);
    recordDynamic.SenderID  := StrToInt(Track.Text);
    recordDynamic.Bearing   := Bearing.Text;
    recordDynamic.Color     := clrbxColor.Selected;
    recordDynamic.Rotasi    := StrToInt(Angle.Text);
    recordDynamic.Range1    := StrToFloat(edtEllipseRange.Text);
    recordDynamic.Bearing1  := StrToFloat(edtEllipseBearing.Text);
    recordDynamic.Radius1   := StrToFloat(edtEllipseVerticalD.Text);
    recordDynamic.Radius2   := StrToFloat(edtEllipseHorizontalD.Text);
    recordDynamic.NoList    := Nolist;
    simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
    OCancel                 := 7;
    drawEllipse             := false;
  end
  else
  begin
    OEllipse                           := TOEllipse.Create;
    vert                               := StrToInt(edtVertical.Text);
    hori                               := StrToInt(edtHorizontal.Text);
    OEllipse.centMap.Longitude         := dmToLongitude(edtEllipsePosLong.Text);
    OEllipse.centMap.Latitude          := dmToLatitude(edtEllipsePosLat.Text);
    OEllipse.startMap.Longitude        := OEllipse.centMap.Longitude - ( (hori/2) / 60);
    OEllipse.startMap.Latitude         := OEllipse.centMap.Latitude  - ( (vert/2) / 60);
    OEllipse.endMap.Longitude          := OEllipse.centMap.Longitude + ( (hori/2) / 60);
    OEllipse.endMap.Latitude           := OEllipse.centMap.Latitude  + ( (vert/2) / 60);
    OEllipse.color                     := clrbxColor.Selected;
    OEllipse.isSelected                := False;
    simMgrClient.DrawOverlayTemplate.AddEllipse(OEllipse);
  end;


end;

procedure TfmOverlayEdit.GbrArc;
var
  sAngle, eAngle : Integer;
  r_Degree       : Double;
  recordDynamic  : TRecCmd_OverlayDynamicShape;

begin
   if ODynamic then
   begin
      if simMgrClient.ISInstructor then
        recordDynamic.Cubicle := 0
      else
        recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;
      recordDynamic.ShapeID    := 2;
      recordDynamic.TemplateName := nameOverlay;
      recordDynamic.NoTrack    := StrToInt(NoTrack.Text);
      recordDynamic.SenderID   := StrToInt(Track.Text);
      recordDynamic.Bearing    := Bearing.Text;
      recordDynamic.Color      := clrbxColor.Selected;
      recordDynamic.Rotasi     := StrToInt(Angle.Text);
      recordDynamic.Range1     := StrToFloat(edtArcRange.Text);
      recordDynamic.Bearing1   := StrToFloat(edtArcBearing.Text);
      recordDynamic.Radius1    := StrToFloat(edtArcRadiusD.Text);
      recordDynamic.StartAngle := StrToInt(edtArcStartAngleD.Text);
      recordDynamic.EndAngle   := StrToInt(edtArcEndAngleD.Text);
      recordDynamic.NoList     := Nolist;
      simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
      OCancel                  := 2;
      drawArc                  := false;
   end
   else
   begin
      OArc                   := TOArc.Create;
      sAngle                 := StrToInt(edtArcStartAngle.Text);
      eAngle                 := StrToInt(edtArcEndAngle.Text);
      r_Degree               := StrToInt(edtArcRadius.Text);
      r_Degree               := r_Degree / 60;
      OArc.centMap.Longitude := dmToLongitude(edtArcPosLong.Text);
      OArc.centMap.Latitude  := dmToLatitude(edtArcPosLat.Text);
      OArc.radian            := StrToInt(edtArcRadius.Text);

       if (sAngle = 0) or (sAngle = 180) or (sAngle = 360) then
       begin
           OArc.startMap.Longitude    := OArc.centMap.Longitude;
           if (sAngle = 0) or (sAngle = 360) then
               OArc.startMap.Latitude := OArc.centMap.Latitude + r_Degree
           else
               OArc.startMap.Latitude := OArc.centMap.Latitude - r_Degree;
       end
       else if (sAngle = 90) or (sAngle = 270) then
       begin
           if sAngle = 90 then
           begin
              OArc.startMap.Longitude := OArc.centMap.Longitude + r_Degree ;
              if OArc.startMap.Longitude > 180 then
              begin
                 OArc.startMap.Longitude := (OArc.startMap.Longitude-180) - 180;
              end;
           end
           else
              OArc.startMap.Longitude := OArc.centMap.Longitude - r_Degree;
           OArc.startMap.Latitude  := OArc.centMap.Latitude;
       end
       else
       begin
           OArc.startMap.Longitude := FFormula.getXFromAngle(OArc.centMap.Longitude, sAngle, r_Degree);
           OArc.startMap.Latitude  := FFormula.getYFromAngle(OArc.centMap.Latitude,  sAngle, r_Degree);
       end;

       //---------------------------------------------------------------

       if (eAngle = 0) or (eAngle = 180) or (eAngle = 360) then
       begin
           OArc.endMap.Longitude := OArc.centMap.Longitude;
           if (eAngle = 0) or (eAngle = 360) then
               OArc.endMap.Latitude := OArc.centMap.Latitude + r_Degree
           else
               OArc.endMap.Latitude := OArc.centMap.Latitude - r_Degree;
       end
       else if (eAngle = 90) or (eAngle = 270) then
       begin
           if (eAngle = 90) then
           begin
               OArc.endMap.Longitude := OArc.centMap.Longitude + r_Degree;
               if OArc.endMap.Longitude > 180 then
               begin
                   OArc.endMap.Longitude := (OArc.endMap.Longitude-180) - 180;
               end;
           end
           else
               OArc.endMap.Longitude := OArc.centMap.Longitude - r_Degree;
           OArc.endMap.Latitude  := OArc.centMap.Latitude;
       end
       else
       begin
           OArc.endMap.Longitude   := FFormula.getXFromAngle(OArc.centMap.Longitude, eAngle, r_Degree);
           OArc.endMap.Latitude    := FFormula.getYFromAngle(OArc.centMap.Latitude,  eAngle, r_Degree);
       end;
      OArc.startAngle              := sAngle;
      OArc.endAngle                := eAngle;
      OArc.color                   := clrbxColor.Selected;
      OArc.isSelected              := False;
      simMgrClient.DrawOverlayTemplate.AddArc(OArc);
   end;
end;

procedure TfmOverlayEdit.GbrSector;
var
  r1_degree,
  r2_degree      : Double;
  sAngle, eAngle : Integer;
  recordDynamic  : TRecCmd_OverlayDynamicShape;

begin

   if ODynamic then
   begin
      if simMgrClient.ISInstructor then
        recordDynamic.Cubicle := 0
      else
        recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;
      recordDynamic.ShapeID    := 8;
      recordDynamic.TemplateName := nameOverlay;
      recordDynamic.NoTrack    := StrToInt(NoTrack.Text);
      recordDynamic.SenderID   := StrToInt(Track.Text);
      recordDynamic.Bearing    := Bearing.Text;
      recordDynamic.Color      := clrbxColor.Selected;
      recordDynamic.Rotasi     := StrToInt(Angle.Text);
      recordDynamic.Range1     := StrToFloat(edtSectorRange.Text);
      recordDynamic.Bearing1   := StrToFloat(edtSectorBearing.Text);
      recordDynamic.Radius1    := StrToFloat(edtSectorInnerD.Text);
      recordDynamic.Radius2    := StrToFloat(edtSectorOuterD.Text);
      recordDynamic.StartAngle := StrToInt(edtSectorStartAngleD.Text);
      recordDynamic.EndAngle   := StrToInt(edtSectorEndAngleD.Text);
      recordDynamic.NoList     := Nolist;
      simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
      OCancel                  := 8;
      drawSector               := false;
   end
   else
   begin
      OSector                       := TOSector.Create;
      sAngle                        := StrToInt(edtSectorStartAngle.Text);
      eAngle                        := StrToInt(edtSectorEndAngle.Text);
      OSector.inner                 := StrToInt(edtSectorInner.Text);
      OSector.outer                 := StrToInt(edtSectorOuter.Text);
      OSector.centMap.Longitude     := dmToLongitude(edtSectorPosLong.Text);
      OSector.centMap.Latitude      := dmToLatitude(edtSectorPosLat.Text);
      r1_degree                     := OSector.inner/60;
      r2_degree                     := OSector.outer/60;


//      if r1_degree = r2_degree then
//         OSector.details := 'scArc'
//      else
         OSector.details := 'scWiper';

       if (sAngle = 0) or (sAngle = 180) or (sAngle = 360) then
       begin
           OSector.startMap.Longitude    := OSector.centMap.Longitude;
           OSector.startMap2.Longitude   := OSector.centMap.Longitude;
           if (sAngle = 0) or (sAngle = 360) then begin
               OSector.startMap.Latitude  := OSector.centMap.Latitude + r1_Degree;
               OSector.startMap2.Latitude := OSector.centMap.Latitude + r2_Degree;
           end
           else begin
               OSector.startMap.Latitude  := OSector.centMap.Latitude - r1_Degree;
               OSector.startMap2.Latitude := OSector.centMap.Latitude - r2_Degree;
           end;
       end
       else if (sAngle = 90) or (sAngle = 270) then
       begin
           if sAngle = 90 then
           begin
              OSector.startMap.Longitude  := OSector.centMap.Longitude + r1_Degree ;
              OSector.startMap2.Longitude := OSector.centMap.Longitude + r2_Degree ;
              if OSector.startMap.Longitude > 180 then
                 OSector.startMap.Longitude := (OSector.startMap.Longitude-180) - 180;
              if OSector.startMap2.Longitude > 180 then
                 OSector.startMap2.Longitude := (OSector.startMap2.Longitude-180) - 180;
           end
           else begin
              OSector.startMap.Longitude  := OSector.centMap.Longitude - r1_Degree;
              OSector.startMap2.Longitude := OSector.centMap.Longitude - r2_Degree;
           end;

           OSector.startMap.Latitude  := OSector.centMap.Latitude;
           OSector.startMap2.Latitude := OSector.centMap.Latitude;
       end
       else
       begin
           OSector.startMap.Longitude  := FFormula.getXFromAngle(OSector.centMap.Longitude, sAngle, r1_Degree);
           OSector.startMap.Latitude   := FFormula.getYFromAngle(OSector.centMap.Latitude,  sAngle, r1_Degree);
           OSector.startMap2.Longitude := FFormula.getXFromAngle(OSector.centMap.Longitude, sAngle, r2_Degree);
           OSector.startMap2.Latitude  := FFormula.getYFromAngle(OSector.centMap.Latitude,  sAngle, r2_Degree);
       end;

       //---------------------------------------------------------------

       if (eAngle = 0) or (eAngle = 180) or (eAngle = 360) then
       begin
           OSector.endMap.Longitude  := OSector.centMap.Longitude;
           OSector.endMap2.Longitude := OSector.centMap.Longitude;
           if (eAngle = 0) or (eAngle = 360) then begin
               OSector.endMap.Latitude  := OSector.centMap.Latitude + r1_Degree;
               OSector.endMap2.Latitude := OSector.centMap.Latitude + r2_Degree;
           end
           else begin
               OSector.endMap.Latitude  := OSector.centMap.Latitude - r1_Degree;
               OSector.endMap2.Latitude := OSector.centMap.Latitude - r2_Degree;
           end;
       end
       else if (eAngle = 90) or (eAngle = 270) then
       begin
           if (eAngle = 90) then
           begin
               OSector.endMap.Longitude  := OSector.centMap.Longitude + r1_Degree;
               OSector.endMap2.Longitude := OSector.centMap.Longitude + r2_Degree;
               if OSector.endMap.Longitude > 180 then
                  OSector.endMap.Longitude  := (OSector.endMap.Longitude-180) - 180;
               if OSector.endMap2.Longitude > 180 then
                  OSector.endMap2.Longitude := (OSector.endMap2.Longitude-180) - 180;
           end
           else  begin
               OSector.endMap.Longitude  := OSector.centMap.Longitude - r1_Degree;
               OSector.endMap2.Longitude := OSector.centMap.Longitude - r2_Degree;
           end;
           OSector.endMap.Latitude   := OSector.centMap.Latitude;
           OSector.endMap2.Latitude  := OSector.centMap.Latitude;
       end
       else
       begin
           OSector.endMap.Longitude   := FFormula.getXFromAngle(OSector.centMap.Longitude, eAngle, r1_Degree);
           OSector.endMap.Latitude    := FFormula.getYFromAngle(OSector.centMap.Latitude,  eAngle, r1_Degree);
           OSector.endMap2.Longitude  := FFormula.getXFromAngle(OSector.centMap.Longitude, eAngle, r2_Degree);
           OSector.endMap2.Latitude   := FFormula.getYFromAngle(OSector.centMap.Latitude,  eAngle, r2_Degree);
       end;

      OSector.startAngle              := sAngle;
      OSector.endAngle                := eAngle;
      OSector.color                   := clrbxColor.Selected;
      OSector.isSelected              := False;
      simMgrClient.DrawOverlayTemplate.AddSector(OSector);
   end;
end;

procedure TfmOverlayEdit.GbrTable;
var
   temp                           : TRect;
   sx, sy                         : single;
   w, h                           : Double;
   column, row, Rot,
   sX_Pt, sY_Pt, eX_Pt, eY_Pt     : Integer;

   cXY, Point_A,
   Point_B, Point_C, Point_D,
   Temp_A, Temp_B, Temp_C,Temp_D  : TScreenPt;

   recordDynamic                  : TRecCmd_OverlayDynamicShape;
begin

   if ODynamic then
   begin
      if simMgrClient.ISInstructor then
        recordDynamic.Cubicle := 0
      else
        recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;
      recordDynamic.ShapeID    := 3;
      recordDynamic.TemplateName := nameOverlay;
      recordDynamic.NoTrack    := StrToInt(NoTrack.Text);
      recordDynamic.SenderID   := StrToInt(Track.Text);
      recordDynamic.Bearing    := Bearing.Text;
      recordDynamic.Color      := clrbxColor.Selected;
      recordDynamic.Rotasi     := StrToInt(edtRotationAngleD.Text);
      recordDynamic.Range1     := StrToFloat(edtTableRange.Text);
      recordDynamic.Bearing1   := StrToFloat(edtTableBearing.Text);
      recordDynamic.Kolom      := StrToInt(edtTableColumnD.Text);
      recordDynamic.Baris      := StrToInt(edtTableRowD.Text);
      recordDynamic.Radius1    := StrToFloat(edtTableHeightD.Text);
      recordDynamic.Radius2    := StrToFloat(edtTableWidthD.Text);
      recordDynamic.NoList     := Nolist;
      simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
      OCancel                  := 3;
      drawTable                := false;
   end
   else
   begin
       OTable                         := TOTable.Create;
       OTable.CelHeight               := StrToFloat(edtTableHeight.Text);
       OTable.CelWidth                := StrToFloat(edtTableWidth.Text);
       column                         := StrToInt(edtTableColumn.Text);
       row                            := StrToInt(edtTableRow.Text);
       Rot                            := StrToInt(edtTableRotationAngle.Text);
       w                              := OTable.CelWidth  / 60;
       h                              := OTable.CelHeight / 60;
       OTable.centMap.Longitude       := dmToLongitude(edtTablePosLong.Text);
       OTable.centMap.Latitude        := dmToLatitude(edtTablePosLat.Text);
       OTable.startMap.Longitude      := OTable.centMap.Longitude - (w*(column/2));
       OTable.startMap.Latitude       := OTable.centMap.Latitude  - (h*(row/2));
       OTable.endMap.Longitude        := OTable.centMap.Longitude + (w*(column/2));
       OTable.endMap.Latitude         := OTable.centMap.Latitude  + (h*(row/2));
       OTable.column                  := column;
       OTable.row                     := row;
       OTable.angle                   := Rot;

       simMgrClient.Converter.FMap.ConvertCoord(sX, sY, OTable.centMap.Longitude, OTable.centMap.Latitude, miMapToScreen);
       cXY.X := Round(sX);
       cXY.Y := Round(sY);
       simMgrClient.Converter.FMap.ConvertCoord(sX, sY, OTable.startMap.Longitude, OTable.startMap.Latitude, miMapToScreen);
       sX_Pt := Round(sX);
       sY_Pt := Round(sY);
       simMgrClient.Converter.FMap.ConvertCoord(sX, sY, OTable.endMap.Longitude, OTable.endMap.Latitude, miMapToScreen);
       eX_Pt := Round(sX);
       eY_Pt := Round(sY);
       temp  := fFormula.checkXYPosition(sX_Pt, sY_Pt, eX_Pt, eY_Pt);
       Point_A.X  := temp.Left;     Point_A.Y  := temp.Top;
       Point_B.X  := temp.Right;    Point_B.Y  := temp.Top;
       Point_C.X  := temp.Right;    Point_C.Y  := temp.Bottom;
       Point_D.X  := temp.Left;     Point_D.Y  := temp.Bottom;

       // update after rotation
       Temp_A.X  := fFormula.getX_fromRotation(Point_A, cxy, Rot);
       Temp_A.Y  := fFormula.getY_fromRotation(Point_A, cxy, Rot);
       Temp_C.X  := fFormula.getX_fromRotation(Point_C, cxy, Rot);
       Temp_C.Y  := fFormula.getY_fromRotation(Point_C, cxy, Rot);
       Temp_B.X  := fFormula.getX_fromRotation(Point_B, cxy, Rot);
       Temp_B.Y  := fFormula.getY_fromRotation(Point_B, cxy, Rot);
       Temp_D.X  := fFormula.getX_fromRotation(Point_D, cxy, Rot);
       Temp_D.Y  := fFormula.getY_fromRotation(Point_D, cxy, Rot);
       simMgrClient.Converter.FMap.ConvertCoord(Temp_A.X, Temp_A.Y, OTable.tempStartMap.Longitude, OTable.tempStartMap.Latitude, miScreenToMap);
       simMgrClient.Converter.FMap.ConvertCoord(Temp_C.X, Temp_C.Y, OTable.tempEndMap.Longitude, OTable.tempEndMap.Latitude, miScreenToMap);
       simMgrClient.Converter.FMap.ConvertCoord(Temp_B.X, Temp_B.Y, OTable.tempBMap.Longitude, OTable.tempBMap.Latitude, miScreenToMap);
       simMgrClient.Converter.FMap.ConvertCoord(Temp_D.X, Temp_D.Y, OTable.tempDMap.Longitude, OTable.tempDMap.Latitude, miScreenToMap);

       OTable.color                   := clrbxColor.Selected;
       OTable.isSelected              := False;
       simMgrClient.DrawOverlayTemplate.AddTable(OTable);
   end;
end;

procedure TfmOverlayEdit.GbrPolygon;
var
  I, countOfListview  : Integer;
//  DynamicOver         : TDynamicOverPolygon;
//  DynamicOverParent   : TT3Vehicle;
  Baris               : Integer;
  recordDynamic       : TRecCmd_OverlayDynamicShape;
begin

    if ODynamic then
    begin
      if simMgrClient.ISInstructor then
        recordDynamic.Cubicle := 0
      else
        recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

      countOfListview := lvPolyVertexD.Items.Count;

      recordDynamic.ShapeID   := 5;
      recordDynamic.TemplateName:= nameOverlay;
      recordDynamic.NoTrack   := StrToInt(NoTrack.Text);
      recordDynamic.SenderID  := StrToInt(Track.Text);
      recordDynamic.Bearing   := Bearing.Text;
      recordDynamic.Color     := clrbxColor.Selected;
      recordDynamic.Rotasi    := StrToInt(Angle.Text);
      recordDynamic.Baris     := countOfListview;

      for Baris := 0 to countOfListview - 1 do
      begin
        recordDynamic.Vertex[Baris,0] := StrToFloat(lvPolyVertexD.Items.Item[Baris].Caption);
        recordDynamic.Vertex[Baris,1] := StrToFloat(lvPolyVertexD.Items.Item[Baris].SubItems[0]);
        recordDynamic.Vertex[Baris,2] := StrToFloat(lvPolyVertexD.Items.Item[Baris].SubItems[1]);
      end;

      recordDynamic.NoList    := Nolist;
      simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
      OCancel                 := 5;
      drawPolygon             := False;
    end
    else
    begin
      OPolygon := TOPolygon.Create;
      countOfListview := lvPolyVertex.Items.Count;
      SetLength(OPolygon.polyMap, countOfListview);           //set point long/lat
      for I := 0 to High(OPolygon.polyMap) do
      begin
        OPolygon.polyMap[I].Longitude := mapVertex[I].Longitude;
        OPolygon.polyMap[I].Latitude  := mapVertex[I].Latitude;
      end;

      OPolygon.tempLengthArray := countOfListview;
      OPolygon.color           := clrbxColor.Selected;
      OPolygon.isSelected      := false;
      OPolygon.isList          := true;
      simMgrClient.DrawOverlayTemplate.AddPolygon(OPolygon);
    end;
end;

procedure TfmOverlayEdit.applyText;
var
  sPos           : TMapPt;
  word           : String;
  Size, col      : Integer;
begin
  sPos.Longitude      := dmToLongitude(edtTextPosLong.Text);
  sPos.Latitude       := dmToLatitude(edtTextPosLAt.Text);
  word                := edtTextField.Text;
  col                 := clrbxColor.Selected;

  if      cbbTextSize.Text = 'Small'   then Size := 10
  else if cbbTextSize.Text = 'Medium'  then Size := 15
  else if cbbTextSize.Text = 'Large'   then Size := 20
  else    Size := 10;

  simMgrClient.DrawOverlayTemplate.editText(sPos, word, Size, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyLine;
var
  sPos, ePos   : TMapPt;
  col          : Integer;
begin
  sPos.Longitude      := dmToLongitude(edtLineStartPosLong.Text);
  sPos.Latitude       := dmToLatitude(edtLineStartPosLat.Text);
  ePos.Longitude      := dmToLongitude(edtLineEndPosLong.Text);
  ePos.Latitude       := dmToLatitude(edtLineEndPosLat.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editLine(sPos, ePos, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream (vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyRect;
var
  sPos, ePos   : TMapPt;
  col          : Integer;
begin
  sPos.Longitude      := dmToLongitude(edtRectStartPosLong.Text);
  sPos.Latitude       := dmToLatitude(edtRectStartPosLat.Text);
  ePos.Longitude      := dmToLongitude(edtRectEndPosLong.Text);
  ePos.Latitude       := dmToLatitude(edtRectEndPosLat.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editRect(sPos, ePos, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream (vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyCircle;
var
  sPos        : TMapPt;
  col, r      : Integer;
begin
  sPos.Longitude   := dmToLongitude(edtCirclePosLong.Text);
  sPos.Latitude    := dmToLatitude(edtCirclePosLat.Text);
  r                := StrToInt(edtCircleRadius.Text);
  col              := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editCircle(sPos, r, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyEllipse;
var
  cPos        : TMapPt;
  col,
  major,minor : Integer;
begin
  cPos.Longitude      := dmToLongitude(edtEllipsePosLong.Text);
  cPos.Latitude       := dmToLatitude(edtEllipsePosLat.Text);
  major               := StrToInt(edtHorizontal.Text);
  minor               := StrToInt(edtVertical.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editEllipse(cPos, major, minor, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyArc;
var
  cPos        : TMapPt;
  col, r,
  sAngl,eAngl : Integer;
begin
  cPos.Longitude      := dmToLongitude(edtArcPosLong.Text);
  cPos.Latitude       := dmToLatitude(edtArcPosLat.Text);
  sAngl               := strtoint(edtArcStartAngle.Text);
  eAngl               := strtoint(edtArcEndAngle.Text);
  r                   := strtoint(edtArcRadius.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editArc(cPos, sAngl, eAngl, r, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applySector;
var
  cPos        : TMapPt;
  col,
  rin, rout,
  sAngl,eAngl : Integer;
begin
  cPos.Longitude      := dmToLongitude(edtSectorPosLong.Text);
  cPos.Latitude       := dmToLatitude(edtSectorPosLat.Text);
  sAngl               := strtoint(edtSectorStartAngle.Text);
  eAngl               := strtoint(edtSectorEndAngle.Text);
  rin                 := strtoint(edtSectorInner.Text);
  rout                := strtoint(edtSectorOuter.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editSector(cPos, sAngl, eAngl, rin, rout, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyTable;
var
  cPos          : TMapPt;
  col, angl,
  Colom, Row    : Integer;
  Width, Height : Double;
begin
  cPos.Longitude      := dmToLongitude(edtTablePosLong.Text);
  cPos.Latitude       := dmToLatitude(edtTablePosLat.Text);
  Width               := StrToFloat(edtTableWidth.Text);
  Height              := StrToFloat(edtTableHeight.Text);
  Colom               := strtoint(edtTableColumn.Text);
  Row                 := strtoint(edtTableRow.Text);
  angl                := strtoint(edtTableRotationAngle.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editTable(cPos, Width, Height, Colom, Row, angl, col);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;

procedure TfmOverlayEdit.applyPolygon;
var
  sPos  : TMapPt;
  col   : Integer;
begin
  sPos.Longitude      := dmToLongitude (edtPolyPosLong.Text);
  sPos.Latitude       := dmToLatitude  (edtPolyPosLat.Text);
  col                 := clrbxColor.Selected;

  simMgrClient.DrawOverlayTemplate.editPolygon(sPos, col, indexSelected);
  simMgrClient.DrawOverlayTemplate.EditRecordToFileStream(vMapSetting.OverlayPath + '\' + nameOverlay + '.dat');
end;


procedure TfmOverlayEdit.hit(pos: TPoint);
var
  Parent   : TT3Vehicle;
  Sender   : TT3PlatformInstance;
  item     : TDynamicOverlay;
  a, b, c,
  i, r1, r2,
  tdx, tdy : Integer;
  dx, dy,
  distance : double;

  PosX, PosY,
  RelatifHeading,
  RelatifHeading1, RelatifHeading2,
  RelatifHeading3, RelatifHeading4  : Double;

  RelatifHeadingRec1, RelatifLengthRec1,
  RelatifHeadingRec2, RelatifLengthRec2,
  RelatifHeadingRec3, RelatifLengthRec3,
  RelatifHeadingRec4, RelatifLengthRec4  : Double;

  RecCenter,
  RecPoint1, RecPoint2,
  RecPoint3, RecPoint4,
  RowPoint1, RowPoint2,
  RowPoint3, RowPoint4,
  ColPoint1, ColPoint2,
  ColPoint3, ColPoint4 : t2DPoint;

  tRecCenter,
  tRecPoint1,tRecPoint2,
  tRecPoint3,tRecPoint4 : tPoint;

  Rect1, Rect2,
  Rect3, Rect4 : TRect;

  cek1         : Integer;
  cek2         : string;

  Poly         : Array of tPoint;

  li           : TListItem;

begin
  cek1       := StrToInt(NoTrack.Text);
  cek2       := NmTemplate.Text;
  Sender     := simMgrClient.FindT3PlatformByID(StrToInt(Track.Text));
  Parent     := TT3Vehicle(Sender);

  for I := 0 to TT3Vehicle(Sender).ListDynamicOverlay.Count - 1 do
  begin
    item := TT3Vehicle(Sender).ListDynamicOverlay[I];
    if item is TDynamicOverText then
    begin
      with TDynamicOverText(item)do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        if Bearing = 'R' then
          RelatifHeading := ValidateDegree(Parent.Heading + BearingAsli1)
        else
          RelatifHeading := ValidateDegree(BearingAsli1);

        RangeBearingToCoord(RangeAsli1, RelatifHeading, PosX, PosY);
        RecPoint1.X := PosX + Parent.PosX;
        RecPoint1.Y := PosY + Parent.PosY;

        simMgrClient.Converter.ConvertToScreen(RecPoint1.X, RecPoint1.Y, tRecPoint1.X, tRecPoint1.Y);

        Rect1 := FFormula.checkText(tRecPoint1.X, tRecPoint1.y, OText.Size, OText.words);

        if ((pos.X >= Rect1.Left) and (pos.X <= Rect1.Right)) and ((pos.Y >= Rect1.Top) and (pos.Y <= Rect1.Bottom)) then
        begin
          edtTextRange.Text     := FloatToStr(RangeAsli1);
          edtTextBearing.Text   := FloatToStr(BearingAsli1);
          edtTextFieldD.Text    := word;
          clrbxColor.Selected   := Color;
          Nolist                := i;
          isSelected            := true;
          drawTextEdit          := True;
          ODynamic              := True;

          if Size = 10 then cbbTextSizeD.Text := 'Small';
          if Size = 15 then cbbTextSizeD.Text := 'Medium';
          if Size = 20 then cbbTextSizeD.Text := 'Large';

          {Buffer seandainya g jd diedit/ cancel}
          OBuffer.ShapeID       := 9;
          OBuffer.Range1        := RangeAsli1;
          OBuffer.Bearing1      := BearingAsli1;
          OBuffer.Words          := word;
          OBuffer.color         := Color;
          OBuffer.NoList        := i;
          OBuffer.Size          := Size;
          {---}

          grpTextDynamic.BringToFront;
          enableApplyButton(True);
          actifButton(0);
          break;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverLine then
    begin
      with TDynamicOverLine(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        if Bearing = 'R' then
        begin
          RelatifHeading1 := ValidateDegree(Parent.Heading + BearingStart);
          RelatifHeading2 := ValidateDegree(Parent.Heading + BearingEnd);
        end
        else
        begin
          RelatifHeading1 := ValidateDegree(BearingStart);
          RelatifHeading2 := ValidateDegree(BearingEnd);
        end;

        //Point 1
        RangeBearingToCoord(RangeStart, RelatifHeading1, PosX, PosY);
        RecPoint1.X := PosX + Parent.PosX;
        RecPoint1.Y := PosY + Parent.PosY;

        //Point 2
        RangeBearingToCoord(RangeEnd, RelatifHeading2, PosX, PosY);
        RecPoint2.X := PosX + Parent.PosX;
        RecPoint2.Y := PosY + Parent.PosY;

        Converter.ConvertToScreen(RecPoint1.X, RecPoint1.Y, tRecPoint1.X, tRecPoint1.Y);
        Converter.ConvertToScreen(RecPoint2.X, RecPoint2.Y, tRecPoint2.X, tRecPoint2.Y);

        RecPoint1.X  := tRecPoint1.X;
        RecPoint1.Y  := tRecPoint1.Y;
        RecPoint2.X  := tRecPoint2.X;
        RecPoint2.Y  := tRecPoint2.Y;
        RecCenter.X  := pos.X;
        RecCenter.Y  := pos.Y;
        distance     := ptToLineDistance(RecPoint1,RecPoint2,RecCenter);

        if distance < 3 then
        begin
          edtLineStartRange.Text    := FloatToStr(RangeAsli1);
          edtLineStartBearing.Text  := FloatToStr(BearingAsli1);
          edtLineEndRange.Text      := FloatToStr(RangeAsli2);
          edtLineEndBearing.Text    := FloatToStr(BearingAsli2);
          clrbxColor.Selected       := Color;
          Nolist                    := i;
          isSelected                := True;
          drawLine                  := True;
          ODynamic                  := True;

          {Buffer seandainya g jd diedit/ cancel}
          OBuffer.ShapeID       := 1;
          OBuffer.Range1        := RangeAsli1;
          OBuffer.Range2        := RangeAsli2;
          OBuffer.Bearing1      := BearingAsli1;
          OBuffer.Bearing2      := BearingAsli2;
          OBuffer.color         := Color;
          OBuffer.NoList        := i;
          {---}

          grpLineDynamic.BringToFront;
          enableApplyButton(True);
          actifButton(0);
          break;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverRectangle then
    begin
      with TDynamicOverRectangle(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        //Point 1
        if Bearing = 'R' then
          RelatifHeading1 := ValidateDegree(Parent.Heading + BearingKiriAtas)
        else
          RelatifHeading1 := ValidateDegree(BearingKiriAtas);
        RangeBearingToCoord(RangeKiriAtas, RelatifHeading1, PosX, PosY);
        RecPoint1.X := PosX + Parent.PosX;
        RecPoint1.Y := PosY + Parent.PosY;

        //Point 2
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + BearingKananAtas)
        else
          RelatifHeading2 := ValidateDegree(BearingKananAtas);
        RangeBearingToCoord(RangeKananAtas, RelatifHeading2, PosX, PosY);
        RecPoint2.X := PosX + Parent.PosX;
        RecPoint2.Y := PosY + Parent.PosY;

        //Point 3
        if Bearing = 'R' then
          RelatifHeading3 := ValidateDegree(Parent.Heading + BearingKiriBawah)
        else
          RelatifHeading3 := ValidateDegree(BearingKiriBawah);
        RangeBearingToCoord(RangeKiriBawah, RelatifHeading3, PosX, PosY);
        RecPoint3.X := PosX + Parent.PosX;
        RecPoint3.Y := PosY + Parent.PosY;

        //Point 4
        if Bearing = 'R' then
          RelatifHeading4 := ValidateDegree(Parent.Heading + BearingKananBawah)
        else
          RelatifHeading4 := ValidateDegree(BearingKananBawah);
        RangeBearingToCoord(RangeKananBawah, RelatifHeading4, PosX, PosY);
        RecPoint4.X := PosX + Parent.PosX;
        RecPoint4.Y := PosY + Parent.PosY;

        Converter.ConvertToScreen(RecPoint1.X, RecPoint1.Y, tRecPoint1.X, tRecPoint1.Y);
        Converter.ConvertToScreen(RecPoint2.X, RecPoint2.Y, tRecPoint2.X, tRecPoint2.Y);
        Converter.ConvertToScreen(RecPoint3.X, RecPoint3.Y, tRecPoint3.X, tRecPoint3.Y);
        Converter.ConvertToScreen(RecPoint4.X, RecPoint4.Y, tRecPoint4.X, tRecPoint4.Y);

        Rect1  := FFormula.assignRect(tRecPoint1.X, tRecPoint1.Y);
        Rect2  := FFormula.assignRect(tRecPoint2.X, tRecPoint2.Y);
        Rect3  := FFormula.assignRect(tRecPoint3.X, tRecPoint3.Y);
        Rect4  := FFormula.assignRect(tRecPoint4.X, tRecPoint4.Y);

        if ((pos.X >= rect1.Left) AND (pos.X <= rect1.Right)) OR ((pos.X >= rect2.Left) AND (pos.X <= rect2.Right))
             OR ((pos.X >= rect3.Left) AND (pos.X <= rect3.Right)) OR ((pos.X >= rect4.Left) AND (pos.X <= rect4.Right)) then
        begin
          if ((pos.Y >= rect1.Top) AND (pos.Y <= rect1.Bottom)) OR ((pos.Y >= rect2.Top) AND (pos.Y <= rect2.Bottom))
              OR ((pos.Y >= rect3.Top) AND (pos.Y <= rect3.Bottom)) OR ((pos.Y >= rect4.Top) AND (pos.Y <= rect4.Bottom)) then
          begin
            edtRecStartRange.Text   := FloatToStr(RangeAsli1);
            edtRecStartBearing.Text := FloatToStr(BearingAsli1);
            edtRecEndRange.Text     := FloatToStr(RangeAsli2);
            edtRecEndBearing.Text   := FloatToStr(BearingAsli2);
            clrbxColor.Selected     := color;
            Nolist                  := i;
            isSelected              := True;
            drawRect                := True;
            ODynamic                := True;

            {Buffer seandainya g jd diedit/ cancel}
            OBuffer.ShapeID       := 4;
            OBuffer.Range1        := RangeAsli1;
            OBuffer.Range2        := RangeAsli2;
            OBuffer.Bearing1      := BearingAsli1;
            OBuffer.Bearing2      := BearingAsli2;
            OBuffer.color         := Color;
            OBuffer.NoList        := i;
            {---}

            grpRectangleDynamic.BringToFront;
            enableApplyButton(True);
            actifButton(0);
            break;
          end;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverCircle then
    begin
      with TDynamicOverCircle(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        if Bearing = 'R' then
          RelatifHeading := ValidateDegree(Parent.Heading + BearingAsli1)
        else
          RelatifHeading := ValidateDegree(BearingAsli1);
        RangeBearingToCoord(RangeAsli1, RelatifHeading, PosX, PosY);
        RecCenter.X := PosX + Parent.PosX;
        RecCenter.Y := PosY + Parent.PosY;

        dX := RecCenter.X + CircleRadius/60;
        dY := RecCenter.Y;

        Converter.ConvertToScreen(RecCenter.X, RecCenter.Y, tRecPoint1.X, tRecPoint1.Y);
        Converter.ConvertToScreen(dX, dY, tdX, tdY);

        r1 := Abs(tdX - tRecPoint1.X);

        Rect1.Top     := tRecPoint1.Y - r1;
        Rect1.Left    := tRecPoint1.X - r1;
        Rect1.Bottom  := tRecPoint1.Y + r1;
        Rect1.Right   := tRecPoint1.X + r1;

        Rect2 := FFormula.checkXYPosition(Rect1.Left, Rect1.Top, Rect1.Right, Rect1.Bottom);
        if ((pos.X >= Rect2.Left) and (pos.X <= Rect2.Right)) and ((pos.Y >= Rect2.Top) and (pos.Y <= Rect2.Bottom)) then
        begin
          edtCircleRange.Text   := FloatToStr(RangeAsli1);
          edtCircleBearing.Text := FloatToStr(BearingAsli1);
          edtCircleRadiusD.Text := FloatToStr(CircleRadius);
          clrbxColor.Selected   := color;
          Nolist                := i;
          isSelected            := True;
          drawCircle            := True;
          ODynamic              := True;

          {Buffer seandainya g jd diedit/ cancel}
          OBuffer.ShapeID       := 6;
          OBuffer.Range1        := RangeAsli1;
          OBuffer.Bearing1      := BearingAsli1;
          OBuffer.Radius1       := CircleRadius;
          OBuffer.color         := Color;
          OBuffer.NoList        := i;
          {---}

          grpCircleDynamic.BringToFront;
          enableApplyButton(True);
          actifButton(0);
          break;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;

    end;

    if item is TDynamicOverEllipse then
    begin
      with TDynamicOverEllipse(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        if Bearing = 'R' then
          RelatifHeading := ValidateDegree(Parent.Heading + BearingAsli1)
        else
          RelatifHeading := ValidateDegree(BearingAsli1);

        RangeBearingToCoord(RangeAsli1, RelatifHeading, PosX, PosY);
        RecCenter.X := PosX + Parent.PosX;
        RecCenter.Y := PosY + Parent.PosY;

        dX := RecCenter.X + (Horizontal/2)/60;
        dY := RecCenter.Y + (Vertical/2)/60;

        simMgrClient.Converter.ConvertToScreen(RecCenter.X, RecCenter.Y, tRecCenter.X, tRecCenter.Y);
        simMgrClient.Converter.ConvertToScreen(dX, dY, tdX, tdY);

        r1 := Abs(tdX - tRecCenter.X);
        r2 := Abs(tdY - tRecCenter.Y);

        Rect1.Top     := tRecCenter.Y - r2;
        Rect1.Left    := tRecCenter.X - r1;
        Rect1.Bottom  := tRecCenter.Y + r2;
        Rect1.Right   := tRecCenter.X + r1;

        Rect2 := FFormula.checkXYPosition(Rect1.Left, Rect1.Top, Rect1.Right, Rect1.Bottom);
        if ((pos.X >= Rect2.Left) and (pos.X <= Rect2.Right)) and ((pos.Y >= Rect2.Top) and (pos.Y <= Rect2.Bottom)) then
        begin
          edtEllipseRange.Text        := FloatToStr(RangeAsli1);
          edtEllipseBearing.Text      := FloatToStr(BearingAsli1);
          edtEllipseHorizontalD.Text  := FloatToStr(Horizontal);
          edtEllipseVerticalD.Text    := FloatToStr(Vertical);
          clrbxColor.Selected         := color;
          Nolist                      := i;
          isSelected                  := True;
          drawEllipse                 := True;
          ODynamic                    := True;

          {Buffer seandainya g jd diedit/ cancel}
          OBuffer.ShapeID       := 7;
          OBuffer.Range1        := RangeAsli1;
          OBuffer.Bearing1      := BearingAsli1;
          OBuffer.Radius1       := Horizontal;
          OBuffer.Radius2       := Vertical;
          OBuffer.color         := Color;
          OBuffer.NoList        := i;
          {---}

          grpEllipseDynamic.BringToFront;
          enableApplyButton(True);
          actifButton(0);
          break;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverArc then
    begin
      with TDynamicOverArc(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        //Center
        if Bearing = 'R' then
          RelatifHeading := ValidateDegree(Parent.Heading + BearingAsli1)
        else
          RelatifHeading := ValidateDegree(BearingAsli1);

        RangeBearingToCoord(RangeAsli1, RelatifHeading, PosX, PosY);
        RecCenter.X := PosX + Parent.PosX;
        RecCenter.Y := PosY + Parent.PosY;

        //Point 1
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + sArcAngle)
        else
          RelatifHeading2 := ValidateDegree(sArcAngle);

        RangeBearingToCoord(ArcRadius, RelatifHeading2, PosX, PosY);
        RecPoint1.X := PosX + RecCenter.X;
        RecPoint1.Y := PosY + RecCenter.Y;

        //Point 2
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + eArcAngle)
        else
          RelatifHeading2 := ValidateDegree(eArcAngle);

        RangeBearingToCoord(ArcRadius, RelatifHeading2, PosX, PosY);
        RecPoint2.X := PosX + RecCenter.X;
        RecPoint2.Y := PosY + RecCenter.Y;

        Converter.ConvertToScreen(RecCenter.X, RecCenter.Y, tRecCenter.X, tRecCenter.Y);
        Converter.ConvertToScreen(RecPoint1.X, RecPoint1.Y, tRecPoint1.X, tRecPoint1.Y);
        Converter.ConvertToScreen(RecPoint2.X, RecPoint2.Y, tRecPoint2.X, tRecPoint2.Y);

        rect1 := FFormula.assignRect(tRecCenter.X, tRecCenter.Y);
        rect2 := FFormula.assignRect(tRecPoint1.X, tRecPoint1.Y);
        rect3 := FFormula.assignRect(tRecPoint2.X, tRecPoint2.Y);

        if ((pos.X >= rect1.Left) AND (pos.X <= rect1.Right)) OR ((pos.X >= rect2.Left) AND (pos.X <= rect2.Right)) OR
             ((pos.X >= rect3.Left) AND (pos.X <= rect3.Right)) then
        begin
          if ((pos.Y >= rect1.Top) AND (pos.Y <= rect1.Bottom)) OR ((pos.Y >= rect2.Top) AND (pos.Y <= rect2.Bottom)) OR
             ((pos.Y >= rect3.Top) AND (pos.Y <= rect3.Bottom)) then
          begin
            edtArcRange.Text        := FloatToStr(RangeAsli1);
            edtArcBearing.Text      := FloatToStr(BearingAsli1);
            edtArcRadiusD.Text      := FloatToStr(ArcRadius);
            edtArcStartAngleD.Text  := FloatToStr(sArcAngle);
            edtArcEndAngleD.Text    := FloatToStr(eArcAngle);
            clrbxColor.Selected     := color;
            Nolist                  := i;
            isSelected              := True;
            drawArc                 := True;
            ODynamic                := True;

            {Buffer seandainya g jd diedit/ cancel}
            OBuffer.ShapeID       := 2;
            OBuffer.Range1        := RangeAsli1;
            OBuffer.Bearing1      := BearingAsli1;
            OBuffer.Radius1       := ArcRadius;
            OBuffer.StartAngle    := sArcAngle;
            OBuffer.EndAngle      := eArcAngle;
            OBuffer.color         := Color;
            OBuffer.NoList        := i;
            {---}

            grpArcDynamic.BringToFront;
            enableApplyButton(True);
            actifButton(0);
            break;
          end;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverSector then
    begin
      with TDynamicOverSector(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        //Point 1
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + sSecAngle)
        else
          RelatifHeading2 := ValidateDegree(sSecAngle);
        RangeBearingToCoord(SecRadiusIn, RelatifHeading2, PosX, PosY);
        RecPoint1.X := PosX + RecCenter.X;
        RecPoint1.Y := PosY + RecCenter.Y;

        //Point 2
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + eSecAngle)
        else
          RelatifHeading2 := ValidateDegree(eSecAngle);
        RangeBearingToCoord(SecRadiusIn, RelatifHeading2, PosX, PosY);
        RecPoint2.X := PosX + RecCenter.X;
        RecPoint2.Y := PosY + RecCenter.Y;

        //Point 3
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + sSecAngle)
        else
          RelatifHeading2 := ValidateDegree(sSecAngle);
        RangeBearingToCoord(SecRadiusOut, RelatifHeading2, PosX, PosY);
        RecPoint3.X := PosX + RecCenter.X;
        RecPoint3.Y := PosY + RecCenter.Y;

        //Point 4
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + eSecAngle)
        else
          RelatifHeading2 := ValidateDegree(eSecAngle);
        RangeBearingToCoord(SecRadiusOut, RelatifHeading2, PosX, PosY);
        RecPoint4.X := PosX + RecCenter.X;
        RecPoint4.Y := PosY + RecCenter.Y;

        Converter.ConvertToScreen(RecPoint1.X, RecPoint1.Y, tRecPoint1.X, tRecPoint1.Y);
        Converter.ConvertToScreen(RecPoint2.X, RecPoint2.Y, tRecPoint2.X, tRecPoint2.Y);
        Converter.ConvertToScreen(RecPoint3.X, RecPoint3.Y, tRecPoint3.X, tRecPoint3.Y);
        Converter.ConvertToScreen(RecPoint4.X, RecPoint4.Y, tRecPoint4.X, tRecPoint4.Y);

        rect1 := FFormula.assignRect(tRecPoint1.X, tRecPoint1.Y);
        rect2 := FFormula.assignRect(tRecPoint2.X, tRecPoint2.Y);
        rect3 := FFormula.assignRect(tRecPoint3.X, tRecPoint3.Y);
        rect4 := FFormula.assignRect(tRecPoint4.X, tRecPoint4.Y);

        if ((pos.X >= rect1.Left) AND (pos.X <= rect1.Right)) OR ((pos.X >= rect2.Left) AND (pos.X <= rect2.Right)) OR
            ((pos.X >= rect3.Left) AND (pos.X <= rect3.Right)) OR ((pos.X >= rect4.Left) AND (pos.X <= rect4.Right)) then
        begin
          if ((pos.Y >= rect1.Top) AND (pos.Y <= rect1.Bottom)) OR ((pos.Y >= rect2.Top) AND (pos.Y <= rect2.Bottom)) OR
             ((pos.Y >= rect3.Top) AND (pos.Y <= rect3.Bottom)) OR ((pos.Y >= rect4.Top) AND (pos.Y <= rect4.Bottom)) then
          begin
            edtSectorRange.Text       := FloatToStr(RangeAsli1);
            edtSectorBearing.Text     := FloatToStr(BearingAsli1);
            edtSectorInnerD.Text      := FloatToStr(SecRadiusIn);
            edtSectorOuterD.Text      := FloatToStr(SecRadiusOut);
            edtSectorStartAngleD.Text := FloatToStr(sSecAngle);
            edtSectorEndAngleD.Text   := FloatToStr(eSecAngle);
            clrbxColor.Selected       := color;
            Nolist                    := i;
            isSelected                := True;
            drawSector                := True;
            ODynamic                  := True;

            {Buffer seandainya g jd diedit/ cancel}
            OBuffer.ShapeID       := 8;
            OBuffer.Range1        := RangeAsli1;
            OBuffer.Bearing1      := BearingAsli1;
            OBuffer.Radius1       := SecRadiusIn;
            OBuffer.Radius2       := SecRadiusOut;
            OBuffer.StartAngle    := sSecAngle;
            OBuffer.EndAngle      := eSecAngle;
            OBuffer.color         := Color;
            OBuffer.NoList        := i;
            {---}

            grpSectorDynamic.BringToFront;
            enableApplyButton(True);
            actifButton(0);
            break;
          end;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverTable then
    begin
      with TDynamicOverTable(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        //Point 1
        if Bearing = 'R' then
          RelatifHeading1 := ValidateDegree(Parent.Heading + BearingKiriAtas)
        else
          RelatifHeading1 := ValidateDegree(BearingKiriAtas);
        RangeBearingToCoord(RangeKiriAtas, RelatifHeading1, PosX, PosY);
        RowPoint1.X := PosX + Parent.PosX;
        RowPoint1.Y := PosY + Parent.PosY;

        //Point 2
        if Bearing = 'R' then
          RelatifHeading2 := ValidateDegree(Parent.Heading + BearingKananAtas)
        else
          RelatifHeading2 := ValidateDegree(BearingKananAtas);
        RangeBearingToCoord(RangeKananAtas, RelatifHeading2, PosX, PosY);
        RowPoint2.X := PosX + Parent.PosX;
        RowPoint2.Y := PosY + Parent.PosY;

        //Point 3
        if Bearing = 'R' then
          RelatifHeading3 := ValidateDegree(Parent.Heading + BearingKiriBawah)
        else
          RelatifHeading3 := ValidateDegree(BearingKiriBawah);
        RangeBearingToCoord(RangeKiriBawah, RelatifHeading3, PosX, PosY);
        RowPoint3.X := PosX + Parent.PosX;
        RowPoint3.Y := PosY + Parent.PosY;

        //Point 4
        if Bearing = 'R' then
          RelatifHeading4 := ValidateDegree(Parent.Heading + BearingKananBawah)
        else
          RelatifHeading4 := ValidateDegree(BearingKananBawah);
        RangeBearingToCoord(RangeKananBawah, RelatifHeading4, PosX, PosY);
        RowPoint4.X := PosX + Parent.PosX;
        RowPoint4.Y := PosY + Parent.PosY;

        Converter.ConvertToScreen(RowPoint1.X, RowPoint1.Y, tRecPoint1.X, tRecPoint1.Y);
        Converter.ConvertToScreen(RowPoint2.X, RowPoint2.Y, tRecPoint2.X, tRecPoint2.Y);
        Converter.ConvertToScreen(RowPoint3.X, RowPoint3.Y, tRecPoint3.X, tRecPoint3.Y);
        Converter.ConvertToScreen(RowPoint4.X, RowPoint4.Y, tRecPoint4.X, tRecPoint4.Y);

        rect1 := FFormula.assignRect(tRecPoint1.X, tRecPoint1.Y);
        rect2 := FFormula.assignRect(tRecPoint2.X, tRecPoint2.Y);
        rect3 := FFormula.assignRect(tRecPoint3.X, tRecPoint3.Y);
        rect4 := FFormula.assignRect(tRecPoint4.X, tRecPoint4.Y);

        if ((pos.X >= rect1.Left) AND (pos.X <= rect1.Right)) OR ((pos.X >= rect2.Left) AND (pos.X <= rect2.Right)) OR
           ((pos.X >= rect3.Left) AND (pos.X <= rect3.Right)) OR ((pos.X >= rect4.Left) AND (pos.X <= rect4.Right)) then
        begin
          if ((pos.Y >= rect1.Top) AND (pos.Y <= rect1.Bottom)) OR ((pos.Y >= rect2.Top) AND (pos.Y <= rect2.Bottom)) OR
             ((pos.Y >= rect3.Top) AND (pos.Y <= rect3.Bottom)) OR ((pos.Y >= rect4.Top) AND (pos.Y <= rect4.Bottom)) then
          begin
            edtTableRange.Text        := FloatToStr(RangeAsli1);
            edtTableBearing.Text      := FloatToStr(BearingAsli1);
            edtTableColumnD.Text      := FloatToStr(column);
            edtTableRowD.Text         := FloatToStr(row);
            edtTableHeightD.Text      := FloatToStr(cellHeight);
            edtTableWidthD.Text       := FloatToStr(cellWidth);
            edtRotationAngleD.Text    := FloatToStr(Rotasi);
            clrbxColor.Selected       := color;
            Nolist                    := i;
            isSelected                := True;
            drawTable                 := True;
            ODynamic                  := True;

            {Buffer seandainya g jd diedit/ cancel}
            OBuffer.ShapeID       := 3;
            OBuffer.Range1        := RangeAsli1;
            OBuffer.Bearing1      := BearingAsli1;
            OBuffer.Kolom         := column;
            OBuffer.Baris         := row;
            OBuffer.Radius1       := cellHeight;
            OBuffer.Radius2       := cellWidth;
            OBuffer.Rotasi        := Rotasi;
            OBuffer.color         := Color;
            OBuffer.NoList        := i;
            {---}

            grpGridDynamic.BringToFront;
            enableApplyButton(True);
            actifButton(0);
            break;
          end;
        end
        else
        begin
          grpNormal.BringToFront;
          enableApplyButton(False);
        end;
      end;
    end;

    if item is TDynamicOverPolygon then
    begin
      with TDynamicOverPolygon(item) do
      begin
        if (NoTrack <> cek1) or (NameTemplt <> cek2)then
          Continue;

        SetLength(Poly, Count);

        for a := 0 to Count - 1 do
        begin
          if Bearing = 'R' then
            RelatifHeadingStart := ValidateDegree(Parent.Heading + Vertex[a,2])
          else
            RelatifHeadingStart := ValidateDegree(Vertex[a,2]);

          RangeBearingToCoord(Vertex[a,1], RelatifHeadingStart, PosX, PosY);
          RecPoint1.X := PosX + Parent.PosX;
          RecPoint1.Y := PosY + Parent.PosY;

          simMgrClient.Converter.ConvertToScreen(RecPoint1.X, RecPoint1.Y, Poly[a].X, Poly[a].Y);
        end;

        for b := 0 to Count - 1 do
        begin
           Rect1 := FFormula.assignRect(Poly[b].X, Poly[b].Y);
           if ((pos.X >= Rect1.Left) AND (pos.X <= Rect1.Right)) then
           begin
             if ((pos.Y >= Rect1.Top) AND (pos.Y <= Rect1.Bottom)) then
             begin
                lvPolyVertexD.Clear;
                for c := 0 to Count - 1 do
                begin
                  li          := lvPolyVertexD.Items.Add;
                  li.Caption  := FloatToStr(Vertex[c,0]);
                  li.SubItems.Add(FloatToStr(Vertex[c,1]));
                  li.SubItems.Add(FloatToStr(Vertex[c,2]));
                  OBuffer.Vertex[c,0] := Vertex[c,0];
                  OBuffer.Vertex[c,1] := Vertex[c,1];
                  OBuffer.Vertex[c,2] := Vertex[c,2];
                end;

                edtPolRange.Text    := FloatToStr(Vertex[b,1]);
                edtPolBearing.Text  := FloatToStr(Vertex[b,2]);
                clrbxColor.Selected := Color;
                Nolist              := i;
                isSelected          := True;
                drawPolygon         := True;
                ODynamic            := True;

                {Buffer seandainya g jd diedit/ cancel}
                OBuffer.ShapeID       := 5;
                OBuffer.color         := Color;
                OBuffer.Baris         := Count;
                OBuffer.NoList        := i;
                {---}

                grpPolygonDynamic.BringToFront;
                enableApplyButton(True);
                actifButton(0);
                Exit;
             end;
           end
           else
           begin
              grpNormal.BringToFront;
              enableApplyButton(False);
           end;
        end;

      end;
    end;

    Nolist := -1;
  end;
end;

end.
