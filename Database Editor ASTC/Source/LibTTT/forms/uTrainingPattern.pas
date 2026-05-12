unit uTrainingPattern;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, ExtCtrls, ComCtrls, ToolWin, MapXLib_TLB,
  ImgList, uDBAsset_Scripted, uDBPattern, uCoordConvertor;

type
  E_PatternEvent = (peShow, peAdd, peRemove);

  TfTrainingPattern = class(TForm)
    pnlTestArea: TPanel;
    ToolBar1: TToolBar;
    btnSelectPoint: TToolButton;
    btnAddPoint: TToolButton;
    btnDeletePoint: TToolButton;
    btnDeleteAllPoint: TToolButton;
    btnPrevPoint: TToolButton;
    btnNextPoint: TToolButton;
    btnLeftSeparator: TToolButton;
    btnDecreaseScale: TToolButton;
    cbbScale: TComboBox;
    btnIncreaseScale: TToolButton;
    btnRightSeparator: TToolButton;
    btnZoomTool: TToolButton;
    btnMoveTool: TToolButton;
    btnCenterHook: TToolButton;
    Shape1: TShape;
    grpCursorPosition: TGroupBox;
    lblCursorBearing: TLabel;
    lbBearingFOrigin: TLabel;
    lblCursorBearingUnit: TLabel;
    lbcenterx: TLabel;
    lblCursorDistance: TLabel;
    lbDistanceFOrigin: TLabel;
    lblCursorDistanceUnit: TLabel;
    lbcentery: TLabel;
    lblCursorGrid: TLabel;
    lGridLat: TLabel;
    lGridLong: TLabel;
    grpSelectedPoint: TGroupBox;
    lblPointBearing: TLabel;
    lbBearingSel: TLabel;
    lblPointBearingUnit: TLabel;
    lblPointDistance: TLabel;
    lbDistanceSel: TLabel;
    lblPointDistanceUnit: TLabel;
    lblPointGrid: TLabel;
    lbtlSelectedGridLat: TLabel;
    lbtlSelectedGridLong: TLabel;
    bvl1: TBevel;
    lblGroundSpeed: TLabel;
    cbbGroundSpeed: TComboBox;
    lblAltitude: TLabel;
    edtAltitude: TEdit;
    lblAltitudeUnit: TLabel;
    lblVerticalSpeed: TLabel;
    cbbVerticalSpeed: TComboBox;
    btnEditEvents: TButton;
    btnOk: TButton;
    btnClose: TButton;
    btnScreenCapture: TButton;
    Map1: TMap;
    ImageList1: TImageList;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnSelectPointClick(Sender: TObject);
    procedure btnAddPointClick(Sender: TObject);
    procedure btnDeletePointClick(Sender: TObject);
    procedure btnDeleteAllPointClick(Sender: TObject);
    procedure btnPrevPointClick(Sender: TObject);
    procedure btnNextPointClick(Sender: TObject);
    procedure btnDecreaseScaleClick(Sender: TObject);
    procedure cbbScaleChange(Sender: TObject);
    procedure btnIncreaseScaleClick(Sender: TObject);
    procedure btnZoomToolClick(Sender: TObject);
    procedure btnMoveToolClick(Sender: TObject);
    procedure btnCenterHookClick(Sender: TObject);
    procedure cbbGroundSpeedChange(Sender: TObject);
    procedure edtAltitudeKeyPress(Sender: TObject; var Key: Char);
    procedure cbbVerticalSpeedChange(Sender: TObject);
    procedure btnEditEventsClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnScreenCaptureClick(Sender: TObject);
    procedure Map1DrawUserLayer(ASender: TObject; const Layer: IDispatch;
      hOutputDC, hAttributeDC: Cardinal; const RectFull,
      RectInvalid: IDispatch);
    procedure Map1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Map1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FSelectedPredefinedPattern : TPredefined_Pattern;

    FPatternPointList : TList;
    FScriptedPatternPointList : TList;
    FSelectedPatternPoint : TPattern_Point;
    FSelectedScriptedPatternPoint : TScripted_Pattern_Point;
    FSelectedPatternEvent : E_PatternEvent;

    FCanvas : TCanvas;
    FConverter : TCoordConverter;
    FLyrDraw : CMapXLayer;

    procedure UpAllToolbarButton;
    procedure UpdateCursorPositionData(const X, Y: Integer);
    procedure UpdatePatternList(const aPatternEvent: E_PatternEvent);
    procedure UpdatePatternData;

    procedure LoadMap(aGeoset: string);
    procedure SpiderWeb(var aCanvas: TCanvas);
    procedure DrawPatternPoint(var aCanvas: TCanvas);
  public
    property SelectedPredefinedPattern : TPredefined_Pattern
      read FSelectedPredefinedPattern write FSelectedPredefinedPattern;
  end;

