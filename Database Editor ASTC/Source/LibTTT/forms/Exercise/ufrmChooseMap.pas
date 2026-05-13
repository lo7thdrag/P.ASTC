unit ufrmChooseMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmChooseMap = class(TForm)
    grbDepthContours: TGroupBox;
    rbENC: TRadioButton;
    rbVector: TRadioButton;
    pnl2ControlPage: TPanel;
    pnl3Button: TPanel;
    btnOK: TButton;
    btnCancel: TButton;

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private

  public
    AfterClose1 : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }

  end;

var
  frmChooseMap: TfrmChooseMap;

implementation

uses
  ufrmSummaryGameAreaVektor, ufrmSummaryGameAreaENC, uDBAsset_GameEnvironment;

{$R *.dfm}

procedure TfrmChooseMap.btnCancelClick(Sender: TObject);
begin
  Close
end;

procedure TfrmChooseMap.btnOkClick(Sender: TObject);
begin
  if rbVector.Checked then
  begin
    frmSummaryGameAreaVektor := TfrmSummaryGameAreaVektor.Create(Self);
    try
      with frmSummaryGameAreaVektor do
      begin
        SelectedGameArea := TGame_Environment_Definition.Create;
        SelectedGameArea.FGameArea.Detail_Map := 'VektorMap';
        ShowModal;
        AfterClose1 := AfterClose;
        SelectedGameArea.Free;
      end;
    finally
      frmSummaryGameAreaVektor.Free;
    end;
  end
  else
  begin
    frmSummaryGameAreaENC := TfrmSummaryGameAreaENC.Create(Self);
    try
      with frmSummaryGameAreaENC do
      begin
        SelectedGameArea := TGame_Environment_Definition.Create;
        SelectedGameArea.FGameArea.Detail_Map := 'ENC';
        ShowModal;
        AfterClose1 := AfterClose;
        SelectedGameArea.Free;
      end;
    finally
      frmSummaryGameAreaENC.Free;
    end;
  end;

  Close;
end;

end.
