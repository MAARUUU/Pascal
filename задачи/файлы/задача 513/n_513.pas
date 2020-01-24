program z_513a;

const
  vv = 100;
  filename='n_513(2).txt';

type
  Cub = record
    len: real;
    color: string[50];
    material: string[50];
  end;
  filevivod = file of Cub;

var
  f: text;
  vivod: filevivod;
  c1, c2, c3, c4: integer;
  sum, c: real;

{$include 'n_513include.pas'}
begin
  assign(f, 'n_513(1).txt');
  assign(vivod, filename);
  vvod( vivod, f);
  if FileExists(filename)then
     begin 
  summm(f, vivod, c1, c2, c3, c4);
     end
     else
     writeln('Файл не найден' ,filename);
end.