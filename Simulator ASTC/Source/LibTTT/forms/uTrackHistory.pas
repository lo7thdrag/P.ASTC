unit uTrackHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, uSimObjects, uT3Unit, tttData, uT3DetectedTrack;

type
  TfTrackHistory = class(TForm)
    PageControl1: TPageControl;
    tsAir: TTabSheet;
    tsSurface: TTabSheet;
    tsAll: TTabSheet;
    tsSubsurface: TTabSheet;
    tsLand: TTabSheet;
    tsGeneral: TTabSheet;
    btShowALll: TButton;
    btHideAll: TButton;
    btClearSelected: TButton;
    btClearAll: TButton;
    btClose: TButton;
    btClearAllAir: TButton;
    btClearSelectedAir: TButton;
    btHideAllAir: TButton;
    btShowAll: TButton;
    btClearAllSurface: TButton;
    btClearSelectedSurface: TButton;
    btHideALlSurface: TButton;
    btShowALlSurface: TButton;
    btClearAllSubsurface: TButton;
    btClearSelectedSubsurface: TButton;
    btHideAllSubsurface: TButton;
    btShowAllSubsurface: TButton;
    btClearAllLand: TButton;
    btClearSelectedLand: TButton;
    btHideAllLand: TButton;
    btShowAllLand: TButton;
    btClearAllGeneral: TButton;
    btClearSelectedGeneral: TButton;
    btHideAllGeneral: TButton;
    btShowAllGeneral: TButton;
    lvAll: TListView;
    chk1: TCheckBox;
    lvAir: TListView;
    lvSurface: TListView;
    lvSubsurface: TListView;
    lvLand: TListView;
    lvGeneral: TListView;
    procedure btCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btShowAllClick(Sender: TObject);
    procedure btHideAllClick(Sender: TObject);
    procedure lvAllItemChecked(Sender: TObject; Item: TListItem);
    procedure btClearSelectedClick(Sender: TObject);
    procedure btClearAllClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure showAll(ListView: TListView);
    procedure hideAll(ListView: TListView);
    procedure clearSelect(ListView: TListView);
    procedure clearAll(ListView: TListView);
  end;

var
  fTrackHistory: TfTrackHistory;

implementation

uses
  uSimMgr_Client, uT3Vehicle, ufTacticalDisplay;

{$R *.dfm}

procedure TfTrackHistory.btClearAllClick(Sender: TObject);
begin
  if tsAll.Visible then clearAll(lvAll)
  else if tsAir.Visible then clearAll(lvAir)
  else if tsSurface.Visible then clearAll(lvSurface)
  else if tsSubsurface.Visible then clearAll(lvSubsurface)
  else if tsLand.Visible then clearAll(lvLand)
  else if tsGeneral.Visible then clearAll(lvGeneral);
end;

procedure TfTrackHistory.clearAll(ListView: TListView);
var
  v : TObject;
  I: Integer;
begin
  if not Assigned(ListView) then
    Exit;
  for I := 0 to ListView.Items.Count - 1 do
  begin
    v := ListView.Items.Item[I].Data;
    if v is TT3Vehicle then
      TT3Vehicle(v).VHistory.ClearHistory
    else
    if v is TT3DetectedTrack then
      TT3DetectedTrack(v).VHistory.ClearHistory;
  end;
end;

procedure TfTrackHistory.btClearSelectedClick(Sender: TObject);
begin
  if tsAll.Visible then clearSelect(lvAll)
  else if tsAir.Visible then clearSelect(lvAir)
  else if tsSurface.Visible then clearSelect(lvSurface)
  else if tsSubsurface.Visible then clearSelect(lvSubsurface)
  else if tsLand.Visible then clearSelect(lvLand)
  else if tsGeneral.Visible then clearSelect(lvGeneral);
end;

procedure TfTrackHistory.clearSelect(ListView: TListView);
var
  v : TObject;
begin
  if not Assigned(ListView) then
    Exit;
  v := ListView.Selected.Data;
  if v is TT3Vehicle then
    TT3Vehicle(v).VHistory.ClearHistory
  else
  if v is TT3DetectedTrack then
    TT3DetectedTrack(v).VHistory.ClearHistory
end;

procedure TfTrackHistory.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfTrackHistory.btHideAllClick(Sender: TObject);
begin
  if tsAll.Visible then hideAll(lvAll)
  else if tsAir.Visible then hideAll(lvAir)
  else if tsSurface.Visible then hideAll(lvSurface)
  else if tsSubsurface.Visible then hideAll(lvSubsurface)
  else if tsLand.Visible then hideAll(lvLand)
  else if tsGeneral.Visible then hideAll(lvGeneral);
end;

procedure TfTrackHistory.btShowAllClick(Sender: TObject);
begin
  if tsAll.Visible then showAll(lvAll)
  else if tsAir.Visible then showAll(lvAir)
  else if tsSurface.Visible then showAll(lvSurface)
  else if tsSubsurface.Visible then showAll(lvSubsurface)
  else if tsLand.Visible then showAll(lvLand)
  else if tsGeneral.Visible then showAll(lvGeneral);
