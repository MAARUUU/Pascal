program m4;
var
x,y,R:real;
t:text;
begin
assign (t, 'm4.txt');
append(t);
writeln('x,y');
readln(x,y);
writeln(t, 'При х=',x, ' ' 'При y=',y);
R:=sqrt(x*x+y*y);
if (R<=1) and (R>=0.5)
then begin
 writeln (t, 'Точка принадлежит заштрихованной области');
 writeln ('Точка принадлежит заштрихованной области');
 end
else  writeln('Точка не принадлежит заштрихованной области');
writeln(t, 'Точка не принадлежит заштрихованной области');
close(t);
end.