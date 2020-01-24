program n114;
var
i,n:integer;
result:real;
t:text;
begin
assign (t, 'm11.txt');
Append(t);
writeln('Введите n');
readln(n);
writeln(t,'При n=',n);
result:=1;
for i:=2 to n do
result:=result*((i+1)/(i+2));
writeln('result=',result:4:1);
writeln(t, 'result=',result:4:1);
close(t);
end.