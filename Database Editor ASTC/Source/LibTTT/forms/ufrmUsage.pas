unit ufrmUsage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, uDBAssetObject, Vcl.Imaging.pngimage,
  newClassASTT, uSimContainers;

type
  TfrmUsage = class(TForm)
    PrintDialog1: TPrintDialog;
    pnl1Title: TPanel;
    lblTitle: TLabel;
    pnl2ListView: TPanel;
    ListView1: TListView;
    pnl3Button: TPanel;
    btnOk: TButton;
    btnPrint: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnPrint1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    uList1, uList2, uList3 : Tlist;
    UIndex : integer;
    UId : integer;
    usage_title,name_usage: string;
    procedure getDataUsage;
    procedure showDataUsage;
  end;

var
  frmUsage: TfrmUsage;

implementation

{$R *.dfm}
uses
  uDataModuleTTT, uDBAsset_Countermeasure, uDBAsset_Radar, uDBAsset_Sonar,
  uDBAsset_Sensor, uDBAsset_Sonobuoy, uDBAsset_Weapon, Printers,
  uDBAsset_Runtime_Platform_Library, uDBPattern, uDBAsset_GameEnvironment,
  uDBAsset_Vehicle,uDBGame_Defaults;

procedure TfrmUsage.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUsage.btnPrint1Click(Sender: TObject);
var
  pWidth, pHeight, i: Integer;
  v, h: Real;
  CurItem, iColumnCount: Integer;
  aCols: array[0..100] of Integer;
  iTotColsWidth, iInnerWidth, TopMarg, LinesOnPage, CurLine, TekstHeight, CurCol: Integer;
  CurRect: TRect;
  CurStr: string;
  CurLeft, NumPages, TmpPos: Integer;

