unit uFilter;

interface

uses
  Classes, tttData;

type
  TFilter = class
  private
    FAllFilterList : TList;
    FAirFilterList : TList;
    FSurfaceFilterList : TList;
    FSubsurfaceFilterList : TList;
    FLandFilterList : TList;
    FAmphibious : TList;
    FGeneralFilterList : TList;
    FNoneFilterList : TList;
  public
    constructor Create;
    destructor Destroy;

    procedure Add(aTreeType: TPictureFilterType; aText, aParent: string;
      aState: Integer);
    procedure Find(aTreeType: TPictureFilterType; aText, aParent: string; var aResult: Boolean;
      var apData: PAnsiChar);
    procedure UpdateNodeState(aTreeType: TPictureFilterType; aText,
      aParent: string; aState: Integer);

    function Show(aTreeType: TPictureFilterType; aText, aParent: string): Boolean;
  end;

var
  vFilter: TFilter;

implementation

{ TFilter }

procedure TFilter.Add(aTreeType: TPictureFilterType; aText, aParent: string;
  aState: Integer);
var
  rFound : Boolean;
  apData : PAnsiChar;
  data : ^TRecItemData;
begin
  New(data);
  data^.Text := aText;
  data^.Parent := aParent;
  data^.State := aState;

  case aTreeType of
    pftAll: FAllFilterList.Add(data);
    pftAir: FAirFilterList.Add(data);
    pftSurface: FSurfaceFilterList.Add(data);
    pftSubsurface: FSubsurfaceFilterList.Add(data);
    pftLand: FLandFilterList.Add(data);
    pftAmphibious: FAmphibious.Add(data);
    pftGeneral: FGeneralFilterList.Add(data);
    pftNone: FNoneFilterList.Add(data);
  end;
end;

constructor TFilter.Create;
begin
  FAllFilterList := TList.Create;
  FAirFilterList := TList.Create;
  FSurfaceFilterList := TList.Create;
  FSubsurfaceFilterList := TList.Create;
  FLandFilterList := TList.Create;
  FAmphibious := TList.Create;
  FGeneralFilterList := TList.Create;
  FNoneFilterList := TList.Create;
end;

destructor TFilter.Destroy;
begin
  FAllFilterList.Clear;
  FAllFilterList.Free;

  FAirFilterList.Clear;
  FAirFilterList.Free;

  FSurfaceFilterList.Clear;
  FSurfaceFilterList.Free;

  FSubsurfaceFilterList.Clear;
  FSubsurfaceFilterList.Free;

  FLandFilterList.Clear;
  FLandFilterList.Free;

  FAmphibious.Clear;
  FAmphibious.Free;

  FGeneralFilterList.Clear;
  FGeneralFilterList.Free;

  FNoneFilterList.Clear;
  FNoneFilterList.Free;
end;

procedure TFilter.Find(aTreeType: TPictureFilterType; aText, aParent: string;
  var aResult: Boolean; var apData: PAnsiChar);
var
  i : Integer;
  data : ^TRecItemData;
  tempList : TList;
begin
  tempList := nil;

  case aTreeType of
    pftAll: tempList := FAllFilterList;
    pftAir: tempList := FAirFilterList;
    pftSurface: tempList := FSurfaceFilterList;
    pftSubsurface: tempList := FSubsurfaceFilterList;
    pftLand: tempList := FLandFilterList;
    pftAmphibious: tempList := FAmphibious;
    pftGeneral: tempList := FGeneralFilterList;
    pftNone: tempList := FNoneFilterList;
  end;

  aResult := False;

  if Assigned(tempList) then
  begin
    for i := 0 to tempList.Count - 1 do
    begin
      data := tempList.Items[i];

      if (data.Text = aText) and (data.Parent = aParent) then
      begin
        aResult := True;
        apData := @data^;
        Break;
      end;
    end;
  end;
end;

function TFilter.Show(aTreeType: TPictureFilterType; aText,
  aParent: string): Boolean;
var
  i : Integer;
  tempList : TList;
  data : ^TRecItemData;
begin
  tempList := nil;

  case aTreeType of
    pftAll: tempList := FAllFilterList;
    pftAir: tempList := FAirFilterList;
    pftSurface: tempList := FSurfaceFilterList;
    pftSubsurface: tempList := FSubsurfaceFilterList;
    pftLand: tempList := FLandFilterList;
    pftAmphibious: tempList := FAmphibious;
    pftGeneral: tempList := FGeneralFilterList;
    pftNone: tempList := FNoneFilterList;
  end;

  if Assigned(tempList) then
  begin
    for i := 0 to tempList.Count - 1 do
    begin
      data := tempList.Items[i];

      if (data.Text = aText) and (data.Parent = aParent) then
      begin
        Result := (data.State = 2);
        Break;
      end;
    end;
  end;
end;

procedure TFilter.UpdateNodeState(aTreeType: TPictureFilterType; aText,
  aParent: string; aState: Integer);
var
  i, size : Integer;
  rFound : Boolean;
  apData : PAnsiChar;
  rData : ^TRecItemData;
begin
  Find(aTreeType, aText, aParent, rFound, apData);

  rData := @apData^;

  if rFound then
    rData^.State := aState;
end;

end.
