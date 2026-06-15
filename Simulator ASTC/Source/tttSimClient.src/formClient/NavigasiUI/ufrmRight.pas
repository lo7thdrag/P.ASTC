unit ufrmRight;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmRight = class(TForm)
    pnlContainer: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateAllRightForms;
    { Public declarations }
  end;

var
  frmRight: TfrmRight;

implementation

//uses
//  ufrmPlatformTools, ufrmMapTools, ufrmHelp, ufrmTools, ufrmViewNavigasi, ufrmGeneralTools;


{$R *.dfm}

{ TfrmRight }

const
  cWidth = 186;

procedure TfrmRight.CreateAllRightForms;
begin
//  Width := cWidth;
//
//  frmMapTools := TfrmMapTools.Create(nil);
//  frmMapTools.Parent := pnlContainer;
//  frmMapTools.Align := alClient;
//  frmMapTools.Show;
//
//  frmPlatfromTools := TfrmPlatfromTools.Create(nil);
//  frmPlatfromTools.Parent := pnlContainer;
//  frmPlatfromTools.Align := alClient;
//
//  frmTools := TfrmTools.Create(nil);
//  frmTools.Parent := pnlContainer;
//  frmTools.Align := alClient;
//
//  frmGeneralTools := TfrmGeneralTools.Create(nil);
//  frmGeneralTools.Parent := pnlContainer;
//  frmGeneralTools.Align := alClient;
//
//  frmHelp := TfrmHelp.Create(nil);
//  frmHelp.Parent := pnlContainer;
//  frmHelp.Align := alClient;
//
//  frmViewNavigasi := TfrmViewNavigasi.Create(nil);
//  frmViewNavigasi.Parent := pnlContainer;
//  frmViewNavigasi.Align := alClient;
end;

procedure TfrmRight.FormCreate(Sender: TObject);
begin
//  CreateAllRightForms;
//  lblTitle.Caption := 'MAP UTILITY';
//  pnlTitle.Font.Size := 12;
end;

end.
