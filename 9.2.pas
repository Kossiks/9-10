program two;
var max, min, max1, i, a, b, v: integer;
  x: array of integer;
procedure pr(len: integer);
begin
  var i: integer;
  for i := 1 to len do
    if x[i] < min then
    begin
      min := x[i];
      b := i;
    end;
  max := min;
  max1 := min;
  for i := 1 to len do
  begin
    if x[i] > max then
    begin
      max := x[i];
      a := i;
    end;
    if x[i] < 0 then
      if (x[i] > max1) and (x[i] < 0) then
      begin
        max1 := x[i];
        v := i;
      end;
  end;
    
  println(max, a);
  println(abs(min), b);
  println(max1, v);
end;

begin
  var n := readinteger;
  setlength(x, n + 1);
  for i := 1 to n do
    x[i] := readinteger();
  pr(n);
end.