end;

procedure TfTrackHistory.showAll(ListView: TListView);
var I: Integer;
begin
  for I := 0 to ListView.Items.Count - 1 do
    ListView.Items.Item[I].Checked  := true;
end;

procedure TfTrackHistory.hideAll(ListView: TListView);
var I: Integer;
begin
  for I := 0 to ListView.Items.Count - 1 do
    ListView.Items.Item[I].Checked  := false;
end;

procedure TfTrackHistory.lvAllItemChecked(Sender: TObject; Item: TListItem);
var
  v : TObject;
begin
  if not Assigned(item) then
    Exit;

  if not Assigned(item.Data) then
    Exit;

  v := item.Data;
  if (v is TT3Vehicle) then
  begin
    if item.Checked then
      TT3Vehicle(v).ShowTrails := true
    else TT3Vehicle(v).ShowTrails := false;
  end else
  if (v is TT3DetectedTrack) then
  begin
    if item.Checked then
      TT3DetectedTrack(v).ShowTrails := true
    else TT3DetectedTrack(v).ShowTrails := false;
  end;

  frmTacticalDisplay.SetSelectedTrack(TT3Unit(v));
end;

procedure TfTrackHistory.PageControl1Change(Sender: TObject);
var
  i: Integer;
  aObject: TSimObject;
  LIAll,LIAir,LISurface,LISub,LILand,LIGen: TListItem;
