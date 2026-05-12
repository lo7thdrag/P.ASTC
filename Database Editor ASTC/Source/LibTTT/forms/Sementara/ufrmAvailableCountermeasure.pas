unit ufrmAvailableCountermeasure;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  E_CountermeasureListType = (cltAcousticDecoy, cltAirBubble, cltChaff,
    cltInfraredDecoy, cltFloatingDecoy, cltSelfDefensiveJammer,
    cltTowedJammerDecoy, cltRadarNoiseJammer);

  TfrmAvailableCountermeasure = class(TForm)
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
    FCountermeasureListType : E_CountermeasureListType;

    FCountermeasureList : TList;
    FSelectedCountermeasure : TObject;

    procedure UpdateCountermeasureList;
  public
    property CountermeasureListType : E_CountermeasureListType
      read FCountermeasureListType write FCountermeasureListType;
  end;

var
  frmAvailableCountermeasure: TfrmAvailableCountermeasure;

implementation

uses
  uDataModuleTTT, uDBAsset_Countermeasure, ufrmAcousticDecoySummary, ufrmAirBubbleSummary,
  ufrmChaffSummary, ufrmInfraredDecoySummary, ufrmFloatingDecoySummary, ufrmSelfDefensiveJammerSummary,
  ufrmTowedJammerDecoySummary, ufrmRadarNoiseJammerSummary, ufrmUsage;

{$R *.dfm}

procedure TfrmAvailableCountermeasure.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAvailableCountermeasure.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  case FCountermeasureListType of
    cltAcousticDecoy:
    begin
      with TAcoustic_Decoy_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FAccousticDecoy_Def.Decoy_Identifier + ' - Copy';

        count := dmTTT.GetAcousticDecoyDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FAccousticDecoy_Def.Decoy_Identifier := newClassName;

        dmTTT.InsertAcousticDecoyDef(FAccousticDecoy_Def);
        dmTTT.InsertNoteStorage(20, FAccousticDecoy_Def.Decoy_Index, FNote);
      end;
    end;
    cltAirBubble:
    begin
      with TAir_Bubble_Mount(FSelectedCountermeasure) do
      begin
        newClassName := FAirBubble_Def.Air_Bubble_Identifier + ' - Copy';

        count := dmTTT.GetAirBubbleDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FAirBubble_Def.Air_Bubble_Identifier := newClassName;

        dmTTT.InsertAirBubbleDef(FAirBubble_Def);
        dmTTT.InsertNoteStorage(21, FAirBubble_Def.Air_Bubble_Index, FNote);
      end;
    end;
    cltChaff:
    begin
      with TChaff_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FChaff_Def.Chaff_Identifier + ' - Copy';

        count := dmTTT.GetChaffDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FChaff_Def.Chaff_Identifier := newClassName;

        dmTTT.InsertChaffDef(FChaff_Def);
        dmTTT.InsertNoteStorage(19, FChaff_Def.Chaff_Index, FNote);
      end;
    end;
    cltInfraredDecoy:
    begin
      with TInfrared_Decoy_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FInfraRedDecoy_Def.Infrared_Decoy_Identifier +
          ' - Copy';

        count := dmTTT.GetInfraredDecoyDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FInfraRedDecoy_Def.Infrared_Decoy_Identifier := newClassName;

        dmTTT.InsertInfraredDecoyDef(FInfraRedDecoy_Def);
        dmTTT.InsertNoteStorage(23, FInfraRedDecoy_Def.Infrared_Decoy_Index,
          FNote);
      end;
    end;
    cltFloatingDecoy:
    begin
      with TFloating_Decoy_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FFloatingDecoy_Def.Floating_Decoy_Identifier +
          ' - Copy';

        count := dmTTT.GetFloatingDecoyDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FFloatingDecoy_Def.Floating_Decoy_Identifier := newClassName;

        dmTTT.InsertFloatingDecoyDef(FFloatingDecoy_Def);
        dmTTT.InsertNoteStorage(18, FFloatingDecoy_Def.Floating_Decoy_Index,
          FNote);
      end;
    end;
    cltSelfDefensiveJammer:
    begin
      with TDefensive_Jammer_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FDefensiveJammer_Def.Defensive_Jammer_Identifier +
          ' - Copy';

        count := dmTTT.GetSelfDefensiveJammerDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDefensiveJammer_Def.Defensive_Jammer_Identifier := newClassName;

        dmTTT.InsertSelfDefensiveJammerDef(FDefensiveJammer_Def);
        dmTTT.InsertNoteStorage(16, FDefensiveJammer_Def.Defensive_Jammer_Index,
          FNote);
      end;
    end;
    cltTowedJammerDecoy:
    begin
      with TTowed_Jammer_Decoy_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FDef.Towed_Decoy_Identifier + ' - Copy';

        count := dmTTT.GetTowedJammerDecoyDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDef.Towed_Decoy_Identifier := newClassName;

        dmTTT.InsertTowedJammerDef(FDef);
        dmTTT.InsertNoteStorage(17, FDef.Towed_Decoy_Index, FNote);
      end;
    end;
    cltRadarNoiseJammer:
    begin
      with TJammer_On_Board(FSelectedCountermeasure) do
      begin
        newClassName := FDef.Jammer_Identifier + ' - Copy';

        count := dmTTT.GetRadarNoiseJammerDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDef.Jammer_Identifier := newClassName;

        dmTTT.InsertRadarNoiseJammerDef(FDef);
        dmTTT.InsertNoteStorage(15, FDef.Jammer_Index, FNote);
      end;
    end;
  end;

  UpdateCountermeasureList;
