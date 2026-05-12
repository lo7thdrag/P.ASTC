unit uFormationEditorPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin,
  OleCtrls, uDBAsset_Deploy, uObjectVisuals, uCoordConvertor, uDBFormation,
  uDBAssetObject, System.ImageList;

type
  TfFormationEditorPanel = class(TForm)
    pnlTestArea: TPanel;
    ToolBar1: TToolBar;
    btnSelect: TToolButton;
    btnLeftSeparator: TToolButton;
    btnDecreaseScale: TToolButton;
    cbbScale: TComboBox;
    btnIncreaseScale: TToolButton;
    btnRightSeparator: TToolButton;
    btnZoomTool: TToolButton;
    btnMoveTool: TToolButton;
    btnCenterHook: TToolButton;
    pnl1: TPanel;
    lblName: TStaticText;
    edtName: TEdit;
    lb7: TStaticText;
    edtLeader: TEdit;
    btnBrowse: TSpeedButton;
    lblForce: TStaticText;
    edtForce: TEdit;
    chkAbsolute: TCheckBox;
    grpFormationMember: TGroupBox;
    cbbFormationMembers: TComboBox;
    txtAltitude: TStaticText;
    edtMemberAltitude: TEdit;
    txt2: TStaticText;
    txtBearing: TStaticText;
    edtMemberBearing: TEdit;
    txtBearingFromLeader: TStaticText;
    txtRange: TStaticText;
    edtMemberRange: TEdit;
    txt1: TStaticText;
    btnAddRemoveMembers: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    btnApply: TButton;
    btnCapture: TButton;
    img1: TImage;
    ImageList1: TImageList;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnDecreaseScaleClick(Sender: TObject);
    procedure btnIncreaseScaleClick(Sender: TObject);
    procedure btnZoomToolClick(Sender: TObject);
    procedure btnMoveToolClick(Sender: TObject);
    procedure btnCenterHookClick(Sender: TObject);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure btnBrowseClick(Sender: TObject);
    procedure chkAbsoluteClick(Sender: TObject);
    procedure cbbFormationMembersChange(Sender: TObject);
    procedure btnAddRemoveMembersClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnCaptureClick(Sender: TObject);
    procedure img1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditMemberDataKeyPress(Sender: TObject; var Key: Char);
  private
    FSelectedAssetDeployment : TAsset_Deployment;
    FSelectedFormation : TFormation;

    FFormationMemberList : TList;
    FFormationLeader : TPlatform_Instance;
    FSelectedMember : TFormation;
    isCapturingScreen, MouseIsDown : Boolean;

    FBmpSymbol : TBitmapSymbol;
    FCoordPlatformConv : TCoordConverter;
    FCenterX : Integer;
    FCenterY : Integer;

    procedure CalcXY(const x1, y1: Integer; const aDist, aCourse: Double;
      var x2, y2: Integer);
    procedure DrawSymbol(s_name: string; s_color: TColor; X,Y: Integer);
    procedure DrawSelected(const X,Y: Integer);
    procedure ScreenShot(DestBitmap : TBitmap) ;

    procedure UpdateFormationForm;
    procedure UpdateFormationMemberList;
    procedure spiderWeb;
    procedure DrawFormationMemberSymbol;
  public
    property SelectedAssetDeployment : TAsset_Deployment
      read FSelectedAssetDeployment write FSelectedAssetDeployment;
    property SelectedFormation : TFormation read FSelectedFormation
      write FSelectedFormation;
  end;

var
  FormationEditorPanelForm : TfFormationEditorPanel;

const
  C_Radius_NM = 70;

implementation

uses
  uScrCapture, ufCaptureRes, uDataModuleTTT, math, tttData,
  uFormationeditor, ufrmPlatformDeploytment, uSimDBEditor, uFormatioResourceList,
  uFormationMemberList;

{$R *.dfm}

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfFormationEditorPanel.DrawFormationMemberSymbol;
var
  i, centerX, centerY, newX, newY : Integer;
  formation : TFormation;
begin
  centerX := img1.Width div 2;
  centerY := img1.Height div 2;

  for i := 0 to FFormationMemberList.Count - 1 do
  begin
    formation := FFormationMemberList.Items[i];

    with formation.FForm_Assign do
    begin
      CalcXY(centerX, centerY, Range_from_Leader, Angle_Offset, newX, newY);
      DrawSymbol(pctFormationMember + '.bmp', clDkGray, newX, newY);
    end;
  end;
end;

procedure TfFormationEditorPanel.img1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
  pointX, pointY : Integer;
