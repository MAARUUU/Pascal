program hhhhh;
const 
  Sz = 100;
type nok=array [1..Sz] of integer;
var 
  a,b:nok; 
  N,i:integer;   
  t:text;
begin 
assign (t, 'ccc.txt');
append(t);
 write('Введите количество элементов в массиве: ');
 readln(N);
 writeln(t, 'При n=',n);
 a[1] := 0; 
 a[2] := 1;
    for  i:=3 to N do
    a[i] := a[i-2] + a[i-1];
    writeln('Числа Фибоначчи: ');
    writeln(t, 'Числа Фибоначчи: ');
    writeln('a[1] := 0');
      for  i:=2 to N do
      Writeln('a[', i , '] : = ', a[i] );
      Writeln(t, 'a[', i , ']  := ', a[i] );
        begin
           b[1] := 0; 
           b[2] := 1;
            for  i:=3 to N do 
            begin
            b[i] := b[i-2]+b[i-1]+a[i-2];
            end;
Writeln('Ответ: ');
writeln('Числа Фибоначчи: ');
writeln('b[1] := 0'); 
Writeln(t, 'Ответ: ');
writeln(t, 'Числа Фибоначчи: ');
writeln(t, 'b[1] := 0'); 
writeln(t, 'b[2] := 1');
for  i:=2 to N do
Writeln('b[', i , '] := ', b[i] );  
Writeln(t, 'b[', i , '] := ', b[i] );  
       end;
close(t);
end.
