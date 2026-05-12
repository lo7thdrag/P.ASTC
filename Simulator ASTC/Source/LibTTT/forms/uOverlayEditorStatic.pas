unit uOverlayEditorStatic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, uDBEditSetting, uGameData_TTT, uDBAssetObject,
  Buttons;

type
  TfOverlayEditorStatic = class(TForm)
    pnlOption: TPanel;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lvTemplates: TListView;
    btnNew: TSpeedButton;
    btnCopy: TSpeedButton;
    btnDelete: TSpeedButton;
    btnEdit: TSpeedButton;
    pnlType: TPanel;
    grp3: TGroupBox;
    lb1: TLabel;
    lbDomain: TLabel;
    showCheck: TCheckBox;
    grp4: TGroupBox;
    lvTrack: TListView;
    btnDetach: TButton;
    btnAttach: TButton;
    btnClose: TButton;
    procedure showCheckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvTemplatesClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnAttachClick(Sender: TObject);
    procedure btnDetachClick(Sender: TObject);
    procedure lvTrackClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ListItem        : TListItem;
    cek             : Integer;
    aOlay           : TResource_Allocation;

    procedure addItemTrack(dOverlay: TRecord_DynamicOverlay);
    procedure showOverlay;
    procedure SetList;
    procedure SetButton;

    function getDomain(I : integer) : string;

  end;

var
  fOverlayEditorStatic: TfOverlayEditorStatic;

implementation

{$R *.dfm}
uses uSimMgr_Client, uDataModuleTTT, uDBScenario, uLibSettingTTT,
  ufTacticalDisplay, uMapXHandler, uTrackSelection, uT3Unit, uOverlayTemplate,
  uFormUtil;

procedure TfOverlayEditorStatic.showCheckClick(Sender: TObject);
begin
  if lvTemplates.ItemIndex <> -1 then
  begin
    aOlay := lvTemplates.Selected.Data;
    aOlay.IsOverlayShow := showCheck.Checked;

    showOverlay;{kodikal}
  end;
end;

procedure TfOverlayEditorStatic.showOverlay;
var
  i         : integer;
  nmOverlay : string;
begin
  simMgrClient.DrawOverlayTemplate.FList.Clear;

  for i := 0 to lvTemplates.Items.Count - 1 do
  begin
    aOlay := lvTemplates.Items.Item[i].Data;
    nmOverlay := vMapSetting.OverlayPath + lvTemplates.Items.Item[i].Caption + '.dat';

    if (aOlay.IsOverlayShow) and (aOlay.FOverlay.Static_Overlay= 1) and (nmOverlay <> '') then {kodikal}
    begin
      simMgrClient.DrawOverlayTemplate.LoadFileStream(nmOverlay);
    end;
  end;

end;

procedure TfOverlayEditorStatic.lvTemplatesClick(Sender: TObject);
var
    I : integer;
begin
  grp3.Visible  := false;
  grp4.Visible  := false;

  if lvTemplates.ItemIndex <> -1 then
  begin
    aOlay := lvTemplates.Selected.Data;
    if lvTemplates.Selected.SubItems.Strings[0] = 'Static' then
    begin
      grp3.Visible  := true;
      showCheck.Checked := aOlay.IsOverlayShow;
      case aOlay.FOverlay.Domain of
        0: lbDomain.Caption := 'Air';
        1: lbDomain.Caption := 'Surface';
        2: lbDomain.Caption := 'Subsurface';
        3: lbDomain.Caption := 'Land';
        4: lbDomain.Caption := 'General';
      end;
    end
    else
    begin
      grp4.Visible  := true;
      lvTrack.Clear;
      if aOlay.IsOverlayShow then
      begin
        for I := 0 to aOlay.FDynamicTrack.Count - 1 do
        begin
          addItemTrack(TDynamic_Overlay(aOlay.FDynamicTrack[I]).FData);
        end;
      end;
    end;
    showOverlay;
  end;
