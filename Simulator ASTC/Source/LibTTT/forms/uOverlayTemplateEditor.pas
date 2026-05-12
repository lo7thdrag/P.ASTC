unit uOverlayTemplateEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, uDBEditSetting, uGameData_TTT, uDBAssetObject,
  Buttons, uMainOverlay, uMainStaticShape, uSimObjects, uT3DetectedTrack;

type
  TfmOverlayEditor = class(TForm)
    grpTemplate: TGroupBox;
    lvTemplates: TListView;
    btnNew: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCloseTemplate: TSpeedButton;
    pnlType: TPanel;
    grpStatic: TGroupBox;
    lb1: TLabel;
    lbDomain: TLabel;
    chkShow: TCheckBox;
    grpDynamic: TGroupBox;
    lvTrack: TListView;
    pnlCreateNew: TPanel;
    Label1: TLabel;
    Label65: TLabel;
    Label2: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    Bevel2: TBevel;
    edtNameOverlay: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    btnAttach: TSpeedButton;
    btnDetach: TSpeedButton;
    Bevel4: TBevel;
    Label4: TLabel;
    rbAir: TRadioButton;
    rbSurface: TRadioButton;
    rbSubsurface: TRadioButton;
    rbLand: TRadioButton;
    rbGeneral: TRadioButton;
    Label5: TLabel;
    Panel1: TPanel;
    Bevel5: TBevel;
    rbStatic: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    rbDynamic: TRadioButton;
    grpObjectEditor: TGroupBox;
    Bevel1: TBevel;
    Bevel6: TBevel;
    pnlColourOptions: TPanel;
    lblColour: TLabel;
    clrbxColor: TColorBox;
    pnlStatic: TPanel;
    btnObjectApply: TButton;
    btnObjectDelete: TButton;
    btnObjectCancel: TButton;
    lblShape: TLabel;
    btnSelect: TSpeedButton;
    btnText: TSpeedButton;
    btnLine: TSpeedButton;
    btnRectangle: TSpeedButton;
    btnCircle: TSpeedButton;
    btnEllipse: TSpeedButton;
    btnArc: TSpeedButton;
    btnSector: TSpeedButton;
    btnGrid: TSpeedButton;
    btnPolygon: TSpeedButton;
    grpRectangle: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    edtRectStartPosLat: TEdit;
    edtRectStartPosLong: TEdit;
    edtRectEndPosLat: TEdit;
    edtRectEndPosLong: TEdit;
    lblState: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    grpText: TGroupBox;
    lblTextPosition: TLabel;
    lblTextField: TLabel;
    lblTextSize: TLabel;
    SpeedButton: TSpeedButton;
    edtTextPosLat: TEdit;
    edtTextField: TEdit;
    edtTextPosLong: TEdit;
    cbbTextSize: TComboBox;
    grpGrid: TGroupBox;
    Label29: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    bvl2: TBevel;
    lbl13: TLabel;
    bvl3: TBevel;
    lbl14: TLabel;
    lbl15: TLabel;
    SpeedButton9: TSpeedButton;
    edtTablePosLat: TEdit;
    edtTablePosLong: TEdit;
    edtTableHeight: TEdit;
    edtTableWidth: TEdit;
    edtTableColumn: TEdit;
    edtTableRow: TEdit;
    edtTableRotationAngle: TEdit;
    grpLine: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    edtLineStartPosLat: TEdit;
    edtLineStartPosLong: TEdit;
    edtLineEndPosLat: TEdit;
    edtLineEndPosLong: TEdit;
    grpEllipse: TGroupBox;
    Label14: TLabel;
    lblHorizontal: TLabel;
    Label23: TLabel;
    lblVertical: TLabel;
    lbl6: TLabel;
    bvl1: TBevel;
    Label22: TLabel;
    SpeedButton6: TSpeedButton;
    edtEllipsePosLat: TEdit;
    edtEllipsePosLong: TEdit;
    edtHorizontal: TEdit;
    edtVertical: TEdit;
    grpPolygon: TGroupBox;
    Label13: TLabel;
    SpeedButton10: TSpeedButton;
    btnDeletePoly: TSpeedButton;
    edtPolyPosLat: TEdit;
    edtPolyPosLong: TEdit;
    lvPolyVertex: TListView;
    grpArc: TGroupBox;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    SpeedButton7: TSpeedButton;
    edtArcPosLat: TEdit;
    edtArcPosLong: TEdit;
    edtArcRadius: TEdit;
    edtArcStartAngle: TEdit;
    edtArcEndAngle: TEdit;
    grpSector: TGroupBox;
    lblSectorCenter: TLabel;
    lblSectorInner: TLabel;
    lblSectorOuter: TLabel;
    lblSectorStartAngle: TLabel;
    lblSectorEndAngle: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    bvlRadii: TBevel;
    bvlAngle: TBevel;
    lbl11: TLabel;
    lbl12: TLabel;
    SpeedButton8: TSpeedButton;
    edtSectorPosLat: TEdit;
    edtSectorInner: TEdit;
    edtSectorOuter: TEdit;
    edtSectorStartAngle: TEdit;
    edtSectorEndAngle: TEdit;
    edtSectorPosLong: TEdit;
    grpCircle: TGroupBox;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    SpeedButton5: TSpeedButton;
    edtCirclePosLong: TEdit;
    edtCircleRadius: TEdit;
    edtCirclePosLat: TEdit;
    grpNone: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel9: TBevel;
    btnObjectClose: TButton;
    pnlTrackSelection: TPanel;
    Label15: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    lb5: TLabel;
    lb6: TLabel;
    lb7: TLabel;
    btnTargetSearch: TSpeedButton;
    Bevel10: TBevel;
    Bevel11: TBevel;
    btnTrackSelectionCancel: TButton;
    edtTrack: TEdit;
    edtRange: TEdit;
    edtBearing: TEdit;
    edtRotation: TEdit;
    btnTrackSelectionOK: TButton;
    rbTrueOrientation: TRadioButton;
    rbRelativeOrientation: TRadioButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    pnlDynamic: TPanel;
    grpPolygonD: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    AddPolyD: TSpeedButton;
    btnDeletePolyD: TSpeedButton;
    edtPolygonRange: TEdit;
    edtPolygonBearing: TEdit;
    lvPolyVertexD: TListView;
    grpRectangleD: TGroupBox;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edtRecStartRange: TEdit;
    edtRecStartBearing: TEdit;
    edtRecEndRange: TEdit;
    edtRecEndBearing: TEdit;
    grpLineD: TGroupBox;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl85: TLabel;
    lbl23: TLabel;
    lbl25: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    edtLineStartRange: TEdit;
    edtLineStartBearing: TEdit;
    edtLineEndRange: TEdit;
    edtLineEndBearing: TEdit;
    grpGridD: TGroupBox;
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
    lbl81: TLabel;
    lbl82: TLabel;
    lbl83: TLabel;
    Label44: TLabel;
    Bevel12: TBevel;
    Label45: TLabel;
    edtTableRange: TEdit;
    edtTableBearing: TEdit;
    edtTableHeightD: TEdit;
    edtTableWidthD: TEdit;
    edtTableColumnD: TEdit;
    edtTableRowD: TEdit;
    edtRotationAngleD: TEdit;
    grpSectorD: TGroupBox;
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
    lbl63: TLabel;
    lbl89: TLabel;
    lbl90: TLabel;
    Label46: TLabel;
    edtSectorRange: TEdit;
    edtSectorInnerD: TEdit;
    edtSectorOuterD: TEdit;
    edtSectorStartAngleD: TEdit;
    edtSectorEndAngleD: TEdit;
    edtSectorBearing: TEdit;
    grpEllipseD: TGroupBox;
    lbl47: TLabel;
    lbl48: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    bvl4: TBevel;
    lbl49: TLabel;
    lbl79: TLabel;
    lbl80: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    edtEllipseRange: TEdit;
    edtEllipseBearing: TEdit;
    edtEllipseHorizontalD: TEdit;
    edtEllipseVerticalD: TEdit;
    grpTextD: TGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl91: TLabel;
    lbl93: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edtTextRange: TEdit;
    edtTextFieldD: TEdit;
    edtTextBearing: TEdit;
    cbbTextSizeD: TComboBox;
    grpCircleD: TGroupBox;
    Label52: TLabel;
    lbl1: TLabel;
    lblCentre: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    edtCircleRange: TEdit;
    edtCircleBearing: TEdit;
    edtCircleRadiusD: TEdit;
    grpArcD: TGroupBox;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    edtArcRange: TEdit;
    edtArcBearing: TEdit;
    edtArcRadiusD: TEdit;
    edtArcStartAngleD: TEdit;
    edtArcEndAngleD: TEdit;
    grpNoneD: TGroupBox;
    btnNone: TSpeedButton;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;

    procedure FormShow(Sender: TObject);

    procedure rbTipeHandle(Sender: TObject);
    procedure rbDomainHandle(Sender: TObject);

    procedure lvTemplatesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure lvTrackSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);

    procedure btnHandleTemplate(Sender: TObject);
    procedure btnHandleShape(Sender: TObject);
    procedure btnHandleShapePosition(Sender: TObject);
    procedure btnHandleObjectEditor(Sender: TObject);

    procedure btnAttachClick(Sender: TObject);
    procedure btnTargetSearchClick(Sender: TObject);
    procedure chkShowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDetachClick(Sender: TObject);
    procedure btnDeletePolyDClick(Sender: TObject);
    procedure AddPolyDClick(Sender: TObject);
    procedure btnDeletePolyClick(Sender: TObject);

    procedure OnKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    FTagTombolPosition : Integer;
    FTrackPlatform: TSimObject;

    procedure SetTrackPlatform(const Value: TSimObject);    { Private declarations }

  protected
    FControlled: TObject;

  public
    Action : Byte;
    Temporary : TList;
    TemporaryD : TList;
    IsEditObject : Boolean;

    TagObject : Integer;
    TipeOverlay : Integer;
    StateOverlay : Integer; {tipe overlay utk kebutuhan tampilan}
    DomainOverlay : Integer;
    IdSelectObject : Integer;
    IdSelectedTemplate : Integer;
    IdSelectedTrack: Integer;
    IdTrackInstanceIndex : Integer;

    NameSelectedTemplate : string;

    PostX, PostY : Double;

    recShapeStatic : TRecCmd_OverlayStaticShape;
    recShapeDynamic : TRecCmd_OverlayDynamicShape;

    procedure Apply;
    procedure Deleted;
    procedure Canceled;
    procedure AddTemplate;
    procedure AddTrackSelection;
    procedure EditTemplate;
    procedure SelectTemplate;
    procedure SelectShape(pos : TPoint);
    procedure DeleteTemplate;
    procedure FillEditText;
    procedure ClearEditText;
    procedure ClearFlagPoint;
    procedure RefreshLTemplate;
    procedure RefreshDynamicTrack;
    procedure RefreshLvPolyVertexList(i: Byte);
    procedure RefreshLDrawDynamic;

    procedure GbrText;
    procedure GbrLine;
    procedure GbrRectangle;
    procedure GbrCircle;
    procedure GbrEllipse;
    procedure GbrArc;
    procedure GbrSector;
    procedure GbrGrid;
    procedure GbrPolygon;
    procedure GbrFlagPoint(mx, my :Double);

    function FilterName(): Boolean;
    function CekInput(IdObject : Integer): Boolean;
    function GetInput(s : string): Boolean;

    property TrackPlatform: TSimObject read FTrackPlatform write  SetTrackPlatform;
  end;

