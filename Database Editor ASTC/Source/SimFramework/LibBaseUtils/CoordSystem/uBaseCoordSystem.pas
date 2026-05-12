unit uBaseCoordSystem;
{  system coordinate cartesian, polar,  degree - radian
}

interface

uses

  Windows, uDataTypes;

//==============================================================================
  function trueDistance(const x1, y1, x2, y2: double): double;
    { desc : menghitung jarak antara 2 titik di lingkaran besar.
      input: Koordinat long lat 2 titik
      ouput: jarak (nautical miles)

    }
  function CalcRange(const x1, y1, x2, y2: double): Double;
   { Euclid distance }

  function CalcBearing(const x1, y1, x2, y2: double): Double;
  { arc tan}

  procedure CalcForward(const x1, y1, aDist, aCourse: double; var x2, y2: double);

  { Direction Conversion }
  function ConvCartesian_To_Compass(const degree: double): double;
  function ConvCompass_To_Cartesian(const degree: double): double;
  function ConvCustomAngleStart(const degree,startAngle: Double):Double;

  {Kompas direction}
  function DegComp_IsBeetwen(const aDegTes: double;
    const aDeg1, aDeg2: double): boolean;

  {Prince}
  function ptToLine(const ptFrom, ptTo, pt: t2DPoint): Boolean;
  function ptToArea(const rect : TRect ; pt: t2DPoint): Boolean;
  function ptToCircle(const cent, pt: t2DPoint; r : Double): Boolean;
  function ptToArc(const cent, pt: t2DPoint; r1, r2 : Double; sA, eA, id : Integer): Boolean;

  function ptToLineDistance(const ptFrom, ptTo, pt: t2DPoint): double;
  function ValidateDegree(const degreeOrg: double): double;


 { ToString conversion - formatting }
  function formatDMS_long(const x: double): string;
  function formatDMS_latt(const y: double): string;
  //aldy
  function formatDM_longitude(const x: double): string;
  function formatDM_latitude(const y: double): string;

  function dmsToLong(const s: string): Double;
  function dmsToLatt(const s: string): Double;
  //aldy
  function dmToLongitude(const s: string): Double;
  function dmToLatitude(const s: string): Double;

  function FormatTrackNumber(const i: integer): string;

  function FormatCourse(const d: double): string; overload;
  function FormatCourse(const d: single): string; overload;

  function FormatSpeed(const d: double): string;

  function FormatAltitude(const s: single): string;
  procedure RangeBearingToCoord(const r, b: double; var mx, my : double);

  function LatGridToDiffY(const s: string): Double;
  function LongGridToDiffX(const s: string): Double;

  function LatValidation(const s: string): Boolean;
  function LongValidation(const s: string): Boolean;

const

  C_Degree_To_NauticalMile = 60.0;
  C_NauticalMile_To_Degree = 1.0 /60.0;
  C_NauticalMile_To_Metre  = 1852.0;
  C_NauticalMile_To_Feet = 6076.11549;
  C_NauticalMile_To_KiloMetre = 1.852;
  C_NauticalMile_To_Yard = 2025.37183;
  C_KiloMetre_To_NauticalMile = 0.53996;
  C_Yard_To_NauticalMile = 0.0004937;

implementation

uses
  Math, SysUtils , uStringFunc;

//==============================================================================
{ Direction Conversion }

procedure RangeBearingToCoord(const r, b: double; var mx, my : double);
var
  range : Double;
  dRad, sinX, cosX: Extended;
begin
  range := r * C_NauticalMile_To_Degree;

  dRad := C_DegToRad * ConvCompass_To_Cartesian(b);
  SinCos(dRad, sinX, cosX);

  mx := range * cosx;
  my := range * sinx;
end;

function ConvCustomAngleStart(const degree,startAngle: Double):Double;
begin
  result := startAngle - degree;
  if result < 0.0 then result := result + 360.0;
end;
function ConvCartesian_To_Compass(const degree: double): double;
begin
  // input : derajat (0..360) dari sumbu X, CCW, cartesian
  // output: derajat (0..360) dari utara,   CW, kompas

  result := 90.0 - degree;
  if result < 0.0 then result := result + 360.0;
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function ConvCompass_To_Cartesian(const degree: double): double;
begin
  // input : derajat (0..360) dari utara,   CW, kompas
  // output: derajat (0..360) dari sumbu X, CCW, cartesian

  result := 90.0 - degree;
  if result < 0.0 then result := result + 360.0;
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function DegComp_IsBeetwen(const aDegTes: double;
  const aDeg1, aDeg2: double): boolean;
{compass direction}
var
  d1, d2: double;
