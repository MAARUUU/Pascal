procedure VodMatr(n: integer; var a: matr);
var
  i, j: integer;
begin
  for i := 1 to 2 * n do
  begin
    for j := 1 to 2 * n do
    begin
      write('a[', i, ',', j, ']= ');
      readln(a[i, j]);
    end;
    writeln(' ');
  end;
end;

procedure Perestanovka(n: integer; var a: matr);
var
  i, j, x: integer;
begin
  for i := 1 to n do
  begin
    for j := i to n do
    begin
      x := a[i, j];
      a[i, j] := a[n + i, j];
      a[n + i, j] := a[n + i, n + j];
      a[n + i, n + j] := a[i, n + j];
      a[i, n + j] := x;
    end;
  end;
end;

procedure VuvodMatr(n: integer; var a: matr; t: text);
var
  i, j: integer;
begin
  for i := 1 to 2 * n do
  begin
    for j := 1 to 2 * n do
    begin
      write(a[i, j]:4);
      write(t, a[i, j]:4);
      
      
    end;
    writeln;
    writeln(t);
  end;
end;
