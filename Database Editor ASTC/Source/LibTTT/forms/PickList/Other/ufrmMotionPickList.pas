unit ufrmMotionPickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_MotionCharacteristics,
  Vcl.Imaging.pngimage;

type
  TfrmMotionPickList = class(TForm)
    pnl2ControlPage: TPanel;
    lstAvailableMotion: TListBox;
    pnl3Button: TPanel;
    btnCancel: TButton;
    btnAdd: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstAvailableMotionClick(Sender: TObject);
    procedure lstAvailableMotionDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private
    FSelectedMotionId : Integer;

    FMotionList : TList;
    FSelectedMotion : TMotion_Characteristics;

    procedure UpdateMotionList;

  public
    property SelectedMotionId : Integer read FSelectedMotionId write FSelectedMotionId;
  end;

var
  frmMotionPickList: TfrmMotionPickList;

implementation

uses
  uDataModuleTTT, ufrmSummaryMotion;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmMotionPickList.FormCreate(Sender: TObject);
begin
  FMotionList := TList.Create;
end;

procedure TfrmMotionPickList.FormShow(Sender: TObject);
begin
  UpdateMotionList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmMotionPickList.btnAddClick(Sender: TObject);
begin
  if lstAvailableMotion.ItemIndex = -1 then
    Exit;

  FSelectedMotionId := FSelectedMotion.FData.Motion_Index;
  Close;

end;

procedure TfrmMotionPickList.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMotionPickList.lstAvailableMotionClick(Sender: TObject);
begin
  if lstAvailableMotion.ItemIndex = -1 then
    Exit;

  FSelectedMotion := TMotion_Characteristics(lstAvailableMotion.Items.Objects[lstAvailableMotion.ItemIndex]);
end;

procedure TfrmMotionPickList.lstAvailableMotionDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfrmMotionPickList.UpdateMotionList;
var
  i : Integer;
  motion : TMotion_Characteristics;
begin
  lstAvailableMotion.Items.Clear;

  dmTTT.GetAllMotionCharacteristicDef(FMotionList);

  for i := 0 to FMotionList.Count - 1 do
  begin
    motion := FMotionList.Items[i];

    lstAvailableMotion.Items.AddObject(motion.FData.Motion_Identifier, motion);

  end;
end;

{$ENDREGION}

end.
