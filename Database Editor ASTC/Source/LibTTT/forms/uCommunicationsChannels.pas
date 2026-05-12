unit uCommunicationsChannels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, uDBAssetObject, newClassASTT;

type
  TCommunicationsChannelsForm = class(TForm)
    pnlData: TPanel;
    PageControl1: TPageControl;
    General: TTabSheet;
    lblName: TStaticText;
    edtName: TEdit;
    lblChannelNumber: TStaticText;
    edtChannelNumber: TEdit;
    lblCommunicationBand: TStaticText;
    cbxCommunicationBand: TComboBox;
    lblChannelFrequency: TStaticText;
    edtChannelFrequency: TEdit;
    lblMhz: TStaticText;
    lblChannelCode: TStaticText;
    edtChannelCode: TEdit;
    cbSecureChannel: TCheckBox;
    pnlAction: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    btnApply: TButton;

    procedure FormShow(Sender: TObject);

    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure cbxCommunicationBandChange(Sender: TObject);
    procedure cbSecureChannelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtChannelCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
  private
    FSelectedResourceAlloc : TResource_Allocation;
    FSelectedComChannel : TExternal_Communication_Channel;

    procedure UpdateCommunicationChannelData;
  public
    LastName : string;

    function CekInput(IdAction : Integer): Boolean;
    function GetInput(s : string): Boolean;

    property SelectedResourceAlloc : TResource_Allocation
      read FSelectedResourceAlloc write FSelectedResourceAlloc;
    property SelectedComChannel : TExternal_Communication_Channel
      read FSelectedComChannel write FSelectedComChannel;
  end;

var
  CommunicationsChannelsForm: TCommunicationsChannelsForm;

implementation

uses
  uDataModuleTTT;

{$R *.dfm}

procedure TCommunicationsChannelsForm.btnApplyClick(Sender: TObject);
begin
  with FSelectedComChannel do
  begin
    if not CekInput(FData.Comms_Channel_Index)  then
      Exit;

    FData.Resource_Alloc_Index := FSelectedResourceAlloc.FData.Resource_Alloc_Index;
    FData.Channel_Number := StrToInt(edtChannelNumber.Text);
    FData.Channel_Identifier := edtName.Text;
    FData.Comms_Band := cbxCommunicationBand.ItemIndex;
    FData.Channel_Freq := StrToFloat(edtChannelFrequency.Text);
    FData.Channel_Security := Ord(cbSecureChannel.Checked);
    FData.Channel_Code := edtChannelCode.Text;

    if FData.Comms_Channel_Index = 0 then
      dmTTT.InsertExternalCommunicationChannel(FData)
    else
      dmTTT.UpdateExternalCommunicationChannel(FData);
  end;

  btnApply.Enabled := False;
  btnCancel.Visible := False;
end;

procedure TCommunicationsChannelsForm.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TCommunicationsChannelsForm.btnOKClick(Sender: TObject);
begin
  if btnApply.Enabled then
    btnApply.Click;

  Close;
end;

procedure TCommunicationsChannelsForm.cbSecureChannelClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TCommunicationsChannelsForm.cbxCommunicationBandChange(
  Sender: TObject);
begin
  btnApply.Enabled := True;
end;

function TCommunicationsChannelsForm.CekInput(IdAction: Integer): Boolean;
var
  i, chkSpace, numSpace: Integer;
begin
  Result := False;

  if (edtName.Text = '') or (edtChannelCode.Text = '') then
  begin
    ShowMessage('Incomplete data input');
    Exit;
  end;

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

  if Copy(edtChannelCode.Text, 1, 1) = ' ' then
  begin
    chkSpace := Length(edtChannelCode.Text);
    numSpace := 0;
    for i := 1 to chkSpace do
    begin
      if edtChannelCode.Text[i] = #32 then
      numSpace := numSpace + 1;
    end;
    if chkSpace = numSpace then
    begin
      ShowMessage('Incomplete data input');
      Exit;
    end;
  end;

  if (dmTTT.GetExternalCommChannelIdentCount(FSelectedResourceAlloc.FData.
  Resource_Alloc_Index,edtName.Text) > 0) and (IdAction = 0) then
  begin
    ShowMessage('Please use another name');
    Exit;
  end;

  if (IdAction <> 0) and (LastName <> edtName.Text)then
  begin
    if (dmTTT.GetExternalCommChannelIdentCount(FSelectedResourceAlloc.FData.
    Resource_Alloc_Index, edtName.Text) > 0) then
    begin
      ShowMessage('Please use another name');
      Exit;
    end;
  end;

  Result := True;
end;

procedure TCommunicationsChannelsForm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in[#48 .. #57, #8, #13, #46]) then
  begin
    Key := #0;
    Exit;
  end;

  if GetInput(TEdit(sender).Text) then
  begin
    if Key = #46 then
      Key := #0;
  end;

  if Key = #13 then
  begin
    if TEdit(Sender).Text = '' then
      TEdit(Sender).Text := '0';

    btnApply.Enabled := True;
  end;
end;

procedure TCommunicationsChannelsForm.edtChannelCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TCommunicationsChannelsForm.edtNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  btnApply.Enabled := True;
end;

procedure TCommunicationsChannelsForm.FormShow(Sender: TObject);
begin
  UpdateCommunicationChannelData;

  with FSelectedComChannel.FData do
    btnApply.Enabled := Comms_Channel_Index = 0;

  btnCancel.Visible := True;
end;

function TCommunicationsChannelsForm.GetInput(s: string): Boolean;
var
  a, i : Integer;
begin
  Result := False;
  a := 0;

  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
      a := a + 1;
  end;

  if a > 0 then
    Result := True;
end;

procedure TCommunicationsChannelsForm.UpdateCommunicationChannelData;
begin
  with FSelectedComChannel.FData do
  begin
    if Comms_Channel_Index = 0 then
      edtName.Text := '(Unnamed)'
    else
      edtName.Text := Channel_Identifier;

    edtChannelNumber.Text := IntToStr(Channel_Number);
    cbxCommunicationBand.ItemIndex := Comms_Band;
    edtChannelFrequency.Text := FloatToStr(Channel_Freq);
    edtChannelCode.Text := Channel_Code;
    cbSecureChannel.Checked := Boolean(Channel_Security);
  end;
end;

end.

