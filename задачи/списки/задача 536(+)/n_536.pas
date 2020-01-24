program n_536;

uses module536;                          

var
 first, old:PUzel;
 n: integer;
 t: text;

begin
  Assign(t, 'n_536.txt');
  append(t);
  BuildSpisok(first, old, n); // создание списка
  writeln(t, 'при n=', n, ':');
  WriteText(t, first); // вывод в текстовый файл
  Calculation(first, t); // вычисления (поиск совпадающих элементов)
  DelSpisok(first); // удаление списка
  writeln(t);
  close(t);
end.