var
  fmOverlayEditor: TfmOverlayEditor;

implementation

{$R *.dfm}
uses uSimMgr_Client, uDataModuleTTT, uDBScenario, uLibSettingTTT, tttData,
  ufTacticalDisplay, uMapXHandler, uT3Unit, uFormUtil, uBaseCoordSystem;

procedure TfmOverlayEditor.lvTemplatesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var
  li : TListItem;
begin
  if Selected then
  begin
    IdSelectedTemplate := (StrToInt(lvTemplates.Selected.Caption));

    li := lvTemplates.Items[IdSelectedTemplate-1];
    NameSelectedTemplate := li.SubItems[0];

    pnlType.Visible := True;
    pnlCreateNew.Visible := False;
    btnDelete.Enabled := True;

    SelectTemplate;
  end
  else
  begin
    pnlType.Visible := False;
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
  end;
end;

procedure TfmOverlayEditor.lvTrackSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if Selected then
  begin
    IdSelectedTrack := (StrToInt(lvTrack.Selected.Caption)-1);

    btnEdit.Enabled := True;
    btnAttach.Enabled := True;
    btnDetach.Enabled := True;
  end
  else
  begin
    btnEdit.Enabled := False;
    btnDetach.Enabled := False;
  end;

end;

procedure TfmOverlayEditor.OnKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;
end;

procedure TfmOverlayEditor.rbDomainHandle(Sender: TObject);
begin
  if rbAir.Checked then
    DomainOverlay := vhdAir
  else if rbSurface.Checked then
    DomainOverlay := vhdSurface
  else if rbSubsurface.Checked then
    DomainOverlay := vhdSubsurface
  else if rbLand.Checked then
    DomainOverlay := vhdLand
  else if rbGeneral.Checked then
    DomainOverlay := vhdGeneral;