var
   fTrainingPattern : TfTrainingPattern;

implementation

uses
  uDataModuleTTT, uPredefinedPatternEvents, uDBEditSetting, uBaseCoordSystem,
  Math, uLibSettingTTT;

{$R *.dfm}

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

procedure TfTrainingPattern.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure TfTrainingPattern.btnEditEventsClick(Sender: TObject);
begin
  with EditEvents do
  begin
    ShowModal;
  end;
end;

procedure TfTrainingPattern.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfTrainingPattern.btnScreenCaptureClick(Sender: TObject);
begin
//  b := TBitmap.Create;
//  ScreenShot(b) ;
//  isCapturingScreen := true;
//  fScrCapture.Image1.Picture.Assign(b);
//  Map1.MousePointer := miCrossCursor;
end;

procedure TfTrainingPattern.cbbGroundSpeedChange(Sender: TObject);
begin
  with FSelectedScriptedPatternPoint do
  begin
    FData.Speed := cbbGroundSpeed.ItemIndex;

    dmTTT.UpdateScriptedPatternPoint(FData);
  end;
end;

procedure TfTrainingPattern.cbbScaleChange(Sender: TObject);
var
  z : Double;
begin
  btnDecreaseScale.Enabled := cbbScale.ItemIndex > 0;
  btnIncreaseScale.Enabled := cbbScale.ItemIndex < (cbbScale.Items.Count - 1);

  z := StrToFloat(cbbScale.Items[cbbScale.ItemIndex]);
  Map1.ZoomTo(z, Map1.CenterX, Map1.CenterY);
end;

procedure TfTrainingPattern.cbbVerticalSpeedChange(Sender: TObject);
begin
  with FSelectedScriptedPatternPoint do
  begin
    FData.Vert_Speed := cbbVerticalSpeed.ItemIndex;

    dmTTT.UpdateScriptedPatternPoint(FData);
  end;
end;

procedure TfTrainingPattern.DrawPatternPoint(var aCanvas: TCanvas);
var
  i, oldX, oldY, newX, newY : Integer;
  patternPointOld, patternPointNew : TPattern_Point;
  scriptedPointOld, scriptedPointNew : TScripted_Pattern_Point;
  dX, dY : Double;
  bmp : TBitmap;
