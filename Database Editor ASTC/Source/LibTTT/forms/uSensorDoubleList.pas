unit uSensorDoubleList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfSensor = class(TForm)
    lbAllSensor: TListBox;
    lbsensorSel: TListBox;
    shp1: TShape;
    btnRemove: TButton;
    btnOk: TButton;
    btnCancel: TButton;
    lbTempIdAll: TListBox;
    btnAdd: TButton;
    btnEdit: TButton;
    btnCopy: TButton;
    btnNew: TButton;

    procedure getAllSensor;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    slist : TList;
  public
    { Public declarations }
    idSensor : string;
    vList : TList;
  end;

var
  fSensor: TfSensor;


implementation

{$R *.dfm}

uses uDBAsset_Sensor,uDataModuleTTT,ufrmAvailableVehicle,uDBAsset_Radar,
uDBAsset_Sonobuoy,uDBAsset_Sonar;

procedure TfSensor.btnAddClick(Sender: TObject);
begin
   if lbAllSensor.ItemIndex <> -1 then
   begin
    lbsensorSel.Items.Clear;
    lbsensorSel.Items.Add(lbAllSensor.Items[lbAllSensor.ItemIndex]);
    idSensor :=lbTempIdAll.Items[lbAllSensor.ItemIndex];
   end;
end;

procedure TfSensor.btnCancelClick(Sender: TObject);
begin
  frmAvailableVehicle.edtFiltersensorOnBoard.Text := '[None]';
  Close;
end;

procedure TfSensor.btnOkClick(Sender: TObject);
begin
  if lbsensorSel.Count <> 0 then
  begin
    idSensor := lbTempIdAll.Items.Strings[lbAllSensor.ItemIndex];
    frmAvailableVehicle.edtFiltersensorOnBoard.Text := lbsensorSel.Items.Strings[0];
  end
  else begin
    idSensor := '';
    frmAvailableVehicle.edtFiltersensorOnBoard.Text := '[None]';
  end;
  Close;
  frmAvailableVehicle.chkSensorClick(Sender);
end;

procedure TfSensor.btnRemoveClick(Sender: TObject);
begin
   if lbsensorSel.ItemIndex <> -1 then
   begin
    lbsensorSel.Clear;
   end;
end;

procedure TfSensor.FormCreate(Sender: TObject);
begin
  vList := TList.Create;
  slist := TList.Create;
end;

procedure TfSensor.FormShow(Sender: TObject);
begin
  getAllSensor;
end;

procedure TfSensor.getAllSensor;
var i:integer;
begin
  lbAllSensor.Items.Clear;
  lbTempIdAll.Items.Clear;

 for i := 0 to sList.Count - 1 do
 begin
    if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 0 then
    begin
      lbAllSensor.Items.Add(TEOD_On_Board(sList[i]).FEO_Def.Class_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TEOD_On_Board(sList[i]).FEO_Def.EO_Index));
    end
    else if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 1 then
    begin
      lbAllSensor.Items.Add(TESM_On_Board(sList[i]).FESM_Def.Class_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TESM_On_Board(sList[i]).FESM_Def.ESM_Index));
    end
    else if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 2 then
    begin
      lbAllSensor.Items.Add(TIFF_Sensor_On_Board(sList[i]).FData.Instance_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TIFF_Sensor_On_Board(sList[i]).FData.IFF_Instance_Index));
    end
    else if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 3 then
    begin
      lbAllSensor.Items.Add(TMAD_On_Board(sList[i]).FMAD_Def.Class_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TMAD_On_Board(sList[i]).FMAD_Def.MAD_Index));
    end
    else if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 4 then
    begin
      lbAllSensor.Items.Add(TRadar_On_Board(sList[i]).FDef.Radar_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TRadar_On_Board(sList[i]).FDef.Radar_Index));
    end
    else if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 5 then
    begin
      lbAllSensor.Items.Add(TSonar_On_Board(sList[i]).FDef.Sonar_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TSonar_On_Board(sList[i]).FDef.Sonar_Index));
    end
    else if frmAvailableVehicle.cbbFilterSensorType.ItemIndex = 6 then
    begin
      lbAllSensor.Items.Add(TSonobuoy_On_Board(sList[i]).FDef.Class_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TSonobuoy_On_Board(sList[i]).FDef.Sonobuoy_Index));
    end
    else begin
      lbAllSensor.Items.Add(TVisual_Sensor_On_Board(sList[i]).FData.Instance_Identifier);
      lbTempIdAll.Items.Add(IntToStr(TVisual_Sensor_On_Board(sList[i]).FData.Vehicle_Index));
    end;
 end;
end;

end.
