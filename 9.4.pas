program four;
var x: array of integer; x1: array of integer;
function f(n: integer): integer;
var
  a, b: integer;
begin
  for var i := 0  to n-1 do
    if x[i] > 0 then
      a := a + x[i];
  for var j := 0 to n-1 do
    if x1[j] > 0 then
      b := b + x1[j];
  if a > b then
  begin
    for var j := 0 to n-1 do
      x1[j] := x1[j] * 10;
    println(x1);
  end
  else
    begin
    for var i := 0 to n-1 do
      x[i] := x[i] * 10;
    println(x);
  end
end;
begin
  var n := readinteger;
  x := new integer[n];
  x1 := new integer[n];
  print('Введите первый массив');
  for var i := 0 to n-1 do
    x[i] := readinteger();
  print('Введите второй массив');
  for var j := 0 to n-1 do
    x1[j] := readinteger();
  f(n)
end.