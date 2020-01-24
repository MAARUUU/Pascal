program n_474e;

uses module_474e;

var
  i, n: integer;  
  c, a, fact,step : real;
  f: text;
  vivod: filevivod;

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
  vivodzap(c, vivod, f);
  close(vivod);
  close(f);
end.