begin
  if PrintDialog1.Execute then
  begin
    iColumnCount := Listview1.Columns.Count;

    Printer.Title := 'Listview Print';
    Printer.Copies := 1;
    Printer.Orientation := poPortrait;
    Printer.BeginDoc;
    pHeight := Printer.PageHeight;
    pWidth := Printer.PageWidth;

    v := (pHeight + (2 * GetDeviceCaps(Printer.Handle, PHYSICALOFFSETY))) / (29.7 * 0.95);
    //0.95 is a strange correction factor on the clients printer
    h := (pWidth + (2 * GetDeviceCaps(Printer.Handle, PHYSICALOFFSETX))) / 21;

    // calculate total width
    iTotColsWidth := 0;
    for i := 0 to iColumnCount - 1 do
      iTotColsWidth := iTotColsWidth + Listview1.Columns[i].Width;

    // calculate space between lMargin and rMargin
    aCols[0] := Round(1.5 * h); //left margin ?
    aCols[iColumnCount + 0] := pWidth - Round(1.5 * h); //rigth margin ?
    iInnerWidth := aCols[iColumnCount + 0] - aCols[0]; // space between margins ?

    //calculate start of each column
    for i := 0 to iColumnCount - 1 do
      aCols[i + 1] := aCols[i] + Round(Listview1.Columns[i].Width / iTotColsWidth * iInnerWidth);
    TopMarg := Round(2.5 * v);
    with Printer.Canvas do
    begin
      Font.Size := 10;
      Font.Style := [];
      Font.Name := 'Times New Roman';
      Font.Color := RGB(0, 0, 0);
      TekstHeight := Printer.Canvas.TextHeight('dummy');
      LinesOnPage := Round((PHeight - (5 * v)) / TekstHeight);
      NumPages := 1;

      // gather number of pages to print
      while (NumPages * LinesOnPage) < Listview1.Items.Count do
        inc(NumPages);
      // start
      CurLine := 0;
      for CurItem := 0 to Listview1.Items.Count - 1 do
      begin
        if (CurLine > LinesOnPage) or (CurLine = 0) then
        begin
          if (CurLine > LinesOnPage) then Printer.NewPage;
          CurLine := 1;
          if Printer.PageNumber = NumPages then
          begin
            MoveTo(aCols[1], topMarg);
            for i := 1 to iColumnCount - 1 do
            begin
              LineTo(aCols[i], TopMarg + (TekstHeight * (Listview1.Items.Count - CurItem + 2)));
              MoveTo(aCols[i + 1], topMarg);
            end;
          end
          else
          begin
            // draw vertical lines between data
            for i := 1 to iColumnCount - 1 do
            begin
              MoveTo(aCols[i], topMarg);
              LineTo(aCols[i], TopMarg + (TekstHeight * (LinesOnPage + 1)));
            end;
          end;

          Font.Style := [fsBold];
          // print column headers
          for i := 0 to iColumnCount - 1 do
          begin
            TextRect(Rect(aCols[i] + Round(0.1 * h), TopMarg - Round(0.1 * v), aCols[i + 1] - Round(0.1 * h)
              , TopMarg + TekstHeight - Round(0.1 * v)), ((aCols[i + 1] - aCols[i]) div 2) +
              aCols[i] - (TextWidth(Listview1.Columns.Items[i].Caption) div 2),
              TopMarg - Round(0.1 * v), Listview1.Columns.Items[i].Caption);
            //showmessage('print kolom: '+IntToStr(i));
          end;

          // draw horizontal line beneath column headers
          MoveTo(aCols[0] - Round(0.1 * h), TopMarg + TekstHeight - Round(0.05 * v));
          LineTo(aCols[iColumnCount] + Round(0.1 * h), TopMarg + TekstHeight - Round(0.05 * v));

          // print date and page number
          Font.Size := 8;
          Font.Style := [];
          TmpPos := (TextWidth('Date: ' + DateToStr(Date) + ' Page: ' +
            IntToStr(Printer.PageNumber) + ' / ' + IntToStr(NumPages))) div 2;

          TmpPos := PWidth - Round(1.5 * h) - (TmpPos * 2);

          Font.Size := 8;
          Font.Style := [];
          TextOut(TmpPos, Round(0.5 * v), 'Date: ' + DateToStr(Date) +
            ' Page: ' + IntToStr(Printer.PageNumber) + ' / ' + IntToStr(NumPages));

          // print report title

          Font.Size := 18;
          if TmpPos < ((PWidth + TextWidth('Usage : '+name_usage)) div 2 + Round(0.75 * h)) then
            TextOut((PWidth - TextWidth('Usage : '+name_usage)) div 2, Round(1 * v), 'Usage : '+name_usage)
          else
            TextOut(Round(3 * h), Round(1 * v), 'Usage : '+name_usage);

          Font.Size := 10;
          Font.Style := [];
        end;

        CurRect.Top := TopMarg + (CurLine * TekstHeight);
        CurRect.Bottom := TopMarg + ((CurLine + 1) * TekstHeight);

        // print contents of Listview
        for CurCol := -1 to iColumnCount - 2 do
        begin
          CurRect.Left := aCols[CurCol + 1] + Round(0.1 * h);
          CurRect.Right := aCols[CurCol + 2] - Round(0.1 * h);
          try
            if CurCol = -1 then
              CurStr := Listview1.Items[CurItem].Caption
            else
              CurStr := Listview1.Items[CurItem].SubItems[CurCol];
          except
            CurStr := '';
          end;
          CurLeft := CurRect.Left; // align left side
          // write string in TextRect
          TextRect(CurRect, CurLeft, CurRect.Top, CurStr);
        end;
        Inc(CurLine);
      end;
    end;
    Printer.EndDoc;
  end;
end;

procedure TfrmUsage.FormCreate(Sender: TObject);
begin
  uList1 := TList.Create;
  uList2 := TList.Create;
  uList3 := TList.Create;
end;

procedure TfrmUsage.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(uList1);
  FreeItemsAndFreeList(uList2);
  FreeItemsAndFreeList(uList3);
end;