begin
  d1 := (aDegTes - aDeg1);
  if d1 < 0.0 then d1 := d1 + 360.0;
//  while d1 < 0.0 do d1 := d1+ 360.0;

  d2 := (aDeg2 - aDeg1);
  if d2 < 0.0 then d2 := d2 + 360.0;
//  while d2 < 0.0 do d2 := d2+ 360.0;

  result := d1 < d2;
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function IsDegreeDestAtLeft(const src, dest: double): boolean;
{ Cartesian }
{ return true jika dest dikiri (CCW) src, cartesian, east = 0 }
var
  back: double;
begin
  back := ValidateRange(dest - src, 360.0);
  result := (back - 180.0) < 0.0;
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function trueDistance(const x1, y1, x2, y2: double): double;
const
  R = 3438.147;
begin
  result := ArcCos(sin(y1) * sin(y2) + cos(y1) * cos(y2) *
    cos(x2 - x1)) * R;
end;

function CalcRange(const x1, y1, x2, y2: double): Double;
var
  dx, dy: Extended;
begin
   {input dec degree, output nautical mile, }
  dx := (x2 - x1) * C_Degree_To_NauticalMile;
  dy := (y2 - y1) * C_Degree_To_NauticalMile;

  result := sqrt(sqr(dx) + sqr(dy));
end;

function CalcBearing(const x1, y1, x2, y2: double): Double;
var
  dx, dy, bearing: Extended;
begin
   {input dec degree, output Compass Coord }
  dx := (x2 - x1);
  dy := (y2 - y1);
  bearing := RadToDeg(ArcTan2(dy, dx));
  result := ConvCartesian_To_Compass(bearing);
end;

//==============================================================================
procedure CalcForward(const x1, y1, aDist, aCourse: double; var x2, y2: double);
{ x1, y1 : long lat degree
  aDist  : nautical Miles
  aDir   : Compas;
}
var dir : Double;
begin
  dir := DegToRad(90 - aCourse);

  X2 := X1 + C_NauticalMile_To_Degree * aDist * Cos(dir);
  Y2 := Y1 + C_NauticalMile_To_Degree * aDist * Sin(dir);

end;
//==============================================================================

procedure SplitDegreeMinuteSecond(const dd: double; var d, m, s: double);
var
  absLongLat: double;
  MinDet: double;
begin
  absLongLat := abs(dd);
  d := Trunc(absLongLat);
  MinDet := Frac(absLongLat) * 60.0;
  m := Trunc(MinDet);
  s := Frac(MinDet) * 60.0;
end;

procedure SplitDegreeMinute(const dd: double; var d, m: double);
var
  absLongLat: double;
  MinDet: double;
begin
  absLongLat := abs(dd);
  d := Trunc(absLongLat);
  MinDet := Frac(absLongLat) * 60.0;
  m := MinDet;
  {
  s := Frac(MinDet) * 60.0;
  }
end;

//==============================================================================

function formatDMS_long(const x: double): string;
var
  absLongLat: double;
  Degree, Minute, Second: double;
begin
  absLongLat := abs(x);
  if absLongLat > 180.0 then absLongLat := 180.0;
  SplitDegreeMinuteSecond(absLongLat, Degree, Minute, Second);

  Result := FormatFloat('000', Degree) + '° ' +
    FormatFloat('00', Minute) + ''' ' +
    FormatFloat('00.0', second) + '" ';
  if x < 0 then
    Result := Result + 'W'
  else
    Result := Result + 'E'
end;

//==============================================================================

function formatDMS_latt(const y: double): string;
var
  absLongLat: double;
  Degree, Minute, Second: double;
begin
  absLongLat := abs(y);
  if absLongLat > 90.0 then absLongLat := 90.0;
  SplitDegreeMinuteSecond(absLongLat, Degree, Minute, Second);

  Result := FormatFloat('00', Degree) + '° ' +
    FormatFloat('00', Minute) + ''' ' +
    FormatFloat('00.0', second) + '" ';

  if y < 0 then
    Result := Result + 'S'
  else
    Result := Result + 'N';
