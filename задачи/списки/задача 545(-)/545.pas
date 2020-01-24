program n_136;

uses module545;

var
 first, old:PUzel;
 n,m: integer;
 t: text;

begin
  Assign(t, 'n_545.txt');
  append(t);
  BuildSpisok(first, old, n,m);
  writeln(t, 'при n=', n, ':');
  write_in_text(t, first);
  Calc(first, old,  t);
  DelSpisok(first);
  writeln(t);
  close(t);
end.