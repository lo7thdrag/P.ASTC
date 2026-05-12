unit uRemoteHost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls ;

type
  TfrmRemoteHost = class(TForm)
    lbl1: TLabel;
    rg1: TRadioGroup;
    btnOk: TButton;
    btnCancel: TButton;
    ComboBox1: TComboBox;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    procedure UpdateDisplay ( opt : integer );
  public
  end;

var
  frmRemoteHost: TfrmRemoteHost;

implementation 
{$R *.dfm}

{ TfrmRemoteHost }



procedure TfrmRemoteHost.UpdateDisplay(opt: integer);
begin
    case opt of
    0 : begin
       rg1.Visible := False ;
       Height := 155 ;
    end;
    1  : begin
      rg1.Visible := True ;
       Height := 227 ;
    end;
    end;
end;

procedure TfrmRemoteHost.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfrmRemoteHost.FormCreate(Sender: TObject);
begin
   UpdateDisplay(0);
end;

procedure TfrmRemoteHost.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfrmRemoteHost.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  case Button of
      mbLeft: begin
          if (ssShift in Shift) then begin
            if Height = 155 then
               UpdateDisplay(1)
            else
               UpdateDisplay(0);
          end;
        end;
    end;
end;



end.
