program n_498;

type
TypeFile = file of char;  // тип файла
{$include 'Копия 498_б_include.pas' }

var
  f: TypeFile;
  txt: text;
  strRes: string;
  flag: boolean;
  
begin
  assign(f, 'INPUT.TXT');
  assign(txt, 'RESULT.TXT');
  rewrite(f);
  append(txt);
  FileCreate(f); //заполнение файла элементами
  FileWork(f, StrRes, flag); //поиск слов
  FilePrintFileEnd(f, txt, 'Содержимое файла "f":'); //вывод в файл
  write(txt, 'Результат: ');
  if flag
    then writeln(txt, '"', strRes, '"')
    else writeln(txt, 'Таких слов нет.');
  close(f); 
  close(txt);
end.