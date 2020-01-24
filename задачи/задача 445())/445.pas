procedure vvod(var n:integer;t:text);
begin
writeln ('введите четное число(больше двух): ');
readln (n);
writeln(t, 'n=',n);
if n <=2 then writeln ('Введено четное число меньше двух '); 
if (n mod 2)<>0 then writeln ('Введено нечетное число! '); 
end;
 
 
 
 
 
 
 
 
 
 
 
function proverka (h:integer):boolean;
var
i:integer;
begin
for i:=2 to n div 2 do
if n mod i=0 then
begin
proverka:=false;
exit;
end;
proverka:=true;
end;