program one;
var x: array of integer;
function proizvedenie(n: integer): integer;
var
  sr := 1;
begin
  for var i := 1 to n do
    if x[i] mod 2 = 0 then
      sr := sr * x[i];
  println(sr);
end;

begin
  var a := readinteger;
  setlength(x, a + 1);
  for var i := 1 to a do
    x[i] := readinteger();
  proizvedenie(a);
end.