program p7;
var n,k:integer;
t:text;
 
{$include '445.pas'}
begin
assign(t, 'z4555.txt');
append(t);
vvod(n,t);
for k:=1 to n div 2 do
if proverka(k) and proverka(n-k) then writeln (n,'=',k, '+',n-k);
writeln (t, n,'=',k, '+',n-k);
readln;
close(t);
end.
