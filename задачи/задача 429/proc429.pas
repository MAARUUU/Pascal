procedure IniMass(var a, b, c: MyMass; var n, m, w: integer);
var
  i: integer;
begin
  write('Размер массива A от 1 до n=');
  readln(n);
  for i := 1 to n do
    a[i] := random(30);
  write('Размер массива B от 1 до m=');
  readln(m);
  for i := 1 to m do
    b[i] := random(30);
  write('Размер массива C от 1 до w=');
  readln(w);
  for i := 1 to w do
    c[i] := random(30);
end;

procedure PrintMass(var a, b, c: MyMass;var  n, m, w: integer; t: text);
var
  i: integer;
begin
  write(t, 'Массив A: ');
  for i := 1 to n do
    write(t, a[i], ' ');
  writeln(t);
  write(t, 'Массив B: ');
  for i := 1 to m do
    write(t, b[i], ' ');
  writeln(t);
  write(t, 'Массив C: ');
  for i := 1 to w do
    write(t, c[i], ' ');
  writeln(t);
end;

function Min(var d: MyMass; n: integer): integer;
var
  i, min1: integer;
begin
  min1 := d[1];
  for i := 2 to n do
    if d[i] < min1 then
      min1 := d[i];
  Min := min1;
end;

function Max(var d: MyMass; n: integer): integer;
var
  i, max1: integer;
begin
  max1 := d[1];
  for i := 2 to n do
    if d[i] > max1 then
      max1 := d[i];
  Max := max1;
end;

procedure Znach_L(var a, b, c: MyMass; var l, n, m, w: integer; t: text);
begin
  if Min(a, n) > 10 then
    l := min(b, m) + min(c, w)
  else l := 1 + sqr(max(c, w));
  writeln(t, 'l=', l);
end;