begin
  if simMgrClient.ISInstructor then begin

    case PageControl1.TabIndex of
      0:
        begin
          lvAll.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            LIAll := lvAll.Items.Add;
            LIAll.Caption := TT3PlatformInstance(aObject).Track_ID;
            LIAll.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
            LIAll.Data := aObject;
            if TT3Vehicle(aObject).ShowTrails then LIAll.Checked := true;
          end;
        end;
      1:
        begin
          lvAir.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).PlatformDomain = vhdAir then
            begin
              LIAir := lvAir.Items.Add;
              LIAir.Caption := TT3PlatformInstance(aObject).Track_ID;
              LIAir.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
              LIAir.Data := aObject;
              if TT3Vehicle(aObject).ShowTrails then LIAir.Checked := true;
            end;
          end;
        end;
      2:
        begin
          lvSurface.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).PlatformDomain = vhdSurface then
            begin
              LISurface := lvSurface.Items.Add;
              LISurface.Caption := TT3PlatformInstance(aObject).Track_ID;
              LISurface.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
              LISurface.Data := aObject;
              if TT3Vehicle(aObject).ShowTrails then LISurface.Checked := true;
            end;
          end;
        end;
      3:
        begin
          lvSubsurface.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).PlatformDomain = vhdSubsurface then
            begin
              LISub := lvSubsurface.Items.Add;
              LISub.Caption := TT3PlatformInstance(aObject).Track_ID;
              LISub.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
              LISub.Data := aObject;
              if TT3Vehicle(aObject).ShowTrails then LISub.Checked := true;
            end;
          end;
        end;
      4:
        begin
          lvLand.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).PlatformDomain = vhdLand then
            begin
              LILand := lvLand.Items.Add;
              LILand.Caption := TT3PlatformInstance(aObject).Track_ID;
              LILand.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
              LILand.Data := aObject;
              if TT3Vehicle(aObject).ShowTrails then LILand.Checked := true;
            end;
          end;
        end;
      5:
        begin
          lvGeneral.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).PlatformDomain = vhdGeneral then
            begin
              LIGen := lvGeneral.Items.Add;
              LIGen.Caption := TT3PlatformInstance(aObject).Track_ID;
              LIGen.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
              LIGen.Data := aObject;
              if TT3Vehicle(aObject).ShowTrails then LIGen.Checked := true;
            end;
          end;
        end;
    end;
  end else
  begin
    case PageControl1.TabIndex of
      0 :
        begin
          lvAll.Items.Clear;

          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).UnitGroup then begin
              LIAll := lvAll.Items.Add;
              LIAll.Caption := TT3PlatformInstance(aObject).Track_ID;
              LIAll.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
              LIAll.Data := aObject;
              if TT3Vehicle(aObject).ShowTrails then LIAll.Checked := true;
            end;
          end;

          for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
          begin
            aObject := simMgrClient.SimDetectedTrackList.getObject(i);
            if not Assigned(aObject) then continue;

            if aObject is TT3DetectedTrack then begin
              LIAll := lvAll.Items.Add;
              LIAll.Caption := TT3DetectedTrack(aObject).TrackID;
              LIAll.SubItems.Add(TT3DetectedTrack(aObject).TrackObject.InstanceName);
              LIAll.Data := aObject;
              if TT3DetectedTrack(aObject).ShowTrails then LIAll.Checked := true;
            end;
          end;
        end;
      1 :
        begin
          lvAir.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).UnitGroup then begin
              if TT3PlatformInstance(aObject).PlatformDomain = vhdAir then
              begin
                LIAir := lvAir.Items.Add;
                LIAir.Caption := TT3PlatformInstance(aObject).Track_ID;
                LIAir.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
                LIAir.Data := aObject;
                if TT3Vehicle(aObject).ShowTrails then LIAir.Checked := true;
              end;
            end;
          end;
          for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
          begin
            aObject := simMgrClient.SimDetectedTrackList.getObject(i);
            if not Assigned(aObject) then continue;

            if aObject is TT3DetectedTrack then begin
              if TT3DetectedTrack(aObject).TrackDomain = vhdAir then begin
                LIAir := lvAir.Items.Add;
                LIAir.Caption := TT3DetectedTrack(aObject).TrackID;
                LIAir.SubItems.Add(TT3DetectedTrack(aObject).TrackObject.InstanceName);
                LIAir.Data := aObject;
                if TT3DetectedTrack(aObject).ShowTrails then LIAir.Checked := true;
              end;
            end;
          end;
        end;
      2 :
        begin
          lvSurface.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).UnitGroup then begin
              if TT3PlatformInstance(aObject).PlatformDomain = vhdSurface then
              begin
                LISurface := lvSurface.Items.Add;
                LISurface.Caption := TT3PlatformInstance(aObject).Track_ID;
                LISurface.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
                LISurface.Data := aObject;
                if TT3Vehicle(aObject).ShowTrails then LISurface.Checked := true;
              end;
            end;
          end;
          for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
          begin
            aObject := simMgrClient.SimDetectedTrackList.getObject(i);
            if not Assigned(aObject) then continue;
            if aObject is TT3DetectedTrack then begin
              if TT3DetectedTrack(aObject).TrackDomain = vhdSurface then begin
                LISurface := lvSurface.Items.Add;
                LISurface.Caption := TT3DetectedTrack(aObject).TrackID;
                LISurface.SubItems.Add(TT3DetectedTrack(aObject).TrackObject.InstanceName);
                LISurface.Data := aObject;
                if TT3DetectedTrack(aObject).ShowTrails then LISurface.Checked := true;
              end;
            end;
          end;
        end;
      3 :
        begin
          lvSubsurface.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).UnitGroup then begin
              if TT3PlatformInstance(aObject).PlatformDomain = vhdSubsurface then
              begin
                LISub := lvSubsurface.Items.Add;
                LISub.Caption := TT3PlatformInstance(aObject).Track_ID;
                LISub.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
                LISub.Data := aObject;
                if TT3Vehicle(aObject).ShowTrails then LISub.Checked := true;
              end;
            end;
          end;
          for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
          begin
            aObject := simMgrClient.SimDetectedTrackList.getObject(i);
            if not Assigned(aObject) then continue;
            if aObject is TT3DetectedTrack then begin
              if TT3DetectedTrack(aObject).TrackDomain = vhdSubsurface then begin
                LISub := lvSubsurface.Items.Add;
                LISub.Caption := TT3DetectedTrack(aObject).TrackID;
                LISub.SubItems.Add(TT3DetectedTrack(aObject).TrackObject.InstanceName);
                LISub.Data := aObject;
                if TT3DetectedTrack(aObject).ShowTrails then LISub.Checked := true;
              end;
            end;
          end;

        end;
      4 :
        begin
          lvGeneral.Items.Clear;
          for i := 0 to simMgrClient.SimPlatforms.itemCount - 1 do
          begin
            aObject := TT3PlatformInstance(simMgrClient.SimPlatforms.getObject(i));
            if not Assigned(aObject) then continue;
            if TT3PlatformInstance(aObject).UnitGroup then begin
              if TT3PlatformInstance(aObject).PlatformDomain = vhdGeneral then
              begin
                LIGen := lvGeneral.Items.Add;
                LIGen.Caption := TT3PlatformInstance(aObject).Track_ID;
                LIGen.SubItems.Add(TT3PlatformInstance(aObject).InstanceName);
                LIGen.Data := aObject;
                if TT3Vehicle(aObject).ShowTrails then LIGen.Checked := true;
              end;
            end;
          end;
          for i := 0 to simMgrClient.SimDetectedTrackList.itemCount - 1 do
          begin
            aObject := simMgrClient.SimDetectedTrackList.getObject(i);
            if not Assigned(aObject) then continue;
            if aObject is TT3DetectedTrack then begin
              if TT3DetectedTrack(aObject).TrackDomain = vhdGeneral then begin
                LIGen := lvSubsurface.Items.Add;
                LIGen.Caption := TT3DetectedTrack(aObject).TrackID;
                LIGen.SubItems.Add(TT3DetectedTrack(aObject).TrackObject.InstanceName);
                LIGen.Data := aObject;
                if TT3DetectedTrack(aObject).ShowTrails then LIGen.Checked := true;
              end;
            end;
          end;
        end;
    end;
  end;
end;

procedure TfTrackHistory.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfTrackHistory.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfTrackHistory.FormShow(Sender: TObject);
begin
  PageControl1Change(Sender);
end;

end.