begin
  if isCapturingScreen then
  with fscrCapture do
  begin
     PDown.X := X;
     PDown.Y := Y;
     PActually.X := X;
     PActually.Y := Y;
     MouseIsDown := TRUE;
     Canvas.DrawFocusRect(Rect(x, y, x, y));
  end
  else
  begin
//    for i := 0 to memberList.Count - 1 do
//    begin
//      with TFormation(memberList[i]).FForm_Assign do
//      begin
//        CalcXY(FCenterX,FCenterY,Range_from_Leader,Angle_Offset,pointX,pointY);
//        if (X < pointX + 10) and (Y < pointY + 10) and
//           (X > pointX - 10) and (Y > pointY - 10) then
//        begin
//          cbbFormationMembers.ItemIndex  := I;
////          cbbMembersChange(Sender);
//          refreshDraw;
//          DrawSelected(pointX,pointY);
//        end;
//      end;
//    end;
  end;
end;

procedure TfFormationEditorPanel.DrawSelected(const X,Y: Integer);
begin
  img1.Canvas.Pen.Color   := clYellow;
  img1.Canvas.Pen.Style   := psSolid;
  img1.Canvas.Brush.Style := bsClear;
  img1.Canvas.Rectangle(X-10,Y-10,X+10,Y+10);
end;

procedure TfFormationEditorPanel.img1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if isCapturingScreen then
 begin

  with fscrCapture do
  begin

   PActually.X := x;
   PActually.Y := Y;
   MouseIsDown := TRUE;

//   TmpBmp := TBitmap.Create;
//
//   with TmpBmp do
//   begin
//     Width := Round(abs(PActually.x - PDown.x));
//     Height := Round(abs(PActually.y - PDown.y));
//     BitBlt(TmpBmp.Canvas.Handle, 0, 0, Width, Height, fScrCapture.Image1.Canvas.Handle,
//      img1.Left+ PDown.x, PDown.y, SRCCOPY);
//     fCaptureRes.imgCaptureResult.AutoSize := false;
//     fCaptureRes.imgCaptureResult.Picture.Bitmap.Assign(TmpBmp);
//     fCaptureRes.Width := Width+10;
//     fCaptureRes.Height := Height+fCaptureRes.pnlDisplay.height+10;
//     fCaptureRes.ShowModal;
//
//     if  fCaptureRes.recapture then  fCaptureRes.recapture:= false
//     else isCapturingScreen := false;
//     MouseIsDown :=false;
//   end;
  end;
 end;
end;

procedure TfFormationEditorPanel.CalcXY(const x1, y1: Integer; const aDist,
  aCourse: Double; var x2, y2: Integer);
var
  dir : Double;
begin
  dir := DegToRad(90 - aCourse);

  X2 := Round(X1 + (aDist * C_Radius_NM) * Cos(dir));
  Y2 := Round(Y1 - (aDist * C_Radius_NM) * Sin(dir));
end;

procedure TfFormationEditorPanel.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfFormationEditorPanel.ScreenShot(DestBitmap : TBitmap) ;
 var
   DC : HDC;
 begin
   DC := GetDC (GetDesktopWindow) ;
   try
    DestBitmap.Width := GetDeviceCaps (DC, HORZRES) ;
    DestBitmap.Height := GetDeviceCaps (DC, VERTRES) ;
    BitBlt(DestBitmap.Canvas.Handle, 0, 0, DestBitmap.Width, DestBitmap.Height, DC, 0, 0, SRCCOPY) ;
   finally
    ReleaseDC (GetDesktopWindow, DC) ;
   end;
 end;

procedure TfFormationEditorPanel.btnAddRemoveMembersClick(Sender: TObject);
begin
  if not Assigned(FFormationLeader) then
  begin
    ShowMessage('Formation Leader not found');
    Exit;
  end;
  
  with FormationResourcesForm do
  begin
    SelectedAssetDeployment := FSelectedAssetDeployment;
    SelectedFormation := FSelectedFormation;
    FormationLeader := FFormationLeader;
    ShowModal;
  end;

  UpdateFormationMemberList;
end;

procedure TfFormationEditorPanel.btnApplyClick(Sender: TObject);
begin
  if edtName.Text = '(Unnamed)' then
  begin
    ShowMessage('Invalid formation name.');
    Exit;
  end;

  if not Assigned(FFormationLeader) then
  begin
    ShowMessage('Formation Leader required. Select formation leader to ' +
      'proceed this step.');
    Exit;
  end;

  with FSelectedFormation do
  begin
    FFormation_Def.Formation_Identifier := edtName.Text;
    FFormation_Def.Force_Designation := FFormationLeader.FData.
      Force_Designation;
    FFormation_Def.Formation_Leader := FFormationLeader.FData.
      Platform_Instance_Index;
    FFormation_Def.Angle_Type := Ord(chkAbsolute.Checked);
    FFormation_Def.Deployment_Index := FSelectedAssetDeployment.FData.
      Deployment_Index;

    if FFormation_Def.Formation_Index = 0 then
      dmTTT.InsertFormationDef(FFormation_Def)
    else
      dmTTT.UpdateFormationDef(FFormation_Def);
  end;

  UpdateFormationForm;
  spiderWeb;
  btnApply.Enabled := False;
