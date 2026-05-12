unit uOverlayTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAssetObject, uLibSettingTTT;

type
  TfrmOverlayTemplate = class(TForm)
    pnlOverlayTemplate: TPanel;
    grpNameOverlay: TGroupBox;
    lblNameOverlay: TLabel;
    edtNameOverlay: TEdit;
    grpTypeOverlay: TGroupBox;
    rbDynamic: TRadioButton;
    rbStatic: TRadioButton;
    grpDomain: TGroupBox;
    rbAir: TRadioButton;
    rbSurface: TRadioButton;
    rbSubsurface: TRadioButton;
    rbLand: TRadioButton;
    rbGeneral: TRadioButton;
    btnOk: TButton;
    btnCancel: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbDynamicClick(Sender: TObject);
    procedure rbStaticClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
//    procedure OnKeyPress(Sender : TObject; var Key: Char);
  private
    { Private declarations }
    procedure getData;
  public
    { Public declarations }
    isNewOverlay : Boolean;
    RA : TResource_Allocation;
  end;

var
  frmOverlayTemplate: TfrmOverlayTemplate;


implementation

{$R *.dfm}

uses uDBScenario, uFormUtil, uSimMgr_Client,
  uGameData_TTT, ufTacticalDisplay;

{ Domain :  Air, Surface, SubSurface, Land, General
              0,       1,          2,    3,       4
  Static/Dynamic, Static_Overlay :  Dynamic, Static
                                          0,      1
}

procedure TfrmOverlayTemplate.FormShow(Sender: TObject);
begin
  AlignFormToMonitor(0, apLeftTop, 0, 450, TForm(self));
end;

procedure TfrmOverlayTemplate.rbDynamicClick(Sender: TObject);
begin
   if rbDynamic.Checked then
   begin
      rbAir.Enabled        := false;
      rbSurface.Enabled    := false;
      rbSubsurface.Enabled := false;
      rbLand.Enabled       := false;
      rbGeneral.Enabled    := false;
   end;
end;

procedure TfrmOverlayTemplate.rbStaticClick(Sender: TObject);
begin
   if rbStatic.Checked then
   begin
      rbAir.Enabled        := True;
      rbSurface.Enabled    := True;
      rbSubsurface.Enabled := True;
      rbLand.Enabled       := True;
      rbGeneral.Enabled    := True;
   end;
end;

procedure TfrmOverlayTemplate.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOverlayTemplate.btnOkClick(Sender: TObject);
var
  str         : string;
  typ, i      : Integer;
  recordOver  : TRecCmd_OverlayTemplate;
begin
   str := vMapSetting.OverlayPath + edtNameOverlay.Text + '.dat';

   with frmTacticalDisplay do
   begin
    for i := 0 to fOverlayEditorStatic.lvTemplates.Items.Count - 1 do
    begin
      if edtNameOverlay.Text = fOverlayEditorStatic.lvTemplates.Items.Item[i].Caption then
      begin
        ShowMessage('Duplikasi nama overlay, Gunakan nama lain !');
        Exit;
      end
    end;
   end;

   if FileExists(str)then
    begin
      isNewOverlay := False;
      ShowMessage('Duplikasi nama overlay pada database, Gunakan nama lain !');
      Exit;
    end
   else
      isNewOverlay := True;

   if isNewOverlay then
   begin
      getData;
      VScenario.Overlay_Mapping.Add(RA);
   end;

//   if rbDynamic.Checked then  typ := 0;
//   if rbStatic.Checked  then  typ := 1;
   if rbDynamic.Checked then
    typ := 0
   else
    typ := 1;

   recordOver.Name := edtNameOverlay.Text;
   recordOver.Tipe := typ;
   recordOver.Domain      := RA.FOverlay.Domain;

   if simMgrClient.ISInstructor then
      recordOver.Cubicle := 0
   else
      recordOver.Cubicle := simMgrClient.FMyCubGroup.FData.Group_Index;

   simMgrClient.netSend_CmdOverlayTemplate(recordOver);
   {create file overlay}
   simMgrClient.DrawOverlayTemplate.FList.Clear;
   simMgrClient.DrawOverlayTemplate.RecordToFileStream(str);
   fOverlayEditorStatic.showOverlay;
   Close;
end;

procedure TfrmOverlayTemplate.getData;
begin
  RA := TResource_Allocation.Create;
  RA.FOverlay.Overlay_Filename := edtNameOverlay.Text;

  if rbDynamic.Checked then
    RA.FOverlay.Static_Overlay   := 0
  else if rbStatic.Checked then
  begin
    RA.FOverlay.Static_Overlay   := 1;

    if rbAir.Checked then
       RA.FOverlay.Domain           := 0
    else if rbSurface.Checked then
       RA.FOverlay.Domain           := 1
    else if rbSubsurface.Checked then
       RA.FOverlay.Domain           := 2
    else if rbLand.Checked then
       RA.FOverlay.Domain           := 3
    else if rbGeneral.Checked then
       RA.FOverlay.Domain           := 4;
  end;
end;

//procedure TfrmOverlayTemplate.OnKeyPress(Sender: TObject; var Key: Char);
//begin
//  if (Key in [#48 .. #57]) then
//    Key := #0
//end;

end.
