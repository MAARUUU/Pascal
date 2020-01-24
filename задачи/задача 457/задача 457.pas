program z457;
 
var
 a, c, m, f: integer;
 t:text;
  {$include 'z457.pas'}
 
begin
 assign(t, 'z457.txt');
append(t);

  read_q('a', a,t);
  read_q('c', c,t);
  read_q('m', m,t);
  fn(a, c, m, f, t);
  writeln('f(', m, ') = ', f); 
  writeln(t, 'f(', m, ') = ', f);
  close(t);
end.