unit ufrmAvailableSensor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  E_SensorListType = (sltRadar, sltSonar, sltESM, sltEOD, sltSonobuoy, sltMAD);

  TfrmAvailableSensor = class(TForm)
    lbSingle: TListBox;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnFilter: TButton;
    btnUsage: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);
    procedure lbSingleDblClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FSensorListType : E_SensorListType;

    FSensorList : TList;
    FSelectedSensor : TObject;

    procedure UpdateSensorList;
  public
    property SensorListType : E_SensorListType
      read FSensorListType write FSensorListType;
  end;

var
  frmAvailableSensor: TfrmAvailableSensor;

implementation

uses
  uDataModuleTTT, uDBAsset_Sensor, uDBAsset_Radar, uDBAsset_Sonobuoy,
  ufrmRadarSummary, ufrmSonarSummary,
  ufrmESMSummary, ufrmEODSummary, ufrmSonobuoySummary, ufrmMadSummary, ufrmUsage;

{$R *.dfm}

procedure TfrmAvailableSensor.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAvailableSensor.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  case FSensorListType of
    sltRadar:
    begin
      with TRadar_On_Board(FSelectedSensor) do
      begin
        newClassName := FDef.Radar_Identifier + ' - Copy';

        count := dmTTT.GetRadarDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDef.Radar_Identifier := newClassName;

        dmTTT.InsertRadarDef(FDef);
        dmTTT.InsertNoteStorage(7, FDef.Radar_Index, FNote);
      end;
    end;
    sltSonar:
    begin
//      with TAir_Bubble_Mount(FSelectedSensor) do
//      begin
//        newClassName := FAirBubble_Def.Air_Bubble_Identifier + ' - Copy';
//
//        count := dmTTT.GetAirBubbleDef(newClassName);
//
//        if count > 0 then
//          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';
//
//        FAirBubble_Def.Air_Bubble_Identifier := newClassName;
//
//        dmTTT.InsertAirBubbleDef(FAirBubble_Def);
//        dmTTT.InsertNoteStorage(21, FAirBubble_Def.Air_Bubble_Index, FNote);
//      end;
    end;
    sltESM:
    begin
      with TESM_On_Board(FSelectedSensor) do
      begin
        newClassName := FESM_Def.Class_Identifier + ' - Copy';

        count := dmTTT.GetESMDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FESM_Def.Class_Identifier := newClassName;

        dmTTT.InsertESMDef(FESM_Def);
        dmTTT.InsertNoteStorage(10, FESM_Def.ESM_Index, FNote);
      end;
    end;
    sltEOD:
    begin
      with TEOD_On_Board(FSelectedSensor) do
      begin
        newClassName := FEO_Def.Class_Identifier + ' - Copy';

        count := dmTTT.GetEODef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FEO_Def.Class_Identifier := newClassName;

        dmTTT.InsertEODef(FEO_Def);
        dmTTT.InsertNoteStorage(12, FEO_Def.EO_Index, FNote);
      end;
    end;
    sltSonobuoy:
    begin
      with TSonobuoy_On_Board(FSelectedSensor) do
      begin
        newClassName := FDef.Class_Identifier + ' - Copy';

        count := dmTTT.GetSonobuoyDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDef.Class_Identifier := newClassName;

        dmTTT.InsertSonobuoyDef(FDef);
        dmTTT.InsertNoteStorage(6, FDef.Sonobuoy_Index, FNote);
      end;
    end;
    sltMAD:
    begin
      with TMAD_On_Board(FSelectedSensor) do
      begin
        newClassName := FMAD_Def.Class_Identifier + ' - Copy';

        count := dmTTT.GetMADDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FMAD_Def.Class_Identifier := newClassName;

        dmTTT.InsertMADDef(FMAD_Def);
        dmTTT.InsertNoteStorage(11, FMAD_Def.MAD_Index, FNote);
      end;
    end;
  end;

  UpdateSensorList;
end;