end;

procedure TfmOverlayEditor.rbTipeHandle(Sender: TObject);
var
  value : Boolean;

begin
  value := False;
  TipeOverlay := osDynamic;

  if rbStatic.Checked then
  begin
    TipeOverlay := osStatic;
    value := True;
  end;

  rbAir.Enabled        := value;
  rbSurface.Enabled    := value;
  rbSubsurface.Enabled := value;
  rbLand.Enabled       := value;
  rbGeneral.Enabled    := value;
end;

procedure TfmOverlayEditor.RefreshDynamicTrack;
var
  i, j, k : Integer;
  objectTrackSelection : TMainTrackSelection;
  OverlayTemplate : TMainOverlayTemplate;
begin
  lvTrack.Clear;

  {dibuat IdSelectedRoute - 1, karena perbedaan penomoran antara Flisttemp dan listview}
  k := IdSelectedTemplate - 1;

  if (k < 0) or (k > simMgrClient.DrawOverlayTemplate.FList.Count ) then
    exit;

  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[k];

  for i := 0 to OverlayTemplate.FListTrack.Count - 1 do
  begin
    objectTrackSelection := OverlayTemplate.FListTrack.Items[i];

    with lvTrack.Items.Add do
    begin
      SubItems.Add(objectTrackSelection.TrackId);
      SubItems.Add(FloatToStr(objectTrackSelection.BearingOffset));
      SubItems.Add(FloatToStr(objectTrackSelection.RangeOffset));
      SubItems.Add(FloatToStr(objectTrackSelection.Rotation));
      if objectTrackSelection.Orientation = 1 then
        SubItems.Add('T')
      else
        SubItems.Add('R');
    end;
  end;

  lvTrack.Items.BeginUpdate;
  try
   for j := 0 to lvTrack.Items.Count-1 do
     lvTrack.Items.Item[j].Caption:=IntToStr(j+1);
  finally
    lvTrack.Items.EndUpdate;
  end;

  if lvTrack.Items.Count = 0 then
    btnEdit.Enabled := False;
end;

procedure TfmOverlayEditor.RefreshLDrawDynamic;
var
  i, j, k : Integer;
  ObjectOverlay : TMainStaticShape;
  OverlayTemplate : TMainOverlayTemplate;
  Ship : TMainTrackSelection;
begin
  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Tipe = 0 then
    begin
      for j := 0 to OverlayTemplate.DynamicList.Count - 1 do
      begin
        ObjectOverlay := OverlayTemplate.DynamicList.Items[j];
        ObjectOverlay.isSelected := False;
      end;

      for k := 0 to OverlayTemplate.FListTrack.Count - 1 do
      begin
        Ship := OverlayTemplate.FListTrack[k];
        Ship.isDraw := True;
      end;
    end
    else
    begin
      for j := 0 to OverlayTemplate.StaticList.Count - 1 do
      begin
        ObjectOverlay := OverlayTemplate.StaticList.Items[j];
        ObjectOverlay.isSelected := False;
      end;
    end;
  end;
end;

procedure TfmOverlayEditor.RefreshLTemplate;
var
  i : Integer;
  OverlayTemplate : TMainOverlayTemplate;
begin
  lvTemplates.Items.Clear;

  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

    with lvTemplates.Items.Add do
    begin
      SubItems.Add(OverlayTemplate.Name);
      if OverlayTemplate.Tipe = 0 then
        SubItems.Add('Dynamic')
      else
        SubItems.Add('Static');
    end;
  end;

  lvTemplates.Items.BeginUpdate;
  try
   for i := 0 to lvTemplates.Items.Count-1 do
     lvTemplates.Items.Item[i].Caption:=IntToStr(i+1);
  finally
    lvTemplates.Items.EndUpdate;
  end;

  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  rbStatic.Checked := True;
  rbSurface.Checked := True;
  TipeOverlay := osStatic;
  DomainOverlay := vhdSurface;
end;

procedure TfmOverlayEditor.RefreshLvPolyVertexList(i: Byte);
var
  j : Integer;
begin
  case i of
    0 :
    begin
      lvPolyVertexD.Items.BeginUpdate;
      try
       for j := 0 to lvPolyVertexD.Items.Count-1 do
         lvPolyVertexD.Items.Item[j].Caption:=IntToStr(j+1);
      finally
        lvPolyVertexD.Items.EndUpdate;
      end;
    end;
    1 :
    begin
      lvPolyVertex.Items.BeginUpdate;
      try
       for j := 0 to lvPolyVertex.Items.Count-1 do
         lvPolyVertex.Items.Item[j].Caption:=IntToStr(j+1);
      finally
        lvPolyVertex.Items.EndUpdate;
      end;
    end;
  end;
end;

procedure TfmOverlayEditor.AddTrackSelection;
var
  OverlayTemplate : TMainOverlayTemplate;
  rec : TRecCmd_OverlayDynamicTrack;

begin
  if (edtTrack.Text = '') or (edtRange.Text = '') or (edtBearing.Text = '') or
     (edtRotation.Text = '') then
  begin
    ShowMessage('Incomplete data input');
    Exit;
  end;

  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[IdSelectedTemplate - 1];

  rec.TemplateName := OverlayTemplate.Name;
  rec.IdTrack := IdTrackInstanceIndex;
  rec.NameTrack := edtTrack.Text;
  rec.Rng := StrToFloat(edtRange.Text);
  rec.Brg := StrToInt(edtBearing.Text);
  rec.Rot := StrToInt(edtRotation.Text);
  rec.IdAction := 1;

  if rbTrueOrientation.Checked then
    rec.Orientation := 1
  else
    rec.Orientation := 0;

  simMgrClient.netSend_CmdDynamicTrack(rec);
  edtTrack.Text := '';
  edtRange.Text := '0';
  edtBearing.Text := '0';
  edtRotation.Text := '0';
end;

procedure TfmOverlayEditor.Apply;
begin
  case TagObject of
    ovText : GbrText;
    ovLine : GbrLine;
    ovRectangle : GbrRectangle;
    ovCircle : GbrCircle;
    ovEllipse : GbrEllipse;
    ovArc : GbrArc;
    ovSector : GbrSector;
    ovGrid : GbrGrid;
    ovPolygon : GbrPolygon;
  end;
end;

procedure TfmOverlayEditor.btnAttachClick(Sender: TObject);
begin
  pnlType.Visible := False;
  pnlTrackSelection.Visible := True;
  btnTrackSelectionOK.Enabled := False;
  edtTrack.Text := '';
  edtRange.Text := '0';
  edtBearing.Text := '0';
  edtRotation.Text := '0';
