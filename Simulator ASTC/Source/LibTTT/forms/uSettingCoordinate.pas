unit uSettingCoordinate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TfSettingCoordinate = class(TForm)
    pgc1: TPageControl;
    ts2: TTabSheet;
    ts3: TTabSheet;
    ts4: TTabSheet;
    pnl2: TPanel;
    ts1: TTabSheet;
    pnl1: TPanel;
    rbLongLat: TRadioButton;
    rbCartesianGrid: TRadioButton;
    rbGeoref: TRadioButton;
    chkShowFormation: TCheckBox;
    lb1: TLabel;
    lb2: TLabel;
    edtForceAffiliation: TEdit;
    edtColorScheme: TEdit;
    rb4: TRadioButton;
    rbController: TRadioButton;
    rbCubicle: TRadioButton;
    rbIdentifier: TRadioButton;
    chk1: TCheckBox;
    btnClose: TButton;
    btnWeapon: TSpeedButton;
    btn1: TSpeedButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbLongLatClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    FidCoordinat : integer;
    { Private declarations }
  public
    { Public declarations }

  published
    property IdCoordinat : integer read FidCoordinat write FidCoordinat;
  end;

var
  fSettingCoordinate: TfSettingCoordinate;

implementation

uses uT3Unit, uSimMgr_Client;

{$R *.dfm}

procedure TfSettingCoordinate.btnCloseClick(Sender: TObject);
begin
  fSettingCoordinate.Close;
end;

procedure TfSettingCoordinate.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfSettingCoordinate.FormCreate(Sender: TObject);
begin
  rbLongLat.Checked := True;
end;

procedure TfSettingCoordinate.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfSettingCoordinate.rbLongLatClick(Sender: TObject);
var
  aRadioButton : TRadioButton;
begin
  aRadioButton := TRadioButton(sender);
  FidCoordinat := aRadioButton.Tag;
end;

end.
