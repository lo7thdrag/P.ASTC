unit ufrmAvailableWeapon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  E_WeaponListType = (wltMissile, wltTorpedo, wltMine, wltGun, wltBomb);

  TfrmAvailableWeapon = class(TForm)
    lbSingle: TListBox;
    btnNew: TButton;
    btnCopy: TButton;
    btnEdit: TButton;
    btnRemove: TButton;
    btnFilter: TButton;
    btnUsage: TButton;
    btnClose: TButton;
    pnlHorizontal: TPanel;
    pnlMainFilter: TPanel;
    pnlFilterButton: TPanel;
    btnTampilkan: TButton;
    pnlFilterKeterangan: TPanel;
    Label3: TLabel;
    scFilterCategory: TScrollBox;
    Label1: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    pnlFilterTittle: TPanel;
    Label4: TLabel;
    pnlFilterSparator: TPanel;
    pnlMainTable: TPanel;
    pnlTableHeader: TPanel;
    Label2: TLabel;
    pnlTableButton: TPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    pnlTableList: TPanel;
    lstScenario: TListBox;
    pnlVariasi: TPanel;
    pnlVertical1: TPanel;
    pnlVertical2: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormShow(Sender: TObject);

    procedure lbSingleClick(Sender: TObject);
    procedure lbSingleDblClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnUsageClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FWeaponTypeList : E_WeaponListType;

    FWeaponList : TList;
    FSelectedWeapon : TObject;

    procedure UpdateWeaponList;
  public
    property WeaponListType : E_WeaponListType read FWeaponTypeList
      write FWeaponTypeList;
  end;

var
  frmAvailableWeapon: TfrmAvailableWeapon;

implementation

uses
  uDataModuleTTT, ufrmMissileSummary, ufrmTorpedoSummary, ufrmMineSummary, ufrmGunSummary,
  ufrmBombSummary, ufrmUsage, uDBAsset_Weapon;

{$R *.dfm}

procedure TfrmAvailableWeapon.btnCloseClick(Sender: TObject);
var
  i : Integer;
  missile : TMissile_On_Board;
begin
  for i := 0 to FWeaponList.Count - 1 do
  begin
    missile := FWeaponList.Items[i];
    missile.Free;
  end;

  FWeaponList.Clear;

  Close;
end;

procedure TfrmAvailableWeapon.btnCopyClick(Sender: TObject);
var
  newClassName : string;
  count : Integer;
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  case FWeaponTypeList of
    wltMissile:
    begin
      with TMissile_On_Board(FSelectedWeapon) do
      begin
        newClassName := FDef.Class_Identifier + ' - Copy';

        count := dmTTT.GetMissileDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDef.Class_Identifier := newClassName;

        dmTTT.InsertMissileDef(FDef);
        dmTTT.InsertNoteStorage(2, FDef.Missile_Index, FNote);
      end;
    end;
    wltTorpedo:
    begin
      with TTorpedo_On_Board(FSelectedWeapon) do
      begin
        newClassName := FDef.Class_Identifier + ' - Copy';

        count := dmTTT.GetTorpedoDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FDef.Class_Identifier := newClassName;

        dmTTT.InsertTorpedoDef(FDef);
        dmTTT.InsertNoteStorage(4, FDef.Torpedo_Index, FNote);
      end;
    end;
    wltMine:
    begin
      with TMine_On_Board(FSelectedWeapon) do
      begin
        newClassName := FMine_Def.Mine_Identifier + ' - Copy';

        count := dmTTT.GetMineDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FMine_Def.Mine_Identifier := newClassName;

        dmTTT.InsertMineDef(FMine_Def);
        dmTTT.InsertNoteStorage(3, FMine_Def.Mine_Index, FNote);
      end;
    end;
    wltGun:
    begin
      with TGun_Definition(FSelectedWeapon) do
      begin
        newClassName := FData.Gun_Identifier + ' - Copy';

        count := dmTTT.GetGunDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FData.Gun_Identifier := newClassName;

        dmTTT.InsertGunDef(FData);
        dmTTT.InsertNoteStorage(13, FData.Gun_Index, FNote);
      end;
    end;
    wltBomb:
    begin
      with TBomb_Definition(FSelectedWeapon) do
      begin
        newClassName := FData.Bomb_Identifier + ' - Copy';

        count := dmTTT.GetBombDef(newClassName);

        if count > 0 then
          newClassName := newClassName + ' (' + IntToStr(count + 1) + ')';

        FData.Bomb_Identifier := newClassName;

        dmTTT.InsertBombDef(FData);
        dmTTT.InsertNoteStorage(14, FData.Bomb_Index, FNote);
      end;
    end;
  end;

  UpdateWeaponList;
end;

