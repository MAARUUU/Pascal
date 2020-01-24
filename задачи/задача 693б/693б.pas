program fff;

type
  matr = array [0..100, 0..100] of integer;

var
  a: matr;
  i, j, m, n: integer;
  t: text;
{$include '693a.pas'}

begin
  
  readln(n);
  VodMatr(n, a);
  writeln;
  
  assign(t, 'ww.txt'); 
  append(t); 
  writeln('Исходная матрица:');
  writeln(t, 'Исходная матрица:');
  VuvodMatr(n, a, t);
  writeln;
  Perestanovka(n, a);
  writeln('Полученная матрица:');
  writeln(t, 'Полученная матрица:');
  VuvodMatr(n, a, t);
  close(t);
end.