procedure TfrmAvailableSensor.btnEditClick(Sender: TObject);
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  case FSensorListType of
    sltRadar:
    begin
     with frmRadarSummary do
      begin
        SelectedRadar := TRadar_On_Board(FSelectedSensor);
        LastName := SelectedRadar.FDef.Radar_Identifier;
        ShowModal;
      end;
    end;
    sltSonar:
    begin
//      with fAirBubble do
//      begin
//       IdAction := 2;
//        SelectedAirBubble := TAir_Bubble_Mount(FSelectedCountermeasure);
//        ShowModal;
//      end;
    end;
    sltESM:
    begin
      with frmESMSummary do
      begin
        SelectedESM := TESM_On_Board(FSelectedSensor);
        LastName := SelectedESM.FESM_Def.Class_Identifier;
        ShowModal;
      end;
    end;
    sltEOD:
    begin
      with frmEODSummary do
      begin
        SelectedEO := TEOD_On_Board(FSelectedSensor);
        LastName := SelectedEO.FEO_Def.Class_Identifier;
        ShowModal;
      end;
    end;
    sltSonobuoy:
    begin
      with frmSonobuoySummary do
      begin
        SelectedSonobuoy := TSonobuoy_On_Board(FSelectedSensor);
        LastName := SelectedSonobuoy.FDef.Class_Identifier;
        ShowModal;
      end;
    end;
    sltMAD:
    begin
      with frmMADSummary do
      begin
        SelectedMAD := TMAD_On_Board(FSelectedSensor);
        LastName := SelectedMAD.FMAD_Def.Class_Identifier;
        ShowModal;
      end;
    end;
  end;

  UpdateSensorList;
end;

procedure TfrmAvailableSensor.btnNewClick(Sender: TObject);
begin
  case FSensorListType of
    sltRadar:
    begin
      with frmRadarSummary do
      begin
        SelectedRadar := TRadar_On_Board.Create;
        ShowModal;
      end;
    end;
    sltSonar:
    begin
//      with fAirBubble do
//      begin
//        IdAction := 1;
//        SelectedAirBubble := TAir_Bubble_Mount.Create;
//        ShowModal;
//      end;
    end;
    sltESM:
    begin
      with frmESMSummary do
      begin
        SelectedESM := TESM_On_Board.Create;
        ShowModal;
      end;
    end;
    sltEOD:
    begin
      with frmEODSummary do
      begin
        SelectedEO := TEOD_On_Board.Create;
        ShowModal;
      end;
    end;
    sltSonobuoy:
    begin
      with frmSonobuoySummary do
      begin
        SelectedSonobuoy := TSonobuoy_On_Board.Create;
        ShowModal;
      end;
    end;
    sltMAD:
    begin
      with frmMADSummary do
      begin
        SelectedMAD := TMAD_On_Board.Create;
        ShowModal;
      end;
    end;
  end;

  UpdateSensorList;
end;

procedure TfrmAvailableSensor.btnRemoveClick(Sender: TObject);
var
  warning : Integer;
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    case FSensorListType of
      sltRadar:
      begin
//        with TAcoustic_Decoy_On_Board(FSelectedCountermeasure).
//        FAccousticDecoy_Def do
//        begin
//          if dmTTT.Check_AcousticDecoy_on_OnBoard(Decoy_Index) > 0 then
//          begin
//            ShowMessage('Cannot delete, because is already in used by some Vehicles');
//            Exit;
//          end;
//        dmTTT.DeleteAcoustic_Decoy_POH_Modifier(Decoy_Index);
//        dmTTT.DeleteAcousticDecoyDef(Decoy_Index);
//        end;
      end;
      sltSonar:
      begin
//        with TAir_Bubble_Mount(FSelectedCountermeasure).FAirBubble_Def do
//        begin
//          if dmTTT.Check_AirBubble_on_mount(Air_Bubble_Index) > 0 then
//          begin
//            ShowMessage('Cannot delete, because is already in used by some Vehicles');
//            Exit;
//          end;
//        dmTTT.DeleteAirBubbleDef(Air_Bubble_Index);
//        end;
      end;
      sltESM:
      begin
