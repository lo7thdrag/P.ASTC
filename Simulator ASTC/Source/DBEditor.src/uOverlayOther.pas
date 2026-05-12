unit uOverlayOther;

interface

uses
  MapXLib_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin,
  OleCtrls, uMapXHandler, uCoordConvertor, uBaseCoordSystem,
  uDBAsset_GameEnvironment, {TeCanvas,} ColorGrd;

type
  TLineRecord = record
    posStartLatitude        : Double;
    posStartLongitude       : Double;
    posEndlatitude          : Double;
    posEndLongitude         : Double;
    gridStartLatitude       : string[30];
    gridStartLongitude      : string[30];
    gridEndlatitude         : string[30];
    gridEndLongitude        : string[30];
    color                   : integer;
  end;

  TTableRecord = record
    tablePosStartLatitude        : Double;
    tablePosStartLongitude       : Double;
    tablePosEndLatitude          : Double;
    tablePosEndLongitude         : Double;
    tableCenterGridLatitude      : string[30];      // dlm map
    tableCenterGridLongitude     : string[30];      // dlm map
    tableCenterPosLatitude       : Double;
    tableCenterPosLongitude      : Double;
    tableCellWidth               : integer;         // dlm nm
    tableCellheight              : integer;         // dlm nm
    tableNumbColumns             : integer;
    tableNumbRows                : integer;
    color                        : integer;
    isSelected                   : boolean;
  end;

  TRectRecord = record
    rectanglePosStartLatitude: Double;
    rectanglePosStartLongitude: Double;
    rectanglePosEndLatitude: Double;
    rectanglePosEndLongitude: Double;
    rectangleGridStartLatitude: string[30];
    rectangleGridStartLongitude: string[30];
    rectangleGridEndLatitude: string[30];
    rectangleGridEndLongitude: string[30];
  end;

  TEllipseRecord = record
    ellipsePosStartLatitude: Double;
    ellipsePosStartLongitude: Double;
    ellipsePosEndLatitude: Double;
    ellipsePosEndLongitude: Double;
    ellipsePosCenterLatitude: Double;
    ellipsePosCenterLongitude: Double;
    ellipseMajor: Double;
    ellipseMinor: Double;
    ellipseGridPointCenterLatitude: string[30];
    ellipseGridPointCenterLongitude: string[30];
  end;

  TTextRecord = record
    textPosStartLatitude: Double;
    textPosStartLongitude: Double;
    textGridStartLatitude: string[30];
    textGridStartLongitude: string[30];
    TextString: String[30];
    textSize: integer;
  end;

  { /////////////////////////////////////////////// }
  TDrawOverlay = class
  protected
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Clear;

  end;

  TLineOverlay = class(TDrawOverlay)
  public
    dataLineRecord: TLineRecord;
    LineRecord: TLineRecord;

    LineFile: File of TLineRecord;
    is_LineFileCreated: boolean;

    constructor Create;
    destructor Destroy; override;

    procedure createLineFile(nameFile: string);
    procedure loadLineOverlay(fName: string);
    procedure saveLineRecord(mapLineStartX: Double; mapLineStartY: Double;
      mapLineEndX: Double; mapLineEndY: Double; LineGridStartLat: string;
      lineGridStartLong: string; LineGridEndLat: String;
      LineGridEndLong: String; LineColor: Integer);
    procedure lineRecordToFile(fName: String);
    procedure drawLineOverlay(FCanvas: TCanvas; Map1: TMap);
  end;

  TTableOverlay = class(TDrawOverlay)
    dataTableRecord: TTableRecord;
    TableRecord: TTableRecord;

    TableFile: File of TTableRecord;
    is_TableFileCreated: boolean;

    constructor Create;
    destructor Destroy; override;

    procedure createTableFile(nameFile: string);
    procedure loadTableOverlay(fName: String);
    procedure saveTableRecord(mapTableStartX: Double; mapTableStartY: Double;
      mapTableEndX: Double; mapTableEndY: Double;
      tabCentGridLat: string; tabCentGridLong: string; tabCentPosLat: Double;
      tabCentPosLong: Double; tabCellWidth: integer; tabCellheight: integer;
      numberColums: integer; numberRows: integer; TableColor: integer; isSelected: boolean);
    procedure TableRecordToFile(fName: String);
    procedure drawTableOverlay(FCanvas: TCanvas; Map1: TMap);
    procedure editTableRecord(tabCentGridLat: string; tabCentGridLong: string; tabCentPosLat: Double;
      tabCentPosLong: Double; tabCellWidth: integer; tabCellheight: integer;
      numberColums: integer; numberRows: integer; Map1: TMap);
    procedure editTableRecordToFile(fName: String);
  end;

  TRectOverlay = class(TDrawOverlay)
    dataRectRecord: TRectRecord;
    RectRecord: TRectRecord;

    RectFile: File of TRectRecord;
    is_RectFileCreated: boolean;

    constructor Create;
    destructor Destroy; override;

    procedure createRectFile(nameFile: string);
    procedure loadRectOverlay(fName: String);
    procedure saveRectRecord(mapRectStartX: Double; mapRectStartY: Double;
      mapRectEndX: Double; mapRectEndY: Double; rectGridStartLat: string;
      rectGridStartLong: string; RectGridEndLat: string;
      RectGridEndLong: string);
    procedure rectRecordToFile(fName: String);
    procedure drawRectOverlay(FCanvas: TCanvas; Map1: TMap);
  end;

  TEllipseOverlay = class(TDrawOverlay)
    dataEllipseRecord: TEllipseRecord;
    EllipseRecord: TEllipseRecord;
//    FList: TList;

    EllipseFile: File of TEllipseRecord;
    is_EllipseFileCreated: boolean;

    constructor Create;
    destructor Destroy; override;

    procedure createEllipseFile(nameFile: string);
    procedure loadEllipseOverlay(fName: String);
    procedure saveEllipseRecord(mapEllipseStartX: Double;
      mapEllipseStartY: Double; mapEllipseEndX: Double;
      mapEllipseEndY: Double; EllipseGridCenterLat: string;
      EllipseGridCenterLong: string);
    procedure ellipseRecordToFile(fName: String);
    procedure drawEllipseOverlay(FCanvas: TCanvas; Map1: TMap);
  end;

  TTextOverlay = class(TDrawOverlay)
    dataTextRecord: TTextRecord;
    TextRecord: TTextRecord;
//    FList: TList;
    TextFile: File of TTextRecord;
    is_TextFileCreated: boolean;

    constructor Create;
    destructor Destroy; override;

    procedure createTextFile(nameFile: string);
    procedure loadTextOverlay(fName: String);
    procedure saveTextRecord(mapTextStartX: Double; mapTextStartY: Double;
      TextGridStartLat: string; TextGridStartLong: string; TextStringO: string;
      TextSizeO: integer);
    procedure textRecordToFile(fName: String);
    procedure drawTextOverlay(FCanvas: TCanvas; Map1: TMap);
  end;

  {TOverlayOther = class

  private
    lineOver : TLineOverlay;
    rectOver : TRectOverlay;
    ellipseOver : TEllipseOverlay;
    textOver : TTextOverlay;
  public
    procedure clearList;
    procedure createList;
  end;}

implementation

constructor TDrawOverlay.Create;
begin
  FList := TList.Create;
end;

destructor TDrawOverlay.Destroy;
begin
  FList.Free;

end;

procedure TDrawOverlay.Clear;
begin
  FList.Clear;

end;

constructor TLineOverlay.Create;
begin
  inherited;

end;

destructor TLineOverlay.Destroy;
begin
  inherited;
end;

{procedure TOverlayOther.createList;
var
  line : TLineOverlay;
  rect : TRectOverlay;
  ellipse : TEllipseOverlay;
  text : TTextOverlay;
begin
  line.FList := TList.Create;
  rect.FList := TList.Create;
  ellipse.FList := TList.Create;
  text.FList := TList.Create;

  {self.FList := TList.Create;
  FList := TList.Create;
  FList := TList.Create;
  FList := TList.Create;
end;   }

{procedure TOverlayOther.clearList;
var
  line : TLineOverlay;
  rect : TRectOverlay;
  ellipse : TEllipseOverlay;
  text : TTextOverlay;
begin
  line.FList.clear;
  rect.FList.clear;
  ellipse.FList.clear;
  text.FList.clear;
end;   }

procedure TLineOverlay.saveLineRecord(mapLineStartX: Double; mapLineStartY: Double;
      mapLineEndX: Double; mapLineEndY: Double; LineGridStartLat: string;
      lineGridStartLong: string; LineGridEndLat: String;
      LineGridEndLong: String; LineColor: Integer);
begin
  Self.LineRecord.posStartLatitude := mapLineStartY;
  Self.LineRecord.posStartLongitude := mapLineStartX;
  Self.LineRecord.gridStartLatitude := LineGridStartLat;
  Self.LineRecord.gridStartLongitude := lineGridStartLong;
  Self.LineRecord.posEndlatitude := mapLineEndY;
  Self.LineRecord.posEndLongitude := mapLineEndX;
  Self.LineRecord.gridEndlatitude := LineGridEndLat;
  Self.LineRecord.gridEndLongitude := LineGridEndLong;
  Self.LineRecord.color := LineColor;
end;

procedure TLineOverlay.createLineFile(nameFile : string);
begin
  AssignFile(LineFile, nameFile);
  ReWrite(LineFile);
  if ioresult <> 0 then begin
         ShowMessage('Error When Creating A New Overlay Line File');
         is_LineFileCreated := false;
  end;
  is_LineFileCreated := true;
end;

procedure TLineOverlay.lineRecordToFile(fName : string);
var
    tempLine : TLineOverlay;
begin
  tempLine := TLineOverlay.Create;
{  tempLine.posStartLatitude    :=  Self.LineRecord.posStartLatitude;
  tempLine.posStartLongitude   :=  Self.LineRecord.posStartLongitude;
  tempLine.gridStartLatitude   :=  Self.LineRecord.gridStartLatitude;
  tempLine.gridStartLongitude  :=  Self.LineRecord.gridStartLongitude;
  tempLine.posEndlatitude      :=  Self.LineRecord.posEndlatitude;
  tempLine.posEndLongitude     :=  Self.LineRecord.posEndLongitude;
  tempLine.gridEndlatitude     :=  Self.LineRecord.gridEndlatitude;
  tempLine.gridEndLongitude    :=  Self.LineRecord.gridEndLongitude;
}
  tempLine.LineRecord     := self.LineRecord;
  tempLine.dataLineRecord := self.dataLineRecord;

    if is_LineFileCreated then
    begin
       if FileSize(LineFile) = 0 then
       begin
          seek(LineFile, 0);
          Write(LineFile, LineRecord);
       end
       else
       begin
          seek(LineFile, FileSize(LineFile));
          Write(LineFile, LineRecord);
       end;
    end
    else
        createLineFile(fName);

  dataLineRecord := LineRecord;

  FList.Add(tempLine);
end;

constructor TTableOverlay.Create;
begin
  inherited;
end;

destructor TTableOverlay.Destroy;
begin
  inherited;
end;

procedure TTableOverlay.saveTableRecord(mapTableStartX: Double; mapTableStartY: Double;
      mapTableEndX: Double; mapTableEndY: Double; tabCentGridLat: string;
      tabCentGridLong: string; tabCentPosLat: Double;
      tabCentPosLong: Double; tabCellWidth: integer; tabCellheight: integer;
      numberColums: integer; numberRows: integer; TableColor: integer; isSelected: boolean);
begin
  Self.TableRecord.tablePosStartLongitude := mapTableStartX;
  Self.TableRecord.tablePosStartLatitude := mapTableStartY;
  Self.TableRecord.tablePosEndLongitude := mapTableEndX;
  Self.TableRecord.tablePosEndLatitude := mapTableEndY;
  Self.TableRecord.tableCenterGridLatitude := tabCentGridLat;
  Self.TableRecord.tableCenterGridLongitude := tabCentGridLong;
  Self.TableRecord.tableCenterPosLatitude := tabCentPosLat;
  Self.TableRecord.tableCenterPosLongitude := tabCentPosLong;
  Self.TableRecord.tableCellWidth := tabCellWidth;             //nm
  Self.TableRecord.tableCellheight := tabCellheight;           //nm
  Self.TableRecord.tableNumbColumns := numberColums;
  Self.TableRecord.tableNumbRows := numberRows;
  Self.TableRecord.Color := TableColor;
  Self.TableRecord.isSelected := isSelected;
end;

procedure TTableOverlay.createTableFile(nameFile : string);
//var
//  table : TTableOverlay;
begin
  AssignFile(tableFile, nameFile);
  ReWrite(tableFile);
  if ioresult <> 0 then begin
         ShowMessage('Error When Creating A New Overlay Table.bin File');
         is_TableFileCreated := false;
  end;
  is_TableFileCreated := true;
end;

procedure TTableOverlay.tableRecordToFile(fName : string);
var
    tempTable : TTableOverlay;
begin
    tempTable := TTableOverlay.Create;
    tempTable.TableRecord     := self.TableRecord;
    tempTable.dataTableRecord := self.dataTableRecord;

    if is_TableFileCreated = false then
    begin
       createTableFile(fName);
    end;

    if is_TableFileCreated then
    begin
       if FileSize(TableFile) = 0 then
       begin
          seek(TableFile, 0);
          Write(TableFile, TableRecord);
       end
       else
       begin
          seek(TableFile, FileSize(TableFile));
          Write(TableFile, TableRecord);
       end;
    end;
    {else
        createTableFile(fName);}

    dataTableRecord := TableRecord;
    FList.Add(tempTable);
end;

constructor TRectOverlay.Create;
begin
  inherited;
end;

destructor TRectOverlay.Destroy;
begin
  inherited;
end;

procedure TRectOverlay.saveRectRecord(mapRectStartX: Double; mapRectStartY: Double;
      mapRectEndX: Double; mapRectEndY: Double; rectGridStartLat: string;
      rectGridStartLong: string; RectGridEndLat: string;
      RectGridEndLong: string);
begin
  RectRecord.rectanglePosStartLongitude := mapRectStartX;
  RectRecord.rectanglePosStartLatitude := mapRectStartY;
  RectRecord.rectangleGridStartLatitude := rectGridStartLat;
  RectRecord.rectangleGridEndLongitude := rectGridStartLong;
  RectRecord.rectanglePosEndLatitude := mapRectEndY;
  RectRecord.rectanglePosEndLongitude := mapRectEndX;
  RectRecord.rectangleGridEndLatitude := RectGridEndLat;
  RectRecord.rectangleGridEndLongitude := RectGridEndLong;
end;

procedure TRectOverlay.createRectFile(nameFile : string);
//var
//  rect : TRectOverlay;
begin
  AssignFile(rectFile, nameFile);
  ReWrite(rectFile);
  if ioresult <> 0 then begin
         ShowMessage('Error When Creating A New Overlay Rectangle.bin File');
         is_RectFileCreated := false;
  end;
  is_RectFileCreated := true;
end;

procedure TRectOverlay.rectRecordToFile(fName : string);
var
    tempRect : TRectOverlay;
begin
    tempRect := TRectOverlay.Create;
    if is_RectFileCreated then
    begin
       if FileSize(RectFile) = 0 then
       begin
          seek(RectFile, 0);
          Write(RectFile, RectRecord);
       end
       else
       begin
          seek(RectFile, FileSize(RectFile));
          Write(RectFile, RectRecord);
       end;
    end
    else
        createRectFile(fName);

    dataRectRecord := RectRecord;
    FList.Add(tempRect);
end;

constructor TEllipseOverlay.Create;
begin
  inherited;
end;

destructor TEllipseOverlay.Destroy;
begin
  inherited;
end;


procedure TEllipseOverlay.saveEllipseRecord(mapEllipseStartX: Double;
      mapEllipseStartY: Double; mapEllipseEndX: Double;
      mapEllipseEndY: Double; EllipseGridCenterLat: string;
      EllipseGridCenterLong: string);
begin
  EllipseRecord.ellipsePosStartLatitude := mapEllipseStartY;
  EllipseRecord.ellipsePosStartLongitude := mapEllipseStartX;
  EllipseRecord.ellipsePosEndLatitude := mapEllipseEndY;
  EllipseRecord.ellipsePosEndLongitude := mapEllipseEndX;
  EllipseRecord.ellipsePosCenterLatitude := 0;
  EllipseRecord.ellipsePosCenterLongitude := 0;
  EllipseRecord.ellipseMajor := 0;
  EllipseRecord.ellipseMinor := 0;
  EllipseRecord.ellipseGridPointCenterLatitude := EllipseGridCenterLat;
  EllipseRecord.ellipseGridPointCenterLongitude := EllipseGridCenterLong;
end;

procedure TEllipseOverlay.createEllipseFile(nameFile : string);
begin
  AssignFile(EllipseFile, nameFile);
  ReWrite(EllipseFile);
  if ioresult <> 0 then begin
         ShowMessage('Error When Creating A New Overlay Ellipse.bin File');
         is_EllipseFileCreated := false;
  end;
  is_EllipseFileCreated := true;
end;

procedure TEllipseOverlay.ellipseRecordToFile(fName : string);
var
  tempEllipse : TEllipseOverlay;
begin
  tempEllipse := TEllipseOverlay.Create;
    if is_EllipseFileCreated then
    begin
       if FileSize(EllipseFile) = 0 then
       begin
          seek(EllipseFile, 0);
          Write(EllipseFile, EllipseRecord);
       end
       else
       begin
          seek(EllipseFile, FileSize(EllipseFile)+1);
          Write(EllipseFile, EllipseRecord);
       end;
    end
    else
        createEllipseFile(fName);

    dataEllipseRecord := EllipseRecord;
    FList.Add(tempEllipse);
end;

constructor TTextOverlay.Create;
begin
  inherited;
end;

destructor TTextOverlay.Destroy;
begin
  inherited;
end;

procedure TTextOverlay.saveTextRecord(mapTextStartX: Double; mapTextStartY: Double;
      TextGridStartLat: string; TextGridStartLong: string; TextStringO: string;
      TextSizeO: integer);
begin
  TextRecord.textPosStartLongitude := mapTextStartX;
  TextRecord.textPosStartLatitude := mapTextStartY;
  TextRecord.textGridStartLatitude := TextGridStartLat;
  TextRecord.textGridStartLongitude := TextGridStartLong;
  TextRecord.TextString := TextStringO;
  TextRecord.textSize := TextSizeO;
end;

procedure TTextOverlay.createTextFile(nameFile : string);
begin
  AssignFile(TextFile, nameFile);
  ReWrite(TextFile);
  if ioresult <> 0 then begin
         ShowMessage('Error When Creating A New Overlay Text.bin File');
         is_TextFileCreated := false;
  end;
  is_TextFileCreated := true;
end;

procedure TTextOverlay.textRecordToFile(fName: String);
var
   tempText : TTextOverlay;
begin
   tempText := TTextOverlay.Create;
    if is_TextFileCreated then
    begin
       if FileSize(TextFile) = 0 then
       begin
          seek(TextFile, 0);
          Write(TextFile, TextRecord);
       end
       else
       begin
          seek(TextFile, FileSize(TextFile));
          Write(TextFile, TextRecord);
       end;
    end
    else
        createTextFile(fName);

    dataTextRecord := TextRecord;
    FList.Add(tempText);
end;

procedure TLineOverlay.drawLineOverlay(FCanvas : TCanvas; Map1: TMap);
var
 I : integer;
 x1, x2, y1, y2 : single;
begin
    for I := 0 to FList.Count - 1 do
      begin
        if TDrawOverlay(FList[I]) is TLineOverlay then
        begin
          with TLineOverlay(FList[I]).dataLineRecord do
          begin
            Map1.ConvertCoord(x1, y1, posStartLongitude, posStartLatitude, miMapToScreen);
            Map1.ConvertCoord(x2, y2, posEndLongitude, posEndlatitude, miMapToScreen);
            FCanvas.MoveTo(Round(x1), Round(y1));
            FCanvas.LineTo(Round(x2), Round(y2));
            FCanvas.Pen.color := color;
            FCanvas.Brush.Style := bsClear;
          end;
        end;
      end;
end;

procedure TTableOverlay.drawTableOverlay(FCanvas : TCanvas; Map1 : TMap);
var
 I : integer;
 x1, x2, y1, y2, centerX, centerY : single;
 {X, Y : double; }
begin
  for I := 0 to FList.Count - 1 do
  begin
    if TDrawOverlay(FList[I]) is TTableOverlay then
    begin
      with TTableOverlay(FList[I]).dataTableRecord do
      begin
        //FCanvas.Brush.Style := bsClear;
        FCanvas.Pen.color   := color;
        if isSelected then
        begin
            FCanvas.Pen.Color := clYellow;
        end
        else
            FCanvas.Pen.color   := color;

        //draw rect
        Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miMapToScreen);
        Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miMapToScreen);
        FCanvas.RECTANGLE(round(x1), round(y1), round(x2), round(y2));

        //get center
        {X := dmToLongitude(tableCenterPosLongitude);
        Y := dmToLatitude(tableCenterPosLatitude); }
        Map1.ConvertCoord(centerX, centerY, tableCenterPosLongitude, tableCenterPosLatitude, miMapToScreen);

        {if round(x2) >= round(x1) then                                   //kuadran 4
        begin
           if round(y2) >= round(y1) then
           begin
              FCanvas.MoveTo(round(x1), centerY);
              FCanvas.LineTo(round(x2), centerY);
              FCanvas.MoveTo(centerX, round(y1));
              FCanvas.LineTo(centerX, round(y2));
              {FCanvas.MoveTo(round(x1), (round(y1) + round(tableHeight / 2)));
              FCanvas.LineTo(round(x2), (round(y1) + round(tableHeight / 2)));
              FCanvas.MoveTo(round(x1) + round(tableWeight / 2), round(y1));
              FCanvas.LineTo(round(x1) + round(tableWeight / 2), round(y2));
              FCanvas.Brush.Style := bsClear;
           end
           else if round(y2) <= round(y1) then                           //kuadran 1
           begin
              FCanvas.MoveTo(round(x1), centerY);
              FCanvas.LineTo(round(x2), centerY);
              FCanvas.MoveTo(centerX, round(y1));
              FCanvas.LineTo(centerX, round(y2));
              {FCanvas.MoveTo(round(x1), (round(y1) - round(tableHeight / 2)));
              FCanvas.LineTo(round(x2), (round(y1) - round(tableHeight / 2)));
              FCanvas.MoveTo(round(x1) + round(tableWeight / 2), round(y1));
              FCanvas.LineTo(round(x1) + round(tableWeight / 2), round(y2));
              FCanvas.Brush.Style := bsClear;
           end;
        end;  //end kuadran

        if round(x2) <= round(x1) then
        begin
           if round(y2) >= round(y1) then                                //kuadran 3
           begin
              {FCanvas.MoveTo(round(x1), (round(y1) + round(tableHeight / 2)));
              FCanvas.LineTo(round(x2), (round(y1) + round(tableHeight / 2)));
              FCanvas.MoveTo(round(x1) - round(tableWeight / 2), round(y1));
              FCanvas.LineTo(round(x1) - round(tableWeight / 2), round(y2));
              FCanvas.Brush.Style := bsClear;
           end
           else if round(y2) <= round(y1) then                           //kuadran 2
           begin
              {FCanvas.MoveTo(round(x1), (round(y1) - round(tableHeight / 2)));
              FCanvas.LineTo(round(x2), (round(y1) - round(tableHeight / 2)));
              FCanvas.MoveTo(round(x1) - round(tableWeight / 2), round(y1));
              FCanvas.LineTo(round(x1) - round(tableWeight / 2), round(y2));
              FCanvas.Brush.Style := bsClear;
           end;
        end;              //end kuadran  }
        FCanvas.MoveTo(round(x1), round(centerY));
        FCanvas.LineTo(round(x2), round(centerY));
        FCanvas.MoveTo(round(centerX), round(y1));
        FCanvas.LineTo(round(centerX), round(y2));
        FCanvas.Brush.Style := bsClear;
      end;                  //end with
    end;                    //end if terluar
  end;                      // end for
end;


procedure TRectOverlay.drawRectOverlay(FCanvas : TCanvas; Map1 : TMap);
var
 I : integer;
 x1, x2, y1, y2 : single;
begin
  for I := 0 to FList.Count - 1 do
  begin
    if TDrawOverlay(FList[I]) is TRectOverlay then
    begin
      with TRectOverlay(FList[I]).dataRectRecord do
      begin
        Map1.ConvertCoord(x1, y1, rectanglePosStartLongitude, rectanglePosStartLatitude, miMapToScreen);
        Map1.ConvertCoord(x2, y2, rectanglePosEndLongitude, rectanglePosEndLatitude, miMapToScreen);
        FCanvas.RECTANGLE(round(x1), round(y1), round(x2), round(y2));
        FCanvas.Pen.color := clRed;
        FCanvas.Brush.Style := bsClear;
      end;
    end;
  end;
end;

procedure TEllipseOverlay.drawEllipseOverlay(FCanvas : TCanvas; Map1: TMap);
var
 I : integer;
 x1, x2, y1, y2 : single;
begin
  for I := 0 to FList.Count - 1 do
  begin
    if TDrawOverlay(FList[I]) is TEllipseOverlay then
    begin
      with TEllipseOverlay(FList[I]).dataEllipseRecord do
      begin
        Map1.ConvertCoord(x1, y1, ellipsePosStartLongitude, ellipsePosStartLatitude, miMapToScreen);
        Map1.ConvertCoord(x2, y2, ellipsePosEndLongitude, ellipsePosEndLatitude, miMapToScreen);
        FCanvas.Ellipse(round(x1), round(y1), round(x2), round(y2));
        FCanvas.Pen.color := clRed;
        FCanvas.Brush.Style := bsClear;
      end;
    end;
  end;
end;

procedure TTextOverlay.drawTextOverlay(FCanvas : TCanvas; Map1: TMap);
var
 I : integer;
 x1, y1 : single;
begin
     for I := 0 to FList.Count - 1 do
  begin
    if TDrawOverlay(FList[I]) is TTextOverlay then
    begin
      with TTextOverlay(FList[I]).dataTextRecord do
      begin
        Map1.ConvertCoord(x1, y1, textPosStartLongitude, textPosStartLatitude, miMapToScreen);
        FCanvas.TextOut(round(x1), round(y1), TextString);
        FCanvas.Font.color := clRed;
        FCanvas.Font.size := TextSize;
        FCanvas.Brush.Style := bsClear;
      end;
    end;
  end;
end;

procedure TLineOverlay.loadLineOverlay(fName : string);
var
  line : TLineOverlay;
  i : word;
begin
    if FileExists(fName) then
    begin
          i := 0;
          AssignFile(LineFile, fName);
          FileMode := fmOpenRead;
          reset(LineFile);
          seek(LineFile, i);
          while not Eof(LineFile) do
          begin
                Read(LineFile, LineRecord);
                line := TLineOverlay.Create;
                with line.dataLineRecord do
                begin
                     posStartLatitude := LineRecord.posStartLatitude;
                     posStartLongitude := LineRecord.posStartLongitude;
                     posEndlatitude := LineRecord.posEndlatitude;
                     posEndLongitude := LineRecord.posEndLongitude;
                     gridStartLatitude := LineRecord.gridStartLatitude;
                     gridStartLongitude := LineRecord.gridStartLongitude;
                     gridEndlatitude := LineRecord.gridEndlatitude;
                     gridEndLongitude := LineRecord.gridEndLongitude;
                     color := LineRecord.color;
                end;
//                inc(i);
                FList.Add(line);
          end;
          CloseFile(LineFile);
    end;
end;

procedure TTableOverlay.loadTableOverlay(fName : string);
var
  table : TTableOverlay;
  i : word;
begin
    if FileExists(fName) then
    begin
          i := 0;
          AssignFile(TableFile, fName);
          FileMode := fmOpenRead;
          reset(TableFile);
          seek(TableFile, i);
          while not Eof(TableFile) do
          begin
                Read(TableFile, dataTableRecord);
                table := TTableOverlay.Create;
                with table.dataTableRecord do
                begin
                     tablePosStartLatitude := dataTableRecord.tablePosStartLatitude;
                     tablePosStartLongitude := dataTableRecord.tablePosStartLongitude;
                     tablePosEndLatitude := dataTableRecord.tablePosEndLatitude;
                     tablePosEndLongitude := dataTableRecord.tablePosEndLongitude;
                     tableCenterGridLatitude := dataTableRecord.tableCenterGridLatitude;
                     tableCenterGridLongitude := dataTableRecord.tableCenterGridLongitude;
                     tableCenterPosLatitude := dataTableRecord.tableCenterPosLatitude;
                     tableCenterPosLongitude := dataTableRecord.tableCenterPosLongitude;
                     tableCellWidth := dataTableRecord.tableCellWidth;
                     tableCellheight := dataTableRecord.tableCellheight;
                     tableNumbColumns := dataTableRecord.tableNumbColumns;
                     tableNumbRows := dataTableRecord.tableNumbRows;
                     Color := dataTableRecord.Color;
                     isSelected := dataTableRecord.isSelected;
                     //ShowMessage('start X = ' + floattostr(tablePosStartLongitude) +', startY Y = ' + floattostr(tablePosStartLatitude));
                end;
//                inc(i);
                FList.Add(table);
          end;
          CloseFile(TableFile);
    end;
end;

procedure TRectOverlay.loadRectOverlay(fName : string);
var
  rect : TRectOverlay;
  i : word;
begin
    if FileExists(fName) then
    begin
          i := 0;
          AssignFile(RectFile, fName);
          FileMode := fmOpenRead;
          reset(RectFile);
          seek(RectFile, i);
          while not Eof(RectFile) do
          begin
                Read(RectFile, RectRecord);
                rect := TRectOverlay.Create;
                with rect.dataRectRecord do
                begin
                     rectanglePosStartLatitude := RectRecord.rectanglePosStartLatitude;
                     rectanglePosStartLongitude := RectRecord.rectanglePosStartLongitude;
                     rectanglePosEndLatitude := RectRecord.rectanglePosEndLatitude;
                     rectanglePosEndLongitude := RectRecord.rectanglePosEndLongitude;
                     rectangleGridStartLatitude := RectRecord.rectangleGridStartLatitude;
                     rectangleGridStartLongitude := RectRecord.rectangleGridStartLongitude;
                     rectangleGridEndLatitude := RectRecord.rectangleGridEndLatitude;
                     rectangleGridEndLongitude := RectRecord.rectangleGridEndLongitude;
                end;
//                inc(i);
                FList.Add(rect);
          end;
          CloseFile(RectFile);
    end;
end;

procedure TEllipseOverlay.loadEllipseOverlay(fName : string);
var
  ellipse : TEllipseOverlay;
  i : word;
begin
    if FileExists(fName) then
    begin
          i := 0;
          AssignFile(EllipseFile, fName);
          FileMode := fmOpenRead;
          reset(EllipseFile);
          seek(EllipseFile, i);
          while not Eof(EllipseFile) do
          begin
                Read(EllipseFile, EllipseRecord);
                ellipse := TEllipseOverlay.Create;
                with ellipse.dataEllipseRecord do
                begin
                     ellipsePosStartLatitude := EllipseRecord.ellipsePosStartLatitude;
                     ellipsePosStartLongitude := EllipseRecord.ellipsePosStartLongitude;
                     ellipsePosEndLatitude := EllipseRecord.ellipsePosEndLatitude;
                     ellipsePosEndLongitude := EllipseRecord.ellipsePosEndLongitude;
                     ellipsePosCenterLatitude := EllipseRecord.ellipsePosCenterLatitude;
                     ellipsePosCenterLongitude := EllipseRecord.ellipsePosCenterLongitude;
                     ellipseMajor := EllipseRecord.ellipseMajor;
                     ellipseMinor := EllipseRecord.ellipseMinor;
                     ellipseGridPointCenterLatitude := EllipseRecord.ellipseGridPointCenterLatitude;
                     ellipseGridPointCenterLongitude := EllipseRecord.ellipseGridPointCenterLongitude;
                end;
//                inc(i);
                FList.Add(ellipse);
          end;
          CloseFile(EllipseFile);
    end;
end;

procedure TTextOverlay.loadTextOverlay(fName : string);
var
  Text : TTextOverlay;
  i : word;
begin
    if FileExists(fName) then
    begin
          i := 0;
          AssignFile(TextFile, fName);
          FileMode := fmOpenRead;
          reset(TextFile);
          seek(TextFile, i);
          while not Eof(TextFile) do
          begin
                Read(TextFile, TextRecord);
                text := TTextOverlay.Create;
                with text.dataTextRecord do
                begin
                     textPosStartLatitude := TextRecord.textPosStartLatitude;
                     textPosStartLongitude := TextRecord.textPosStartLongitude;
                     textGridStartLatitude := TextRecord.textGridStartLatitude;
                     textGridStartLongitude := TextRecord.textGridStartLongitude;
                     TextString  := TextRecord.TextString;
                     textSize  := TextRecord.textSize;
                end;
//                inc(i);
                FList.Add(text);
          end;
          CloseFile(TextFile);
    end;
end;



procedure TTableOverlay.editTableRecord(tabCentGridLat: string; tabCentGridLong: string; tabCentPosLat: double;
      tabCentPosLong: double; tabCellWidth: integer; tabCellheight: integer;
      numberColums: integer; numberRows: integer; Map1: TMap);
var
   I : integer;
   degreeCellWidth, degreeCellHeight       : integer;
//   centerX, centerY           : single;
//   centerLong, centerLat      : double;
//   x1, x2, y1, y2             : single;
begin
   for I := 0 to FList.Count - 1 do
   begin
    if TDrawOverlay(FList[I]) is TTableOverlay then
    begin
      with TTableOverlay(FList[I]).dataTableRecord do
      begin
           if isSelected then
           begin
              tableCenterGridLatitude   := tabCentGridLat;
              tableCenterGridLongitude  := tabCentGridLong;
              tableCenterPosLatitude    := tabCentPosLat;
              tableCenterPosLongitude   := tabCentPosLong;
              {tableWeight               := round((tabCellWidth/60)*2);
              tableHeight               := round((tabCellheight/60)*2);
              tabCellWidth              := round(tabCellWidth/60);
              tabCellheight             := round(tabCellheight/60);}
              tabCellWidth              := tabCellWidth;         // nm
              tabCellheight             := tabCellheight;        // nm
              {tableWeight               := tabCellWidth * 2;
              tableHeight               := tabCellheight* 2;
              tableCellWidth            := tabCellWidth;
              tableCellheight           := tabCellheight; }
              tableNumbColumns          := numberColums;
              tableNumbRows             := numberRows;
              {color                     := color;
              isSelected                := }

              degreeCellWidth  := round(tabCellWidth  / 60);
              degreeCellHeight  := round(tabCellheight / 60);

              {centerLong := dmToLongitude(tabCentPosLong);
              centerLat  := dmToLatitude(tabCentPosLat);
              Map1.ConvertCoord(centerX, centerY, centerLong, centerLat, miMapToScreen); }

{              Map1.ConvertCoord(centerX, centerY, tabCentPosLong, tabCentPosLat, miMapToScreen);

              Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miMapToScreen);
              Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miMapToScreen);            }

              {if round(x2) >= round(x1) then                                   //kuadran 4
              begin
                 if round(y2) >= round(y1) then
                 begin
                    x1 := centerX - tabCellWidth;
                    y1 := centerY - tabCellheight;
                    x2 := centerX + tabCellWidth;
                    y2 := centerY + tabCellheight;

                    Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);
                 end
                 else if round(y2) <= round(y1) then                           //kuadran 1
                 begin
                    x1 := centerX - tabCellWidth;
                    y1 := centerY + tabCellheight;
                    x2 := centerX + tabCellWidth;
                    y2 := centerY - tabCellheight;

                    Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);
                 end;
              end;

              if round(x2) <= round(x1) then
              begin
                 if round(y2) >= round(y1) then                                //kuadran 3
                 begin
                    x1 := centerX + tabCellWidth;
                    y1 := centerY - tabCellheight;
                    x2 := centerX - tabCellWidth;
                    y2 := centerY + tabCellheight;

                    Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);
                 end
                 else if round(y2) <= round(y1) then                           //kuadran 2
                 begin
                    x1 := centerX + tabCellWidth;
                    y1 := centerY + tabCellheight;
                    x2 := centerX - tabCellWidth;
                    y2 := centerY - tabCellheight;

                    Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);
                 end;
              end;}

              if tablePosEndLongitude >= tablePosStartLongitude then                                   //kuadran 4
              begin
                 if tablePosEndLatitude >= tablePosStartLatitude then
                 begin
                    tablePosStartLongitude := tabCentPosLong - degreeCellWidth*2;
                    tablePosStartLatitude := tabCentPosLat - degreeCellHeight*2;
                    tablePosEndLongitude := tabCentPosLong + degreeCellWidth*2;
                    tablePosEndLatitude := tabCentPosLat + degreeCellHeight*2;

                    {Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap); }
                 end
                 else if tablePosEndLatitude <= tablePosStartLatitude then                           //kuadran 1
                 begin
                    tablePosStartLongitude := tabCentPosLong - degreeCellWidth*2;
                    tablePosStartLatitude := tabCentPosLat + degreeCellHeight*2;
                    tablePosEndLongitude := tabCentPosLong + degreeCellWidth*2;
                    tablePosEndLatitude := tabCentPosLat - degreeCellHeight*2;

                    {Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);  }
                 end;
              end;

              if tablePosEndLongitude <= tablePosStartLongitude then
              begin
                 if tablePosEndLatitude >= tablePosStartLatitude then                                //kuadran 3
                 begin
                    tablePosStartLongitude := tabCentPosLong + degreeCellWidth*2;
                    tablePosStartLatitude := tabCentPosLat - degreeCellHeight*2;
                    tablePosEndLongitude := tabCentPosLong - degreeCellWidth*2;
                    tablePosEndLatitude := tabCentPosLat + degreeCellHeight*2;

                    {Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);   }
                 end
                 else if tablePosEndLatitude <= tablePosStartLatitude then                           //kuadran 2
                 begin
                    tablePosStartLongitude := tabCentPosLong + degreeCellWidth*2;
                    tablePosStartLatitude := tabCentPosLat + degreeCellHeight*2;
                    tablePosEndLongitude := tabCentPosLong - degreeCellWidth*2;
                    tablePosEndLatitude := tabCentPosLat - degreeCellHeight*2;

                    {Map1.ConvertCoord(x1, y1, tablePosStartLongitude, tablePosStartLatitude, miScreenToMap);
                    Map1.ConvertCoord(x2, y2, tablePosEndLongitude, tablePosEndLatitude, miScreenToMap);  }
                 end;
              end;
              break;
           end;
      end;
    end;
   end;
end;

procedure TTableOverlay.editTableRecordToFile(fName: String);
var
    tempTable : TTableOverlay;
    I         : integer;
begin
    tempTable := TTableOverlay.Create;
    tempTable.TableRecord     := self.TableRecord;
    tempTable.dataTableRecord := self.dataTableRecord;

    DeleteFile(fName);
    createTableFile(fName);

    for I := 0 to FList.Count - 1 do
    begin
        if TDrawOverlay(FList[I]) is TTableOverlay then
        begin
          //with TTableOverlay(FList[I]).dataTableRecord do
          //begin
             if FileSize(TableFile) = 0 then
             begin
                seek(TableFile, 0);
                Write(TableFile, TTableOverlay(FList[I]).dataTableRecord);
             end
             else
             begin
                seek(TableFile, FileSize(TableFile));
                Write(TableFile, TTableOverlay(FList[I]).dataTableRecord);
             end;
         // end;
        end;
    end;

    //TableRecord := dataTableRecord;
    //FList.Add(tempTable);
end;
end.
