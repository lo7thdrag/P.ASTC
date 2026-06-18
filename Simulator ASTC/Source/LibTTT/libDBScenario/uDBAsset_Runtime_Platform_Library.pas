unit uDBAsset_Runtime_Platform_Library;

interface

uses
  tttData, uSimContainers, Classes;


type



  TRuntime_Platform_Library = class
  public
    FData     : TRecRuntime_Platform_Library;
    FPlatform_Library_Entry : TList;
  private

  public
    constructor Create;
    destructor Destroy; override;

  end;

  TPlatform_Library_Entry = class
  public
    FData   : TRecPlatform_Library_Entry;
  end;


implementation




{ TRuntime_Platform_Library }

constructor TRuntime_Platform_Library.Create;
begin
  FPlatform_Library_Entry := TList.Create;
end;

destructor TRuntime_Platform_Library.Destroy;
begin
  ClearAndFreeItems(FPlatform_Library_Entry);
  inherited;
end;

end.
