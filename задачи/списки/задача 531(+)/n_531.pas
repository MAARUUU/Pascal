﻿program n_531;

uses module531;

var
 first, old:PUzel;
 n: integer;
 t: text;

begin
  Assign(t, 'n_531.txt');
  append(t);
  BuildSpisok(first, old, n); // создание списка
  writeln(t, 'при n=', n, ':');
  WriteText(t, first); // вывод в текстовый файл
  Calculation(first, old,  t); // вычисления 
  DelSpisok(first); // удаление списка
  writeln(t);
  close(t);
end.
