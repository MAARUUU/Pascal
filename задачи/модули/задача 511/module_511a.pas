unit module_511a;

interface

type
  book = record
    autor: string[20];
    nam: string[20];
    year: integer;
  end;
  fileput = file of book;
  
  
procedure FileCreate(var fileinput: fileput);
procedure FileWork(var fileinput: fileput;  var fileoutput: fileput);
procedure FilePrintFileEnd(var fileinput: fileput; var txt: text; caption: string); 

implementation

uses crt;

procedure FileCreate(var fileinput: fileput);
var
i,n:integer;
h:book;
begin
write('Количество книг: ');
readln(n);
for i := 1 to n do
  begin
    write('Фамилия автора:');
    readln(h.autor);
    write('Название книги:');
    readln(h.nam);
    write('Год издания:');
    readln(h.year);
    write(fileinput, h);
  end;
  end;
  
  
procedure FileWork(var fileinput: fileput;  var fileoutput: fileput);
var
fileautor: boolean;
h:book;
au:string;
i:integer;
begin
reset (fileinput);
write('Введите автора для поиска:');
read(au);
fileautor:=False;
while not Eof(fileinput) do 
begin
read(fileinput,h);
if (h.autor=au) and (h.year>=1960) then 
begin 
  writeln(h.nam); 
  write(fileoutput, h); 
  fileautor:=True;
  i:=i+1; 
end;
end;
if Not(fileautor) then writeln(fileoutput, 'Книги не найдены');
end;




procedure FilePrintFileEnd(var fileinput: fileput; var txt: text; caption: string);
var
  temp: book;
begin  
reset(fileinput);
  writeln(txt);
  writeln(txt);
  writeln(txt, caption);
  while not Eof(fileinput) do  
  begin
    read(fileinput, temp); 
    write(txt, ''  ,temp , '');  
    write(txt);
  end;
  writeln(txt);
  writeln(txt, '------------------------------------------------------------');
end;
end.