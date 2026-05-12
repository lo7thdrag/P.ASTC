unit ufrmLauncherList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, newClassASTT;

type
  E_LauncherOwner = (loMissile, loTorpedo);

  TfrmLauncherList = class(TForm)
    lstLauncher: TListBox;
    btnNew: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnClose: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure lstLauncherClick(Sender: TObject);
    procedure lstLauncherDblClick(Sender: TObject);
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
    property LauncherOwner : E_LauncherOwner read FLauncherOwner
      write FLauncherOwner;
    property SelectedWeapon : TObject read FSelectedWeapon
      write FSelectedWeapon;
  end;

var
  frmLauncherList: TfrmLauncherList;

implementation

uses
  uDataModuleTTT, uMissileLaunchers, uTorpedoLauncher, ufrmMissileMount,
  ufrmTorpedoMounts, uDBAsset_Weapon;

{$R *.dfm}

procedure TfrmLauncherList.btnEditClick(Sender: TObject);
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

      finally
        TorpedoLauncherForm.Free;
      end;
    end;
  end;
end;

procedure TfrmLauncherList.btnNewClick(Sender: TObject);
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
          ShowModal;
          UpdateLauncherList;

          SelectedLauncher.Free;
        end;

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
          ShowModal;
          UpdateLauncherList;

          SelectedLauncher.Free;
        end;

      finally
        TorpedoLauncherForm.Free;
      end;
    end;
  end;
end;

procedure TfrmLauncherList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLauncherList.btnRemoveClick(Sender: TObject);
begin
  if lstLauncher.ItemIndex = -1 then
    Exit;

  with FSelectedLauncher.FData do
    dmTTT.DeleteFittedWeaponLauncherOnBoard(Fitted_Weap_Index, Launcher_Type);

  UpdateLauncherList;
end;

procedure TfrmLauncherList.FormCreate(Sender: TObject);
begin
  FLauncherList := TList.Create;
end;

procedure TfrmLauncherList.FormShow(Sender: TObject);
begin
  UpdateLauncherList;
end;

procedure TfrmLauncherList.lstLauncherClick(Sender: TObject);
begin
  FSelectedLauncher := TFitted_Weap_Launcher_On_Board(
    lstLauncher.Items.Objects[lstLauncher.ItemIndex]);
end;

procedure TfrmLauncherList.lstLauncherDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfrmLauncherList.UpdateLauncherList;
var
  i : Integer;
  launcher : TFitted_Weap_Launcher_On_Board;
begin
  lstLauncher.Items.Clear;

  case FLauncherOwner of
    loMissile:
    begin
      dmTTT.GetFittedWeaponLauncherOnBoard(
        TMissile_On_Board(FSelectedWeapon).FData.Fitted_Weap_Index,
        FLauncherList);
    end;
    loTorpedo:
    begin
      dmTTT.GetFittedWeaponLauncherOnBoard(
        TTorpedo_On_Board(FSelectedWeapon).FData.Fitted_Weap_Index,
        FLauncherList);
    end;
  end;

  for i := 0 to FLauncherList.Count - 1 do
  begin
    launcher := FLauncherList.Items[i];

    with launcher.FData do
    begin
      if Launcher_Type <= 8 then
        lstLauncher.Items.AddObject('Launcher ' + IntToStr(Launcher_Type),
          launcher)
      else
      begin
        case FLauncherOwner of
          loMissile: lstLauncher.Items.AddObject('Missile Cell ' +
            IntToStr(Launcher_Type - 8), launcher);
          loTorpedo: lstLauncher.Items.AddObject('Torpedo Tube ' +
            IntToStr(Launcher_Type - 8), launcher);
        end;
      end;
    end;
  end;
end;

end.