procedure TfrmAvailableWeapon.btnEditClick(Sender: TObject);
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  case FWeaponTypeList of
    wltMissile:
    begin
      with frmMissileSummary do
      begin
        SelectedMissile := TMissile_On_Board(FSelectedWeapon);
        ShowModal;
      end;
    end;
    wltTorpedo:
    begin
      with frmTorpedoSummary do
      begin
        SelectedTorpedo := TTorpedo_On_Board(FSelectedWeapon);
        ShowModal;
      end;
    end;
    wltMine:
    begin
      with frmMineSummary do
      begin
        SelectedMine := TMine_On_Board(FSelectedWeapon);
        ShowModal;
      end;
    end;
    wltGun:
    begin
      with frmGunSummary do
      begin
        SelectedGun := TGun_Definition(FSelectedWeapon);
        ShowModal;
      end;
    end;
    wltBomb:
    begin
      with frmBombSummary do
      begin
        SelectedBomb := TBomb_Definition(FSelectedWeapon);
        ShowModal;
      end;
    end;
  end;

  UpdateWeaponList;
end;

procedure TfrmAvailableWeapon.btnNewClick(Sender: TObject);
begin
  case FWeaponTypeList of
    wltMissile:
    begin
      with frmMissileSummary do
      begin
        SelectedMissile := TMissile_On_Board.Create;
        ShowModal;
      end;
    end;
    wltTorpedo:
    begin
      with frmTorpedoSummary do
      begin
//        IdAction := 1;
        SelectedTorpedo := TTorpedo_On_Board.Create;
        ShowModal;
      end;
    end;
    wltMine:
    begin
      with frmMineSummary do
      begin
        SelectedMine := TMine_On_Board.Create;
        ShowModal;
      end;
    end;
    wltGun:
    begin
      with frmGunSummary do
      begin
        SelectedGun := TGun_Definition.Create;
        ShowModal;
      end;
    end;
    wltBomb:
    begin
      with frmBombSummary do
      begin
        SelectedBomb := TBomb_Definition.Create;
        ShowModal;
      end;
    end;
  end;

  UpdateWeaponList;
end;

procedure TfrmAvailableWeapon.btnRemoveClick(Sender: TObject);
var
  warning : Integer;
