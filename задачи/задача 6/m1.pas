program m1;
var
a,b,c,s:real;
t:text;
begin
assign (t, 'm1.txt');
Append(t);
writeln('a,b');
readln(a,b);
writeln(t,'При а=',a, ' '  'При b=',b);
c:=sqrt(sqr(a)+sqr(b));
s:=a*b/2;
writeln('c=',c:4:1);
writeln('s=',s:4:1);
writeln(t, 'c=',c:4:1);
writeln(t, 's=',s:4:1);
close(t);
end.
