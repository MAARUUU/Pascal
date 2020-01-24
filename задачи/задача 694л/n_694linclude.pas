procedure vivod(var a: bos; n:integer; var u:text);
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n+1-i do
      write(u, a[i, j]:4);
    writeln(u, '');
  end;
end;


procedure vvod(var a: bos; n:integer);
var
  i, j, k: integer;
begin 
for i := 1 to n do
  begin 
    k:=0;
    for j := 1 to n+1-i do
     begin
      k:=k+1;
      a[i, k] := j+i-1;
     end;
   end;
  end;
