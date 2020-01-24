program m10;
var
a,n,s:integer;
t:text;
begin
assign (t, 'm10.txt');
Append(t);
writeln('Введите a');
readln(a);
writeln(t,'При а=',a);
s:=0;
  repeat
   n:=a mod 10;
   a:= a div 10;
   s:=s+n;
  until a=0;
   writeln('s=', s);
   writeln(t, 's=', s);
close(t);
end.