procedure VodMatr(var a: matr);
var
  i, j: integer;
begin
  randomize;
  for i := 1 to 7 do
  begin
    for j := 1 to 7 do
    begin
      a[i, j] := random(7) - random(7);
    end;
  end;
end;


procedure VuvodMatr(var a: matr; t: text);
var
  i, j: integer;
begin
  for i := 1 to 7 do
  begin
    for j := 1 to 7 do
    begin
      write(a[i, j]:4);
      write(t, a[i, j]:4);
    end;
    writeln;
    writeln(t);
  end;
end;