end;

procedure TfmOverlayEditor.btnDeletePolyClick(Sender: TObject);
begin
  lvPolyVertex.Clear;
end;

procedure TfmOverlayEditor.btnDeletePolyDClick(Sender: TObject);
begin
  lvPolyVertexD.Clear;
end;

procedure TfmOverlayEditor.btnDetachClick(Sender: TObject);
var
  OverlayTemplate : TMainOverlayTemplate;
  rec : TRecCmd_OverlayDynamicTrack;

begin
  if IdSelectedTrack > lvTrack.Items.Count then
    Exit;

  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[IdSelectedTemplate - 1];

  rec.TemplateName := OverlayTemplate.Name;
  rec.IdSelectTrack := IdSelectedTrack;
  rec.IdAction := 3;

  simMgrClient.netSend_CmdDynamicTrack(rec);

  btnDetach.Enabled := False;
  btnEdit.Enabled := False;
end;

procedure TfmOverlayEditor.btnHandleObjectEditor(Sender: TObject);
begin
  case TButton(Sender).Tag of
    0: {Apply}
    begin
      Apply;
      btnSelect.Click;
    end;
    1: {Delete}
    begin
      Deleted;
      btnSelect.Click;
    end;
    2: {Cancel}
    begin
      Canceled;
      btnSelect.Click;
    end;
    3: {Close}
    begin
      Canceled;
      Self.Height := 611;
      grpTemplate.Left := 17;
      RefreshLDrawDynamic;
      RefreshLTemplate;
    end;
  end;
  ClearEditText;
  ClearFlagPoint;
  frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtSelectObject;
  btnNone.Down := True;
end;

procedure TfmOverlayEditor.btnHandleShape(Sender: TObject);
begin
  ClearEditText;
  Canceled;
  IsEditObject := False;
  btnObjectApply.Enabled := True;
  frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtSelectObject;

  case StateOverlay of
    osDynamic : pnlDynamic.Visible := True;
    osStatic : pnlStatic.Visible := True;
  end;

  TagObject := TSpeedButton(Sender).Tag;
  case TagObject of
    0: {New}
    begin
      lblShape.Caption := '---';
      grpNoneD.BringToFront;
      grpNone.BringToFront;

      btnObjectDelete.Enabled := False;
      btnObjectApply.Enabled := False;
      btnSelect.Down := True;

      if StateOverlay = osDynamic then
        frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtEditOverlayStatic
      else
        frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtEditOverlayStatic;
    end;
    ovText:{Text}
    begin
      lblShape.Caption := 'Text';
      grpTextD.BringToFront;
      grpText.BringToFront;
    end;
    ovLine:{Line}
    begin
      lblShape.Caption := 'Line';
      grpLineD.BringToFront;
      grpLine.BringToFront;
    end;
    ovRectangle:{Rectangle}
    begin
      lblShape.Caption := 'Rectangle';
      grpRectangleD.BringToFront;
      grpRectangle.BringToFront;
    end;
    ovCircle:{Circle}
    begin
      lblShape.Caption := 'Circle';
      grpCircleD.BringToFront;
      grpCircle.BringToFront;
    end;
    ovEllipse:{Ellipse}
    begin
      lblShape.Caption := 'Ellipse';
      grpEllipseD.BringToFront;
      grpEllipse.BringToFront;
    end;
    ovArc:{Arc}
    begin
      lblShape.Caption := 'Arc';
      grpArcD.BringToFront;
      grpArc.BringToFront;
    end;
    ovSector:{Sector}
    begin
      lblShape.Caption := 'Sector';
      grpSectorD.BringToFront;
      grpSector.BringToFront;
    end;
    ovGrid:{Grid}
    begin
      lblShape.Caption := 'Grid';
      grpGridD.BringToFront;
      grpGrid.BringToFront;
    end;
    ovPolygon:{Polygon}
    begin
      lblShape.Caption := 'Polygon';
      grpPolygonD.BringToFront;
      grpPolygon.BringToFront;
      SpeedButton10.Down := False;
    end;
  end;
end;

procedure TfmOverlayEditor.btnHandleTemplate(Sender: TObject);
begin
  pnlType.Visible := False;
  pnlTrackSelection.Visible := False;
  pnlStatic.Visible := False;
  pnlDynamic.Visible := False;

  case TSpeedButton(Sender).Tag of
    0: {Refresh}
    begin
      RefreshLTemplate;
      pnlCreateNew.Visible := True;
      edtNameOverlay.Text := 'New Overlay';
    end;
    1:{Edit}
    begin
      Self.Height := 528;
      grpTemplate.Left := 351;
      btnSelect.Click;

      if StateOverlay = osDynamic then
      begin
        lblState.Caption := 'DYNAMIC';
        pnlDynamic.Visible := True;
      end
      else
      begin
        lblState.Caption := 'STATIC';
        pnlStatic.Visible := True;
      end;

      EditTemplate;
    end;
    2:{Delete}
    begin
      DeleteTemplate;
    end;
    3:{Close}
    begin
      Close;
    end;
    4:{Create}
    begin
      AddTemplate;
    end;
    5:{Cancel}
    begin
      pnlCreateNew.Visible := False;
    end;
    6:{Ok Track Selection}
    begin
      pnlType.Visible := True;
      AddTrackSelection;
    end;
    7:{Cancel Track Selection}
    begin
      pnlType.Visible := True;
    end;
  end;
end;

procedure TfmOverlayEditor.btnHandleShapePosition(Sender: TObject);
begin
  if (Sender is TSpeedButton) then
  begin
    FTagTombolPosition := TSpeedButton(Sender).Tag;

    if FTagTombolPosition = 10 then
    begin
      if not SpeedButton10.Down then
        frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtSelectObject
      else
        frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtAddOverlay;
    end
    else
    begin
      frmTacticalDisplay.fmMapWindow1.Map.CurrentTool := mtAddOverlay;
    end;
  end;
end;

procedure TfmOverlayEditor.btnTargetSearchClick(Sender: TObject);
begin
  if Assigned(TrackPlatform) then
  begin
    if TrackPlatform is TT3DetectedTrack then
    begin
      edtTrack.Text := IntToStr(TT3PlatformInstance(TT3DetectedTrack(TrackPlatform).TrackObject).TrackNumber);
      IdTrackInstanceIndex := TT3PlatformInstance(TT3DetectedTrack(TrackPlatform).TrackObject).InstanceIndex
    end
    else if TrackPlatform is TT3PlatformInstance then
    begin
      edtTrack.Text := TT3PlatformInstance(TrackPlatform).Track_ID;
      IdTrackInstanceIndex := TT3PlatformInstance(TrackPlatform).InstanceIndex
    end;
    btnTrackSelectionOK.Enabled := True;
  end
  else
    exit;