end;

function formatDM_longitude(const x: double): string;
var
  absLongLat: double;
  Degree, Minute: double;
begin
  absLongLat := abs(x);
  if absLongLat > 180.0 then absLongLat := 180.0;
  SplitDegreeMinute(absLongLat, Degree, Minute);

  Result := FormatFloat('000', Degree) + '° ' +
    FormatFloat('00.000', Minute) + ''' ' {+
    FormatFloat('00.0', second) + '" '};
  if x < 0 then
    Result := Result + 'W'
  else
    Result := Result + 'E'
end;

function formatDM_latitude(const y: double): string;
var
  absLongLat: double;
  Degree, Minute: double;
begin
  absLongLat := abs(y);
  if absLongLat > 90.0 then absLongLat := 90.0;
  SplitDegreeMinute(absLongLat, Degree, Minute);

  Result := FormatFloat('00', Degree) + '° ' +
    FormatFloat('00.000', Minute) + ''' ' {+
    FormatFloat('00.0', second) + '" '};

  if y < 0 then
    Result := Result + 'S'
  else
    Result := Result + 'N';
end;

function dmsToLong(const s: string): Double;
var
  d, m: Integer;
  sec: double;
  str: string;
begin
  Result := 0.0;
  if length(s) < 16 then exit;
    //    1234567890123456
    //    114° 57' 37.6" E

  str := Copy(s, 1, 3);
  d := ConvertStringToInt(str);

  str := Copy(s, 6, 2);
  M := ConvertStringToInt(str);

  str := Copy(s, 10, 4);
  sec := ConvertStringToFloat(str);

  result := d + (m / 60.0) + (sec / 3600.0);

  if s[16] = 'W' then
    result := -result;
end;

function dmsToLatt(const s: string): Double;
var
  d, m: Integer;
  sec: double;
  str: string;
begin
  Result := 0.0;

  if length(s) < 15 then exit;
    // 123456789012345
    // 07° 52' 34.2" S

  str := Copy(s, 1, 2);
  d := ConvertStringToInt(str);

  str := Copy(s, 5, 2);
  M := ConvertStringToInt(str);

  str := Copy(s, 9, 4);
  sec := ConvertStringToFloat(str);

  result := d + (m / 60.0) + (sec / 3600.0);

  if s[15] = 'S' then
    result := -result;

end;

function dmToLongitude(const s: string): Double;
var
  d: Integer;
  m : double;
  sec: double;
  str: string;
begin
  Result := 0.0;
  //if length(s) < 16 then exit;
    //    1234567890123456
    //    114° 57' 37.6" E
  //115° 03.229' E

  str := Copy(s, 1, 3);
  d := ConvertStringToInt(str);

  str := Copy(s, 6, 6);
  m := StrToFloat(str);
  {
  str := Copy(s, 10, 4);
  sec := ConvertStringToFloat(str);
  }
  result := d + (m / 60.0) {+ (sec / 3600.0)};

  if s[14] = 'W' then
    result := -result;
end;

function dmToLatitude(const s: string): Double;
var
  d: Integer;
  m : double;
  sec: double;
  str: string;
begin
  Result := 0.0;
  //if length(s) < 16 then exit;
    //    1234567890123456
    //    114° 57' 37.6" E
  //00° 08.093' S
  //

  str := Copy(s, 1, 2);
  d := ConvertStringToInt(str);

  str := Copy(s, 5, 6);
  M := StrToFloat(str);
  {
  str := Copy(s, 10, 4);
  sec := ConvertStringToFloat(str);
  }
  result := d + (m / 60.0) {+ (sec / 3600.0)};

  if s[13] = 'S' then
    result := -result;
end;

//==============================================================================
function ValidateDegree(const degreeOrg: double): double;
begin
  result := degreeOrg - (Floor(degreeOrg / 360.0) * 360.0);
end;

//==============================================================================

function ptToLine(const ptFrom, ptTo, pt: t2DPoint): Boolean;
var
  dxGaris, dyGaris, dx, dy, dr,
  lineToPtx, LineToPty : double;
  m, c: double;