end;

procedure TfrmAvailableCountermeasure.btnEditClick(Sender: TObject);
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  case FCountermeasureListType of
    cltAcousticDecoy:
    begin
      with frmAcousticDecoySummary do
      begin
        SelectedAcousticDecoy :=
          TAcoustic_Decoy_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltAirBubble:
    begin
      with frmAirBubbleSummary do
      begin
        SelectedAirBubble := TAir_Bubble_Mount(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltChaff:
    begin
      with frmChaffSummary do
      begin

        SelectedChaff := TChaff_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltInfraredDecoy:
    begin
      with frmInfraredDecoySummary do
      begin
        SelectedInfraredDecoy :=
          TInfrared_Decoy_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltFloatingDecoy:
    begin
      with frmFloatingDecoySummary do
      begin
        SelectedFloatingDecoy :=
          TFloating_Decoy_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltSelfDefensiveJammer:
    begin
      with frmSelfDefensiveJammerSummary do
      begin
        SelectedDefensiveJammer :=
          TDefensive_Jammer_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltTowedJammerDecoy:
    begin
      with frmTowedJammerDecoySummary do
      begin
        SelectedTowedJammerDecoy :=
          TTowed_Jammer_Decoy_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
    cltRadarNoiseJammer:
    begin
      with frmRadarNoiseJammerSummary do
      begin
        SelectedRadarJammer := TJammer_On_Board(FSelectedCountermeasure);
        ShowModal;
      end;
    end;
  end;

  UpdateCountermeasureList;
end;

procedure TfrmAvailableCountermeasure.btnNewClick(Sender: TObject);
begin
  case FCountermeasureListType of
    cltAcousticDecoy:
    begin
      with frmAcousticDecoySummary do
      begin
        SelectedAcousticDecoy := TAcoustic_Decoy_On_Board.Create;
        ShowModal;
      end;
    end;
    cltAirBubble:
    begin
      with frmAirBubbleSummary do
      begin
        SelectedAirBubble := TAir_Bubble_Mount.Create;
        ShowModal;
      end;
    end;
    cltChaff:
    begin
      with frmChaffSummary do
      begin
        SelectedChaff := TChaff_On_Board.Create;
        ShowModal;
      end;
    end;
    cltInfraredDecoy:
    begin
      with frmInfraredDecoySummary do
      begin
        SelectedInfraredDecoy := TInfrared_Decoy_On_Board.Create;
        ShowModal;
      end;
    end;
    cltFloatingDecoy:
    begin
      with frmFloatingDecoySummary do
      begin
        SelectedFloatingDecoy := TFloating_Decoy_On_Board.Create;
        ShowModal;
      end;
    end;
    cltSelfDefensiveJammer:
    begin
      with frmSelfDefensiveJammerSummary do
      begin
        SelectedDefensiveJammer := TDefensive_Jammer_On_Board.Create;
        ShowModal;
      end;
    end;
    cltTowedJammerDecoy:
    begin
      with frmTowedJammerDecoySummary do
      begin
        SelectedTowedJammerDecoy := TTowed_Jammer_Decoy_On_Board.Create;
        ShowModal;
      end;
    end;
    cltRadarNoiseJammer:
    begin
      with frmRadarNoiseJammerSummary do
      begin
        SelectedRadarJammer := TJammer_On_Board.Create;
        ShowModal;
      end;
    end;
  end;

  UpdateCountermeasureList;
end;

procedure TfrmAvailableCountermeasure.btnRemoveClick(Sender: TObject);
var
  warning : Integer;
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    case FCountermeasureListType of
      cltAcousticDecoy:
      begin
        with TAcoustic_Decoy_On_Board(FSelectedCountermeasure).
        FAccousticDecoy_Def do
        begin
          if dmTTT.Check_AcousticDecoy_on_OnBoard(Decoy_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.DeleteAcoustic_Decoy_POH_Modifier(Decoy_Index);
        dmTTT.DeleteAcousticDecoyDef(Decoy_Index);
        end;
      end;
      cltAirBubble:
      begin
        with TAir_Bubble_Mount(FSelectedCountermeasure).FAirBubble_Def do
        begin
          if dmTTT.Check_AirBubble_on_mount(Air_Bubble_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.DeleteAirBubbleDef(Air_Bubble_Index);
        end;
      end;
      cltChaff:
      begin
        with TChaff_On_Board(FSelectedCountermeasure).FChaff_Def do
        begin
          if dmTTT.Check_Chaff_on_ChaffonBoard(Chaff_Index) > 0  then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.deleteChaff_Def(Chaff_Index);
        end;
      end;
      cltInfraredDecoy:
      begin
        with TInfrared_Decoy_On_Board(FSelectedCountermeasure).
        FInfraRedDecoy_Def do
        begin
          if dmTTT.Check_Infrared_On_Board(Infrared_Decoy_Index) >0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.DeleteInfraredDecoyDef(Infrared_Decoy_Index);
        end;
      end;
      cltFloatingDecoy:
      begin
        with TFloating_Decoy_On_Board(FSelectedCountermeasure).
        FFloatingDecoy_Def do
        begin
          if dmTTT.Check_Floating_On_Board(Floating_Decoy_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.DeleteFloatingDecoyDef(Floating_Decoy_Index);
        end;
      end;
      cltSelfDefensiveJammer:
      begin
        with TDefensive_Jammer_On_Board(FSelectedCountermeasure).
        FDefensiveJammer_Def do
        begin
          if dmTTT.Check_DefensiveJammer_On_Board(Defensive_Jammer_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.DeleteSelfDefensiveJammerDef(Defensive_Jammer_Index);
        end;
      end;
      cltTowedJammerDecoy:
      begin
        with TTowed_Jammer_Decoy_On_Board(FSelectedCountermeasure).FDef do
        begin
          if dmTTT.Check_TowedJammerDecoy_On_Board(Towed_Decoy_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some Vehicles');
            Exit;
          end;
        dmTTT.DeleteTowedJammerDef(Towed_Decoy_Index);
        end;
      end;
      cltRadarNoiseJammer:
      begin
        with TJammer_On_Board(FSelectedCountermeasure).FDef do
        begin
          if dmTTT.Check_RadarNoiseJammer_On_Board(Jammer_Index)> 0  then
          begin
            ShowMessage('Cannot delete, because is already in used by some vehicles');
            Exit;
          end;
        dmTTT.DeleteRadarNoiseJammerDef(Jammer_Index);
        end;
      end;
    end;

    UpdateCountermeasureList;
  end;
end;

procedure TfrmAvailableCountermeasure.btnUsageClick(Sender: TObject);
begin
  if lbSingle.ItemIndex <> -1 then
  begin
    with frmUsage do
    begin

      if FCountermeasureListType = cltAcousticDecoy then
      begin
        UIndex := 12 ;
        usage_title := 'already in used by : ' ;
        UId := TAcoustic_Decoy_On_Board(FSelectedCountermeasure).FAccousticDecoy_Def.Decoy_Index;
      end
      else if FCountermeasureListType = cltAirBubble then
      begin
        UIndex := 13;
        usage_title := 'already in used by : ' ;
        UId := TAir_Bubble_Mount(FSelectedCountermeasure).FAirBubble_Def.Air_Bubble_Index;
      end
      else if FCountermeasureListType = cltChaff then
      begin
        UIndex := 14;
        usage_title := 'already in used by : ' ;
        UId := TChaff_On_Board(FSelectedCountermeasure).FChaff_Def.Chaff_Index;
      end
      else if FCountermeasureListType = cltInfraredDecoy then
      begin
        UIndex := 19;
        usage_title := 'already in used by : ' ;
        UId := TInfrared_Decoy_On_Board(FSelectedCountermeasure).FInfraRedDecoy_Def.Infrared_Decoy_Index;
      end
      else if FCountermeasureListType = cltFloatingDecoy then
      begin
        UIndex := 15;
        usage_title := 'already in used by : ' ;
        UId := TFloating_Decoy_On_Board(FSelectedCountermeasure).FFloatingDecoy_Def.Floating_Decoy_Index;
      end
      else if FCountermeasureListType = cltSelfDefensiveJammer then
      begin
        UIndex := 16;
        usage_title := 'already in used by : ' ;
        UId := TDefensive_Jammer_On_Board(FSelectedCountermeasure).FDefensiveJammer_Def.Defensive_Jammer_Index;
      end
      else if FCountermeasureListType = cltTowedJammerDecoy then
      begin
        UIndex := 17;
        usage_title := 'already in used by : ' ;
        UId := TTowed_Jammer_Decoy_On_Board(FSelectedCountermeasure).FDef.Towed_Decoy_Index;
      end
      else if FCountermeasureListType = cltRadarNoiseJammer then
      begin
        UIndex := 18;
        usage_title := 'already in used by : ' ;
        UId := TJammer_On_Board(FSelectedCountermeasure).FDef.Jammer_Index;
      end
      else
        Exit;
      ShowModal;
    end;
  end;
end;

procedure TfrmAvailableCountermeasure.FormCreate(Sender: TObject);
begin
  FCountermeasureList := TList.Create;
end;

procedure TfrmAvailableCountermeasure.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if GetKeyState(VK_ESCAPE) < 0 then
  begin
    case Msg.CharCode of
      VK_ESCAPE: btnClose.Click;
    end;
  end;
end;

procedure TfrmAvailableCountermeasure.FormShow(Sender: TObject);
begin
  case FCountermeasureListType of
    cltAcousticDecoy: Caption := 'Accoustic Decoy';
    cltAirBubble: Caption := 'Air Bubble';
    cltChaff: Caption := 'Chaff';
    cltInfraredDecoy: Caption := 'Infrared Decoy';
    cltFloatingDecoy: Caption := 'Floating Decoy';
    cltSelfDefensiveJammer: Caption := 'Self Defensive Jammer';
    cltTowedJammerDecoy: Caption := 'Towed Jammer/Decoy';
    cltRadarNoiseJammer: Caption := 'Radar Noise Jammer';
  end;

  UpdateCountermeasureList;

  btnCopy.Enabled := False;
  btnEdit.Enabled := False;
  btnRemove.Enabled := False;
  btnUsage.Enabled := False;
end;

procedure TfrmAvailableCountermeasure.lbSingleClick(Sender: TObject);
begin
  FSelectedCountermeasure := lbSingle.Items.Objects[lbSingle.ItemIndex];

  btnCopy.Enabled := lbSingle.ItemIndex <> -1;
  btnEdit.Enabled := lbSingle.ItemIndex <> -1;
  btnRemove.Enabled := lbSingle.ItemIndex <> -1;
  btnUsage.Enabled := lbSingle.ItemIndex <> -1;
end;

procedure TfrmAvailableCountermeasure.lbSingleDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfrmAvailableCountermeasure.UpdateCountermeasureList;
var
  i : Integer;
  acousticDecoy : TAcoustic_Decoy_On_Board;
  airBubble : TAir_Bubble_Mount;
  chaff : TChaff_On_Board;
  infraredDecoy : TInfrared_Decoy_On_Board;
  floatingDecoy : TFloating_Decoy_On_Board;
  defensiveJammer : TDefensive_Jammer_On_Board;
  towedJammerDecoy : TTowed_Jammer_Decoy_On_Board;
  radarNoiseJammer : TJammer_On_Board;
begin
  lbSingle.Items.Clear;

  case FCountermeasureListType of
    cltAcousticDecoy:
    begin
      dmTTT.GetAllAcousticDecoyDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        acousticDecoy := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(
          acousticDecoy.FAccousticDecoy_Def.Decoy_Identifier, acousticDecoy);
      end;
    end;
    cltAirBubble:
    begin
      dmTTT.GetAllAirBubbleDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        airBubble := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(airBubble.FAirBubble_Def.Air_Bubble_Identifier,
          airBubble);
      end;
    end;
    cltChaff:
    begin
      dmTTT.GetChaffDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        chaff := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(chaff.FChaff_Def.Chaff_Identifier, chaff);
      end;
    end;
    cltInfraredDecoy:
    begin
      dmTTT.GetInfraredDecoyDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        infraredDecoy := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(
          infraredDecoy.FInfraRedDecoy_Def.Infrared_Decoy_Identifier,
          infraredDecoy);
      end;
    end;
    cltFloatingDecoy:
    begin
      dmTTT.GetFloatingDecoyDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        floatingDecoy := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(
          floatingDecoy.FFloatingDecoy_Def.Floating_Decoy_Identifier,
          floatingDecoy);
      end;
    end;
    cltSelfDefensiveJammer:
    begin
      dmTTT.GetSelfDefensiveJammerDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        defensiveJammer := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(
          defensiveJammer.FDefensiveJammer_Def.Defensive_Jammer_Identifier,
          defensiveJammer);
      end;
    end;
    cltTowedJammerDecoy:
    begin
      dmTTT.GetTowedJammerDecoyDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        towedJammerDecoy := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(towedJammerDecoy.FDef.Towed_Decoy_Identifier,
          towedJammerDecoy);
      end;
    end;
    cltRadarNoiseJammer:
    begin
      dmTTT.GetRadarNoiseJammerDef(FCountermeasureList);

      for i := 0 to FCountermeasureList.Count - 1 do
      begin
        radarNoiseJammer := FCountermeasureList.Items[i];
        lbSingle.Items.AddObject(radarNoiseJammer.FDef.Jammer_Identifier,
          radarNoiseJammer);
      end;
    end;
  end;
end;

end.
