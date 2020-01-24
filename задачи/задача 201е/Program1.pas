Program mpp;
type 
hop=array[1..100] of real;
Var 
a: hop;
i, n: integer;
max: real;
t:text; 
h:char;
begin 
assign (t, 'poo.txt'); 
append(t);
repeat 
write('Введите количество элементов в массиве: ');
readln(n);
writeln(t, 'При n=',n);
   For i:=1 to n do
 begin
  write('a[',i,']='); 
  readln (a[i]);
 end;
max:=abs(a[1]);
  For i:=2 to n do
   If abs(a[i])>max then max:=abs(a[i]);
    Writeln;
    Writeln('Наибольшее число:',max);
    Writeln(t, 'Наибольшее число:',max);
writeln('Выйти из программы?');
readln(h);
until h=('Да');
close(t); 
End.