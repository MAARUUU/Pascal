program ttre;

type
  
  mas = array[1..100, 1..100] of real;

var
  a, b, c: mas;
  n, i, j: integer;
  t: text;

begin
  assign(t, 'wer.txt'); 
  append(t); 
  write('Размер матрицы = ');  
  readln(n);
  writeln(t, 'Размер матрицы =', n);
  writeln;
  Writeln('Введите матрицу A по строкам:');
  for i := 1 to n do
  begin
    for j := 1 to n do 
    begin
      read(a[i, j]);
    end;
    writeln;
  end;
  
  Writeln(t, 'Mатрицa A:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(t, a[i, j]:4);
    writeln(t, ' ');
  end;
  writeln;
  for i := 1 to n do
    for j := 1 to n do
      if j >= i then
      begin
        b[i, j] := a[i, j];
        c[i, j] := -a[i, j];
      end
      else
      begin
        b[i, j] := a[j, i];
        c[i, j] := a[i, j];
      end;
  Writeln('Матрица B:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(b[i, j]:4);
    writeln;
  end;
  Writeln(t, 'Mатрицa B:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(t, b[i, j]:4);
    writeln(t, ' ');
  end;
  Writeln('Матрица C:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(c[i, j]:4);
    writeln;
  end;
  Writeln(t, 'Mатрицa С:');
  for i := 1 to n do
  begin
    for j := 1 to n do 
      write(t, c[i, j]:4);
    writeln(t, ' ');
  end;
  close(t);
end.

