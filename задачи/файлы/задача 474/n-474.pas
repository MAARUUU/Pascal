program n_474e;

type
 
  filevivod = file of real;

var
  i, n: integer;  
  c, a, fact,step : real;
  f: text;
  vivod: filevivod;
{$include 'n_474include.pas'}

begin
  assign(f, 'n_474e(1).txt');
  assign(vivod, 'n_474e(2).txt');
  append(f);
  rewrite(vivod);
  write('Введите n : ');
  readln(n);
  zapis(vivod, n);
  seek(vivod, 0);
  writeln(f, '');
  writeln(f, 'Результат программы:: ');
  vivodzap(c, vivod);
  close(vivod);
  close(f);
end.