begin
  with aCanvas do
  begin
    with FSelectedPredefinedPattern.FData do
    begin
      case Pattern_Type of
        0: //Path Pattern
        begin
          patternPointOld := nil;

          for i := 0 to FPatternPointList.Count - 1 do
          begin
            patternPointNew := FPatternPointList.Items[i];

            RangeBearingToCoord(patternPointNew.FData.Range,
              patternPointNew.FData.Heading, dX, dY);

            FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
              newX, newY);

            //Line
            if Assigned(patternPointOld) then
            begin
              RangeBearingToCoord(patternPointOld.FData.Range,
                patternPointOld.FData.Heading, dX, dY);

              FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
                oldX, oldY);

              Pen.Color := clRed;
              Pen.Width := 1;
              Brush.Style := bsClear;

              MoveTo(oldX, oldY);
              LineTo(newX, newY);
            end;

            //Point
            Pen.Color := clBlack;
            Pen.Width := 1;
            Brush.Style := bsClear;

            bmp := TBitmap.Create;
            bmp.Transparent := True;
            bmp.LoadFromFile(vSymbolSetting.ImgPath + 'Waypoint.bmp');
            Draw(newX - (bmp.Width div 2), newY - (bmp.Height div 2), bmp);
            bmp.Free;

            Font.Color := clBlack;
            Font.Size := 10;
            TextOut(newX - (bmp.Width div 2) + 16,
              newY - (bmp.Height div 2) + 6,
              IntToStr(patternPointNew.FData.Point_Number));

            patternPointOld := patternPointNew;
          end;

          if Assigned(FSelectedPatternPoint) then
          begin
            Pen.Color := clYellow;
            Pen.Width := 2;
            Brush.Style := bsClear;

            RangeBearingToCoord(FSelectedPatternPoint.FData.Range,
              FSelectedPatternPoint.FData.Heading, dX, dY);

            FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
              newX, newY);

            Rectangle(newX - 8, newY - 8, newX + 9, newY + 9);
          end;
        end;
        1: //Event Pattern
        begin
          scriptedPointOld := nil;

          for i := 0 to FScriptedPatternPointList.Count - 1 do
          begin
            scriptedPointNew := FScriptedPatternPointList.Items[i];

            RangeBearingToCoord(scriptedPointNew.FData.Range,
              scriptedPointNew.FData.Heading, dX, dY);

            FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
              newX, newY);

            //Line
            if Assigned(scriptedPointOld) then
            begin
              RangeBearingToCoord(scriptedPointOld.FData.Range,
                scriptedPointOld.FData.Heading, dX, dY);

              FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
                oldX, oldY);

              Pen.Color := clRed;
              Pen.Width := 1;
              Brush.Style := bsClear;

              MoveTo(oldX, oldY);
              LineTo(newX, newY);
            end;

            //Point
            Pen.Color := clBlack;
            Pen.Width := 1;
            Brush.Style := bsClear;

            bmp := TBitmap.Create;
            bmp.Transparent := True;
            bmp.LoadFromFile(vSymbolSetting.ImgPath + 'Waypoint.bmp');
            Draw(newX - (bmp.Width div 2), newY - (bmp.Height div 2), bmp);
            bmp.Free;

            Font.Color := clBlack;
            Font.Size := 10;
            TextOut(newX - (bmp.Width div 2) + 16,
              newY - (bmp.Height div 2) + 6,
              IntToStr(scriptedPointNew.FData.Point_Number));

            scriptedPointOld := scriptedPointNew;
          end;

          if Assigned(FSelectedScriptedPatternPoint) then
          begin
            Pen.Color := clYellow;
            Pen.Width := 2;
            Brush.Style := bsClear;

            RangeBearingToCoord(FSelectedScriptedPatternPoint.FData.Range,
              FSelectedScriptedPatternPoint.FData.Heading, dX, dY);

            FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
              newX, newY);

            Rectangle(newX - 7, newY - 7, newX + 8, newY + 8);
          end;
        end;
      end;
    end;
  end;
end;

procedure TfTrainingPattern.SpiderWeb(var aCanvas: TCanvas);
var
  centerX, centerY, radius, i, wCross, hCross : Integer;
begin
  with aCanvas do
  begin
    Brush.Color := clLtGray;
    Pen.Color := clLtGray;
    Rectangle(0, 0, Map1.Width, Map1.Height);

    Pen.Color := clBlack;
    Pen.Width := 1;
    Brush.Style := bsClear;

    centerX := Map1.Width div 2;
    centerY := Map1.Height div 2;

    radius := (centerY - 20) div 4;

    for i := 1 to 4 do
    begin
      Ellipse(centerX - (i * radius), centerY - (i * radius),
        centerX + (i * radius), centerY + (i * radius));
    end;

    MoveTo(centerX, centerY - (radius * 4));
    LineTo(centerX, centerY + (radius * 4));
    MoveTo(centerX - (radius * 4), centerY);
    LineTo(centerX + (radius * 4), centerY);

    wCross := Round(Cos(DegToRad(45)) * (radius * 4));
    hCross := Round(Sin(DegToRad(45)) * (radius * 4));

    MoveTo(centerX - wCross, centerY - hCross);
    LineTo(centerX + wCross, centerY + hCross);
    MoveTo(centerX + wCross, centerY - hCross);
    LineTo(centerX - wCross, centerY + hCross);
  end;
end;

procedure TfTrainingPattern.btnDecreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex - 1;
  cbbScaleChange(cbbScale);
