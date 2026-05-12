unit uPictureFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, RzTreeVw;

type
  TfPictureFilter = class(TForm)
    PageControl1: TPageControl;
    tsAir: TTabSheet;
    tsSurface: TTabSheet;
    tsAll: TTabSheet;
    tsSubsurface: TTabSheet;
    tsLand: TTabSheet;
    tsGeneral: TTabSheet;
    btnLockAll: TButton;
    btnShowMainAll: TButton;
    btClose: TButton;
    btnLockAir: TButton;
    btnShowMainAir: TButton;
    btnLockSurface: TButton;
    btnShowMainSurface: TButton;
    btnLockSubsurface: TButton;
    btnShowMainSubsurface: TButton;
    btnLockLand: TButton;
    btnShowMainLand: TButton;
    btnLockGeneral: TButton;
    btnShowMainGeneral: TButton;
    RzGeneral: TRzCheckTree;
    tsNone: TTabSheet;
    RzNone: TRzCheckTree;
    btnShowMainNone: TButton;
    btnLockNone: TButton;
    RzSubsurface: TRzCheckTree;
    RzLand: TRzCheckTree;
    RzSurface: TRzCheckTree;
    RzAir: TRzCheckTree;
    RzAll: TRzCheckTree;
    procedure btCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckTreeStateChange(Sender: TObject; Node: TTreeNode;
      NewState: TRzCheckState);
    procedure CheckTreeCascadeComplete(Sender: TObject; Node: TTreeNode);
    procedure CheckTreeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckTreeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    procedure UpdateCheckTree;
    procedure UpdateChild(aNode: TTreeNode; aNewState: TRzCheckState);
    procedure UpdateParents(aNode: TTreeNode);
    procedure RecurseChild(aNode: TTreeNode; aNewState: TRzCheckState);

    function GetSameNode(aCheckTree: TRzCheckTree; aNode: TTreeNode;
      var rNodeAllState: TRzCheckState): TList;
  public
    { Public declarations }
  end;

var
  fPictureFilter: TfPictureFilter;

implementation

uses
  uFilter, tttData;

{$R *.dfm}

procedure TfPictureFilter.btCloseClick(Sender: TObject);
begin
  Hide;
end;

procedure TfPictureFilter.CheckTreeCascadeComplete(Sender: TObject;
  Node: TTreeNode);
begin
//  UpdateCheckTree;
end;

procedure TfPictureFilter.CheckTreeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//
end;

procedure TfPictureFilter.CheckTreeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ct : TRzCheckTree;
  nodeList : TList;
  newState, nodeAllState : TRzCheckState;
  i : Integer;
  tn : TTreeNode;
begin
  ct := TRzCheckTree(Sender);
  nodeList := GetSameNode(ct, ct.Selected, nodeAllState);
  newState := TRzCheckState(ct.Selected.StateIndex);

  for i := 0 to nodeList.Count - 1 do
  begin
    tn := nodeList.Items[i];

    if (ct.Tag <> Ord(pftAll)) and (tn.TreeView.Tag = Ord(pftAll)) then
    begin
      TRzCheckTree(tn.TreeView).ChangeNodeCheckState(tn, nodeAllState); //Redirect to: CheckTreeStateChange
      UpdateChild(tn, nodeAllState);
    end
    else
    begin
      TRzCheckTree(tn.TreeView).ChangeNodeCheckState(tn, newState); //Redirect to: CheckTreeStateChange
      UpdateChild(tn, newState);
    end;

    UpdateParents(tn);
  end;
end;

procedure TfPictureFilter.CheckTreeStateChange(Sender: TObject; Node: TTreeNode;
  NewState: TRzCheckState);
var
  pfType : TPictureFilterType;
  parent, state : string;
begin
  pfType := TPictureFilterType(TRzCheckTree(Sender).Tag);

  if Assigned(Node.Parent) then
    vFilter.UpdateNodeState(pfType, Node.Text, Node.Parent.Text, Node.StateIndex)
  else
    vFilter.UpdateNodeState(pfType, Node.Text, '', Node.StateIndex);
end;

procedure TfPictureFilter.FormActivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 230;
end;

procedure TfPictureFilter.FormCreate(Sender: TObject);
var
  i, j : Integer;
  c : TComponent;
  ct : TRzCheckTree;
  tn : TTreeNode;
  pfType : TPictureFilterType;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    c := Components[i];

    if not (c is TRzCheckTree) then
      Continue;

    ct := TRzCheckTree(c);
    pfType := TPictureFilterType(ct.Tag);

    for j := 0 to ct.Items.Count - 1 do
    begin
      tn := ct.Items[j];

      if Assigned(tn.Parent) then
        vFilter.Add(pfType, tn.Text, tn.Parent.Text, Ord(csChecked))
      else
        vFilter.Add(pfType, tn.Text, '', Ord(csChecked));
    end;

    ct.FullExpand;
  end;

  for I := 0 to 6 do
  begin
    case i of
      0 :vFilter.Add(pftAmphibious, 'Pending', 'Identity', 2);
      1 :vFilter.Add(pftAmphibious, 'Unknown', 'Identity', 2);
      2 :vFilter.Add(pftAmphibious, 'Assumed friend', 'Identity', 2);
      3 :vFilter.Add(pftAmphibious, 'Friend', 'Identity', 2);
      4 :vFilter.Add(pftAmphibious, 'Neutral', 'Identity', 2);
      5 :vFilter.Add(pftAmphibious, 'Suspect', 'Identity', 2);
      6 :vFilter.Add(pftAmphibious, 'Hostile', 'Identity', 2);
    end;
  end;
