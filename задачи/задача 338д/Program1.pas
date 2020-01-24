program kkl; 

type 
mas = array[1..25] of integer; 

var 
A, B: mas; 
i, j, n, m, l: integer; 
t: byte; 
f: text; 

begin 
assign(f, 'wuuu.txt'); 
append(f); 
write('Введите число элементов массива A: '); 
readln(m); 
i := 0; 

while (i < m) do 
begin 
Inc(i); 
write('A[', i, '] = '); 
readln(A[i]); 
for j := 1 to i - 1 do 
if A[i] = A[j] then 
begin 
writeln('Есть повторяющие числа'); 
writeln(f, 'Есть повторяющие числа'); 
Dec(i); 
break; 
end; 
end; 

writeln(f, 'Последовательность а:'); 
for i := 1 to m do 
begin 
write(f, 'A[', i, '] =', A[i]); 
writeln(f, ' '); 
end; 

write('Введите число элементов массива В: '); 
readln(n); 

i := 0; 
while (i < n) do 
begin 
Inc(i); 
write('B[', i, '] = '); 
readln(B[i]); 
for j := 1 to i - 1 do 
if B[i] = B[j] then 
begin 
writeln('Есть повторяющие числа'); 
writeln(f, 'Есть повторяющие числа'); 
Dec(i); 
break; 
end; 
end; 

writeln(f, 'Последовательность b:'); 
for i := 1 to n do 
begin 
write(f, 'B[', i, '] =', B[i]); 
writeln(f, ' '); 
end; 

for i := 1 to n do 
begin 
t := 0; 
for j := 1 to m do 
if B[i] = A[j] then t := 1; 
if t = 0 then break; 
end; 
writeln(t = 1); 
if t = 0 then writeln('Не все члены последовательности входят'); 
if t = 0 then writeln(f, 'Не все члены последовательности входят'); 
if t = 1 then writeln('Все члены последовательности входят'); 
if t = 1 then writeln(f, 'Все члены последовательности входят'); 

close(f); 
end.