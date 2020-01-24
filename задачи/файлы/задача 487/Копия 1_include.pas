procedure FileCreate(var f: TypeFile); //заполнение файла элементами
var
  n: integer;
  temp: integer;
  i: integer;
begin
  write('n=');
  readln(n); 
  rewrite(f); 
  for i:=1 to n do
  begin
    write(i,':');
    readln(temp);
    write(f, temp); 
  end; 
end;



procedure FileWork(var f,g: TypeFile); // поиск повторных вхождений одного и того же числа
var
  temp1,temp2: integer;
  flag: boolean;
begin
  reset(f);     
  rewrite(g);  
  while not Eof(f) do  
  begin
    read(f, temp1); 
    flag:=false;  // повтор не найден
    reset(g);  
    while not Eof(g) do  
    begin
      read(g, temp2);  
         // если найден повтор
        if temp1 = temp2 then
           begin
          flag:=true;  // повтор найден
          break; 
           end;
    end;

    // если не найден повтор
    if not flag then
    begin
      seek(g, FileSize(g));
      write(g, temp1);
    end;
  end;
end;


procedure FilePrintFileEnd(var f: TypeFile; var txt: Text; caption: string); //вывод результата в файл
var
  temp: integer;
begin
  reset(f);      
  writeln(txt);
  writeln(txt);
  writeln(txt, caption);
  while not Eof(f) do  
  begin
    read(f, temp); 
    write(txt, '[', temp, ']');  
  end;
  writeln(txt);
  writeln(txt, '------------------------------------------------------------');
end;