end;

procedure TfFormationEditorPanel.btnBrowseClick(Sender: TObject);
begin
  with FormationMemberForm do
  begin
    SelectedAssetDeployment := FSelectedAssetDeployment;

    if ShowModal = mrOk then
    begin
      FSelectedFormation.FFormation_Def.Formation_Leader := SelectedPlatform.
        FData.Platform_Instance_Index;
      FFormationLeader := SelectedPlatform;

      edtLeader.Text := FFormationLeader.FData.Instance_Name;

      case FFormationLeader.FData.Force_Designation of
        1: edtForce.Text := 'Red';
        2: edtForce.Text := 'Yellow';
        3: edtForce.Text := 'Blue';
        4: edtForce.Text := 'Green';
        5: edtForce.Text := 'No Force';
      end;

      btnApply.Enabled := True;
    end;
  end;
end;

procedure TfFormationEditorPanel.btnCancelClick(Sender: TObject);
begin

  Close;
end;

procedure TfFormationEditorPanel.btnCaptureClick(Sender: TObject);
begin
//  b := TBitmap.Create;
//  ScreenShot(b) ;
//  isCapturingScreen := true;
//  fScrCapture.Image1.Picture.Assign(b);
// img1.Cursor := cmiCrossCursor;
end;

procedure TfFormationEditorPanel.cbbFormationMembersChange(Sender: TObject);
begin
  edtMemberAltitude.Enabled := cbbFormationMembers.ItemIndex <> -1;
  edtMemberBearing.Enabled := cbbFormationMembers.ItemIndex <> -1;
  edtMemberRange.Enabled := cbbFormationMembers.ItemIndex <> -1;

  FSelectedMember := TFormation(
    cbbFormationMembers.Items.Objects[cbbFormationMembers.ItemIndex]);

  with FSelectedMember do
  begin
    FForm_Assign.Platform_Instance_Index := FPlatform_Instance.Platform_Instance_Index;
    FForm_Assign.Formation_Index := FSelectedFormation.FFormation_Def.Formation_Index;

    edtMemberAltitude.Text := FormatFloat('0.00', FForm_Assign.Altitude);
    edtMemberBearing.Text := FormatFloat('0.00', FForm_Assign.Angle_Offset);
    edtMemberRange.Text := FormatFloat('0.00', FForm_Assign.Range_from_Leader);
  end;
end;

procedure TfFormationEditorPanel.chkAbsoluteClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfFormationEditorPanel.spiderWeb;
var
  i, centerX, centerY, hCross, wCross, radius : Integer;
begin
  with img1.Canvas do
  begin
    Brush.Color := clLtGray;
    Rectangle(0, 0, img1.Width, img1.Height);

    Pen.Color := clBlack;
    Brush.Style := bsClear;

    centerX := img1.Width div 2;
    centerY := img1.Height div 2;

    radius := 0;
    for i := 0 to 3 do
    begin
      radius := radius + C_Radius_NM;
      Ellipse(centerX - radius, centerY - radius, centerX + radius,
        centerY + radius);
    end;

    MoveTo(centerX, centerY - radius);
    LineTo(centerX, centerY + radius);
    MoveTo(centerX - radius, centerY);
    LineTo(centerX + radius, centerY);

    wCross := Round(Cos(DegToRad(45)) * radius);
    hCross := Round(Sin(DegToRad(45)) * radius);

    MoveTo(centerX - wCross, centerY - hCross);
    LineTo(centerX + wCross, centerY + hCross);
    MoveTo(centerX + wCross, centerY - hCross);
    LineTo(centerX - wCross, centerY + hCross);
  end;

  DrawSymbol(pctForceCentre + '.bmp', clBlue, centerX, centerY);

  DrawFormationMemberSymbol;
end;