end;

procedure TfmOverlayEditor.Canceled;
var
  i, j, k : Integer;
  ObjectOverlay : TMainStaticShape;
  OverlayTemplate : TMainOverlayTemplate;
  Ship : TMainTrackSelection;
begin
  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];

    if OverlayTemplate.Tipe = 0 then
    begin
      for j := 0 to OverlayTemplate.DynamicList.Count - 1 do
      begin
        ObjectOverlay := OverlayTemplate.DynamicList.Items[j];
        ObjectOverlay.isSelected := False;
      end;
    end
    else
    begin
      for j := 0 to OverlayTemplate.StaticList.Count - 1 do
      begin
        ObjectOverlay := OverlayTemplate.StaticList.Items[j];
        ObjectOverlay.isSelected := False;
      end;
    end;
  end;
end;

function TfmOverlayEditor.CekInput(IdObject: Integer): Boolean;
begin
  Result := False;

  case IdObject of
    ovText:{Text}
    begin
      case StateOverlay of
        osDynamic :
        begin
          if (edtTextRange.Text = '')or(edtTextBearing.Text = '')or
             (cbbTextSizeD.Text = '')or(edtTextFieldD.Text = '') then
            Result := True;
        end;
        osStatic  :
        begin
          if (cbbTextSize.Text = '') or (edtTextPosLong.Text = '') then
            Result := True;
        end;
      end;
    end;
    ovLine:{Line}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtLineStartRange.Text = '')or(edtLineStartBearing.Text = '')or
             (edtLineEndRange.Text = '')or(edtLineEndBearing.Text = '') then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtLineStartPosLong.Text = '') or (edtLineEndPosLong.Text = '') then
            Result := True;
        end;
      end;
    end;
    ovRectangle:{Rectangle}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtRecStartRange.Text = '')or(edtRecStartBearing.Text = '')or
             (edtRecEndRange.Text = '')or(edtRecEndBearing.Text = '') then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtRectStartPosLong.Text = '') or (edtRectEndPosLong.Text = '') then
            Result := True;
        end;
      end;
    end;
    ovCircle:{Circle}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtCircleRange.Text = '')or(edtCircleBearing.Text = '')or
             (edtCircleRadiusD.Text = '') then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtCircleRadius.Text = '') or (edtCirclePosLong.Text = '') then
            Result := True;
        end;
      end;
    end;
    ovEllipse:{Ellipse}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtEllipseRange.Text = '')or(edtEllipseBearing.Text = '')or
             (edtEllipseHorizontalD.Text = '')or(edtEllipseVerticalD.Text = '') then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtHorizontal.Text = '') or (edtVertical.Text = '') or (edtEllipsePosLong.Text = '') then
            Result := True;
        end;
      end;
    end;
    ovArc:{Arc}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtArcRange.Text = '')or(edtArcBearing.Text = '')or
             (edtArcRadiusD.Text = '')or(edtArcStartAngleD.Text = '')or
             (edtArcEndAngleD.Text = '')then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtArcRadius.Text = '') or (edtArcPosLong.Text = '') or (edtArcStartAngle.Text = '')
              or (edtArcEndAngle.Text = '')then
            Result := True;
        end;
      end;
    end;
    ovSector:{Sector}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtSectorRange.Text = '')or(edtSectorBearing.Text = '')or
             (edtSectorInnerD.Text = '')or(edtSectorOuterD.Text = '')or
             (edtSectorStartAngleD.Text = '')or(edtSectorEndAngleD.Text = '')then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtSectorInner.Text = '') or (edtSectorOuter.Text = '') or (edtSectorPosLong.Text = '')
             or (edtSectorStartAngle.Text = '') or (edtSectorEndAngle.Text = '')then
            Result := True;
        end;
      end;
    end;
    ovGrid:{Grid}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if (edtTableRange.Text = '')or(edtTableBearing.Text = '')or
             (edtTableHeightD.Text = '')or(edtTableColumnD.Text = '')or
             (edtTableWidthD.Text = '')or(edtTableRowD.Text = '')or
             (edtRotationAngleD.Text = '')then
            Result := True;
        end;
        osStatic  :
        begin
          if (edtTableHeight.Text = '') or (edtTableWidth.Text = '') or (edtTablePosLong.Text = '')
             or (edtTableColumn.Text = '') or (edtTableRow.Text = '') or (edtTableRotationAngle.Text = '') then
            Result := True;
        end;
      end;
    end;
    ovPolygon:{Polygon}
    begin
      case StateOverlay of
        osDynamic :
        begin

          if lvPolyVertexD.Items.Count < 1 then
            Result := True;
        end;
        osStatic  :
        begin
          if lvPolyVertex.Items.Count < 1 then
            Result := True;
        end;
      end;
    end;
  end;

  if Result then
    ShowMessage('Incomplete data input');

end;

procedure TfmOverlayEditor.chkShowClick(Sender: TObject);
var
  OverlayTemplate : TMainOverlayTemplate;
begin
  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[IdSelectedTemplate - 1];
  if chkShow.Checked then
    OverlayTemplate.isShow := True
  else
    OverlayTemplate.isShow := False;
end;

