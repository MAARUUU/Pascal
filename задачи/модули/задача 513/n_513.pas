program z_513a;

uses module_513;

var
  f: text;
  vivod: filevivod;
  c1, c2, c3, c4: integer;
  sum, c: real;

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