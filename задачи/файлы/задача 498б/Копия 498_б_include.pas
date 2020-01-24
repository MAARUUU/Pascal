procedure FileCreate(var f: TypeFile); //заполнение файла элементами
var
  s: string;
  i: integer;
begin
  write('Текст=');
  readln(s); 
  rewrite(f);  
  for i:=1 to length(s) do
    write(f, s[i]);  
end;



procedure FileWork(var f: TypeFile; var StrRes: string; var flag: boolean); //поиск слов
var
  temp: char;
  word_: string;
  len: integer;
begin
  reset(f);     
  flag:=false;  // допустим, что таких слов нет
  while not Eof(f) do
  begin
    // пропуск пробелов
    while not Eof(f) do
    begin
      read(f, temp);
      // если встретился первый символ слова
      if temp <> ' ' then
        break;
    end;
    // чтение слова
    word_:=temp;
    while not Eof(f) do  
    begin
      read(f, temp);
      // если встречен пробел
      if temp = ' ' then
        break;  
      // добавление символа к слове
      word_:=word_+temp;
    end;
    // анализ слова
    len:=length(word_);
    if (len>1)and(word_[2]='е')and(len>=length(StrRes)) then
    begin
      StrRes:=word_;  // то запомнить слово
      flag:=true;  // слова такие есть
    end;
  end;
end;



procedure FilePrintFileEnd(var f: TypeFile; var txt: Text; caption: string); //вывод в файл
var
  temp: char;
begin
  reset(f);  
  writeln(txt);
  writeln(txt);
  writeln(txt, caption);
  while not Eof(f) do 
  begin
    read(f, temp);  // чтение элемента
    write(txt, '[', temp, ']');  // добавление элемента
  end;
  writeln(txt);
  writeln(txt, '------------------------------------------------------------');
end;