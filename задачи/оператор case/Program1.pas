program post; 
var 
a,b,c:integer; 
d:text;
begin
assign(d,'post.txt');
append(d);
writeln ('Введите балл по математике'); 
readln (a); 
writeln ('Введите балл по русскому'); 
readln (b);
writeln(d, 'Балл по математике=',a);
writeln(d, 'Балл по русскому=',b);
case a+b of 
0..4: writeln('Отказано в приеме');
5..7: writeln('Заочное'); 
8..10:writeln('Очное'); 
end;
close(d);
end.
