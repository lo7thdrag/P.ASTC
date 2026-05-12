unit uLauncherList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, newClassASTT, uDBAsset_Weapon, uSimContainers, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  E_LauncherOwner = (loMissile, loTorpedo);

  TfLauncherList = class(TForm)
    lstLauncher: TListBox;
    btnClose: TButton;
    pnl3Button: TPanel;
    pnlSparatorHor2: TPanel;
    Image1: TImage;
    pnl2ControlPage: TPanel;
    pnlTableHeader: TPanel;
    btnNew: TImage;
    btnEdit: TImage;
    btnDelete: TImage;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstLauncherClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    FLauncherOwner : E_LauncherOwner;
    FSelectedWeapon : TObject;

    FLauncherList : TList;
    FSelectedLauncher : TFitted_Weap_Launcher_On_Board;

    procedure UpdateLauncherList;

  public
    AfterClose : Boolean; {Penanda ketika yg dipilih btn cancel, btn Cancel di summary menyala}
    property LauncherOwner : E_LauncherOwner read FLauncherOwner write FLauncherOwner;
    property SelectedWeapon : TObject read FSelectedWeapon write FSelectedWeapon;
  end;

var
  fLauncherList: TfLauncherList;

implementation

uses
  uDataModuleTTT, uMissileLaunchers, uTorpedoLauncher;

{$R *.dfm}

{$REGION ' Form Handle '}

procedure TfLauncherList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeItemsAndFreeList(FLauncherList);
  Action := cafree;
end;

procedure TfLauncherList.FormCreate(Sender: TObject);
begin
  FLauncherList := TList.Create;
end;

procedure TfLauncherList.FormShow(Sender: TObject);
begin
  UpdateLauncherList;
end;

{$ENDREGION}

{$REGION ' Button Handle '}

procedure TfLauncherList.btnNewClick(Sender: TObject);
begin
  case FLauncherOwner of
    loMissile:
    begin
      MissileLaunchersForm := TMissileLaunchersForm.Create(Self);
      try
        with MissileLaunchersForm do
        begin
          SelectedMissile := TMissile_On_Board(FSelectedWeapon);
          SelectedLauncher := TFitted_Weap_Launcher_On_Board.Create;
          SelectedLauncher.FData.Launcher_Type := 1;
          ShowModal;
          SelectedLauncher.Free;
          UpdateLauncherList;
        end;
        AfterClose := MissileLaunchersForm.AfterClose;
      finally
        MissileLaunchersForm.Free;
      end;
    end;
    loTorpedo:
    begin
      TorpedoLauncherForm := TTorpedoLauncherForm.Create(Self);
      try
        with TorpedoLauncherForm do
        begin
          SelectedTorpedo := TTorpedo_On_Board(FSelectedWeapon);
          SelectedLauncher := TFitted_Weap_Launcher_On_Board.Create;
          SelectedLauncher.FData.Launcher_Type := 1;
          ShowModal;
          SelectedLauncher.Free;
          UpdateLauncherList;
        end;
        AfterClose := TorpedoLauncherForm.AfterClose;
      finally
        TorpedoLauncherForm.Free;
      end;
    end;
  end;
end;

procedure TfLauncherList.btnEditClick(Sender: TObject);
begin
  if lstLauncher.ItemIndex = -1 then
    Exit;

   case FLauncherOwner of
    loMissile:
    begin
      MissileLaunchersForm := TMissileLaunchersForm.Create(Self);
      try
        with MissileLaunchersForm do
        begin
          SelectedMissile := TMissile_On_Board(FSelectedWeapon);
          SelectedLauncher := FSelectedLauncher;
          ShowModal;
          UpdateLauncherList;
        end;
        AfterClose := MissileLaunchersForm.AfterClose;
      finally
        MissileLaunchersForm.Free;
      end;
    end;
    loTorpedo:
    begin
      TorpedoLauncherForm := TTorpedoLauncherForm.Create(Self);
      try
        with TorpedoLauncherForm do
        begin
          SelectedTorpedo := TTorpedo_On_Board(FSelectedWeapon);
          SelectedLauncher := FSelectedLauncher;
          ShowModal;
          UpdateLauncherList;
        end;
        AfterClose := TorpedoLauncherForm.AfterClose;
      finally
        TorpedoLauncherForm.Free;
      end;
    end;
  end;

end;

procedure TfLauncherList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfLauncherList.btnRemoveClick(Sender: TObject);
var
  warning : Integer;

begin
  if lstLauncher.ItemIndex = -1 then
  begin
    ShowMessage('Select Launcher Data ... !');
    Exit;
  end;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    with FSelectedLauncher.FData do
      dmTTT.DeleteFittedWeaponLauncherOnBoard(Fitted_Weap_Index, Launcher_Type);
  end;

  AfterClose := True;
  UpdateLauncherList;
end;

procedure TfLauncherList.lstLauncherClick(Sender: TObject);
begin
  if lstLauncher.ItemIndex = -1 then
    Exit;

  FSelectedLauncher := TFitted_Weap_Launcher_On_Board( lstLauncher.Items.Objects[lstLauncher.ItemIndex]);
end;

procedure TfLauncherList.UpdateLauncherList;
var
  i : Integer;
  launcher : TFitted_Weap_Launcher_On_Board;
begin
  lstLauncher.Items.Clear;

  case FLauncherOwner of
    loMissile: dmTTT.GetFittedWeaponLauncherOnBoard(TMissile_On_Board(FSelectedWeapon).FData.Fitted_Weap_Index,FLauncherList);
    loTorpedo: dmTTT.GetFittedWeaponLauncherOnBoard(TTorpedo_On_Board(FSelectedWeapon).FData.Fitted_Weap_Index,FLauncherList);
  end;

  for i := 0 to FLauncherList.Count - 1 do
  begin
    launcher := FLauncherList.Items[i];

    with launcher.FData do
    begin
      if Launcher_Type <= 8 then
        lstLauncher.Items.AddObject('Launcher ' + IntToStr(Launcher_Type), launcher)
      else
      begin
        case FLauncherOwner of
          loMissile: lstLauncher.Items.AddObject('Missile Cell ' + IntToStr(Launcher_Type - 8), launcher);
          loTorpedo: lstLauncher.Items.AddObject('Torpedo Tube ' + IntToStr(Launcher_Type - 8), launcher);
        end;
      end;
    end;
  end;
end;

{$ENDREGION}

end.