begin
  Result := False;

  dxGaris := (ptTo.x - ptFrom.x);
  if dxGaris = 0 then //==||==> vertikal line
  begin
    if (abs(pt.x - ptFrom.x)) < 2 then
    begin
      if (ptTo.y - ptFrom.y) < 0 then
      begin
        if (ptTo.y < pt.y) and (pt.y < ptFrom.y) then
          Result := True;
      end
      else
      begin
        if (ptTo.y > pt.y) and (pt.y > ptFrom.y) then
          Result := True;
      end;
    end;
    exit;
  end;

  dyGaris := (ptTo.y - ptFrom.y);
  if dyGaris = 0 then //==__==> horizontal Line
  begin
    if (abs(pt.y - ptFrom.y)) < 2 then
    begin
      if (ptTo.x - ptFrom.x) < 0 then
      begin
        if (ptTo.x < pt.x) and (pt.x < ptFrom.x) then
          Result := True;
      end
      else
      begin
        if (ptTo.x > pt.x) and (pt.x > ptFrom.x) then
          Result := True;
      end;
    end;
    exit;
  end;

  {gradien oleh 2 titik}
  m := dyGaris / dxGaris;

  {constanta diketahui dari salah satu titik pd garis}
  c := ptFrom.y - (m * ptFrom.x);

  {pers garis lurus y = mx+c}
  dy := (m * pt.x + c) - pt.y;

  {pers garis lurus x = (y-c)/m}
  dx := ((pt.y - c) / m) - pt.x;

  dr := sqrt(dx * dx + dy * dy);

  if dr = 0 then
  begin
    Exit;
  end
  else
  begin
    if (abs(dx * dy / dr)) < 2 then
    begin
      if (ptTo.x - ptFrom.x) < 0 then
      begin
        if (ptTo.x < pt.x) and (pt.x < ptFrom.x) then
          Result := True;
      end
      else
      begin
        if (ptTo.x > pt.x) and (pt.x > ptFrom.x) then
          Result := True;
      end;
    end;
    exit;
  end;
end;

function ptToArc(const cent, pt: t2DPoint; r1, r2 : Double; sA, eA, id : Integer): Boolean;
var
  range, bearing,
  rin, rOut : Double;
begin
  Result := False;

  if r1 > r2 then
  begin
    rin := r2;  rOut := r1;
    r1 := rin;  r2 := rOut;
  end;

  if sA > eA then
    eA := eA + 360;

  range := CalcRange(cent.X, cent.Y, pt.X, pt.Y);
  bearing := CalcBearing(cent.X, cent.Y, pt.X, pt.Y);

  case id of
    1 : {dipake select Arc overlay}
    begin
      if range <= r1  then
      begin
        if (sA <= bearing) and (bearing <= eA)  then
          Result := True;
      end;
    end;
    2 : {dipake select Sector overlay}
    begin
      if (range >= r1) and (range <= r2 ) then
      begin
        if (sA <= bearing) and (bearing <= eA)  then
          Result := True;
      end;
    end;
  end;
end;

function ptToCircle(const cent, pt: t2DPoint; r : Double): Boolean;
var
  range : Double;
begin
  Result := False;

  range := CalcRange(cent.X, cent.Y, pt.X, pt.Y);

  if range <= r then
    Result := True;

end;

function ptToArea(const rect : TRect ; pt: t2DPoint): Boolean;
begin
  Result := False;
  if ((pt.X >= rect.Left) AND (pt.X <= rect.Right)) then
  begin
    if ((pt.Y >= rect.Top) AND (pt.Y <= rect.Bottom)) then
    begin
      Result := True;
    end;
  end;
end;

function ptToLineDistance(const ptFrom, ptTo, pt: t2DPoint): double;
var
  dxGaris, dyGaris, dx, dy, dr: double;
  m, c: double;
begin
  dxGaris := (ptTo.x - ptFrom.x);
  if dxGaris = 0 then begin //==||==> vertikal line
    result := abs(pt.x - ptFrom.x);
    exit;
  end;
  dyGaris := (ptTo.y - ptFrom.y);
  if dyGaris = 0 then begin //==__==> horizontal Line
    result := abs(pt.y - ptFrom.y);
    exit;
  end;
  m := dyGaris / dxGaris;
  c := ptFrom.y - m * ptFrom.x;
    // pers garis lurus y = mx+c
  dy := (m * pt.x + c) - pt.y;
    // pers garis lurus   x = (y-c)/m
  dx := ((pt.y - c) / m) - pt.x;

  dr := sqrt(dx * dx + dy * dy);

  result := abs(dx * dy / dr);
