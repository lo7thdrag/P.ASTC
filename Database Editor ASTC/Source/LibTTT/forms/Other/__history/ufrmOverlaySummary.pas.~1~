unit ufrmOverlaySummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uDBAsset_GameEnvironment, uDBAsset_Geo, tttData,
  uMainStaticShape, uMainDynamicShape, uRecord, Vcl.Imaging.pngimage,
  Vcl.ComCtrls;

type
  TfrmOverlaySummary = class(TForm)
    pnl2ControlPage: TPanel;
    pnl1Title: TPanel;
    pnl3Button: TPanel;
    lbl1: TLabel;
    edtName: TEdit;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    btnEditOverlay: TButton;
    cbbDomain: TComboBox;
    cbbType: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    pnlSparatorHor1: TPanel;
    Image2: TImage;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;

    procedure FormShow(Sender: TObject);

    procedure cbbTypeChange(Sender: TObject);
    procedure cbbDomainChange(Sender: TObject);
//    procedure btnAreaClick(Sender: TObject);
    procedure btnEditOverlayClick(Sender: TObject);

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtNameChange(Sender: TObject);


//    procedure GetGameArea;
  private

    FSelectedOverlay : TOverlay_Definition;

    function CekInput: Boolean;
    procedure UpdateOverlayData;

//    procedure initializing;

  public
    StateOverlay : Integer;

    isOK  : Boolean; {Penanda jika gagal cek input, btn OK tidak langsung close}
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, list tdk perlu di update }
    LastName : string;

    GameArea : TGame_Environment_Definition;
    centLong, centLatt  : double;

//    function RecordToFileStream(fFile : String): Boolean;

    property SelectedOverlay : TOverlay_Definition read FSelectedOverlay write FSelectedOverlay;

  end;

var
  frmOverlaySummary : TfrmOverlaySummary;

implementation

uses
  ufrmOverlayEditor, {MapXLib_TLB,} uDataModuleTTT,
  {uOtherSingleList, ufrmOverlayRAPickList,} uDBEditSetting, uBaseCoordSystem;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfrmOverlaySummary.FormShow(Sender: TObject);
begin
  tsGeneral.Show;
  UpdateOverlayData;

  with FSelectedOverlay.FData do
    btnApply.Enabled := Overlay_Index = 0;

  isOK := True;
  AfterClose := True;
  btnCancel.Enabled := True;

//  case i{IdAction} of
//    1 : {New}
//    begin
//      SelectedOverlay.FData.Static_Overlay := 0;
//      SelectedOverlay.FData.Game_Area_Index := 0;
//      SelectedOverlay.FData.Domain := 0;
//
//      edtName.Text := 'New Overlay';
//      cbbType.ItemIndex := 0;
//      cbbType.OnChange(nil);
//      cbbDomain.ItemIndex := 0;
//      StateOverlay := cbbType.ItemIndex;
//      LastName := 'New Overlay';
//
//      GameArea.FGameArea.Game_Area_Index := 0;
//
//      UpdateOverlayData;
//    end;
//    2: {Edit}
//    begin
//      edtName.Text := SelectedOverlay.FData.Overlay_Filename;
//      LastName := SelectedOverlay.FData.Overlay_Filename;
//      cbbType.ItemIndex := SelectedOverlay.FData.Static_Overlay;
//      cbbType.OnChange(nil);
//      cbbDomain.ItemIndex := SelectedOverlay.FData.Domain;
//
////      GetGameArea;
//      UpdateOverlayData;
//    end;
//    3 : {Delete}
//    begin
//
//    end;
//    4 : {Copy}
//    begin
//      i := 0;
//      NameSource  := SelectedOverlay.FData.Overlay_Filename;
//      FileNameSource  := vAppDBSetting.OverlayPath + '\' + NameSource + '.dat';
//      FileNameCopy    := FileNameSource;
//
//      cbbType.ItemIndex := SelectedOverlay.FData.Static_Overlay;
//      cbbType.OnChange(nil);
//      cbbDomain.ItemIndex := SelectedOverlay.FData.Domain;
//
////      GetGameArea;
//
//      while FileExists(FileNameCopy) do
//      begin
//        i := i+1;
//        LastName    := 'Copy ' + IntToStr(i) + ' of ' + NameSource;
//        edtName.Text := LastName;
//
//        FileNameCopy := vAppDBSetting.OverlayPath + '\' + edtName.Text + '.dat';
//      end;
//
//      {Proses copy manual}
//      OverlayEditorForm.StateOverlay := StateOverlay;
//      OverlayEditorForm.LoadShape(FileNameSource);
//      RecordToFileStream(FileNameCopy);
//
//      {Pake fungsi copy ini terlalu riskan, kadang isinya tidak tercopy}
//      {if not CopyFile(PChar(FileNameSource), PChar(FileNameCopy), False) then
//      begin
//        ShowMessage('Tidak berhasil mengcopy file');
//        Close;
//      end;}
//
//      UpdateOverlayData;
//    end;
//  end;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfrmOverlaySummary.btnOkClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  if isOk then
    Close;

  OverlayEditorForm.IsReEdit := False;