end;

procedure TfOverlayEditorStatic.lvTrackClick(Sender: TObject);
begin
  if lvTrack.ItemIndex <> -1 then
  begin
    btnDetach.Enabled := true;
    fmOverlayEdit.NmTemplate.Text := lvTemplates.Selected.Caption;
    fmOverlayEdit.Track.Text      := lvTrack.Selected.SubItems.Strings[0];
    fmOverlayEdit.BearingOff.Text := lvTrack.Selected.SubItems.Strings[1];
    fmOverlayEdit.RangeOff.Text   := lvTrack.Selected.SubItems.Strings[2];
    fmOverlayEdit.Angle.Text      := lvTrack.Selected.SubItems.Strings[3];
    fmOverlayEdit.Bearing.Text    := lvTrack.Selected.SubItems.Strings[4];
    fmOverlayEdit.NoTrack.Text    := lvTrack.Selected.SubItems.Strings[5];
  end
  else
  begin
    btnDetach.Enabled := false;
    fmOverlayEdit.NmTemplate.Text := '';
    fmOverlayEdit.Track.Text      := '';
    fmOverlayEdit.BearingOff.Text := '';
    fmOverlayEdit.RangeOff.Text   := '';
    fmOverlayEdit.Bearing.Text    := '';
    fmOverlayEdit.Angle.Text      := '';
    fmOverlayEdit.NoTrack.Text    := '';
  end;
end;

function TfOverlayEditorStatic.getDomain(I : integer) : string;
begin
    if TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Static_Overlay = 0 then
       result := 'Dynamic'
    else if TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Static_Overlay = 1 then
       result := 'Static';
end;

procedure TfOverlayEditorStatic.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfOverlayEditorStatic.btnDeleteClick(Sender: TObject);
var
  rec   : TRecCmd_DeleteOverlay;
  aOlay : TResource_Allocation;
  OFile : string;
