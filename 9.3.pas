program three;
var a, b: integer;
  x: array of integer;
function f(n: integer): integer;
begin
  for var i := 1 to n do
  begin
    if x[i] > 0 then
    begin
      a := i;
      break;
    end
    else
      a := 0;
  end;
  for var i := 1 to n do
    if (x[i] < 0) then
      b := i;
  println('Первый положительный элемент = ', a);
  println('Последний отрицательный элемент = ',b);
end;
begin
  var n := readinteger;
  setlength(x, n + 1);
  for var i := 1 to n do
    x[i] := readinteger();
  f(n)
end.