end;

procedure TfTrainingPattern.btnDeleteAllPointClick(Sender: TObject);
begin
  with FSelectedPredefinedPattern.FData do
  begin
    case Pattern_Type of
      0: dmTTT.DeletePatternPoint(Pattern_Index);
      1: dmTTT.DeleteScriptedPatternPoint(1, Pattern_Index);
    end;
  end;

  UpdatePatternList(peRemove);
  UpdatePatternData;
  Map1.Repaint;
end;

procedure TfTrainingPattern.btnDeletePointClick(Sender: TObject);
var
  i, itemIndex : Integer;
  patternPoint : TPattern_Point;
  scriptedPoint : TScripted_Pattern_Point;
begin
  with FSelectedPredefinedPattern.FData do
  begin
    case Pattern_Type of
      0:
      begin
        itemIndex := FPatternPointList.IndexOf(FSelectedPatternPoint);

        dmTTT.DeletePatternPoint(Pattern_Index,
          FSelectedPatternPoint.FData.Point_Number);

        for i := itemIndex + 1 to FPatternPointList.Count - 1 do
        begin
          patternPoint := FPatternPointList.Items[i];
          patternPoint.FData.Point_Number :=
            patternPoint.FData.Point_Number - 1;
          dmTTT.UpdatePatternPoint(patternPoint.FData);
        end;
      end;
      1:
      begin
        itemIndex := FScriptedPatternPointList.
          IndexOf(FSelectedScriptedPatternPoint);

        dmTTT.DeleteScriptedPatternPoint(2,
          FSelectedScriptedPatternPoint.FData.Scripted_Pattern_Index);

        for i := itemIndex + 1 to FScriptedPatternPointList.Count - 1 do
        begin
          scriptedPoint := FScriptedPatternPointList.Items[i];
          scriptedPoint.FData.Point_Number :=
            scriptedPoint.FData.Point_Number - 1;
          dmTTT.UpdateScriptedPatternPoint(scriptedPoint.FData);
        end;
      end;
    end;
  end;

  UpdatePatternList(peRemove);
  UpdatePatternData;
  Map1.Repaint;
end;

procedure TfTrainingPattern.btnIncreaseScaleClick(Sender: TObject);
begin
  cbbScale.ItemIndex := cbbScale.ItemIndex + 1;
  cbbScaleChange(cbbScale);
end;

procedure TfTrainingPattern.edtAltitudeKeyPress(Sender: TObject; var Key: Char);
var
  value : Double;
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
    Key := #0;

  if Key = #13 then
  begin
    value := StrToFloat(edtAltitude.Text);
    edtAltitude.Text := FormatFloat('0.00', value);

    with FSelectedScriptedPatternPoint do
    begin
      FData.Altitude := value;

      dmTTT.UpdateScriptedPatternPoint(FData);
    end;
  end;
end;

procedure TfTrainingPattern.Map1DrawUserLayer(ASender: TObject;
  const Layer: IDispatch; hOutputDC, hAttributeDC: Cardinal; const RectFull,
  RectInvalid: IDispatch);
begin
  if not Assigned(FCanvas) then
    Exit;

  FCanvas.Handle := hOutputDC;

  SpiderWeb(FCanvas);
  DrawPatternPoint(FCanvas);
end;

procedure TfTrainingPattern.Map1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, iX, iY: Integer;
  patternPoint : TPattern_Point;
  scriptedPoint : TScripted_Pattern_Point;
  dX, dY : Double;
