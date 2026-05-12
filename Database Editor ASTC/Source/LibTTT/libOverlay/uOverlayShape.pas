unit uOverlayShape;

interface

uses
  Graphics, uCoordConvertor;

type

  TOverlayShape = class
  private
    FColor : TColor;
  protected
    FConverter : TCoordConverter;
  public
    constructor Create; virtual;
    destructor Destroy; virtual;

    procedure Draw(const aCanvas: TCanvas); virtual;

    property Converter : TCoordConverter read FConverter write FConverter;
  end;

implementation

{ TOverlayShape }

constructor TOverlayShape.Create;
begin

end;

destructor TOverlayShape.Destroy;
begin

end;

procedure TOverlayShape.Draw(const aCanvas: TCanvas);
begin
  with aCanvas do
  begin

  end;
end;

end.
