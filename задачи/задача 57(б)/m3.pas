program m3;
var
a,f:real;
t:text;
 begin
Assign (t, 'm3.txt');
Append(t);
writeln(a);
readln(a);
writeln(t,'При а=',a);
if (a<=2) then 
f:=sqr(a)+4*a+5
 else 
f:=1/(sqr(a)+4*a+5);
writeln('f(',a,')=',f:4:2);
writeln(t, 'f(',a,')=',f:4:2);
close(t);
end.