procedure TfmOverlayEditor.ClearEditText;
begin
  {Text}
  edtTextPosLat.Text  := formatDMS_latt(0);
  edtTextPosLong.Text := formatDMS_long(0);
  edtTextField.Text := 'None';

  edtTextRange.Text := '0';
  edtTextBearing.Text := '0';
  edtTextFieldD.Text := 'None';

  {Line}
  edtLineStartRange.Text := '0';
  edtLineStartBearing.Text := '0';
  edtLineEndRange.Text := '0';
  edtLineEndBearing.Text := '0';

  edtLineStartPosLong.Text := formatDMS_long(0);
  edtLineStartPosLat.Text := formatDMS_latt(0);
  edtLineEndPosLong.Text := formatDMS_long(0);
  edtLineEndPosLat.Text := formatDMS_latt(0);

  {Rectangle}
  edtRecStartRange.Text := '0';
  edtRecStartBearing.Text := '0';
  edtRecEndRange.Text := '0';
  edtRecEndBearing.Text := '0';

  edtRectStartPosLong.Text := formatDMS_long(0);
  edtRectStartPosLat.Text := formatDMS_latt(0);
  edtRectEndPosLong.Text := formatDMS_long(0);
  edtRectEndPosLat.Text := formatDMS_latt(0);

  {Circle}
  edtCircleRange.Text := '0';
  edtCircleBearing.Text := '0';
  edtCircleRadiusD.Text := '0';

  edtCircleRadius.Text := '0';
  edtCirclePosLong.Text := formatDMS_long(0);
  edtCirclePosLat.Text := formatDMS_latt(0);

  {Ellipse}
  edtEllipseRange.Text := '0';
  edtEllipseBearing.Text := '0';
  edtEllipseHorizontalD.Text := '0';
  edtEllipseVerticalD.Text := '0';

  edtHorizontal.Text := '0';
  edtVertical.Text := '0';
  edtEllipsePosLong.Text := formatDMS_long(0);
  edtEllipsePosLat.Text := formatDMS_latt(0);

  {Arc}
  edtArcRange.Text := '0';
  edtArcBearing.Text := '0';
  edtArcRadiusD.Text := '0';
  edtArcStartAngleD.Text := '0';
  edtArcEndAngleD.Text := '0';

  edtArcRadius.Text := '0';
  edtArcPosLong.Text := formatDMS_long(0);
  edtArcPosLat.Text := formatDMS_latt(0);
  edtArcStartAngle.Text := '0';
  edtArcEndAngle.Text := '0';

  {Sector}
  edtSectorRange.Text := '0';
  edtSectorBearing.Text := '0';
  edtSectorInnerD.Text := '0';
  edtSectorOuterD.Text := '0';
  edtSectorStartAngleD.Text := '0';
  edtSectorEndAngleD.Text := '0';

  edtSectorInner.Text := '0';
  edtSectorOuter.Text := '0';
  edtSectorPosLong.Text := formatDMS_long(0);
  edtSectorPosLat.Text := formatDMS_latt(0);
  edtSectorStartAngle.Text := '0';
  edtSectorEndAngle.Text := '0';

  {Grid}
  edtTableRange.Text := '0';
  edtTableBearing.Text := '0';
  edtTableHeightD.Text := '0';
  edtTableColumnD.Text := '0';
  edtTableWidthD.Text := '0';
  edtRotationAngleD.Text := '0';

  edtTableHeight.Text := '0';
  edtTableWidth.Text := '0';
  edtTablePosLong.Text := formatDMS_long(0);
  edtTablePosLat.Text := formatDMS_latt(0);
  edtTableColumn.Text := '0';
  edtTableRow.Text := '0';
  edtTableRotationAngle.Text:= '0';

  {Polygon}
  edtPolygonRange.Text := '0';
  edtPolygonBearing.Text:= '0';
  lvPolyVertexD.Clear;
  lvPolyVertex.Clear;
end;

procedure TfmOverlayEditor.ClearFlagPoint;
begin
  simMgrClient.DrawFlagPoint.FList.Clear;
end;

procedure TfmOverlayEditor.Deleted;
begin
  case StateOverlay of
    0 :
    begin
      recShapeDynamic.IdAction := 3;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.IdSelectShape := IdSelectObject;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    1 :
    begin
      recShapeStatic.IdAction := 3;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.IdSelectShape := IdSelectObject;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.DeleteTemplate;
var
  recTemplate : TRecCmd_OverlayTemplate;
  OverlayTemplate : TMainOverlayTemplate;
begin
  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[IdSelectedTemplate - 1];

  recTemplate.Name := OverlayTemplate.Name;
  recTemplate.IdAction := 3;

  {Kirim data disini}
  simMgrClient.netSend_CmdOverlayTemplate(recTemplate);

  pnlCreateNew.Visible := False;
  pnlType.Visible := False;
  btnDelete.Enabled := False;
  btnEdit.Enabled := False;
end;

procedure TfmOverlayEditor.EditTemplate;
var
  i : Integer;
  OverlayTemplate : TMainOverlayTemplate;
  Ship : TMainTrackSelection;
begin
  for i := 0 to simMgrClient.DrawOverlayTemplate.FList.Count - 1 do
  begin
    OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[i];
    OverlayTemplate.isShow := False;
  end;

  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[IdSelectedTemplate - 1];
  OverlayTemplate.isShow := True;

  if StateOverlay = osDynamic then
  begin
    for i := 0 to OverlayTemplate.FListTrack.Count - 1 do
    begin
      Ship := OverlayTemplate.FListTrack.Items[i];
      Ship.isDraw := False;
    end;

    Ship := OverlayTemplate.FListTrack.Items[IdSelectedTrack ];
    Ship.isDraw := True;
  end;
end;

procedure TfmOverlayEditor.SelectShape(pos: TPoint);
begin
  if StateOverlay = osDynamic then
    simMgrClient.DrawOverlayTemplate.SelectShapeDynamic(IdSelectObject, IdSelectedTemplate - 1, IdSelectedTrack, pos)
  else
    simMgrClient.DrawOverlayTemplate.SelectShapeStatic(IdSelectObject, IdSelectedTemplate - 1, pos);
end;

procedure TfmOverlayEditor.SelectTemplate;
var
  OverlayTemplate : TMainOverlayTemplate;
begin
  grpStatic.Visible := False;
  grpDynamic.Visible := False;

  {dibuat IdSelectedRoute - 1, karena perbedaan penomoran antara Flisttemp dan listview}
  OverlayTemplate := simMgrClient.DrawOverlayTemplate.FList.Items[IdSelectedTemplate - 1];
  StateOverlay := OverlayTemplate.Tipe;

  if StateOverlay = osDynamic then
  begin
    grpDynamic.Visible := True;
    RefreshDynamicTrack;
  end
  else
  begin
    grpStatic.Visible := True;
    btnEdit.Enabled := True;

    case OverlayTemplate.Domain of
      vhdAir        : lbDomain.Caption := 'Air';
      vhdSurface    : lbDomain.Caption := 'Surface';
      vhdSubsurface : lbDomain.Caption := 'Subsurface';
      vhdLand       : lbDomain.Caption := 'Land';
      vhdGeneral    : lbDomain.Caption := 'General';
    end;

    chkShow.Checked := OverlayTemplate.isShow;
  end;
end;

procedure TfmOverlayEditor.SetTrackPlatform(const Value: TSimObject);
begin
  FTrackPlatform := Value;
end;

procedure TfmOverlayEditor.AddPolyDClick(Sender: TObject);
begin
  with lvPolyVertexD.Items.Add do
  begin
    SubItems.Add(edtPolygonRange.Text);
    SubItems.Add(edtPolygonBearing.Text);
  end;
  RefreshLvPolyVertexList(0);
end;

procedure TfmOverlayEditor.AddTemplate;
var
  recTemplate : TRecCmd_OverlayTemplate;
