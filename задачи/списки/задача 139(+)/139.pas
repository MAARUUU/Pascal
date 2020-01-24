program n_139;

uses module139;

var
 first, old:PUzel;
 n: integer;
 t: text;

begin
  Assign(t, 'n_139.txt');
  append(t);
  BuildSpisok(first, old, n); // создание списка
  writeln(t, 'при n=', n, ':');
  writeln(t, '»сходна€ последовательность:');
  WriteText(t, first); // вывод в текстовый файл

  DelSpisok(first); // удаление списка
  writeln(t);
  close(t);
end.