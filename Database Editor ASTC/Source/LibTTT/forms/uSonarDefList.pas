unit uSonarDefList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfSonarDefList = class(TForm)
    btClose: TButton;
    btCopy: TButton;
    btFilter: TButton;
    btnEdit: TButton;
    btnNew: TButton;
    btRemove: TButton;
    btUsage: TButton;
    lbIdSonars: TListBox;
    lbSonars: TListBox;
    pnlMainBackground: TPanel;
    imgBackground: TImage;
    procedure FormCreate(Sender: TObject);
//    procedure refresh;
  private
    { Private declarations }
  public
    { Public declarations }
    sList: TList;
  end;

var
  fSonarDefList: TfSonarDefList;

implementation

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

procedure TfSonarDefList.FormCreate(Sender: TObject);
begin
  EnableComposited(pnlMainBackground);
end;

end.
