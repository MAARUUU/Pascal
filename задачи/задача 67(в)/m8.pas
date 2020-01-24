program m8;
var n,a:integer;
t:text;
begin
assign (t, 'm8.txt');
append(t);
  begin 
writeln('n');
readln(n);
writeln(t, 'При n=',n); 
  end;
if n > 100 then 
  begin
writeln('Недопустимое значение');
writeln(t, 'Недопустимое значение');
  end
 else 
  begin
a:=n mod 10; 
writeln('a=',a);
writeln(t,'a=',a);
  end;
  close(t);
end.
