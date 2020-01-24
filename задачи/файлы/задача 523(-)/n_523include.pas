procedure FileWork(var f,g:text);
var
s,s1:string;
    i:byte;
begin
reset(f);
while not EOF(f) do
 begin
  readln(f,s);
  s1:='';
  for i:=length(s) downto 1 do
  begin
  s1:=s1+s[i];
  end;
  writeln(g,s1);
 end;
 end;