begin
  case Map1.MousePointer of
    miArrowCursor:
    begin
      with FSelectedPredefinedPattern.FData do
      begin
        case Pattern_Type of
          0: //Path Pattern
          begin
            for i := 0 to FPatternPointList.Count - 1 do
            begin
              patternPoint := FPatternPointList.Items[i];

              RangeBearingToCoord(patternPoint.FData.Range,
                patternPoint.FData.Heading, dX, dY);

              FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY, iX,
                iY);

              if (X >= iX - 7) and
                (X <= iX + 8) and
                (Y >= iY - 7) and
                (Y <= iY + 8) then
              begin
                FSelectedPatternPoint := patternPoint;
                Break;
              end;
            end;
          end;
          1: //Event Pattern
          begin
            for i := 0 to FScriptedPatternPointList.Count - 1 do
            begin
              scriptedPoint := FScriptedPatternPointList.Items[i];

              RangeBearingToCoord(scriptedPoint.FData.Range,
                scriptedPoint.FData.Heading, dX, dY);

              FConverter.ConvertToScreen(Map1.CenterX + dX, Map1.CenterY + dY,
                iX, iY);

              if (X >= iX - 7) and
                (X <= iX + 8) and
                (Y >= iY - 7) and
                (Y <= iY + 8) then
              begin
                FSelectedScriptedPatternPoint := scriptedPoint;
                Break;
              end;
            end;
          end;
        end;
      end;
    end;
    miCrossCursor:
    begin
      FConverter.ConvertToMap(X, Y, dX, dY);

      with FSelectedPredefinedPattern.FData do
      begin
        case Pattern_Type of
          0: //Path Pattern
          begin
            FSelectedPatternPoint := TPattern_Point.Create;

            with FSelectedPatternPoint do
            begin
              FData.Pattern_Index := FSelectedPredefinedPattern.FData.
                Pattern_Index;
              FData.Point_Number := FPatternPointList.Count + 1;
              FData.Heading := CalcBearing(Map1.CenterX, Map1.CenterY, dX, dY);
              FData.Range := CalcRange(Map1.CenterX, Map1.CenterY, dX, dY);

              dmTTT.InsertPatternPoint(FData);
            end;
          end;
          1: //Event Pattern
          begin
            FSelectedScriptedPatternPoint := TScripted_Pattern_Point.Create;

            with FSelectedScriptedPatternPoint do
            begin
              FData.Point_Number := FScriptedPatternPointList.Count + 1;
              FData.Pattern_Index := FSelectedPredefinedPattern.FData.
                Pattern_Index;
              FData.Heading := CalcBearing(Map1.CenterX, Map1.CenterY, dX, dY);
              FData.Range := CalcRange(Map1.CenterX, Map1.CenterY, dX, dY);

              dmTTT.InsertScriptedPatternPoint(FData);
            end;
          end;
        end;
      end;

      UpdatePatternList(peAdd);
    end;
  end;

  UpdatePatternData;
  Map1.Repaint;
end;

procedure TfTrainingPattern.Map1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  UpdateCursorPositionData(X, Y);
end;

procedure TfTrainingPattern.Map1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//
end;

procedure TfTrainingPattern.FormCreate(Sender: TObject);
begin
  FPatternPointList := TList.Create;
  FScriptedPatternPointList := TList.Create;

  FCanvas := TCanvas.Create;
  FConverter := TCoordConverter.Create;
end;

procedure TfTrainingPattern.UpAllToolbarButton;
begin
  btnSelectPoint.Down := False;
  btnAddPoint.Down := False;
  btnDeletePoint.Down := False;
  btnZoomTool.Down := False;
  btnMoveTool.Down := False;
  btnCenterHook.Down := False;
end;

procedure TfTrainingPattern.UpdateCursorPositionData(const X, Y: Integer);
var
  dx, dy, diffX, diffY : Double;
begin
  FConverter.ConvertToMap(X, Y, dx, dy);

  lbBearingFOrigin.Caption := FormatFloat('0.00',
    CalcBearing(Map1.CenterX, Map1.CenterY, dx, dy));
  lbDistanceFOrigin.Caption := FormatFloat('0.00',
    CalcRange(Map1.CenterX, Map1.CenterY, dx, dy));

  diffX := Abs(dx - Map1.CenterX) * 60;
  diffY := Abs(dy - Map1.CenterY) * 60;

  if dy < Map1.CenterY then
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm S'
  else
    lGridLat.Caption := FormatFloat('0.00', diffY) + ' nm N';

  if dx < Map1.CenterX then
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm W'
  else
    lGridLong.Caption := FormatFloat('0.00', diffX) + ' nm E';
end;

procedure TfTrainingPattern.UpdatePatternData;
var
  dX, dY, diffX, diffY : Double;
