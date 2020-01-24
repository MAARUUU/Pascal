program z_487;


uses module_487;

var
  f,g: TypeFile;
  txt: text;
  
begin
  assign(f, 'INPUT.TXT');
  assign(g, 'OUTPUT.TXT');
  assign(txt, 'RESULT.TXT');
  rewrite(f);
  rewrite(g);
  append(txt);
  FileCreate(f); //заполнение файла элементами
  FileWork(f, g); // поиск повторных вхождений одного и того же числа
  FilePrintFileEnd(f, txt, 'Содержимое файла "f":'); //вывод результата в файл
  FilePrintFileEnd(g, txt, 'Содержимое файла "g":'); //вывод результата в файл
  close(f); 
  close(g); 
  close(txt); 
end.