end;

procedure TfPictureFilter.FormDeactivate(Sender: TObject);
begin
  AlphaBlend := True;
  AlphaBlendValue := 200;
end;

procedure TfPictureFilter.FormShow(Sender: TObject);
begin
  UpdateCheckTree;
  PageControl1.TabIndex := 0;
end;

function TfPictureFilter.GetSameNode(aCheckTree: TRzCheckTree; aNode: TTreeNode;
  var rNodeAllState: TRzCheckState): TList;
var
  i, j, uncheckCount, checkCount : Integer;
  c : TComponent;
  ct : TRzCheckTree;
  tn : TTreeNode;
  tnParentTxt, nodeParentTxt : string;
begin
  Result := TList.Create;

  if Assigned(aNode.Parent) then
    nodeParentTxt := aNode.Parent.Text
  else
    nodeParentTxt := '';

  uncheckCount := 0;
  checkCount := 0;
  rNodeAllState := csUnknown;

  for i := 0 to ComponentCount - 1 do
  begin
    c := Components[i];

    if not (c is TRzCheckTree) then
      Continue;

    ct := TRzCheckTree(c);
    for j := 0 to ct.Items.Count - 1 do
    begin
      tn := ct.Items[j];

      if Assigned(tn.Parent) then
        tnParentTxt := tn.Parent.Text
      else
        tnParentTxt := '';

      if (tn.Text = aNode.Text) and (tnParentTxt = nodeParentTxt) then
      begin
        if aCheckTree.Tag <> Ord(pftAll) then
        begin
          if (ct.Tag <> Ord(pftAll)) and
            not (rNodeAllState = csPartiallyChecked) then
          begin
            Inc(uncheckCount, Ord(tn.StateIndex = Ord(csUnchecked)));
            Inc(checkCount,  Ord(tn.StateIndex = Ord(csChecked)));

            if (tn.StateIndex = Ord(csPartiallyChecked)) or
              ((uncheckCount > 0) and (checkCount > 0)) then
              rNodeAllState := csPartiallyChecked
            else if checkCount > 0 then
              rNodeAllState := csChecked
            else
              rNodeAllState := csUnchecked;
          end;

          if (ct.Tag <> Ord(pftAll)) and (ct.Tag <> aCheckTree.Tag) then
            Continue;
        end;

        Result.Add(tn);
        Break;
      end;
    end;
  end;
end;

procedure TfPictureFilter.RecurseChild(aNode: TTreeNode;
  aNewState: TRzCheckState);
begin
  while Assigned(aNode) do
  begin
    TRzCheckTree(aNode.TreeView).ChangeNodeCheckState(aNode, aNewState); //Redirect to: CheckTreeStateChange

    if aNode.getFirstChild <> nil then
      RecurseChild(aNode.getFirstChild, aNewState);

    aNode := aNode.getNextSibling;
  end;
end;

procedure TfPictureFilter.UpdateCheckTree;
var
  i, j : Integer;
  c : TComponent;
  ct : TRzCheckTree;
  tn : TTreeNode;
  found : Boolean;
  apData : PAnsiChar;
  rData : ^TRecItemData;
  pfType : TPictureFilterType;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    c := Components[i];

    if not (c is TRzCheckTree) then
      Continue;

    ct := TRzCheckTree(c);
    pfType := TPictureFilterType(ct.Tag);

    for j := 0 to ct.Items.Count - 1 do
    begin
      tn := ct.Items[j];

      if Assigned(tn.Parent) then
        vFilter.Find(pfType, tn.Text, tn.Parent.Text, found, apData)
      else
        vFilter.Find(pfType, tn.Text, '', found, apData);

      rData := @apData^;

      if found then
        tn.StateIndex := rData^.State;
    end;
  end;
end;

procedure TfPictureFilter.UpdateChild(aNode: TTreeNode;
  aNewState: TRzCheckState);
begin
  RecurseChild(aNode.getFirstChild, aNewState);
end;

procedure TfPictureFilter.UpdateParents(aNode: TTreeNode);
var
  uncheckedCount, checkedCount, newState : Integer;
begin
  while Assigned(aNode) and Assigned(aNode.Parent) do
  begin
    aNode := aNode.Parent.getFirstChild;
    uncheckedCount := 0;
    checkedCount := 0;

    while True do
    begin
      Inc(uncheckedCount, Ord(aNode.StateIndex = Ord(csUnchecked)));
      Inc(checkedCount, Ord(aNode.StateIndex = Ord(csChecked)));

      if (aNode.StateIndex = Ord(csPartiallyChecked)) or
        ((uncheckedCount > 0) and (checkedCount > 0)) then
      begin
        newState := Ord(csPartiallyChecked);
        Break;
      end;

      if aNode.getNextSibling = nil then
      begin
        if checkedCount > 0 then
          newState := Ord(csChecked)
        else
          newState := Ord(csUnchecked);

        Break;
      end
      else
        aNode := aNode.getNextSibling;
    end;

    aNode := aNode.Parent;

    if Assigned(aNode) then
      TRzCheckTree(aNode.TreeView).ChangeNodeCheckState(aNode,
        TRzCheckState(newState)); //Redirect to: CheckTreeStateChange
  end;
end;

end.