begin
  if FilterName then
  begin
    ShowMessage('Please use another name');
    pnlCreateNew.Visible := True;
    exit;
  end;

  recTemplate.Name := edtNameOverlay.Text;
  recTemplate.IdAction := 1;
  recTemplate.Tipe := TipeOverlay;
  recTemplate.Domain := DomainOverlay;

  if simMgrClient.ISInstructor then
    recTemplate.Cubicle := 0
  else
    recTemplate.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

  {Kirim data disini}
  simMgrClient.netSend_CmdOverlayTemplate(recTemplate);

  pnlCreateNew.Visible := False;
end;

procedure TfmOverlayEditor.FillEditText;
begin
  case FTagTombolPosition of
    0:
    begin
      edtTextPosLat.Text  := formatDMS_latt(PostY);
      edtTextPosLong.Text := formatDMS_long(PostX);
    end;
    1:
    begin
      edtLineStartPosLat.Text  := formatDMS_latt(PostY);
      edtLineStartPosLong.Text := formatDMS_long(PostX);
    end;
    2:
    begin
      edtLineEndPosLat.Text  := formatDMS_latt(PostY);
      edtLineEndPosLong.Text := formatDMS_long(PostX);
    end;
    3:
    begin
      edtRectStartPosLat.Text  := formatDMS_latt(PostY);
      edtRectStartPosLong.Text := formatDMS_long(PostX);
    end;
    4:
    begin
      edtRectEndPosLat.Text  := formatDMS_latt(PostY);
      edtRectEndPosLong.Text := formatDMS_long(PostX);
    end;
    5:
    begin
      edtCirclePosLat.Text  := formatDMS_latt(PostY);
      edtCirclePosLong.Text := formatDMS_long(PostX);
    end;
    6:
    begin
      edtEllipsePosLat.Text  := formatDMS_latt(PostY);
      edtEllipsePosLong.Text := formatDMS_long(PostX);
    end;
    7:
    begin
      edtArcPosLat.Text  := formatDMS_latt(PostY);
      edtArcPosLong.Text := formatDMS_long(PostX);
    end;
    8:
    begin
      edtSectorPosLat.Text  := formatDMS_latt(PostY);
      edtSectorPosLong.Text := formatDMS_long(PostX);
    end;
    9:
    begin
      edtTablePosLat.Text  := formatDMS_latt(PostY);
      edtTablePosLong.Text := formatDMS_long(PostX);
    end;
    10:
    begin
      edtPolyPosLat.Text  := formatDMS_latt(PostY);
      edtPolyPosLong.Text := formatDMS_long(PostX);
    end;
  end;
end;

function TfmOverlayEditor.FilterName: Boolean;
var
  i : Integer;
begin
  Result := False;

  for i := 0 to lvTemplates.Items.Count-1 do
  begin
    if lvTemplates.Items.Item[i].SubItems[0] = edtNameOverlay.Text then
      Result := True;
  end;
end;

procedure TfmOverlayEditor.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfmOverlayEditor.FormCreate(Sender: TObject);
begin
  Temporary := TList.Create;
  TemporaryD := TList.Create;
end;

procedure TfmOverlayEditor.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfmOverlayEditor.FormDestroy(Sender: TObject);
begin
  Temporary.Free;
  TemporaryD.Free;
end;

procedure TfmOverlayEditor.FormShow(Sender: TObject);
begin
  AlignFormToMonitor(0, apLeftTop, 3, 65, TForm(self));

  grpTemplate.Left := 17;
  Self.Height := 611;
  Self.Width := 338;
  RefreshLTemplate;
end;

procedure TfmOverlayEditor.GbrText;
var
  Size : Byte;

begin
  if CekInput(ovText) then
    Exit;

  Size := 10;
  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      if      cbbTextSizeD.Text = 'Small'   then Size := 10
      else if cbbTextSizeD.Text = 'Medium'  then Size := 15
      else if cbbTextSizeD.Text = 'Large'   then Size := 20;

      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovText;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtTextBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtTextRange.Text);
      recShapeDynamic.Size := Size;
      recShapeDynamic.Words := edtTextFieldD.Text;
      recShapeDynamic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      if      cbbTextSize.Text = 'Small'   then Size := 10
      else if cbbTextSize.Text = 'Medium'  then Size := 15
      else if cbbTextSize.Text = 'Large'   then Size := 20;

      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovText;
      recShapeStatic.PostStart.X := dmsToLong(edtTextPosLong.Text);
      recShapeStatic.PostStart.Y := dmsToLatt(edtTextPosLat.Text);
      recShapeStatic.Size := Size;
      recShapeStatic.Words := edtTextField.Text;
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

function TfmOverlayEditor.GetInput(s: string): Boolean;
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

