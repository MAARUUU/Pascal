program m7; 
var 
n,a,b,c,d:integer; 
t:text;
 begin
assign (t, 'm7.txt');
append(t);
writeln(n);
readln(n);
writeln(t, 'При n=',n);
  if n > 9999 then
         begin
          writeln('Недопустимое значение');
          writeln(t, 'Недопустимое значение');
         end
          else 
            begin
              a:=n div 1000; 
              b:=(n div 100) mod 10; 
              c:=(n div 10) mod 10; 
              d:=n mod 10; 
            end; 
    if (a=b)or(a=c)or(a=d)or(b=c)or(b=d)or(c=d)then 
       begin
         writeln('Не верно,что все четыре цифры числа различны ');
         writeln(t, 'Не верно,что все четыре цифры числа различны');
       end
        else 
         writeln('Верно,что все четыре цифры числа различны'); 
         writeln(t, 'Верно,что все четыре цифры числа различны');
close(t);
end.