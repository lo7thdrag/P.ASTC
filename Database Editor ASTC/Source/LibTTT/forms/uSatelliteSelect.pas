unit uSatelliteSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls,uDBAsset_Satellite, uDBAssetObject;

type
  TfSatellite = class(TForm)
    lbAllSatellite: TListBox;
    lbSatelliteSel: TListBox;
    btnAdd: TButton;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnEditTrack: TButton;
    shp1: TShape;
    btnFilter: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lbAllSatelliteClick(Sender: TObject);
    procedure lbAllSatelliteDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnEditTrackClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure lbSatelliteSelDblClick(Sender: TObject);
    procedure lbSatelliteSelClick(Sender: TObject);
  private
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedForce : Integer;

    FSatelliteList : TList;
    FSelectedSatelliteList : TList;
    FSelectedPlatInst : TPlatform_Instance;
    FSelectedSatellite : TSatellite_Definition;

    procedure UpdateSatelliteList;
  public
    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
  end;

var
  fSatellite: TfSatellite;

implementation

uses
  uDataModuleTTT, uSimDBEditor, ufrmResorceAllocationPickList,
  ufrmSummaryResourceAllocation, {uInputName,}ufrmAvailableResourceAllocation, uDBAsset_Weapon,
  ufrmSummarySatellite, ufrmUsage;

{$R *.dfm}

procedure TfSatellite.btnAddClick(Sender: TObject);
var
  platInst : TPlatform_Instance;
begin
  if lbAllSatellite.ItemIndex = -1 then
    Exit;

  platInst := TPlatform_Instance.Create;

  with platInst do
  begin
    FData.Resource_Alloc_Index := FSelectedResourceAlloc.FData.
      Resource_Alloc_Index;
    FData.Platform_Type := 6;
    FData.Satellite_Index := FSelectedSatellite.FData.Satellite_Index;
    FData.Instance_Name := FSelectedSatellite.FData.Satellite_Identifier;
    FData.Force_Designation := FSelectedForce;
    FData.Track_ID := 'Sat';

    if dmTTT.Check_PlatformInstance(FData.Instance_Name) then
    begin
      ShowMessage('Satellite''s name already exist, try another name');
      Exit;
    end;
    dmTTT.InsertPlatformInstance(FData);
  end;

  platInst.Free;

  UpdateSatelliteList;
end;

procedure TfSatellite.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfSatellite.btnCopyClick(Sender: TObject);
begin
  if lbAllSatellite.ItemIndex = -1 then
    Exit;
end;

procedure TfSatellite.btnEditClick(Sender: TObject);
begin
  if lbAllSatellite.ItemIndex = -1 then
    Exit;

  with frmSummarySatellite do
  begin
    SelectedSatellite := FSelectedSatellite;
    ShowModal;
  end;

  UpdateSatelliteList;
end;

procedure TfSatellite.btnEditTrackClick(Sender: TObject);
begin
  if lbSatelliteSel.ItemIndex = -1 then
    Exit;
end;

procedure TfSatellite.btnNewClick(Sender: TObject);
begin
  with frmSummarySatellite do
  begin
    SelectedSatellite := TSatellite_Definition.Create;
    ShowModal;
  end;

  UpdateSatelliteList;
end;

procedure TfSatellite.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfSatellite.btnRemoveClick(Sender: TObject);
begin
  if lbSatelliteSel.ItemIndex = -1 then
    Exit;
  with FSelectedPlatInst.FData do
    dmTTT.DeletePlatformInstance(2, Platform_Instance_Index);

  UpdateSatelliteList;
end;

procedure TfSatellite.btnUsageClick(Sender: TObject);
begin
  if lbSatelliteSel.ItemIndex = -1 then
    Exit;
end;

procedure TfSatellite.lbAllSatelliteClick(Sender: TObject);
begin
  FSelectedSatellite := TSatellite_Definition(
    lbAllSatellite.Items.Objects[lbAllSatellite.ItemIndex]);

  btnAdd.Enabled := True;
  btnCopy.Enabled := True;
  btnEdit.Enabled := True;
end;

procedure TfSatellite.lbAllSatelliteDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfSatellite.lbSatelliteSelClick(Sender: TObject);
begin
  FSelectedPlatInst := TPlatform_Instance(
    lbSatelliteSel.Items.Objects[lbSatelliteSel.ItemIndex]);
end;

procedure TfSatellite.lbSatelliteSelDblClick(Sender: TObject);
begin
  btnRemove.Click;
end;

procedure TfSatellite.UpdateSatelliteList;
var
  i, j : Integer;
  satellite : TSatellite_Definition;
  platInst : TPlatform_Instance;
  found : Boolean;
begin
  lbAllSatellite.Items.Clear;
  lbSatelliteSel.Items.Clear;

  dmTTT.GetSatelliteDef(FSatelliteList);
  dmTTT.GetPlatformInstance(FSelectedResourceAlloc.FData.Resource_Alloc_Index,
    6, FSelectedForce, FSelectedSatelliteList);

  for i := 0 to FSatelliteList.Count - 1 do
  begin
    satellite := FSatelliteList.Items[i];
    found := False;
    for j := 0 to FSelectedSatelliteList.Count - 1 do
    begin
      platInst := FSelectedSatelliteList.Items[j];
      if platInst.FData.Satellite_Index = satellite.FData.Satellite_Index then
      begin
        found := True;
        Break;
      end;
    end;
    if found then
      lbSatelliteSel.Items.AddObject(platInst.FData.Instance_Name, platInst)
    else
      lbAllSatellite.Items.AddObject(satellite.FData.Satellite_Identifier,
        satellite);
  end;
end;

procedure TfSatellite.FormCreate(Sender: TObject);
begin
  FSatelliteList := TList.Create;
  FSelectedSatelliteList := TList.Create;
end;

procedure TfSatellite.FormShow(Sender: TObject);
begin
  UpdateSatelliteList;
end;

end.
