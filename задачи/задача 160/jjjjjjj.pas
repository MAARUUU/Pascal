program ab; 
type 
bon=array [1..100] of real; 
var 
A,B:bon; 
x, y, s,d : real; 
i, n : integer; 
t:text;
h:string; 
begin 
 assign (t, 'zz1.txt'); 
 append(t); 
 repeat
 write('Введите n = '); 
 writeln(t, 'При n=',n); 
readln(n); 
 s := 0; 
 d := 0; 
  for i := 1 to n do 
   begin
    write('Введите угол = '); 
    readln(a[i]); 
    write('Введите длину = '); 
    readln(b[i]); 
    a[i]:= a[i]*pi/180; {перевод в радианы}
    x := b[i]*cos(a[i]); 
    s := s + x; 
    y := b[i]*sin(a[i]); 
    d := d + y; 
   end; 
 writeln('Координаты :(',s:3:1,';',d:3:1,')'); 
 writeln(t, 'Координаты :(',s:3:1,';',d:3:1,')');  
 writeln('Продолжить ввод элементов?');
            
                        readln(h);
                        until not(h='Yes');
                       
 close(t); 
end.