//        with TChaff_On_Board(FSelectedCountermeasure).FChaff_Def do
//        begin
//          if dmTTT.Check_Chaff_on_ChaffonBoard(Chaff_Index) > 0  then
//          begin
//            ShowMessage('Cannot delete, because is already in used by some Vehicles');
//            Exit;
//          end;
//        dmTTT.deleteChaff_Def(Chaff_Index);
//        end;
      end;
      sltEOD:
      begin
//        with TInfrared_Decoy_On_Board(FSelectedCountermeasure).
//        FInfraRedDecoy_Def do
//        begin
//          if dmTTT.Check_Infrared_On_Board(Infrared_Decoy_Index) >0 then
//          begin
//            ShowMessage('Cannot delete, because is already in used by some Vehicles');
//            Exit;
//          end;
//        dmTTT.DeleteInfraredDecoyDef(Infrared_Decoy_Index);
//        end;
      end;
      sltSonobuoy:
      begin
//        with TFloating_Decoy_On_Board(FSelectedCountermeasure).
//        FFloatingDecoy_Def do
//        begin
//          if dmTTT.Check_Floating_On_Board(Floating_Decoy_Index) > 0 then
//          begin
//            ShowMessage('Cannot delete, because is already in used by some Vehicles');
//            Exit;
//          end;
//        dmTTT.DeleteFloatingDecoyDef(Floating_Decoy_Index);
//        end;
      end;
      sltMAD:
      begin
//        with TDefensive_Jammer_On_Board(FSelectedCountermeasure).
//        FDefensiveJammer_Def do
//        begin
//          if dmTTT.Check_DefensiveJammer_On_Board(Defensive_Jammer_Index) > 0 then
//          begin
//            ShowMessage('Cannot delete, because is already in used by some Vehicles');
//            Exit;
//          end;
//        dmTTT.DeleteSelfDefensiveJammerDef(Defensive_Jammer_Index);
//        end;
      end;
    end;

    UpdateSensorList;
  end;
end;

procedure TfrmAvailableSensor.btnUsageClick(Sender: TObject);
begin
  if lbSingle.ItemIndex <> -1 then
  begin
    with frmUsage do
    begin

      if FSensorListType = sltRadar then
      begin
        UIndex := 1 ;
        usage_title := 'already in used by : ' ;
        UId := TRadar_On_Board(FSelectedSensor).FDef.Radar_Index;
      end
      else if FSensorListType = sltSonar then
      begin
        UIndex := 13;
        usage_title := 'already in used by : ' ;
//        UId := TSonar_On_Board(FSelectedSensor).FDef.Sonar_Index;
      end
      else if FSensorListType = sltESM then
      begin
        UIndex := 3;
        usage_title := 'already in used by : ' ;
        UId := TESM_On_Board(FSelectedSensor).FESM_Def.ESM_Index;
      end
      else if FSensorListType = sltEOD then
      begin
        UIndex := 4;
        usage_title := 'already in used by : ' ;
        UId := TEOD_On_Board(FSelectedSensor).FEO_Def.EO_Index;
      end
      else if FSensorListType = sltSonobuoy then
      begin
        UIndex := 6;
        usage_title := 'already in used by : ' ;
        UId := TSonobuoy_On_Board(FSelectedSensor).FDef.Sonobuoy_Index;
      end
      else if FSensorListType = sltMAD then
      begin
        UIndex := 5;
        usage_title := 'already in used by : ' ;
        UId := TMAD_On_Board(FSelectedSensor).FMAD_Def.MAD_Index;
      end;
        Exit  ;
      ShowModal;
    end;
  end;
end;

procedure TfrmAvailableSensor.FormCreate(Sender: TObject);
begin
  FSensorList := TList.Create;
end;

procedure TfrmAvailableSensor.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if GetKeyState(VK_ESCAPE) < 0 then
  begin
    case Msg.CharCode of
      VK_ESCAPE: btnClose.Click;
    end;
  end;
