program zadacha; 
type mas=array  of real;
var 
n, i, factorial: integer; 
a: mas;
t:text;
begin 
assign (t, 'задача0.txt');
append(t);
factorial := 1; 
writeln('Введите количество элементов массива:'); 
readln(n);
writeln(t, 'При n=',n);  
SetLength(a, n); {Устанавливаем размерность массива} 
Writeln; 
Writeln('Введите элементы массива:'); 
 for i := 0 to n - 1 do 
   begin 
   Write('a[', i + 1, '] = '); 
   Read(a[i]); 
   end; 
Writeln; 
Writeln('Ответ: ');
Writeln(t, 'Ответ: ');
 for i := 0 to n - 1 do 
  begin 
  factorial := factorial * (i + 1); 
  Writeln('a[', i + 1, '] + ', i + 1, '! = ', a[i] + factorial); 
  Writeln(t, 'a[', i + 1, '] + ', i + 1, '! = ', a[i] + factorial); 
  end;
close(t);
end.