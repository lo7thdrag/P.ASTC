unit ufrmEmbarkedInputName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBAssetObject, newClassASTT, uDBAsset_Vehicle,
  uDBAsset_Weapon, ExtCtrls, Vcl.Imaging.pngimage;

type
  E_InputNameCaller = (incVehicle, incEmbark);

  TfrmEmbarkedInputName = class(TForm)
    pnl2ControlPage: TPanel;
    pnlPlatformInstance: TPanel;
    lblName: TLabel;
    lblTrackID: TLabel;
    edtQuantity: TEdit;
    pnl3Button: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    pnlSparatorHor2: TPanel;
    Image2: TImage;
    edtClass: TEdit;

    procedure FormShow(Sender: TObject);

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private
    FSelectedHostedPlat : THosted_Platform;

  public
    isUpdate : Boolean;
    property SelectedHostedPlat : THosted_Platform read FSelectedHostedPlat write FSelectedHostedPlat;

  end;

var
  frmEmbarkedInputName: TfrmEmbarkedInputName;

implementation

uses
  uDataModuleTTT, ufrmResorceAllocationPickList;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmEmbarkedInputName.FormShow(Sender: TObject);
begin
  isUpdate := False;
  edtClass.Text := FSelectedHostedPlat.FVehicle.Vehicle_Identifier;
  edtQuantity.Text := IntToStr(FSelectedHostedPlat.FData.Quantity);
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmEmbarkedInputName.btnOkClick(Sender: TObject);
begin
  with FSelectedHostedPlat do
  begin
    FData.Quantity := StrToInt(edtQuantity.Text);

    if FData.Slave_Index = 0 then
      dmTTT.InsertHostedPlatform(FData)
    else
      dmTTT.UpdateHostedPlatform(FData);
  end;

  isUpdate := True;
  Close;
end;

procedure TfrmEmbarkedInputName.btnCancelClick(Sender: TObject);
begin
  isUpdate := False;
  Close;
end;

{$ENDREGION}



end.
