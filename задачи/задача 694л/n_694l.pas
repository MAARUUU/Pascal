program n_694l;

type
  bos = array [1..10, 1..10] of real;

var
  i, j, n: integer;
  a: bos;
  x: real;
  u: text;
  {$include 'n_694linclude.pas'}

begin
  assign(u, 'n_694l.txt');
  append(u);
  write('Введите размерность матрицы = ');
  read(n);
  vvod(a,n);
  vivod(a,n,u);
  close(u);
end.