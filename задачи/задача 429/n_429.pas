program n_429;

type
  MyMass = array [1..100] of integer;

var
  a, b, c: MyMass;
  l, n, m, w: integer;
  t: text;

{$Include 'proc429.pas'}

begin
  Assign(t, 'n_429.txt');
  Append(t);
  IniMass(a, b, c, n, m, w);
  PrintMass(a, b, c, n, m, w, t);
  Znach_L(a, b, c, l, n, m, w, t);
  close(t);
end.