end;

procedure TfrmAvailableSensor.FormShow(Sender: TObject);
begin
  case FSensorListType of
    sltRadar: Caption := 'Radar';
    sltSonar: Caption := 'Sonar';
    sltESM: Caption := 'ESM';
    sltEOD: Caption := 'EOD';
    sltSonobuoy: Caption := 'Sonobuoy';
    sltMAD: Caption := 'MAD';
  end;

  UpdateSensorList;

  btnCopy.Enabled := False;
  btnEdit.Enabled := False;
  btnRemove.Enabled := False;
  btnUsage.Enabled := False;
end;

procedure TfrmAvailableSensor.lbSingleClick(Sender: TObject);
begin
  FSelectedSensor := lbSingle.Items.Objects[lbSingle.ItemIndex];

  btnCopy.Enabled := lbSingle.ItemIndex <> -1;
  btnEdit.Enabled := lbSingle.ItemIndex <> -1;
  btnRemove.Enabled := lbSingle.ItemIndex <> -1;
  btnUsage.Enabled := lbSingle.ItemIndex <> -1;
end;

procedure TfrmAvailableSensor.lbSingleDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfrmAvailableSensor.UpdateSensorList;
var
  i : Integer;
  Radar : TRadar_On_Board;
  //Sonar : TSonar_On_Board;
  ESM : TESM_On_Board;
  EOD : TEOD_On_Board;
  Sonobuoy : TSonobuoy_On_Board;
  MAD : TMAD_On_Board;
begin
  lbSingle.Items.Clear;

  case FSensorListType of
    sltRadar:
    begin
      dmTTT.GetAllRadarDef(FSensorList);

//      for i := 0 to FSensorList.Count - 1 do
//      begin
//        Radar := FSensorList.Items[i];
//        lbSingle.Items.AddObject(
//          Radar.FRadar_Def.Decoy_Identifier, Radar);
//      end;
    end;
    sltSonar:
    begin
      dmTTT.GetAllSonarDef(FSensorList);

//      for i := 0 to FCountermeasureList.Count - 1 do
//      begin
//        airBubble := FCountermeasureList.Items[i];
//        lbSingle.Items.AddObject(airBubble.FAirBubble_Def.Air_Bubble_Identifier,
//          airBubble);
//      end;
    end;
    sltESM:
    begin
      dmTTT.GetAllESMDef(FSensorList);

//      for i := 0 to FCountermeasureList.Count - 1 do
//      begin
//        chaff := FCountermeasureList.Items[i];
//        lbSingle.Items.AddObject(chaff.FChaff_Def.Chaff_Identifier, chaff);
//      end;
    end;
    sltEOD:
    begin
      dmTTT.GetAllEODef(FSensorList);

//      for i := 0 to FCountermeasureList.Count - 1 do
//      begin
//        infraredDecoy := FCountermeasureList.Items[i];
//        lbSingle.Items.AddObject(
//          infraredDecoy.FInfraRedDecoy_Def.Infrared_Decoy_Identifier,
//          infraredDecoy);
//      end;
    end;
    sltSonobuoy:
    begin
      dmTTT.GetAllSonobuoyDef(FSensorList);

//      for i := 0 to FCountermeasureList.Count - 1 do
//      begin
//        floatingDecoy := FCountermeasureList.Items[i];
//        lbSingle.Items.AddObject(
//          floatingDecoy.FFloatingDecoy_Def.Floating_Decoy_Identifier,
//          floatingDecoy);
//      end;
    end;
    sltMAD:
    begin
      dmTTT.GetAllMADDef(FSensorList);

//      for i := 0 to FCountermeasureList.Count - 1 do
//      begin
//        defensiveJammer := FCountermeasureList.Items[i];
//        lbSingle.Items.AddObject(
//          defensiveJammer.FDefensiveJammer_Def.Defensive_Jammer_Identifier,
//          defensiveJammer);
//      end;
    end;
    end;
  end;

end.