procedure TfFormationEditorPanel.UpdateFormationForm;
begin
  with FSelectedFormation do
  begin
    if FFormation_Def.Formation_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := FFormation_Def.Formation_Identifier;

    if dmTTT.GetPlatFormInstance(FFormation_Def.Formation_Leader,
      FFormationLeader) then
    begin
      edtLeader.Text := FFormationLeader.FData.Instance_Name;

      case FFormationLeader.FData.Force_Designation of
        1: edtForce.Text := 'Red';
        2: edtForce.Text := 'Yellow';
        3: edtForce.Text := 'Blue';
        4: edtForce.Text := 'Green';
        5: edtForce.Text := 'No Force';
      end;
    end
    else
    begin
      edtLeader.Text := '';
      edtForce.Text := '';
    end;

    chkAbsolute.Checked := Boolean(FFormation_Def.Angle_Type);

    cbbFormationMembers.Enabled := FFormation_Def.Formation_Index <> 0;
    edtMemberAltitude.Enabled := cbbFormationMembers.ItemIndex <> -1;
    edtMemberBearing.Enabled := cbbFormationMembers.ItemIndex <> -1;
    edtMemberRange.Enabled := cbbFormationMembers.ItemIndex <> -1;
    btnAddRemoveMembers.Enabled := FFormation_Def.Formation_Index <> 0;
  end;
end;

procedure TfFormationEditorPanel.UpdateFormationMemberList;
var
  i : Integer;
  formation : TFormation;
begin
  cbbFormationMembers.Items.Clear;

  with FSelectedFormation.FFormation_Def do
    dmTTT.GetFormationAssignment(Formation_Index, FFormationMemberList);

  for i := 0 to FFormationMemberList.Count - 1 do
  begin
    formation := FFormationMemberList.Items[i];
    cbbFormationMembers.Items.AddObject(
      formation.FPlatform_Instance.Instance_Name, formation);
  end;

  if FFormationMemberList.Count > 0 then
    cbbFormationMembers.ItemIndex := 0
  else
    cbbFormationMembers.ItemIndex := -1;
end;

procedure TfFormationEditorPanel.DrawSymbol(s_name: string; s_color: TColor; X,
  Y: Integer);
begin
  with TBitmapSymbol(FBmpSymbol) do
  begin
    LoadBitmap(ExtractFilePath(ParamStr(0)) + '\data\Bitmap\' + s_name, s_color);
    Center.X := X;
    Center.Y := Y;
    Visible := true;
    Draw(img1.Canvas);
  end;
end;

procedure TfFormationEditorPanel.EditMemberDataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    with FSelectedMember.FForm_Assign do
    begin
      case TEdit(Sender).Tag of
        0: Altitude := StrToFloat(edtMemberAltitude.Text);
        1: Angle_Offset := StrToFloat(edtMemberBearing.Text);
        2: Range_from_Leader := StrToFloat(edtMemberRange.Text);
      end;
    end;

    cbbFormationMembersChange(cbbFormationMembers);;
  end;

  btnApply.Enabled := True;
end;

procedure TfFormationEditorPanel.edtNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TfFormationEditorPanel.btnDecreaseScaleClick(Sender: TObject);
begin
  if  cbbScale.ItemIndex >  0 then
  begin
    cbbScale.ItemIndex := cbbScale.ItemIndex  - 1;
    btnIncreaseScale.Enabled := true;
  end;

//  cbbScaleChange(cbbScale);

  if cbbScale.ItemIndex = 0 then
   btnDecreaseScale.Enabled := false
  else
   btnDecreaseScale.Enabled := true;
end;

procedure TfFormationEditorPanel.btnIncreaseScaleClick(Sender: TObject);
begin
  if (cbbScale.ItemIndex <= 500) then
  begin
    cbbScale.ItemIndex := cbbScale.ItemIndex + 1;
    btnDecreaseScale.Enabled := true;
  end;

//  cbbScaleChange(cbbScale);

  if (cbbScale.ItemIndex = 0) then //sampai batas akhir
   btnIncreaseScale.Enabled := true
  else
    btnIncreaseScale.Enabled := true;
end;

procedure TfFormationEditorPanel.FormCreate(Sender: TObject);
begin
  FFormationMemberList := TList.Create;
  FBmpSymbol := TBitmapSymbol.Create;
  FCoordPlatformConv := TCoordConverter.Create;
end;

procedure TfFormationEditorPanel.FormShow(Sender: TObject);
begin
  UpdateFormationMemberList;
  UpdateFormationForm;
  btnApply.Enabled := False;
  spiderWeb;
end;

procedure TfFormationEditorPanel.btnCenterHookClick(Sender: TObject);
begin
//
end;

procedure TfFormationEditorPanel.btnZoomToolClick(Sender: TObject);
begin
//
end;

procedure TfFormationEditorPanel.btnMoveToolClick(Sender: TObject);
begin
//
end;

end.

