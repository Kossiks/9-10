var
  a, b, c, y, ii: integer;
  m: array[1..6, 1..8] of integer;
  m1: array[1..6] of integer;

begin
  for var k := 1 to 6 do 
    m1[k] := 0;
  randomize;

  for var i := 1 to 6 do
  begin
    for var j := 1 to 8 do
    begin

      m[i, j] := random(25) - 3;
    end;
  end;
  writeln('1 массив:');
  writeln('');
  for var i := 1 to 6 do
    writeln(m[i]);
  for var i := 1 to 6 do
  begin
    for var j := 1 to 8 do
    begin
      if abs(m[i, j]) > 4 then 
      begin
        m1[i] := m[i, j];
        break
      end;

    end;
  end;
  writeln('');
  writeln('2 Массив:');
  writeln('');
  write(m1);
end.