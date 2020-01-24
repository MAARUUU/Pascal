procedure fn(var a, c, n: integer; var f: integer; t:text);
var g: integer;
begin
  if (0 <= n) and (n <= 9)
    then f := n
    else begin
      g := (a * n + c) mod 10;
      fn(a, c, n - 1 - g, f,t);
      f := g * f + n
    end;
end;
 
procedure read_q(var s: string; var x: integer; t:text);
begin
  repeat
    write( '   ', s, ' = ');
    writeln( t, '   ', s, ' = ');
    readln(x)
  until x > 0
end;