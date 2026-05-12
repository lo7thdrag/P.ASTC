unit uRadarIntervalSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, newClassASTT;

type
  TfRadarIntervalSetup = class(TForm)
    pnlData1: TPanel;
    lblRadarIntervals: TStaticText;
    cbbState: TComboBox;
    lblNumberOfScans: TStaticText;
    edtNumberOfScans: TEdit;
    lblTimeInterval: TStaticText;
    edtTimeInterval: TEdit;
    lblSeconds: TStaticText;
    btnAdd: TButton;
    pnlData2: TPanel;
    lvIntervalData: TListView;
    btnRemove: TButton;
    btnMoveUp: TButton;
    btnMoveDown: TButton;
    pnlAction: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    btnApply: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure cbbStateSelect(Sender: TObject);
    procedure edtNumberOfScansKeyPress(Sender: TObject; var Key: Char);
    procedure edtTimeIntervalKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure lvIntervalDataClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnMoveUpClick(Sender: TObject);
    procedure btnMoveDownClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    FSelectedRadarInterval : TRadar_Interval_List;

    FRadarIntervalDefList : TList;
    FSelectedRadarIntervalDef : TRadar_Interval_Definition;

    procedure UpdateRadarIntervalForm;

  public
    property SelectedRadarInterval : TRadar_Interval_List read FSelectedRadarInterval write FSelectedRadarInterval;
  end;

var
  fRadarIntervalSetup: TfRadarIntervalSetup;

implementation

uses
  uDataModuleTTT, ufrmRadarIntervalSummary;

{$R *.dfm}

procedure TfRadarIntervalSetup.btnAddClick(Sender: TObject);
var
  intervalDef : TRadar_Interval_Definition;
begin
  if (cbbState.ItemIndex = -1) or (edtNumberOfScans.Text = '') or
    (edtTimeInterval.Text = '') then
  begin
    ShowMessage('Invalid data');
    Exit;
  end;

  intervalDef := TRadar_Interval_Definition.Create;

  with intervalDef do
  begin
    FData.Interval_List_Index := FSelectedRadarInterval.FData.Interval_List_Index;
    FData.Priority := FRadarIntervalDefList.Count + 1;
    FData.Radar_State := cbbState.ItemIndex;
    FData.Num_Scans := StrToInt(edtNumberOfScans.Text);
    FData.Radar_Off_Time := StrToInt(edtTimeInterval.Text);

    dmTTT.InsertRadarActivationIntervalData(FData);
  end;

  intervalDef.Free;

  UpdateRadarIntervalForm;
  btnApply.Enabled := False;
end;

procedure TfRadarIntervalSetup.btnApplyClick(Sender: TObject);
begin
  with FSelectedRadarIntervalDef.FData do
  begin
    Radar_State := cbbState.ItemIndex;
    Num_Scans := StrToInt(edtNumberOfScans.Text);
    Radar_Off_Time := StrToInt(edtTimeInterval.Text);
  end;

  dmTTT.UpdateRadarActivationIntervalData(FSelectedRadarIntervalDef.FData);

  UpdateRadarIntervalForm;
  btnApply.Enabled := False;
end;

procedure TfRadarIntervalSetup.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfRadarIntervalSetup.btnMoveDownClick(Sender: TObject);
var
  intervalDef : TRadar_Interval_Definition;
  tempPriority : Integer;
begin
  if lvIntervalData.ItemIndex = -1 then
    Exit;

  intervalDef := lvIntervalData.Items[lvIntervalData.ItemIndex + 1].Data;

  //step 1
  tempPriority := intervalDef.FData.Priority;
  intervalDef.FData.Priority := FRadarIntervalDefList.Count + 1;

  dmTTT.UpdateRadarActivationIntervalData(intervalDef.FData);

  //step 2
  intervalDef.FData.Priority := FSelectedRadarIntervalDef.FData.Priority;
  FSelectedRadarIntervalDef.FData.Priority := tempPriority;

  dmTTT.UpdateRadarActivationIntervalData(FSelectedRadarIntervalDef.FData);

  //step 3
  dmTTT.UpdateRadarActivationIntervalData(intervalDef.FData);

  UpdateRadarIntervalForm;
end;

procedure TfRadarIntervalSetup.btnMoveUpClick(Sender: TObject);
var
  intervalDef : TRadar_Interval_Definition;
  tempPriority : Integer;
