
program z677;

type
  non = array [1..50, 1..50] of real;

var
  a, b: non; 
  i, j, k, r: integer; 
  n: integer;
  t:text;

{$include 'z677.pas'}
begin
assign(t, '56.txt');
append(t);
write('n ='); 
  read(n);
  writeln(t, 'n=', n);
writeln('Исходная матрица :');
writeln(t, 'Исходная матрица :');
VodMatr(n,a, t);
VivodMatra(n, a, t);
ZamMatr(n,a,b);
writeln('Полученная матрица :');
writeln(t, 'Полученная матрица :');
VivodMatr(n,b, t);
writeln;
close(t);
end.