end;

function FormatCourse(const d: double): string;
var
  i1, i2: Integer;
begin
  i1 := Trunc(Int(d)) mod 360;
  i2 := Trunc(Int(frac(d) * 10));
  result := Format('%3.3d.%1.1d', [i1, i2]);
end;

function FormatCourse(const d: single): string;
var
  i1, i2: Integer;
begin
  i1 := Floor(d) mod 360;
  i2 := Floor(frac(d) * 10);
  result := Format('%3.3d.%1.1d', [i1, i2]);
end;


function FormatSpeed(const d: double): string;
begin
  result := FormatFloat('00.0', abs(d));
end;

function FormatTrackNumber(const i: integer): string;
begin
  result := IntToStr(i);
end;

function FormatAltitude(const s: single):string;
begin
  result := FormatFloat('0000',s);
end;

function LatGridToDiffY(const s: string): Double;
var
  index : Integer;
  str, val, dir : string;
begin
  str := s;
  index := Length(str);
  dir := Copy(str, index, 1);
  Delete(str, index - 4, 5);

  if dir = 'N' then
    Result := StrToFloat(str)
  else
    Result := StrToFloat(str) * -1;
end;

function LongGridToDiffX(const s: string): Double;
var
  index : Integer;
  str, val, dir : string;
begin
  str := s;
  index := Length(str);
  dir := Copy(str, index, 1);
  Delete(str, index - 4, 5);

  if dir = 'E' then
    Result := StrToFloat(str)
  else
    Result := StrToFloat(str) * -1;
end;

function LatValidation(const s: string): Boolean;
var
  degStr, minStr, min1Str, min2Str, sStr, degSeparator, minSeparator, secSeparator : string;
  deg, min1, min2, sec: Integer;
  min : Double;

begin
  Result := False;

  if Length(s) <> 13 then
    Exit;

  degStr := Copy(s, 1, 2);
  degSeparator := Copy(s, 3, 2);
  minStr := Copy(s, 5, 6);
  min1Str := Copy(s, 5, 2);
  minSeparator := Copy(s, 7, 1);
  min2Str := Copy(s, 8, 3);
  secSeparator := Copy(s, 11, 2);
  sStr := Copy(s, 13, 1);

  if not (TryStrToInt(degStr, deg) and (degSeparator = '° ') and
          TryStrToInt(min1Str, min1) and (minSeparator = '.') and
          TryStrToInt(min2Str, min2) and (secSeparator = ''' ')and
          TryStrToFloat(minStr, min)) then
  begin
    Exit;
  end;

  if not ((sStr = 'S') or (sStr = 'N')) then
    Exit;

  if deg > 90 then
  begin
    Exit;
  end
  else if deg = 90 then
  begin
    if min > 0 then
    begin
      Exit;
    end;
  end;

  if min1 > 59 then
  begin
    Exit;
  end;

  Result := True;
end;

function LongValidation(const s: string): Boolean;
var
  degStr, minStr, min1Str, min2Str, sStr, degSeparator, minSeparator, secSeparator : string;
  deg, min1, min2, sec: Integer;
  min : Double;

begin
  Result := False;

  if Length(s) <> 14 then
    Exit;

  degStr := Copy(s, 1, 3);
  degSeparator := Copy(s, 4, 2);
  minStr := Copy(s, 6, 6);
  min1Str := Copy(s, 6, 2);
  minSeparator := Copy(s, 8, 1);
  min2Str := Copy(s, 9, 3);
  secSeparator := Copy(s, 12, 2);
  sStr := Copy(s, 14, 1);

  if not (TryStrToInt(degStr, deg) and (degSeparator = '° ') and
          TryStrToInt(min1Str, min1) and (minSeparator = '.') and
          TryStrToInt(min2Str, min2) and (secSeparator = ''' ')and
          TryStrToFloat(minStr, min)) then
  begin
    Exit;
  end;

  if not ((sStr = 'E') or (sStr = 'W')) then
    Exit;

  if deg > 180 then
  begin
    Exit;
  end
  else if deg = 180 then
  begin
    if min > 0 then
    begin
      Exit;
    end;
  end;

  if min1 > 59 then
  begin
    Exit;
  end;

  Result := True;
end;

end.
