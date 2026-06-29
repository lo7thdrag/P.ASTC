unit ufrmRightNav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzBmpBtn,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, VrControls, VrWheel;

type
  TfrmRight = class(TForm)
    pnlContainer: TPanel;
    Panel1: TPanel;
    lblShipName: TLabel;
    Panel2: TPanel;
    lbl1: TLabel;
    lblCOG: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    lblSOG: TLabel;
    Panel4: TPanel;
    Label21: TLabel;
    lblSWT: TLabel;
    lbl2: TLabel;
    Panel5: TPanel;
    Label23: TLabel;
    lblHeading: TLabel;
    Panel6: TPanel;
    Label22: TLabel;
    Label24: TLabel;
    Image1: TImage;
    Panel7: TPanel;
    HookContactInfoTraineeDisplay: TPageControl;
    tsHook: TTabSheet;
    lbTrackHook: TLabel;
    Label1: TLabel;
    lbNameHook: TLabel;
    lbClassHook: TLabel;
    Label2: TLabel;
    lbBearingHook: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbRangeHook: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbPositionHook1: TLabel;
    lbCourseHook: TLabel;
    lbPositionHook2: TLabel;
    lbGround: TLabel;
    lbFormation: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbDamage: TLabel;
    lb8: TLabel;
    pnlDepth: TPanel;
    lbDepth: TLabel;
    lb2: TLabel;
    lbtext3: TStaticText;
    lb1: TStaticText;
    pnlAltitude: TPanel;
    lb4: TLabel;
    lbAltitude: TLabel;
    lb6: TStaticText;
    lb5: TStaticText;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText10: TStaticText;
    StaticText25: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText36: TStaticText;
    lb7: TStaticText;
    lb3: TStaticText;
    tsDetails: TTabSheet;
    lbTrackDetails: TLabel;
    Label11: TLabel;
    lbNameDetails: TLabel;
    lbClassdetails: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lbDomain: TLabel;
    Label15: TLabel;
    lbPropulsion: TLabel;
    lbIdentifier: TLabel;
    lbDoppler: TLabel;
    lbSonarClass: TLabel;
    lbTrackType: TLabel;
    lbTypeDetails: TLabel;
    lbMergeStatus: TLabel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    tsDetection: TTabSheet;
    lbTrackDetection: TLabel;
    Label16: TLabel;
    lbNameDetection: TLabel;
    lbClassDetection: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lbFirstDetected: TLabel;
    Label20: TLabel;
    lbLastDetected: TLabel;
    lbOwner: TLabel;
    lbDetectionDetectionType: TLabel;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    lbDetectionType: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    tsIFF: TTabSheet;
    lbTrackIff: TLabel;
    Label88: TLabel;
    lbNameIff: TLabel;
    lbClassIff: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    lbMode2Iff: TLabel;
    Label95: TLabel;
    lbMode1Iff: TLabel;
    lbMode3CIff: TLabel;
    lbMode3Iff: TLabel;
    lbMode4Iff: TLabel;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText52: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    StaticText59: TStaticText;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    vrwhlWindDirec: TVrWheel;
    Panel8: TPanel;
    lblBearing: TLabel;
    Label26: TLabel;
    Panel9: TPanel;
    lblRange: TLabel;
    Label28: TLabel;
    Image2: TImage;
    Image3: TImage;
    procedure btnFullScreenClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateAllRightForms;
    { Public declarations }
  end;

var
  frmRight: TfrmRight;

implementation

{$R *.dfm}

{ TfrmRight }

procedure TfrmRight.btnFullScreenClick(Sender: TObject);
begin
//  frmLeft.Visible   := False;
//  frmTop.Visible    := False;
//  frmBottom.Visible := False;
//  Close;
//
//  frmRight2.Visible := True
end;

procedure TfrmRight.CreateAllRightForms;
begin

end;

end.