begin
  if lvTemplates.ItemIndex <> -1 then
  begin
    if simMgrClient.ISInstructor then
      rec.NRPGroupID := 0
    else
      rec.NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;

    {cek apakah cubicle ato controler, jk cubicle tidak bs}
    if (rec.NRPGroupID) <> (StrToInt(lvTemplates.Selected.SubItems.Strings[1]))then
      Exit;

    rec.NameOver  := lvTemplates.Selected.Caption;
    rec.idx       := lvTemplates.Selected.Index;
    rec.IdDelete  := 0;
    aOlay         := lvTemplates.Items[rec.Idx].Data;
    rec.Force     := aOlay.FOverlay.Force;
    OFile         := aOlay.FOverlay.Overlay_Filename;
    if Assigned(aOlay) then
    begin
      if aOlay.FOverlay.Force = 0 then
        DeleteFile(vMapSetting.OverlayPath + '\' + OFile + '.dat');
    end;


    simMgrClient.netSend_CmdDeleteOverlay(rec);

    grp3.Visible  := false;
    grp4.Visible  := false;
  end;
  showOverlay;
end;

procedure TfOverlayEditorStatic.btnDetachClick(Sender: TObject);
var
  rec : TRecCmd_DeleteOverlay;
begin
  if (lvTemplates.ItemIndex <> -1) and (lvTrack.ItemIndex <> -1) then
  begin
    if simMgrClient.ISInstructor then
      rec.NRPGroupID := 0
    else
      rec.NRPGroupID := simMgrClient.FMyCubGroup.FData.Group_Index;

    {cek apakah cubicle ato controler, jk cubicle tidak bs edit}
    if (rec.NRPGroupID) <> (StrToInt(lvTemplates.Selected.SubItems.Strings[1]))then
      Exit;

    rec.NameOver  := lvTemplates.Selected.Caption;
    rec.SenderID  := StrToInt(lvTrack.Selected.SubItems.Strings[0]);
    rec.Idx       := StrToInt(lvTrack.Selected.SubItems.Strings[5]);
    rec.IdxTrack  := lvTrack.Selected.Index;
    rec.IdDelete  := 1;

    simMgrClient.netSend_CmdDeleteOverlay(rec);

    fmOverlayEdit.NmTemplate.Text := '';
    fmOverlayEdit.Track.Text      := '';
    fmOverlayEdit.BearingOff.Text := '';
    fmOverlayEdit.RangeOff.Text   := '';
    fmOverlayEdit.Bearing.Text    := '';
    fmOverlayEdit.Angle.Text      := '';
    fmOverlayEdit.NoTrack.Text    := '';

    btnDetach.Enabled := false;
  end;
end;

procedure TfOverlayEditorStatic.btnEditClick(Sender: TObject);
var
  cubicle   : Integer;
  nmOverlay : string;
begin
  if lvTemplates.ItemIndex <> -1 then
  begin
    if lvTemplates.Selected.SubItems.Strings[0] = 'Static' then
    begin
      {cek apakah cubicle ato controler, jk cubicle tidak bs edit}
      if simMgrClient.ISInstructor then
        cubicle := 0
      else
        cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

      if cubicle = (StrToInt(lvTemplates.Selected.SubItems.Strings[1]))then
        fmOverlayEdit.grpOption.BringToFront
      else
        Exit;

     {canvas d clear lalu tampilkan overlay list yg diselect saja agar bisa d edit}
      simMgrClient.DrawOverlayTemplate.FList.Clear;
      nmOverlay := vMapSetting.OverlayPath + TListItem(lvTemplates.Selected).Caption + '.dat';
      simMgrClient.DrawOverlayTemplate.LoadFileStream(nmOverlay);
    end
    else
    begin
      if lvTrack.ItemIndex <> -1 then
        fmOverlayEdit.grpOptionDynamic.BringToFront
      else
        Exit;
    end;

    {Tampilkan form editornya}
    with fmOverlayEdit do
    begin
      setIsOverlay(True);
      nameOverlay        := lvTemplates.Selected.Caption;
      btnDelete.Enabled  := false;
      btnCancel.Enabled  := false;
      btnApply.Enabled   := false;
      grpNormal.BringToFront;
      enableApplyButton(False);
      Show;
    end;
  end;
end;

procedure TfOverlayEditorStatic.btnNewClick(Sender: TObject);
begin
   frmOverlayTemplate.Show;
end;

procedure TfOverlayEditorStatic.btnAttachClick(Sender: TObject);
var
  cubicleNum : Integer;
begin
  if simMgrClient.ISInstructor then
    cubicleNum := 0
  else
    cubicleNum := simMgrClient.FMyCubGroup.FData.Group_Index;

  if cubicleNum = (StrToInt(lvTemplates.Selected.SubItems.Strings[1]))then
  begin
    if not Assigned(fTrackSelection) then
      fTrackSelection := TfTrackSelection.Create(self);

    fTrackSelection.Show;
  end;
end;

procedure TfOverlayEditorStatic.addItemTrack(dOverlay: TRecord_DynamicOverlay);
var
  LI_Track : TListItem;
begin
  LI_Track          := lvTrack.Items.Add;
  LI_Track.Caption  := dOverlay.Track;
  LI_Track.SubItems.Add(IntToStr(dOverlay.ID));
  LI_Track.SubItems.Add(IntToStr(dOverlay.Bearing_off));
  LI_Track.SubItems.Add(FormatFloat('0.00',dOverlay.Range_off));
  LI_Track.SubItems.Add(IntToStr(dOverlay.Rotation));

  if dOverlay.Bearing = 0 then
    LI_Track.SubItems.Add('T')
  else
    LI_Track.SubItems.Add('R');

  LI_Track.SubItems.Add(IntToStr(dOverlay.NoTrack));
end;

procedure TfOverlayEditorStatic.FormShow(Sender: TObject);
var
  I: Integer;
begin
  // peletakan form-nya
  AlignFormToMonitor(0, apLeftTop, 0, 80, TForm(self));

  grp3.Visible      := false;
  grp4.Visible      := false;
  btnDetach.Enabled := false;

   if cek = 1 then
    Exit;
   if simMgrClient.ISInstructor then
   begin
     for I := 0 to VScenario.Overlay_Mapping.Count - 1 do
     begin
       aOlay            := TResource_Allocation.Create;
       aOlay            := VScenario.Overlay_Mapping[I];
       aOlay.IsCubicle  := false;
       ListItem         := lvTemplates.Items.Add;
       ListItem.Caption := TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Overlay_Filename;
       ListItem.SubItems.Add(getDomain(I));
       ListItem.SubItems.Add(IntToStr(0));{kodikal}
       ListItem.SubItems.Add(IntToStr(aOlay.FOverlay.Force));
       ListItem.Data    := aOlay;
     end;
     cek :=1;
   end
   else
   begin
     for I := 0 to VScenario.Overlay_Mapping.Count - 1 do
     begin
        if simMgrClient.FMyCubGroup.FData.Force_Designation = TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Force then
        begin
           aOlay            := TResource_Allocation.Create;
           aOlay            := VScenario.Overlay_Mapping[I];
           aOlay.IsCubicle  := false;
           ListItem         := lvTemplates.Items.Add;
           ListItem.Caption := TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Overlay_Filename;
           ListItem.SubItems.Add(getDomain(I));
           ListItem.SubItems.Add(IntToStr(0));{kodikal}
           ListItem.SubItems.Add(IntToStr(aOlay.FOverlay.Force));
           ListItem.Data    := aOlay;

        end;
     end;
     cek :=1;
   end;
   SetButton;
   showOverlay;

end;

procedure TfOverlayEditorStatic.SetButton;
begin
  if lvTemplates.Items.Count = 0 then
    btnEdit.Enabled := False
  else
    btnEdit.Enabled := True
end;

procedure TfOverlayEditorStatic.SetList;
var
  I: Integer;
begin
  // peletakan form-nya
  AlignFormToMonitor(0, apLeftTop, 0, 80, TForm(self));

  grp3.Visible      := false;
  grp4.Visible      := false;
  btnDetach.Enabled := false;
  SetButton;

   if cek = 1 then
    Exit;
   if simMgrClient.ISInstructor then
   begin
     for I := 0 to VScenario.Overlay_Mapping.Count - 1 do
     begin
       aOlay            := TResource_Allocation.Create;
       aOlay            := VScenario.Overlay_Mapping[I];
       aOlay.IsCubicle  := false;
       ListItem         := lvTemplates.Items.Add;
       ListItem.Caption := TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Overlay_Filename;
       ListItem.SubItems.Add(getDomain(I));
       ListItem.SubItems.Add(IntToStr(0));{kodikal}
       ListItem.SubItems.Add(IntToStr(aOlay.FOverlay.Force));
       ListItem.Data    := aOlay;
     end;
     cek :=1;
   end
   else
   begin
     for I := 0 to VScenario.Overlay_Mapping.Count - 1 do
     begin
        if simMgrClient.FMyCubGroup.FData.Force_Designation = TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Force then
        begin
           aOlay            := TResource_Allocation.Create;
           aOlay            := VScenario.Overlay_Mapping[I];
           aOlay.IsCubicle  := false;
           ListItem         := lvTemplates.Items.Add;
           ListItem.Caption := TResource_Allocation(VScenario.Overlay_Mapping[I]).FOverlay.Overlay_Filename;
           ListItem.SubItems.Add(getDomain(I));
           ListItem.SubItems.Add(IntToStr(0));{kodikal}
           ListItem.SubItems.Add(IntToStr(aOlay.FOverlay.Force));
           ListItem.Data    := aOlay;

        end;
     end;
     cek :=1;
   end;
end;

end.