begin
  with FSelectedPredefinedPattern.FData do
  begin
    bvl1.Visible := Pattern_Type = 1;
    lblGroundSpeed.Visible := Pattern_Type = 1;
    cbbGroundSpeed.Visible := Pattern_Type = 1;
    lblAltitude.Visible := Pattern_Type = 1;
    edtAltitude.Visible := Pattern_Type = 1;
    lblAltitudeUnit.Visible := Pattern_Type = 1;
    lblVerticalSpeed.Visible := Pattern_Type = 1;
    cbbVerticalSpeed.Visible := Pattern_Type = 1;
    btnEditEvents.Visible := Pattern_Type = 1;

    case Pattern_Type of
      0: //Path Pattern
      begin
        if Assigned(FSelectedPatternPoint) then
        begin
          with FSelectedPatternPoint.FData do
          begin
            lbBearingSel.Caption := FormatFloat('0.0', Heading);
            lbDistanceSel.Caption := FormatFloat('0.0', Range);

            RangeBearingToCoord(Range, Heading, dX, dY);

            diffX := Abs(dX) * 60;
            diffY := Abs(dY) * 60;

            if dy < Map1.CenterY then
              lbtlSelectedGridLat.Caption := FormatFloat('0.00', diffY) +
                ' nm S'
            else
              lbtlSelectedGridLat.Caption := FormatFloat('0.00', diffY) +
                ' nm N';

            if dx < Map1.CenterX then
              lbtlSelectedGridLong.Caption := FormatFloat('0.00', diffX) +
                ' nm W'
            else
              lbtlSelectedGridLong.Caption := FormatFloat('0.00', diffX) +
                ' nm E';
          end;
        end
        else
        begin
          lbBearingSel.Caption := '-';
          lbDistanceSel.Caption := '-';
          lbtlSelectedGridLat.Caption := '-';
          lbtlSelectedGridLong.Caption := '-';
        end;
      end;
      1: //Event Pattern
      begin
        if Assigned(FSelectedScriptedPatternPoint) then
        begin
          with FSelectedScriptedPatternPoint.FData do
          begin
            lbBearingSel.Caption := FormatFloat('0.0', Heading);
            lbDistanceSel.Caption := FormatFloat('0.0', Range);

            diffX := Abs(dX) * 60;
            diffY := Abs(dY) * 60;

            if dy < Map1.CenterY then
              lbtlSelectedGridLat.Caption := FormatFloat('0.00', diffY) +
                ' nm S'
            else
              lbtlSelectedGridLat.Caption := FormatFloat('0.00', diffY) +
                ' nm N';

            if dx < Map1.CenterX then
              lbtlSelectedGridLong.Caption := FormatFloat('0.00', diffX) +
                ' nm W'
            else
              lbtlSelectedGridLong.Caption := FormatFloat('0.00', diffX) +
                ' nm E';

            cbbGroundSpeed.ItemIndex := Speed;
            edtAltitude.Text := FormatFloat('0.0', Altitude);
            cbbVerticalSpeed.ItemIndex := Vert_Speed;
          end;
        end
        else
        begin
          lbBearingSel.Caption := '-';
          lbDistanceSel.Caption := '-';
          lbtlSelectedGridLat.Caption := '-';
          lbtlSelectedGridLong.Caption := '-';
          cbbGroundSpeed.ItemIndex := -1;
          edtAltitude.Text := '-';
          cbbVerticalSpeed.ItemIndex := -1;
        end;
      end;
    end;
  end;
end;

procedure TfTrainingPattern.UpdatePatternList(
  const aPatternEvent: E_PatternEvent);
begin
  with FSelectedPredefinedPattern.FData do
  begin
    case Pattern_Type of
      0:
      begin
        dmTTT.GetPatternPoint(Pattern_Index, FPatternPointList);

        if FPatternPointList.Count > 0 then
        begin
          case aPatternEvent of
            peShow: FSelectedPatternPoint := FPatternPointList.Items[0];
            peAdd: FSelectedPatternPoint :=
              FPatternPointList.Items[FPatternPointList.Count - 1];
            peRemove: FSelectedPatternPoint := nil;
          end;
        end
        else
          FSelectedPatternPoint := nil;
      end;
      1:
      begin
        dmTTT.GetScriptedPatternPoint(Pattern_Index, FScriptedPatternPointList);

        if FScriptedPatternPointList.Count > 0 then
        begin
          case aPatternEvent of
            peShow: FSelectedScriptedPatternPoint :=
              FScriptedPatternPointList.Items[0];
            peAdd: FSelectedScriptedPatternPoint := FScriptedPatternPointList.
              Items[FScriptedPatternPointList.Count - 1];
            peRemove: FSelectedScriptedPatternPoint := nil;
          end;
        end
        else
          FSelectedScriptedPatternPoint := nil;
      end;
    end;
  end;
