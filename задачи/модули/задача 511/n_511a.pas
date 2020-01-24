program n_511a;

uses module_511a;

var
  txt: text;
  fileinput, fileoutput: fileput;

begin
  assign(fileinput, 'INPUT.TXT');
  assign(fileoutput, 'OUTPUT.TXT');
  assign(txt, 'RESULT.TXT');
  rewrite(fileinput);
  rewrite(fileoutput);
  append(txt);
  FileCreate(fileinput); //заполнение файла элементами типа запись 
  FileWork(fileinput, fileoutput);
  FilePrintFileEnd(fileinput, txt, 'Содержимое файла "fileinput":'); //вывод результата в файл
  FilePrintFileEnd(fileoutput, txt, 'Содержимое файла "fileoutput":'); //вывод результата в файл
  close(fileinput);
  close(fileoutput);
  close(txt);
end.

