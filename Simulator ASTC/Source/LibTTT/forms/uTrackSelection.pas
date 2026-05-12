unit uTrackSelection;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, uSimObjects, uT3Unit, tttData, ExtCtrls,
  Buttons,
  uMainOverlay, uRecord, uDynamicOverlay, uBaseCoordSystem, uCoordConvertor, uLibSettingTTT,
  uLine;

type
  TfTrackSelection = class(TForm)
    btnCancel: TButton;
    pnl1: TPanel;
    edtTrack: TEdit;
    lb1: TLabel;
    edtRange: TEdit;
    edtBearing: TEdit;
    rg1: TRadioGroup;
    lb6: TLabel;
    edtRotation: TEdit;
    lb7: TLabel;
    btnOk: TButton;
    btnTargetSearch: TSpeedButton;
    EdtTrackNumber: TEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnTargetSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    FNoTrack  : Integer;
    FConverter: TCoordConverter;
    procedure SetConverter(const Value: TCoordConverter);

  public
    TrackControlled : TSimObject;
    procedure ShowStreamData(AStream: TStream);
    property Converter : TCoordConverter read FConverter write SetConverter;
  end;

var
  fTrackSelection: TfTrackSelection;

implementation

uses
  uSimMgr_Client, uT3Vehicle, ufTacticalDisplay, uT3DetectedTrack,
  uOverlayEditorStatic, uDBAssetObject, uGameData_TTT;

{$R *.dfm}

procedure TfTrackSelection.btnCancelClick(Sender: TObject);
begin
  close;
  fOverlayEditorStatic.Show;
end;

procedure TfTrackSelection.btnOkClick(Sender: TObject);
var
  a_Olay        : TResource_Allocation;
  DynamicTrack  : TRecCmd_OverlayDynamicTrack;
  i, j          : Integer;
  nmOverlay     : string;
   Fs           : TFileStream;