end;

procedure TfrmOverlaySummary.btnApplyClick(Sender: TObject);
var
  OverlayDirOld, OverlayDirNew : string;
begin
  with FSelectedOverlay do
  begin
    if not CekInput then
    begin
      isOK := False;
      Exit;
    end;

    {$REGION ' General '}
    FData.Overlay_Identifier := edtName.Text;
    FData.Overlay_Filename := edtName.Text;
    FData.Static_Overlay := cbbType.ItemIndex;
    FData.Domain := cbbDomain.ItemIndex;

    OverlayDirOld := vAppDBSetting.OverlayPath + '\' + LastName + '.dat';
    OverlayDirNew := vAppDBSetting.OverlayPath + '\' + edtName.Text + '.dat';

    LastName := edtName.Text;
    {$ENDREGION}

    if FData.Overlay_Index = 0 then
    begin
      if dmTTT.InsertOverlayDef(FData) then
      begin
        ShowMessage('Data has been saved');
      end;
    end
    else
    begin
      if dmTTT.UpdateOverlayDef(FData) then
      begin
        RenameFile(OverlayDirOld, OverlayDirNew);
        ShowMessage('Data has been updated');
      end;
    end;
  end;

  UpdateOverlayData;

  isOK := True;
  AfterClose := True;
  btnApply.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TfrmOverlaySummary.btnCancelClick(Sender: TObject);
begin
  AfterClose := False;
  Close;
end;

procedure TfrmOverlaySummary.btnEditOverlayClick(Sender: TObject);
begin
  OverlayEditorForm := TOverlayEditorForm.Create(Self);
  try
    with OverlayEditorForm do
    begin
      OverlayDef := FSelectedOverlay;
      ShowModal;
    end;
    AfterClose := OverlayEditorForm.AfterClose;

    btnCancel.Enabled := not AfterClose;
    btnApply.Enabled := AfterClose;
  finally
    OverlayEditorForm.Free;
  end;
end;

procedure InitOleVariant(var TheVar: OleVariant);
begin
  TVarData(TheVar).vType := varError;
  TVarData(TheVar).vError := DISP_E_PARAMNOTFOUND;
end;

//function TfrmOverlaySummary.RecordToFileStream(fFile: String): Boolean;
//var
//     Fs : TFileStream;
//begin
//  Result := True;
//
//  try
//    Fs := TFileStream.Create(fFile, fmOPENWRITE or fmCREATE);
//    case cbbType.ItemIndex of
//      osDynamic : OverlayEditorForm.DrawOverlay.SaveStreamDataDynamic(Fs);
//      osStatic  : OverlayEditorForm.DrawOverlay.SaveStreamDataStatic(Fs);
//    end;
//  except
//     Showmessage('Couldn''t save file overlay!' + #13);
//     Result := False;
//  end;
//  Fs.Free;  // << this actually writes the data to disk
//end;

procedure TfrmOverlaySummary.cbbDomainChange(Sender: TObject);
begin
  FSelectedOverlay.FData.Domain := cbbDomain.ItemIndex;

  btnApply.Enabled := True;
end;

procedure TfrmOverlaySummary.cbbTypeChange(Sender: TObject);
begin
  lbl3.Visible := cbbType.ItemIndex = 1;
  cbbDomain.Visible := cbbType.ItemIndex = 1;
  cbbDomain.ItemIndex := 0;

  btnEditOverlay.Enabled := False;
  btnApply.Enabled := True;

end;

procedure TfrmOverlaySummary.UpdateOverlayData;
begin
  with FSelectedOverlay.FData do
  begin
    if Overlay_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Overlay_Identifier;

    LastName := edtName.Text;

    cbbType.ItemIndex := Static_Overlay;

    lbl3.Visible := Static_Overlay = 1;
    cbbDomain.Visible := Static_Overlay = 1 ;

    cbbDomain.ItemIndex := Domain;

    btnEditOverlay.Enabled := Overlay_Index <> 0;
  end;
end;

function TfrmOverlaySummary.CekInput: Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  {Jika inputan class name kosong}
  if edtName.Text = '' then
  begin
    ShowMessage('Incomplete data input');
    Exit;
  end;

  {Jika berisi spasi semua}
  if Copy(edtName.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtName.Text);
    numSpace := 0;
    for i := 1 to chkSpace do
    begin
      if edtName.Text[i] = #32 then
        numSpace := numSpace + 1;
    end;
    if chkSpace = numSpace then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  {Jika Class Name sudah ada}
  if (dmTTT.GetOverlayDef(edtName.Text)>0) then
  begin
    {Jika inputan baru}
    if FSelectedOverlay.FData.Overlay_Index = 0 then
    begin
      ShowMessage('Please use another overlay name');
      Exit;
    end
    else if LastName <> edtName.Text then
    begin
      ShowMessage('Please use another overlay name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmOverlaySummary.edtNameChange(Sender: TObject);
begin
  btnApply.Enabled := True;
  btnEditOverlay.Enabled := False;
end;

{$ENDREGION}

end.
