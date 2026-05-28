unit uVDDoublePickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Vcl.Imaging.pngimage;

type
  TfVDDoublePickList = class(TForm)
    btnAdd: TButton;
    btnCancel: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnNew: TButton;
    btnOk: TButton;
    btnRemove: TButton;
    lbAllVD: TListBox;
    lbVDSel: TListBox;
    lbTempIdAll: TListBox;
    lbTempIdSel: TListBox;
    shp1: TShape;
    btnEditMount: TButton;
    pnlMainBackground: TPanel;
    imgBackground: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbAllVDDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vList : TList;
    procedure refresh;
  end;

var
  fVDDoublePickList: TfVDDoublePickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryVehicle, uDBAsset_Sensor, uSimContainers;

{$R *.dfm}

procedure EnableComposited(WinControl:TWinControl);
var
  i:Integer;
  NewExStyle:DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for I := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

procedure TfVDDoublePickList.FormCreate(Sender: TObject);
begin
  vList := TList.Create;
  EnableComposited(pnlMainBackground);
end;

procedure TfVDDoublePickList.FormDestroy(Sender: TObject);
begin
  FreeItemsAndFreeList(vList);
end;

procedure TfVDDoublePickList.FormShow(Sender: TObject);
begin
  refresh;
end;

procedure TfVDDoublePickList.lbAllVDDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfVDDoublePickList.refresh;
var
  I : Integer;
begin
//  dmTTT.getAllVisual_Sensor_On_Board(fVehicleAttributeWindow.vehicle.FData.Vehicle_Index, 0, vList);

  lbAllVD.Clear;
  lbVDSel.Clear;

  for I := 0 to vList.Count - 1 do
  begin
    lbAllVD.Items.Add(TVisual_Sensor_On_Board(vList[I]).FData.Instance_Identifier);
    lbTempIdSel.Items.Add(IntToStr(TVisual_Sensor_On_Board(vList[I]).FData.Visual_Instance_Index));
  end;

end;

end.