end;

procedure TfTrainingPattern.FormShow(Sender: TObject);
var
  centerX, centerY : Double;
begin
  UpdatePatternList(peShow);

  LoadMap(vAppDBSetting.Pattern);
  FConverter.FMap := Map1;

  FConverter.ConvertToMap(Map1.Width div 2, Map1.Height div 2,
    centerX, centerY);

  Map1.CenterX := centerX;
  Map1.CenterY := centerY;

  btnSelectPoint.Click;
  cbbScale.ItemIndex := cbbScale.Items.Count - 1;
  cbbScaleChange(cbbScale);

  UpdatePatternData;
  Map1.Repaint;
end;

procedure TfTrainingPattern.LoadMap(aGeoset: string);
var
  z : OleVariant;
  i : Integer;
  mInfo : CMapXLayerInfo;
begin
  if Map1 = nil then
    Exit;

  InitOleVariant(z);
  Map1.Layers.RemoveAll;
  Map1.Geoset := aGeoset;

  if aGeoset <> '' then
  begin
    for i := 1 to Map1.Layers.Count do
    begin
      Map1.Layers.Item(i).Selectable := False;
      Map1.Layers.Item(i).Editable := False;
    end;

    mInfo := CoLayerInfo.Create;
    mInfo.type_ := miLayerInfoTypeUserDraw;
    mInfo.AddParameter('Name', 'LYR_DRAW');
    FLyrDraw := Map1.Layers.Add(mInfo, 1);

    Map1.Layers.AnimationLayer := FLyrDraw;
    Map1.MapUnit := miUnitNauticalMile;
  end;

  Map1.BackColor := clSkyBlue;
end;

procedure TfTrainingPattern.btnCenterHookClick(Sender: TObject);
begin
//
end;

procedure TfTrainingPattern.btnZoomToolClick(Sender: TObject);
begin
  Map1.CurrentTool := miZoomInTool;
  Map1.MousePointer := miZoomInCursor;
end;

procedure TfTrainingPattern.btnMoveToolClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnMoveTool.Down := True;

  Map1.MousePointer := miCenterCursor;
end;

procedure TfTrainingPattern.btnNextPointClick(Sender: TObject);
var
  i : Integer;
  patternPoint : TPattern_Point;
begin
  for i := 0 to FPatternPointList.Count - 1 do
  begin
    patternPoint := FPatternPointList.Items[i];

    if (patternPoint = FSelectedPatternPoint) and
      (i + 1 <= FPatternPointList.Count - 1) then
    begin
      FSelectedPatternPoint := FPatternPointList[i + 1];
      Break;
    end;
  end;

  UpdatePatternData;
  Map1.Repaint;
end;

procedure TfTrainingPattern.btnPrevPointClick(Sender: TObject);
var
  i : Integer;
  patternPoint : TPattern_Point;
begin
  for i := 0 to FPatternPointList.Count - 1 do
  begin
    patternPoint := FPatternPointList.Items[i];

    if (patternPoint = FSelectedPatternPoint) and
      (i - 1 >= 0) then
    begin
      FSelectedPatternPoint := FPatternPointList[i - 1];
      Break;
    end;
  end;

  UpdatePatternData;
  Map1.Repaint;
end;

procedure TfTrainingPattern.btnSelectPointClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnSelectPoint.Down := True;

  Map1.MousePointer := miArrowCursor;
end;

procedure TfTrainingPattern.btnAddPointClick(Sender: TObject);
begin
  UpAllToolbarButton;
  btnAddPoint.Down := True;

  Map1.MousePointer := miCrossCursor;
end;

end.