procedure TfrmUsage.FormShow(Sender: TObject);
begin
  uList1.Clear;
  uList2.Clear;
  getDataUsage;
end;

procedure TfrmUsage.getDataUsage;
begin
  case UIndex of

    {$REGION ' Platform '}
    27: {Vehicle}
    begin
      dmTTT.GetPlatformInstanceAtResourceAllocation(1, UId,uList3);
      dmTTT.GetPlatformAtPlatformLibraryEntry(1, UId, uList1)
    end;
    31: {Satellite}
    begin
      dmTTT.GetPlatformInstanceAtResourceAllocation(6, UId,uList3);
    end;
    32: {Motion}
    begin
      dmTTT.GetMotionCharacteristicAtVehicleDef(UId,uList1);
      dmTTT.GetMotionCharacteristicAtMissileDef(UId,uList2);
      dmTTT.GetMotionCharacteristicAtTorpedoDef(UId,uList3);
    end;
    {$ENDREGION}

    {$REGION ' Sensor '}
    1: {Radar}
    begin
      dmTTT.GetRadarAtVehicleOnBoard (UId,uList1);
    end;
    2: {Sonar}
    begin
      dmTTT.GetSonarAtVehicleOnBoard (UId,uList1);
      dmTTT.GetSonarAtSonobuoyDef (UId,uList2);
    end;
    3: {ESM}
    begin
      dmTTT.GetESMAtVehicleOnBoard(UId,uList1);
    end;
    4: {EOD}
    begin
      dmTTT.GetEOAtVehicleOnBoard(UId,uList1);
    end;
    5: {MAD}
    begin
      dmTTT.GetMADAtVehicleOnBoard(UId,uList1);
    end;
    6: {Sonobuoy}
    begin
      dmTTT.GetSonobuoyAtVehicleOnBoard       (UId,uList1);
      dmTTT.GetPlatformInstanceAtResourceAllocation(4, UId,uList3);
    end;
    {$ENDREGION}

    {$REGION ' Weapon '}
    7: {Missile}
    begin
      dmTTT.GetFittedWeaponAtVehicleOnBoard  (UIndex,UId,uList1);
      dmTTT.GetPlatformInstanceAtResourceAllocation(2,UId,uList3);
    end;
    8: {Torpedo}
    begin
      dmTTT.GetFittedWeaponAtVehicleOnBoard  (UIndex,UId,uList1);
      dmTTT.GetTorpedoAtMissileDef (UId,uList2);
      dmTTT.GetPlatformInstanceAtResourceAllocation(3,UId,uList3);
    end;
    9: {Mine}
    begin
      dmTTT.GetFittedWeaponAtVehicleOnBoard  (UIndex,UId,uList1);
      dmTTT.GetPlatformInstanceAtResourceAllocation(5,UId,uList3);
    end;
    10: {Gun}
    begin
      dmTTT.GetPointEffectAtVehicleOnBoard   (UIndex,UId,uList1);
    end;
    11: {Bomb}
    begin
      dmTTT.GetPointEffectAtVehicleOnBoard   (UIndex,UId,uList1);
    end;
    {$ENDREGION}

    {$REGION ' Countermeasure '}
    12: dmTTT.GetAcousticDecoyAtVehicleOnBoard(UId,uList1);
    13: dmTTT.GetAirBubbleAtVehicleOnBoard    (UId,uList1);
    14: dmTTT.GetChaffAtVehicleOnBoard         (UId,uList1);
    15: dmTTT.GetFloatingDecoyAtVehicleOnBoard(UId,uList1);
    16: dmTTT.GetSelfDefensiveAtVehicleOnBoard(UId,uList1);
    17: dmTTT.GetTowedJammerAtVehicleOnBoard  (UId,uList1);
    18: dmTTT.GetRadarNoiseAtVehicleOnBoard   (UId,uList1);
    19: dmTTT.GetInfraredDecoyAtVehicleOnBoard(UId,uList1);
    {$ENDREGION}

    // from RA
    20..25: dmTTT.GetPlatform_InstanceBySce(UIndex,UId,uList1,name_usage);


    // exercise
    28: dmTTT.GetScenario_ByRA      (UId,uList1);
    29: {Environment}
    begin
      dmTTT.GetEnvironmentAtResourceAllocation(UId,uList1);
    end;
    30: {Game Area}
    begin
      dmTTT.GetGameAreaAtEnvironment(UId,uList1);
      dmTTT.GetGameAreaAtOverlayDef(UId,uList2);
    end;

    {$REGION ' Other '}
    {Runtime Platform Library}
    26: dmTTT.GetRPLAtResourceAllocation(UId,uList1);
    {Overlay}
    35: dmTTT.GetOverlayAtResourceAllocation(UId, uList1);
    {Student Role}
    39: dmTTT.GetStudentRoleAtResourceAllocation(UId,uList1);
    {Game Default}
    40: dmTTT.GetGameDefaultAtResourceAllocation(UId,uList1);
    {SNR vs POD Curve}
    38:
    begin
      dmTTT.GetRadarByPOD_vs_SNR(UId, uList1);
      dmTTT.GetSonarByPOD_vs_SNR(UId, uList2);
    end;
    {$ENDREGION}

    // other
