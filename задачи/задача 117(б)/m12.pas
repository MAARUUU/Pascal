program m12;
var
n,i:integer;
m:real;
t:text;
begin
assign (t, 'm12.txt');
append(t);
writeln('Введите n');
readln(n);
writeln(t, 'При n=',n);
m:=1;
for i:=1 to n do
m:=m*((2*i+1)/(i+1));
writeln('m=',m:3:1);
writeln(t, 'm=',m:3:1);
close(t);
end.