//   aCnv: tCanvas;
begin
  if edtTrack.Text = '' then Exit;

  if simMgrClient.ISInstructor then
    DynamicTrack.Cubicle := 0
  else
    DynamicTrack.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

  j:=1;
  with fOverlayEditorStatic do
  begin
    {Ngitung jumlah kapal yg d track k template ini}
    if lvTrack.Items.Count <> 0 then
    begin
      for I := 0 to lvTrack.Items.Count - 1 do
      begin
        if lvTrack.Items[i].Caption = edtTrack.Text then
          j := (StrToInt(lvTrack.Items[i].SubItems.Strings[5]))+1;
      end;
    end;
    FNoTrack := j;

    {cek apakah cubicle ato controler, jk cubicle tidak bs edit}
    if DynamicTrack.Cubicle = (StrToInt(lvTemplates.Selected.SubItems.Strings[1]))then
    begin
      nmOverlay := vMapSetting.OverlayPath + TListItem(lvTemplates.Selected).Caption + '.dat';
      if not FileExists(nmOverlay) then
      begin
        Showmessage('File tidak ada');
        exit;
      end;

      try
        Fs := TFileStream.Create(nmOverlay, fmOPENREAD );
        ShowStreamData(Fs);
      except
        Showmessage('Couldn''t read file!' + #13 + SysErrorMessage(GetLastError));
      end;

      a_Olay                  := lvTemplates.Selected.Data;
      DynamicTrack.TemplateName   := lvTemplates.Selected.Caption;
      DynamicTrack.NameTrack  := edtTrack.Text;
      DynamicTrack.IdTrack    := StrToInt(EdtTrackNumber.Text);
      DynamicTrack.Idx        := a_Olay.FDynamicTrack.Count;
      DynamicTrack.Brg        := StrToInt(edtBearing.Text);
      DynamicTrack.Rng        := StrToFloat(edtRange.Text);
      DynamicTrack.Orientation    := rg1.ItemIndex;
      DynamicTrack.Rot        := StrToInt(edtRotation.Text);
      DynamicTrack.Notrack    := j;
      simMgrClient.netSend_CmdDynamicTrack(DynamicTrack);
    end
    else
      Exit;
  end;
  close;
end;

procedure TfTrackSelection.btnTargetSearchClick(Sender: TObject);
var
  aObject : TSimObject;
begin
//  if not Assigned(frmTacticalDisplay.focusedTrack) then //simMgrClient.ControlledPlatform
  if not Assigned(simMgrClient.ControlledPlatform) then
    Exit;

//  aObject := frmTacticalDisplay.focusedTrack;
  aObject := simMgrClient.ControlledPlatform;

  TrackControlled := aObject;
  if aObject is TT3PlatformInstance then
  begin
    edtTrack.Text       := TT3PlatformInstance(aObject).Track_ID;
    EdtTrackNumber.Text := IntToStr(TT3PlatformInstance(aObject).InstanceIndex);
  end
  else if aObject is TT3DetectedTrack then
    edtTrack.Text := IntToStr(TT3DetectedTrack(aObject).TrackNumber);
end;

procedure TfTrackSelection.FormShow(Sender: TObject);
begin
  edtTrack.Text     := '';
  edtRange.Text     := '0.00';
  edtBearing.Text   := '000';
  edtRotation.Text  := '0';
  rg1.ItemIndex     := 0;
end;

procedure TfTrackSelection.SetConverter(const Value: TCoordConverter);
begin
  FConverter := Value;
end;

procedure TfTrackSelection.ShowStreamData(AStream: TStream);
var
  I        : integer;
  lastPos     : int64;
  HeaderData  : TFileHeader;
  LineData    : TLineRecord;
  ArcData     : TArcRecord;
  TableData   : TTableRecord;
  RectData    : TRectRecord;
  PolygonData : TPolygonRecord;
  CircleData  : TCircleRecord;
  EllipseData : TEllipseRecord;
  SectorData  : TSectorRecord;
  TextData    : TTextRecord;
  recordDynamic     : TRecCmd_OverlayDynamicShape;
begin
   { AStream.Size = size of all stream -> bytes }
   AStream.Position := 0;
   lastPos := AStream.Position;

   while AStream.Position < AStream.Size do
   begin
     AStream.Read(HeaderData, SizeOf(HeaderData));
     with HeaderData do
     begin
       if ID = 1 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(LineData, SizeOf(LineData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 1;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';
          recordDynamic.Color     := LineData.color;
          recordDynamic.Range1    := LineData.Range1;
          recordDynamic.Range2    := LineData.Range2;
          recordDynamic.Bearing1  := LineData.Bearing1;
          recordDynamic.Bearing2  := LineData.Bearing2;

          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
       end;

       if ID = 2 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(ArcData, SizeOf(ArcData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 2;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';
          recordDynamic.Color     := ArcData.color;
          recordDynamic.Range1    := ArcData.Range1;
          recordDynamic.Bearing1  := ArcData.Bearing1;
          recordDynamic.Radius1   := ArcData.Rad;
          recordDynamic.StartAngle:= ArcData.startAngle;
          recordDynamic.EndAngle  := ArcData.endAngle;

          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
       end;

       if ID = 3 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(TableData, SizeOf(TableData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 3;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := (StrToInt(edtRotation.Text)+ TableData.angle);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';
          recordDynamic.Color     := TableData.color;
          recordDynamic.Range1    := TableData.Range1;
          recordDynamic.Bearing1  := TableData.Bearing1;
          recordDynamic.Kolom     := TableData.column;
          recordDynamic.Baris     := TableData.row;
          recordDynamic.Radius1   := TableData.cHeight;
          recordDynamic.Radius2   := TableData.cWidth;

          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
       end;

       if ID = 4 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(RectData, SizeOf(RectData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 4;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';

          recordDynamic.Color     := RectData.color;
          recordDynamic.Range1    := RectData.Range1;
          recordDynamic.Range2    := RectData.Range2;
          recordDynamic.Bearing1  := RectData.Bearing1;
          recordDynamic.Bearing2  := RectData.Bearing2;

          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
       end;

       if ID = 5 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(PolygonData, SizeOf(PolygonData));

          recordDynamic.ShapeID   := 5;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';

          recordDynamic.Color     := PolygonData.color;
          recordDynamic.Baris     := PolygonData.tempLengthArray;

          SetLength(PolygonData.posPolygon, PolygonData.tempLengthArray);
          for I := 0 to PolygonData.tempLengthArray - 1 do
          begin
              AStream.Read(PolygonData.posPolygon[I].Longitude, SizeOf(TMapPt));
              AStream.Read(PolygonData.posPolygon[I].Latitude,  SizeOf(TMapPt));
          end;

          SetLength(PolygonData.TitikPolygon, PolygonData.tempLengthArray);
          for I := 0 to recordDynamic.Baris - 1 do
          begin
            AStream.Read(PolygonData.TitikPolygon[I].Range, SizeOf(TBeaRng));
            AStream.Read(PolygonData.TitikPolygon[I].Bearing,  SizeOf(TBeaRng));
            recordDynamic.Vertex[I,0] := I+1;
            recordDynamic.Vertex[I,1] := CalcRange(0, 0, PolygonData.posPolygon[I].Longitude, PolygonData.posPolygon[I].Latitude);
            recordDynamic.Vertex[I,2] := CalcBearing(0, 0, PolygonData.posPolygon[I].Longitude, PolygonData.posPolygon[I].Latitude);
          end;

          SetLength(PolygonData.gridPolygon, PolygonData.tempLengthArray);
          for I := 0 to PolygonData.tempLengthArray - 1 do
          begin
              AStream.Read(PolygonData.gridPolygon[I].gridLongitude, SizeOf(TGrid));
              AStream.Read(PolygonData.gridPolygon[I].gridLatitude,  SizeOf(TGrid));
          end;

          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
       end;

       if ID = 6 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(CircleData, SizeOf(CircleData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 6;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';

          recordDynamic.Color     := CircleData.color;
          recordDynamic.Range1    := CircleData.Range1;
          recordDynamic.Bearing1  := CircleData.Bearing1;
          recordDynamic.Radius1   := CircleData.Rad;
          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);

       end;

       if ID = 7 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(EllipseData, SizeOf(EllipseData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 7;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';

          recordDynamic.Color     := EllipseData.color;
          recordDynamic.Range1    := EllipseData.Range1;
          recordDynamic.Bearing1  := EllipseData.Bearing1;
          recordDynamic.Radius1   := EllipseData.Ver;
          recordDynamic.Radius2   := EllipseData.Hor;
          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);

       end;

       if ID = 8 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(SectorData, SizeOf(SectorData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 8;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';
          recordDynamic.Color     := SectorData.color;
          recordDynamic.Range1    := SectorData.Range1;
          recordDynamic.Bearing1  := SectorData.Bearing1;
          recordDynamic.Radius1   := SectorData.Radin;
          recordDynamic.Radius2   := SectorData.RadOut;
          recordDynamic.StartAngle:= SectorData.startAngle;
          recordDynamic.EndAngle  := SectorData.endAngle;

          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);
       end;

       if ID = 9 then
       begin
          AStream.Seek(lastPos, TSeekOrigin.soBeginning);
          AStream.Read(TextData, SizeOf(TextData));

          if simMgrClient.ISInstructor then
            recordDynamic.Cubicle := 0
          else
            recordDynamic.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

          recordDynamic.ShapeID   := 9;
          recordDynamic.TemplateName:= fOverlayEditorStatic.lvTemplates.Selected.Caption;
          recordDynamic.NoTrack   := FNoTrack;
          recordDynamic.SenderID  := StrToInt(EdtTrackNumber.Text);
          recordDynamic.Rotasi    := StrToInt(edtRotation.Text);
          recordDynamic.NoList    := -1;
          if rg1.ItemIndex = 0 then
            recordDynamic.Bearing := 'T'
          else
            recordDynamic.Bearing := 'R';
          recordDynamic.Color     := TextData.color;
          recordDynamic.Size      := TextData.size;
          recordDynamic.Words      := TextData.words;
          recordDynamic.Range1    := TextData.Range1;
          recordDynamic.Bearing1  := TextData.Bearing1;
          simMgrClient.netSend_CmdOverlayDynamicShape(recordDynamic);

       end;
     end;
     lastPos := AStream.Position;
   end;
   AStream.Free;
end;

end.
