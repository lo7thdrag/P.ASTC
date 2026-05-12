unit ufrmReferencePointNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDBAssetObject, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmReferencePointNew = class(TForm)
    pnlMainBackground: TPanel;
    pnl1Title: TPanel;
    pnl3Button: TPanel;
    btnCancel: TButton;
    pnlSparatorHor2: TPanel;
    edtReferenceName: TEdit;
    lblReferenceName: TLabel;
    btnOK: TButton;
    Image1: TImage;

    procedure FormShow(Sender: TObject);

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedForce : Integer;
  public
    function CekInput(IdAction : Integer): Boolean;

    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedForce : Integer read FSelectedForce write FSelectedForce;
  end;

var
  frmReferencePointNew: TfrmReferencePointNew;

implementation

uses
  uDataModuleTTT, uDBAsset_Reference_Point;

{$R *.dfm}

procedure TfrmReferencePointNew.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmReferencePointNew.btnOkClick(Sender: TObject);
var
  referPoint : TReference_Point;
begin
  if not CekInput(0)  then
    Exit;

  referPoint := TReference_Point.Create;

  with referPoint do
  begin
    FData.Resource_Alloc_Index := FSelectedResourceAlloc.FData.
      Resource_Alloc_Index;
    FData.Reference_Identifier := edtReferenceName.Text;
    FData.Force_Designation := FSelectedForce;

    dmTTT.InsertReferencePoint(FData);
  end;

  referPoint.Free;

  ModalResult := mrOk;
end;

function TfrmReferencePointNew.CekInput(IdAction: Integer): Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  if edtReferenceName.Text = '' then
  begin
    ShowMessage('Incomplete data input');
    Exit;
  end;

  if Copy(edtReferenceName.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtReferenceName.Text);
    numSpace := 0;
    for i := 1 to chkSpace do
    begin
      if edtReferenceName.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;
    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  if (dmTTT.GetReferencePointDefCount(FSelectedResourceAlloc.FData.Resource_Alloc_Index,
      FSelectedForce, edtReferenceName.Text) > 0) and (IdAction = 0) then
  begin
    ShowMessage('Please use another name');
    Exit;
  end;

  Result := True;
end;

procedure TfrmReferencePointNew.FormShow(Sender: TObject);
begin
  edtReferenceName.Text := '(Reference Point)';
end;

end.
