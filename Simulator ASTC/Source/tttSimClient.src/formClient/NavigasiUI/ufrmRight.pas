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
    procedure ShowMapTools;
    procedure ShowPlatformTools;
    procedure ShowTools;
    procedure ShowPlatformInfo;
    procedure ShowViewNavigasi;
    procedure ShowHelp;
    { Public declarations }
  end;

var
  frmRight: TfrmRight;

implementation

uses
  ufrmPlatformTools, ufrmMapTools, ufrmHelp, ufrmTools, ufrmViewNavigasi, ufrmGeneralTools;


{$R *.dfm}

{ TfrmRight }

const
  cWidth = 186;

procedure TfrmRight.CreateAllRightForms;
begin
  Width := cWidth;

  frmMapTools := TfrmMapTools.Create(nil);
  frmMapTools.Parent := pnlContainer;
  frmMapTools.Align := alClient;
  frmMapTools.Show;

  frmPlatfromTools := TfrmPlatfromTools.Create(nil);
  frmPlatfromTools.Parent := pnlContainer;
  frmPlatfromTools.Align := alClient;

  frmTools := TfrmTools.Create(nil);
  frmTools.Parent := pnlContainer;
  frmTools.Align := alClient;

  frmGeneralTools := TfrmGeneralTools.Create(nil);
  frmGeneralTools.Parent := pnlContainer;
  frmGeneralTools.Align := alClient;

  frmHelp := TfrmHelp.Create(nil);
  frmHelp.Parent := pnlContainer;
  frmHelp.Align := alClient;

  frmViewNavigasi := TfrmViewNavigasi.Create(nil);
  frmViewNavigasi.Parent := pnlContainer;
  frmViewNavigasi.Align := alClient;
end;

procedure TfrmRight.FormCreate(Sender: TObject);
begin
  CreateAllRightForms;
  lblTitle.Caption := 'MAP UTILITY';
  pnlTitle.Font.Size := 12;
end;

procedure TfrmRight.ShowHelp;
begin
  lblTitle.Caption := 'HELP';

  frmPlatfromTools.Hide;
  frmTools.Hide;
  frmGeneralTools.Hide;
  frmMapTools.Hide;
  frmHelp.Show;
  frmViewNavigasi.Hide;
end;

procedure TfrmRight.ShowMapTools;
begin
  lblTitle.Caption := 'MAP UTILITY';

  frmTools.Hide;
  frmMapTools.Show;
  frmHelp.Hide;
  frmViewNavigasi.Hide;
  frmPlatfromTools.Hide;
  frmGeneralTools.Hide;
end;

procedure TfrmRight.ShowPlatformInfo;
begin
  lblTitle.Caption := 'PLATFORM CONTROL';

  frmPlatfromTools.Hide;
  frmTools.Hide;
  frmMapTools.Hide;
  frmGeneralTools.Show;
  frmGeneralTools.btnTransferLog.Hide;
  frmGeneralTools.btnFullScreen.Top := 647;
  frmGeneralTools.btnWindowedScreen.Top := 647;
  frmHelp.Hide;
  frmViewNavigasi.Hide;
end;

procedure TfrmRight.ShowPlatformTools;
begin
  lblTitle.Caption := 'PLATFORM TOOLS';

  frmTools.Hide;
  frmMapTools.Hide;
  frmGeneralTools.Hide;
  frmPlatfromTools.Show;
  frmHelp.Hide;
  frmViewNavigasi.Hide;
end;

procedure TfrmRight.ShowTools;
begin
  lblTitle.Caption := 'TOOLS';

  frmMapTools.Hide;
  frmGeneralTools.Hide;
  frmPlatfromTools.Hide;
  frmTools.Show;
  frmHelp.Hide;
  frmViewNavigasi.Hide;
end;

procedure TfrmRight.ShowViewNavigasi;
begin
  lblTitle.Caption := 'VIEW';

  frmPlatfromTools.Hide;
  frmTools.Hide;
  frmGeneralTools.Hide;
  frmMapTools.Hide;
  frmHelp.Hide;
  frmViewNavigasi.Show;
end;

end.