begin
  if lbSingle.ItemIndex = -1 then
    Exit;

  warning := MessageDlg('Are you sure to delete this item?', mtConfirmation,
    mbOKCancel, 0);

  if warning = mrOK then
  begin
    case FWeaponTypeList of
      wltMissile:
      begin
        with TMissile_On_Board(FSelectedWeapon).FDef do
        begin
          if dmTTT.CheckMissile_On_FittedWeaponOnBoard(Missile_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some vehicles');
            Exit;
          end;
          dmTTT.deleteHybrid(Missile_Index);
          dmTTT.DeleteMissileDef(Missile_Index);
        end;
      end;
      wltTorpedo:
      begin
        with TTorpedo_On_Board(FSelectedWeapon).FDef do
        begin
          if dmTTT.CheckTorpedo_On_FittedWeaponOnBoard(Torpedo_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some vehicles');
            Exit;
          end;
          dmTTT.deleteHybrid_ByTorpedo(Torpedo_Index);
          dmTTT.DeleteTorpedo_POH_Modifier(IntToStr(Torpedo_Index));
          dmTTT.DeleteTorpedoDef(Torpedo_Index);
        end;
      end;
      wltMine:
      begin
        with TMine_On_Board(FSelectedWeapon).FMine_Def do
        begin
          if dmTTT.CheckMine_On_FittedWeaponOnBoard(Mine_Index) > 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some vehicles');
            Exit;
          end;
          dmTTT.DeleteMinePODvsRange(1, Mine_Index);
          dmTTT.DeleteMineDef(Mine_Index);
        end;
      end;
      wltGun:
      begin
        with TGun_Definition(FSelectedWeapon).FData do
        begin
          if dmTTT.CheckGun_On_PointEffectOnBoard(Gun_Index)> 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some vehicles');
            Exit;
          end;
          dmTTT.DeleteGunPOHvsRange(1, Gun_Index);
          dmTTT.DeleteGunDef(Gun_Index);
        end;
      end;
      wltBomb:
      begin
        with TBomb_Definition(FSelectedWeapon).FData do
        begin
          if dmTTT.CheckBomb_On_PointEffectOnBoard(Bomb_Index)> 0 then
          begin
            ShowMessage('Cannot delete, because is already in used by some vehicles');
            Exit;
          end;
          dmTTT.DeleteBombPOHvsRange(1, Bomb_Index);
          dmTTT.DeleteBombDef(Bomb_Index);
        end;
      end;
    end;

    UpdateWeaponList;
  end;
end;

procedure TfrmAvailableWeapon.btnUsageClick(Sender: TObject);
begin
  if lbSingle.ItemIndex = -1 then
    Exit;
  with frmUsage do
  begin
    case FWeaponTypeList of
      wltMissile:
      begin
        UId := TMissile_On_Board(FSelectedWeapon).FDef.Missile_Index;
        name_usage := TMissile_On_Board(FSelectedWeapon).FDef.Class_Identifier;
        usage_title := 'Fitted Weapon Mount On Board Vehicle:';
        UIndex := 7;
      end;
      wltTorpedo:
      begin
        UId := TTorpedo_On_Board(FSelectedWeapon).FDef.Torpedo_Index;
        name_usage := TTorpedo_On_Board(FSelectedWeapon).FDef.Class_Identifier;
        usage_title := 'Fitted Weapon Mount On Board Vehicle:';
        UIndex := 8;
      end;
      wltMine:
      begin
        UId := TMine_On_Board(FSelectedWeapon).FMine_Def.Mine_Index;
        name_usage := TMine_On_Board(FSelectedWeapon).FMine_Def.Mine_Identifier;
        usage_title := 'Fitted Weapon Mount On Board Vehicle:';
        UIndex := 9;
      end;
      wltGun:
      begin
        UId := TGun_Definition(FSelectedWeapon).FData.Gun_Index;
        name_usage := TGun_Definition(FSelectedWeapon).FData.Gun_Identifier;
        usage_title := 'Point Effect On Board Vehicle:';
        UIndex := 10;
      end;
      wltBomb:
      begin
        UId := TBomb_Definition(FSelectedWeapon).FData.Bomb_Index;
        name_usage := TBomb_Definition(FSelectedWeapon).FData.Bomb_Identifier;
        usage_title := 'Point Effect On Board Vehicle:';
        UIndex := 11;
      end;
    end;
    ShowModal;
  end;
end;

procedure TfrmAvailableWeapon.FormCreate(Sender: TObject);
begin
  FWeaponList := TList.Create;
end;

procedure TfrmAvailableWeapon.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if GetKeyState(VK_ESCAPE) < 0 then
  begin
    case Msg.CharCode of
      VK_ESCAPE: Close;
    end;
  end;
end;

procedure TfrmAvailableWeapon.FormShow(Sender: TObject);
begin
  case FWeaponTypeList of
    wltMissile: Caption := 'Missile';
    wltTorpedo: Caption := 'Torpedo';
    wltMine: Caption := 'Mine';
    wltGun: Caption := 'Gun';
    wltBomb: Caption := 'Bomb / Depth Charge';
  end;

  UpdateWeaponList;
end;

procedure TfrmAvailableWeapon.lbSingleClick(Sender: TObject);
begin
  FSelectedWeapon := lbSingle.Items.Objects[lbSingle.ItemIndex];

  btnCopy.Enabled := lbSingle.ItemIndex <> -1;
  btnEdit.Enabled := lbSingle.ItemIndex <> -1;
  btnRemove.Enabled := lbSingle.ItemIndex <> -1;
  btnUsage.Enabled := lbSingle.ItemIndex <> -1;
end;

procedure TfrmAvailableWeapon.lbSingleDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfrmAvailableWeapon.UpdateWeaponList;
var
  i : Integer;
  missile : TMissile_On_Board;
  torpedo : TTorpedo_On_Board;
  mine : TMine_On_Board;
  gun : TGun_Definition;
  bomb : TBomb_Definition;
begin
  lbSingle.Items.Clear;

  case FWeaponTypeList of
    wltMissile:
    begin
      dmTTT.GetAllMissileDef(FWeaponList);

      for i := 0 to FWeaponList.Count - 1 do
      begin
        missile := FWeaponList.Items[i];
        lbSingle.Items.AddObject(missile.FDef.Class_Identifier, missile);
      end;
    end;
    wltTorpedo:
    begin
      dmTTT.GetAllTorpedoDef(FWeaponList);

      for i := 0 to FWeaponList.Count - 1 do
      begin
        torpedo := FWeaponList.Items[i];
        lbSingle.Items.AddObject(torpedo.FDef.Class_Identifier, torpedo);
      end;
    end;
    wltMine:
    begin
      dmTTT.GetAllMineDef(FWeaponList);

      for i := 0 to FWeaponList.Count - 1 do
      begin
        mine := FWeaponList.Items[i];
        lbSingle.Items.AddObject(mine.FMine_Def.Mine_Identifier, mine);
      end;
    end;
    wltGun:
    begin
      dmTTT.GetAllGunDef(FWeaponList);

      for i := 0 to FWeaponList.Count - 1 do
      begin
        gun := FWeaponList.Items[i];
        lbSingle.Items.AddObject(gun.FData.Gun_Identifier, gun);
      end;
    end;
    wltBomb:
    begin
      dmTTT.GetBombDef(FWeaponList);

      for i := 0 to FWeaponList.Count - 1 do
      begin
        bomb := FWeaponList.Items[i];
        lbSingle.Items.AddObject(bomb.FData.Bomb_Identifier, bomb);
      end;
    end;
  end;
end;

end.
