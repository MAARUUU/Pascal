﻿procedure zapis(var vivod:filevivod; var n:integer);
var
i:integer;
a, fact,step:real;
begin
fact:=1;
step:=2;
for i:=1 to n do
begin
a:=step/fact;
write(vivod, a);
step:=step*2;
fact:=fact*(i+1);
end;
end;


procedure vivodzap(var c: real; var vivod:filevivod);
begin
  while not (Eof(vivod)) do 
  begin
    read(vivod, c);           
    write(f, c:5:3 );
    write(f, '   ');
  end;
end;