//    0,33..37: dmTTT.GetLibrary_MappingByRA (UIndex,UId,uList1);
    41: dmTTT.GetRadarInterval_ByResourceAllocation(UId,uList1);
  end;
  showDataUsage;
end;

procedure TfrmUsage.showDataUsage;
var ListItem: TListItem;
  I: Integer;
  obj: TObject;
begin
  ListView1.Clear;

  {$REGION ' Print List On Board '}
  for I := 0 to uList1.Count - 1 do
  begin
    ListItem := ListView1.Items.Add;
    ListItem.Caption := usage_title;
    case UIndex of
      0,33,34,36,37: ListItem.SubItems.Add(TResource_Allocation(uList1[i]).FData.Allocation_Identifier);
      1:
        with TRadar_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      2:
        with TSonar_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      3:
        with TESM_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      4:
        with TEOD_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      5:
        with TMAD_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      6:
        with TSonobuoy_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      7,8,9:
        with TMissile_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.FData.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      10,11:
        with TPoint_Effect_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      12:
        with TAcoustic_Decoy_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      13:
        with TAir_Bubble_Mount(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      14:
        with TChaff_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      15:
        with TFloating_Decoy_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      16:
        with TDefensive_Jammer_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      17:
        with TTowed_Jammer_Decoy_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      18:
        with TJammer_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      19:
        with TInfrared_Decoy_On_Board(uList1[i]) do begin
          ListItem.SubItems.Add('Class Name : '+ FVehicle.Vehicle_Identifier);
          ListItem.SubItems.Add('Mount Name : ' + FData.Instance_Identifier);
        end;
      20..25:
        with TPlatform_Instance(uList1[i]) do begin
          ListItem.SubItems.Add(FScenario.Scenario_Identifier);
          ListItem.SubItems.Add('Track ID: ' + FData.Track_ID);
        end;
      26:
        with TRuntime_Platform_Library(uList1[i]) do begin
          ListItem.Caption := 'Used By Resource Allocation ';
          ListItem.SubItems.Add(FResource_Allocation.Allocation_Identifier);
        end;
      27:
        with TPlatform_Library_Entry(uList1[i]) do
        begin
          ListItem.Caption := 'Used By Runtime Platform Library ';
          ListItem.SubItems.Add(FData.Identifier);
        end;
      28:
        with TScenario_Definition(uList1[i]) do begin
          ListItem.SubItems.Add(FData.Scenario_Identifier);
        end;
      29:
        with TResource_Allocation(uList1[i]) do begin
          ListItem.Caption := 'Used By Resource Allocation ';
          ListItem.SubItems.Add(FData.Allocation_Identifier);
        end;
      30:
        with TGame_Environment_Definition(uList1[i]) do begin
          ListItem.Caption := 'Used By Game Environment ';
          ListItem.SubItems.Add(FData.Game_Enviro_Identifier);
        end;
      31:
        with TPlatform_Instance(uList1[i]) do begin
          ListItem.SubItems.Add(FResource.Allocation_Identifier);
          ListItem.SubItems.Add('Platform Instance Name: ' + FData.Instance_Name);
        end;
      32:
        with TVehicle_Definition(uList1[i]) do
        begin
          ListItem.Caption := 'Used By Vehicle ';
          ListItem.SubItems.Add('Class Name : '+ FData.Vehicle_Identifier);
        end;
      35:
        with TResource_Overlay_Mapping(uList1[i]) do begin
          ListItem.Caption := 'Used bBy Resource Allocation : ';
          ListItem.SubItems.Add(FResource_Allocation.Allocation_Identifier);
        end;
      38:
        with TRadar_On_Board(uList1[i]) do begin
          ListItem.Caption := 'Used by Radar:';
          ListItem.SubItems.Add(FDef.Radar_Identifier);
        end;
      39 :
        with TStudent_Role_List(uList1[i]) do begin
          ListItem.Caption := 'Used By Resource Allocation : ';
          ListItem.SubItems.Add(FResource_Allocation.Allocation_Identifier);
        end;
      40 :
        with TGame_Defaults(uList1[i]) do begin
          ListItem.Caption := 'Used By Resource Allocation : ';
          ListItem.SubItems.Add(FResource_Allocation.Allocation_Identifier);
        end;
      41 :
        with TResource_Allocation(uList1[i]) do begin
//          ListItem.Caption := FRadarList.Interval_List_Identifier;
          ListItem.SubItems.Add('is used by: ' + FData.Allocation_Identifier);
        end;
    end;
  end;

  if uList1.Count > 0 then
    ListItem := ListView1.Items.Add;
  {$ENDREGION}

  {$REGION ' Print List Other '}
  for I := 0 to uList2.Count - 1 do
  begin
    ListItem := ListView1.Items.Add;

    case UIndex of
      2:
        with TSonobuoy_On_Board(uList2[i]) do
        begin
          ListItem.Caption := 'Used By Sonobuoy ';
          ListItem.SubItems.Add('Class Name : ' + FData.Instance_Identifier);
        end;
      8, 32:
        with TMissile_On_Board(uList2[i]) do
        begin
          ListItem.Caption := 'Used By Missile ';
          ListItem.SubItems.Add('Class Name : ' + FDef.Class_Identifier);
        end;
      30:
        with TOverlay_Definition(uList2[i]) do begin
          ListItem.Caption := 'Used By Overlay Definition ';
          ListItem.SubItems.Add(FData.Overlay_Identifier);
        end;
      38:
        with TSonar_On_Board(uList2[i]) do begin
          ListItem.Caption := 'Used by Sonar:';
          ListItem.SubItems.Add(FDef.Sonar_Identifier);
        end;
    end;
  end;
  if uList2.Count > 0 then
    ListItem := ListView1.Items.Add;
  {$ENDREGION}

  {$REGION ' Print List Other '}
  for I := 0 to uList3.Count - 1 do
  begin
    ListItem := ListView1.Items.Add;

    case UIndex of
      6, 7, 8, 9, 27, 31:
        with TPlatform_Instance(uList3[i]) do
        begin
          ListItem.Caption := 'Used By Resource Allocation ';
          ListItem.SubItems.Add('Class Name : '+ FResource.Allocation_Identifier);
        end;
      32:
        with TTorpedo_On_Board(uList3[i]) do
        begin
          ListItem.Caption := 'Used By Torpedo ';
          ListItem.SubItems.Add('Class Name : ' + FDef.Class_Identifier);
        end;

    end;
  end;
  {$ENDREGION}

end;

end.
