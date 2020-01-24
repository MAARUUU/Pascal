unit module_513;

interface

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
  
  
procedure vvod( var vivod: filevivod; var f:text);
procedure summm(var  f:text; var  vivod: filevivod; var c1, c2, c3, c4: integer);

implementation

uses crt;

procedure vvod( var vivod: filevivod; var f:text);
var
i,n:integer;
h:Cub;
begin
append(f);
rewrite(vivod);
writeln('введите n');
readln(n);
for i := 1 to n do
  begin
    write('Введите длину ребра кубика: ');
    readln(h.len);
    write('Введите цвет кубика: ');
    readln(h.color);
    write('Введите материал кубика: ');
    readln(h.material);
    write(vivod, h);
    write(f, h);
    writeln;
  end;
  close(f);
  close(vivod);
  end;
  
procedure summm(var  f:text; var  vivod: filevivod; var c1, c2, c3, c4: integer);
var
h:Cub;
  sum:real;
  begin
  append(f);
  reset(vivod);
  sum := 0;
  c1 := 0;
  c2 := 0;
  c3 := 0;
  c4 := 0;
while not eof(vivod) do
  begin
    read(vivod, h);
    sum := sum + (h.len) * (h.len) * (h.len);
    if h.color = 'красный' then
    begin
      c1 := c1 + 1;
    end;
    if h.color = 'синий' then
    begin
      c2 := c2 + 1;
    end;
    if h.color = 'жёлтый' then
    begin
      c3 := c3 + 1;
    end;
    if h.color = 'зелёный' then
    begin
      c4 := c4 + 1;
    end;   
  end;
  writeln(f, 'Количество красных кубов: ', c1);
  writeln(f, 'Количество синих кубов: ', c2);
  writeln(f, 'Количество жёлтых кубов: ', c3);
  writeln(f, 'Количество зелёных кубов: ', c4);
  writeln(f, 'Объём всех кубов: ', sum);
  close(vivod);
  close(f);
   end;
end.  