procedure TfmOverlayEditor.GbrLine;
begin
  if CekInput(ovLine) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovLine;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtLineStartBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtLineStartRange.Text);
      recShapeDynamic.PostEnd.Bearing := StrToInt(edtLineEndBearing.Text);
      recShapeDynamic.PostEnd.Range := StrToFloat(edtLineEndRange.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovLine;
      recShapeStatic.postStart.X := dmsToLong(edtLineStartPosLong.Text);
      recShapeStatic.postStart.Y := dmsToLatt(edtLineStartPosLat.Text);
      recShapeStatic.postEnd.X := dmsToLong(edtLineEndPosLong.Text);
      recShapeStatic.postEnd.Y := dmsToLatt(edtLineEndPosLat.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrRectangle;
begin
  if CekInput(ovRectangle) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovRectangle;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtRecStartBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtRecStartRange.Text);
      recShapeDynamic.PostEnd.Bearing := StrToInt(edtRecEndBearing.Text);
      recShapeDynamic.PostEnd.Range := StrToFloat(edtRecEndRange.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovRectangle;
      recShapeStatic.postStart.X := dmsToLong(edtRectStartPosLong.Text);
      recShapeStatic.postStart.Y := dmsToLatt(edtRectStartPosLat.Text);
      recShapeStatic.postEnd.X := dmsToLong(edtRectEndPosLong.Text);
      recShapeStatic.postEnd.Y := dmsToLatt(edtRectEndPosLat.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrCircle;
begin
  if CekInput(ovCircle) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovCircle;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtCircleBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtCircleRange.Text);
      recShapeDynamic.Radius1 := StrToFloat(edtCircleRadiusD.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovCircle;
      recShapeStatic.PostStart.X := dmsToLong(edtCirclePosLong.Text);
      recShapeStatic.PostStart.Y := dmsToLatt(edtCirclePosLat.Text);
      recShapeStatic.Radius1 := StrToFloat(edtCircleRadius.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrEllipse;
begin
  if CekInput(ovEllipse) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovEllipse;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtEllipseBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtEllipseRange.Text);
      recShapeDynamic.Radius1 := StrToFloat(edtEllipseVerticalD.Text);
      recShapeDynamic.Radius2 := StrToFloat(edtEllipseHorizontalD.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovEllipse;
      recShapeStatic.PostStart.X := dmsToLong(edtEllipsePosLong.Text);
      recShapeStatic.PostStart.Y := dmsToLatt(edtEllipsePosLat.Text);
      recShapeStatic.Radius1 := StrToFloat(edtHorizontal.Text);
      recShapeStatic.Radius2 := StrToFloat(edtVertical.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrArc;
begin
  if CekInput(ovArc) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovArc;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtArcBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtArcRange.Text);
      recShapeDynamic.Radius1 := StrToFloat(edtArcRadiusD.Text);
      recShapeDynamic.StartAngle := StrToInt(edtArcStartAngleD.Text);
      recShapeDynamic.EndAngle := StrToInt(edtArcEndAngleD.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovArc;
      recShapeStatic.PostStart.X := dmsToLong(edtArcPosLong.Text);
      recShapeStatic.PostStart.Y := dmsToLatt(edtArcPosLat.Text);
      recShapeStatic.radius1 := StrToFloat(edtArcRadius.Text);
      recShapeStatic.StartAngle := StrToInt(edtArcStartAngle.Text);
      recShapeStatic.EndAngle := StrToInt(edtArcEndAngle.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrSector;
begin
  if CekInput(ovSector) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovSector;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtSectorBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtSectorRange.Text);
      recShapeDynamic.Radius1 := StrToFloat(edtSectorOuterD.Text);
      recShapeDynamic.Radius2 := StrToFloat(edtSectorInnerD.Text);
      recShapeDynamic.StartAngle := StrToInt(edtSectorStartAngleD.Text);
      recShapeDynamic.EndAngle := StrToInt(edtSectorEndAngleD.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovSector;
      recShapeStatic.PostStart.X := dmsToLong(edtSectorPosLong.Text);
      recShapeStatic.PostStart.Y := dmsToLatt(edtSectorPosLat.Text);
      recShapeStatic.Radius1 := StrToFloat(edtSectorOuter.Text);
      recShapeStatic.Radius2 := StrToFloat(edtSectorInner.Text);
      recShapeStatic.StartAngle := StrToInt(edtSectorStartAngle.Text);
      recShapeStatic.EndAngle := StrToInt(edtSectorEndAngle.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrGrid;
begin
  if CekInput(ovGrid) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovGrid;
      recShapeDynamic.PostStart.Bearing := StrToInt(edtTableBearing.Text);
      recShapeDynamic.PostStart.Range := StrToFloat(edtTableRange.Text);
      recShapeDynamic.Radius1 := StrToFloat(edtTableHeightD.Text);
      recShapeDynamic.Radius2 := StrToFloat(edtTableWidthD.Text);
      recShapeDynamic.Kolom := StrToInt(edtTableColumnD.Text);
      recShapeDynamic.Baris := StrToInt(edtTableRowD.Text);
      recShapeDynamic.Rotasi := StrToInt(edtRotationAngleD.Text);
      recShapeDynamic.Color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovGrid;
      recShapeStatic.PostStart.X := dmsToLong(edtTablePosLong.Text);
      recShapeStatic.PostStart.Y := dmsToLatt(edtTablePosLat.Text);
      recShapeStatic.Radius1 := StrToFloat(edtTableHeight.Text);
      recShapeStatic.Radius2 := StrToFloat(edtTableWidth.Text);
      recShapeStatic.Kolom := StrToInt(edtTableColumn.Text);
      recShapeStatic.Baris := StrToInt(edtTableRow.Text);
      recShapeStatic.Rotasi := StrToInt(edtTableRotationAngle.Text);
      recShapeStatic.color := clrbxColor.Selected;

      {Kirim data disini}
      simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);
    end;
  end;
end;

procedure TfmOverlayEditor.GbrPolygon;
var
  i : Integer;
  li : TListItem;
begin
  if CekInput(ovPolygon) then
    Exit;

  if IsEditObject then
    Action := 2
  else
    Action := 1;

  case StateOverlay of
    osDynamic :
    begin
      recShapeDynamic.IdAction := Action;
      recShapeDynamic.IdSelectShape := IdSelectObject;
      recShapeDynamic.TemplateName := NameSelectedTemplate;
      recShapeDynamic.ShapeID := ovPolygon;
      recShapeDynamic.Color := clrbxColor.Selected;
      recShapeDynamic.StatePoly := 0;

      for i := 0 to lvPolyVertexD.Items.Count - 1 do
      begin
        li := lvPolyVertexD.Items[i];
        recShapeDynamic.PostStart.Range := StrToFloat(li.SubItems[0]);
        recShapeDynamic.PostStart.Bearing := StrToInt(li.SubItems[1]);

        {Kirim data disini}
        simMgrClient.netSend_CmdOverlayDynamicShape(recShapeDynamic);

        if (i+1) = lvPolyVertexD.Items.Count - 1 then
          recShapeDynamic.StatePoly := 1;
      end;
    end;
    osStatic  :
    begin
      recShapeStatic.IdAction := Action;
      recShapeStatic.IdSelectShape := IdSelectObject;
      recShapeStatic.TemplateName := NameSelectedTemplate;
      recShapeStatic.ShapeID := ovPolygon;
      recShapeStatic.color := clrbxColor.Selected;
      recShapeStatic.StatePoly := 0;

      for i := 0 to lvPolyVertex.Items.Count - 1 do
      begin
        li := lvPolyVertex.Items[i];
        recShapeStatic.PostStart.X := dmsToLong(li.SubItems[0]);
        recShapeStatic.PostStart.Y := dmsToLatt(li.SubItems[1]);

        {Kirim data disini}
        simMgrClient.netSend_CmdOverlayStaticShape(recShapeStatic);

        if (i+1) = lvPolyVertex.Items.Count - 1 then
          recShapeStatic.StatePoly := 1;
      end;
      SpeedButton10.Down := False;
    end;
  end;
end;

procedure TfmOverlayEditor.GbrFlagPoint(mx, my :Double);
var
  ObjectFlagPoint : TFlagPoint;
begin
  ObjectFlagPoint := TFlagPoint.Create(simMgrClient.Converter);
  ObjectFlagPoint.Post.X := mx;
  ObjectFlagPoint.Post.Y := my;
  simMgrClient.DrawFlagPoint.FList.Add(ObjectFlagPoint);
end;

end.