begin
  if lvIntervalData.ItemIndex = -1 then
    Exit;

  intervalDef := lvIntervalData.Items[lvIntervalData.ItemIndex - 1].Data;

  //step 1
  tempPriority := intervalDef.FData.Priority;
  intervalDef.FData.Priority := FRadarIntervalDefList.Count + 1;

  dmTTT.UpdateRadarActivationIntervalData(intervalDef.FData);

  //step 2
  intervalDef.FData.Priority := FSelectedRadarIntervalDef.FData.Priority;
  FSelectedRadarIntervalDef.FData.Priority := tempPriority;

  dmTTT.UpdateRadarActivationIntervalData(FSelectedRadarIntervalDef.FData);

  //step 3
  dmTTT.UpdateRadarActivationIntervalData(intervalDef.FData);

  UpdateRadarIntervalForm;
end;

procedure TfRadarIntervalSetup.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TfRadarIntervalSetup.btnRemoveClick(Sender: TObject);
begin
  if lvIntervalData.ItemIndex = -1 then
    Exit;

  with FSelectedRadarIntervalDef.FData do
    dmTTT.DeleteRadarActivationIntervalData(Interval_List_Index, Priority);

  UpdateRadarIntervalForm;
end;

procedure TfRadarIntervalSetup.cbbStateSelect(Sender: TObject);
begin
  btnApply.Enabled := lvIntervalData.ItemIndex <> -1;
end;

procedure TfRadarIntervalSetup.edtNumberOfScansKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#48 .. #57, #8, #13]) then
  begin
    Key := #0;
    Exit;
  end;

  btnApply.Enabled := lvIntervalData.ItemIndex <> -1;
end;

procedure TfRadarIntervalSetup.edtTimeIntervalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#48 .. #57, #8, #13]) then
  begin
    Key := #0;
    Exit;
  end;

  btnApply.Enabled := lvIntervalData.ItemIndex <> -1;
end;

procedure TfRadarIntervalSetup.FormCreate(Sender: TObject);
begin
  FRadarIntervalDefList := TList.Create;
end;

procedure TfRadarIntervalSetup.FormShow(Sender: TObject);
begin
  Caption := FSelectedRadarInterval.FData.Interval_List_Identifier;
  UpdateRadarIntervalForm;
  btnApply.Enabled := False;
end;

procedure TfRadarIntervalSetup.UpdateRadarIntervalForm;
var
  i : Integer;
  intervalDef : TRadar_Interval_Definition;
  li : TListItem;
begin
  cbbState.ItemIndex := -1;
  edtNumberOfScans.Text := '';
  edtTimeInterval.Text := '';

  lvIntervalData.Items.Clear;

  dmTTT.GetRadarActivationIntervalData(FSelectedRadarInterval.FData.Interval_List_Index, FRadarIntervalDefList);
//  dmTTT.GetRadarIntervalDef(FSelectedRadarInterval.FData.Interval_List_Index, FRadarIntervalDefList);

  for i := 0 to FRadarIntervalDefList.Count - 1 do
  begin
    intervalDef := FRadarIntervalDefList.Items[i];

    li := lvIntervalData.Items.Add;

    with intervalDef.FData do
    begin
      li.Caption := IntToStr(Priority);

      if Radar_State = 1 then
        li.SubItems.Add('On')
      else if Radar_State = 0 then
        li.SubItems.Add('Off');

      li.SubItems.Add(IntToStr(Num_Scans));
      li.SubItems.Add(IntToStr(Radar_Off_Time));
      li.Data := intervalDef;
    end;
  end;
end;

procedure TfRadarIntervalSetup.lvIntervalDataClick(Sender: TObject);
begin
  if lvIntervalData.ItemIndex <> -1 then
  begin
    FSelectedRadarIntervalDef := TRadar_Interval_Definition(
      lvIntervalData.Items[lvIntervalData.ItemIndex].Data);

    with FSelectedRadarIntervalDef.FData do
    begin
      cbbState.ItemIndex := Radar_State;
      edtNumberOfScans.Text := IntToStr(Num_Scans);
      edtTimeInterval.Text := IntToStr(Radar_Off_Time);
    end;
  end
  else
  begin
    cbbState.ItemIndex := -1;
    edtNumberOfScans.Text := '';
    edtTimeInterval.Text := '';
  end;

  btnRemove.Enabled := lvIntervalData.ItemIndex <> -1;
  btnMoveUp.Enabled := (lvIntervalData.ItemIndex <> -1) and
    Assigned(lvIntervalData.Items[lvIntervalData.ItemIndex - 1]);
  btnMoveDown.Enabled := (lvIntervalData.ItemIndex <> -1) and
    Assigned(lvIntervalData.Items[lvIntervalData.ItemIndex + 1]);

  btnApply.Enabled := False;
end;

end.
